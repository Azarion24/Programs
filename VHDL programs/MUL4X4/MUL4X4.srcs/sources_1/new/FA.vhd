library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           Y : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

begin

    Y <= A xor B xor CIN;
    COUT <= (A and B) or (CIN and A) or (CIN and B);

end Behavioral;
