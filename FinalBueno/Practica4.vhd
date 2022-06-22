LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Practica4 IS 
	PORT
	(
		input1 :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		fs :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		N :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		D :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Practica4;

ARCHITECTURE bdf_type OF Practica4 IS 

COMPONENT arithmetic_circuit
	PORT(C_in : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 C_out : OUT STD_LOGIC;
		 G : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT practica2
	PORT(input_1 : IN STD_LOGIC;
		 dip_1 : IN STD_LOGIC_VECTOR(0 TO 3);
		 dip_2 : IN STD_LOGIC_VECTOR(0 TO 3);
		 dip_3 : IN STD_LOGIC_VECTOR(0 TO 3);
		 dip_4 : IN STD_LOGIC_VECTOR(0 TO 3);
		 output_1 : OUT STD_LOGIC;
		 output_2 : OUT STD_LOGIC;
		 output_3 : OUT STD_LOGIC;
		 output_4 : OUT STD_LOGIC;
		 sal : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT logiccircuit
	PORT(A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 G : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT multiplexer_2_to_1
	PORT(S : IN STD_LOGIC;
		 I0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 I1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ZERO : OUT STD_LOGIC;
		 Y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shifter_circuit
	PORT(B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 G : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT binary_to_bcd
GENERIC (bits : INTEGER;
			digits : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset_n : IN STD_LOGIC;
		 ena : IN STD_LOGIC;
		 binary : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 busy : OUT STD_LOGIC;
		 bcd : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	e :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	Y :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_3 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	GDFX_TEMP_SIGNAL_2 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(0 TO 3);

BEGIN 
SYNTHESIZED_WIRE_7 <= '1';

GDFX_TEMP_SIGNAL_3 <= (e(12) & e(13) & e(14) & e(15));
GDFX_TEMP_SIGNAL_2 <= (e(8) & e(9) & e(10) & e(11));
GDFX_TEMP_SIGNAL_1 <= (e(4) & e(5) & e(6) & e(7));
GDFX_TEMP_SIGNAL_0 <= (e(0) & e(1) & e(2) & e(3));


b2v_inst : arithmetic_circuit
PORT MAP(C_in => fs(0),
		 A => A,
		 B => B,
		 S => fs(2 DOWNTO 1),
		 C_out => C,
		 G => SYNTHESIZED_WIRE_0);


b2v_inst1 : practica2
PORT MAP(input_1 => input1,
		 dip_1 => GDFX_TEMP_SIGNAL_0,
		 dip_2 => GDFX_TEMP_SIGNAL_1,
		 dip_3 => GDFX_TEMP_SIGNAL_2,
		 dip_4 => GDFX_TEMP_SIGNAL_3);


b2v_inst2 : logiccircuit
PORT MAP(A => A,
		 B => B,
		 S => fs(1 DOWNTO 0),
		 G => SYNTHESIZED_WIRE_1);


b2v_inst4 : multiplexer_2_to_1
PORT MAP(S => fs(3),
		 I0 => SYNTHESIZED_WIRE_0,
		 I1 => SYNTHESIZED_WIRE_1,
		 Y => SYNTHESIZED_WIRE_3);


b2v_inst5 : shifter_circuit
PORT MAP(B => B,
		 S => fs(1 DOWNTO 0),
		 G => SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_2 <= fs(3) AND fs(2);


b2v_inst7 : multiplexer_2_to_1
PORT MAP(S => SYNTHESIZED_WIRE_2,
		 I0 => SYNTHESIZED_WIRE_3,
		 I1 => SYNTHESIZED_WIRE_4,
		 ZERO => Z,
		 Y => Y);


b2v_inst8 : binary_to_bcd
GENERIC MAP(bits => 16,
			digits => 4
			)
PORT MAP(clk => input1,
		 reset_n => SYNTHESIZED_WIRE_7,
		 ena => SYNTHESIZED_WIRE_7,
		 binary => Y,
		 bcd => e);


N <= Y(15);
D <= Y;

END bdf_type;