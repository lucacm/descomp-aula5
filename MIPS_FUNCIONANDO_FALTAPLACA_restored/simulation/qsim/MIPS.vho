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

-- DATE "05/25/2022 18:13:56"

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

ENTITY 	CPU IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	ula_teste : BUFFER std_logic_vector(31 DOWNTO 0);
	instrucao_teste : BUFFER std_logic_vector(31 DOWNTO 0);
	pc_teste : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[14]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[15]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[17]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[19]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[20]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[21]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[22]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[25]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[26]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[27]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[29]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[30]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[31]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[8]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[12]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[16]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[17]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[19]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[20]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[21]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[24]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[25]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[26]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[27]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[28]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[29]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[30]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[12]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[18]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[19]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[20]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[21]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[22]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[23]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[25]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[26]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[27]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[29]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[30]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[31]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ula_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instrucao_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[0]~6_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[31]~32_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal0~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ULActrl~1_combout\ : std_logic;
SIGNAL \UNI_LOG|Equal4~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ULActrl~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|Equal2~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|signal_B~1_combout\ : std_logic;
SIGNAL \ULA|ULA8|signal_B~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1110_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1095_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~67_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ULA|ULA8|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|ULA29|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[26]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|ULA24|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \ULA|ULA22|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1106_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \ULA|ULA21|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1094_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[16]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[15]~14_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \ULA|ULA13|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1101_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|ULA11|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1100_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1071_combout\ : std_logic;
SIGNAL \ULA|ULA9|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|ULA8|signal_B~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|ULA6|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1098_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|ULA8|signal_B~2_combout\ : std_logic;
SIGNAL \ULA|ULA5|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1097_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|ULA3|signal_B~0_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|ULA2|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|saida~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|ULA30|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~324DUPLICATE_q\ : std_logic;
SIGNAL \ULA|ULA30|saida~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|ULA28|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|saida~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1109_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1089_combout\ : std_logic;
SIGNAL \ULA|ULA27|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA27|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[27]~25_combout\ : std_logic;
SIGNAL \ULA|ULA28|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA28|soma~combout\ : std_logic;
SIGNAL \ULA|ULA28|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[28]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[28]~26_combout\ : std_logic;
SIGNAL \ULA|ULA28|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA30|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA28|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA30|AxBandC~combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1111_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|ULA31|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~325_q\ : std_logic;
SIGNAL \ULA|ULA31|soma~0_combout\ : std_logic;
SIGNAL \ULA|Equal5~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~294DUPLICATE_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|ULA0|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|saida~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1108_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \ULA|ULA25|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[23]~21_combout\ : std_logic;
SIGNAL \ULA|ULA23|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA23|soma~combout\ : std_logic;
SIGNAL \ULA|ULA23|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1107_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \ULA|ULA23|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1104_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \ULA|ULA17|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[17]~16_combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1105_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1081_combout\ : std_logic;
SIGNAL \ULA|ULA19|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[19]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|ULA18|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA18|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA19|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[14]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|ULA14|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[14]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|ULA12|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA12|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|ULA12|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA13|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA14|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[10]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|ULA10|signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1099_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|ULA7|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA7|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[7]~8_combout\ : std_logic;
SIGNAL \ULA|ULA8|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA8|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA9|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA10|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|ULA4|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA3|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA4|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~5_combout\ : std_logic;
SIGNAL \ULA|saida[0]~6_combout\ : std_logic;
SIGNAL \ULA|saida[0]~7_combout\ : std_logic;
SIGNAL \ULA|saida[0]~8_combout\ : std_logic;
SIGNAL \ULA|saida[0]~9_combout\ : std_logic;
SIGNAL \ULA|saida[0]~10_combout\ : std_logic;
SIGNAL \ULA|ULA23|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA23|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~11_combout\ : std_logic;
SIGNAL \ULA|saida[0]~12_combout\ : std_logic;
SIGNAL \ULA|saida[0]~13_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA1|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1096_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|ULA1|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA2|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA2|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA3|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|ULA3|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA5|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA5|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA6|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[6]~7_combout\ : std_logic;
SIGNAL \ULA|ULA7|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~302_q\ : std_logic;
SIGNAL \ULA|ULA8|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA10|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA11|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA|ULA12|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA13|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~307_q\ : std_logic;
SIGNAL \ULA|ULA13|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~5_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~3_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1103_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \ULA|ULA15|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA16|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|ULA16|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA18|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA18|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA18|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[18]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~312DUPLICATE_q\ : std_logic;
SIGNAL \ULA|ULA18|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|saida~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|ULA20|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA20|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[20]~18_combout\ : std_logic;
SIGNAL \ULA|ULA20|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA21|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[21]~19_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[22]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[22]~20_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[24]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[24]~22_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[25]~23_combout\ : std_logic;
SIGNAL \ULA|ULA25|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA26|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[26]~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|ULA26|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~323_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[29]~27_combout\ : std_logic;
SIGNAL \ULA|ULA30|saida~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[2]~30_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[2]~31_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~2\ : std_logic;
SIGNAL \somaConstante|Add0~6\ : std_logic;
SIGNAL \somaConstante|Add0~10\ : std_logic;
SIGNAL \somaConstante|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \somaConstante|Add0~5_sumout\ : std_logic;
SIGNAL \Add0~118_cout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \somaConstante|Add0~14\ : std_logic;
SIGNAL \somaConstante|Add0~22\ : std_logic;
SIGNAL \somaConstante|Add0~17_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~21_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \UNI_LOG|saida[9]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal4~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|Equal1~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[24]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \somaConstante|Add0~18\ : std_logic;
SIGNAL \somaConstante|Add0~57_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[8]~14_combout\ : std_logic;
SIGNAL \somaConstante|Add0~58\ : std_logic;
SIGNAL \somaConstante|Add0~69_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[9]~17_combout\ : std_logic;
SIGNAL \somaConstante|Add0~70\ : std_logic;
SIGNAL \somaConstante|Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[10]~16_combout\ : std_logic;
SIGNAL \somaConstante|Add0~66\ : std_logic;
SIGNAL \somaConstante|Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[11]~15_combout\ : std_logic;
SIGNAL \somaConstante|Add0~62\ : std_logic;
SIGNAL \somaConstante|Add0~73_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[12]~18_combout\ : std_logic;
SIGNAL \somaConstante|Add0~74\ : std_logic;
SIGNAL \somaConstante|Add0~85_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[13]~21_combout\ : std_logic;
SIGNAL \somaConstante|Add0~86\ : std_logic;
SIGNAL \somaConstante|Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[14]~20_combout\ : std_logic;
SIGNAL \somaConstante|Add0~82\ : std_logic;
SIGNAL \somaConstante|Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[15]~19_combout\ : std_logic;
SIGNAL \somaConstante|Add0~78\ : std_logic;
SIGNAL \somaConstante|Add0~89_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[16]~22_combout\ : std_logic;
SIGNAL \somaConstante|Add0~90\ : std_logic;
SIGNAL \somaConstante|Add0~101_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \somaConstante|Add0~102\ : std_logic;
SIGNAL \somaConstante|Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \somaConstante|Add0~98\ : std_logic;
SIGNAL \somaConstante|Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \somaConstante|Add0~94\ : std_logic;
SIGNAL \somaConstante|Add0~105_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[20]~26_combout\ : std_logic;
SIGNAL \somaConstante|Add0~106\ : std_logic;
SIGNAL \somaConstante|Add0~117_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \somaConstante|Add0~118\ : std_logic;
SIGNAL \somaConstante|Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \somaConstante|Add0~114\ : std_logic;
SIGNAL \somaConstante|Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \somaConstante|Add0~110\ : std_logic;
SIGNAL \somaConstante|Add0~25_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[24]~6_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[24]~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~26\ : std_logic;
SIGNAL \somaConstante|Add0~29_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[25]~7_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[25]~1_combout\ : std_logic;
SIGNAL \somaConstante|Add0~30\ : std_logic;
SIGNAL \somaConstante|Add0~33_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[26]~8_combout\ : std_logic;
SIGNAL \ULA|saida[26]~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[26]~2_combout\ : std_logic;
SIGNAL \somaConstante|Add0~34\ : std_logic;
SIGNAL \somaConstante|Add0~37_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[27]~9_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[27]~3_combout\ : std_logic;
SIGNAL \somaConstante|Add0~38\ : std_logic;
SIGNAL \somaConstante|Add0~41_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[28]~32_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[28]~10_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[28]~4_combout\ : std_logic;
SIGNAL \somaConstante|Add0~42\ : std_logic;
SIGNAL \somaConstante|Add0~45_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[29]~33_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[29]~11_combout\ : std_logic;
SIGNAL \ULA|saida[29]~2_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[29]~5_combout\ : std_logic;
SIGNAL \somaConstante|Add0~46\ : std_logic;
SIGNAL \somaConstante|Add0~49_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[30]~34_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[30]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[30]~6_combout\ : std_logic;
SIGNAL \somaConstante|Add0~50\ : std_logic;
SIGNAL \somaConstante|Add0~53_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[31]~35_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[31]~13_combout\ : std_logic;
SIGNAL \ULA|saida[31]~3_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[31]~7_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ULA|saida[3]~15_combout\ : std_logic;
SIGNAL \ULA|saida[1]~16_combout\ : std_logic;
SIGNAL \ULA|saida[0]~14_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \ULA|saida[2]~17_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \ULA|saida[4]~18_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[7]~10_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[6]~11_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[5]~12_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[4]~13_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[7]~19_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[8]~20_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[11]~14_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[9]~16_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[10]~15_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[8]~17_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[11]~21_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[12]~22_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[14]~19_combout\ : std_logic;
SIGNAL \PC|DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[15]~18_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[13]~20_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[15]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[15]~23_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \ULA|saida[16]~24_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[19]~25_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \ULA|ULA19|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|saida[20]~26_combout\ : std_logic;
SIGNAL \ULA|saida[21]~27_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[23]~28_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[5]~29_combout\ : std_logic;
SIGNAL \ULA|saida[6]~30_combout\ : std_logic;
SIGNAL \ULA|saida[9]~31_combout\ : std_logic;
SIGNAL \ULA|saida[10]~32_combout\ : std_logic;
SIGNAL \ULA|saida[13]~33_combout\ : std_logic;
SIGNAL \ULA|saida[14]~34_combout\ : std_logic;
SIGNAL \ULA|saida[17]~35_combout\ : std_logic;
SIGNAL \ULA|saida[18]~36_combout\ : std_logic;
SIGNAL \ULA|saida[22]~37_combout\ : std_logic;
SIGNAL \ULA|saida[25]~38_combout\ : std_logic;
SIGNAL \ULA|saida[27]~39_combout\ : std_logic;
SIGNAL \ULA|saida[28]~40_combout\ : std_logic;
SIGNAL \ULA|saida[30]~41_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \PC|DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \somaConstante|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_ULActrl~0_combout\ : std_logic;
SIGNAL \UNI_LOG|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\ : std_logic;
SIGNAL \ULA|ULA21|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[20]~18_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \ULA|ULA10|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA|ULA10|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[7]~8_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[6]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_signal_B~2_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_signal_B~1_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_signal_B~3_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_soma~combout\ : std_logic;
SIGNAL \ULA|ULA21|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~3_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~2_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_soma~combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[28]~26_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[25]~23_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[23]~21_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~28_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~27_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~26_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~25_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~23_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[15]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[15]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~22_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~19_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~17_combout\ : std_logic;
SIGNAL \DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \DISP_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~13_combout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~5_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~324DUPLICATE_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~312DUPLICATE_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~294DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_signal_B~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[31]~35_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[30]~34_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[29]~33_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[28]~32_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[2]~31_combout\ : std_logic;
SIGNAL \MUX_PROXPC|ALT_INV_saida_MUX[2]~30_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \UNI_LOG|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ula_teste <= ww_ula_teste;
instrucao_teste <= ww_instrucao_teste;
pc_teste <= ww_pc_teste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\somaConstante|ALT_INV_Add0~25_sumout\ <= NOT \somaConstante|Add0~25_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\somaConstante|ALT_INV_Add0~21_sumout\ <= NOT \somaConstante|Add0~21_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\somaConstante|ALT_INV_Add0~17_sumout\ <= NOT \somaConstante|Add0~17_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\somaConstante|ALT_INV_Add0~13_sumout\ <= NOT \somaConstante|Add0~13_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\somaConstante|ALT_INV_Add0~9_sumout\ <= NOT \somaConstante|Add0~9_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\somaConstante|ALT_INV_Add0~5_sumout\ <= NOT \somaConstante|Add0~5_sumout\;
\somaConstante|ALT_INV_Add0~1_sumout\ <= NOT \somaConstante|Add0~1_sumout\;
\ULA|ULA0|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA0|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \BancoRegistradores|saidaA[0]~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\BancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \BancoRegistradores|registrador~1062_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\BancoRegistradores|ALT_INV_registrador~38_q\ <= NOT \BancoRegistradores|registrador~38_q\;
\BancoRegistradores|ALT_INV_registrador~294_q\ <= NOT \BancoRegistradores|registrador~294_q\;
\ULA|ULA8|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA8|signal_B~0_combout\;
\UNI_LOG_ULA|ALT_INV_Equal4~0_combout\ <= NOT \UNI_LOG_ULA|Equal4~0_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ULA|ALT_INV_Equal5~0_combout\ <= NOT \ULA|Equal5~0_combout\;
\UNI_LOG_ULA|ALT_INV_ULActrl~0_combout\ <= NOT \UNI_LOG_ULA|ULActrl~0_combout\;
\UNI_LOG|ALT_INV_Equal4~0_combout\ <= NOT \UNI_LOG|Equal4~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\UNI_LOG_ULA|ALT_INV_Equal0~1_combout\ <= NOT \UNI_LOG_ULA|Equal0~1_combout\;
\UNI_LOG_ULA|ALT_INV_Equal0~0_combout\ <= NOT \UNI_LOG_ULA|Equal0~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\somaConstante|ALT_INV_Add0~117_sumout\ <= NOT \somaConstante|Add0~117_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\somaConstante|ALT_INV_Add0~113_sumout\ <= NOT \somaConstante|Add0~113_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\somaConstante|ALT_INV_Add0~109_sumout\ <= NOT \somaConstante|Add0~109_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\somaConstante|ALT_INV_Add0~105_sumout\ <= NOT \somaConstante|Add0~105_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\somaConstante|ALT_INV_Add0~101_sumout\ <= NOT \somaConstante|Add0~101_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\somaConstante|ALT_INV_Add0~97_sumout\ <= NOT \somaConstante|Add0~97_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\somaConstante|ALT_INV_Add0~93_sumout\ <= NOT \somaConstante|Add0~93_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\somaConstante|ALT_INV_Add0~89_sumout\ <= NOT \somaConstante|Add0~89_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\somaConstante|ALT_INV_Add0~85_sumout\ <= NOT \somaConstante|Add0~85_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\somaConstante|ALT_INV_Add0~81_sumout\ <= NOT \somaConstante|Add0~81_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\somaConstante|ALT_INV_Add0~77_sumout\ <= NOT \somaConstante|Add0~77_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\somaConstante|ALT_INV_Add0~73_sumout\ <= NOT \somaConstante|Add0~73_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\somaConstante|ALT_INV_Add0~69_sumout\ <= NOT \somaConstante|Add0~69_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\somaConstante|ALT_INV_Add0~65_sumout\ <= NOT \somaConstante|Add0~65_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\somaConstante|ALT_INV_Add0~61_sumout\ <= NOT \somaConstante|Add0~61_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\somaConstante|ALT_INV_Add0~57_sumout\ <= NOT \somaConstante|Add0~57_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\somaConstante|ALT_INV_Add0~53_sumout\ <= NOT \somaConstante|Add0~53_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\somaConstante|ALT_INV_Add0~49_sumout\ <= NOT \somaConstante|Add0~49_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\somaConstante|ALT_INV_Add0~45_sumout\ <= NOT \somaConstante|Add0~45_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\somaConstante|ALT_INV_Add0~41_sumout\ <= NOT \somaConstante|Add0~41_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\somaConstante|ALT_INV_Add0~37_sumout\ <= NOT \somaConstante|Add0~37_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\somaConstante|ALT_INV_Add0~33_sumout\ <= NOT \somaConstante|Add0~33_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\somaConstante|ALT_INV_Add0~29_sumout\ <= NOT \somaConstante|Add0~29_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\BancoRegistradores|ALT_INV_registrador~1085_combout\ <= NOT \BancoRegistradores|registrador~1085_combout\;
\BancoRegistradores|ALT_INV_registrador~61_q\ <= NOT \BancoRegistradores|registrador~61_q\;
\BancoRegistradores|ALT_INV_registrador~317_q\ <= NOT \BancoRegistradores|registrador~317_q\;
\BancoRegistradores|ALT_INV_saidaA[22]~20_combout\ <= NOT \BancoRegistradores|saidaA[22]~20_combout\;
\ULA|ULA22|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA22|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1084_combout\ <= NOT \BancoRegistradores|registrador~1084_combout\;
\BancoRegistradores|ALT_INV_registrador~60_q\ <= NOT \BancoRegistradores|registrador~60_q\;
\BancoRegistradores|ALT_INV_registrador~316_q\ <= NOT \BancoRegistradores|registrador~316_q\;
\BancoRegistradores|ALT_INV_saidaA[21]~19_combout\ <= NOT \BancoRegistradores|saidaA[21]~19_combout\;
\ULA|ULA21|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA21|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1083_combout\ <= NOT \BancoRegistradores|registrador~1083_combout\;
\BancoRegistradores|ALT_INV_registrador~59_q\ <= NOT \BancoRegistradores|registrador~59_q\;
\BancoRegistradores|ALT_INV_registrador~315_q\ <= NOT \BancoRegistradores|registrador~315_q\;
\ULA|ULA20|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA20|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaA[20]~18_combout\ <= NOT \BancoRegistradores|saidaA[20]~18_combout\;
\ULA|ULA20|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA20|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1082_combout\ <= NOT \BancoRegistradores|registrador~1082_combout\;
\BancoRegistradores|ALT_INV_registrador~58_q\ <= NOT \BancoRegistradores|registrador~58_q\;
\BancoRegistradores|ALT_INV_registrador~314_q\ <= NOT \BancoRegistradores|registrador~314_q\;
\BancoRegistradores|ALT_INV_saidaA[19]~17_combout\ <= NOT \BancoRegistradores|saidaA[19]~17_combout\;
\ULA|ULA19|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA19|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1081_combout\ <= NOT \BancoRegistradores|registrador~1081_combout\;
\BancoRegistradores|ALT_INV_registrador~57_q\ <= NOT \BancoRegistradores|registrador~57_q\;
\BancoRegistradores|ALT_INV_registrador~313_q\ <= NOT \BancoRegistradores|registrador~313_q\;
\ULA|ULA18|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA18|saida~0_combout\;
\ULA|ULA18|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA18|AxBandC~combout\;
\ULA|ULA18|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA18|AxorB~combout\;
\ULA|ULA18|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA18|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1080_combout\ <= NOT \BancoRegistradores|registrador~1080_combout\;
\BancoRegistradores|ALT_INV_registrador~56_q\ <= NOT \BancoRegistradores|registrador~56_q\;
\BancoRegistradores|ALT_INV_registrador~312_q\ <= NOT \BancoRegistradores|registrador~312_q\;
\BancoRegistradores|ALT_INV_saidaA[17]~16_combout\ <= NOT \BancoRegistradores|saidaA[17]~16_combout\;
\ULA|ULA17|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA17|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1079_combout\ <= NOT \BancoRegistradores|registrador~1079_combout\;
\BancoRegistradores|ALT_INV_registrador~55_q\ <= NOT \BancoRegistradores|registrador~55_q\;
\BancoRegistradores|ALT_INV_registrador~311_q\ <= NOT \BancoRegistradores|registrador~311_q\;
\BancoRegistradores|ALT_INV_saidaA[16]~15_combout\ <= NOT \BancoRegistradores|saidaA[16]~15_combout\;
\ULA|ULA16|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA16|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \BancoRegistradores|registrador~1078_combout\;
\BancoRegistradores|ALT_INV_registrador~54_q\ <= NOT \BancoRegistradores|registrador~54_q\;
\BancoRegistradores|ALT_INV_registrador~310_q\ <= NOT \BancoRegistradores|registrador~310_q\;
\ULA|ULA15|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA15|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaA[15]~14_combout\ <= NOT \BancoRegistradores|saidaA[15]~14_combout\;
\ULA|ULA15|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA15|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1077_combout\ <= NOT \BancoRegistradores|registrador~1077_combout\;
\BancoRegistradores|ALT_INV_registrador~53_q\ <= NOT \BancoRegistradores|registrador~53_q\;
\BancoRegistradores|ALT_INV_registrador~309_q\ <= NOT \BancoRegistradores|registrador~309_q\;
\BancoRegistradores|ALT_INV_saidaA[14]~13_combout\ <= NOT \BancoRegistradores|saidaA[14]~13_combout\;
\ULA|ULA14|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA14|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1076_combout\ <= NOT \BancoRegistradores|registrador~1076_combout\;
\BancoRegistradores|ALT_INV_registrador~52_q\ <= NOT \BancoRegistradores|registrador~52_q\;
\BancoRegistradores|ALT_INV_registrador~308_q\ <= NOT \BancoRegistradores|registrador~308_q\;
\ULA|ULA13|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA13|saida~0_combout\;
\ULA|ULA13|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA13|signal_B~0_combout\;
\ULA|ULA13|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA13|AxBandC~combout\;
\ULA|ULA13|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA13|AxorB~combout\;
\BancoRegistradores|ALT_INV_registrador~1075_combout\ <= NOT \BancoRegistradores|registrador~1075_combout\;
\BancoRegistradores|ALT_INV_registrador~51_q\ <= NOT \BancoRegistradores|registrador~51_q\;
\BancoRegistradores|ALT_INV_registrador~307_q\ <= NOT \BancoRegistradores|registrador~307_q\;
\BancoRegistradores|ALT_INV_saidaA[12]~12_combout\ <= NOT \BancoRegistradores|saidaA[12]~12_combout\;
\ULA|ULA12|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA12|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \BancoRegistradores|registrador~1074_combout\;
\BancoRegistradores|ALT_INV_registrador~50_q\ <= NOT \BancoRegistradores|registrador~50_q\;
\BancoRegistradores|ALT_INV_registrador~306_q\ <= NOT \BancoRegistradores|registrador~306_q\;
\BancoRegistradores|ALT_INV_saidaA[11]~11_combout\ <= NOT \BancoRegistradores|saidaA[11]~11_combout\;
\ULA|ULA11|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA11|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1073_combout\ <= NOT \BancoRegistradores|registrador~1073_combout\;
\BancoRegistradores|ALT_INV_registrador~49_q\ <= NOT \BancoRegistradores|registrador~49_q\;
\BancoRegistradores|ALT_INV_registrador~305_q\ <= NOT \BancoRegistradores|registrador~305_q\;
\ULA|ULA10|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA10|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaA[10]~10_combout\ <= NOT \BancoRegistradores|saidaA[10]~10_combout\;
\ULA|ULA10|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA10|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1072_combout\ <= NOT \BancoRegistradores|registrador~1072_combout\;
\BancoRegistradores|ALT_INV_registrador~48_q\ <= NOT \BancoRegistradores|registrador~48_q\;
\BancoRegistradores|ALT_INV_registrador~304_q\ <= NOT \BancoRegistradores|registrador~304_q\;
\BancoRegistradores|ALT_INV_saidaA[9]~9_combout\ <= NOT \BancoRegistradores|saidaA[9]~9_combout\;
\ULA|ULA9|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA9|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1071_combout\ <= NOT \BancoRegistradores|registrador~1071_combout\;
\BancoRegistradores|ALT_INV_registrador~47_q\ <= NOT \BancoRegistradores|registrador~47_q\;
\BancoRegistradores|ALT_INV_registrador~303_q\ <= NOT \BancoRegistradores|registrador~303_q\;
\ULA|ULA8|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA8|saida~0_combout\;
\ULA|ULA8|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA8|AxBandC~combout\;
\ULA|ULA8|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA8|AxorB~combout\;
\BancoRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \BancoRegistradores|registrador~1070_combout\;
\BancoRegistradores|ALT_INV_registrador~46_q\ <= NOT \BancoRegistradores|registrador~46_q\;
\BancoRegistradores|ALT_INV_registrador~302_q\ <= NOT \BancoRegistradores|registrador~302_q\;
\BancoRegistradores|ALT_INV_saidaA[7]~8_combout\ <= NOT \BancoRegistradores|saidaA[7]~8_combout\;
\ULA|ULA7|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA7|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1069_combout\ <= NOT \BancoRegistradores|registrador~1069_combout\;
\BancoRegistradores|ALT_INV_registrador~45_q\ <= NOT \BancoRegistradores|registrador~45_q\;
\BancoRegistradores|ALT_INV_registrador~301_q\ <= NOT \BancoRegistradores|registrador~301_q\;
\BancoRegistradores|ALT_INV_saidaA[6]~7_combout\ <= NOT \BancoRegistradores|saidaA[6]~7_combout\;
\BancoRegistradores|ALT_INV_saidaA[0]~6_combout\ <= NOT \BancoRegistradores|saidaA[0]~6_combout\;
\ULA|ULA6|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA6|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \BancoRegistradores|registrador~1068_combout\;
\BancoRegistradores|ALT_INV_registrador~44_q\ <= NOT \BancoRegistradores|registrador~44_q\;
\BancoRegistradores|ALT_INV_registrador~300_q\ <= NOT \BancoRegistradores|registrador~300_q\;
\ULA|ULA5|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA5|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaA[5]~5_combout\ <= NOT \BancoRegistradores|saidaA[5]~5_combout\;
\ULA|ULA5|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA5|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \BancoRegistradores|registrador~1067_combout\;
\BancoRegistradores|ALT_INV_registrador~43_q\ <= NOT \BancoRegistradores|registrador~43_q\;
\BancoRegistradores|ALT_INV_registrador~299_q\ <= NOT \BancoRegistradores|registrador~299_q\;
\BancoRegistradores|ALT_INV_saidaA[4]~4_combout\ <= NOT \BancoRegistradores|saidaA[4]~4_combout\;
\ULA|ULA4|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA4|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \BancoRegistradores|registrador~1066_combout\;
\BancoRegistradores|ALT_INV_registrador~42_q\ <= NOT \BancoRegistradores|registrador~42_q\;
\BancoRegistradores|ALT_INV_registrador~298_q\ <= NOT \BancoRegistradores|registrador~298_q\;
\ULA|ULA3|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA3|saida~0_combout\;
\ULA|ULA3|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA3|AxBandC~combout\;
\ULA|ULA3|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA3|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[3]~3_combout\ <= NOT \BancoRegistradores|saidaA[3]~3_combout\;
\BancoRegistradores|ALT_INV_registrador~1065_combout\ <= NOT \BancoRegistradores|registrador~1065_combout\;
\BancoRegistradores|ALT_INV_registrador~41_q\ <= NOT \BancoRegistradores|registrador~41_q\;
\BancoRegistradores|ALT_INV_registrador~297_q\ <= NOT \BancoRegistradores|registrador~297_q\;
\BancoRegistradores|ALT_INV_saidaA[2]~2_combout\ <= NOT \BancoRegistradores|saidaA[2]~2_combout\;
\ULA|ULA2|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA2|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1064_combout\ <= NOT \BancoRegistradores|registrador~1064_combout\;
\BancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \BancoRegistradores|registrador~40_q\;
\BancoRegistradores|ALT_INV_registrador~296_q\ <= NOT \BancoRegistradores|registrador~296_q\;
\BancoRegistradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \BancoRegistradores|saidaA[1]~1_combout\;
\ULA|ULA1|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA1|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \BancoRegistradores|registrador~1063_combout\;
\BancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \BancoRegistradores|registrador~39_q\;
\BancoRegistradores|ALT_INV_registrador~295_q\ <= NOT \BancoRegistradores|registrador~295_q\;
\ULA|ULA8|ALT_INV_signal_B~2_combout\ <= NOT \ULA|ULA8|signal_B~2_combout\;
\ULA|ULA8|ALT_INV_signal_B~1_combout\ <= NOT \ULA|ULA8|signal_B~1_combout\;
\ULA|ULA7|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA7|saida~1_combout\;
\ULA|ULA7|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA7|saida~0_combout\;
\ULA|ULA8|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA8|saida~1_combout\;
\ULA|ULA8|ALT_INV_signal_B~3_combout\ <= NOT \ULA|ULA8|signal_B~3_combout\;
\ULA|ULA7|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA7|Carry_Out~combout\;
\ULA|ULA9|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA9|saida~0_combout\;
\ULA|ULA10|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA10|saida~0_combout\;
\ULA|ULA9|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA9|Carry_Out~combout\;
\ULA|ULA11|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA11|saida~0_combout\;
\ULA|ULA13|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA13|saida~1_combout\;
\ULA|ULA12|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA12|Carry_Out~combout\;
\ULA|ULA14|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA14|saida~0_combout\;
\ULA|ULA15|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA15|saida~3_combout\;
\ULA|ULA15|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA15|saida~2_combout\;
\ULA|ULA15|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA15|saida~1_combout\;
\ULA|ULA15|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA15|AxorB~combout\;
\ULA|ULA15|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA15|saida~0_combout\;
\ULA|ULA12|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA12|saida~2_combout\;
\ULA|ULA12|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA12|saida~1_combout\;
\ULA|ULA12|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA12|saida~0_combout\;
\ULA|ULA19|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA19|saida~0_combout\;
\ULA|ULA17|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA17|saida~2_combout\;
\ULA|ULA17|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA17|saida~1_combout\;
\ULA|ULA17|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA17|saida~0_combout\;
\ULA|ULA16|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA16|saida~0_combout\;
\ULA|ULA18|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA18|saida~1_combout\;
\ULA|ULA20|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA20|saida~0_combout\;
\ULA|ULA19|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA19|Carry_Out~combout\;
\ULA|ULA23|ALT_INV_soma~combout\ <= NOT \ULA|ULA23|soma~combout\;
\ULA|ULA21|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA21|saida~0_combout\;
\ULA|ULA22|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA22|saida~2_combout\;
\ULA|ULA22|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA22|saida~1_combout\;
\ULA|ULA22|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA22|saida~0_combout\;
\ULA|ULA24|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA24|saida~2_combout\;
\ULA|ULA26|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA26|saida~0_combout\;
\ULA|ULA29|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA29|saida~1_combout\;
\ULA|ALT_INV_saida[0]~4_combout\ <= NOT \ULA|saida[0]~4_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\ULA|ALT_INV_saida[31]~3_combout\ <= NOT \ULA|saida[31]~3_combout\;
\ULA|ULA31|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA31|saida~0_combout\;
\ULA|ULA31|ALT_INV_soma~0_combout\ <= NOT \ULA|ULA31|soma~0_combout\;
\ULA|ULA31|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA31|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1093_combout\ <= NOT \BancoRegistradores|registrador~1093_combout\;
\BancoRegistradores|ALT_INV_registrador~69_q\ <= NOT \BancoRegistradores|registrador~69_q\;
\BancoRegistradores|ALT_INV_registrador~325_q\ <= NOT \BancoRegistradores|registrador~325_q\;
\ULA|ULA30|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA30|AxBandC~combout\;
\ULA|ULA30|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA30|saida~2_combout\;
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\ULA|ULA30|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA30|saida~1_combout\;
\ULA|ULA30|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA30|saida~0_combout\;
\ULA|ULA30|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA30|AxorB~combout\;
\ULA|ULA30|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA30|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1092_combout\ <= NOT \BancoRegistradores|registrador~1092_combout\;
\BancoRegistradores|ALT_INV_registrador~68_q\ <= NOT \BancoRegistradores|registrador~68_q\;
\BancoRegistradores|ALT_INV_registrador~324_q\ <= NOT \BancoRegistradores|registrador~324_q\;
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\ULA|ALT_INV_saida[29]~2_combout\ <= NOT \ULA|saida[29]~2_combout\;
\ULA|ULA29|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA29|saida~0_combout\;
\ULA|ULA29|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA29|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[29]~27_combout\ <= NOT \BancoRegistradores|saidaA[29]~27_combout\;
\ULA|ULA29|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA29|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1091_combout\ <= NOT \BancoRegistradores|registrador~1091_combout\;
\BancoRegistradores|ALT_INV_registrador~67_q\ <= NOT \BancoRegistradores|registrador~67_q\;
\BancoRegistradores|ALT_INV_registrador~323_q\ <= NOT \BancoRegistradores|registrador~323_q\;
\ULA|ULA28|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA28|AxBandC~combout\;
\ULA|ULA28|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA28|saida~1_combout\;
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\ULA|ULA28|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA28|saida~0_combout\;
\ULA|ULA28|ALT_INV_soma~combout\ <= NOT \ULA|ULA28|soma~combout\;
\ULA|ULA28|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA28|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[28]~26_combout\ <= NOT \BancoRegistradores|saidaA[28]~26_combout\;
\ULA|ULA28|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA28|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1090_combout\ <= NOT \BancoRegistradores|registrador~1090_combout\;
\BancoRegistradores|ALT_INV_registrador~66_q\ <= NOT \BancoRegistradores|registrador~66_q\;
\BancoRegistradores|ALT_INV_registrador~322_q\ <= NOT \BancoRegistradores|registrador~322_q\;
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\ULA|ULA27|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA27|saida~1_combout\;
\ULA|ULA27|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA27|saida~0_combout\;
\ULA|ULA27|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA27|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[27]~25_combout\ <= NOT \BancoRegistradores|saidaA[27]~25_combout\;
\ULA|ULA27|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA27|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1089_combout\ <= NOT \BancoRegistradores|registrador~1089_combout\;
\BancoRegistradores|ALT_INV_registrador~65_q\ <= NOT \BancoRegistradores|registrador~65_q\;
\BancoRegistradores|ALT_INV_registrador~321_q\ <= NOT \BancoRegistradores|registrador~321_q\;
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\ULA|ALT_INV_saida[26]~1_combout\ <= NOT \ULA|saida[26]~1_combout\;
\BancoRegistradores|ALT_INV_saidaA[26]~24_combout\ <= NOT \BancoRegistradores|saidaA[26]~24_combout\;
\ULA|ULA26|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA26|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1088_combout\ <= NOT \BancoRegistradores|registrador~1088_combout\;
\BancoRegistradores|ALT_INV_registrador~64_q\ <= NOT \BancoRegistradores|registrador~64_q\;
\BancoRegistradores|ALT_INV_registrador~320_q\ <= NOT \BancoRegistradores|registrador~320_q\;
\ULA|ULA25|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA25|Carry_Out~combout\;
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\ULA|ULA25|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA25|saida~1_combout\;
\ULA|ULA25|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA25|saida~0_combout\;
\ULA|ULA25|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA25|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[25]~23_combout\ <= NOT \BancoRegistradores|saidaA[25]~23_combout\;
\ULA|ULA25|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA25|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1087_combout\ <= NOT \BancoRegistradores|registrador~1087_combout\;
\BancoRegistradores|ALT_INV_registrador~63_q\ <= NOT \BancoRegistradores|registrador~63_q\;
\BancoRegistradores|ALT_INV_registrador~319_q\ <= NOT \BancoRegistradores|registrador~319_q\;
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\ULA|ALT_INV_saida[24]~0_combout\ <= NOT \ULA|saida[24]~0_combout\;
\ULA|ULA24|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA24|saida~1_combout\;
\ULA|ULA24|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA24|saida~0_combout\;
\ULA|ULA24|ALT_INV_Equal2~0_combout\ <= NOT \ULA|ULA24|Equal2~0_combout\;
\ULA|ULA24|ALT_INV_Equal1~0_combout\ <= NOT \ULA|ULA24|Equal1~0_combout\;
\UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\ <= NOT \UNI_LOG_ULA|ULActrl~1_combout\;
\ULA|ULA24|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA24|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[24]~22_combout\ <= NOT \BancoRegistradores|saidaA[24]~22_combout\;
\ULA|ULA24|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA24|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1086_combout\ <= NOT \BancoRegistradores|registrador~1086_combout\;
\BancoRegistradores|ALT_INV_registrador~62_q\ <= NOT \BancoRegistradores|registrador~62_q\;
\BancoRegistradores|ALT_INV_registrador~318_q\ <= NOT \BancoRegistradores|registrador~318_q\;
\ULA|ULA23|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA23|saida~0_combout\;
\ULA|ULA23|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA23|AxBandC~combout\;
\ULA|ULA23|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA23|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaA[23]~21_combout\ <= NOT \BancoRegistradores|saidaA[23]~21_combout\;
\ULA|ULA23|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA23|signal_B~0_combout\;
\ULA|ALT_INV_saida[23]~28_combout\ <= NOT \ULA|saida[23]~28_combout\;
\MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\ <= NOT \MUX_HEX|saida_MUX[20]~30_combout\;
\MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\ <= NOT \MUX_HEX|saida_MUX[21]~29_combout\;
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\ULA|ALT_INV_saida[21]~27_combout\ <= NOT \ULA|saida[21]~27_combout\;
\MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\ <= NOT \MUX_HEX|saida_MUX[22]~28_combout\;
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\ <= NOT \MUX_HEX|saida_MUX[23]~27_combout\;
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\ULA|ALT_INV_saida[20]~26_combout\ <= NOT \ULA|saida[20]~26_combout\;
\ULA|ALT_INV_saida[19]~25_combout\ <= NOT \ULA|saida[19]~25_combout\;
\MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\ <= NOT \MUX_HEX|saida_MUX[16]~26_combout\;
\MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\ <= NOT \MUX_HEX|saida_MUX[17]~25_combout\;
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\ <= NOT \MUX_HEX|saida_MUX[18]~24_combout\;
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\ <= NOT \MUX_HEX|saida_MUX[19]~23_combout\;
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\ULA|ALT_INV_saida[16]~24_combout\ <= NOT \ULA|saida[16]~24_combout\;
\ULA|ALT_INV_saida[15]~23_combout\ <= NOT \ULA|saida[15]~23_combout\;
\MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\ <= NOT \MUX_HEX|saida_MUX[12]~22_combout\;
\MUX_HEX|ALT_INV_saida_MUX[15]~21_combout\ <= NOT \MUX_HEX|saida_MUX[15]~21_combout\;
\MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\ <= NOT \MUX_HEX|saida_MUX[13]~20_combout\;
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\ <= NOT \MUX_HEX|saida_MUX[14]~19_combout\;
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\MUX_HEX|ALT_INV_saida_MUX[15]~18_combout\ <= NOT \MUX_HEX|saida_MUX[15]~18_combout\;
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\ULA|ALT_INV_saida[12]~22_combout\ <= NOT \ULA|saida[12]~22_combout\;
\ULA|ALT_INV_saida[11]~21_combout\ <= NOT \ULA|saida[11]~21_combout\;
\MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\ <= NOT \MUX_HEX|saida_MUX[8]~17_combout\;
\MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\ <= NOT \MUX_HEX|saida_MUX[9]~16_combout\;
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\ <= NOT \MUX_HEX|saida_MUX[10]~15_combout\;
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\ <= NOT \MUX_HEX|saida_MUX[11]~14_combout\;
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA|ALT_INV_saida[8]~20_combout\ <= NOT \ULA|saida[8]~20_combout\;
\ULA|ALT_INV_saida[7]~19_combout\ <= NOT \ULA|saida[7]~19_combout\;
\MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\ <= NOT \MUX_HEX|saida_MUX[4]~13_combout\;
\MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\ <= NOT \MUX_HEX|saida_MUX[5]~12_combout\;
\MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\ <= NOT \MUX_HEX|saida_MUX[6]~11_combout\;
\MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\ <= NOT \MUX_HEX|saida_MUX[7]~10_combout\;
\ULA|ALT_INV_saida[4]~18_combout\ <= NOT \ULA|saida[4]~18_combout\;
\ULA|ALT_INV_saida[2]~17_combout\ <= NOT \ULA|saida[2]~17_combout\;
\DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\ <= NOT \DISP_HEX0|rascSaida7seg[1]~3_combout\;
\DISP_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISP_HEX0|rascSaida7seg[2]~2_combout\;
\MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \MUX_HEX|saida_MUX[3]~9_combout\;
\MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \MUX_HEX|saida_MUX[2]~8_combout\;
\ULA|ALT_INV_saida[1]~16_combout\ <= NOT \ULA|saida[1]~16_combout\;
\ULA|ALT_INV_saida[3]~15_combout\ <= NOT \ULA|saida[3]~15_combout\;
\ULA|ALT_INV_saida[0]~14_combout\ <= NOT \ULA|saida[0]~14_combout\;
\ULA|ALT_INV_saida[0]~13_combout\ <= NOT \ULA|saida[0]~13_combout\;
\ULA|ULA0|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA0|saida~0_combout\;
\ULA|ULA0|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA0|signal_B~0_combout\;
\ULA|ALT_INV_saida[0]~12_combout\ <= NOT \ULA|saida[0]~12_combout\;
\ULA|ALT_INV_saida[0]~11_combout\ <= NOT \ULA|saida[0]~11_combout\;
\ULA|ALT_INV_saida[0]~10_combout\ <= NOT \ULA|saida[0]~10_combout\;
\ULA|ULA23|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA23|saida~1_combout\;
\ULA|ALT_INV_saida[0]~9_combout\ <= NOT \ULA|saida[0]~9_combout\;
\ULA|ALT_INV_saida[0]~8_combout\ <= NOT \ULA|saida[0]~8_combout\;
\ULA|ALT_INV_saida[0]~7_combout\ <= NOT \ULA|saida[0]~7_combout\;
\ULA|ALT_INV_saida[0]~6_combout\ <= NOT \ULA|saida[0]~6_combout\;
\ULA|ALT_INV_saida[0]~5_combout\ <= NOT \ULA|saida[0]~5_combout\;
\ULA|ULA4|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA4|saida~0_combout\;
\ULA|ULA3|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA3|saida~1_combout\;
\ULA|ULA3|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA3|signal_B~0_combout\;
\ULA|ULA2|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA2|Carry_Out~combout\;
\ULA|ULA2|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA2|saida~2_combout\;
\ULA|ULA2|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA2|saida~1_combout\;
\ULA|ULA2|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA2|saida~0_combout\;
\ULA|ULA1|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA1|saida~0_combout\;
\ULA|ULA5|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA5|saida~0_combout\;
\ULA|ULA4|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA4|Carry_Out~combout\;
\ULA|ULA6|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA6|saida~0_combout\;
\ULA|ULA7|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA7|saida~2_combout\;
\PC|ALT_INV_DOUT[15]~DUPLICATE_q\ <= NOT \PC|DOUT[15]~DUPLICATE_q\;
\BancoRegistradores|ALT_INV_registrador~324DUPLICATE_q\ <= NOT \BancoRegistradores|registrador~324DUPLICATE_q\;
\BancoRegistradores|ALT_INV_registrador~312DUPLICATE_q\ <= NOT \BancoRegistradores|registrador~312DUPLICATE_q\;
\BancoRegistradores|ALT_INV_registrador~294DUPLICATE_q\ <= NOT \BancoRegistradores|registrador~294DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ULA|ULA6|ALT_INV_signal_B~1_combout\ <= NOT \ULA|ULA6|signal_B~1_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\ <= NOT \MUX_BANCOREG|saida_MUX[31]~32_combout\;
\ULA|ULA31|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA31|saida~3_combout\;
\ULA|ULA31|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA31|saida~2_combout\;
\ULA|ULA29|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA29|saida~3_combout\;
\ULA|ULA29|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA29|saida~2_combout\;
\ULA|ULA25|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA25|saida~4_combout\;
\ULA|ULA25|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA25|saida~3_combout\;
\ULA|ULA24|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA24|saida~4_combout\;
\ULA|ULA24|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA24|saida~3_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[31]~35_combout\ <= NOT \MUX_PROXPC|saida_MUX[31]~35_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[30]~34_combout\ <= NOT \MUX_PROXPC|saida_MUX[30]~34_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[29]~33_combout\ <= NOT \MUX_PROXPC|saida_MUX[29]~33_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[28]~32_combout\ <= NOT \MUX_PROXPC|saida_MUX[28]~32_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[2]~31_combout\ <= NOT \MUX_PROXPC|saida_MUX[2]~31_combout\;
\MUX_PROXPC|ALT_INV_saida_MUX[2]~30_combout\ <= NOT \MUX_PROXPC|saida_MUX[2]~30_combout\;
\ULA|ULA20|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA20|saida~2_combout\;
\ULA|ULA20|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA20|saida~1_combout\;
\ULA|ULA17|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA17|saida~4_combout\;
\ULA|ULA17|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA17|saida~3_combout\;
\ULA|ULA18|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA18|saida~4_combout\;
\ULA|ULA18|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA18|saida~3_combout\;
\ULA|ULA18|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA18|saida~2_combout\;
\ULA|ULA22|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA22|saida~4_combout\;
\ULA|ULA22|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA22|saida~3_combout\;
\ULA|ULA15|ALT_INV_saida~5_combout\ <= NOT \ULA|ULA15|saida~5_combout\;
\ULA|ULA15|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA15|saida~4_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[31]~31_combout\ <= NOT \MUX_BANCOREG|saida_MUX[31]~31_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[29]~29_combout\ <= NOT \MUX_BANCOREG|saida_MUX[29]~29_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[27]~27_combout\ <= NOT \MUX_BANCOREG|saida_MUX[27]~27_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[25]~25_combout\ <= NOT \MUX_BANCOREG|saida_MUX[25]~25_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[23]~23_combout\ <= NOT \MUX_BANCOREG|saida_MUX[23]~23_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[21]~21_combout\ <= NOT \MUX_BANCOREG|saida_MUX[21]~21_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[19]~19_combout\ <= NOT \MUX_BANCOREG|saida_MUX[19]~19_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[17]~17_combout\ <= NOT \MUX_BANCOREG|saida_MUX[17]~17_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[15]~15_combout\ <= NOT \MUX_BANCOREG|saida_MUX[15]~15_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[13]~13_combout\ <= NOT \MUX_BANCOREG|saida_MUX[13]~13_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[11]~11_combout\ <= NOT \MUX_BANCOREG|saida_MUX[11]~11_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[9]~9_combout\ <= NOT \MUX_BANCOREG|saida_MUX[9]~9_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX_BANCOREG|saida_MUX[7]~7_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX_BANCOREG|saida_MUX[5]~5_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_BANCOREG|saida_MUX[3]~3_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX_BANCOREG|saida_MUX[1]~1_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ULA|ULA23|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA23|saida~2_combout\;
\ULA|ULA25|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA25|saida~2_combout\;
\ULA|ULA28|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA28|saida~2_combout\;
\UNI_LOG|ALT_INV_saida[9]~0_combout\ <= NOT \UNI_LOG|saida[9]~0_combout\;
\ULA|ULA31|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA31|saida~1_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[24]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[25]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[26]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[27]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[28]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[29]~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[30]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX|saida_MUX[31]~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX0|rascSaida7seg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X48_Y45_N53
\ula_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~14_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(0));

