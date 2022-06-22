library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generador is 
	generic
	(
		nBits: integer:= 30
	);
	port
	(
		clk: in std_logic;
		rst: in std_logic;
		
		cod: out std_logic_vector(1 downto 0)
	);
end generador;

architecture Behavioural of generador is

	signal contador: unsigned(nBits - 1 downto 0):= (others => '0');

begin
	process(clk,rst,contador)
	begin
		if(rising_edge(clk))then
			if(rst = '0')then
				contador<= contador + 1;
			end if;
		end if;
	end process;
	
	cod<= std_logic_vector(contador(nBits - 1 downto nBits - 2));

end Behavioural;