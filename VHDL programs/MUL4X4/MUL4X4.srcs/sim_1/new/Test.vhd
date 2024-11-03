library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
--  Port ( );
end Test;

architecture Behavioral of Test is

    component MUL4X4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal a : STD_LOGIC_VECTOR(3 downto 0);
    signal b : STD_LOGIC_VECTOR(3 downto 0);
    signal y : STD_LOGIC_VECTOR(7 downto 0);

begin

    UUT: MUL4X4 port map(a => a, b => b, y => y);
    
    process
        begin
        a <= "0000";
        b <= "0000";
        wait for 10 ns;

        a <= "0001";
        b <= "0001";
        wait for 10 ns;
        
        a <= "1011";
        b <= "1101";
        wait for 10 ns;      
        
        a <= "0100";
        b <= "0100";
        wait for 10 ns;
        
        a <= "0111";
        b <= "1010";
        wait for 10 ns;
        
        a <= "1111";
        b <= "1111";
        wait for 10 ns;  
        wait; 
    end process;

end Behavioral;
