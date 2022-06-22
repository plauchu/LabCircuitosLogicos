library ieee;
use ieee.std_logic_1164.all;

entity conv4a7 is
	port
	(
		cod: in std_logic_vector(3 downto 0);
		dec: out std_logic_vector(6 downto 0)
	);
end conv4a7;

architecture Behavioral of conv4a7 is
begin
	process(cod)
	begin
		case cod is
			when "0000" => dec <= "1111110";	
			when "0001" => dec <= "0110000"; 
			when "0010" => dec <= "1101101"; 
			when "0011" => dec <= "1111001"; 
			when "0100" => dec <= "0110011"; 
			when "0101" => dec <= "1011011"; 
			when "0110" => dec <= "1011111"; 
			when "0111" => dec <= "1110000"; 
			when "1000" => dec <= "1111111"; 
			when "1001" => dec <= "1110011"; 
			when "1010" => dec <= "1110111"; 
			when "1011" => dec <= "0011111"; 
			when "1100" => dec <= "1001110"; 
			when "1101" => dec <= "0111101"; 
			when "1110" => dec <= "1001111"; 
			when "1111" => dec <= "1000111"; 
			when others => dec <= (others => '0');
		end case;
	end process;

end Behavioral;