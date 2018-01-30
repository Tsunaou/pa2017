#ifndef __INSTR_IMUL_H__
#define __INSTR_IMUL_H__

make_instr_func(imul_rm2r_v);//OF AF /r
make_instr_func(imul_rm2a_b);//F6 /5
make_instr_func(imul_rm2a_v);//F7
make_instr_func(imul_irm2r_v);//69
make_instr_func(imul_i8rm2r_v);//6B

#endif
