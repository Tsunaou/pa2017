#include "cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	//printf("%d\n",cpu.eip);

	//if(cpu.eip==0x3009e)
	//	cpu.eflags.CF=1;
	bool flag=((opr_src.val>>7)==1)&&(opr_src.data_size==8)&&(opr_dest.data_size==data_size);
	if(flag)
	{
	//	printf("Before,opr_src.val=%x\n",opr_src.val);

		if(data_size==16)
			opr_src.val=(uint16_t)opr_src.val+0xFF00;
		else if(data_size==32)
			opr_src.val=(uint32_t)opr_src.val+0xFFFFFF00;
		else
			;

	//	printf("After,opr_src.val=%x\n",opr_src.val);
	}

//	printf("Sign extend!\n");
	alu_sub(opr_src.val,opr_dest.val);
	
}
make_instr_impl_2op(cmp, i, a, b)
make_instr_impl_2op(cmp, i, a, v)
make_instr_impl_2op(cmp, i, rm, b)
make_instr_impl_2op(cmp, i, rm, v)

make_instr_impl_2op(cmp, r, rm, b)
make_instr_impl_2op(cmp, r, rm, v)
make_instr_impl_2op(cmp, rm, r, b)
make_instr_impl_2op(cmp, rm, r, v)

make_instr_impl_2op(cmp, i, rm, bv)

/*static void instr_execute_2op_bv(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	printf("Before,opr_src.val=%x\n",opr_src.val);
	if((opr_src.val>>7))==1)
	{
		if(data_size==16)
			opr_src.val=(uint16_t)opr_src.val+0xFF00;
		else if(data_size==32)
			opr_src.val=(uint32_t)opr_src.val+0xFFFFFF00;
		else
			;
	}
	printf("After,opr_src.val=%x\n",opr_src.val);
	printf("Sign extend!\n");
	alu_sub(opr_src.val,opr_dest.val);
	
}*/


/*make_instr_func(cmp_i2rm_bv)
{
	OPERAND rm,imm;
	
	imm.data_size=8;
	rm.data_size=data_size;

	int len=1;
	len+=modrm_rm(eip+1,&rm);
	imm.type=OPR_IMM;
	imm.addr=eip+len;
	
	operand_read(&imm);
	printf("%d\n",imm.val+6666);
	if(sign(imm.val)==1)
	//	imm.val=-imm.val;
	{
		if(data_size==16)
			imm.val=(uint16_t)imm.val+0xFF00;
		else if(data_size==32)
			imm.val=(uint32_t)imm.val+0xFFFFFF00;
		else
			;
	}
	alu_sub(rm.val,imm.val);
	print_asm_2("cmp","",2,&imm,&rm);
	printf("zf=%d\n",cpu.eflags.ZF);
	return len+1;
}*/

