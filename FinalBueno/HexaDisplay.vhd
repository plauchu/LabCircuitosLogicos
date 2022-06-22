LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY HexaDisplay IS 
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
END HexaDisplay;

ARCHITECTURE bdf_type OF HexaDisplay IS 

COMPONENT multiplexer_4_to_1
	PORT(I0 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I1 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I2 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I3 : IN STD_LOGIC_VECTOR(0 TO 3);
		 S : IN STD_LOGIC_VECTOR(0 TO 1);
		 Y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT hex_7seg
	PORT(Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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


b2v_inst1 : hex_7seg
PORT MAP(Input => BCD,
		 output => salida);


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


b2v_inst6 : div_freq
GENERIC MAP(DIV => 5000000
			)
PORT MAP(clk => input_1,
		 reset => SYNTHESIZED_WIRE_6,
		 clk_out => SYNTHESIZED_WIRE_1);

sal <= salida;

END bdf_type;