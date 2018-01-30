#include "cpu/instr.h"

static void instr_execute_2op(){
	
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val=alu_and(opr_src.val,opr_dest.val);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	if(opr_src.data_size == 8 || opr_dest.data_size == 8)
		cpu.eflags.SF = (opr_dest.val & 0x80) ? 1 : 0;
}

make_instr_impl_2op(test, i, a, b)	
make_instr_impl_2op(test, i, a, v)	
make_instr_impl_2op(test, i, rm, b)	
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, r, rm, v)
