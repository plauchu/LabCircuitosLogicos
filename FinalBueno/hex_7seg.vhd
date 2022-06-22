library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity HEX_7SEG is
   port( 	Input: in std_logic_vector (3 downto 0);
				output: out std_logic_vector(6 downto 0));
end HEX_7SEG;
 
architecture hex_7seg of HEX_7SEG is
   begin
		
		output <= "1111110" when Input="0000" else
			"0110000" when Input="0001" else
			"1101101" when Input="0010" else
			"1111001" when Input="0011" else
			"0110011" when Input="0100" else
			"1011011" when Input="0101" else
			"1011111" when Input="0110" else
			"1110000" when Input="0111" else
			"1111111" when Input="1000" else
			"1110011" when Input="1001" else
			"1110111" when Input="1010" else
			"0011111" when Input="1011" else
			"1001110" when Input="1100" else
			"0111101" when Input="1101" else
			"1001111" when Input="1110" else
			"1000111" when Input="1111";
					
end hex_7seg;