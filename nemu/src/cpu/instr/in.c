#include "cpu/instr.h"
#include "device/port_io.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	cpu.eax = pio_read(opr_src.val, data_size/8);
}

make_instr_impl_2op(in, i, a, b)
make_instr_impl_2op(in, i, a, v)
make_instr_func(in_d2a_b)
{
	uint16_t dx = (uint16_t)cpu.edx;
	uint8_t al = pio_read(dx, 1);
	cpu.eax = ((cpu.eax>>8)<<8)|al;
	return 1;
}
make_instr_func(in_d2a_v)
{
	uint16_t dx = (uint16_t)cpu.edx;
	cpu.eax = pio_read(dx, data_size/8);
	return 1;
}
