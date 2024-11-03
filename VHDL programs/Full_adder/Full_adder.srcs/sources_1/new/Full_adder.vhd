library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           Y : out STD_LOGIC;
           COUT : out STD_LOGIC);
end Full_adder;

architecture Behavioral of Full_adder is

begin

    y <= A xor B xor CIN;
    COUT <= (A and B) or (CIN and A) or (CIN and B);

end Behavioral;
