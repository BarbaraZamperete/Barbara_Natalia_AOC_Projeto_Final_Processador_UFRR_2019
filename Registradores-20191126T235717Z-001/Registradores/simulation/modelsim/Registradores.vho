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

-- DATE "11/24/2019 17:43:52"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	Registradores IS
    PORT (
	RegWrite : IN std_logic;
	RegA : OUT std_logic_vector(7 DOWNTO 0);
	RegB : OUT std_logic_vector(7 DOWNTO 0);
	WriteData : IN std_logic_vector(7 DOWNTO 0);
	EndRegWrite : IN std_logic_vector(3 DOWNTO 0);
	ReadReg1 : IN std_logic_vector(3 DOWNTO 0);
	ReadReg2 : IN std_logic_vector(3 DOWNTO 0)
	);
END Registradores;

-- Design Ports Information
-- RegA[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndRegWrite[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg1[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg2[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg1[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg1[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg2[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg2[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndRegWrite[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndRegWrite[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndRegWrite[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg1[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadReg2[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_RegA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WriteData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EndRegWrite : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ReadReg1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ReadReg2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \EndRegWrite[3]~input_o\ : std_logic;
SIGNAL \ReadReg1[3]~input_o\ : std_logic;
SIGNAL \ReadReg2[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RegWrite~input_o\ : std_logic;
SIGNAL \RegWrite~inputCLKENA0_outclk\ : std_logic;
SIGNAL \WriteData[0]~input_o\ : std_logic;
SIGNAL \Regs~68feeder_combout\ : std_logic;
SIGNAL \EndRegWrite[0]~input_o\ : std_logic;
SIGNAL \EndRegWrite[2]~input_o\ : std_logic;
SIGNAL \EndRegWrite[1]~input_o\ : std_logic;
SIGNAL \Regs~205_combout\ : std_logic;
SIGNAL \Regs~68_q\ : std_logic;
SIGNAL \Regs~20feeder_combout\ : std_logic;
SIGNAL \Regs~208_combout\ : std_logic;
SIGNAL \Regs~20_q\ : std_logic;
SIGNAL \ReadReg1[2]~input_o\ : std_logic;
SIGNAL \Regs~211_combout\ : std_logic;
SIGNAL \Regs~28_q\ : std_logic;
SIGNAL \ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ReadReg1[1]~input_o\ : std_logic;
SIGNAL \Regs~209_combout\ : std_logic;
SIGNAL \Regs~36_q\ : std_logic;
SIGNAL \Regs~210_combout\ : std_logic;
SIGNAL \Regs~12_q\ : std_logic;
SIGNAL \Regs~140_combout\ : std_logic;
SIGNAL \Regs~207_combout\ : std_logic;
SIGNAL \Regs~60_q\ : std_logic;
SIGNAL \Regs~52feeder_combout\ : std_logic;
SIGNAL \Regs~204_combout\ : std_logic;
SIGNAL \Regs~52_q\ : std_logic;
SIGNAL \Regs~206_combout\ : std_logic;
SIGNAL \Regs~44_q\ : std_logic;
SIGNAL \Regs~76_combout\ : std_logic;
SIGNAL \WriteData[1]~input_o\ : std_logic;
SIGNAL \Regs~21feeder_combout\ : std_logic;
SIGNAL \Regs~21_q\ : std_logic;
SIGNAL \Regs~29_q\ : std_logic;
SIGNAL \Regs~37feeder_combout\ : std_logic;
SIGNAL \Regs~37_q\ : std_logic;
SIGNAL \Regs~13_q\ : std_logic;
SIGNAL \Regs~144_combout\ : std_logic;
SIGNAL \Regs~61_q\ : std_logic;
SIGNAL \Regs~69feeder_combout\ : std_logic;
SIGNAL \Regs~69_q\ : std_logic;
SIGNAL \Regs~53feeder_combout\ : std_logic;
SIGNAL \Regs~53_q\ : std_logic;
SIGNAL \Regs~45_q\ : std_logic;
SIGNAL \Regs~80_combout\ : std_logic;
SIGNAL \WriteData[2]~input_o\ : std_logic;
SIGNAL \Regs~70feeder_combout\ : std_logic;
SIGNAL \Regs~70_q\ : std_logic;
SIGNAL \Regs~54feeder_combout\ : std_logic;
SIGNAL \Regs~54_q\ : std_logic;
SIGNAL \Regs~62_q\ : std_logic;
SIGNAL \Regs~38feeder_combout\ : std_logic;
SIGNAL \Regs~38_q\ : std_logic;
SIGNAL \Regs~30_q\ : std_logic;
SIGNAL \Regs~22_q\ : std_logic;
SIGNAL \Regs~14_q\ : std_logic;
SIGNAL \Regs~148_combout\ : std_logic;
SIGNAL \Regs~46_q\ : std_logic;
SIGNAL \Regs~84_combout\ : std_logic;
SIGNAL \WriteData[3]~input_o\ : std_logic;
SIGNAL \Regs~71feeder_combout\ : std_logic;
SIGNAL \Regs~71_q\ : std_logic;
SIGNAL \Regs~39_q\ : std_logic;
SIGNAL \Regs~31_q\ : std_logic;
SIGNAL \Regs~23_q\ : std_logic;
SIGNAL \Regs~15_q\ : std_logic;
SIGNAL \Regs~152_combout\ : std_logic;
SIGNAL \Regs~63_q\ : std_logic;
SIGNAL \Regs~55feeder_combout\ : std_logic;
SIGNAL \Regs~55_q\ : std_logic;
SIGNAL \Regs~47_q\ : std_logic;
SIGNAL \Regs~88_combout\ : std_logic;
SIGNAL \WriteData[4]~input_o\ : std_logic;
SIGNAL \Regs~72_q\ : std_logic;
SIGNAL \Regs~56_q\ : std_logic;
SIGNAL \Regs~64_q\ : std_logic;
SIGNAL \Regs~24feeder_combout\ : std_logic;
SIGNAL \Regs~24_q\ : std_logic;
SIGNAL \Regs~32_q\ : std_logic;
SIGNAL \Regs~40feeder_combout\ : std_logic;
SIGNAL \Regs~40_q\ : std_logic;
SIGNAL \Regs~16_q\ : std_logic;
SIGNAL \Regs~156_combout\ : std_logic;
SIGNAL \Regs~48_q\ : std_logic;
SIGNAL \Regs~92_combout\ : std_logic;
SIGNAL \WriteData[5]~input_o\ : std_logic;
SIGNAL \Regs~57_q\ : std_logic;
SIGNAL \Regs~65_q\ : std_logic;
SIGNAL \Regs~73_q\ : std_logic;
SIGNAL \Regs~41_q\ : std_logic;
SIGNAL \Regs~33_q\ : std_logic;
SIGNAL \Regs~25feeder_combout\ : std_logic;
SIGNAL \Regs~25_q\ : std_logic;
SIGNAL \Regs~17_q\ : std_logic;
SIGNAL \Regs~160_combout\ : std_logic;
SIGNAL \Regs~49_q\ : std_logic;
SIGNAL \Regs~96_combout\ : std_logic;
SIGNAL \WriteData[6]~input_o\ : std_logic;
SIGNAL \Regs~74feeder_combout\ : std_logic;
SIGNAL \Regs~74_q\ : std_logic;
SIGNAL \Regs~26_q\ : std_logic;
SIGNAL \Regs~42_q\ : std_logic;
SIGNAL \Regs~34_q\ : std_logic;
SIGNAL \Regs~18_q\ : std_logic;
SIGNAL \Regs~164_combout\ : std_logic;
SIGNAL \Regs~66_q\ : std_logic;
SIGNAL \Regs~58feeder_combout\ : std_logic;
SIGNAL \Regs~58_q\ : std_logic;
SIGNAL \Regs~50_q\ : std_logic;
SIGNAL \Regs~100_combout\ : std_logic;
SIGNAL \WriteData[7]~input_o\ : std_logic;
SIGNAL \Regs~59feeder_combout\ : std_logic;
SIGNAL \Regs~59_q\ : std_logic;
SIGNAL \Regs~67_q\ : std_logic;
SIGNAL \Regs~75feeder_combout\ : std_logic;
SIGNAL \Regs~75_q\ : std_logic;
SIGNAL \Regs~27_q\ : std_logic;
SIGNAL \Regs~35_q\ : std_logic;
SIGNAL \Regs~43feeder_combout\ : std_logic;
SIGNAL \Regs~43_q\ : std_logic;
SIGNAL \Regs~19_q\ : std_logic;
SIGNAL \Regs~168_combout\ : std_logic;
SIGNAL \Regs~51_q\ : std_logic;
SIGNAL \Regs~104_combout\ : std_logic;
SIGNAL \ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ReadReg2[1]~input_o\ : std_logic;
SIGNAL \Regs~172_combout\ : std_logic;
SIGNAL \Regs~108_combout\ : std_logic;
SIGNAL \Regs~176_combout\ : std_logic;
SIGNAL \Regs~112_combout\ : std_logic;
SIGNAL \Regs~180_combout\ : std_logic;
SIGNAL \Regs~116_combout\ : std_logic;
SIGNAL \Regs~184_combout\ : std_logic;
SIGNAL \Regs~120_combout\ : std_logic;
SIGNAL \Regs~188_combout\ : std_logic;
SIGNAL \Regs~124_combout\ : std_logic;
SIGNAL \Regs~192_combout\ : std_logic;
SIGNAL \Regs~128_combout\ : std_logic;
SIGNAL \Regs~196_combout\ : std_logic;
SIGNAL \Regs~132_combout\ : std_logic;
SIGNAL \Regs~200_combout\ : std_logic;
SIGNAL \Regs~136_combout\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Regs~35_q\ : std_logic;
SIGNAL \ALT_INV_Regs~19_q\ : std_logic;
SIGNAL \ALT_INV_Regs~43_q\ : std_logic;
SIGNAL \ALT_INV_Regs~27_q\ : std_logic;
SIGNAL \ALT_INV_Regs~34_q\ : std_logic;
SIGNAL \ALT_INV_Regs~18_q\ : std_logic;
SIGNAL \ALT_INV_Regs~42_q\ : std_logic;
SIGNAL \ALT_INV_Regs~26_q\ : std_logic;
SIGNAL \ALT_INV_Regs~33_q\ : std_logic;
SIGNAL \ALT_INV_Regs~17_q\ : std_logic;
SIGNAL \ALT_INV_Regs~41_q\ : std_logic;
SIGNAL \ALT_INV_Regs~25_q\ : std_logic;
SIGNAL \ALT_INV_Regs~32_q\ : std_logic;
SIGNAL \ALT_INV_Regs~16_q\ : std_logic;
SIGNAL \ALT_INV_Regs~40_q\ : std_logic;
SIGNAL \ALT_INV_Regs~24_q\ : std_logic;
SIGNAL \ALT_INV_Regs~31_q\ : std_logic;
SIGNAL \ALT_INV_Regs~15_q\ : std_logic;
SIGNAL \ALT_INV_Regs~39_q\ : std_logic;
SIGNAL \ALT_INV_Regs~23_q\ : std_logic;
SIGNAL \ALT_INV_Regs~30_q\ : std_logic;
SIGNAL \ALT_INV_Regs~14_q\ : std_logic;
SIGNAL \ALT_INV_Regs~38_q\ : std_logic;
SIGNAL \ALT_INV_Regs~22_q\ : std_logic;
SIGNAL \ALT_INV_Regs~29_q\ : std_logic;
SIGNAL \ALT_INV_Regs~13_q\ : std_logic;
SIGNAL \ALT_INV_Regs~37_q\ : std_logic;
SIGNAL \ALT_INV_Regs~21_q\ : std_logic;
SIGNAL \ALT_INV_Regs~28_q\ : std_logic;
SIGNAL \ALT_INV_Regs~12_q\ : std_logic;
SIGNAL \ALT_INV_Regs~36_q\ : std_logic;
SIGNAL \ALT_INV_Regs~20_q\ : std_logic;
SIGNAL \ALT_INV_Regs~67_q\ : std_logic;
SIGNAL \ALT_INV_Regs~51_q\ : std_logic;
SIGNAL \ALT_INV_Regs~75_q\ : std_logic;
SIGNAL \ALT_INV_Regs~59_q\ : std_logic;
SIGNAL \ALT_INV_Regs~66_q\ : std_logic;
SIGNAL \ALT_INV_Regs~50_q\ : std_logic;
SIGNAL \ALT_INV_Regs~74_q\ : std_logic;
SIGNAL \ALT_INV_Regs~58_q\ : std_logic;
SIGNAL \ALT_INV_Regs~65_q\ : std_logic;
SIGNAL \ALT_INV_Regs~49_q\ : std_logic;
SIGNAL \ALT_INV_Regs~73_q\ : std_logic;
SIGNAL \ALT_INV_Regs~57_q\ : std_logic;
SIGNAL \ALT_INV_Regs~64_q\ : std_logic;
SIGNAL \ALT_INV_Regs~48_q\ : std_logic;
SIGNAL \ALT_INV_Regs~72_q\ : std_logic;
SIGNAL \ALT_INV_Regs~56_q\ : std_logic;
SIGNAL \ALT_INV_Regs~63_q\ : std_logic;
SIGNAL \ALT_INV_Regs~47_q\ : std_logic;
SIGNAL \ALT_INV_Regs~71_q\ : std_logic;
SIGNAL \ALT_INV_Regs~55_q\ : std_logic;
SIGNAL \ALT_INV_Regs~62_q\ : std_logic;
SIGNAL \ALT_INV_Regs~46_q\ : std_logic;
SIGNAL \ALT_INV_Regs~70_q\ : std_logic;
SIGNAL \ALT_INV_Regs~54_q\ : std_logic;
SIGNAL \ALT_INV_Regs~61_q\ : std_logic;
SIGNAL \ALT_INV_Regs~45_q\ : std_logic;
SIGNAL \ALT_INV_Regs~69_q\ : std_logic;
SIGNAL \ALT_INV_Regs~53_q\ : std_logic;
SIGNAL \ALT_INV_Regs~60_q\ : std_logic;
SIGNAL \ALT_INV_Regs~44_q\ : std_logic;
SIGNAL \ALT_INV_Regs~68_q\ : std_logic;
SIGNAL \ALT_INV_Regs~52_q\ : std_logic;
SIGNAL \ALT_INV_Regs~200_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~196_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~192_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~188_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~184_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~180_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~176_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~172_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~168_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~164_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~160_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~156_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~152_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~148_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~144_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~140_combout\ : std_logic;

BEGIN

ww_RegWrite <= RegWrite;
RegA <= ww_RegA;
RegB <= ww_RegB;
ww_WriteData <= WriteData;
ww_EndRegWrite <= EndRegWrite;
ww_ReadReg1 <= ReadReg1;
ww_ReadReg2 <= ReadReg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ReadReg2[0]~input_o\ <= NOT \ReadReg2[0]~input_o\;
\ALT_INV_WriteData[7]~input_o\ <= NOT \WriteData[7]~input_o\;
\ALT_INV_WriteData[6]~input_o\ <= NOT \WriteData[6]~input_o\;
\ALT_INV_WriteData[5]~input_o\ <= NOT \WriteData[5]~input_o\;
\ALT_INV_WriteData[4]~input_o\ <= NOT \WriteData[4]~input_o\;
\ALT_INV_WriteData[3]~input_o\ <= NOT \WriteData[3]~input_o\;
\ALT_INV_WriteData[2]~input_o\ <= NOT \WriteData[2]~input_o\;
\ALT_INV_WriteData[1]~input_o\ <= NOT \WriteData[1]~input_o\;
\ALT_INV_ReadReg1[0]~input_o\ <= NOT \ReadReg1[0]~input_o\;
\ALT_INV_EndRegWrite[1]~input_o\ <= NOT \EndRegWrite[1]~input_o\;
\ALT_INV_EndRegWrite[0]~input_o\ <= NOT \EndRegWrite[0]~input_o\;
\ALT_INV_EndRegWrite[2]~input_o\ <= NOT \EndRegWrite[2]~input_o\;
\ALT_INV_WriteData[0]~input_o\ <= NOT \WriteData[0]~input_o\;
\ALT_INV_ReadReg2[1]~input_o\ <= NOT \ReadReg2[1]~input_o\;
\ALT_INV_ReadReg2[2]~input_o\ <= NOT \ReadReg2[2]~input_o\;
\ALT_INV_ReadReg1[1]~input_o\ <= NOT \ReadReg1[1]~input_o\;
\ALT_INV_ReadReg1[2]~input_o\ <= NOT \ReadReg1[2]~input_o\;
\ALT_INV_Regs~35_q\ <= NOT \Regs~35_q\;
\ALT_INV_Regs~19_q\ <= NOT \Regs~19_q\;
\ALT_INV_Regs~43_q\ <= NOT \Regs~43_q\;
\ALT_INV_Regs~27_q\ <= NOT \Regs~27_q\;
\ALT_INV_Regs~34_q\ <= NOT \Regs~34_q\;
\ALT_INV_Regs~18_q\ <= NOT \Regs~18_q\;
\ALT_INV_Regs~42_q\ <= NOT \Regs~42_q\;
\ALT_INV_Regs~26_q\ <= NOT \Regs~26_q\;
\ALT_INV_Regs~33_q\ <= NOT \Regs~33_q\;
\ALT_INV_Regs~17_q\ <= NOT \Regs~17_q\;
\ALT_INV_Regs~41_q\ <= NOT \Regs~41_q\;
\ALT_INV_Regs~25_q\ <= NOT \Regs~25_q\;
\ALT_INV_Regs~32_q\ <= NOT \Regs~32_q\;
\ALT_INV_Regs~16_q\ <= NOT \Regs~16_q\;
\ALT_INV_Regs~40_q\ <= NOT \Regs~40_q\;
\ALT_INV_Regs~24_q\ <= NOT \Regs~24_q\;
\ALT_INV_Regs~31_q\ <= NOT \Regs~31_q\;
\ALT_INV_Regs~15_q\ <= NOT \Regs~15_q\;
\ALT_INV_Regs~39_q\ <= NOT \Regs~39_q\;
\ALT_INV_Regs~23_q\ <= NOT \Regs~23_q\;
\ALT_INV_Regs~30_q\ <= NOT \Regs~30_q\;
\ALT_INV_Regs~14_q\ <= NOT \Regs~14_q\;
\ALT_INV_Regs~38_q\ <= NOT \Regs~38_q\;
\ALT_INV_Regs~22_q\ <= NOT \Regs~22_q\;
\ALT_INV_Regs~29_q\ <= NOT \Regs~29_q\;
\ALT_INV_Regs~13_q\ <= NOT \Regs~13_q\;
\ALT_INV_Regs~37_q\ <= NOT \Regs~37_q\;
\ALT_INV_Regs~21_q\ <= NOT \Regs~21_q\;
\ALT_INV_Regs~28_q\ <= NOT \Regs~28_q\;
\ALT_INV_Regs~12_q\ <= NOT \Regs~12_q\;
\ALT_INV_Regs~36_q\ <= NOT \Regs~36_q\;
\ALT_INV_Regs~20_q\ <= NOT \Regs~20_q\;
\ALT_INV_Regs~67_q\ <= NOT \Regs~67_q\;
\ALT_INV_Regs~51_q\ <= NOT \Regs~51_q\;
\ALT_INV_Regs~75_q\ <= NOT \Regs~75_q\;
\ALT_INV_Regs~59_q\ <= NOT \Regs~59_q\;
\ALT_INV_Regs~66_q\ <= NOT \Regs~66_q\;
\ALT_INV_Regs~50_q\ <= NOT \Regs~50_q\;
\ALT_INV_Regs~74_q\ <= NOT \Regs~74_q\;
\ALT_INV_Regs~58_q\ <= NOT \Regs~58_q\;
\ALT_INV_Regs~65_q\ <= NOT \Regs~65_q\;
\ALT_INV_Regs~49_q\ <= NOT \Regs~49_q\;
\ALT_INV_Regs~73_q\ <= NOT \Regs~73_q\;
\ALT_INV_Regs~57_q\ <= NOT \Regs~57_q\;
\ALT_INV_Regs~64_q\ <= NOT \Regs~64_q\;
\ALT_INV_Regs~48_q\ <= NOT \Regs~48_q\;
\ALT_INV_Regs~72_q\ <= NOT \Regs~72_q\;
\ALT_INV_Regs~56_q\ <= NOT \Regs~56_q\;
\ALT_INV_Regs~63_q\ <= NOT \Regs~63_q\;
\ALT_INV_Regs~47_q\ <= NOT \Regs~47_q\;
\ALT_INV_Regs~71_q\ <= NOT \Regs~71_q\;
\ALT_INV_Regs~55_q\ <= NOT \Regs~55_q\;
\ALT_INV_Regs~62_q\ <= NOT \Regs~62_q\;
\ALT_INV_Regs~46_q\ <= NOT \Regs~46_q\;
\ALT_INV_Regs~70_q\ <= NOT \Regs~70_q\;
\ALT_INV_Regs~54_q\ <= NOT \Regs~54_q\;
\ALT_INV_Regs~61_q\ <= NOT \Regs~61_q\;
\ALT_INV_Regs~45_q\ <= NOT \Regs~45_q\;
\ALT_INV_Regs~69_q\ <= NOT \Regs~69_q\;
\ALT_INV_Regs~53_q\ <= NOT \Regs~53_q\;
\ALT_INV_Regs~60_q\ <= NOT \Regs~60_q\;
\ALT_INV_Regs~44_q\ <= NOT \Regs~44_q\;
\ALT_INV_Regs~68_q\ <= NOT \Regs~68_q\;
\ALT_INV_Regs~52_q\ <= NOT \Regs~52_q\;
\ALT_INV_Regs~200_combout\ <= NOT \Regs~200_combout\;
\ALT_INV_Regs~196_combout\ <= NOT \Regs~196_combout\;
\ALT_INV_Regs~192_combout\ <= NOT \Regs~192_combout\;
\ALT_INV_Regs~188_combout\ <= NOT \Regs~188_combout\;
\ALT_INV_Regs~184_combout\ <= NOT \Regs~184_combout\;
\ALT_INV_Regs~180_combout\ <= NOT \Regs~180_combout\;
\ALT_INV_Regs~176_combout\ <= NOT \Regs~176_combout\;
\ALT_INV_Regs~172_combout\ <= NOT \Regs~172_combout\;
\ALT_INV_Regs~168_combout\ <= NOT \Regs~168_combout\;
\ALT_INV_Regs~164_combout\ <= NOT \Regs~164_combout\;
\ALT_INV_Regs~160_combout\ <= NOT \Regs~160_combout\;
\ALT_INV_Regs~156_combout\ <= NOT \Regs~156_combout\;
\ALT_INV_Regs~152_combout\ <= NOT \Regs~152_combout\;
\ALT_INV_Regs~148_combout\ <= NOT \Regs~148_combout\;
\ALT_INV_Regs~144_combout\ <= NOT \Regs~144_combout\;
\ALT_INV_Regs~140_combout\ <= NOT \Regs~140_combout\;

-- Location: IOOBUF_X89_Y9_N39
\RegA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~76_combout\,
	devoe => ww_devoe,
	o => ww_RegA(0));

-- Location: IOOBUF_X68_Y0_N36
\RegA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~80_combout\,
	devoe => ww_devoe,
	o => ww_RegA(1));

-- Location: IOOBUF_X89_Y8_N22
\RegA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~84_combout\,
	devoe => ww_devoe,
	o => ww_RegA(2));

-- Location: IOOBUF_X64_Y0_N2
\RegA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~88_combout\,
	devoe => ww_devoe,
	o => ww_RegA(3));

-- Location: IOOBUF_X89_Y6_N22
\RegA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~92_combout\,
	devoe => ww_devoe,
	o => ww_RegA(4));

-- Location: IOOBUF_X89_Y8_N39
\RegA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~96_combout\,
	devoe => ww_devoe,
	o => ww_RegA(5));

-- Location: IOOBUF_X66_Y0_N59
\RegA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~100_combout\,
	devoe => ww_devoe,
	o => ww_RegA(6));

-- Location: IOOBUF_X89_Y9_N22
\RegA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~104_combout\,
	devoe => ww_devoe,
	o => ww_RegA(7));

-- Location: IOOBUF_X68_Y0_N19
\RegB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~108_combout\,
	devoe => ww_devoe,
	o => ww_RegB(0));

-- Location: IOOBUF_X68_Y0_N53
\RegB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~112_combout\,
	devoe => ww_devoe,
	o => ww_RegB(1));

-- Location: IOOBUF_X68_Y0_N2
\RegB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~116_combout\,
	devoe => ww_devoe,
	o => ww_RegB(2));

-- Location: IOOBUF_X64_Y0_N19
\RegB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~120_combout\,
	devoe => ww_devoe,
	o => ww_RegB(3));

-- Location: IOOBUF_X89_Y6_N56
\RegB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~124_combout\,
	devoe => ww_devoe,
	o => ww_RegB(4));

-- Location: IOOBUF_X89_Y8_N56
\RegB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~128_combout\,
	devoe => ww_devoe,
	o => ww_RegB(5));

