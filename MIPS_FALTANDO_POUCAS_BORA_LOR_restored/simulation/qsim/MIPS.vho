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

-- DATE "05/25/2022 17:37:32"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	ula_teste : OUT std_logic_vector(31 DOWNTO 0);
	instrucao_teste : OUT std_logic_vector(31 DOWNTO 0);
	pc_teste : OUT std_logic_vector(31 DOWNTO 0);
	imediato_teste : OUT std_logic_vector(31 DOWNTO 0);
	ULA_ctrl_teste : OUT std_logic_vector(2 DOWNTO 0)
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
-- ula_teste[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[17]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[19]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[20]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[21]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[22]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[23]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[24]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[26]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[27]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[28]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[29]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[30]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_teste[31]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[5]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[12]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[14]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[16]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[18]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[19]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[20]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[21]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[22]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[23]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[24]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[25]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[27]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[28]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[29]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[30]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao_teste[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[10]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[13]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[17]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[18]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[19]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[20]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[21]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[22]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[23]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[24]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[25]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[27]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[28]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[29]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_teste[31]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[12]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[13]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[18]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[19]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[20]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[21]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[23]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[24]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[25]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[26]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[27]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[28]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[29]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imediato_teste[31]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl_teste[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl_teste[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl_teste[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_imediato_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_ctrl_teste : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~5_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~6\ : std_logic;
SIGNAL \somaConstante|Add0~2\ : std_logic;
SIGNAL \somaConstante|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \somaConstante|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \Add0~118_cout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \somaConstante|Add0~10\ : std_logic;
SIGNAL \somaConstante|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal0~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal0~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|Equal4~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ULActrl~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|Equal1~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[31]~32_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[30]~21_combout\ : std_logic;
SIGNAL \ULA|ULA30|signal_B~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[30]~8_combout\ : std_logic;
SIGNAL \ULA|ULA24|Equal2~0_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ULActrl[0]~2_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ULActrl[1]~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|AxorB~combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[27]~7_combout\ : std_logic;
SIGNAL \ULA|ULA27|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA26|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA24|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|saida~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[13]~4_combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA3|saida~0_combout\ : std_logic;
SIGNAL \ULA|Equal5~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~325_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|ULA31|soma~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA29|soma~combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1091_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~323_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[29]~20_combout\ : std_logic;
SIGNAL \ULA|ULA29|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~3_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[22]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[22]~13_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA22|saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA19|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA19|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[19]~10_combout\ : std_logic;
SIGNAL \ULA|ULA19|Carry_Out~combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[20]~11_combout\ : std_logic;
SIGNAL \ULA|ULA20|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[16]~7_combout\ : std_logic;
SIGNAL \ULA|ULA16|signal_B~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[16]~9_combout\ : std_logic;
SIGNAL \ULA|ULA15|AxorB~combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[14]~5_combout\ : std_logic;
SIGNAL \ULA|ULA14|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA14|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[14]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|ULA14|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA16|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|Carry_Out~combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1081_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[9]~2_combout\ : std_logic;
SIGNAL \ULA|ULA9|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA10|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[10]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[10]~3_combout\ : std_logic;
SIGNAL \ULA|ULA11|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA11|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA11|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[11]~4_combout\ : std_logic;
SIGNAL \ULA|ULA11|Carry_Out~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|Carry_Out~combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[12]~5_combout\ : std_logic;
SIGNAL \ULA|ULA12|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|ULA5|signal_B~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \ULA|ULA4|AxorB~combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA5|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \ULA|ULA6|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA6|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~39_combout\ : std_logic;
SIGNAL \ULA|saida[0]~40_combout\ : std_logic;
SIGNAL \ULA|saida[0]~4_combout\ : std_logic;
SIGNAL \ULA|saida[0]~5_combout\ : std_logic;
SIGNAL \ULA|saida[0]~6_combout\ : std_logic;
SIGNAL \ULA|saida[0]~7_combout\ : std_logic;
SIGNAL \ULA|saida[0]~8_combout\ : std_logic;
SIGNAL \ULA|saida[0]~9_combout\ : std_logic;
SIGNAL \ULA|saida[0]~10_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|ULA0|Carry_Out~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|signal_B~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \ULA|ULA1|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|ULA1|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA2|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|ULA2|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|ULA3|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA4|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|ULA4|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA7|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1080_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[7]~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[8]~1_combout\ : std_logic;
SIGNAL \ULA|ULA12|Carry_Out~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA13|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1071_combout\ : std_logic;
SIGNAL \ULA|ULA13|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[15]~6_combout\ : std_logic;
SIGNAL \ULA|ULA15|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA17|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[17]~8_combout\ : std_logic;
SIGNAL \ULA|ULA17|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA18|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[18]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[18]~9_combout\ : std_logic;
SIGNAL \ULA|ULA20|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA21|saida~0_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[21]~12_combout\ : std_logic;
SIGNAL \ULA|ULA23|soma~combout\ : std_logic;
SIGNAL \ULA|ULA23|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[23]~14_combout\ : std_logic;
SIGNAL \ULA|ULA23|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA24|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[24]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[24]~15_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[24]~6_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1089_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[25]~16_combout\ : std_logic;
SIGNAL \ULA|ULA26|soma~combout\ : std_logic;
SIGNAL \ULA|ULA26|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[26]~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[26]~17_combout\ : std_logic;
SIGNAL \ULA|ULA26|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA27|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1090_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[27]~18_combout\ : std_logic;
SIGNAL \ULA|ULA27|signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|saida~1_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|saida_MUX[28]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|saidaB[28]~19_combout\ : std_logic;
SIGNAL \ULA|ULA29|Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA30|saida~0_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \somaConstante|Add0~14\ : std_logic;
SIGNAL \somaConstante|Add0~22\ : std_logic;
SIGNAL \somaConstante|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \somaConstante|Add0~21_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \UNI_LOG|Equal4~0_combout\ : std_logic;
SIGNAL \UNI_LOG|saida[9]~0_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ULA|saida[24]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
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
SIGNAL \PC|DOUT[11]~DUPLICATE_q\ : std_logic;
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
SIGNAL \PC|DOUT[20]~DUPLICATE_q\ : std_logic;
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
SIGNAL \MUX_HEX|saida_MUX[26]~2_combout\ : std_logic;
SIGNAL \somaConstante|Add0~34\ : std_logic;
SIGNAL \somaConstante|Add0~37_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[27]~9_combout\ : std_logic;
SIGNAL \ULA|saida[27]~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[27]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~38\ : std_logic;
SIGNAL \somaConstante|Add0~41_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[28]~10_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[28]~4_combout\ : std_logic;
SIGNAL \somaConstante|Add0~42\ : std_logic;
SIGNAL \somaConstante|Add0~45_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[29]~11_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[29]~5_combout\ : std_logic;
SIGNAL \ULA|saida[30]~2_combout\ : std_logic;
SIGNAL \somaConstante|Add0~46\ : std_logic;
SIGNAL \somaConstante|Add0~49_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[30]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[30]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~50\ : std_logic;
SIGNAL \somaConstante|Add0~53_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \MUX_PROXPC|saida_MUX[31]~13_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[31]~7_combout\ : std_logic;
SIGNAL \ULA|saida[1]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ULA|saida[3]~11_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \ULA|saida[2]~13_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \DISP_HEX0|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[5]~13_combout\ : std_logic;
SIGNAL \ULA|saida[4]~14_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[4]~14_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[7]~15_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[11]~15_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[9]~17_combout\ : std_logic;
SIGNAL \ULA|saida[8]~16_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[10]~16_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|saida~1_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[8]~18_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[11]~17_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[12]~18_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[14]~20_combout\ : std_logic;
SIGNAL \PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[13]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[15]~19_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[15]~19_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[18]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \ULA|saida[17]~22_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \ULA|saida[16]~20_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[19]~23_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|saida[21]~25_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \ULA|saida[20]~24_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX|saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[23]~26_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISP_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[5]~27_combout\ : std_logic;
SIGNAL \ULA|saida[6]~28_combout\ : std_logic;
SIGNAL \ULA|saida[9]~29_combout\ : std_logic;
SIGNAL \ULA|saida[10]~30_combout\ : std_logic;
SIGNAL \ULA|saida[13]~31_combout\ : std_logic;
SIGNAL \ULA|saida[14]~32_combout\ : std_logic;
SIGNAL \ULA|saida[22]~33_combout\ : std_logic;
SIGNAL \ULA|saida[25]~34_combout\ : std_logic;
SIGNAL \ULA|saida[26]~35_combout\ : std_logic;
SIGNAL \ULA|saida[28]~36_combout\ : std_logic;
SIGNAL \ULA|saida[29]~37_combout\ : std_logic;
SIGNAL \ULA|saida[31]~38_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ULA|B_invertido~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \somaConstante|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[17]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[16]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[15]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[12]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[11]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[10]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\ : std_logic;
SIGNAL \UNI_LOG|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ULA|ULA4|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ULA10|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[16]~9_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_AxBandC~combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_soma~combout\ : std_logic;
SIGNAL \ULA|ULA21|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA22|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[30]~8_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[30]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_soma~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[29]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[28]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~1_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[27]~7_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[27]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_soma~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[26]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_AxorB~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[25]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[24]~6_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[23]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[22]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[20]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaB[19]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~26_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~25_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~23_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~22_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~19_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~17_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~15_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~13_combout\ : std_logic;
SIGNAL \DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \DISP_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_Carry_Out~0_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_signal_B~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_Carry_Out~combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\ : std_logic;
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~40_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~39_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_Carry_Out~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_Carry_Out~0_combout\ : std_logic;
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
SIGNAL \MUX_BANCOREG|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA27|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \UNI_LOG|ALT_INV_saida[9]~0_combout\ : std_logic;
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
imediato_teste <= ww_imediato_teste;
ULA_ctrl_teste <= ww_ULA_ctrl_teste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\somaConstante|ALT_INV_Add0~25_sumout\ <= NOT \somaConstante|Add0~25_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\somaConstante|ALT_INV_Add0~21_sumout\ <= NOT \somaConstante|Add0~21_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\somaConstante|ALT_INV_Add0~17_sumout\ <= NOT \somaConstante|Add0~17_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\somaConstante|ALT_INV_Add0~13_sumout\ <= NOT \somaConstante|Add0~13_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\somaConstante|ALT_INV_Add0~9_sumout\ <= NOT \somaConstante|Add0~9_sumout\;
\somaConstante|ALT_INV_Add0~5_sumout\ <= NOT \somaConstante|Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\somaConstante|ALT_INV_Add0~1_sumout\ <= NOT \somaConstante|Add0~1_sumout\;
\BancoRegistradores|ALT_INV_saidaB[18]~9_combout\ <= NOT \BancoRegistradores|saidaB[18]~9_combout\;
\BancoRegistradores|ALT_INV_registrador~56_q\ <= NOT \BancoRegistradores|registrador~56_q\;
\BancoRegistradores|ALT_INV_registrador~312_q\ <= NOT \BancoRegistradores|registrador~312_q\;
\ULA|ULA17|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA17|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaB[17]~8_combout\ <= NOT \BancoRegistradores|saidaB[17]~8_combout\;
\BancoRegistradores|ALT_INV_registrador~55_q\ <= NOT \BancoRegistradores|registrador~55_q\;
\BancoRegistradores|ALT_INV_registrador~311_q\ <= NOT \BancoRegistradores|registrador~311_q\;
\BancoRegistradores|ALT_INV_saidaB[16]~7_combout\ <= NOT \BancoRegistradores|saidaB[16]~7_combout\;
\BancoRegistradores|ALT_INV_registrador~54_q\ <= NOT \BancoRegistradores|registrador~54_q\;
\BancoRegistradores|ALT_INV_registrador~310_q\ <= NOT \BancoRegistradores|registrador~310_q\;
\BancoRegistradores|ALT_INV_saidaB[15]~6_combout\ <= NOT \BancoRegistradores|saidaB[15]~6_combout\;
\BancoRegistradores|ALT_INV_registrador~1073_combout\ <= NOT \BancoRegistradores|registrador~1073_combout\;
\BancoRegistradores|ALT_INV_registrador~53_q\ <= NOT \BancoRegistradores|registrador~53_q\;
\BancoRegistradores|ALT_INV_registrador~309_q\ <= NOT \BancoRegistradores|registrador~309_q\;
\ULA|ULA14|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA14|Carry_Out~combout\;
\MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\ <= NOT \MUX_ULA|saida_MUX[14]~5_combout\;
\ULA|ULA14|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA14|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1072_combout\ <= NOT \BancoRegistradores|registrador~1072_combout\;
\BancoRegistradores|ALT_INV_registrador~52_q\ <= NOT \BancoRegistradores|registrador~52_q\;
\BancoRegistradores|ALT_INV_registrador~308_q\ <= NOT \BancoRegistradores|registrador~308_q\;
\MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\ <= NOT \MUX_ULA|saida_MUX[13]~4_combout\;
\ULA|ULA13|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA13|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1071_combout\ <= NOT \BancoRegistradores|registrador~1071_combout\;
\BancoRegistradores|ALT_INV_registrador~51_q\ <= NOT \BancoRegistradores|registrador~51_q\;
\BancoRegistradores|ALT_INV_registrador~307_q\ <= NOT \BancoRegistradores|registrador~307_q\;
\ULA|ULA12|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA12|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaB[12]~5_combout\ <= NOT \BancoRegistradores|saidaB[12]~5_combout\;
\BancoRegistradores|ALT_INV_registrador~50_q\ <= NOT \BancoRegistradores|registrador~50_q\;
\BancoRegistradores|ALT_INV_registrador~306_q\ <= NOT \BancoRegistradores|registrador~306_q\;
\BancoRegistradores|ALT_INV_saidaB[11]~4_combout\ <= NOT \BancoRegistradores|saidaB[11]~4_combout\;
\BancoRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \BancoRegistradores|registrador~1070_combout\;
\BancoRegistradores|ALT_INV_registrador~49_q\ <= NOT \BancoRegistradores|registrador~49_q\;
\BancoRegistradores|ALT_INV_registrador~305_q\ <= NOT \BancoRegistradores|registrador~305_q\;
\BancoRegistradores|ALT_INV_saidaB[10]~3_combout\ <= NOT \BancoRegistradores|saidaB[10]~3_combout\;
\BancoRegistradores|ALT_INV_registrador~48_q\ <= NOT \BancoRegistradores|registrador~48_q\;
\BancoRegistradores|ALT_INV_registrador~304_q\ <= NOT \BancoRegistradores|registrador~304_q\;
\ULA|ULA9|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA9|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaB[9]~2_combout\ <= NOT \BancoRegistradores|saidaB[9]~2_combout\;
\BancoRegistradores|ALT_INV_registrador~47_q\ <= NOT \BancoRegistradores|registrador~47_q\;
\BancoRegistradores|ALT_INV_registrador~303_q\ <= NOT \BancoRegistradores|registrador~303_q\;
\BancoRegistradores|ALT_INV_saidaB[8]~1_combout\ <= NOT \BancoRegistradores|saidaB[8]~1_combout\;
\BancoRegistradores|ALT_INV_registrador~1069_combout\ <= NOT \BancoRegistradores|registrador~1069_combout\;
\BancoRegistradores|ALT_INV_registrador~46_q\ <= NOT \BancoRegistradores|registrador~46_q\;
\BancoRegistradores|ALT_INV_registrador~302_q\ <= NOT \BancoRegistradores|registrador~302_q\;
\BancoRegistradores|ALT_INV_saidaB[7]~0_combout\ <= NOT \BancoRegistradores|saidaB[7]~0_combout\;
\BancoRegistradores|ALT_INV_registrador~45_q\ <= NOT \BancoRegistradores|registrador~45_q\;
\BancoRegistradores|ALT_INV_registrador~301_q\ <= NOT \BancoRegistradores|registrador~301_q\;
\ULA|ULA6|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA6|Carry_Out~combout\;
\MUX_ULA|ALT_INV_saida_MUX[6]~3_combout\ <= NOT \MUX_ULA|saida_MUX[6]~3_combout\;
\ULA|ULA6|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA6|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \BancoRegistradores|registrador~1068_combout\;
\BancoRegistradores|ALT_INV_registrador~44_q\ <= NOT \BancoRegistradores|registrador~44_q\;
\BancoRegistradores|ALT_INV_registrador~300_q\ <= NOT \BancoRegistradores|registrador~300_q\;
\MUX_ULA|ALT_INV_saida_MUX[5]~2_combout\ <= NOT \MUX_ULA|saida_MUX[5]~2_combout\;
\ULA|ULA5|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA5|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \BancoRegistradores|registrador~1067_combout\;
\BancoRegistradores|ALT_INV_registrador~43_q\ <= NOT \BancoRegistradores|registrador~43_q\;
\BancoRegistradores|ALT_INV_registrador~299_q\ <= NOT \BancoRegistradores|registrador~299_q\;
\ULA|ULA4|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA4|saida~0_combout\;
\ULA|ULA4|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA4|AxBandC~combout\;
\ULA|ULA4|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA4|AxorB~combout\;
\BancoRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \BancoRegistradores|registrador~1066_combout\;
\BancoRegistradores|ALT_INV_registrador~42_q\ <= NOT \BancoRegistradores|registrador~42_q\;
\BancoRegistradores|ALT_INV_registrador~298_q\ <= NOT \BancoRegistradores|registrador~298_q\;
\MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \MUX_ULA|saida_MUX[3]~1_combout\;
\ULA|ULA3|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA3|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1065_combout\ <= NOT \BancoRegistradores|registrador~1065_combout\;
\BancoRegistradores|ALT_INV_registrador~41_q\ <= NOT \BancoRegistradores|registrador~41_q\;
\BancoRegistradores|ALT_INV_registrador~297_q\ <= NOT \BancoRegistradores|registrador~297_q\;
\MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \MUX_ULA|saida_MUX[2]~0_combout\;
\ULA|ULA2|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA2|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1064_combout\ <= NOT \BancoRegistradores|registrador~1064_combout\;
\BancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \BancoRegistradores|registrador~40_q\;
\BancoRegistradores|ALT_INV_registrador~296_q\ <= NOT \BancoRegistradores|registrador~296_q\;
\ULA|ULA1|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA1|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \BancoRegistradores|registrador~1063_combout\;
\BancoRegistradores|ALT_INV_registrador~38_q\ <= NOT \BancoRegistradores|registrador~38_q\;
\BancoRegistradores|ALT_INV_registrador~294_q\ <= NOT \BancoRegistradores|registrador~294_q\;
\BancoRegistradores|ALT_INV_Equal0~0_combout\ <= NOT \BancoRegistradores|Equal0~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \BancoRegistradores|registrador~1062_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\BancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \BancoRegistradores|registrador~39_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\BancoRegistradores|ALT_INV_registrador~295_q\ <= NOT \BancoRegistradores|registrador~295_q\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\UNI_LOG_ULA|ALT_INV_Equal4~0_combout\ <= NOT \UNI_LOG_ULA|Equal4~0_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\UNI_LOG_ULA|ALT_INV_Equal0~1_combout\ <= NOT \UNI_LOG_ULA|Equal0~1_combout\;
\UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\ <= NOT \UNI_LOG_ULA|ULActrl~1_combout\;
\UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\ <= NOT \UNI_LOG_ULA|ULActrl[1]~0_combout\;
\UNI_LOG|ALT_INV_Equal4~0_combout\ <= NOT \UNI_LOG|Equal4~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\UNI_LOG_ULA|ALT_INV_Equal0~0_combout\ <= NOT \UNI_LOG_ULA|Equal0~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ULA|ULA4|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA4|saida~1_combout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\somaConstante|ALT_INV_Add0~117_sumout\ <= NOT \somaConstante|Add0~117_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\somaConstante|ALT_INV_Add0~113_sumout\ <= NOT \somaConstante|Add0~113_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\somaConstante|ALT_INV_Add0~109_sumout\ <= NOT \somaConstante|Add0~109_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ULA|ULA10|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA10|saida~0_combout\;
\ULA|ULA7|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA7|saida~0_combout\;
\ULA|ULA8|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA8|saida~2_combout\;
\ULA|ULA8|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA8|saida~1_combout\;
\ULA|ULA8|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA8|saida~0_combout\;
\ULA|ULA9|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA9|saida~0_combout\;
\ULA|ULA8|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA8|Carry_Out~combout\;
\ULA|ULA11|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA11|saida~2_combout\;
\ULA|ULA11|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA11|saida~1_combout\;
\ULA|ULA11|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA11|saida~0_combout\;
\ULA|ULA12|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA12|saida~0_combout\;
\ULA|ULA11|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA11|Carry_Out~combout\;
\ULA|ULA13|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA13|saida~0_combout\;
\ULA|ULA14|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA14|saida~2_combout\;
\ULA|ULA14|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA14|saida~1_combout\;
\ULA|ULA14|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA14|saida~0_combout\;
\ULA|ULA15|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA15|saida~1_combout\;
\ULA|ULA17|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA17|saida~0_combout\;
\ULA|ULA16|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA16|Carry_Out~combout\;
\ULA|ULA18|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA18|saida~0_combout\;
\ULA|ULA16|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA16|saida~0_combout\;
\MUX_ULA|ALT_INV_saida_MUX[16]~9_combout\ <= NOT \MUX_ULA|saida_MUX[16]~9_combout\;
\ULA|ULA16|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA16|signal_B~0_combout\;
\ULA|ULA15|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA15|saida~0_combout\;
\ULA|ULA15|ALT_INV_AxBandC~combout\ <= NOT \ULA|ULA15|AxBandC~combout\;
\ULA|ULA15|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA15|AxorB~combout\;
\ULA|ULA23|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA23|saida~0_combout\;
\ULA|ULA19|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA19|saida~2_combout\;
\ULA|ULA19|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA19|saida~1_combout\;
\ULA|ULA19|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA19|saida~0_combout\;
\ULA|ULA23|ALT_INV_soma~combout\ <= NOT \ULA|ULA23|soma~combout\;
\ULA|ULA21|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA21|saida~0_combout\;
\ULA|ULA22|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA22|saida~2_combout\;
\ULA|ULA22|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA22|saida~1_combout\;
\ULA|ULA22|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA22|saida~0_combout\;
\ULA|ULA20|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA20|saida~0_combout\;
\ULA|ULA19|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA19|Carry_Out~combout\;
\ULA|ULA24|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA24|saida~1_combout\;
\ULA|ALT_INV_saida[0]~3_combout\ <= NOT \ULA|saida[0]~3_combout\;
\ULA|ULA30|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA30|saida~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\ULA|ULA31|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA31|saida~1_combout\;
\ULA|ULA31|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA31|saida~0_combout\;
\ULA|ULA31|ALT_INV_soma~0_combout\ <= NOT \ULA|ULA31|soma~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \BancoRegistradores|registrador~1074_combout\;
\BancoRegistradores|ALT_INV_registrador~69_q\ <= NOT \BancoRegistradores|registrador~69_q\;
\BancoRegistradores|ALT_INV_registrador~325_q\ <= NOT \BancoRegistradores|registrador~325_q\;
\MUX_ULA|ALT_INV_saida_MUX[30]~8_combout\ <= NOT \MUX_ULA|saida_MUX[30]~8_combout\;
\ULA|ULA30|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA30|signal_B~0_combout\;
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\ULA|ALT_INV_saida[30]~2_combout\ <= NOT \ULA|saida[30]~2_combout\;
\BancoRegistradores|ALT_INV_saidaB[30]~21_combout\ <= NOT \BancoRegistradores|saidaB[30]~21_combout\;
\BancoRegistradores|ALT_INV_registrador~68_q\ <= NOT \BancoRegistradores|registrador~68_q\;
\BancoRegistradores|ALT_INV_registrador~324_q\ <= NOT \BancoRegistradores|registrador~324_q\;
\ULA|ULA29|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA29|Carry_Out~combout\;
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\ULA|ULA29|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA29|saida~0_combout\;
\ULA|ULA29|ALT_INV_soma~combout\ <= NOT \ULA|ULA29|soma~combout\;
\BancoRegistradores|ALT_INV_saidaB[29]~20_combout\ <= NOT \BancoRegistradores|saidaB[29]~20_combout\;
\BancoRegistradores|ALT_INV_registrador~67_q\ <= NOT \BancoRegistradores|registrador~67_q\;
\BancoRegistradores|ALT_INV_registrador~323_q\ <= NOT \BancoRegistradores|registrador~323_q\;
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\ULA|ULA28|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA28|saida~1_combout\;
\ULA|ULA28|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA28|saida~0_combout\;
\ULA|ULA28|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA28|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaB[28]~19_combout\ <= NOT \BancoRegistradores|saidaB[28]~19_combout\;
\BancoRegistradores|ALT_INV_registrador~66_q\ <= NOT \BancoRegistradores|registrador~66_q\;
\BancoRegistradores|ALT_INV_registrador~322_q\ <= NOT \BancoRegistradores|registrador~322_q\;
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\ULA|ALT_INV_saida[27]~1_combout\ <= NOT \ULA|saida[27]~1_combout\;
\ULA|ULA27|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA27|saida~0_combout\;
\ULA|ULA27|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA27|AxorB~combout\;
\MUX_ULA|ALT_INV_saida_MUX[27]~7_combout\ <= NOT \MUX_ULA|saida_MUX[27]~7_combout\;
\ULA|ULA27|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA27|signal_B~0_combout\;
\BancoRegistradores|ALT_INV_saidaB[27]~18_combout\ <= NOT \BancoRegistradores|saidaB[27]~18_combout\;
\BancoRegistradores|ALT_INV_registrador~65_q\ <= NOT \BancoRegistradores|registrador~65_q\;
\BancoRegistradores|ALT_INV_registrador~321_q\ <= NOT \BancoRegistradores|registrador~321_q\;
\ULA|ULA26|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA26|Carry_Out~combout\;
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\ULA|ULA26|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA26|saida~0_combout\;
\ULA|ULA26|ALT_INV_soma~combout\ <= NOT \ULA|ULA26|soma~combout\;
\BancoRegistradores|ALT_INV_saidaB[26]~17_combout\ <= NOT \BancoRegistradores|saidaB[26]~17_combout\;
\BancoRegistradores|ALT_INV_registrador~64_q\ <= NOT \BancoRegistradores|registrador~64_q\;
\BancoRegistradores|ALT_INV_registrador~320_q\ <= NOT \BancoRegistradores|registrador~320_q\;
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\ULA|ULA25|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA25|saida~1_combout\;
\ULA|ULA25|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA25|saida~0_combout\;
\ULA|ULA25|ALT_INV_AxorB~combout\ <= NOT \ULA|ULA25|AxorB~combout\;
\BancoRegistradores|ALT_INV_saidaB[25]~16_combout\ <= NOT \BancoRegistradores|saidaB[25]~16_combout\;
\BancoRegistradores|ALT_INV_registrador~63_q\ <= NOT \BancoRegistradores|registrador~63_q\;
\BancoRegistradores|ALT_INV_registrador~319_q\ <= NOT \BancoRegistradores|registrador~319_q\;
\ULA|ULA24|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA24|saida~0_combout\;
\ULA|ULA24|ALT_INV_Equal2~0_combout\ <= NOT \ULA|ULA24|Equal2~0_combout\;
\ULA|ULA24|ALT_INV_Equal1~0_combout\ <= NOT \ULA|ULA24|Equal1~0_combout\;
\MUX_ULA|ALT_INV_saida_MUX[24]~6_combout\ <= NOT \MUX_ULA|saida_MUX[24]~6_combout\;
\ULA|ULA24|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA24|signal_B~0_combout\;
\ULA|ALT_INV_Equal5~0_combout\ <= NOT \ULA|Equal5~0_combout\;
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\ULA|ALT_INV_saida[24]~0_combout\ <= NOT \ULA|saida[24]~0_combout\;
\BancoRegistradores|ALT_INV_saidaB[24]~15_combout\ <= NOT \BancoRegistradores|saidaB[24]~15_combout\;
\BancoRegistradores|ALT_INV_registrador~62_q\ <= NOT \BancoRegistradores|registrador~62_q\;
\BancoRegistradores|ALT_INV_registrador~318_q\ <= NOT \BancoRegistradores|registrador~318_q\;
\ULA|ULA23|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA23|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaB[23]~14_combout\ <= NOT \BancoRegistradores|saidaB[23]~14_combout\;
\BancoRegistradores|ALT_INV_registrador~61_q\ <= NOT \BancoRegistradores|registrador~61_q\;
\BancoRegistradores|ALT_INV_registrador~317_q\ <= NOT \BancoRegistradores|registrador~317_q\;
\BancoRegistradores|ALT_INV_saidaB[22]~13_combout\ <= NOT \BancoRegistradores|saidaB[22]~13_combout\;
\BancoRegistradores|ALT_INV_registrador~60_q\ <= NOT \BancoRegistradores|registrador~60_q\;
\BancoRegistradores|ALT_INV_registrador~316_q\ <= NOT \BancoRegistradores|registrador~316_q\;
\BancoRegistradores|ALT_INV_saidaB[21]~12_combout\ <= NOT \BancoRegistradores|saidaB[21]~12_combout\;
\BancoRegistradores|ALT_INV_registrador~59_q\ <= NOT \BancoRegistradores|registrador~59_q\;
\BancoRegistradores|ALT_INV_registrador~315_q\ <= NOT \BancoRegistradores|registrador~315_q\;
\ULA|ULA20|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA20|Carry_Out~combout\;
\BancoRegistradores|ALT_INV_saidaB[20]~11_combout\ <= NOT \BancoRegistradores|saidaB[20]~11_combout\;
\BancoRegistradores|ALT_INV_registrador~58_q\ <= NOT \BancoRegistradores|registrador~58_q\;
\BancoRegistradores|ALT_INV_registrador~314_q\ <= NOT \BancoRegistradores|registrador~314_q\;
\BancoRegistradores|ALT_INV_saidaB[19]~10_combout\ <= NOT \BancoRegistradores|saidaB[19]~10_combout\;
\BancoRegistradores|ALT_INV_registrador~57_q\ <= NOT \BancoRegistradores|registrador~57_q\;
\BancoRegistradores|ALT_INV_registrador~313_q\ <= NOT \BancoRegistradores|registrador~313_q\;
\ULA|ALT_INV_saida[23]~26_combout\ <= NOT \ULA|saida[23]~26_combout\;
\MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\ <= NOT \MUX_HEX|saida_MUX[20]~30_combout\;
\MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\ <= NOT \MUX_HEX|saida_MUX[21]~29_combout\;
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\ULA|ALT_INV_saida[21]~25_combout\ <= NOT \ULA|saida[21]~25_combout\;
\MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\ <= NOT \MUX_HEX|saida_MUX[22]~28_combout\;
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\ <= NOT \MUX_HEX|saida_MUX[23]~27_combout\;
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\ULA|ALT_INV_saida[20]~24_combout\ <= NOT \ULA|saida[20]~24_combout\;
\ULA|ALT_INV_saida[19]~23_combout\ <= NOT \ULA|saida[19]~23_combout\;
\MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\ <= NOT \MUX_HEX|saida_MUX[16]~26_combout\;
\MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\ <= NOT \MUX_HEX|saida_MUX[17]~25_combout\;
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\ULA|ALT_INV_saida[17]~22_combout\ <= NOT \ULA|saida[17]~22_combout\;
\MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\ <= NOT \MUX_HEX|saida_MUX[18]~24_combout\;
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\ULA|ALT_INV_saida[18]~21_combout\ <= NOT \ULA|saida[18]~21_combout\;
\MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\ <= NOT \MUX_HEX|saida_MUX[19]~23_combout\;
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\ULA|ALT_INV_saida[16]~20_combout\ <= NOT \ULA|saida[16]~20_combout\;
\ULA|ALT_INV_saida[15]~19_combout\ <= NOT \ULA|saida[15]~19_combout\;
\MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\ <= NOT \MUX_HEX|saida_MUX[12]~22_combout\;
\MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\ <= NOT \MUX_HEX|saida_MUX[13]~21_combout\;
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\ <= NOT \MUX_HEX|saida_MUX[14]~20_combout\;
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\ <= NOT \MUX_HEX|saida_MUX[15]~19_combout\;
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\ULA|ALT_INV_saida[12]~18_combout\ <= NOT \ULA|saida[12]~18_combout\;
\ULA|ALT_INV_saida[11]~17_combout\ <= NOT \ULA|saida[11]~17_combout\;
\MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\ <= NOT \MUX_HEX|saida_MUX[8]~18_combout\;
\MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\ <= NOT \MUX_HEX|saida_MUX[9]~17_combout\;
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\ <= NOT \MUX_HEX|saida_MUX[10]~16_combout\;
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\ <= NOT \MUX_HEX|saida_MUX[11]~15_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA|ALT_INV_saida[8]~16_combout\ <= NOT \ULA|saida[8]~16_combout\;
\ULA|ALT_INV_saida[7]~15_combout\ <= NOT \ULA|saida[7]~15_combout\;
\MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\ <= NOT \MUX_HEX|saida_MUX[4]~14_combout\;
\MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\ <= NOT \MUX_HEX|saida_MUX[5]~13_combout\;
\MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\ <= NOT \MUX_HEX|saida_MUX[6]~12_combout\;
\MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\ <= NOT \MUX_HEX|saida_MUX[7]~11_combout\;
\ULA|ALT_INV_saida[4]~14_combout\ <= NOT \ULA|saida[4]~14_combout\;
\ULA|ALT_INV_saida[2]~13_combout\ <= NOT \ULA|saida[2]~13_combout\;
\DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\ <= NOT \DISP_HEX0|rascSaida7seg[1]~3_combout\;
\MUX_HEX|ALT_INV_saida_MUX[0]~10_combout\ <= NOT \MUX_HEX|saida_MUX[0]~10_combout\;
\DISP_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISP_HEX0|rascSaida7seg[2]~2_combout\;
\MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \MUX_HEX|saida_MUX[3]~9_combout\;
\MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \MUX_HEX|saida_MUX[2]~8_combout\;
\ULA|ALT_INV_saida[1]~12_combout\ <= NOT \ULA|saida[1]~12_combout\;
\ULA|ALT_INV_saida[3]~11_combout\ <= NOT \ULA|saida[3]~11_combout\;
\ULA|ALT_INV_saida[0]~10_combout\ <= NOT \ULA|saida[0]~10_combout\;
\ULA|ULA0|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA0|saida~0_combout\;
\ULA|ALT_INV_saida[0]~9_combout\ <= NOT \ULA|saida[0]~9_combout\;
\ULA|ALT_INV_saida[0]~8_combout\ <= NOT \ULA|saida[0]~8_combout\;
\ULA|ALT_INV_saida[0]~7_combout\ <= NOT \ULA|saida[0]~7_combout\;
\ULA|ALT_INV_saida[0]~6_combout\ <= NOT \ULA|saida[0]~6_combout\;
\ULA|ALT_INV_saida[0]~5_combout\ <= NOT \ULA|saida[0]~5_combout\;
\ULA|ALT_INV_saida[0]~4_combout\ <= NOT \ULA|saida[0]~4_combout\;
\ULA|ULA3|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA3|Carry_Out~combout\;
\ULA|ULA5|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA5|saida~0_combout\;
\ULA|ULA3|ALT_INV_saida~2_combout\ <= NOT \ULA|ULA3|saida~2_combout\;
\ULA|ULA3|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA3|saida~1_combout\;
\ULA|ULA3|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA3|saida~0_combout\;
\ULA|ULA2|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA2|saida~0_combout\;
\ULA|ULA1|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA1|saida~0_combout\;
\ULA|ULA0|ALT_INV_Carry_Out~0_combout\ <= NOT \ULA|ULA0|Carry_Out~0_combout\;
\MUX_ULA|ALT_INV_saida_MUX[1]~10_combout\ <= NOT \MUX_ULA|saida_MUX[1]~10_combout\;
\ULA|ULA1|ALT_INV_signal_B~0_combout\ <= NOT \ULA|ULA1|signal_B~0_combout\;
\ULA|ULA6|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA6|saida~0_combout\;
\ULA|ULA5|ALT_INV_Carry_Out~combout\ <= NOT \ULA|ULA5|Carry_Out~combout\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[20]~DUPLICATE_q\ <= NOT \PC|DOUT[20]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \PC|DOUT[13]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[11]~DUPLICATE_q\ <= NOT \PC|DOUT[11]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \PC|DOUT[31]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC|DOUT[28]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\ <= NOT \UNI_LOG_ULA|ULActrl[0]~2_combout\;
\MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\ <= NOT \MUX_BANCOREG|saida_MUX[31]~32_combout\;
\ULA|ALT_INV_saida[0]~40_combout\ <= NOT \ULA|saida[0]~40_combout\;
\ULA|ALT_INV_saida[0]~39_combout\ <= NOT \ULA|saida[0]~39_combout\;
\ULA|ULA8|ALT_INV_saida~4_combout\ <= NOT \ULA|ULA8|saida~4_combout\;
\ULA|ULA8|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA8|saida~3_combout\;
\ULA|ULA11|ALT_INV_saida~3_combout\ <= NOT \ULA|ULA11|saida~3_combout\;
\ULA|ULA12|ALT_INV_Carry_Out~0_combout\ <= NOT \ULA|ULA12|Carry_Out~0_combout\;
\ULA|ULA11|ALT_INV_Carry_Out~0_combout\ <= NOT \ULA|ULA11|Carry_Out~0_combout\;
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
\MUX_BANCOREG|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \MUX_BANCOREG|saida_MUX[1]~0_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ULA|ULA23|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA23|saida~1_combout\;
\ULA|ULA27|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA27|saida~1_combout\;
\ULA|ULA26|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA26|saida~1_combout\;
\ULA|ULA29|ALT_INV_saida~1_combout\ <= NOT \ULA|ULA29|saida~1_combout\;
\UNI_LOG|ALT_INV_saida[9]~0_combout\ <= NOT \UNI_LOG|saida[9]~0_combout\;
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

-- Location: IOOBUF_X54_Y20_N39
\ula_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(0));

-- Location: IOOBUF_X54_Y18_N45
\ula_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~12_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(1));

-- Location: IOOBUF_X19_Y0_N36
\ula_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~13_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(2));

-- Location: IOOBUF_X46_Y45_N59
\ula_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(3));

-- Location: IOOBUF_X23_Y0_N59
\ula_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(4));

