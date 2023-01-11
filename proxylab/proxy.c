/*
 * proxylab
 * 
 * 能够解析GET请求，实现客户端和服务器之间的代理；
 * 通过为每个新的传入请求生成一个新的线程来处理并发请求；
 * 通过cache.c与cache.h定义的缓存，采用读者优先的策略，实现多线程下的缓存；
 * 对https请求特殊处理，实现功能；
 */

#include <stdio.h>
#include "csapp.h"
#include "cache.h"

static const char* user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char* https_hdr = "HTTP/1.1 200 Connection Established\r\nConnection: close\r\n\r\n";

void doit(int fd);
void parse_url(char* url, char* hostname, char* port, char* uri);
void send_requestline(char* uri, int fd);
void read_requestheader(rio_t* rp);
void send_requestheader(rio_t* rp, int fd, char* hostname);
void server_to_client_withcache(int clientfd, int serverfd, char* url);
void* thread(void* vargp);
void server_to_client(int clientfd, int serverfd);
void* client_to_server(void* vargp);
void clienterror(int fd, char* cause, char* errnum, char* shortmsg, char* longmsg);

void sigchld_handler(int sig) {
    int bkp_errno = errno;
    while (waitpid(-1, NULL, WNOHANG) > 0);
    errno = bkp_errno;
}

int main(int argc, char** argv)
{
    Signal(SIGPIPE, SIG_IGN);/* 忽略所有的SIGPIPE信号 */
    Signal(SIGCHLD, sigchld_handler);/* 将SIGCHLD信号与handler联系起来，回收所有的子进程 */

    int listenfd, * connfdp;
    pthread_t tid;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    /* Check command line args */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    init_cache();

    listenfd = Open_listenfd(argv[1]);
    while (1) {
        clientlen = sizeof(clientaddr);
        connfdp = (int*)Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA*)&clientaddr, &clientlen);
        Getnameinfo((SA*)&clientaddr, clientlen, hostname, MAXLINE,
            port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        Pthread_create(&tid, NULL, thread, connfdp);
    }
}


void* thread(void* vargp)
{
    int connfd = *((int*)vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}


/*
 * doit - handle one HTTP request/response transaction
 * 处理http和https请求，在客户端和服务器之间转发信息
 */
void doit(int fd)
{
    char buf[MAXLINE], method[MAXLINE], url[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], port[MAXLINE], uri[MAXLINE];
    rio_t rio;
    int serverfd;
    int is_https = 0;

    /* Read request line and headers */
    Rio_readinitb(&rio, fd);
    if (!Rio_readlineb(&rio, buf, MAXLINE))
        return;
    printf("%s", buf);

    sscanf(buf, "%s %s %s", method, url, version);

    if (!strcasecmp(method, "CONNECT"))
        is_https = 1;
    else if (strcasecmp(method, "GET")) {
        clienterror(fd, method, "501", "Not Implemented",
            "Tiny does not implement this method");
        return;
    }

    if (is_https || !search_cache(url, fd)) {
        /* 解析输入参数 URL-> hostname + (port) + uri */
        parse_url(url, hostname, port, uri);

        /* 与服务器建立连接 */
        serverfd = Open_clientfd(hostname, port);

        if (is_https) {
            pthread_t tid;
            fd_pair* fds;
            /* 向客户端发回连接成功信息 */
            Rio_writen(fd, (void*)https_hdr, strlen(https_hdr));

            /* 读取请求报头并忽略 */
            read_requestheader(&rio);

            /* 创建新线程转发从客户端发送到服务器的信息 */
            fds = (fd_pair*)Malloc(sizeof(fd_pair));
            fds->clientfd = fd;
            fds->serverfd = serverfd;
            Pthread_create(&tid, NULL, client_to_server, (void*)fds);

            server_to_client(fd, serverfd);
            Pthread_join(tid, NULL);
        }
        else {
            /* 编制并发送请求行 */
            send_requestline(uri, serverfd);

            /* 编制并发送请求报头 */
            send_requestheader(&rio, serverfd, hostname);

            /* 读取服务器发来的内容，再发给客户 */
            server_to_client_withcache(fd, serverfd, url);
        }
        Close(serverfd);
    }
}


/*
 * parse_url 解析URL，得到 hostname, (port), (uri) 参数
 */
void parse_url(char* url, char* hostname, char* port, char* uri)
{
    char turl[MAXLINE];
    strcpy(turl, url);

    char* hostname_begin = strstr(turl, "//") ? (char*)strstr(turl, "//") + 2 : turl;

    char* uri_begin = strstr(hostname_begin, "/"); /* 解析得到uri */
    if (uri_begin == NULL) /* 若省略uri，自动补成"/" */
        sprintf(uri, "/");
    else {
        strcpy(uri, uri_begin);
        *uri_begin = '\0';
    }

    char* port_begin = strstr(hostname_begin, ":"); /* 解析得到port */
    if (port_begin == NULL) /* 端口号缺省则默认为80 */
        sprintf(port, "80");
    else {
        *port_begin = '\0';
        port_begin += 1;
        strcpy(port, port_begin);
    }

    strcpy(hostname, hostname_begin); /* 解析得到port */
}


/*
 * send_requestline 编制并发送请求行
 */
void send_requestline(char* uri, int fd)
{
    char requestline[MAXLINE];
    sprintf(requestline, "GET %s HTTP/1.0\r\n", uri);
    Rio_writen(fd, requestline, strlen(requestline));
}


/*
 * read_requestheaders 读取客户端发来的所有请求报头并忽略
 */
void read_requestheader(rio_t* rp)
{
    char buf[MAXLINE];

    Rio_readlineb(rp, buf, MAXLINE);
    while (strcmp(buf, "\r\n"))
        Rio_readlineb(rp, buf, MAXLINE);
    return;
}


/*
 * send_requestheaders 读取客户端发来的所有请求报头，按照规范转发到服务器
 */
void send_requestheader(rio_t* rp, int fd, char* hostname)
{
    char buf[MAXLINE];
    int have_Host = 0;

    while (Rio_readlineb(rp, buf, MAXLINE)) {
        if (strcmp(buf, "\r\n") == 0) break;
        else if (strstr(buf, "Host")) /* 如果客户发来的报头里有Host，直接转发，无需再自动发送 */
            have_Host = 1;
        else if (strstr(buf, "User-Agent") || strstr(buf, "Connection") || strstr(buf, "Proxy-Connection"))
            continue;
        printf("%s", buf);
        Rio_writen(fd, buf, strlen(buf));
    }

    if (!have_Host) {
        sprintf(buf, "Host: %s\r\n", hostname);
        Rio_writen(fd, buf, strlen(buf));
    }
    sprintf(buf, "%s", user_agent_hdr);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Connection: close\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Proxy-Connection: close\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "\r\n");
    Rio_writen(fd, buf, strlen(buf));
    return;
}


