-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/04/2021 13:33:46"

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

ENTITY 	practica5 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	FS : IN std_logic_vector(3 DOWNTO 0);
	DIP1 : IN std_logic_vector(7 DOWNTO 0);
	DIP2 : IN std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic;
	N : OUT std_logic;
	Z : OUT std_logic;
	SSEG_CM : OUT std_logic_vector(3 DOWNTO 0);
	SSEG_SC : OUT std_logic_vector(6 DOWNTO 0)
	);
END practica5;

-- Design Ports Information
-- C	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_CM[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEG_SC[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5 IS
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
SIGNAL ww_FS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIP2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_SSEG_CM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSEG_SC : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \SSEG_CM[0]~output_o\ : std_logic;
SIGNAL \SSEG_CM[1]~output_o\ : std_logic;
SIGNAL \SSEG_CM[2]~output_o\ : std_logic;
SIGNAL \SSEG_CM[3]~output_o\ : std_logic;
SIGNAL \SSEG_SC[0]~output_o\ : std_logic;
SIGNAL \SSEG_SC[1]~output_o\ : std_logic;
SIGNAL \SSEG_SC[2]~output_o\ : std_logic;
SIGNAL \SSEG_SC[3]~output_o\ : std_logic;
SIGNAL \SSEG_SC[4]~output_o\ : std_logic;
SIGNAL \SSEG_SC[5]~output_o\ : std_logic;
SIGNAL \SSEG_SC[6]~output_o\ : std_logic;
SIGNAL \FS[1]~input_o\ : std_logic;
SIGNAL \FS[2]~input_o\ : std_logic;
SIGNAL \DIP2[7]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux9~0_combout\ : std_logic;
SIGNAL \DIP1[7]~input_o\ : std_logic;
SIGNAL \DIP1[6]~input_o\ : std_logic;
SIGNAL \DIP2[6]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux10~0_combout\ : std_logic;
SIGNAL \DIP2[5]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux11~0_combout\ : std_logic;
SIGNAL \DIP1[5]~input_o\ : std_logic;
SIGNAL \DIP1[4]~input_o\ : std_logic;
SIGNAL \DIP2[4]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux12~0_combout\ : std_logic;
SIGNAL \DIP1[3]~input_o\ : std_logic;
SIGNAL \DIP2[3]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux13~0_combout\ : std_logic;
SIGNAL \DIP2[2]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux14~0_combout\ : std_logic;
SIGNAL \DIP1[2]~input_o\ : std_logic;
SIGNAL \DIP1[1]~input_o\ : std_logic;
SIGNAL \DIP2[1]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux15~0_combout\ : std_logic;
SIGNAL \DIP2[0]~input_o\ : std_logic;
SIGNAL \alu|ca|Mux16~0_combout\ : std_logic;
SIGNAL \DIP1[0]~input_o\ : std_logic;
SIGNAL \FS[0]~input_o\ : std_logic;
SIGNAL \alu|ca|Add0~1_cout\ : std_logic;
SIGNAL \alu|ca|Add0~3\ : std_logic;
SIGNAL \alu|ca|Add0~5\ : std_logic;
SIGNAL \alu|ca|Add0~7\ : std_logic;
SIGNAL \alu|ca|Add0~9\ : std_logic;
SIGNAL \alu|ca|Add0~11\ : std_logic;
SIGNAL \alu|ca|Add0~13\ : std_logic;
SIGNAL \alu|ca|Add0~15\ : std_logic;
SIGNAL \alu|ca|Add0~17\ : std_logic;
SIGNAL \alu|ca|Add0~19\ : std_logic;
SIGNAL \alu|ca|Add0~21\ : std_logic;
SIGNAL \alu|ca|Add0~23\ : std_logic;
SIGNAL \alu|ca|Add0~25\ : std_logic;
SIGNAL \alu|ca|Add0~27\ : std_logic;
SIGNAL \alu|ca|Add0~29\ : std_logic;
SIGNAL \alu|ca|Add0~31\ : std_logic;
SIGNAL \alu|ca|Add0~33\ : std_logic;
SIGNAL \alu|ca|Add0~34_combout\ : std_logic;
SIGNAL \alu|ca|Add0~32_combout\ : std_logic;
SIGNAL \FS[3]~input_o\ : std_logic;
SIGNAL \alu|F[15]~4_combout\ : std_logic;
SIGNAL \alu|F[15]~5_combout\ : std_logic;
SIGNAL \alu|ca|Add0~10_combout\ : std_logic;
SIGNAL \alu|F[0]~11_combout\ : std_logic;
SIGNAL \alu|F[6]~14_combout\ : std_logic;
SIGNAL \alu|F[6]~13_combout\ : std_logic;
SIGNAL \alu|F[4]~20_combout\ : std_logic;
SIGNAL \alu|F[4]~21_combout\ : std_logic;
SIGNAL \alu|F[4]~22_combout\ : std_logic;
SIGNAL \alu|F[4]~23_combout\ : std_logic;
SIGNAL \alu|ca|Add0~18_combout\ : std_logic;
SIGNAL \alu|F[8]~18_combout\ : std_logic;
SIGNAL \alu|F[8]~19_combout\ : std_logic;
SIGNAL \alu|ca|Add0~14_combout\ : std_logic;
SIGNAL \alu|F[6]~12_combout\ : std_logic;
SIGNAL \alu|F[6]~15_combout\ : std_logic;
SIGNAL \alu|F[6]~16_combout\ : std_logic;
SIGNAL \alu|F[6]~17_combout\ : std_logic;
SIGNAL \alu|ca|Add0~16_combout\ : std_logic;
SIGNAL \alu|F[7]~24_combout\ : std_logic;
SIGNAL \alu|cl|Mux8~0_combout\ : std_logic;
SIGNAL \alu|F[7]~45_combout\ : std_logic;
SIGNAL \alu|F[7]~46_combout\ : std_logic;
SIGNAL \alu|Equal0~2_combout\ : std_logic;
SIGNAL \alu|ca|Add0~4_combout\ : std_logic;
SIGNAL \alu|F[1]~39_combout\ : std_logic;
SIGNAL \alu|F[1]~40_combout\ : std_logic;
SIGNAL \alu|F[1]~41_combout\ : std_logic;
SIGNAL \alu|F[1]~42_combout\ : std_logic;
SIGNAL \alu|ca|Add0~20_combout\ : std_logic;
SIGNAL \alu|F[9]~34_combout\ : std_logic;
SIGNAL \alu|ca|Add0~6_combout\ : std_logic;
SIGNAL \alu|F[2]~35_combout\ : std_logic;
SIGNAL \alu|F[2]~36_combout\ : std_logic;
SIGNAL \alu|F[2]~37_combout\ : std_logic;
SIGNAL \alu|F[2]~38_combout\ : std_logic;
SIGNAL \alu|F[5]~30_combout\ : std_logic;
SIGNAL \alu|F[5]~31_combout\ : std_logic;
SIGNAL \alu|F[5]~32_combout\ : std_logic;
SIGNAL \alu|ca|Add0~12_combout\ : std_logic;
SIGNAL \alu|F[5]~33_combout\ : std_logic;
SIGNAL \alu|Equal0~4_combout\ : std_logic;
SIGNAL \alu|F[0]~28_combout\ : std_logic;
SIGNAL \alu|ca|Add0~2_combout\ : std_logic;
SIGNAL \alu|cl|Mux15~0_combout\ : std_logic;
SIGNAL \alu|F[0]~44_combout\ : std_logic;
SIGNAL \alu|F[0]~29_combout\ : std_logic;
SIGNAL \alu|F[3]~25_combout\ : std_logic;
SIGNAL \alu|F[3]~26_combout\ : std_logic;
SIGNAL \alu|F[3]~27_combout\ : std_logic;
SIGNAL \alu|ca|Add0~8_combout\ : std_logic;
SIGNAL \alu|Equal0~3_combout\ : std_logic;
SIGNAL \alu|ca|Add0~24_combout\ : std_logic;
SIGNAL \alu|F[11]~9_combout\ : std_logic;
SIGNAL \alu|ca|Add0~28_combout\ : std_logic;
SIGNAL \alu|F[13]~7_combout\ : std_logic;
SIGNAL \alu|ca|Add0~30_combout\ : std_logic;
SIGNAL \alu|F[14]~6_combout\ : std_logic;
SIGNAL \alu|Equal0~0_combout\ : std_logic;
SIGNAL \alu|ca|Add0~22_combout\ : std_logic;
SIGNAL \alu|F[10]~10_combout\ : std_logic;
SIGNAL \alu|ca|Add0~26_combout\ : std_logic;
SIGNAL \alu|F[12]~8_combout\ : std_logic;
SIGNAL \alu|Equal0~1_combout\ : std_logic;
SIGNAL \alu|Equal0~5_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen|cont[0]~15_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \gen|cont[0]~16\ : std_logic;
SIGNAL \gen|cont[1]~17_combout\ : std_logic;
SIGNAL \gen|cont[1]~18\ : std_logic;
SIGNAL \gen|cont[2]~19_combout\ : std_logic;
SIGNAL \gen|cont[2]~20\ : std_logic;
SIGNAL \gen|cont[3]~21_combout\ : std_logic;
SIGNAL \gen|cont[3]~22\ : std_logic;
SIGNAL \gen|cont[4]~23_combout\ : std_logic;
SIGNAL \gen|cont[4]~24\ : std_logic;
SIGNAL \gen|cont[5]~25_combout\ : std_logic;
SIGNAL \gen|cont[5]~26\ : std_logic;
SIGNAL \gen|cont[6]~27_combout\ : std_logic;
SIGNAL \gen|cont[6]~28\ : std_logic;
SIGNAL \gen|cont[7]~29_combout\ : std_logic;
SIGNAL \gen|cont[7]~30\ : std_logic;
SIGNAL \gen|cont[8]~31_combout\ : std_logic;
SIGNAL \gen|cont[8]~32\ : std_logic;
SIGNAL \gen|cont[9]~33_combout\ : std_logic;
SIGNAL \gen|cont[9]~34\ : std_logic;
SIGNAL \gen|cont[10]~35_combout\ : std_logic;
SIGNAL \gen|cont[10]~36\ : std_logic;
SIGNAL \gen|cont[11]~37_combout\ : std_logic;
SIGNAL \gen|cont[11]~38\ : std_logic;
SIGNAL \gen|cont[12]~39_combout\ : std_logic;
SIGNAL \gen|cont[12]~40\ : std_logic;
SIGNAL \gen|cont[13]~41_combout\ : std_logic;
SIGNAL \gen|cont[13]~42\ : std_logic;
SIGNAL \gen|cont[14]~43_combout\ : std_logic;
SIGNAL \dec|Mux3~0_combout\ : std_logic;
SIGNAL \dec|Mux1~0_combout\ : std_logic;
SIGNAL \dec|Mux1~1_combout\ : std_logic;
SIGNAL \dec|Mux1~2_combout\ : std_logic;
SIGNAL \mux|Mux3~0_combout\ : std_logic;
SIGNAL \mux|Mux3~1_combout\ : std_logic;
SIGNAL \mux|Mux1~0_combout\ : std_logic;
SIGNAL \mux|Mux1~1_combout\ : std_logic;
SIGNAL \alu|F[3]~43_combout\ : std_logic;
SIGNAL \mux|Mux0~0_combout\ : std_logic;
SIGNAL \mux|Mux0~1_combout\ : std_logic;
SIGNAL \mux|Mux2~0_combout\ : std_logic;
SIGNAL \mux|Mux2~1_combout\ : std_logic;
SIGNAL \conv|Mux6~0_combout\ : std_logic;
SIGNAL \conv|Mux5~0_combout\ : std_logic;
SIGNAL \conv|Mux4~0_combout\ : std_logic;
SIGNAL \conv|Mux3~0_combout\ : std_logic;
SIGNAL \conv|Mux2~0_combout\ : std_logic;
SIGNAL \conv|Mux1~0_combout\ : std_logic;
SIGNAL \conv|Mux0~0_combout\ : std_logic;
SIGNAL \gen|cont\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \conv|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \dec|ALT_INV_Mux3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_FS <= FS;
ww_DIP1 <= DIP1;
ww_DIP2 <= DIP2;
C <= ww_C;
N <= ww_N;
Z <= ww_Z;
SSEG_CM <= ww_SSEG_CM;
SSEG_SC <= ww_SSEG_SC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\conv|ALT_INV_Mux0~0_combout\ <= NOT \conv|Mux0~0_combout\;
\conv|ALT_INV_Mux1~0_combout\ <= NOT \conv|Mux1~0_combout\;
\conv|ALT_INV_Mux2~0_combout\ <= NOT \conv|Mux2~0_combout\;
\conv|ALT_INV_Mux3~0_combout\ <= NOT \conv|Mux3~0_combout\;
\conv|ALT_INV_Mux4~0_combout\ <= NOT \conv|Mux4~0_combout\;
\conv|ALT_INV_Mux5~0_combout\ <= NOT \conv|Mux5~0_combout\;
\dec|ALT_INV_Mux3~0_combout\ <= NOT \dec|Mux3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|ca|Add0~34_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|F[15]~5_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Equal0~5_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\SSEG_CM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_Mux3~0_combout\,
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
	i => \dec|Mux1~0_combout\,
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
	i => \dec|Mux1~1_combout\,
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
	i => \dec|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \SSEG_CM[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\SSEG_SC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\SSEG_SC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\SSEG_SC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\SSEG_SC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\SSEG_SC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\SSEG_SC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\SSEG_SC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SSEG_SC[6]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\FS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS(1),
	o => \FS[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\FS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS(2),
	o => \FS[2]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\DIP2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(7),
	o => \DIP2[7]~input_o\);

-- Location: LCCOMB_X44_Y5_N30
\alu|ca|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux9~0_combout\ = (\DIP2[7]~input_o\ & ((\FS[1]~input_o\))) # (!\DIP2[7]~input_o\ & (\FS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datac => \FS[1]~input_o\,
	datad => \DIP2[7]~input_o\,
	combout => \alu|ca|Mux9~0_combout\);

-- Location: IOIBUF_X53_Y9_N22
\DIP1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(7),
	o => \DIP1[7]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\DIP1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(6),
	o => \DIP1[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\DIP2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(6),
	o => \DIP2[6]~input_o\);

-- Location: LCCOMB_X41_Y5_N16
\alu|ca|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux10~0_combout\ = (\DIP2[6]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[6]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \DIP2[6]~input_o\,
	combout => \alu|ca|Mux10~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\DIP2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(5),
	o => \DIP2[5]~input_o\);

-- Location: LCCOMB_X41_Y5_N2
\alu|ca|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux11~0_combout\ = (\DIP2[5]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[5]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \DIP2[5]~input_o\,
	combout => \alu|ca|Mux11~0_combout\);

-- Location: IOIBUF_X53_Y7_N8
\DIP1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(5),
	o => \DIP1[5]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\DIP1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(4),
	o => \DIP1[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\DIP2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(4),
	o => \DIP2[4]~input_o\);

-- Location: LCCOMB_X43_Y6_N28
\alu|ca|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux12~0_combout\ = (\DIP2[4]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[4]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \DIP2[4]~input_o\,
	combout => \alu|ca|Mux12~0_combout\);

-- Location: IOIBUF_X53_Y11_N1
\DIP1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(3),
	o => \DIP1[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\DIP2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(3),
	o => \DIP2[3]~input_o\);

-- Location: LCCOMB_X43_Y6_N22
\alu|ca|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux13~0_combout\ = (\DIP2[3]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[3]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \DIP2[3]~input_o\,
	combout => \alu|ca|Mux13~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\DIP2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(2),
	o => \DIP2[2]~input_o\);

-- Location: LCCOMB_X43_Y6_N16
\alu|ca|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux14~0_combout\ = (\DIP2[2]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[2]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \DIP2[2]~input_o\,
	combout => \alu|ca|Mux14~0_combout\);

-- Location: IOIBUF_X53_Y8_N22
\DIP1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(2),
	o => \DIP1[2]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\DIP1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(1),
	o => \DIP1[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DIP2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(1),
	o => \DIP2[1]~input_o\);

-- Location: LCCOMB_X43_Y6_N6
\alu|ca|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux15~0_combout\ = (\DIP2[1]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[1]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[1]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	combout => \alu|ca|Mux15~0_combout\);

-- Location: IOIBUF_X34_Y0_N15
\DIP2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2(0),
	o => \DIP2[0]~input_o\);

-- Location: LCCOMB_X44_Y6_N12
\alu|ca|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Mux16~0_combout\ = (\DIP2[0]~input_o\ & (\FS[1]~input_o\)) # (!\DIP2[0]~input_o\ & ((\FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \DIP2[0]~input_o\,
	datad => \FS[2]~input_o\,
	combout => \alu|ca|Mux16~0_combout\);

