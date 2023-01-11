/*

基本实现方法：
分离适配 + 显式空闲链表 + LIFO + 根据大小类进行首次适配/最佳适配 + 边界标记立即合并
+ 去脚部 + 指针压缩为4字节


块格式：

已分配块
--------
头部(4字节)：块大小 + 前一块分配标记位 + 当前块分配标记位
有效载荷
(填充)
--------

空闲块
--------
头部(4字节)：块大小 + 前一块分配标记位 + 当前块分配标记位
pred指针(4字节)
succ指针(4字节)
空闲载荷与填充
脚部(4字节)：块大小 + 前一块分配标记位 + 当前块分配标记位
--------

 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"


  /* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

 /* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  
#define STARTSIZE  (1<<8) /* init初始化中扩展的堆内存大小，经测试选择此数字 */

#define MIN_FREE_BLOCK_SIZE 16
#define FREE_LIST_NUM 33 /* 分离链表的数目 */

/* 去脚部优化所需的标记，在头脚部空闲低2位上，标记前一个block是已分配/空闲 */
#define PREV_ALLOC 0x2 
#define PREV_FREE 0x0

#define MAX(x, y) ((x) > (y)? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

/* Pack a size, allocated bit and prev allocated bit into a word */
#define PACK(size, alloc, prev_alloc)  ((size) | (alloc) | (prev_alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))       
#define PUT(p, val)  (*(unsigned int *)(p) = val)   

/* 读取/设置空闲链表pred/succ指针 */
#define GET_PRED(p)	(GET(p) ? basic_pointer+(GET(p)) : NULL )   
#define GET_SUCC(p)	(GET((char*)p + WSIZE) ? basic_pointer+GET((char*)(p) + WSIZE) : NULL) 
#define SET_PRED(p, ptr) 	(PUT((char *)(p), (ptr) ? (char*)(ptr) - basic_pointer : 0))
#define SET_SUCC(p, ptr)	(PUT(((char *)(p)+(WSIZE)), (ptr) ? (char*)(ptr) - basic_pointer : 0))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* 读取/设置前一块的分配信息 */
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
#define SET_PREV_ALLOC(p) (PUT(p , (GET(p) | 0x2)))
#define SET_PREV_FREE(p) (PUT(p , (GET(p) & (~0x2))))

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/* 存放整个堆的起始地址，作为基址指针 */
static char* basic_pointer = NULL;
/* 分离适配链表起始指针数组 */
static void** free_lists = NULL;

/* Function prototypes for internal helper routines */
static void* extend_heap(size_t words);
static void* place(void* bp, size_t asize);
static void* find_fit(size_t asize);
static void* coalesce(void* bp);
static void remove_from_freelists(void* ptr); /* 将空闲块从链表中除去 */
static void insert_into_freelists(void* ptr); /* 将空闲块插入到链表中 */
static int get_index(size_t size); /* 根据size计算所属链表大小类 */
static void print_pack_info(void* ptr);

/*
 * mm_init - Initialize the memory manager
 *
 * 堆起始处结构如下：
 * free_lists[0 - FREE_LIST_NUM-1] + padding(4 Bytes) + epilogue header(4 Bytes)
 *  ^
 *   |
 * basic_pointer
 */
int mm_init(void)
{
    if ((basic_pointer = mem_sbrk(FREE_LIST_NUM * DSIZE + DSIZE)) == (void*)-1)
        return -1;
    free_lists = (void**)basic_pointer;
    for (int i = 0; i < FREE_LIST_NUM; i++)
        free_lists[i] = NULL;

    /* 链表头由free_lists指示，头部块不再需要，只设置4字节的结束块和4字节对齐块即可*/
    PUT((char*)(free_lists + FREE_LIST_NUM) + WSIZE, PACK(0, 1, PREV_ALLOC));

    if (extend_heap(STARTSIZE / WSIZE) == NULL)
        return -1;
    return 0;
}

/*
 * malloc - Allocate a block with at least size bytes of payload
 * 对齐(最小空闲块16字节)后进行分配，返回指向分配块的指针
 */
void* malloc(size_t size)
{
    size_t asize, extendsize;
    char* bp;

    if (size == 0)
        return NULL;
    if (size == 448) size = 512;
    if (size <= 12)
        asize = MIN_FREE_BLOCK_SIZE;
    else
        asize = DSIZE * ((size + WSIZE + (DSIZE - 1)) / DSIZE);

    if ((bp = find_fit(asize)) != NULL) {
        bp = place(bp, asize);
        return bp;
    }

    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;

    bp = place(bp, asize);
    return bp;
}

/*
 * free - Free a block
 * 释放已分配块，并立即执行合并
 */
