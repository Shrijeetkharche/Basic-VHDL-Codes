library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4_2 is
	port(a : in bit_vector(3 downto 0);
			b : out bit_vector(1 downto 0));
end Encoder4_2;

architecture SSA of Encoder4_2 is

begin
	with a select
		b <= "00" when "0001",
				"01" when "0010",
				"10" when "0100",
				"11" when others;
end SSA;
