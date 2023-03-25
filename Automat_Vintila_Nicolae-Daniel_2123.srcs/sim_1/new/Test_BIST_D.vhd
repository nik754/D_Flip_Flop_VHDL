library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test_BIST_D is
--  Port ( );
end Test_BIST_D;

architecture Behavioral of Test_BIST_D is

component DFF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end component DFF;

signal d, clk, r, q, qn:std_logic;

begin

UUT: DFF port map(d, clk, r, q, qn);

process
begin
clk <= '0'; wait for 1 ns;
clk <= '1'; wait for 1 ns;
end process;

process
begin
d <= '0'; wait for 3.8 ns; 
d <= '1'; wait for 3.8 ns;
end process;

r <= '1' after 0 ns, '0' after 2.3 ns;

end Behavioral;
