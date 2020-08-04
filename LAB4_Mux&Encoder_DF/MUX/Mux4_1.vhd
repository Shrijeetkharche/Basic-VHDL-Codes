library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4_1 is
	port(a, b, c, d : in bit;
			s : in bit_vector(1 downto 0);
			z : out bit);
end Mux4_1;

architecture CSA of Mux4_1 is

begin
		z <= a when s = "00" else
				b when s = "01" else
				c when s = "10" else
				d when s = "11";

end CSA;
