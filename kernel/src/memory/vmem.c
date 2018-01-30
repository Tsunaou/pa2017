#include "common.h"
#include "memory.h"
#include <string.h>

#define VMEM_ADDR 0xa0000
#define SCR_SIZE (320 * 200)
#define NR_PT ((SCR_SIZE + PT_SIZE -1) / PT_SIZE)  // number of page tables to cover the vmem



//static PTE vmtable[NR_PT] align_to_page;		// video page tables

PDE* get_updir();

void create_video_mapping() {
	
	/* TODO: create an identical mapping from virtual memory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) to physical memeory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) for user program. You may define
	 * some page tables to create this mapping.
	 */

	//panic("please implement me");
	

	PDE *pdir = (PDE*)((uint32_t)get_updir() - 0xc0000000);
	pdir->present = 1;
	PTE* page_entry;
	for(int i=0xa0;i<=0xaf;i++)
	{
		page_entry = (PTE*)(pdir->page_frame<<12)+i;
		page_entry->page_frame = i;
		page_entry->present = 1;
	}


}

void video_mapping_write_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		buf[i] = i;
	}
}

void video_mapping_read_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		assert(buf[i] == i);
	}
}

void video_mapping_clear() {
	memset((void *)VMEM_ADDR, 0, SCR_SIZE);
}

