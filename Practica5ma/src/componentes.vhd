library ieee;
use ieee.std_logic_1164.all;

package componentes is
	
	component mux4a1
		port
		(
			cod: in std_logic_vector(1 downto 0);
			vec1, vec2, vec3, vec4: in std_logic_vector(3 downto 0);
			y: out std_logic_vector(3 downto 0)	
		);
	end component;
	
	component generador
		generic
		(
			nBits: integer:= 10
		);
		port
		(
			clk: in std_logic;
			rst: in std_logic;
			cod: out std_logic_vector(1 downto 0)
		);
	end component;
	
	component dec2a4
		port
		(
			cod: in std_logic_vector(1 downto 0);
			dec: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component conv4a7
		port
		(
			cod: in std_logic_vector(3 downto 0);
			dec: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component circuito_aritmetico
		port
		(
			A, B: in std_logic_vector(15 downto 0);
			S: in std_logic_vector(1 downto 0);
			Cin: in std_logic;
			G: out std_logic_vector(15 downto 0);
			Cout: out std_logic
		);
	end component;
	
	component circuito_logico
		port
		(
			S: in std_logic_vector(1 downto 0);
			A, B: in std_logic_vector(15 downto 0);
			G: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component shifter
		port
		(
			S: in std_logic_vector(1 downto 0);
			B: in std_logic_vector(15 downto 0);
			G: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component unidad_funcional
		port
		(
			FS: in std_logic_vector(3 downto 0);
			A, B: in std_logic_Vector(15 downto 0);
			C, N, Z: out std_logic;
			F: out std_logic_vector(15 downto 0)
		);
	end component;
	
end componentes;
