#include "cpu/instr.h"

make_instr_func(lea){
	
	int len=1;
	
	OPERAND src,dest;
	src.data_size=data_size;
	dest.data_size=data_size;

	//printf("1	src.val=%d,dest.val=%d\n",src.val,dest.val);
	
	len+=modrm_r_rm(eip+1,&dest,&src);
	//operand_read(&src);
	
	//printf("2	src.val=%d,dest.val=%d\n",src.val,dest.val);

	dest.val=src.addr;
	
	operand_write(&dest);
	
	//	printf("3	src.val=%d,dest.val=%d\n",src.val,dest.val);
	
	print_asm_2("lea","",2,&src,&dest);	
	
	return len;
}