-- Location: IOOBUF_X23_Y0_N42
\ula_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~27_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(5));

-- Location: IOOBUF_X34_Y45_N19
\ula_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~28_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(6));

-- Location: IOOBUF_X25_Y0_N53
\ula_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~15_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(7));

-- Location: IOOBUF_X34_Y45_N36
\ula_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[8]~16_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(8));

-- Location: IOOBUF_X54_Y19_N56
\ula_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~29_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(9));

-- Location: IOOBUF_X16_Y0_N93
\ula_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~30_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(10));

-- Location: IOOBUF_X24_Y0_N19
\ula_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~17_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(11));

-- Location: IOOBUF_X18_Y0_N19
\ula_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[12]~18_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(12));

-- Location: IOOBUF_X54_Y16_N22
\ula_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~31_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(13));

-- Location: IOOBUF_X54_Y15_N22
\ula_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~32_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(14));

-- Location: IOOBUF_X54_Y16_N5
\ula_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~19_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(15));

-- Location: IOOBUF_X54_Y15_N5
\ula_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[16]~20_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(16));

-- Location: IOOBUF_X48_Y45_N2
\ula_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~22_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(17));

-- Location: IOOBUF_X44_Y45_N19
\ula_teste[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~21_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(18));

-- Location: IOOBUF_X54_Y19_N22
\ula_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~23_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(19));

-- Location: IOOBUF_X12_Y0_N19
\ula_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida[20]~24_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(20));

-- Location: IOOBUF_X54_Y14_N79
\ula_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~25_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(21));

-- Location: IOOBUF_X48_Y45_N36
\ula_teste[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~33_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(22));

-- Location: IOOBUF_X42_Y45_N19
\ula_teste[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~26_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(23));

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X42_Y45_N36
\ula_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~34_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(25));

-- Location: IOOBUF_X38_Y45_N36
\ula_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~35_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(26));

-- Location: IOOBUF_X24_Y0_N2
\ula_teste[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(27));

-- Location: IOOBUF_X54_Y20_N22
\ula_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~36_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(28));

-- Location: IOOBUF_X54_Y16_N39
\ula_teste[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~37_combout\,
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
	i => \ULA|saida[30]~2_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(30));

-- Location: IOOBUF_X54_Y18_N96
\ula_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~38_combout\,
	devoe => ww_devoe,
	o => ww_ula_teste(31));

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X54_Y18_N62
\instrucao_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(1));

-- Location: IOOBUF_X44_Y45_N2
\instrucao_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(2));

-- Location: IOOBUF_X42_Y45_N53
\instrucao_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(3));

-- Location: IOOBUF_X22_Y45_N19
\instrucao_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(4));

-- Location: IOOBUF_X20_Y45_N19
\instrucao_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(5));

-- Location: IOOBUF_X14_Y45_N2
\instrucao_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(6));

-- Location: IOOBUF_X12_Y45_N36
\instrucao_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(7));

-- Location: IOOBUF_X16_Y0_N76
\instrucao_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(8));

-- Location: IOOBUF_X12_Y0_N53
\instrucao_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(9));

-- Location: IOOBUF_X14_Y45_N53
\instrucao_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(10));

-- Location: IOOBUF_X10_Y45_N2
\instrucao_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(11));

-- Location: IOOBUF_X48_Y45_N19
\instrucao_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(12));

-- Location: IOOBUF_X46_Y45_N76
\instrucao_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(13));

-- Location: IOOBUF_X38_Y45_N19
\instrucao_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(14));

-- Location: IOOBUF_X18_Y45_N53
\instrucao_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(15));

-- Location: IOOBUF_X38_Y0_N2
\instrucao_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(16));

-- Location: IOOBUF_X40_Y45_N42
\instrucao_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(17));

-- Location: IOOBUF_X54_Y21_N39
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

-- Location: IOOBUF_X29_Y0_N53
\instrucao_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(19));

-- Location: IOOBUF_X52_Y45_N53
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X40_Y45_N76
\instrucao_teste[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(24));

-- Location: IOOBUF_X52_Y45_N19
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

-- Location: IOOBUF_X18_Y0_N36
\instrucao_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(26));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X10_Y0_N59
\instrucao_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(28));

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X18_Y0_N53
\instrucao_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_instrucao_teste(31));

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X16_Y0_N42
\pc_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(4));

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N36
\pc_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(6));

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X34_Y45_N2
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X43_Y45_N53
\pc_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(13));

-- Location: IOOBUF_X50_Y45_N19
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

-- Location: IOOBUF_X16_Y0_N59
\pc_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_pc_teste(15));

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X46_Y45_N93
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X23_Y0_N76
\pc_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[20]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(20));

-- Location: IOOBUF_X19_Y0_N2
\pc_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[21]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(21));

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y21_N5
\pc_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_pc_teste(25));

-- Location: IOOBUF_X42_Y45_N2
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

-- Location: IOOBUF_X54_Y21_N22
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

-- Location: IOOBUF_X12_Y0_N36
\pc_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[28]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(28));

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X40_Y45_N93
\pc_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[31]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_teste(31));

-- Location: IOOBUF_X36_Y45_N36
\imediato_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(0));

-- Location: IOOBUF_X54_Y18_N79
\imediato_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(1));

-- Location: IOOBUF_X44_Y45_N36
\imediato_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(2));

-- Location: IOOBUF_X43_Y45_N36
\imediato_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(3));

-- Location: IOOBUF_X34_Y45_N53
\imediato_teste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(4));

-- Location: IOOBUF_X20_Y45_N53
\imediato_teste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(5));

-- Location: IOOBUF_X14_Y45_N36
\imediato_teste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(6));

-- Location: IOOBUF_X12_Y45_N2
\imediato_teste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(7));

-- Location: IOOBUF_X36_Y45_N19
\imediato_teste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(8));

-- Location: IOOBUF_X10_Y45_N53
\imediato_teste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(9));

-- Location: IOOBUF_X18_Y45_N2
\imediato_teste[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(10));

-- Location: IOOBUF_X8_Y45_N42
\imediato_teste[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(11));

-- Location: IOOBUF_X18_Y45_N19
\imediato_teste[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(12));

-- Location: IOOBUF_X20_Y45_N36
\imediato_teste[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(13));

-- Location: IOOBUF_X38_Y45_N2
\imediato_teste[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(14));

-- Location: IOOBUF_X43_Y45_N2
\imediato_teste[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(15));

-- Location: IOOBUF_X19_Y0_N53
\imediato_teste[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(16));

-- Location: IOOBUF_X12_Y45_N53
\imediato_teste[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(17));

-- Location: IOOBUF_X50_Y45_N53
\imediato_teste[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(18));

-- Location: IOOBUF_X22_Y45_N53
\imediato_teste[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(19));

-- Location: IOOBUF_X10_Y0_N76
\imediato_teste[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(20));

-- Location: IOOBUF_X54_Y20_N5
\imediato_teste[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(21));

-- Location: IOOBUF_X54_Y20_N56
\imediato_teste[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(22));

-- Location: IOOBUF_X8_Y45_N59
\imediato_teste[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(23));

-- Location: IOOBUF_X11_Y0_N19
\imediato_teste[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(24));

-- Location: IOOBUF_X8_Y45_N93
\imediato_teste[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(25));

-- Location: IOOBUF_X11_Y0_N2
\imediato_teste[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(26));

-- Location: IOOBUF_X12_Y0_N2
\imediato_teste[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(27));

-- Location: IOOBUF_X40_Y45_N59
\imediato_teste[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(28));

-- Location: IOOBUF_X22_Y45_N2
\imediato_teste[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(29));

-- Location: IOOBUF_X50_Y45_N2
\imediato_teste[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(30));

-- Location: IOOBUF_X43_Y45_N19
\imediato_teste[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_imediato_teste(31));

-- Location: IOOBUF_X25_Y0_N19
\ULA_ctrl_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UNI_LOG_ULA|ULActrl[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_ULA_ctrl_teste(0));

-- Location: IOOBUF_X25_Y0_N2
\ULA_ctrl_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UNI_LOG_ULA|ULActrl[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_ULA_ctrl_teste(1));

-- Location: IOOBUF_X23_Y0_N93
\ULA_ctrl_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|B_invertido~0_combout\,
	devoe => ww_devoe,
	o => ww_ULA_ctrl_teste(2));

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

-- Location: FF_X43_Y4_N11
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

-- Location: FF_X43_Y4_N13
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

-- Location: FF_X42_Y6_N41
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X40_Y6_N0
\somaConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somaConstante|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somaConstante|Add0~5_sumout\,
	cout => \somaConstante|Add0~6\);

-- Location: LABCELL_X40_Y6_N3
\somaConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaConstante|Add0~6\ ))
-- \somaConstante|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaConstante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	cin => \somaConstante|Add0~6\,
	sumout => \somaConstante|Add0~1_sumout\,
	cout => \somaConstante|Add0~2\);

-- Location: LABCELL_X40_Y6_N6
\somaConstante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~9_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))
-- \somaConstante|Add0~10\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \somaConstante|Add0~2\,
	sumout => \somaConstante|Add0~9_sumout\,
	cout => \somaConstante|Add0~10\);

-- Location: FF_X43_Y4_N7
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

-- Location: FF_X43_Y4_N16
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

-- Location: FF_X43_Y4_N56
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y5_N54
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT\(2) & !\PC|DOUT\(5)) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT\(4) & (!\PC|DOUT\(2) & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X44_Y5_N12
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[4]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000000000000000000001100001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X41_Y5_N0
\Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~118_cout\ = CARRY(( \somaConstante|Add0~5_sumout\ ) + ( \ROM|memROM~7_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \somaConstante|ALT_INV_Add0~5_sumout\,
	cin => GND,
	cout => \Add0~118_cout\);

-- Location: LABCELL_X41_Y5_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~1_combout\)) ) + ( \somaConstante|Add0~1_sumout\ ) + ( \Add0~118_cout\ ))
-- \Add0~2\ = CARRY(( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~1_combout\)) ) + ( \somaConstante|Add0~1_sumout\ ) + ( \Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \somaConstante|ALT_INV_Add0~1_sumout\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	cin => \Add0~118_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X41_Y5_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\)) ) + ( \somaConstante|Add0~9_sumout\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~5_combout\)) ) + ( \somaConstante|Add0~9_sumout\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \somaConstante|ALT_INV_Add0~9_sumout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X43_Y4_N51
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[5]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( 
-- (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[5]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(3) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[5]~DUPLICATE_q\ & 
-- !\PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X43_Y4_N6
\MUX_PROXPC|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[4]~2_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~5_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~9_combout\))) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~9_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \somaConstante|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[4]~2_combout\);

-- Location: FF_X43_Y4_N8
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

-- Location: MLABCELL_X42_Y6_N21
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~7_combout\);

