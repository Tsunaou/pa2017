#include "cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	bool flag=((opr_src.val>>7)==1)&&(opr_src.data_size==8)&&(opr_dest.data_size==data_size);
	if(flag)
	{
//		printf("Before,opr_src.val=%x\n",opr_src.val);

		if(data_size==16)
			opr_src.val=(uint16_t)opr_src.val+0xFF00;
		else if(data_size==32)
			opr_src.val=(uint32_t)opr_src.val+0xFFFFFF00;
		else
			;

	//	printf("After,opr_src.val=%x\n",opr_src.val);
	}

//	printf("Sign extend!\n");

	opr_dest.val=alu_or(opr_dest.val,opr_src.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(or, i, a, b)	
make_instr_impl_2op(or, i, a, v)	
make_instr_impl_2op(or, i, rm, b)	
make_instr_impl_2op(or, i, rm, v)
make_instr_impl_2op(or, i, rm, bv)
make_instr_impl_2op(or, r, rm, b)
make_instr_impl_2op(or, r, rm, v)
make_instr_impl_2op(or, rm, r, b)
make_instr_impl_2op(or, rm, r, v)

