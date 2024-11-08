library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SUM1B is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           Y : out STD_LOGIC;
           COUT : out STD_LOGIC);
end SUM1B;

architecture Behavioral of SUM1B is

begin
    
    Y <= A xor B xor CIN;
    COUT <= (A and B) or (CIN and A) or (CIN and B);

end Behavioral;
