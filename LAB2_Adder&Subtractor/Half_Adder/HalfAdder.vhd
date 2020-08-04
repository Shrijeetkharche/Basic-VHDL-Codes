library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
	port(a, b: in bit;
			s, c: out bit);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin
	process(a, b)
	begin
		if (a&b = "00") then
			s <= '0';
			c <= '0';
		elsif (a&b = "01" or a&b = "10") then
			s <= '1';
			c <= '0';
		else 
			s <= '0';
			c <= '1';
		end if;
	end process;
end Behavioral;