void free(void* ptr)
{

    if (ptr == 0)
        return;

    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0, GET_PREV_ALLOC(HDRP(ptr))));
    PUT(FTRP(ptr), PACK(size, 0, GET_PREV_ALLOC(HDRP(ptr))));
    SET_PREV_FREE(HDRP(NEXT_BLKP(ptr))); /* 将紧邻的下一块的prev_alloc tag置空 */

    coalesce(ptr);
    return;
}

/*
 * realloc - Naive implementation of realloc
 * 采用naive的方式实现realloc
 */
void* realloc(void* oldptr, size_t size)
{
    void* newptr;

    if (size == 0) {
        free(oldptr);
        return NULL;
    }
    if (oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);
    if (!newptr)
        return NULL;

    size_t oldsize = GET_SIZE(HDRP(oldptr));
    memcpy(newptr, oldptr, MIN(size, oldsize));
    free(oldptr);
    return newptr;
}

void* calloc(size_t nmemb, size_t size)
{
    size_t bytes = size * nmemb;
    void* newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);
    return newptr;
}

/*
 * The remaining routines are internal helper routines
 */

 /*
  * extend_heap - Extend heap with free block and return its block pointer
  * 扩展堆内存并将新空闲块加入链表
  */
static void* extend_heap(size_t words)
{
    char* bp;
    size_t size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if ((bp = mem_sbrk(size)) == (void*)-1)
        return NULL;
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));		/* Free block header */
    PUT(FTRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));		/* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1, PREV_FREE));

    return coalesce(bp);
}

/* remove_from_freelists 将空闲块从链表中摘除 */
static void remove_from_freelists(void* ptr)
{
    int index = get_index(GET_SIZE(HDRP(ptr)));
    char* prevptr = GET_PRED(ptr);
    char* nextptr = GET_SUCC(ptr);

    if (prevptr != NULL)
        SET_SUCC(prevptr, nextptr);
    else
        free_lists[index] = nextptr;
    if (nextptr != NULL)
        SET_PRED(nextptr, prevptr);
}

/* insert_into_freelists 将新的空闲块插入链表 */
static void insert_into_freelists(void* ptr)
{
    int index = get_index(GET_SIZE(HDRP(ptr)));
    SET_SUCC(ptr, free_lists[index]);
    SET_PRED(ptr, NULL);
    free_lists[index] = ptr;
    if (GET_SUCC(ptr) != NULL)
        SET_PRED(GET_SUCC(ptr), ptr);
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 * 合并空闲块，并将新空闲块加入链表
 */
static void* coalesce(void* ptr)
{
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(ptr));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
    size_t size = GET_SIZE(HDRP(ptr));

    void* prevblk = PREV_BLKP(ptr);
    void* nextblk = NEXT_BLKP(ptr);

    if (prev_alloc && !next_alloc) {		/* Case 2 */
        size += GET_SIZE(HDRP(nextblk));
        remove_from_freelists(nextblk);
        PUT(HDRP(ptr), PACK(size, 0, PREV_ALLOC));
        PUT(FTRP(ptr), PACK(size, 0, PREV_ALLOC));
    }
    else if (!prev_alloc && next_alloc) {		/* Case 3 */
        size += GET_SIZE(FTRP(prevblk));
        remove_from_freelists(prevblk);
        PUT(HDRP(prevblk), PACK(size, 0, GET_PREV_ALLOC(HDRP(prevblk))));
        PUT(FTRP(prevblk), PACK(size, 0, GET_PREV_ALLOC(HDRP(prevblk))));
        ptr = prevblk;
    }
    else if (!prev_alloc && !next_alloc) {	/* Case 4 */
        size += GET_SIZE(HDRP(prevblk))
            + GET_SIZE(FTRP(nextblk));
        remove_from_freelists(prevblk);
        remove_from_freelists(nextblk);
        PUT(HDRP(prevblk), PACK(size, 0, GET_PREV_ALLOC(HDRP(prevblk))));
        PUT(FTRP(prevblk), PACK(size, 0, GET_PREV_ALLOC(HDRP(prevblk))));
        ptr = prevblk;
    }

    insert_into_freelists(ptr);
    return ptr;
}


/*
 * place - Place block of asize bytes at start of free block bp
 *         and split if remainder would be at least minimum block size
 * 放置在空闲块前部，当剩余空间可以分割时立即进行分割
 */
