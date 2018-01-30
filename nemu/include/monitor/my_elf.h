#ifndef __MY_ELF_H__
#define __MY_ELF_H__

uint32_t look_up_symtab(char *sym, bool *success);
uint32_t look_up_sum_symtab(char *sym, bool *success);
#endif
