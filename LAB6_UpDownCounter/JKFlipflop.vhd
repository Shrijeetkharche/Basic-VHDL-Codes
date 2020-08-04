
library IEEE; 
use IEEE.STD_LOGIC_1164.all;  

entity JKFlipflop is 
   port(
      j, k, clk, reset : in bit; 
      q, qb : out bit); 
end JKFlipflop;
  
architecture BEH of JKFlipflop is 
begin 
   jkff : process (j,k,clk,reset) is 
			 variable m : bit; 
				
			 begin 
					if (reset = '1') then 
						m := '0'; 
					elsif (clk = '1' and clk'event ) then 
						if (j /= k) then
							m := j; 
						elsif (j = '1' and k = '1') then 
							m := not m; 
						end if; 
					end if; 
					
					q <= m; 
					qb <= not m; 
   end process jkff; 
end BEH;