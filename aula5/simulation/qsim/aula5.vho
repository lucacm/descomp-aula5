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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/29/2022 17:02:57"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
	);
END aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \DECODER|Saida~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUXJMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\REG_RET|ALT_INV_DOUT\(8) <= NOT \REG_RET|DOUT\(8);
\REG_RET|ALT_INV_DOUT\(7) <= NOT \REG_RET|DOUT\(7);
\REG_RET|ALT_INV_DOUT\(6) <= NOT \REG_RET|DOUT\(6);
\REG_RET|ALT_INV_DOUT\(5) <= NOT \REG_RET|DOUT\(5);
\MUXJMP|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUXJMP|saida_MUX[4]~4_combout\;
\REG_RET|ALT_INV_DOUT\(4) <= NOT \REG_RET|DOUT\(4);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\REG_RET|ALT_INV_DOUT\(3) <= NOT \REG_RET|DOUT\(3);
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REG_RET|ALT_INV_DOUT\(2) <= NOT \REG_RET|DOUT\(2);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\REG_RET|ALT_INV_DOUT\(1) <= NOT \REG_RET|DOUT\(1);
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\PC|ALT_INV_DOUT[0]~1_combout\ <= NOT \PC|DOUT[0]~1_combout\;
\PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \PC|DOUT[0]~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REG_RET|ALT_INV_DOUT\(0) <= NOT \REG_RET|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;

-- Location: IOOBUF_X0_Y19_N56
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y19_N5
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y19_N22
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y18_N62
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y18_N45
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y18_N96
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y21_N56
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X0_Y20_N39
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: FF_X2_Y19_N44
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X1_Y19_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X2_Y19_N49
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: FF_X2_Y19_N1
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X1_Y19_N21
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(2) $ (\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ 
-- (\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X1_Y19_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X1_Y19_N37
\REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(2));

-- Location: LABCELL_X2_Y19_N0
\MUXJMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(2) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(2) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ 
-- & ( (!\PC|DOUT[0]~1_combout\ & ((\incrementaPC|Add0~9_sumout\))) # (\PC|DOUT[0]~1_combout\ & (\ROM1|memROM~7_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ & ( (!\PC|DOUT[0]~1_combout\ & \incrementaPC|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000100011011101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(2),
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[0]~0_combout\,
	combout => \MUXJMP|saida_MUX[2]~2_combout\);

-- Location: FF_X2_Y19_N2
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X1_Y19_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: LABCELL_X2_Y19_N30
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & 
-- !\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X2_Y19_N54
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011011001100101010101100110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X2_Y19_N7
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X4_Y19_N12
\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \FLAG|DOUT~q\ & ( \PC|DOUT\(0) ) ) # ( !\FLAG|DOUT~q\ & ( \PC|DOUT\(0) & ( (\PC|DOUT\(1) & (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(3) $ (!\PC|DOUT\(2))))) ) ) ) # ( \FLAG|DOUT~q\ & ( !\PC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000101001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \FLAG|DOUT~0_combout\);

-- Location: FF_X4_Y19_N13
\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

-- Location: LABCELL_X2_Y19_N12
\MUXJMP|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & !\FLAG|DOUT~q\))) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & 
-- (\ROM1|memROM~4_combout\ & \FLAG|DOUT~q\))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & (!\FLAG|DOUT~q\ & (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000000000000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \FLAG|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \MUXJMP|saida_MUX[4]~4_combout\);

-- Location: FF_X1_Y19_N43
\REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(4));

-- Location: LABCELL_X1_Y19_N24
\MUXJMP|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[4]~5_combout\ = ( \REG_RET|DOUT\(4) & ( ((\incrementaPC|Add0~17_sumout\ & !\MUXJMP|saida_MUX[4]~4_combout\)) # (\PC|DOUT[0]~0_combout\) ) ) # ( !\REG_RET|DOUT\(4) & ( (\incrementaPC|Add0~17_sumout\ & !\MUXJMP|saida_MUX[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datac => \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \REG_RET|ALT_INV_DOUT\(4),
	combout => \MUXJMP|saida_MUX[4]~5_combout\);

-- Location: FF_X1_Y19_N26
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X1_Y19_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X1_Y19_N46
\REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(5));

-- Location: LABCELL_X1_Y19_N27
\MUXJMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[5]~6_combout\ = ( \MUXJMP|saida_MUX[4]~4_combout\ & ( (\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(5)) ) ) # ( !\MUXJMP|saida_MUX[4]~4_combout\ & ( ((\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(5))) # (\incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUXJMP|saida_MUX[5]~6_combout\);

-- Location: FF_X1_Y19_N29
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X1_Y19_N50
\REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(6));

-- Location: LABCELL_X1_Y19_N18
\MUXJMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[6]~7_combout\ = ( \MUXJMP|saida_MUX[4]~4_combout\ & ( (\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(6)) ) ) # ( !\MUXJMP|saida_MUX[4]~4_combout\ & ( ((\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(6))) # (\incrementaPC|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUXJMP|saida_MUX[6]~7_combout\);

