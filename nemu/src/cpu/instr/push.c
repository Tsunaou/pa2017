#include "cpu/instr.h"

static void instr_execute_1op(){
	
	cpu.esp-=data_size/8;

	//printf("PUSH IMM\n");
	operand_read(&opr_src);
	bool flag=((opr_src.val>>7)==1)&&(opr_src.data_size==8);
	if(flag)
	{
		//printf("Before,opr_src.val=%x\n",opr_src.val);

		if(data_size==16)
			opr_src.val = (uint16_t)opr_src.val+0xFF00;
		else if(data_size==32)
			opr_src.val = (uint32_t)opr_src.val+0xFFFFFF00;
		else
			;

		//printf("After,opr_src.val=%x\n",opr_src.val);
	}
	
	opr_src.data_size = data_size;
	opr_src.type = OPR_MEM;
	opr_src.sreg = SREG_SS;
	opr_src.addr = cpu.esp;
	operand_write(&opr_src);
	//printf("Sign extend!\n");
	

}
make_instr_func(push_r_v){
	
	//cpu.esp-=data_size/8;

	OPERAND src,rm;

	src.data_size=data_size;
	src.type = OPR_REG;
	src.sreg = SREG_CS;
	src.addr = opcode&0x7;
	operand_read(&src);

	cpu.esp -= data_size/8;

	rm.type = OPR_MEM;
	rm.sreg = SREG_SS;
	rm.data_size = data_size;
	rm.addr = cpu.esp;
	rm.val = src.val;
	//printf("%d",rm.val);
	operand_write(&rm);
	
	print_asm_1("push","",2,&src);

	//pirntf("After pusha,esp=%x\n",cpu.esp);

	return 1;

}
make_instr_func(push_m_v)
{
	int len=1;

	OPERAND rm,r;
	
	rm.type=OPR_MEM;
	rm.data_size=data_size;
	
	r.type=OPR_MEM;
	r.data_size=data_size;

	len+=modrm_rm(eip+1,&rm);
	//printf("rm.val=%x\n",rm.val);
	cpu.esp-=data_size/8;
	r.addr = cpu.esp;
	r.sreg = SREG_SS;
	operand_read(&rm);
	//printf("push_m_v:rm.val=%x\n",rm.val);
	r.val=rm.val;
	operand_write(&r);

	print_asm_1("push","",2,&rm);
	return len;
}
//make_instr_impl_1op(push, rm, v)
make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)
