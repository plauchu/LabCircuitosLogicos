library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity quiz4 is

port
(
s: in std_logic_vector(1 downto 0);
a: in std_logic_vector(15 downto 0);

y1:out std_logic_vector(17 downto 0);
y2:out std_logic_vector(18 downto 0);
y3:out std_logic_vector(13 downto 0);
y4:out std_logic_vector(12 downto 0)
);
end quiz4;

architecture Behavioral of quiz4 is
begin
process(s, a)
begin 
        if(s = "00")then 
		  
            if(a(15) = '0') then 
					y1 <= a & "00";
				else y1 <= a & "11";
				end if;
				
        elsif(s = "01")then 
		  
            if(a(15) = '0') then 
					y2 <= a & "000";
				else y2 <= a & "111"; 
				end if;
				
        elsif(s = "10")then 
		  
            if(a(15) = '0') then 
					y3 <= a(15 downto 2);
				else y3 <= a(15 downto 2); 
				end if;
				
        else 
		  
            if(a(15) = '0') then 
					y4 <= a(15 downto 3);
				else y4 <= a(15 downto 3);
				end if;
				
        end if; 
    end process;


end Behavioral;