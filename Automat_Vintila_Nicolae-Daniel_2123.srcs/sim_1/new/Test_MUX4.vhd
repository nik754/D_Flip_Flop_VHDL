library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test_MUX4 is
--  Port ( );
end Test_MUX4;

architecture Behavioral of Test_MUX4 is

component  MUX4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           y : out STD_LOGIC);
end component MUX4;

signal i0, i1, i2, i3, a1, a0, y: std_logic;

begin
UT: MUX4 port map(i0, i1, i2, i3, a1, a0, y);

process
begin
a0 <= '0'; wait for 2 ns;
a0 <= '1'; wait for 2 ns;
end process;

process
begin
a1 <= '0'; wait for 3 ns;
a1 <= '1'; wait for 3 ns;
end process;

process
begin
i0 <= '0'; wait for 4 ns;
i0 <= '1'; wait for 4 ns;
end process;

process
begin
i1 <= '0'; wait for 5 ns;
i1 <= '1'; wait for 5 ns;
end process;

process
begin
i2 <= '0'; wait for 6 ns;
i2 <= '1'; wait for 6 ns;
end process;

process
begin
i3 <= '0'; wait for 7 ns;
i3 <= '1'; wait for 7 ns;
end process;

end Behavioral;
