library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component SUMNB is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component SUMNB;
    
    signal A    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal CIN  : STD_LOGIC := '0';
    signal COUT : STD_LOGIC;
    signal Y    : STD_LOGIC_VECTOR(7 downto 0);
    
begin

    uut: SUMNB port map (A => A, B => B, CIN => CIN, COUT => COUT, Y => Y);
    
    process
        begin 
            A <= "00000000";
            B <= "00000000";
            CIN <= '0';
            wait for 10 ns;
            
            A <= "00000001";
            B <= "00000001";
            CIN <= '0';
            wait for 10 ns;

            A <= "11111111";
            B <= "00000001";
            CIN <= '0';
            wait for 10 ns;
            
            A <= "10000000";
            B <= "10000000";
            CIN <= '1';
            wait for 10 ns;
            
            A <= "01010101";
            B <= "00101010";
            CIN <= '0';
            wait for 10 ns;
            
            A <= "10101010";
            B <= "01010101";
            CIN <= '1';
            wait for 10 ns;
            wait;
       end process;
end Behavioral;