-- Location: IOOBUF_X64_Y0_N36
\RegB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~132_combout\,
	devoe => ww_devoe,
	o => ww_RegB(6));

-- Location: IOOBUF_X89_Y8_N5
\RegB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~136_combout\,
	devoe => ww_devoe,
	o => ww_RegB(7));

-- Location: IOIBUF_X89_Y35_N61
\RegWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegWrite,
	o => \RegWrite~input_o\);

-- Location: CLKCTRL_G10
\RegWrite~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \RegWrite~input_o\,
	outclk => \RegWrite~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y4_N78
\WriteData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(0),
	o => \WriteData[0]~input_o\);

-- Location: LABCELL_X80_Y4_N39
\Regs~68feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~68feeder_combout\ = ( \WriteData[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[0]~input_o\,
	combout => \Regs~68feeder_combout\);

-- Location: IOIBUF_X66_Y0_N92
\EndRegWrite[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(0),
	o => \EndRegWrite[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\EndRegWrite[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(2),
	o => \EndRegWrite[2]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\EndRegWrite[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(1),
	o => \EndRegWrite[1]~input_o\);

-- Location: LABCELL_X75_Y4_N9
\Regs~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~205_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~205_combout\);

-- Location: FF_X80_Y4_N41
\Regs~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~68feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~68_q\);

-- Location: MLABCELL_X78_Y4_N33
\Regs~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~20feeder_combout\ = \WriteData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[0]~input_o\,
	combout => \Regs~20feeder_combout\);

-- Location: LABCELL_X75_Y4_N48
\Regs~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~208_combout\ = (!\EndRegWrite[2]~input_o\ & (\EndRegWrite[0]~input_o\ & !\EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datac => \ALT_INV_EndRegWrite[0]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~208_combout\);

-- Location: FF_X78_Y4_N34
\Regs~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~20feeder_combout\,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~20_q\);

-- Location: IOIBUF_X89_Y6_N4
\ReadReg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(2),
	o => \ReadReg1[2]~input_o\);

