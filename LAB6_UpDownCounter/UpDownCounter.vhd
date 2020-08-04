-- 3 bit Synchronous Up-Down Counter.
-- M = 0 (Up Count)
-- M = 1 (Down Count)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UpDownCounter is
	port( M, Clk, reset : in bit;
			S : out bit_vector(2 downto 0));
end UpDownCounter;

architecture Behavioral of UpDownCounter is

component JKFlipflop
	port(j, k, clk, reset : in bit; 
			q, qb : out bit); 
end component;

component Logic_ckt
	port(p, q, r, s : in bit;
			x, y, z : out bit);
end component;

signal t, tb : bit_vector(2 downto 0);
signal a, b, jk: bit_vector(1 downto 0);

begin
	JK1 : JKFlipflop port map('1', '1', Clk, reset, t(0), tb(0)); 
	LC1 : Logic_ckt port map(not M, t(0), M, tb(0), a(0), b(0), jk(0));
	S(0) <= t(0);
	
	JK2 : JKFlipflop port map(jk(0), jk(0), Clk, reset, t(1), tb(1));
	LC2 : Logic_ckt port map(a(0), t(1), b(0), tb(1), a(1), b(1), jk(1));
	S(1) <= t(1);

	JK3 : JKFlipflop port map(jk(1), jk(1), Clk, reset, t(2), tb(2));
	S(2) <= t(2);

end Behavioral;
