library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component Kod_1_z_4_magistrala is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
    end component  Kod_1_z_4_magistrala;
    
    signal x: std_logic_vector (1 downto 0);
    signal y: std_logic_vector (3 downto 0);
begin

br1:Kod_1_z_4_magistrala port map (x => x, y => y);
process
    begin
        x(0) <= '0';
        x(1) <= '0';
        wait for 10 ns;
        x(0) <= '0';
        x(1) <= '1';
        wait for 10 ns;
        x(0) <= '1';
        x(1) <= '0';
        wait for 10 ns;
        x(0) <= '1';
        x(1) <= '1';
        wait;
    end process;


end Behavioral;
