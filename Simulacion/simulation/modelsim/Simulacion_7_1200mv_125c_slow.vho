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

-- DATE "09/07/2021 12:38:54"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Simulacion IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	w : OUT std_logic;
	x : OUT std_logic;
	y : OUT std_logic;
	z : OUT std_logic
	);
END Simulacion;

-- Design Ports Information
-- w	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Simulacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \w~output_o\ : std_logic;
SIGNAL \x~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \w~0_combout\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \x~1_combout\ : std_logic;
SIGNAL \x~2_combout\ : std_logic;
SIGNAL \ALT_INV_w~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
w <= ww_w;
x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w~0_combout\ <= NOT \w~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\w~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_w~0_combout\,
	devoe => ww_devoe,
	o => \w~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~0_combout\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~1_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~2_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X4_Y11_N24
\w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w~0_combout\ = (\b~input_o\) # (\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \w~0_combout\);

-- Location: LCCOMB_X4_Y11_N10
\x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~0_combout\ = (\b~input_o\ & !\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \x~0_combout\);

-- Location: LCCOMB_X4_Y11_N4
\x~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~1_combout\ = (!\b~input_o\ & \a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \x~1_combout\);

-- Location: LCCOMB_X4_Y11_N30
\x~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~2_combout\ = (\b~input_o\ & \a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \x~2_combout\);

ww_w <= \w~output_o\;

ww_x <= \x~output_o\;

ww_y <= \y~output_o\;

ww_z <= \z~output_o\;
END structure;


