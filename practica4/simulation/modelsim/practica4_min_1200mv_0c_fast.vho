-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/26/2021 13:25:03"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica4 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Cin : IN std_logic;
	DIP1 : IN std_logic_vector(3 DOWNTO 0);
	DIP2 : IN std_logic_vector(3 DOWNTO 0);
	DIP3 : IN std_logic_vector(3 DOWNTO 0);
	DIP4 : IN std_logic_vector(3 DOWNTO 0);
	Oper : IN std_logic_vector(1 DOWNTO 0);
	Cout : BUFFER std_logic;
	SSEG_CM : BUFFER std_logic_vector(3 DOWNTO 0);
	SSEG_CS : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- Cout	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CS[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Oper[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Oper[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_DIP1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Oper : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_SSEG_CM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSEG_CS : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \SSEG_CM[0]~output_o\ : std_logic;
SIGNAL \SSEG_CM[1]~output_o\ : std_logic;
SIGNAL \SSEG_CM[2]~output_o\ : std_logic;
SIGNAL \SSEG_CM[3]~output_o\ : std_logic;
SIGNAL \SSEG_CS[0]~output_o\ : std_logic;
SIGNAL \SSEG_CS[1]~output_o\ : std_logic;
SIGNAL \SSEG_CS[2]~output_o\ : std_logic;
SIGNAL \SSEG_CS[3]~output_o\ : std_logic;
SIGNAL \SSEG_CS[4]~output_o\ : std_logic;
SIGNAL \SSEG_CS[5]~output_o\ : std_logic;
SIGNAL \SSEG_CS[6]~output_o\ : std_logic;
SIGNAL \Oper[1]~input_o\ : std_logic;
SIGNAL \DIP1[3]~input_o\ : std_logic;
SIGNAL \Oper[0]~input_o\ : std_logic;
SIGNAL \DIP3[3]~input_o\ : std_logic;
SIGNAL \au|Mux8~0_combout\ : std_logic;
SIGNAL \DIP3[2]~input_o\ : std_logic;
SIGNAL \au|Mux9~0_combout\ : std_logic;
SIGNAL \DIP1[2]~input_o\ : std_logic;
SIGNAL \DIP1[1]~input_o\ : std_logic;
SIGNAL \DIP3[1]~input_o\ : std_logic;
SIGNAL \au|Mux10~0_combout\ : std_logic;
SIGNAL \DIP1[0]~input_o\ : std_logic;
SIGNAL \DIP3[0]~input_o\ : std_logic;
SIGNAL \au|Mux11~0_combout\ : std_logic;
SIGNAL \DIP4[3]~input_o\ : std_logic;
SIGNAL \au|Mux12~0_combout\ : std_logic;
SIGNAL \DIP2[3]~input_o\ : std_logic;
SIGNAL \DIP4[2]~input_o\ : std_logic;
SIGNAL \au|Mux13~0_combout\ : std_logic;
SIGNAL \DIP2[2]~input_o\ : std_logic;
SIGNAL \DIP4[1]~input_o\ : std_logic;
SIGNAL \au|Mux14~0_combout\ : std_logic;
SIGNAL \DIP2[1]~input_o\ : std_logic;
SIGNAL \DIP4[0]~input_o\ : std_logic;
SIGNAL \au|Mux15~0_combout\ : std_logic;
SIGNAL \DIP2[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \au|Add0~1_cout\ : std_logic;
SIGNAL \au|Add0~3\ : std_logic;
SIGNAL \au|Add0~5\ : std_logic;
SIGNAL \au|Add0~7\ : std_logic;
SIGNAL \au|Add0~9\ : std_logic;
SIGNAL \au|Add0~11\ : std_logic;
SIGNAL \au|Add0~13\ : std_logic;
SIGNAL \au|Add0~15\ : std_logic;
SIGNAL \au|Add0~17\ : std_logic;
SIGNAL \au|Add0~19\ : std_logic;
SIGNAL \au|Add0~20_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen|contador[0]~10_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \gen|contador[0]~11\ : std_logic;
SIGNAL \gen|contador[1]~12_combout\ : std_logic;
SIGNAL \gen|contador[1]~13\ : std_logic;
SIGNAL \gen|contador[2]~14_combout\ : std_logic;
SIGNAL \gen|contador[2]~15\ : std_logic;
SIGNAL \gen|contador[3]~16_combout\ : std_logic;
SIGNAL \gen|contador[3]~17\ : std_logic;
SIGNAL \gen|contador[4]~18_combout\ : std_logic;
SIGNAL \gen|contador[4]~19\ : std_logic;
SIGNAL \gen|contador[5]~20_combout\ : std_logic;
SIGNAL \gen|contador[5]~21\ : std_logic;
SIGNAL \gen|contador[6]~22_combout\ : std_logic;
SIGNAL \gen|contador[6]~23\ : std_logic;
SIGNAL \gen|contador[7]~24_combout\ : std_logic;
SIGNAL \gen|contador[7]~25\ : std_logic;
SIGNAL \gen|contador[8]~26_combout\ : std_logic;
SIGNAL \gen|contador[8]~27\ : std_logic;
SIGNAL \gen|contador[9]~28_combout\ : std_logic;
SIGNAL \dec|S[1]~0_combout\ : std_logic;
SIGNAL \dec|S[1]~1_combout\ : std_logic;
SIGNAL \dec|S[1]~2_combout\ : std_logic;
SIGNAL \au|Add0~4_combout\ : std_logic;
SIGNAL \au|Add0~12_combout\ : std_logic;
SIGNAL \mux|Mux2~0_combout\ : std_logic;
SIGNAL \mux|Mux2~1_combout\ : std_logic;
SIGNAL \au|Add0~14_combout\ : std_logic;
SIGNAL \au|Add0~6_combout\ : std_logic;
SIGNAL \mux|Mux1~0_combout\ : std_logic;
SIGNAL \mux|Mux1~1_combout\ : std_logic;
SIGNAL \au|Add0~2_combout\ : std_logic;
SIGNAL \au|Add0~18_combout\ : std_logic;
SIGNAL \au|Add0~10_combout\ : std_logic;
SIGNAL \mux|Mux3~0_combout\ : std_logic;
SIGNAL \mux|Mux3~1_combout\ : std_logic;
SIGNAL \au|Add0~8_combout\ : std_logic;
SIGNAL \au|Add0~16_combout\ : std_logic;
SIGNAL \mux|Mux0~0_combout\ : std_logic;
SIGNAL \mux|Mux0~1_combout\ : std_logic;
SIGNAL \conv|sal[0]~0_combout\ : std_logic;
SIGNAL \conv|sal[1]~1_combout\ : std_logic;
SIGNAL \conv|sal[2]~2_combout\ : std_logic;
SIGNAL \conv|sal[3]~3_combout\ : std_logic;
SIGNAL \conv|sal[4]~4_combout\ : std_logic;
SIGNAL \mux|Mux1~2_combout\ : std_logic;
SIGNAL \conv|sal[5]~5_combout\ : std_logic;
SIGNAL \conv|sal[5]~6_combout\ : std_logic;
SIGNAL \conv|sal[5]~7_combout\ : std_logic;
SIGNAL \conv|sal[5]~8_combout\ : std_logic;
SIGNAL \conv|sal[5]~9_combout\ : std_logic;
SIGNAL \conv|sal[6]~10_combout\ : std_logic;
SIGNAL \gen|contador\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dec|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \dec|ALT_INV_S\ : std_logic_vector(3 DOWNTO 3);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Cin <= Cin;
ww_DIP1 <= DIP1;
ww_DIP2 <= DIP2;
ww_DIP3 <= DIP3;
ww_DIP4 <= DIP4;
ww_Oper <= Oper;
Cout <= ww_Cout;
SSEG_CM <= ww_SSEG_CM;
SSEG_CS <= ww_SSEG_CS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\dec|ALT_INV_S\(3) <= NOT \dec|S\(3);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y34_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \au|Add0~20_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\SSEG_CM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_CM[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\SSEG_CM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \SSEG_CM[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\SSEG_CM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|S[1]~2_combout\,
	devoe => ww_devoe,
	o => \SSEG_CM[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\SSEG_CM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_S\(3),
	devoe => ww_devoe,
	o => \SSEG_CM[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\SSEG_CS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[0]~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\SSEG_CS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[1]~1_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\SSEG_CS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[2]~2_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\SSEG_CS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\SSEG_CS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[4]~4_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\SSEG_CS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[5]~9_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\SSEG_CS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|sal[6]~10_combout\,
	devoe => ww_devoe,
	o => \SSEG_CS[6]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\Oper[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Oper(1),
	o => \Oper[1]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\DIP1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(3),
	o => \DIP1[3]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\Oper[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Oper(0),
	o => \Oper[0]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\DIP3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP3(3),
	o => \DIP3[3]~input_o\);

-- Location: LCCOMB_X39_Y4_N8
\au|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux8~0_combout\ = (\DIP3[3]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP3[3]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP3[3]~input_o\,
	combout => \au|Mux8~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\DIP3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP3(2),
	o => \DIP3[2]~input_o\);

-- Location: LCCOMB_X39_Y4_N18
\au|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux9~0_combout\ = (\DIP3[2]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP3[2]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP3[2]~input_o\,
	combout => \au|Mux9~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\DIP1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(2),
	o => \DIP1[2]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\DIP1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(1),
	o => \DIP1[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\DIP3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP3(1),
	o => \DIP3[1]~input_o\);

-- Location: LCCOMB_X39_Y4_N4
\au|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux10~0_combout\ = (\DIP3[1]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP3[1]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP3[1]~input_o\,
	combout => \au|Mux10~0_combout\);

-- Location: IOIBUF_X53_Y6_N15
\DIP1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(0),
	o => \DIP1[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\DIP3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP3(0),
	o => \DIP3[0]~input_o\);

-- Location: LCCOMB_X39_Y4_N10
\au|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux11~0_combout\ = (\DIP3[0]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP3[0]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP3[0]~input_o\,
	combout => \au|Mux11~0_combout\);

-- Location: IOIBUF_X34_Y0_N22
\DIP4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP4(3),
	o => \DIP4[3]~input_o\);

-- Location: LCCOMB_X39_Y4_N12
\au|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux12~0_combout\ = (\DIP4[3]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP4[3]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP4[3]~input_o\,
	combout => \au|Mux12~0_combout\);

-- Location: IOIBUF_X53_Y11_N1
\DIP2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(3),
	o => \DIP2[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\DIP4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP4(2),
	o => \DIP4[2]~input_o\);

-- Location: LCCOMB_X39_Y4_N6
\au|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux13~0_combout\ = (\DIP4[2]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP4[2]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP4[2]~input_o\,
	combout => \au|Mux13~0_combout\);

-- Location: IOIBUF_X53_Y8_N22
\DIP2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(2),
	o => \DIP2[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DIP4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP4(1),
	o => \DIP4[1]~input_o\);

-- Location: LCCOMB_X39_Y4_N28
\au|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux14~0_combout\ = (\DIP4[1]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP4[1]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP4[1]~input_o\,
	combout => \au|Mux14~0_combout\);

-- Location: IOIBUF_X53_Y12_N1
\DIP2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(1),
	o => \DIP2[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\DIP4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP4(0),
	o => \DIP4[0]~input_o\);

-- Location: LCCOMB_X39_Y4_N22
\au|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Mux15~0_combout\ = (\DIP4[0]~input_o\ & (\Oper[0]~input_o\)) # (!\DIP4[0]~input_o\ & ((\Oper[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Oper[0]~input_o\,
	datac => \Oper[1]~input_o\,
	datad => \DIP4[0]~input_o\,
	combout => \au|Mux15~0_combout\);

-- Location: IOIBUF_X53_Y11_N8
\DIP2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(0),
	o => \DIP2[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X45_Y8_N0
\au|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~1_cout\ = CARRY(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datad => VCC,
	cout => \au|Add0~1_cout\);

-- Location: LCCOMB_X45_Y8_N2
\au|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~2_combout\ = (\au|Mux15~0_combout\ & ((\DIP2[0]~input_o\ & (\au|Add0~1_cout\ & VCC)) # (!\DIP2[0]~input_o\ & (!\au|Add0~1_cout\)))) # (!\au|Mux15~0_combout\ & ((\DIP2[0]~input_o\ & (!\au|Add0~1_cout\)) # (!\DIP2[0]~input_o\ & ((\au|Add0~1_cout\) 
-- # (GND)))))
-- \au|Add0~3\ = CARRY((\au|Mux15~0_combout\ & (!\DIP2[0]~input_o\ & !\au|Add0~1_cout\)) # (!\au|Mux15~0_combout\ & ((!\au|Add0~1_cout\) # (!\DIP2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \au|Mux15~0_combout\,
	datab => \DIP2[0]~input_o\,
	datad => VCC,
	cin => \au|Add0~1_cout\,
	combout => \au|Add0~2_combout\,
	cout => \au|Add0~3\);

-- Location: LCCOMB_X45_Y8_N4
\au|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~4_combout\ = ((\au|Mux14~0_combout\ $ (\DIP2[1]~input_o\ $ (!\au|Add0~3\)))) # (GND)
-- \au|Add0~5\ = CARRY((\au|Mux14~0_combout\ & ((\DIP2[1]~input_o\) # (!\au|Add0~3\))) # (!\au|Mux14~0_combout\ & (\DIP2[1]~input_o\ & !\au|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \au|Mux14~0_combout\,
	datab => \DIP2[1]~input_o\,
	datad => VCC,
	cin => \au|Add0~3\,
	combout => \au|Add0~4_combout\,
	cout => \au|Add0~5\);

-- Location: LCCOMB_X45_Y8_N6
\au|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~6_combout\ = (\au|Mux13~0_combout\ & ((\DIP2[2]~input_o\ & (\au|Add0~5\ & VCC)) # (!\DIP2[2]~input_o\ & (!\au|Add0~5\)))) # (!\au|Mux13~0_combout\ & ((\DIP2[2]~input_o\ & (!\au|Add0~5\)) # (!\DIP2[2]~input_o\ & ((\au|Add0~5\) # (GND)))))
-- \au|Add0~7\ = CARRY((\au|Mux13~0_combout\ & (!\DIP2[2]~input_o\ & !\au|Add0~5\)) # (!\au|Mux13~0_combout\ & ((!\au|Add0~5\) # (!\DIP2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \au|Mux13~0_combout\,
	datab => \DIP2[2]~input_o\,
	datad => VCC,
	cin => \au|Add0~5\,
	combout => \au|Add0~6_combout\,
	cout => \au|Add0~7\);

-- Location: LCCOMB_X45_Y8_N8
\au|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~8_combout\ = ((\au|Mux12~0_combout\ $ (\DIP2[3]~input_o\ $ (!\au|Add0~7\)))) # (GND)
-- \au|Add0~9\ = CARRY((\au|Mux12~0_combout\ & ((\DIP2[3]~input_o\) # (!\au|Add0~7\))) # (!\au|Mux12~0_combout\ & (\DIP2[3]~input_o\ & !\au|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \au|Mux12~0_combout\,
	datab => \DIP2[3]~input_o\,
	datad => VCC,
	cin => \au|Add0~7\,
	combout => \au|Add0~8_combout\,
	cout => \au|Add0~9\);

-- Location: LCCOMB_X45_Y8_N10
\au|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~10_combout\ = (\DIP1[0]~input_o\ & ((\au|Mux11~0_combout\ & (\au|Add0~9\ & VCC)) # (!\au|Mux11~0_combout\ & (!\au|Add0~9\)))) # (!\DIP1[0]~input_o\ & ((\au|Mux11~0_combout\ & (!\au|Add0~9\)) # (!\au|Mux11~0_combout\ & ((\au|Add0~9\) # (GND)))))
-- \au|Add0~11\ = CARRY((\DIP1[0]~input_o\ & (!\au|Mux11~0_combout\ & !\au|Add0~9\)) # (!\DIP1[0]~input_o\ & ((!\au|Add0~9\) # (!\au|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[0]~input_o\,
	datab => \au|Mux11~0_combout\,
	datad => VCC,
	cin => \au|Add0~9\,
	combout => \au|Add0~10_combout\,
	cout => \au|Add0~11\);

-- Location: LCCOMB_X45_Y8_N12
\au|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~12_combout\ = ((\DIP1[1]~input_o\ $ (\au|Mux10~0_combout\ $ (!\au|Add0~11\)))) # (GND)
-- \au|Add0~13\ = CARRY((\DIP1[1]~input_o\ & ((\au|Mux10~0_combout\) # (!\au|Add0~11\))) # (!\DIP1[1]~input_o\ & (\au|Mux10~0_combout\ & !\au|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[1]~input_o\,
	datab => \au|Mux10~0_combout\,
	datad => VCC,
	cin => \au|Add0~11\,
	combout => \au|Add0~12_combout\,
	cout => \au|Add0~13\);

-- Location: LCCOMB_X45_Y8_N14
\au|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~14_combout\ = (\au|Mux9~0_combout\ & ((\DIP1[2]~input_o\ & (\au|Add0~13\ & VCC)) # (!\DIP1[2]~input_o\ & (!\au|Add0~13\)))) # (!\au|Mux9~0_combout\ & ((\DIP1[2]~input_o\ & (!\au|Add0~13\)) # (!\DIP1[2]~input_o\ & ((\au|Add0~13\) # (GND)))))
-- \au|Add0~15\ = CARRY((\au|Mux9~0_combout\ & (!\DIP1[2]~input_o\ & !\au|Add0~13\)) # (!\au|Mux9~0_combout\ & ((!\au|Add0~13\) # (!\DIP1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \au|Mux9~0_combout\,
	datab => \DIP1[2]~input_o\,
	datad => VCC,
	cin => \au|Add0~13\,
	combout => \au|Add0~14_combout\,
	cout => \au|Add0~15\);

-- Location: LCCOMB_X45_Y8_N16
\au|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~16_combout\ = ((\DIP1[3]~input_o\ $ (\au|Mux8~0_combout\ $ (!\au|Add0~15\)))) # (GND)
-- \au|Add0~17\ = CARRY((\DIP1[3]~input_o\ & ((\au|Mux8~0_combout\) # (!\au|Add0~15\))) # (!\DIP1[3]~input_o\ & (\au|Mux8~0_combout\ & !\au|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[3]~input_o\,
	datab => \au|Mux8~0_combout\,
	datad => VCC,
	cin => \au|Add0~15\,
	combout => \au|Add0~16_combout\,
	cout => \au|Add0~17\);

-- Location: LCCOMB_X45_Y8_N18
\au|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~18_combout\ = (\Oper[1]~input_o\ & (!\au|Add0~17\)) # (!\Oper[1]~input_o\ & ((\au|Add0~17\) # (GND)))
-- \au|Add0~19\ = CARRY((!\au|Add0~17\) # (!\Oper[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Oper[1]~input_o\,
	datad => VCC,
	cin => \au|Add0~17\,
	combout => \au|Add0~18_combout\,
	cout => \au|Add0~19\);

-- Location: LCCOMB_X45_Y8_N20
\au|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \au|Add0~20_combout\ = \Oper[1]~input_o\ $ (!\au|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Oper[1]~input_o\,
	cin => \au|Add0~19\,
	combout => \au|Add0~20_combout\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y12_N4
\gen|contador[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[0]~10_combout\ = \gen|contador\(0) $ (VCC)
-- \gen|contador[0]~11\ = CARRY(\gen|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(0),
	datad => VCC,
	combout => \gen|contador[0]~10_combout\,
	cout => \gen|contador[0]~11\);

-- Location: IOIBUF_X0_Y16_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X44_Y12_N5
\gen|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[0]~10_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(0));

-- Location: LCCOMB_X44_Y12_N6
\gen|contador[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[1]~12_combout\ = (\gen|contador\(1) & (!\gen|contador[0]~11\)) # (!\gen|contador\(1) & ((\gen|contador[0]~11\) # (GND)))
-- \gen|contador[1]~13\ = CARRY((!\gen|contador[0]~11\) # (!\gen|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|contador\(1),
	datad => VCC,
	cin => \gen|contador[0]~11\,
	combout => \gen|contador[1]~12_combout\,
	cout => \gen|contador[1]~13\);

-- Location: FF_X44_Y12_N7
\gen|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[1]~12_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(1));

-- Location: LCCOMB_X44_Y12_N8
\gen|contador[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[2]~14_combout\ = (\gen|contador\(2) & (\gen|contador[1]~13\ $ (GND))) # (!\gen|contador\(2) & (!\gen|contador[1]~13\ & VCC))
-- \gen|contador[2]~15\ = CARRY((\gen|contador\(2) & !\gen|contador[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(2),
	datad => VCC,
	cin => \gen|contador[1]~13\,
	combout => \gen|contador[2]~14_combout\,
	cout => \gen|contador[2]~15\);

-- Location: FF_X44_Y12_N9
\gen|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[2]~14_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(2));

-- Location: LCCOMB_X44_Y12_N10
\gen|contador[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[3]~16_combout\ = (\gen|contador\(3) & (!\gen|contador[2]~15\)) # (!\gen|contador\(3) & ((\gen|contador[2]~15\) # (GND)))
-- \gen|contador[3]~17\ = CARRY((!\gen|contador[2]~15\) # (!\gen|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|contador\(3),
	datad => VCC,
	cin => \gen|contador[2]~15\,
	combout => \gen|contador[3]~16_combout\,
	cout => \gen|contador[3]~17\);

-- Location: FF_X44_Y12_N11
\gen|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[3]~16_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(3));

-- Location: LCCOMB_X44_Y12_N12
\gen|contador[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[4]~18_combout\ = (\gen|contador\(4) & (\gen|contador[3]~17\ $ (GND))) # (!\gen|contador\(4) & (!\gen|contador[3]~17\ & VCC))
-- \gen|contador[4]~19\ = CARRY((\gen|contador\(4) & !\gen|contador[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|contador\(4),
	datad => VCC,
	cin => \gen|contador[3]~17\,
	combout => \gen|contador[4]~18_combout\,
	cout => \gen|contador[4]~19\);

-- Location: FF_X44_Y12_N13
\gen|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[4]~18_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(4));

-- Location: LCCOMB_X44_Y12_N14
\gen|contador[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[5]~20_combout\ = (\gen|contador\(5) & (!\gen|contador[4]~19\)) # (!\gen|contador\(5) & ((\gen|contador[4]~19\) # (GND)))
-- \gen|contador[5]~21\ = CARRY((!\gen|contador[4]~19\) # (!\gen|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(5),
	datad => VCC,
	cin => \gen|contador[4]~19\,
	combout => \gen|contador[5]~20_combout\,
	cout => \gen|contador[5]~21\);

-- Location: FF_X44_Y12_N15
\gen|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[5]~20_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(5));

-- Location: LCCOMB_X44_Y12_N16
\gen|contador[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[6]~22_combout\ = (\gen|contador\(6) & (\gen|contador[5]~21\ $ (GND))) # (!\gen|contador\(6) & (!\gen|contador[5]~21\ & VCC))
-- \gen|contador[6]~23\ = CARRY((\gen|contador\(6) & !\gen|contador[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(6),
	datad => VCC,
	cin => \gen|contador[5]~21\,
	combout => \gen|contador[6]~22_combout\,
	cout => \gen|contador[6]~23\);

-- Location: FF_X44_Y12_N17
\gen|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[6]~22_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(6));

-- Location: LCCOMB_X44_Y12_N18
\gen|contador[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[7]~24_combout\ = (\gen|contador\(7) & (!\gen|contador[6]~23\)) # (!\gen|contador\(7) & ((\gen|contador[6]~23\) # (GND)))
-- \gen|contador[7]~25\ = CARRY((!\gen|contador[6]~23\) # (!\gen|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(7),
	datad => VCC,
	cin => \gen|contador[6]~23\,
	combout => \gen|contador[7]~24_combout\,
	cout => \gen|contador[7]~25\);

-- Location: FF_X44_Y12_N19
\gen|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[7]~24_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(7));

-- Location: LCCOMB_X44_Y12_N20
\gen|contador[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[8]~26_combout\ = (\gen|contador\(8) & (\gen|contador[7]~25\ $ (GND))) # (!\gen|contador\(8) & (!\gen|contador[7]~25\ & VCC))
-- \gen|contador[8]~27\ = CARRY((\gen|contador\(8) & !\gen|contador[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(8),
	datad => VCC,
	cin => \gen|contador[7]~25\,
	combout => \gen|contador[8]~26_combout\,
	cout => \gen|contador[8]~27\);

-- Location: FF_X44_Y12_N21
\gen|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[8]~26_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(8));

-- Location: LCCOMB_X44_Y12_N22
\gen|contador[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|contador[9]~28_combout\ = \gen|contador\(9) $ (\gen|contador[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|contador\(9),
	cin => \gen|contador[8]~27\,
	combout => \gen|contador[9]~28_combout\);

-- Location: FF_X44_Y12_N23
\gen|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|contador[9]~28_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|contador\(9));

-- Location: LCCOMB_X44_Y8_N28
\dec|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|S[1]~0_combout\ = (\gen|contador\(8) & \gen|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(8),
	datac => \gen|contador\(9),
	combout => \dec|S[1]~0_combout\);

-- Location: LCCOMB_X44_Y8_N14
\dec|S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|S[1]~1_combout\ = (!\gen|contador\(8) & \gen|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(8),
	datac => \gen|contador\(9),
	combout => \dec|S[1]~1_combout\);

-- Location: LCCOMB_X44_Y8_N4
\dec|S[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|S[1]~2_combout\ = (\gen|contador\(8) & !\gen|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(8),
	datac => \gen|contador\(9),
	combout => \dec|S[1]~2_combout\);

-- Location: LCCOMB_X44_Y8_N2
\dec|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|S\(3) = (\gen|contador\(8)) # (\gen|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(8),
	datac => \gen|contador\(9),
	combout => \dec|S\(3));

-- Location: LCCOMB_X45_Y8_N30
\mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~0_combout\ = (\dec|S[1]~1_combout\ & ((\au|Add0~12_combout\) # ((\dec|S[1]~0_combout\ & \au|Add0~4_combout\)))) # (!\dec|S[1]~1_combout\ & (\dec|S[1]~0_combout\ & (\au|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|S[1]~1_combout\,
	datab => \dec|S[1]~0_combout\,
	datac => \au|Add0~4_combout\,
	datad => \au|Add0~12_combout\,
	combout => \mux|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y12_N12
\mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~1_combout\ = (\mux|Mux2~0_combout\) # ((!\gen|contador\(9) & \au|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(9),
	datac => \mux|Mux2~0_combout\,
	datad => \au|Add0~20_combout\,
	combout => \mux|Mux2~1_combout\);

-- Location: LCCOMB_X45_Y8_N22
\mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~0_combout\ = (\dec|S[1]~1_combout\ & ((\au|Add0~14_combout\) # ((\dec|S[1]~0_combout\ & \au|Add0~6_combout\)))) # (!\dec|S[1]~1_combout\ & (\dec|S[1]~0_combout\ & ((\au|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|S[1]~1_combout\,
	datab => \dec|S[1]~0_combout\,
	datac => \au|Add0~14_combout\,
	datad => \au|Add0~6_combout\,
	combout => \mux|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y12_N4
\mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~1_combout\ = (\mux|Mux1~0_combout\) # ((\au|Add0~20_combout\ & !\gen|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \au|Add0~20_combout\,
	datab => \mux|Mux1~0_combout\,
	datad => \gen|contador\(9),
	combout => \mux|Mux1~1_combout\);

-- Location: LCCOMB_X45_Y12_N20
\mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~0_combout\ = (\gen|contador\(9) & (((\au|Add0~10_combout\) # (\gen|contador\(8))))) # (!\gen|contador\(9) & (\au|Add0~20_combout\ & ((!\gen|contador\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \au|Add0~20_combout\,
	datab => \gen|contador\(9),
	datac => \au|Add0~10_combout\,
	datad => \gen|contador\(8),
	combout => \mux|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y12_N26
\mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~1_combout\ = (\gen|contador\(8) & ((\mux|Mux3~0_combout\ & (\au|Add0~2_combout\)) # (!\mux|Mux3~0_combout\ & ((\au|Add0~18_combout\))))) # (!\gen|contador\(8) & (((\mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \au|Add0~2_combout\,
	datab => \gen|contador\(8),
	datac => \au|Add0~18_combout\,
	datad => \mux|Mux3~0_combout\,
	combout => \mux|Mux3~1_combout\);

-- Location: LCCOMB_X45_Y8_N28
\mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~0_combout\ = (\dec|S[1]~1_combout\ & ((\au|Add0~16_combout\) # ((\dec|S[1]~0_combout\ & \au|Add0~8_combout\)))) # (!\dec|S[1]~1_combout\ & (\dec|S[1]~0_combout\ & (\au|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|S[1]~1_combout\,
	datab => \dec|S[1]~0_combout\,
	datac => \au|Add0~8_combout\,
	datad => \au|Add0~16_combout\,
	combout => \mux|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y12_N10
\mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~1_combout\ = (\mux|Mux0~0_combout\) # ((!\gen|contador\(9) & \au|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(9),
	datac => \mux|Mux0~0_combout\,
	datad => \au|Add0~20_combout\,
	combout => \mux|Mux0~1_combout\);

-- Location: LCCOMB_X45_Y12_N14
\conv|sal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[0]~0_combout\ = (\mux|Mux0~1_combout\ & ((\mux|Mux3~1_combout\) # (\mux|Mux2~1_combout\ $ (\mux|Mux1~1_combout\)))) # (!\mux|Mux0~1_combout\ & ((\mux|Mux1~1_combout\) # (\mux|Mux2~1_combout\ $ (\mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux2~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux3~1_combout\,
	datad => \mux|Mux0~1_combout\,
	combout => \conv|sal[0]~0_combout\);

-- Location: LCCOMB_X44_Y12_N0
\conv|sal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[1]~1_combout\ = (\mux|Mux1~1_combout\ & ((\mux|Mux3~1_combout\) # ((!\mux|Mux0~1_combout\ & \mux|Mux2~1_combout\)))) # (!\mux|Mux1~1_combout\ & ((\mux|Mux2~1_combout\ $ (\mux|Mux3~1_combout\)) # (!\mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux0~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \conv|sal[1]~1_combout\);

-- Location: LCCOMB_X44_Y12_N26
\conv|sal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[2]~2_combout\ = (\mux|Mux1~1_combout\ & (((\mux|Mux3~1_combout\)) # (!\mux|Mux0~1_combout\))) # (!\mux|Mux1~1_combout\ & ((\mux|Mux2~1_combout\ & ((\mux|Mux3~1_combout\))) # (!\mux|Mux2~1_combout\ & (!\mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux0~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \conv|sal[2]~2_combout\);

-- Location: LCCOMB_X45_Y12_N24
\conv|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[3]~3_combout\ = (\mux|Mux0~1_combout\ & (\mux|Mux2~1_combout\ $ ((\mux|Mux1~1_combout\)))) # (!\mux|Mux0~1_combout\ & ((\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\) # (\mux|Mux3~1_combout\))) # (!\mux|Mux2~1_combout\ & ((!\mux|Mux3~1_combout\) 
-- # (!\mux|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux2~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux3~1_combout\,
	datad => \mux|Mux0~1_combout\,
	combout => \conv|sal[3]~3_combout\);

-- Location: LCCOMB_X44_Y12_N24
\conv|sal[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[4]~4_combout\ = (\mux|Mux2~1_combout\ & (((!\mux|Mux1~1_combout\ & \mux|Mux0~1_combout\)) # (!\mux|Mux3~1_combout\))) # (!\mux|Mux2~1_combout\ & (((\mux|Mux0~1_combout\) # (\mux|Mux3~1_combout\)) # (!\mux|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux0~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \conv|sal[4]~4_combout\);

-- Location: LCCOMB_X45_Y12_N2
\mux|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~2_combout\ = (!\gen|contador\(9) & \au|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|contador\(9),
	datad => \au|Add0~20_combout\,
	combout => \mux|Mux1~2_combout\);

-- Location: LCCOMB_X45_Y12_N28
\conv|sal[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[5]~5_combout\ = ((\mux|Mux1~2_combout\) # (\mux|Mux0~0_combout\ $ (!\mux|Mux1~0_combout\))) # (!\mux|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux2~0_combout\,
	datab => \mux|Mux1~2_combout\,
	datac => \mux|Mux0~0_combout\,
	datad => \mux|Mux1~0_combout\,
	combout => \conv|sal[5]~5_combout\);

-- Location: LCCOMB_X45_Y8_N24
\conv|sal[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[5]~6_combout\ = (\gen|contador\(8) & (((\mux|Mux0~0_combout\)))) # (!\gen|contador\(8) & ((\mux|Mux0~0_combout\ & ((\au|Add0~14_combout\))) # (!\mux|Mux0~0_combout\ & (\au|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \au|Add0~12_combout\,
	datab => \gen|contador\(8),
	datac => \au|Add0~14_combout\,
	datad => \mux|Mux0~0_combout\,
	combout => \conv|sal[5]~6_combout\);

-- Location: LCCOMB_X45_Y8_N26
\conv|sal[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[5]~7_combout\ = (\conv|sal[5]~6_combout\ & (\au|Add0~6_combout\)) # (!\conv|sal[5]~6_combout\ & ((\au|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \au|Add0~6_combout\,
	datac => \au|Add0~4_combout\,
	datad => \conv|sal[5]~6_combout\,
	combout => \conv|sal[5]~7_combout\);

-- Location: LCCOMB_X44_Y8_N20
\conv|sal[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[5]~8_combout\ = ((\gen|contador\(8) & ((!\conv|sal[5]~7_combout\))) # (!\gen|contador\(8) & (!\conv|sal[5]~6_combout\))) # (!\gen|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|sal[5]~6_combout\,
	datab => \gen|contador\(8),
	datac => \gen|contador\(9),
	datad => \conv|sal[5]~7_combout\,
	combout => \conv|sal[5]~8_combout\);

-- Location: LCCOMB_X44_Y12_N2
\conv|sal[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[5]~9_combout\ = (\mux|Mux3~1_combout\ & (!\mux|Mux1~2_combout\ & ((\conv|sal[5]~8_combout\)))) # (!\mux|Mux3~1_combout\ & (((\conv|sal[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~2_combout\,
	datab => \conv|sal[5]~5_combout\,
	datac => \conv|sal[5]~8_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \conv|sal[5]~9_combout\);

-- Location: LCCOMB_X45_Y12_N18
\conv|sal[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|sal[6]~10_combout\ = (\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\) # (\mux|Mux3~1_combout\ $ (\mux|Mux0~1_combout\)))) # (!\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\ $ (\mux|Mux3~1_combout\)) # (!\mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux2~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux3~1_combout\,
	datad => \mux|Mux0~1_combout\,
	combout => \conv|sal[6]~10_combout\);

ww_Cout <= \Cout~output_o\;

ww_SSEG_CM(0) <= \SSEG_CM[0]~output_o\;

ww_SSEG_CM(1) <= \SSEG_CM[1]~output_o\;

ww_SSEG_CM(2) <= \SSEG_CM[2]~output_o\;

ww_SSEG_CM(3) <= \SSEG_CM[3]~output_o\;

ww_SSEG_CS(0) <= \SSEG_CS[0]~output_o\;

ww_SSEG_CS(1) <= \SSEG_CS[1]~output_o\;

ww_SSEG_CS(2) <= \SSEG_CS[2]~output_o\;

ww_SSEG_CS(3) <= \SSEG_CS[3]~output_o\;

ww_SSEG_CS(4) <= \SSEG_CS[4]~output_o\;

ww_SSEG_CS(5) <= \SSEG_CS[5]~output_o\;

ww_SSEG_CS(6) <= \SSEG_CS[6]~output_o\;
END structure;


