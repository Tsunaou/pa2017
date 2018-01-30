#include <cpu/instr.h>

make_instr_func(sti)
{
	
	//printf("before sti,IF=%x\n",cpu.eflags.IF);
	cpu.eflags.IF = 1;
	//printf("after sti,IF=%x\n",cpu.eflags.IF);
	return 1;
}