-- Location: LABCELL_X75_Y4_N57
\Regs~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~211_combout\ = (!\EndRegWrite[0]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~211_combout\);

-- Location: FF_X78_Y4_N2
\Regs~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~28_q\);

-- Location: IOIBUF_X89_Y4_N95
\ReadReg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(0),
	o => \ReadReg1[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\ReadReg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(1),
	o => \ReadReg1[1]~input_o\);

-- Location: LABCELL_X75_Y4_N51
\Regs~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~209_combout\ = (\EndRegWrite[0]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~209_combout\);

-- Location: FF_X78_Y4_N10
\Regs~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	sload => VCC,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~36_q\);

-- Location: LABCELL_X75_Y4_N54
\Regs~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~210_combout\ = (!\EndRegWrite[2]~input_o\ & (!\EndRegWrite[0]~input_o\ & !\EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datac => \ALT_INV_EndRegWrite[0]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~210_combout\);

-- Location: FF_X79_Y4_N8
\Regs~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~12_q\);

-- Location: LABCELL_X79_Y4_N6
\Regs~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~140_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (((\Regs~12_q\)))) # (\ReadReg1[0]~input_o\ & (\Regs~20_q\)))) # (\ReadReg1[2]~input_o\ & ((((\ReadReg1[0]~input_o\))))) ) ) # ( \ReadReg1[1]~input_o\ & 
-- ( ((!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (\Regs~28_q\)) # (\ReadReg1[0]~input_o\ & ((\Regs~36_q\))))) # (\ReadReg1[2]~input_o\ & (((\ReadReg1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~20_q\,
	datab => \ALT_INV_ReadReg1[2]~input_o\,
	datac => \ALT_INV_Regs~28_q\,
	datad => \ALT_INV_ReadReg1[0]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~36_q\,
	datag => \ALT_INV_Regs~12_q\,
	combout => \Regs~140_combout\);

-- Location: LABCELL_X75_Y4_N15
\Regs~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~207_combout\ = (!\EndRegWrite[0]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~207_combout\);

-- Location: FF_X79_Y4_N20
\Regs~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~60_q\);

