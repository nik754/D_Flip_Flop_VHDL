library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test_inv is
--  Port ( );
end Test_inv;

architecture Behavioral of Test_inv is

component  INV is
    Port ( a : in STD_LOGIC;
           y : out STD_LOGIC);
end component INV;

signal a, y:std_logic;

begin

UT: INV port map (a, y);

process 
begin
a <= '0'; wait for 2 ns;
a <= '1'; wait for 2 ns;
end process;

end Behavioral;





