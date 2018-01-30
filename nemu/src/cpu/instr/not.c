#include "cpu/instr.h"

static void instr_execute_1op(){
	operand_read(&opr_src);

	//printf("opr_src.val=%x\n",opr_src.val);
	if(opr_src.data_size==8)
		opr_src.val^=0xFF;
	else if(opr_src.data_size==16)
		opr_src.val^=0xFFFF;
	else if(opr_src.data_size==32)
		opr_src.val^=0xFFFFFFFF;
	else
		printf("EXPLODE!\n");
	//printf("opr_src.val=%x\n",opr_src.val);
	operand_write(&opr_src);
}
make_instr_impl_1op(not, rm, b)
make_instr_impl_1op(not, rm, v)
