library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity Registradores is port
	(
	 ClockSys: in std_logic;
	 RegWrite: in std_logic;
	 RegA: out std_logic_vector (7 downto 0);
	 RegB: out std_logic_vector (7 downto 0); 
	 Data: in std_logic_vector  (7 downto 0); -- Write Back
	 ReadReg1: in std_logic_vector (0 DOWNTO 0);
	 ReadReg2: in std_logic_vector (0 DOWNTO 0)
	);
end Registradores;

Architecture behavior of Registradores is
	
	type RegBank is array(0 to 1) of std_logic_vector (7 downto 0);
	signal Regs : RegBank:= (
				x"00",   
				x"00"    
				     );
	
begin
	
		
	process (ClockSys)
		begin 
	     if rising_edge(ClockSys) then
			if RegWrite= '1' then
				Regs(to_integer(unsigned(ReadReg1))) <= Data;
			end if;
		  end if;
			RegA <= Regs(to_integer(unsigned(ReadReg1)));
			RegB <= Regs(to_integer(unsigned(ReadReg2)));
	end process;
	
end behavior;