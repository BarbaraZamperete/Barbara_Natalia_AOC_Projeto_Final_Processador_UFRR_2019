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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2019 19:08:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Registradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Registradores_vhd_vec_tst IS
END Registradores_vhd_vec_tst;
ARCHITECTURE Registradores_arch OF Registradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EndRegWrite : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ReadReg1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ReadReg2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RegB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
SIGNAL WriteData : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Registradores
	PORT (
	EndRegWrite : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ReadReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ReadReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RegB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RegWrite : IN STD_LOGIC;
	WriteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Registradores
	PORT MAP (
-- list connections between master ports and signals
	EndRegWrite => EndRegWrite,
	ReadReg1 => ReadReg1,
	ReadReg2 => ReadReg2,
	RegA => RegA,
	RegB => RegB,
	RegWrite => RegWrite,
	WriteData => WriteData
	);
-- EndRegWrite[3]
t_prcs_EndRegWrite_3: PROCESS
BEGIN
	EndRegWrite(3) <= '0';
WAIT;
END PROCESS t_prcs_EndRegWrite_3;
-- EndRegWrite[2]
t_prcs_EndRegWrite_2: PROCESS
BEGIN
	EndRegWrite(2) <= '0';
WAIT;
END PROCESS t_prcs_EndRegWrite_2;
-- EndRegWrite[1]
t_prcs_EndRegWrite_1: PROCESS
BEGIN
	EndRegWrite(1) <= '0';
WAIT;
END PROCESS t_prcs_EndRegWrite_1;
-- EndRegWrite[0]
t_prcs_EndRegWrite_0: PROCESS
BEGIN
	EndRegWrite(0) <= '0';
WAIT;
END PROCESS t_prcs_EndRegWrite_0;
-- ReadReg1[3]
t_prcs_ReadReg1_3: PROCESS
BEGIN
	ReadReg1(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_3;
-- ReadReg1[2]
t_prcs_ReadReg1_2: PROCESS
BEGIN
	ReadReg1(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_2;
-- ReadReg1[1]
t_prcs_ReadReg1_1: PROCESS
BEGIN
	ReadReg1(1) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_1;
-- ReadReg1[0]
t_prcs_ReadReg1_0: PROCESS
BEGIN
	ReadReg1(0) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_0;
-- ReadReg2[3]
t_prcs_ReadReg2_3: PROCESS
BEGIN
	ReadReg2(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_3;
-- ReadReg2[2]
t_prcs_ReadReg2_2: PROCESS
BEGIN
	ReadReg2(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_2;
-- ReadReg2[1]
t_prcs_ReadReg2_1: PROCESS
BEGIN
	ReadReg2(1) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_1;
-- ReadReg2[0]
t_prcs_ReadReg2_0: PROCESS
BEGIN
	ReadReg2(0) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_0;

-- RegWrite
t_prcs_RegWrite: PROCESS
BEGIN
	RegWrite <= '0';
WAIT;
END PROCESS t_prcs_RegWrite;
-- WriteData[7]
t_prcs_WriteData_7: PROCESS
BEGIN
	WriteData(7) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_7;
-- WriteData[6]
t_prcs_WriteData_6: PROCESS
BEGIN
	WriteData(6) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_6;
-- WriteData[5]
t_prcs_WriteData_5: PROCESS
BEGIN
	WriteData(5) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_5;
-- WriteData[4]
t_prcs_WriteData_4: PROCESS
BEGIN
	WriteData(4) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_4;
-- WriteData[3]
t_prcs_WriteData_3: PROCESS
BEGIN
	WriteData(3) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_3;
-- WriteData[2]
t_prcs_WriteData_2: PROCESS
BEGIN
	WriteData(2) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_2;
-- WriteData[1]
t_prcs_WriteData_1: PROCESS
BEGIN
	WriteData(1) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_1;
-- WriteData[0]
t_prcs_WriteData_0: PROCESS
BEGIN
	WriteData(0) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_0;
END Registradores_arch;
