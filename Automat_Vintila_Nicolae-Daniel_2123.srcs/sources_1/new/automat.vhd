library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity automat is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end automat;

architecture Behavioral of automat is

component  DFF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end component DFF;

component MUX4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           y : out STD_LOGIC);
end component MUX4;

component INV is
    Port ( a : in STD_LOGIC;
           y : out STD_LOGIC);
end component INV;

signal netd0, netd1, netd2, netinv1, netinv2:std_logic;
signal qint:std_logic_vector(2 downto 0);

begin
q <= qint;

DFF0: DFF port map( clk => clk,
                    r => r,
                    d => netd0,
                    q => qint(0));
                    
DFF1: DFF port map ( clk => clk,
                     r => r,
                     d => netd1,
                     q => qint(1));

DFF2: DFF port map ( clk => clk,
                     r => r,
                     d => netd2,
                     q => qint(2));                     
                                                        
MUX0: MUX4 port map (i0 => '0',
                     i1 => '1',
                     i2 => '0',
                     i3 => '1',
                     a1 => qint(2),
                     a0 => qint(1),
                     y => netd0);
                     
MUX1: MUX4 port map (i0 => '0',
                     i1 => '0',
                     i2 => '1',
                     i3 => '1',
                     a1 => qint(2),
                     a0 => qint(1),
                     y => netd1);

MUX2: MUX4  port map (i0 => '1',
                      i1 => qint(0),
                      i2 => netinv1,
                      i3 => netinv2,
                      a1 => qint(2),
                      a0 => qint(1),
                      y => netd2);

INV1: INV port map (a => qint(0),
                    y => netinv1);
                    
INV2: INV port map (a => qint(0),
                    y => netinv2);                    

end Behavioral;
