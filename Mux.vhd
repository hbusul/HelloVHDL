library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux is
	port(
		a : in std_logic;
		b : in std_logic;
		sel : in std_logic;
		c : out std_logic
	);
end entity Mux;

architecture RTL of Mux is
	
begin
	c <= (a and not sel) or (b and sel);
end architecture RTL;
