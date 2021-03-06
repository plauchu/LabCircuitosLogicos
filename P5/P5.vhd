library ieee;
use ieee.std_logic_1164.all;
use work.bandita.all;

entity P5 is
	port
	(
		-------Entradas
		clk, rst: in std_logic;
		Cin: in std_logic;
		DIP1, DIP2, DIP3, DIP4: in std_logic_vector(3 downto 0);
		Oper: in std_logic_vector(1 downto 0);
		
		---Salidas
		Cout: out std_logic;
		SSEG_CM: out std_logic_vector(3 downto 0);
		SSEG_CS: out std_logic_vector(6 downto 0)
	);
		
end P5;

architecture rtl of P5 is
	constant nBits: integer := 10;
	signal cod2bits: std_logic_vector(1 downto 0):= (others => '0');
	
	signal vec1, vec2, vec3, vec4: std_logic_vector(3 downto 0):= (others => '0');
	signal cod4bits: std_logic_vector(3 downto 0):= (others => '0');
	
	signal A, B, G: std_logic_vector(15 downto 0):= (others => '0');
begin

	gen: generador 
		generic map(nBits => nBits)
		port map(clk => clk, rst => rst, cod => cod2bits);
		
	mux: mux_4_1
		port map(S => cod2bits, I1 => vec1, I2 => vec2, I3 => vec3, I4 => vec4, O=> cod4bits);

	dec: dec_2_4
		port map(E => cod2bits, S => SSEG_CM);
	
	conv: bcd_7
		port map(entr => cod4bits, sal => SSEG_CS);
	
	au: circuito_aritmetico
		port map(cin => Cin, A => A, B => B, S => Oper, cout => Cout, G => G);
		
	
	vec1 <= G(15 downto 12);
	vec2 <= G(11 downto 8);
	vec3 <= G(7 downto 4);
	vec4 <= G(3 downto 0);
	
	A(15 downto 8) <= (others=>'0');
	A(7 downto 4) <= DIP1;
	A(3 downto 0) <= DIP2;
	
	B(15 downto 8) <= (others=>'0');
	B(7 downto 4) <= DIP3;
	B(3 downto 0) <= DIP4;
	

end rtl;