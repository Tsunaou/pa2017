#include "nemu.h"
#include "cpu/reg.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "monitor/my_elf.h"
#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum {
	NOTYPE = 256, EQ, NOT_EQ,NEG,DEREF,//equal,not equal,negitive,dereference
	NUM,VAR,REG,//number(10 or 0x),variable,registers,
	AND,OR,NOT,XOR,//for bits
	LOG_AND,LOG_OR,LOG_NOT,//for logical 
	
	/* TODO: Add more token types */

};


static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// white space
	{"\\+", '+'},	//plus
	{"-", '-'},	//minus or negtive (= =)
	{"\\*", '*'},	//multiply or dereference(like int *p1)
	{"/", '/'},	//devide
	{"%", '%'},	//mod
	
	{"==", EQ},	//equal
	{"!=", NOT_EQ},	//not equal

	{"\\(",	'('},	//left parenthesis
	{"\\)",	')'},	//right parenthesis

	{"(0[xX][0-9A-Fa-f]+)|([0-9]+)", NUM },	//numbers ,hex or  dec
	{"[a-zA-Z0-9_]+", VAR},			//variable
	{"\\$e(ax|bx|cx|dx|bp|sp|di|si|ip)", REG},	//register

	/*{"&", AND},	//and in bit levels
	{"\\|", OR },	//or ..
	{"~", NOT},	//not ..
	{"\\^", XOR},	//xor ..
	*/
	
	{"&{2}", LOG_AND},	//and in logical levels
	{"\\|{2}", LOG_OR },	//or ..
	{"!", LOG_NOT},	//not ..:x

	{"&", AND},	//and in bit levels
	{"\\|", OR },	//or ..
	{"~", NOT},	//not ..
	{"\\^", XOR},	//xor ..


};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

	while(e[position] != '\0') {
		
		//not overflow
		if(nr_token>=32)
		{
			printf("nr_token >=32,the array tokens is overflow!!!!");
			return false;
		}	

		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */
				
				memset(tokens[nr_token].str,'\0', 32);

				switch(rules[i].token_type) {
					case NOTYPE:
						break;
					case NUM: case REG: case VAR:
					{
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].type = rules[i].token_type;
						nr_token++;
						break;
					}
					case '+': case '-': case '*': case '/': case '%': 
					case '(': case ')': case EQ : case NOT_EQ:
					case AND: case OR : case XOR: case NOT:
					case LOG_AND: case LOG_OR: case LOG_NOT:
					{
						tokens[nr_token].type = rules[i].token_type;
						nr_token++;
						break;

					}	
					
					default: tokens[nr_token].type = rules[i].token_type;
							 nr_token ++;
				}

				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}

typedef struct pNode
{
	int x;
	struct pNode* next;

}pNode;

bool check_parentheses(int s, int e)//check if the expression is surrourand by a matched pair of parenthese? 
{
	bool flag_base=(tokens[s].type=='(')&&(tokens[e].type==')');
	if(!flag_base)
		return false;
	else
	{
		//stack 
		pNode* top;
		top=(pNode*)malloc(sizeof(pNode));
		top->next=NULL;
		
		for(int i=s+1;i<e;i++)
		{
			if(tokens[i].type=='(')//push '('
			{
				pNode* p;
				p=(pNode*)malloc(sizeof(pNode));
				p->x=tokens[i].type;
				p->next=top;
				top=p;
			}
			else if(tokens[i].type==')')
			{
				if(top->next==NULL)//stack is empty
				{
					return false;
				}
				top=top->next;//pop but throw the element on top
			}
		}
		if(top->next!=NULL)//at last,it should be empty
			return false;
		return true;
	}
}

int get_Priority(int op_type)
{
	switch(op_type)//from baidu encyclopidia,may....maybe wrong? but I fail in vpn...QAQ
	{
		case LOG_OR:	return 1;break;
		case LOG_AND:	return 2;break;
		case OR:	return 3;break;
		case XOR:	return 4;break;
		case AND:	return 5;break;
		case EQ: case NOT_EQ:
				return 6;break;
		case '+': case '-':
			  	return 7;break;
		case '*': case '/': case '%':
				return 8;break;
		case NOT: case LOG_NOT: case DEREF: case NEG:
				return 9;break;
		default:assert(0);
	}
}


