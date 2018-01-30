#include "cpu/instr.h"

make_instr_func(ret_near){
	OPERAND rm;
	rm.type = OPR_MEM;
	rm.sreg = SREG_SS;//***
	rm.addr = cpu.esp;
	rm.data_size = data_size;
	operand_read(&rm);
	//printf("%d",rm.val);
	cpu.esp += data_size/8;
	cpu.eip = rm.val;
	print_asm_0("ret","",1);

	return 0;
}

make_instr_func(ret_near_imm){
	OPERAND rm,imm;
	
	//Get the immediate word
	imm.data_size = 16;
	imm.type = OPR_IMM;
	imm.sreg = SREG_CS;//***
	imm.addr = cpu.eip+1;
	operand_read(&imm);
	//pop esp
	rm.data_size = data_size;
	rm.type = OPR_MEM;
	rm.sreg = SREG_SS;//***
	rm.addr = cpu.esp;
	operand_read(&rm);
	cpu.eip = rm.val+imm.val;
	cpu.esp += data_size/8;
	print_asm_1("ret","",1,&imm);
	return 2;
}