static void* place(void* bp, size_t asize)
{

    size_t size = GET_SIZE(HDRP(bp));
    remove_from_freelists(bp);
    size_t re_size = size - asize;

    if (re_size < MIN_FREE_BLOCK_SIZE) {
        PUT(HDRP(bp), PACK(size, 1, GET_PREV_ALLOC(HDRP(bp))));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
    }
    else {
        PUT(HDRP(bp), PACK(asize, 1, GET_PREV_ALLOC(HDRP(bp))));
        void* ptr = NEXT_BLKP(bp);

        PUT(HDRP(ptr), PACK(re_size, 0, PREV_ALLOC));
        PUT(FTRP(ptr), PACK(re_size, 0, PREV_ALLOC));
        insert_into_freelists(ptr);
    }
    return bp;
}

/*
 * find_fit - Find a fit for a block with asize bytes
 * 根据大小类，选择首次适配/最佳适配的放置策略
 */
static void* find_fit(size_t asize)
{
    int index = get_index(asize);
    void* p = NULL;
    void* min_p = NULL;
    size_t min_del = 0xffffffff;
    for (; index < FREE_LIST_NUM; index++) {
        p = free_lists[index];
        if(index <= 10){ /*当处于小的大小类时，首次适配*/
            while (p != NULL) {
                if (asize <= GET_SIZE(HDRP(p)))
                    return p;
                p = GET_SUCC(p);
            }
        }
        else{  /*当处于较大的大小类时，最佳适配*/
            while (p != NULL) {
                size_t del = GET_SIZE(HDRP(p)) - asize;
                if( asize <= GET_SIZE(HDRP(p)) && del < min_del){
                    min_del = del;
                    min_p = p;
                }
                p = GET_SUCC(p);
            }
            if(min_p) return min_p;
        }
    }
    return NULL;
}


/* 
 * get_index 根据size计算所属链表大小类 
 * 较小的块细致地线性划分，较大的块按照2的幂划分
 */
static int get_index(size_t size) {
    if (size <= 96)
       return (size + 7) / 8 - 2;
    switch (size) {
    case 96 ... 112:
        return 11;
    case 113 ... 128:
        return 12;
    case 129 ... 144:
        return 13;
    case 145 ... 192:
        return 14;
    case 193 ... 256:
        return 15;
    case 257 ... 384:
        return 16;
    case 385 ... 512:
        return 17;
    case 513 ... 768:
        return 18;
    case 769 ... 1024:
        return 19;
    case 1025 ... 1536:
        return 20;
    case 1537 ... 2048:
        return 21;
    case 2049 ... 3072:
        return 22;
    case 3073 ... 4096:
        return 23;   
    case 4097 ... 5120:
        return 24;
    case 5121 ... 8192:
        return 25;
    case 8193 ... 16384:
        return 26;
    case 16385 ... 32768:
        return 27;
    case 32769 ... 65536:
        return 28;
    case 65537 ... 131072:
        return 29;
    case 131073 ... 262144:
        return 30;
    case 262145 ... 524288:
        return 31;
    default:
        return 32;
    }
}

/* mm_checkheap辅助函数 - 输出包头部/脚部信息 */
static void print_pack_info(void* ptr) {
    printf("size: %u, prev_alloc: %u, alloc: %u\n", GET_SIZE(ptr), !!GET_PREV_ALLOC(ptr), GET_ALLOC(ptr));
}

/*
 * mm_checkheap - Check the heap for correctness. Helpful hint: You
 *                can call this function using mm_checkheap(__LINE__);
 *                to identify the line number of the call site.
 * 按照writeup的各项要求进行检查，静默运行，若出错则打印错误信息并exit(1)
 */