-- Location: IOOBUF_X23_Y0_N93
\ula_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(1));

-- Location: IOOBUF_X43_Y45_N19
\ula_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~17_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(2));

-- Location: IOOBUF_X54_Y14_N45
\ula_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~15_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(3));

-- Location: IOOBUF_X43_Y45_N36
\ula_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(4));

-- Location: IOOBUF_X54_Y20_N56
\ula_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~29_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(5));

-- Location: IOOBUF_X54_Y15_N5
\ula_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~30_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(6));

-- Location: IOOBUF_X54_Y16_N39
\ula_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~19_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(7));

-- Location: IOOBUF_X11_Y0_N2
\ula_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[8]~20_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(8));

-- Location: IOOBUF_X34_Y45_N36
\ula_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~31_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(9));

-- Location: IOOBUF_X54_Y18_N45
\ula_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~32_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(10));

-- Location: IOOBUF_X36_Y45_N19
\ula_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~21_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(11));

-- Location: IOOBUF_X44_Y45_N53
\ula_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[12]~22_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(12));

-- Location: IOOBUF_X54_Y17_N22
\ula_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~33_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(13));

-- Location: IOOBUF_X54_Y18_N62
\ula_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~34_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(14));

-- Location: IOOBUF_X44_Y45_N36
\ula_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~23_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(15));

-- Location: IOOBUF_X54_Y16_N56
\ula_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[16]~24_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(16));

-- Location: IOOBUF_X46_Y45_N76
\ula_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~35_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(17));

-- Location: IOOBUF_X32_Y45_N93
\ula_teste[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~36_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(18));

-- Location: IOOBUF_X54_Y16_N22
\ula_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~25_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(19));

-- Location: IOOBUF_X23_Y0_N76
\ula_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[20]~26_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(20));

-- Location: IOOBUF_X16_Y0_N93
\ula_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~27_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(21));

-- Location: IOOBUF_X24_Y0_N2
\ula_teste[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~37_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(22));

-- Location: IOOBUF_X16_Y0_N59
\ula_teste[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~28_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(23));

-- Location: IOOBUF_X32_Y45_N59
\ula_teste[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~0_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(24));

-- Location: IOOBUF_X19_Y0_N19
\ula_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~38_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(25));

-- Location: IOOBUF_X22_Y45_N36
\ula_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(26));

-- Location: IOOBUF_X22_Y0_N36
\ula_teste[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~39_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(27));

-- Location: IOOBUF_X19_Y0_N36
\ula_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~40_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(28));

-- Location: IOOBUF_X23_Y0_N59
\ula_teste[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~2_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(29));

-- Location: IOOBUF_X54_Y15_N39
\ula_teste[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~41_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(30));

-- Location: IOOBUF_X32_Y45_N76
\ula_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~3_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(31));

-- Location: IOOBUF_X54_Y14_N96
\instrucao_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(0));

-- Location: IOOBUF_X25_Y0_N2
\instrucao_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(1));

-- Location: IOOBUF_X24_Y0_N53
\instrucao_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(2));

-- Location: IOOBUF_X16_Y0_N42
\instrucao_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(3));

-- Location: IOOBUF_X50_Y45_N19
\instrucao_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(4));

-- Location: IOOBUF_X38_Y45_N36
\instrucao_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(5));

-- Location: IOOBUF_X44_Y45_N2
\instrucao_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(6));

-- Location: IOOBUF_X42_Y45_N53
\instrucao_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(7));

-- Location: IOOBUF_X52_Y45_N2
\instrucao_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(8));

-- Location: IOOBUF_X50_Y45_N36
\instrucao_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(9));

-- Location: IOOBUF_X16_Y45_N42
\instrucao_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(10));

-- Location: IOOBUF_X46_Y45_N93
\instrucao_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(11));

-- Location: IOOBUF_X52_Y45_N19
\instrucao_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(12));

-- Location: IOOBUF_X42_Y45_N36
\instrucao_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(13));

-- Location: IOOBUF_X34_Y45_N19
\instrucao_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(14));

-- Location: IOOBUF_X16_Y45_N76
\instrucao_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(15));

-- Location: IOOBUF_X50_Y0_N2
\instrucao_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(16));

-- Location: IOOBUF_X42_Y45_N19
\instrucao_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(17));

-- Location: IOOBUF_X18_Y45_N36
\instrucao_teste[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(18));

-- Location: IOOBUF_X38_Y0_N2
\instrucao_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA8|signal_B~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(19));

-- Location: IOOBUF_X12_Y0_N2
\instrucao_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(20));

-- Location: IOOBUF_X54_Y14_N62
\instrucao_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(21));

-- Location: IOOBUF_X22_Y45_N2
\instrucao_teste[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(22));

-- Location: IOOBUF_X8_Y45_N76
\instrucao_teste[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(23));

-- Location: IOOBUF_X34_Y45_N2
\instrucao_teste[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(24));

-- Location: IOOBUF_X54_Y18_N79
\instrucao_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(25));

-- Location: IOOBUF_X25_Y0_N19
\instrucao_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(26));

-- Location: IOOBUF_X18_Y0_N53
\instrucao_teste[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(27));

-- Location: IOOBUF_X44_Y45_N19
\instrucao_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(28));

-- Location: IOOBUF_X46_Y45_N42
\instrucao_teste[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(29));

-- Location: IOOBUF_X12_Y45_N2
\instrucao_teste[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao_teste(30));

-- Location: IOOBUF_X25_Y0_N53
\instrucao_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(31));

-- Location: IOOBUF_X18_Y45_N2
\pc_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc_teste(0));

-- Location: IOOBUF_X40_Y45_N42
\pc_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc_teste(1));

-- Location: IOOBUF_X38_Y45_N2
\pc_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(2));

-- Location: IOOBUF_X29_Y0_N36
\pc_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_pc_teste(3));

-- Location: IOOBUF_X54_Y14_N79
\pc_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_pc_teste(4));

-- Location: IOOBUF_X25_Y0_N36
\pc_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_pc_teste(5));

-- Location: IOOBUF_X24_Y0_N19
\pc_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pc_teste(6));

-- Location: IOOBUF_X29_Y0_N53
\pc_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(7));

-- Location: IOOBUF_X38_Y45_N53
\pc_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_pc_teste(8));

-- Location: IOOBUF_X32_Y45_N42
\pc_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_pc_teste(9));

-- Location: IOOBUF_X36_Y45_N36
\pc_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_pc_teste(10));

-- Location: IOOBUF_X19_Y0_N2
\pc_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_pc_teste(11));

-- Location: IOOBUF_X40_Y45_N76
\pc_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_pc_teste(12));

-- Location: IOOBUF_X54_Y15_N56
\pc_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_pc_teste(13));

-- Location: IOOBUF_X42_Y45_N2
\pc_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_pc_teste(14));

-- Location: IOOBUF_X24_Y0_N36
\pc_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(15));

-- Location: IOOBUF_X43_Y45_N53
\pc_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_pc_teste(16));

-- Location: IOOBUF_X40_Y45_N93
\pc_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_pc_teste(17));

-- Location: IOOBUF_X54_Y15_N22
\pc_teste[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_pc_teste(18));

-- Location: IOOBUF_X54_Y16_N5
\pc_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_pc_teste(19));

-- Location: IOOBUF_X36_Y45_N53
\pc_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_pc_teste(20));

-- Location: IOOBUF_X40_Y45_N59
\pc_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_pc_teste(21));

-- Location: IOOBUF_X36_Y45_N2
\pc_teste[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_pc_teste(22));

-- Location: IOOBUF_X18_Y0_N19
\pc_teste[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_pc_teste(23));

-- Location: IOOBUF_X14_Y0_N36
\pc_teste[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_pc_teste(24));

-- Location: IOOBUF_X18_Y0_N36
\pc_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[25]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(25));

-- Location: IOOBUF_X19_Y0_N53
\pc_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_pc_teste(26));

-- Location: IOOBUF_X18_Y0_N2
\pc_teste[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_pc_teste(27));

-- Location: IOOBUF_X12_Y0_N19
\pc_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_pc_teste(28));

-- Location: IOOBUF_X34_Y45_N53
\pc_teste[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_pc_teste(29));

-- Location: IOOBUF_X22_Y45_N19
\pc_teste[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_pc_teste(30));

-- Location: IOOBUF_X23_Y0_N42
\pc_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_pc_teste(31));

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X40_Y4_N26
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N47
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PROXPC|saida_MUX[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N44
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X39_Y4_N20
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X40_Y4_N2
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N39
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X40_Y4_N30
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & 
-- \PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X40_Y4_N27
\BancoRegistradores|saidaA[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[0]~6_combout\ = ( !\ROM|memROM~13_combout\ & ( (\ROM|memROM~5_combout\ & !\PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaA[0]~6_combout\);

-- Location: LABCELL_X40_Y2_N57
\MUX_BANCOREG|saida_MUX[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[31]~32_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \MUX_BANCOREG|saida_MUX[31]~32_combout\);

-- Location: FF_X40_Y4_N13
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X40_Y4_N48
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & 
-- (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X40_Y4_N9
\UNI_LOG_ULA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal0~0_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( 
-- (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(3) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (\PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \UNI_LOG_ULA|Equal0~0_combout\);

-- Location: LABCELL_X40_Y4_N57
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( ((!\PC|DOUT[2]~DUPLICATE_q\) # ((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[7]~DUPLICATE_q\))) # (\PC|DOUT[6]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( 
-- \PC|DOUT[4]~DUPLICATE_q\ & ( ((!\PC|DOUT[2]~DUPLICATE_q\) # ((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[7]~DUPLICATE_q\))) # (\PC|DOUT[6]~DUPLICATE_q\) ) ) ) # ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[4]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\PC|DOUT[4]~DUPLICATE_q\ & ( ((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[7]~DUPLICATE_q\)) # (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X41_Y3_N39
\UNI_LOG_ULA|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal0~1_combout\ = ( !\ROM|memROM~1_combout\ & ( (\ROM|memROM~3_combout\ & \UNI_LOG_ULA|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \UNI_LOG_ULA|Equal0~1_combout\);

-- Location: LABCELL_X41_Y4_N18
\UNI_LOG_ULA|ULActrl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|ULActrl~1_combout\ = ( \UNI_LOG_ULA|Equal0~0_combout\ & ( (!\ROM|memROM~8_combout\ & (((\ROM|memROM~3_combout\ & \ROM|memROM~1_combout\)) # (\ROM|memROM~6_combout\))) # (\ROM|memROM~8_combout\ & (\ROM|memROM~3_combout\ & 
-- ((\ROM|memROM~1_combout\)))) ) ) # ( !\UNI_LOG_ULA|Equal0~0_combout\ & ( (!\ROM|memROM~8_combout\ & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	combout => \UNI_LOG_ULA|ULActrl~1_combout\);

-- Location: LABCELL_X41_Y4_N54
\UNI_LOG|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG|Equal4~0_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(4) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(4) & (\PC|DOUT\(2) & \PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \UNI_LOG|Equal4~0_combout\);

-- Location: LABCELL_X41_Y4_N0
\UNI_LOG_ULA|ULActrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|ULActrl~0_combout\ = ( \UNI_LOG|Equal4~0_combout\ & ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~6_combout\ & ((!\UNI_LOG_ULA|Equal0~0_combout\) # (\ROM|memROM~3_combout\)))) ) ) ) # ( !\UNI_LOG|Equal4~0_combout\ & ( 
-- \ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\UNI_LOG_ULA|Equal0~0_combout\) # (\ROM|memROM~3_combout\))) ) ) ) # ( \UNI_LOG|Equal4~0_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & \ROM|memROM~6_combout\) ) ) ) # ( 
-- !\UNI_LOG|Equal4~0_combout\ & ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010100000101010101010001000100000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	datae => \UNI_LOG|ALT_INV_Equal4~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \UNI_LOG_ULA|ULActrl~0_combout\);

-- Location: LABCELL_X40_Y5_N6
\ULA|ULA24|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|Equal2~0_combout\ = ( \UNI_LOG_ULA|ULActrl~0_combout\ & ( (!\UNI_LOG_ULA|Equal4~0_combout\ & (!\UNI_LOG_ULA|Equal0~1_combout\ & !\UNI_LOG_ULA|ULActrl~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \ULA|ULA24|Equal2~0_combout\);

-- Location: LABCELL_X40_Y4_N51
\ULA|ULA6|signal_B~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|signal_B~1_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\)) ) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (!\PC|DOUT[6]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ULA|ULA6|signal_B~1_combout\);

-- Location: LABCELL_X40_Y4_N6
\ULA|ULA8|signal_B~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|signal_B~1_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( 
-- \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & 
-- (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ULA|ULA8|signal_B~1_combout\);

-- Location: MLABCELL_X37_Y3_N39
\BancoRegistradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1110_combout\ = !\MUX_BANCOREG|saida_MUX[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[29]~29_combout\,
	combout => \BancoRegistradores|registrador~1110_combout\);

-- Location: LABCELL_X40_Y2_N30
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & !\PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X40_Y2_N9
\BancoRegistradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1095_combout\ = ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\ & (\PC|DOUT[2]~DUPLICATE_q\ & !\ROM|memROM~6_combout\))) ) ) # ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (!\ROM|memROM~9_combout\ & !\ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \BancoRegistradores|registrador~1095_combout\);

-- Location: FF_X37_Y3_N40
\BancoRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1110_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~67_q\);

-- Location: LABCELL_X40_Y4_N18
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( ((!\PC|DOUT[4]~DUPLICATE_q\) # ((!\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[6]~DUPLICATE_q\))) # 
-- (\PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT[4]~DUPLICATE_q\)) # 
-- (\PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X40_Y4_N33
\ULA|ULA8|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|signal_B~0_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ULA|ULA8|signal_B~0_combout\);

-- Location: LABCELL_X36_Y5_N15
\BancoRegistradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1091_combout\ = ( \ROM|memROM~12_combout\ & ( \ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & \BancoRegistradores|registrador~323_q\) ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ULA|ULA8|signal_B~0_combout\ & ( 
-- (!\ROM|memROM~11_combout\ & !\BancoRegistradores|registrador~67_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1091_combout\);

-- Location: LABCELL_X36_Y5_N18
\ULA|ULA29|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1091_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1091_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1091_combout\,
	combout => \ULA|ULA29|signal_B~0_combout\);

-- Location: MLABCELL_X37_Y3_N30
\ULA|ULA29|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~0_combout\ = ( \ULA|ULA29|signal_B~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[29]~27_combout\)) ) ) # ( !\ULA|ULA29|signal_B~0_combout\ & 
-- ( (\BancoRegistradores|saidaA[29]~27_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA29|saida~0_combout\);

-- Location: LABCELL_X35_Y5_N18
\ULA|ULA29|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|AxorB~combout\ = ( !\BancoRegistradores|saidaA[29]~27_combout\ & ( \ULA|ULA29|signal_B~0_combout\ ) ) # ( \BancoRegistradores|saidaA[29]~27_combout\ & ( !\ULA|ULA29|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	dataf => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA29|AxorB~combout\);

-- Location: LABCELL_X36_Y5_N27
\BancoRegistradores|saidaA[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[26]~24_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~320_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~320_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[26]~24_combout\);

-- Location: FF_X39_Y2_N38
\BancoRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[24]~24_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~62_q\);

-- Location: LABCELL_X39_Y2_N36
\BancoRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1086_combout\ = ( \ULA|ULA8|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~318_q\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\)) ) ) # ( !\ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (\ROM|memROM~12_combout\ & \BancoRegistradores|registrador~62_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~62_q\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1086_combout\);

-- Location: LABCELL_X39_Y2_N33
\ULA|ULA24|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|signal_B~0_combout\ = ( \ULA|ULA6|signal_B~1_combout\ & ( !\ULA|ULA8|signal_B~1_combout\ $ (\BancoRegistradores|registrador~1086_combout\) ) ) # ( !\ULA|ULA6|signal_B~1_combout\ & ( (\ULA|ULA8|signal_B~1_combout\ & 
-- \BancoRegistradores|registrador~1086_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1086_combout\,
	dataf => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA24|signal_B~0_combout\);

-- Location: LABCELL_X39_Y5_N0
\ULA|ULA24|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~1_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( (!\BancoRegistradores|saidaA[24]~22_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[24]~22_combout\ & 
-- ((!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA24|signal_B~0_combout\))) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( (\BancoRegistradores|saidaA[24]~22_combout\ & (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|signal_B~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA24|saida~1_combout\);

-- Location: LABCELL_X39_Y2_N39
\ULA|ULA24|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|AxorB~combout\ = ( \ULA|ULA24|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[24]~22_combout\ ) ) # ( !\ULA|ULA24|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[24]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	dataf => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA24|AxorB~combout\);

-- Location: FF_X39_Y2_N17
\BancoRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[22]~22_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~60_q\);

-- Location: LABCELL_X39_Y2_N24
\BancoRegistradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1084_combout\ = ( \ULA|ULA8|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~316_q\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~11_combout\)) ) ) # ( !\ULA|ULA8|signal_B~0_combout\ & ( 
-- (\BancoRegistradores|registrador~60_q\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~316_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~60_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1084_combout\);

-- Location: LABCELL_X39_Y2_N54
\ULA|ULA22|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1084_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\BancoRegistradores|registrador~1084_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1084_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA22|signal_B~0_combout\);

-- Location: LABCELL_X39_Y2_N27
\BancoRegistradores|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1106_combout\ = !\MUX_BANCOREG|saida_MUX[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \BancoRegistradores|registrador~1106_combout\);

-- Location: FF_X39_Y2_N29
\BancoRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1106_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~59_q\);

-- Location: LABCELL_X39_Y4_N24
\BancoRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1083_combout\ = ( \BancoRegistradores|registrador~59_q\ & ( (\ULA|ULA8|signal_B~0_combout\ & (!\ROM|memROM~11_combout\ & (\BancoRegistradores|registrador~315_q\ & \ROM|memROM~12_combout\))) ) ) # ( 
-- !\BancoRegistradores|registrador~59_q\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\) # (\BancoRegistradores|registrador~315_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001100000000001000110000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~315_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~59_q\,
	combout => \BancoRegistradores|registrador~1083_combout\);

-- Location: LABCELL_X39_Y4_N6
\ULA|ULA21|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1083_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1083_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1083_combout\,
	combout => \ULA|ULA21|signal_B~0_combout\);

-- Location: LABCELL_X40_Y2_N27
\BancoRegistradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1094_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\ & (\PC|DOUT[2]~DUPLICATE_q\ & !\ROM|memROM~6_combout\))) ) ) # ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~11_combout\ & 
-- (!\ROM|memROM~9_combout\ & !\ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \BancoRegistradores|registrador~1094_combout\);

-- Location: FF_X42_Y3_N17
\BancoRegistradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[16]~16_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~310_q\);

-- Location: MLABCELL_X42_Y3_N45
\BancoRegistradores|saidaA[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[16]~15_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~310_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~310_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[16]~15_combout\);

-- Location: LABCELL_X39_Y2_N6
\BancoRegistradores|saidaA[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[15]~14_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~309_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~309_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[15]~14_combout\);

-- Location: LABCELL_X40_Y2_N51
\ULA|ULA15|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~2_combout\ = ( \BancoRegistradores|saidaA[15]~14_combout\ & ( \ULA|ULA24|Equal1~0_combout\ ) ) # ( !\BancoRegistradores|saidaA[15]~14_combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA15|signal_B~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA15|ALT_INV_signal_B~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA15|saida~2_combout\);

-- Location: LABCELL_X41_Y5_N48
\BancoRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1102_combout\ = ( !\MUX_BANCOREG|saida_MUX[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \BancoRegistradores|registrador~1102_combout\);

-- Location: FF_X41_Y5_N50
\BancoRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1102_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~51_q\);

-- Location: LABCELL_X41_Y5_N9
\BancoRegistradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1075_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~51_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~307_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000010100001100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1075_combout\);

-- Location: LABCELL_X41_Y5_N27
\ULA|ULA13|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1075_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (!\BancoRegistradores|registrador~1075_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~1075_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA13|signal_B~0_combout\);

-- Location: LABCELL_X41_Y2_N54
\BancoRegistradores|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1101_combout\ = !\MUX_BANCOREG|saida_MUX[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[11]~11_combout\,
	combout => \BancoRegistradores|registrador~1101_combout\);

-- Location: FF_X41_Y2_N55
\BancoRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1101_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~49_q\);

-- Location: LABCELL_X41_Y2_N3
\BancoRegistradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1073_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (!\BancoRegistradores|registrador~49_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~305_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110100001000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~305_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1073_combout\);

-- Location: LABCELL_X41_Y2_N42
\ULA|ULA11|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1073_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (!\BancoRegistradores|registrador~1073_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA11|signal_B~0_combout\);

-- Location: LABCELL_X41_Y2_N27
\BancoRegistradores|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1100_combout\ = ( !\MUX_BANCOREG|saida_MUX[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \BancoRegistradores|registrador~1100_combout\);

-- Location: FF_X41_Y2_N29
\BancoRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1100_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~47_q\);

-- Location: LABCELL_X41_Y2_N24
\BancoRegistradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1071_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~47_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~303_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110001000000001011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~303_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~47_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1071_combout\);

-- Location: LABCELL_X41_Y3_N51
\ULA|ULA9|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1071_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1071_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1071_combout\,
	combout => \ULA|ULA9|signal_B~0_combout\);

-- Location: FF_X41_Y5_N5
\BancoRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[8]~8_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~46_q\);

-- Location: LABCELL_X41_Y5_N12
\BancoRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1070_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|registrador~46_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~302_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~46_q\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1070_combout\);

-- Location: LABCELL_X41_Y5_N15
\ULA|ULA8|signal_B~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|signal_B~3_combout\ = ( \BancoRegistradores|registrador~1070_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1070_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \ULA|ULA8|signal_B~3_combout\);

-- Location: FF_X41_Y5_N55
\BancoRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[6]~6_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~44_q\);

-- Location: LABCELL_X41_Y5_N45
\BancoRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1068_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((\BancoRegistradores|registrador~44_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~300_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~44_q\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1068_combout\);

-- Location: LABCELL_X41_Y5_N36
\ULA|ULA6|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1068_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\BancoRegistradores|registrador~1068_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA6|signal_B~0_combout\);

-- Location: LABCELL_X39_Y5_N3
\BancoRegistradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1098_combout\ = !\MUX_BANCOREG|saida_MUX[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \BancoRegistradores|registrador~1098_combout\);

-- Location: FF_X39_Y5_N5
\BancoRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1098_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~43_q\);

-- Location: LABCELL_X39_Y4_N27
\BancoRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1067_combout\ = ( \BancoRegistradores|registrador~43_q\ & ( (\ULA|ULA8|signal_B~0_combout\ & (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & \BancoRegistradores|registrador~299_q\))) ) ) # ( 
-- !\BancoRegistradores|registrador~43_q\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\) # (\BancoRegistradores|registrador~299_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010000000110000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~299_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~43_q\,
	combout => \BancoRegistradores|registrador~1067_combout\);

-- Location: LABCELL_X39_Y4_N12
\ULA|ULA8|signal_B~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|signal_B~2_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(4))))) ) ) ) # ( !\PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[6]~DUPLICATE_q\ & ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ULA|ULA8|signal_B~2_combout\);

-- Location: LABCELL_X39_Y4_N36
\ULA|ULA5|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~2_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & (\ULA|ULA8|signal_B~0_combout\ & (\ROM|memROM~11_combout\))) # (\ULA|ULA8|signal_B~1_combout\ & (((\BancoRegistradores|registrador~1067_combout\)))) ) ) 
-- # ( !\ULA|ULA8|signal_B~2_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & (\ULA|ULA8|signal_B~0_combout\ & !\BancoRegistradores|registrador~1067_combout\)) # (\ULA|ULA8|signal_B~1_combout\ & ((\BancoRegistradores|registrador~1067_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1067_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	combout => \ULA|ULA5|signal_B~0_combout\);

-- Location: LABCELL_X39_Y5_N9
\BancoRegistradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1097_combout\ = ( !\MUX_BANCOREG|saida_MUX[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \BancoRegistradores|registrador~1097_combout\);

-- Location: FF_X39_Y5_N11
\BancoRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1097_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~41_q\);

-- Location: LABCELL_X39_Y4_N39
\BancoRegistradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1065_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ULA|ULA8|signal_B~0_combout\ & (!\ROM|memROM~11_combout\ & ((!\BancoRegistradores|registrador~41_q\)))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (((\BancoRegistradores|registrador~297_q\)) # (\ROM|memROM~11_combout\))) ) ) # ( !\ROM|memROM~12_combout\ & ( \ULA|ULA8|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110011101000101011001110100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~41_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1065_combout\);

-- Location: LABCELL_X39_Y5_N54
\ULA|ULA3|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~0_combout\ & ( \BancoRegistradores|registrador~1065_combout\ & ( ((\ULA|ULA8|signal_B~2_combout\ & !\ROM|memROM~1_combout\)) # (\ULA|ULA8|signal_B~1_combout\) ) ) ) # ( !\ULA|ULA8|signal_B~0_combout\ & 
-- ( \BancoRegistradores|registrador~1065_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) ) # ( \ULA|ULA8|signal_B~0_combout\ & ( !\BancoRegistradores|registrador~1065_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & ((!\ULA|ULA8|signal_B~2_combout\) # 
-- (!\ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010000001010101010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \ULA|ULA3|signal_B~0_combout\);

-- Location: LABCELL_X41_Y4_N12
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT\(4) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) ) ) # ( !\PC|DOUT\(2) & ( \PC|DOUT\(4) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) ) ) # ( 
-- \PC|DOUT\(2) & ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000010000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X41_Y4_N59
\BancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~40_q\);

-- Location: LABCELL_X41_Y4_N51
\BancoRegistradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1064_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|registrador~40_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~296_q\))))) ) ) # ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & \ULA|ULA8|signal_B~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100100010000010100010001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1064_combout\);

-- Location: LABCELL_X41_Y4_N36
\ULA|ULA2|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~2_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & (\ULA|ULA8|signal_B~0_combout\ & (\ROM|memROM~10_combout\))) # (\ULA|ULA8|signal_B~1_combout\ & (((\BancoRegistradores|registrador~1064_combout\)))) ) ) 
-- # ( !\ULA|ULA8|signal_B~2_combout\ & ( (!\BancoRegistradores|registrador~1064_combout\ & (\ULA|ULA8|signal_B~0_combout\ & !\ULA|ULA8|signal_B~1_combout\)) # (\BancoRegistradores|registrador~1064_combout\ & ((\ULA|ULA8|signal_B~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	combout => \ULA|ULA2|signal_B~0_combout\);

-- Location: LABCELL_X40_Y5_N0
\ULA|ULA2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|saida~0_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\BancoRegistradores|saidaA[2]~2_combout\ & \ULA|ULA2|signal_B~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datad => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA2|saida~0_combout\);

-- Location: FF_X39_Y4_N59
\BancoRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~295_q\);

-- Location: LABCELL_X39_Y5_N12
\BancoRegistradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[1]~1_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~13_combout\ & ( !\PC|DOUT\(7) ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~13_combout\ & ( (\BancoRegistradores|registrador~295_q\ & !\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaA[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N42
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) & \PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X35_Y4_N19
\BancoRegistradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[30]~30_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~324_q\);

-- Location: FF_X35_Y4_N28
\BancoRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[30]~30_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~68_q\);

-- Location: LABCELL_X35_Y4_N9
\BancoRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1092_combout\ = ( \ROM|memROM~12_combout\ & ( \ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & \BancoRegistradores|registrador~324DUPLICATE_q\) ) ) ) # ( \ROM|memROM~12_combout\ & ( 
-- !\ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & \BancoRegistradores|registrador~68_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~68_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~324DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1092_combout\);

-- Location: LABCELL_X35_Y4_N39
\ULA|ULA30|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1092_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1092_combout\ & ( \ULA|ULA6|signal_B~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1092_combout\,
	combout => \ULA|ULA30|signal_B~0_combout\);

-- Location: LABCELL_X36_Y5_N45
\ULA|ULA30|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|saida~1_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (\ULA|ULA24|Equal1~0_combout\ & ((\ULA|ULA30|signal_B~0_combout\) # (\BancoRegistradores|registrador~324_q\)))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (((\BancoRegistradores|registrador~324_q\ & \ULA|ULA30|signal_B~0_combout\)))) ) ) # ( !\BancoRegistradores|saidaA[0]~6_combout\ & ( (\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA30|signal_B~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000010000010100110001000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~324_q\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA30|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \ULA|ULA30|saida~1_combout\);

-- Location: LABCELL_X35_Y4_N27
\MUX_BANCOREG|saida_MUX[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[30]~30_combout\ = ( \ULA|ULA30|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) ) # ( !\ULA|ULA30|saida~0_combout\ & ( (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & \ULA|ULA30|saida~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datac => \ULA|ULA30|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA30|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[30]~30_combout\);

-- Location: FF_X35_Y4_N20
\BancoRegistradores|registrador~324DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[30]~30_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~324DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N54
\ULA|ULA30|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|saida~2_combout\ = ( \ULA|ULA30|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~324DUPLICATE_q\ & \BancoRegistradores|saidaA[0]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~324DUPLICATE_q\,
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA30|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA30|saida~2_combout\);

-- Location: FF_X37_Y5_N22
\BancoRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[28]~28_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~66_q\);

-- Location: MLABCELL_X37_Y5_N24
\BancoRegistradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1090_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((\BancoRegistradores|registrador~66_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~322_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~66_q\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1090_combout\);

-- Location: MLABCELL_X37_Y5_N33
\ULA|ULA28|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1090_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1090_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1090_combout\,
	combout => \ULA|ULA28|signal_B~0_combout\);

-- Location: MLABCELL_X37_Y5_N39
\ULA|ULA28|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|saida~0_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA28|signal_B~0_combout\ & \BancoRegistradores|saidaA[28]~26_combout\) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA24|Equal1~0_combout\ & 
-- ((\BancoRegistradores|saidaA[28]~26_combout\) # (\ULA|ULA28|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[28]~26_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA28|saida~0_combout\);

-- Location: LABCELL_X41_Y5_N30
\BancoRegistradores|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1109_combout\ = ( !\MUX_BANCOREG|saida_MUX[27]~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[27]~27_combout\,
	combout => \BancoRegistradores|registrador~1109_combout\);

-- Location: FF_X41_Y5_N32
\BancoRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1109_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~65_q\);

