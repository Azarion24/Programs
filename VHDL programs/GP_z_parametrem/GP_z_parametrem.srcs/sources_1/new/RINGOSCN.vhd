library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Deklaracja modulu
entity RINGOSCN is
    generic (N: natural := 3); --Ilosc bramke w generatorze, domyslnie 3
    Port ( EN : in STD_LOGIC;
           O : out STD_LOGIC);
end RINGOSCN;

--Cialo modulu
architecture Behavioral of RINGOSCN is

    component BRMKA is 
        port (I1, I2 : in std_logic;
                    O: out std_logic);  
    end component;
    
    signal net: std_logic_vector(N-1 downto 0);  
    
begin
    --Rozpoczęcie procesu generacji
    g: for i in 0 to N-1 generate 
        i0: if i = 0 generate --pierwszy element 
            b: BRMKA PORT MAP (I1 => net(0), I2 => EN, O => net(i+1));
        end generate i0;
        
        ina: if i > 0 and i < N-1 generate -- generacja środoweych elementów
            b: BRMKA port map (I1 => net(i), I2 => net(i), O => net(i+1));
        end generate ina;
        
        in1: if i = N-1 generate    
            bn: BRMKA port map (I1 => net(i), I2 => net(i), O => net(0));
        end generate in1; 
     end generate g;
     O <= net(0);
     
end Behavioral;
