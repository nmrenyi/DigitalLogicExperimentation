-- Serial4FullAdder

library ieee;
use ieee.std_logic_1164.all;

entity Serial4FullAdder is
    port(
        a_in:in std_logic_vector(3 downto 0) := "0000";
        b_in:in std_logic_vector(3 downto 0) := "0000";
        carry_in : in std_logic :='0';
        sum_out:out std_logic_vector(3 downto 0) := "0000";
        carry_out : out std_logic :='0'
    );
end Serial4FullAdder;

architecture SFA of Serial4FullAdder is
component FullAdder
port (
    ain, bin, cin : in std_logic := '0';
    cout, sum : out std_logic := '0'
    );
end component;
signal carry: std_logic_vector(2 downto 0) := "000";
begin
    u1: FullAdder port map (ain=>a_in(0), bin=>b_in(0), cin=>carry_in, cout=>carry(0), sum=>sum_out(0));
    u2: FullAdder port map (ain=>a_in(1), bin=>b_in(1), cin=>carry(0), cout=>carry(1), sum=>sum_out(1));
    u3: FullAdder port map (ain=>a_in(2), bin=>b_in(2), cin=>carry(1), cout=>carry(2), sum=>sum_out(2));
    u4: FullAdder port map (ain=>a_in(3), bin=>b_in(3), cin=>carry(2), cout=>carry_out, sum=>sum_out(3));

end architecture SFA;
