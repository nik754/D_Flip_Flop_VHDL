library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end DFF;

architecture Behavioral of DFF is
begin

process(clk, r)
begin
    if r='1' then
            q <= '0';
            qn <= '1';
            
   elsif falling_edge(clk) then
            q <= d;
            qn <= not d;
   end if;
   
end process;

end Behavioral;
