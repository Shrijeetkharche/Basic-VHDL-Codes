library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_Gate is
    Port ( a,b : in  STD_LOGIC;           
           c : out  STD_LOGIC);    
end XOR_Gate;

architecture BEH of XOR_Gate is
begin
	c <= a xor b;				
end BEH;