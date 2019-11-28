-- Porta Lógica AND

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PortAnd IS
	Port(
		A, B : IN std_logic;
		R : OUT std_logic);
END PortAnd;

ARCHITECTURE PAnd of PortAnd IS

BEGIN
		R <= A and B;
END PAnd;
