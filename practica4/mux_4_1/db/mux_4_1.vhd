library ieee;
use ieee.std_logic_1164.all;

entity mux_4_1 is 
	port(
		I1,I2,I3,I4: in std_logic_vector(3 downto 0);
		S: in std_logic_vector(1 downto 0);
		O: out std_logic_vector(3 downto 0));
	end mux_4_1;
	
architecture Behavioural of mux_4_1 is
	begin
		with S select
			O 
			<= I1 when "00",
				 I2 when "01",
				 I3 when "10",
				 I4 when "11",
				 "XXXX" when others;
end Behavioural;