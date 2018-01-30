#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	//printf("cpu.cr0.pe=%x\n",cpu.cr0.pe);
	return cpu.segReg[sreg].base + offset;
}


// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {

	laddr_t addr = cpu.gdtr.base + sizeof(SegDesc) * cpu.segReg[sreg].index;
	
	SegDesc segdesc;

	//memcpy(segdesc.val ,hw_mem+addr ,sizeof(SegDesc));
	segdesc.val[0] = laddr_read(addr, 4);
	segdesc.val[1] = laddr_read(addr+ 4, 4);
	cpu.segReg[sreg].base = segdesc.base_15_0 | (segdesc.base_23_16<<16) | (segdesc.base_31_24<<24);
	cpu.segReg[sreg].limit = segdesc.limit_15_0 | (segdesc.limit_19_16<<16);
	cpu.segReg[sreg].privilege_level = segdesc.privilege_level;
	cpu.segReg[sreg].type = segdesc.type;
	cpu.segReg[sreg].soft_use = segdesc.soft_use;

	assert(cpu.segReg[sreg].limit==0xfffff);
	assert(cpu.segReg[sreg].base==0);
	assert(segdesc.granularity == 1);
	assert(segdesc.present == 1);

	//printf("laddr = %x\n",addr);
}

// load the invisible part of a segment register
/*void load_sreg(uint8_t sreg) {
	 
	if((int)sreg<0||(int)sreg>5)
	{
		//printf("%x\n",sreg);
		printf("error in load_sreg() in nemu/src/memory/mmu/segment.c\n");
		assert(0);
	}
	//printf("%x\n",cpu.segReg[sreg].val);
	uint32_t addr=cpu.gdtr.base+(cpu.segReg[sreg].index<<3);
	//printf("%x\n",addr);
	uint32_t limit1=0;
	uint32_t limit2=0;
	//memcpy(&limit1,(void *)addr,2);
	limit1=laddr_read(addr,2);
	limit1&=0x0000ffff;
	//memcpy(&limit2,(void *)(addr+6),1);
	limit2=laddr_read(addr+6,1);
	limit2&=0x0000000f;
	cpu.segReg[sreg].limit=((limit2<<16)+limit1)&0x000fffff;
	
	uint32_t base1=0;
	uint32_t base2=0;
	uint32_t base3=0;
	//memcpy(&base1,(void *)addr+2,2);
	base1=laddr_read(addr+2,2);
	base1&=0x0000ffff;
	//memcpy(&base2,(void *)addr+4,1);
	base2=laddr_read(addr+4,1);
	base2&=0x000000ff;
	//memcpy(&base3,(void *)addr+7,1);
	base3=laddr_read(addr+7,1);
	base3&=0x000000ff;
	cpu.segReg[sreg].base=((base3<<24)+(base2<<16)+base1)&0xffffffff;
	
	uint32_t level=0;
	//memcpy(&level,(void *)addr+5,1);
	level=laddr_read(addr+5,1);
	level>>=5;
	cpu.segReg[sreg].privilege_level=level&0x00000003;//0x3 == 0011
	
	uint32_t s=0;
	//memcpy(&s,(void *)addr+5,1);
	s=laddr_read(addr+5,1);
	s>>=4;
	cpu.segReg[sreg].soft_use=s&0x00000001;
	
	uint32_t type=0;
	//memcpy(&type,(void *)addr+5,1);
	type=laddr_read(addr+5,1);
	cpu.segReg[sreg].type=type&0x0000000f;
	
	uint32_t g=0;
	//memcpy(&g,(void *)addr+6,1);
	g=laddr_read(addr+6,1);	
	g>>=7;
	g&=0x00000001;
	
	if(!(g==1&&cpu.segReg[sreg].base==0&&cpu.segReg[sreg].limit==0x000fffff))
	{	
		printf("error in nemu/src/memory/mmu/segment.c\n");
		assert(0);
	}

	//
	SegDesc segdesc;
	memcpy(segdesc.val ,hw_mem+addr ,sizeof(SegDesc));
	cpu.segReg[sreg].base = segdesc.base_15_0 | (segdesc.base_23_16<<16) | (segdesc.base_31_24<<24);
	cpu.segReg[sreg].limit = segdesc.limit_15_0 | (segdesc.limit_19_16<<16);
	cpu.segReg[sreg].privilege_level = segdesc.privilege_level;
	cpu.segReg[sreg].soft_use = segdesc.soft_use;

	assert(cpu.segReg[sreg].limit==0xfffff);
	assert(cpu.segReg[sreg].base==0);
	assert(segdesc.granularity == 1);
	assert(segdesc.present == 1);
}*/
