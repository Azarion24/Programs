library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component Full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           Y : out STD_LOGIC;
           COUT : out STD_LOGIC);
    end component Full_adder;
    
    signal A,B,CIN,Y,COUT: std_logic; 

begin

    br1:Full_adder port map (A => A, B => B, CIN => CIN, Y => Y, COUT => COUT);
    
    process
        begin
        A <= '0';
        B <= '0';
        CIN <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        CIN <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        CIN <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        CIN <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '0';
        CIN <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        CIN <= '1';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        CIN <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        CIN <= '1';
        wait;
        end process;
end Behavioral;