-- Location: LABCELL_X80_Y4_N33
\Regs~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~52feeder_combout\ = ( \WriteData[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[0]~input_o\,
	combout => \Regs~52feeder_combout\);

-- Location: LABCELL_X75_Y4_N6
\Regs~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~204_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[2]~input_o\ & !\EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datac => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~204_combout\);

-- Location: FF_X80_Y4_N35
\Regs~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~52feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~52_q\);

-- Location: LABCELL_X75_Y4_N12
\Regs~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~206_combout\ = (\EndRegWrite[2]~input_o\ & (!\EndRegWrite[0]~input_o\ & !\EndRegWrite[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_EndRegWrite[2]~input_o\,
	datac => \ALT_INV_EndRegWrite[0]~input_o\,
	datad => \ALT_INV_EndRegWrite[1]~input_o\,
	combout => \Regs~206_combout\);

-- Location: FF_X79_Y4_N2
\Regs~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~44_q\);

-- Location: LABCELL_X79_Y4_N0
\Regs~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~76_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\Regs~140_combout\ & (\Regs~44_q\ & (\ReadReg1[2]~input_o\))) # (\Regs~140_combout\ & (((!\ReadReg1[2]~input_o\) # (\Regs~52_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\Regs~140_combout\ & 
-- (((\Regs~60_q\ & (\ReadReg1[2]~input_o\))))) # (\Regs~140_combout\ & ((((!\ReadReg1[2]~input_o\))) # (\Regs~68_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~68_q\,
	datab => \ALT_INV_Regs~140_combout\,
	datac => \ALT_INV_Regs~60_q\,
	datad => \ALT_INV_ReadReg1[2]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~52_q\,
	datag => \ALT_INV_Regs~44_q\,
	combout => \Regs~76_combout\);

-- Location: IOIBUF_X72_Y0_N52
\WriteData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(1),
	o => \WriteData[1]~input_o\);

-- Location: MLABCELL_X78_Y4_N12
\Regs~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~21feeder_combout\ = \WriteData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[1]~input_o\,
	combout => \Regs~21feeder_combout\);

-- Location: FF_X78_Y4_N13
\Regs~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~21feeder_combout\,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~21_q\);

-- Location: FF_X78_Y4_N38
\Regs~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~29_q\);

-- Location: MLABCELL_X78_Y4_N18
\Regs~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~37feeder_combout\ = \WriteData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[1]~input_o\,
	combout => \Regs~37feeder_combout\);

-- Location: FF_X78_Y4_N19
\Regs~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~37feeder_combout\,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~37_q\);

-- Location: FF_X79_Y4_N44
\Regs~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~13_q\);

