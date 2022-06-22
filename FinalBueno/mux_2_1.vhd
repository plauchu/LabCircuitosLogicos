library ieee;
use ieee.std_logic_1164.all;
entity multiplexer_2_to_1 is
	port (
		S : in std_logic;
		I0 : in std_logic_vector(15 downto 0);
		I1 : in std_logic_vector(15 downto 0);
		Y 	: out std_logic_vector(15 downto 0);
		ZERO : out std_logic
		);
end multiplexer_2_to_1;
architecture  function_table  of  multiplexer_2_to_1  is
	signal  aux     : std_logic_vector (15  downto  0);
	begin
		with S select
			aux <= I0 when '0',
				  I1 when '1',
				  "XXXXXXXXXXXXXXXX" when others;
		with aux select
			ZERO <= '1' when "0000000000000000",
						'0' when others;
						
		Y <= aux;
	end function_table;