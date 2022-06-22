library ieee;
use ieee.std_logic_1164.all;
use work.componentes.all;

entity practica5 is
	port
	(
		clk, rst: in std_logic;
		FS: in std_logic_vector(3 downto 0);
		DIP1, DIP2: in std_logic_vector(7 downto 0);
		C, N, Z: out std_logic;
		SSEG_CM: out std_logic_vector(3 downto 0);
		SSEG_SC: out std_logic_vector(6 downto 0)
	);
end practica5;

architecture rtl of practica5 is
	constant nBits: integer:= 15;
	signal cod2bits: std_logic_vector(1 downto 0):= (others => '0');
	signal vec1, vec2, vec3, vec4: std_logic_vector(3 downto 0):= (others => '0');
	signal cod4bits: std_logic_vector(3 downto 0):= (others => '0');
	signal A, B, F: std_logic_vector(15 downto 0):= (others => '0');
	constant zeros: std_logic_vector(7 downto 0):= X"00";
	
begin

	gen: generador 
		generic map(nBits => nBits)
		port map(clk => clk, rst => rst, cod => cod2bits);
		
	mux: mux4a1
		port map(cod => cod2bits, vec1 => vec1, vec2 => vec2, vec3 => vec3, vec4 => vec4, y => cod4bits);
		
	dec: dec2a4
		port map(cod => cod2bits, dec => SSEG_CM);
		
	conv: conv4a7
		port map(cod => cod4bits, dec => SSEG_SC);
		
	alu: unidad_funcional
		port map(FS => FS, A => A, B => B, C => C, N => N, Z => Z, F => F);
					
	A(15 downto 8) <= zeros;
	A(7 downto 0) <= DIP1;
	
	B(15 downto 8) <= zeros;
	B(7 downto 0) <= DIP2;
	
	vec1 <= F(3 downto 0);
	vec2 <= F(7 downto 4);
	vec3 <= F(11 downto 8);
	vec4 <= F(15 downto 12);
		
end rtl;