-- Location: LABCELL_X41_Y5_N39
\BancoRegistradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1089_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~65_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~321_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000010100001100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1089_combout\);

-- Location: LABCELL_X41_Y2_N39
\ULA|ULA27|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1089_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1089_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1089_combout\,
	combout => \ULA|ULA27|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y4_N42
\ULA|ULA27|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|AxorB~combout\ = ( \ULA|ULA27|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[27]~25_combout\ ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[27]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	dataf => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA27|AxorB~combout\);

-- Location: MLABCELL_X37_Y4_N48
\ULA|ULA27|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|saida~0_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\BancoRegistradores|saidaA[27]~25_combout\ & \ULA|ULA27|signal_B~0_combout\) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA24|Equal1~0_combout\ & ((\ULA|ULA27|signal_B~0_combout\) # 
-- (\BancoRegistradores|saidaA[27]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA27|saida~0_combout\);

-- Location: MLABCELL_X37_Y3_N42
\ULA|ULA27|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|saida~1_combout\ = ( !\ULA|ULA27|saida~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA27|AxorB~combout\ $ (((\ULA|ULA26|signal_B~0_combout\ & \BancoRegistradores|saidaA[26]~24_combout\)))) ) ) ) # ( 
-- !\ULA|ULA27|saida~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA27|AxorB~combout\ $ (((\BancoRegistradores|saidaA[26]~24_combout\) # (\ULA|ULA26|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110111000000000000000011111110111100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA27|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA27|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA27|saida~1_combout\);

-- Location: LABCELL_X41_Y5_N42
\MUX_BANCOREG|saida_MUX[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[27]~27_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & !\ULA|ULA27|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datad => \ULA|ULA27|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[27]~27_combout\);

-- Location: FF_X41_Y5_N44
\BancoRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[27]~27_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~321_q\);

-- Location: LABCELL_X41_Y4_N39
\BancoRegistradores|saidaA[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[27]~25_combout\ = (\BancoRegistradores|registrador~321_q\ & \BancoRegistradores|saidaA[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[27]~25_combout\);

-- Location: LABCELL_X36_Y5_N21
\ULA|ULA28|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|AxorB~combout\ = ( \ULA|ULA28|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[28]~26_combout\ ) ) # ( !\ULA|ULA28|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[28]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[28]~26_combout\,
	dataf => \ULA|ULA28|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA28|AxorB~combout\);

-- Location: MLABCELL_X37_Y3_N6
\ULA|ULA28|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|soma~combout\ = ( \ULA|ULA27|signal_B~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA28|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[27]~25_combout\ & ((!\ULA|ULA26|signal_B~0_combout\) # 
-- (!\BancoRegistradores|saidaA[26]~24_combout\))))) ) ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA28|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[27]~25_combout\) # ((!\ULA|ULA26|signal_B~0_combout\) # 
-- (!\BancoRegistradores|saidaA[26]~24_combout\)))) ) ) ) # ( \ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA28|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[27]~25_combout\ & (!\ULA|ULA26|signal_B~0_combout\ & 
-- !\BancoRegistradores|saidaA[26]~24_combout\)))) ) ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA28|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[27]~25_combout\) # ((!\ULA|ULA26|signal_B~0_combout\ & 
-- !\BancoRegistradores|saidaA[26]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100110011011001100110000110011001101100110011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	datab => \ULA|ULA28|ALT_INV_AxorB~combout\,
	datac => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datae => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA28|soma~combout\);

-- Location: MLABCELL_X37_Y3_N51
\ULA|ULA28|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|saida~2_combout\ = ( \ULA|ULA28|soma~combout\ & ( (!\ULA|ULA28|saida~0_combout\ & !\ULA|ULA24|saida~0_combout\) ) ) # ( !\ULA|ULA28|soma~combout\ & ( !\ULA|ULA28|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA28|ALT_INV_soma~combout\,
	combout => \ULA|ULA28|saida~2_combout\);

-- Location: MLABCELL_X37_Y5_N21
\MUX_BANCOREG|saida_MUX[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[28]~28_combout\ = ( !\ULA|ULA28|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA28|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[28]~28_combout\);

-- Location: FF_X37_Y5_N38
\BancoRegistradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[28]~28_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~322_q\);

-- Location: MLABCELL_X37_Y5_N45
\BancoRegistradores|saidaA[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[28]~26_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~322_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datae => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[28]~26_combout\);

-- Location: LABCELL_X36_Y5_N24
\ULA|ULA28|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|saida~1_combout\ = ( \ULA|ULA28|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[28]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[28]~26_combout\,
	dataf => \ULA|ULA28|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA28|saida~1_combout\);

-- Location: LABCELL_X35_Y4_N21
\ULA|ULA30|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|AxorB~combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \ULA|ULA30|signal_B~0_combout\ & ( !\BancoRegistradores|registrador~324DUPLICATE_q\ ) ) ) # ( !\BancoRegistradores|saidaA[0]~6_combout\ & ( \ULA|ULA30|signal_B~0_combout\ ) ) # ( 
-- \BancoRegistradores|saidaA[0]~6_combout\ & ( !\ULA|ULA30|signal_B~0_combout\ & ( \BancoRegistradores|registrador~324DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_registrador~324DUPLICATE_q\,
	datae => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA30|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA30|AxorB~combout\);

-- Location: LABCELL_X35_Y3_N6
\ULA|ULA28|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|AxBandC~combout\ = ( \ULA|ULA27|signal_B~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( (\ULA|ULA28|AxorB~combout\ & (((\BancoRegistradores|saidaA[26]~24_combout\ & \ULA|ULA26|signal_B~0_combout\)) # 
-- (\BancoRegistradores|saidaA[27]~25_combout\))) ) ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[27]~25_combout\ & (\BancoRegistradores|saidaA[26]~24_combout\ & (\ULA|ULA26|signal_B~0_combout\ & 
-- \ULA|ULA28|AxorB~combout\))) ) ) ) # ( \ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( (\ULA|ULA28|AxorB~combout\ & (((\ULA|ULA26|signal_B~0_combout\) # (\BancoRegistradores|saidaA[26]~24_combout\)) # 
-- (\BancoRegistradores|saidaA[27]~25_combout\))) ) ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[27]~25_combout\ & (\ULA|ULA28|AxorB~combout\ & ((\ULA|ULA26|signal_B~0_combout\) # 
-- (\BancoRegistradores|saidaA[26]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000111111100000000000000010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datac => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA28|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA28|AxBandC~combout\);

-- Location: LABCELL_X35_Y3_N57
\ULA|ULA30|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|AxBandC~combout\ = ( \ULA|ULA30|AxorB~combout\ & ( \ULA|ULA28|AxBandC~combout\ & ( (\BancoRegistradores|saidaA[29]~27_combout\) # (\ULA|ULA29|signal_B~0_combout\) ) ) ) # ( \ULA|ULA30|AxorB~combout\ & ( !\ULA|ULA28|AxBandC~combout\ & ( 
-- (!\ULA|ULA29|signal_B~0_combout\ & (\ULA|ULA28|saida~1_combout\ & \BancoRegistradores|saidaA[29]~27_combout\)) # (\ULA|ULA29|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[29]~27_combout\) # (\ULA|ULA28|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	datae => \ULA|ULA30|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA28|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA30|AxBandC~combout\);

-- Location: LABCELL_X35_Y3_N18
\BancoRegistradores|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1111_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~31_combout\,
	combout => \BancoRegistradores|registrador~1111_combout\);

-- Location: FF_X35_Y3_N19
\BancoRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1111_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~69_q\);

-- Location: MLABCELL_X37_Y5_N54
\BancoRegistradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1093_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~69_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~325_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000001010100010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~325_q\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~69_q\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1093_combout\);

-- Location: MLABCELL_X37_Y5_N51
\ULA|ULA31|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|signal_B~0_combout\ = ( \ULA|ULA6|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1093_combout\ $ (\ULA|ULA8|signal_B~1_combout\) ) ) # ( !\ULA|ULA6|signal_B~1_combout\ & ( (\BancoRegistradores|registrador~1093_combout\ & 
-- \ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1093_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA31|signal_B~0_combout\);

-- Location: LABCELL_X35_Y3_N21
\ULA|ULA31|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~0_combout\ = ( \BancoRegistradores|registrador~325_q\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (\ULA|ULA24|Equal1~0_combout\ & ((\BancoRegistradores|saidaA[0]~6_combout\) # (\ULA|ULA31|signal_B~0_combout\)))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (\ULA|ULA31|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[0]~6_combout\)))) ) ) # ( !\BancoRegistradores|registrador~325_q\ & ( (\ULA|ULA31|signal_B~0_combout\ & (\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010011000001010001001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~325_q\,
	combout => \ULA|ULA31|saida~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\MUX_BANCOREG|saida_MUX[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[31]~31_combout\ = ( \ULA|ULA31|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) ) # ( !\ULA|ULA31|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( (\ULA|ULA24|saida~0_combout\ & 
-- (!\ULA|ULA31|soma~0_combout\ $ (((!\ULA|ULA30|saida~2_combout\ & !\ULA|ULA30|AxBandC~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datad => \ULA|ULA30|ALT_INV_AxBandC~combout\,
	datae => \ULA|ULA31|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[31]~31_combout\);

-- Location: FF_X35_Y3_N32
\BancoRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[31]~31_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~325_q\);

-- Location: MLABCELL_X37_Y5_N15
\ULA|ULA31|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|soma~0_combout\ = ( \ULA|ULA31|signal_B~0_combout\ & ( (!\BancoRegistradores|saidaA[0]~6_combout\) # (!\BancoRegistradores|registrador~325_q\) ) ) # ( !\ULA|ULA31|signal_B~0_combout\ & ( (\BancoRegistradores|saidaA[0]~6_combout\ & 
-- \BancoRegistradores|registrador~325_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~325_q\,
	dataf => \ULA|ULA31|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA31|soma~0_combout\);

-- Location: LABCELL_X36_Y4_N15
\ULA|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal5~0_combout\ = ( \UNI_LOG_ULA|ULActrl~0_combout\ & ( \UNI_LOG_ULA|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \ULA|Equal5~0_combout\);

-- Location: LABCELL_X35_Y3_N12
\ULA|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~4_combout\ = ( !\ULA|ULA31|saida~0_combout\ & ( \ULA|ULA30|AxBandC~combout\ & ( (\ULA|Equal5~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (\ULA|ULA31|soma~0_combout\))) ) ) ) # ( !\ULA|ULA31|saida~0_combout\ & ( 
-- !\ULA|ULA30|AxBandC~combout\ & ( (\ULA|Equal5~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA30|saida~2_combout\ $ (\ULA|ULA31|soma~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001001000000000000000000001111000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA30|ALT_INV_AxBandC~combout\,
	combout => \ULA|saida[0]~4_combout\);

-- Location: FF_X40_Y2_N4
\BancoRegistradores|registrador~294DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~294DUPLICATE_q\);

-- Location: FF_X39_Y3_N2
\BancoRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~38_q\);

-- Location: LABCELL_X40_Y3_N54
\BancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1062_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ULA|ULA8|signal_B~0_combout\ & (((\BancoRegistradores|registrador~38_q\ & !\ROM|memROM~11_combout\)))) # (\ULA|ULA8|signal_B~0_combout\ & (((\ROM|memROM~11_combout\)) # 
-- (\BancoRegistradores|registrador~294DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~294DUPLICATE_q\,
	datab => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1062_combout\);

-- Location: LABCELL_X41_Y5_N57
\ULA|ULA0|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1062_combout\ & ( ((\ULA|ULA8|signal_B~0_combout\ & (\ROM|memROM~7_combout\ & \ULA|ULA8|signal_B~2_combout\))) # (\ULA|ULA8|signal_B~1_combout\) ) ) # ( 
-- !\BancoRegistradores|registrador~1062_combout\ & ( (\ULA|ULA8|signal_B~0_combout\ & (!\ULA|ULA8|signal_B~1_combout\ & ((!\ULA|ULA8|signal_B~2_combout\) # (\ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010000010100000001000000001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	combout => \ULA|ULA0|signal_B~0_combout\);

-- Location: LABCELL_X40_Y5_N24
\ULA|ULA0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|saida~0_combout\ = ( \BancoRegistradores|saidaA[0]~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ROM|memROM~3_combout\ $ (\ULA|ULA0|signal_B~0_combout\)) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (((\ULA|ULA0|signal_B~0_combout\)))) ) ) # ( !\BancoRegistradores|saidaA[0]~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA0|signal_B~0_combout\ $ (((!\ROM|memROM~3_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011000100000010001100010011000100011111111100010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ULA|ULA0|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	combout => \ULA|ULA0|saida~0_combout\);

-- Location: MLABCELL_X37_Y4_N0
\BancoRegistradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1108_combout\ = ( !\MUX_BANCOREG|saida_MUX[25]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[25]~25_combout\,
	combout => \BancoRegistradores|registrador~1108_combout\);

-- Location: FF_X37_Y4_N1
\BancoRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1108_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~63_q\);

-- Location: MLABCELL_X37_Y5_N12
\BancoRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1087_combout\ = ( \BancoRegistradores|registrador~319_q\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & ((!\BancoRegistradores|registrador~63_q\) # (\ULA|ULA8|signal_B~0_combout\)))) ) ) # ( 
-- !\BancoRegistradores|registrador~319_q\ & ( (!\ULA|ULA8|signal_B~0_combout\ & (!\BancoRegistradores|registrador~63_q\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000110100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~319_q\,
	combout => \BancoRegistradores|registrador~1087_combout\);

-- Location: MLABCELL_X37_Y5_N9
\ULA|ULA25|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1087_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1087_combout\ & ( \ULA|ULA6|signal_B~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1087_combout\,
	combout => \ULA|ULA25|signal_B~0_combout\);

-- Location: MLABCELL_X37_Y5_N48
\ULA|ULA25|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~1_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA25|signal_B~0_combout\ & \BancoRegistradores|saidaA[25]~23_combout\) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA24|Equal1~0_combout\ & 
-- ((\BancoRegistradores|saidaA[25]~23_combout\) # (\ULA|ULA25|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA25|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~23_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA25|saida~1_combout\);

-- Location: FF_X39_Y6_N17
\BancoRegistradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[23]~23_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~317_q\);

-- Location: LABCELL_X39_Y6_N0
\BancoRegistradores|saidaA[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[23]~21_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~317_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~317_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[23]~21_combout\);

-- Location: LABCELL_X39_Y6_N45
\ULA|ULA23|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|AxorB~combout\ = ( \ULA|ULA23|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[23]~21_combout\ ) ) # ( !\ULA|ULA23|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[23]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~21_combout\,
	dataf => \ULA|ULA23|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA23|AxorB~combout\);

-- Location: LABCELL_X36_Y3_N54
\ULA|ULA23|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|soma~combout\ = ( \ULA|ULA23|AxorB~combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & ((!\BancoRegistradores|saidaA[21]~19_combout\) # ((!\ULA|ULA21|signal_B~0_combout\) # 
-- (!\ULA|ULA22|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[22]~20_combout\ & (!\ULA|ULA22|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[21]~19_combout\) # (!\ULA|ULA21|signal_B~0_combout\)))) ) ) ) # ( !\ULA|ULA23|AxorB~combout\ & ( 
-- \ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & (\BancoRegistradores|saidaA[21]~19_combout\ & (\ULA|ULA21|signal_B~0_combout\ & \ULA|ULA22|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[22]~20_combout\ & 
-- (((\BancoRegistradores|saidaA[21]~19_combout\ & \ULA|ULA21|signal_B~0_combout\)) # (\ULA|ULA22|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA23|AxorB~combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & 
-- ((!\ULA|ULA22|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[21]~19_combout\ & !\ULA|ULA21|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[22]~20_combout\ & (!\BancoRegistradores|saidaA[21]~19_combout\ & (!\ULA|ULA21|signal_B~0_combout\ & 
-- !\ULA|ULA22|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA23|AxorB~combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & (\ULA|ULA22|signal_B~0_combout\ & ((\ULA|ULA21|signal_B~0_combout\) # 
-- (\BancoRegistradores|saidaA[21]~19_combout\)))) # (\BancoRegistradores|saidaA[22]~20_combout\ & (((\ULA|ULA22|signal_B~0_combout\) # (\ULA|ULA21|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[21]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111111110001000000000000001000111111111111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datab => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA23|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA23|soma~combout\);

-- Location: LABCELL_X39_Y3_N36
\ULA|ULA23|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|saida~2_combout\ = ( \ULA|ULA23|soma~combout\ & ( (!\ULA|ULA23|saida~1_combout\ & !\ULA|ULA24|saida~0_combout\) ) ) # ( !\ULA|ULA23|soma~combout\ & ( !\ULA|ULA23|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA23|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_soma~combout\,
	combout => \ULA|ULA23|saida~2_combout\);

-- Location: LABCELL_X39_Y6_N12
\MUX_BANCOREG|saida_MUX[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[23]~23_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( !\ULA|ULA23|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA23|ALT_INV_saida~2_combout\,
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[23]~23_combout\);

-- Location: LABCELL_X39_Y6_N42
\BancoRegistradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1107_combout\ = ( !\MUX_BANCOREG|saida_MUX[23]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[23]~23_combout\,
	combout => \BancoRegistradores|registrador~1107_combout\);

-- Location: FF_X39_Y6_N44
\BancoRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1107_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~61_q\);

-- Location: LABCELL_X39_Y6_N24
\BancoRegistradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1085_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (!\BancoRegistradores|registrador~61_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~317_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001101000000001000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1085_combout\);

-- Location: LABCELL_X39_Y6_N33
\ULA|ULA23|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1085_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1085_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1085_combout\,
	combout => \ULA|ULA23|signal_B~0_combout\);

-- Location: LABCELL_X39_Y6_N6
\ULA|ULA23|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|saida~1_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA23|signal_B~0_combout\ & \BancoRegistradores|saidaA[23]~21_combout\) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( (\ULA|ULA24|Equal1~0_combout\ & 
-- ((\BancoRegistradores|saidaA[23]~21_combout\) # (\ULA|ULA23|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[23]~21_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA23|saida~1_combout\);

-- Location: MLABCELL_X42_Y4_N33
\MUX_BANCOREG|saida_MUX[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[17]~17_combout\ = ( \ULA|ULA17|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA17|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[17]~17_combout\);

-- Location: FF_X42_Y4_N59
\BancoRegistradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[17]~17_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~311_q\);

-- Location: MLABCELL_X42_Y4_N48
\BancoRegistradores|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1104_combout\ = ( !\MUX_BANCOREG|saida_MUX[17]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \BancoRegistradores|registrador~1104_combout\);

-- Location: FF_X42_Y4_N49
\BancoRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1104_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~55_q\);

-- Location: MLABCELL_X42_Y4_N39
\BancoRegistradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1079_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~55_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~311_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110001000000001011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~311_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~55_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1079_combout\);

-- Location: LABCELL_X41_Y4_N48
\ULA|ULA17|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1079_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1079_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1079_combout\,
	combout => \ULA|ULA17|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y3_N18
\BancoRegistradores|saidaA[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[17]~16_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~311_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~311_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[17]~16_combout\);

-- Location: MLABCELL_X42_Y3_N39
\ULA|ULA17|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~4_combout\ = ( \BancoRegistradores|saidaA[17]~16_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA17|signal_B~0_combout\) ) ) # ( !\BancoRegistradores|saidaA[17]~16_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ $ 
-- (!\ULA|ULA17|signal_B~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	combout => \ULA|ULA17|saida~4_combout\);

-- Location: MLABCELL_X42_Y3_N9
\ULA|ULA17|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~0_combout\ = ( \BancoRegistradores|saidaA[17]~16_combout\ & ( \ULA|ULA17|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	combout => \ULA|ULA17|saida~0_combout\);

-- Location: MLABCELL_X42_Y3_N54
\ULA|ULA17|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~3_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA17|saida~0_combout\ ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA17|saida~0_combout\ ) ) ) # ( 
-- \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( (!\BancoRegistradores|saidaA[17]~16_combout\ & !\ULA|ULA17|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( 
-- !\BancoRegistradores|saidaA[17]~16_combout\ $ (!\BancoRegistradores|saidaA[16]~15_combout\ $ (!\ULA|ULA17|signal_B~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110101000001010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	datac => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA17|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA17|saida~3_combout\);

-- Location: MLABCELL_X42_Y3_N12
\ULA|ULA17|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~2_combout\ = ( \ULA|ULA17|saida~3_combout\ & ( \ULA|ULA15|Carry_Out~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA17|saida~4_combout\ $ (!\ULA|ULA24|Equal1~0_combout\)))) ) ) ) # ( 
-- !\ULA|ULA17|saida~3_combout\ & ( \ULA|ULA15|Carry_Out~combout\ & ( ((!\ULA|ULA17|saida~4_combout\ $ (!\ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA24|Equal2~0_combout\)) # (\ULA|ULA16|signal_B~0_combout\) ) ) ) # ( \ULA|ULA17|saida~3_combout\ & ( 
-- !\ULA|ULA15|Carry_Out~combout\ & ( (\ULA|ULA16|signal_B~0_combout\ & (!\ULA|ULA17|saida~4_combout\ & !\ULA|ULA24|Equal2~0_combout\)) ) ) ) # ( !\ULA|ULA17|saida~3_combout\ & ( !\ULA|ULA15|Carry_Out~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\) # 
-- ((!\ULA|ULA17|saida~4_combout\) # (\ULA|ULA24|Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111010001000000000001111101111111110010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA17|ALT_INV_saida~4_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA17|ALT_INV_saida~3_combout\,
	dataf => \ULA|ULA15|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA17|saida~2_combout\);

-- Location: LABCELL_X39_Y6_N27
\MUX_BANCOREG|saida_MUX[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[19]~19_combout\ = ( \ULA|ULA19|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA19|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[19]~19_combout\);

-- Location: LABCELL_X39_Y6_N21
\BancoRegistradores|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1105_combout\ = ( !\MUX_BANCOREG|saida_MUX[19]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[19]~19_combout\,
	combout => \BancoRegistradores|registrador~1105_combout\);

-- Location: FF_X39_Y6_N23
\BancoRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1105_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~57_q\);

-- Location: FF_X39_Y6_N41
\BancoRegistradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[19]~19_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~313_q\);

-- Location: LABCELL_X39_Y6_N51
\BancoRegistradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1081_combout\ = ( !\ROM|memROM~11_combout\ & ( \ULA|ULA8|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~313_q\ & \ROM|memROM~12_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ULA|ULA8|signal_B~0_combout\ & ( 
-- (!\BancoRegistradores|registrador~57_q\ & \ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~57_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~313_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1081_combout\);

-- Location: LABCELL_X39_Y6_N54
\ULA|ULA19|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1081_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1081_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1081_combout\,
	combout => \ULA|ULA19|signal_B~0_combout\);

-- Location: MLABCELL_X37_Y4_N3
\BancoRegistradores|saidaA[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[19]~17_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~313_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~313_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[19]~17_combout\);

-- Location: FF_X36_Y4_N35
\BancoRegistradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[18]~18_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~312_q\);

-- Location: FF_X42_Y3_N26
\BancoRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[18]~18_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~56_q\);

-- Location: LABCELL_X36_Y4_N30
\BancoRegistradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1080_combout\ = ( \ULA|ULA8|signal_B~0_combout\ & ( \ROM|memROM~12_combout\ & ( (\BancoRegistradores|registrador~312_q\ & !\ROM|memROM~11_combout\) ) ) ) # ( !\ULA|ULA8|signal_B~0_combout\ & ( \ROM|memROM~12_combout\ & ( 
-- (\BancoRegistradores|registrador~56_q\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~56_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1080_combout\);

-- Location: LABCELL_X36_Y4_N48
\ULA|ULA18|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1080_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1080_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1080_combout\,
	combout => \ULA|ULA18|signal_B~0_combout\);

-- Location: LABCELL_X36_Y4_N42
\ULA|ULA18|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|AxorB~combout\ = ( \ULA|ULA18|signal_B~0_combout\ & ( (!\BancoRegistradores|registrador~312_q\) # (!\BancoRegistradores|saidaA[0]~6_combout\) ) ) # ( !\ULA|ULA18|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~312_q\ & 
-- \BancoRegistradores|saidaA[0]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA18|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA18|AxorB~combout\);

-- Location: LABCELL_X36_Y3_N18
\ULA|ULA18|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|AxBandC~combout\ = ( \ULA|ULA17|signal_B~0_combout\ & ( \ULA|ULA15|Carry_Out~combout\ & ( (\ULA|ULA18|AxorB~combout\ & (((\ULA|ULA16|signal_B~0_combout\ & \BancoRegistradores|saidaA[16]~15_combout\)) # 
-- (\BancoRegistradores|saidaA[17]~16_combout\))) ) ) ) # ( !\ULA|ULA17|signal_B~0_combout\ & ( \ULA|ULA15|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[17]~16_combout\ & (\ULA|ULA16|signal_B~0_combout\ & (\BancoRegistradores|saidaA[16]~15_combout\ & 
-- \ULA|ULA18|AxorB~combout\))) ) ) ) # ( \ULA|ULA17|signal_B~0_combout\ & ( !\ULA|ULA15|Carry_Out~combout\ & ( (\ULA|ULA18|AxorB~combout\ & (((\BancoRegistradores|saidaA[16]~15_combout\) # (\ULA|ULA16|signal_B~0_combout\)) # 
-- (\BancoRegistradores|saidaA[17]~16_combout\))) ) ) ) # ( !\ULA|ULA17|signal_B~0_combout\ & ( !\ULA|ULA15|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[17]~16_combout\ & (\ULA|ULA18|AxorB~combout\ & ((\BancoRegistradores|saidaA[16]~15_combout\) # 
-- (\ULA|ULA16|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000111111100000000000000010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datab => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	datad => \ULA|ULA18|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA15|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA18|AxBandC~combout\);

-- Location: LABCELL_X36_Y3_N6
\ULA|ULA19|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|saida~0_combout\ = ( \ULA|ULA18|saida~0_combout\ & ( \ULA|ULA18|AxBandC~combout\ & ( (!\ULA|ULA19|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[19]~17_combout\)))) # 
-- (\ULA|ULA19|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # (\BancoRegistradores|saidaA[19]~17_combout\))) ) ) ) # ( !\ULA|ULA18|saida~0_combout\ & ( \ULA|ULA18|AxBandC~combout\ & ( 
-- (!\ULA|ULA19|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[19]~17_combout\)))) # (\ULA|ULA19|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # 
-- (\BancoRegistradores|saidaA[19]~17_combout\))) ) ) ) # ( \ULA|ULA18|saida~0_combout\ & ( !\ULA|ULA18|AxBandC~combout\ & ( (!\ULA|ULA19|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ 
-- (\BancoRegistradores|saidaA[19]~17_combout\)))) # (\ULA|ULA19|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # (\BancoRegistradores|saidaA[19]~17_combout\))) ) ) ) # ( !\ULA|ULA18|saida~0_combout\ & ( 
-- !\ULA|ULA18|AxBandC~combout\ & ( (!\ULA|ULA19|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & ((\BancoRegistradores|saidaA[19]~17_combout\)))) # (\ULA|ULA19|signal_B~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[19]~17_combout\) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & ((\BancoRegistradores|saidaA[19]~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011101100001000101110110000100010111011000010001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\,
	datae => \ULA|ULA18|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA18|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA19|saida~0_combout\);

-- Location: LABCELL_X40_Y6_N57
\MUX_BANCOREG|saida_MUX[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[14]~14_combout\ = ( \ULA|ULA14|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA14|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[14]~14_combout\);

-- Location: FF_X40_Y6_N26
\BancoRegistradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[14]~14_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~308_q\);

-- Location: FF_X40_Y6_N44
\BancoRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[14]~14_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~52_q\);

-- Location: LABCELL_X40_Y6_N15
\BancoRegistradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1076_combout\ = ( \ROM|memROM~12_combout\ & ( \ULA|ULA8|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~308_q\ & !\ROM|memROM~11_combout\) ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ULA|ULA8|signal_B~0_combout\ & ( 
-- (\BancoRegistradores|registrador~52_q\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1076_combout\);

-- Location: LABCELL_X40_Y6_N54
\ULA|ULA14|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1076_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (\ULA|ULA8|signal_B~0_combout\ & ((!\ULA|ULA8|signal_B~2_combout\ & 
-- ((!\BancoRegistradores|registrador~1076_combout\))) # (\ULA|ULA8|signal_B~2_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000101000011000000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1076_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA14|signal_B~0_combout\);

-- Location: LABCELL_X40_Y6_N48
\BancoRegistradores|saidaA[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[14]~13_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~308_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~308_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[14]~13_combout\);

-- Location: LABCELL_X40_Y2_N24
\BancoRegistradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[12]~12_combout\ = ( \BancoRegistradores|registrador~306_q\ & ( \BancoRegistradores|saidaA[0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~306_q\,
	combout => \BancoRegistradores|saidaA[12]~12_combout\);

-- Location: LABCELL_X40_Y3_N57
\ULA|ULA12|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|saida~0_combout\ = ( \ULA|ULA12|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[12]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \ULA|ULA12|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA12|saida~0_combout\);

-- Location: LABCELL_X41_Y3_N30
\ULA|ULA12|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|saida~1_combout\ = ( \ULA|ULA12|signal_B~0_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[12]~12_combout\ $ (((!\ULA|ULA11|signal_B~0_combout\) # 
-- (!\BancoRegistradores|saidaA[11]~11_combout\))))) ) ) ) # ( !\ULA|ULA12|signal_B~0_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( !\BancoRegistradores|saidaA[12]~12_combout\ $ (((\ULA|ULA11|signal_B~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ & 
-- \BancoRegistradores|saidaA[11]~11_combout\)))) ) ) ) # ( \ULA|ULA12|signal_B~0_combout\ & ( !\ULA|ULA10|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[12]~12_combout\ $ (((!\ULA|ULA11|signal_B~0_combout\ & 
-- !\BancoRegistradores|saidaA[11]~11_combout\))))) ) ) ) # ( !\ULA|ULA12|signal_B~0_combout\ & ( !\ULA|ULA10|Carry_Out~combout\ & ( !\BancoRegistradores|saidaA[12]~12_combout\ $ (((!\ULA|ULA24|Equal1~0_combout\ & 
-- ((\BancoRegistradores|saidaA[11]~11_combout\) # (\ULA|ULA11|signal_B~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001011010011000001010000010101010100110100101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datab => \ULA|ULA11|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datae => \ULA|ULA12|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA10|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA12|saida~1_combout\);

-- Location: LABCELL_X41_Y3_N15
\ULA|ULA12|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|saida~2_combout\ = ( \ULA|ULA12|saida~1_combout\ & ( (\ULA|ULA12|saida~0_combout\ & \ULA|ULA24|Equal2~0_combout\) ) ) # ( !\ULA|ULA12|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA12|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA12|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA12|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA12|saida~2_combout\);

-- Location: LABCELL_X40_Y2_N54
\MUX_BANCOREG|saida_MUX[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[12]~12_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & \ULA|ULA12|saida~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datad => \ULA|ULA12|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[12]~12_combout\);

-- Location: FF_X40_Y2_N11
\BancoRegistradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[12]~12_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~306_q\);

-- Location: FF_X40_Y2_N59
\BancoRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[12]~12_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~50_q\);

-- Location: LABCELL_X40_Y2_N12
\BancoRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1074_combout\ = ( \ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|registrador~306_q\ & \ROM|memROM~12_combout\)) ) ) # ( !\ULA|ULA8|signal_B~0_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (\ROM|memROM~12_combout\ & \BancoRegistradores|registrador~50_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~50_q\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	combout => \BancoRegistradores|registrador~1074_combout\);

-- Location: LABCELL_X40_Y2_N45
\ULA|ULA12|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1074_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1074_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \ULA|ULA12|signal_B~0_combout\);

