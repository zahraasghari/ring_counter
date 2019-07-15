library ieee;
use ieee.std_logic_1164.all;
entity ring_counter is
      port(
		     rst: in std_logic;
			  clk: in std_logic;
			  z  : out std_logic_vector (7 downto 0)
		);
end ring_counter;
architecture bhv of ring_counter is
            signal aux :std_logic_vector(7 downto 0) := "00000001"; 
begin
	     process(clk,rst)
		    begin
		  
		         if rst='0' then
					
					      aux <= "00000001";
							
					elsif clk'event and clk='1' then
					      aux(7 downto 1) <= aux (6 downto 0);
							aux(0) <= aux (7);
					end if;
				
	      end process;
			  
		   z<=aux;
end bhv;