-- Location: LABCELL_X79_Y4_N42
\Regs~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~144_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (((\Regs~13_q\)))) # (\ReadReg1[0]~input_o\ & (\Regs~21_q\)))) # (\ReadReg1[2]~input_o\ & ((((\ReadReg1[0]~input_o\))))) ) ) # ( \ReadReg1[1]~input_o\ & 
-- ( ((!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (\Regs~29_q\)) # (\ReadReg1[0]~input_o\ & ((\Regs~37_q\))))) # (\ReadReg1[2]~input_o\ & (((\ReadReg1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~21_q\,
	datab => \ALT_INV_ReadReg1[2]~input_o\,
	datac => \ALT_INV_Regs~29_q\,
	datad => \ALT_INV_ReadReg1[0]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~37_q\,
	datag => \ALT_INV_Regs~13_q\,
	combout => \Regs~144_combout\);

-- Location: FF_X79_Y4_N56
\Regs~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~61_q\);

-- Location: LABCELL_X80_Y4_N18
\Regs~69feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~69feeder_combout\ = ( \WriteData[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[1]~input_o\,
	combout => \Regs~69feeder_combout\);

-- Location: FF_X80_Y4_N20
\Regs~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~69feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~69_q\);

-- Location: LABCELL_X80_Y4_N12
\Regs~53feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~53feeder_combout\ = ( \WriteData[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[1]~input_o\,
	combout => \Regs~53feeder_combout\);

-- Location: FF_X80_Y4_N14
\Regs~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~53feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~53_q\);

-- Location: FF_X79_Y4_N38
\Regs~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~45_q\);

-- Location: LABCELL_X79_Y4_N36
\Regs~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~80_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\Regs~144_combout\ & (\ReadReg1[2]~input_o\ & (\Regs~45_q\))) # (\Regs~144_combout\ & ((!\ReadReg1[2]~input_o\) # (((\Regs~53_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\Regs~144_combout\ & 
-- (\ReadReg1[2]~input_o\ & (\Regs~61_q\))) # (\Regs~144_combout\ & ((!\ReadReg1[2]~input_o\) # (((\Regs~69_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~144_combout\,
	datab => \ALT_INV_ReadReg1[2]~input_o\,
	datac => \ALT_INV_Regs~61_q\,
	datad => \ALT_INV_Regs~69_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~53_q\,
	datag => \ALT_INV_Regs~45_q\,
	combout => \Regs~80_combout\);

-- Location: IOIBUF_X70_Y0_N18
\WriteData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(2),
	o => \WriteData[2]~input_o\);

-- Location: LABCELL_X80_Y4_N0
\Regs~70feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~70feeder_combout\ = ( \WriteData[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[2]~input_o\,
	combout => \Regs~70feeder_combout\);

-- Location: FF_X80_Y4_N2
\Regs~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~70feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~70_q\);

-- Location: LABCELL_X80_Y4_N24
\Regs~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~54feeder_combout\ = ( \WriteData[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[2]~input_o\,
	combout => \Regs~54feeder_combout\);

-- Location: FF_X80_Y4_N26
\Regs~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~54feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~54_q\);

-- Location: FF_X79_Y4_N32
\Regs~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~62_q\);

-- Location: MLABCELL_X78_Y4_N21
\Regs~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~38feeder_combout\ = ( \WriteData[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[2]~input_o\,
	combout => \Regs~38feeder_combout\);

-- Location: FF_X78_Y4_N23
\Regs~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~38feeder_combout\,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~38_q\);

-- Location: FF_X78_Y4_N44
\Regs~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~30_q\);

-- Location: FF_X78_Y4_N16
\Regs~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	sload => VCC,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~22_q\);

-- Location: FF_X79_Y4_N50
\Regs~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~14_q\);

-- Location: LABCELL_X79_Y4_N48
\Regs~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~148_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (\Regs~14_q\)) # (\ReadReg1[0]~input_o\ & ((\Regs~22_q\))))) # (\ReadReg1[2]~input_o\ & (((\ReadReg1[0]~input_o\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( 
-- (!\ReadReg1[2]~input_o\ & ((!\ReadReg1[0]~input_o\ & (((\Regs~30_q\)))) # (\ReadReg1[0]~input_o\ & (\Regs~38_q\)))) # (\ReadReg1[2]~input_o\ & ((((\ReadReg1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~38_q\,
	datab => \ALT_INV_ReadReg1[2]~input_o\,
	datac => \ALT_INV_Regs~30_q\,
	datad => \ALT_INV_ReadReg1[0]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~22_q\,
	datag => \ALT_INV_Regs~14_q\,
	combout => \Regs~148_combout\);

-- Location: FF_X79_Y4_N14
\Regs~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~46_q\);

-- Location: LABCELL_X79_Y4_N12
\Regs~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~84_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\ReadReg1[2]~input_o\ & (((\Regs~148_combout\)))) # (\ReadReg1[2]~input_o\ & ((!\Regs~148_combout\ & ((\Regs~46_q\))) # (\Regs~148_combout\ & (\Regs~54_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( 
-- ((!\ReadReg1[2]~input_o\ & (((\Regs~148_combout\)))) # (\ReadReg1[2]~input_o\ & ((!\Regs~148_combout\ & ((\Regs~62_q\))) # (\Regs~148_combout\ & (\Regs~70_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~70_q\,
	datab => \ALT_INV_Regs~54_q\,
	datac => \ALT_INV_Regs~62_q\,
	datad => \ALT_INV_ReadReg1[2]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~148_combout\,
	datag => \ALT_INV_Regs~46_q\,
	combout => \Regs~84_combout\);

-- Location: IOIBUF_X70_Y0_N35
\WriteData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(3),
	o => \WriteData[3]~input_o\);

-- Location: LABCELL_X75_Y4_N24
\Regs~71feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~71feeder_combout\ = ( \WriteData[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[3]~input_o\,
	combout => \Regs~71feeder_combout\);

-- Location: FF_X75_Y4_N26
\Regs~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~71feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~71_q\);

-- Location: FF_X78_Y4_N8
\Regs~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~39_q\);

-- Location: FF_X77_Y4_N50
\Regs~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~31_q\);

-- Location: FF_X78_Y4_N14
\Regs~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~23_q\);

-- Location: FF_X77_Y4_N2
\Regs~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~15_q\);

-- Location: LABCELL_X77_Y4_N0
\Regs~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~152_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ & (((\Regs~15_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\) # (\Regs~23_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ 
-- & (((\Regs~31_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\))) # (\Regs~39_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[0]~input_o\,
	datab => \ALT_INV_Regs~39_q\,
	datac => \ALT_INV_Regs~31_q\,
	datad => \ALT_INV_Regs~23_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~15_q\,
	combout => \Regs~152_combout\);

-- Location: FF_X75_Y4_N44
\Regs~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~63_q\);

-- Location: LABCELL_X77_Y4_N9
\Regs~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~55feeder_combout\ = ( \WriteData[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[3]~input_o\,
	combout => \Regs~55feeder_combout\);

-- Location: FF_X77_Y4_N11
\Regs~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~55feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~55_q\);

-- Location: FF_X75_Y4_N2
\Regs~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~47_q\);

-- Location: LABCELL_X75_Y4_N0
\Regs~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~88_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\Regs~152_combout\ & (\Regs~47_q\ & ((\ReadReg1[2]~input_o\)))) # (\Regs~152_combout\ & (((!\ReadReg1[2]~input_o\) # (\Regs~55_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\Regs~152_combout\ & 
-- (((\Regs~63_q\ & ((\ReadReg1[2]~input_o\)))))) # (\Regs~152_combout\ & ((((!\ReadReg1[2]~input_o\))) # (\Regs~71_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~71_q\,
	datab => \ALT_INV_Regs~152_combout\,
	datac => \ALT_INV_Regs~63_q\,
	datad => \ALT_INV_Regs~55_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~47_q\,
	combout => \Regs~88_combout\);

-- Location: IOIBUF_X89_Y4_N44
\WriteData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(4),
	o => \WriteData[4]~input_o\);

-- Location: FF_X80_Y4_N47
\Regs~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~72_q\);

-- Location: FF_X80_Y4_N11
\Regs~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~56_q\);

-- Location: FF_X81_Y4_N50
\Regs~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~64_q\);

-- Location: MLABCELL_X78_Y4_N15
\Regs~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~24feeder_combout\ = ( \WriteData[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[4]~input_o\,
	combout => \Regs~24feeder_combout\);

-- Location: FF_X78_Y4_N17
\Regs~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~24feeder_combout\,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~24_q\);