-- Location: LABCELL_X41_Y5_N51
\ULA|ULA13|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|AxorB~combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1075_combout\ $ (((!\BancoRegistradores|registrador~307_q\) # (!\BancoRegistradores|saidaA[0]~6_combout\))) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( 
-- (!\BancoRegistradores|registrador~307_q\ & (((!\BancoRegistradores|registrador~1075_combout\ & \ULA|ULA6|signal_B~1_combout\)))) # (\BancoRegistradores|registrador~307_q\ & (!\BancoRegistradores|saidaA[0]~6_combout\ $ (((!\ULA|ULA6|signal_B~1_combout\) # 
-- (\BancoRegistradores|registrador~1075_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111100001000100011110000100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datab => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1075_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA13|AxorB~combout\);

-- Location: LABCELL_X40_Y3_N24
\ULA|ULA13|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|AxBandC~combout\ = ( \BancoRegistradores|saidaA[12]~12_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( (\ULA|ULA13|AxorB~combout\ & (((\ULA|ULA11|signal_B~0_combout\ & \BancoRegistradores|saidaA[11]~11_combout\)) # 
-- (\ULA|ULA12|signal_B~0_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[12]~12_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( (\ULA|ULA12|signal_B~0_combout\ & (\ULA|ULA11|signal_B~0_combout\ & (\BancoRegistradores|saidaA[11]~11_combout\ & 
-- \ULA|ULA13|AxorB~combout\))) ) ) ) # ( \BancoRegistradores|saidaA[12]~12_combout\ & ( !\ULA|ULA10|Carry_Out~combout\ & ( (\ULA|ULA13|AxorB~combout\ & (((\BancoRegistradores|saidaA[11]~11_combout\) # (\ULA|ULA11|signal_B~0_combout\)) # 
-- (\ULA|ULA12|signal_B~0_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[12]~12_combout\ & ( !\ULA|ULA10|Carry_Out~combout\ & ( (\ULA|ULA12|signal_B~0_combout\ & (\ULA|ULA13|AxorB~combout\ & ((\BancoRegistradores|saidaA[11]~11_combout\) # 
-- (\ULA|ULA11|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000111111100000000000000010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA11|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datad => \ULA|ULA13|ALT_INV_AxorB~combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \ULA|ULA10|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA13|AxBandC~combout\);

-- Location: LABCELL_X41_Y3_N54
\ULA|ULA14|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|saida~0_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA13|AxBandC~combout\ & ( (\ULA|ULA14|signal_B~0_combout\ & \BancoRegistradores|saidaA[14]~13_combout\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA13|AxBandC~combout\ & ( 
-- (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA14|signal_B~0_combout\ $ (\BancoRegistradores|saidaA[14]~13_combout\))) # (\ULA|ULA24|Equal1~0_combout\ & ((\BancoRegistradores|saidaA[14]~13_combout\) # (\ULA|ULA14|signal_B~0_combout\))) ) ) ) # ( 
-- \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA13|AxBandC~combout\ & ( (\ULA|ULA14|signal_B~0_combout\ & \BancoRegistradores|saidaA[14]~13_combout\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA13|AxBandC~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & 
-- (!\ULA|ULA14|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[14]~13_combout\ $ (\ULA|ULA13|saida~0_combout\)))) # (\ULA|ULA24|Equal1~0_combout\ & (((\BancoRegistradores|saidaA[14]~13_combout\)) # (\ULA|ULA14|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110110010111000000110000001110010111100101110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	datad => \ULA|ULA13|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA13|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA14|saida~0_combout\);

-- Location: LABCELL_X41_Y2_N45
\MUX_BANCOREG|saida_MUX[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[10]~10_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA10|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[10]~10_combout\);

-- Location: FF_X41_Y2_N46
\BancoRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[10]~10_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~48_q\);

-- Location: FF_X41_Y2_N37
\BancoRegistradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[10]~10_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~304_q\);

-- Location: LABCELL_X41_Y2_N36
\BancoRegistradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1072_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|registrador~48_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~304_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000011100000010000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~304_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1072_combout\);

-- Location: LABCELL_X41_Y2_N9
\ULA|ULA10|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1072_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\BancoRegistradores|registrador~1072_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1072_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA10|signal_B~0_combout\);

-- Location: LABCELL_X41_Y2_N48
\BancoRegistradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[10]~10_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~304_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_registrador~304_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[10]~10_combout\);

-- Location: LABCELL_X41_Y2_N6
\BancoRegistradores|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1099_combout\ = ( !\MUX_BANCOREG|saida_MUX[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \BancoRegistradores|registrador~1099_combout\);

-- Location: FF_X41_Y2_N7
\BancoRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1099_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~45_q\);

-- Location: LABCELL_X41_Y2_N15
\BancoRegistradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1069_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~45_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~301_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000000100001011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~301_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~45_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1069_combout\);

-- Location: LABCELL_X41_Y2_N18
\ULA|ULA7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|saida~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( (\BancoRegistradores|registrador~1069_combout\ & \BancoRegistradores|saidaA[7]~8_combout\) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( (!\BancoRegistradores|registrador~1069_combout\ & 
-- (\BancoRegistradores|saidaA[7]~8_combout\ & \ULA|ULA6|signal_B~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[7]~8_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA7|saida~0_combout\);

-- Location: LABCELL_X41_Y2_N51
\ULA|ULA7|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1069_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1069_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \ULA|ULA7|signal_B~0_combout\);

-- Location: LABCELL_X40_Y5_N48
\ULA|ULA7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|saida~1_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA5|Carry_Out~combout\ & ( (!\ULA|ULA7|signal_B~0_combout\ & !\BancoRegistradores|saidaA[7]~8_combout\) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA5|Carry_Out~combout\ & ( 
-- !\ULA|ULA7|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[7]~8_combout\ $ (((!\BancoRegistradores|saidaA[6]~7_combout\) # (!\ULA|ULA6|signal_B~0_combout\)))) ) ) ) # ( \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA5|Carry_Out~combout\ & ( 
-- (!\ULA|ULA7|signal_B~0_combout\ & !\BancoRegistradores|saidaA[7]~8_combout\) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA5|Carry_Out~combout\ & ( !\ULA|ULA7|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[7]~8_combout\ $ 
-- (((!\BancoRegistradores|saidaA[6]~7_combout\ & !\ULA|ULA6|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001011010101000001010000010100101100101101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[6]~7_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[7]~8_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA5|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA7|saida~1_combout\);

-- Location: LABCELL_X40_Y5_N33
\ULA|ULA7|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|saida~2_combout\ = ( \ULA|ULA7|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA7|saida~0_combout\) ) ) # ( !\ULA|ULA7|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA7|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA7|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA7|saida~2_combout\);

-- Location: LABCELL_X41_Y2_N12
\MUX_BANCOREG|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[7]~7_combout\ = ( \ULA|ULA7|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[7]~7_combout\);

-- Location: FF_X41_Y2_N14
\BancoRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[7]~7_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~301_q\);

-- Location: LABCELL_X41_Y2_N33
\BancoRegistradores|saidaA[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[7]~8_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~301_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~301_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[7]~8_combout\);

-- Location: LABCELL_X41_Y5_N21
\ULA|ULA8|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|AxorB~combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( !\BancoRegistradores|registrador~302_q\ $ (((!\ULA|ULA8|signal_B~1_combout\ & ((!\ULA|ULA6|signal_B~1_combout\) # (\BancoRegistradores|registrador~1070_combout\))) # 
-- (\ULA|ULA8|signal_B~1_combout\ & (!\BancoRegistradores|registrador~1070_combout\)))) ) ) # ( !\BancoRegistradores|saidaA[0]~6_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & (!\BancoRegistradores|registrador~1070_combout\ & \ULA|ULA6|signal_B~1_combout\)) 
-- # (\ULA|ULA8|signal_B~1_combout\ & (\BancoRegistradores|registrador~1070_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001101010110100101100101011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datab => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \ULA|ULA8|AxorB~combout\);

-- Location: LABCELL_X40_Y3_N42
\ULA|ULA8|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|AxBandC~combout\ = ( \ULA|ULA8|AxorB~combout\ & ( \ULA|ULA5|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[7]~8_combout\ & (\BancoRegistradores|saidaA[6]~7_combout\ & (\ULA|ULA6|signal_B~0_combout\ & \ULA|ULA7|signal_B~0_combout\))) # 
-- (\BancoRegistradores|saidaA[7]~8_combout\ & (((\BancoRegistradores|saidaA[6]~7_combout\ & \ULA|ULA6|signal_B~0_combout\)) # (\ULA|ULA7|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA8|AxorB~combout\ & ( !\ULA|ULA5|Carry_Out~combout\ & ( 
-- (!\BancoRegistradores|saidaA[7]~8_combout\ & (\ULA|ULA7|signal_B~0_combout\ & ((\ULA|ULA6|signal_B~0_combout\) # (\BancoRegistradores|saidaA[6]~7_combout\)))) # (\BancoRegistradores|saidaA[7]~8_combout\ & (((\ULA|ULA7|signal_B~0_combout\) # 
-- (\ULA|ULA6|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[6]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110111111100000000000000000000000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[6]~7_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[7]~8_combout\,
	datac => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA7|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA8|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA5|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA8|AxBandC~combout\);

-- Location: LABCELL_X41_Y3_N24
\ULA|ULA9|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|Carry_Out~combout\ = ( \ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[9]~9_combout\ & !\ULA|ULA9|signal_B~0_combout\) ) ) # ( !\ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[9]~9_combout\ & 
-- ((!\ULA|ULA9|signal_B~0_combout\) # (!\ULA|ULA8|saida~0_combout\))) # (\BancoRegistradores|saidaA[9]~9_combout\ & (!\ULA|ULA9|signal_B~0_combout\ & !\ULA|ULA8|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datac => \ULA|ULA9|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA8|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA8|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA9|Carry_Out~combout\);

-- Location: LABCELL_X41_Y3_N6
\ULA|ULA10|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|saida~0_combout\ = ( \ULA|ULA9|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA10|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[10]~10_combout\))) # (\ULA|ULA10|signal_B~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[10]~10_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA10|signal_B~0_combout\ & \BancoRegistradores|saidaA[10]~10_combout\)))) ) ) # ( !\ULA|ULA9|Carry_Out~combout\ & ( 
-- (!\ULA|ULA10|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[10]~10_combout\)))) # (\ULA|ULA10|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # 
-- (\BancoRegistradores|saidaA[10]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000101111100000100010111100001010101001110000101010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA10|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \ULA|ULA9|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA10|saida~0_combout\);

-- Location: LABCELL_X41_Y4_N21
\MUX_BANCOREG|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[4]~4_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA4|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA4|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[4]~4_combout\);

-- Location: FF_X41_Y4_N5
\BancoRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~298_q\);

-- Location: LABCELL_X41_Y4_N33
\BancoRegistradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[4]~4_combout\ = ( \ROM|memROM~5_combout\ & ( (\BancoRegistradores|registrador~298_q\ & (!\ROM|memROM~13_combout\ & !\PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BancoRegistradores|saidaA[4]~4_combout\);

-- Location: FF_X41_Y4_N28
\BancoRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~42_q\);

-- Location: LABCELL_X41_Y4_N30
\BancoRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1066_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((\BancoRegistradores|registrador~42_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~298_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1066_combout\);

-- Location: LABCELL_X41_Y4_N6
\ULA|ULA4|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1066_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1066_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \ULA|ULA4|signal_B~0_combout\);

-- Location: LABCELL_X39_Y4_N0
\ULA|ULA3|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|AxorB~combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1065_combout\ & ( !\BancoRegistradores|saidaA[3]~3_combout\ ) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1065_combout\ & ( 
-- !\BancoRegistradores|saidaA[3]~3_combout\ $ ((((!\ULA|ULA8|signal_B~0_combout\) # (!\ULA|ULA8|signal_B~2_combout\)) # (\ROM|memROM~1_combout\))) ) ) ) # ( \ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1065_combout\ & ( 
-- \BancoRegistradores|saidaA[3]~3_combout\ ) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1065_combout\ & ( !\BancoRegistradores|saidaA[3]~3_combout\ $ (((!\ULA|ULA8|signal_B~0_combout\) # ((\ROM|memROM~1_combout\ & 
-- \ULA|ULA8|signal_B~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111001001100110011001100110011001110011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \ULA|ULA3|AxorB~combout\);

-- Location: LABCELL_X40_Y3_N12
\ULA|ULA3|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|AxBandC~combout\ = ( \ULA|ULA0|Carry_Out~combout\ & ( \ULA|ULA2|signal_B~0_combout\ & ( (\ULA|ULA3|AxorB~combout\ & (((\ULA|ULA1|signal_B~0_combout\) # (\BancoRegistradores|saidaA[2]~2_combout\)) # (\BancoRegistradores|saidaA[1]~1_combout\))) ) 
-- ) ) # ( !\ULA|ULA0|Carry_Out~combout\ & ( \ULA|ULA2|signal_B~0_combout\ & ( (\ULA|ULA3|AxorB~combout\ & (((\BancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[2]~2_combout\))) ) ) ) # ( 
-- \ULA|ULA0|Carry_Out~combout\ & ( !\ULA|ULA2|signal_B~0_combout\ & ( (\BancoRegistradores|saidaA[2]~2_combout\ & (\ULA|ULA3|AxorB~combout\ & ((\ULA|ULA1|signal_B~0_combout\) # (\BancoRegistradores|saidaA[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|ULA0|Carry_Out~combout\ & ( !\ULA|ULA2|signal_B~0_combout\ & ( (\BancoRegistradores|saidaA[1]~1_combout\ & (\BancoRegistradores|saidaA[2]~2_combout\ & (\ULA|ULA3|AxorB~combout\ & \ULA|ULA1|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000001100000011000001110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datac => \ULA|ULA3|ALT_INV_AxorB~combout\,
	datad => \ULA|ULA1|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA0|ALT_INV_Carry_Out~combout\,
	dataf => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA3|AxBandC~combout\);

-- Location: LABCELL_X40_Y5_N54
\ULA|ULA4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|saida~0_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[4]~4_combout\ & (\ULA|ULA4|signal_B~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\BancoRegistradores|saidaA[4]~4_combout\ & 
-- ((!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA4|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[4]~4_combout\ & (!\ULA|ULA4|signal_B~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) 
-- # (\BancoRegistradores|saidaA[4]~4_combout\ & (\ULA|ULA4|signal_B~0_combout\)) ) ) ) # ( \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[4]~4_combout\ & (\ULA|ULA4|signal_B~0_combout\ & 
-- !\ULA|ULA24|Equal2~0_combout\)) # (\BancoRegistradores|saidaA[4]~4_combout\ & ((!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA4|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA3|AxBandC~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & 
-- (!\BancoRegistradores|saidaA[4]~4_combout\ $ (!\ULA|ULA4|signal_B~0_combout\ $ (\ULA|ULA3|saida~0_combout\)))) # (\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[4]~4_combout\ & (\ULA|ULA4|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010001011101110001000110011001000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datab => \ULA|ULA4|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA3|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA3|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA4|saida~0_combout\);

-- Location: LABCELL_X40_Y5_N3
\ULA|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~5_combout\ = ( \ULA|ULA3|saida~1_combout\ & ( (!\ULA|ULA2|saida~2_combout\ & (\ULA|ULA1|saida~0_combout\ & \ULA|ULA4|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA1|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA4|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA3|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[0]~5_combout\);

-- Location: LABCELL_X40_Y5_N30
\ULA|saida[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~6_combout\ = ( \ULA|ULA8|saida~1_combout\ & ( (\ULA|ULA5|saida~0_combout\ & (\ULA|ULA6|saida~0_combout\ & (\ULA|ULA7|saida~2_combout\ & \ULA|saida[0]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA6|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA7|ALT_INV_saida~2_combout\,
	datad => \ULA|ALT_INV_saida[0]~5_combout\,
	dataf => \ULA|ULA8|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[0]~6_combout\);

-- Location: LABCELL_X39_Y3_N42
\ULA|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~7_combout\ = ( \ULA|saida[0]~6_combout\ & ( (\ULA|ULA11|saida~0_combout\ & (\ULA|ULA9|saida~0_combout\ & \ULA|ULA10|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA11|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA10|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~6_combout\,
	combout => \ULA|saida[0]~7_combout\);

-- Location: LABCELL_X39_Y3_N24
\ULA|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~8_combout\ = ( \ULA|saida[0]~7_combout\ & ( (\ULA|ULA14|saida~0_combout\ & (\ULA|ULA12|saida~2_combout\ & (!\ULA|ULA15|saida~3_combout\ & \ULA|ULA13|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA12|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA15|ALT_INV_saida~3_combout\,
	datad => \ULA|ULA13|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_saida[0]~7_combout\,
	combout => \ULA|saida[0]~8_combout\);

-- Location: LABCELL_X39_Y3_N6
\ULA|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~9_combout\ = ( \ULA|saida[0]~8_combout\ & ( (\ULA|ULA17|saida~2_combout\ & (\ULA|ULA16|saida~0_combout\ & (\ULA|ULA18|saida~1_combout\ & \ULA|ULA19|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA18|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA19|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~8_combout\,
	combout => \ULA|saida[0]~9_combout\);

-- Location: LABCELL_X39_Y3_N57
\ULA|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~10_combout\ = ( \ULA|saida[0]~9_combout\ & ( (\ULA|ULA20|saida~0_combout\ & (((\ULA|ULA24|saida~0_combout\ & \ULA|ULA23|soma~combout\)) # (\ULA|ULA23|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA20|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA23|ALT_INV_soma~combout\,
	dataf => \ULA|ALT_INV_saida[0]~9_combout\,
	combout => \ULA|saida[0]~10_combout\);

-- Location: LABCELL_X39_Y6_N18
\ULA|ULA23|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|saida~0_combout\ = ( \ULA|ULA23|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[23]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~21_combout\,
	dataf => \ULA|ULA23|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA23|saida~0_combout\);

-- Location: MLABCELL_X37_Y5_N57
\ULA|ULA25|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|AxorB~combout\ = ( \ULA|ULA25|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[25]~23_combout\ ) ) # ( !\ULA|ULA25|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[25]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~23_combout\,
	dataf => \ULA|ULA25|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA25|AxorB~combout\);

-- Location: LABCELL_X36_Y3_N30
\ULA|ULA23|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|AxBandC~combout\ = ( \ULA|ULA23|AxorB~combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & (\BancoRegistradores|saidaA[21]~19_combout\ & (\ULA|ULA21|signal_B~0_combout\ & 
-- \ULA|ULA22|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[22]~20_combout\ & (((\BancoRegistradores|saidaA[21]~19_combout\ & \ULA|ULA21|signal_B~0_combout\)) # (\ULA|ULA22|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA23|AxorB~combout\ & ( 
-- !\ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & (\ULA|ULA22|signal_B~0_combout\ & ((\ULA|ULA21|signal_B~0_combout\) # (\BancoRegistradores|saidaA[21]~19_combout\)))) # (\BancoRegistradores|saidaA[22]~20_combout\ & 
-- (((\ULA|ULA22|signal_B~0_combout\) # (\ULA|ULA21|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[21]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110111111100000000000000000000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datab => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA23|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA23|AxBandC~combout\);

-- Location: LABCELL_X39_Y3_N18
\ULA|ULA25|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~0_combout\ = ( \ULA|ULA24|saida~0_combout\ & ( \ULA|ULA23|AxBandC~combout\ & ( !\ULA|ULA25|AxorB~combout\ $ (((!\ULA|ULA24|signal_B~0_combout\ & !\BancoRegistradores|saidaA[24]~22_combout\))) ) ) ) # ( \ULA|ULA24|saida~0_combout\ & ( 
-- !\ULA|ULA23|AxBandC~combout\ & ( !\ULA|ULA25|AxorB~combout\ $ (((!\ULA|ULA24|signal_B~0_combout\ & ((!\ULA|ULA23|saida~0_combout\) # (!\BancoRegistradores|saidaA[24]~22_combout\))) # (\ULA|ULA24|signal_B~0_combout\ & (!\ULA|ULA23|saida~0_combout\ & 
-- !\BancoRegistradores|saidaA[24]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111100111100000000000000000000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA23|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA25|ALT_INV_AxorB~combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	datae => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA25|saida~0_combout\);

-- Location: LABCELL_X39_Y3_N12
\ULA|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~11_combout\ = ( \ULA|saida[0]~10_combout\ & ( \ULA|ULA25|saida~0_combout\ & ( (\ULA|ULA22|saida~2_combout\ & (!\ULA|ULA24|saida~2_combout\ & \ULA|ULA21|saida~0_combout\)) ) ) ) # ( \ULA|saida[0]~10_combout\ & ( !\ULA|ULA25|saida~0_combout\ & 
-- ( (\ULA|ULA25|saida~1_combout\ & (\ULA|ULA22|saida~2_combout\ & (!\ULA|ULA24|saida~2_combout\ & \ULA|ULA21|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA22|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA24|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA21|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_saida[0]~10_combout\,
	dataf => \ULA|ULA25|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[0]~11_combout\);

-- Location: LABCELL_X39_Y3_N30
\ULA|saida[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~12_combout\ = ( !\ULA|ULA27|saida~1_combout\ & ( \ULA|saida[0]~11_combout\ & ( (\ULA|ULA26|saida~0_combout\ & (((\ULA|ULA24|saida~0_combout\ & \ULA|ULA28|soma~combout\)) # (\ULA|ULA28|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA28|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA28|ALT_INV_soma~combout\,
	datad => \ULA|ULA26|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA27|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_saida[0]~11_combout\,
	combout => \ULA|saida[0]~12_combout\);

-- Location: LABCELL_X39_Y3_N48
\ULA|saida[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~13_combout\ = ( \ULA|ULA30|saida~0_combout\ & ( \ULA|saida[0]~12_combout\ & ( (\ULA|ULA0|saida~0_combout\ & ((!\ULA|Equal5~0_combout\) # (!\ULA|ULA29|saida~1_combout\))) ) ) ) # ( !\ULA|ULA30|saida~0_combout\ & ( \ULA|saida[0]~12_combout\ & 
-- ( (\ULA|ULA0|saida~0_combout\ & ((!\ULA|Equal5~0_combout\) # ((\ULA|ULA30|saida~1_combout\ & !\ULA|ULA29|saida~1_combout\)))) ) ) ) # ( \ULA|ULA30|saida~0_combout\ & ( !\ULA|saida[0]~12_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA0|saida~0_combout\) ) 
-- ) ) # ( !\ULA|ULA30|saida~0_combout\ & ( !\ULA|saida[0]~12_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA0|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001101000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~1_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA0|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA29|ALT_INV_saida~1_combout\,
	datae => \ULA|ULA30|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~12_combout\,
	combout => \ULA|saida[0]~13_combout\);

-- Location: LABCELL_X39_Y3_N3
\MUX_BANCOREG|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[0]~0_combout\ = ( \ULA|saida[0]~4_combout\ & ( \ULA|saida[0]~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~8_combout\) # (!\ROM|memROM~9_combout\)) ) ) ) # ( !\ULA|saida[0]~4_combout\ & ( \ULA|saida[0]~13_combout\ & 
-- ( (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~8_combout\) # (!\ROM|memROM~9_combout\)) ) ) ) # ( \ULA|saida[0]~4_combout\ & ( !\ULA|saida[0]~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~8_combout\) # (!\ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ULA|ALT_INV_saida[0]~4_combout\,
	dataf => \ULA|ALT_INV_saida[0]~13_combout\,
	combout => \MUX_BANCOREG|saida_MUX[0]~0_combout\);

-- Location: FF_X40_Y2_N5
\BancoRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~294_q\);

-- Location: LABCELL_X40_Y2_N21
\BancoRegistradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[0]~0_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(4) & ( (\BancoRegistradores|registrador~294_q\ & (!\PC|DOUT\(7) & (\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \BancoRegistradores|saidaA[0]~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\ULA|ULA0|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|Carry_Out~combout\ = ( \BancoRegistradores|registrador~1062_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & \BancoRegistradores|saidaA[0]~0_combout\)) # (\ROM|memROM~3_combout\ & 
-- ((\BancoRegistradores|saidaA[0]~0_combout\) # (\ROM|memROM~7_combout\))) ) ) ) # ( !\BancoRegistradores|registrador~1062_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & 
-- \BancoRegistradores|saidaA[0]~0_combout\)) # (\ROM|memROM~3_combout\ & ((\BancoRegistradores|saidaA[0]~0_combout\) # (\ROM|memROM~7_combout\))) ) ) ) # ( \BancoRegistradores|registrador~1062_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- (\BancoRegistradores|saidaA[0]~0_combout\ & ((\ULA|ULA8|signal_B~0_combout\) # (\ROM|memROM~3_combout\))) ) ) ) # ( !\BancoRegistradores|registrador~1062_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~3_combout\ & 
-- ((\BancoRegistradores|saidaA[0]~0_combout\) # (\ULA|ULA8|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000000000111011100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ULA|ULA0|Carry_Out~combout\);

-- Location: LABCELL_X40_Y5_N39
\ULA|ULA1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|saida~0_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( (!\BancoRegistradores|saidaA[1]~1_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA1|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[1]~1_combout\ & ((!\ULA|ULA24|Equal2~0_combout\) # 
-- (\ULA|ULA1|signal_B~0_combout\))) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\BancoRegistradores|saidaA[1]~1_combout\ $ (!\ULA|ULA1|signal_B~0_combout\ $ (\ULA|ULA0|Carry_Out~combout\)))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (\BancoRegistradores|saidaA[1]~1_combout\ & (\ULA|ULA1|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110000101010010011000010101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA1|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA0|ALT_INV_Carry_Out~combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA1|saida~0_combout\);

-- Location: LABCELL_X39_Y2_N48
\MUX_BANCOREG|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[1]~1_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA1|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X39_Y4_N33
\BancoRegistradores|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1096_combout\ = !\MUX_BANCOREG|saida_MUX[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1096_combout\);

-- Location: FF_X39_Y4_N35
\BancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1096_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~39_q\);

-- Location: LABCELL_X39_Y4_N30
\BancoRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1063_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ULA|ULA8|signal_B~0_combout\ & (!\BancoRegistradores|registrador~39_q\ & ((!\ROM|memROM~11_combout\)))) # (\ULA|ULA8|signal_B~0_combout\ & (((\ROM|memROM~11_combout\) # 
-- (\BancoRegistradores|registrador~295_q\)))) ) ) # ( !\ROM|memROM~12_combout\ & ( (\ULA|ULA8|signal_B~0_combout\ & !\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010100011000011111010001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1063_combout\);

-- Location: LABCELL_X39_Y4_N9
\ULA|ULA1|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1063_combout\ & ( ((\ULA|ULA8|signal_B~0_combout\ & (\ULA|ULA8|signal_B~2_combout\ & \ROM|memROM~3_combout\))) # (\ULA|ULA8|signal_B~1_combout\) ) ) # ( 
-- !\BancoRegistradores|registrador~1063_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & (\ULA|ULA8|signal_B~0_combout\ & ((!\ULA|ULA8|signal_B~2_combout\) # (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010001001010101010101110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datab => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \ULA|ULA1|signal_B~0_combout\);

-- Location: LABCELL_X40_Y5_N42
\ULA|ULA2|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|saida~1_combout\ = ( \ULA|ULA0|Carry_Out~combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( (!\BancoRegistradores|saidaA[2]~2_combout\ & !\ULA|ULA2|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA0|Carry_Out~combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( 
-- (!\BancoRegistradores|saidaA[2]~2_combout\ & !\ULA|ULA2|signal_B~0_combout\) ) ) ) # ( \ULA|ULA0|Carry_Out~combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( !\BancoRegistradores|saidaA[2]~2_combout\ $ (!\ULA|ULA2|signal_B~0_combout\ $ 
-- (((!\ULA|ULA1|signal_B~0_combout\ & !\BancoRegistradores|saidaA[1]~1_combout\)))) ) ) ) # ( !\ULA|ULA0|Carry_Out~combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( !\BancoRegistradores|saidaA[2]~2_combout\ $ (!\ULA|ULA2|signal_B~0_combout\ $ 
-- (((!\ULA|ULA1|signal_B~0_combout\) # (!\BancoRegistradores|saidaA[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000100011110100001110111100011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datad => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA0|ALT_INV_Carry_Out~combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA2|saida~1_combout\);

-- Location: LABCELL_X40_Y5_N36
\ULA|ULA2|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|saida~2_combout\ = ( \ULA|ULA2|saida~1_combout\ & ( !\ULA|ULA2|saida~0_combout\ ) ) # ( !\ULA|ULA2|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & !\ULA|ULA2|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA2|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA2|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA2|saida~2_combout\);

-- Location: MLABCELL_X42_Y4_N36
\MUX_BANCOREG|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[2]~2_combout\ = ( !\ULA|ULA2|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA2|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[2]~2_combout\);

-- Location: FF_X41_Y4_N23
\BancoRegistradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~296_q\);

-- Location: LABCELL_X41_Y4_N9
\BancoRegistradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[2]~2_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~13_combout\ & (!\PC|DOUT\(7) & \BancoRegistradores|registrador~296_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \BancoRegistradores|ALT_INV_registrador~296_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BancoRegistradores|saidaA[2]~2_combout\);

-- Location: LABCELL_X39_Y5_N42
\ULA|ULA2|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|Carry_Out~combout\ = ( \ULA|ULA0|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[2]~2_combout\ & (\ULA|ULA2|signal_B~0_combout\ & ((\ULA|ULA1|signal_B~0_combout\) # (\BancoRegistradores|saidaA[1]~1_combout\)))) # 
-- (\BancoRegistradores|saidaA[2]~2_combout\ & (((\ULA|ULA2|signal_B~0_combout\) # (\ULA|ULA1|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[1]~1_combout\))) ) ) # ( !\ULA|ULA0|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[2]~2_combout\ & 
-- (\BancoRegistradores|saidaA[1]~1_combout\ & (\ULA|ULA1|signal_B~0_combout\ & \ULA|ULA2|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[2]~2_combout\ & (((\BancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|signal_B~0_combout\)) # 
-- (\ULA|ULA2|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA1|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA0|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA2|Carry_Out~combout\);

-- Location: LABCELL_X39_Y5_N51
\ULA|ULA3|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|saida~1_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( (\ULA|ULA3|signal_B~0_combout\ & \BancoRegistradores|saidaA[3]~3_combout\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( 
-- (\BancoRegistradores|saidaA[3]~3_combout\) # (\ULA|ULA3|signal_B~0_combout\) ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( (\ULA|ULA3|signal_B~0_combout\ & \BancoRegistradores|saidaA[3]~3_combout\) ) ) ) # ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA3|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[3]~3_combout\ $ (\ULA|ULA2|Carry_Out~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001000100010001000101110111011101110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	datac => \ULA|ULA2|ALT_INV_Carry_Out~combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA3|saida~1_combout\);

-- Location: LABCELL_X39_Y5_N45
\MUX_BANCOREG|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[3]~3_combout\ = ( \ULA|ULA3|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA3|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[3]~3_combout\);

-- Location: FF_X39_Y4_N44
\BancoRegistradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~297_q\);

-- Location: LABCELL_X39_Y4_N45
\BancoRegistradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[3]~3_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT[7]~DUPLICATE_q\ & ((!\PC|DOUT\(4) & ((\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(4) & ((!\PC|DOUT[3]~DUPLICATE_q\) # 
-- (\BancoRegistradores|registrador~297_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \BancoRegistradores|saidaA[3]~3_combout\);

-- Location: LABCELL_X39_Y4_N48
\ULA|ULA3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|saida~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1065_combout\ & ( \BancoRegistradores|saidaA[3]~3_combout\ ) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1065_combout\ & ( 
-- (\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|saidaA[3]~3_combout\ & (!\ROM|memROM~1_combout\ & \ULA|ULA8|signal_B~2_combout\))) ) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1065_combout\ & ( 
-- (\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|saidaA[3]~3_combout\ & ((!\ROM|memROM~1_combout\) # (!\ULA|ULA8|signal_B~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000000000000000000000000000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~2_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \ULA|ULA3|saida~0_combout\);

-- Location: LABCELL_X39_Y5_N18
\ULA|ULA4|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|Carry_Out~combout\ = ( !\ULA|ULA4|signal_B~0_combout\ & ( \ULA|ULA3|AxBandC~combout\ & ( !\BancoRegistradores|saidaA[4]~4_combout\ ) ) ) # ( \ULA|ULA4|signal_B~0_combout\ & ( !\ULA|ULA3|AxBandC~combout\ & ( (!\ULA|ULA3|saida~0_combout\ & 
-- !\BancoRegistradores|saidaA[4]~4_combout\) ) ) ) # ( !\ULA|ULA4|signal_B~0_combout\ & ( !\ULA|ULA3|AxBandC~combout\ & ( (!\ULA|ULA3|saida~0_combout\) # (!\BancoRegistradores|saidaA[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA3|ALT_INV_saida~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datae => \ULA|ULA4|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA3|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA4|Carry_Out~combout\);

-- Location: LABCELL_X39_Y5_N27
\ULA|ULA5|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|saida~0_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA4|Carry_Out~combout\ & ( (\ULA|ULA5|signal_B~0_combout\ & \BancoRegistradores|saidaA[5]~5_combout\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA4|Carry_Out~combout\ & ( 
-- (!\ULA|ULA5|signal_B~0_combout\ & (\BancoRegistradores|saidaA[5]~5_combout\)) # (\ULA|ULA5|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[5]~5_combout\) # (\ULA|ULA24|Equal1~0_combout\))) ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( 
-- !\ULA|ULA4|Carry_Out~combout\ & ( (\ULA|ULA5|signal_B~0_combout\ & \BancoRegistradores|saidaA[5]~5_combout\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA4|Carry_Out~combout\ & ( (!\ULA|ULA5|signal_B~0_combout\ & 
-- (!\BancoRegistradores|saidaA[5]~5_combout\ $ (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA5|signal_B~0_combout\ & ((\ULA|ULA24|Equal1~0_combout\) # (\BancoRegistradores|saidaA[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011110010111000100010001000101100111011001110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA4|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA5|saida~0_combout\);

-- Location: LABCELL_X39_Y5_N30
\MUX_BANCOREG|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[5]~5_combout\ = ( \ULA|ULA5|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA5|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[5]~5_combout\);

-- Location: FF_X39_Y5_N32
\BancoRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[5]~5_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~299_q\);

-- Location: LABCELL_X39_Y5_N39
\BancoRegistradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[5]~5_combout\ = ( !\PC|DOUT\(7) & ( !\ROM|memROM~13_combout\ & ( (\BancoRegistradores|registrador~299_q\ & \ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaA[5]~5_combout\);

-- Location: LABCELL_X40_Y3_N18
\ULA|ULA5|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|Carry_Out~combout\ = ( \ULA|ULA5|signal_B~0_combout\ & ( \ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[5]~5_combout\ & (!\BancoRegistradores|saidaA[4]~4_combout\ & !\ULA|ULA4|signal_B~0_combout\)) ) ) ) # ( 
-- !\ULA|ULA5|signal_B~0_combout\ & ( \ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[5]~5_combout\) # ((!\BancoRegistradores|saidaA[4]~4_combout\ & !\ULA|ULA4|signal_B~0_combout\)) ) ) ) # ( \ULA|ULA5|signal_B~0_combout\ & ( 
-- !\ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[5]~5_combout\ & ((!\BancoRegistradores|saidaA[4]~4_combout\ & ((!\ULA|ULA3|saida~0_combout\) # (!\ULA|ULA4|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[4]~4_combout\ & 
-- (!\ULA|ULA3|saida~0_combout\ & !\ULA|ULA4|signal_B~0_combout\)))) ) ) ) # ( !\ULA|ULA5|signal_B~0_combout\ & ( !\ULA|ULA3|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[5]~5_combout\) # ((!\BancoRegistradores|saidaA[4]~4_combout\ & 
-- ((!\ULA|ULA3|saida~0_combout\) # (!\ULA|ULA4|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[4]~4_combout\ & (!\ULA|ULA3|saida~0_combout\ & !\ULA|ULA4|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010101010001000000011101110101010101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datac => \ULA|ULA3|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA4|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA5|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA3|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA5|Carry_Out~combout\);

-- Location: LABCELL_X40_Y5_N27
\ULA|ULA6|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|saida~0_combout\ = ( \ULA|ULA5|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA6|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[6]~7_combout\))) # (\ULA|ULA6|signal_B~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[6]~7_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA6|signal_B~0_combout\ & \BancoRegistradores|saidaA[6]~7_combout\)))) ) ) # ( !\ULA|ULA5|Carry_Out~combout\ & ( 
-- (!\ULA|ULA6|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[6]~7_combout\)))) # (\ULA|ULA6|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\BancoRegistradores|saidaA[6]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001001111100001000100111100001100110001110000110011000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[6]~7_combout\,
	dataf => \ULA|ULA5|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA6|saida~0_combout\);

-- Location: LABCELL_X41_Y5_N54
\MUX_BANCOREG|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[6]~6_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA6|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[6]~6_combout\);

-- Location: FF_X41_Y5_N20
\BancoRegistradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~300_q\);

-- Location: LABCELL_X41_Y5_N6
\BancoRegistradores|saidaA[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[6]~7_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~300_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~300_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[6]~7_combout\);

-- Location: LABCELL_X40_Y3_N6
\ULA|ULA7|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|Carry_Out~combout\ = ( \BancoRegistradores|saidaA[7]~8_combout\ & ( \ULA|ULA5|Carry_Out~combout\ & ( ((\BancoRegistradores|saidaA[6]~7_combout\ & \ULA|ULA6|signal_B~0_combout\)) # (\ULA|ULA7|signal_B~0_combout\) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[7]~8_combout\ & ( \ULA|ULA5|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[6]~7_combout\ & (\ULA|ULA6|signal_B~0_combout\ & \ULA|ULA7|signal_B~0_combout\)) ) ) ) # ( \BancoRegistradores|saidaA[7]~8_combout\ & ( 
-- !\ULA|ULA5|Carry_Out~combout\ & ( ((\ULA|ULA7|signal_B~0_combout\) # (\ULA|ULA6|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[6]~7_combout\) ) ) ) # ( !\BancoRegistradores|saidaA[7]~8_combout\ & ( !\ULA|ULA5|Carry_Out~combout\ & ( 
-- (\ULA|ULA7|signal_B~0_combout\ & ((\ULA|ULA6|signal_B~0_combout\) # (\BancoRegistradores|saidaA[6]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111010111111111111100000000000001010000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[6]~7_combout\,
	datac => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA7|ALT_INV_signal_B~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[7]~8_combout\,
	dataf => \ULA|ULA5|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA7|Carry_Out~combout\);

-- Location: LABCELL_X40_Y5_N12
\ULA|ULA8|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~1_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA7|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (((\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~302_q\)) # (\ULA|ULA8|signal_B~3_combout\))) # 
-- (\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[0]~6_combout\ & (\ULA|ULA8|signal_B~3_combout\ & \BancoRegistradores|registrador~302_q\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA7|Carry_Out~combout\ & ( 
-- (!\ULA|ULA8|signal_B~3_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & ((!\BancoRegistradores|saidaA[0]~6_combout\) # (!\BancoRegistradores|registrador~302_q\)))) # (\ULA|ULA8|signal_B~3_combout\ & (\BancoRegistradores|saidaA[0]~6_combout\ & 
-- ((\BancoRegistradores|registrador~302_q\)))) ) ) ) # ( \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA7|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (((\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~302_q\)) # 
-- (\ULA|ULA8|signal_B~3_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[0]~6_combout\ & (\ULA|ULA8|signal_B~3_combout\ & \BancoRegistradores|registrador~302_q\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( 
-- !\ULA|ULA7|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA8|signal_B~3_combout\ $ (((!\BancoRegistradores|saidaA[0]~6_combout\) # (!\BancoRegistradores|registrador~302_q\))))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (\BancoRegistradores|saidaA[0]~6_combout\ & (\ULA|ULA8|signal_B~3_combout\ & \BancoRegistradores|registrador~302_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001001000011000100110111000000100001010000110001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~3_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA7|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA8|saida~1_combout\);

-- Location: LABCELL_X41_Y5_N3
\MUX_BANCOREG|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[8]~8_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA8|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_saida~1_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[8]~8_combout\);

-- Location: FF_X41_Y5_N26
\BancoRegistradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[8]~8_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~302_q\);

-- Location: LABCELL_X41_Y5_N0
\ULA|ULA8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( (\BancoRegistradores|registrador~302_q\ & (\BancoRegistradores|registrador~1070_combout\ & \BancoRegistradores|saidaA[0]~6_combout\)) ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( 
-- (\BancoRegistradores|registrador~302_q\ & (!\BancoRegistradores|registrador~1070_combout\ & (\ULA|ULA6|signal_B~1_combout\ & \BancoRegistradores|saidaA[0]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA8|saida~0_combout\);

-- Location: LABCELL_X41_Y3_N0
\ULA|ULA9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|saida~0_combout\ = ( \ULA|ULA8|saida~0_combout\ & ( \ULA|ULA8|AxBandC~combout\ & ( (!\ULA|ULA9|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[9]~9_combout\)))) # 
-- (\ULA|ULA9|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\BancoRegistradores|saidaA[9]~9_combout\))) ) ) ) # ( !\ULA|ULA8|saida~0_combout\ & ( \ULA|ULA8|AxBandC~combout\ & ( (!\ULA|ULA9|signal_B~0_combout\ & 
-- (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[9]~9_combout\)))) # (\ULA|ULA9|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\BancoRegistradores|saidaA[9]~9_combout\))) ) ) ) # ( \ULA|ULA8|saida~0_combout\ & ( !\ULA|ULA8|AxBandC~combout\ & ( (!\ULA|ULA9|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ 
-- (\BancoRegistradores|saidaA[9]~9_combout\)))) # (\ULA|ULA9|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\BancoRegistradores|saidaA[9]~9_combout\))) ) ) ) # ( !\ULA|ULA8|saida~0_combout\ & ( 
-- !\ULA|ULA8|AxBandC~combout\ & ( (!\ULA|ULA9|signal_B~0_combout\ & (((\BancoRegistradores|saidaA[9]~9_combout\ & !\ULA|ULA24|Equal2~0_combout\)))) # (\ULA|ULA9|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[9]~9_combout\ & 
-- ((!\ULA|ULA24|Equal2~0_combout\))) # (\BancoRegistradores|saidaA[9]~9_combout\ & ((\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101100000101100101110000010110010111000001011001011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA8|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA8|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA9|saida~0_combout\);

-- Location: LABCELL_X41_Y2_N30
\MUX_BANCOREG|saida_MUX[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[9]~9_combout\ = ( \ULA|ULA9|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA9|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[9]~9_combout\);

-- Location: FF_X41_Y2_N32
\BancoRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[9]~9_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~303_q\);

-- Location: LABCELL_X41_Y2_N21
\BancoRegistradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[9]~9_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~303_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~303_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[9]~9_combout\);

-- Location: LABCELL_X40_Y3_N48
\ULA|ULA10|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|Carry_Out~combout\ = ( \ULA|ULA10|signal_B~0_combout\ & ( \ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[9]~9_combout\ & (!\BancoRegistradores|saidaA[10]~10_combout\ & !\ULA|ULA9|signal_B~0_combout\)) ) ) ) # ( 
-- !\ULA|ULA10|signal_B~0_combout\ & ( \ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[10]~10_combout\) # ((!\BancoRegistradores|saidaA[9]~9_combout\ & !\ULA|ULA9|signal_B~0_combout\)) ) ) ) # ( \ULA|ULA10|signal_B~0_combout\ & ( 
-- !\ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[10]~10_combout\ & ((!\BancoRegistradores|saidaA[9]~9_combout\ & ((!\ULA|ULA9|signal_B~0_combout\) # (!\ULA|ULA8|saida~0_combout\))) # (\BancoRegistradores|saidaA[9]~9_combout\ & 
-- (!\ULA|ULA9|signal_B~0_combout\ & !\ULA|ULA8|saida~0_combout\)))) ) ) ) # ( !\ULA|ULA10|signal_B~0_combout\ & ( !\ULA|ULA8|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[10]~10_combout\) # ((!\BancoRegistradores|saidaA[9]~9_combout\ & 
-- ((!\ULA|ULA9|signal_B~0_combout\) # (!\ULA|ULA8|saida~0_combout\))) # (\BancoRegistradores|saidaA[9]~9_combout\ & (!\ULA|ULA9|signal_B~0_combout\ & !\ULA|ULA8|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100110010001000000011101100111011001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	datac => \ULA|ULA9|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA8|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA10|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA8|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA10|Carry_Out~combout\);

-- Location: LABCELL_X41_Y3_N9
\ULA|ULA11|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|saida~0_combout\ = ( \ULA|ULA10|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA11|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[11]~11_combout\))) # (\ULA|ULA11|signal_B~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[11]~11_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA11|signal_B~0_combout\ & \BancoRegistradores|saidaA[11]~11_combout\)))) ) ) # ( !\ULA|ULA10|Carry_Out~combout\ & ( 
-- (!\ULA|ULA11|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[11]~11_combout\)))) # (\ULA|ULA11|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # 
-- (\BancoRegistradores|saidaA[11]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000101111100000100010111100001010101001110000101010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA11|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	dataf => \ULA|ULA10|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA11|saida~0_combout\);

-- Location: LABCELL_X41_Y2_N0
\MUX_BANCOREG|saida_MUX[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[11]~11_combout\ = ( \ULA|ULA11|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA11|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[11]~11_combout\);

-- Location: FF_X41_Y2_N2
\BancoRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[11]~11_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~305_q\);

-- Location: LABCELL_X41_Y2_N57
\BancoRegistradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[11]~11_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~305_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_registrador~305_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[11]~11_combout\);

-- Location: LABCELL_X40_Y3_N0
\ULA|ULA12|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|Carry_Out~combout\ = ( \BancoRegistradores|saidaA[12]~12_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( ((\BancoRegistradores|saidaA[11]~11_combout\ & \ULA|ULA11|signal_B~0_combout\)) # (\ULA|ULA12|signal_B~0_combout\) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[12]~12_combout\ & ( \ULA|ULA10|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[11]~11_combout\ & (\ULA|ULA12|signal_B~0_combout\ & \ULA|ULA11|signal_B~0_combout\)) ) ) ) # ( \BancoRegistradores|saidaA[12]~12_combout\ & ( 
-- !\ULA|ULA10|Carry_Out~combout\ & ( ((\ULA|ULA11|signal_B~0_combout\) # (\ULA|ULA12|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[11]~11_combout\) ) ) ) # ( !\BancoRegistradores|saidaA[12]~12_combout\ & ( !\ULA|ULA10|Carry_Out~combout\ & ( 
-- (\ULA|ULA12|signal_B~0_combout\ & ((\ULA|ULA11|signal_B~0_combout\) # (\BancoRegistradores|saidaA[11]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111010111111111111100000000000001010000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA12|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA11|ALT_INV_signal_B~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \ULA|ULA10|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA12|Carry_Out~combout\);

-- Location: LABCELL_X41_Y3_N42
\ULA|ULA13|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|saida~1_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[0]~6_combout\ & (\BancoRegistradores|registrador~307_q\ & \ULA|ULA13|signal_B~0_combout\)) ) ) ) # ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( (!\ULA|ULA13|signal_B~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (((\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~307_q\))))) # 
-- (\ULA|ULA13|signal_B~0_combout\ & (((\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~307_q\)) # (\ULA|ULA24|Equal1~0_combout\))) ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA12|Carry_Out~combout\ & ( 
-- (\BancoRegistradores|saidaA[0]~6_combout\ & (\BancoRegistradores|registrador~307_q\ & \ULA|ULA13|signal_B~0_combout\)) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA12|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaA[0]~6_combout\ & 
-- (((\ULA|ULA13|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[0]~6_combout\ & ((!\BancoRegistradores|registrador~307_q\ & (\ULA|ULA13|signal_B~0_combout\)) # (\BancoRegistradores|registrador~307_q\ & ((!\ULA|ULA13|signal_B~0_combout\) # 
-- (\ULA|ULA24|Equal1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011111000000010000000111100001000111110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datac => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA12|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA13|saida~1_combout\);

-- Location: LABCELL_X41_Y5_N18
\MUX_BANCOREG|saida_MUX[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[13]~13_combout\ = ( \ULA|ULA13|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA13|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[13]~13_combout\);

-- Location: FF_X41_Y5_N47
\BancoRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[13]~13_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~307_q\);

-- Location: LABCELL_X41_Y5_N33
\ULA|ULA13|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|saida~0_combout\ = ( \ULA|ULA13|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~307_q\ & \BancoRegistradores|saidaA[0]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA13|saida~0_combout\);

-- Location: LABCELL_X40_Y6_N9
\ULA|ULA15|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~5_combout\ = ( \ULA|ULA14|signal_B~0_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( !\BancoRegistradores|saidaA[14]~13_combout\ ) ) ) # ( !\ULA|ULA14|signal_B~0_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( 
-- \BancoRegistradores|saidaA[14]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	datae => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA15|saida~5_combout\);

-- Location: LABCELL_X40_Y6_N33
\ULA|ULA15|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~0_combout\ = ( \ULA|ULA15|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[15]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA15|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	combout => \ULA|ULA15|saida~0_combout\);

-- Location: LABCELL_X40_Y6_N36
\ULA|ULA15|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|AxorB~combout\ = ( !\ULA|ULA15|signal_B~0_combout\ & ( \BancoRegistradores|saidaA[15]~14_combout\ ) ) # ( \ULA|ULA15|signal_B~0_combout\ & ( !\BancoRegistradores|saidaA[15]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA15|ALT_INV_signal_B~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	combout => \ULA|ULA15|AxorB~combout\);

-- Location: LABCELL_X40_Y6_N0
\ULA|ULA15|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~4_combout\ = ( \ULA|ULA15|AxorB~combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( (\ULA|ULA15|saida~0_combout\ & \ULA|ULA24|Equal2~0_combout\) ) ) ) # ( !\ULA|ULA15|AxorB~combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( 
-- (\ULA|ULA15|saida~0_combout\ & \ULA|ULA24|Equal2~0_combout\) ) ) ) # ( \ULA|ULA15|AxorB~combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA14|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[14]~13_combout\))) # 
-- (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA15|saida~0_combout\)))) ) ) ) # ( !\ULA|ULA15|AxorB~combout\ & ( !\ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (((\BancoRegistradores|saidaA[14]~13_combout\)) # 
-- (\ULA|ULA14|signal_B~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA15|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100001111100010000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	datac => \ULA|ULA15|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA15|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA15|saida~4_combout\);

-- Location: LABCELL_X41_Y3_N18
\ULA|ULA15|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~3_combout\ = ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA15|saida~4_combout\ & ( (!\ULA|ULA15|saida~2_combout\ & (!\ULA|ULA13|saida~0_combout\ & (\ULA|ULA15|saida~5_combout\ & !\ULA|ULA13|AxBandC~combout\))) ) ) ) # ( 
-- \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA15|saida~4_combout\ ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA15|saida~4_combout\ & ( (!\ULA|ULA15|saida~2_combout\ & (((!\ULA|ULA15|saida~5_combout\) # (\ULA|ULA13|AxBandC~combout\)) # 
-- (\ULA|ULA13|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010111111111111111100001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA13|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA15|ALT_INV_saida~5_combout\,
	datad => \ULA|ULA13|ALT_INV_AxBandC~combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA15|ALT_INV_saida~4_combout\,
	combout => \ULA|ULA15|saida~3_combout\);

-- Location: LABCELL_X39_Y2_N30
\MUX_BANCOREG|saida_MUX[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[15]~15_combout\ = ( !\ULA|ULA15|saida~3_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA15|ALT_INV_saida~3_combout\,
	combout => \MUX_BANCOREG|saida_MUX[15]~15_combout\);

-- Location: FF_X39_Y2_N50
\BancoRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[15]~15_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~309_q\);

-- Location: LABCELL_X39_Y2_N9
\BancoRegistradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1103_combout\ = ( !\MUX_BANCOREG|saida_MUX[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[15]~15_combout\,
	combout => \BancoRegistradores|registrador~1103_combout\);

-- Location: FF_X39_Y2_N11
\BancoRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1103_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~53_q\);

-- Location: LABCELL_X39_Y2_N0
\BancoRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1077_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((!\BancoRegistradores|registrador~53_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~309_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000101000000001100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1077_combout\);

-- Location: LABCELL_X39_Y2_N45
\ULA|ULA15|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|signal_B~0_combout\ = ( \ULA|ULA6|signal_B~1_combout\ & ( !\ULA|ULA8|signal_B~1_combout\ $ (\BancoRegistradores|registrador~1077_combout\) ) ) # ( !\ULA|ULA6|signal_B~1_combout\ & ( (\ULA|ULA8|signal_B~1_combout\ & 
-- \BancoRegistradores|registrador~1077_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1077_combout\,
	dataf => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	combout => \ULA|ULA15|signal_B~0_combout\);

-- Location: LABCELL_X40_Y3_N30
\ULA|ULA15|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|Carry_Out~combout\ = ( \ULA|ULA13|saida~0_combout\ & ( \ULA|ULA13|AxBandC~combout\ & ( (!\ULA|ULA15|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[15]~14_combout\) # ((!\BancoRegistradores|saidaA[14]~13_combout\ & 
-- !\ULA|ULA14|signal_B~0_combout\)))) # (\ULA|ULA15|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[14]~13_combout\ & (!\BancoRegistradores|saidaA[15]~14_combout\ & !\ULA|ULA14|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA13|saida~0_combout\ & ( 
-- \ULA|ULA13|AxBandC~combout\ & ( (!\ULA|ULA15|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[15]~14_combout\) # ((!\BancoRegistradores|saidaA[14]~13_combout\ & !\ULA|ULA14|signal_B~0_combout\)))) # (\ULA|ULA15|signal_B~0_combout\ & 
-- (!\BancoRegistradores|saidaA[14]~13_combout\ & (!\BancoRegistradores|saidaA[15]~14_combout\ & !\ULA|ULA14|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA13|saida~0_combout\ & ( !\ULA|ULA13|AxBandC~combout\ & ( (!\ULA|ULA15|signal_B~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[15]~14_combout\) # ((!\BancoRegistradores|saidaA[14]~13_combout\ & !\ULA|ULA14|signal_B~0_combout\)))) # (\ULA|ULA15|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[14]~13_combout\ & 
-- (!\BancoRegistradores|saidaA[15]~14_combout\ & !\ULA|ULA14|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA13|saida~0_combout\ & ( !\ULA|ULA13|AxBandC~combout\ & ( (!\ULA|ULA15|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[14]~13_combout\) # 
-- ((!\BancoRegistradores|saidaA[15]~14_combout\) # (!\ULA|ULA14|signal_B~0_combout\)))) # (\ULA|ULA15|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[15]~14_combout\ & ((!\BancoRegistradores|saidaA[14]~13_combout\) # (!\ULA|ULA14|signal_B~0_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101000111010001010000011101000101000001110100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	datad => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA13|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA13|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA15|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y3_N36
\ULA|ULA16|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|saida~0_combout\ = ( \ULA|ULA15|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA16|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[16]~15_combout\))) # (\ULA|ULA16|signal_B~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[16]~15_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA16|signal_B~0_combout\ & \BancoRegistradores|saidaA[16]~15_combout\)))) ) ) # ( !\ULA|ULA15|Carry_Out~combout\ & ( 
-- (!\ULA|ULA16|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[16]~15_combout\)))) # (\ULA|ULA16|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\BancoRegistradores|saidaA[16]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001001111100001000100111100001100110001110000110011000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	dataf => \ULA|ULA15|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA16|saida~0_combout\);

-- Location: LABCELL_X43_Y3_N54
\MUX_BANCOREG|saida_MUX[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[16]~16_combout\ = ( \ULA|ULA16|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA16|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[16]~16_combout\);

-- Location: FF_X43_Y3_N53
\BancoRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[16]~16_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~54_q\);

-- Location: MLABCELL_X42_Y3_N42
\BancoRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1078_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & (\BancoRegistradores|registrador~54_q\)) # (\ULA|ULA8|signal_B~0_combout\ & 
-- ((\BancoRegistradores|registrador~310_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000001100000101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~54_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~310_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1078_combout\);

-- Location: MLABCELL_X42_Y3_N51
\ULA|ULA16|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1078_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1078_combout\ & ( (!\ULA|ULA8|signal_B~1_combout\ & \ULA|ULA6|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \ULA|ULA16|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y3_N48
\ULA|ULA18|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~2_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( (\BancoRegistradores|saidaA[0]~6_combout\ & (\BancoRegistradores|registrador~312_q\ & \ULA|ULA18|signal_B~0_combout\)) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( 
-- (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA18|signal_B~0_combout\ $ (((\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~312_q\))))) # (\ULA|ULA24|Equal1~0_combout\ & (((\BancoRegistradores|saidaA[0]~6_combout\ & 
-- \BancoRegistradores|registrador~312_q\)) # (\ULA|ULA18|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000100011111111000010001111100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ULA|ULA18|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA18|saida~2_combout\);

-- Location: MLABCELL_X42_Y3_N30
\ULA|ULA18|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~3_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA18|saida~2_combout\ ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA18|saida~2_combout\ & ( (!\ULA|ULA17|signal_B~0_combout\ & (\ULA|ULA16|signal_B~0_combout\ & 
-- (\BancoRegistradores|saidaA[17]~16_combout\ & \BancoRegistradores|saidaA[16]~15_combout\))) # (\ULA|ULA17|signal_B~0_combout\ & (((\ULA|ULA16|signal_B~0_combout\ & \BancoRegistradores|saidaA[16]~15_combout\)) # 
-- (\BancoRegistradores|saidaA[17]~16_combout\))) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA18|saida~2_combout\ & ( (!\ULA|ULA17|signal_B~0_combout\ & ((!\ULA|ULA16|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[17]~16_combout\) # 
-- (!\BancoRegistradores|saidaA[16]~15_combout\)))) # (\ULA|ULA17|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[17]~16_combout\ & ((!\ULA|ULA16|signal_B~0_combout\) # (!\BancoRegistradores|saidaA[16]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000000000000000000000000011000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA18|ALT_INV_saida~2_combout\,
	combout => \ULA|ULA18|saida~3_combout\);

-- Location: MLABCELL_X42_Y3_N0
\ULA|ULA18|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~4_combout\ = ( \ULA|ULA17|signal_B~0_combout\ & ( \ULA|ULA18|saida~3_combout\ & ( ((!\ULA|ULA16|signal_B~0_combout\ & !\BancoRegistradores|saidaA[16]~15_combout\)) # (\ULA|ULA18|saida~2_combout\) ) ) ) # ( !\ULA|ULA17|signal_B~0_combout\ 
-- & ( \ULA|ULA18|saida~3_combout\ & ( (!\BancoRegistradores|saidaA[17]~16_combout\) # (((!\ULA|ULA16|signal_B~0_combout\ & !\BancoRegistradores|saidaA[16]~15_combout\)) # (\ULA|ULA18|saida~2_combout\)) ) ) ) # ( \ULA|ULA17|signal_B~0_combout\ & ( 
-- !\ULA|ULA18|saida~3_combout\ & ( (\ULA|ULA18|saida~2_combout\ & ((\BancoRegistradores|saidaA[16]~15_combout\) # (\ULA|ULA16|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA17|signal_B~0_combout\ & ( !\ULA|ULA18|saida~3_combout\ & ( 
-- (\BancoRegistradores|saidaA[17]~16_combout\ & (\ULA|ULA18|saida~2_combout\ & ((\BancoRegistradores|saidaA[16]~15_combout\) # (\ULA|ULA16|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000110000111111101111101011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datab => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA18|ALT_INV_saida~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	datae => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA18|ALT_INV_saida~3_combout\,
	combout => \ULA|ULA18|saida~4_combout\);

-- Location: MLABCELL_X42_Y3_N6
\ULA|ULA18|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~1_combout\ = ( \ULA|ULA15|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (\ULA|ULA18|saida~3_combout\)) # (\ULA|ULA24|Equal1~0_combout\ & ((\ULA|ULA18|saida~2_combout\))) ) ) # ( !\ULA|ULA15|Carry_Out~combout\ & ( 
-- (!\ULA|ULA24|Equal1~0_combout\ & ((\ULA|ULA18|saida~4_combout\))) # (\ULA|ULA24|Equal1~0_combout\ & (\ULA|ULA18|saida~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA18|ALT_INV_saida~3_combout\,
	datac => \ULA|ULA18|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA18|ALT_INV_saida~4_combout\,
	dataf => \ULA|ULA15|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA18|saida~1_combout\);

-- Location: MLABCELL_X42_Y3_N21
\MUX_BANCOREG|saida_MUX[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[18]~18_combout\ = ( \ULA|ULA18|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA18|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[18]~18_combout\);

-- Location: FF_X36_Y4_N34
\BancoRegistradores|registrador~312DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[18]~18_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~312DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N3
\ULA|ULA18|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~0_combout\ = ( \ULA|ULA18|signal_B~0_combout\ & ( (\BancoRegistradores|registrador~312DUPLICATE_q\ & \BancoRegistradores|saidaA[0]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~312DUPLICATE_q\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	dataf => \ULA|ULA18|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA18|saida~0_combout\);

-- Location: LABCELL_X36_Y5_N33
\ULA|ULA20|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|saida~2_combout\ = ( \BancoRegistradores|saidaA[19]~17_combout\ & ( \ULA|ULA19|signal_B~0_combout\ ) ) # ( !\BancoRegistradores|saidaA[19]~17_combout\ & ( !\ULA|ULA19|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\,
	dataf => \ULA|ULA19|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA20|saida~2_combout\);

-- Location: FF_X35_Y4_N32
\BancoRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[20]~20_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~58_q\);

-- Location: LABCELL_X35_Y4_N15
\BancoRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1082_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA8|signal_B~0_combout\ & ((\BancoRegistradores|registrador~58_q\))) # (\ULA|ULA8|signal_B~0_combout\ & 
-- (\BancoRegistradores|registrador~314_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000101000000000000000000000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~314_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~58_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1082_combout\);

-- Location: LABCELL_X35_Y4_N3
\ULA|ULA20|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|signal_B~0_combout\ = ( \ULA|ULA8|signal_B~1_combout\ & ( \BancoRegistradores|registrador~1082_combout\ ) ) # ( !\ULA|ULA8|signal_B~1_combout\ & ( !\BancoRegistradores|registrador~1082_combout\ & ( \ULA|ULA6|signal_B~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datae => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \ULA|ULA20|signal_B~0_combout\);

-- Location: LABCELL_X35_Y4_N42
\ULA|ULA20|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|saida~1_combout\ = ( \ULA|ULA20|signal_B~0_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( \BancoRegistradores|saidaA[20]~18_combout\ ) ) ) # ( \ULA|ULA20|signal_B~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( 
-- (!\BancoRegistradores|saidaA[20]~18_combout\ $ (((\ULA|ULA19|signal_B~0_combout\) # (\BancoRegistradores|saidaA[19]~17_combout\)))) # (\ULA|ULA24|Equal1~0_combout\) ) ) ) # ( !\ULA|ULA20|signal_B~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( 
-- !\BancoRegistradores|saidaA[20]~18_combout\ $ ((((!\BancoRegistradores|saidaA[19]~17_combout\ & !\ULA|ULA19|signal_B~0_combout\)) # (\ULA|ULA24|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001010101100101011111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[20]~18_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\,
	datac => \ULA|ULA19|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \ULA|ULA20|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA20|saida~1_combout\);

-- Location: LABCELL_X35_Y3_N36
\ULA|ULA20|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|saida~0_combout\ = ( \ULA|ULA20|saida~1_combout\ & ( \ULA|ULA18|AxBandC~combout\ ) ) # ( \ULA|ULA20|saida~1_combout\ & ( !\ULA|ULA18|AxBandC~combout\ & ( (((\ULA|ULA20|saida~2_combout\) # (\ULA|ULA24|Equal2~0_combout\)) # 
-- (\ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA18|saida~0_combout\) ) ) ) # ( !\ULA|ULA20|saida~1_combout\ & ( !\ULA|ULA18|AxBandC~combout\ & ( (!\ULA|ULA18|saida~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & 
-- !\ULA|ULA20|saida~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA18|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA20|ALT_INV_saida~2_combout\,
	datae => \ULA|ULA20|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA18|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA20|saida~0_combout\);

-- Location: LABCELL_X35_Y4_N33
\MUX_BANCOREG|saida_MUX[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[20]~20_combout\ = (\ULA|ULA20|saida~0_combout\ & !\MUX_BANCOREG|saida_MUX[31]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA20|ALT_INV_saida~0_combout\,
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[20]~20_combout\);

-- Location: FF_X35_Y4_N13
\BancoRegistradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[20]~20_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~314_q\);

-- Location: LABCELL_X36_Y4_N9
\BancoRegistradores|saidaA[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[20]~18_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~314_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_registrador~314_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[20]~18_combout\);

-- Location: LABCELL_X36_Y3_N42
\ULA|ULA20|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|Carry_Out~combout\ = ( \ULA|ULA18|saida~0_combout\ & ( \ULA|ULA18|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[20]~18_combout\ & ((!\ULA|ULA20|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[19]~17_combout\ & 
-- !\ULA|ULA19|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[20]~18_combout\ & (!\BancoRegistradores|saidaA[19]~17_combout\ & (!\ULA|ULA19|signal_B~0_combout\ & !\ULA|ULA20|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA18|saida~0_combout\ & ( 
-- \ULA|ULA18|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[20]~18_combout\ & ((!\ULA|ULA20|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[19]~17_combout\ & !\ULA|ULA19|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[20]~18_combout\ & 
-- (!\BancoRegistradores|saidaA[19]~17_combout\ & (!\ULA|ULA19|signal_B~0_combout\ & !\ULA|ULA20|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA18|saida~0_combout\ & ( !\ULA|ULA18|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[20]~18_combout\ & 
-- ((!\ULA|ULA20|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[19]~17_combout\ & !\ULA|ULA19|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[20]~18_combout\ & (!\BancoRegistradores|saidaA[19]~17_combout\ & (!\ULA|ULA19|signal_B~0_combout\ & 
-- !\ULA|ULA20|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA18|saida~0_combout\ & ( !\ULA|ULA18|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[20]~18_combout\ & ((!\BancoRegistradores|saidaA[19]~17_combout\) # ((!\ULA|ULA19|signal_B~0_combout\) # 
-- (!\ULA|ULA20|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[20]~18_combout\ & (!\ULA|ULA20|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[19]~17_combout\) # (!\ULA|ULA19|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111010101000000011101010100000001110101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[20]~18_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\,
	datac => \ULA|ULA19|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA20|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA18|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA18|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA20|Carry_Out~combout\);

-- Location: MLABCELL_X37_Y3_N36
\ULA|ULA21|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|saida~0_combout\ = ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA21|signal_B~0_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \BancoRegistradores|saidaA[21]~19_combout\)))) # (\ULA|ULA21|signal_B~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[21]~19_combout\) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & ((\BancoRegistradores|saidaA[21]~19_combout\))))) ) ) # ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA21|signal_B~0_combout\ & 
-- (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\BancoRegistradores|saidaA[21]~19_combout\)))) # (\ULA|ULA21|signal_B~0_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\BancoRegistradores|saidaA[21]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000001110011100100000111001100110000110100110011000011010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA21|saida~0_combout\);

-- Location: LABCELL_X40_Y2_N6
\MUX_BANCOREG|saida_MUX[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[21]~21_combout\ = (\ULA|ULA21|saida~0_combout\ & !\MUX_BANCOREG|saida_MUX[31]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA21|ALT_INV_saida~0_combout\,
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[21]~21_combout\);

-- Location: FF_X40_Y2_N17
\BancoRegistradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[21]~21_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~315_q\);

-- Location: MLABCELL_X37_Y4_N42
\BancoRegistradores|saidaA[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[21]~19_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~315_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~315_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[21]~19_combout\);

-- Location: MLABCELL_X37_Y4_N45
\ULA|ULA22|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~0_combout\ = (\BancoRegistradores|saidaA[22]~20_combout\ & \ULA|ULA22|signal_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA22|saida~0_combout\);

-- Location: MLABCELL_X37_Y4_N18
\ULA|ULA22|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~3_combout\ = ( !\ULA|ULA22|saida~0_combout\ & ( \ULA|ULA24|Equal2~0_combout\ ) ) # ( \ULA|ULA22|saida~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[22]~20_combout\ $ 
-- (!\ULA|ULA22|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[21]~19_combout\)))) # (\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[22]~20_combout\ & (!\ULA|ULA22|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA22|saida~0_combout\ & ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[22]~20_combout\ $ (!\ULA|ULA22|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[21]~19_combout\)))) # (\ULA|ULA24|Equal1~0_combout\ & 
-- (!\BancoRegistradores|saidaA[22]~20_combout\ & (!\ULA|ULA22|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100001101000100110000110100011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datab => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datae => \ULA|ULA22|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA22|saida~3_combout\);

-- Location: MLABCELL_X37_Y4_N39
\ULA|ULA22|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~4_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & !\ULA|ULA22|signal_B~0_combout\) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\BancoRegistradores|saidaA[22]~20_combout\ $ 
-- (!\ULA|ULA22|signal_B~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA22|saida~4_combout\);

-- Location: LABCELL_X36_Y3_N0
\ULA|ULA22|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~2_combout\ = ( \ULA|ULA22|saida~4_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA21|signal_B~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (!\ULA|ULA22|saida~3_combout\)))) # (\ULA|ULA21|signal_B~0_combout\ & (!\ULA|ULA22|saida~3_combout\)) ) ) ) # ( !\ULA|ULA22|saida~4_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA21|signal_B~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\ & 
-- ((\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA22|saida~3_combout\)))) # (\ULA|ULA21|signal_B~0_combout\ & (!\ULA|ULA22|saida~3_combout\)) ) ) ) # ( \ULA|ULA22|saida~4_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( 
-- (!\ULA|ULA22|saida~3_combout\ & ((!\ULA|ULA21|signal_B~0_combout\) # (\ULA|ULA24|Equal2~0_combout\))) ) ) ) # ( !\ULA|ULA22|saida~4_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA22|saida~3_combout\) # ((\ULA|ULA21|signal_B~0_combout\ & 
-- !\ULA|ULA24|Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110101010100010001010101000101110101010101110001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA22|ALT_INV_saida~3_combout\,
	datab => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA22|ALT_INV_saida~4_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA22|saida~2_combout\);

-- Location: LABCELL_X39_Y2_N42
\MUX_BANCOREG|saida_MUX[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[22]~22_combout\ = ( \ULA|ULA22|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[22]~22_combout\);

-- Location: FF_X39_Y2_N20
\BancoRegistradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[22]~22_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~316_q\);

-- Location: MLABCELL_X37_Y4_N36
\BancoRegistradores|saidaA[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[22]~20_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~316_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~316_q\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[22]~20_combout\);

-- Location: MLABCELL_X37_Y4_N12
\ULA|ULA24|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~3_combout\ = ( \ULA|ULA23|AxorB~combout\ & ( \ULA|ULA24|saida~0_combout\ & ( (!\BancoRegistradores|saidaA[22]~20_combout\ & (\ULA|ULA22|signal_B~0_combout\ & ((\BancoRegistradores|saidaA[21]~19_combout\) # 
-- (\ULA|ULA21|signal_B~0_combout\)))) # (\BancoRegistradores|saidaA[22]~20_combout\ & (((\BancoRegistradores|saidaA[21]~19_combout\) # (\ULA|ULA21|signal_B~0_combout\)) # (\ULA|ULA22|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datab => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datae => \ULA|ULA23|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA24|saida~3_combout\);

-- Location: MLABCELL_X37_Y4_N6
\ULA|ULA24|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~4_combout\ = ( !\ULA|ULA23|saida~0_combout\ & ( \ULA|ULA24|saida~3_combout\ & ( (!\ULA|ULA21|signal_B~0_combout\ & ((!\ULA|ULA22|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[22]~20_combout\)))) # (\ULA|ULA21|signal_B~0_combout\ & 
-- (!\BancoRegistradores|saidaA[21]~19_combout\ & ((!\ULA|ULA22|signal_B~0_combout\) # (!\BancoRegistradores|saidaA[22]~20_combout\)))) ) ) ) # ( !\ULA|ULA23|saida~0_combout\ & ( !\ULA|ULA24|saida~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111100101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datae => \ULA|ULA23|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~3_combout\,
	combout => \ULA|ULA24|saida~4_combout\);

-- Location: LABCELL_X36_Y3_N36
\ULA|ULA24|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~2_combout\ = ( \ULA|ULA24|saida~4_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~1_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA24|AxorB~combout\))) ) ) ) # ( !\ULA|ULA24|saida~4_combout\ & ( 
-- \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~1_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (\ULA|ULA24|AxorB~combout\))) ) ) ) # ( \ULA|ULA24|saida~4_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~1_combout\ & 
-- ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA24|AxorB~combout\ $ (\ULA|ULA24|saida~3_combout\)))) ) ) ) # ( !\ULA|ULA24|saida~4_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~1_combout\ & ((!\ULA|ULA24|saida~0_combout\) # 
-- (\ULA|ULA24|AxorB~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010101010001000101010001010100010101010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA24|ALT_INV_AxorB~combout\,
	datad => \ULA|ULA24|ALT_INV_saida~3_combout\,
	datae => \ULA|ULA24|ALT_INV_saida~4_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA24|saida~2_combout\);

-- Location: LABCELL_X39_Y2_N57
\MUX_BANCOREG|saida_MUX[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[24]~24_combout\ = ( !\ULA|ULA24|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[24]~24_combout\);

-- Location: FF_X39_Y2_N53
\BancoRegistradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[24]~24_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~318_q\);

-- Location: LABCELL_X39_Y2_N12
\BancoRegistradores|saidaA[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[24]~22_combout\ = (\BancoRegistradores|registrador~318_q\ & \BancoRegistradores|saidaA[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[24]~22_combout\);

-- Location: MLABCELL_X37_Y2_N21
\ULA|ULA25|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~4_combout\ = ( !\BancoRegistradores|saidaA[24]~22_combout\ & ( !\ULA|ULA24|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	dataf => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA25|saida~4_combout\);

-- Location: LABCELL_X36_Y5_N36
\ULA|ULA25|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~3_combout\ = ( \ULA|ULA24|signal_B~0_combout\ & ( \ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA25|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[24]~22_combout\ & !\ULA|ULA23|saida~0_combout\))) ) ) ) # ( !\ULA|ULA24|signal_B~0_combout\ & ( 
-- \ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA25|AxorB~combout\ $ (((!\BancoRegistradores|saidaA[24]~22_combout\) # (!\ULA|ULA23|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	datac => \ULA|ULA23|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA25|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA25|saida~3_combout\);

-- Location: LABCELL_X36_Y3_N12
\ULA|ULA25|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~2_combout\ = ( !\ULA|ULA25|saida~1_combout\ & ( \ULA|ULA23|AxBandC~combout\ & ( (!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA25|saida~4_combout\ $ (!\ULA|ULA25|AxorB~combout\)) ) ) ) # ( !\ULA|ULA25|saida~1_combout\ & ( 
-- !\ULA|ULA23|AxBandC~combout\ & ( !\ULA|ULA25|saida~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011011101111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~4_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA25|ALT_INV_saida~3_combout\,
	datad => \ULA|ULA25|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA25|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA23|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA25|saida~2_combout\);

-- Location: MLABCELL_X37_Y4_N51
\MUX_BANCOREG|saida_MUX[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[25]~25_combout\ = ( !\ULA|ULA25|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA25|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[25]~25_combout\);

-- Location: FF_X37_Y4_N32
\BancoRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[25]~25_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~319_q\);

-- Location: MLABCELL_X37_Y5_N3
\BancoRegistradores|saidaA[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[25]~23_combout\ = ( \BancoRegistradores|saidaA[0]~6_combout\ & ( \BancoRegistradores|registrador~319_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datae => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	combout => \BancoRegistradores|saidaA[25]~23_combout\);

-- Location: LABCELL_X36_Y3_N24
\ULA|ULA25|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|Carry_Out~combout\ = ( \ULA|ULA24|signal_B~0_combout\ & ( \ULA|ULA23|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[25]~23_combout\ & !\ULA|ULA25|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA24|signal_B~0_combout\ & ( \ULA|ULA23|AxBandC~combout\ 
-- & ( (!\BancoRegistradores|saidaA[25]~23_combout\ & ((!\ULA|ULA25|signal_B~0_combout\) # (!\BancoRegistradores|saidaA[24]~22_combout\))) # (\BancoRegistradores|saidaA[25]~23_combout\ & (!\ULA|ULA25|signal_B~0_combout\ & 
-- !\BancoRegistradores|saidaA[24]~22_combout\)) ) ) ) # ( \ULA|ULA24|signal_B~0_combout\ & ( !\ULA|ULA23|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[25]~23_combout\ & ((!\ULA|ULA25|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[24]~22_combout\ & 
-- !\ULA|ULA23|saida~0_combout\)))) # (\BancoRegistradores|saidaA[25]~23_combout\ & (!\ULA|ULA25|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[24]~22_combout\ & !\ULA|ULA23|saida~0_combout\))) ) ) ) # ( !\ULA|ULA24|signal_B~0_combout\ & ( 
-- !\ULA|ULA23|AxBandC~combout\ & ( (!\BancoRegistradores|saidaA[25]~23_combout\ & ((!\ULA|ULA25|signal_B~0_combout\) # ((!\BancoRegistradores|saidaA[24]~22_combout\) # (!\ULA|ULA23|saida~0_combout\)))) # (\BancoRegistradores|saidaA[25]~23_combout\ & 
-- (!\ULA|ULA25|signal_B~0_combout\ & ((!\BancoRegistradores|saidaA[24]~22_combout\) # (!\ULA|ULA23|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[25]~23_combout\,
	datab => \ULA|ULA25|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[24]~22_combout\,
	datad => \ULA|ULA23|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA25|Carry_Out~combout\);

-- Location: MLABCELL_X37_Y3_N0
\ULA|ULA26|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|saida~0_combout\ = ( \ULA|ULA25|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\BancoRegistradores|saidaA[26]~24_combout\ & (\ULA|ULA26|signal_B~0_combout\)) # (\BancoRegistradores|saidaA[26]~24_combout\ & 
-- ((!\ULA|ULA26|signal_B~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[26]~24_combout\ & (\ULA|ULA26|signal_B~0_combout\))) ) ) # ( !\ULA|ULA25|Carry_Out~combout\ & ( 
-- (!\BancoRegistradores|saidaA[26]~24_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA26|signal_B~0_combout\ $ (\ULA|ULA24|Equal1~0_combout\)))) # (\BancoRegistradores|saidaA[26]~24_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & 
-- \ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA26|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001100101011100000110010101100101001001010110010100100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datac => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA26|saida~0_combout\);

-- Location: MLABCELL_X37_Y3_N27
\MUX_BANCOREG|saida_MUX[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[26]~26_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA26|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA26|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[26]~26_combout\);

-- Location: FF_X37_Y5_N31
\BancoRegistradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[26]~26_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~320_q\);

-- Location: FF_X37_Y3_N28
\BancoRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[26]~26_combout\,
	ena => \BancoRegistradores|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~64_q\);

-- Location: MLABCELL_X37_Y5_N30
\BancoRegistradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1088_combout\ = ( \BancoRegistradores|registrador~64_q\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & ((!\ULA|ULA8|signal_B~0_combout\) # (\BancoRegistradores|registrador~320_q\)))) ) ) # ( 
-- !\BancoRegistradores|registrador~64_q\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & (\ULA|ULA8|signal_B~0_combout\ & \BancoRegistradores|registrador~320_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000100000001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~320_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~64_q\,
	combout => \BancoRegistradores|registrador~1088_combout\);

-- Location: LABCELL_X36_Y5_N42
\ULA|ULA26|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1088_combout\ & ( \ULA|ULA8|signal_B~1_combout\ ) ) # ( !\BancoRegistradores|registrador~1088_combout\ & ( (\ULA|ULA6|signal_B~1_combout\ & !\ULA|ULA8|signal_B~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA6|ALT_INV_signal_B~1_combout\,
	datad => \ULA|ULA8|ALT_INV_signal_B~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1088_combout\,
	combout => \ULA|ULA26|signal_B~0_combout\);

-- Location: LABCELL_X36_Y5_N57
\ULA|ULA29|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~2_combout\ = ( \ULA|ULA28|AxorB~combout\ & ( \ULA|ULA27|signal_B~0_combout\ & ( ((\BancoRegistradores|saidaA[26]~24_combout\) # (\BancoRegistradores|saidaA[27]~25_combout\)) # (\ULA|ULA26|signal_B~0_combout\) ) ) ) # ( 
-- \ULA|ULA28|AxorB~combout\ & ( !\ULA|ULA27|signal_B~0_combout\ & ( (\BancoRegistradores|saidaA[27]~25_combout\ & ((\BancoRegistradores|saidaA[26]~24_combout\) # (\ULA|ULA26|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000111100000000000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datae => \ULA|ULA28|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA29|saida~2_combout\);

-- Location: LABCELL_X36_Y5_N0
\ULA|ULA29|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~3_combout\ = ( \ULA|ULA29|saida~2_combout\ & ( \ULA|ULA27|signal_B~0_combout\ & ( (!\BancoRegistradores|saidaA[27]~25_combout\ & (!\ULA|ULA28|saida~1_combout\ & ((!\BancoRegistradores|saidaA[26]~24_combout\) # 
-- (!\ULA|ULA26|signal_B~0_combout\)))) ) ) ) # ( !\ULA|ULA29|saida~2_combout\ & ( \ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA28|saida~1_combout\ ) ) ) # ( \ULA|ULA29|saida~2_combout\ & ( !\ULA|ULA27|signal_B~0_combout\ & ( (!\ULA|ULA28|saida~1_combout\ & 
-- ((!\BancoRegistradores|saidaA[26]~24_combout\) # (!\ULA|ULA26|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA29|saida~2_combout\ & ( !\ULA|ULA27|signal_B~0_combout\ & ( !\ULA|ULA28|saida~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001010000011110000111100001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[27]~25_combout\,
	datac => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA29|ALT_INV_saida~2_combout\,
	dataf => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA29|saida~3_combout\);

-- Location: LABCELL_X36_Y3_N48
\ULA|ULA29|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~1_combout\ = ( \ULA|ULA24|saida~0_combout\ & ( \ULA|ULA25|Carry_Out~combout\ & ( (!\ULA|ULA29|saida~0_combout\ & (!\ULA|ULA29|AxorB~combout\ $ (!\ULA|ULA29|saida~3_combout\))) ) ) ) # ( !\ULA|ULA24|saida~0_combout\ & ( 
-- \ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA29|saida~0_combout\ ) ) ) # ( \ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( (!\ULA|ULA29|saida~0_combout\ & (!\ULA|ULA29|AxorB~combout\ $ (((!\ULA|ULA29|saida~3_combout\) # 
-- (\ULA|ULA29|saida~2_combout\))))) ) ) ) # ( !\ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA25|Carry_Out~combout\ & ( !\ULA|ULA29|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001000101000001010101010101010100010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA29|ALT_INV_AxorB~combout\,
	datac => \ULA|ULA29|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA29|ALT_INV_saida~3_combout\,
	datae => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA29|saida~1_combout\);

-- Location: MLABCELL_X37_Y3_N3
\MUX_BANCOREG|saida_MUX[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[29]~29_combout\ = ( !\ULA|ULA29|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA29|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[29]~29_combout\);

-- Location: FF_X37_Y3_N5
\BancoRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[29]~29_combout\,
	ena => \BancoRegistradores|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~323_q\);

-- Location: MLABCELL_X37_Y5_N27
\BancoRegistradores|saidaA[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[29]~27_combout\ = (\BancoRegistradores|saidaA[0]~6_combout\ & \BancoRegistradores|registrador~323_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~6_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~323_q\,
	combout => \BancoRegistradores|saidaA[29]~27_combout\);

-- Location: LABCELL_X35_Y3_N42
\ULA|ULA30|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|saida~0_combout\ = ( \ULA|ULA30|AxorB~combout\ & ( \ULA|ULA28|AxBandC~combout\ & ( (\ULA|ULA24|saida~0_combout\ & (!\BancoRegistradores|saidaA[29]~27_combout\ & !\ULA|ULA29|signal_B~0_combout\)) ) ) ) # ( !\ULA|ULA30|AxorB~combout\ & ( 
-- \ULA|ULA28|AxBandC~combout\ & ( (\ULA|ULA24|saida~0_combout\ & ((\ULA|ULA29|signal_B~0_combout\) # (\BancoRegistradores|saidaA[29]~27_combout\))) ) ) ) # ( \ULA|ULA30|AxorB~combout\ & ( !\ULA|ULA28|AxBandC~combout\ & ( (\ULA|ULA24|saida~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[29]~27_combout\ & ((!\ULA|ULA29|signal_B~0_combout\) # (!\ULA|ULA28|saida~1_combout\))) # (\BancoRegistradores|saidaA[29]~27_combout\ & (!\ULA|ULA29|signal_B~0_combout\ & !\ULA|ULA28|saida~1_combout\)))) ) ) ) # ( 
-- !\ULA|ULA30|AxorB~combout\ & ( !\ULA|ULA28|AxBandC~combout\ & ( (\ULA|ULA24|saida~0_combout\ & ((!\BancoRegistradores|saidaA[29]~27_combout\ & (\ULA|ULA29|signal_B~0_combout\ & \ULA|ULA28|saida~1_combout\)) # (\BancoRegistradores|saidaA[29]~27_combout\ & 
-- ((\ULA|ULA28|saida~1_combout\) # (\ULA|ULA29|signal_B~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101010101000100000000010101000101010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	datac => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datae => \ULA|ULA30|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA28|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA30|saida~0_combout\);

-- Location: LABCELL_X35_Y6_N0
\somaConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~1_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \somaConstante|Add0~2\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \somaConstante|Add0~1_sumout\,
	cout => \somaConstante|Add0~2\);

-- Location: LABCELL_X35_Y4_N57
\MUX_PROXPC|saida_MUX[2]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[2]~30_combout\ = ( \ROM|memROM~7_combout\ & ( (\UNI_LOG|saida[9]~0_combout\) # (\somaConstante|Add0~1_sumout\) ) ) # ( !\ROM|memROM~7_combout\ & ( (\somaConstante|Add0~1_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~1_sumout\,
	datad => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \MUX_PROXPC|saida_MUX[2]~30_combout\);

-- Location: LABCELL_X36_Y5_N9
\ULA|ULA31|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~2_combout\ = ( \ULA|ULA30|AxorB~combout\ & ( \ULA|ULA24|saida~0_combout\ & ( (!\ULA|ULA31|soma~0_combout\ & (((\ULA|ULA29|signal_B~0_combout\) # (\ULA|ULA30|saida~2_combout\)) # (\BancoRegistradores|saidaA[29]~27_combout\))) # 
-- (\ULA|ULA31|soma~0_combout\ & (!\ULA|ULA30|saida~2_combout\ & ((!\BancoRegistradores|saidaA[29]~27_combout\) # (!\ULA|ULA29|signal_B~0_combout\)))) ) ) ) # ( !\ULA|ULA30|AxorB~combout\ & ( \ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA31|soma~0_combout\ $ 
-- (!\ULA|ULA30|saida~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000111110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	datab => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datac => \ULA|ULA30|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA30|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA31|saida~2_combout\);

-- Location: LABCELL_X35_Y3_N48
\ULA|ULA31|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~3_combout\ = ( !\ULA|ULA30|saida~2_combout\ & ( (\ULA|ULA30|AxorB~combout\ & (!\BancoRegistradores|saidaA[29]~27_combout\ $ (!\ULA|ULA29|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_saidaA[29]~27_combout\,
	datac => \ULA|ULA29|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA30|ALT_INV_AxorB~combout\,
	dataf => \ULA|ULA30|ALT_INV_saida~2_combout\,
	combout => \ULA|ULA31|saida~3_combout\);

-- Location: LABCELL_X35_Y3_N24
\ULA|ULA31|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~1_combout\ = ( !\ULA|ULA31|saida~0_combout\ & ( \ULA|ULA28|AxBandC~combout\ & ( (!\ULA|ULA31|saida~2_combout\) # ((\ULA|ULA31|soma~0_combout\ & \ULA|ULA31|saida~3_combout\)) ) ) ) # ( !\ULA|ULA31|saida~0_combout\ & ( 
-- !\ULA|ULA28|AxBandC~combout\ & ( (!\ULA|ULA31|saida~2_combout\) # ((\ULA|ULA31|saida~3_combout\ & (!\ULA|ULA31|soma~0_combout\ $ (\ULA|ULA28|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001101000000000000000011001101110011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA31|ALT_INV_saida~3_combout\,
	datad => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA28|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA31|saida~1_combout\);

-- Location: LABCELL_X40_Y5_N21
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ULA|ULA0|saida~0_combout\ & ( (!\ROM|memROM~8_combout\ & (!\ULA|ULA1|saida~0_combout\ & \ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ULA|ULA1|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ULA|ULA0|ALT_INV_saida~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X40_Y5_N9
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ULA|ULA3|saida~1_combout\ & ( (\comb~0_combout\ & (!\ULA|ULA4|saida~0_combout\ & \ULA|ULA2|saida~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA2|ALT_INV_saida~2_combout\,
	dataf => \ULA|ULA3|ALT_INV_saida~1_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X40_Y5_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \comb~1_combout\ & ( (!\ULA|ULA6|saida~0_combout\ & (!\ULA|ULA7|saida~2_combout\ & !\ULA|ULA5|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA6|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA7|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA5|ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X41_Y3_N48
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \comb~2_combout\ & ( (!\ULA|ULA9|saida~0_combout\ & (!\ULA|ULA11|saida~0_combout\ & (!\ULA|ULA10|saida~0_combout\ & !\ULA|ULA8|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA11|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA10|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA8|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X41_Y3_N12
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \comb~3_combout\ & ( (!\ULA|ULA14|saida~0_combout\ & (!\ULA|ULA12|saida~2_combout\ & (\ULA|ULA15|saida~3_combout\ & !\ULA|ULA13|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA12|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA15|ALT_INV_saida~3_combout\,
	datad => \ULA|ULA13|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X41_Y3_N36
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \comb~4_combout\ & ( (!\ULA|ULA17|saida~2_combout\ & (!\ULA|ULA16|saida~0_combout\ & (!\ULA|ULA18|saida~1_combout\ & !\ULA|ULA19|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA18|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA19|ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~5_combout\);

-- Location: MLABCELL_X37_Y3_N18
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \ULA|ULA23|saida~2_combout\ & ( \comb~5_combout\ & ( (!\ULA|ULA21|saida~0_combout\ & (!\ULA|ULA20|saida~0_combout\ & (\ULA|ULA24|saida~2_combout\ & !\ULA|ULA22|saida~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA20|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA24|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA22|ALT_INV_saida~2_combout\,
	datae => \ULA|ULA23|ALT_INV_saida~2_combout\,
	dataf => \ALT_INV_comb~5_combout\,
	combout => \comb~6_combout\);

-- Location: MLABCELL_X37_Y3_N33
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \comb~6_combout\ & ( (\ULA|ULA25|saida~2_combout\ & (\ULA|ULA27|saida~1_combout\ & !\ULA|ULA26|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA27|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA26|ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_comb~6_combout\,
	combout => \comb~7_combout\);

-- Location: LABCELL_X36_Y4_N24
\MUX_PROXPC|saida_MUX[2]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[2]~31_combout\ = ( \ULA|ULA29|saida~1_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & !\ULA|ULA30|saida~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ULA|ULA30|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA29|ALT_INV_saida~1_combout\,
	combout => \MUX_PROXPC|saida_MUX[2]~31_combout\);

-- Location: LABCELL_X40_Y4_N12
\MUX_PROXPC|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[2]~0_combout\ = ( \comb~7_combout\ & ( \MUX_PROXPC|saida_MUX[2]~31_combout\ & ( (\MUX_PROXPC|saida_MUX[2]~30_combout\ & (((!\ULA|ULA28|saida~2_combout\) # (!\ULA|ULA31|saida~1_combout\)) # (\ULA|ULA30|saida~0_combout\))) ) ) ) # ( 
-- !\comb~7_combout\ & ( \MUX_PROXPC|saida_MUX[2]~31_combout\ & ( \MUX_PROXPC|saida_MUX[2]~30_combout\ ) ) ) # ( \comb~7_combout\ & ( !\MUX_PROXPC|saida_MUX[2]~31_combout\ & ( \MUX_PROXPC|saida_MUX[2]~30_combout\ ) ) ) # ( !\comb~7_combout\ & ( 
-- !\MUX_PROXPC|saida_MUX[2]~31_combout\ & ( \MUX_PROXPC|saida_MUX[2]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datab => \MUX_PROXPC|ALT_INV_saida_MUX[2]~30_combout\,
	datac => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_comb~7_combout\,
	dataf => \MUX_PROXPC|ALT_INV_saida_MUX[2]~31_combout\,
	combout => \MUX_PROXPC|saida_MUX[2]~0_combout\);

-- Location: FF_X40_Y4_N14
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N3
\somaConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~5_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))
-- \somaConstante|Add0~6\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \somaConstante|Add0~2\,
	sumout => \somaConstante|Add0~5_sumout\,
	cout => \somaConstante|Add0~6\);

-- Location: LABCELL_X35_Y6_N6
\somaConstante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaConstante|Add0~6\ ))
-- \somaConstante|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaConstante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \somaConstante|Add0~6\,
	sumout => \somaConstante|Add0~9_sumout\,
	cout => \somaConstante|Add0~10\);

-- Location: LABCELL_X35_Y6_N9
\somaConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))
-- \somaConstante|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	cin => \somaConstante|Add0~10\,
	sumout => \somaConstante|Add0~13_sumout\,
	cout => \somaConstante|Add0~14\);

-- Location: LABCELL_X43_Y4_N12
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT\(3) & ( (!\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT\(5)) ) ) ) # ( !\PC|DOUT\(2) & ( \PC|DOUT\(3) ) ) # ( \PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( \PC|DOUT\(5) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( 
-- (\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111010101010101010111111111111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X40_Y2_N39
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|DOUT\(4) & ( (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(5)) ) ) # ( !\PC|DOUT\(4) & ( (\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X34_Y4_N0
\Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~118_cout\ = CARRY(( \somaConstante|Add0~1_sumout\ ) + ( \ROM|memROM~7_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \somaConstante|ALT_INV_Add0~1_sumout\,
	cin => GND,
	cout => \Add0~118_cout\);

-- Location: MLABCELL_X34_Y4_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \somaConstante|Add0~5_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & \ROM|memROM~2_combout\)) ) + ( \Add0~118_cout\ ))
-- \Add0~2\ = CARRY(( \somaConstante|Add0~5_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & \ROM|memROM~2_combout\)) ) + ( \Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \somaConstante|ALT_INV_Add0~5_sumout\,
	cin => \Add0~118_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X34_Y4_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \somaConstante|Add0~9_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & \ROM|memROM~4_combout\)) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \somaConstante|Add0~9_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & \ROM|memROM~4_combout\)) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \somaConstante|ALT_INV_Add0~9_sumout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X34_Y4_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & !\ROM|memROM~0_combout\)) ) + ( \somaConstante|Add0~13_sumout\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & !\ROM|memROM~0_combout\)) ) + ( \somaConstante|Add0~13_sumout\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \somaConstante|ALT_INV_Add0~13_sumout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X37_Y3_N24
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \comb~7_combout\ & ( (\ULA|ULA29|saida~1_combout\ & (!\ULA|ULA30|saida~1_combout\ & (\ULA|ULA28|saida~2_combout\ & !\ULA|ULA30|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA30|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \comb~8_combout\);

-- Location: LABCELL_X40_Y4_N0
\MUX_PROXPC|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[5]~3_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~9_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~1_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( 
-- \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~13_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~1_combout\))) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~13_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~1_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~13_sumout\)) # 
-- (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001001110111001000100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \somaConstante|ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[5]~3_combout\);

-- Location: FF_X40_Y4_N1
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X40_Y2_N36
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & !\PC|DOUT\(5)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X39_Y4_N18
\MUX_PROXPC|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[4]~2_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~5_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( 
-- \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~9_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~9_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~9_sumout\)) # 
-- (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \somaConstante|ALT_INV_Add0~9_sumout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[4]~2_combout\);

-- Location: FF_X39_Y4_N19
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N36
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & ((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X35_Y6_N12
\somaConstante|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~21_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~14\ ))
-- \somaConstante|Add0~22\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \somaConstante|Add0~14\,
	sumout => \somaConstante|Add0~21_sumout\,
	cout => \somaConstante|Add0~22\);

-- Location: LABCELL_X35_Y6_N15
\somaConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~22\ ))
-- \somaConstante|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaConstante|Add0~22\,
	sumout => \somaConstante|Add0~17_sumout\,
	cout => \somaConstante|Add0~18\);

-- Location: MLABCELL_X34_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \somaConstante|Add0~21_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( \somaConstante|Add0~21_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~21_sumout\,
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X34_Y4_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \somaConstante|Add0~17_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\) ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \somaConstante|Add0~17_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \somaConstante|ALT_INV_Add0~17_sumout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X40_Y4_N42
\MUX_PROXPC|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[7]~4_combout\ = ( \Add0~13_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\somaConstante|Add0~17_sumout\) # (\ULA|ULA31|saida~1_combout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( 
-- !\Add0~13_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((!\ULA|ULA31|saida~1_combout\ & \somaConstante|Add0~17_sumout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( \Add0~13_sumout\ & ( !\comb~8_combout\ 
-- & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~17_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( !\Add0~13_sumout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~17_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101110001010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[7]~4_combout\);

-- Location: FF_X40_Y4_N43
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X42_Y4_N0
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (\PC|DOUT\(3) & (!\PC|DOUT\(5) & \PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X40_Y4_N24
\MUX_PROXPC|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[6]~5_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & ((\somaConstante|Add0~21_sumout\))) # (\ULA|ULA31|saida~1_combout\ & (\Add0~17_sumout\)))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \somaConstante|ALT_INV_Add0~21_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[6]~5_combout\);

-- Location: FF_X40_Y4_N25
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X41_Y4_N24
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(6) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~8_combout\);

-- Location: MLABCELL_X37_Y2_N51
\UNI_LOG|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG|saida[9]~0_combout\ = ( \ROM|memROM~8_combout\ & ( !\UNI_LOG|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \UNI_LOG|ALT_INV_Equal4~0_combout\,
	combout => \UNI_LOG|saida[9]~0_combout\);

-- Location: LABCELL_X39_Y4_N54
\MUX_PROXPC|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[3]~1_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~1_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~3_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( 
-- \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~5_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~3_combout\))) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~5_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~3_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~5_sumout\)) # 
-- (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \somaConstante|ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[3]~1_combout\);

-- Location: FF_X40_Y4_N46
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PROXPC|saida_MUX[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X41_Y4_N45
\UNI_LOG_ULA|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal4~0_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & (\PC|DOUT\(4) & !\PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \UNI_LOG_ULA|Equal4~0_combout\);

-- Location: LABCELL_X41_Y3_N27
\ULA|ULA24|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|Equal1~0_combout\ = ( \UNI_LOG_ULA|ULActrl~0_combout\ & ( (\UNI_LOG_ULA|Equal4~0_combout\ & (!\UNI_LOG_ULA|Equal0~1_combout\ & !\UNI_LOG_ULA|ULActrl~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \ULA|ULA24|Equal1~0_combout\);

-- Location: LABCELL_X36_Y5_N48
\ULA|ULA24|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~0_combout\ = ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA24|saida~0_combout\);

-- Location: LABCELL_X35_Y5_N15
\ULA|saida[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~0_combout\ = ( \ULA|ULA24|saida~1_combout\ & ( \ULA|ULA23|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) ) # ( !\ULA|ULA24|saida~1_combout\ & ( \ULA|ULA23|saida~0_combout\ & ( (\ULA|ULA24|saida~0_combout\ & (!\ULA|Equal5~0_combout\ & 
-- !\ULA|ULA24|AxorB~combout\)) ) ) ) # ( \ULA|ULA24|saida~1_combout\ & ( !\ULA|ULA23|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) ) # ( !\ULA|ULA24|saida~1_combout\ & ( !\ULA|ULA23|saida~0_combout\ & ( (\ULA|ULA24|saida~0_combout\ & 
-- (!\ULA|Equal5~0_combout\ & (!\ULA|ULA23|AxBandC~combout\ $ (!\ULA|ULA24|AxorB~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000110011001100110001000100000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA23|ALT_INV_AxBandC~combout\,
	datad => \ULA|ULA24|ALT_INV_AxorB~combout\,
	datae => \ULA|ULA24|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA23|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[24]~0_combout\);

-- Location: LABCELL_X39_Y5_N33
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~13_combout\ & ( !\PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X35_Y6_N18
\somaConstante|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~57_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~18\ ))
-- \somaConstante|Add0~58\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaConstante|Add0~18\,
	sumout => \somaConstante|Add0~57_sumout\,
	cout => \somaConstante|Add0~58\);

-- Location: MLABCELL_X34_Y4_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \somaConstante|Add0~57_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~14\ ))
-- \Add0~54\ = CARRY(( \somaConstante|Add0~57_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~57_sumout\,
	cin => \Add0~14\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X36_Y4_N27
\MUX_PROXPC|saida_MUX[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[8]~14_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & ((\somaConstante|Add0~57_sumout\))) # (\ULA|ULA31|saida~1_combout\ & (\Add0~53_sumout\)))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_Add0~53_sumout\,
	datac => \somaConstante|ALT_INV_Add0~57_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[8]~14_combout\);

-- Location: FF_X36_Y4_N28
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X35_Y6_N21
\somaConstante|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~69_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~58\ ))
-- \somaConstante|Add0~70\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \somaConstante|Add0~58\,
	sumout => \somaConstante|Add0~69_sumout\,
	cout => \somaConstante|Add0~70\);

-- Location: MLABCELL_X34_Y4_N21
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \somaConstante|Add0~69_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~54\ ))
-- \Add0~66\ = CARRY(( \somaConstante|Add0~69_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~69_sumout\,
	cin => \Add0~54\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X36_Y2_N39
\MUX_PROXPC|saida_MUX[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[9]~17_combout\ = ( \Add0~65_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\ULA|ULA31|saida~1_combout\) # (\somaConstante|Add0~69_sumout\))) ) ) ) # ( !\Add0~65_sumout\ & ( \comb~8_combout\ & ( 
-- (\somaConstante|Add0~69_sumout\ & (!\UNI_LOG|saida[9]~0_combout\ & !\ULA|ULA31|saida~1_combout\)) ) ) ) # ( \Add0~65_sumout\ & ( !\comb~8_combout\ & ( (\somaConstante|Add0~69_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) ) ) # ( !\Add0~65_sumout\ & ( 
-- !\comb~8_combout\ & ( (\somaConstante|Add0~69_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000000010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~69_sumout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_Add0~65_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[9]~17_combout\);

-- Location: FF_X36_Y2_N40
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: LABCELL_X35_Y6_N24
\somaConstante|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~65_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~70\ ))
-- \somaConstante|Add0~66\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \somaConstante|Add0~70\,
	sumout => \somaConstante|Add0~65_sumout\,
	cout => \somaConstante|Add0~66\);

-- Location: MLABCELL_X34_Y4_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~65_sumout\ ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~65_sumout\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \somaConstante|ALT_INV_Add0~65_sumout\,
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X37_Y3_N12
\MUX_PROXPC|saida_MUX[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[10]~16_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~65_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~61_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \somaConstante|ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[10]~16_combout\);

-- Location: FF_X37_Y3_N13
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: LABCELL_X35_Y6_N27
\somaConstante|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~61_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~66\ ))
-- \somaConstante|Add0~62\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(11),
	cin => \somaConstante|Add0~66\,
	sumout => \somaConstante|Add0~61_sumout\,
	cout => \somaConstante|Add0~62\);

-- Location: MLABCELL_X34_Y4_N27
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~61_sumout\ ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~61_sumout\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \somaConstante|ALT_INV_Add0~61_sumout\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X37_Y3_N15
\MUX_PROXPC|saida_MUX[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[11]~15_combout\ = ( \Add0~57_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\ULA|ULA31|saida~1_combout\ & \comb~8_combout\)) # (\somaConstante|Add0~61_sumout\))) ) ) # ( !\Add0~57_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~61_sumout\ & ((!\ULA|ULA31|saida~1_combout\) # (!\comb~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000010101010100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \somaConstante|ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \MUX_PROXPC|saida_MUX[11]~15_combout\);

-- Location: FF_X37_Y3_N16
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: LABCELL_X35_Y6_N30
\somaConstante|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~73_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~62\ ))
-- \somaConstante|Add0~74\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \somaConstante|Add0~62\,
	sumout => \somaConstante|Add0~73_sumout\,
	cout => \somaConstante|Add0~74\);

-- Location: MLABCELL_X34_Y4_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \somaConstante|Add0~73_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~58\ ))
-- \Add0~70\ = CARRY(( \somaConstante|Add0~73_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~73_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~58\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X36_Y4_N12
\MUX_PROXPC|saida_MUX[12]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[12]~18_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~73_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~69_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (\somaConstante|Add0~73_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~73_sumout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[12]~18_combout\);

-- Location: FF_X36_Y4_N14
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: LABCELL_X35_Y6_N33
\somaConstante|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~85_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~74\ ))
-- \somaConstante|Add0~86\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(13),
	cin => \somaConstante|Add0~74\,
	sumout => \somaConstante|Add0~85_sumout\,
	cout => \somaConstante|Add0~86\);

-- Location: MLABCELL_X34_Y4_N33
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \somaConstante|Add0~85_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~70\ ))
-- \Add0~82\ = CARRY(( \somaConstante|Add0~85_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~85_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~70\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X36_Y2_N42
\MUX_PROXPC|saida_MUX[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[13]~21_combout\ = ( \Add0~81_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\ULA|ULA31|saida~1_combout\) # (\somaConstante|Add0~85_sumout\))) ) ) ) # ( !\Add0~81_sumout\ & ( \comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~85_sumout\ & !\ULA|ULA31|saida~1_combout\)) ) ) ) # ( \Add0~81_sumout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~85_sumout\) ) ) ) # ( !\Add0~81_sumout\ & ( 
-- !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~85_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[13]~21_combout\);

-- Location: FF_X36_Y2_N43
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: LABCELL_X35_Y6_N36
\somaConstante|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~81_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~86\ ))
-- \somaConstante|Add0~82\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(14),
	cin => \somaConstante|Add0~86\,
	sumout => \somaConstante|Add0~81_sumout\,
	cout => \somaConstante|Add0~82\);

-- Location: MLABCELL_X34_Y4_N36
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \somaConstante|Add0~81_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( \somaConstante|Add0~81_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~81_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X36_Y4_N45
\MUX_PROXPC|saida_MUX[14]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[14]~20_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~81_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~77_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (\somaConstante|Add0~81_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000001100000101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~81_sumout\,
	datab => \ALT_INV_Add0~77_sumout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[14]~20_combout\);

-- Location: FF_X36_Y4_N46
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: LABCELL_X35_Y6_N39
\somaConstante|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~77_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~82\ ))
-- \somaConstante|Add0~78\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(15),
	cin => \somaConstante|Add0~82\,
	sumout => \somaConstante|Add0~77_sumout\,
	cout => \somaConstante|Add0~78\);

-- Location: MLABCELL_X34_Y4_N39
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \somaConstante|Add0~77_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( \somaConstante|Add0~77_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~77_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X36_Y4_N0
\MUX_PROXPC|saida_MUX[15]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[15]~19_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & ((\somaConstante|Add0~77_sumout\))) # (\ULA|ULA31|saida~1_combout\ & (\Add0~73_sumout\)))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_Add0~73_sumout\,
	datac => \somaConstante|ALT_INV_Add0~77_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[15]~19_combout\);

-- Location: FF_X36_Y4_N2
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: LABCELL_X35_Y6_N42
\somaConstante|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~89_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~78\ ))
-- \somaConstante|Add0~90\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \somaConstante|Add0~78\,
	sumout => \somaConstante|Add0~89_sumout\,
	cout => \somaConstante|Add0~90\);

-- Location: MLABCELL_X34_Y4_N42
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \somaConstante|Add0~89_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\) ) + ( \Add0~74\ ))
-- \Add0~86\ = CARRY(( \somaConstante|Add0~89_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \somaConstante|ALT_INV_Add0~89_sumout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	cin => \Add0~74\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: MLABCELL_X34_Y3_N33
\MUX_PROXPC|saida_MUX[16]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[16]~22_combout\ = ( \somaConstante|Add0~89_sumout\ & ( \Add0~85_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\) # (\ROM|memROM~11_combout\) ) ) ) # ( !\somaConstante|Add0~89_sumout\ & ( \Add0~85_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ 
-- & (((\ULA|ULA31|saida~1_combout\ & \comb~8_combout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( \somaConstante|Add0~89_sumout\ & ( !\Add0~85_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((!\ULA|ULA31|saida~1_combout\) # 
-- (!\comb~8_combout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( !\somaConstante|Add0~89_sumout\ & ( !\Add0~85_sumout\ & ( (\ROM|memROM~11_combout\ & \UNI_LOG|saida[9]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111000101010100000011010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datae => \somaConstante|ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_Add0~85_sumout\,
	combout => \MUX_PROXPC|saida_MUX[16]~22_combout\);

-- Location: FF_X34_Y3_N34
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: LABCELL_X35_Y6_N45
\somaConstante|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~101_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~90\ ))
-- \somaConstante|Add0~102\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(17),
	cin => \somaConstante|Add0~90\,
	sumout => \somaConstante|Add0~101_sumout\,
	cout => \somaConstante|Add0~102\);

-- Location: MLABCELL_X34_Y4_N45
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \somaConstante|Add0~101_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~86\ ))
-- \Add0~98\ = CARRY(( \somaConstante|Add0~101_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~101_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~86\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X36_Y4_N6
\MUX_PROXPC|saida_MUX[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[17]~25_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~101_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~97_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (\somaConstante|Add0~101_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~101_sumout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~97_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[17]~25_combout\);

-- Location: FF_X36_Y4_N7
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: LABCELL_X35_Y6_N48
\somaConstante|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~97_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~102\ ))
-- \somaConstante|Add0~98\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(18),
	cin => \somaConstante|Add0~102\,
	sumout => \somaConstante|Add0~97_sumout\,
	cout => \somaConstante|Add0~98\);

-- Location: MLABCELL_X34_Y4_N48
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~97_sumout\ ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~97_sumout\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \somaConstante|ALT_INV_Add0~97_sumout\,
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X36_Y4_N36
\MUX_PROXPC|saida_MUX[18]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[18]~24_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~93_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~12_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( 
-- \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~97_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (!\ROM|memROM~12_combout\)) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~97_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (!\ROM|memROM~12_combout\)) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~97_sumout\))) # 
-- (\UNI_LOG|saida[9]~0_combout\ & (!\ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000110000111111000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~93_sumout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \somaConstante|ALT_INV_Add0~97_sumout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[18]~24_combout\);

-- Location: FF_X36_Y4_N37
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: LABCELL_X35_Y6_N51
\somaConstante|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~93_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~98\ ))
-- \somaConstante|Add0~94\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \somaConstante|Add0~98\,
	sumout => \somaConstante|Add0~93_sumout\,
	cout => \somaConstante|Add0~94\);

-- Location: MLABCELL_X34_Y4_N51
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \somaConstante|Add0~93_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \somaConstante|Add0~93_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~93_sumout\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X36_Y4_N54
\MUX_PROXPC|saida_MUX[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[19]~23_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\Add0~89_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( 
-- \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~93_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~93_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~93_sumout\))) # 
-- (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ALT_INV_Add0~89_sumout\,
	datad => \somaConstante|ALT_INV_Add0~93_sumout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[19]~23_combout\);

-- Location: FF_X36_Y4_N55
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[19]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: LABCELL_X35_Y6_N54
\somaConstante|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~105_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~94\ ))
-- \somaConstante|Add0~106\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(20),
	cin => \somaConstante|Add0~94\,
	sumout => \somaConstante|Add0~105_sumout\,
	cout => \somaConstante|Add0~106\);

-- Location: MLABCELL_X34_Y4_N54
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \somaConstante|Add0~105_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~90\ ))
-- \Add0~102\ = CARRY(( \somaConstante|Add0~105_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~105_sumout\,
	cin => \Add0~90\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X36_Y4_N51
\MUX_PROXPC|saida_MUX[20]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[20]~26_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~105_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~101_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~105_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010000010100010001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \somaConstante|ALT_INV_Add0~105_sumout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[20]~26_combout\);

-- Location: FF_X36_Y4_N53
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[20]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: LABCELL_X35_Y6_N57
\somaConstante|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~117_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \somaConstante|Add0~106\ ))
-- \somaConstante|Add0~118\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \somaConstante|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(21),
	cin => \somaConstante|Add0~106\,
	sumout => \somaConstante|Add0~117_sumout\,
	cout => \somaConstante|Add0~118\);

-- Location: MLABCELL_X34_Y4_N57
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \somaConstante|Add0~117_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~102\ ))
-- \Add0~114\ = CARRY(( \somaConstante|Add0~117_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~117_sumout\,
	cin => \Add0~102\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X36_Y4_N18
\MUX_PROXPC|saida_MUX[21]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[21]~29_combout\ = ( \ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\Add0~113_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ULA|ULA8|signal_B~0_combout\)) ) ) ) # ( 
-- !\ULA|ULA31|saida~1_combout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~117_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ULA|ULA8|signal_B~0_combout\))) ) ) ) # ( \ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & (\somaConstante|Add0~117_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ULA|ULA8|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA31|saida~1_combout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~117_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ULA|ULA8|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \somaConstante|ALT_INV_Add0~117_sumout\,
	datac => \ULA|ULA8|ALT_INV_signal_B~0_combout\,
	datad => \ALT_INV_Add0~113_sumout\,
	datae => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[21]~29_combout\);

-- Location: FF_X36_Y4_N19
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: LABCELL_X35_Y5_N30
\somaConstante|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~113_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~118\ ))
-- \somaConstante|Add0~114\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(22),
	cin => \somaConstante|Add0~118\,
	sumout => \somaConstante|Add0~113_sumout\,
	cout => \somaConstante|Add0~114\);

-- Location: MLABCELL_X34_Y3_N0
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~113_sumout\ ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~113_sumout\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~113_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: MLABCELL_X34_Y3_N45
\MUX_PROXPC|saida_MUX[22]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[22]~28_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & (\somaConstante|Add0~113_sumout\)) # (\ULA|ULA31|saida~1_combout\ & ((\Add0~109_sumout\))))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \somaConstante|ALT_INV_Add0~113_sumout\,
	datad => \ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[22]~28_combout\);

-- Location: FF_X34_Y3_N47
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: LABCELL_X35_Y5_N33
\somaConstante|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~109_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~114\ ))
-- \somaConstante|Add0~110\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(23),
	cin => \somaConstante|Add0~114\,
	sumout => \somaConstante|Add0~109_sumout\,
	cout => \somaConstante|Add0~110\);

-- Location: MLABCELL_X34_Y3_N3
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~109_sumout\ ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~109_sumout\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~109_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: MLABCELL_X34_Y3_N48
\MUX_PROXPC|saida_MUX[23]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[23]~27_combout\ = ( \comb~8_combout\ & ( \ULA|ULA31|saida~1_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\Add0~105_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( !\comb~8_combout\ & ( 
-- \ULA|ULA31|saida~1_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~109_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( \comb~8_combout\ & ( !\ULA|ULA31|saida~1_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & ((\somaConstante|Add0~109_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( !\comb~8_combout\ & ( !\ULA|ULA31|saida~1_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~109_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \somaConstante|ALT_INV_Add0~109_sumout\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datae => \ALT_INV_comb~8_combout\,
	dataf => \ULA|ULA31|ALT_INV_saida~1_combout\,
	combout => \MUX_PROXPC|saida_MUX[23]~27_combout\);

-- Location: FF_X34_Y3_N49
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[23]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: LABCELL_X35_Y5_N36
\somaConstante|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~25_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \somaConstante|Add0~110\ ))
-- \somaConstante|Add0~26\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \somaConstante|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(24),
	cin => \somaConstante|Add0~110\,
	sumout => \somaConstante|Add0~25_sumout\,
	cout => \somaConstante|Add0~26\);

-- Location: MLABCELL_X34_Y3_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~25_sumout\ ) + ( \Add0~106\ ))
-- \Add0~22\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~25_sumout\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~25_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~106\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X34_Y3_N42
\MUX_PROXPC|saida_MUX[24]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[24]~6_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & ((\somaConstante|Add0~25_sumout\))) # (\ULA|ULA31|saida~1_combout\ & (\Add0~21_sumout\)))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \somaConstante|ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[24]~6_combout\);

-- Location: FF_X34_Y3_N43
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: LABCELL_X32_Y5_N48
\MUX_HEX|saida_MUX[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[24]~0_combout\ = ( \PC|DOUT\(24) & ( (!\SW[0]~input_o\) # (\ULA|saida[24]~0_combout\) ) ) # ( !\PC|DOUT\(24) & ( (\SW[0]~input_o\ & \ULA|saida[24]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_saida[24]~0_combout\,
	datae => \PC|ALT_INV_DOUT\(24),
	combout => \MUX_HEX|saida_MUX[24]~0_combout\);

-- Location: LABCELL_X35_Y5_N39
\somaConstante|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~29_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \somaConstante|Add0~26\ ))
-- \somaConstante|Add0~30\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \somaConstante|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \somaConstante|Add0~26\,
	sumout => \somaConstante|Add0~29_sumout\,
	cout => \somaConstante|Add0~30\);

-- Location: MLABCELL_X34_Y3_N9
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \somaConstante|Add0~29_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \somaConstante|Add0~29_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~29_sumout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X34_Y3_N39
\MUX_PROXPC|saida_MUX[25]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[25]~7_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((!\ULA|ULA31|saida~1_combout\ & ((\somaConstante|Add0~29_sumout\))) # (\ULA|ULA31|saida~1_combout\ & (\Add0~25_sumout\)))) ) ) # ( !\comb~8_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \somaConstante|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[25]~7_combout\);

-- Location: FF_X34_Y3_N41
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: MLABCELL_X37_Y6_N39
\MUX_HEX|saida_MUX[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[25]~1_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA25|saida~1_combout\ & ( !\ULA|Equal5~0_combout\ ) ) ) # ( !\SW[0]~input_o\ & ( \ULA|ULA25|saida~1_combout\ & ( \PC|DOUT\(25) ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA25|saida~1_combout\ & ( 
-- (!\ULA|Equal5~0_combout\ & \ULA|ULA25|saida~0_combout\) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA25|saida~1_combout\ & ( \PC|DOUT\(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001010101000001111000011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT\(25),
	datad => \ULA|ULA25|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA25|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[25]~1_combout\);

-- Location: LABCELL_X35_Y5_N42
\somaConstante|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~33_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~30\ ))
-- \somaConstante|Add0~34\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \somaConstante|Add0~30\,
	sumout => \somaConstante|Add0~33_sumout\,
	cout => \somaConstante|Add0~34\);

-- Location: MLABCELL_X34_Y3_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \somaConstante|Add0~33_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \somaConstante|Add0~33_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~33_sumout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X34_Y3_N30
\MUX_PROXPC|saida_MUX[26]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[26]~8_combout\ = ( \somaConstante|Add0~33_sumout\ & ( \Add0~29_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\) # (\ROM|memROM~11_combout\) ) ) ) # ( !\somaConstante|Add0~33_sumout\ & ( \Add0~29_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ 
-- & (((\ULA|ULA31|saida~1_combout\ & \comb~8_combout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( \somaConstante|Add0~33_sumout\ & ( !\Add0~29_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((!\ULA|ULA31|saida~1_combout\) # 
-- (!\comb~8_combout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~11_combout\)) ) ) ) # ( !\somaConstante|Add0~33_sumout\ & ( !\Add0~29_sumout\ & ( (\ROM|memROM~11_combout\ & \UNI_LOG|saida[9]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011100010100000101001101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \somaConstante|ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \MUX_PROXPC|saida_MUX[26]~8_combout\);

-- Location: FF_X34_Y3_N31
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[26]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: LABCELL_X39_Y2_N21
\ULA|saida[26]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~1_combout\ = ( \BancoRegistradores|saidaA[26]~24_combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA26|signal_B~0_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[26]~24_combout\ & ( \ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA26|signal_B~0_combout\)) ) ) ) # ( \BancoRegistradores|saidaA[26]~24_combout\ & ( 
-- !\ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA26|signal_B~0_combout\ $ (((!\ULA|ULA25|Carry_Out~combout\) # (\ULA|ULA24|Equal2~0_combout\))))) ) ) ) # ( !\BancoRegistradores|saidaA[26]~24_combout\ & ( !\ULA|ULA24|Equal1~0_combout\ 
-- & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA26|signal_B~0_combout\ $ (\ULA|ULA25|Carry_Out~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000000010101000001000001000000010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ULA|ULA26|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA25|ALT_INV_Carry_Out~combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[26]~24_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|saida[26]~1_combout\);

-- Location: LABCELL_X32_Y5_N42
\MUX_HEX|saida_MUX[26]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[26]~2_combout\ = ( \PC|DOUT\(26) & ( \ULA|saida[26]~1_combout\ ) ) # ( !\PC|DOUT\(26) & ( \ULA|saida[26]~1_combout\ & ( \SW[0]~input_o\ ) ) ) # ( \PC|DOUT\(26) & ( !\ULA|saida[26]~1_combout\ & ( !\SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(26),
	dataf => \ULA|ALT_INV_saida[26]~1_combout\,
	combout => \MUX_HEX|saida_MUX[26]~2_combout\);

-- Location: LABCELL_X35_Y5_N45
\somaConstante|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~37_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~34\ ))
-- \somaConstante|Add0~38\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(27),
	cin => \somaConstante|Add0~34\,
	sumout => \somaConstante|Add0~37_sumout\,
	cout => \somaConstante|Add0~38\);

-- Location: MLABCELL_X34_Y3_N15
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \somaConstante|Add0~37_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \somaConstante|Add0~37_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~37_sumout\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X34_Y3_N36
\MUX_PROXPC|saida_MUX[27]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[27]~9_combout\ = ( \Add0~33_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\ULA|ULA31|saida~1_combout\ & \comb~8_combout\)) # (\somaConstante|Add0~37_sumout\))) ) ) # ( !\Add0~33_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~37_sumout\ & ((!\ULA|ULA31|saida~1_combout\) # (!\comb~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000010101010100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \somaConstante|ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \MUX_PROXPC|saida_MUX[27]~9_combout\);

-- Location: FF_X34_Y3_N38
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[27]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: LABCELL_X32_Y5_N15
\MUX_HEX|saida_MUX[27]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[27]~3_combout\ = ( \ULA|Equal5~0_combout\ & ( \ULA|ULA27|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(27)) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA27|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(27)) ) ) ) # ( 
-- \ULA|Equal5~0_combout\ & ( !\ULA|ULA27|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(27)) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA27|saida~1_combout\ & ( (\PC|DOUT\(27)) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(27),
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA27|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[27]~3_combout\);

-- Location: LABCELL_X35_Y5_N48
\somaConstante|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~41_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \somaConstante|Add0~38\ ))
-- \somaConstante|Add0~42\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \somaConstante|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(28),
	cin => \somaConstante|Add0~38\,
	sumout => \somaConstante|Add0~41_sumout\,
	cout => \somaConstante|Add0~42\);

-- Location: MLABCELL_X34_Y3_N18
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~41_sumout\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \ROM|memROM~6_combout\ ) + ( \somaConstante|Add0~41_sumout\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~41_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X34_Y3_N54
\MUX_PROXPC|saida_MUX[28]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[28]~32_combout\ = ( \Add0~37_sumout\ & ( ((!\ULA|ULA30|saida~1_combout\ & \ULA|ULA29|saida~1_combout\)) # (\somaConstante|Add0~41_sumout\) ) ) # ( !\Add0~37_sumout\ & ( (\somaConstante|Add0~41_sumout\ & 
-- ((!\ULA|ULA29|saida~1_combout\) # (\ULA|ULA30|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~1_combout\,
	datac => \somaConstante|ALT_INV_Add0~41_sumout\,
	datad => \ULA|ULA29|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \MUX_PROXPC|saida_MUX[28]~32_combout\);

-- Location: LABCELL_X35_Y3_N0
\MUX_PROXPC|saida_MUX[28]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[28]~10_combout\ = ( \somaConstante|Add0~41_sumout\ & ( \MUX_PROXPC|saida_MUX[28]~32_combout\ ) ) # ( !\somaConstante|Add0~41_sumout\ & ( \MUX_PROXPC|saida_MUX[28]~32_combout\ & ( (\ULA|ULA31|saida~1_combout\ & 
-- (\ULA|ULA28|saida~2_combout\ & (\comb~7_combout\ & !\ULA|ULA30|saida~0_combout\))) ) ) ) # ( \somaConstante|Add0~41_sumout\ & ( !\MUX_PROXPC|saida_MUX[28]~32_combout\ & ( (!\ULA|ULA31|saida~1_combout\) # ((!\ULA|ULA28|saida~2_combout\) # 
-- ((!\comb~7_combout\) # (\ULA|ULA30|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datac => \ALT_INV_comb~7_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datae => \somaConstante|ALT_INV_Add0~41_sumout\,
	dataf => \MUX_PROXPC|ALT_INV_saida_MUX[28]~32_combout\,
	combout => \MUX_PROXPC|saida_MUX[28]~10_combout\);

-- Location: FF_X35_Y3_N1
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[28]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: MLABCELL_X37_Y6_N42
\MUX_HEX|saida_MUX[28]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[28]~4_combout\ = ( \ULA|Equal5~0_combout\ & ( \ULA|ULA24|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(28)) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA24|saida~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(28))))) # 
-- (\SW[0]~input_o\ & (((\ULA|ULA28|saida~0_combout\)) # (\ULA|ULA28|soma~combout\))) ) ) ) # ( \ULA|Equal5~0_combout\ & ( !\ULA|ULA24|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(28)) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA24|saida~0_combout\ 
-- & ( (!\SW[0]~input_o\ & (\PC|DOUT\(28))) # (\SW[0]~input_o\ & ((\ULA|ULA28|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000000110000011101001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_soma~combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(28),
	datad => \ULA|ULA28|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[28]~4_combout\);

-- Location: LABCELL_X35_Y5_N51
\somaConstante|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~45_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~42\ ))
-- \somaConstante|Add0~46\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \somaConstante|Add0~42\,
	sumout => \somaConstante|Add0~45_sumout\,
	cout => \somaConstante|Add0~46\);

-- Location: MLABCELL_X34_Y3_N21
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \somaConstante|Add0~45_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \somaConstante|Add0~45_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~45_sumout\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: MLABCELL_X37_Y3_N48
\MUX_PROXPC|saida_MUX[29]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[29]~33_combout\ = ( \Add0~41_sumout\ & ( ((\ULA|ULA29|saida~1_combout\ & !\ULA|ULA30|saida~1_combout\)) # (\somaConstante|Add0~45_sumout\) ) ) # ( !\Add0~41_sumout\ & ( (\somaConstante|Add0~45_sumout\ & 
-- ((!\ULA|ULA29|saida~1_combout\) # (\ULA|ULA30|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \somaConstante|ALT_INV_Add0~45_sumout\,
	datac => \ULA|ULA29|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \MUX_PROXPC|saida_MUX[29]~33_combout\);

-- Location: MLABCELL_X37_Y3_N57
\MUX_PROXPC|saida_MUX[29]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[29]~11_combout\ = ( \somaConstante|Add0~45_sumout\ & ( \MUX_PROXPC|saida_MUX[29]~33_combout\ ) ) # ( !\somaConstante|Add0~45_sumout\ & ( \MUX_PROXPC|saida_MUX[29]~33_combout\ & ( (\ULA|ULA28|saida~2_combout\ & 
-- (\ULA|ULA31|saida~1_combout\ & (!\ULA|ULA30|saida~0_combout\ & \comb~7_combout\))) ) ) ) # ( \somaConstante|Add0~45_sumout\ & ( !\MUX_PROXPC|saida_MUX[29]~33_combout\ & ( (!\ULA|ULA28|saida~2_combout\) # ((!\ULA|ULA31|saida~1_combout\) # 
-- ((!\comb~7_combout\) # (\ULA|ULA30|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_comb~7_combout\,
	datae => \somaConstante|ALT_INV_Add0~45_sumout\,
	dataf => \MUX_PROXPC|ALT_INV_saida_MUX[29]~33_combout\,
	combout => \MUX_PROXPC|saida_MUX[29]~11_combout\);

-- Location: FF_X37_Y3_N58
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: LABCELL_X32_Y5_N57
\ULA|saida[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~2_combout\ = ( \ULA|ULA28|AxBandC~combout\ & ( \ULA|ULA28|saida~1_combout\ & ( (!\ULA|Equal5~0_combout\ & (((!\ULA|ULA29|AxorB~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA29|saida~0_combout\))) ) ) ) # ( !\ULA|ULA28|AxBandC~combout\ 
-- & ( \ULA|ULA28|saida~1_combout\ & ( (!\ULA|Equal5~0_combout\ & (((!\ULA|ULA29|AxorB~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA29|saida~0_combout\))) ) ) ) # ( \ULA|ULA28|AxBandC~combout\ & ( !\ULA|ULA28|saida~1_combout\ & ( 
-- (!\ULA|Equal5~0_combout\ & (((!\ULA|ULA29|AxorB~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA29|saida~0_combout\))) ) ) ) # ( !\ULA|ULA28|AxBandC~combout\ & ( !\ULA|ULA28|saida~1_combout\ & ( (!\ULA|Equal5~0_combout\ & (((\ULA|ULA29|AxorB~combout\ 
-- & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA29|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010000010101000101000001010100010100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA29|ALT_INV_AxorB~combout\,
	datac => \ULA|ULA29|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA28|ALT_INV_AxBandC~combout\,
	dataf => \ULA|ULA28|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[29]~2_combout\);

-- Location: LABCELL_X32_Y5_N39
\MUX_HEX|saida_MUX[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[29]~5_combout\ = ( \ULA|saida[29]~2_combout\ & ( (\SW[0]~input_o\) # (\PC|DOUT\(29)) ) ) # ( !\ULA|saida[29]~2_combout\ & ( (\PC|DOUT\(29) & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(29),
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[29]~2_combout\,
	combout => \MUX_HEX|saida_MUX[29]~5_combout\);

-- Location: LABCELL_X35_Y5_N54
\somaConstante|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~49_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~46\ ))
-- \somaConstante|Add0~50\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(30),
	cin => \somaConstante|Add0~46\,
	sumout => \somaConstante|Add0~49_sumout\,
	cout => \somaConstante|Add0~50\);

-- Location: MLABCELL_X34_Y3_N24
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \somaConstante|Add0~49_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \somaConstante|Add0~49_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~49_sumout\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X35_Y3_N51
\MUX_PROXPC|saida_MUX[30]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[30]~34_combout\ = ( \Add0~45_sumout\ & ( ((!\ULA|ULA30|saida~1_combout\ & \ULA|ULA29|saida~1_combout\)) # (\somaConstante|Add0~49_sumout\) ) ) # ( !\Add0~45_sumout\ & ( (\somaConstante|Add0~49_sumout\ & 
-- ((!\ULA|ULA29|saida~1_combout\) # (\ULA|ULA30|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~49_sumout\,
	datac => \ULA|ULA30|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA29|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \MUX_PROXPC|saida_MUX[30]~34_combout\);

-- Location: LABCELL_X35_Y3_N3
\MUX_PROXPC|saida_MUX[30]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[30]~12_combout\ = ( \somaConstante|Add0~49_sumout\ & ( \MUX_PROXPC|saida_MUX[30]~34_combout\ ) ) # ( !\somaConstante|Add0~49_sumout\ & ( \MUX_PROXPC|saida_MUX[30]~34_combout\ & ( (\ULA|ULA31|saida~1_combout\ & 
-- (\ULA|ULA28|saida~2_combout\ & (!\ULA|ULA30|saida~0_combout\ & \comb~7_combout\))) ) ) ) # ( \somaConstante|Add0~49_sumout\ & ( !\MUX_PROXPC|saida_MUX[30]~34_combout\ & ( (!\ULA|ULA31|saida~1_combout\) # ((!\ULA|ULA28|saida~2_combout\) # 
-- ((!\comb~7_combout\) # (\ULA|ULA30|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_comb~7_combout\,
	datae => \somaConstante|ALT_INV_Add0~49_sumout\,
	dataf => \MUX_PROXPC|ALT_INV_saida_MUX[30]~34_combout\,
	combout => \MUX_PROXPC|saida_MUX[30]~12_combout\);

-- Location: FF_X35_Y3_N5
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[30]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: LABCELL_X35_Y4_N30
\MUX_HEX|saida_MUX[30]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[30]~6_combout\ = ( \ULA|ULA30|saida~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(30))) # (\SW[0]~input_o\ & ((!\ULA|Equal5~0_combout\))) ) ) # ( !\ULA|ULA30|saida~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(30))) # (\SW[0]~input_o\ & 
-- (((!\ULA|Equal5~0_combout\ & \ULA|ULA30|saida~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001001110010011100100111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(30),
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA30|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[30]~6_combout\);

-- Location: LABCELL_X35_Y5_N57
\somaConstante|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~53_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \somaConstante|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(31),
	cin => \somaConstante|Add0~50\,
	sumout => \somaConstante|Add0~53_sumout\);

-- Location: MLABCELL_X34_Y3_N27
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \somaConstante|Add0~53_sumout\ ) + ( \ROM|memROM~6_combout\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~53_sumout\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\);

-- Location: MLABCELL_X34_Y3_N57
\MUX_PROXPC|saida_MUX[31]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[31]~35_combout\ = ( \Add0~49_sumout\ & ( ((!\ULA|ULA30|saida~1_combout\ & \ULA|ULA29|saida~1_combout\)) # (\somaConstante|Add0~53_sumout\) ) ) # ( !\Add0~49_sumout\ & ( (\somaConstante|Add0~53_sumout\ & 
-- ((!\ULA|ULA29|saida~1_combout\) # (\ULA|ULA30|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~1_combout\,
	datac => \somaConstante|ALT_INV_Add0~53_sumout\,
	datad => \ULA|ULA29|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \MUX_PROXPC|saida_MUX[31]~35_combout\);

-- Location: MLABCELL_X37_Y3_N54
\MUX_PROXPC|saida_MUX[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[31]~13_combout\ = ( \somaConstante|Add0~53_sumout\ & ( \MUX_PROXPC|saida_MUX[31]~35_combout\ ) ) # ( !\somaConstante|Add0~53_sumout\ & ( \MUX_PROXPC|saida_MUX[31]~35_combout\ & ( (\ULA|ULA28|saida~2_combout\ & 
-- (\ULA|ULA31|saida~1_combout\ & (\comb~7_combout\ & !\ULA|ULA30|saida~0_combout\))) ) ) ) # ( \somaConstante|Add0~53_sumout\ & ( !\MUX_PROXPC|saida_MUX[31]~35_combout\ & ( (!\ULA|ULA28|saida~2_combout\) # ((!\ULA|ULA31|saida~1_combout\) # 
-- ((!\comb~7_combout\) # (\ULA|ULA30|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~7_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datae => \somaConstante|ALT_INV_Add0~53_sumout\,
	dataf => \MUX_PROXPC|ALT_INV_saida_MUX[31]~35_combout\,
	combout => \MUX_PROXPC|saida_MUX[31]~13_combout\);

-- Location: FF_X37_Y3_N56
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[31]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: LABCELL_X35_Y3_N33
\ULA|saida[31]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~3_combout\ = ( \ULA|ULA31|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA31|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ & ( (\ULA|ULA24|saida~0_combout\ & (!\ULA|ULA31|soma~0_combout\ $ (((!\ULA|ULA30|saida~2_combout\ & 
-- !\ULA|ULA30|AxBandC~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA30|ALT_INV_AxBandC~combout\,
	datad => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datae => \ULA|ULA31|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[31]~3_combout\);

-- Location: LABCELL_X32_Y5_N9
\MUX_HEX|saida_MUX[31]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[31]~7_combout\ = ( \ULA|saida[31]~3_combout\ & ( (\SW[0]~input_o\) # (\PC|DOUT\(31)) ) ) # ( !\ULA|saida[31]~3_combout\ & ( (\PC|DOUT\(31) & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(31),
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ALT_INV_saida[31]~3_combout\,
	combout => \MUX_HEX|saida_MUX[31]~7_combout\);

-- Location: MLABCELL_X42_Y5_N24
\MUX_HEX|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[2]~8_combout\ = ( \ULA|Equal5~0_combout\ & ( \PC|DOUT\(2) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|Equal5~0_combout\ & ( \PC|DOUT\(2) & ( ((!\SW[0]~input_o\) # ((!\ULA|ULA24|Equal2~0_combout\ & !\ULA|ULA2|saida~1_combout\))) # 
-- (\ULA|ULA2|saida~0_combout\) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( !\PC|DOUT\(2) & ( (\SW[0]~input_o\ & (((!\ULA|ULA24|Equal2~0_combout\ & !\ULA|ULA2|saida~1_combout\)) # (\ULA|ULA2|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000011000000000000000011111011111100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA2|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA2|ALT_INV_saida~1_combout\,
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MUX_HEX|saida_MUX[2]~8_combout\);

-- Location: LABCELL_X44_Y4_N0
\ULA|saida[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~15_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA3|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA3|ALT_INV_saida~1_combout\,
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[3]~15_combout\);

-- Location: LABCELL_X43_Y4_N51
\ULA|saida[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~16_combout\ = ( \ULA|ULA1|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[1]~16_combout\);

-- Location: LABCELL_X43_Y4_N57
\ULA|saida[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~14_combout\ = ( \ULA|saida[0]~4_combout\ ) # ( !\ULA|saida[0]~4_combout\ & ( \ULA|saida[0]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~13_combout\,
	dataf => \ULA|ALT_INV_saida[0]~4_combout\,
	combout => \ULA|saida[0]~14_combout\);

-- Location: LABCELL_X43_Y4_N18
\DISP_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[0]~0_combout\ = ( \ULA|saida[0]~14_combout\ & ( \PC|DOUT\(3) & ( (\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[2]~8_combout\ & (!\ULA|saida[3]~15_combout\ $ (\ULA|saida[1]~16_combout\))) # (\MUX_HEX|saida_MUX[2]~8_combout\ & 
-- (\ULA|saida[3]~15_combout\ & !\ULA|saida[1]~16_combout\)))) ) ) ) # ( !\ULA|saida[0]~14_combout\ & ( \PC|DOUT\(3) & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\ULA|saida[3]~15_combout\ & (!\ULA|saida[1]~16_combout\ & \SW[0]~input_o\))) ) ) ) # ( 
-- \ULA|saida[0]~14_combout\ & ( !\PC|DOUT\(3) & ( (!\MUX_HEX|saida_MUX[2]~8_combout\ & (\SW[0]~input_o\ & (!\ULA|saida[3]~15_combout\ $ (\ULA|saida[1]~16_combout\)))) # (\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\SW[0]~input_o\) # ((\ULA|saida[3]~15_combout\ & 
-- !\ULA|saida[1]~16_combout\)))) ) ) ) # ( !\ULA|saida[0]~14_combout\ & ( !\PC|DOUT\(3) & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\SW[0]~input_o\) # ((!\ULA|saida[3]~15_combout\ & !\ULA|saida[1]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101011001001000000000010000000000000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \ULA|ALT_INV_saida[3]~15_combout\,
	datac => \ULA|ALT_INV_saida[1]~16_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[0]~14_combout\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \DISP_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y4_N3
\MUX_HEX|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[3]~9_combout\ = ( \ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(3)) ) ) # ( !\ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(3)))) # (\SW[0]~input_o\ & (\ULA|ULA3|saida~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA3|ALT_INV_saida~1_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \MUX_HEX|saida_MUX[3]~9_combout\);

-- Location: LABCELL_X43_Y4_N30
\DISP_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[1]~1_combout\ = ( \ULA|saida[0]~13_combout\ & ( \ULA|saida[1]~16_combout\ & ( (\MUX_HEX|saida_MUX[3]~9_combout\ & ((\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[2]~8_combout\))) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( 
-- \ULA|saida[1]~16_combout\ & ( (!\SW[0]~input_o\ & (\MUX_HEX|saida_MUX[2]~8_combout\ & (\MUX_HEX|saida_MUX[3]~9_combout\))) # (\SW[0]~input_o\ & ((!\ULA|saida[0]~4_combout\ & (\MUX_HEX|saida_MUX[2]~8_combout\)) # (\ULA|saida[0]~4_combout\ & 
-- ((\MUX_HEX|saida_MUX[3]~9_combout\))))) ) ) ) # ( \ULA|saida[0]~13_combout\ & ( !\ULA|saida[1]~16_combout\ & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\SW[0]~input_o\ $ (!\MUX_HEX|saida_MUX[3]~9_combout\))) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( 
-- !\ULA|saida[1]~16_combout\ & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\MUX_HEX|saida_MUX[3]~9_combout\ $ (((!\SW[0]~input_o\) # (!\ULA|saida[0]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010100000101000001010000010101000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datad => \ULA|ALT_INV_saida[0]~4_combout\,
	datae => \ULA|ALT_INV_saida[0]~13_combout\,
	dataf => \ULA|ALT_INV_saida[1]~16_combout\,
	combout => \DISP_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y4_N36
\DISP_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[2]~2_combout\ = ( \ULA|saida[0]~13_combout\ & ( \ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\) # (!\MUX_HEX|saida_MUX[3]~9_combout\) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( \ULA|saida[1]~16_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\SW[0]~input_o\) # ((\ULA|saida[0]~4_combout\) # (\MUX_HEX|saida_MUX[3]~9_combout\)))) # (\MUX_HEX|saida_MUX[2]~8_combout\ & (((!\MUX_HEX|saida_MUX[3]~9_combout\)))) ) ) ) # ( \ULA|saida[0]~13_combout\ & ( 
-- !\ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\) # ((!\MUX_HEX|saida_MUX[3]~9_combout\) # (\SW[0]~input_o\)) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( !\ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\) # 
-- ((!\MUX_HEX|saida_MUX[3]~9_combout\) # ((\SW[0]~input_o\ & \ULA|saida[0]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111011111110111111101111011010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datad => \ULA|ALT_INV_saida[0]~4_combout\,
	datae => \ULA|ALT_INV_saida[0]~13_combout\,
	dataf => \ULA|ALT_INV_saida[1]~16_combout\,
	combout => \DISP_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y4_N54
\DISP_HEX0|rascSaida7seg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[1]~3_combout\ = ( !\ULA|Equal5~0_combout\ & ( (\ULA|ULA1|saida~0_combout\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA1|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \DISP_HEX0|rascSaida7seg[1]~3_combout\);

-- Location: LABCELL_X43_Y4_N42
\DISP_HEX0|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[3]~4_combout\ = ( \DISP_HEX0|rascSaida7seg[1]~3_combout\ & ( \MUX_HEX|saida_MUX[2]~8_combout\ & ( (\SW[0]~input_o\ & ((\ULA|saida[0]~4_combout\) # (\ULA|saida[0]~13_combout\))) ) ) ) # ( !\DISP_HEX0|rascSaida7seg[1]~3_combout\ & ( 
-- \MUX_HEX|saida_MUX[2]~8_combout\ & ( (!\MUX_HEX|saida_MUX[3]~9_combout\ & ((!\SW[0]~input_o\) # ((!\ULA|saida[0]~13_combout\ & !\ULA|saida[0]~4_combout\)))) ) ) ) # ( \DISP_HEX0|rascSaida7seg[1]~3_combout\ & ( !\MUX_HEX|saida_MUX[2]~8_combout\ & ( 
-- (\MUX_HEX|saida_MUX[3]~9_combout\ & ((!\SW[0]~input_o\) # ((!\ULA|saida[0]~13_combout\ & !\ULA|saida[0]~4_combout\)))) ) ) ) # ( !\DISP_HEX0|rascSaida7seg[1]~3_combout\ & ( !\MUX_HEX|saida_MUX[2]~8_combout\ & ( (\SW[0]~input_o\ & 
-- (!\MUX_HEX|saida_MUX[3]~9_combout\ & ((\ULA|saida[0]~4_combout\) # (\ULA|saida[0]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000011100000110011100000110000000001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~13_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datad => \ULA|ALT_INV_saida[0]~4_combout\,
	datae => \DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	combout => \DISP_HEX0|rascSaida7seg[3]~4_combout\);

-- Location: MLABCELL_X42_Y5_N42
\ULA|saida[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~17_combout\ = ( !\ULA|ULA2|saida~2_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA2|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[2]~17_combout\);

-- Location: LABCELL_X43_Y4_N24
\DISP_HEX0|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[4]~5_combout\ = ( !\MUX_HEX|saida_MUX[3]~9_combout\ & ( \ULA|saida[2]~17_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(2))))) # (\SW[0]~input_o\ & ((!\ULA|saida[1]~16_combout\) # ((\ULA|saida[0]~14_combout\)))) ) ) ) # ( 
-- \MUX_HEX|saida_MUX[3]~9_combout\ & ( !\ULA|saida[2]~17_combout\ & ( (!\ULA|saida[1]~16_combout\ & (\SW[0]~input_o\ & \ULA|saida[0]~14_combout\)) ) ) ) # ( !\MUX_HEX|saida_MUX[3]~9_combout\ & ( !\ULA|saida[2]~17_combout\ & ( (!\SW[0]~input_o\ & 
-- (\PC|DOUT\(2))) # (\SW[0]~input_o\ & ((\ULA|saida[0]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000000000010001000101110001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~16_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ULA|ALT_INV_saida[0]~14_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	dataf => \ULA|ALT_INV_saida[2]~17_combout\,
	combout => \DISP_HEX0|rascSaida7seg[4]~5_combout\);

-- Location: LABCELL_X43_Y4_N0
\DISP_HEX0|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[5]~6_combout\ = ( \ULA|saida[3]~15_combout\ & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & (\SW[0]~input_o\ & (!\ULA|saida[1]~16_combout\ & \ULA|saida[0]~14_combout\))) ) ) # ( !\ULA|saida[3]~15_combout\ & ( (\SW[0]~input_o\ & 
-- ((!\MUX_HEX|saida_MUX[2]~8_combout\ & ((\ULA|saida[0]~14_combout\) # (\ULA|saida[1]~16_combout\))) # (\MUX_HEX|saida_MUX[2]~8_combout\ & (\ULA|saida[1]~16_combout\ & \ULA|saida[0]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100011000000100010001100000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_saida[1]~16_combout\,
	datad => \ULA|ALT_INV_saida[0]~14_combout\,
	dataf => \ULA|ALT_INV_saida[3]~15_combout\,
	combout => \DISP_HEX0|rascSaida7seg[5]~6_combout\);

-- Location: LABCELL_X43_Y4_N6
\DISP_HEX0|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[6]~7_combout\ = ( \ULA|saida[0]~13_combout\ & ( \ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\ & (!\SW[0]~input_o\ & !\MUX_HEX|saida_MUX[3]~9_combout\)) # (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\SW[0]~input_o\ $ 
-- (!\MUX_HEX|saida_MUX[3]~9_combout\))) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( \ULA|saida[1]~16_combout\ & ( (!\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[2]~8_combout\ $ ((\MUX_HEX|saida_MUX[3]~9_combout\)))) # (\SW[0]~input_o\ & 
-- (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\MUX_HEX|saida_MUX[3]~9_combout\ & \ULA|saida[0]~4_combout\))) ) ) ) # ( \ULA|saida[0]~13_combout\ & ( !\ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\MUX_HEX|saida_MUX[3]~9_combout\))) # 
-- (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\SW[0]~input_o\ & \MUX_HEX|saida_MUX[3]~9_combout\)) ) ) ) # ( !\ULA|saida[0]~13_combout\ & ( !\ULA|saida[1]~16_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\ & (((!\MUX_HEX|saida_MUX[3]~9_combout\)))) # 
-- (\MUX_HEX|saida_MUX[2]~8_combout\ & (\MUX_HEX|saida_MUX[3]~9_combout\ & ((!\SW[0]~input_o\) # (!\ULA|saida[0]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100100101001001010010010000100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datad => \ULA|ALT_INV_saida[0]~4_combout\,
	datae => \ULA|ALT_INV_saida[0]~13_combout\,
	dataf => \ULA|ALT_INV_saida[1]~16_combout\,
	combout => \DISP_HEX0|rascSaida7seg[6]~7_combout\);

-- Location: MLABCELL_X42_Y5_N39
\ULA|saida[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~18_combout\ = (!\ULA|ULA4|saida~0_combout\) # (\ULA|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[4]~18_combout\);

-- Location: MLABCELL_X42_Y5_N33
\MUX_HEX|saida_MUX[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[7]~10_combout\ = ( \PC|DOUT\(7) & ( \ULA|ULA7|saida~0_combout\ & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & ((!\ULA|ULA7|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\)))) ) ) ) # ( !\PC|DOUT\(7) & ( 
-- \ULA|ULA7|saida~0_combout\ & ( (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA7|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\)))) ) ) ) # ( \PC|DOUT\(7) & ( !\ULA|ULA7|saida~0_combout\ & ( (!\SW[0]~input_o\) # ((!\ULA|ULA24|Equal2~0_combout\ 
-- & (!\ULA|Equal5~0_combout\ & !\ULA|ULA7|saida~1_combout\))) ) ) ) # ( !\PC|DOUT\(7) & ( !\ULA|ULA7|saida~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & !\ULA|ULA7|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111011001100110000110000000100001111110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA7|ALT_INV_saida~1_combout\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ULA|ULA7|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[7]~10_combout\);

-- Location: LABCELL_X41_Y5_N24
\MUX_HEX|saida_MUX[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[6]~11_combout\ = ( \PC|DOUT[6]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((\ULA|ULA6|saida~0_combout\ & !\ULA|Equal5~0_combout\)) ) ) # ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (\SW[0]~input_o\ & (\ULA|ULA6|saida~0_combout\ & 
-- !\ULA|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA6|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \MUX_HEX|saida_MUX[6]~11_combout\);

-- Location: MLABCELL_X42_Y5_N48
\MUX_HEX|saida_MUX[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[5]~12_combout\ = ( \ULA|Equal5~0_combout\ & ( \PC|DOUT\(5) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|Equal5~0_combout\ & ( \PC|DOUT\(5) & ( (!\SW[0]~input_o\) # (\ULA|ULA5|saida~0_combout\) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( !\PC|DOUT\(5) 
-- & ( (\SW[0]~input_o\ & \ULA|ULA5|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000010101010111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA5|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MUX_HEX|saida_MUX[5]~12_combout\);

-- Location: MLABCELL_X42_Y5_N6
\DISP_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[0]~0_combout\ = ( \SW[0]~input_o\ & ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\ULA|saida[4]~18_combout\ & (\MUX_HEX|saida_MUX[7]~10_combout\ & !\MUX_HEX|saida_MUX[6]~11_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- \MUX_HEX|saida_MUX[5]~12_combout\ & ( (\PC|DOUT\(4) & (\MUX_HEX|saida_MUX[7]~10_combout\ & !\MUX_HEX|saida_MUX[6]~11_combout\)) ) ) ) # ( \SW[0]~input_o\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\ULA|saida[4]~18_combout\ & 
-- (!\MUX_HEX|saida_MUX[7]~10_combout\ $ (\MUX_HEX|saida_MUX[6]~11_combout\))) # (\ULA|saida[4]~18_combout\ & (!\MUX_HEX|saida_MUX[7]~10_combout\ & \MUX_HEX|saida_MUX[6]~11_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( 
-- (!\PC|DOUT\(4) & (!\MUX_HEX|saida_MUX[7]~10_combout\ & \MUX_HEX|saida_MUX[6]~11_combout\)) # (\PC|DOUT\(4) & (!\MUX_HEX|saida_MUX[7]~10_combout\ $ (\MUX_HEX|saida_MUX[6]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101110000000011110000000101000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \ULA|ALT_INV_saida[4]~18_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y5_N36
\MUX_HEX|saida_MUX[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[4]~13_combout\ = ( \PC|DOUT\(4) & ( (!\SW[0]~input_o\) # ((\ULA|ULA4|saida~0_combout\ & !\ULA|Equal5~0_combout\)) ) ) # ( !\PC|DOUT\(4) & ( (\ULA|ULA4|saida~0_combout\ & (!\ULA|Equal5~0_combout\ & \SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \MUX_HEX|saida_MUX[4]~13_combout\);

-- Location: MLABCELL_X42_Y5_N15
\DISP_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\MUX_HEX|saida_MUX[4]~13_combout\ & ((\MUX_HEX|saida_MUX[6]~11_combout\))) # (\MUX_HEX|saida_MUX[4]~13_combout\ & (\MUX_HEX|saida_MUX[7]~10_combout\)) ) ) # ( 
-- !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (\MUX_HEX|saida_MUX[6]~11_combout\ & (!\MUX_HEX|saida_MUX[7]~10_combout\ $ (!\MUX_HEX|saida_MUX[4]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y5_N18
\DISP_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[7]~10_combout\ & ( (\MUX_HEX|saida_MUX[6]~11_combout\ & ((!\MUX_HEX|saida_MUX[4]~13_combout\) # (\MUX_HEX|saida_MUX[5]~12_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[7]~10_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[6]~11_combout\ & (\MUX_HEX|saida_MUX[5]~12_combout\ & !\MUX_HEX|saida_MUX[4]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	combout => \DISP_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y5_N21
\DISP_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\MUX_HEX|saida_MUX[6]~11_combout\ & (\MUX_HEX|saida_MUX[7]~10_combout\ & !\MUX_HEX|saida_MUX[4]~13_combout\)) # (\MUX_HEX|saida_MUX[6]~11_combout\ & 
-- ((\MUX_HEX|saida_MUX[4]~13_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\MUX_HEX|saida_MUX[7]~10_combout\ & (!\MUX_HEX|saida_MUX[6]~11_combout\ $ (!\MUX_HEX|saida_MUX[4]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y5_N0
\DISP_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[4]~4_combout\ = ( \SW[0]~input_o\ & ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\ULA|saida[4]~18_combout\ & !\MUX_HEX|saida_MUX[7]~10_combout\) ) ) ) # ( !\SW[0]~input_o\ & ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (\PC|DOUT\(4) & 
-- !\MUX_HEX|saida_MUX[7]~10_combout\) ) ) ) # ( \SW[0]~input_o\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\MUX_HEX|saida_MUX[6]~11_combout\ & (!\ULA|saida[4]~18_combout\)) # (\MUX_HEX|saida_MUX[6]~11_combout\ & ((!\MUX_HEX|saida_MUX[7]~10_combout\))) ) ) 
-- ) # ( !\SW[0]~input_o\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\MUX_HEX|saida_MUX[6]~11_combout\ & (\PC|DOUT\(4))) # (\MUX_HEX|saida_MUX[6]~11_combout\ & ((!\MUX_HEX|saida_MUX[7]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000110011001111000001010000010100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \ULA|ALT_INV_saida[4]~18_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y4_N33
\ULA|saida[7]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~19_combout\ = ( \ULA|ULA7|saida~2_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[7]~19_combout\);

-- Location: MLABCELL_X42_Y5_N54
\DISP_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[5]~5_combout\ = ( \ULA|saida[7]~19_combout\ & ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\PC|DOUT\(7) & (!\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[6]~11_combout\) # (\MUX_HEX|saida_MUX[4]~13_combout\)))) ) ) ) # ( 
-- !\ULA|saida[7]~19_combout\ & ( \MUX_HEX|saida_MUX[5]~12_combout\ & ( (!\PC|DOUT\(7) & ((!\MUX_HEX|saida_MUX[6]~11_combout\) # ((\MUX_HEX|saida_MUX[4]~13_combout\)))) # (\PC|DOUT\(7) & (\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[6]~11_combout\) # 
-- (\MUX_HEX|saida_MUX[4]~13_combout\)))) ) ) ) # ( \ULA|saida[7]~19_combout\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (\MUX_HEX|saida_MUX[4]~13_combout\ & (!\MUX_HEX|saida_MUX[6]~11_combout\ $ (((\SW[0]~input_o\) # (\PC|DOUT\(7)))))) ) ) ) # ( 
-- !\ULA|saida[7]~19_combout\ & ( !\MUX_HEX|saida_MUX[5]~12_combout\ & ( (\MUX_HEX|saida_MUX[4]~13_combout\ & (!\MUX_HEX|saida_MUX[6]~11_combout\ $ (((\PC|DOUT\(7) & !\SW[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001100000010010000001110001010110011111000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[7]~19_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y5_N12
\DISP_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX|saida_MUX[4]~13_combout\ & (!\MUX_HEX|saida_MUX[5]~12_combout\ & (!\MUX_HEX|saida_MUX[7]~10_combout\ $ (\MUX_HEX|saida_MUX[6]~11_combout\)))) # (\MUX_HEX|saida_MUX[4]~13_combout\ & 
-- (!\MUX_HEX|saida_MUX[7]~10_combout\ & (!\MUX_HEX|saida_MUX[6]~11_combout\ $ (\MUX_HEX|saida_MUX[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~10_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[6]~11_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[5]~12_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[4]~13_combout\,
	combout => \DISP_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y6_N15
\ULA|saida[8]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~20_combout\ = ( \ULA|Equal5~0_combout\ ) # ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA8|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[8]~20_combout\);

-- Location: LABCELL_X36_Y6_N18
\MUX_HEX|saida_MUX[11]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[11]~14_combout\ = ( \PC|DOUT\(11) & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & \ULA|ULA11|saida~0_combout\)) ) ) # ( !\PC|DOUT\(11) & ( (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & \ULA|ULA11|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA11|ALT_INV_saida~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(11),
	combout => \MUX_HEX|saida_MUX[11]~14_combout\);

-- Location: LABCELL_X36_Y6_N36
\MUX_HEX|saida_MUX[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[9]~16_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(9))))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & (\ULA|ULA9|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datad => \PC|ALT_INV_DOUT\(9),
	combout => \MUX_HEX|saida_MUX[9]~16_combout\);

-- Location: LABCELL_X36_Y6_N39
\MUX_HEX|saida_MUX[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[10]~15_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(10)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA10|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT\(10),
	dataf => \ULA|ULA10|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[10]~15_combout\);

-- Location: LABCELL_X36_Y6_N42
\DISP_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX|saida_MUX[9]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~15_combout\ & ( !\MUX_HEX|saida_MUX[11]~14_combout\ $ (((!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & ((!\ULA|saida[8]~20_combout\))))) ) ) 
-- ) # ( \MUX_HEX|saida_MUX[9]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (\MUX_HEX|saida_MUX[11]~14_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & ((!\ULA|saida[8]~20_combout\))))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[9]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[11]~14_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & ((!\ULA|saida[8]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011000000000001010000110010100101001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ULA|ALT_INV_saida[8]~20_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	combout => \DISP_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X36_Y6_N21
\MUX_HEX|saida_MUX[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[8]~17_combout\ = ( \ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ULA|ULA8|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[8]~17_combout\);

-- Location: LABCELL_X36_Y6_N3
\DISP_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[11]~14_combout\ & ( (!\MUX_HEX|saida_MUX[8]~17_combout\ & (\MUX_HEX|saida_MUX[10]~15_combout\)) # (\MUX_HEX|saida_MUX[8]~17_combout\ & ((\MUX_HEX|saida_MUX[9]~16_combout\))) ) ) # ( 
-- !\MUX_HEX|saida_MUX[11]~14_combout\ & ( (\MUX_HEX|saida_MUX[10]~15_combout\ & (!\MUX_HEX|saida_MUX[8]~17_combout\ $ (!\MUX_HEX|saida_MUX[9]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	combout => \DISP_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y6_N33
\DISP_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[11]~14_combout\ & ( (\MUX_HEX|saida_MUX[10]~15_combout\ & ((!\MUX_HEX|saida_MUX[8]~17_combout\) # (\MUX_HEX|saida_MUX[9]~16_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[11]~14_combout\ & ( 
-- (\MUX_HEX|saida_MUX[9]~16_combout\ & (!\MUX_HEX|saida_MUX[10]~15_combout\ & !\MUX_HEX|saida_MUX[8]~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	combout => \DISP_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y6_N0
\DISP_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[11]~14_combout\ & ( (\MUX_HEX|saida_MUX[9]~16_combout\ & (!\MUX_HEX|saida_MUX[8]~17_combout\ $ (\MUX_HEX|saida_MUX[10]~15_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[11]~14_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[8]~17_combout\ & (\MUX_HEX|saida_MUX[10]~15_combout\ & !\MUX_HEX|saida_MUX[9]~16_combout\)) # (\MUX_HEX|saida_MUX[8]~17_combout\ & (!\MUX_HEX|saida_MUX[10]~15_combout\ $ (\MUX_HEX|saida_MUX[9]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	combout => \DISP_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y6_N48
\DISP_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX|saida_MUX[9]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[11]~14_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & ((!\ULA|saida[8]~20_combout\))))) ) ) 
-- ) # ( !\MUX_HEX|saida_MUX[9]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~15_combout\ & ( !\MUX_HEX|saida_MUX[11]~14_combout\ ) ) ) # ( \MUX_HEX|saida_MUX[9]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[11]~14_combout\ & 
-- ((!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & ((!\ULA|saida[8]~20_combout\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[9]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(8))) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[8]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010100001100000011110000111100000101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ULA|ALT_INV_saida[8]~20_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	combout => \DISP_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X36_Y6_N30
\ULA|saida[11]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~21_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA11|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA11|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[11]~21_combout\);

-- Location: LABCELL_X36_Y6_N54
\DISP_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX|saida_MUX[8]~17_combout\ & ( \PC|DOUT\(11) & ( (!\MUX_HEX|saida_MUX[9]~16_combout\ & (!\MUX_HEX|saida_MUX[10]~15_combout\ $ (((!\SW[0]~input_o\) # (\ULA|saida[11]~21_combout\))))) # 
-- (\MUX_HEX|saida_MUX[9]~16_combout\ & (!\ULA|saida[11]~21_combout\ & (\SW[0]~input_o\))) ) ) ) # ( !\MUX_HEX|saida_MUX[8]~17_combout\ & ( \PC|DOUT\(11) & ( (\MUX_HEX|saida_MUX[9]~16_combout\ & (!\ULA|saida[11]~21_combout\ & (\SW[0]~input_o\ & 
-- !\MUX_HEX|saida_MUX[10]~15_combout\))) ) ) ) # ( \MUX_HEX|saida_MUX[8]~17_combout\ & ( !\PC|DOUT\(11) & ( (!\MUX_HEX|saida_MUX[9]~16_combout\ & (!\MUX_HEX|saida_MUX[10]~15_combout\ $ (((\ULA|saida[11]~21_combout\ & \SW[0]~input_o\))))) # 
-- (\MUX_HEX|saida_MUX[9]~16_combout\ & ((!\ULA|saida[11]~21_combout\) # ((!\SW[0]~input_o\)))) ) ) ) # ( !\MUX_HEX|saida_MUX[8]~17_combout\ & ( !\PC|DOUT\(11) & ( (\MUX_HEX|saida_MUX[9]~16_combout\ & (!\MUX_HEX|saida_MUX[10]~15_combout\ & 
-- ((!\ULA|saida[11]~21_combout\) # (!\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000111111000101011000000100000000000000110010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	datab => \ULA|ALT_INV_saida[11]~21_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\,
	dataf => \PC|ALT_INV_DOUT\(11),
	combout => \DISP_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y6_N24
\DISP_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[8]~17_combout\ & ( \MUX_HEX|saida_MUX[10]~15_combout\ & ( (\MUX_HEX|saida_MUX[9]~16_combout\ & !\MUX_HEX|saida_MUX[11]~14_combout\) ) ) ) # ( !\MUX_HEX|saida_MUX[8]~17_combout\ & ( 
-- \MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[9]~16_combout\ & \MUX_HEX|saida_MUX[11]~14_combout\) ) ) ) # ( \MUX_HEX|saida_MUX[8]~17_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[9]~16_combout\ & 
-- !\MUX_HEX|saida_MUX[11]~14_combout\) ) ) ) # ( !\MUX_HEX|saida_MUX[8]~17_combout\ & ( !\MUX_HEX|saida_MUX[10]~15_combout\ & ( (!\MUX_HEX|saida_MUX[9]~16_combout\ & !\MUX_HEX|saida_MUX[11]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010000010100101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[9]~16_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[11]~14_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[8]~17_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~15_combout\,
	combout => \DISP_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y2_N15
\ULA|saida[12]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~22_combout\ = ( \ULA|ULA12|saida~2_combout\ & ( \ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA12|saida~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA12|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[12]~22_combout\);

-- Location: LABCELL_X43_Y4_N48
\MUX_HEX|saida_MUX[14]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[14]~19_combout\ = ( \ULA|ULA14|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(14)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA14|saida~0_combout\ & ( (\PC|DOUT\(14) & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT\(14),
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA14|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[14]~19_combout\);

-- Location: FF_X36_Y4_N1
\PC|DOUT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[15]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N42
\MUX_HEX|saida_MUX[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[15]~18_combout\ = ( \ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT[15]~DUPLICATE_q\) ) ) # ( !\ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT[15]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((!\ULA|ULA15|saida~3_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	datad => \ULA|ULA15|ALT_INV_saida~3_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \MUX_HEX|saida_MUX[15]~18_combout\);

-- Location: MLABCELL_X45_Y3_N12
\MUX_HEX|saida_MUX[13]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[13]~20_combout\ = ( \ULA|ULA13|saida~1_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(13)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA13|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \PC|ALT_INV_DOUT\(13),
	dataf => \ULA|ULA13|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[13]~20_combout\);

-- Location: MLABCELL_X45_Y3_N30
\DISP_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[15]~18_combout\ & ( \MUX_HEX|saida_MUX[13]~20_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~22_combout\)))) ) 
-- ) ) # ( \MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~22_combout\)))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( !\MUX_HEX|saida_MUX[14]~19_combout\ $ (((!\SW[0]~input_o\ & ((!\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|saida[12]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010100101000000110000101000000000000000000011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[12]~22_combout\,
	datab => \PC|ALT_INV_DOUT\(12),
	datac => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[15]~18_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	combout => \DISP_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y6_N24
\ULA|ULA15|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~1_combout\ = ( \ULA|ULA13|AxBandC~combout\ & ( \BancoRegistradores|saidaA[14]~13_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA15|AxorB~combout\) ) ) ) # ( !\ULA|ULA13|AxBandC~combout\ & ( 
-- \BancoRegistradores|saidaA[14]~13_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA15|AxorB~combout\ $ (((!\ULA|ULA14|signal_B~0_combout\ & !\ULA|ULA13|saida~0_combout\))))) ) ) ) # ( \ULA|ULA13|AxBandC~combout\ & ( 
-- !\BancoRegistradores|saidaA[14]~13_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA14|signal_B~0_combout\ $ (!\ULA|ULA15|AxorB~combout\))) ) ) ) # ( !\ULA|ULA13|AxBandC~combout\ & ( !\BancoRegistradores|saidaA[14]~13_combout\ & ( 
-- (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA15|AxorB~combout\ $ (((!\ULA|ULA14|signal_B~0_combout\) # (!\ULA|ULA13|saida~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001000010010000100100001001000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA15|ALT_INV_AxorB~combout\,
	datad => \ULA|ULA13|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA13|ALT_INV_AxBandC~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	combout => \ULA|ULA15|saida~1_combout\);

-- Location: LABCELL_X40_Y6_N18
\MUX_HEX|saida_MUX[15]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[15]~21_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA15|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & \SW[0]~input_o\) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA15|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & 
-- (\SW[0]~input_o\ & ((\ULA|ULA15|saida~2_combout\) # (\ULA|ULA15|saida~1_combout\)))) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA15|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (\SW[0]~input_o\ & ((\ULA|ULA15|saida~2_combout\) # 
-- (\ULA|ULA15|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000000000000000000000010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA15|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA15|ALT_INV_saida~2_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA15|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[15]~21_combout\);

-- Location: MLABCELL_X45_Y3_N24
\MUX_HEX|saida_MUX[12]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[12]~22_combout\ = ( \ULA|ULA12|saida~1_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(12))))) # (\SW[0]~input_o\ & (\ULA|ULA12|saida~0_combout\ & ((!\ULA|Equal5~0_combout\)))) ) ) ) # ( 
-- !\ULA|ULA12|saida~1_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(12))))) # (\SW[0]~input_o\ & (\ULA|ULA12|saida~0_combout\ & ((!\ULA|Equal5~0_combout\)))) ) ) ) # ( \ULA|ULA12|saida~1_combout\ & ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( (\PC|DOUT\(12) & !\SW[0]~input_o\) ) ) ) # ( !\ULA|ULA12|saida~1_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(12))) # (\SW[0]~input_o\ & ((!\ULA|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100110000000000110011010100000011001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|ALT_INV_saida~0_combout\,
	datab => \PC|ALT_INV_DOUT\(12),
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA12|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \MUX_HEX|saida_MUX[12]~22_combout\);

-- Location: MLABCELL_X45_Y3_N6
\DISP_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[1]~1_combout\ = ( \PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[13]~20_combout\ & (\MUX_HEX|saida_MUX[14]~19_combout\ & (!\MUX_HEX|saida_MUX[15]~21_combout\ & \SW[0]~input_o\))) # 
-- (\MUX_HEX|saida_MUX[13]~20_combout\ & (((!\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[15]~21_combout\)))) ) ) ) # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[13]~20_combout\ & (\MUX_HEX|saida_MUX[14]~19_combout\ 
-- & !\MUX_HEX|saida_MUX[15]~21_combout\)) # (\MUX_HEX|saida_MUX[13]~20_combout\ & ((\MUX_HEX|saida_MUX[15]~21_combout\))) ) ) ) # ( \PC|DOUT[15]~DUPLICATE_q\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & 
-- (((!\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[15]~21_combout\)) # (\MUX_HEX|saida_MUX[13]~20_combout\))) ) ) ) # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & 
-- ((\MUX_HEX|saida_MUX[15]~21_combout\) # (\MUX_HEX|saida_MUX[13]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101010101010001010101000011010000110011001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[15]~21_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N36
\DISP_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[2]~2_combout\ = ( \PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & (\MUX_HEX|saida_MUX[13]~20_combout\ & ((!\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[15]~21_combout\)))) ) ) ) 
-- # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & (\MUX_HEX|saida_MUX[13]~20_combout\ & \MUX_HEX|saida_MUX[15]~21_combout\)) ) ) ) # ( \PC|DOUT[15]~DUPLICATE_q\ & ( 
-- !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & (\MUX_HEX|saida_MUX[13]~20_combout\ & (!\MUX_HEX|saida_MUX[15]~21_combout\ & \SW[0]~input_o\))) # (\MUX_HEX|saida_MUX[14]~19_combout\ & (((!\SW[0]~input_o\) # 
-- (\MUX_HEX|saida_MUX[15]~21_combout\)))) ) ) ) # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & (\MUX_HEX|saida_MUX[13]~20_combout\ & !\MUX_HEX|saida_MUX[15]~21_combout\)) # 
-- (\MUX_HEX|saida_MUX[14]~19_combout\ & ((\MUX_HEX|saida_MUX[15]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101010101010010010100000001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[15]~21_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N57
\DISP_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[15]~18_combout\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & \MUX_HEX|saida_MUX[13]~20_combout\) ) ) ) # ( !\MUX_HEX|saida_MUX[15]~18_combout\ & ( 
-- \MUX_HEX|saida_MUX[12]~22_combout\ & ( !\MUX_HEX|saida_MUX[14]~19_combout\ $ (\MUX_HEX|saida_MUX[13]~20_combout\) ) ) ) # ( \MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & 
-- \MUX_HEX|saida_MUX[13]~20_combout\) ) ) ) # ( !\MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~19_combout\ & !\MUX_HEX|saida_MUX[13]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100001000100010001010011001100110010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[15]~18_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N0
\DISP_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[4]~4_combout\ = ( !\MUX_HEX|saida_MUX[15]~18_combout\ & ( \MUX_HEX|saida_MUX[13]~20_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~22_combout\)) ) ) ) # ( 
-- \MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~22_combout\)))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[15]~18_combout\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~22_combout\))) # (\MUX_HEX|saida_MUX[14]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110101111001100001010000000110011101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[12]~22_combout\,
	datab => \PC|ALT_INV_DOUT\(12),
	datac => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[15]~18_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	combout => \DISP_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y3_N42
