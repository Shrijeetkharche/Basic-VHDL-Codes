library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_Gate is
	port(a, b : in bit;
			c : out bit);
end AND_Gate;

architecture Behavioral of AND_Gate is

begin
	process(a, b)
	begin
		c <= a and b;
	end process;
end Behavioral;