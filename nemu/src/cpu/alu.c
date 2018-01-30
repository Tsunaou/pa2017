#include "cpu/cpu.h"
#include <stdlib.h>

uint32_t alu_add(uint32_t src, uint32_t dest) {
	uint32_t temp1=src;
	uint32_t temp2=dest;
	dest=temp1+temp2;
	//OF	
	uint32_t SH=(temp1>>31);
	uint32_t DH=(temp2>>31);
	uint32_t OH=(dest>>31);
	if(SH==DH)
	{
		if(SH!=OH)
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}
	else
		cpu.eflags.OF=0;

	//SF
	if(OH==0)
		cpu.eflags.SF=0;
	else
		cpu.eflags.SF=1;
	//ZF
	if(dest==0)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//CF
	uint32_t flags=0;
	uint32_t copyt1=temp1;
	uint32_t copyt2=temp2;
	uint32_t SL=(copyt1&0x1);
	uint32_t DL=(copyt2&0x1);
	DL+=SL;
	DL>>=1;
	temp1>>=1;
	temp2>>=1;
	flags=temp1+temp2+DL;
	flags>>=31;
	if(flags==0x1)
		cpu.eflags.CF=1;
	else
		cpu.eflags.CF=0;
	//PF-about the LSB,if the numbers of 1 is even,PF=1
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(dest&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	return dest;
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);

	uint32_t temp1=src;
	uint32_t temp2=dest;
	dest=dest+src+cpu.eflags.CF;
	//OF//stay dangerous
	uint32_t SH=(temp1>>31);
	uint32_t DH=(temp2>>31);
	uint32_t OH=(dest>>31);
	if(SH==DH)
	{
		if(SH!=OH)
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}
	else
		cpu.eflags.OF=0;

	//SF
	uint32_t sftemp=dest;
	sftemp=(sftemp>>31);
	cpu.eflags.SF=sftemp;
	//ZF
	if(dest==0)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//CF
	uint32_t flags=0;
	uint32_t copyt1=temp1;
	uint32_t copyt2=temp2;
	uint32_t SL=(copyt1&0x1);
	uint32_t DL=(copyt2&0x1);
	DL+=SL;
	DL+=cpu.eflags.CF;
	DL>>=1;
	temp1>>=1;
	temp2>>=1;
	flags=temp1+temp2+DL;
	flags>>=31;
	if(flags==0x1)
		cpu.eflags.CF=1;
	else
		cpu.eflags.CF=0;

	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(dest&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
	return dest;
}


uint32_t alu_sub(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t opr_src=src;
	uint32_t opr_dest=dest;

	uint32_t temp1=src;
	uint32_t temp2=dest;
	dest=dest-src;
	//OF
	uint32_t diff=temp2+~temp1+1;
	uint32_t temp2_neg=temp2>>31;
	uint32_t temp1_neg=temp1>>31;
	uint32_t d_neg=diff>>31;
	cpu.eflags.OF=(~(temp2_neg^~temp1_neg)&(temp2_neg^d_neg));
	
	//OF
	/*bool flag=(temp1>0&&temp2<0&&(temp1-temp2)<0)||(temp1<0&&temp2>0&&(temp1-temp2)>0);
	if(flag)
		cpu.eflags.OF=1;
	else
		cpu.eflags.OF=0;*/

	//SF
	uint32_t sftemp=dest;
	sftemp=(sftemp>>31);
	cpu.eflags.SF=sftemp;
	//set_SF(dest);
	//ZF
	if(temp1==temp2)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//CF
	/*uint32_t flags=0;
	uint32_t copyt1=temp1;
	uint32_t copyt2=temp2+cpu.eflags.CF;
	uint32_t SL=(copyt1&0x1);
	uint32_t DL=(copyt2&0x1);
	if(SL>DL)
		flags=1;
	temp1>>=1;
	temp2>>=1;
	flags=temp2-temp1-flags;
	flags>>=31;
	
	if(flags==0x1)
		cpu.eflags.CF=1;
	else
		cpu.eflags.CF=0;*/
	cpu.eflags.CF=(opr_dest<opr_src);
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(dest&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
	//BUG
	/*uint32_t result;
	uint64_t result1=opr_dest-opr_src;
	if(sign(opr_src)!=sign(opr_dest) && sign(opr_src)==sign(result1))
		cpu.eflags.OF = 1;
	else
		cpu.eflags.OF = 0;
	result = opr_dest - opr_src;
	//printf("dest=%d  src=%d  result=%d  reslut1=%lld\n",dest,src,result,result1);
	//printf("dest=%x  src=%x  result=%x  result1=%llx\n",dest,src,result,result1);
	//set_CF_sub(opr_dest,opr_src);
	set_PF(result);
	set_ZF(result);
	set_SF(result);*/
	//

	return dest;
}

/*uint32_t alu_sub(uint32_t src, uint32_t dest) {
	uint32_t result;
	uint64_t result1=dest-src;
	if(sign(src)!=sign(dest) && sign(src)==sign(result1))
		cpu.eflags.OF = 1;
	else
		cpu.eflags.OF = 0;
	result = dest - src;
	//printf("dest=%d  src=%d  result=%d  reslut1=%lld\n",dest,src,result,result1);
	//printf("dest=%x  src=%x  result=%x  result1=%llx\n",dest,src,result,result1);
	set_CF_sub(dest,src);
	set_PF(result);
	set_ZF(result);
	set_SF(result);
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	return result;
}*/

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t temp1=src;
	uint32_t temp2=dest;
	uint32_t temp1s=temp1+cpu.eflags.CF;
	dest=dest-src-cpu.eflags.CF;
	//OF
	uint32_t diff=temp2+~temp1s+1;
	uint32_t temp2_neg=temp2>>31;
	uint32_t temp1_neg=temp1s>>31;
	uint32_t d_neg=diff>>31;
	cpu.eflags.OF=(~(temp2_neg^~temp1_neg)&(temp2_neg^d_neg));

	/*uint32_t temp1s=temp1+cpu.eflags.CF;
	temp1s++;
	bool flag1=(temp1>0&&temp2<0&&dest<0)||(temp1<0&&temp2>0&&dest>0);
	if(flag1)
		cpu.eflags.OF=1;
	else
		cpu.eflags.OF=0;
	*/
	/*uint32_t sp=(temp2>>31);//positive
	uint32_t sn=(src>>31);//negative
	uint32_t sr=(dest>>31);
	if(sp!=sn)
	{	
		if(sr==src)
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}
	else
		cpu.eflags.OF=0;*/
	//SF
	uint32_t sftemp=dest;
	sftemp=(sftemp>>31);
	cpu.eflags.SF=sftemp;
	//ZF
	if((temp1+cpu.eflags.CF)==temp2)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//CF
	bool cfflag=(temp2<temp1)||(temp2<cpu.eflags.CF)||(temp2-temp1<cpu.eflags.CF)||(temp2-cpu.eflags.CF<temp1);
	unsigned long long longflag=((uint64_t)dest+(uint64_t)src)-(uint64_t)cpu.eflags.CF;
	if(cfflag)
		cpu.eflags.CF=1;
	else
		cpu.eflags.CF=0;
	longflag++;
	/*if(src==0)
	{
		if((cpu.eflags.CF==1)&&(dest>=1))
			cpu.eflags.CF=0;
		else if(cpu.eflags.CF==0)
			cfflag=false	;
		else
			cpu.eflags.CF=1;
	}
	else if(longflag>=4294967296)
		cpu.eflags.CF=0;
	else
		cpu.eflags.CF=1;*/
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(dest&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	return dest;

}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint64_t result= (uint64_t)src*(uint64_t)dest;
	if(data_size==32)
	{
		cpu.eflags.OF=((result>>32)!=0);	
		cpu.eflags.CF=((result>>32)!=0);
		//printf("32\n");
	}	
	else if(data_size==16)
	{
		cpu.eflags.OF=(((result<<32)>>48)!=0);
		cpu.eflags.CF=(((result<<32)>>48)!=0);
		//printf("16\n");
	}
	else if(data_size==8)
	{
		//printf("8\n");
		cpu.eflags.OF=(((result<<48)>>56)!=0);
		cpu.eflags.CF=(((result<<48)>>56)!=0);
	}
	else
	{
		printf("ERROR!");
		return -1;
	}
	return result;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint64_t result= (uint64_t)src*(uint64_t)dest;
	return result;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	//printf("div\n");
	if(src==0)
		exit(0);
	uint32_t result=dest/src;
	return result;
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	if(src==0)
		exit(0);
	uint32_t result=dest/src;
	return result;

}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	//printf("mod\n"i);
	if(src==0)
		exit(0);
	return dest%src;
}

