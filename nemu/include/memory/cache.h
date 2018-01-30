#ifndef __CACHE_H__
#define __CACHE_H__

#include "memory.h"
// Cache
#define BLOCK_SIZE 64
#define CACHE_SIZE (64*1024)
#define CACHE_LINE 1024

typedef struct{
	bool valid;
	uint32_t tag;
	uint8_t data[BLOCK_SIZE];
} CacheLine;

CacheLine cache[CACHE_LINE];

void init_cache();
uint32_t cache_read(paddr_t paddr, size_t len, CacheLine *cache);
void cache_write(paddr_t paddr, size_t len, uint32_t data,  CacheLine * cache);

#endif
