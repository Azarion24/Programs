library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BRMKA is
    Port ( I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           O : out STD_LOGIC);
end BRMKA;

architecture Behavioral of BRMKA is
begin

O <= I1 nand I2 after 2 ns;

end Behavioral;
