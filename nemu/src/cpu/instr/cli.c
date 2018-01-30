#include <cpu/instr.h>

make_instr_func(cli)
{
	//printf("before cli,IF=%x\n",cpu.eflags.IF);
	cpu.eflags.IF = 0;
	//printf("after cli,IF=%x\n",cpu.eflags.IF);
	return 1;
}