-- Location: FF_X78_Y4_N50
\Regs~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~32_q\);

-- Location: MLABCELL_X78_Y4_N9
\Regs~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~40feeder_combout\ = \WriteData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[4]~input_o\,
	combout => \Regs~40feeder_combout\);

-- Location: FF_X78_Y4_N11
\Regs~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~40feeder_combout\,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~40_q\);

-- Location: FF_X81_Y4_N8
\Regs~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~16_q\);

-- Location: LABCELL_X81_Y4_N6
\Regs~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~156_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ & (((\Regs~16_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\))) # (\Regs~24_q\))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ 
-- & (((\Regs~32_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\) # (\Regs~40_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[0]~input_o\,
	datab => \ALT_INV_Regs~24_q\,
	datac => \ALT_INV_Regs~32_q\,
	datad => \ALT_INV_Regs~40_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~16_q\,
	combout => \Regs~156_combout\);

-- Location: FF_X81_Y4_N2
\Regs~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~48_q\);

-- Location: LABCELL_X81_Y4_N0
\Regs~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~92_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\Regs~156_combout\ & (((\Regs~48_q\ & \ReadReg1[2]~input_o\)))) # (\Regs~156_combout\ & (((!\ReadReg1[2]~input_o\)) # (\Regs~56_q\)))) ) ) # ( \ReadReg1[1]~input_o\ & ( ((!\Regs~156_combout\ & 
-- (((\Regs~64_q\ & \ReadReg1[2]~input_o\)))) # (\Regs~156_combout\ & (((!\ReadReg1[2]~input_o\)) # (\Regs~72_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~72_q\,
	datab => \ALT_INV_Regs~56_q\,
	datac => \ALT_INV_Regs~64_q\,
	datad => \ALT_INV_Regs~156_combout\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~48_q\,
	combout => \Regs~92_combout\);

-- Location: IOIBUF_X89_Y6_N38
\WriteData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(5),
	o => \WriteData[5]~input_o\);

-- Location: FF_X80_Y4_N50
\Regs~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~57_q\);

-- Location: FF_X81_Y4_N56
\Regs~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~65_q\);

-- Location: FF_X80_Y4_N56
\Regs~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~73_q\);

-- Location: FF_X78_Y4_N20
\Regs~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~41_q\);

-- Location: FF_X77_Y4_N56
\Regs~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~33_q\);

-- Location: MLABCELL_X78_Y4_N30
\Regs~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~25feeder_combout\ = \WriteData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[5]~input_o\,
	combout => \Regs~25feeder_combout\);

-- Location: FF_X78_Y4_N32
\Regs~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~25feeder_combout\,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~25_q\);

-- Location: FF_X77_Y4_N38
\Regs~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~17_q\);

-- Location: LABCELL_X77_Y4_N36
\Regs~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~160_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ & (((\Regs~17_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\) # (\Regs~25_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ 
-- & (((\Regs~33_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\))) # (\Regs~41_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[0]~input_o\,
	datab => \ALT_INV_Regs~41_q\,
	datac => \ALT_INV_Regs~33_q\,
	datad => \ALT_INV_Regs~25_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~17_q\,
	combout => \Regs~160_combout\);

-- Location: FF_X81_Y4_N38
\Regs~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[5]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~49_q\);

-- Location: LABCELL_X81_Y4_N36
\Regs~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~96_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[2]~input_o\ & ((((\Regs~160_combout\))))) # (\ReadReg1[2]~input_o\ & (((!\Regs~160_combout\ & ((\Regs~49_q\))) # (\Regs~160_combout\ & (\Regs~57_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( 
-- (!\ReadReg1[2]~input_o\ & ((((\Regs~160_combout\))))) # (\ReadReg1[2]~input_o\ & (((!\Regs~160_combout\ & (\Regs~65_q\)) # (\Regs~160_combout\ & ((\Regs~73_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[2]~input_o\,
	datab => \ALT_INV_Regs~57_q\,
	datac => \ALT_INV_Regs~65_q\,
	datad => \ALT_INV_Regs~73_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~160_combout\,
	datag => \ALT_INV_Regs~49_q\,
	combout => \Regs~96_combout\);

-- Location: IOIBUF_X70_Y0_N1
\WriteData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(6),
	o => \WriteData[6]~input_o\);

-- Location: LABCELL_X75_Y4_N33
\Regs~74feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~74feeder_combout\ = ( \WriteData[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[6]~input_o\,
	combout => \Regs~74feeder_combout\);

-- Location: FF_X75_Y4_N35
\Regs~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~74feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~74_q\);

-- Location: FF_X78_Y4_N35
\Regs~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~26_q\);

-- Location: FF_X78_Y4_N22
\Regs~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~42_q\);

-- Location: FF_X77_Y4_N32
\Regs~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~34_q\);

-- Location: FF_X77_Y4_N47
\Regs~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~18_q\);

-- Location: LABCELL_X77_Y4_N45
\Regs~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~164_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\ReadReg1[0]~input_o\ & (((\Regs~18_q\ & !\ReadReg1[2]~input_o\)))) # (\ReadReg1[0]~input_o\ & (((\ReadReg1[2]~input_o\)) # (\Regs~26_q\)))) ) ) # ( \ReadReg1[1]~input_o\ & ( ((!\ReadReg1[0]~input_o\ & 
-- (((\Regs~34_q\ & !\ReadReg1[2]~input_o\)))) # (\ReadReg1[0]~input_o\ & (((\ReadReg1[2]~input_o\)) # (\Regs~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~26_q\,
	datab => \ALT_INV_Regs~42_q\,
	datac => \ALT_INV_Regs~34_q\,
	datad => \ALT_INV_ReadReg1[0]~input_o\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~18_q\,
	combout => \Regs~164_combout\);

-- Location: FF_X75_Y4_N20
\Regs~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~66_q\);

-- Location: LABCELL_X77_Y4_N12
\Regs~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~58feeder_combout\ = ( \WriteData[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[6]~input_o\,
	combout => \Regs~58feeder_combout\);

-- Location: FF_X77_Y4_N14
\Regs~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~58feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~58_q\);

-- Location: FF_X75_Y4_N38
\Regs~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~50_q\);

-- Location: LABCELL_X75_Y4_N36
\Regs~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~100_combout\ = ( !\ReadReg1[1]~input_o\ & ( ((!\Regs~164_combout\ & (\Regs~50_q\ & ((\ReadReg1[2]~input_o\)))) # (\Regs~164_combout\ & (((!\ReadReg1[2]~input_o\) # (\Regs~58_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\Regs~164_combout\ & 
-- (((\Regs~66_q\ & ((\ReadReg1[2]~input_o\)))))) # (\Regs~164_combout\ & ((((!\ReadReg1[2]~input_o\))) # (\Regs~74_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~74_q\,
	datab => \ALT_INV_Regs~164_combout\,
	datac => \ALT_INV_Regs~66_q\,
	datad => \ALT_INV_Regs~58_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~50_q\,
	combout => \Regs~100_combout\);

-- Location: IOIBUF_X89_Y4_N61
\WriteData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(7),
	o => \WriteData[7]~input_o\);

-- Location: LABCELL_X80_Y4_N51
\Regs~59feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~59feeder_combout\ = ( \WriteData[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[7]~input_o\,
	combout => \Regs~59feeder_combout\);

-- Location: FF_X80_Y4_N53
\Regs~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~59feeder_combout\,
	ena => \Regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~59_q\);

-- Location: FF_X81_Y4_N32
\Regs~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	sload => VCC,
	ena => \Regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~67_q\);

-- Location: LABCELL_X80_Y4_N57
\Regs~75feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~75feeder_combout\ = ( \WriteData[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[7]~input_o\,
	combout => \Regs~75feeder_combout\);

-- Location: FF_X80_Y4_N59
\Regs~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~75feeder_combout\,
	ena => \Regs~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~75_q\);

-- Location: FF_X78_Y4_N31
\Regs~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	sload => VCC,
	ena => \Regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~27_q\);

-- Location: FF_X78_Y4_N26
\Regs~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	sload => VCC,
	ena => \Regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~35_q\);

