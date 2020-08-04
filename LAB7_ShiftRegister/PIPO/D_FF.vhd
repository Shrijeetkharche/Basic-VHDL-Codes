library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
	port( clk, D_in, reset: in bit;
			D_out: out bit);
end D_FF;

architecture BEH of D_FF is
begin
	process(clk, reset)
	begin
		if (reset = '1') then
			D_out <= '0';
		elsif(clk='1' and clk'EVENT) then
				D_out <= D_in;
		end if;
	end process;
end BEH;