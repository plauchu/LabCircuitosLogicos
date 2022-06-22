library ieee;
use ieee.std_logic_1164.all;

package componentes is

	component mux_4_1
		port(
		I1,I2,I3,I4: in std_logic_vector(3 downto 0);
		S: in std_logic_vector(1 downto 0);
		O: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component generador
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
	end component;
	
	component dec_2_4 
	port(
		E: in std_logic_vector(1 downto 0);
		S: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component bcd_7 
		port
	(
	entr: in std_logic_vector(3 downto 0);
	sal: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component circuito_aritmetico
		port
	(
	--entradas
	cin: in std_logic;
	A, B: in std_logic_vector(15 downto 0);
	S: in std_logic_vector(1 downto 0);
	--salidas
	cout: out std_logic;
	G: out std_logic_vector(15 downto 0)
	);
	end component;
	
	component circuito_logico
		port
		(
		-- entradas
		
		S: in std_logic_vector(1 downto 0);
		A, B: in std_logic_vector(15 downto 0);
		
		-- salidas
		
		G: out std_logic_vector(15 downto 0);
		);
	end component;
	
	component shifter is
		port
		(
		-- entradas
		
		S: in std_logic_vector(1 downto 0);
		B: in std_logic_vector(15 downto 0);
		-- salidas
		G: in std_logic_vector(15 downto 0);
		
		);
	end component;
	
	component unidad_funcional is
		port
		(
		-- entradas
		
		FS: in std_logic_vector(3 downto 0);
		A, B: in std_logic_vector(15 downto 0);
		
		-- salidas
		
		C, N, Z : out std_logic;
		F: out std_logic_vector(15 downto 0);
		
		);
	end component;

end componentes;