-- Location: MLABCELL_X78_Y4_N6
\Regs~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~43feeder_combout\ = \WriteData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[7]~input_o\,
	combout => \Regs~43feeder_combout\);

-- Location: FF_X78_Y4_N7
\Regs~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	d => \Regs~43feeder_combout\,
	ena => \Regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~43_q\);

-- Location: FF_X81_Y4_N44
\Regs~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	sload => VCC,
	ena => \Regs~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~19_q\);

-- Location: LABCELL_X81_Y4_N42
\Regs~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~168_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ & (((\Regs~19_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\))) # (\Regs~27_q\))) ) ) # ( \ReadReg1[1]~input_o\ & ( (!\ReadReg1[0]~input_o\ 
-- & (((\Regs~35_q\ & ((!\ReadReg1[2]~input_o\)))))) # (\ReadReg1[0]~input_o\ & ((((\ReadReg1[2]~input_o\) # (\Regs~43_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[0]~input_o\,
	datab => \ALT_INV_Regs~27_q\,
	datac => \ALT_INV_Regs~35_q\,
	datad => \ALT_INV_Regs~43_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_ReadReg1[2]~input_o\,
	datag => \ALT_INV_Regs~19_q\,
	combout => \Regs~168_combout\);

-- Location: FF_X81_Y4_N14
\Regs~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	sload => VCC,
	ena => \Regs~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~51_q\);

-- Location: LABCELL_X81_Y4_N12
\Regs~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~104_combout\ = ( !\ReadReg1[1]~input_o\ & ( (!\ReadReg1[2]~input_o\ & ((((\Regs~168_combout\))))) # (\ReadReg1[2]~input_o\ & (((!\Regs~168_combout\ & ((\Regs~51_q\))) # (\Regs~168_combout\ & (\Regs~59_q\))))) ) ) # ( \ReadReg1[1]~input_o\ & ( 
-- (!\ReadReg1[2]~input_o\ & ((((\Regs~168_combout\))))) # (\ReadReg1[2]~input_o\ & (((!\Regs~168_combout\ & (\Regs~67_q\)) # (\Regs~168_combout\ & ((\Regs~75_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg1[2]~input_o\,
	datab => \ALT_INV_Regs~59_q\,
	datac => \ALT_INV_Regs~67_q\,
	datad => \ALT_INV_Regs~75_q\,
	datae => \ALT_INV_ReadReg1[1]~input_o\,
	dataf => \ALT_INV_Regs~168_combout\,
	datag => \ALT_INV_Regs~51_q\,
	combout => \Regs~104_combout\);

-- Location: IOIBUF_X70_Y0_N52
\ReadReg2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(0),
	o => \ReadReg2[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\ReadReg2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(2),
	o => \ReadReg2[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\ReadReg2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(1),
	o => \ReadReg2[1]~input_o\);

-- Location: MLABCELL_X78_Y4_N0
\Regs~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~172_combout\ = ( !\ReadReg2[1]~input_o\ & ( ((!\ReadReg2[0]~input_o\ & (\Regs~12_q\ & (!\ReadReg2[2]~input_o\))) # (\ReadReg2[0]~input_o\ & (((\Regs~20_q\) # (\ReadReg2[2]~input_o\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & 
-- (((\Regs~28_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\ReadReg2[2]~input_o\))) # (\Regs~36_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~36_q\,
	datab => \ALT_INV_ReadReg2[0]~input_o\,
	datac => \ALT_INV_Regs~28_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~20_q\,
	datag => \ALT_INV_Regs~12_q\,
	combout => \Regs~172_combout\);

-- Location: LABCELL_X79_Y4_N18
\Regs~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~108_combout\ = ( !\ReadReg2[1]~input_o\ & ( ((!\Regs~172_combout\ & (\Regs~44_q\ & (\ReadReg2[2]~input_o\))) # (\Regs~172_combout\ & (((!\ReadReg2[2]~input_o\) # (\Regs~52_q\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\Regs~172_combout\ & 
-- (((\Regs~60_q\ & (\ReadReg2[2]~input_o\))))) # (\Regs~172_combout\ & ((((!\ReadReg2[2]~input_o\))) # (\Regs~68_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~68_q\,
	datab => \ALT_INV_Regs~172_combout\,
	datac => \ALT_INV_Regs~60_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~52_q\,
	datag => \ALT_INV_Regs~44_q\,
	combout => \Regs~108_combout\);

-- Location: MLABCELL_X78_Y4_N36
\Regs~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~176_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (((\Regs~13_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\Regs~21_q\) # (\ReadReg2[2]~input_o\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & 
-- (((\Regs~29_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\ReadReg2[2]~input_o\))) # (\Regs~37_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000110110101010101011111010101010001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[0]~input_o\,
	datab => \ALT_INV_Regs~37_q\,
	datac => \ALT_INV_Regs~29_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~21_q\,
	datag => \ALT_INV_Regs~13_q\,
	combout => \Regs~176_combout\);

-- Location: LABCELL_X79_Y4_N54
\Regs~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~112_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\Regs~176_combout\ & (((\Regs~45_q\ & ((\ReadReg2[2]~input_o\)))))) # (\Regs~176_combout\ & ((((!\ReadReg2[2]~input_o\) # (\Regs~53_q\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\Regs~176_combout\ & 
-- (((\Regs~61_q\ & ((\ReadReg2[2]~input_o\)))))) # (\Regs~176_combout\ & ((((!\ReadReg2[2]~input_o\))) # (\Regs~69_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~176_combout\,
	datab => \ALT_INV_Regs~69_q\,
	datac => \ALT_INV_Regs~61_q\,
	datad => \ALT_INV_Regs~53_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_ReadReg2[2]~input_o\,
	datag => \ALT_INV_Regs~45_q\,
	combout => \Regs~112_combout\);

-- Location: MLABCELL_X78_Y4_N42
\Regs~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~180_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (((\Regs~14_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\ReadReg2[2]~input_o\))) # (\Regs~22_q\))) ) ) # ( \ReadReg2[1]~input_o\ & ( ((!\ReadReg2[0]~input_o\ 
-- & (\Regs~30_q\ & (!\ReadReg2[2]~input_o\))) # (\ReadReg2[0]~input_o\ & (((\Regs~38_q\) # (\ReadReg2[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~22_q\,
	datab => \ALT_INV_ReadReg2[0]~input_o\,
	datac => \ALT_INV_Regs~30_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~38_q\,
	datag => \ALT_INV_Regs~14_q\,
	combout => \Regs~180_combout\);

-- Location: LABCELL_X79_Y4_N30
\Regs~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~116_combout\ = ( !\ReadReg2[1]~input_o\ & ( ((!\Regs~180_combout\ & (\Regs~46_q\ & ((\ReadReg2[2]~input_o\)))) # (\Regs~180_combout\ & (((!\ReadReg2[2]~input_o\) # (\Regs~54_q\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\Regs~180_combout\ & 
-- (((\Regs~62_q\ & ((\ReadReg2[2]~input_o\)))))) # (\Regs~180_combout\ & ((((!\ReadReg2[2]~input_o\))) # (\Regs~70_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~70_q\,
	datab => \ALT_INV_Regs~180_combout\,
	datac => \ALT_INV_Regs~62_q\,
	datad => \ALT_INV_Regs~54_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_ReadReg2[2]~input_o\,
	datag => \ALT_INV_Regs~46_q\,
	combout => \Regs~116_combout\);

-- Location: LABCELL_X77_Y4_N48
\Regs~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~184_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (!\ReadReg2[2]~input_o\ & (\Regs~15_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~23_q\))) # (\ReadReg2[2]~input_o\))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & 
-- (!\ReadReg2[2]~input_o\ & (\Regs~31_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~39_q\))) # (\ReadReg2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[0]~input_o\,
	datab => \ALT_INV_ReadReg2[2]~input_o\,
	datac => \ALT_INV_Regs~31_q\,
	datad => \ALT_INV_Regs~39_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~23_q\,
	datag => \ALT_INV_Regs~15_q\,
	combout => \Regs~184_combout\);

