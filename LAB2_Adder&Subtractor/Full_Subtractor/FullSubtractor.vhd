library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullSubtractor is
	port(a, b, bo_in : in bit;
			d, bo_out : out bit);
end FullSubtractor;

architecture Behavioral of FullSubtractor is

begin
	process(a, b, bo_in)
	begin
		if (a&b&bo_in = "000" or a&b&bo_in = "101" or a&b&bo_in = "110") then
			d <= '0';
			bo_out <= '0';
		elsif (a&b&bo_in = "100") then
			d <= '1';
			bo_out <= '0';
		elsif (a&b&bo_in = "011") then
			d <= '0';
			bo_out <= '1';
		else
			d <= '1';
			bo_out <= '1';
		end if;
	end process;
end Behavioral;
