#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"
#include "memory/mmu/segment.h"

extern void load_sreg(uint8_t sreg);

void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	// Trigger an exception/interrupt with 'intr_no'
	// 'intr_no' is the index to the IDT	
	
	//printf("intr_no = %d\n",intr_no);

	// Push EFLAGS, CS, and EIP
	cpu.esp-=4;//push eflags
	vaddr_write(cpu.esp,SREG_SS,4,cpu.eflags.val);
	cpu.esp-=4;//push cs
	vaddr_write(cpu.esp,SREG_SS,4,cpu.cs.val);
	cpu.esp-=4;//push eip
	vaddr_write(cpu.esp,SREG_SS,4,cpu.eip);

	
	// Find the IDT entry using 'intr_no'
	GateDesc GD;
	uint32_t gs[2];
	gs[0] = laddr_read(cpu.idtr.base + intr_no*8,4);
	gs[1] = laddr_read(cpu.idtr.base + intr_no*8+4,4);
	memcpy(&GD, gs, 8);

	cpu.cs.val = GD.selector;
	
	//printf("before load,selector =0x%x\n",GD.selector);

	load_sreg(SREG_CS);//segmentation fault


	
	// Clear IF if it is an interrupt
	if(GD.type == 14)
		cpu.eflags.IF = 0;

	// Set EIP to the entry of the interrupt handler
	//printf("after load\n");
	cpu.eip =(GD.offset_15_0|(GD.offset_31_16<<16));
	//printf("eip=0x%x\n",cpu.eip);
#endif
}



void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
