Library ieee;
use ieee.std_logic_1164.all;

Library work;

-- se asignan las entradas y salidas del proyecto. Éstas son a las que
-- se les asignarán pines con el pin planner.

entity unidad_funcional is 
	port
	(
			fs			:	in		std_logic_vector(3 downto 0);
			A			:	in		std_logic_vector(15 downto 0);
			B			:	in		std_logic_vector(15 downto 0);
			C			:	out	std_logic;
			N			:	out	std_logic;
			Z			:	out	std_logic;
			F			:	out	std_logic_vector(15 downto 0)		
	);
	
End unidad_funcional;	

architecture bdf_type of unidad_funcional is
component arithmetic_circuit
	PORT
	(
		C_in	: IN STD_LOGIC ;
		A		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		B		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		S		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		C_out : OUT STD_LOGIC ;
		G		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
END COMPONENT;

COMPONENT LogicCircuit
	PORT
	(
		A		:	in std_logic_vector(15 downto 0);
		B		:	in std_logic_vector(15 downto 0);
		S		:	in std_logic_vector(1 downto 0);
		G		:	out std_logic_vector(15 downto 0)
		);
END COMPONENT;

COMPONENT shifter_circuit
	PORT
	(
		B		:	in std_logic_vector(15 downto 0);
		S		:	in std_logic_vector(1 downto 0);
		G		:	out std_logic_vector(15 downto 0)
		);
END COMPONENT;

COMPONENT multiplexer_2_to_1
	PORT
	(
		S : in std_logic;
		I0 : in std_logic_vector(15 downto 0);
		I1 : in std_logic_vector(15 downto 0);
		Y 	: out std_logic_vector(15 downto 0);
		ZERO : out std_logic
		);
END COMPONENT;


SIGNAL sal_logic		: STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL sal_shifter_circuit	: STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL c_out			: STD_LOGIC;
SIGNAL sal_arith		: STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL sal_mux1		: STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL sal_mux2		: STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL SO				: STD_LOGIC;

BEGIN
	
	 SO<=fs(3) AND fs(2);
	b2v_logic : LogicCircuit
	PORT MAP
	(
		S => fs(1 DOWNTO 0) ,
		A => A ,
		B => B ,
		G => sal_logic 
	);
	
	b2v_shifter_circuit: shifter_circuit
	PORT MAP
	(
		S => fs (1 DOWNTO 0) ,
		B => B ,
		G => sal_shifter_circuit
	);

	b2v_arithmetic : arithmetic_circuit
	PORT MAP
	(
		C_in => fs(0) ,
		A => A ,
		B => B ,
		S => fs (2 DOWNTO 1) ,
		C_out => C ,
		G => sal_arith
	);
	
	b2v_multiplexer_2_to_1 : multiplexer_2_to_1
	PORT MAP
	(
		S => fs(3),
		I0 => sal_arith,
		I1 => sal_logic,
		Y => sal_mux1
	);
	
	b2v_mux : multiplexer_2_to_1
	PORT MAP
	(
		S => SO,
		I0 => sal_mux1,
		I1 => sal_shifter_circuit,
		Y => sal_mux2,
		ZERO => Z
	);
	
	
	N <= sal_mux2(15);
	F <= sal_mux2;
END bdf_type;