halfadder: HalfAdder.vhd HalfAdder_tb.vhd
	rm work -rf
	mkdir work
	ghdl -a --workdir=work HalfAdder.vhd
	ghdl -a --workdir=work HalfAdder_tb.vhd
	ghdl -e --workdir=work HalfAdder_tb
	ghdl -r --workdir=work HalfAdder_tb --vcd=work/halfadder_tb_dump.vcd

fulladder: FullAdder.vhd FullAdder_tb.vhd
	rm work -rf
	mkdir work
	ghdl -a --workdir=work FullAdder.vhd
	ghdl -a --workdir=work FullAdder_tb.vhd
	ghdl -e --workdir=work FullAdder_tb
	ghdl -r --workdir=work FullAdder_tb --vcd=work/fulladder_tb_dump.vcd

add16: FullAdder.vhd Add16.vhd Add16_tb.vhd
	rm work -rf
	mkdir work
	ghdl -a --workdir=work FullAdder.vhd
	ghdl -a --workdir=work Add16.vhd
	ghdl -a --workdir=work Add16_tb.vhd
	ghdl -e --workdir=work Add16_tb
	ghdl -r --workdir=work Add16_tb --vcd=work/adder16_tb_dump.vcd

mux: Mux.vhd Mux_tb.vhd
	rm work -rf
	mkdir work
	ghdl -a --workdir=work Mux.vhd
	ghdl -a --workdir=work Mux_tb.vhd
	ghdl -e --workdir=work Mux_tb
	ghdl -r --workdir=work Mux_tb --vcd=work/mux_tb_dump.vcd


clean:
	rm work -fr
