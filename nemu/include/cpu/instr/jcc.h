#ifndef __INSTR_JCC_H_
#define __INSTR_JCC_H_

make_instr_func(jo_short_);//70
make_instr_func(jno_short_);//71
make_instr_func(jb_short_);//72
make_instr_func(jae_short_);//73
make_instr_func(je_short_);//74
make_instr_func(jne_short_);//75
make_instr_func(jna_short_);//76
make_instr_func(ja_short_);//77
make_instr_func(js_short_);//78
make_instr_func(jns_short_);//79
make_instr_func(jp_short_);//7a
make_instr_func(jnp_short_);//7b
make_instr_func(jl_short_);//7c
make_instr_func(jge_short_);//7d
make_instr_func(jle_short_);//7e
make_instr_func(jg_short_);//7f

//OF TWO BYTES
make_instr_func(jo_near);//80
make_instr_func(jno_near);//81
make_instr_func(jb_near);//82
make_instr_func(jae_near);//83
make_instr_func(je_near);//84
make_instr_func(jne_near);//85
make_instr_func(jna_near);//86
make_instr_func(ja_near);//87
make_instr_func(js_near);//88
make_instr_func(jns_near);//89
make_instr_func(jp_near);//8a
make_instr_func(jnp_near);//8b
make_instr_func(jl_near);//8c
make_instr_func(jge_near);//8d
make_instr_func(jle_near);//8e
make_instr_func(jg_near);//8f
#endif