-- Location: MLABCELL_X42_Y6_N39
\MUX_PROXPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[2]~1_combout\ = ( \ROM|memROM~7_combout\ & ( \comb~8_combout\ & ( \UNI_LOG|saida[9]~0_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\comb~8_combout\ & ( (\UNI_LOG|saida[9]~0_combout\) # (\somaConstante|Add0~5_sumout\) ) ) ) # ( 
-- !\ROM|memROM~7_combout\ & ( !\comb~8_combout\ & ( (\somaConstante|Add0~5_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~5_sumout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[2]~1_combout\);

-- Location: FF_X42_Y6_N40
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y5_N0
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT\(4) & ( (((!\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(6))) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT\(4) & ( 
-- (((!\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(6))) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT\(4) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT\(4) & ( ((\PC|DOUT\(6)) # 
-- (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X40_Y6_N9
\somaConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~13_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~10\ ))
-- \somaConstante|Add0~14\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \somaConstante|Add0~10\,
	sumout => \somaConstante|Add0~13_sumout\,
	cout => \somaConstante|Add0~14\);

-- Location: LABCELL_X44_Y5_N54
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( \PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[4]~DUPLICATE_q\ ) ) # ( 
-- !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[4]~DUPLICATE_q\ & ( \PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X41_Y5_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \somaConstante|Add0~13_sumout\ ) + ( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & !\ROM|memROM~3_combout\)) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \somaConstante|Add0~13_sumout\ ) + ( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & !\ROM|memROM~3_combout\)) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \somaConstante|ALT_INV_Add0~13_sumout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X43_Y4_N15
\MUX_PROXPC|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[5]~3_combout\ = ( \Add0~9_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\somaConstante|Add0~13_sumout\)) # (\comb~8_combout\))) # (\UNI_LOG|saida[9]~0_combout\ & (((!\ROM|memROM~4_combout\)))) ) ) # ( !\Add0~9_sumout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & (!\comb~8_combout\ & ((\somaConstante|Add0~13_sumout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (((!\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111000001100001011100001110100111111000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \somaConstante|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \MUX_PROXPC|saida_MUX[5]~3_combout\);

-- Location: FF_X43_Y4_N17
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

-- Location: MLABCELL_X42_Y6_N24
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT[4]~DUPLICATE_q\ & ((!\PC|DOUT[5]~DUPLICATE_q\) # (!\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X44_Y5_N6
\UNI_LOG_ULA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal0~0_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & \PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(2) & ( (\PC|DOUT\(3) & 
-- (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \UNI_LOG_ULA|Equal0~0_combout\);

-- Location: LABCELL_X43_Y5_N57
\UNI_LOG_ULA|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal0~1_combout\ = ( \ROM|memROM~2_combout\ & ( \UNI_LOG_ULA|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \UNI_LOG_ULA|Equal0~1_combout\);

-- Location: MLABCELL_X42_Y6_N12
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & (\PC|DOUT\(2) & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X42_Y6_N6
\UNI_LOG_ULA|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|Equal4~0_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \UNI_LOG_ULA|Equal4~0_combout\);

-- Location: LABCELL_X43_Y5_N51
\UNI_LOG_ULA|ULActrl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|ULActrl~1_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ ) ) ) # ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~2_combout\ & ( (!\UNI_LOG|Equal4~0_combout\ & !\ROM|memROM~8_combout\) ) ) ) # ( 
-- \ROM|memROM~0_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~4_combout\) # (!\UNI_LOG_ULA|Equal0~0_combout\))) ) ) ) # ( !\ROM|memROM~0_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\UNI_LOG|Equal4~0_combout\ & 
-- (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~4_combout\) # (!\UNI_LOG_ULA|Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000111100001010000011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \UNI_LOG|ALT_INV_Equal4~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \UNI_LOG_ULA|ULActrl~1_combout\);

-- Location: LABCELL_X43_Y5_N42
\ULA|ULA24|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|Equal1~0_combout\ = ( \UNI_LOG_ULA|ULActrl~1_combout\ & ( (!\UNI_LOG_ULA|Equal0~1_combout\ & (\UNI_LOG_ULA|Equal4~0_combout\ & ((!\ROM|memROM~0_combout\) # (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\,
	combout => \ULA|ULA24|Equal1~0_combout\);

-- Location: LABCELL_X43_Y4_N30
\BancoRegistradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|Equal0~0_combout\ = ( \PC|DOUT\(7) ) # ( !\PC|DOUT\(7) & ( (\PC|DOUT\(6)) # (\PC|DOUT[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BancoRegistradores|Equal0~0_combout\);

-- Location: LABCELL_X43_Y4_N45
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( (!\PC|DOUT\(7) & !\PC|DOUT[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X43_Y4_N33
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(7) & !\PC|DOUT\(6))) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X43_Y4_N21
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \PC|DOUT\(6) & ( \PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\PC|DOUT\(6) & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\) # (((!\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT\(7))) ) ) ) # ( \PC|DOUT\(6) 
-- & ( !\PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\PC|DOUT\(6) & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT\(7))) # (\PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: MLABCELL_X42_Y6_N51
\MUX_BANCOREG|saida_MUX[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[31]~32_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \MUX_BANCOREG|saida_MUX[31]~32_combout\);

-- Location: MLABCELL_X42_Y4_N21
\MUX_BANCOREG|saida_MUX[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[30]~30_combout\ = ( \ULA|ULA30|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA30|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[30]~30_combout\);

-- Location: MLABCELL_X42_Y2_N57
\BancoRegistradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1075_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM|memROM~10_combout\ & (!\ROM|memROM~0_combout\ & (!\ROM|memROM~11_combout\ $ (\ROM|memROM~8_combout\)))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\ROM|memROM~11_combout\ & 
-- (\ROM|memROM~10_combout\ & (!\ROM|memROM~8_combout\ & !\ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100001000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BancoRegistradores|registrador~1075_combout\);

-- Location: FF_X41_Y3_N20
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~324_q\);

-- Location: MLABCELL_X45_Y3_N24
\BancoRegistradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1076_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~8_combout\ & (\PC|DOUT\(2) & !\ROM|memROM~10_combout\)) ) ) ) # ( !\ROM|memROM~0_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- (!\ROM|memROM~8_combout\ & !\ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \BancoRegistradores|registrador~1076_combout\);

-- Location: FF_X42_Y4_N22
\BancoRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[30]~30_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~68_q\);

-- Location: LABCELL_X41_Y3_N18
\BancoRegistradores|saidaB[30]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[30]~21_combout\ = ( \BancoRegistradores|registrador~324_q\ & ( \BancoRegistradores|registrador~68_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~324_q\ & ( \BancoRegistradores|registrador~68_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~324_q\ & ( !\BancoRegistradores|registrador~68_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000100000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~324_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~68_q\,
	combout => \BancoRegistradores|saidaB[30]~21_combout\);

-- Location: MLABCELL_X42_Y4_N6
\ULA|ULA30|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|signal_B~0_combout\ = ( \BancoRegistradores|saidaB[30]~21_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BancoRegistradores|saidaB[30]~21_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[30]~21_combout\,
	combout => \ULA|ULA30|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y4_N48
\MUX_ULA|saida_MUX[30]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[30]~8_combout\ = ( \BancoRegistradores|saidaB[30]~21_combout\ & ( !\ROM|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[30]~21_combout\,
	combout => \MUX_ULA|saida_MUX[30]~8_combout\);

-- Location: LABCELL_X43_Y5_N45
\ULA|ULA24|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|Equal2~0_combout\ = ( \UNI_LOG_ULA|ULActrl~1_combout\ & ( (!\UNI_LOG_ULA|Equal0~1_combout\ & (!\UNI_LOG_ULA|Equal4~0_combout\ & ((!\ROM|memROM~0_combout\) # (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000010000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_Equal0~1_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_Equal4~0_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl~1_combout\,
	combout => \ULA|ULA24|Equal2~0_combout\);

-- Location: MLABCELL_X42_Y6_N3
\UNI_LOG_ULA|ULActrl[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|ULActrl[0]~2_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \UNI_LOG_ULA|ULActrl[0]~2_combout\);

-- Location: LABCELL_X43_Y3_N6
\UNI_LOG_ULA|ULActrl[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\ = ( \UNI_LOG_ULA|Equal0~0_combout\ & ( \ROM|memROM~0_combout\ ) ) # ( !\UNI_LOG_ULA|Equal0~0_combout\ & ( \ROM|memROM~0_combout\ ) ) # ( \UNI_LOG_ULA|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ & ( 
-- (((\ROM|memROM~4_combout\) # (\ROM|memROM~8_combout\)) # (\UNI_LOG|Equal4~0_combout\)) # (\ROM|memROM~2_combout\) ) ) ) # ( !\UNI_LOG_ULA|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~8_combout\) # (\UNI_LOG|Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG|ALT_INV_Equal4~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \UNI_LOG_ULA|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \UNI_LOG_ULA|ULActrl[1]~0_combout\);

-- Location: MLABCELL_X45_Y4_N33
\ULA|ULA28|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|saida~0_combout\ = ( \UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (\BancoRegistradores|saidaB[28]~19_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( !\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( 
-- !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[28]~19_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[28]~19_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datae => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \ULA|ULA28|saida~0_combout\);

-- Location: LABCELL_X44_Y5_N33
\ULA|ULA24|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~0_combout\ = ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \ULA|ULA24|saida~0_combout\);

-- Location: LABCELL_X41_Y3_N6
\ULA|ULA28|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|AxorB~combout\ = ( \BancoRegistradores|saidaB[28]~19_combout\ & ( !\ROM|memROM~11_combout\ $ (!\ROM|memROM~2_combout\) ) ) # ( !\BancoRegistradores|saidaB[28]~19_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[28]~19_combout\,
	combout => \ULA|ULA28|AxorB~combout\);

-- Location: LABCELL_X40_Y4_N3
\MUX_ULA|saida_MUX[27]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[27]~7_combout\ = ( \BancoRegistradores|saidaB[27]~18_combout\ & ( !\ROM|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[27]~18_combout\,
	combout => \MUX_ULA|saida_MUX[27]~7_combout\);

-- Location: MLABCELL_X42_Y4_N39
\ULA|ULA27|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|saida~0_combout\ = ( \ULA|ULA27|signal_B~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (\ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA24|Equal2~0_combout\ & ((\MUX_ULA|saida_MUX[27]~7_combout\))) ) ) # ( !\ULA|ULA27|signal_B~0_combout\ & ( 
-- (\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & \MUX_ULA|saida_MUX[27]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[27]~7_combout\,
	dataf => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA27|saida~0_combout\);

-- Location: LABCELL_X40_Y4_N36
\ULA|ULA27|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|AxorB~combout\ = ( \MUX_ULA|saida_MUX[27]~7_combout\ & ( !\ULA|ULA27|signal_B~0_combout\ ) ) # ( !\MUX_ULA|saida_MUX[27]~7_combout\ & ( \ULA|ULA27|signal_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[27]~7_combout\,
	combout => \ULA|ULA27|AxorB~combout\);

-- Location: LABCELL_X41_Y3_N36
\ULA|ULA26|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|saida~0_combout\ = ( \BancoRegistradores|saidaB[26]~17_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[26]~17_combout\,
	combout => \ULA|ULA26|saida~0_combout\);

-- Location: MLABCELL_X42_Y2_N3
\ULA|ULA25|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|AxorB~combout\ = ( \BancoRegistradores|saidaB[25]~16_combout\ & ( !\ROM|memROM~11_combout\ $ (!\ROM|memROM~2_combout\) ) ) # ( !\BancoRegistradores|saidaB[25]~16_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[25]~16_combout\,
	combout => \ULA|ULA25|AxorB~combout\);

-- Location: LABCELL_X43_Y2_N6
\ULA|ULA24|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|signal_B~0_combout\ = ( \BancoRegistradores|saidaB[24]~15_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BancoRegistradores|saidaB[24]~15_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\,
	combout => \ULA|ULA24|signal_B~0_combout\);

-- Location: LABCELL_X43_Y2_N15
\ULA|ULA23|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|saida~0_combout\ = ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( \UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( (\BancoRegistradores|saidaB[23]~14_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( 
-- !\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[23]~14_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[23]~14_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	combout => \ULA|ULA23|saida~0_combout\);

-- Location: LABCELL_X44_Y3_N33
\MUX_ULA|saida_MUX[13]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[13]~4_combout\ = ( \BancoRegistradores|registrador~1071_combout\ & ( (!\ROM|memROM~11_combout\ & !\BancoRegistradores|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1071_combout\,
	combout => \MUX_ULA|saida_MUX[13]~4_combout\);

-- Location: LABCELL_X43_Y3_N39
\ULA|ULA8|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~4_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( ((\ROM|memROM~2_combout\ & !\ROM|memROM~11_combout\)) # (\BancoRegistradores|saidaB[8]~1_combout\) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( (\ROM|memROM~11_combout\ & 
-- \BancoRegistradores|saidaB[8]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA8|saida~4_combout\);

-- Location: LABCELL_X43_Y5_N30
\ULA|ULA3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|saida~0_combout\ = ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~4_combout\ & ((!\BancoRegistradores|registrador~1065_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) ) # ( !\ROM|memROM~2_combout\ & ( 
-- (!\BancoRegistradores|Equal0~0_combout\ & (\BancoRegistradores|registrador~1065_combout\ & ((!\ROM|memROM~11_combout\) # (!\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010000000001101000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|ULA3|saida~0_combout\);

-- Location: LABCELL_X39_Y3_N36
\ULA|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal5~0_combout\ = ( \UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( \UNI_LOG_ULA|ULActrl[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	combout => \ULA|Equal5~0_combout\);

-- Location: LABCELL_X41_Y3_N30
\ULA|ULA0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|saida~0_combout\ = ( !\BancoRegistradores|Equal0~0_combout\ & ( \UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (\BancoRegistradores|registrador~1063_combout\ & \ROM|memROM~11_combout\) ) ) ) # ( !\BancoRegistradores|Equal0~0_combout\ & ( 
-- !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (\BancoRegistradores|registrador~1063_combout\ & (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \ULA|ULA0|saida~0_combout\);

-- Location: LABCELL_X47_Y4_N12
\MUX_BANCOREG|saida_MUX[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[31]~31_combout\ = ( !\ULA|ULA31|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA31|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[31]~31_combout\);

-- Location: LABCELL_X47_Y4_N30
\BancoRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1092_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~31_combout\,
	combout => \BancoRegistradores|registrador~1092_combout\);

-- Location: FF_X47_Y4_N32
\BancoRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1092_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~69_q\);

-- Location: FF_X47_Y4_N13
\BancoRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[31]~31_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~325_q\);

-- Location: LABCELL_X40_Y4_N48
\BancoRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1074_combout\ = ( \BancoRegistradores|registrador~325_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & ((!\BancoRegistradores|registrador~69_q\) # (\ROM|memROM~12_combout\)))) ) ) # ( 
-- !\BancoRegistradores|registrador~325_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & !\BancoRegistradores|registrador~69_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~69_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~325_q\,
	combout => \BancoRegistradores|registrador~1074_combout\);

-- Location: LABCELL_X41_Y3_N0
\ULA|ULA31|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|soma~0_combout\ = ( \BancoRegistradores|registrador~1074_combout\ & ( !\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\) # (\BancoRegistradores|Equal0~0_combout\))) ) ) # ( !\BancoRegistradores|registrador~1074_combout\ & ( 
-- \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \ULA|ULA31|soma~0_combout\);

-- Location: MLABCELL_X42_Y4_N45
\ULA|ULA31|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~0_combout\ = ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~2_combout\ & ( (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1074_combout\))) 
-- ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1074_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1074_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|ULA31|saida~0_combout\);

-- Location: MLABCELL_X45_Y4_N54
\ULA|ULA31|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|saida~1_combout\ = ( \ULA|ULA24|saida~0_combout\ & ( \ULA|ULA29|Carry_Out~combout\ & ( (!\ULA|ULA31|saida~0_combout\ & (!\ULA|ULA31|soma~0_combout\ $ (((\ULA|ULA30|signal_B~0_combout\) # (\MUX_ULA|saida_MUX[30]~8_combout\))))) ) ) ) # ( 
-- !\ULA|ULA24|saida~0_combout\ & ( \ULA|ULA29|Carry_Out~combout\ & ( !\ULA|ULA31|saida~0_combout\ ) ) ) # ( \ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA29|Carry_Out~combout\ & ( (!\ULA|ULA31|saida~0_combout\ & (!\ULA|ULA31|soma~0_combout\ $ 
-- (((\MUX_ULA|saida_MUX[30]~8_combout\ & \ULA|ULA30|signal_B~0_combout\))))) ) ) ) # ( !\ULA|ULA24|saida~0_combout\ & ( !\ULA|ULA29|Carry_Out~combout\ & ( !\ULA|ULA31|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001001000011110000111100001001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[30]~8_combout\,
	datab => \ULA|ULA31|ALT_INV_soma~0_combout\,
	datac => \ULA|ULA31|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA30|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA31|saida~1_combout\);

-- Location: MLABCELL_X45_Y4_N0
\ULA|ULA29|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|soma~combout\ = ( \BancoRegistradores|saidaB[27]~18_combout\ & ( \ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[28]~19_combout\ & ((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & 
-- (!\BancoRegistradores|saidaB[29]~20_combout\ $ (((!\BancoRegistradores|saidaB[28]~19_combout\ & !\ROM|memROM~2_combout\))))) ) ) ) # ( !\BancoRegistradores|saidaB[27]~18_combout\ & ( \ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (\BancoRegistradores|saidaB[28]~19_combout\ & ((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[29]~20_combout\ $ (((!\BancoRegistradores|saidaB[28]~19_combout\) # (!\ROM|memROM~2_combout\))))) ) ) ) # ( 
-- \BancoRegistradores|saidaB[27]~18_combout\ & ( !\ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (((\ROM|memROM~2_combout\)) # (\BancoRegistradores|saidaB[28]~19_combout\))) # (\ROM|memROM~11_combout\ & 
-- ((!\BancoRegistradores|saidaB[29]~20_combout\ $ (!\ROM|memROM~2_combout\)))) ) ) ) # ( !\BancoRegistradores|saidaB[27]~18_combout\ & ( !\ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (((\ROM|memROM~2_combout\)) # 
-- (\BancoRegistradores|saidaB[28]~19_combout\))) # (\ROM|memROM~11_combout\ & ((!\BancoRegistradores|saidaB[29]~20_combout\ $ (!\ROM|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011111111010001001111111101000100111000101000011011001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[28]~19_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[29]~20_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[27]~18_combout\,
	dataf => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA29|soma~combout\);

-- Location: LABCELL_X41_Y4_N57
\ULA|ULA29|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~1_combout\ = ( \ULA|ULA29|soma~combout\ & ( (!\ULA|ULA24|saida~0_combout\ & !\ULA|ULA29|saida~0_combout\) ) ) # ( !\ULA|ULA29|soma~combout\ & ( !\ULA|ULA29|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA29|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_soma~combout\,
	combout => \ULA|ULA29|saida~1_combout\);

-- Location: LABCELL_X40_Y4_N21
\MUX_BANCOREG|saida_MUX[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[29]~29_combout\ = ( !\ULA|ULA29|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA29|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[29]~29_combout\);

-- Location: LABCELL_X40_Y4_N30
\BancoRegistradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1091_combout\ = !\MUX_BANCOREG|saida_MUX[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[29]~29_combout\,
	combout => \BancoRegistradores|registrador~1091_combout\);

-- Location: FF_X40_Y4_N32
\BancoRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1091_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~67_q\);

-- Location: FF_X40_Y4_N38
\BancoRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[29]~29_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~323_q\);

-- Location: LABCELL_X40_Y4_N15
\BancoRegistradores|saidaB[29]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[29]~20_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~323_q\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & !\BancoRegistradores|registrador~67_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[29]~20_combout\);

-- Location: MLABCELL_X45_Y4_N9
\ULA|ULA29|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|saida~0_combout\ = ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[29]~20_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001100000000001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[29]~20_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \ULA|ULA29|saida~0_combout\);

-- Location: MLABCELL_X42_Y4_N0
\ULA|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~3_combout\ = ( \ULA|ULA26|Carry_Out~combout\ & ( \ULA|ULA26|soma~combout\ & ( (!\ULA|ULA27|saida~0_combout\ & (!\ULA|ULA27|AxorB~combout\ & ((\ULA|ULA24|saida~0_combout\)))) # (\ULA|ULA27|saida~0_combout\ & (((\ULA|ULA24|saida~0_combout\) # 
-- (\ULA|ULA26|saida~0_combout\)))) ) ) ) # ( !\ULA|ULA26|Carry_Out~combout\ & ( \ULA|ULA26|soma~combout\ & ( (!\ULA|ULA27|saida~0_combout\ & (\ULA|ULA27|AxorB~combout\ & ((\ULA|ULA24|saida~0_combout\)))) # (\ULA|ULA27|saida~0_combout\ & 
-- (((\ULA|ULA24|saida~0_combout\) # (\ULA|ULA26|saida~0_combout\)))) ) ) ) # ( \ULA|ULA26|Carry_Out~combout\ & ( !\ULA|ULA26|soma~combout\ & ( (\ULA|ULA26|saida~0_combout\ & (((!\ULA|ULA27|AxorB~combout\ & \ULA|ULA24|saida~0_combout\)) # 
-- (\ULA|ULA27|saida~0_combout\))) ) ) ) # ( !\ULA|ULA26|Carry_Out~combout\ & ( !\ULA|ULA26|soma~combout\ & ( (\ULA|ULA26|saida~0_combout\ & (((\ULA|ULA27|AxorB~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA27|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000101100000011011101110000001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA27|ALT_INV_AxorB~combout\,
	datab => \ULA|ULA27|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA26|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	dataf => \ULA|ULA26|ALT_INV_soma~combout\,
	combout => \ULA|saida[0]~3_combout\);

-- Location: MLABCELL_X45_Y3_N30
\MUX_BANCOREG|saida_MUX[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[22]~22_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA22|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA22|ALT_INV_saida~2_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[22]~22_combout\);

-- Location: FF_X45_Y3_N47
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~316_q\);

-- Location: FF_X45_Y3_N31
\BancoRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[22]~22_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~60_q\);

-- Location: MLABCELL_X45_Y3_N45
\BancoRegistradores|saidaB[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[22]~13_combout\ = ( \BancoRegistradores|registrador~316_q\ & ( \BancoRegistradores|registrador~60_q\ & ( (\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~316_q\ & ( \BancoRegistradores|registrador~60_q\ & ( (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|Equal0~0_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~316_q\ & ( !\BancoRegistradores|registrador~60_q\ & ( (\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000001000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~316_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~60_q\,
	combout => \BancoRegistradores|saidaB[22]~13_combout\);

-- Location: MLABCELL_X45_Y3_N51
\ULA|ULA22|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~0_combout\ = ( !\ROM|memROM~11_combout\ & ( (\BancoRegistradores|saidaB[22]~13_combout\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaB[22]~13_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ULA|ULA22|saida~0_combout\);

-- Location: MLABCELL_X45_Y3_N6
\ULA|ULA22|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~1_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (((!\ULA|ULA24|Equal1~0_combout\)))) # (\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[22]~13_combout\ $ 
-- (((\ULA|ULA24|Equal1~0_combout\) # (\BancoRegistradores|saidaB[21]~12_combout\))))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\BancoRegistradores|saidaB[21]~12_combout\ $ 
-- (((\BancoRegistradores|saidaB[22]~13_combout\ & \ROM|memROM~11_combout\))))) # (\ULA|ULA24|Equal1~0_combout\ & (((!\BancoRegistradores|saidaB[22]~13_combout\)))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( 
-- (\BancoRegistradores|saidaB[22]~13_combout\ & \ROM|memROM~11_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & ((!\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[21]~12_combout\)) # 
-- (\ROM|memROM~11_combout\ & ((!\BancoRegistradores|saidaB[22]~13_combout\))))) # (\ULA|ULA24|Equal1~0_combout\ & (((!\BancoRegistradores|saidaB[22]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011001100000000000011001110101100100111001111000010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[22]~13_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA22|saida~1_combout\);

-- Location: MLABCELL_X45_Y3_N0
\ULA|ULA22|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|saida~2_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA22|saida~1_combout\ & ( \ULA|ULA22|saida~0_combout\ ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA22|saida~1_combout\ & ( \ULA|ULA22|saida~0_combout\ ) ) ) # ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA22|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA22|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA22|saida~2_combout\);

-- Location: LABCELL_X43_Y2_N30
\ULA|ULA19|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|saida~0_combout\ = ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[19]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[19]~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ULA|ULA19|saida~0_combout\);

-- Location: LABCELL_X43_Y3_N12
\ULA|ULA19|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|saida~1_combout\ = ( \BancoRegistradores|saidaB[19]~10_combout\ & ( \ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (!\ULA|ULA24|Equal1~0_combout\ & ((!\BancoRegistradores|saidaB[18]~9_combout\) # (\ROM|memROM~2_combout\)))) # 
-- (\ROM|memROM~11_combout\ & ((!\ULA|ULA24|Equal1~0_combout\ & (\BancoRegistradores|saidaB[18]~9_combout\)) # (\ULA|ULA24|Equal1~0_combout\ & ((\ROM|memROM~2_combout\))))) ) ) ) # ( !\BancoRegistradores|saidaB[19]~10_combout\ & ( 
-- \ULA|ULA17|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & ((!\BancoRegistradores|saidaB[18]~9_combout\) # ((\ROM|memROM~2_combout\ & !\ROM|memROM~11_combout\)))) # (\ULA|ULA24|Equal1~0_combout\ & (((!\ROM|memROM~2_combout\)))) ) ) ) # ( 
-- \BancoRegistradores|saidaB[19]~10_combout\ & ( !\ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[18]~9_combout\ & (!\ROM|memROM~11_combout\ & !\ULA|ULA24|Equal1~0_combout\))) # (\ROM|memROM~2_combout\ & 
-- (((\ROM|memROM~11_combout\)))) ) ) ) # ( !\BancoRegistradores|saidaB[19]~10_combout\ & ( !\ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & ((!\BancoRegistradores|saidaB[18]~9_combout\) # ((\ULA|ULA24|Equal1~0_combout\) # 
-- (\ROM|memROM~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100100000110000001110111010110011001011010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[19]~10_combout\,
	dataf => \ULA|ULA17|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA19|saida~1_combout\);

-- Location: MLABCELL_X42_Y3_N18
\ULA|ULA19|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|saida~2_combout\ = ( \ULA|ULA19|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA19|saida~0_combout\) ) ) # ( !\ULA|ULA19|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA19|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA19|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA19|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA19|saida~2_combout\);

-- Location: LABCELL_X39_Y4_N36
\MUX_BANCOREG|saida_MUX[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[19]~19_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & \ULA|ULA19|saida~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datad => \ULA|ULA19|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[19]~19_combout\);

-- Location: FF_X39_Y4_N16
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~313_q\);

-- Location: LABCELL_X39_Y4_N57
\BancoRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1086_combout\ = ( !\MUX_BANCOREG|saida_MUX[19]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[19]~19_combout\,
	combout => \BancoRegistradores|registrador~1086_combout\);

-- Location: FF_X39_Y4_N58
\BancoRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1086_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~57_q\);

-- Location: MLABCELL_X42_Y4_N24
\BancoRegistradores|saidaB[19]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[19]~10_combout\ = ( \BancoRegistradores|registrador~313_q\ & ( \BancoRegistradores|registrador~57_q\ & ( (\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) 
-- ) ) ) # ( \BancoRegistradores|registrador~313_q\ & ( !\BancoRegistradores|registrador~57_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\)) ) ) ) # ( !\BancoRegistradores|registrador~313_q\ & ( 
-- !\BancoRegistradores|registrador~57_q\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000011000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~313_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~57_q\,
	combout => \BancoRegistradores|saidaB[19]~10_combout\);

-- Location: LABCELL_X43_Y2_N27
\ULA|ULA19|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|Carry_Out~combout\ = ( \ULA|ULA17|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[18]~9_combout\ & ((!\BancoRegistradores|saidaB[19]~10_combout\ & ((\ROM|memROM~2_combout\))) # (\BancoRegistradores|saidaB[19]~10_combout\ & 
-- (!\ROM|memROM~11_combout\)))) # (\BancoRegistradores|saidaB[18]~9_combout\ & ((!\ROM|memROM~2_combout\ & ((\BancoRegistradores|saidaB[19]~10_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)))) ) ) # ( !\ULA|ULA17|Carry_Out~combout\ & ( 
-- (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[19]~10_combout\ & !\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001011111010100000101111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[19]~10_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ULA17|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA19|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y2_N39
\MUX_BANCOREG|saida_MUX[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[20]~20_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & \ULA|ULA20|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datac => \ULA|ULA20|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[20]~20_combout\);

-- Location: FF_X43_Y2_N14
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~314_q\);

-- Location: FF_X42_Y2_N40
\BancoRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[20]~20_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~58_q\);

-- Location: LABCELL_X43_Y2_N21
\BancoRegistradores|saidaB[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[20]~11_combout\ = ( \BancoRegistradores|registrador~314_q\ & ( \BancoRegistradores|registrador~58_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~314_q\ & ( \BancoRegistradores|registrador~58_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~314_q\ & ( !\BancoRegistradores|registrador~58_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000100000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~314_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~58_q\,
	combout => \BancoRegistradores|saidaB[20]~11_combout\);

-- Location: LABCELL_X43_Y2_N57
\ULA|ULA20|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|saida~0_combout\ = ( \ULA|ULA19|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[20]~11_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # ((\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # 
-- (\ROM|memROM~2_combout\ & (((\UNI_LOG_ULA|ULActrl[1]~0_combout\ & \ROM|memROM~11_combout\)))) ) ) ) # ( !\ULA|ULA19|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[20]~11_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\ROM|memROM~2_combout\ & 
-- ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\))))) ) ) ) # ( \ULA|ULA19|Carry_Out~combout\ & ( 
-- !\BancoRegistradores|saidaB[20]~11_combout\ & ( (!\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA19|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[20]~11_combout\ & ( (\ROM|memROM~2_combout\ & 
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101010100101001010101010101000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ULA|ULA19|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[20]~11_combout\,
	combout => \ULA|ULA20|saida~0_combout\);

-- Location: LABCELL_X40_Y3_N45
\MUX_BANCOREG|saida_MUX[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[16]~16_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA16|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA16|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[16]~16_combout\);

-- Location: FF_X41_Y3_N43
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~310_q\);

-- Location: FF_X41_Y3_N58
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
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~54_q\);

-- Location: LABCELL_X41_Y3_N21
\BancoRegistradores|saidaB[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[16]~7_combout\ = ( \BancoRegistradores|registrador~310_q\ & ( \BancoRegistradores|registrador~54_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~310_q\ & ( \BancoRegistradores|registrador~54_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~310_q\ & ( !\BancoRegistradores|registrador~54_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000001000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~310_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~54_q\,
	combout => \BancoRegistradores|saidaB[16]~7_combout\);

-- Location: LABCELL_X41_Y3_N54
\ULA|ULA16|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|signal_B~0_combout\ = ( \BancoRegistradores|saidaB[16]~7_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BancoRegistradores|saidaB[16]~7_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[16]~7_combout\,
	combout => \ULA|ULA16|signal_B~0_combout\);

-- Location: LABCELL_X40_Y3_N3
\MUX_ULA|saida_MUX[16]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[16]~9_combout\ = ( !\ROM|memROM~11_combout\ & ( \BancoRegistradores|saidaB[16]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_saidaB[16]~7_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \MUX_ULA|saida_MUX[16]~9_combout\);

-- Location: LABCELL_X44_Y3_N39
\ULA|ULA15|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|AxorB~combout\ = ( \BancoRegistradores|registrador~1073_combout\ & ( !\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\) # (\BancoRegistradores|Equal0~0_combout\))) ) ) # ( !\BancoRegistradores|registrador~1073_combout\ & ( 
-- \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	combout => \ULA|ULA15|AxorB~combout\);

-- Location: LABCELL_X44_Y3_N45
\MUX_ULA|saida_MUX[14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[14]~5_combout\ = ( \BancoRegistradores|registrador~1072_combout\ & ( (!\ROM|memROM~11_combout\ & (!\BancoRegistradores|Equal0~0_combout\)) # (\ROM|memROM~11_combout\ & ((\ROM|memROM~10_combout\))) ) ) # ( 
-- !\BancoRegistradores|registrador~1072_combout\ & ( (\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110100011101000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1072_combout\,
	combout => \MUX_ULA|saida_MUX[14]~5_combout\);

-- Location: LABCELL_X44_Y3_N6
\ULA|ULA14|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|saida~0_combout\ = ( \ULA|ULA14|signal_B~0_combout\ & ( \MUX_ULA|saida_MUX[14]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\,
	dataf => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	combout => \ULA|ULA14|saida~0_combout\);

-- Location: LABCELL_X44_Y3_N18
\ULA|ULA14|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|saida~1_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( (!\MUX_ULA|saida_MUX[14]~5_combout\ & !\ULA|ULA14|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( 
-- !\MUX_ULA|saida_MUX[14]~5_combout\ $ (!\ULA|ULA14|signal_B~0_combout\ $ (((!\ULA|ULA13|signal_B~0_combout\ & !\MUX_ULA|saida_MUX[13]~4_combout\)))) ) ) ) # ( \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA12|Carry_Out~combout\ & ( 
-- (!\MUX_ULA|saida_MUX[14]~5_combout\ & !\ULA|ULA14|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA12|Carry_Out~combout\ & ( !\MUX_ULA|saida_MUX[14]~5_combout\ $ (!\ULA|ULA14|signal_B~0_combout\ $ 
-- (((!\ULA|ULA13|signal_B~0_combout\) # (!\MUX_ULA|saida_MUX[13]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100110110110011000000000010010011011011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\,
	datad => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA12|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA14|saida~1_combout\);

-- Location: LABCELL_X43_Y3_N0
\ULA|ULA14|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|saida~2_combout\ = ( \ULA|ULA14|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA14|saida~0_combout\) ) ) # ( !\ULA|ULA14|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA14|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA14|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA14|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA14|saida~2_combout\);

-- Location: LABCELL_X44_Y3_N54
\MUX_BANCOREG|saida_MUX[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[14]~14_combout\ = ( \ULA|ULA14|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA14|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[14]~14_combout\);

-- Location: FF_X44_Y3_N29
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
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~52_q\);

-- Location: FF_X44_Y3_N5
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~308_q\);

-- Location: LABCELL_X44_Y3_N30
\BancoRegistradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1072_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (\BancoRegistradores|registrador~52_q\)) # (\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~308_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1072_combout\);

-- Location: LABCELL_X44_Y3_N15
\ULA|ULA14|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1072_combout\ & ( !\ROM|memROM~2_combout\ $ (\BancoRegistradores|Equal0~0_combout\) ) ) # ( !\BancoRegistradores|registrador~1072_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1072_combout\,
	combout => \ULA|ULA14|signal_B~0_combout\);

-- Location: LABCELL_X44_Y3_N24
\ULA|ULA15|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|AxBandC~combout\ = ( \MUX_ULA|saida_MUX[14]~5_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( (\ULA|ULA15|AxorB~combout\ & (((\ULA|ULA14|signal_B~0_combout\) # (\MUX_ULA|saida_MUX[13]~4_combout\)) # (\ULA|ULA13|signal_B~0_combout\))) ) ) ) # ( 
-- !\MUX_ULA|saida_MUX[14]~5_combout\ & ( \ULA|ULA12|Carry_Out~combout\ & ( (\ULA|ULA15|AxorB~combout\ & (\ULA|ULA14|signal_B~0_combout\ & ((\MUX_ULA|saida_MUX[13]~4_combout\) # (\ULA|ULA13|signal_B~0_combout\)))) ) ) ) # ( \MUX_ULA|saida_MUX[14]~5_combout\ 
-- & ( !\ULA|ULA12|Carry_Out~combout\ & ( (\ULA|ULA15|AxorB~combout\ & (((\ULA|ULA13|signal_B~0_combout\ & \MUX_ULA|saida_MUX[13]~4_combout\)) # (\ULA|ULA14|signal_B~0_combout\))) ) ) ) # ( !\MUX_ULA|saida_MUX[14]~5_combout\ & ( 
-- !\ULA|ULA12|Carry_Out~combout\ & ( (\ULA|ULA13|signal_B~0_combout\ & (\ULA|ULA15|AxorB~combout\ & (\MUX_ULA|saida_MUX[13]~4_combout\ & \ULA|ULA14|signal_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010011001100000000000100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA15|ALT_INV_AxorB~combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\,
	datad => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datae => \MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\,
	dataf => \ULA|ULA12|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA15|AxBandC~combout\);

-- Location: LABCELL_X44_Y3_N0
\ULA|ULA16|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|saida~0_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[16]~9_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\ULA|ULA16|signal_B~0_combout\ & 
-- ((!\ULA|ULA24|Equal2~0_combout\) # (\MUX_ULA|saida_MUX[16]~9_combout\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( \ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\ & (!\MUX_ULA|saida_MUX[16]~9_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\ULA|ULA16|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[16]~9_combout\)) ) ) ) # ( \ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[16]~9_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # 
-- (\ULA|ULA16|signal_B~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\) # (\MUX_ULA|saida_MUX[16]~9_combout\))) ) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( !\ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA16|signal_B~0_combout\ $ 
-- (!\ULA|ULA15|saida~0_combout\ $ (\MUX_ULA|saida_MUX[16]~9_combout\)))) # (\ULA|ULA24|Equal2~0_combout\ & (\ULA|ULA16|signal_B~0_combout\ & ((\MUX_ULA|saida_MUX[16]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000101010111110000010110100101000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA15|ALT_INV_saida~0_combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[16]~9_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA15|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA16|saida~0_combout\);

-- Location: LABCELL_X43_Y3_N48
\ULA|ULA8|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|Carry_Out~combout\ = ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[8]~1_combout\)) ) ) # ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[7]~0_combout\ & 
-- ((!\BancoRegistradores|saidaB[8]~1_combout\ & ((\ROM|memROM~2_combout\))) # (\BancoRegistradores|saidaB[8]~1_combout\ & (!\ROM|memROM~11_combout\)))) # (\BancoRegistradores|saidaB[7]~0_combout\ & ((!\ROM|memROM~2_combout\ & 
-- ((\BancoRegistradores|saidaB[8]~1_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010111010000011101011101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA8|Carry_Out~combout\);

-- Location: LABCELL_X43_Y6_N27
\MUX_BANCOREG|saida_MUX[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[9]~9_combout\ = ( \ULA|ULA9|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA9|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[9]~9_combout\);

-- Location: FF_X43_Y6_N25
\BancoRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[9]~9_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~303_q\);

-- Location: LABCELL_X43_Y6_N30
\BancoRegistradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1081_combout\ = ( !\MUX_BANCOREG|saida_MUX[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \BancoRegistradores|registrador~1081_combout\);

-- Location: FF_X43_Y6_N32
\BancoRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1081_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~47_q\);

-- Location: LABCELL_X43_Y6_N21
\BancoRegistradores|saidaB[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[9]~2_combout\ = ( \BancoRegistradores|registrador~303_q\ & ( \BancoRegistradores|registrador~47_q\ & ( (\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) ) 
-- ) ) # ( \BancoRegistradores|registrador~303_q\ & ( !\BancoRegistradores|registrador~47_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\)) ) ) ) # ( !\BancoRegistradores|registrador~303_q\ & ( 
-- !\BancoRegistradores|registrador~47_q\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000011000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~303_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~47_q\,
	combout => \BancoRegistradores|saidaB[9]~2_combout\);

-- Location: MLABCELL_X42_Y3_N24
\ULA|ULA9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|saida~0_combout\ = ( \ULA|ULA8|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[9]~2_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # ((\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # 
-- (\ROM|memROM~2_combout\ & (((\UNI_LOG_ULA|ULActrl[1]~0_combout\ & \ROM|memROM~11_combout\)))) ) ) ) # ( !\ULA|ULA8|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[9]~2_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\ROM|memROM~2_combout\ & 
-- ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\))))) ) ) ) # ( \ULA|ULA8|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[9]~2_combout\ 
-- & ( (!\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA8|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[9]~2_combout\ & ( (\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101010100101001010101010101000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ULA|ULA8|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\,
	combout => \ULA|ULA9|saida~0_combout\);

-- Location: LABCELL_X41_Y6_N48
\ULA|ULA11|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|saida~0_combout\ = ( !\BancoRegistradores|Equal0~0_combout\ & ( \BancoRegistradores|registrador~1070_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datae => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \ULA|ULA11|saida~0_combout\);

-- Location: MLABCELL_X42_Y3_N36
\ULA|ULA9|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|Carry_Out~combout\ = ( \BancoRegistradores|saidaB[7]~0_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & \BancoRegistradores|saidaB[9]~2_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaB[7]~0_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & \BancoRegistradores|saidaB[9]~2_combout\)) ) ) ) # ( \BancoRegistradores|saidaB[7]~0_combout\ & ( 
-- !\ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[9]~2_combout\ & ((!\ROM|memROM~11_combout\) # (\BancoRegistradores|saidaB[8]~1_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaB[7]~0_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[9]~2_combout\ & (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (!\BancoRegistradores|saidaB[8]~1_combout\)))) # 
-- (\BancoRegistradores|saidaB[9]~2_combout\ & (((!\ROM|memROM~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001001100010011000100111000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA9|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y3_N27
\ULA|ULA10|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|saida~0_combout\ = ( \ULA|ULA9|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[10]~3_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # ((\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # 
-- (\ROM|memROM~2_combout\ & (((\ROM|memROM~11_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\)))) ) ) ) # ( !\ULA|ULA9|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[10]~3_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ $ 
-- (((\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( \ULA|ULA9|Carry_Out~combout\ & ( 
-- !\BancoRegistradores|saidaB[10]~3_combout\ & ( (!\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA9|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[10]~3_combout\ & ( (\ROM|memROM~2_combout\ & 
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001010101010100010010110101010001010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datae => \ULA|ULA9|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[10]~3_combout\,
	combout => \ULA|ULA10|saida~0_combout\);

-- Location: LABCELL_X40_Y4_N0
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

-- Location: FF_X40_Y4_N5
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~304_q\);

-- Location: FF_X40_Y4_N59
\BancoRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[10]~10_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~48_q\);

-- Location: LABCELL_X40_Y4_N54
\BancoRegistradores|saidaB[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[10]~3_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (\BancoRegistradores|registrador~304_q\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \ROM|memROM~13_combout\ & ( (\BancoRegistradores|registrador~48_q\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~304_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[10]~3_combout\);

-- Location: MLABCELL_X42_Y6_N45
\ULA|ULA11|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|saida~3_combout\ = ( \BancoRegistradores|saidaB[10]~3_combout\ & ( \BancoRegistradores|saidaB[8]~1_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\BancoRegistradores|saidaB[9]~2_combout\) # ((!\ROM|memROM~11_combout\) # 
-- (!\BancoRegistradores|saidaB[7]~0_combout\)))) ) ) ) # ( !\BancoRegistradores|saidaB[10]~3_combout\ & ( \BancoRegistradores|saidaB[8]~1_combout\ & ( (\ROM|memROM~11_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \BancoRegistradores|saidaB[10]~3_combout\ & 
-- ( !\BancoRegistradores|saidaB[8]~1_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\BancoRegistradores|saidaB[10]~3_combout\ & ( !\BancoRegistradores|saidaB[8]~1_combout\ & ( (\ROM|memROM~11_combout\ & ((!\ROM|memROM~2_combout\) # 
-- ((!\BancoRegistradores|saidaB[9]~2_combout\ & !\BancoRegistradores|saidaB[7]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000111111110000000000110011000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[10]~3_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	combout => \ULA|ULA11|saida~3_combout\);

-- Location: MLABCELL_X42_Y6_N33
\ULA|ULA11|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|saida~1_combout\ = ( \ULA|ULA11|saida~3_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[11]~4_combout\ & ((\ULA|ULA24|Equal1~0_combout\) # (\ROM|memROM~11_combout\)))) # 
-- (\ROM|memROM~2_combout\ & (\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[11]~4_combout\))) ) ) ) # ( !\ULA|ULA11|saida~3_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & ((!\BancoRegistradores|saidaB[11]~4_combout\) # 
-- ((!\ROM|memROM~11_combout\ & !\ULA|ULA24|Equal1~0_combout\)))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[11]~4_combout\))) ) ) ) # ( \ULA|ULA11|saida~3_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( 
-- (!\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[11]~4_combout\ & ((\ULA|ULA24|Equal1~0_combout\) # (\ROM|memROM~11_combout\)))) # (\ROM|memROM~2_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (((\ROM|memROM~11_combout\ & 
-- \BancoRegistradores|saidaB[11]~4_combout\))))) ) ) ) # ( !\ULA|ULA11|saida~3_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ULA|ULA24|Equal1~0_combout\) # ((!\ROM|memROM~2_combout\ & 
-- !\BancoRegistradores|saidaB[11]~4_combout\)))) # (\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[11]~4_combout\ $ (((!\ULA|ULA24|Equal1~0_combout\) # (\ROM|memROM~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110100001011101001010000110101001101000010010000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[11]~4_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \ULA|ULA11|ALT_INV_saida~3_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA11|saida~1_combout\);

-- Location: MLABCELL_X42_Y6_N48
\ULA|ULA11|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|saida~2_combout\ = ( \ULA|ULA11|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA11|saida~0_combout\) ) ) # ( !\ULA|ULA11|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA11|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA11|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA11|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA11|saida~2_combout\);

-- Location: LABCELL_X43_Y6_N57
\MUX_BANCOREG|saida_MUX[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[11]~11_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA11|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA11|ALT_INV_saida~2_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[11]~11_combout\);

-- Location: LABCELL_X43_Y6_N6
\BancoRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1082_combout\ = ( !\MUX_BANCOREG|saida_MUX[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[11]~11_combout\,
	combout => \BancoRegistradores|registrador~1082_combout\);

-- Location: FF_X43_Y6_N8
\BancoRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1082_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~49_q\);

-- Location: FF_X43_Y6_N58
\BancoRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[11]~11_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~305_q\);

-- Location: LABCELL_X43_Y6_N39
\BancoRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1070_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|registrador~49_q\)) # (\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~305_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~305_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1070_combout\);

-- Location: LABCELL_X44_Y4_N57
\BancoRegistradores|saidaB[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[11]~4_combout\ = ( \BancoRegistradores|registrador~1070_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \BancoRegistradores|saidaB[11]~4_combout\);

-- Location: LABCELL_X43_Y6_N15
\ULA|ULA11|Carry_Out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|Carry_Out~0_combout\ = ( \BancoRegistradores|saidaB[10]~3_combout\ & ( (\BancoRegistradores|saidaB[7]~0_combout\ & (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[9]~2_combout\)) ) ) # ( !\BancoRegistradores|saidaB[10]~3_combout\ & ( 
-- (!\BancoRegistradores|saidaB[7]~0_combout\ & (\ROM|memROM~2_combout\ & !\BancoRegistradores|saidaB[9]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[10]~3_combout\,
	combout => \ULA|ULA11|Carry_Out~0_combout\);

-- Location: LABCELL_X43_Y3_N54
\ULA|ULA11|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|Carry_Out~combout\ = ( \ULA|ULA11|Carry_Out~0_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & \BancoRegistradores|saidaB[11]~4_combout\)) ) ) ) # ( !\ULA|ULA11|Carry_Out~0_combout\ & ( 
-- \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & \BancoRegistradores|saidaB[11]~4_combout\)) ) ) ) # ( \ULA|ULA11|Carry_Out~0_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & 
-- (\BancoRegistradores|saidaB[11]~4_combout\ & ((!\ROM|memROM~11_combout\) # (\BancoRegistradores|saidaB[8]~1_combout\)))) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # ((!\BancoRegistradores|saidaB[8]~1_combout\ & 
-- !\BancoRegistradores|saidaB[11]~4_combout\)))) ) ) ) # ( !\ULA|ULA11|Carry_Out~0_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & ((\BancoRegistradores|saidaB[11]~4_combout\) # (\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010101001100111000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[11]~4_combout\,
	datae => \ULA|ULA11|ALT_INV_Carry_Out~0_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA11|Carry_Out~combout\);

-- Location: LABCELL_X39_Y4_N21
\MUX_BANCOREG|saida_MUX[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[12]~12_combout\ = ( \ULA|ULA12|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA12|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[12]~12_combout\);

-- Location: FF_X40_Y4_N44
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
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~50_q\);

-- Location: FF_X40_Y4_N14
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~306_q\);

