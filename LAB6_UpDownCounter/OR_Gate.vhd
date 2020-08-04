library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_Gate is
	port(a, b : in bit;
			c : out bit);
end OR_Gate;

architecture Behavioral of OR_Gate is

begin
	process(a, b)
	begin
		c <= a or b;
	end process;
end Behavioral;