int Dominant_Op_find(int s, int e)
//find the index of the position of dominant operantor in the token experession
//whose priority is lowest
{
	//if get into this phrase,the parentheses matche well so
	//
	int pos=0;
	int not_op=0;
	int pri_min=666;
	for(int i=s;i<=e;i++)
	{
		if(tokens[i].type=='(')
			not_op++;
		if(tokens[i].type==')')
			not_op--;
		if((not_op!=0)||tokens[i].type==NUM||tokens[i].type==VAR||tokens[i].type==REG
				||tokens[i].type=='('||tokens[i].type==')')
			continue;
		int temp_pri=get_Priority(tokens[i].type);
		if(temp_pri<=pri_min)//< or <=?
		{
			pos=i;
			pri_min=temp_pri;
		}
			
	}
	return pos;
}

uint32_t eval(int s, int e, bool *success)
{
	//int fucf=9/-3;
	//printf("9/-3=%d\n",fucf);
	if(s>e)
	{
		printf("Bad expression ,s>e!!");
		success=false;
		return 0;
	}
	else if(s==e)
	{
		switch(tokens[s].type)
		{
			case NUM:
			{
				int len=strlen(tokens[s].str);
				if((tokens[s].str[1]=='x'||tokens[s].str[1]=='X')&&len>=2)
				{
					//HEX
					uint32_t addr_hex;
					char* str=tokens[s].str;
					printf("str=%s\n",str);
					sscanf(str,"%x",&addr_hex);
					return addr_hex;
				}
				else
					return atoi(tokens[s].str);
				break;
			}
			
			case REG:
			{
				char* reg=tokens[s].str;
				if(strcmp(reg,"$eax")==0) return cpu.eax;
				else if(strcmp(reg,"$ebx")==0) return cpu.ebx;
				else if(strcmp(reg,"$ecx")==0) return cpu.ecx;
				else if(strcmp(reg,"$edx")==0) return cpu.edx;
				else if(strcmp(reg,"$ebp")==0) return cpu.ebp;
				else if(strcmp(reg,"$esp")==0) return cpu.esp;
				else if(strcmp(reg,"$edi")==0) return cpu.edi;
				else if(strcmp(reg,"$esi")==0) return cpu.esi;
				else if(strcmp(reg,"$eip")==0) return cpu.eip;
				else
				{
					success=false;
					printf("REG ERROR!");
				}
				break;

			}
			case VAR:
			{
				char* var=tokens[s].str;
				return look_up_symtab(var,success);
				break;
			}
			default:assert(0);
		}
	}
	else if(check_parentheses(s,e)==true)
	{
		return eval(s+1, e-1,success);
	}
	else
	{
		int op=Dominant_Op_find(s,e);
		uint32_t val2=eval(op+1,e,success);
		switch(tokens[op].type)
		{
			//single
			case NEG:	return -val2;break;
			case NOT:	return ~val2;break;
			case LOG_NOT:	return !val2;break;
			case DEREF:	return vaddr_read(val2,SREG_DS,4);break;

			default:break;
		}
		uint32_t val1=eval(s,op-1,success);
		switch(tokens[op].type)
		{
			//double
			case EQ:	return val1 == val2;break;
			case NOT_EQ:	return val1 != val2;break;	
			case'+': 	return val1 + val2;break;
			case'-': 	return val1 - val2;break;
			case'*': 	return val1 * val2;break;
			case'/': 	/*printf("devide:ans=%d\n",(val1/val2))*/;return (((int32_t)val1) /( (int32_t)val2));break;
			case'%': 	return val1 % val2;break;
			case LOG_AND: 	return val1 && val2;break;
			case LOG_OR: 	return val1 || val2;break;
			case AND: 	return val1 & val2;break;
			case OR: 	return val1 | val2;break;
			case XOR: 	return val1 ^ val2;break;
			

			default:assert(0);
		}

	}
	return 0;
}


uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}
	//do something to fight with * and -
	for(int i=0;i<nr_token;i++)
	{
		if(tokens[i].type=='*'&&(i==0||tokens[i-1].type=='('||tokens[i-1].type=='*'||
					(tokens[i-1].type!=NUM && 
					 tokens[i-1].type!=VAR && 
					 tokens[i-1].type!=REG &&
					 tokens[i-1].type!=')')))
			tokens[i].type=DEREF;
		else if(tokens[i].type=='-'&&(i==0||
					(tokens[i-1].type!=NUM && 
					 tokens[i-1].type!=VAR && 
					 tokens[i-1].type!=REG &&
					 tokens[i-1].type!=')')))
			tokens[i].type=NEG;
		else//sit down normal options 
			;
	}	

	//printf("\nPlease implement expr at expr.c\n");
	//assert(0);
	*success = true;
	return eval(0, nr_token-1, success);
}

