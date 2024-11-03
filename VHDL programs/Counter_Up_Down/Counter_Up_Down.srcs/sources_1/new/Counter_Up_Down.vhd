----------------------------------------------------------------------------------
-- Company: PWr
-- Engineer: Mateusz Kubasiewicz
---------------------------------------------------------------------------------- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter_Up_Down is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           DIR : in STD_LOGIC;
           SET: in STD_LOGIC;
           X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Counter_Up_Down;

architecture Behavioral of Counter_Up_Down is

    signal CNT: unsigned(7 downto 0);

begin
    
    process(RESET, CLK)
    begin 
        if RESET = '1' then 
            CNT <= (others => '0'); --Asynchronicnzy reste
        elsif rising_edge (CLK) then 
            if EN = '1' then --Dziala tylko wtedy gdy EN =1
                if SET = '1' then
                CNT <= unsigned(X); --Wpisanie X jesli SET = 1
                else 
                    if DIR = '1' then --Liczenie w gore jesli DIR = 1
                        if CNT = 255 then  --Przechodzi z 255 do 0
                            CNT <= (others => '0');
                            else     
                            CNT <= CNT + 1;
                        end if;
                    else -- Liczenie w dol jesli DIR = 0
                        if CNT = 0  then 
                            CNT <= (others => '1'); --Jak wszedzie wprowadzimy 1 to bedzie binarnie 255
                            else 
                            CNT <= CNT - 1;
                           end if;
                    end if;
                 end if;
             end if;
           end if;
     end process;
     
     Y <= std_logic_vector(CNT);     
     
end Behavioral;
