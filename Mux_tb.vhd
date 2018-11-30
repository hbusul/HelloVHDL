--  A testbench has no ports.
entity Mux_tb is
end Mux_tb;

library ieee;
use ieee.std_logic_1164.all;
architecture behav of Mux_tb is
	type pattern_type is record
		a, b, sel, c : std_logic;
	end record;

	type pattern_array is array (natural range <>) of pattern_type;
	component Mux
		port(a, b, sel : in std_logic; c : out std_logic);
	end component;

	signal a, b, sel, c : std_logic;

begin
	mux_0 : Mux
		port map(a   => a, b => b, sel => sel,
		         c   => c);
	process
		constant patterns : pattern_array := (
			('0', '0', '0', '0'),
			('0', '0', '1', '0'),
			('0', '1', '0', '0'),
			('0', '1', '1', '1'),
			('1', '0', '0', '1'),
			('1', '0', '1', '0'),
			('1', '1', '0', '1'),
			('1', '1', '1', '1')
		);

	begin
		for i in patterns'range loop
			a   <= patterns(i).a;
			b   <= patterns(i).b;
			sel <= patterns(i).sel;
			wait for 1 ns;
			assert c = patterns(i).c
			report "bad output" severity error;
		end loop;
		assert false report "end of test" severity note;
		wait;
	end process;
end behav;
