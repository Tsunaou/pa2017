#include <cpu/instr.h>

make_instr_func(iret)
{
	OPERAND esp;

	esp.type = OPR_MEM;
	esp.data_size = 32;
	esp.sreg =SREG_SS;

	//pop eip
	esp.addr = cpu.esp;
	operand_read(&esp);
	cpu.eip = esp.val;
	cpu.esp+=4;
	//pop CS
	esp.addr = cpu.esp;
	operand_read(&esp);
	cpu.cs.val = (uint16_t)esp.val;
	cpu.esp+=4;
	//pop eflas
	esp.addr = cpu.esp;
	operand_read(&esp);
	cpu.eflags.val = esp.val;
	cpu.esp+=4;

	
	//printf("After iret,esp=%x\n",cpu.esp);

	return 0;
}
