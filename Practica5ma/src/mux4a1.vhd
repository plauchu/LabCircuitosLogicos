library ieee;
use ieee.std_logic_1164.all;

entity mux4a1 is
	port
	(
		cod: in std_logic_vector(1 downto 0);
		vec1, vec2, vec3, vec4: in std_logic_vector(3 downto 0);
		y: out std_logic_vector(3 downto 0)
	);
end mux4a1;

architecture Behavioral of mux4a1 is
begin
	process(cod, vec1, vec2, vec3, vec4)
	begin
		case cod is
			when "00" => y <= vec1;
			when "01" => y <= vec2;
			when "10" => y <= vec3;
			when "11" => y <= vec4;
			when others => y <= "ZZZZ";
		end case;
	end process;
end Behavioral;