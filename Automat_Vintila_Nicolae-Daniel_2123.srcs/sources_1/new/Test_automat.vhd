
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test_automat is
--  Port ( );
end Test_automat;

architecture Behavioral of Test_automat is

component automat is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end component automat;

signal clk, r:std_logic;
signal q: std_logic_vector (2 downto 0);
begin

UUT: automat port map(clk, r, q);

process
begin
   clk <= '0'; wait for 1 ns;
   clk <= '1'; wait for 1 ns;
end process;
 
r <= '1' after 0 ns, '0' after 2.2 ns;

end Behavioral;
