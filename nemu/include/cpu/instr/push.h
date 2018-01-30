#ifndef __INSTR_PUSH_H__
#define __INSTR_PUSH_H__		

make_instr_func(push_m_v);//FF GRP5
make_instr_func(push_r_v);//50+
/*make_instr_func(push_eax_v);//50
make_instr_func(push_ecx_v);//51
make_instr_func(push_edx_v);//52
make_instr_func(push_ebx_v);//53
make_instr_func(push_esp_v);//54
make_instr_func(push_ebp_v);//55
make_instr_func(push_esi_v);//56
make_instr_func(push_edi_v);//57
*/
make_instr_func(push_i_b);//6A
make_instr_func(push_i_v);//68

#endif
