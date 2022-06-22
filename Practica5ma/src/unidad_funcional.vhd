library ieee;
use ieee.std_logic_1164.all;
use work.componentes.all;

entity unidad_funcional is
	port
	(
		FS: in std_logic_vector(3 downto 0);
		A, B: in std_logic_Vector(15 downto 0);
		C, N, Z: out std_logic;
		F: out std_logic_vector(15 downto 0)
	);
end unidad_funcional;

architecture rtl of unidad_funcional is
	signal G_ca: std_logic_vector(15 downto 0):= (others => '0');
	signal G_cl: std_logic_Vector(15 downto 0):= (others => '0');
	signal G_co: std_logic_vector(15 downto 0):= (others => '0');
	signal O1: std_logic_vector(15 downto 0):= (others => '0');
	signal A1: std_logic:= '0';
	signal O2: std_logic_vector(15 downto 0):= (others => '0');
	
begin
	
	ca: circuito_aritmetico
		port map(Cin => FS(0), A => A, B => B, S => FS(2 downto 1), Cout => C, G => G_ca);
					
	cl: circuito_logico
		port map(S => FS(1 downto 0), A => A, B => B, G => G_cl);
					
	co: shifter
		port map(S => FS(1 downto 0), B => B, G => G_co);
					
	O1 <= G_ca when FS(3) = '0' else G_cl;
	A1 <= FS(3) and FS(2);
	O2 <= O1 when A1 = '0' else G_co;
	Z <= '1' when O2 = X"0000" else '0';	
	F <= O2;
	N <= O2(15);

end rtl;