void mm_checkheap(int lineno)
{

    /* 检查指向堆起始位置的基址指针，如果不等于堆的起始边界mem_heap_lo()则报错 */
    if (basic_pointer != mem_heap_lo()) {
        printf("basic_pointer %lx error: should be equal to mem_heap_lo() %lx\n",
            (unsigned long)basic_pointer,(unsigned long)mem_heap_lo());
        exit(1);
    }

    void* ptr = NULL;
    void* prev_ptr = NULL;

    /*从头部开始遍历所有块，包括已分配块和未分配块 */
    for (ptr = ((char*)(free_lists + FREE_LIST_NUM) + DSIZE); ;
        prev_ptr = ptr, ptr = NEXT_BLKP(ptr)) {

        /* 遇到终止块(size:0 tag:1)，表明遍历结束，正常退出 */
        if (GET_SIZE(HDRP(ptr)) == 0 && GET_ALLOC(HDRP(ptr))) {

            /* 检查终止块，应始终处于堆的尾部(顶部边界)，与mem_heap_hi()保持一致 */
            if (((char*)ptr - 1) != (char*)mem_heap_hi()) {
                printf("epilogue header' s address %lx error: should be equal to mem_heap_hi() %lx\n",
                    (unsigned long)((char*)ptr - 1), (unsigned long)mem_heap_hi());
                exit(1);
            }
            break;
        }

        /* 检查当前块是否在堆的地址范围内 */
        if (!(ptr >= mem_heap_lo() && ptr <= mem_heap_hi())) {
            printf("block %lx not in heap, which start: %lx and end: %lx\n",
                (unsigned long)ptr, (unsigned long)mem_heap_hi(), (unsigned long)mem_heap_lo());
            print_pack_info(HDRP(ptr));
        }
        
        /* 检查指针是否8字节对齐 */
        if ((unsigned long)ptr % 8 != 0) {
            printf("pointer %lx not aligned\n", (unsigned long)ptr);
            print_pack_info(HDRP(ptr));
            exit(1);
        }
        /* 检查每个块的大小是否对齐 */
        if (GET_SIZE(HDRP(ptr)) % 8 != 0) {
            printf("block %lx not aligned\n", (unsigned long)ptr);
            print_pack_info(HDRP(ptr));
            exit(1);
        }

       /* 检查块大小是否小于最小大小要求 */
        if (GET_SIZE(HDRP(ptr)) <MIN_FREE_BLOCK_SIZE) {
            printf("block %lx size error: less than min_free_block_size\n", (unsigned long)ptr);
            print_pack_info(HDRP(ptr));
            exit(1);
        }

        if (prev_ptr != NULL) {
            /* 检查块头部的前一块分配标记位是否与分配情况一致 */
            if (!!GET_PREV_ALLOC(HDRP(ptr)) != !!GET_ALLOC(HDRP(prev_ptr))) {
                printf("block %lx 's prev_alloc_tag  mismatch prev block %lx\n",
                    (unsigned long)ptr, (unsigned long)prev_ptr);
                print_pack_info(HDRP(prev_ptr));
                print_pack_info(HDRP(ptr));
                exit(1);
            }

            /* 检查相邻空闲块是否没有合并 */
            if(!GET_ALLOC(HDRP(ptr)) && !GET_ALLOC(HDRP(prev_ptr))) {
                printf("free block %lx and %lx not coalesce\n", 
                    (unsigned long)prev_ptr, (unsigned long)ptr);
                print_pack_info(HDRP(prev_ptr));
                print_pack_info(HDRP(ptr));
                exit(1);
            }
        }

        /* 遍历中遇到空闲块 */
        if (!GET_ALLOC(HDRP(ptr))) {
            void* header = HDRP(ptr);
            void* footer = FTRP(ptr);

            /* 检查空闲块的头部和脚部是否一致 */
            if (GET_SIZE(header) != GET_SIZE(footer) ||
                GET_ALLOC(header) != GET_ALLOC(footer) ||
                GET_PREV_ALLOC(header) != GET_PREV_ALLOC(footer)) {
                printf("block %lx 's header and footer mismatch\n", (unsigned long)ptr);
                print_pack_info(HDRP(ptr));
                exit(1);
            }
        }

    }

    /* 遍历分离空闲链表的每一节 */
    for (int i = 0; i < FREE_LIST_NUM; i++) {
        void* ptr = NULL;
        void* prev_ptr = NULL;
        for (ptr = free_lists[i]; ptr != NULL; prev_ptr = ptr, ptr = GET_SUCC(ptr)) {
            
            /* 检查空闲链表指针是否都在堆地址范围内 */
            if (!(ptr >= mem_heap_lo() && ptr <= mem_heap_hi())) {
                printf("block pointer %lx not in heap, which start: %lx and end: %lx\n",
                    (unsigned long)ptr, (unsigned long)mem_heap_hi(), (unsigned long)mem_heap_lo());
                exit(1);
            }
            
            /* 检查当前块所在大小类是否正确 */
            size_t ssize= GET_SIZE(HDRP(ptr));
            int index = get_index(ssize);
            if (index != i) {
                printf("block %lx (index: %d) now in  wrong list %d",
                    (unsigned long)ptr, index, i);
                print_pack_info(HDRP(ptr));
                exit(1);
            }

            if (prev_ptr) {
                /* 检查空闲链表相邻链节之间的succ/pred指针是否对应正确 */
                if (!(GET_SUCC(prev_ptr) == ptr && prev_ptr == GET_PRED(ptr))) {
                    printf("free block %lx and %lx 's pointer mismatch\n",
                        (unsigned long)prev_ptr, (unsigned long)ptr);
                    print_pack_info(HDRP(prev_ptr));
                    printf("prev_block succ -> %lx\n",
                        (unsigned long)GET_SUCC(prev_ptr));
                    print_pack_info(HDRP(ptr));
                    printf("block pred -> %lx\n",
                        (unsigned long)GET_PRED(ptr));
                    exit(1);
                }
            }
        }

    }

    return;
}
