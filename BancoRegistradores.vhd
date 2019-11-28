library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity BancoRegistradores is port
	(
	 Clk : in std_logic;
	 EscReg: in std_logic;
		RegA: out std_logic_vector (7 downto 0);
		RegB: out std_logic_vector (7 downto 0); 
	   Data: in std_logic_vector  (7 downto 0);
	 LeReg1: in std_logic_vector (0 DOWNTO 0);
	 LeReg2: in std_logic_vector (0 DOWNTO 0)
	);
end BancoRegistradores;

Architecture behavior of BancoRegistradores is
	
	type RegBank is array(0 to 1) of std_logic_vector (7 downto 0);
	signal Reg : RegBank:= (
									x"00", -- R0
									x"00" -- R1
								);
	
begin
	
		
	process (Clk)
		begin 
	     if rising_edge(Clk) then
			if EscReg = '1' then
				Reg(to_integer(unsigned(LeReg1))) <= Data;
			end if;
		  end if;
			RegA <= Reg(to_integer(unsigned(LeReg1)));
			RegB <= Reg(to_integer(unsigned(LeReg2)));
	end process;
	
end behavior;
					