-- Location: FF_X1_Y19_N20
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X1_Y19_N52
\REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(7));

-- Location: LABCELL_X1_Y19_N3
\MUXJMP|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[7]~8_combout\ = ( \MUXJMP|saida_MUX[4]~4_combout\ & ( (\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(7)) ) ) # ( !\MUXJMP|saida_MUX[4]~4_combout\ & ( ((\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(7))) # (\incrementaPC|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~29_sumout\,
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(7),
	dataf => \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUXJMP|saida_MUX[7]~8_combout\);

-- Location: FF_X1_Y19_N5
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X1_Y19_N56
\REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(8));

-- Location: LABCELL_X1_Y19_N0
\MUXJMP|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[8]~9_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\MUXJMP|saida_MUX[4]~4_combout\) # ((\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(8))) ) ) # ( !\incrementaPC|Add0~33_sumout\ & ( (\PC|DOUT[0]~0_combout\ & \REG_RET|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(8),
	datad => \MUXJMP|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUXJMP|saida_MUX[8]~9_combout\);

-- Location: FF_X1_Y19_N2
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X1_Y19_N28
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X1_Y19_N6
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( !\PC|DOUT\(4) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(8) & !\PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X2_Y19_N36
\PC|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \FLAG|DOUT~q\))) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( 
-- (\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\FLAG|DOUT~q\))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & 
-- !\FLAG|DOUT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000010000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \FLAG|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \PC|DOUT[0]~1_combout\);

-- Location: MLABCELL_X4_Y19_N6
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT\(3) & ( (\PC|DOUT\(0) & !\PC|DOUT\(1)) ) ) ) # ( \PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( (\PC|DOUT\(0) & !\PC|DOUT\(1)) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( !\PC|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X1_Y19_N40
\REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(3));

-- Location: LABCELL_X2_Y19_N6
\MUXJMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[3]~3_combout\ = ( \ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(3) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(3) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ 
-- & ( (!\PC|DOUT[0]~1_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\PC|DOUT[0]~1_combout\ & (\ROM1|memROM~8_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ & ( (!\PC|DOUT[0]~1_combout\ & \incrementaPC|Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000100011011101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(3),
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[0]~0_combout\,
	combout => \MUXJMP|saida_MUX[3]~3_combout\);

-- Location: FF_X2_Y19_N8
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N33
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ $ (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X1_Y19_N12
\DECODER|Saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Saida~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER|Saida~0_combout\);

-- Location: FF_X1_Y19_N35
\REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(1));

-- Location: LABCELL_X2_Y19_N18
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT[2]~DUPLICATE_q\) # 
-- (\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X2_Y19_N48
\MUXJMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(1) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \PC|DOUT[0]~0_combout\ & ( \REG_RET|DOUT\(1) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ 
-- & ( (!\PC|DOUT[0]~1_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\PC|DOUT[0]~1_combout\ & (\ROM1|memROM~6_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\PC|DOUT[0]~0_combout\ & ( (!\PC|DOUT[0]~1_combout\ & \incrementaPC|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000111100111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_RET|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT[0]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[0]~0_combout\,
	combout => \MUXJMP|saida_MUX[1]~1_combout\);

-- Location: FF_X2_Y19_N50
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N21
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001010010110100000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X2_Y19_N24
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & !\FLAG|DOUT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \FLAG|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \PC|DOUT[0]~0_combout\);

-- Location: LABCELL_X2_Y19_N57
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & 
-- \PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X1_Y19_N31
\REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECODER|Saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(0));

-- Location: LABCELL_X2_Y19_N42
\MUXJMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJMP|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \REG_RET|DOUT\(0) & ( ((!\PC|DOUT[0]~1_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\PC|DOUT[0]~1_combout\ & (\ROM1|memROM~5_combout\))) # (\PC|DOUT[0]~0_combout\) ) ) ) # ( 
-- !\ROM1|memROM~0_combout\ & ( \REG_RET|DOUT\(0) & ( ((\incrementaPC|Add0~1_sumout\ & !\PC|DOUT[0]~1_combout\)) # (\PC|DOUT[0]~0_combout\) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\REG_RET|DOUT\(0) & ( (!\PC|DOUT[0]~0_combout\ & ((!\PC|DOUT[0]~1_combout\ & 
-- ((\incrementaPC|Add0~1_sumout\))) # (\PC|DOUT[0]~1_combout\ & (\ROM1|memROM~5_combout\)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\REG_RET|DOUT\(0) & ( (!\PC|DOUT[0]~0_combout\ & (\incrementaPC|Add0~1_sumout\ & !\PC|DOUT[0]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100010001001011111010101010101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \PC|ALT_INV_DOUT[0]~1_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \REG_RET|ALT_INV_DOUT\(0),
	combout => \MUXJMP|saida_MUX[0]~0_combout\);

-- Location: FF_X2_Y19_N43
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X1_Y19_N19
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X1_Y19_N4
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: IOIBUF_X23_Y0_N75
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X49_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


