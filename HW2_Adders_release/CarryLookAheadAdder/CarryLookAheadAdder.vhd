-- CarryLookAheadAdder

library ieee;
use ieee.std_logic_1164.all;

entity CarryLookAheadAdder is 
port(
    a_in:in std_logic_vector(3 downto 0) := (others => '0');
    b_in:in std_logic_vector(3 downto 0) := (others => '0');
    carry_in : in std_logic :='0';
    sum_out:out std_logic_vector(3 downto 0) := (others => '0');
    carry_out : out std_logic :='0'
);
end CarryLookAheadAdder;

architecture CLA of CarryLookAheadAdder is
    component FullAdder
    port (
        ain, bin, cin : in std_logic := '0';
        cout, sum : out std_logic := '0'
        );
    end component;
    signal P: std_logic_vector(3 downto 0) := (others => '0');
    signal G: std_logic_vector(3 downto 0) := (others => '0');
    signal carry: std_logic_vector(2 downto 0):= (others => '0');
    begin
        u1: FullAdder port map (ain=>a_in(0), bin=>b_in(0), cin=>carry_in, sum=>sum_out(0));
        u2: FullAdder port map (ain=>a_in(1), bin=>b_in(1), cin=>carry(0), sum=>sum_out(1));
        u3: FullAdder port map (ain=>a_in(2), bin=>b_in(2), cin=>carry(1), sum=>sum_out(2));
        u4: FullAdder port map (ain=>a_in(3), bin=>b_in(3), cin=>carry(2), sum=>sum_out(3));
        carry(0) <= (G(0) or (P(0) and carry_in));
        carry(1) <= (G(1) or (P(1) and carry(0)));
        carry(2) <= (G(2) or (P(2) and carry(1)));
        carry_out <= (G(3) or (P(3) and carry(2)));
        P(0) <= a_in(0) xor b_in(0);
        P(1) <= a_in(1) xor b_in(1);
        P(2) <= a_in(2) xor b_in(2);
        P(3) <= a_in(3) xor b_in(3);

        G(0) <= a_in(0) and b_in(0);
        G(1) <= a_in(1) and b_in(1);
        G(2) <= a_in(2) and b_in(2);
        G(3) <= a_in(3) and b_in(3);

end architecture CLA;
