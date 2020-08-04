library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfSubtractor is
	port(a, b: in bit;
			d, bo: out bit);
end HalfSubtractor;

architecture Behavioral of HalfSubtractor is

begin
	process(a, b)
	begin
		if (a&b = "00" or a&b = "11") then
			d <= '0';
			bo <= '0';
		elsif (a&b = "01") then
			d <= '1';
			bo <= '1';
		else 
			d <= '1';
			bo <= '0';
		end if;
	end process;
end Behavioral;
