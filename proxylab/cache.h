#ifndef __CACHE_H__
#define __CACHE_H__

#include "csapp.h"

/* 此处定义cache相关的常量 */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_BLOCK_NUM 10

/* 客户端、服务器的描述符对 */
typedef struct {
    int clientfd, serverfd;
}fd_pair;

/* cache block的结构 */
typedef struct{
    size_t size; /* block的大小 */
    unsigned int LRU_tag; /* LRU策略需要的标记 */
    char url[MAXLINE]; /* 标识block的URL */
    char block[MAX_OBJECT_SIZE]; /* 有效内容载荷 */
}cache_block;

/* 初始化全局变量和锁 */
void init_cache();
/* 在cache中凭URL寻找是否已经缓存过，若是则直接返回 */
int search_cache(char* url, int fd);
/* 将新内容插入cache */
void insert_cache(char* url, char* block, size_t size);

#endif