library ieee;
use ieee.std_logic_1164.all;

entity JKFlipFlop is
	port(j,k,pr,clr,clk: in std_logic;
			q:out std_logic:='0');
end JKFlipFlop;

architecture BEH of JKFlipFlop is
begin
	process(clk)
	variable temp:std_logic;
	begin
 if clk='1' and clk' event then
 if pr='0' then temp:='1';
 elsif clr='0' then temp:='0';
 elsif j/=k then temp:=j;
 elsif j='1' then temp:=not temp;
 else temp:=temp;
 end if;
 q<=temp;
 end if;
 end process;
 end BEH;