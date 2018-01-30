#include "cpu/instr.h"

make_instr_func(leave){
	// mov %ebp %esp
	cpu.esp=cpu.ebp;	
	//movl (%esp) %ebp
	
	OPERAND rm;
	rm.data_size = data_size;
	rm.type = OPR_MEM;
	rm.sreg = SREG_SS;
	rm.addr = cpu.esp;
	operand_read(&rm);
	cpu.ebp = rm.val;

	//cpu.esp+=data_size/8;
	cpu.esp += data_size/8;

	print_asm_0("leave","",1);

	return 1;	
}
