library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity CarryLookAhead is
	port ( A, B : in bit_vector (3 downto 0);
			C_in : in bit;
			S : out bit_vector (3 downto 0);
			C_out : out bit);
end CarryLookAhead;
 
architecture STR of CarryLookAhead is
 
component PartialFullAdder
	port ( a, b, c_in : in bit;
			s, P, G : out bit);
end component;
 
signal c1,c2,c3: bit;
signal P,G: bit_vector(3 downto 0);

begin
 
	PFA1: PartialFullAdder port map( A(0), B(0), C_in, S(0), P(0), G(0));
	PFA2: PartialFullAdder port map( A(1), B(1), c1, S(1), P(1), G(1));
	PFA3: PartialFullAdder port map( A(2), B(2), c2, S(2), P(2), G(2));
	PFA4: PartialFullAdder port map( A(3), B(3), c3, S(3), P(3), G(3));
 
c1 <= G(0) OR (P(0) AND C_in);
c2 <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND C_in);
c3 <= G(2) OR (P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND C_in);
C_out <= G(3) OR (P(3) AND G(2)) OR (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0)) OR (P(3) AND P(2) AND P(1) AND P(0) AND C_in);
 
end STR;
