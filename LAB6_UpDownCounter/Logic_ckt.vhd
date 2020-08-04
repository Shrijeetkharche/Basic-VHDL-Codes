library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Logic_ckt is
	port(p, q, r, s : in bit;
			x, y, z : out bit);
end Logic_ckt;

architecture Behavioral of Logic_ckt is
component AND_Gate
	port(a, b : in bit;
			c : out bit);
end component;

component OR_Gate
	port(a, b : in bit;
			c : out bit);
end component;

signal t1, t2 : bit;

begin
		A1 : AND_Gate port map(p, q, t1);
		A2 : AND_Gate port map(r, s, t2);
		O1 : OR_Gate port map(t1, t2, z);
		x <= t1;
		y <= t2;
end Behavioral;