library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component RINGOSCN is 
    Port (EN : in std_logic;
           O : out std_logic);
    end component RINGOSCN;
    
    signal EN: std_logic := '0';
    signal O: std_logic;  

begin
    
uut: RINGOSCN port map (EN => EN, O => O);

process
    begin
        EN <= '0';
        wait for 6 ns;
        EN <= '1';
        wait;
end process; 
end Behavioral;
