library ieee;
use ieee.std_logic_1164.all; --usar en todos los programas VHDL

entity dec_2_4 is
	port(
		E: in std_logic_vector(1 downto 0);
		S: out std_logic_vector(3 downto 0)
	);
end dec_2_4;	

architecture Behavioural of dec_2_4 is
	-- Señales, Variables, Constantes y otros tipos de datos
	signal a,b,c,f,g,h,i,j,k,l,m: std_logic:= '0';
	
begin
	a <= E(1);
	b <= E(0);
	
	f <= not(a) and not(b);
	g <= not(a) and b;
	h <= a and not(b);
	i <= a and b;
	
	S <= f & g & h & i;

	
	
end Behavioural;