library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO is
	port(clk, D_in, reset:in bit;
			D_out: out bit_vector(3 downto 0));
end SIPO;

architecture Behavorial of SIPO is

component D_FF is 
	port(clk, D_in, reset:in bit;
			D_out: out bit);
end component;

signal s: bit_vector(3 downto 0);

begin

	D0:D_FF port map(clk, D_in, reset, s(0));
	D1:D_FF port map(clk, s(0), reset, s(1));
	D2:D_FF port map(clk, s(1), reset, s(2));
	D3:D_FF port map(clk, s(2), reset, s(3));
	
	D_out<=s;
end Behavorial;
