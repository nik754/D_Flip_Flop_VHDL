library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INV is
    Port ( a : in STD_LOGIC;
           y : out STD_LOGIC);
end INV;

architecture Behavioral of INV is

begin

y <= not a;

end Behavioral;