-- Location: LABCELL_X40_Y4_N45
\BancoRegistradores|saidaB[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[12]~5_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (\BancoRegistradores|registrador~306_q\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (\BancoRegistradores|registrador~50_q\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~50_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[12]~5_combout\);

-- Location: LABCELL_X43_Y3_N42
\ULA|ULA12|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|saida~0_combout\ = ( \ULA|ULA11|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[12]~5_combout\ & ( (!\ROM|memROM~11_combout\ & (((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & ((!\ROM|memROM~2_combout\ & 
-- (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)) # (\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) ) ) ) # ( !\ULA|ULA11|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[12]~5_combout\ & ( 
-- (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~2_combout\ $ (\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( 
-- \ULA|ULA11|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[12]~5_combout\ & ( (!\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA11|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[12]~5_combout\ & ( 
-- (\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000011010000001111001101000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datae => \ULA|ULA11|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[12]~5_combout\,
	combout => \ULA|ULA12|saida~0_combout\);

-- Location: MLABCELL_X42_Y6_N57
\MUX_BANCOREG|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[5]~5_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA5|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ULA5|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X43_Y5_N24
\BancoRegistradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1079_combout\ = !\MUX_BANCOREG|saida_MUX[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \BancoRegistradores|registrador~1079_combout\);

-- Location: FF_X43_Y5_N29
\BancoRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \BancoRegistradores|registrador~1079_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~43_q\);

-- Location: FF_X43_Y5_N17
\BancoRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~299_q\);

-- Location: LABCELL_X43_Y5_N54
\BancoRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1067_combout\ = ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~13_combout\ & ((!\ROM|memROM~12_combout\ & (!\BancoRegistradores|registrador~43_q\)) # (\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~299_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000011000010100000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~43_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1067_combout\);

-- Location: LABCELL_X44_Y4_N21
\ULA|ULA5|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1067_combout\ & ( !\ROM|memROM~2_combout\ $ (\BancoRegistradores|Equal0~0_combout\) ) ) # ( !\BancoRegistradores|registrador~1067_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1067_combout\,
	combout => \ULA|ULA5|signal_B~0_combout\);

-- Location: LABCELL_X44_Y4_N3
\MUX_ULA|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[5]~2_combout\ = ( \BancoRegistradores|registrador~1067_combout\ & ( (!\ROM|memROM~11_combout\ & (!\BancoRegistradores|Equal0~0_combout\)) # (\ROM|memROM~11_combout\ & ((\ROM|memROM~10_combout\))) ) ) # ( 
-- !\BancoRegistradores|registrador~1067_combout\ & ( (\ROM|memROM~11_combout\ & \ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1067_combout\,
	combout => \MUX_ULA|saida_MUX[5]~2_combout\);

-- Location: LABCELL_X43_Y4_N57
\ULA|ULA4|AxorB\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|AxorB~combout\ = ( \BancoRegistradores|registrador~1066_combout\ & ( !\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\) # (\BancoRegistradores|Equal0~0_combout\))) ) ) # ( !\BancoRegistradores|registrador~1066_combout\ & ( 
-- \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \ULA|ULA4|AxorB~combout\);

-- Location: LABCELL_X43_Y5_N21
\MUX_ULA|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[3]~1_combout\ = ( \BancoRegistradores|registrador~1065_combout\ & ( (!\ROM|memROM~11_combout\ & (!\BancoRegistradores|Equal0~0_combout\)) # (\ROM|memROM~11_combout\ & ((!\ROM|memROM~4_combout\))) ) ) # ( 
-- !\BancoRegistradores|registrador~1065_combout\ & ( (\ROM|memROM~11_combout\ & !\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \MUX_ULA|saida_MUX[3]~1_combout\);

-- Location: LABCELL_X43_Y4_N39
\MUX_ULA|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[2]~0_combout\ = ( \BancoRegistradores|registrador~1064_combout\ & ( (!\ROM|memROM~11_combout\ & (!\BancoRegistradores|Equal0~0_combout\)) # (\ROM|memROM~11_combout\ & ((\ROM|memROM~9_combout\))) ) ) # ( 
-- !\BancoRegistradores|registrador~1064_combout\ & ( (\ROM|memROM~11_combout\ & \ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	combout => \MUX_ULA|saida_MUX[2]~0_combout\);

-- Location: LABCELL_X43_Y4_N24
\ULA|ULA4|AxBandC\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|AxBandC~combout\ = ( \MUX_ULA|saida_MUX[3]~1_combout\ & ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( (\ULA|ULA4|AxorB~combout\ & ((!\ULA|ULA1|Carry_Out~combout\) # ((\ULA|ULA2|signal_B~0_combout\) # (\ULA|ULA3|signal_B~0_combout\)))) ) ) ) # ( 
-- !\MUX_ULA|saida_MUX[3]~1_combout\ & ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( (\ULA|ULA3|signal_B~0_combout\ & (\ULA|ULA4|AxorB~combout\ & ((!\ULA|ULA1|Carry_Out~combout\) # (\ULA|ULA2|signal_B~0_combout\)))) ) ) ) # ( \MUX_ULA|saida_MUX[3]~1_combout\ & ( 
-- !\MUX_ULA|saida_MUX[2]~0_combout\ & ( (\ULA|ULA4|AxorB~combout\ & (((!\ULA|ULA1|Carry_Out~combout\ & \ULA|ULA2|signal_B~0_combout\)) # (\ULA|ULA3|signal_B~0_combout\))) ) ) ) # ( !\MUX_ULA|saida_MUX[3]~1_combout\ & ( !\MUX_ULA|saida_MUX[2]~0_combout\ & ( 
-- (!\ULA|ULA1|Carry_Out~combout\ & (\ULA|ULA3|signal_B~0_combout\ & (\ULA|ULA2|signal_B~0_combout\ & \ULA|ULA4|AxorB~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000011101100000000001000110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_Carry_Out~combout\,
	datab => \ULA|ULA3|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA4|ALT_INV_AxorB~combout\,
	datae => \MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \ULA|ULA4|AxBandC~combout\);

-- Location: LABCELL_X43_Y5_N6
\ULA|ULA5|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|saida~0_combout\ = ( \MUX_ULA|saida_MUX[5]~2_combout\ & ( \ULA|ULA4|AxBandC~combout\ & ( ((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\ULA|ULA5|signal_B~0_combout\) ) ) ) # ( !\MUX_ULA|saida_MUX[5]~2_combout\ & ( 
-- \ULA|ULA4|AxBandC~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\ULA|ULA5|signal_B~0_combout\))) ) ) ) # ( \MUX_ULA|saida_MUX[5]~2_combout\ & ( !\ULA|ULA4|AxBandC~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & 
-- ((!\ULA|ULA4|saida~0_combout\ $ (\ULA|ULA5|signal_B~0_combout\)) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA5|signal_B~0_combout\)))) ) ) ) # ( !\MUX_ULA|saida_MUX[5]~2_combout\ & ( !\ULA|ULA4|AxBandC~combout\ & ( 
-- (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA5|signal_B~0_combout\ $ (((!\ULA|ULA4|saida~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100000000101101110000111111000011000000000011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA5|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \MUX_ULA|ALT_INV_saida_MUX[5]~2_combout\,
	dataf => \ULA|ULA4|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA5|saida~0_combout\);

-- Location: MLABCELL_X45_Y4_N21
\MUX_BANCOREG|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[6]~6_combout\ = ( \ULA|ULA6|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA6|ALT_INV_saida~0_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[6]~6_combout\);

-- Location: FF_X44_Y4_N29
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~300_q\);

-- Location: FF_X45_Y4_N14
\BancoRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~44_q\);

-- Location: LABCELL_X44_Y4_N18
\BancoRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1068_combout\ = ( \BancoRegistradores|registrador~44_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & ((!\ROM|memROM~12_combout\) # (\BancoRegistradores|registrador~300_q\)))) ) ) # ( 
-- !\BancoRegistradores|registrador~44_q\ & ( (\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & (\BancoRegistradores|registrador~300_q\ & \ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000100011000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~44_q\,
	combout => \BancoRegistradores|registrador~1068_combout\);

-- Location: LABCELL_X44_Y4_N15
\MUX_ULA|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[6]~3_combout\ = ( \BancoRegistradores|registrador~1068_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & !\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	combout => \MUX_ULA|saida_MUX[6]~3_combout\);

-- Location: LABCELL_X44_Y4_N54
\ULA|ULA6|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|signal_B~0_combout\ = ( \ROM|memROM~2_combout\ & ( (!\BancoRegistradores|registrador~1068_combout\) # (\BancoRegistradores|Equal0~0_combout\) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & 
-- \BancoRegistradores|registrador~1068_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|ULA6|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y5_N30
\ULA|ULA5|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|Carry_Out~combout\ = ( \ULA|ULA4|AxBandC~combout\ & ( (!\ULA|ULA5|signal_B~0_combout\ & !\MUX_ULA|saida_MUX[5]~2_combout\) ) ) # ( !\ULA|ULA4|AxBandC~combout\ & ( (!\ULA|ULA4|saida~0_combout\ & ((!\ULA|ULA5|signal_B~0_combout\) # 
-- (!\MUX_ULA|saida_MUX[5]~2_combout\))) # (\ULA|ULA4|saida~0_combout\ & (!\ULA|ULA5|signal_B~0_combout\ & !\MUX_ULA|saida_MUX[5]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA5|ALT_INV_signal_B~0_combout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[5]~2_combout\,
	dataf => \ULA|ULA4|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA5|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y5_N24
\ULA|ULA6|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|saida~0_combout\ = ( \ULA|ULA5|Carry_Out~combout\ & ( (!\MUX_ULA|saida_MUX[6]~3_combout\ & (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA6|signal_B~0_combout\)))) # (\MUX_ULA|saida_MUX[6]~3_combout\ & ((!\ULA|ULA24|Equal2~0_combout\ & 
-- ((!\ULA|ULA6|signal_B~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & ((\ULA|ULA6|signal_B~0_combout\))))) ) ) # ( !\ULA|ULA5|Carry_Out~combout\ & ( (!\MUX_ULA|saida_MUX[6]~3_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & 
-- (!\ULA|ULA24|Equal1~0_combout\ $ (\ULA|ULA6|signal_B~0_combout\)))) # (\MUX_ULA|saida_MUX[6]~3_combout\ & (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\ULA|ULA6|signal_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000001110101100100000111010101010000101101010101000010110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[6]~3_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA5|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA6|saida~0_combout\);

-- Location: MLABCELL_X42_Y5_N36
\ULA|saida[0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~39_combout\ = ( \ULA|ULA3|saida~2_combout\ & ( \ULA|ULA6|saida~0_combout\ & ( (\ULA|ULA1|saida~0_combout\ & (\ULA|ULA2|saida~0_combout\ & (\ULA|ULA5|saida~0_combout\ & \ULA|ULA4|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA2|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA5|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA4|ALT_INV_saida~1_combout\,
	datae => \ULA|ULA3|ALT_INV_saida~2_combout\,
	dataf => \ULA|ULA6|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[0]~39_combout\);

-- Location: MLABCELL_X42_Y3_N51
\ULA|saida[0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~40_combout\ = ( \ULA|ULA7|saida~0_combout\ & ( !\ULA|ULA8|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_saida~2_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[0]~40_combout\);

-- Location: MLABCELL_X42_Y3_N42
\ULA|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~4_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( \ULA|ULA11|saida~2_combout\ & ( (\ULA|ULA9|saida~0_combout\ & (\ULA|ULA12|saida~0_combout\ & (\ULA|saida[0]~39_combout\ & \ULA|saida[0]~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA12|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_saida[0]~39_combout\,
	datad => \ULA|ALT_INV_saida[0]~40_combout\,
	datae => \ULA|ULA10|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA11|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[0]~4_combout\);

-- Location: MLABCELL_X42_Y3_N21
\ULA|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~5_combout\ = ( \ULA|saida[0]~4_combout\ & ( (\ULA|ULA15|saida~1_combout\ & (\ULA|ULA13|saida~0_combout\ & \ULA|ULA14|saida~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA13|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA14|ALT_INV_saida~2_combout\,
	dataf => \ULA|ALT_INV_saida[0]~4_combout\,
	combout => \ULA|saida[0]~5_combout\);

-- Location: MLABCELL_X42_Y3_N15
\ULA|saida[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~6_combout\ = ( \ULA|saida[0]~5_combout\ & ( (\ULA|ULA16|saida~0_combout\ & (\ULA|ULA18|saida~0_combout\ & \ULA|ULA17|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA18|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA17|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~5_combout\,
	combout => \ULA|saida[0]~6_combout\);

-- Location: MLABCELL_X42_Y3_N48
\ULA|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~7_combout\ = ( \ULA|saida[0]~6_combout\ & ( (\ULA|ULA19|saida~2_combout\ & (((\ULA|ULA24|saida~0_combout\ & \ULA|ULA23|soma~combout\)) # (\ULA|ULA23|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_saida~2_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA23|ALT_INV_soma~combout\,
	datad => \ULA|ULA23|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~6_combout\,
	combout => \ULA|saida[0]~7_combout\);

-- Location: MLABCELL_X42_Y3_N54
\ULA|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~8_combout\ = ( \ULA|ULA24|saida~1_combout\ & ( \ULA|saida[0]~7_combout\ & ( (!\ULA|ULA25|saida~1_combout\ & (\ULA|ULA22|saida~2_combout\ & (\ULA|ULA20|saida~0_combout\ & \ULA|ULA21|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA22|ALT_INV_saida~2_combout\,
	datac => \ULA|ULA20|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA21|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_saida[0]~7_combout\,
	combout => \ULA|saida[0]~8_combout\);

-- Location: MLABCELL_X42_Y4_N30
\ULA|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~9_combout\ = ( \ULA|saida[0]~3_combout\ & ( \ULA|saida[0]~8_combout\ & ( (!\ULA|ULA28|saida~1_combout\ & (((\ULA|ULA24|saida~0_combout\ & \ULA|ULA29|soma~combout\)) # (\ULA|ULA29|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA29|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA29|ALT_INV_soma~combout\,
	datae => \ULA|ALT_INV_saida[0]~3_combout\,
	dataf => \ULA|ALT_INV_saida[0]~8_combout\,
	combout => \ULA|saida[0]~9_combout\);

-- Location: MLABCELL_X42_Y4_N15
\ULA|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~10_combout\ = ( \ULA|saida[0]~9_combout\ & ( (!\ULA|Equal5~0_combout\ & (((\ULA|ULA0|saida~0_combout\)))) # (\ULA|Equal5~0_combout\ & (((\ULA|ULA30|saida~0_combout\ & \ULA|ULA0|saida~0_combout\)) # (\ULA|ULA31|saida~1_combout\))) ) ) # ( 
-- !\ULA|saida[0]~9_combout\ & ( (!\ULA|Equal5~0_combout\ & (\ULA|ULA0|saida~0_combout\)) # (\ULA|Equal5~0_combout\ & ((\ULA|ULA31|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001101001111110000110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA0|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA31|ALT_INV_saida~1_combout\,
	dataf => \ULA|ALT_INV_saida[0]~9_combout\,
	combout => \ULA|saida[0]~10_combout\);

-- Location: MLABCELL_X42_Y4_N51
\MUX_BANCOREG|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[0]~1_combout\ = ( \ULA|saida[0]~10_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~11_combout\) # (!\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ULA|ALT_INV_saida[0]~10_combout\,
	combout => \MUX_BANCOREG|saida_MUX[0]~1_combout\);

-- Location: FF_X42_Y4_N44
\BancoRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~38_q\);

-- Location: FF_X42_Y4_N59
\BancoRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~294_q\);

-- Location: MLABCELL_X42_Y4_N9
\BancoRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1063_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~13_combout\ & ((\BancoRegistradores|registrador~294_q\) # (\ROM|memROM~10_combout\))) ) ) # ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~10_combout\ & 
-- (\BancoRegistradores|registrador~38_q\ & \ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \BancoRegistradores|registrador~1063_combout\);

-- Location: MLABCELL_X42_Y5_N18
\ULA|ULA0|Carry_Out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|Carry_Out~0_combout\ = ( \BancoRegistradores|registrador~1063_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & ((!\ROM|memROM~11_combout\))) # (\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~2_combout\)) ) ) # ( 
-- !\BancoRegistradores|registrador~1063_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \ULA|ULA0|Carry_Out~0_combout\);

-- Location: MLABCELL_X42_Y5_N27
\ULA|ULA1|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1062_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ $ (\ROM|memROM~2_combout\) ) ) # ( !\BancoRegistradores|registrador~1062_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	combout => \ULA|ULA1|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y5_N33
\MUX_ULA|saida_MUX[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[1]~10_combout\ = ( \BancoRegistradores|registrador~1062_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\BancoRegistradores|Equal0~0_combout\))) # (\ROM|memROM~11_combout\ & (\ROM|memROM~2_combout\)) ) ) # ( 
-- !\BancoRegistradores|registrador~1062_combout\ & ( (\ROM|memROM~2_combout\ & \ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	combout => \MUX_ULA|saida_MUX[1]~10_combout\);

-- Location: MLABCELL_X42_Y5_N6
\ULA|ULA1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|saida~0_combout\ = ( \MUX_ULA|saida_MUX[1]~10_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA0|Carry_Out~0_combout\ $ (\ULA|ULA1|signal_B~0_combout\)) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (((\ULA|ULA1|signal_B~0_combout\)))) ) ) # ( !\MUX_ULA|saida_MUX[1]~10_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA1|signal_B~0_combout\ $ (((!\ULA|ULA0|Carry_Out~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010100010000010001010001010100010011111111010001001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA0|ALT_INV_Carry_Out~0_combout\,
	datad => \ULA|ULA1|ALT_INV_signal_B~0_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[1]~10_combout\,
	combout => \ULA|ULA1|saida~0_combout\);

-- Location: MLABCELL_X45_Y4_N6
\MUX_BANCOREG|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[1]~0_combout\ = ( \ULA|ULA1|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[1]~0_combout\);

-- Location: LABCELL_X43_Y4_N3
\BancoRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1077_combout\ = !\MUX_BANCOREG|saida_MUX[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[1]~0_combout\,
	combout => \BancoRegistradores|registrador~1077_combout\);

-- Location: FF_X43_Y4_N20
\BancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \BancoRegistradores|registrador~1077_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~39_q\);

-- Location: FF_X43_Y4_N5
\BancoRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[1]~0_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~295_q\);

-- Location: LABCELL_X43_Y4_N0
\BancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1062_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|registrador~39_q\ & (!\ROM|memROM~10_combout\))) # (\ROM|memROM~12_combout\ & (((\BancoRegistradores|registrador~295_q\) # 
-- (\ROM|memROM~10_combout\)))) ) ) # ( !\ROM|memROM~13_combout\ & ( (\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000010000011101100111000001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~295_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1062_combout\);

-- Location: LABCELL_X43_Y4_N36
\ULA|ULA1|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|Carry_Out~combout\ = ( \BancoRegistradores|registrador~1063_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & ((!\BancoRegistradores|registrador~1062_combout\ & ((!\ROM|memROM~2_combout\))) # (\BancoRegistradores|registrador~1062_combout\ & 
-- (\ROM|memROM~11_combout\)))) # (\BancoRegistradores|Equal0~0_combout\ & (((!\ROM|memROM~2_combout\)))) ) ) # ( !\BancoRegistradores|registrador~1063_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\BancoRegistradores|registrador~1062_combout\) # 
-- (\ROM|memROM~11_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111100000111000011110000011100101111000001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \ULA|ULA1|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y5_N9
\ULA|ULA2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|saida~0_combout\ = ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA1|Carry_Out~combout\ $ (!\ULA|ULA2|signal_B~0_combout\)) # (\ULA|ULA24|Equal1~0_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & 
-- (((\ULA|ULA2|signal_B~0_combout\)))) ) ) # ( !\MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA2|signal_B~0_combout\ $ (((\ULA|ULA1|Carry_Out~combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000101010100000000010101000101010111101110010101011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA1|ALT_INV_Carry_Out~combout\,
	datad => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \ULA|ULA2|saida~0_combout\);

-- Location: MLABCELL_X42_Y5_N0
\MUX_BANCOREG|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[2]~2_combout\ = ( \ULA|ULA2|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA2|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[2]~2_combout\);

-- Location: FF_X42_Y5_N2
\BancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[2]~2_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~40_q\);

-- Location: FF_X42_Y5_N50
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~296_q\);

-- Location: MLABCELL_X42_Y5_N51
\BancoRegistradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1064_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~12_combout\ & 
-- (\BancoRegistradores|registrador~40_q\)) # (\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~296_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1064_combout\);

-- Location: MLABCELL_X42_Y5_N21
\ULA|ULA2|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1064_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ $ (\ROM|memROM~2_combout\) ) ) # ( !\BancoRegistradores|registrador~1064_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	combout => \ULA|ULA2|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y5_N42
\ULA|ULA3|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|saida~1_combout\ = ( \MUX_ULA|saida_MUX[3]~1_combout\ & ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA3|signal_B~0_combout\ $ (((!\ULA|ULA2|signal_B~0_combout\ & \ULA|ULA1|Carry_Out~combout\))))) ) ) ) # ( 
-- !\MUX_ULA|saida_MUX[3]~1_combout\ & ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( !\ULA|ULA3|signal_B~0_combout\ $ (((!\ULA|ULA24|Equal1~0_combout\ & ((!\ULA|ULA1|Carry_Out~combout\) # (\ULA|ULA2|signal_B~0_combout\))))) ) ) ) # ( 
-- \MUX_ULA|saida_MUX[3]~1_combout\ & ( !\MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA3|signal_B~0_combout\ $ (((!\ULA|ULA2|signal_B~0_combout\) # (\ULA|ULA1|Carry_Out~combout\))))) ) ) ) # ( 
-- !\MUX_ULA|saida_MUX[3]~1_combout\ & ( !\MUX_ULA|saida_MUX[2]~0_combout\ & ( !\ULA|ULA3|signal_B~0_combout\ $ (((\ULA|ULA2|signal_B~0_combout\ & (!\ULA|ULA1|Carry_Out~combout\ & !\ULA|ULA24|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000010010110000000000101101111100001101001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA1|ALT_INV_Carry_Out~combout\,
	datac => \ULA|ULA3|ALT_INV_signal_B~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datae => \MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \ULA|ULA3|saida~1_combout\);

-- Location: MLABCELL_X42_Y5_N57
\ULA|ULA3|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|saida~2_combout\ = ( \ULA|ULA3|saida~1_combout\ & ( (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA3|saida~0_combout\) ) ) # ( !\ULA|ULA3|saida~1_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA3|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA3|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA3|ALT_INV_saida~1_combout\,
	combout => \ULA|ULA3|saida~2_combout\);

-- Location: LABCELL_X43_Y5_N15
\MUX_BANCOREG|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[3]~3_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA3|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA3|ALT_INV_saida~2_combout\,
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	combout => \MUX_BANCOREG|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X43_Y5_N18
\BancoRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1078_combout\ = !\MUX_BANCOREG|saida_MUX[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \BancoRegistradores|registrador~1078_combout\);

-- Location: FF_X43_Y5_N19
\BancoRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1078_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~41_q\);

-- Location: FF_X43_Y5_N4
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~297_q\);

-- Location: LABCELL_X43_Y5_N39
\BancoRegistradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1065_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ ) ) # ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~13_combout\ & (((\ROM|memROM~12_combout\)))) # (\ROM|memROM~13_combout\ & ((!\ROM|memROM~12_combout\ & 
-- (!\BancoRegistradores|registrador~41_q\)) # (\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~297_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010101111010001001010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~41_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1065_combout\);

-- Location: LABCELL_X43_Y5_N33
\ULA|ULA3|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|signal_B~0_combout\ = ( \BancoRegistradores|registrador~1065_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ $ (\ROM|memROM~2_combout\) ) ) # ( !\BancoRegistradores|registrador~1065_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \ULA|ULA3|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y5_N3
\ULA|ULA3|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|Carry_Out~combout\ = ( \MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA3|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[3]~1_combout\ & ((!\ULA|ULA1|Carry_Out~combout\) # (\ULA|ULA2|signal_B~0_combout\)))) # (\ULA|ULA3|signal_B~0_combout\ & 
-- (((!\ULA|ULA1|Carry_Out~combout\) # (\ULA|ULA2|signal_B~0_combout\)) # (\MUX_ULA|saida_MUX[3]~1_combout\))) ) ) # ( !\MUX_ULA|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA3|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[3]~1_combout\ & (!\ULA|ULA1|Carry_Out~combout\ 
-- & \ULA|ULA2|signal_B~0_combout\))) # (\ULA|ULA3|signal_B~0_combout\ & (((!\ULA|ULA1|Carry_Out~combout\ & \ULA|ULA2|signal_B~0_combout\)) # (\MUX_ULA|saida_MUX[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110001000100010111000101110001011101110111000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|ALT_INV_signal_B~0_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\,
	datac => \ULA|ULA1|ALT_INV_Carry_Out~combout\,
	datad => \ULA|ULA2|ALT_INV_signal_B~0_combout\,
	dataf => \MUX_ULA|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \ULA|ULA3|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y5_N12
\ULA|ULA4|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|saida~1_combout\ = ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (\BancoRegistradores|registrador~1066_combout\ & (!\ROM|memROM~2_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\UNI_LOG_ULA|ULActrl[0]~2_combout\))))) ) ) # ( \UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( !\ULA|ULA3|Carry_Out~combout\ $ (!\ROM|memROM~2_combout\ $ (((\BancoRegistradores|registrador~1066_combout\ & (\ROM|memROM~11_combout\ & 
-- !\BancoRegistradores|Equal0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010100000000000111101110000100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ULA|ULA3|ALT_INV_Carry_Out~combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datag => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	combout => \ULA|ULA4|saida~1_combout\);

-- Location: LABCELL_X43_Y5_N36
\MUX_BANCOREG|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[4]~4_combout\ = ( \ULA|ULA4|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA4|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[4]~4_combout\);

-- Location: FF_X43_Y5_N38
\BancoRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[4]~4_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~298_q\);

-- Location: FF_X43_Y5_N25
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
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~42_q\);

-- Location: LABCELL_X43_Y5_N27
\BancoRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1066_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~42_q\))) # (\ROM|memROM~12_combout\ & (\BancoRegistradores|registrador~298_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1066_combout\);

-- Location: LABCELL_X44_Y4_N0
\ULA|ULA4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|saida~0_combout\ = ( \BancoRegistradores|registrador~1066_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \ULA|ULA4|saida~0_combout\);

-- Location: LABCELL_X44_Y4_N24
\ULA|ULA6|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|Carry_Out~combout\ = ( \ULA|ULA5|signal_B~0_combout\ & ( \ULA|ULA4|AxBandC~combout\ & ( (!\MUX_ULA|saida_MUX[6]~3_combout\ & !\ULA|ULA6|signal_B~0_combout\) ) ) ) # ( !\ULA|ULA5|signal_B~0_combout\ & ( \ULA|ULA4|AxBandC~combout\ & ( 
-- (!\MUX_ULA|saida_MUX[6]~3_combout\ & ((!\MUX_ULA|saida_MUX[5]~2_combout\) # (!\ULA|ULA6|signal_B~0_combout\))) # (\MUX_ULA|saida_MUX[6]~3_combout\ & (!\MUX_ULA|saida_MUX[5]~2_combout\ & !\ULA|ULA6|signal_B~0_combout\)) ) ) ) # ( 
-- \ULA|ULA5|signal_B~0_combout\ & ( !\ULA|ULA4|AxBandC~combout\ & ( (!\MUX_ULA|saida_MUX[6]~3_combout\ & ((!\ULA|ULA6|signal_B~0_combout\) # ((!\ULA|ULA4|saida~0_combout\ & !\MUX_ULA|saida_MUX[5]~2_combout\)))) # (\MUX_ULA|saida_MUX[6]~3_combout\ & 
-- (!\ULA|ULA4|saida~0_combout\ & (!\MUX_ULA|saida_MUX[5]~2_combout\ & !\ULA|ULA6|signal_B~0_combout\))) ) ) ) # ( !\ULA|ULA5|signal_B~0_combout\ & ( !\ULA|ULA4|AxBandC~combout\ & ( (!\MUX_ULA|saida_MUX[6]~3_combout\ & ((!\ULA|ULA4|saida~0_combout\) # 
-- ((!\MUX_ULA|saida_MUX[5]~2_combout\) # (!\ULA|ULA6|signal_B~0_combout\)))) # (\MUX_ULA|saida_MUX[6]~3_combout\ & (!\ULA|ULA6|signal_B~0_combout\ & ((!\ULA|ULA4|saida~0_combout\) # (!\MUX_ULA|saida_MUX[5]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001000111011001000000011111100110000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_saida~0_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[6]~3_combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[5]~2_combout\,
	datad => \ULA|ULA6|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA5|ALT_INV_signal_B~0_combout\,
	dataf => \ULA|ULA4|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA6|Carry_Out~combout\);

-- Location: LABCELL_X43_Y3_N18
\ULA|ULA7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|saida~0_combout\ = ( \ULA|ULA6|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~2_combout\ $ (\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # (\ROM|memROM~11_combout\ & 
-- (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( !\ULA|ULA6|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~11_combout\ & (((!\ROM|memROM~2_combout\)))) 
-- # (\ROM|memROM~11_combout\ & ((!\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)) # (\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) ) ) ) # ( \ULA|ULA6|Carry_Out~combout\ & ( 
-- !\BancoRegistradores|saidaB[7]~0_combout\ & ( (\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA6|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~2_combout\ & 
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000111111010000110000111101000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datae => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	combout => \ULA|ULA7|saida~0_combout\);

-- Location: LABCELL_X43_Y6_N3
\MUX_BANCOREG|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[7]~7_combout\ = ( \ULA|ULA7|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[7]~7_combout\);

-- Location: FF_X43_Y6_N5
\BancoRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[7]~7_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~301_q\);

-- Location: LABCELL_X43_Y6_N51
\BancoRegistradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1080_combout\ = ( !\MUX_BANCOREG|saida_MUX[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \BancoRegistradores|registrador~1080_combout\);

-- Location: FF_X43_Y6_N53
\BancoRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1080_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~45_q\);

-- Location: LABCELL_X43_Y6_N18
\BancoRegistradores|saidaB[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[7]~0_combout\ = ( \BancoRegistradores|registrador~301_q\ & ( \BancoRegistradores|registrador~45_q\ & ( (\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) ) 
-- ) ) # ( \BancoRegistradores|registrador~301_q\ & ( !\BancoRegistradores|registrador~45_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( !\BancoRegistradores|registrador~301_q\ & ( 
-- !\BancoRegistradores|registrador~45_q\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~301_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~45_q\,
	combout => \BancoRegistradores|saidaB[7]~0_combout\);

-- Location: LABCELL_X43_Y3_N51
\ULA|ULA8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~0_combout\ = ( \BancoRegistradores|registrador~1069_combout\ & ( (!\ROM|memROM~11_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & !\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \ULA|ULA8|saida~0_combout\);

-- Location: LABCELL_X43_Y5_N12
\ULA|ULA8|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~3_combout\ = ( \ULA|ULA24|Equal1~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & (\ROM|memROM~2_combout\)) # (\ULA|ULA24|Equal2~0_combout\ & ((\ULA|ULA8|saida~0_combout\))) ) ) # ( !\ULA|ULA24|Equal1~0_combout\ & ( 
-- (!\ULA|ULA24|Equal2~0_combout\ & (\BancoRegistradores|saidaB[7]~0_combout\)) # (\ULA|ULA24|Equal2~0_combout\ & ((\ULA|ULA8|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ULA8|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	combout => \ULA|ULA8|saida~3_combout\);

-- Location: LABCELL_X43_Y3_N24
\ULA|ULA8|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~2_combout\ = ( \ULA|ULA8|saida~3_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (\ROM|memROM~11_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA8|saida~4_combout\ $ (\ROM|memROM~2_combout\)))) ) ) ) # ( !\ULA|ULA8|saida~3_combout\ & ( 
-- \ULA|ULA6|Carry_Out~combout\ & ( ((!\ULA|ULA8|saida~4_combout\ & ((!\ROM|memROM~2_combout\))) # (\ULA|ULA8|saida~4_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~2_combout\))) # (\ULA|ULA24|Equal2~0_combout\) ) ) ) # ( \ULA|ULA8|saida~3_combout\ & ( 
-- !\ULA|ULA6|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ROM|memROM~11_combout\ & (!\ULA|ULA8|saida~4_combout\ & \ROM|memROM~2_combout\)) # (\ROM|memROM~11_combout\ & (\ULA|ULA8|saida~4_combout\)))) ) ) ) # ( !\ULA|ULA8|saida~3_combout\ & ( 
-- !\ULA|ULA6|Carry_Out~combout\ & ( (!\ULA|ULA8|saida~4_combout\) # (\ULA|ULA24|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000100001001000011001111000111110100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ULA|ULA8|ALT_INV_saida~4_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ULA8|ALT_INV_saida~3_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA8|saida~2_combout\);

-- Location: MLABCELL_X42_Y3_N3
\MUX_BANCOREG|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[8]~8_combout\ = ( !\ULA|ULA8|saida~2_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA8|ALT_INV_saida~2_combout\,
	combout => \MUX_BANCOREG|saida_MUX[8]~8_combout\);

-- Location: FF_X44_Y3_N23
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~302_q\);

-- Location: FF_X43_Y3_N34
\BancoRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[8]~8_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~46_q\);

-- Location: LABCELL_X44_Y3_N51
\BancoRegistradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1069_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & ((\BancoRegistradores|registrador~46_q\))) # (\ROM|memROM~12_combout\ & (\BancoRegistradores|registrador~302_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000110100000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~46_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1069_combout\);

-- Location: LABCELL_X43_Y3_N36
\BancoRegistradores|saidaB[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[8]~1_combout\ = ( \BancoRegistradores|registrador~1069_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \BancoRegistradores|saidaB[8]~1_combout\);

-- Location: LABCELL_X44_Y4_N36
\ULA|ULA12|Carry_Out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|Carry_Out~0_combout\ = ( \BancoRegistradores|saidaB[9]~2_combout\ & ( \BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[12]~5_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\BancoRegistradores|saidaB[10]~3_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[9]~2_combout\ & ( \BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- ((\BancoRegistradores|saidaB[12]~5_combout\) # (\ROM|memROM~2_combout\))) ) ) ) # ( \BancoRegistradores|saidaB[9]~2_combout\ & ( !\BancoRegistradores|saidaB[7]~0_combout\ & ( (!\ROM|memROM~11_combout\ & ((\BancoRegistradores|saidaB[12]~5_combout\) # 
-- (\ROM|memROM~2_combout\))) ) ) ) # ( !\BancoRegistradores|saidaB[9]~2_combout\ & ( !\BancoRegistradores|saidaB[7]~0_combout\ & ( (!\BancoRegistradores|saidaB[12]~5_combout\ & (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (!\BancoRegistradores|saidaB[10]~3_combout\)))) # (\BancoRegistradores|saidaB[12]~5_combout\ & (!\ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000101010001010100010101000101010001010100010101000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[12]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[10]~3_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[9]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	combout => \ULA|ULA12|Carry_Out~0_combout\);

-- Location: LABCELL_X44_Y4_N30
\ULA|ULA12|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|Carry_Out~combout\ = ( \ULA|ULA12|Carry_Out~0_combout\ & ( \ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \ULA|ULA12|Carry_Out~0_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( 
-- (!\ROM|memROM~11_combout\) # ((!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[8]~1_combout\ & \BancoRegistradores|saidaB[11]~4_combout\)) # (\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[8]~1_combout\ & 
-- !\BancoRegistradores|saidaB[11]~4_combout\))) ) ) ) # ( !\ULA|ULA12|Carry_Out~0_combout\ & ( !\ULA|ULA6|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101110101010111000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[11]~4_combout\,
	datae => \ULA|ULA12|ALT_INV_Carry_Out~0_combout\,
	dataf => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA12|Carry_Out~combout\);

-- Location: LABCELL_X43_Y3_N3
\ULA|ULA13|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|saida~0_combout\ = ( \ULA|ULA12|Carry_Out~combout\ & ( (!\ULA|ULA13|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\MUX_ULA|saida_MUX[13]~4_combout\)))) # (\ULA|ULA13|signal_B~0_combout\ & 
-- (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # (\MUX_ULA|saida_MUX[13]~4_combout\))) ) ) # ( !\ULA|ULA12|Carry_Out~combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA13|signal_B~0_combout\ & 
-- ((\MUX_ULA|saida_MUX[13]~4_combout\))) # (\ULA|ULA13|signal_B~0_combout\ & ((!\MUX_ULA|saida_MUX[13]~4_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) # (\ULA|ULA24|Equal2~0_combout\ & (((\ULA|ULA13|signal_B~0_combout\ & 
-- \MUX_ULA|saida_MUX[13]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100111000010101010011110000010001011111000001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\,
	dataf => \ULA|ULA12|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA13|saida~0_combout\);

-- Location: LABCELL_X44_Y3_N48
\MUX_BANCOREG|saida_MUX[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[13]~13_combout\ = ( \ULA|ULA13|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA13|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[13]~13_combout\);

-- Location: FF_X44_Y3_N50
\BancoRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[13]~13_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~307_q\);

-- Location: LABCELL_X44_Y3_N42
\BancoRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1083_combout\ = ( !\MUX_BANCOREG|saida_MUX[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \BancoRegistradores|registrador~1083_combout\);

-- Location: FF_X44_Y3_N44
\BancoRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1083_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~51_q\);

-- Location: LABCELL_X44_Y3_N9
\BancoRegistradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1071_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & ((!\BancoRegistradores|registrador~51_q\))) # (\ROM|memROM~12_combout\ & (\BancoRegistradores|registrador~307_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000010001001100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1071_combout\);

-- Location: LABCELL_X44_Y3_N57
\ULA|ULA13|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|signal_B~0_combout\ = ( \ROM|memROM~2_combout\ & ( (!\BancoRegistradores|registrador~1071_combout\) # (\BancoRegistradores|Equal0~0_combout\) ) ) # ( !\ROM|memROM~2_combout\ & ( (\BancoRegistradores|registrador~1071_combout\ & 
-- !\BancoRegistradores|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~1071_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|ULA13|signal_B~0_combout\);

-- Location: LABCELL_X44_Y4_N12
\ULA|ULA14|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|Carry_Out~combout\ = ( \ULA|ULA12|Carry_Out~combout\ & ( (!\ULA|ULA14|signal_B~0_combout\ & (\MUX_ULA|saida_MUX[14]~5_combout\ & ((\MUX_ULA|saida_MUX[13]~4_combout\) # (\ULA|ULA13|signal_B~0_combout\)))) # (\ULA|ULA14|signal_B~0_combout\ & 
-- (((\MUX_ULA|saida_MUX[13]~4_combout\) # (\MUX_ULA|saida_MUX[14]~5_combout\)) # (\ULA|ULA13|signal_B~0_combout\))) ) ) # ( !\ULA|ULA12|Carry_Out~combout\ & ( (!\ULA|ULA14|signal_B~0_combout\ & (\ULA|ULA13|signal_B~0_combout\ & 
-- (\MUX_ULA|saida_MUX[14]~5_combout\ & \MUX_ULA|saida_MUX[13]~4_combout\))) # (\ULA|ULA14|signal_B~0_combout\ & (((\ULA|ULA13|signal_B~0_combout\ & \MUX_ULA|saida_MUX[13]~4_combout\)) # (\MUX_ULA|saida_MUX[14]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA13|ALT_INV_signal_B~0_combout\,
	datab => \ULA|ULA14|ALT_INV_signal_B~0_combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[14]~5_combout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[13]~4_combout\,
	dataf => \ULA|ULA12|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA14|Carry_Out~combout\);

-- Location: LABCELL_X43_Y3_N45
\ULA|ULA15|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~1_combout\ = ( \ULA|ULA14|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[15]~6_combout\ & ( (!\ROM|memROM~11_combout\ & (((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\ROM|memROM~2_combout\)) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ((\ROM|memROM~2_combout\))))) ) ) ) # ( !\ULA|ULA14|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[15]~6_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( \ULA|ULA14|Carry_Out~combout\ & ( 
-- !\BancoRegistradores|saidaB[15]~6_combout\ & ( (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( !\ULA|ULA14|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[15]~6_combout\ & ( (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000011010011000011001101110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ULA14|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[15]~6_combout\,
	combout => \ULA|ULA15|saida~1_combout\);

-- Location: LABCELL_X40_Y4_N51
\MUX_BANCOREG|saida_MUX[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[15]~15_combout\ = ( \ULA|ULA15|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA15|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[15]~15_combout\);

-- Location: FF_X40_Y4_N52
\BancoRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[15]~15_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~309_q\);

-- Location: LABCELL_X40_Y4_N33
\BancoRegistradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1084_combout\ = ( !\MUX_BANCOREG|saida_MUX[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[15]~15_combout\,
	combout => \BancoRegistradores|registrador~1084_combout\);

-- Location: FF_X40_Y4_N34
\BancoRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1084_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~53_q\);

-- Location: LABCELL_X40_Y4_N39
\BancoRegistradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1073_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & ((!\BancoRegistradores|registrador~53_q\))) # (\ROM|memROM~12_combout\ & (\BancoRegistradores|registrador~309_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000001000101010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1073_combout\);

-- Location: LABCELL_X40_Y4_N9
\BancoRegistradores|saidaB[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[15]~6_combout\ = ( \BancoRegistradores|registrador~1073_combout\ & ( !\BancoRegistradores|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	combout => \BancoRegistradores|saidaB[15]~6_combout\);

-- Location: LABCELL_X44_Y3_N12
\ULA|ULA15|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|saida~0_combout\ = ( \BancoRegistradores|saidaB[15]~6_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[15]~6_combout\,
	combout => \ULA|ULA15|saida~0_combout\);

-- Location: LABCELL_X44_Y3_N36
\ULA|ULA16|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|Carry_Out~combout\ = ( \ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA16|signal_B~0_combout\ & !\MUX_ULA|saida_MUX[16]~9_combout\) ) ) # ( !\ULA|ULA15|AxBandC~combout\ & ( (!\ULA|ULA15|saida~0_combout\ & ((!\ULA|ULA16|signal_B~0_combout\) # 
-- (!\MUX_ULA|saida_MUX[16]~9_combout\))) # (\ULA|ULA15|saida~0_combout\ & (!\ULA|ULA16|signal_B~0_combout\ & !\MUX_ULA|saida_MUX[16]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA15|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA16|ALT_INV_signal_B~0_combout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[16]~9_combout\,
	dataf => \ULA|ULA15|ALT_INV_AxBandC~combout\,
	combout => \ULA|ULA16|Carry_Out~combout\);

-- Location: LABCELL_X43_Y3_N21
\ULA|ULA17|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|saida~0_combout\ = ( \ULA|ULA16|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[17]~8_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & 
-- (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( !\ULA|ULA16|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[17]~8_combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~11_combout\ & ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\ROM|memROM~2_combout\)) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ((\ROM|memROM~2_combout\))))) ) ) ) # ( 
-- \ULA|ULA16|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[17]~8_combout\ & ( (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & \ROM|memROM~2_combout\) ) ) ) # ( !\ULA|ULA16|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[17]~8_combout\ & ( 
-- (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000111111011100000000111101001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ULA16|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[17]~8_combout\,
	combout => \ULA|ULA17|saida~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\MUX_BANCOREG|saida_MUX[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[17]~17_combout\ = ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ & ( \ULA|ULA17|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA17|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[17]~17_combout\);

-- Location: FF_X42_Y2_N19
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~311_q\);

-- Location: MLABCELL_X42_Y2_N27
\BancoRegistradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1085_combout\ = ( !\MUX_BANCOREG|saida_MUX[17]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \BancoRegistradores|registrador~1085_combout\);

-- Location: FF_X42_Y2_N29
\BancoRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1085_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~55_q\);

-- Location: MLABCELL_X42_Y4_N27
\BancoRegistradores|saidaB[17]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[17]~8_combout\ = ( \BancoRegistradores|registrador~311_q\ & ( \BancoRegistradores|registrador~55_q\ & ( (\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) 
-- ) ) ) # ( \BancoRegistradores|registrador~311_q\ & ( !\BancoRegistradores|registrador~55_q\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( !\BancoRegistradores|registrador~311_q\ & ( 
-- !\BancoRegistradores|registrador~55_q\ & ( (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~311_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~55_q\,
	combout => \BancoRegistradores|saidaB[17]~8_combout\);

-- Location: LABCELL_X44_Y4_N6
\ULA|ULA17|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|Carry_Out~combout\ = ( \BancoRegistradores|saidaB[15]~6_combout\ & ( \ULA|ULA14|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[17]~8_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\BancoRegistradores|saidaB[16]~7_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[15]~6_combout\ & ( \ULA|ULA14|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[17]~8_combout\ & 
-- (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (!\BancoRegistradores|saidaB[16]~7_combout\)))) # (\BancoRegistradores|saidaB[17]~8_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( \BancoRegistradores|saidaB[15]~6_combout\ & ( 
-- !\ULA|ULA14|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[17]~8_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[15]~6_combout\ & ( !\ULA|ULA14|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[17]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000111010001010100010101000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[17]~8_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[16]~7_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[15]~6_combout\,
	dataf => \ULA|ULA14|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA17|Carry_Out~combout\);

-- Location: LABCELL_X43_Y2_N36
\ULA|ULA18|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|saida~0_combout\ = ( \UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( \ULA|ULA17|Carry_Out~combout\ & ( !\ROM|memROM~2_combout\ $ (((\ROM|memROM~11_combout\ & \BancoRegistradores|saidaB[18]~9_combout\))) ) ) ) # ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( 
-- \ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[18]~9_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( \UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( !\ULA|ULA17|Carry_Out~combout\ 
-- & ( !\ROM|memROM~2_combout\ $ (((!\ROM|memROM~11_combout\) # (!\BancoRegistradores|saidaB[18]~9_combout\))) ) ) ) # ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( !\ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & 
-- (\BancoRegistradores|saidaB[18]~9_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000011110101101000000000101100001111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\,
	datae => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	dataf => \ULA|ULA17|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA18|saida~0_combout\);

-- Location: MLABCELL_X42_Y2_N6
\MUX_BANCOREG|saida_MUX[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[18]~18_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & \ULA|ULA18|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datad => \ULA|ULA18|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[18]~18_combout\);

-- Location: FF_X43_Y2_N53
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~312_q\);

-- Location: FF_X42_Y2_N25
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
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~56_q\);

-- Location: LABCELL_X43_Y2_N18
\BancoRegistradores|saidaB[18]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[18]~9_combout\ = ( \BancoRegistradores|registrador~312_q\ & ( \BancoRegistradores|registrador~56_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~312_q\ & ( \BancoRegistradores|registrador~56_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~12_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~312_q\ & ( !\BancoRegistradores|registrador~56_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~312_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~56_q\,
	combout => \BancoRegistradores|saidaB[18]~9_combout\);

-- Location: LABCELL_X44_Y4_N48
\ULA|ULA20|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|Carry_Out~combout\ = ( \ROM|memROM~11_combout\ & ( \ULA|ULA17|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[18]~9_combout\ & (\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[20]~11_combout\ & 
-- !\BancoRegistradores|saidaB[19]~10_combout\))) # (\BancoRegistradores|saidaB[18]~9_combout\ & (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[20]~11_combout\ & \BancoRegistradores|saidaB[19]~10_combout\))) ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- \ULA|ULA17|Carry_Out~combout\ & ( (\BancoRegistradores|saidaB[20]~11_combout\) # (\ROM|memROM~2_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ULA|ULA17|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & \BancoRegistradores|saidaB[20]~11_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000111111001111110010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[20]~11_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[19]~10_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ULA|ULA17|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA20|Carry_Out~combout\);

-- Location: LABCELL_X43_Y2_N54
\ULA|ULA21|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|saida~0_combout\ = ( \ULA|ULA20|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # ((\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # 
-- (\ROM|memROM~2_combout\ & (((\ROM|memROM~11_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\)))) ) ) ) # ( !\ULA|ULA20|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ $ 
-- (((\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~2_combout\ & ((\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\)))) ) ) ) # ( \ULA|ULA20|Carry_Out~combout\ & ( 
-- !\BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) ) # ( !\ULA|ULA20|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[21]~12_combout\ & ( (\ROM|memROM~2_combout\ & 
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001010101010100010010110101010001010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datae => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\,
	combout => \ULA|ULA21|saida~0_combout\);

-- Location: MLABCELL_X42_Y2_N21
\MUX_BANCOREG|saida_MUX[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[21]~21_combout\ = ( \ULA|ULA21|saida~0_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datae => \ULA|ULA21|ALT_INV_saida~0_combout\,
	combout => \MUX_BANCOREG|saida_MUX[21]~21_combout\);

-- Location: MLABCELL_X42_Y2_N9
\BancoRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1087_combout\ = !\MUX_BANCOREG|saida_MUX[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \BancoRegistradores|registrador~1087_combout\);

-- Location: FF_X42_Y2_N10
\BancoRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1087_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~59_q\);

-- Location: FF_X42_Y2_N16
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~315_q\);

-- Location: LABCELL_X44_Y2_N39
\BancoRegistradores|saidaB[21]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[21]~12_combout\ = ( \BancoRegistradores|registrador~315_q\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((!\BancoRegistradores|registrador~59_q\) # 
-- (\ROM|memROM~12_combout\)))) ) ) ) # ( !\BancoRegistradores|registrador~315_q\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|registrador~59_q\ & !\BancoRegistradores|Equal0~0_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~59_q\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~315_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[21]~12_combout\);

-- Location: MLABCELL_X45_Y3_N36
\ULA|ULA23|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|soma~combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[23]~14_combout\ $ (((!\BancoRegistradores|saidaB[21]~12_combout\ & 
-- !\BancoRegistradores|saidaB[22]~13_combout\))))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (((\BancoRegistradores|saidaB[22]~13_combout\)))) # (\ROM|memROM~11_combout\ & 
-- (!\BancoRegistradores|saidaB[23]~14_combout\ $ (((!\BancoRegistradores|saidaB[21]~12_combout\) # (!\BancoRegistradores|saidaB[22]~13_combout\))))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\) # 
-- (!\BancoRegistradores|saidaB[23]~14_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[22]~13_combout\)) # (\ROM|memROM~11_combout\ & 
-- ((\BancoRegistradores|saidaB[23]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111111111111111000000110001001111100000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[22]~13_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[23]~14_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA23|soma~combout\);

-- Location: MLABCELL_X42_Y3_N9
\ULA|ULA23|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|saida~1_combout\ = ( \ULA|ULA23|soma~combout\ & ( (!\ULA|ULA24|saida~0_combout\ & !\ULA|ULA23|saida~0_combout\) ) ) # ( !\ULA|ULA23|soma~combout\ & ( !\ULA|ULA23|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA23|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_soma~combout\,
	combout => \ULA|ULA23|saida~1_combout\);

-- Location: MLABCELL_X42_Y2_N54
\MUX_BANCOREG|saida_MUX[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[23]~23_combout\ = (!\MUX_BANCOREG|saida_MUX[31]~32_combout\ & !\ULA|ULA23|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	datad => \ULA|ULA23|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[23]~23_combout\);

-- Location: FF_X42_Y2_N58
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~317_q\);

-- Location: MLABCELL_X42_Y2_N36
\BancoRegistradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1088_combout\ = !\MUX_BANCOREG|saida_MUX[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[23]~23_combout\,
	combout => \BancoRegistradores|registrador~1088_combout\);

-- Location: FF_X42_Y2_N37
\BancoRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1088_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~61_q\);

-- Location: LABCELL_X43_Y2_N42
\BancoRegistradores|saidaB[23]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[23]~14_combout\ = ( !\BancoRegistradores|Equal0~0_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~13_combout\ & ((!\ROM|memROM~12_combout\ & ((!\BancoRegistradores|registrador~61_q\))) # (\ROM|memROM~12_combout\ & 
-- (\BancoRegistradores|registrador~317_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|saidaB[23]~14_combout\);

-- Location: LABCELL_X44_Y4_N42
\ULA|ULA23|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|Carry_Out~combout\ = ( \BancoRegistradores|saidaB[21]~12_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[23]~14_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\BancoRegistradores|saidaB[22]~13_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[21]~12_combout\ & ( \ULA|ULA20|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[23]~14_combout\ & 
-- (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (!\BancoRegistradores|saidaB[22]~13_combout\)))) # (\BancoRegistradores|saidaB[23]~14_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( \BancoRegistradores|saidaB[21]~12_combout\ & ( 
-- !\ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[23]~14_combout\ & !\ROM|memROM~2_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[21]~12_combout\ & ( !\ULA|ULA20|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (\BancoRegistradores|saidaB[23]~14_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010111010100010001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[23]~14_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[22]~13_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\,
	dataf => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA23|Carry_Out~combout\);

-- Location: LABCELL_X43_Y2_N9
\ULA|ULA24|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|saida~1_combout\ = ( \ULA|ULA23|Carry_Out~combout\ & ( (!\MUX_ULA|saida_MUX[24]~6_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|signal_B~0_combout\ $ (\ULA|ULA24|Equal1~0_combout\)))) # (\MUX_ULA|saida_MUX[24]~6_combout\ & 
-- (((!\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA24|Equal1~0_combout\)) # (\ULA|ULA24|signal_B~0_combout\))) ) ) # ( !\ULA|ULA23|Carry_Out~combout\ & ( (!\MUX_ULA|saida_MUX[24]~6_combout\ & (\ULA|ULA24|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\))) # 
-- (\MUX_ULA|saida_MUX[24]~6_combout\ & ((!\ULA|ULA24|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\)) # (\ULA|ULA24|signal_B~0_combout\ & ((\ULA|ULA24|Equal1~0_combout\) # (\ULA|ULA24|Equal2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110001011000010111000110010001011100011001000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[24]~6_combout\,
	datab => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA24|saida~1_combout\);

-- Location: LABCELL_X44_Y2_N48
\MUX_BANCOREG|saida_MUX[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[24]~24_combout\ = ( \ULA|ULA24|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[24]~24_combout\);

-- Location: FF_X44_Y2_N49
\BancoRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[24]~24_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~62_q\);

-- Location: FF_X44_Y2_N32
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~318_q\);

-- Location: LABCELL_X44_Y2_N30
\BancoRegistradores|saidaB[24]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[24]~15_combout\ = ( \BancoRegistradores|registrador~318_q\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~62_q\) # 
-- (\ROM|memROM~12_combout\)))) ) ) ) # ( !\BancoRegistradores|registrador~318_q\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~62_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~62_q\,
	datae => \BancoRegistradores|ALT_INV_registrador~318_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[24]~15_combout\);

-- Location: LABCELL_X43_Y2_N24
\MUX_ULA|saida_MUX[24]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[24]~6_combout\ = ( \BancoRegistradores|saidaB[24]~15_combout\ & ( !\ROM|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\,
	combout => \MUX_ULA|saida_MUX[24]~6_combout\);

-- Location: MLABCELL_X45_Y4_N42
\ULA|ULA25|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~0_combout\ = ( \BancoRegistradores|saidaB[25]~16_combout\ & ( !\UNI_LOG_ULA|ULActrl[1]~0_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001001100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[25]~16_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \ULA|ULA25|saida~0_combout\);

-- Location: LABCELL_X43_Y3_N30
\ULA|ULA25|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|saida~1_combout\ = ( !\ULA|ULA25|saida~0_combout\ & ( \ULA|ULA23|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA25|AxorB~combout\ $ (((\ULA|ULA24|signal_B~0_combout\) # (\MUX_ULA|saida_MUX[24]~6_combout\)))) ) ) ) # ( 
-- !\ULA|ULA25|saida~0_combout\ & ( !\ULA|ULA23|Carry_Out~combout\ & ( (!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA25|AxorB~combout\ $ (((\MUX_ULA|saida_MUX[24]~6_combout\ & \ULA|ULA24|signal_B~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111001000000000000000011111001111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_AxorB~combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[24]~6_combout\,
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_signal_B~0_combout\,
	datae => \ULA|ULA25|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA25|saida~1_combout\);

-- Location: MLABCELL_X42_Y2_N48
\MUX_BANCOREG|saida_MUX[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[25]~25_combout\ = ( !\ULA|ULA25|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA25|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[25]~25_combout\);

-- Location: FF_X42_Y2_N49
\BancoRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[25]~25_combout\,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~319_q\);

-- Location: MLABCELL_X42_Y2_N0
\BancoRegistradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1089_combout\ = ( !\MUX_BANCOREG|saida_MUX[25]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[25]~25_combout\,
	combout => \BancoRegistradores|registrador~1089_combout\);

-- Location: FF_X42_Y2_N2
\BancoRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1089_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~63_q\);

-- Location: MLABCELL_X42_Y2_N33
\BancoRegistradores|saidaB[25]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[25]~16_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & \BancoRegistradores|registrador~319_q\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \ROM|memROM~13_combout\ & ( (!\BancoRegistradores|Equal0~0_combout\ & (!\ROM|memROM~10_combout\ & !\BancoRegistradores|registrador~63_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|saidaB[25]~16_combout\);

-- Location: LABCELL_X41_Y3_N48
\ULA|ULA26|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|soma~combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|ULA23|Carry_Out~combout\ & ( (\ROM|memROM~11_combout\ & (!\BancoRegistradores|saidaB[26]~17_combout\ $ (((!\BancoRegistradores|saidaB[25]~16_combout\ & 
-- !\BancoRegistradores|saidaB[24]~15_combout\))))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ULA|ULA23|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[25]~16_combout\)) # (\ROM|memROM~11_combout\ & 
-- (!\BancoRegistradores|saidaB[26]~17_combout\ $ (((!\BancoRegistradores|saidaB[25]~16_combout\) # (!\BancoRegistradores|saidaB[24]~15_combout\))))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ULA|ULA23|Carry_Out~combout\ & ( 
-- (!\BancoRegistradores|saidaB[26]~17_combout\) # (!\ROM|memROM~11_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ULA|ULA23|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[25]~16_combout\)) # (\ROM|memROM~11_combout\ & 
-- ((\BancoRegistradores|saidaB[26]~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011111111111100110001010101001101100000000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[25]~16_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[26]~17_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ULA23|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA26|soma~combout\);

-- Location: LABCELL_X41_Y3_N39
\ULA|ULA26|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|saida~1_combout\ = ( \ULA|ULA26|soma~combout\ & ( (!\ULA|ULA24|saida~0_combout\ & !\ULA|ULA26|saida~0_combout\) ) ) # ( !\ULA|ULA26|soma~combout\ & ( !\ULA|ULA26|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA26|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA26|ALT_INV_soma~combout\,
	combout => \ULA|ULA26|saida~1_combout\);

-- Location: LABCELL_X41_Y3_N27
\MUX_BANCOREG|saida_MUX[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[26]~26_combout\ = ( !\ULA|ULA26|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA26|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[26]~26_combout\);

-- Location: FF_X41_Y3_N50
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~320_q\);

-- Location: FF_X41_Y3_N29
\BancoRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[26]~26_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~64_q\);

-- Location: LABCELL_X41_Y3_N15
\BancoRegistradores|saidaB[26]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[26]~17_combout\ = ( \BancoRegistradores|registrador~320_q\ & ( \BancoRegistradores|registrador~64_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & !\BancoRegistradores|Equal0~0_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~320_q\ & ( \BancoRegistradores|registrador~64_q\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & !\BancoRegistradores|Equal0~0_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~320_q\ & ( !\BancoRegistradores|registrador~64_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & !\BancoRegistradores|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000001000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~320_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~64_q\,
	combout => \BancoRegistradores|saidaB[26]~17_combout\);

-- Location: MLABCELL_X45_Y4_N48
\ULA|ULA26|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|Carry_Out~combout\ = ( \ULA|ULA23|Carry_Out~combout\ & ( \ROM|memROM~11_combout\ & ( (!\BancoRegistradores|saidaB[26]~17_combout\ & (\ROM|memROM~2_combout\ & (!\BancoRegistradores|saidaB[24]~15_combout\ & 
-- !\BancoRegistradores|saidaB[25]~16_combout\))) # (\BancoRegistradores|saidaB[26]~17_combout\ & (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[24]~15_combout\ & \BancoRegistradores|saidaB[25]~16_combout\))) ) ) ) # ( \ULA|ULA23|Carry_Out~combout\ & 
-- ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~2_combout\) # (\BancoRegistradores|saidaB[26]~17_combout\) ) ) ) # ( !\ULA|ULA23|Carry_Out~combout\ & ( !\ROM|memROM~11_combout\ & ( (\BancoRegistradores|saidaB[26]~17_combout\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000000000000000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[26]~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaB[25]~16_combout\,
	datae => \ULA|ULA23|ALT_INV_Carry_Out~combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ULA|ULA26|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y4_N36
\ULA|ULA27|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|saida~1_combout\ = ( \ULA|ULA26|Carry_Out~combout\ & ( (!\ULA|ULA27|saida~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (\ULA|ULA27|AxorB~combout\))) ) ) # ( !\ULA|ULA26|Carry_Out~combout\ & ( (!\ULA|ULA27|saida~0_combout\ & 
-- ((!\ULA|ULA27|AxorB~combout\) # (!\ULA|ULA24|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA27|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA27|ALT_INV_AxorB~combout\,
	datad => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA27|saida~1_combout\);

-- Location: LABCELL_X39_Y4_N30
\MUX_BANCOREG|saida_MUX[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[27]~27_combout\ = ( !\ULA|ULA27|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA27|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[27]~27_combout\);

-- Location: LABCELL_X39_Y4_N18
\BancoRegistradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1090_combout\ = ( !\MUX_BANCOREG|saida_MUX[27]~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MUX_BANCOREG|ALT_INV_saida_MUX[27]~27_combout\,
	combout => \BancoRegistradores|registrador~1090_combout\);

-- Location: FF_X39_Y4_N20
\BancoRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BancoRegistradores|registrador~1090_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~65_q\);

-- Location: FF_X39_Y4_N41
\BancoRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_BANCOREG|saida_MUX[27]~27_combout\,
	sload => VCC,
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~321_q\);

-- Location: LABCELL_X39_Y4_N24
\BancoRegistradores|saidaB[27]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[27]~18_combout\ = ( !\BancoRegistradores|Equal0~0_combout\ & ( \BancoRegistradores|registrador~321_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & ((!\BancoRegistradores|registrador~65_q\) # 
-- (\ROM|memROM~12_combout\)))) ) ) ) # ( !\BancoRegistradores|Equal0~0_combout\ & ( !\BancoRegistradores|registrador~321_q\ & ( (!\BancoRegistradores|registrador~65_q\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~321_q\,
	combout => \BancoRegistradores|saidaB[27]~18_combout\);

-- Location: LABCELL_X39_Y4_N12
\ULA|ULA27|signal_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|signal_B~0_combout\ = ( \ROM|memROM~2_combout\ & ( !\BancoRegistradores|saidaB[27]~18_combout\ ) ) # ( !\ROM|memROM~2_combout\ & ( \BancoRegistradores|saidaB[27]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_saidaB[27]~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|ULA27|signal_B~0_combout\);

-- Location: MLABCELL_X42_Y4_N54
\ULA|ULA28|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|saida~1_combout\ = ( \MUX_ULA|saida_MUX[27]~7_combout\ & ( \ULA|ULA26|Carry_Out~combout\ & ( (!\ULA|ULA28|saida~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (\ULA|ULA28|AxorB~combout\))) ) ) ) # ( !\MUX_ULA|saida_MUX[27]~7_combout\ & ( 
-- \ULA|ULA26|Carry_Out~combout\ & ( (!\ULA|ULA28|saida~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA28|AxorB~combout\ $ (\ULA|ULA27|signal_B~0_combout\)))) ) ) ) # ( \MUX_ULA|saida_MUX[27]~7_combout\ & ( !\ULA|ULA26|Carry_Out~combout\ & ( 
-- (!\ULA|ULA28|saida~0_combout\ & ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA28|AxorB~combout\ $ (\ULA|ULA27|signal_B~0_combout\)))) ) ) ) # ( !\MUX_ULA|saida_MUX[27]~7_combout\ & ( !\ULA|ULA26|Carry_Out~combout\ & ( (!\ULA|ULA28|saida~0_combout\ & 
-- ((!\ULA|ULA24|saida~0_combout\) # (!\ULA|ULA28|AxorB~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001000101010101000100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA28|ALT_INV_AxorB~combout\,
	datad => \ULA|ULA27|ALT_INV_signal_B~0_combout\,
	datae => \MUX_ULA|ALT_INV_saida_MUX[27]~7_combout\,
	dataf => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA28|saida~1_combout\);

-- Location: LABCELL_X41_Y3_N9
\MUX_BANCOREG|saida_MUX[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_BANCOREG|saida_MUX[28]~28_combout\ = ( !\ULA|ULA28|saida~1_combout\ & ( !\MUX_BANCOREG|saida_MUX[31]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX_BANCOREG|ALT_INV_saida_MUX[31]~32_combout\,
	dataf => \ULA|ULA28|ALT_INV_saida~1_combout\,
	combout => \MUX_BANCOREG|saida_MUX[28]~28_combout\);

-- Location: FF_X41_Y3_N14
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
	ena => \BancoRegistradores|registrador~1075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~322_q\);

-- Location: FF_X41_Y3_N11
\BancoRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_BANCOREG|saida_MUX[28]~28_combout\,
	ena => \BancoRegistradores|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~66_q\);

-- Location: LABCELL_X41_Y3_N12
\BancoRegistradores|saidaB[28]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaB[28]~19_combout\ = ( \BancoRegistradores|registrador~322_q\ & ( \BancoRegistradores|registrador~66_q\ & ( (!\ROM|memROM~10_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|registrador~322_q\ & ( \BancoRegistradores|registrador~66_q\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \ROM|memROM~13_combout\))) ) ) ) # ( 
-- \BancoRegistradores|registrador~322_q\ & ( !\BancoRegistradores|registrador~66_q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000100000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \BancoRegistradores|ALT_INV_registrador~322_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~66_q\,
	combout => \BancoRegistradores|saidaB[28]~19_combout\);

-- Location: MLABCELL_X45_Y4_N24
\ULA|ULA29|Carry_Out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|Carry_Out~combout\ = ( \BancoRegistradores|saidaB[27]~18_combout\ & ( \ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~2_combout\ & (\BancoRegistradores|saidaB[29]~20_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\BancoRegistradores|saidaB[28]~19_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[27]~18_combout\ & ( \ULA|ULA26|Carry_Out~combout\ & ( (!\BancoRegistradores|saidaB[29]~20_combout\ & 
-- (\ROM|memROM~2_combout\ & ((!\ROM|memROM~11_combout\) # (!\BancoRegistradores|saidaB[28]~19_combout\)))) # (\BancoRegistradores|saidaB[29]~20_combout\ & (!\ROM|memROM~11_combout\)) ) ) ) # ( \BancoRegistradores|saidaB[27]~18_combout\ & ( 
-- !\ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & (\BancoRegistradores|saidaB[29]~20_combout\ & !\ROM|memROM~2_combout\)) ) ) ) # ( !\BancoRegistradores|saidaB[27]~18_combout\ & ( !\ULA|ULA26|Carry_Out~combout\ & ( (!\ROM|memROM~11_combout\ & 
-- (\BancoRegistradores|saidaB[29]~20_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010111010100000101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaB[28]~19_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[29]~20_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaB[27]~18_combout\,
	dataf => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA29|Carry_Out~combout\);

-- Location: MLABCELL_X42_Y4_N18
\ULA|ULA30|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|saida~0_combout\ = ( \ULA|ULA29|Carry_Out~combout\ & ( (!\ULA|ULA30|signal_B~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & (!\ULA|ULA24|Equal1~0_combout\ $ (\MUX_ULA|saida_MUX[30]~8_combout\)))) # (\ULA|ULA30|signal_B~0_combout\ & 
-- (((\ULA|ULA24|Equal1~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)) # (\MUX_ULA|saida_MUX[30]~8_combout\))) ) ) # ( !\ULA|ULA29|Carry_Out~combout\ & ( (!\ULA|ULA30|signal_B~0_combout\ & (((\MUX_ULA|saida_MUX[30]~8_combout\ & 
-- !\ULA|ULA24|Equal2~0_combout\)))) # (\ULA|ULA30|signal_B~0_combout\ & ((!\MUX_ULA|saida_MUX[30]~8_combout\ & ((!\ULA|ULA24|Equal2~0_combout\))) # (\MUX_ULA|saida_MUX[30]~8_combout\ & ((\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA24|Equal1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100000011001111010000001110010111000000111001011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datab => \ULA|ULA30|ALT_INV_signal_B~0_combout\,
	datac => \MUX_ULA|ALT_INV_saida_MUX[30]~8_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_Carry_Out~combout\,
	combout => \ULA|ULA30|saida~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\ULA|ULA22|saida~2_combout\ & ( (\ULA|ULA25|saida~1_combout\ & (!\ULA|ULA21|saida~0_combout\ & (!\ULA|ULA20|saida~0_combout\ & !\ULA|ULA24|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA21|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA20|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA24|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~2_combout\,
	combout => \comb~6_combout\);

-- Location: LABCELL_X41_Y3_N3
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ULA|ULA1|saida~0_combout\ & ( (!\ROM|memROM~8_combout\ & (!\ULA|ULA0|saida~0_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ULA|ULA0|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X41_Y3_N24
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ULA|ULA4|saida~1_combout\ & ( (!\ULA|ULA2|saida~0_combout\ & (!\ULA|ULA3|saida~2_combout\ & \comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|ALT_INV_saida~2_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \ULA|ULA4|ALT_INV_saida~1_combout\,
	combout => \comb~1_combout\);

-- Location: MLABCELL_X42_Y3_N6
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\ULA|ULA6|saida~0_combout\ & ( (!\ULA|ULA5|saida~0_combout\ & (\comb~1_combout\ & (\ULA|ULA8|saida~2_combout\ & !\ULA|ULA7|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \ULA|ULA8|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA7|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA6|ALT_INV_saida~0_combout\,
	combout => \comb~2_combout\);

-- Location: MLABCELL_X42_Y3_N33
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \comb~2_combout\ & ( (!\ULA|ULA9|saida~0_combout\ & (!\ULA|ULA12|saida~0_combout\ & (!\ULA|ULA11|saida~2_combout\ & !\ULA|ULA10|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA12|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA11|ALT_INV_saida~2_combout\,
	datad => \ULA|ULA10|ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

-- Location: MLABCELL_X42_Y3_N12
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \comb~3_combout\ & ( (!\ULA|ULA16|saida~0_combout\ & (!\ULA|ULA13|saida~0_combout\ & (!\ULA|ULA15|saida~1_combout\ & !\ULA|ULA14|saida~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA13|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA15|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA14|ALT_INV_saida~2_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

-- Location: MLABCELL_X42_Y3_N0
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \ULA|ULA23|saida~1_combout\ & ( (!\ULA|ULA19|saida~2_combout\ & (\comb~4_combout\ & (!\ULA|ULA17|saida~0_combout\ & !\ULA|ULA18|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_saida~2_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \ULA|ULA17|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA18|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_saida~1_combout\,
	combout => \comb~5_combout\);

-- Location: LABCELL_X41_Y4_N39
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \comb~5_combout\ & ( (\ULA|ULA26|saida~1_combout\ & (\ULA|ULA27|saida~1_combout\ & (\ULA|ULA28|saida~1_combout\ & \comb~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA27|ALT_INV_saida~1_combout\,
	datac => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_comb~6_combout\,
	dataf => \ALT_INV_comb~5_combout\,
	combout => \comb~7_combout\);

-- Location: LABCELL_X41_Y4_N42
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \comb~7_combout\ & ( (!\ULA|ULA30|saida~0_combout\ & (\ULA|ULA31|saida~1_combout\ & \ULA|ULA29|saida~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA30|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA29|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \comb~8_combout\);

-- Location: LABCELL_X40_Y6_N12
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

-- Location: LABCELL_X40_Y6_N15
\somaConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~17_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~22\ ))
-- \somaConstante|Add0~18\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \somaConstante|Add0~22\,
	sumout => \somaConstante|Add0~17_sumout\,
	cout => \somaConstante|Add0~18\);

-- Location: LABCELL_X44_Y5_N27
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( !\PC|DOUT\(6) ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(6) & \PC|DOUT[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X41_Y5_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~21_sumout\ ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~21_sumout\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~21_sumout\,
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X41_Y5_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \somaConstante|Add0~17_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~6_combout\) ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \somaConstante|Add0~17_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~6_combout\) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \somaConstante|ALT_INV_Add0~17_sumout\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X43_Y4_N12
\MUX_PROXPC|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[7]~4_combout\ = ( \ROM|memROM~10_combout\ & ( ((!\comb~8_combout\ & (\somaConstante|Add0~17_sumout\)) # (\comb~8_combout\ & ((\Add0~13_sumout\)))) # (\UNI_LOG|saida[9]~0_combout\) ) ) # ( !\ROM|memROM~10_combout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & ((!\comb~8_combout\ & (\somaConstante|Add0~17_sumout\)) # (\comb~8_combout\ & ((\Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MUX_PROXPC|saida_MUX[7]~4_combout\);

-- Location: FF_X43_Y4_N14
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

-- Location: LABCELL_X43_Y4_N48
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[4]~DUPLICATE_q\ & 
-- ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[2]~DUPLICATE_q\ & 
-- !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X43_Y4_N54
\MUX_PROXPC|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[3]~0_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\Add0~1_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~2_combout\)) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~1_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \somaConstante|ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[3]~0_combout\);

-- Location: FF_X43_Y4_N55
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PROXPC|saida_MUX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X44_Y5_N48
\UNI_LOG|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG|Equal4~0_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(2) & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) $ (\PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & 
-- (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(6) & !\PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \UNI_LOG|Equal4~0_combout\);

-- Location: MLABCELL_X42_Y6_N54
\UNI_LOG|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNI_LOG|saida[9]~0_combout\ = ( \ROM|memROM~8_combout\ & ( !\UNI_LOG|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UNI_LOG|ALT_INV_Equal4~0_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \UNI_LOG|saida[9]~0_combout\);

-- Location: LABCELL_X43_Y4_N9
\MUX_PROXPC|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[6]~5_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~17_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \somaConstante|ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[6]~5_combout\);

-- Location: FF_X43_Y4_N10
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

-- Location: LABCELL_X43_Y4_N42
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X42_Y2_N42
\ULA|saida[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~0_combout\ = ( \ULA|ULA23|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[24]~15_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (!\ROM|memROM~11_combout\)) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~11_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))) ) ) ) # ( !\ULA|ULA23|Carry_Out~combout\ & ( 
-- \BancoRegistradores|saidaB[24]~15_combout\ & ( (!\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (((\ROM|memROM~11_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & 
-- (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))) ) ) ) # ( \ULA|ULA23|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[24]~15_combout\ & ( (!\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) ) # ( !\ULA|ULA23|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[24]~15_combout\ & ( (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000011000000000010000110110000001000100111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datae => \ULA|ULA23|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[24]~15_combout\,
	combout => \ULA|saida[24]~0_combout\);

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

-- Location: LABCELL_X44_Y5_N39
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT[7]~DUPLICATE_q\ & 
-- \PC|DOUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X40_Y6_N18
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

-- Location: LABCELL_X41_Y5_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~57_sumout\ ) + ( \Add0~14\ ))
-- \Add0~54\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~57_sumout\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~57_sumout\,
	cin => \Add0~14\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X40_Y5_N0
\MUX_PROXPC|saida_MUX[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[8]~14_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~53_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[8]~14_combout\);

-- Location: FF_X40_Y5_N1
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

-- Location: LABCELL_X40_Y6_N21
\somaConstante|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~69_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~58\ ))
-- \somaConstante|Add0~70\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(9),
	cin => \somaConstante|Add0~58\,
	sumout => \somaConstante|Add0~69_sumout\,
	cout => \somaConstante|Add0~70\);

-- Location: LABCELL_X41_Y5_N21
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~69_sumout\ ) + ( \Add0~54\ ))
-- \Add0~66\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~69_sumout\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~69_sumout\,
	cin => \Add0~54\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X40_Y5_N15
\MUX_PROXPC|saida_MUX[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[9]~17_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~65_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~69_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_Add0~65_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[9]~17_combout\);

-- Location: FF_X40_Y5_N16
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

-- Location: LABCELL_X40_Y6_N24
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

-- Location: LABCELL_X41_Y5_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \somaConstante|Add0~65_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( \somaConstante|Add0~65_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~65_sumout\,
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X40_Y5_N9
\MUX_PROXPC|saida_MUX[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[10]~16_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~61_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~61_sumout\,
	datad => \somaConstante|ALT_INV_Add0~65_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[10]~16_combout\);

-- Location: FF_X40_Y5_N10
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

-- Location: LABCELL_X40_Y6_N27
\somaConstante|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~61_sumout\ = SUM(( \PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~66\ ))
-- \somaConstante|Add0~62\ = CARRY(( \PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[11]~DUPLICATE_q\,
	cin => \somaConstante|Add0~66\,
	sumout => \somaConstante|Add0~61_sumout\,
	cout => \somaConstante|Add0~62\);

-- Location: LABCELL_X41_Y5_N27
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \somaConstante|Add0~61_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \somaConstante|Add0~61_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~61_sumout\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X41_Y6_N54
\MUX_PROXPC|saida_MUX[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[11]~15_combout\ = ( \somaConstante|Add0~61_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~57_sumout\) ) ) ) # ( !\somaConstante|Add0~61_sumout\ & ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- \Add0~57_sumout\) ) ) ) # ( \somaConstante|Add0~61_sumout\ & ( !\comb~8_combout\ & ( !\UNI_LOG|saida[9]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datae => \somaConstante|ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[11]~15_combout\);

-- Location: FF_X41_Y6_N56
\PC|DOUT[11]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[11]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y6_N30
\somaConstante|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~73_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~62\ ))
-- \somaConstante|Add0~74\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(12),
	cin => \somaConstante|Add0~62\,
	sumout => \somaConstante|Add0~73_sumout\,
	cout => \somaConstante|Add0~74\);

-- Location: LABCELL_X41_Y5_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~73_sumout\ ) + ( \Add0~58\ ))
-- \Add0~70\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~73_sumout\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~73_sumout\,
	cin => \Add0~58\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X40_Y5_N12
\MUX_PROXPC|saida_MUX[12]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[12]~18_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~69_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \somaConstante|ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[12]~18_combout\);

-- Location: FF_X40_Y5_N13
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

-- Location: LABCELL_X40_Y6_N33
\somaConstante|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~85_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~74\ ))
-- \somaConstante|Add0~86\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \somaConstante|Add0~74\,
	sumout => \somaConstante|Add0~85_sumout\,
	cout => \somaConstante|Add0~86\);

-- Location: LABCELL_X41_Y5_N33
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~85_sumout\ ) + ( \Add0~70\ ))
-- \Add0~82\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~85_sumout\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~85_sumout\,
	cin => \Add0~70\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X40_Y5_N3
\MUX_PROXPC|saida_MUX[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[13]~21_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~81_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~85_sumout\,
	datad => \ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[13]~21_combout\);

-- Location: FF_X40_Y5_N5
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

-- Location: LABCELL_X40_Y6_N36
\somaConstante|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~81_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~86\ ))
-- \somaConstante|Add0~82\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(14),
	cin => \somaConstante|Add0~86\,
	sumout => \somaConstante|Add0~81_sumout\,
	cout => \somaConstante|Add0~82\);

-- Location: LABCELL_X41_Y5_N36
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~81_sumout\ ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~81_sumout\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~81_sumout\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X41_Y6_N6
\MUX_PROXPC|saida_MUX[14]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[14]~20_combout\ = ( \Add0~77_sumout\ & ( \comb~8_combout\ & ( !\UNI_LOG|saida[9]~0_combout\ ) ) ) # ( \Add0~77_sumout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~81_sumout\) ) ) ) # ( 
-- !\Add0~77_sumout\ & ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~81_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~81_sumout\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[14]~20_combout\);

-- Location: FF_X41_Y6_N7
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

-- Location: LABCELL_X40_Y6_N39
\somaConstante|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~77_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~82\ ))
-- \somaConstante|Add0~78\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \somaConstante|Add0~82\,
	sumout => \somaConstante|Add0~77_sumout\,
	cout => \somaConstante|Add0~78\);

