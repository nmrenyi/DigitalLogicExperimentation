library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TEF is
  Port (EN, T, CLK : in std_logic; 
        Q : out std_logic);
end TEF;

architecture Behavioral of TEF is

signal temp_q : std_logic := '0';

begin
    proc1 : process (EN, T, CLK)
    begin
        if EN = '1' then
            if rising_edge(CLK) then
                if T = '1' then temp_q <= (not temp_q);
                else temp_q <= temp_q; end if;
            end if;
        else Q <= temp_q; end if;
        Q <= temp_q;
    end process proc1;
end Behavioral;