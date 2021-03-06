LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Practica2 IS 
	PORT
	(
		input_1 :  IN  STD_LOGIC;
		dip_1 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_2 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_3 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_4 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		output_1 :  OUT  STD_LOGIC;
		output_2 :  OUT  STD_LOGIC;
		output_3 :  OUT  STD_LOGIC;
		output_4 :  OUT  STD_LOGIC;
		sal :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END Practica2;

ARCHITECTURE bdf_type OF Practica2 IS 

COMPONENT multiplexer_4_to_1
	PORT(I0 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I1 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I2 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I3 : IN STD_LOGIC_VECTOR(0 TO 3);
		 S : IN STD_LOGIC_VECTOR(0 TO 1);
		 Y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT cont2
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 D : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;

COMPONENT decoder_2_to_4
	PORT(S : IN STD_LOGIC_VECTOR(0 TO 1);
		 D0 : OUT STD_LOGIC;
		 D1 : OUT STD_LOGIC;
		 D2 : OUT STD_LOGIC;
		 D3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT tutorial_altera
	PORT(A_in : IN STD_LOGIC;
		 B_in : IN STD_LOGIC;
		 C_in : IN STD_LOGIC;
		 D_in : IN STD_LOGIC;
		 pin_name1 : OUT STD_LOGIC;
		 pin_name2 : OUT STD_LOGIC;
		 pin_name3 : OUT STD_LOGIC;
		 pin_name9 : OUT STD_LOGIC;
		 pin_name0 : OUT STD_LOGIC;
		 pin_name234234 : OUT STD_LOGIC;
		 fin : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT div_freq
GENERIC (DIV : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	BCD :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	salida :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(0 TO 1);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_6 <= '0';



b2v_inst : multiplexer_4_to_1
PORT MAP(I0 => dip_1,
		 I1 => dip_2,
		 I2 => dip_4,
		 I3 => dip_3,
		 S => SYNTHESIZED_WIRE_5,
		 Y => BCD);


b2v_inst2 : cont2
PORT MAP(Clock => SYNTHESIZED_WIRE_1,
		 Reset => SYNTHESIZED_WIRE_6,
		 D => SYNTHESIZED_WIRE_5);



b2v_inst4 : decoder_2_to_4
PORT MAP(S => SYNTHESIZED_WIRE_5,
		 D0 => output_1,
		 D1 => output_2,
		 D2 => output_3,
		 D3 => output_4);


b2v_inst5 : tutorial_altera
PORT MAP(A_in => BCD(0),
		 B_in => BCD(1),
		 C_in => BCD(2),
		 D_in => BCD(3),
		 pin_name1 => salida(6),
		 pin_name2 => salida(5),
		 pin_name3 => salida(4),
		 pin_name9 => salida(3),
		 pin_name0 => salida(2),
		 pin_name234234 => salida(1),
		 fin => salida(0));


b2v_inst6 : div_freq
GENERIC MAP(DIV => 5000000
			)
PORT MAP(clk => input_1,
		 reset => SYNTHESIZED_WIRE_6,
		 clk_out => SYNTHESIZED_WIRE_1);

sal <= salida;

END bdf_type;