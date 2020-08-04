library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AllGates is
	port( a, b: in bit;
	      c, d, e, f, g, h, i : out bit);
end AllGates;

architecture Behavioral of AllGates is

begin
	c <= a and b;
	d <= a or b;
	e <= not a;
	f <= a nand b;
	g <= a nor b;
	h <= a xor b;
	i <= a xnor b;

end Behavioral;
