-- Ren Yi 2018011423
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DigitalLife is
    port (
        -- input ports
        rst:in std_logic;  -- reset
        clk:in std_logic;  -- clock

        -- output ports
        natural_out_test:out std_logic_vector(3 downto 0);
        natural_out:out std_logic_vector(6 downto 0);  -- natural number output, directly controlling the 7 LEDS
        odd_out:out std_logic_vector(3 downto 0);  -- odd number binary sequence output
        even_out:out std_logic_vector(3 downto 0)  -- even number binary sequence output
    );
end entity DigitalLife;

architecture bhv of DigitalLife is
    signal natural_seq :std_logic_vector (3 downto 0) := "0000";  -- natural number sequence binary representation
    signal odd_seq :std_logic_vector (3 downto 0) := "0001";  -- odd number sequence binary representation
    signal even_seq :std_logic_vector (3 downto 0) := "0000";  -- even number sequence binary representation
--    signal clock_cycle :std_logic_vector (31 downto 0) := (others => '0');
begin
    process (clk, rst) begin -- sensitive to clock and reset signals
        if (rst = '1') then    -- reset the signals
            natural_seq <= "0000";
            odd_seq <= "0001";
            even_seq <= "0000";

        elsif (rising_edge(clk)) then  -- the clock signal is on the rising edge
            if (natural_seq = 15) then   -- natural number has reached the maximum value
                natural_seq <= (others => '0'); -- reset it to 0
                natural_out_test<=natural_seq;
            else
                natural_seq <= natural_seq + 1; -- stride is 1, to the next natural number
                natural_out_test<=natural_seq;

            end if;

            if (odd_seq = 9) then  -- odd number has reached the maximum value
                odd_seq <= "0001";  -- reset it to 1
            else
                odd_seq <= odd_seq + 2;  -- stride is 2, to the next odd number
            end if;

            if (even_seq = 8) then -- even number has reached the maximum value
                even_seq <= (others => '0'); -- reset it to 0
            else
                even_seq <= even_seq + 2; -- stride is 2, to the next even number
            end if;
        else
            null;
        end if;

        -- giving value to the outputs

        odd_out <= odd_seq;
        even_out<=even_seq;
        --natural_out_test<=natural_seq;

        case natural_seq is -- encode the natural seqence to light the LEDS
            when"0000"=> natural_out<="1111110"; --0
            when"0001"=> natural_out<="0110000"; --1
            when"0010"=> natural_out<="1101101"; --2
            when"0011"=> natural_out<="1111001"; --3
            when"0100"=> natural_out<="0110011"; --4
            when"0101"=> natural_out<="1011011"; --5
            when"0110"=> natural_out<="1011111"; --6
            when"0111"=> natural_out<="1110000"; --7
            when"1000"=> natural_out<="1111111"; --8
            when"1001"=> natural_out<="1110011"; --9
            when"1010"=> natural_out<="1110111"; --A
            when"1011"=> natural_out<="0011111"; --B
            when"1100"=> natural_out<="1001110"; --C
            when"1101"=> natural_out<="0111101"; --D
            when"1110"=> natural_out<="1001111"; --E
            when"1111"=> natural_out<="1000111"; --F
            when others=>natural_out<="0000000"; --off when other circumstances
        end case;
   end process;
end architecture bhv;
