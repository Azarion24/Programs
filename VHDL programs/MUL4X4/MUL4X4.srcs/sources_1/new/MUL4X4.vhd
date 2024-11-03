library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUL4X4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end MUL4X4;

architecture Behavioral of MUL4X4 is

    component FA is
         Port ( A : in STD_LOGIC;
                B : in STD_LOGIC;
              CIN : in STD_LOGIC;
             COUT : out STD_LOGIC;
                Y : out STD_LOGIC);
    end component;

--Sygnaly pomocnicze
    signal AB0, AB1, AB2,AB3: STD_LOGIC_VECTOR (3 downto 0 ); --pamięta ANDy
    signal CO1, CO2, CO3: STD_LOGIC_VECTOR (3 downto 0); --pamięta COUT
    signal tmp1, tmp2, tmp3: STD_LOGIC_VECTOR (3 downto 0); --pamięta tymczasowy wynik

begin
--Warunki and
--Pierwszy wektor (a oznaczone liczbą w nawiasie)
AB0(0) <= A(0) and B(0);
AB0(1) <= A(1) and B(0);
AB0(2) <= A(2) and B(0);
AB0(3) <= A(3) and B(0);

--Drugi wektor 
AB1(0) <= A(0) and B(1);
AB1(1) <= A(1) and B(1);
AB1(2) <= A(2) and B(1);
AB1(3) <= A(3) and B(1);

--Trzeci wektor 
AB2(0) <= A(0) and B(2);
AB2(1) <= A(1) and B(2);
AB2(2) <= A(2) and B(2);
AB2(3) <= A(3) and B(2);

--Trzwarty wektor
AB3(0) <= A(0) and B(3);
AB3(1) <= A(1) and B(3);
AB3(2) <= A(2) and B(3);
AB3(3) <= A(3) and B(3);

--Dodawania -> Pierwszy poziom 
FA1: FA port map (A => AB1(0),B => AB0(1), CIN => '0', COUT => CO1(0), Y => tmp1(0));
FA2: FA port map (A => AB1(1),B => AB0(2), CIN => CO1(0), COUT => CO1(1), Y => tmp1(1));
FA3: FA port map (A => AB1(2),B => AB0(3), CIN => CO1(1), COUT => CO1(2), Y => tmp1(2));
FA4: FA port map (A => '0',B => AB1(3), CIN => CO1(2), COUT => CO1(3), Y => tmp1(3));

--Dodawanie -> Poiom drugi
FA5: FA port map (A => AB2(0), B => tmp1(1), CIN => '0', COUT => CO2(0), Y => tmp2(0));
FA6: FA port map (A => tmp1(2), B => AB2(1), CIN => CO2(0), COUT => CO2(1),Y => tmp2(1));
FA7: FA port map (A => tmp1(3), B => AB2(2), CIN => CO2(1), COUT => CO2(2), Y => tmp2(2));
FA8: FA port map (A => CO1(3), B => AB2(3), CIN => CO2(2), COUT => CO2(3), Y => tmp2(3));

--Dodawanie -> Poziom trzeci (ostatni)
FA9: FA port map (A => tmp2(1), B => AB3(0), CIN => '0', COUT => CO3(0), Y => tmp3(0));
FA10: FA port map (A => tmp2(2), B => AB3(1), CIN => CO3(0), COUT => CO3(1),  Y => tmp3(1));
FA11: FA port map (A => tmp2(3), B => AB3(2), CIN => CO3(1), COUT => CO3(2), Y => tmp3(2));
FA12: FA port map (A => CO2(3), B => AB3(3), CIN => CO3(2), COUT => CO3(3), Y =>tmp3(3)); 

--Wyniki
y(0) <= AB0(0);
y(1) <= tmp1(0);
y(2) <= tmp2(0);
y(3) <= tmp3(0);
y(4) <= tmp3(1);
y(5) <= tmp3(2);
y(6) <= tmp3(3);
y(7) <= CO3(3);

end Behavioral;
