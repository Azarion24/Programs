library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Deklaracja modułu
entity SUMNB is
    generic (N: natural := 8); --ilosc sumatorów
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end SUMNB;

--Cialo modulu
architecture Behavioral of SUMNB is

    component SUM1B is
        port(A,B,CIN: in std_logic;
              COUT,Y: out std_logic);
    end component;
    
    signal tmp: std_logic_vector(7 downto 0);
    
begin
    --Rozpoczęcie procesu generacji 
    g: for i in 0 to N-1 generate
        i0: if i = 0 generate --pierwszy element
             sp: SUM1B PORT MAP (A => A(i), B => B(i), CIN => CIN, Y => Y(i), COUT => tmp(i+1));--sp sumator poczatkowy
        end generate i0;
        
        ina: if i > 0 and i < N-1 generate --generacja środkowych elementów
            ss: SUM1B port map (A => A(i), B => B(i), CIN => tmp(i),Y => Y(i), COUT => tmp(i+1));--ss sumator srodkowy
        end generate ina; 
        
        in1: if i = N-1 generate --Ostatni element
            sk: SUM1B port map (A => A(i), B => B(i), CIN => tmp(i), Y => Y(i), COUT => tmp(i));--sk sumator koncowy
        end generate in1;
    end generate g; 
    
    COUT <= tmp(N-1);
    
end Behavioral;
