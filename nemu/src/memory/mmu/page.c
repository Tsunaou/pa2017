#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	//printf("pdbr=%x\n",cpu.cr3.pdbr);
	//printf("\nPlease implement page_translate()\n");
	//assert(0);
	
	
	//printf("pdbr=%x\n",cpu.cr3.pdbr);
	//printf("laddr=%x\n",laddr);

	uint16_t dir = (laddr >> 22) & 0x3ff;
	paddr_t pde_addr = (cpu.cr3.pdbr << 12) + (dir * 4);

	//printf("pde_addr=%x\n",pde_addr);

        uint32_t pde = paddr_read(pde_addr, 4);
	PDE ppde;
	ppde.val = pde;
	//printf("pde = %x\n",ppde.page_frame);
	assert(ppde.present == 1);
	
	uint16_t page = (laddr >> 12) & 0x3ff;
	paddr_t pte_addr = (pde & 0xfffff000) + (page * 4);
	uint32_t pte = paddr_read(pte_addr, 4);
	PTE ppte;
	ppte.val = pte;
	//printf("pte = %x,\n ",ppte.val);
	assert(ppte.present == 1);

	uint16_t offset = laddr & 0xfff;
	//uint32_t l = ( (pte&0xfffff000) | offset);
	//printf("laddr=%x\n",l);
	//assert(0);
	return ((pte & 0xfffff000) | offset);

#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
