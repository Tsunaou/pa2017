#include "cpu/instr.h"
#include "device/port_io.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	uint8_t al = ((cpu.eax<<24)>>24);
	pio_write(opr_src.val, data_size/8, al);
}

make_instr_impl_2op(out, i, a, b)
make_instr_impl_2op(out, i, a, v)
make_instr_func(out_d2a_b)
{
	uint16_t dx = (uint16_t)cpu.edx;
	uint8_t al = ((cpu.eax<<24)>>24);
	pio_write(dx, 1, al);
	return 1;
}
make_instr_func(out_d2a_v)
{
	uint16_t dx = (uint16_t)cpu.edx;
	uint8_t al = ((cpu.eax<<24)>>24);
	pio_write(dx, data_size/8, al);

	return 1;
}
