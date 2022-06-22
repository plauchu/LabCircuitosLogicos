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

architecture Behavioral of generador is
	signal cont: unsigned(nBits - 1 downto 0):= (others => '0');
	
begin
	
	process(clk, rst, cont)
	begin
		if(rising_edge(clk))then
			if(rst = '0')then
				cont <= (others => '0');
			else
				cont <= cont + 1;
			end if;
		end if;
	end process;
	
	cod <= std_logic_vector(cont(nBits - 1 downto nBits - 2));
	
end Behavioral;