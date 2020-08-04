library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
	port(a, b, c_in : in bit;
			s, c_out : out bit);
end FullAdder;

architecture Behavioral of FullAdder is

begin
	process(a, b, c_in)
	begin
		if (a&b&c_in = "000") then
			s <= '0';
			c_out <= '0';
		elsif (a&b&c_in = "001" or a&b&c_in = "010" or a&b&c_in = "100") then
			s <= '1';
			c_out <= '0';
		elsif (a&b&c_in = "011" or a&b&c_in = "101" or a&b&c_in = "110") then
			s <= '0';
			c_out <= '1';
		else
			s <= '1';
			c_out <= '1';
		end if;
	end process;
end Behavioral;