-- Location: LABCELL_X41_Y5_N39
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \somaConstante|Add0~77_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( \somaConstante|Add0~77_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~77_sumout\,
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X40_Y4_N24
\MUX_PROXPC|saida_MUX[15]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[15]~19_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~73_sumout\) ) ) # ( !\comb~8_combout\ & ( (\somaConstante|Add0~77_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \somaConstante|ALT_INV_Add0~77_sumout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[15]~19_combout\);

-- Location: FF_X40_Y4_N25
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

-- Location: LABCELL_X40_Y6_N42
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

-- Location: LABCELL_X41_Y5_N42
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \somaConstante|Add0~89_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~6_combout\) ) + ( \Add0~74\ ))
-- \Add0~86\ = CARRY(( \somaConstante|Add0~89_sumout\ ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~6_combout\) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \somaConstante|ALT_INV_Add0~89_sumout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \Add0~74\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X40_Y4_N18
\MUX_PROXPC|saida_MUX[16]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[16]~22_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~85_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~89_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \somaConstante|ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[16]~22_combout\);

-- Location: FF_X40_Y4_N19
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

-- Location: LABCELL_X40_Y6_N45
\somaConstante|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~101_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~90\ ))
-- \somaConstante|Add0~102\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(17),
	cin => \somaConstante|Add0~90\,
	sumout => \somaConstante|Add0~101_sumout\,
	cout => \somaConstante|Add0~102\);

