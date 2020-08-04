library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BinaryAdder4bit is
	port(A, B : in bit_vector(3 downto 0);
			C_in : in bit;
			S : out bit_vector(3 downto 0);
			C_out : out bit);
end BinaryAdder4bit;

architecture STR of BinaryAdder4bit is
	component FullAdder
		port(a, b, c_in : in bit;
				s, c_out : out bit);
	end component;
	
	signal c1, c2, c3 : bit;

begin
	F1 : FullAdder port map(A(0), B(0), C_in, S(0), c1);
	F2 : FullAdder port map(A(1), B(1), c1, S(1), c2);
	F3 : FullAdder port map(A(2), B(2), c2, S(2), c3);
	F4 : FullAdder port map(A(3), B(3), c3, S(3), C_out);

end STR;