-- Location: IOIBUF_X53_Y11_N8
\DIP1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1(0),
	o => \DIP1[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\FS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS(0),
	o => \FS[0]~input_o\);

-- Location: LCCOMB_X44_Y6_N14
\alu|ca|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~1_cout\ = CARRY(\FS[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datad => VCC,
	cout => \alu|ca|Add0~1_cout\);

-- Location: LCCOMB_X44_Y6_N16
\alu|ca|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~2_combout\ = (\alu|ca|Mux16~0_combout\ & ((\DIP1[0]~input_o\ & (\alu|ca|Add0~1_cout\ & VCC)) # (!\DIP1[0]~input_o\ & (!\alu|ca|Add0~1_cout\)))) # (!\alu|ca|Mux16~0_combout\ & ((\DIP1[0]~input_o\ & (!\alu|ca|Add0~1_cout\)) # 
-- (!\DIP1[0]~input_o\ & ((\alu|ca|Add0~1_cout\) # (GND)))))
-- \alu|ca|Add0~3\ = CARRY((\alu|ca|Mux16~0_combout\ & (!\DIP1[0]~input_o\ & !\alu|ca|Add0~1_cout\)) # (!\alu|ca|Mux16~0_combout\ & ((!\alu|ca|Add0~1_cout\) # (!\DIP1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Mux16~0_combout\,
	datab => \DIP1[0]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~1_cout\,
	combout => \alu|ca|Add0~2_combout\,
	cout => \alu|ca|Add0~3\);

-- Location: LCCOMB_X44_Y6_N18
\alu|ca|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~4_combout\ = ((\DIP1[1]~input_o\ $ (\alu|ca|Mux15~0_combout\ $ (!\alu|ca|Add0~3\)))) # (GND)
-- \alu|ca|Add0~5\ = CARRY((\DIP1[1]~input_o\ & ((\alu|ca|Mux15~0_combout\) # (!\alu|ca|Add0~3\))) # (!\DIP1[1]~input_o\ & (\alu|ca|Mux15~0_combout\ & !\alu|ca|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[1]~input_o\,
	datab => \alu|ca|Mux15~0_combout\,
	datad => VCC,
	cin => \alu|ca|Add0~3\,
	combout => \alu|ca|Add0~4_combout\,
	cout => \alu|ca|Add0~5\);

-- Location: LCCOMB_X44_Y6_N20
\alu|ca|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~6_combout\ = (\alu|ca|Mux14~0_combout\ & ((\DIP1[2]~input_o\ & (\alu|ca|Add0~5\ & VCC)) # (!\DIP1[2]~input_o\ & (!\alu|ca|Add0~5\)))) # (!\alu|ca|Mux14~0_combout\ & ((\DIP1[2]~input_o\ & (!\alu|ca|Add0~5\)) # (!\DIP1[2]~input_o\ & 
-- ((\alu|ca|Add0~5\) # (GND)))))
-- \alu|ca|Add0~7\ = CARRY((\alu|ca|Mux14~0_combout\ & (!\DIP1[2]~input_o\ & !\alu|ca|Add0~5\)) # (!\alu|ca|Mux14~0_combout\ & ((!\alu|ca|Add0~5\) # (!\DIP1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Mux14~0_combout\,
	datab => \DIP1[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~5\,
	combout => \alu|ca|Add0~6_combout\,
	cout => \alu|ca|Add0~7\);

-- Location: LCCOMB_X44_Y6_N22
\alu|ca|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~8_combout\ = ((\DIP1[3]~input_o\ $ (\alu|ca|Mux13~0_combout\ $ (!\alu|ca|Add0~7\)))) # (GND)
-- \alu|ca|Add0~9\ = CARRY((\DIP1[3]~input_o\ & ((\alu|ca|Mux13~0_combout\) # (!\alu|ca|Add0~7\))) # (!\DIP1[3]~input_o\ & (\alu|ca|Mux13~0_combout\ & !\alu|ca|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[3]~input_o\,
	datab => \alu|ca|Mux13~0_combout\,
	datad => VCC,
	cin => \alu|ca|Add0~7\,
	combout => \alu|ca|Add0~8_combout\,
	cout => \alu|ca|Add0~9\);

-- Location: LCCOMB_X44_Y6_N24
\alu|ca|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~10_combout\ = (\DIP1[4]~input_o\ & ((\alu|ca|Mux12~0_combout\ & (\alu|ca|Add0~9\ & VCC)) # (!\alu|ca|Mux12~0_combout\ & (!\alu|ca|Add0~9\)))) # (!\DIP1[4]~input_o\ & ((\alu|ca|Mux12~0_combout\ & (!\alu|ca|Add0~9\)) # 
-- (!\alu|ca|Mux12~0_combout\ & ((\alu|ca|Add0~9\) # (GND)))))
-- \alu|ca|Add0~11\ = CARRY((\DIP1[4]~input_o\ & (!\alu|ca|Mux12~0_combout\ & !\alu|ca|Add0~9\)) # (!\DIP1[4]~input_o\ & ((!\alu|ca|Add0~9\) # (!\alu|ca|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[4]~input_o\,
	datab => \alu|ca|Mux12~0_combout\,
	datad => VCC,
	cin => \alu|ca|Add0~9\,
	combout => \alu|ca|Add0~10_combout\,
	cout => \alu|ca|Add0~11\);

-- Location: LCCOMB_X44_Y6_N26
\alu|ca|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~12_combout\ = ((\alu|ca|Mux11~0_combout\ $ (\DIP1[5]~input_o\ $ (!\alu|ca|Add0~11\)))) # (GND)
-- \alu|ca|Add0~13\ = CARRY((\alu|ca|Mux11~0_combout\ & ((\DIP1[5]~input_o\) # (!\alu|ca|Add0~11\))) # (!\alu|ca|Mux11~0_combout\ & (\DIP1[5]~input_o\ & !\alu|ca|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Mux11~0_combout\,
	datab => \DIP1[5]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~11\,
	combout => \alu|ca|Add0~12_combout\,
	cout => \alu|ca|Add0~13\);

-- Location: LCCOMB_X44_Y6_N28
\alu|ca|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~14_combout\ = (\DIP1[6]~input_o\ & ((\alu|ca|Mux10~0_combout\ & (\alu|ca|Add0~13\ & VCC)) # (!\alu|ca|Mux10~0_combout\ & (!\alu|ca|Add0~13\)))) # (!\DIP1[6]~input_o\ & ((\alu|ca|Mux10~0_combout\ & (!\alu|ca|Add0~13\)) # 
-- (!\alu|ca|Mux10~0_combout\ & ((\alu|ca|Add0~13\) # (GND)))))
-- \alu|ca|Add0~15\ = CARRY((\DIP1[6]~input_o\ & (!\alu|ca|Mux10~0_combout\ & !\alu|ca|Add0~13\)) # (!\DIP1[6]~input_o\ & ((!\alu|ca|Add0~13\) # (!\alu|ca|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[6]~input_o\,
	datab => \alu|ca|Mux10~0_combout\,
	datad => VCC,
	cin => \alu|ca|Add0~13\,
	combout => \alu|ca|Add0~14_combout\,
	cout => \alu|ca|Add0~15\);

-- Location: LCCOMB_X44_Y6_N30
\alu|ca|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~16_combout\ = ((\alu|ca|Mux9~0_combout\ $ (\DIP1[7]~input_o\ $ (!\alu|ca|Add0~15\)))) # (GND)
-- \alu|ca|Add0~17\ = CARRY((\alu|ca|Mux9~0_combout\ & ((\DIP1[7]~input_o\) # (!\alu|ca|Add0~15\))) # (!\alu|ca|Mux9~0_combout\ & (\DIP1[7]~input_o\ & !\alu|ca|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Mux9~0_combout\,
	datab => \DIP1[7]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~15\,
	combout => \alu|ca|Add0~16_combout\,
	cout => \alu|ca|Add0~17\);

-- Location: LCCOMB_X44_Y5_N0
\alu|ca|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~18_combout\ = (\FS[2]~input_o\ & (!\alu|ca|Add0~17\)) # (!\FS[2]~input_o\ & ((\alu|ca|Add0~17\) # (GND)))
-- \alu|ca|Add0~19\ = CARRY((!\alu|ca|Add0~17\) # (!\FS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~17\,
	combout => \alu|ca|Add0~18_combout\,
	cout => \alu|ca|Add0~19\);

-- Location: LCCOMB_X44_Y5_N2
\alu|ca|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~20_combout\ = (\FS[2]~input_o\ & (\alu|ca|Add0~19\ $ (GND))) # (!\FS[2]~input_o\ & (!\alu|ca|Add0~19\ & VCC))
-- \alu|ca|Add0~21\ = CARRY((\FS[2]~input_o\ & !\alu|ca|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~19\,
	combout => \alu|ca|Add0~20_combout\,
	cout => \alu|ca|Add0~21\);

-- Location: LCCOMB_X44_Y5_N4
\alu|ca|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~22_combout\ = (\FS[2]~input_o\ & (!\alu|ca|Add0~21\)) # (!\FS[2]~input_o\ & ((\alu|ca|Add0~21\) # (GND)))
-- \alu|ca|Add0~23\ = CARRY((!\alu|ca|Add0~21\) # (!\FS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~21\,
	combout => \alu|ca|Add0~22_combout\,
	cout => \alu|ca|Add0~23\);

-- Location: LCCOMB_X44_Y5_N6
\alu|ca|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~24_combout\ = (\FS[2]~input_o\ & (\alu|ca|Add0~23\ $ (GND))) # (!\FS[2]~input_o\ & (!\alu|ca|Add0~23\ & VCC))
-- \alu|ca|Add0~25\ = CARRY((\FS[2]~input_o\ & !\alu|ca|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~23\,
	combout => \alu|ca|Add0~24_combout\,
	cout => \alu|ca|Add0~25\);

-- Location: LCCOMB_X44_Y5_N8
\alu|ca|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~26_combout\ = (\FS[2]~input_o\ & (!\alu|ca|Add0~25\)) # (!\FS[2]~input_o\ & ((\alu|ca|Add0~25\) # (GND)))
-- \alu|ca|Add0~27\ = CARRY((!\alu|ca|Add0~25\) # (!\FS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~25\,
	combout => \alu|ca|Add0~26_combout\,
	cout => \alu|ca|Add0~27\);

-- Location: LCCOMB_X44_Y5_N10
\alu|ca|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~28_combout\ = (\FS[2]~input_o\ & (\alu|ca|Add0~27\ $ (GND))) # (!\FS[2]~input_o\ & (!\alu|ca|Add0~27\ & VCC))
-- \alu|ca|Add0~29\ = CARRY((\FS[2]~input_o\ & !\alu|ca|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~27\,
	combout => \alu|ca|Add0~28_combout\,
	cout => \alu|ca|Add0~29\);

-- Location: LCCOMB_X44_Y5_N12
\alu|ca|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~30_combout\ = (\FS[2]~input_o\ & (!\alu|ca|Add0~29\)) # (!\FS[2]~input_o\ & ((\alu|ca|Add0~29\) # (GND)))
-- \alu|ca|Add0~31\ = CARRY((!\alu|ca|Add0~29\) # (!\FS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~29\,
	combout => \alu|ca|Add0~30_combout\,
	cout => \alu|ca|Add0~31\);

-- Location: LCCOMB_X44_Y5_N14
\alu|ca|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~32_combout\ = (\FS[2]~input_o\ & (\alu|ca|Add0~31\ $ (GND))) # (!\FS[2]~input_o\ & (!\alu|ca|Add0~31\ & VCC))
-- \alu|ca|Add0~33\ = CARRY((\FS[2]~input_o\ & !\alu|ca|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FS[2]~input_o\,
	datad => VCC,
	cin => \alu|ca|Add0~31\,
	combout => \alu|ca|Add0~32_combout\,
	cout => \alu|ca|Add0~33\);

-- Location: LCCOMB_X44_Y5_N16
\alu|ca|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ca|Add0~34_combout\ = \alu|ca|Add0~33\ $ (((\FS[1]~input_o\ & \FS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FS[1]~input_o\,
	datab => \FS[2]~input_o\,
	cin => \alu|ca|Add0~33\,
	combout => \alu|ca|Add0~34_combout\);

-- Location: IOIBUF_X53_Y17_N15
\FS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS(3),
	o => \FS[3]~input_o\);

-- Location: LCCOMB_X41_Y5_N28
\alu|F[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[15]~4_combout\ = (\FS[0]~input_o\ & (\FS[1]~input_o\ & (!\FS[2]~input_o\ & \FS[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[15]~4_combout\);

-- Location: LCCOMB_X44_Y8_N28
\alu|F[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[15]~5_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~32_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Add0~32_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[15]~5_combout\);

-- Location: LCCOMB_X41_Y5_N22
\alu|F[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[0]~11_combout\ = (!\FS[1]~input_o\ & (\FS[2]~input_o\ & \FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[0]~11_combout\);

-- Location: LCCOMB_X41_Y5_N0
\alu|F[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~14_combout\ = (\FS[2]~input_o\ & (\FS[3]~input_o\ & ((\FS[0]~input_o\) # (\FS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[6]~14_combout\);

-- Location: LCCOMB_X41_Y5_N18
\alu|F[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~13_combout\ = (((!\FS[0]~input_o\ & \FS[1]~input_o\)) # (!\FS[3]~input_o\)) # (!\FS[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[2]~input_o\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[6]~13_combout\);

-- Location: LCCOMB_X43_Y6_N8
\alu|F[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[4]~20_combout\ = (\DIP1[4]~input_o\ & (\FS[1]~input_o\ $ (((\FS[0]~input_o\) # (\DIP2[4]~input_o\))))) # (!\DIP1[4]~input_o\ & ((\FS[1]~input_o\ & ((\FS[0]~input_o\) # (\DIP2[4]~input_o\))) # (!\FS[1]~input_o\ & (\FS[0]~input_o\ & 
-- \DIP2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP1[4]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \DIP2[4]~input_o\,
	combout => \alu|F[4]~20_combout\);

-- Location: LCCOMB_X43_Y6_N30
\alu|F[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[4]~21_combout\ = (\alu|F[6]~14_combout\ & (\alu|F[6]~13_combout\ & ((\DIP2[3]~input_o\)))) # (!\alu|F[6]~14_combout\ & (((\alu|F[4]~20_combout\)) # (!\alu|F[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[6]~14_combout\,
	datab => \alu|F[6]~13_combout\,
	datac => \alu|F[4]~20_combout\,
	datad => \DIP2[3]~input_o\,
	combout => \alu|F[4]~21_combout\);

-- Location: LCCOMB_X41_Y5_N14
\alu|F[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[4]~22_combout\ = (\alu|F[0]~11_combout\ & ((\alu|F[4]~21_combout\ & ((\DIP2[4]~input_o\))) # (!\alu|F[4]~21_combout\ & (\DIP2[5]~input_o\)))) # (!\alu|F[0]~11_combout\ & (((\alu|F[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[0]~11_combout\,
	datab => \DIP2[5]~input_o\,
	datac => \DIP2[4]~input_o\,
	datad => \alu|F[4]~21_combout\,
	combout => \alu|F[4]~22_combout\);

-- Location: LCCOMB_X43_Y8_N26
\alu|F[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[4]~23_combout\ = (\FS[3]~input_o\ & ((\alu|F[4]~22_combout\))) # (!\FS[3]~input_o\ & (\alu|ca|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~10_combout\,
	datac => \alu|F[4]~22_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[4]~23_combout\);

-- Location: LCCOMB_X44_Y5_N24
\alu|F[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[8]~18_combout\ = (\FS[3]~input_o\ & ((\FS[0]~input_o\ & (!\FS[2]~input_o\)) # (!\FS[0]~input_o\ & (\FS[2]~input_o\ & \DIP2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[2]~input_o\,
	datac => \FS[3]~input_o\,
	datad => \DIP2[7]~input_o\,
	combout => \alu|F[8]~18_combout\);

-- Location: LCCOMB_X44_Y5_N26
\alu|F[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[8]~19_combout\ = (\FS[3]~input_o\ & (((\FS[1]~input_o\ & \alu|F[8]~18_combout\)))) # (!\FS[3]~input_o\ & ((\alu|ca|Add0~18_combout\) # ((\FS[1]~input_o\ & \alu|F[8]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[3]~input_o\,
	datab => \alu|ca|Add0~18_combout\,
	datac => \FS[1]~input_o\,
	datad => \alu|F[8]~18_combout\,
	combout => \alu|F[8]~19_combout\);

-- Location: LCCOMB_X41_Y5_N8
\alu|F[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~12_combout\ = (\FS[1]~input_o\ & (\DIP1[6]~input_o\ $ (((\FS[0]~input_o\) # (\DIP2[6]~input_o\))))) # (!\FS[1]~input_o\ & ((\FS[0]~input_o\ & ((\DIP1[6]~input_o\) # (\DIP2[6]~input_o\))) # (!\FS[0]~input_o\ & (\DIP1[6]~input_o\ & 
-- \DIP2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \DIP1[6]~input_o\,
	datad => \DIP2[6]~input_o\,
	combout => \alu|F[6]~12_combout\);

-- Location: LCCOMB_X41_Y5_N26
\alu|F[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~15_combout\ = (\alu|F[6]~14_combout\ & (\DIP2[5]~input_o\ & ((\alu|F[6]~13_combout\)))) # (!\alu|F[6]~14_combout\ & (((\alu|F[6]~12_combout\) # (!\alu|F[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[5]~input_o\,
	datab => \alu|F[6]~14_combout\,
	datac => \alu|F[6]~12_combout\,
	datad => \alu|F[6]~13_combout\,
	combout => \alu|F[6]~15_combout\);

-- Location: LCCOMB_X41_Y5_N4
\alu|F[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~16_combout\ = (\alu|F[0]~11_combout\ & ((\alu|F[6]~15_combout\ & (\DIP2[6]~input_o\)) # (!\alu|F[6]~15_combout\ & ((\DIP2[7]~input_o\))))) # (!\alu|F[0]~11_combout\ & (((\alu|F[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[0]~11_combout\,
	datab => \DIP2[6]~input_o\,
	datac => \alu|F[6]~15_combout\,
	datad => \DIP2[7]~input_o\,
	combout => \alu|F[6]~16_combout\);

-- Location: LCCOMB_X43_Y8_N24
\alu|F[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[6]~17_combout\ = (\FS[3]~input_o\ & ((\alu|F[6]~16_combout\))) # (!\FS[3]~input_o\ & (\alu|ca|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~14_combout\,
	datac => \alu|F[6]~16_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[6]~17_combout\);

-- Location: LCCOMB_X41_Y5_N20
\alu|F[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[7]~24_combout\ = (\FS[1]~input_o\ & (\DIP2[6]~input_o\)) # (!\FS[1]~input_o\ & ((\DIP2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIP2[6]~input_o\,
	datac => \FS[1]~input_o\,
	datad => \DIP2[7]~input_o\,
	combout => \alu|F[7]~24_combout\);

-- Location: LCCOMB_X44_Y5_N28
\alu|cl|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|cl|Mux8~0_combout\ = (\FS[1]~input_o\ & (\DIP1[7]~input_o\ $ (((\FS[0]~input_o\) # (\DIP2[7]~input_o\))))) # (!\FS[1]~input_o\ & ((\DIP1[7]~input_o\ & ((\FS[0]~input_o\) # (\DIP2[7]~input_o\))) # (!\DIP1[7]~input_o\ & (\FS[0]~input_o\ & 
-- \DIP2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[1]~input_o\,
	datab => \DIP1[7]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \DIP2[7]~input_o\,
	combout => \alu|cl|Mux8~0_combout\);

-- Location: LCCOMB_X44_Y5_N18
\alu|F[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[7]~45_combout\ = (\FS[2]~input_o\ & (\alu|F[7]~24_combout\ & (!\FS[0]~input_o\))) # (!\FS[2]~input_o\ & (((\alu|cl|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[7]~24_combout\,
	datab => \FS[2]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \alu|cl|Mux8~0_combout\,
	combout => \alu|F[7]~45_combout\);

-- Location: LCCOMB_X44_Y5_N20
\alu|F[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[7]~46_combout\ = (\FS[3]~input_o\ & ((\alu|F[7]~45_combout\))) # (!\FS[3]~input_o\ & (\alu|ca|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Add0~16_combout\,
	datac => \FS[3]~input_o\,
	datad => \alu|F[7]~45_combout\,
	combout => \alu|F[7]~46_combout\);

-- Location: LCCOMB_X43_Y8_N12
\alu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~2_combout\ = (!\alu|F[4]~23_combout\ & (!\alu|F[8]~19_combout\ & (!\alu|F[6]~17_combout\ & !\alu|F[7]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[4]~23_combout\,
	datab => \alu|F[8]~19_combout\,
	datac => \alu|F[6]~17_combout\,
	datad => \alu|F[7]~46_combout\,
	combout => \alu|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y6_N10
\alu|F[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[1]~39_combout\ = (\FS[1]~input_o\ & (\DIP1[1]~input_o\ $ (((\DIP2[1]~input_o\) # (\FS[0]~input_o\))))) # (!\FS[1]~input_o\ & ((\DIP2[1]~input_o\ & ((\FS[0]~input_o\) # (\DIP1[1]~input_o\))) # (!\DIP2[1]~input_o\ & (\FS[0]~input_o\ & 
-- \DIP1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[1]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \DIP1[1]~input_o\,
	combout => \alu|F[1]~39_combout\);

-- Location: LCCOMB_X43_Y6_N24
\alu|F[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[1]~40_combout\ = (\alu|F[6]~14_combout\ & (((\DIP2[0]~input_o\ & \alu|F[6]~13_combout\)))) # (!\alu|F[6]~14_combout\ & ((\alu|F[1]~39_combout\) # ((!\alu|F[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[1]~39_combout\,
	datab => \DIP2[0]~input_o\,
	datac => \alu|F[6]~14_combout\,
	datad => \alu|F[6]~13_combout\,
	combout => \alu|F[1]~40_combout\);

-- Location: LCCOMB_X43_Y6_N26
\alu|F[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[1]~41_combout\ = (\alu|F[0]~11_combout\ & ((\alu|F[1]~40_combout\ & ((\DIP2[1]~input_o\))) # (!\alu|F[1]~40_combout\ & (\DIP2[2]~input_o\)))) # (!\alu|F[0]~11_combout\ & (((\alu|F[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[2]~input_o\,
	datab => \alu|F[0]~11_combout\,
	datac => \DIP2[1]~input_o\,
	datad => \alu|F[1]~40_combout\,
	combout => \alu|F[1]~41_combout\);

-- Location: LCCOMB_X44_Y6_N10
\alu|F[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[1]~42_combout\ = (\FS[3]~input_o\ & ((\alu|F[1]~41_combout\))) # (!\FS[3]~input_o\ & (\alu|ca|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~4_combout\,
	datac => \alu|F[1]~41_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[1]~42_combout\);

-- Location: LCCOMB_X44_Y8_N0
\alu|F[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[9]~34_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~20_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Add0~20_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[9]~34_combout\);

-- Location: LCCOMB_X43_Y6_N20
\alu|F[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[2]~35_combout\ = (\FS[1]~input_o\ & (\DIP1[2]~input_o\ $ (((\DIP2[2]~input_o\) # (\FS[0]~input_o\))))) # (!\FS[1]~input_o\ & ((\DIP2[2]~input_o\ & ((\FS[0]~input_o\) # (\DIP1[2]~input_o\))) # (!\DIP2[2]~input_o\ & (\FS[0]~input_o\ & 
-- \DIP1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[2]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \DIP1[2]~input_o\,
	combout => \alu|F[2]~35_combout\);

-- Location: LCCOMB_X43_Y6_N2
\alu|F[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[2]~36_combout\ = (\alu|F[6]~13_combout\ & ((\alu|F[6]~14_combout\ & (\DIP2[1]~input_o\)) # (!\alu|F[6]~14_combout\ & ((\alu|F[2]~35_combout\))))) # (!\alu|F[6]~13_combout\ & (((!\alu|F[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[1]~input_o\,
	datab => \alu|F[6]~13_combout\,
	datac => \alu|F[6]~14_combout\,
	datad => \alu|F[2]~35_combout\,
	combout => \alu|F[2]~36_combout\);

-- Location: LCCOMB_X43_Y6_N0
\alu|F[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[2]~37_combout\ = (\alu|F[2]~36_combout\ & ((\DIP2[2]~input_o\) # ((!\alu|F[0]~11_combout\)))) # (!\alu|F[2]~36_combout\ & (((\alu|F[0]~11_combout\ & \DIP2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[2]~input_o\,
	datab => \alu|F[2]~36_combout\,
	datac => \alu|F[0]~11_combout\,
	datad => \DIP2[3]~input_o\,
	combout => \alu|F[2]~37_combout\);

-- Location: LCCOMB_X44_Y6_N0
\alu|F[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[2]~38_combout\ = (\FS[3]~input_o\ & ((\alu|F[2]~37_combout\))) # (!\FS[3]~input_o\ & (\alu|ca|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~6_combout\,
	datac => \alu|F[2]~37_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[2]~38_combout\);

-- Location: LCCOMB_X41_Y5_N10
\alu|F[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[5]~30_combout\ = (\FS[1]~input_o\ & (\DIP1[5]~input_o\ $ (((\FS[0]~input_o\) # (\DIP2[5]~input_o\))))) # (!\FS[1]~input_o\ & ((\FS[0]~input_o\ & ((\DIP2[5]~input_o\) # (\DIP1[5]~input_o\))) # (!\FS[0]~input_o\ & (\DIP2[5]~input_o\ & 
-- \DIP1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \DIP2[5]~input_o\,
	datac => \FS[1]~input_o\,
	datad => \DIP1[5]~input_o\,
	combout => \alu|F[5]~30_combout\);

-- Location: LCCOMB_X41_Y5_N12
\alu|F[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[5]~31_combout\ = (\alu|F[6]~14_combout\ & (((\DIP2[4]~input_o\ & \alu|F[6]~13_combout\)))) # (!\alu|F[6]~14_combout\ & ((\alu|F[5]~30_combout\) # ((!\alu|F[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[5]~30_combout\,
	datab => \alu|F[6]~14_combout\,
	datac => \DIP2[4]~input_o\,
	datad => \alu|F[6]~13_combout\,
	combout => \alu|F[5]~31_combout\);

-- Location: LCCOMB_X41_Y5_N30
\alu|F[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[5]~32_combout\ = (\alu|F[5]~31_combout\ & ((\DIP2[5]~input_o\) # ((!\alu|F[0]~11_combout\)))) # (!\alu|F[5]~31_combout\ & (((\alu|F[0]~11_combout\ & \DIP2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[5]~31_combout\,
	datab => \DIP2[5]~input_o\,
	datac => \alu|F[0]~11_combout\,
	datad => \DIP2[6]~input_o\,
	combout => \alu|F[5]~32_combout\);

-- Location: LCCOMB_X44_Y6_N2
\alu|F[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[5]~33_combout\ = (\FS[3]~input_o\ & (\alu|F[5]~32_combout\)) # (!\FS[3]~input_o\ & ((\alu|ca|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[5]~32_combout\,
	datac => \alu|ca|Add0~12_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[5]~33_combout\);

-- Location: LCCOMB_X44_Y8_N22
\alu|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~4_combout\ = (!\alu|F[1]~42_combout\ & (!\alu|F[9]~34_combout\ & (!\alu|F[2]~38_combout\ & !\alu|F[5]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[1]~42_combout\,
	datab => \alu|F[9]~34_combout\,
	datac => \alu|F[2]~38_combout\,
	datad => \alu|F[5]~33_combout\,
	combout => \alu|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y6_N14
\alu|F[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[0]~28_combout\ = (\alu|F[0]~11_combout\ & ((\FS[0]~input_o\ & (\DIP2[1]~input_o\)) # (!\FS[0]~input_o\ & ((\DIP2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[1]~input_o\,
	datab => \DIP2[0]~input_o\,
	datac => \alu|F[0]~11_combout\,
	datad => \FS[0]~input_o\,
	combout => \alu|F[0]~28_combout\);

-- Location: LCCOMB_X44_Y6_N6
\alu|cl|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|cl|Mux15~0_combout\ = (\FS[1]~input_o\ & (\DIP1[0]~input_o\ $ (((\FS[0]~input_o\) # (\DIP2[0]~input_o\))))) # (!\FS[1]~input_o\ & ((\FS[0]~input_o\ & ((\DIP2[0]~input_o\) # (\DIP1[0]~input_o\))) # (!\FS[0]~input_o\ & (\DIP2[0]~input_o\ & 
-- \DIP1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS[0]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \DIP2[0]~input_o\,
	datad => \DIP1[0]~input_o\,
	combout => \alu|cl|Mux15~0_combout\);

-- Location: LCCOMB_X44_Y6_N4
\alu|F[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[0]~44_combout\ = (\alu|cl|Mux15~0_combout\ & (!\FS[2]~input_o\ & \FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|cl|Mux15~0_combout\,
	datab => \FS[2]~input_o\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[0]~44_combout\);

-- Location: LCCOMB_X44_Y6_N8
\alu|F[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[0]~29_combout\ = (\alu|F[0]~28_combout\) # ((\alu|F[0]~44_combout\) # ((\alu|ca|Add0~2_combout\ & !\FS[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[0]~28_combout\,
	datab => \alu|ca|Add0~2_combout\,
	datac => \alu|F[0]~44_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[0]~29_combout\);

-- Location: LCCOMB_X43_Y6_N12
\alu|F[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[3]~25_combout\ = (\FS[1]~input_o\ & (\DIP1[3]~input_o\ $ (((\DIP2[3]~input_o\) # (\FS[0]~input_o\))))) # (!\FS[1]~input_o\ & ((\DIP2[3]~input_o\ & ((\FS[0]~input_o\) # (\DIP1[3]~input_o\))) # (!\DIP2[3]~input_o\ & (\FS[0]~input_o\ & 
-- \DIP1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[3]~input_o\,
	datab => \FS[1]~input_o\,
	datac => \FS[0]~input_o\,
	datad => \DIP1[3]~input_o\,
	combout => \alu|F[3]~25_combout\);

-- Location: LCCOMB_X43_Y6_N18
\alu|F[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[3]~26_combout\ = (\alu|F[6]~13_combout\ & ((\alu|F[6]~14_combout\ & (\DIP2[2]~input_o\)) # (!\alu|F[6]~14_combout\ & ((\alu|F[3]~25_combout\))))) # (!\alu|F[6]~13_combout\ & (((!\alu|F[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[2]~input_o\,
	datab => \alu|F[6]~13_combout\,
	datac => \alu|F[6]~14_combout\,
	datad => \alu|F[3]~25_combout\,
	combout => \alu|F[3]~26_combout\);

-- Location: LCCOMB_X43_Y6_N4
\alu|F[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[3]~27_combout\ = (\alu|F[3]~26_combout\ & ((\DIP2[3]~input_o\) # ((!\alu|F[0]~11_combout\)))) # (!\alu|F[3]~26_combout\ & (((\alu|F[0]~11_combout\ & \DIP2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP2[3]~input_o\,
	datab => \alu|F[3]~26_combout\,
	datac => \alu|F[0]~11_combout\,
	datad => \DIP2[4]~input_o\,
	combout => \alu|F[3]~27_combout\);

-- Location: LCCOMB_X43_Y8_N22
\alu|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~3_combout\ = (!\alu|F[0]~29_combout\ & ((\FS[3]~input_o\ & (!\alu|F[3]~27_combout\)) # (!\FS[3]~input_o\ & ((!\alu|ca|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[0]~29_combout\,
	datab => \alu|F[3]~27_combout\,
	datac => \alu|ca|Add0~8_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y8_N30
\alu|F[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[11]~9_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~24_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~24_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[11]~9_combout\);

-- Location: LCCOMB_X44_Y8_N12
\alu|F[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[13]~7_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~28_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~28_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[13]~7_combout\);

-- Location: LCCOMB_X44_Y8_N26
\alu|F[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[14]~6_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~30_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ca|Add0~30_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[14]~6_combout\);

-- Location: LCCOMB_X44_Y8_N18
\alu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~0_combout\ = (!\alu|F[13]~7_combout\ & (!\alu|F[15]~5_combout\ & !\alu|F[14]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[13]~7_combout\,
	datab => \alu|F[15]~5_combout\,
	datac => \alu|F[14]~6_combout\,
	combout => \alu|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y8_N8
\alu|F[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[10]~10_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~22_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ca|Add0~22_combout\,
	datac => \alu|F[15]~4_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[10]~10_combout\);

-- Location: LCCOMB_X44_Y8_N24
\alu|F[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[12]~8_combout\ = (\alu|F[15]~4_combout\) # ((\alu|ca|Add0~26_combout\ & !\FS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[15]~4_combout\,
	datac => \alu|ca|Add0~26_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[12]~8_combout\);

-- Location: LCCOMB_X44_Y8_N6
\alu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~1_combout\ = (!\alu|F[11]~9_combout\ & (\alu|Equal0~0_combout\ & (!\alu|F[10]~10_combout\ & !\alu|F[12]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[11]~9_combout\,
	datab => \alu|Equal0~0_combout\,
	datac => \alu|F[10]~10_combout\,
	datad => \alu|F[12]~8_combout\,
	combout => \alu|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y8_N28
\alu|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~5_combout\ = (\alu|Equal0~2_combout\ & (\alu|Equal0~4_combout\ & (\alu|Equal0~3_combout\ & \alu|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Equal0~2_combout\,
	datab => \alu|Equal0~4_combout\,
	datac => \alu|Equal0~3_combout\,
	datad => \alu|Equal0~1_combout\,
	combout => \alu|Equal0~5_combout\);

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

-- Location: LCCOMB_X41_Y8_N0
\gen|cont[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[0]~15_combout\ = \gen|cont\(0) $ (VCC)
-- \gen|cont[0]~16\ = CARRY(\gen|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(0),
	datad => VCC,
	combout => \gen|cont[0]~15_combout\,
	cout => \gen|cont[0]~16\);

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

-- Location: FF_X41_Y8_N1
\gen|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[0]~15_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(0));

-- Location: LCCOMB_X41_Y8_N2
\gen|cont[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[1]~17_combout\ = (\gen|cont\(1) & (!\gen|cont[0]~16\)) # (!\gen|cont\(1) & ((\gen|cont[0]~16\) # (GND)))
-- \gen|cont[1]~18\ = CARRY((!\gen|cont[0]~16\) # (!\gen|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(1),
	datad => VCC,
	cin => \gen|cont[0]~16\,
	combout => \gen|cont[1]~17_combout\,
	cout => \gen|cont[1]~18\);

-- Location: FF_X41_Y8_N3
\gen|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[1]~17_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(1));

-- Location: LCCOMB_X41_Y8_N4
\gen|cont[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[2]~19_combout\ = (\gen|cont\(2) & (\gen|cont[1]~18\ $ (GND))) # (!\gen|cont\(2) & (!\gen|cont[1]~18\ & VCC))
-- \gen|cont[2]~20\ = CARRY((\gen|cont\(2) & !\gen|cont[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(2),
	datad => VCC,
	cin => \gen|cont[1]~18\,
	combout => \gen|cont[2]~19_combout\,
	cout => \gen|cont[2]~20\);

-- Location: FF_X41_Y8_N5
\gen|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[2]~19_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(2));

-- Location: LCCOMB_X41_Y8_N6
\gen|cont[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[3]~21_combout\ = (\gen|cont\(3) & (!\gen|cont[2]~20\)) # (!\gen|cont\(3) & ((\gen|cont[2]~20\) # (GND)))
-- \gen|cont[3]~22\ = CARRY((!\gen|cont[2]~20\) # (!\gen|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(3),
	datad => VCC,
	cin => \gen|cont[2]~20\,
	combout => \gen|cont[3]~21_combout\,
	cout => \gen|cont[3]~22\);

-- Location: FF_X41_Y8_N7
\gen|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[3]~21_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(3));

-- Location: LCCOMB_X41_Y8_N8
\gen|cont[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[4]~23_combout\ = (\gen|cont\(4) & (\gen|cont[3]~22\ $ (GND))) # (!\gen|cont\(4) & (!\gen|cont[3]~22\ & VCC))
-- \gen|cont[4]~24\ = CARRY((\gen|cont\(4) & !\gen|cont[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(4),
	datad => VCC,
	cin => \gen|cont[3]~22\,
	combout => \gen|cont[4]~23_combout\,
	cout => \gen|cont[4]~24\);

-- Location: FF_X41_Y8_N9
\gen|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[4]~23_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(4));

-- Location: LCCOMB_X41_Y8_N10
\gen|cont[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[5]~25_combout\ = (\gen|cont\(5) & (!\gen|cont[4]~24\)) # (!\gen|cont\(5) & ((\gen|cont[4]~24\) # (GND)))
-- \gen|cont[5]~26\ = CARRY((!\gen|cont[4]~24\) # (!\gen|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(5),
	datad => VCC,
	cin => \gen|cont[4]~24\,
	combout => \gen|cont[5]~25_combout\,
	cout => \gen|cont[5]~26\);

-- Location: FF_X41_Y8_N11
\gen|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[5]~25_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(5));

-- Location: LCCOMB_X41_Y8_N12
\gen|cont[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[6]~27_combout\ = (\gen|cont\(6) & (\gen|cont[5]~26\ $ (GND))) # (!\gen|cont\(6) & (!\gen|cont[5]~26\ & VCC))
-- \gen|cont[6]~28\ = CARRY((\gen|cont\(6) & !\gen|cont[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(6),
	datad => VCC,
	cin => \gen|cont[5]~26\,
	combout => \gen|cont[6]~27_combout\,
	cout => \gen|cont[6]~28\);

-- Location: FF_X41_Y8_N13
\gen|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[6]~27_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(6));

-- Location: LCCOMB_X41_Y8_N14
\gen|cont[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[7]~29_combout\ = (\gen|cont\(7) & (!\gen|cont[6]~28\)) # (!\gen|cont\(7) & ((\gen|cont[6]~28\) # (GND)))
-- \gen|cont[7]~30\ = CARRY((!\gen|cont[6]~28\) # (!\gen|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(7),
	datad => VCC,
	cin => \gen|cont[6]~28\,
	combout => \gen|cont[7]~29_combout\,
	cout => \gen|cont[7]~30\);

-- Location: FF_X41_Y8_N15
\gen|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[7]~29_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(7));

-- Location: LCCOMB_X41_Y8_N16
\gen|cont[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[8]~31_combout\ = (\gen|cont\(8) & (\gen|cont[7]~30\ $ (GND))) # (!\gen|cont\(8) & (!\gen|cont[7]~30\ & VCC))
-- \gen|cont[8]~32\ = CARRY((\gen|cont\(8) & !\gen|cont[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(8),
	datad => VCC,
	cin => \gen|cont[7]~30\,
	combout => \gen|cont[8]~31_combout\,
	cout => \gen|cont[8]~32\);

-- Location: FF_X41_Y8_N17
\gen|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[8]~31_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(8));

-- Location: LCCOMB_X41_Y8_N18
\gen|cont[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[9]~33_combout\ = (\gen|cont\(9) & (!\gen|cont[8]~32\)) # (!\gen|cont\(9) & ((\gen|cont[8]~32\) # (GND)))
-- \gen|cont[9]~34\ = CARRY((!\gen|cont[8]~32\) # (!\gen|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(9),
	datad => VCC,
	cin => \gen|cont[8]~32\,
	combout => \gen|cont[9]~33_combout\,
	cout => \gen|cont[9]~34\);

-- Location: FF_X41_Y8_N19
\gen|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[9]~33_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(9));

-- Location: LCCOMB_X41_Y8_N20
\gen|cont[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[10]~35_combout\ = (\gen|cont\(10) & (\gen|cont[9]~34\ $ (GND))) # (!\gen|cont\(10) & (!\gen|cont[9]~34\ & VCC))
-- \gen|cont[10]~36\ = CARRY((\gen|cont\(10) & !\gen|cont[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(10),
	datad => VCC,
	cin => \gen|cont[9]~34\,
	combout => \gen|cont[10]~35_combout\,
	cout => \gen|cont[10]~36\);

-- Location: FF_X41_Y8_N21
\gen|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[10]~35_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(10));

-- Location: LCCOMB_X41_Y8_N22
\gen|cont[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[11]~37_combout\ = (\gen|cont\(11) & (!\gen|cont[10]~36\)) # (!\gen|cont\(11) & ((\gen|cont[10]~36\) # (GND)))
-- \gen|cont[11]~38\ = CARRY((!\gen|cont[10]~36\) # (!\gen|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(11),
	datad => VCC,
	cin => \gen|cont[10]~36\,
	combout => \gen|cont[11]~37_combout\,
	cout => \gen|cont[11]~38\);

-- Location: FF_X41_Y8_N23
\gen|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[11]~37_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(11));

-- Location: LCCOMB_X41_Y8_N24
\gen|cont[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[12]~39_combout\ = (\gen|cont\(12) & (\gen|cont[11]~38\ $ (GND))) # (!\gen|cont\(12) & (!\gen|cont[11]~38\ & VCC))
-- \gen|cont[12]~40\ = CARRY((\gen|cont\(12) & !\gen|cont[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cont\(12),
	datad => VCC,
	cin => \gen|cont[11]~38\,
	combout => \gen|cont[12]~39_combout\,
	cout => \gen|cont[12]~40\);

-- Location: FF_X41_Y8_N25
\gen|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[12]~39_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(12));

-- Location: LCCOMB_X41_Y8_N26
\gen|cont[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[13]~41_combout\ = (\gen|cont\(13) & (!\gen|cont[12]~40\)) # (!\gen|cont\(13) & ((\gen|cont[12]~40\) # (GND)))
-- \gen|cont[13]~42\ = CARRY((!\gen|cont[12]~40\) # (!\gen|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(13),
	datad => VCC,
	cin => \gen|cont[12]~40\,
	combout => \gen|cont[13]~41_combout\,
	cout => \gen|cont[13]~42\);

-- Location: FF_X41_Y8_N27
\gen|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[13]~41_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(13));

-- Location: LCCOMB_X41_Y8_N28
\gen|cont[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cont[14]~43_combout\ = \gen|cont[13]~42\ $ (!\gen|cont\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen|cont\(14),
	cin => \gen|cont[13]~42\,
	combout => \gen|cont[14]~43_combout\);

-- Location: FF_X41_Y8_N29
\gen|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen|cont[14]~43_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cont\(14));

-- Location: LCCOMB_X44_Y8_N20
\dec|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux3~0_combout\ = (\gen|cont\(14)) # (\gen|cont\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen|cont\(14),
	datad => \gen|cont\(13),
	combout => \dec|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y8_N2
\dec|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux1~0_combout\ = (!\gen|cont\(14) & \gen|cont\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(14),
	datac => \gen|cont\(13),
	combout => \dec|Mux1~0_combout\);

-- Location: LCCOMB_X43_Y8_N8
\dec|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux1~1_combout\ = (\gen|cont\(14) & !\gen|cont\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(14),
	datac => \gen|cont\(13),
	combout => \dec|Mux1~1_combout\);

-- Location: LCCOMB_X41_Y8_N30
\dec|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux1~2_combout\ = (\gen|cont\(13) & \gen|cont\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen|cont\(13),
	datad => \gen|cont\(14),
	combout => \dec|Mux1~2_combout\);

-- Location: LCCOMB_X43_Y8_N10
\mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~0_combout\ = (\gen|cont\(14) & ((\alu|F[8]~19_combout\) # ((\gen|cont\(13))))) # (!\gen|cont\(14) & (((!\gen|cont\(13) & \alu|F[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(14),
	datab => \alu|F[8]~19_combout\,
	datac => \gen|cont\(13),
	datad => \alu|F[0]~29_combout\,
	combout => \mux|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y8_N4
\mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~1_combout\ = (\gen|cont\(13) & ((\mux|Mux3~0_combout\ & (\alu|F[12]~8_combout\)) # (!\mux|Mux3~0_combout\ & ((\alu|F[4]~23_combout\))))) # (!\gen|cont\(13) & (((\mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(13),
	datab => \alu|F[12]~8_combout\,
	datac => \alu|F[4]~23_combout\,
	datad => \mux|Mux3~0_combout\,
	combout => \mux|Mux3~1_combout\);

-- Location: LCCOMB_X44_Y8_N10
\mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~0_combout\ = (\gen|cont\(14) & (((\alu|F[10]~10_combout\) # (\gen|cont\(13))))) # (!\gen|cont\(14) & (\alu|F[2]~38_combout\ & ((!\gen|cont\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[2]~38_combout\,
	datab => \alu|F[10]~10_combout\,
	datac => \gen|cont\(14),
	datad => \gen|cont\(13),
	combout => \mux|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y8_N16
\mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~1_combout\ = (\mux|Mux1~0_combout\ & (((\alu|F[14]~6_combout\)) # (!\gen|cont\(13)))) # (!\mux|Mux1~0_combout\ & (\gen|cont\(13) & ((\alu|F[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~0_combout\,
	datab => \gen|cont\(13),
	datac => \alu|F[14]~6_combout\,
	datad => \alu|F[6]~17_combout\,
	combout => \mux|Mux1~1_combout\);

-- Location: LCCOMB_X43_Y8_N18
\alu|F[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|F[3]~43_combout\ = (\FS[3]~input_o\ & (\alu|F[3]~27_combout\)) # (!\FS[3]~input_o\ & ((\alu|ca|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|F[3]~27_combout\,
	datac => \alu|ca|Add0~8_combout\,
	datad => \FS[3]~input_o\,
	combout => \alu|F[3]~43_combout\);

-- Location: LCCOMB_X43_Y8_N20
\mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~0_combout\ = (\gen|cont\(13) & (((\gen|cont\(14)) # (\alu|F[7]~46_combout\)))) # (!\gen|cont\(13) & (\alu|F[3]~43_combout\ & (!\gen|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cont\(13),
	datab => \alu|F[3]~43_combout\,
	datac => \gen|cont\(14),
	datad => \alu|F[7]~46_combout\,
	combout => \mux|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y8_N14
\mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~1_combout\ = (\mux|Mux0~0_combout\ & (((\alu|F[15]~5_combout\) # (!\gen|cont\(14))))) # (!\mux|Mux0~0_combout\ & (\alu|F[11]~9_combout\ & (\gen|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[11]~9_combout\,
	datab => \mux|Mux0~0_combout\,
	datac => \gen|cont\(14),
	datad => \alu|F[15]~5_combout\,
	combout => \mux|Mux0~1_combout\);

-- Location: LCCOMB_X44_Y8_N2
\mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~0_combout\ = (\gen|cont\(13) & (((\gen|cont\(14)) # (\alu|F[5]~33_combout\)))) # (!\gen|cont\(13) & (\alu|F[1]~42_combout\ & (!\gen|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[1]~42_combout\,
	datab => \gen|cont\(13),
	datac => \gen|cont\(14),
	datad => \alu|F[5]~33_combout\,
	combout => \mux|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y8_N4
\mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~1_combout\ = (\mux|Mux2~0_combout\ & ((\alu|F[13]~7_combout\) # ((!\gen|cont\(14))))) # (!\mux|Mux2~0_combout\ & (((\gen|cont\(14) & \alu|F[9]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|F[13]~7_combout\,
	datab => \mux|Mux2~0_combout\,
	datac => \gen|cont\(14),
	datad => \alu|F[9]~34_combout\,
	combout => \mux|Mux2~1_combout\);

-- Location: LCCOMB_X44_Y30_N28
\conv|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux6~0_combout\ = (\mux|Mux3~1_combout\ & ((\mux|Mux0~1_combout\) # (\mux|Mux1~1_combout\ $ (\mux|Mux2~1_combout\)))) # (!\mux|Mux3~1_combout\ & ((\mux|Mux2~1_combout\) # (\mux|Mux1~1_combout\ $ (\mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y30_N6
\conv|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux5~0_combout\ = (\mux|Mux3~1_combout\ & (\mux|Mux0~1_combout\ $ (((\mux|Mux2~1_combout\) # (!\mux|Mux1~1_combout\))))) # (!\mux|Mux3~1_combout\ & (!\mux|Mux1~1_combout\ & (!\mux|Mux0~1_combout\ & \mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y30_N16
\conv|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux4~0_combout\ = (\mux|Mux2~1_combout\ & (\mux|Mux3~1_combout\ & ((!\mux|Mux0~1_combout\)))) # (!\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\ & ((!\mux|Mux0~1_combout\))) # (!\mux|Mux1~1_combout\ & (\mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y30_N14
\conv|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux3~0_combout\ = (\mux|Mux3~1_combout\ & (\mux|Mux1~1_combout\ $ (((!\mux|Mux2~1_combout\))))) # (!\mux|Mux3~1_combout\ & ((\mux|Mux1~1_combout\ & (!\mux|Mux0~1_combout\ & !\mux|Mux2~1_combout\)) # (!\mux|Mux1~1_combout\ & (\mux|Mux0~1_combout\ & 
-- \mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y30_N12
\conv|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux2~0_combout\ = (\mux|Mux1~1_combout\ & (\mux|Mux0~1_combout\ & ((\mux|Mux2~1_combout\) # (!\mux|Mux3~1_combout\)))) # (!\mux|Mux1~1_combout\ & (!\mux|Mux3~1_combout\ & (!\mux|Mux0~1_combout\ & \mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y30_N26
\conv|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux1~0_combout\ = (\mux|Mux0~1_combout\ & ((\mux|Mux3~1_combout\ & ((\mux|Mux2~1_combout\))) # (!\mux|Mux3~1_combout\ & (\mux|Mux1~1_combout\)))) # (!\mux|Mux0~1_combout\ & (\mux|Mux1~1_combout\ & (\mux|Mux3~1_combout\ $ (\mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y30_N4
\conv|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|Mux0~0_combout\ = (\mux|Mux1~1_combout\ & (!\mux|Mux2~1_combout\ & (\mux|Mux3~1_combout\ $ (!\mux|Mux0~1_combout\)))) # (!\mux|Mux1~1_combout\ & (\mux|Mux3~1_combout\ & (\mux|Mux0~1_combout\ $ (!\mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux0~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \conv|Mux0~0_combout\);

ww_C <= \C~output_o\;

ww_N <= \N~output_o\;

ww_Z <= \Z~output_o\;

ww_SSEG_CM(0) <= \SSEG_CM[0]~output_o\;

ww_SSEG_CM(1) <= \SSEG_CM[1]~output_o\;

ww_SSEG_CM(2) <= \SSEG_CM[2]~output_o\;

ww_SSEG_CM(3) <= \SSEG_CM[3]~output_o\;

ww_SSEG_SC(0) <= \SSEG_SC[0]~output_o\;

ww_SSEG_SC(1) <= \SSEG_SC[1]~output_o\;

ww_SSEG_SC(2) <= \SSEG_SC[2]~output_o\;

ww_SSEG_SC(3) <= \SSEG_SC[3]~output_o\;

ww_SSEG_SC(4) <= \SSEG_SC[4]~output_o\;

ww_SSEG_SC(5) <= \SSEG_SC[5]~output_o\;

ww_SSEG_SC(6) <= \SSEG_SC[6]~output_o\;
END structure;


