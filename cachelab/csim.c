#include "cachelab.h"
#include <getopt.h> 
#include <stdlib.h> 
#include <unistd.h>
#include<stdio.h>
#include<math.h>
static int s, E, b, S;
static FILE* tracefile = NULL;
static int Verbose_flag = 0;//-v 选项输出每一步
static int total_miss = 0, total_hit = 0, total_eviction = 0, total_opt = 0;//记录总数
struct cache_line {//定义每行cacheline的结构
	int valid;
	int LRU_tag;
	unsigned long tag;
};
struct cache_line** cache;//二维数组表示cache
//输出帮助信息
void usage_info() {
	printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n"
		"Options:\n"
		"  -h         Print this help message.\n"
		"  -v         Optional verbose flag.\n"
		"  -s <num>   Number of set index bits.\n"
		"  -E <num>   Number of lines per set.\n"
		"  -b <num>   Number of block offset bits.\n"
		"  -t <file>  Trace file.\n"
		"\n"
		"Examples:\n"
		"  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n"
		"  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}
//初始化cache，为每组每行分配空间并将valid置零
void init_cache() {
	S = pow(2, s);
	cache = (struct cache_line**)malloc(S * sizeof(struct cache_line*));
	for (int i = 0; i < S; i++) {
		cache[i] = (struct cache_line*)malloc(E * sizeof(struct cache_line));
		for (int j = 0; j < E; j++) {
			cache[i][j].valid = 0;
		}
	}
	return;
}
//进行单次cache操作，找到组标S对应组并遍历
void operate(unsigned long address) {
	total_opt++;//用来标识最近一次被使用的时间，数值越大时间越近
	//解析地址
	int adr_S = (address >> b) % S;
	unsigned long adr_tag = address >> (s + b);
	struct cache_line* tmpS = cache[adr_S];//取出目的地址对应组 adr_S
	//遍历当前组
	int hit_flag = 0, cold_line = -1, minLRU_tag = 0x7fffffff, minLRU_line = -1;
	for (int i = 0; i < E; i++) {
		if (!tmpS[i].valid) {//若cacheline无效
			cold_line = i;//记录空行
			continue;
		}
		else if (tmpS[i].tag != adr_tag) {//若cacheline的tag不对应
			if (tmpS[i].LRU_tag < minLRU_tag) {//记录最近最少使用的行
				minLRU_tag = tmpS[i].LRU_tag;
				minLRU_line = i;
			}
			continue;
		}
		else {//发生命中hit
			hit_flag = 1;
			total_hit++;
			tmpS[i].LRU_tag = total_opt;
			if (Verbose_flag) printf(" hit");
			break;
		}
	}
	if (!hit_flag) {//发生不命中miss
		total_miss++;
		if (Verbose_flag) printf(" miss");
		if (cold_line != -1) {//发生冷不命中
			tmpS[cold_line].valid = 1;
			tmpS[cold_line].tag = adr_tag;
			tmpS[cold_line].LRU_tag = total_opt;
		}
		else {//发生冲突不命中
			total_eviction++;
			if (Verbose_flag) printf(" eviction");
			tmpS[minLRU_line].tag = adr_tag;
			tmpS[minLRU_line].LRU_tag = total_opt;
		}
	}
	return;
}
int main(int argc, char* argv[]) {
	int opt, need_help = 0;
	char operation;
	unsigned long address;
	int size;
	//解析命令行参数
	while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
		switch (opt) {
		case 'h':
			need_help = 1;
			break;
		case'v':
			Verbose_flag = 1;
			break;
		case's':
			s = atoi(optarg);
			break;
		case'E':
			E = atoi(optarg);
			break;
		case'b':
			b = atoi(optarg);
			break;
		case't':
			tracefile = fopen(optarg, "r");
			break;
		default:
			usage_info();
			break;
		}
	 }
	//若异常则弹出帮助信息并返回
	if (s < 0 || E < 0 || b < 0 || need_help || !tracefile) {
		usage_info();
		return 0;
	}
	//初始化cache
	init_cache();
	//从tracefile中读入操作指令
	while (fscanf(tracefile, "%c %lx %d", &operation, &address, &size) != EOF) {
		if (Verbose_flag) printf("%c %lx %d", operation, address, size);
		//因为不区分load/store，将M视为访问两次，S/L各一次
		if (operation == 'M' || operation == 'S' || operation == 'L') {
			if (operation == 'M') operate(address);
			operate(address);
		}
		if (Verbose_flag) printf("\n");
	 }
	fclose(tracefile);
	//printf("hits:%d misses:%d evictions:%d\n", total_hit, total_miss, total_eviction);
	printSummary(total_hit, total_miss, total_eviction);
	//释放内存空间
	for (int i = 0; i < S; i++) {
		free(cache[i]);
	}
	free(cache);
	return 0;
}
