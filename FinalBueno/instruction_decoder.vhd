library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
use ieee.numeric_std ;
entity instruction_decoder is
	port					
	(
		instruction		: in  std_logic_vector (15 downto 0);
		control_word	: out std_logic_vector (19 downto 0)
	);
end instruction_decoder;

architecture instruction_decoder of instruction_decoder is
	signal gate_1 : std_logic;
	signal gate_2 : std_logic;
	signal gate_3 : std_logic;
	
begin
	
	gate_1 <= instruction(9)  and not 	(instruction(14) and instruction(15));
	gate_2 <= instruction(14) and not 	(instruction(15));
	gate_3 <= instruction(14) and 		instruction(15);
	
	control_word <= instruction(8 downto 6)
							& instruction(5 downto 3)
							& instruction(2 downto 0)
							& instruction(15)
							& instruction(12 downto 10) 
							& gate_1
							& instruction(13)
							& not (instruction(14))
							& gate_2
							& gate_3
							& instruction(13)
							& instruction(9);
end instruction_decoder ;