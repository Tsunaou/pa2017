#include <cpu/instr.h>

make_instr_func(lgdt)
{
	OPERAND rm;
	int len = 1;
	len+=modrm_rm( eip+1, &rm);

	cpu.gdtr.limit = laddr_read(rm.addr, 2);
	cpu.gdtr.base = laddr_read(rm.addr+2, 4);

	return len;
}
