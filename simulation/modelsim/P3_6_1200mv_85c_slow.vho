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

-- DATE "10/12/2021 07:46:38"

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

ENTITY 	P3 IS
    PORT (
	D0 : OUT std_logic;
	sys_clk : IN std_logic;
	sys_rst : IN std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	BCD : OUT std_logic_vector(0 TO 6);
	DIP1 : IN std_logic_vector(3 DOWNTO 0);
	DIP2 : IN std_logic_vector(3 DOWNTO 0);
	DIP3 : IN std_logic_vector(3 DOWNTO 0);
	DIP4 : IN std_logic_vector(3 DOWNTO 0)
	);
END P3;

-- Design Ports Information
-- D0	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_BCD : std_logic_vector(0 TO 6);
SIGNAL ww_DIP1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIP4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \BCD[0]~output_o\ : std_logic;
SIGNAL \BCD[1]~output_o\ : std_logic;
SIGNAL \BCD[2]~output_o\ : std_logic;
SIGNAL \BCD[3]~output_o\ : std_logic;
SIGNAL \BCD[4]~output_o\ : std_logic;
SIGNAL \BCD[5]~output_o\ : std_logic;
SIGNAL \BCD[6]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|contador[0]~30_combout\ : std_logic;
SIGNAL \sys_rst~input_o\ : std_logic;
SIGNAL \inst|contador[0]~31\ : std_logic;
SIGNAL \inst|contador[1]~32_combout\ : std_logic;
SIGNAL \inst|contador[1]~33\ : std_logic;
SIGNAL \inst|contador[2]~34_combout\ : std_logic;
SIGNAL \inst|contador[2]~35\ : std_logic;
SIGNAL \inst|contador[3]~36_combout\ : std_logic;
SIGNAL \inst|contador[3]~37\ : std_logic;
SIGNAL \inst|contador[4]~38_combout\ : std_logic;
SIGNAL \inst|contador[4]~39\ : std_logic;
SIGNAL \inst|contador[5]~40_combout\ : std_logic;
SIGNAL \inst|contador[5]~41\ : std_logic;
SIGNAL \inst|contador[6]~42_combout\ : std_logic;
SIGNAL \inst|contador[6]~43\ : std_logic;
SIGNAL \inst|contador[7]~44_combout\ : std_logic;
SIGNAL \inst|contador[7]~45\ : std_logic;
SIGNAL \inst|contador[8]~46_combout\ : std_logic;
SIGNAL \inst|contador[8]~47\ : std_logic;
SIGNAL \inst|contador[9]~48_combout\ : std_logic;
SIGNAL \inst|contador[9]~49\ : std_logic;
SIGNAL \inst|contador[10]~50_combout\ : std_logic;
SIGNAL \inst|contador[10]~51\ : std_logic;
SIGNAL \inst|contador[11]~52_combout\ : std_logic;
SIGNAL \inst|contador[11]~53\ : std_logic;
SIGNAL \inst|contador[12]~54_combout\ : std_logic;
SIGNAL \inst|contador[12]~55\ : std_logic;
SIGNAL \inst|contador[13]~56_combout\ : std_logic;
SIGNAL \inst|contador[13]~57\ : std_logic;
SIGNAL \inst|contador[14]~58_combout\ : std_logic;
SIGNAL \inst|contador[14]~59\ : std_logic;
SIGNAL \inst|contador[15]~60_combout\ : std_logic;
SIGNAL \inst|contador[15]~61\ : std_logic;
SIGNAL \inst|contador[16]~62_combout\ : std_logic;
SIGNAL \inst|contador[16]~63\ : std_logic;
SIGNAL \inst|contador[17]~64_combout\ : std_logic;
SIGNAL \inst|contador[17]~65\ : std_logic;
SIGNAL \inst|contador[18]~66_combout\ : std_logic;
SIGNAL \inst|contador[18]~67\ : std_logic;
SIGNAL \inst|contador[19]~68_combout\ : std_logic;
SIGNAL \inst|contador[19]~69\ : std_logic;
SIGNAL \inst|contador[20]~70_combout\ : std_logic;
SIGNAL \inst|contador[20]~71\ : std_logic;
SIGNAL \inst|contador[21]~72_combout\ : std_logic;
SIGNAL \inst|contador[21]~73\ : std_logic;
SIGNAL \inst|contador[22]~74_combout\ : std_logic;
SIGNAL \inst|contador[22]~75\ : std_logic;
SIGNAL \inst|contador[23]~76_combout\ : std_logic;
SIGNAL \inst|contador[23]~77\ : std_logic;
SIGNAL \inst|contador[24]~78_combout\ : std_logic;
SIGNAL \inst|contador[24]~79\ : std_logic;
SIGNAL \inst|contador[25]~80_combout\ : std_logic;
SIGNAL \inst|contador[25]~81\ : std_logic;
SIGNAL \inst|contador[26]~82_combout\ : std_logic;
SIGNAL \inst|contador[26]~83\ : std_logic;
SIGNAL \inst|contador[27]~84_combout\ : std_logic;
SIGNAL \inst|contador[27]~85\ : std_logic;
SIGNAL \inst|contador[28]~86_combout\ : std_logic;
SIGNAL \inst|contador[28]~87\ : std_logic;
SIGNAL \inst|contador[29]~88_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \DIP4[3]~input_o\ : std_logic;
SIGNAL \DIP1[3]~input_o\ : std_logic;
SIGNAL \DIP2[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \DIP3[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \DIP3[2]~input_o\ : std_logic;
SIGNAL \DIP1[2]~input_o\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \DIP4[2]~input_o\ : std_logic;
SIGNAL \DIP2[2]~input_o\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \DIP3[1]~input_o\ : std_logic;
SIGNAL \DIP4[1]~input_o\ : std_logic;
SIGNAL \DIP1[1]~input_o\ : std_logic;
SIGNAL \DIP2[1]~input_o\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \DIP3[0]~input_o\ : std_logic;
SIGNAL \DIP1[0]~input_o\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \DIP4[0]~input_o\ : std_logic;
SIGNAL \DIP2[0]~input_o\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|contador\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \ALT_INV_sys_rst~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D0 <= ww_D0;
ww_sys_clk <= sys_clk;
ww_sys_rst <= sys_rst;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
BCD <= ww_BCD;
ww_DIP1 <= DIP1;
ww_DIP2 <= DIP2;
ww_DIP3 <= DIP3;
ww_DIP4 <= DIP4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\ALT_INV_sys_rst~input_o\ <= NOT \sys_rst~input_o\;
\inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst2|Mux5~0_combout\;
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y0_N23
\D0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\D1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\D3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\BCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \BCD[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\BCD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \BCD[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\BCD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \BCD[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\BCD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \BCD[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\BCD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \BCD[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\BCD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \BCD[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\BCD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \BCD[6]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G18
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y5_N2
\inst|contador[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[0]~30_combout\ = \inst|contador\(0) $ (VCC)
-- \inst|contador[0]~31\ = CARRY(\inst|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(0),
	datad => VCC,
	combout => \inst|contador[0]~30_combout\,
	cout => \inst|contador[0]~31\);

-- Location: IOIBUF_X0_Y16_N8
\sys_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst,
	o => \sys_rst~input_o\);

-- Location: FF_X39_Y5_N3
\inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[0]~30_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(0));

-- Location: LCCOMB_X39_Y5_N4
\inst|contador[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[1]~32_combout\ = (\inst|contador\(1) & (!\inst|contador[0]~31\)) # (!\inst|contador\(1) & ((\inst|contador[0]~31\) # (GND)))
-- \inst|contador[1]~33\ = CARRY((!\inst|contador[0]~31\) # (!\inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(1),
	datad => VCC,
	cin => \inst|contador[0]~31\,
	combout => \inst|contador[1]~32_combout\,
	cout => \inst|contador[1]~33\);

-- Location: FF_X39_Y5_N5
\inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[1]~32_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(1));

-- Location: LCCOMB_X39_Y5_N6
\inst|contador[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[2]~34_combout\ = (\inst|contador\(2) & (\inst|contador[1]~33\ $ (GND))) # (!\inst|contador\(2) & (!\inst|contador[1]~33\ & VCC))
-- \inst|contador[2]~35\ = CARRY((\inst|contador\(2) & !\inst|contador[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(2),
	datad => VCC,
	cin => \inst|contador[1]~33\,
	combout => \inst|contador[2]~34_combout\,
	cout => \inst|contador[2]~35\);

-- Location: FF_X39_Y5_N7
\inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[2]~34_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(2));

-- Location: LCCOMB_X39_Y5_N8
\inst|contador[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[3]~36_combout\ = (\inst|contador\(3) & (!\inst|contador[2]~35\)) # (!\inst|contador\(3) & ((\inst|contador[2]~35\) # (GND)))
-- \inst|contador[3]~37\ = CARRY((!\inst|contador[2]~35\) # (!\inst|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(3),
	datad => VCC,
	cin => \inst|contador[2]~35\,
	combout => \inst|contador[3]~36_combout\,
	cout => \inst|contador[3]~37\);

-- Location: FF_X39_Y5_N9
\inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[3]~36_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(3));

-- Location: LCCOMB_X39_Y5_N10
\inst|contador[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[4]~38_combout\ = (\inst|contador\(4) & (\inst|contador[3]~37\ $ (GND))) # (!\inst|contador\(4) & (!\inst|contador[3]~37\ & VCC))
-- \inst|contador[4]~39\ = CARRY((\inst|contador\(4) & !\inst|contador[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(4),
	datad => VCC,
	cin => \inst|contador[3]~37\,
	combout => \inst|contador[4]~38_combout\,
	cout => \inst|contador[4]~39\);

-- Location: FF_X39_Y5_N11
\inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[4]~38_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(4));

-- Location: LCCOMB_X39_Y5_N12
\inst|contador[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[5]~40_combout\ = (\inst|contador\(5) & (!\inst|contador[4]~39\)) # (!\inst|contador\(5) & ((\inst|contador[4]~39\) # (GND)))
-- \inst|contador[5]~41\ = CARRY((!\inst|contador[4]~39\) # (!\inst|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datad => VCC,
	cin => \inst|contador[4]~39\,
	combout => \inst|contador[5]~40_combout\,
	cout => \inst|contador[5]~41\);

-- Location: FF_X39_Y5_N13
\inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[5]~40_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(5));

-- Location: LCCOMB_X39_Y5_N14
\inst|contador[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[6]~42_combout\ = (\inst|contador\(6) & (\inst|contador[5]~41\ $ (GND))) # (!\inst|contador\(6) & (!\inst|contador[5]~41\ & VCC))
-- \inst|contador[6]~43\ = CARRY((\inst|contador\(6) & !\inst|contador[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(6),
	datad => VCC,
	cin => \inst|contador[5]~41\,
	combout => \inst|contador[6]~42_combout\,
	cout => \inst|contador[6]~43\);

-- Location: FF_X39_Y5_N15
\inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[6]~42_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(6));

-- Location: LCCOMB_X39_Y5_N16
\inst|contador[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[7]~44_combout\ = (\inst|contador\(7) & (!\inst|contador[6]~43\)) # (!\inst|contador\(7) & ((\inst|contador[6]~43\) # (GND)))
-- \inst|contador[7]~45\ = CARRY((!\inst|contador[6]~43\) # (!\inst|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(7),
	datad => VCC,
	cin => \inst|contador[6]~43\,
	combout => \inst|contador[7]~44_combout\,
	cout => \inst|contador[7]~45\);

-- Location: FF_X39_Y5_N17
\inst|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[7]~44_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(7));

-- Location: LCCOMB_X39_Y5_N18
\inst|contador[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[8]~46_combout\ = (\inst|contador\(8) & (\inst|contador[7]~45\ $ (GND))) # (!\inst|contador\(8) & (!\inst|contador[7]~45\ & VCC))
-- \inst|contador[8]~47\ = CARRY((\inst|contador\(8) & !\inst|contador[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(8),
	datad => VCC,
	cin => \inst|contador[7]~45\,
	combout => \inst|contador[8]~46_combout\,
	cout => \inst|contador[8]~47\);

-- Location: FF_X39_Y5_N19
\inst|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[8]~46_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(8));

-- Location: LCCOMB_X39_Y5_N20
\inst|contador[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[9]~48_combout\ = (\inst|contador\(9) & (!\inst|contador[8]~47\)) # (!\inst|contador\(9) & ((\inst|contador[8]~47\) # (GND)))
-- \inst|contador[9]~49\ = CARRY((!\inst|contador[8]~47\) # (!\inst|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(9),
	datad => VCC,
	cin => \inst|contador[8]~47\,
	combout => \inst|contador[9]~48_combout\,
	cout => \inst|contador[9]~49\);

-- Location: FF_X39_Y5_N21
\inst|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[9]~48_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(9));

-- Location: LCCOMB_X39_Y5_N22
\inst|contador[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[10]~50_combout\ = (\inst|contador\(10) & (\inst|contador[9]~49\ $ (GND))) # (!\inst|contador\(10) & (!\inst|contador[9]~49\ & VCC))
-- \inst|contador[10]~51\ = CARRY((\inst|contador\(10) & !\inst|contador[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(10),
	datad => VCC,
	cin => \inst|contador[9]~49\,
	combout => \inst|contador[10]~50_combout\,
	cout => \inst|contador[10]~51\);

-- Location: FF_X39_Y5_N23
\inst|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[10]~50_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(10));

-- Location: LCCOMB_X39_Y5_N24
\inst|contador[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[11]~52_combout\ = (\inst|contador\(11) & (!\inst|contador[10]~51\)) # (!\inst|contador\(11) & ((\inst|contador[10]~51\) # (GND)))
-- \inst|contador[11]~53\ = CARRY((!\inst|contador[10]~51\) # (!\inst|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(11),
	datad => VCC,
	cin => \inst|contador[10]~51\,
	combout => \inst|contador[11]~52_combout\,
	cout => \inst|contador[11]~53\);

-- Location: FF_X39_Y5_N25
\inst|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[11]~52_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(11));

-- Location: LCCOMB_X39_Y5_N26
\inst|contador[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[12]~54_combout\ = (\inst|contador\(12) & (\inst|contador[11]~53\ $ (GND))) # (!\inst|contador\(12) & (!\inst|contador[11]~53\ & VCC))
-- \inst|contador[12]~55\ = CARRY((\inst|contador\(12) & !\inst|contador[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(12),
	datad => VCC,
	cin => \inst|contador[11]~53\,
	combout => \inst|contador[12]~54_combout\,
	cout => \inst|contador[12]~55\);

-- Location: FF_X39_Y5_N27
\inst|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[12]~54_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(12));

-- Location: LCCOMB_X39_Y5_N28
\inst|contador[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[13]~56_combout\ = (\inst|contador\(13) & (!\inst|contador[12]~55\)) # (!\inst|contador\(13) & ((\inst|contador[12]~55\) # (GND)))
-- \inst|contador[13]~57\ = CARRY((!\inst|contador[12]~55\) # (!\inst|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(13),
	datad => VCC,
	cin => \inst|contador[12]~55\,
	combout => \inst|contador[13]~56_combout\,
	cout => \inst|contador[13]~57\);

-- Location: FF_X39_Y5_N29
\inst|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[13]~56_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(13));

-- Location: LCCOMB_X39_Y5_N30
\inst|contador[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[14]~58_combout\ = (\inst|contador\(14) & (\inst|contador[13]~57\ $ (GND))) # (!\inst|contador\(14) & (!\inst|contador[13]~57\ & VCC))
-- \inst|contador[14]~59\ = CARRY((\inst|contador\(14) & !\inst|contador[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(14),
	datad => VCC,
	cin => \inst|contador[13]~57\,
	combout => \inst|contador[14]~58_combout\,
	cout => \inst|contador[14]~59\);

-- Location: FF_X39_Y5_N31
\inst|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[14]~58_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(14));

-- Location: LCCOMB_X39_Y4_N0
\inst|contador[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[15]~60_combout\ = (\inst|contador\(15) & (!\inst|contador[14]~59\)) # (!\inst|contador\(15) & ((\inst|contador[14]~59\) # (GND)))
-- \inst|contador[15]~61\ = CARRY((!\inst|contador[14]~59\) # (!\inst|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(15),
	datad => VCC,
	cin => \inst|contador[14]~59\,
	combout => \inst|contador[15]~60_combout\,
	cout => \inst|contador[15]~61\);

-- Location: FF_X39_Y4_N1
\inst|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[15]~60_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(15));

-- Location: LCCOMB_X39_Y4_N2
\inst|contador[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[16]~62_combout\ = (\inst|contador\(16) & (\inst|contador[15]~61\ $ (GND))) # (!\inst|contador\(16) & (!\inst|contador[15]~61\ & VCC))
-- \inst|contador[16]~63\ = CARRY((\inst|contador\(16) & !\inst|contador[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(16),
	datad => VCC,
	cin => \inst|contador[15]~61\,
	combout => \inst|contador[16]~62_combout\,
	cout => \inst|contador[16]~63\);

-- Location: FF_X39_Y4_N3
\inst|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[16]~62_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(16));

-- Location: LCCOMB_X39_Y4_N4
\inst|contador[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[17]~64_combout\ = (\inst|contador\(17) & (!\inst|contador[16]~63\)) # (!\inst|contador\(17) & ((\inst|contador[16]~63\) # (GND)))
-- \inst|contador[17]~65\ = CARRY((!\inst|contador[16]~63\) # (!\inst|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(17),
	datad => VCC,
	cin => \inst|contador[16]~63\,
	combout => \inst|contador[17]~64_combout\,
	cout => \inst|contador[17]~65\);

-- Location: FF_X39_Y4_N5
\inst|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[17]~64_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(17));

-- Location: LCCOMB_X39_Y4_N6
\inst|contador[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[18]~66_combout\ = (\inst|contador\(18) & (\inst|contador[17]~65\ $ (GND))) # (!\inst|contador\(18) & (!\inst|contador[17]~65\ & VCC))
-- \inst|contador[18]~67\ = CARRY((\inst|contador\(18) & !\inst|contador[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(18),
	datad => VCC,
	cin => \inst|contador[17]~65\,
	combout => \inst|contador[18]~66_combout\,
	cout => \inst|contador[18]~67\);

-- Location: FF_X39_Y4_N7
\inst|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[18]~66_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(18));

-- Location: LCCOMB_X39_Y4_N8
\inst|contador[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[19]~68_combout\ = (\inst|contador\(19) & (!\inst|contador[18]~67\)) # (!\inst|contador\(19) & ((\inst|contador[18]~67\) # (GND)))
-- \inst|contador[19]~69\ = CARRY((!\inst|contador[18]~67\) # (!\inst|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(19),
	datad => VCC,
	cin => \inst|contador[18]~67\,
	combout => \inst|contador[19]~68_combout\,
	cout => \inst|contador[19]~69\);

-- Location: FF_X39_Y4_N9
\inst|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[19]~68_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(19));

-- Location: LCCOMB_X39_Y4_N10
\inst|contador[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[20]~70_combout\ = (\inst|contador\(20) & (\inst|contador[19]~69\ $ (GND))) # (!\inst|contador\(20) & (!\inst|contador[19]~69\ & VCC))
-- \inst|contador[20]~71\ = CARRY((\inst|contador\(20) & !\inst|contador[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(20),
	datad => VCC,
	cin => \inst|contador[19]~69\,
	combout => \inst|contador[20]~70_combout\,
	cout => \inst|contador[20]~71\);

-- Location: FF_X39_Y4_N11
\inst|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[20]~70_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(20));

-- Location: LCCOMB_X39_Y4_N12
\inst|contador[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[21]~72_combout\ = (\inst|contador\(21) & (!\inst|contador[20]~71\)) # (!\inst|contador\(21) & ((\inst|contador[20]~71\) # (GND)))
-- \inst|contador[21]~73\ = CARRY((!\inst|contador[20]~71\) # (!\inst|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(21),
	datad => VCC,
	cin => \inst|contador[20]~71\,
	combout => \inst|contador[21]~72_combout\,
	cout => \inst|contador[21]~73\);

-- Location: FF_X39_Y4_N13
\inst|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[21]~72_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(21));

-- Location: LCCOMB_X39_Y4_N14
\inst|contador[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[22]~74_combout\ = (\inst|contador\(22) & (\inst|contador[21]~73\ $ (GND))) # (!\inst|contador\(22) & (!\inst|contador[21]~73\ & VCC))
-- \inst|contador[22]~75\ = CARRY((\inst|contador\(22) & !\inst|contador[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(22),
	datad => VCC,
	cin => \inst|contador[21]~73\,
	combout => \inst|contador[22]~74_combout\,
	cout => \inst|contador[22]~75\);

-- Location: FF_X39_Y4_N15
\inst|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[22]~74_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(22));

-- Location: LCCOMB_X39_Y4_N16
\inst|contador[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[23]~76_combout\ = (\inst|contador\(23) & (!\inst|contador[22]~75\)) # (!\inst|contador\(23) & ((\inst|contador[22]~75\) # (GND)))
-- \inst|contador[23]~77\ = CARRY((!\inst|contador[22]~75\) # (!\inst|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(23),
	datad => VCC,
	cin => \inst|contador[22]~75\,
	combout => \inst|contador[23]~76_combout\,
	cout => \inst|contador[23]~77\);

-- Location: FF_X39_Y4_N17
\inst|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[23]~76_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(23));

-- Location: LCCOMB_X39_Y4_N18
\inst|contador[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[24]~78_combout\ = (\inst|contador\(24) & (\inst|contador[23]~77\ $ (GND))) # (!\inst|contador\(24) & (!\inst|contador[23]~77\ & VCC))
-- \inst|contador[24]~79\ = CARRY((\inst|contador\(24) & !\inst|contador[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(24),
	datad => VCC,
	cin => \inst|contador[23]~77\,
	combout => \inst|contador[24]~78_combout\,
	cout => \inst|contador[24]~79\);

-- Location: FF_X39_Y4_N19
\inst|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[24]~78_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(24));

-- Location: LCCOMB_X39_Y4_N20
\inst|contador[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[25]~80_combout\ = (\inst|contador\(25) & (!\inst|contador[24]~79\)) # (!\inst|contador\(25) & ((\inst|contador[24]~79\) # (GND)))
-- \inst|contador[25]~81\ = CARRY((!\inst|contador[24]~79\) # (!\inst|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(25),
	datad => VCC,
	cin => \inst|contador[24]~79\,
	combout => \inst|contador[25]~80_combout\,
	cout => \inst|contador[25]~81\);

-- Location: FF_X39_Y4_N21
\inst|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[25]~80_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(25));

-- Location: LCCOMB_X39_Y4_N22
\inst|contador[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[26]~82_combout\ = (\inst|contador\(26) & (\inst|contador[25]~81\ $ (GND))) # (!\inst|contador\(26) & (!\inst|contador[25]~81\ & VCC))
-- \inst|contador[26]~83\ = CARRY((\inst|contador\(26) & !\inst|contador[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(26),
	datad => VCC,
	cin => \inst|contador[25]~81\,
	combout => \inst|contador[26]~82_combout\,
	cout => \inst|contador[26]~83\);

-- Location: FF_X39_Y4_N23
\inst|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[26]~82_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(26));

-- Location: LCCOMB_X39_Y4_N24
\inst|contador[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[27]~84_combout\ = (\inst|contador\(27) & (!\inst|contador[26]~83\)) # (!\inst|contador\(27) & ((\inst|contador[26]~83\) # (GND)))
-- \inst|contador[27]~85\ = CARRY((!\inst|contador[26]~83\) # (!\inst|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(27),
	datad => VCC,
	cin => \inst|contador[26]~83\,
	combout => \inst|contador[27]~84_combout\,
	cout => \inst|contador[27]~85\);

-- Location: FF_X39_Y4_N25
\inst|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[27]~84_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(27));

-- Location: LCCOMB_X39_Y4_N26
\inst|contador[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[28]~86_combout\ = (\inst|contador\(28) & (\inst|contador[27]~85\ $ (GND))) # (!\inst|contador\(28) & (!\inst|contador[27]~85\ & VCC))
-- \inst|contador[28]~87\ = CARRY((\inst|contador\(28) & !\inst|contador[27]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datad => VCC,
	cin => \inst|contador[27]~85\,
	combout => \inst|contador[28]~86_combout\,
	cout => \inst|contador[28]~87\);

-- Location: FF_X39_Y4_N27
\inst|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[28]~86_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(28));

-- Location: LCCOMB_X39_Y4_N28
\inst|contador[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[29]~88_combout\ = \inst|contador[28]~87\ $ (\inst|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(29),
	cin => \inst|contador[28]~87\,
	combout => \inst|contador[29]~88_combout\);

-- Location: FF_X39_Y4_N29
\inst|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \inst|contador[29]~88_combout\,
	sclr => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(29));

-- Location: LCCOMB_X46_Y4_N20
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|contador\(28)) # (\inst|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datac => \inst|contador\(29),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y4_N28
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|contador\(28) & !\inst|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(28),
	datad => \inst|contador\(29),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y4_N30
\inst3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (!\inst|contador\(28) & \inst|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(28),
	datad => \inst|contador\(29),
	combout => \inst3|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y4_N24
\inst3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = (\inst|contador\(28) & \inst|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(28),
	datad => \inst|contador\(29),
	combout => \inst3|Mux2~2_combout\);

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

-- Location: LCCOMB_X46_Y4_N8
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst|contador\(28) & (((\inst|contador\(29)) # (\DIP2[3]~input_o\)))) # (!\inst|contador\(28) & (\DIP1[3]~input_o\ & (!\inst|contador\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datab => \DIP1[3]~input_o\,
	datac => \inst|contador\(29),
	datad => \DIP2[3]~input_o\,
	combout => \inst1|Mux0~0_combout\);

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

-- Location: LCCOMB_X46_Y4_N6
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst|contador\(29) & ((\inst1|Mux0~0_combout\ & (\DIP4[3]~input_o\)) # (!\inst1|Mux0~0_combout\ & ((\DIP3[3]~input_o\))))) # (!\inst|contador\(29) & (((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(29),
	datab => \DIP4[3]~input_o\,
	datac => \inst1|Mux0~0_combout\,
	datad => \DIP3[3]~input_o\,
	combout => \inst1|Mux0~1_combout\);

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

-- Location: LCCOMB_X46_Y4_N0
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst|contador\(28) & (((\inst|contador\(29))))) # (!\inst|contador\(28) & ((\inst|contador\(29) & (\DIP3[2]~input_o\)) # (!\inst|contador\(29) & ((\DIP1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datab => \DIP3[2]~input_o\,
	datac => \inst|contador\(29),
	datad => \DIP1[2]~input_o\,
	combout => \inst1|Mux1~0_combout\);

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

-- Location: LCCOMB_X46_Y4_N2
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst|contador\(28) & ((\inst1|Mux1~0_combout\ & (\DIP4[2]~input_o\)) # (!\inst1|Mux1~0_combout\ & ((\DIP2[2]~input_o\))))) # (!\inst|contador\(28) & (\inst1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datab => \inst1|Mux1~0_combout\,
	datac => \DIP4[2]~input_o\,
	datad => \DIP2[2]~input_o\,
	combout => \inst1|Mux1~1_combout\);

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

-- Location: LCCOMB_X46_Y4_N10
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst|contador\(28) & (((\inst|contador\(29)) # (\DIP2[1]~input_o\)))) # (!\inst|contador\(28) & (\DIP1[1]~input_o\ & (!\inst|contador\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datab => \DIP1[1]~input_o\,
	datac => \inst|contador\(29),
	datad => \DIP2[1]~input_o\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y4_N30
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst|contador\(29) & ((\inst1|Mux2~0_combout\ & ((\DIP4[1]~input_o\))) # (!\inst1|Mux2~0_combout\ & (\DIP3[1]~input_o\)))) # (!\inst|contador\(29) & (((\inst1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP3[1]~input_o\,
	datab => \inst|contador\(29),
	datac => \DIP4[1]~input_o\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst1|Mux2~1_combout\);

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

-- Location: LCCOMB_X46_Y4_N30
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst|contador\(28) & (((\inst|contador\(29))))) # (!\inst|contador\(28) & ((\inst|contador\(29) & (\DIP3[0]~input_o\)) # (!\inst|contador\(29) & ((\DIP1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(28),
	datab => \DIP3[0]~input_o\,
	datac => \inst|contador\(29),
	datad => \DIP1[0]~input_o\,
	combout => \inst1|Mux3~0_combout\);

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

-- Location: LCCOMB_X46_Y4_N28
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|Mux3~0_combout\ & ((\DIP4[0]~input_o\) # ((!\inst|contador\(28))))) # (!\inst1|Mux3~0_combout\ & (((\inst|contador\(28) & \DIP2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \DIP4[0]~input_o\,
	datac => \inst|contador\(28),
	datad => \DIP2[0]~input_o\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y4_N16
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst1|Mux0~1_combout\ & (\inst1|Mux3~1_combout\ & (\inst1|Mux1~1_combout\ $ (\inst1|Mux2~1_combout\)))) # (!\inst1|Mux0~1_combout\ & (!\inst1|Mux2~1_combout\ & (\inst1|Mux1~1_combout\ $ (\inst1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y4_N14
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst1|Mux0~1_combout\ & ((\inst1|Mux3~1_combout\ & ((\inst1|Mux2~1_combout\))) # (!\inst1|Mux3~1_combout\ & (\inst1|Mux1~1_combout\)))) # (!\inst1|Mux0~1_combout\ & (\inst1|Mux1~1_combout\ & (\inst1|Mux2~1_combout\ $ 
-- (\inst1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y4_N12
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst1|Mux0~1_combout\ & (\inst1|Mux1~1_combout\ & ((\inst1|Mux2~1_combout\) # (!\inst1|Mux3~1_combout\)))) # (!\inst1|Mux0~1_combout\ & (!\inst1|Mux1~1_combout\ & (\inst1|Mux2~1_combout\ & !\inst1|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y4_N26
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst1|Mux3~1_combout\ & ((\inst1|Mux1~1_combout\ $ (!\inst1|Mux2~1_combout\)))) # (!\inst1|Mux3~1_combout\ & ((\inst1|Mux0~1_combout\ & (!\inst1|Mux1~1_combout\ & \inst1|Mux2~1_combout\)) # (!\inst1|Mux0~1_combout\ & 
-- (\inst1|Mux1~1_combout\ & !\inst1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y4_N4
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst1|Mux2~1_combout\ & (!\inst1|Mux0~1_combout\ & ((\inst1|Mux3~1_combout\)))) # (!\inst1|Mux2~1_combout\ & ((\inst1|Mux1~1_combout\ & (!\inst1|Mux0~1_combout\)) # (!\inst1|Mux1~1_combout\ & ((\inst1|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y4_N22
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst1|Mux1~1_combout\ & (\inst1|Mux3~1_combout\ & (\inst1|Mux0~1_combout\ $ (\inst1|Mux2~1_combout\)))) # (!\inst1|Mux1~1_combout\ & (!\inst1|Mux0~1_combout\ & ((\inst1|Mux2~1_combout\) # (\inst1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y4_N24
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst1|Mux3~1_combout\ & ((\inst1|Mux0~1_combout\) # (\inst1|Mux1~1_combout\ $ (\inst1|Mux2~1_combout\)))) # (!\inst1|Mux3~1_combout\ & ((\inst1|Mux2~1_combout\) # (\inst1|Mux0~1_combout\ $ (\inst1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst2|Mux6~0_combout\);

ww_D0 <= \D0~output_o\;

ww_D1 <= \D1~output_o\;

ww_D2 <= \D2~output_o\;

ww_D3 <= \D3~output_o\;

ww_BCD(0) <= \BCD[0]~output_o\;

ww_BCD(1) <= \BCD[1]~output_o\;

ww_BCD(2) <= \BCD[2]~output_o\;

ww_BCD(3) <= \BCD[3]~output_o\;

ww_BCD(4) <= \BCD[4]~output_o\;

ww_BCD(5) <= \BCD[5]~output_o\;

ww_BCD(6) <= \BCD[6]~output_o\;
END structure;


