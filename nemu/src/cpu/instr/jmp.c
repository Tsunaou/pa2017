#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 2, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}
make_instr_func(jmp_short) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, 8);
	print_asm_1("jmp", "", 1+data_size/8, &rel);

	cpu.eip += offset;

        return 2;
}

make_instr_func(jmp_near_rm){
        
	OPERAND rm;
	rm.type=OPR_MEM;
	rm.data_size=data_size;
	rm.addr=eip+1;
	
	int len=1;

	len+=modrm_rm(eip+1,&rm);
	operand_read(&rm);

	if(data_size==16)
		rm.val=sign_ext(rm.val,16);
	else
		;
	cpu.eip=rm.val;

	return 0;
}