int32_t alu_imod(int64_t src, int64_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	if(src==0)
		exit(0);
	return dest%src;
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t temp=src&dest;
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	cpu.eflags.SF=(temp>>31);
	if(temp==0)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	return src&dest;
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t temp=src^dest;
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	cpu.eflags.SF=(temp>>31);
	if(temp==0)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	return src^dest;

}

uint32_t alu_or(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t temp=src|dest;
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	cpu.eflags.SF=(temp>>31);
	if(temp==0)
		cpu.eflags.ZF=1;
	else
		cpu.eflags.ZF=0;
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	return src|dest;

}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t td=dest;
	uint32_t ts=src;
	uint32_t result=0;
	if(data_size==32)
	{
		uint32_t cfflag=((td<<(ts-1))>>31);
		cpu.eflags.CF=cfflag;
		result=dest<<src;
		cpu.eflags.SF=(result>>31);
		cpu.eflags.ZF=(result==0);
		//printf("_32_\n");
	}
	else if(data_size==16)
	{
		cpu.eflags.CF=((td<<(ts-1))>>15);
		uint32_t temp_L=(td<<src)&0xFFFF;
		uint32_t temp_H=((td>>16)<<16);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>15);
		cpu.eflags.ZF=((result&0xFFFF)==0);
		//printf("_16_\n");
	}
	else if(data_size==8)
	{
		cpu.eflags.CF=((td<<(ts-1))>>7);
		uint32_t temp_L=(td<<src)&0xFF;
		uint32_t temp_H=((td>>8)<<8);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>7);
		cpu.eflags.ZF=((result&0xFF)==0);
		//printf("_8_\n");
	}
	else
	{
		printf("ERROR!\n");
		return -1;
	}
	uint32_t temp=result;
	cpu.eflags.OF=0;
	//cpu.eflags.SF=(result>>31);
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	
	return result;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t td=dest;
	uint32_t ts=src;
	uint32_t result=0;
	if(data_size==32)
	{
		uint32_t cfflag=((td>>(ts-1))&0x1);
		cpu.eflags.CF=cfflag;
		result=dest>>src;
		cpu.eflags.SF=(result>>31);
		cpu.eflags.ZF=(result==0);
		//printf("_32_\n");
	}
	else if(data_size==16)
	{
		cpu.eflags.CF=((td>>(ts-1))&0x1);
		uint32_t temp_L=((td&0xFFFF)>>src);
		uint32_t temp_H=((td>>16)<<16);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>15);
		cpu.eflags.ZF=((result&0xFFFF)==0);
		//printf("_16_\n");
	}
	else if(data_size==8)
	{
		//printf("dest=%x\n",dest);
		//printf("src=%x\n",src);
		cpu.eflags.CF=((td>>(ts-1))&0x1);
		uint32_t temp_L=((td&0xFF)>>src);
		//printf("temp_L=%x\n",temp_L);
		uint32_t temp_H=((td>>8)<<8);
		//printf("temp_H=%x\n",temp_H);
		result=temp_L|temp_H;
		//printf("result=%x\n",result);
		cpu.eflags.SF=(result>>7);
		cpu.eflags.ZF=((result&0xFF)==0);
		//printf("_8_\n");
	}
	else
	{
		printf("ERROR!\n");
		return -1;
	}
	uint32_t temp=result;
	cpu.eflags.OF=0;
	//cpu.eflags.SF=(result>>31);
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
	return result;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t td=dest;
	uint32_t ts=src;
	uint32_t result=0;
	if(data_size==32)
	{
		//printf("dest=%x\n",dest);
		//printf("src=%x\n",src);
		uint32_t cfflag=((td>>(ts-1))&0x1);
		cpu.eflags.CF=cfflag;
		uint32_t af=td>>31;
		if(af==0)
			result=dest>>src;
		else
		{
			uint64_t td_64=(unsigned long long)td;
			//printf("td_64=%x\n",td_64;
			td_64|=0xFFFFFFFF00000000;
			//printf("td_64=%x\n",td_64);
			result=(uint32_t)(td_64>>src);
		}
		cpu.eflags.SF=(result>>31);
		cpu.eflags.ZF=(result==0);
		//printf("_32_\n");
	}
	else if(data_size==16)
	{
		cpu.eflags.CF=((td>>(ts-1))&0x1);
		uint32_t af=(td&0x8000)>>15;
		uint32_t temp_L=0;
		if(af==0)
			temp_L=((td&0xFFFF)>>src);
		else
			temp_L=((td|0xFFFF0000)>>src)&0xFFFF;
		uint32_t temp_H=((td>>16)<<16);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>15);
		cpu.eflags.ZF=((result&0xFFFF)==0);
		//printf("_16_\n");
	}
	else if(data_size==8)
	{
		//printf("dest=%x\n",dest);
		//printf("src=%x\n",src);
		cpu.eflags.CF=((td>>(ts-1))&0x1);
		uint32_t af=(td&0x80)>>7;
		uint32_t temp_L=0;
		if(af==0)
			temp_L=((td&0xFF)>>src);
		else
			temp_L=((td|0xFFFFFF00)>>src)&0xFF;
		//printf("temp_L=%x\n",temp_L);
		uint32_t temp_H=((td>>8)<<8);
		//printf("temp_H=%x\n",temp_H);
		result=temp_L|temp_H;
		//printf("result=%x\n",result);
		cpu.eflags.SF=(result>>7);
		cpu.eflags.ZF=((result&0xFF)==0);
		//printf("_8_\n");
	}
	else
	{
		printf("ERROR!\n");
		return -1;
	}
	uint32_t temp=result;
	cpu.eflags.OF=0;
	//cpu.eflags.SF=(result>>31);
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
	return result;

	return 0;
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	uint32_t td=dest;
	uint32_t ts=src;
	uint32_t result=0;
	if(data_size==32)
	{
		uint32_t cfflag=((td<<(ts-1))>>31);
		cpu.eflags.CF=cfflag;
		result=dest<<src;
		cpu.eflags.SF=(result>>31);
		cpu.eflags.ZF=(result==0);
		//printf("_32_\n");
	}
	else if(data_size==16)
	{
		cpu.eflags.CF=((td<<(ts-1))>>15);
		uint32_t temp_L=(td<<src)&0xFFFF;
		uint32_t temp_H=((td>>16)<<16);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>15);
		cpu.eflags.ZF=((result&0xFFFF)==0);
		//printf("_16_\n");
	}
	else if(data_size==8)
	{
		cpu.eflags.CF=((td<<(ts-1))>>7);
		uint32_t temp_L=(td<<src)&0xFF;
		uint32_t temp_H=((td>>8)<<8);
		result=temp_L|temp_H;
		cpu.eflags.SF=(result>>7);
		cpu.eflags.ZF=((result&0xFF)==0);
		//printf("_8_\n");
	}
	else
	{
		printf("ERROR!\n");
		return -1;
	}
	uint32_t temp=result;
	cpu.eflags.OF=0;
	//cpu.eflags.SF=(result>>31);
	//PF
	int even_c=0;//counts
	int y=0;
	uint32_t even_d=(temp&0xff);
	while(even_d!=0)
	{
		y^=even_d;
		even_d>>=1;	
	}
	even_c=y&0x1;
	if(even_c==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;

	
	return result;

	return 0;
}
