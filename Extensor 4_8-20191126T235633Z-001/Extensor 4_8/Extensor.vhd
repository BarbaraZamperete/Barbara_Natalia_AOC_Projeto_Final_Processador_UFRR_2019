library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Extensor is 
    port ( data_in : in std_logic_vector(3 downto 0);
           data_out : out std_logic_vector(7 downto 0));
end Extensor;

architecture behavioral of Extensor is 
begin
    process (data_in)
begin
    
    
    data_out(3 downto 0) <= data_in;
    data_out(7 downto 4) <= (7 downto 4 => data_in(3));
end process;     
end behavioral;