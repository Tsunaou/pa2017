#include "cpu/instr.h"


make_instr_func(call_rm_v)
{
	int len=1;
	OPERAND imm;
	imm.data_size=data_size;

	len+=modrm_rm(eip+1,&imm);
	operand_read(&imm);
	

	//push eip
	cpu.esp -= 4;
	if(data_size==32)
		vaddr_write(cpu.esp,SREG_SS,4,cpu.eip + len);
	else
		assert(0);
	
	cpu.eip=imm.val;

	return 0;
}

make_instr_func(call_near)
{
	//printf("%x\n",eip);
	OPERAND rm;
	rm.type = OPR_MEM;
	rm.data_size = 32;
	rm.sreg = SREG_SS;
	rm.val = eip+5;
	cpu.esp -= 4;
	rm.addr = cpu.esp;
	operand_write(&rm);

	OPERAND imm;
	imm.type = OPR_IMM;
	imm.sreg = SREG_CS;
	imm.data_size = 32;
	imm.addr = eip+1;
	operand_read(&imm);
	//printf("%x\n",imm.val);
	//
	return 5+imm.val;
}