/*
 * server_to_client_withcache 将服务器响应发送给客户端并缓存
 * 可能有二进制文件，故使用readnb()与memcpy()
 */
void server_to_client_withcache(int clientfd, int serverfd, char* url)
{
    size_t size, total_size = 0;
    int can_cache = 1;
    char buf[MAXLINE], block[MAX_OBJECT_SIZE];
    rio_t rio;

    memset(block, 0, sizeof(block));
    Rio_readinitb(&rio, serverfd);
    while ((size = Rio_readnb(&rio, buf, MAXLINE)) != 0) {
        Rio_writen(clientfd, buf, size);
        if (can_cache) {
            total_size += size;
            if (total_size > MAX_OBJECT_SIZE)
                can_cache = 0;
            else memcpy(block + total_size - size, buf, size);
        }
    }
    if (can_cache)
        insert_cache(url, block, total_size);
}


/*
 * server_to_client 将服务器响应发送给客户端且不缓存
 * 为避免遇到不足值反复读取导致timeout，使用Unix IO函数
 */
void server_to_client(int clientfd, int serverfd)
{
    size_t size;
    char buf[MAXLINE];

    while ((size = Read(serverfd, buf, MAXLINE)) > 0)
        Write(clientfd, buf, size);

}


/*
 * client_to_server 将客户端请求发送给服务器且不缓存
 */
void* client_to_server(void* vargp)
{
    Pthread_detach(pthread_self());

    fd_pair fds = *((fd_pair*)vargp);
    int clientfd = fds.clientfd;
    int serverfd = fds.serverfd;
    size_t size;
    char buf[MAXLINE];

    while ((size = Read(clientfd, buf, MAXLINE)) > 0)
        Write(serverfd, buf, size);

    Free(vargp);
    return NULL;
}


/*
 * clienterror - returns an error message to the client
 */
void clienterror(int fd, char* cause, char* errnum,
    char* shortmsg, char* longmsg)
{
    char buf[MAXLINE], * body = (char*)Malloc(MAXBUF);
    size_t extra_len = strlen(body);
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wformat-overflow"
    /* Build the HTTP response body */
    extra_len += sprintf(body + extra_len, "<html><title>Tiny Error</title>");
    extra_len += sprintf(body + extra_len, "<body bgcolor=""ffffff"">\r\n");
    extra_len += sprintf(body + extra_len, "%s: %s\r\n", errnum, shortmsg);
    extra_len += sprintf(body + extra_len, "<p>%s: %s\r\n", longmsg, cause);
    extra_len += sprintf(body + extra_len, "<hr><em>The Tiny Web server</em>\r\n");
#pragma GCC diagnostic pop

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    rio_writen(fd, buf, strlen(buf));
    rio_writen(fd, body, strlen(body));
    Free(body);
}
