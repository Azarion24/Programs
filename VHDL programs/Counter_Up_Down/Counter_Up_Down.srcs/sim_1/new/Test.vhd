----------------------------------------------------------------------------------
-- Company: PWr
-- Engineer: Mateusz Kubasiewicz
---------------------------------------------------------------------------------- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component Counter_Up_Down is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           DIR : in STD_LOGIC;
           SET: in STD_LOGIC;
           X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal RESET: STD_LOGIC := '0';
    signal CLK: STD_LOGIC := '0';
    signal EN: STD_LOGIC := '0';
    signal DIR: STD_LOGIC := '1';
    signal SET: STD_LOGIC := '0';
    signal X: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Y: STD_LOGIC_VECTOR(7 downto 0); 
    
    constant CLK_period: time := 10 ns;

begin

    uut: Counter_Up_Down port map(RESET => RESET, CLK => CLK, EN => EN, DIR => DIR, SET => SET, X => X, Y => Y);

    --Generacja sygnalu zegara
    CLK_process: process
    begin 
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;
    
    --Generacja sygnalu sterujacego 
    stim_proc: process
    begin
    
    --Reset
    RESET <= '1';
    wait for 20 ns;
    RESET <= '0';
  
    --Testowanie licznika
    EN <= '1';
    SET <= '1';
    X <= "00001111"; --X = 15
    wait for CLK_period;
    SET <= '0'; --Przelacz na ilczenie
    
    --Gora 
    DIR <= '1';
    wait for 5 *  CLK_period; 
    
    --Dol 
    DIR <= '0';
    wait for 5 * CLK_period;
    
    --Test EN = 0 
    EN <= '0'; 
    wait for 5 * CLK_period;
    
    --Test przepelnienia przy liczeniu w gore
    EN <= '1';
    DIR <= '1'; 
    X <= "11111111";
    wait for CLK_period;
    --obserwacja co się dzieje
    wait for 10 * CLK_period;
    wait;
  end process;
    
end Behavioral;
