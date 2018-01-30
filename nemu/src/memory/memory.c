#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "memory/cache.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>


uint8_t hw_mem[MEM_SIZE_B];

uint32_t hw_mem_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data) {
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	if(is_mmio(paddr) == -1)
	{
		#ifdef CACHE_ENABLED
			ret = cache_read(paddr, len, cache);
		#else
			ret = hw_mem_read(paddr, len);
		#endif
	}
	else
	{
		ret = mmio_read(paddr, len, is_mmio(paddr));
	}
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data) {
	
	if(is_mmio(paddr) == -1)
	{	
		#ifdef CACHE_ENABLED
			cache_write(paddr,len,data,cache);
		#else			
			hw_mem_write(paddr, len, data);
		#endif
	}
	else
	{
		mmio_write(paddr, len, data, is_mmio(paddr));
	}
}


uint32_t laddr_read(laddr_t laddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	if(cpu.cr0.pe == 1 && cpu.cr0.pg == 1){
		if( cpu.cr0.pe ==0 ){ //data_across the page boundary ,remain to do `
			
			assert(0);
		}else{
			paddr_t paddr = page_translate(laddr);
			return paddr_read(paddr, len);
		}
	}
	else{
		return paddr_read(laddr, len);
	}
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data) {
	
	assert(len == 1 || len == 2 || len == 4);
	if(cpu.cr0.pe == 1 && cpu.cr0.pg == 1){
		if( cpu.cr0.pe ==0 ){ //data_across the page boundary ,remain to do `
			
			assert(0);
		}else{
			paddr_t paddr = page_translate(laddr);
			paddr_write(paddr, len, data);
		}
	}
	else{
		paddr_write(laddr, len, data);
	}

}


uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	return laddr_read(vaddr, len);
#else
	uint32_t laddr=vaddr;
	if(cpu.cr0.pe==1)
	{
		laddr = segment_translate(vaddr,sreg);
	}
	return laddr_read(laddr,len);
#endif

}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	laddr_write(vaddr, len, data);
#else
	uint32_t laddr = vaddr;
	if(cpu.cr0.pe==1)
	{

		laddr=segment_translate(vaddr,sreg);
	}
	laddr_write(laddr, len, data);

#endif

}

void init_mem() {
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);
	// cache
#ifdef CACHE_ENABLED
	init_cache();
#endif

#ifdef TLB_ENABLED
	//init_all_tlb();
	make_all_tlb();
	init_all_tlb();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t * get_mem_addr() {
	return hw_mem;
}
