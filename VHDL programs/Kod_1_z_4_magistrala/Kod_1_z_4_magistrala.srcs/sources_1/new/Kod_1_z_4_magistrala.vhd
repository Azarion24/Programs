library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Kod_1_z_4_magistrala is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end Kod_1_z_4_magistrala;

architecture Behavioral of Kod_1_z_4_magistrala is

begin
    y(0) <= not x(0) and not x(1);
    y(1) <= not x(0) and x(1);
    y(2) <= x(0) and not x(1);
    y(3) <= x(1) and x(0);
end Behavioral;
