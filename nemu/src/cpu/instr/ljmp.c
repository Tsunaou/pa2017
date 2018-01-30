#include "cpu/instr.h"

/*make_instr_func(ljmp)
{
	OPERAND dest;
	dest.data_size = 32;
	dest.type = OPR_IMM;
	dest.sreg = SREG_CS;
	dest.addr = eip + 1 ;
	operand_read(&dest);
	if(data_size==16)
	{
		cpu.eip = dest.val & 0xffff;
	}
	else
	{
		cpu.eip = dest.val;
	}
	OPERAND dest2;
	dest2.type = OPR_IMM;
	dest2.data_size=16;
	dest2.addr = eip +5;
	operand_read(&dest2);
	cpu.cs.val = dest2.val;
	//printf("dest1:%x,dest2:%x\n",dest.val,dest2.val);
	load_sreg(SREG_CS);
	//cpu.eip = dest.val;
	return 0;
}*/

make_instr_func(ljmp) {

	if(data_size == 16)
	{
		uint32_t temp_ip = (uint32_t)instr_fetch(eip+1,2);
		cpu.eip = cpu.eip & 0xffff0000;
		cpu.eip = cpu.eip | temp_ip;
		cpu.eip = cpu.eip & 0xffff;
	}
	else
	{
		uint32_t temp_eip = (uint32_t)instr_fetch(eip+1,4);
		cpu.eip = temp_eip;
	}

	uint32_t temp_cs = (uint32_t)instr_fetch(eip+5,2);
	cpu.cs.val = temp_cs;
	load_sreg(SREG_CS);

	return 0;
}
