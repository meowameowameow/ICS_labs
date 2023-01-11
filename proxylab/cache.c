/*
 * 实现cache，缓存从服务器接收到的内容
 * 考虑到读者-写者问题，cache总采用第一类解决方法，即读者优先
 * 
*/

#include "cache.h"

static cache_block CB[MAX_BLOCK_NUM];
static sem_t w;
static sem_t mutex;
static int readcnt;
static unsigned int now_LRU;

/* 
 * init_cache 初始化全局变量和锁 
 */
void init_cache()
{
    sem_init(&w,0,1);
    sem_init(&mutex,0,1);
    readcnt = 0;
    now_LRU = 1;
}

/* 
 * search_cache 在cache中凭URL寻找是否有已经缓存过的block，若是则直接返回给客户端
 */
int search_cache(char* url, int fd)
{
    P(&mutex);
    readcnt++;
    if(readcnt == 1)
        P(&w);
    V(&mutex);

    char *block = NULL;
    int eq_i = -1;
    size_t eq_size = 0;
    for(int i = 0; i < MAX_BLOCK_NUM; i++){
        if(strcmp(url,CB[i].url)==0){
            block = (char*)Malloc(CB[i].size);
            memcpy(block, CB[i].block, CB[i].size);
            eq_i = i;
            eq_size = CB[i].size;
            break;
        }
    }

    P(&mutex);
    if(eq_i >= 0) 
        CB[eq_i].LRU_tag = now_LRU++;/* 在锁的保护中，更新block的LRUtag */
    readcnt--;
    if(readcnt == 0)
        V(&w);
    V(&mutex);

    Rio_writen(fd, block, eq_size);/* 发送回所请求的内容 */
    Free(block);
    return eq_i >= 0;   
}

/* 
 * insert_cache 将新内容插入cache 
 */
void insert_cache(char* url, char* block, size_t size)
{
    P(&w);
    unsigned int min_tag = 0xffffffff;
    int min_i, ti = -1;
    for(int i = 0; i < MAX_BLOCK_NUM; i++){
        if(CB[i].LRU_tag == 0){ /* 如果有空闲block，直接插入 */
            ti = i;
            break;
        }
        else if(CB[i].LRU_tag < min_tag){ /* 找到LRUtag最小的block */
            min_tag = CB[i].LRU_tag;
            min_i = i;
        }
    }
    if(ti == -1) ti = min_i;

    CB[ti].LRU_tag = now_LRU++;
    CB[ti].size = size;
    strcpy(CB[ti].url,url);
    memcpy(CB[ti].block,block,size);/* 可能是二进制文件，需用memcpy */
    V(&w);
    return;
}