library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component UKLAD is
    Port (EN : in STD_LOGIC;
           O : out STD_LOGIC);
    end component UKLAD;

    signal EN: std_logic := '0';
    signal O: std_logic;
    
begin

uut: UKLAD port map (EN => EN, O => O);

process 
    begin
        EN <= '0';
        wait for 6 ns;
        
        EN <= '1';
        wait;
end process;

end Behavioral;