\ULA|saida[15]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~23_combout\ = ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA15|saida~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA15|ALT_INV_saida~3_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[15]~23_combout\);

-- Location: MLABCELL_X45_Y3_N48
\DISP_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[5]~5_combout\ = ( \PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[13]~20_combout\ & ( (!\ULA|saida[15]~23_combout\ & (\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[14]~19_combout\) # (\MUX_HEX|saida_MUX[12]~22_combout\)))) ) ) ) # ( 
-- !\PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[13]~20_combout\ & ( (!\MUX_HEX|saida_MUX[14]~19_combout\ & ((!\ULA|saida[15]~23_combout\) # ((!\SW[0]~input_o\)))) # (\MUX_HEX|saida_MUX[14]~19_combout\ & (\MUX_HEX|saida_MUX[12]~22_combout\ & 
-- ((!\ULA|saida[15]~23_combout\) # (!\SW[0]~input_o\)))) ) ) ) # ( \PC|DOUT[15]~DUPLICATE_q\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( (\MUX_HEX|saida_MUX[12]~22_combout\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (((!\SW[0]~input_o\) # 
-- (\ULA|saida[15]~23_combout\))))) ) ) ) # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( !\MUX_HEX|saida_MUX[13]~20_combout\ & ( (\MUX_HEX|saida_MUX[12]~22_combout\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (((\ULA|saida[15]~23_combout\ & \SW[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001001000001010000100110101111100011000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datab => \ULA|ALT_INV_saida[15]~23_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	combout => \DISP_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N18
\DISP_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[6]~6_combout\ = ( \PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[15]~21_combout\ & (\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (\MUX_HEX|saida_MUX[13]~20_combout\)))) ) ) ) 
-- # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[15]~21_combout\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (\MUX_HEX|saida_MUX[13]~20_combout\))) ) ) ) # ( \PC|DOUT[15]~DUPLICATE_q\ & ( 
-- !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[13]~20_combout\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (((!\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[15]~21_combout\))))) ) ) ) # ( !\PC|DOUT[15]~DUPLICATE_q\ & ( 
-- !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[13]~20_combout\ & (!\MUX_HEX|saida_MUX[14]~19_combout\ $ (\MUX_HEX|saida_MUX[15]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100010001001000010010010000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[14]~19_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~20_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[15]~21_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N24
\ULA|ULA17|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~1_combout\ = ( \BancoRegistradores|saidaA[16]~15_combout\ & ( \ULA|ULA16|signal_B~0_combout\ & ( (!\ULA|ULA17|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[17]~16_combout\ $ (!\ULA|ULA24|Equal1~0_combout\))) # 
-- (\ULA|ULA17|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[17]~16_combout\ & !\ULA|ULA24|Equal1~0_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[16]~15_combout\ & ( \ULA|ULA16|signal_B~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & 
-- (!\ULA|ULA17|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[17]~16_combout\ $ (\ULA|ULA15|Carry_Out~combout\)))) # (\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA17|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[17]~16_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[16]~15_combout\ & ( !\ULA|ULA16|signal_B~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA17|signal_B~0_combout\ $ (!\BancoRegistradores|saidaA[17]~16_combout\ $ (\ULA|ULA15|Carry_Out~combout\)))) # 
-- (\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA17|signal_B~0_combout\ & (!\BancoRegistradores|saidaA[17]~16_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[16]~15_combout\ & ( !\ULA|ULA16|signal_B~0_combout\ & ( (!\ULA|ULA17|signal_B~0_combout\ & 
-- (!\BancoRegistradores|saidaA[17]~16_combout\)) # (\ULA|ULA17|signal_B~0_combout\ & (\BancoRegistradores|saidaA[17]~16_combout\ & !\ULA|ULA24|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110001000011010011000100001101001100010000110011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_signal_B~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datac => \ULA|ULA15|ALT_INV_Carry_Out~combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	dataf => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA17|saida~1_combout\);

-- Location: MLABCELL_X42_Y4_N57
\MUX_HEX|saida_MUX[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[17]~25_combout\ = ( \ULA|ULA17|saida~0_combout\ & ( \ULA|Equal5~0_combout\ & ( (\PC|DOUT\(17) & !\SW[0]~input_o\) ) ) ) # ( !\ULA|ULA17|saida~0_combout\ & ( \ULA|Equal5~0_combout\ & ( (\PC|DOUT\(17) & !\SW[0]~input_o\) ) ) ) # ( 
-- \ULA|ULA17|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(17))))) # (\SW[0]~input_o\ & ((!\ULA|ULA17|saida~1_combout\) # ((\ULA|ULA24|Equal2~0_combout\)))) ) ) ) # ( !\ULA|ULA17|saida~0_combout\ & ( 
-- !\ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(17))))) # (\SW[0]~input_o\ & (!\ULA|ULA17|saida~1_combout\ & (!\ULA|ULA24|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001000000011111011101100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \PC|ALT_INV_DOUT\(17),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA17|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \MUX_HEX|saida_MUX[17]~25_combout\);

-- Location: LABCELL_X44_Y4_N42
\MUX_HEX|saida_MUX[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[19]~23_combout\ = ( \ULA|ULA19|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA19|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \PC|ALT_INV_DOUT\(19),
	dataf => \ULA|ULA19|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[19]~23_combout\);

-- Location: LABCELL_X44_Y4_N45
\MUX_HEX|saida_MUX[18]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[18]~24_combout\ = ( \ULA|ULA18|saida~1_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(18)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA18|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \PC|ALT_INV_DOUT\(18),
	dataf => \ULA|ULA18|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[18]~24_combout\);

-- Location: LABCELL_X44_Y4_N12
\ULA|saida[16]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~24_combout\ = (!\ULA|ULA16|saida~0_combout\) # (\ULA|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[16]~24_combout\);

-- Location: LABCELL_X44_Y4_N48
\DISP_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( \ULA|saida[16]~24_combout\ & ( (!\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (((\PC|DOUT\(16) & !\SW[0]~input_o\))))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[18]~24_combout\ & ( \ULA|saida[16]~24_combout\ & ( (\PC|DOUT\(16) & (!\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ $ (\MUX_HEX|saida_MUX[19]~23_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( 
-- !\ULA|saida[16]~24_combout\ & ( (!\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (((\SW[0]~input_o\) # (\PC|DOUT\(16)))))) ) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( !\ULA|saida[16]~24_combout\ & ( (!\PC|DOUT\(16) & 
-- (\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ $ (\MUX_HEX|saida_MUX[19]~23_combout\)))) # (\PC|DOUT\(16) & (!\MUX_HEX|saida_MUX[17]~25_combout\ $ ((\MUX_HEX|saida_MUX[19]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011001100000100010001000001001000000001000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \PC|ALT_INV_DOUT\(16),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \ULA|ALT_INV_saida[16]~24_combout\,
	combout => \DISP_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y4_N15
\MUX_HEX|saida_MUX[16]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[16]~26_combout\ = ( \PC|DOUT\(16) & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & \ULA|ULA16|saida~0_combout\)) ) ) # ( !\PC|DOUT\(16) & ( (!\ULA|Equal5~0_combout\ & (\ULA|ULA16|saida~0_combout\ & \SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011111111001000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(16),
	combout => \MUX_HEX|saida_MUX[16]~26_combout\);

-- Location: LABCELL_X44_Y4_N6
\DISP_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[19]~23_combout\ & ( (!\MUX_HEX|saida_MUX[16]~26_combout\ & ((\MUX_HEX|saida_MUX[18]~24_combout\))) # (\MUX_HEX|saida_MUX[16]~26_combout\ & (\MUX_HEX|saida_MUX[17]~25_combout\)) ) ) # ( 
-- !\MUX_HEX|saida_MUX[19]~23_combout\ & ( (\MUX_HEX|saida_MUX[18]~24_combout\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ $ (!\MUX_HEX|saida_MUX[16]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	combout => \DISP_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y4_N24
\DISP_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[19]~23_combout\ & ( (\MUX_HEX|saida_MUX[18]~24_combout\ & ((!\MUX_HEX|saida_MUX[16]~26_combout\) # (\MUX_HEX|saida_MUX[17]~25_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[19]~23_combout\ & ( 
-- (\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[16]~26_combout\ & !\MUX_HEX|saida_MUX[18]~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	combout => \DISP_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y4_N27
\DISP_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[19]~23_combout\ & ( (\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[16]~26_combout\ $ (\MUX_HEX|saida_MUX[18]~24_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[19]~23_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[16]~26_combout\ $ (!\MUX_HEX|saida_MUX[18]~24_combout\))) # (\MUX_HEX|saida_MUX[17]~25_combout\ & (\MUX_HEX|saida_MUX[16]~26_combout\ & \MUX_HEX|saida_MUX[18]~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	combout => \DISP_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y4_N18
\DISP_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( \ULA|saida[16]~24_combout\ & ( (!\MUX_HEX|saida_MUX[19]~23_combout\ & ((!\MUX_HEX|saida_MUX[17]~25_combout\) # ((\PC|DOUT\(16) & !\SW[0]~input_o\)))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[18]~24_combout\ & ( \ULA|saida[16]~24_combout\ & ( (\PC|DOUT\(16) & (!\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[17]~25_combout\) # (!\MUX_HEX|saida_MUX[19]~23_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( 
-- !\ULA|saida[16]~24_combout\ & ( (!\MUX_HEX|saida_MUX[19]~23_combout\ & ((!\MUX_HEX|saida_MUX[17]~25_combout\) # ((\SW[0]~input_o\) # (\PC|DOUT\(16))))) ) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( !\ULA|saida[16]~24_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[17]~25_combout\ & (((\SW[0]~input_o\) # (\PC|DOUT\(16))))) # (\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ & ((\SW[0]~input_o\) # (\PC|DOUT\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011101110100011001100110000001110000000001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \PC|ALT_INV_DOUT\(16),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \ULA|ALT_INV_saida[16]~24_combout\,
	combout => \DISP_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y4_N36
\ULA|saida[19]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~25_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA19|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA19|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[19]~25_combout\);

-- Location: LABCELL_X44_Y4_N54
\DISP_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( \MUX_HEX|saida_MUX[16]~26_combout\ & ( !\MUX_HEX|saida_MUX[17]~25_combout\ $ (((!\SW[0]~input_o\ & (!\PC|DOUT\(19))) # (\SW[0]~input_o\ & ((!\ULA|saida[19]~25_combout\))))) 
-- ) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( \MUX_HEX|saida_MUX[16]~26_combout\ & ( (!\SW[0]~input_o\ & (!\PC|DOUT\(19))) # (\SW[0]~input_o\ & ((!\ULA|saida[19]~25_combout\))) ) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( 
-- !\MUX_HEX|saida_MUX[16]~26_combout\ & ( (\MUX_HEX|saida_MUX[17]~25_combout\ & ((!\SW[0]~input_o\ & (!\PC|DOUT\(19))) # (\SW[0]~input_o\ & ((!\ULA|saida[19]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010000000000000000000011001100111100000110011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datab => \PC|ALT_INV_DOUT\(19),
	datac => \ULA|ALT_INV_saida[19]~25_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	combout => \DISP_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y4_N9
\DISP_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[19]~23_combout\ & ( (!\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[16]~26_combout\ & \MUX_HEX|saida_MUX[18]~24_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[19]~23_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[17]~25_combout\ & ((!\MUX_HEX|saida_MUX[18]~24_combout\))) # (\MUX_HEX|saida_MUX[17]~25_combout\ & (\MUX_HEX|saida_MUX[16]~26_combout\ & \MUX_HEX|saida_MUX[18]~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	combout => \DISP_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X32_Y4_N0
\MUX_HEX|saida_MUX[23]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[23]~27_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA23|soma~combout\ & ( (!\ULA|Equal5~0_combout\ & ((\ULA|ULA24|saida~0_combout\) # (\ULA|ULA23|saida~1_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( \ULA|ULA23|soma~combout\ & ( \PC|DOUT\(23) ) 
-- ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA23|soma~combout\ & ( (\ULA|ULA23|saida~1_combout\ & !\ULA|Equal5~0_combout\) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA23|soma~combout\ & ( \PC|DOUT\(23) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010001000100010000001111000011110100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|ALT_INV_saida~1_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT\(23),
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA23|ALT_INV_soma~combout\,
	combout => \MUX_HEX|saida_MUX[23]~27_combout\);

-- Location: MLABCELL_X37_Y4_N30
\ULA|ULA22|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~1_combout\ = ( \ULA|ULA22|signal_B~0_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[22]~20_combout\ $ (((!\ULA|ULA21|signal_B~0_combout\) # 
-- (!\BancoRegistradores|saidaA[21]~19_combout\))))) ) ) ) # ( !\ULA|ULA22|signal_B~0_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( !\BancoRegistradores|saidaA[22]~20_combout\ $ (((\ULA|ULA21|signal_B~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ & 
-- \BancoRegistradores|saidaA[21]~19_combout\)))) ) ) ) # ( \ULA|ULA22|signal_B~0_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[22]~20_combout\ $ (((!\ULA|ULA21|signal_B~0_combout\ & 
-- !\BancoRegistradores|saidaA[21]~19_combout\))))) ) ) ) # ( !\ULA|ULA22|signal_B~0_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( !\BancoRegistradores|saidaA[22]~20_combout\ $ (((!\ULA|ULA24|Equal1~0_combout\ & 
-- ((\BancoRegistradores|saidaA[21]~19_combout\) # (\ULA|ULA21|signal_B~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010000111100010010001100000011110000101101000000110001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[22]~20_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datae => \ULA|ULA22|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA22|saida~1_combout\);

-- Location: MLABCELL_X37_Y4_N54
\MUX_HEX|saida_MUX[22]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[22]~28_combout\ = ( \ULA|ULA22|saida~0_combout\ & ( \ULA|Equal5~0_combout\ & ( (\PC|DOUT\(22) & !\SW[0]~input_o\) ) ) ) # ( !\ULA|ULA22|saida~0_combout\ & ( \ULA|Equal5~0_combout\ & ( (\PC|DOUT\(22) & !\SW[0]~input_o\) ) ) ) # ( 
-- \ULA|ULA22|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(22))) # (\SW[0]~input_o\ & (((!\ULA|ULA22|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\)))) ) ) ) # ( !\ULA|ULA22|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ & 
-- ( (!\SW[0]~input_o\ & (\PC|DOUT\(22))) # (\SW[0]~input_o\ & (((!\ULA|ULA22|saida~1_combout\ & !\ULA|ULA24|Equal2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111000000010101011100111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(22),
	datab => \ULA|ULA22|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA22|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \MUX_HEX|saida_MUX[22]~28_combout\);

-- Location: LABCELL_X35_Y4_N24
\ULA|ULA19|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|Carry_Out~combout\ = ( \BancoRegistradores|saidaA[19]~17_combout\ & ( (!\ULA|ULA18|AxBandC~combout\ & (!\ULA|ULA19|signal_B~0_combout\ & !\ULA|ULA18|saida~0_combout\)) ) ) # ( !\BancoRegistradores|saidaA[19]~17_combout\ & ( 
-- (!\ULA|ULA19|signal_B~0_combout\) # ((!\ULA|ULA18|AxBandC~combout\ & !\ULA|ULA18|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA18|ALT_INV_AxBandC~combout\,
	datac => \ULA|ULA19|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA18|ALT_INV_saida~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[19]~17_combout\,
	combout => \ULA|ULA19|Carry_Out~combout\);

-- Location: LABCELL_X35_Y4_N48
\ULA|saida[20]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~26_combout\ = ( \ULA|ULA20|signal_B~0_combout\ & ( \ULA|ULA19|Carry_Out~combout\ & ( ((!\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaA[20]~18_combout\ & !\ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (!\BancoRegistradores|saidaA[20]~18_combout\))) # (\ULA|Equal5~0_combout\) ) ) ) # ( !\ULA|ULA20|signal_B~0_combout\ & ( \ULA|ULA19|Carry_Out~combout\ & ( ((!\BancoRegistradores|saidaA[20]~18_combout\) # (\ULA|ULA24|Equal2~0_combout\)) # 
-- (\ULA|Equal5~0_combout\) ) ) ) # ( \ULA|ULA20|signal_B~0_combout\ & ( !\ULA|ULA19|Carry_Out~combout\ & ( ((!\BancoRegistradores|saidaA[20]~18_combout\ & ((!\ULA|ULA24|Equal1~0_combout\) # (\ULA|ULA24|Equal2~0_combout\)))) # (\ULA|Equal5~0_combout\) ) ) ) 
-- # ( !\ULA|ULA20|signal_B~0_combout\ & ( !\ULA|ULA19|Carry_Out~combout\ & ( ((!\BancoRegistradores|saidaA[20]~18_combout\ $ (!\ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA24|Equal2~0_combout\)) # (\ULA|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111110111111101010111010111110111111101110111110101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[20]~18_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \ULA|ULA20|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA19|ALT_INV_Carry_Out~combout\,
	combout => \ULA|saida[20]~26_combout\);

-- Location: MLABCELL_X37_Y4_N24
\ULA|saida[21]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~27_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[21]~19_combout\ & (\ULA|ULA21|signal_B~0_combout\ & !\ULA|Equal5~0_combout\)) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( 
-- \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\BancoRegistradores|saidaA[21]~19_combout\ & ((\ULA|ULA21|signal_B~0_combout\))) # (\BancoRegistradores|saidaA[21]~19_combout\ & ((!\ULA|ULA21|signal_B~0_combout\) # 
-- (\ULA|ULA24|Equal1~0_combout\))))) ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (\BancoRegistradores|saidaA[21]~19_combout\ & (\ULA|ULA21|signal_B~0_combout\ & !\ULA|Equal5~0_combout\)) ) ) ) # ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaA[21]~19_combout\ $ (\ULA|ULA21|signal_B~0_combout\))) # (\ULA|ULA24|Equal1~0_combout\ & 
-- ((\ULA|ULA21|signal_B~0_combout\) # (\BancoRegistradores|saidaA[21]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011100000000000000110000000000111101000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[21]~19_combout\,
	datac => \ULA|ULA21|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|saida[21]~27_combout\);

-- Location: LABCELL_X32_Y4_N6
\MUX_HEX|saida_MUX[21]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[21]~29_combout\ = ( \SW[0]~input_o\ & ( \ULA|saida[21]~27_combout\ ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(21),
	datac => \ULA|ALT_INV_saida[21]~27_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	combout => \MUX_HEX|saida_MUX[21]~29_combout\);

-- Location: LABCELL_X32_Y4_N36
\DISP_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[0]~0_combout\ = ( \ULA|saida[20]~26_combout\ & ( \MUX_HEX|saida_MUX[21]~29_combout\ & ( (\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[22]~28_combout\ & (\PC|DOUT\(20) & !\SW[0]~input_o\))) ) ) ) # ( 
-- !\ULA|saida[20]~26_combout\ & ( \MUX_HEX|saida_MUX[21]~29_combout\ & ( (\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[22]~28_combout\ & ((\SW[0]~input_o\) # (\PC|DOUT\(20))))) ) ) ) # ( \ULA|saida[20]~26_combout\ & ( 
-- !\MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[22]~28_combout\ $ (((!\PC|DOUT\(20)) # (\SW[0]~input_o\))))) # (\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[22]~28_combout\ & (\PC|DOUT\(20) & 
-- !\SW[0]~input_o\))) ) ) ) # ( !\ULA|saida[20]~26_combout\ & ( !\MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[22]~28_combout\ $ (((!\PC|DOUT\(20) & !\SW[0]~input_o\))))) # 
-- (\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[22]~28_combout\ & ((\SW[0]~input_o\) # (\PC|DOUT\(20))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100110011001001010010010001000000100010001000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	datac => \PC|ALT_INV_DOUT\(20),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[20]~26_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	combout => \DISP_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X32_Y4_N57
\MUX_HEX|saida_MUX[20]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[20]~30_combout\ = ( \ULA|saida[20]~26_combout\ & ( (\PC|DOUT\(20) & !\SW[0]~input_o\) ) ) # ( !\ULA|saida[20]~26_combout\ & ( (\SW[0]~input_o\) # (\PC|DOUT\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001011111010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(20),
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[20]~26_combout\,
	combout => \MUX_HEX|saida_MUX[20]~30_combout\);

-- Location: LABCELL_X32_Y4_N51
\DISP_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[20]~30_combout\ $ (!\MUX_HEX|saida_MUX[21]~29_combout\))) # (\MUX_HEX|saida_MUX[23]~27_combout\ & 
-- ((!\MUX_HEX|saida_MUX[20]~30_combout\) # (\MUX_HEX|saida_MUX[21]~29_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( (\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[20]~30_combout\ & \MUX_HEX|saida_MUX[21]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011011010110110100000001000000010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X32_Y4_N30
\DISP_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[20]~30_combout\ & ( (\MUX_HEX|saida_MUX[21]~29_combout\ & (\MUX_HEX|saida_MUX[23]~27_combout\ & \MUX_HEX|saida_MUX[22]~28_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[20]~30_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[21]~29_combout\ & !\MUX_HEX|saida_MUX[22]~28_combout\)) # (\MUX_HEX|saida_MUX[23]~27_combout\ & ((\MUX_HEX|saida_MUX[22]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111000000000000001100110000000011110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \DISP_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X32_Y4_N27
\DISP_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[20]~30_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ & !\MUX_HEX|saida_MUX[21]~29_combout\)) # (\MUX_HEX|saida_MUX[20]~30_combout\ & 
-- ((\MUX_HEX|saida_MUX[21]~29_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[20]~30_combout\ & !\MUX_HEX|saida_MUX[21]~29_combout\)) # (\MUX_HEX|saida_MUX[23]~27_combout\ & 
-- (!\MUX_HEX|saida_MUX[20]~30_combout\ & \MUX_HEX|saida_MUX[21]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100100000111000001100100100001001001000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X32_Y4_N42
\DISP_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[4]~4_combout\ = ( \ULA|saida[20]~26_combout\ & ( \MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (\PC|DOUT\(20) & !\SW[0]~input_o\)) ) ) ) # ( !\ULA|saida[20]~26_combout\ & ( 
-- \MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & ((\SW[0]~input_o\) # (\PC|DOUT\(20)))) ) ) ) # ( \ULA|saida[20]~26_combout\ & ( !\MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[22]~28_combout\ & (((\PC|DOUT\(20) & 
-- !\SW[0]~input_o\)))) # (\MUX_HEX|saida_MUX[22]~28_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\)) ) ) ) # ( !\ULA|saida[20]~26_combout\ & ( !\MUX_HEX|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX|saida_MUX[22]~28_combout\ & (((\SW[0]~input_o\) # 
-- (\PC|DOUT\(20))))) # (\MUX_HEX|saida_MUX[22]~28_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010001000001010101010100000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	datac => \PC|ALT_INV_DOUT\(20),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[20]~26_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	combout => \DISP_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y3_N45
\ULA|saida[23]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~28_combout\ = ( !\ULA|Equal5~0_combout\ & ( ((\ULA|ULA23|soma~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA23|saida~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA23|ALT_INV_soma~combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[23]~28_combout\);

-- Location: LABCELL_X32_Y4_N12
\DISP_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( \PC|DOUT\(23) & ( (\MUX_HEX|saida_MUX[20]~30_combout\ & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ (((\SW[0]~input_o\ & !\ULA|saida[23]~28_combout\))))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[22]~28_combout\ & ( \PC|DOUT\(23) & ( (\SW[0]~input_o\ & (!\ULA|saida[23]~28_combout\ & ((\MUX_HEX|saida_MUX[21]~29_combout\) # (\MUX_HEX|saida_MUX[20]~30_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( !\PC|DOUT\(23) & ( 
-- (\MUX_HEX|saida_MUX[20]~30_combout\ & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ (((!\SW[0]~input_o\) # (!\ULA|saida[23]~28_combout\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( !\PC|DOUT\(23) & ( (!\SW[0]~input_o\ & 
-- (((\MUX_HEX|saida_MUX[21]~29_combout\)) # (\MUX_HEX|saida_MUX[20]~30_combout\))) # (\SW[0]~input_o\ & (!\ULA|saida[23]~28_combout\ & ((\MUX_HEX|saida_MUX[21]~29_combout\) # (\MUX_HEX|saida_MUX[20]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111010000000010011001000010000010100000010001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datac => \ULA|ALT_INV_saida[23]~28_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \PC|ALT_INV_DOUT\(23),
	combout => \DISP_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X32_Y4_N18
\DISP_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[20]~30_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ (\MUX_HEX|saida_MUX[22]~28_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[20]~30_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[21]~29_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ $ (\MUX_HEX|saida_MUX[22]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000011000011000000000011001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \DISP_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y5_N45
\ULA|saida[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~29_combout\ = ( \ULA|ULA5|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA5|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[5]~29_combout\);

-- Location: LABCELL_X43_Y5_N36
\ULA|saida[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~30_combout\ = ( \ULA|ULA6|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA6|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[6]~30_combout\);

-- Location: LABCELL_X36_Y6_N9
\ULA|saida[9]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~31_combout\ = ( \ULA|ULA9|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA9|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[9]~31_combout\);

-- Location: LABCELL_X40_Y6_N42
\ULA|saida[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~32_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA10|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[10]~32_combout\);

-- Location: LABCELL_X43_Y5_N45
\ULA|saida[13]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~33_combout\ = ( \ULA|ULA13|saida~1_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA13|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[13]~33_combout\);

-- Location: LABCELL_X39_Y6_N39
\ULA|saida[14]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~34_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA14|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA14|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[14]~34_combout\);

-- Location: LABCELL_X43_Y3_N57
\ULA|saida[17]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~35_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA17|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_saida~2_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[17]~35_combout\);

-- Location: LABCELL_X35_Y5_N24
\ULA|saida[18]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~36_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA18|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA18|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[18]~36_combout\);

-- Location: LABCELL_X39_Y2_N3
\ULA|saida[22]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~37_combout\ = ( \ULA|ULA22|saida~2_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[22]~37_combout\);

-- Location: LABCELL_X39_Y3_N9
\ULA|saida[25]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~38_combout\ = ( \ULA|ULA25|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA25|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA25|saida~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA25|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA25|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[25]~38_combout\);

-- Location: LABCELL_X39_Y3_N54
\ULA|saida[27]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~39_combout\ = ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA27|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA27|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[27]~39_combout\);

-- Location: LABCELL_X39_Y3_N39
\ULA|saida[28]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~40_combout\ = ( !\ULA|Equal5~0_combout\ & ( ((\ULA|ULA24|saida~0_combout\ & \ULA|ULA28|soma~combout\)) # (\ULA|ULA28|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA28|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA28|ALT_INV_soma~combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[28]~40_combout\);

-- Location: LABCELL_X39_Y3_N27
\ULA|saida[30]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~41_combout\ = ( \ULA|ULA30|saida~1_combout\ & ( !\ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA30|saida~1_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA30|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA30|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA30|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[30]~41_combout\);

-- Location: LABCELL_X40_Y2_N0
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(3) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~15_combout\);

-- Location: FF_X34_Y3_N40
\PC|DOUT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[25]~DUPLICATE_q\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X28_Y22_N0
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


