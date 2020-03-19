-- Ren Yi 2018011423
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Test1 is
    port (
        -- input ports
        clk:in std_logic;  -- clock
        -- output ports
        z:out std_logic:= '0'
    );
end entity Test1;


architecture bhv of Test1 is
begin

    --    -- Simulation 2 z <= y is outside 
--    process(clk) begin
--        if (rising_edge(clk)) then
--            y <= not y;
--        end if;
--    end process;
    
    z <= not clk;

end architecture bhv;
