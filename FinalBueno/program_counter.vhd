library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.std_logic_signed.all;
use  ieee.std_logic_arith.all;


library work;

ENTITY program_counter is
port (
   CLK 		  : IN STD_LOGIC;
   OP         : IN  STD_LOGIC_VECTOR(1  DOWNTO 0);
	AD         : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
	A_DATA     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
	OUT_PC     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END program_counter;

ARCHITECTURE bdf_type of program_counter is

SIGNAL PC : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";

begin
	PROCESS (CLK) 
	begin
		
			if (CLK'event and (CLK ='1')) then
				case OP is
				  when "00"   => PC <= PC + 1; 
				  when "01"   => PC <= PC + AD;      
				  when "10"   => PC <= A_DATA;                  
				  when others => PC <= "XXXXXXXXXXXXXXXX";
				end case;
			end if;
			
	 
	OUT_PC <= PC;
	
	end process;
	
end bdf_type;
		