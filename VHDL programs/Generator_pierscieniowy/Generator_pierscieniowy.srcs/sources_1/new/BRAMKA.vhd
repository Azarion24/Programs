library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BRAMKA is
    Port ( I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           O : out STD_LOGIC);
end BRAMKA;

architecture Behavioral of BRAMKA is

begin
    
    O <= I1 nand I2 after 2 ns; --Niezbędne jest zasymulowanie czasu propagacji żeby generator działał poprawnie
    
end Behavioral;
