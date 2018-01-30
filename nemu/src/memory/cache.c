#include "memory/memory.h"
#include "memory/cache.h"
#include <memory.h>
#include <cpu/cpu.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern uint32_t hw_mem_read(paddr_t,size_t);
extern void hw_mem_write(paddr_t,size_t,uint32_t);

void init_cache()
{
	printf("Welcome to cache!\n\n");
	for(int i=0; i<CACHE_LINE; i++)
	{
		cache[i].valid=false;
		cache[i].tag=0;
		memset(cache[i].data,0,BLOCK_SIZE);
	}
}

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine *cache)
{
	//printf("eip=%x\n",cpu.eip);	
	uint32_t  group=(paddr>>6)&0x7f;//number of group
	uint32_t  baddr=paddr&0x3f;//address in block 

	bool hit=false;
	int i=0;
	for(i=group*8;i<(group+1)*8;i++)
	{
		uint32_t tag=paddr>>13;
		if((cache[i].tag==tag)&&cache[i].valid==true)
		{
			hit=true;
			break;
		}
	}
	if(hit)
	{
		//printf("read hit!\n");
		uint32_t ret_addr=0;
		if(baddr+len>64)
			memcpy(&ret_addr,hw_mem+paddr, len);
		else
			memcpy(&ret_addr,cache[i].data+baddr, len);
		return ret_addr;
	}
	else//not hit
	{
		//return hw_mem_read(paddr, len);
		//printf("read not hit!\n");
		int k=0;
		for(k=group*8;k<(group+1)*8;k++)
		{
			if(cache[k].valid == 0)
				break;
		}		
		if(k==(group+1)*8)
		{	
			srand((unsigned)time(NULL));
			k=group*8+(rand()%8);
		}
		cache[k].tag=paddr>>13;
		cache[k].valid=true;
		paddr_t temp=(paddr>>6)<<6;
		memcpy(cache[k].data,hw_mem+temp,BLOCK_SIZE);
		//return hw_mem_read(paddr, len);
		return cache_read(paddr, len, cache);
	}	



	//return hw_mem_read(paddr, len);
}

void cache_write(paddr_t paddr, size_t len ,uint32_t data, CacheLine * cache)
{
	
	//printf("pe=%x\n",cpu.cr0.pe);
	//printf("eip=%x\n",cpu.eip);	
	uint32_t group=(paddr>>6)&0x7f;//number of group
	uint32_t baddr=paddr&0x3f;//address in block 

	bool hit=false;
	int i=0;
	for(i=group*8;i<(group+1)*8;i++)
	{
		uint32_t tag=paddr>>13;
		if((cache[i].tag==tag)&&cache[i].valid)
		{
			hit=true;
			break;
		}
	}
	if(hit)
	{
		//printf("write hit!\n");
		memcpy(hw_mem+paddr,&data,len);
		memcpy(cache[i].data+baddr,&data,len);
		
	}
	else
	{
		//printf("write not hit!\n");
		memcpy(hw_mem+paddr,&data,len);

	}


	
	//hw_mem_write(paddr, len, data);
}
