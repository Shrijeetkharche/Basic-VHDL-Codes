library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO is
	port(clk, reset : in bit;
			D_in : in bit_vector(3 downto 0);
			D_out : out bit_vector(3 downto 0));
end PIPO;

architecture STR of PIPO is

component D_FF is 
	port(clk, D_in, reset:in bit;
			D_out: out bit);
end component;

signal s: bit_vector(3 downto 0);

begin
	
	D0:D_FF port map(clk, D_in(0), reset, s(0));
	D1:D_FF port map(clk, D_in(1), reset, s(1));
	D2:D_FF port map(clk, D_in(2), reset, s(2));
	D3:D_FF port map(clk, D_in(3), reset, s(3));
	
	D_out <= s;

end STR;
