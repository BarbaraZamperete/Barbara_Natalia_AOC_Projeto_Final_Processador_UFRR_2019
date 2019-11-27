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
-- Generated on "11/24/2019 18:50:15"
                                                             
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
-- ReadReg1[3]
t_prcs_ReadReg1_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ReadReg1(3) <= '0';
		WAIT FOR 160000 ps;
		ReadReg1(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ReadReg1(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_3;
-- ReadReg1[2]
t_prcs_ReadReg1_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ReadReg1(2) <= '0';
		WAIT FOR 80000 ps;
		ReadReg1(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ReadReg1(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_2;
-- ReadReg1[1]
t_prcs_ReadReg1_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ReadReg1(1) <= '0';
		WAIT FOR 40000 ps;
		ReadReg1(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ReadReg1(1) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_1;
-- ReadReg1[0]
t_prcs_ReadReg1_0: PROCESS
BEGIN
LOOP
	ReadReg1(0) <= '0';
	WAIT FOR 20000 ps;
	ReadReg1(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ReadReg1_0;
-- ReadReg2[3]
t_prcs_ReadReg2_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ReadReg2(3) <= '0';
		WAIT FOR 240000 ps;
		ReadReg2(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	ReadReg2(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_3;
-- ReadReg2[2]
t_prcs_ReadReg2_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		ReadReg2(2) <= '0';
		WAIT FOR 120000 ps;
		ReadReg2(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	ReadReg2(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_2;
-- ReadReg2[1]
t_prcs_ReadReg2_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		ReadReg2(1) <= '0';
		WAIT FOR 60000 ps;
		ReadReg2(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	ReadReg2(1) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_1;
-- ReadReg2[0]
t_prcs_ReadReg2_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		ReadReg2(0) <= '0';
		WAIT FOR 30000 ps;
		ReadReg2(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	ReadReg2(0) <= '0';
	WAIT FOR 30000 ps;
	ReadReg2(0) <= '1';
WAIT;
END PROCESS t_prcs_ReadReg2_0;

-- RegWrite
t_prcs_RegWrite: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		RegWrite <= '0';
		WAIT FOR 60000 ps;
		RegWrite <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
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
	WAIT FOR 560000 ps;
	WriteData(3) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_3;
-- WriteData[2]
t_prcs_WriteData_2: PROCESS
BEGIN
	WriteData(2) <= '0';
	WAIT FOR 280000 ps;
	WriteData(2) <= '1';
	WAIT FOR 280000 ps;
	WriteData(2) <= '0';
	WAIT FOR 280000 ps;
	WriteData(2) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_2;
-- WriteData[1]
t_prcs_WriteData_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		WriteData(1) <= '0';
		WAIT FOR 140000 ps;
		WriteData(1) <= '1';
		WAIT FOR 140000 ps;
	END LOOP;
	WriteData(1) <= '0';
	WAIT FOR 140000 ps;
	WriteData(1) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_1;
-- WriteData[0]
t_prcs_WriteData_0: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		WriteData(0) <= '0';
		WAIT FOR 70000 ps;
		WriteData(0) <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	WriteData(0) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_0;
END Registradores_arch;
