library ieee ;
use ieee . std_logic_1164 . all ;
use ieee . numeric_std . all ;

entity extend is
port
(
	par8_6: in std_logic_vector (2 downto 0);
	par2_0: in std_logic_vector (2 downto 0);
	res : out std_logic_vector (15 downto 0)	
);
end extend;

architecture extend of extend is

begin

	with par8_6(2) select
		res <= 
		"00000000000" & par8_6(1 downto 0) & par8_6(2 downto 0) when '0',
		"11111111111" & par8_6(1 downto 0) & par8_6(2 downto 0) when others;

end extend ;
