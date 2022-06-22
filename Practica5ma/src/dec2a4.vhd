library ieee;
use ieee.std_logic_1164.all;

entity dec2a4 is
	port
	(
		cod: in std_logic_vector(1 downto 0);
		dec: out std_logic_vector(3 downto 0)
	);
end dec2a4;

architecture Behavioral of dec2a4 is
begin
	process(cod)
	begin
		case cod is
			when "00" => dec <= "0001";
			when "01" => dec <= "0010";
			when "10" => dec <= "0100";
			when others => dec <= "1000";
		end casE;
	end process;
end Behavioral;