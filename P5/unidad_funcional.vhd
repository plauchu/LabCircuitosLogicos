library ieee;
use ieee.std.logic_1164.all;
use work.components.all;

entity unidad_funcional is
	port
	(
	-- entradas
	
	FS: in std_logic_vector(3 downto 0);
	A, B: in std_logic_vector(15 downto 0);
	
	-- salidas
	
	C, N, Z : out std_logic;
	F: out std_logic_vector(15 downto 0);
	
	);
end unidad_funcional;

architecture rtl of unidad_funcional is

end rtl;