-- Location: LABCELL_X75_Y4_N42
\Regs~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~120_combout\ = ( !\ReadReg2[1]~input_o\ & ( ((!\Regs~184_combout\ & (\Regs~47_q\ & ((\ReadReg2[2]~input_o\)))) # (\Regs~184_combout\ & (((!\ReadReg2[2]~input_o\) # (\Regs~55_q\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\Regs~184_combout\ & 
-- (((\Regs~63_q\ & ((\ReadReg2[2]~input_o\)))))) # (\Regs~184_combout\ & ((((!\ReadReg2[2]~input_o\))) # (\Regs~71_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~71_q\,
	datab => \ALT_INV_Regs~184_combout\,
	datac => \ALT_INV_Regs~63_q\,
	datad => \ALT_INV_Regs~55_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_ReadReg2[2]~input_o\,
	datag => \ALT_INV_Regs~47_q\,
	combout => \Regs~120_combout\);

-- Location: MLABCELL_X78_Y4_N48
\Regs~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~188_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (((\Regs~16_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\ReadReg2[2]~input_o\))) # (\Regs~24_q\))) ) ) # ( \ReadReg2[1]~input_o\ & ( ((!\ReadReg2[0]~input_o\ 
-- & (\Regs~32_q\ & (!\ReadReg2[2]~input_o\))) # (\ReadReg2[0]~input_o\ & (((\Regs~40_q\) # (\ReadReg2[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~24_q\,
	datab => \ALT_INV_ReadReg2[0]~input_o\,
	datac => \ALT_INV_Regs~32_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~40_q\,
	datag => \ALT_INV_Regs~16_q\,
	combout => \Regs~188_combout\);

-- Location: LABCELL_X81_Y4_N48
\Regs~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~124_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[2]~input_o\ & (\Regs~188_combout\)) # (\ReadReg2[2]~input_o\ & ((!\Regs~188_combout\ & (\Regs~48_q\)) # (\Regs~188_combout\ & (((\Regs~56_q\)))))) ) ) # ( \ReadReg2[1]~input_o\ & ( 
-- (!\ReadReg2[2]~input_o\ & (\Regs~188_combout\)) # (\ReadReg2[2]~input_o\ & ((!\Regs~188_combout\ & (\Regs~64_q\)) # (\Regs~188_combout\ & (((\Regs~72_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[2]~input_o\,
	datab => \ALT_INV_Regs~188_combout\,
	datac => \ALT_INV_Regs~64_q\,
	datad => \ALT_INV_Regs~56_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~72_q\,
	datag => \ALT_INV_Regs~48_q\,
	combout => \Regs~124_combout\);

-- Location: LABCELL_X77_Y4_N54
\Regs~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~192_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (!\ReadReg2[2]~input_o\ & (\Regs~17_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~25_q\))) # (\ReadReg2[2]~input_o\))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & 
-- (!\ReadReg2[2]~input_o\ & (\Regs~33_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~41_q\))) # (\ReadReg2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[0]~input_o\,
	datab => \ALT_INV_ReadReg2[2]~input_o\,
	datac => \ALT_INV_Regs~33_q\,
	datad => \ALT_INV_Regs~41_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~25_q\,
	datag => \ALT_INV_Regs~17_q\,
	combout => \Regs~192_combout\);

-- Location: LABCELL_X81_Y4_N54
\Regs~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~128_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[2]~input_o\ & ((((\Regs~192_combout\))))) # (\ReadReg2[2]~input_o\ & (((!\Regs~192_combout\ & (\Regs~49_q\)) # (\Regs~192_combout\ & ((\Regs~57_q\)))))) ) ) # ( \ReadReg2[1]~input_o\ & ( 
-- (!\ReadReg2[2]~input_o\ & ((((\Regs~192_combout\))))) # (\ReadReg2[2]~input_o\ & (((!\Regs~192_combout\ & ((\Regs~65_q\))) # (\Regs~192_combout\ & (\Regs~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[2]~input_o\,
	datab => \ALT_INV_Regs~73_q\,
	datac => \ALT_INV_Regs~65_q\,
	datad => \ALT_INV_Regs~57_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~192_combout\,
	datag => \ALT_INV_Regs~49_q\,
	combout => \Regs~128_combout\);

-- Location: LABCELL_X77_Y4_N30
\Regs~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~196_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (!\ReadReg2[2]~input_o\ & (\Regs~18_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~26_q\))) # (\ReadReg2[2]~input_o\))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & 
-- (!\ReadReg2[2]~input_o\ & (\Regs~34_q\))) # (\ReadReg2[0]~input_o\ & ((((\Regs~42_q\))) # (\ReadReg2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[0]~input_o\,
	datab => \ALT_INV_ReadReg2[2]~input_o\,
	datac => \ALT_INV_Regs~34_q\,
	datad => \ALT_INV_Regs~42_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~26_q\,
	datag => \ALT_INV_Regs~18_q\,
	combout => \Regs~196_combout\);

-- Location: LABCELL_X75_Y4_N18
\Regs~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~132_combout\ = ( !\ReadReg2[1]~input_o\ & ( ((!\Regs~196_combout\ & (\Regs~50_q\ & ((\ReadReg2[2]~input_o\)))) # (\Regs~196_combout\ & (((!\ReadReg2[2]~input_o\) # (\Regs~58_q\))))) ) ) # ( \ReadReg2[1]~input_o\ & ( (!\Regs~196_combout\ & 
-- (((\Regs~66_q\ & ((\ReadReg2[2]~input_o\)))))) # (\Regs~196_combout\ & ((((!\ReadReg2[2]~input_o\))) # (\Regs~74_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~74_q\,
	datab => \ALT_INV_Regs~196_combout\,
	datac => \ALT_INV_Regs~66_q\,
	datad => \ALT_INV_Regs~58_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_ReadReg2[2]~input_o\,
	datag => \ALT_INV_Regs~50_q\,
	combout => \Regs~132_combout\);

-- Location: MLABCELL_X78_Y4_N24
\Regs~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~200_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[0]~input_o\ & (((\Regs~19_q\ & (!\ReadReg2[2]~input_o\))))) # (\ReadReg2[0]~input_o\ & ((((\ReadReg2[2]~input_o\))) # (\Regs~27_q\))) ) ) # ( \ReadReg2[1]~input_o\ & ( ((!\ReadReg2[0]~input_o\ 
-- & (\Regs~35_q\ & (!\ReadReg2[2]~input_o\))) # (\ReadReg2[0]~input_o\ & (((\Regs~43_q\) # (\ReadReg2[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~27_q\,
	datab => \ALT_INV_ReadReg2[0]~input_o\,
	datac => \ALT_INV_Regs~35_q\,
	datad => \ALT_INV_ReadReg2[2]~input_o\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~43_q\,
	datag => \ALT_INV_Regs~19_q\,
	combout => \Regs~200_combout\);

-- Location: LABCELL_X81_Y4_N30
\Regs~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~136_combout\ = ( !\ReadReg2[1]~input_o\ & ( (!\ReadReg2[2]~input_o\ & (\Regs~200_combout\)) # (\ReadReg2[2]~input_o\ & ((!\Regs~200_combout\ & (\Regs~51_q\)) # (\Regs~200_combout\ & (((\Regs~59_q\)))))) ) ) # ( \ReadReg2[1]~input_o\ & ( 
-- (!\ReadReg2[2]~input_o\ & (\Regs~200_combout\)) # (\ReadReg2[2]~input_o\ & ((!\Regs~200_combout\ & (\Regs~67_q\)) # (\Regs~200_combout\ & (((\Regs~75_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadReg2[2]~input_o\,
	datab => \ALT_INV_Regs~200_combout\,
	datac => \ALT_INV_Regs~67_q\,
	datad => \ALT_INV_Regs~59_q\,
	datae => \ALT_INV_ReadReg2[1]~input_o\,
	dataf => \ALT_INV_Regs~75_q\,
	datag => \ALT_INV_Regs~51_q\,
	combout => \Regs~136_combout\);

-- Location: IOIBUF_X28_Y81_N1
\EndRegWrite[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(3),
	o => \EndRegWrite[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\ReadReg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(3),
	o => \ReadReg1[3]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\ReadReg2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(3),
	o => \ReadReg2[3]~input_o\);

-- Location: LABCELL_X80_Y1_N0
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