-- Location: LABCELL_X41_Y5_N45
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~101_sumout\ ) + ( \Add0~86\ ))
-- \Add0~98\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~101_sumout\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~101_sumout\,
	cin => \Add0~86\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X41_Y6_N21
\MUX_PROXPC|saida_MUX[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[17]~25_combout\ = ( \comb~8_combout\ & ( (\Add0~97_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~97_sumout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[17]~25_combout\);

-- Location: FF_X41_Y6_N23
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

-- Location: LABCELL_X40_Y6_N48
\somaConstante|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~97_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~102\ ))
-- \somaConstante|Add0~98\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \somaConstante|Add0~102\,
	sumout => \somaConstante|Add0~97_sumout\,
	cout => \somaConstante|Add0~98\);

-- Location: LABCELL_X41_Y5_N48
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \somaConstante|Add0~97_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( \somaConstante|Add0~97_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~97_sumout\,
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X40_Y5_N24
\MUX_PROXPC|saida_MUX[18]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[18]~24_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~93_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~13_combout\))) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- (\somaConstante|Add0~97_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((!\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_Add0~93_sumout\,
	datac => \somaConstante|ALT_INV_Add0~97_sumout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[18]~24_combout\);

-- Location: FF_X40_Y5_N26
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

-- Location: LABCELL_X40_Y6_N51
\somaConstante|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~93_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~98\ ))
-- \somaConstante|Add0~94\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(19),
	cin => \somaConstante|Add0~98\,
	sumout => \somaConstante|Add0~93_sumout\,
	cout => \somaConstante|Add0~94\);

-- Location: LABCELL_X41_Y5_N51
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~93_sumout\ ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~93_sumout\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~93_sumout\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X40_Y4_N6
\MUX_PROXPC|saida_MUX[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[19]~23_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (\Add0~89_sumout\)) # (\UNI_LOG|saida[9]~0_combout\ & ((\ROM|memROM~10_combout\))) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~93_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~89_sumout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~93_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[19]~23_combout\);

-- Location: FF_X40_Y4_N7
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

-- Location: LABCELL_X40_Y6_N54
\somaConstante|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~105_sumout\ = SUM(( \PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~94\ ))
-- \somaConstante|Add0~106\ = CARRY(( \PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[20]~DUPLICATE_q\,
	cin => \somaConstante|Add0~94\,
	sumout => \somaConstante|Add0~105_sumout\,
	cout => \somaConstante|Add0~106\);

-- Location: LABCELL_X41_Y5_N54
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \somaConstante|Add0~105_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~90\ ))
-- \Add0~102\ = CARRY(( \somaConstante|Add0~105_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~105_sumout\,
	cin => \Add0~90\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X41_Y6_N0
\MUX_PROXPC|saida_MUX[20]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[20]~26_combout\ = ( !\UNI_LOG|saida[9]~0_combout\ & ( \comb~8_combout\ & ( \Add0~101_sumout\ ) ) ) # ( !\UNI_LOG|saida[9]~0_combout\ & ( !\comb~8_combout\ & ( \somaConstante|Add0~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_Add0~101_sumout\,
	datae => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[20]~26_combout\);

-- Location: FF_X41_Y6_N2
\PC|DOUT[20]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[20]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y6_N57
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

-- Location: LABCELL_X41_Y5_N57
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \somaConstante|Add0~117_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~102\ ))
-- \Add0~114\ = CARRY(( \somaConstante|Add0~117_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~117_sumout\,
	cin => \Add0~102\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X40_Y5_N6
\MUX_PROXPC|saida_MUX[21]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[21]~29_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & ((\Add0~113_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~12_combout\)) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & 
-- ((\somaConstante|Add0~117_sumout\))) # (\UNI_LOG|saida[9]~0_combout\ & (\ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \somaConstante|ALT_INV_Add0~117_sumout\,
	datad => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[21]~29_combout\);

-- Location: FF_X40_Y5_N8
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

-- Location: LABCELL_X40_Y5_N30
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

-- Location: LABCELL_X41_Y4_N0
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \somaConstante|Add0~113_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( \somaConstante|Add0~113_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~113_sumout\,
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X41_Y4_N54
\MUX_PROXPC|saida_MUX[22]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[22]~28_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~109_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \somaConstante|ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[22]~28_combout\);

-- Location: FF_X41_Y4_N56
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

-- Location: LABCELL_X40_Y5_N33
\somaConstante|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~109_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~114\ ))
-- \somaConstante|Add0~110\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \somaConstante|Add0~114\,
	sumout => \somaConstante|Add0~109_sumout\,
	cout => \somaConstante|Add0~110\);

-- Location: LABCELL_X41_Y4_N3
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \somaConstante|Add0~109_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( \somaConstante|Add0~109_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~109_sumout\,
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X41_Y4_N30
\MUX_PROXPC|saida_MUX[23]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[23]~27_combout\ = ( \Add0~105_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\somaConstante|Add0~109_sumout\)) # (\comb~8_combout\))) # (\UNI_LOG|saida[9]~0_combout\ & (((\ROM|memROM~14_combout\)))) ) ) # ( !\Add0~105_sumout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & (!\comb~8_combout\ & ((\somaConstante|Add0~109_sumout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (((\ROM|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \somaConstante|ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_Add0~105_sumout\,
	combout => \MUX_PROXPC|saida_MUX[23]~27_combout\);

-- Location: FF_X41_Y4_N31
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

-- Location: LABCELL_X40_Y5_N36
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

-- Location: LABCELL_X41_Y4_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~25_sumout\ ) + ( \Add0~106\ ))
-- \Add0~22\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~25_sumout\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~25_sumout\,
	cin => \Add0~106\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X41_Y4_N45
\MUX_PROXPC|saida_MUX[24]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[24]~6_combout\ = ( \comb~8_combout\ & ( (\Add0~21_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) ) # ( !\comb~8_combout\ & ( (\somaConstante|Add0~25_sumout\ & !\UNI_LOG|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[24]~6_combout\);

-- Location: FF_X41_Y4_N46
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

-- Location: LABCELL_X41_Y6_N15
\MUX_HEX|saida_MUX[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[24]~0_combout\ = ( \SW[0]~input_o\ & ( \PC|DOUT\(24) & ( \ULA|saida[24]~0_combout\ ) ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(24) ) ) # ( \SW[0]~input_o\ & ( !\PC|DOUT\(24) & ( \ULA|saida[24]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_saida[24]~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(24),
	combout => \MUX_HEX|saida_MUX[24]~0_combout\);

-- Location: LABCELL_X40_Y5_N39
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

-- Location: LABCELL_X41_Y4_N9
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~29_sumout\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~29_sumout\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~29_sumout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X41_Y4_N48
\MUX_PROXPC|saida_MUX[25]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[25]~7_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~25_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \somaConstante|ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[25]~7_combout\);

-- Location: FF_X41_Y4_N50
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

-- Location: LABCELL_X43_Y6_N48
\MUX_HEX|saida_MUX[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[25]~1_combout\ = ( \PC|DOUT\(25) & ( (!\SW[0]~input_o\) # ((!\ULA|ULA25|saida~1_combout\ & !\ULA|Equal5~0_combout\)) ) ) # ( !\PC|DOUT\(25) & ( (!\ULA|ULA25|saida~1_combout\ & (\SW[0]~input_o\ & !\ULA|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(25),
	combout => \MUX_HEX|saida_MUX[25]~1_combout\);

-- Location: LABCELL_X40_Y5_N42
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

-- Location: LABCELL_X41_Y4_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \somaConstante|Add0~33_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \somaConstante|Add0~33_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~33_sumout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X41_Y4_N33
\MUX_PROXPC|saida_MUX[26]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[26]~8_combout\ = ( \Add0~29_sumout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & (((\somaConstante|Add0~33_sumout\)) # (\comb~8_combout\))) # (\UNI_LOG|saida[9]~0_combout\ & (((\ROM|memROM~10_combout\)))) ) ) # ( !\Add0~29_sumout\ & ( 
-- (!\UNI_LOG|saida[9]~0_combout\ & (!\comb~8_combout\ & ((\somaConstante|Add0~33_sumout\)))) # (\UNI_LOG|saida[9]~0_combout\ & (((\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \somaConstante|ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \MUX_PROXPC|saida_MUX[26]~8_combout\);

-- Location: FF_X41_Y4_N34
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

-- Location: LABCELL_X41_Y3_N42
\MUX_HEX|saida_MUX[26]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[26]~2_combout\ = ( \PC|DOUT\(26) & ( \ULA|Equal5~0_combout\ & ( !\SW[0]~input_o\ ) ) ) # ( \PC|DOUT\(26) & ( !\ULA|Equal5~0_combout\ & ( ((!\SW[0]~input_o\) # ((\ULA|ULA26|soma~combout\ & \ULA|ULA24|saida~0_combout\))) # 
-- (\ULA|ULA26|saida~0_combout\) ) ) ) # ( !\PC|DOUT\(26) & ( !\ULA|Equal5~0_combout\ & ( (\SW[0]~input_o\ & (((\ULA|ULA26|soma~combout\ & \ULA|ULA24|saida~0_combout\)) # (\ULA|ULA26|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111111111110101011100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA26|ALT_INV_soma~combout\,
	datac => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(26),
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \MUX_HEX|saida_MUX[26]~2_combout\);

-- Location: LABCELL_X40_Y5_N45
\somaConstante|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~37_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~34\ ))
-- \somaConstante|Add0~38\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \somaConstante|Add0~34\,
	sumout => \somaConstante|Add0~37_sumout\,
	cout => \somaConstante|Add0~38\);

-- Location: LABCELL_X41_Y4_N15
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~37_sumout\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~37_sumout\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~37_sumout\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X41_Y4_N51
\MUX_PROXPC|saida_MUX[27]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[27]~9_combout\ = ( \comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \Add0~33_sumout\) ) ) # ( !\comb~8_combout\ & ( (!\UNI_LOG|saida[9]~0_combout\ & \somaConstante|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG|ALT_INV_saida[9]~0_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \somaConstante|ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[27]~9_combout\);

-- Location: FF_X41_Y4_N52
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

-- Location: LABCELL_X39_Y4_N33
\ULA|saida[27]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~1_combout\ = ( \ULA|ULA27|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA27|saida~0_combout\ & ( (\ULA|ULA24|saida~0_combout\ & (!\ULA|Equal5~0_combout\ & (!\ULA|ULA26|Carry_Out~combout\ $ (!\ULA|ULA27|AxorB~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_Carry_Out~combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA27|ALT_INV_AxorB~combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA27|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[27]~1_combout\);

-- Location: LABCELL_X39_Y4_N39
\MUX_HEX|saida_MUX[27]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[27]~3_combout\ = ( \ULA|saida[27]~1_combout\ & ( (\PC|DOUT\(27)) # (\SW[0]~input_o\) ) ) # ( !\ULA|saida[27]~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(27),
	dataf => \ULA|ALT_INV_saida[27]~1_combout\,
	combout => \MUX_HEX|saida_MUX[27]~3_combout\);

-- Location: FF_X41_Y6_N19
\PC|DOUT[28]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N48
\somaConstante|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~41_sumout\ = SUM(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~38\ ))
-- \somaConstante|Add0~42\ = CARRY(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \somaConstante|Add0~38\,
	sumout => \somaConstante|Add0~41_sumout\,
	cout => \somaConstante|Add0~42\);

-- Location: LABCELL_X41_Y4_N18
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~41_sumout\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~41_sumout\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~41_sumout\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X41_Y6_N18
\MUX_PROXPC|saida_MUX[28]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[28]~10_combout\ = ( \comb~8_combout\ & ( \Add0~37_sumout\ ) ) # ( !\comb~8_combout\ & ( \somaConstante|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[28]~10_combout\);

-- Location: FF_X41_Y6_N20
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

-- Location: LABCELL_X41_Y6_N39
\MUX_HEX|saida_MUX[28]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[28]~4_combout\ = ( \SW[0]~input_o\ & ( \PC|DOUT\(28) & ( (!\ULA|ULA28|saida~1_combout\ & !\ULA|Equal5~0_combout\) ) ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(28) ) ) # ( \SW[0]~input_o\ & ( !\PC|DOUT\(28) & ( (!\ULA|ULA28|saida~1_combout\ 
-- & !\ULA|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(28),
	combout => \MUX_HEX|saida_MUX[28]~4_combout\);

-- Location: LABCELL_X40_Y5_N51
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

-- Location: LABCELL_X41_Y4_N21
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \somaConstante|Add0~45_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \somaConstante|Add0~45_sumout\ ) + ( \ROM|memROM~0_combout\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~45_sumout\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X40_Y5_N27
\MUX_PROXPC|saida_MUX[29]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[29]~11_combout\ = ( \comb~8_combout\ & ( \Add0~41_sumout\ ) ) # ( !\comb~8_combout\ & ( \somaConstante|Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[29]~11_combout\);

-- Location: FF_X40_Y5_N29
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

-- Location: LABCELL_X40_Y5_N18
\MUX_HEX|saida_MUX[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[29]~5_combout\ = ( \PC|DOUT\(29) & ( \ULA|ULA29|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\) # (!\SW[0]~input_o\) ) ) ) # ( !\PC|DOUT\(29) & ( \ULA|ULA29|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & \SW[0]~input_o\) ) ) ) # ( 
-- \PC|DOUT\(29) & ( !\ULA|ULA29|saida~0_combout\ & ( (!\SW[0]~input_o\) # ((\ULA|ULA29|soma~combout\ & (\ULA|ULA24|saida~0_combout\ & !\ULA|Equal5~0_combout\))) ) ) ) # ( !\PC|DOUT\(29) & ( !\ULA|ULA29|saida~0_combout\ & ( (\ULA|ULA29|soma~combout\ & 
-- (\ULA|ULA24|saida~0_combout\ & (!\ULA|Equal5~0_combout\ & \SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111110001000000000000111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_soma~combout\,
	datab => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(29),
	dataf => \ULA|ULA29|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[29]~5_combout\);

-- Location: LABCELL_X43_Y2_N0
\ULA|saida[30]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~2_combout\ = ( \ULA|ULA29|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[30]~21_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ((!\ROM|memROM~11_combout\))) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (\ROM|memROM~11_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))) ) ) ) # ( !\ULA|ULA29|Carry_Out~combout\ & ( 
-- \BancoRegistradores|saidaB[30]~21_combout\ & ( (!\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (((\ROM|memROM~11_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))))) # (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- (!\ROM|memROM~11_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))) ) ) ) # ( \ULA|ULA29|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[30]~21_combout\ & ( (!\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) ) # ( !\ULA|ULA29|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[30]~21_combout\ & ( (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000001000100000000010010010100010001010000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datae => \ULA|ULA29|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[30]~21_combout\,
	combout => \ULA|saida[30]~2_combout\);

-- Location: LABCELL_X40_Y5_N54
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

-- Location: LABCELL_X41_Y4_N24
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~49_sumout\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~49_sumout\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~49_sumout\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X40_Y4_N27
\MUX_PROXPC|saida_MUX[30]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[30]~12_combout\ = ( \comb~8_combout\ & ( \Add0~45_sumout\ ) ) # ( !\comb~8_combout\ & ( \somaConstante|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[30]~12_combout\);

-- Location: FF_X40_Y4_N28
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

-- Location: LABCELL_X41_Y6_N33
\MUX_HEX|saida_MUX[30]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[30]~6_combout\ = ( \SW[0]~input_o\ & ( \PC|DOUT\(30) & ( \ULA|saida[30]~2_combout\ ) ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(30) ) ) # ( \SW[0]~input_o\ & ( !\PC|DOUT\(30) & ( \ULA|saida[30]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[30]~2_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(30),
	combout => \MUX_HEX|saida_MUX[30]~6_combout\);

-- Location: FF_X41_Y4_N37
\PC|DOUT[31]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[31]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N57
\somaConstante|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~53_sumout\ = SUM(( \PC|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \somaConstante|Add0~50\,
	sumout => \somaConstante|Add0~53_sumout\);

-- Location: LABCELL_X41_Y4_N27
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( \somaConstante|Add0~53_sumout\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \somaConstante|ALT_INV_Add0~53_sumout\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\);

-- Location: LABCELL_X41_Y4_N36
\MUX_PROXPC|saida_MUX[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PROXPC|saida_MUX[31]~13_combout\ = ( \comb~8_combout\ & ( \Add0~49_sumout\ ) ) # ( !\comb~8_combout\ & ( \somaConstante|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_PROXPC|saida_MUX[31]~13_combout\);

-- Location: FF_X41_Y4_N38
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

-- Location: LABCELL_X47_Y4_N33
\MUX_HEX|saida_MUX[31]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[31]~7_combout\ = ( \PC|DOUT\(31) & ( (!\SW[0]~input_o\) # ((!\ULA|ULA31|saida~1_combout\ & !\ULA|Equal5~0_combout\)) ) ) # ( !\PC|DOUT\(31) & ( (!\ULA|ULA31|saida~1_combout\ & (\SW[0]~input_o\ & !\ULA|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(31),
	combout => \MUX_HEX|saida_MUX[31]~7_combout\);

-- Location: LABCELL_X47_Y4_N51
\ULA|saida[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~12_combout\ = ( \ULA|ULA1|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[1]~12_combout\);

-- Location: LABCELL_X47_Y4_N48
\MUX_HEX|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[2]~8_combout\ = ( \ULA|ULA2|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT[2]~DUPLICATE_q\))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA2|saida~0_combout\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA2|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[2]~8_combout\);

-- Location: LABCELL_X40_Y3_N42
\ULA|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~11_combout\ = (!\ULA|Equal5~0_combout\ & \ULA|ULA3|saida~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA3|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[3]~11_combout\);

-- Location: LABCELL_X47_Y4_N54
\DISP_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[0]~0_combout\ = ( \PC|DOUT\(3) & ( \ULA|saida[0]~10_combout\ & ( (\SW[0]~input_o\ & ((!\ULA|saida[1]~12_combout\ & (!\MUX_HEX|saida_MUX[2]~8_combout\ $ (\ULA|saida[3]~11_combout\))) # (\ULA|saida[1]~12_combout\ & 
-- (!\MUX_HEX|saida_MUX[2]~8_combout\ & \ULA|saida[3]~11_combout\)))) ) ) ) # ( !\PC|DOUT\(3) & ( \ULA|saida[0]~10_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\ & (\SW[0]~input_o\ & (!\ULA|saida[1]~12_combout\ $ (\ULA|saida[3]~11_combout\)))) # 
-- (\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\SW[0]~input_o\) # ((!\ULA|saida[1]~12_combout\ & \ULA|saida[3]~11_combout\)))) ) ) ) # ( \PC|DOUT\(3) & ( !\ULA|saida[0]~10_combout\ & ( (!\ULA|saida[1]~12_combout\ & (\MUX_HEX|saida_MUX[2]~8_combout\ & 
-- (!\ULA|saida[3]~11_combout\ & \SW[0]~input_o\))) ) ) ) # ( !\PC|DOUT\(3) & ( !\ULA|saida[0]~10_combout\ & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\SW[0]~input_o\) # ((!\ULA|saida[1]~12_combout\ & !\ULA|saida[3]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000000000000010000000110011100001100000000010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~12_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datac => \ULA|ALT_INV_saida[3]~11_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \ULA|ALT_INV_saida[0]~10_combout\,
	combout => \DISP_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X47_Y4_N36
