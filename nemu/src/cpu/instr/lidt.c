#include <cpu/instr.h>

make_instr_func(lidt)
{
	OPERAND rm;
	int len = 1;
	len+=modrm_rm( eip+1, &rm);

	cpu.idtr.limit = laddr_read(rm.addr, 2);
	cpu.idtr.base = laddr_read(rm.addr+2, 4);

	return len;
}
