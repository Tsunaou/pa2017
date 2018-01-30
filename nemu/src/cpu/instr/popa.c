#include <cpu/instr.h>

make_instr_func(popa)
{
	
	cpu.edi = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;
	
	cpu.esi = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

	cpu.ebp = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

	//throwaway* Skip ESP *
	cpu.esp+=4;

	cpu.ebx = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

	cpu.edx = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

	cpu.ecx = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

	cpu.eax = vaddr_read(cpu.esp, SREG_SS, 4);
	cpu.esp+=4;

		
	//printf("After popa,esp=%x\n",cpu.esp);
	
	return 1;
}