\MUX_HEX|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[3]~9_combout\ = ( \PC|DOUT\(3) & ( \ULA|ULA3|saida~1_combout\ & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & (\ULA|ULA24|Equal2~0_combout\ & \ULA|ULA3|saida~0_combout\))) ) ) ) # ( !\PC|DOUT\(3) & ( \ULA|ULA3|saida~1_combout\ & ( 
-- (!\ULA|Equal5~0_combout\ & (\ULA|ULA24|Equal2~0_combout\ & (\SW[0]~input_o\ & \ULA|ULA3|saida~0_combout\))) ) ) ) # ( \PC|DOUT\(3) & ( !\ULA|ULA3|saida~1_combout\ & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & ((!\ULA|ULA24|Equal2~0_combout\) # 
-- (\ULA|ULA3|saida~0_combout\)))) ) ) ) # ( !\PC|DOUT\(3) & ( !\ULA|ULA3|saida~1_combout\ & ( (!\ULA|Equal5~0_combout\ & (\SW[0]~input_o\ & ((!\ULA|ULA24|Equal2~0_combout\) # (\ULA|ULA3|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010111110001111101000000000000000101111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA3|ALT_INV_saida~0_combout\,
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \ULA|ULA3|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[3]~9_combout\);

-- Location: LABCELL_X47_Y4_N21
\DISP_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[1]~1_combout\ = ( \ULA|saida[1]~12_combout\ & ( (!\SW[0]~input_o\ & (\MUX_HEX|saida_MUX[3]~9_combout\ & (\MUX_HEX|saida_MUX[2]~8_combout\))) # (\SW[0]~input_o\ & ((!\ULA|saida[0]~10_combout\ & ((\MUX_HEX|saida_MUX[2]~8_combout\))) 
-- # (\ULA|saida[0]~10_combout\ & (\MUX_HEX|saida_MUX[3]~9_combout\)))) ) ) # ( !\ULA|saida[1]~12_combout\ & ( (\MUX_HEX|saida_MUX[2]~8_combout\ & (!\MUX_HEX|saida_MUX[3]~9_combout\ $ (((!\ULA|saida[0]~10_combout\) # (!\SW[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010010000100010001001000010001001101010001000100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datac => \ULA|ALT_INV_saida[0]~10_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ALT_INV_saida[1]~12_combout\,
	combout => \DISP_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X47_Y4_N24
\DISP_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[2]~2_combout\ = ( \ULA|saida[0]~10_combout\ & ( (!\MUX_HEX|saida_MUX[2]~8_combout\) # ((!\MUX_HEX|saida_MUX[3]~9_combout\) # ((!\ULA|saida[1]~12_combout\ & \SW[0]~input_o\))) ) ) # ( !\ULA|saida[0]~10_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[2]~8_combout\ & ((!\ULA|saida[1]~12_combout\) # ((!\SW[0]~input_o\) # (\MUX_HEX|saida_MUX[3]~9_combout\)))) # (\MUX_HEX|saida_MUX[2]~8_combout\ & (((!\MUX_HEX|saida_MUX[3]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010111100111111001011110011111100111111101111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~12_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ALT_INV_saida[0]~10_combout\,
	combout => \DISP_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X48_Y4_N0
\DISP_HEX0|rascSaida7seg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[1]~3_combout\ = (!\ULA|Equal5~0_combout\ & (\SW[0]~input_o\ & \ULA|ULA1|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA1|ALT_INV_saida~0_combout\,
	combout => \DISP_HEX0|rascSaida7seg[1]~3_combout\);

-- Location: LABCELL_X47_Y4_N42
\MUX_HEX|saida_MUX[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[0]~10_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA30|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (((\ULA|ULA0|saida~0_combout\)))) # (\ULA|Equal5~0_combout\ & (((\ULA|ULA0|saida~0_combout\ & \ULA|saida[0]~9_combout\)) # 
-- (\ULA|ULA31|saida~1_combout\))) ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA30|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((\ULA|ULA0|saida~0_combout\))) # (\ULA|Equal5~0_combout\ & (\ULA|ULA31|saida~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101010011010100000000000000000011010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datab => \ULA|ULA0|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ALT_INV_saida[0]~9_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA30|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[0]~10_combout\);

-- Location: LABCELL_X47_Y4_N3
\DISP_HEX0|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[3]~4_combout\ = ( \MUX_HEX|saida_MUX[0]~10_combout\ & ( (!\DISP_HEX0|rascSaida7seg[1]~3_combout\ & (!\MUX_HEX|saida_MUX[2]~8_combout\ & !\MUX_HEX|saida_MUX[3]~9_combout\)) # (\DISP_HEX0|rascSaida7seg[1]~3_combout\ & 
-- (\MUX_HEX|saida_MUX[2]~8_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[0]~10_combout\ & ( (!\DISP_HEX0|rascSaida7seg[1]~3_combout\ & (\MUX_HEX|saida_MUX[2]~8_combout\ & !\MUX_HEX|saida_MUX[3]~9_combout\)) # (\DISP_HEX0|rascSaida7seg[1]~3_combout\ & 
-- (!\MUX_HEX|saida_MUX[2]~8_combout\ & \MUX_HEX|saida_MUX[3]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[0]~10_combout\,
	combout => \DISP_HEX0|rascSaida7seg[3]~4_combout\);

-- Location: LABCELL_X47_Y4_N0
\ULA|saida[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~13_combout\ = ( \ULA|ULA2|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA2|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[2]~13_combout\);

-- Location: LABCELL_X47_Y4_N6
\DISP_HEX0|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[4]~5_combout\ = ( \ULA|saida[2]~13_combout\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\MUX_HEX|saida_MUX[3]~9_combout\ & (((!\ULA|saida[1]~12_combout\) # (!\SW[0]~input_o\)) # (\ULA|saida[0]~10_combout\))) ) ) ) # ( 
-- !\ULA|saida[2]~13_combout\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[3]~9_combout\)) # (\SW[0]~input_o\ & (\ULA|saida[0]~10_combout\ & ((!\MUX_HEX|saida_MUX[3]~9_combout\) # (!\ULA|saida[1]~12_combout\)))) ) ) ) # ( 
-- \ULA|saida[2]~13_combout\ & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\MUX_HEX|saida_MUX[3]~9_combout\ & (\SW[0]~input_o\ & ((!\ULA|saida[1]~12_combout\) # (\ULA|saida[0]~10_combout\)))) ) ) ) # ( !\ULA|saida[2]~13_combout\ & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\ULA|saida[0]~10_combout\ & (\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[3]~9_combout\) # (!\ULA|saida[1]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000001010001010101010001100101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datab => \ULA|ALT_INV_saida[0]~10_combout\,
	datac => \ULA|ALT_INV_saida[1]~12_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[2]~13_combout\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \DISP_HEX0|rascSaida7seg[4]~5_combout\);

-- Location: LABCELL_X47_Y4_N27
\DISP_HEX0|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[5]~6_combout\ = ( \ULA|saida[3]~11_combout\ & ( (!\ULA|saida[1]~12_combout\ & (\MUX_HEX|saida_MUX[2]~8_combout\ & (\ULA|saida[0]~10_combout\ & \SW[0]~input_o\))) ) ) # ( !\ULA|saida[3]~11_combout\ & ( (\SW[0]~input_o\ & 
-- ((!\ULA|saida[1]~12_combout\ & (!\MUX_HEX|saida_MUX[2]~8_combout\ & \ULA|saida[0]~10_combout\)) # (\ULA|saida[1]~12_combout\ & ((!\MUX_HEX|saida_MUX[2]~8_combout\) # (\ULA|saida[0]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001101000000000100110100000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~12_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datac => \ULA|ALT_INV_saida[0]~10_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ALT_INV_saida[3]~11_combout\,
	combout => \DISP_HEX0|rascSaida7seg[5]~6_combout\);

-- Location: LABCELL_X47_Y4_N18
\DISP_HEX0|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX0|rascSaida7seg[6]~7_combout\ = ( \MUX_HEX|saida_MUX[0]~10_combout\ & ( (!\MUX_HEX|saida_MUX[3]~9_combout\ & (!\MUX_HEX|saida_MUX[2]~8_combout\ $ (\DISP_HEX0|rascSaida7seg[1]~3_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[0]~10_combout\ & ( 
-- (!\DISP_HEX0|rascSaida7seg[1]~3_combout\ & (!\MUX_HEX|saida_MUX[3]~9_combout\ $ (\MUX_HEX|saida_MUX[2]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[3]~9_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[2]~8_combout\,
	datac => \DISP_HEX0|ALT_INV_rascSaida7seg[1]~3_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[0]~10_combout\,
	combout => \DISP_HEX0|rascSaida7seg[6]~7_combout\);

-- Location: LABCELL_X40_Y3_N18
\MUX_HEX|saida_MUX[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[5]~13_combout\ = ( \ULA|ULA5|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(5)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA5|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \ULA|ULA5|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[5]~13_combout\);

-- Location: LABCELL_X40_Y3_N12
\ULA|saida[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~14_combout\ = ( \ULA|ULA4|saida~1_combout\ & ( \ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA4|saida~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA4|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[4]~14_combout\);

-- Location: LABCELL_X40_Y3_N0
\MUX_HEX|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[6]~12_combout\ = ( \ULA|ULA6|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT[6]~DUPLICATE_q\))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA6|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT[6]~DUPLICATE_q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ULA|ULA6|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[6]~12_combout\);

-- Location: LABCELL_X39_Y4_N48
\MUX_HEX|saida_MUX[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[7]~11_combout\ = ( \ULA|Equal5~0_combout\ & ( \ULA|ULA7|saida~0_combout\ & ( (\PC|DOUT[7]~DUPLICATE_q\ & !\SW[0]~input_o\) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA7|saida~0_combout\ & ( (\SW[0]~input_o\) # 
-- (\PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \ULA|Equal5~0_combout\ & ( !\ULA|ULA7|saida~0_combout\ & ( (\PC|DOUT[7]~DUPLICATE_q\ & !\SW[0]~input_o\) ) ) ) # ( !\ULA|Equal5~0_combout\ & ( !\ULA|ULA7|saida~0_combout\ & ( (\PC|DOUT[7]~DUPLICATE_q\ & 
-- !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[7]~11_combout\);

-- Location: LABCELL_X40_Y3_N24
\DISP_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[6]~12_combout\ & ( \MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[4]~14_combout\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[6]~12_combout\ & ( \MUX_HEX|saida_MUX[7]~11_combout\ & ( (\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[4]~14_combout\))))) ) ) ) # ( \MUX_HEX|saida_MUX[6]~12_combout\ & ( !\MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (!\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((\ULA|saida[4]~14_combout\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[6]~12_combout\ & ( !\MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[4]~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000100000100000001000101000010101000100000010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_saida[4]~14_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	combout => \DISP_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y3_N15
\MUX_HEX|saida_MUX[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[4]~14_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & \ULA|ULA4|saida~1_combout\)) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\ULA|Equal5~0_combout\ & (\ULA|ULA4|saida~1_combout\ & 
-- \SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA4|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \MUX_HEX|saida_MUX[4]~14_combout\);

-- Location: LABCELL_X40_Y3_N21
\DISP_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX|saida_MUX[4]~14_combout\ & ((\MUX_HEX|saida_MUX[6]~12_combout\))) # (\MUX_HEX|saida_MUX[4]~14_combout\ & (\MUX_HEX|saida_MUX[7]~11_combout\)) ) ) # ( 
-- !\MUX_HEX|saida_MUX[5]~13_combout\ & ( (\MUX_HEX|saida_MUX[6]~12_combout\ & (!\MUX_HEX|saida_MUX[7]~11_combout\ $ (!\MUX_HEX|saida_MUX[4]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	combout => \DISP_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y3_N54
\DISP_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX|saida_MUX[7]~11_combout\ & (!\MUX_HEX|saida_MUX[4]~14_combout\ & (\MUX_HEX|saida_MUX[5]~13_combout\ & !\MUX_HEX|saida_MUX[6]~12_combout\))) # (\MUX_HEX|saida_MUX[7]~11_combout\ & 
-- (\MUX_HEX|saida_MUX[6]~12_combout\ & ((!\MUX_HEX|saida_MUX[4]~14_combout\) # (\MUX_HEX|saida_MUX[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000101000010000100010100001000010001010000100001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	combout => \DISP_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y3_N57
\DISP_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX|saida_MUX[4]~14_combout\ & (\MUX_HEX|saida_MUX[7]~11_combout\ & !\MUX_HEX|saida_MUX[6]~12_combout\)) # (\MUX_HEX|saida_MUX[4]~14_combout\ & 
-- ((\MUX_HEX|saida_MUX[6]~12_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX|saida_MUX[7]~11_combout\ & (!\MUX_HEX|saida_MUX[4]~14_combout\ $ (!\MUX_HEX|saida_MUX[6]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	combout => \DISP_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y3_N48
\DISP_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[4]~4_combout\ = ( !\MUX_HEX|saida_MUX[6]~12_combout\ & ( \MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[4]~14_combout\))))) ) ) ) # ( \MUX_HEX|saida_MUX[6]~12_combout\ & ( !\MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\) # ((!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[4]~14_combout\)))) ) ) ) # ( !\MUX_HEX|saida_MUX[6]~12_combout\ & ( !\MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT[4]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((!\ULA|saida[4]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000101111111011101000101010001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_saida[4]~14_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	combout => \DISP_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X48_Y4_N54
\ULA|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~15_combout\ = ( \ULA|ULA7|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA7|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[7]~15_combout\);

-- Location: LABCELL_X40_Y3_N30
\DISP_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX|saida_MUX[6]~12_combout\ & ( \MUX_HEX|saida_MUX[4]~14_combout\ & ( !\MUX_HEX|saida_MUX[5]~13_combout\ $ (((!\SW[0]~input_o\ & (!\PC|DOUT[7]~DUPLICATE_q\)) # (\SW[0]~input_o\ & 
-- ((!\ULA|saida[7]~15_combout\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[6]~12_combout\ & ( \MUX_HEX|saida_MUX[4]~14_combout\ & ( (!\SW[0]~input_o\ & (!\PC|DOUT[7]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((!\ULA|saida[7]~15_combout\))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[6]~12_combout\ & ( !\MUX_HEX|saida_MUX[4]~14_combout\ & ( (\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\SW[0]~input_o\ & (!\PC|DOUT[7]~DUPLICATE_q\)) # (\SW[0]~input_o\ & ((!\ULA|saida[7]~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000000000000000000000011001111110000000110010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_saida[7]~15_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\,
	combout => \DISP_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y3_N39
\DISP_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX1|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[7]~11_combout\ & ( (!\MUX_HEX|saida_MUX[5]~13_combout\ & (!\MUX_HEX|saida_MUX[4]~14_combout\ & \MUX_HEX|saida_MUX[6]~12_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[7]~11_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[5]~13_combout\ & ((!\MUX_HEX|saida_MUX[6]~12_combout\))) # (\MUX_HEX|saida_MUX[5]~13_combout\ & (\MUX_HEX|saida_MUX[4]~14_combout\ & \MUX_HEX|saida_MUX[6]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[5]~13_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[4]~14_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[7]~11_combout\,
	combout => \DISP_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y6_N24
\MUX_HEX|saida_MUX[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[11]~15_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA11|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA11|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( \ULA|ULA11|saida~0_combout\ & ( 
-- \PC|DOUT[11]~DUPLICATE_q\ ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA11|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA11|saida~1_combout\ & !\ULA|ULA24|Equal2~0_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA11|saida~0_combout\ & ( 
-- \PC|DOUT[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110000000000000001010101010101011100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[11]~DUPLICATE_q\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA11|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA11|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[11]~15_combout\);

-- Location: LABCELL_X39_Y3_N39
\MUX_HEX|saida_MUX[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[9]~17_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(9))))) # (\SW[0]~input_o\ & (\ULA|ULA9|saida~0_combout\ & (!\ULA|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000100111101000000010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_saida~0_combout\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \PC|ALT_INV_DOUT\(9),
	combout => \MUX_HEX|saida_MUX[9]~17_combout\);

-- Location: LABCELL_X39_Y3_N33
\ULA|saida[8]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~16_combout\ = (\ULA|Equal5~0_combout\) # (\ULA|ULA8|saida~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA8|ALT_INV_saida~2_combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[8]~16_combout\);

-- Location: LABCELL_X39_Y3_N48
\MUX_HEX|saida_MUX[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[10]~16_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(10)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA10|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \PC|ALT_INV_DOUT\(10),
	dataf => \ULA|ULA10|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[10]~16_combout\);

-- Location: LABCELL_X39_Y3_N18
\DISP_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[0]~0_combout\ = ( \ULA|saida[8]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[9]~17_combout\ & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ (((\PC|DOUT\(8) & !\SW[0]~input_o\))))) ) ) ) # ( 
-- !\ULA|saida[8]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[9]~17_combout\ & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ (((\SW[0]~input_o\) # (\PC|DOUT\(8)))))) ) ) ) # ( \ULA|saida[8]~16_combout\ & ( 
-- !\MUX_HEX|saida_MUX[10]~16_combout\ & ( (\PC|DOUT\(8) & (!\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ (\MUX_HEX|saida_MUX[9]~17_combout\)))) ) ) ) # ( !\ULA|saida[8]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\PC|DOUT\(8) & 
-- (\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ (\MUX_HEX|saida_MUX[9]~17_combout\)))) # (\PC|DOUT\(8) & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ ((\MUX_HEX|saida_MUX[9]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011001000010010000000010000100010001001000010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[8]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	combout => \DISP_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y4_N12
\ULA|ULA8|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|saida~1_combout\ = ( \ROM|memROM~2_combout\ & ( \BancoRegistradores|saidaB[8]~1_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & ((!\ROM|memROM~11_combout\ & ((!\ULA|ULA6|Carry_Out~combout\))) # (\ROM|memROM~11_combout\ & 
-- ((\ULA|ULA6|Carry_Out~combout\) # (\BancoRegistradores|saidaB[7]~0_combout\))))) # (\ULA|ULA24|Equal1~0_combout\ & (((\ROM|memROM~11_combout\)))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \BancoRegistradores|saidaB[8]~1_combout\ & ( 
-- (!\ULA|ULA24|Equal1~0_combout\ & ((!\BancoRegistradores|saidaB[7]~0_combout\ & (!\ROM|memROM~11_combout\)) # (\BancoRegistradores|saidaB[7]~0_combout\ & (\ROM|memROM~11_combout\ & !\ULA|ULA6|Carry_Out~combout\)))) ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\BancoRegistradores|saidaB[8]~1_combout\ & ( (!\ULA|ULA24|Equal1~0_combout\ & (!\ULA|ULA6|Carry_Out~combout\ & ((!\BancoRegistradores|saidaB[7]~0_combout\) # (!\ROM|memROM~11_combout\)))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( 
-- !\BancoRegistradores|saidaB[8]~1_combout\ & ( (!\BancoRegistradores|saidaB[7]~0_combout\) # (((\ROM|memROM~11_combout\ & \ULA|ULA6|Carry_Out~combout\)) # (\ULA|ULA24|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111111110010000000000010000100100000001100011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[7]~0_combout\,
	datab => \ULA|ULA24|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA6|ALT_INV_Carry_Out~combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[8]~1_combout\,
	combout => \ULA|ULA8|saida~1_combout\);

-- Location: LABCELL_X39_Y3_N12
\MUX_HEX|saida_MUX[8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[8]~18_combout\ = ( \ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(8))))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & ((\ULA|ULA8|saida~0_combout\)))) ) ) ) # ( 
-- !\ULA|ULA24|Equal2~0_combout\ & ( \ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(8)) ) ) ) # ( \ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(8))))) # (\SW[0]~input_o\ & 
-- (!\ULA|Equal5~0_combout\ & ((\ULA|ULA8|saida~0_combout\)))) ) ) ) # ( !\ULA|ULA24|Equal2~0_combout\ & ( !\ULA|ULA8|saida~1_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110000011000010111000001100000011000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ULA|ULA8|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ULA8|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[8]~18_combout\);

-- Location: LABCELL_X39_Y3_N6
\DISP_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[9]~17_combout\ & ( (!\MUX_HEX|saida_MUX[8]~18_combout\ & ((\MUX_HEX|saida_MUX[10]~16_combout\))) # (\MUX_HEX|saida_MUX[8]~18_combout\ & (\MUX_HEX|saida_MUX[11]~15_combout\)) ) ) # ( 
-- !\MUX_HEX|saida_MUX[9]~17_combout\ & ( (\MUX_HEX|saida_MUX[10]~16_combout\ & (!\MUX_HEX|saida_MUX[11]~15_combout\ $ (!\MUX_HEX|saida_MUX[8]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	combout => \DISP_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y3_N9
\DISP_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (\MUX_HEX|saida_MUX[11]~15_combout\ & ((!\MUX_HEX|saida_MUX[8]~18_combout\) # (\MUX_HEX|saida_MUX[9]~17_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[10]~16_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[11]~15_combout\ & (!\MUX_HEX|saida_MUX[8]~18_combout\ & \MUX_HEX|saida_MUX[9]~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	combout => \DISP_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y3_N30
\DISP_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[8]~18_combout\ & ( (!\MUX_HEX|saida_MUX[10]~16_combout\ & (!\MUX_HEX|saida_MUX[9]~17_combout\ & !\MUX_HEX|saida_MUX[11]~15_combout\)) # (\MUX_HEX|saida_MUX[10]~16_combout\ & 
-- (\MUX_HEX|saida_MUX[9]~17_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[8]~18_combout\ & ( (!\MUX_HEX|saida_MUX[10]~16_combout\ & (\MUX_HEX|saida_MUX[9]~17_combout\ & \MUX_HEX|saida_MUX[11]~15_combout\)) # (\MUX_HEX|saida_MUX[10]~16_combout\ & 
-- (!\MUX_HEX|saida_MUX[9]~17_combout\ & !\MUX_HEX|saida_MUX[11]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\,
	combout => \DISP_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y3_N24
\DISP_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[4]~4_combout\ = ( \ULA|saida[8]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[11]~15_combout\ & ((!\MUX_HEX|saida_MUX[9]~17_combout\) # ((\PC|DOUT\(8) & !\SW[0]~input_o\)))) ) ) ) # ( 
-- !\ULA|saida[8]~16_combout\ & ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[11]~15_combout\ & ((!\MUX_HEX|saida_MUX[9]~17_combout\) # ((\SW[0]~input_o\) # (\PC|DOUT\(8))))) ) ) ) # ( \ULA|saida[8]~16_combout\ & ( 
-- !\MUX_HEX|saida_MUX[10]~16_combout\ & ( (\PC|DOUT\(8) & (!\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[11]~15_combout\) # (!\MUX_HEX|saida_MUX[9]~17_combout\)))) ) ) ) # ( !\ULA|saida[8]~16_combout\ & ( !\MUX_HEX|saida_MUX[10]~16_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[11]~15_combout\ & (((\SW[0]~input_o\) # (\PC|DOUT\(8))))) # (\MUX_HEX|saida_MUX[11]~15_combout\ & (!\MUX_HEX|saida_MUX[9]~17_combout\ & ((\SW[0]~input_o\) # (\PC|DOUT\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011101110000011100000000010001010101010101000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[8]~16_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	combout => \DISP_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y3_N54
\ULA|saida[11]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~17_combout\ = ( \ULA|ULA11|saida~2_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA11|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[11]~17_combout\);

-- Location: LABCELL_X39_Y3_N0
\DISP_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[5]~5_combout\ = ( \ULA|saida[11]~17_combout\ & ( \MUX_HEX|saida_MUX[8]~18_combout\ & ( (!\MUX_HEX|saida_MUX[10]~16_combout\ & (((!\PC|DOUT[11]~DUPLICATE_q\ & !\SW[0]~input_o\)))) # (\MUX_HEX|saida_MUX[10]~16_combout\ & 
-- (!\MUX_HEX|saida_MUX[9]~17_combout\ $ (((!\PC|DOUT[11]~DUPLICATE_q\ & !\SW[0]~input_o\))))) ) ) ) # ( !\ULA|saida[11]~17_combout\ & ( \MUX_HEX|saida_MUX[8]~18_combout\ & ( (!\MUX_HEX|saida_MUX[10]~16_combout\ & (((!\PC|DOUT[11]~DUPLICATE_q\) # 
-- (\SW[0]~input_o\)))) # (\MUX_HEX|saida_MUX[10]~16_combout\ & (!\MUX_HEX|saida_MUX[9]~17_combout\ $ (((!\PC|DOUT[11]~DUPLICATE_q\) # (\SW[0]~input_o\))))) ) ) ) # ( \ULA|saida[11]~17_combout\ & ( !\MUX_HEX|saida_MUX[8]~18_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[10]~16_combout\ & (\MUX_HEX|saida_MUX[9]~17_combout\ & (!\PC|DOUT[11]~DUPLICATE_q\ & !\SW[0]~input_o\))) ) ) ) # ( !\ULA|saida[11]~17_combout\ & ( !\MUX_HEX|saida_MUX[8]~18_combout\ & ( (!\MUX_HEX|saida_MUX[10]~16_combout\ & 
-- (\MUX_HEX|saida_MUX[9]~17_combout\ & ((!\PC|DOUT[11]~DUPLICATE_q\) # (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000000000010110100101110111011010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	datac => \PC|ALT_INV_DOUT[11]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ALT_INV_saida[11]~17_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\,
	combout => \DISP_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y3_N57
\DISP_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX2|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[8]~18_combout\ & (!\MUX_HEX|saida_MUX[9]~17_combout\ & \MUX_HEX|saida_MUX[11]~15_combout\)) # (\MUX_HEX|saida_MUX[8]~18_combout\ & 
-- (\MUX_HEX|saida_MUX[9]~17_combout\ & !\MUX_HEX|saida_MUX[11]~15_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[10]~16_combout\ & ( (!\MUX_HEX|saida_MUX[9]~17_combout\ & !\MUX_HEX|saida_MUX[11]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_HEX|ALT_INV_saida_MUX[8]~18_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[9]~17_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[11]~15_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[10]~16_combout\,
	combout => \DISP_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X48_Y4_N3
\ULA|saida[12]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~18_combout\ = ( \ULA|ULA12|saida~0_combout\ & ( \ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA12|saida~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA12|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[12]~18_combout\);

-- Location: LABCELL_X48_Y4_N6
\MUX_HEX|saida_MUX[14]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[14]~20_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA14|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA14|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( \ULA|ULA14|saida~0_combout\ & ( 
-- \PC|DOUT\(14) ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA14|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ & !\ULA|ULA14|saida~1_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA14|saida~0_combout\ & ( \PC|DOUT\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110000000000000001010101010101011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(14),
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA14|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA14|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[14]~20_combout\);

-- Location: FF_X40_Y5_N4
\PC|DOUT[13]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[13]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y4_N57
\MUX_HEX|saida_MUX[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[13]~21_combout\ = ( \ULA|ULA13|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT[13]~DUPLICATE_q\))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA13|saida~0_combout\ & ( (\PC|DOUT[13]~DUPLICATE_q\ & 
-- !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT[13]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA13|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[13]~21_combout\);

-- Location: LABCELL_X48_Y4_N51
\MUX_HEX|saida_MUX[15]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[15]~19_combout\ = ( \ULA|ULA15|saida~1_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(15)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA15|saida~1_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \PC|ALT_INV_DOUT\(15),
	dataf => \ULA|ULA15|ALT_INV_saida~1_combout\,
	combout => \MUX_HEX|saida_MUX[15]~19_combout\);

-- Location: LABCELL_X48_Y4_N12
\DISP_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[13]~21_combout\ & ( \MUX_HEX|saida_MUX[15]~19_combout\ & ( (!\MUX_HEX|saida_MUX[14]~20_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~18_combout\)))) ) 
-- ) ) # ( !\MUX_HEX|saida_MUX[13]~21_combout\ & ( \MUX_HEX|saida_MUX[15]~19_combout\ & ( (\MUX_HEX|saida_MUX[14]~20_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~18_combout\)))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[13]~21_combout\ & ( !\MUX_HEX|saida_MUX[15]~19_combout\ & ( !\MUX_HEX|saida_MUX[14]~20_combout\ $ (((!\SW[0]~input_o\ & ((!\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|saida[12]~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010011001000000000000000000000011001000100000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[12]~18_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \PC|ALT_INV_DOUT\(12),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	combout => \DISP_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X48_Y4_N48
\MUX_HEX|saida_MUX[12]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[12]~22_combout\ = ( \ULA|ULA12|saida~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) # ( !\ULA|ULA12|saida~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \PC|ALT_INV_DOUT\(12),
	dataf => \ULA|ULA12|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[12]~22_combout\);

-- Location: LABCELL_X48_Y4_N45
\DISP_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[15]~19_combout\ & (\MUX_HEX|saida_MUX[14]~20_combout\ & !\MUX_HEX|saida_MUX[13]~21_combout\)) # (\MUX_HEX|saida_MUX[15]~19_combout\ & 
-- ((\MUX_HEX|saida_MUX[13]~21_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (\MUX_HEX|saida_MUX[14]~20_combout\ & ((\MUX_HEX|saida_MUX[13]~21_combout\) # (\MUX_HEX|saida_MUX[15]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X48_Y4_N36
\DISP_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[14]~20_combout\ & ( (\MUX_HEX|saida_MUX[15]~19_combout\ & ((!\MUX_HEX|saida_MUX[12]~22_combout\) # (\MUX_HEX|saida_MUX[13]~21_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[14]~20_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[15]~19_combout\ & (!\MUX_HEX|saida_MUX[12]~22_combout\ & \MUX_HEX|saida_MUX[13]~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	combout => \DISP_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X48_Y4_N18
\DISP_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[14]~20_combout\ & ( (!\MUX_HEX|saida_MUX[12]~22_combout\ & (!\MUX_HEX|saida_MUX[13]~21_combout\ & !\MUX_HEX|saida_MUX[15]~19_combout\)) # (\MUX_HEX|saida_MUX[12]~22_combout\ & 
-- (\MUX_HEX|saida_MUX[13]~21_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[14]~20_combout\ & ( (!\MUX_HEX|saida_MUX[12]~22_combout\ & (\MUX_HEX|saida_MUX[13]~21_combout\ & \MUX_HEX|saida_MUX[15]~19_combout\)) # (\MUX_HEX|saida_MUX[12]~22_combout\ & 
-- (!\MUX_HEX|saida_MUX[13]~21_combout\ & !\MUX_HEX|saida_MUX[15]~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	combout => \DISP_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X48_Y4_N24
\DISP_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[4]~4_combout\ = ( !\MUX_HEX|saida_MUX[13]~21_combout\ & ( \MUX_HEX|saida_MUX[15]~19_combout\ & ( (!\MUX_HEX|saida_MUX[14]~20_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~18_combout\)))) 
-- ) ) ) # ( \MUX_HEX|saida_MUX[13]~21_combout\ & ( !\MUX_HEX|saida_MUX[15]~19_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~18_combout\)) ) ) ) # ( !\MUX_HEX|saida_MUX[13]~21_combout\ & ( 
-- !\MUX_HEX|saida_MUX[15]~19_combout\ & ( ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|saida[12]~18_combout\))) # (\MUX_HEX|saida_MUX[14]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111011000011111010101000001100100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[12]~18_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \PC|ALT_INV_DOUT\(12),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	combout => \DISP_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X48_Y4_N39
\ULA|saida[15]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~19_combout\ = ( \ULA|ULA15|saida~1_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA15|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[15]~19_combout\);

-- Location: LABCELL_X48_Y4_N30
\DISP_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[5]~5_combout\ = ( \ULA|saida[15]~19_combout\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\SW[0]~input_o\ & (!\PC|DOUT\(15) $ (((\MUX_HEX|saida_MUX[14]~20_combout\ & !\MUX_HEX|saida_MUX[13]~21_combout\))))) # (\SW[0]~input_o\ & 
-- (\MUX_HEX|saida_MUX[14]~20_combout\ & ((!\MUX_HEX|saida_MUX[13]~21_combout\)))) ) ) ) # ( !\ULA|saida[15]~19_combout\ & ( \MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\SW[0]~input_o\ & (!\PC|DOUT\(15) $ (((\MUX_HEX|saida_MUX[14]~20_combout\ & 
-- !\MUX_HEX|saida_MUX[13]~21_combout\))))) # (\SW[0]~input_o\ & ((!\MUX_HEX|saida_MUX[14]~20_combout\) # ((\MUX_HEX|saida_MUX[13]~21_combout\)))) ) ) ) # ( \ULA|saida[15]~19_combout\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\SW[0]~input_o\ & 
-- (!\MUX_HEX|saida_MUX[14]~20_combout\ & (!\PC|DOUT\(15) & \MUX_HEX|saida_MUX[13]~21_combout\))) ) ) ) # ( !\ULA|saida[15]~19_combout\ & ( !\MUX_HEX|saida_MUX[12]~22_combout\ & ( (!\MUX_HEX|saida_MUX[14]~20_combout\ & (\MUX_HEX|saida_MUX[13]~21_combout\ & 
-- ((!\PC|DOUT\(15)) # (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001000000011000110111101011001001110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \PC|ALT_INV_DOUT\(15),
	datad => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	datae => \ULA|ALT_INV_saida[15]~19_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \DISP_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X48_Y4_N21
\DISP_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX3|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[15]~19_combout\ & ( (!\MUX_HEX|saida_MUX[12]~22_combout\ & (!\MUX_HEX|saida_MUX[13]~21_combout\ & \MUX_HEX|saida_MUX[14]~20_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[15]~19_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[13]~21_combout\ & ((!\MUX_HEX|saida_MUX[14]~20_combout\))) # (\MUX_HEX|saida_MUX[13]~21_combout\ & (\MUX_HEX|saida_MUX[12]~22_combout\ & \MUX_HEX|saida_MUX[14]~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110000011100000100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[12]~22_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[13]~21_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[14]~20_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[15]~19_combout\,
	combout => \DISP_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y2_N3
\ULA|saida[18]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~21_combout\ = ( \ULA|ULA17|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[18]~9_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ((!\ROM|memROM~11_combout\))) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[1]~0_combout\)))) # (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & \ROM|memROM~11_combout\))) ) ) ) # ( !\ULA|ULA17|Carry_Out~combout\ & ( 
-- \BancoRegistradores|saidaB[18]~9_combout\ & ( (!\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (((!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & \ROM|memROM~11_combout\))))) # (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & !\ROM|memROM~11_combout\))) ) ) ) # ( \ULA|ULA17|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[18]~9_combout\ & ( (!\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) ) # ( !\ULA|ULA17|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[18]~9_combout\ & ( (\ROM|memROM~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001000000010000010011000001010001010100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ULA|ULA17|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[18]~9_combout\,
	combout => \ULA|saida[18]~21_combout\);

-- Location: LABCELL_X47_Y3_N24
\MUX_HEX|saida_MUX[18]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[18]~24_combout\ = ( \PC|DOUT\(18) & ( \ULA|saida[18]~21_combout\ ) ) # ( !\PC|DOUT\(18) & ( \ULA|saida[18]~21_combout\ & ( \SW[0]~input_o\ ) ) ) # ( \PC|DOUT\(18) & ( !\ULA|saida[18]~21_combout\ & ( !\SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(18),
	dataf => \ULA|ALT_INV_saida[18]~21_combout\,
	combout => \MUX_HEX|saida_MUX[18]~24_combout\);

-- Location: LABCELL_X47_Y3_N30
\MUX_HEX|saida_MUX[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[19]~23_combout\ = ( \ULA|ULA19|saida~0_combout\ & ( \ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\)) ) ) ) # ( !\ULA|ULA19|saida~0_combout\ & ( 
-- \ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT\(19)) ) ) ) # ( \ULA|ULA19|saida~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(19))))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & 
-- ((!\ULA|ULA19|saida~1_combout\)))) ) ) ) # ( !\ULA|ULA19|saida~0_combout\ & ( !\ULA|ULA24|Equal2~0_combout\ & ( (!\SW[0]~input_o\ & (((\PC|DOUT\(19))))) # (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA19|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001100001011100000110000001100000011000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(19),
	datad => \ULA|ULA19|ALT_INV_saida~1_combout\,
	datae => \ULA|ULA19|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	combout => \MUX_HEX|saida_MUX[19]~23_combout\);

-- Location: LABCELL_X43_Y6_N42
\ULA|saida[17]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~22_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~11_combout\ & ( (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\BancoRegistradores|saidaB[17]~8_combout\ $ (!\ULA|ULA16|Carry_Out~combout\)))) ) ) ) # ( 
-- !\ROM|memROM~2_combout\ & ( \ROM|memROM~11_combout\ & ( (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (!\BancoRegistradores|saidaB[17]~8_combout\ $ (\ULA|ULA16|Carry_Out~combout\)))) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (\BancoRegistradores|saidaB[17]~8_combout\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~11_combout\ & ( (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- \ULA|ULA16|Carry_Out~combout\)) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~11_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ & (((\BancoRegistradores|saidaB[17]~8_combout\)))) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ((!\ULA|ULA16|Carry_Out~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001100000000000010001000100100000001100000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaB[17]~8_combout\,
	datad => \ULA|ULA16|ALT_INV_Carry_Out~combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ULA|saida[17]~22_combout\);

-- Location: LABCELL_X47_Y3_N45
\MUX_HEX|saida_MUX[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[17]~25_combout\ = ( \SW[0]~input_o\ & ( \ULA|saida[17]~22_combout\ ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~22_combout\,
	datac => \PC|ALT_INV_DOUT\(17),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \MUX_HEX|saida_MUX[17]~25_combout\);

-- Location: LABCELL_X47_Y3_N39
\ULA|saida[16]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~20_combout\ = ( \ULA|ULA16|saida~0_combout\ & ( \ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA16|saida~0_combout\ & ( \ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA16|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ULA16|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[16]~20_combout\);

-- Location: LABCELL_X47_Y3_N0
\DISP_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[17]~25_combout\ & ( \ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (!\SW[0]~input_o\ & (\PC|DOUT\(16) & \MUX_HEX|saida_MUX[19]~23_combout\))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[17]~25_combout\ & ( \ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (!\SW[0]~input_o\ & (\PC|DOUT\(16) & !\MUX_HEX|saida_MUX[19]~23_combout\))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & 
-- (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (((!\SW[0]~input_o\ & \PC|DOUT\(16)))))) ) ) ) # ( \MUX_HEX|saida_MUX[17]~25_combout\ & ( !\ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (\MUX_HEX|saida_MUX[19]~23_combout\ & ((\PC|DOUT\(16)) 
-- # (\SW[0]~input_o\)))) ) ) ) # ( !\MUX_HEX|saida_MUX[17]~25_combout\ & ( !\ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ & ((\PC|DOUT\(16)) # (\SW[0]~input_o\)))) # 
-- (\MUX_HEX|saida_MUX[18]~24_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (((\PC|DOUT\(16)) # (\SW[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101000010101000000000010101001011001000001000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(16),
	datad => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	dataf => \ULA|ALT_INV_saida[16]~20_combout\,
	combout => \DISP_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X47_Y3_N54
\MUX_HEX|saida_MUX[16]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[16]~26_combout\ = ( \ULA|ULA16|saida~0_combout\ & ( \PC|DOUT\(16) & ( (!\SW[0]~input_o\) # (!\ULA|Equal5~0_combout\) ) ) ) # ( !\ULA|ULA16|saida~0_combout\ & ( \PC|DOUT\(16) & ( !\SW[0]~input_o\ ) ) ) # ( \ULA|ULA16|saida~0_combout\ & ( 
-- !\PC|DOUT\(16) & ( (\SW[0]~input_o\ & !\ULA|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011001100110011001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	datae => \ULA|ULA16|ALT_INV_saida~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(16),
	combout => \MUX_HEX|saida_MUX[16]~26_combout\);

-- Location: LABCELL_X47_Y3_N51
\DISP_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( (!\MUX_HEX|saida_MUX[16]~26_combout\ & ((\MUX_HEX|saida_MUX[17]~25_combout\) # (\MUX_HEX|saida_MUX[19]~23_combout\))) # (\MUX_HEX|saida_MUX[16]~26_combout\ & 
-- (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (\MUX_HEX|saida_MUX[17]~25_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( (\MUX_HEX|saida_MUX[16]~26_combout\ & (\MUX_HEX|saida_MUX[19]~23_combout\ & \MUX_HEX|saida_MUX[17]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	combout => \DISP_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X47_Y3_N18
\DISP_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( (\MUX_HEX|saida_MUX[19]~23_combout\ & ((!\MUX_HEX|saida_MUX[16]~26_combout\) # (\MUX_HEX|saida_MUX[17]~25_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[19]~23_combout\ & (!\MUX_HEX|saida_MUX[16]~26_combout\ & \MUX_HEX|saida_MUX[17]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	combout => \DISP_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X47_Y3_N21
\DISP_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[18]~24_combout\ & ( (!\MUX_HEX|saida_MUX[16]~26_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ & !\MUX_HEX|saida_MUX[17]~25_combout\)) # (\MUX_HEX|saida_MUX[16]~26_combout\ & 
-- ((\MUX_HEX|saida_MUX[17]~25_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[18]~24_combout\ & ( (!\MUX_HEX|saida_MUX[16]~26_combout\ & (\MUX_HEX|saida_MUX[19]~23_combout\ & \MUX_HEX|saida_MUX[17]~25_combout\)) # (\MUX_HEX|saida_MUX[16]~26_combout\ & 
-- (!\MUX_HEX|saida_MUX[19]~23_combout\ & !\MUX_HEX|saida_MUX[17]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	combout => \DISP_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X47_Y3_N12
\DISP_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX|saida_MUX[17]~25_combout\ & ( \ULA|saida[16]~20_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(16) & !\MUX_HEX|saida_MUX[19]~23_combout\)) ) ) ) # ( !\MUX_HEX|saida_MUX[17]~25_combout\ & ( 
-- \ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (!\SW[0]~input_o\ & (\PC|DOUT\(16)))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & (((!\MUX_HEX|saida_MUX[19]~23_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[17]~25_combout\ & ( 
-- !\ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[19]~23_combout\ & ((\PC|DOUT\(16)) # (\SW[0]~input_o\))) ) ) ) # ( !\MUX_HEX|saida_MUX[17]~25_combout\ & ( !\ULA|saida[16]~20_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (((\PC|DOUT\(16))) # 
-- (\SW[0]~input_o\))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & (((!\MUX_HEX|saida_MUX[19]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100101010001111110000000001011101000010000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT\(16),
	datad => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	dataf => \ULA|ALT_INV_saida[16]~20_combout\,
	combout => \DISP_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X47_Y3_N42
\ULA|saida[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~23_combout\ = ( !\ULA|Equal5~0_combout\ & ( (!\ULA|ULA24|Equal2~0_combout\ & ((!\ULA|ULA19|saida~1_combout\))) # (\ULA|ULA24|Equal2~0_combout\ & (\ULA|ULA19|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110011111100000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ULA19|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA19|ALT_INV_saida~1_combout\,
	datad => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[19]~23_combout\);

-- Location: LABCELL_X47_Y3_N6
\DISP_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[5]~5_combout\ = ( \PC|DOUT\(19) & ( \ULA|saida[19]~23_combout\ & ( (\MUX_HEX|saida_MUX[18]~24_combout\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ & \MUX_HEX|saida_MUX[16]~26_combout\)) ) ) ) # ( !\PC|DOUT\(19) & ( 
-- \ULA|saida[19]~23_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (!\SW[0]~input_o\ & ((\MUX_HEX|saida_MUX[16]~26_combout\) # (\MUX_HEX|saida_MUX[17]~25_combout\)))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & (\MUX_HEX|saida_MUX[16]~26_combout\ & 
-- (!\MUX_HEX|saida_MUX[17]~25_combout\ $ (!\SW[0]~input_o\)))) ) ) ) # ( \PC|DOUT\(19) & ( !\ULA|saida[19]~23_combout\ & ( (!\MUX_HEX|saida_MUX[18]~24_combout\ & (\SW[0]~input_o\ & ((\MUX_HEX|saida_MUX[16]~26_combout\) # 
-- (\MUX_HEX|saida_MUX[17]~25_combout\)))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & (\MUX_HEX|saida_MUX[16]~26_combout\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ $ (\SW[0]~input_o\)))) ) ) ) # ( !\PC|DOUT\(19) & ( !\ULA|saida[19]~23_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[18]~24_combout\ & ((\MUX_HEX|saida_MUX[16]~26_combout\) # (\MUX_HEX|saida_MUX[17]~25_combout\))) # (\MUX_HEX|saida_MUX[18]~24_combout\ & (\MUX_HEX|saida_MUX[17]~25_combout\ & \MUX_HEX|saida_MUX[16]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011000001000010101100101011000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \PC|ALT_INV_DOUT\(19),
	dataf => \ULA|ALT_INV_saida[19]~23_combout\,
	combout => \DISP_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X47_Y3_N48
\DISP_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX4|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX|saida_MUX[16]~26_combout\ & (!\MUX_HEX|saida_MUX[17]~25_combout\ & (!\MUX_HEX|saida_MUX[19]~23_combout\ $ (\MUX_HEX|saida_MUX[18]~24_combout\)))) # (\MUX_HEX|saida_MUX[16]~26_combout\ & 
-- (!\MUX_HEX|saida_MUX[19]~23_combout\ & (!\MUX_HEX|saida_MUX[18]~24_combout\ $ (\MUX_HEX|saida_MUX[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[16]~26_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[19]~23_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[18]~24_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[17]~25_combout\,
	combout => \DISP_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: FF_X40_Y5_N7
\PC|DOUT[21]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N45
\ULA|saida[21]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~25_combout\ = ( \ULA|ULA20|Carry_Out~combout\ & ( \BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & (!\ROM|memROM~11_combout\)) # (\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\))))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~11_combout\ & (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\))) ) ) ) # ( !\ULA|ULA20|Carry_Out~combout\ & ( 
-- \BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[1]~0_combout\ $ (((\ROM|memROM~11_combout\ & !\UNI_LOG_ULA|ULActrl[0]~2_combout\))))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & 
-- (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\))) ) ) ) # ( \ULA|ULA20|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[21]~12_combout\ & ( (!\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & 
-- \UNI_LOG_ULA|ULActrl[1]~0_combout\)) ) ) ) # ( !\ULA|ULA20|Carry_Out~combout\ & ( !\BancoRegistradores|saidaB[21]~12_combout\ & ( (\ROM|memROM~2_combout\ & (!\UNI_LOG_ULA|ULActrl[0]~2_combout\ & \UNI_LOG_ULA|ULActrl[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000001100000010001100011000001000110010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	datad => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datae => \ULA|ULA20|ALT_INV_Carry_Out~combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaB[21]~12_combout\,
	combout => \ULA|saida[21]~25_combout\);

-- Location: LABCELL_X39_Y3_N51
\MUX_HEX|saida_MUX[21]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[21]~29_combout\ = ( \ULA|saida[21]~25_combout\ & ( (\PC|DOUT[21]~DUPLICATE_q\) # (\SW[0]~input_o\) ) ) # ( !\ULA|saida[21]~25_combout\ & ( (!\SW[0]~input_o\ & \PC|DOUT[21]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	dataf => \ULA|ALT_INV_saida[21]~25_combout\,
	combout => \MUX_HEX|saida_MUX[21]~29_combout\);

-- Location: LABCELL_X40_Y3_N6
\MUX_HEX|saida_MUX[23]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[23]~27_combout\ = ( \PC|DOUT\(23) & ( \ULA|ULA23|soma~combout\ & ( (!\SW[0]~input_o\) # ((!\ULA|Equal5~0_combout\ & ((\ULA|ULA23|saida~0_combout\) # (\ULA|ULA24|saida~0_combout\)))) ) ) ) # ( !\PC|DOUT\(23) & ( \ULA|ULA23|soma~combout\ 
-- & ( (\SW[0]~input_o\ & (!\ULA|Equal5~0_combout\ & ((\ULA|ULA23|saida~0_combout\) # (\ULA|ULA24|saida~0_combout\)))) ) ) ) # ( \PC|DOUT\(23) & ( !\ULA|ULA23|soma~combout\ & ( (!\SW[0]~input_o\) # ((\ULA|ULA23|saida~0_combout\ & !\ULA|Equal5~0_combout\)) ) 
-- ) ) # ( !\PC|DOUT\(23) & ( !\ULA|ULA23|soma~combout\ & ( (\ULA|ULA23|saida~0_combout\ & (\SW[0]~input_o\ & !\ULA|Equal5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100111111000000000111000000001111011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datab => \ULA|ULA23|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	datae => \PC|ALT_INV_DOUT\(23),
	dataf => \ULA|ULA23|ALT_INV_soma~combout\,
	combout => \MUX_HEX|saida_MUX[23]~27_combout\);

-- Location: FF_X41_Y6_N1
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

-- Location: MLABCELL_X45_Y3_N18
\MUX_HEX|saida_MUX[22]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[22]~28_combout\ = ( \ULA|ULA22|saida~1_combout\ & ( \ULA|ULA22|saida~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(22))) # (\SW[0]~input_o\ & (((!\ULA|Equal5~0_combout\ & \ULA|ULA24|Equal2~0_combout\)))) ) ) ) # ( 
-- !\ULA|ULA22|saida~1_combout\ & ( \ULA|ULA22|saida~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(22))) # (\SW[0]~input_o\ & ((!\ULA|Equal5~0_combout\))) ) ) ) # ( \ULA|ULA22|saida~1_combout\ & ( !\ULA|ULA22|saida~0_combout\ & ( (\PC|DOUT\(22) & 
-- !\SW[0]~input_o\) ) ) ) # ( !\ULA|ULA22|saida~1_combout\ & ( !\ULA|ULA22|saida~0_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(22))) # (\SW[0]~input_o\ & (((!\ULA|Equal5~0_combout\ & !\ULA|ULA24|Equal2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111000000010101010000000001010101110011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(22),
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA22|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~0_combout\,
	combout => \MUX_HEX|saida_MUX[22]~28_combout\);

-- Location: LABCELL_X43_Y2_N48
\ULA|saida[20]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~24_combout\ = ( \ROM|memROM~2_combout\ & ( \UNI_LOG_ULA|ULActrl[0]~2_combout\ ) ) # ( !\ROM|memROM~2_combout\ & ( \UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( (!\BancoRegistradores|saidaB[20]~11_combout\) # (\UNI_LOG_ULA|ULActrl[1]~0_combout\) ) 
-- ) ) # ( \ROM|memROM~2_combout\ & ( !\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( (!\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (!\ULA|ULA19|Carry_Out~combout\ $ (((!\BancoRegistradores|saidaB[20]~11_combout\) # (!\ROM|memROM~11_combout\)))) ) ) ) # ( 
-- !\ROM|memROM~2_combout\ & ( !\UNI_LOG_ULA|ULActrl[0]~2_combout\ & ( (!\BancoRegistradores|saidaB[20]~11_combout\ & ((!\UNI_LOG_ULA|ULActrl[1]~0_combout\) # ((!\ULA|ULA19|Carry_Out~combout\)))) # (\BancoRegistradores|saidaB[20]~11_combout\ & 
-- (!\ROM|memROM~11_combout\ $ (((!\UNI_LOG_ULA|ULActrl[1]~0_combout\) # (\ULA|ULA19|Carry_Out~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010001101110011011111111010111011101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaB[20]~11_combout\,
	datab => \UNI_LOG_ULA|ALT_INV_ULActrl[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ULA|ULA19|ALT_INV_Carry_Out~combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNI_LOG_ULA|ALT_INV_ULActrl[0]~2_combout\,
	combout => \ULA|saida[20]~24_combout\);

-- Location: MLABCELL_X45_Y3_N54
\DISP_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[0]~0_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( \ULA|saida[20]~24_combout\ & ( (!\MUX_HEX|saida_MUX[21]~29_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ $ (((!\SW[0]~input_o\ & \PC|DOUT\(20)))))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[22]~28_combout\ & ( \ULA|saida[20]~24_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(20) & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ (\MUX_HEX|saida_MUX[23]~27_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( 
-- !\ULA|saida[20]~24_combout\ & ( (!\MUX_HEX|saida_MUX[21]~29_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ $ (((\PC|DOUT\(20)) # (\SW[0]~input_o\))))) ) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( !\ULA|saida[20]~24_combout\ & ( (!\SW[0]~input_o\ & 
-- (\PC|DOUT\(20) & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ (\MUX_HEX|saida_MUX[23]~27_combout\)))) # (\SW[0]~input_o\ & (!\MUX_HEX|saida_MUX[21]~29_combout\ $ ((\MUX_HEX|saida_MUX[23]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100101100000100000101000000000100001001010000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datad => \PC|ALT_INV_DOUT\(20),
	datae => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \ULA|ALT_INV_saida[20]~24_combout\,
	combout => \DISP_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y3_N33
\MUX_HEX|saida_MUX[20]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX|saida_MUX[20]~30_combout\ = ( \SW[0]~input_o\ & ( !\ULA|saida[20]~24_combout\ ) ) # ( !\SW[0]~input_o\ & ( \PC|DOUT\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[20]~24_combout\,
	datac => \PC|ALT_INV_DOUT\(20),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \MUX_HEX|saida_MUX[20]~30_combout\);

-- Location: LABCELL_X39_Y4_N9
\DISP_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX|saida_MUX[23]~27_combout\ & ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[20]~30_combout\) # (\MUX_HEX|saida_MUX[21]~29_combout\) ) ) ) # ( !\MUX_HEX|saida_MUX[23]~27_combout\ & ( 
-- \MUX_HEX|saida_MUX[22]~28_combout\ & ( !\MUX_HEX|saida_MUX[21]~29_combout\ $ (!\MUX_HEX|saida_MUX[20]~30_combout\) ) ) ) # ( \MUX_HEX|saida_MUX[23]~27_combout\ & ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( (\MUX_HEX|saida_MUX[21]~29_combout\ & 
-- \MUX_HEX|saida_MUX[20]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y4_N0
\DISP_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[2]~2_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (\MUX_HEX|saida_MUX[23]~27_combout\ & ((!\MUX_HEX|saida_MUX[20]~30_combout\) # (\MUX_HEX|saida_MUX[21]~29_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[23]~27_combout\ & (!\MUX_HEX|saida_MUX[20]~30_combout\ & \MUX_HEX|saida_MUX[21]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y4_N3
\DISP_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[3]~3_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[20]~30_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ & !\MUX_HEX|saida_MUX[21]~29_combout\)) # (\MUX_HEX|saida_MUX[20]~30_combout\ & 
-- ((\MUX_HEX|saida_MUX[21]~29_combout\))) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & (\MUX_HEX|saida_MUX[20]~30_combout\ & !\MUX_HEX|saida_MUX[21]~29_combout\)) # (\MUX_HEX|saida_MUX[23]~27_combout\ & 
-- (!\MUX_HEX|saida_MUX[20]~30_combout\ & \MUX_HEX|saida_MUX[21]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datad => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N12
\DISP_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( \ULA|saida[20]~24_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & ((!\MUX_HEX|saida_MUX[21]~29_combout\) # ((!\SW[0]~input_o\ & \PC|DOUT\(20))))) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[22]~28_combout\ & ( \ULA|saida[20]~24_combout\ & ( (!\SW[0]~input_o\ & (\PC|DOUT\(20) & ((!\MUX_HEX|saida_MUX[21]~29_combout\) # (!\MUX_HEX|saida_MUX[23]~27_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( 
-- !\ULA|saida[20]~24_combout\ & ( (!\MUX_HEX|saida_MUX[23]~27_combout\ & ((!\MUX_HEX|saida_MUX[21]~29_combout\) # ((\PC|DOUT\(20)) # (\SW[0]~input_o\)))) ) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( !\ULA|saida[20]~24_combout\ & ( 
-- (!\MUX_HEX|saida_MUX[21]~29_combout\ & (((\PC|DOUT\(20))) # (\SW[0]~input_o\))) # (\MUX_HEX|saida_MUX[21]~29_combout\ & (!\MUX_HEX|saida_MUX[23]~27_combout\ & ((\PC|DOUT\(20)) # (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111010101100001111000000000000110010001010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	datad => \PC|ALT_INV_DOUT\(20),
	datae => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \ULA|ALT_INV_saida[20]~24_combout\,
	combout => \DISP_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N33
\ULA|saida[23]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~26_combout\ = ( \ULA|ULA23|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) # ( !\ULA|ULA23|saida~0_combout\ & ( (\ULA|ULA24|saida~0_combout\ & (\ULA|ULA23|soma~combout\ & !\ULA|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA23|ALT_INV_soma~combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA23|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[23]~26_combout\);

-- Location: LABCELL_X39_Y4_N42
\DISP_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX|saida_MUX[21]~29_combout\ & ( \MUX_HEX|saida_MUX[20]~30_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (!\ULA|saida[23]~26_combout\)) ) ) ) # ( 
-- !\MUX_HEX|saida_MUX[21]~29_combout\ & ( \MUX_HEX|saida_MUX[20]~30_combout\ & ( !\MUX_HEX|saida_MUX[22]~28_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (\ULA|saida[23]~26_combout\)))) ) ) ) # ( \MUX_HEX|saida_MUX[21]~29_combout\ 
-- & ( !\MUX_HEX|saida_MUX[20]~30_combout\ & ( (!\MUX_HEX|saida_MUX[22]~28_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (!\ULA|saida[23]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000100010100101100110011111000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	datab => \ULA|ALT_INV_saida[23]~26_combout\,
	datac => \PC|ALT_INV_DOUT\(23),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \DISP_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y4_N15
\DISP_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP_HEX5|rascSaida7seg[6]~6_combout\ = ( \MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[21]~29_combout\ & (!\MUX_HEX|saida_MUX[20]~30_combout\ & \MUX_HEX|saida_MUX[23]~27_combout\)) # (\MUX_HEX|saida_MUX[21]~29_combout\ & 
-- (\MUX_HEX|saida_MUX[20]~30_combout\ & !\MUX_HEX|saida_MUX[23]~27_combout\)) ) ) # ( !\MUX_HEX|saida_MUX[22]~28_combout\ & ( (!\MUX_HEX|saida_MUX[21]~29_combout\ & !\MUX_HEX|saida_MUX[23]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX|ALT_INV_saida_MUX[21]~29_combout\,
	datab => \MUX_HEX|ALT_INV_saida_MUX[20]~30_combout\,
	datac => \MUX_HEX|ALT_INV_saida_MUX[23]~27_combout\,
	dataf => \MUX_HEX|ALT_INV_saida_MUX[22]~28_combout\,
	combout => \DISP_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y3_N36
\ULA|saida[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~27_combout\ = ( \ULA|ULA5|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA5|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[5]~27_combout\);

-- Location: LABCELL_X41_Y6_N45
\ULA|saida[6]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~28_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA6|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA6|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[6]~28_combout\);

-- Location: LABCELL_X43_Y6_N24
\ULA|saida[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~29_combout\ = ( \ULA|ULA9|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA9|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[9]~29_combout\);

-- Location: LABCELL_X39_Y3_N42
\ULA|saida[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~30_combout\ = ( \ULA|ULA10|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA10|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[10]~30_combout\);

-- Location: LABCELL_X48_Y4_N42
\ULA|saida[13]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~31_combout\ = ( !\ULA|Equal5~0_combout\ & ( \ULA|ULA13|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA13|ALT_INV_saida~0_combout\,
	dataf => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[13]~31_combout\);

-- Location: LABCELL_X39_Y3_N45
\ULA|saida[14]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~32_combout\ = (!\ULA|Equal5~0_combout\ & \ULA|ULA14|saida~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datad => \ULA|ULA14|ALT_INV_saida~2_combout\,
	combout => \ULA|saida[14]~32_combout\);

-- Location: MLABCELL_X45_Y3_N48
\ULA|saida[22]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~33_combout\ = ( \ULA|ULA22|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((!\ULA|ULA22|saida~1_combout\) # (\ULA|ULA24|Equal2~0_combout\))) ) ) # ( !\ULA|ULA22|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & (!\ULA|ULA24|Equal2~0_combout\ 
-- & !\ULA|ULA22|saida~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA24|ALT_INV_Equal2~0_combout\,
	datad => \ULA|ULA22|ALT_INV_saida~1_combout\,
	dataf => \ULA|ULA22|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[22]~33_combout\);

-- Location: MLABCELL_X42_Y3_N30
\ULA|saida[25]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~34_combout\ = ( !\ULA|ULA25|saida~1_combout\ & ( !\ULA|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ULA25|ALT_INV_saida~1_combout\,
	combout => \ULA|saida[25]~34_combout\);

-- Location: MLABCELL_X42_Y4_N12
\ULA|saida[26]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~35_combout\ = ( \ULA|ULA24|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & ((\ULA|ULA26|soma~combout\) # (\ULA|ULA26|saida~0_combout\))) ) ) # ( !\ULA|ULA24|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA26|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA26|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA26|ALT_INV_soma~combout\,
	dataf => \ULA|ULA24|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[26]~35_combout\);

-- Location: LABCELL_X43_Y6_N12
\ULA|saida[28]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~36_combout\ = (!\ULA|ULA28|saida~1_combout\ & !\ULA|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ULA28|ALT_INV_saida~1_combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[28]~36_combout\);

-- Location: MLABCELL_X45_Y4_N36
\ULA|saida[29]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~37_combout\ = ( \ULA|ULA24|saida~0_combout\ & ( \ULA|ULA29|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) ) # ( !\ULA|ULA24|saida~0_combout\ & ( \ULA|ULA29|saida~0_combout\ & ( !\ULA|Equal5~0_combout\ ) ) ) # ( \ULA|ULA24|saida~0_combout\ 
-- & ( !\ULA|ULA29|saida~0_combout\ & ( (!\ULA|Equal5~0_combout\ & \ULA|ULA29|soma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal5~0_combout\,
	datac => \ULA|ULA29|ALT_INV_soma~combout\,
	datae => \ULA|ULA24|ALT_INV_saida~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_saida~0_combout\,
	combout => \ULA|saida[29]~37_combout\);

-- Location: LABCELL_X47_Y4_N15
\ULA|saida[31]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~38_combout\ = (!\ULA|ULA31|saida~1_combout\ & !\ULA|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA31|ALT_INV_saida~1_combout\,
	datad => \ULA|ALT_INV_Equal5~0_combout\,
	combout => \ULA|saida[31]~38_combout\);

-- Location: LABCELL_X39_Y2_N42
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & (!\PC|DOUT[4]~DUPLICATE_q\ & (!\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~15_combout\);

-- Location: FF_X41_Y6_N55
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

-- Location: LABCELL_X39_Y2_N24
\ULA|B_invertido~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|B_invertido~0_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & ((!\PC|DOUT[4]~DUPLICATE_q\ & (\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[4]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ULA|B_invertido~0_combout\);

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

-- Location: LABCELL_X7_Y21_N0
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


