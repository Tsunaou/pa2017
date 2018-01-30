#include "cpu/instr.h"

make_instr_func(pop_m_v){
	printf("POP_M_V\n");
	int len=1;
	OPERAND rm,sp;

	sp.type=OPR_MEM;
	sp.sreg=SREG_SS;
	sp.data_size=data_size;
	sp.addr=cpu.esp;
	operand_read(&sp);

	rm.type=OPR_MEM;
	rm.data_size=data_size;
	len+=modrm_rm(eip+1,&rm);
	//rm.sreg=SREG_SS;
	rm.val=sp.val;
	operand_write(&rm);

	cpu.esp+=data_size/8;
	return len;
}
	
make_instr_func(pop_r_v){
	//printf("POP_R_V\n");
	OPERAND r,sp;
	//mov (%esp) r
	sp.type=OPR_MEM;
	sp.sreg=SREG_SS;
	sp.data_size=data_size;
	sp.addr=cpu.esp;
	operand_read(&sp);

	
	r.type=OPR_REG;
	r.sreg=SREG_CS;
	r.data_size=data_size;
	r.addr=opcode&0x7;
	r.val=sp.val;
	operand_write(&r);
	
	//esp+2/4
	cpu.esp+=data_size/8;
	print_asm_1("pop","",2,&r);
	return 1;
}
