library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
use ieee.numeric_std ;
entity zero_fill is
	port
	(
		z_in		: in std_logic_vector (2 downto 0);
		z_out		: out std_logic_vector (15 downto 0)
	);
end zero_fill;

architecture function_table of zero_fill is
begin
		z_out <= "0000000000000" & z_in;
end function_table ;