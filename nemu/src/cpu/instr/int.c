#include <cpu/instr.h>
#include <cpu/intr.h>

//extern raise_sw_intr(uint8_t intr_no);

make_instr_func(int_i_b)
{
	OPERAND imm;

	imm.type = OPR_IMM;
       	imm.data_size = 8;	
	imm.sreg = SREG_CS;
	imm.addr = eip + 1;

	operand_read(&imm);
	
	//printf("intr_no = %d\n",imm.val);

	raise_sw_intr((uint8_t)imm.val);

	//By mabai
	/*uint8_t imm = instr_fetch(eip+1,1)&0xff;
	raise_sw_intr(imm);*/

	//print_asm_1("int","",2,&imm);

	return 0;
}
