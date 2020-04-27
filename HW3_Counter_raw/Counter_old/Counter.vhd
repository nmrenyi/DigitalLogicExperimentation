-- Ren Yi 2018011423
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
    port (
        -- input ports
        reset:in std_logic := '0';  -- reset
        clock:in std_logic := '0';  -- clock
        natural_out_encoded_0:out std_logic_vector(6 downto 0) := "1111110";  -- natural number output, directly controlling the 7 LEDS
        natural_out_encoded_1:out std_logic_vector(6 downto 0) := "1111110"  -- natural number output, directly controlling the 7 LEDS
    );
end entity Counter;

architecture bhv of Counter is
    signal natural_seq_hex_0 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal natural_seq_hex_1 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal clock_cycle :std_logic_vector (31 downto 0) := (others => '0');
begin
    process (clock, reset) begin -- sensitive to clock and reset signals
        if (reset = '1') then    -- reset the signals
            natural_seq_hex_0 <= "0000";
            natural_seq_hex_1 <= "0000";
            clock_cycle <= (others => '0');
            natural_out_encoded_1 <="1111110";
            natural_out_encoded_0 <="1111110";

        elsif (rising_edge(clock)) then  -- the clock signal is on the rising edge
            if clock_cycle = 0 then
                if (natural_seq_hex_0 = 9) then   -- natural number has reached the maximum value
                    natural_seq_hex_0 <= (others => '0'); -- reset it to 0
                    if (natural_seq_hex_1 = 5) then
                        natural_seq_hex_1 <= (others => '0'); -- reset it to 0
                    else
                        natural_seq_hex_1 <= natural_seq_hex_1 + 1;
                    end if;
                else
                    natural_seq_hex_0 <= natural_seq_hex_0 + 1; -- stride is 1, to the next natural number
                end if;
                
                -- giving value to the outputs

        
                case natural_seq_hex_1 is -- encode the natural seqence to light the LEDS
                    when"0000"=> natural_out_encoded_1<="1111110"; --0
                    when"0001"=> natural_out_encoded_1<="0110000"; --1
                    when"0010"=> natural_out_encoded_1<="1101101"; --2
                    when"0011"=> natural_out_encoded_1<="1111001"; --3
                    when"0100"=> natural_out_encoded_1<="0110011"; --4
                    when"0101"=> natural_out_encoded_1<="1011011"; --5
                    when"0110"=> natural_out_encoded_1<="1011111"; --6
                    when"0111"=> natural_out_encoded_1<="1110000"; --7
                    when"1000"=> natural_out_encoded_1<="1111111"; --8
                    when"1001"=> natural_out_encoded_1<="1110011"; --9
                    when"1010"=> natural_out_encoded_1<="1110111"; --A
                    when"1011"=> natural_out_encoded_1<="0011111"; --B
                    when"1100"=> natural_out_encoded_1<="1001110"; --C
                    when"1101"=> natural_out_encoded_1<="0111101"; --D
                    when"1110"=> natural_out_encoded_1<="1001111"; --E
                    when"1111"=> natural_out_encoded_1<="1000111"; --F
                    when others=>natural_out_encoded_1<="0000000"; --off when other circumstances
                end case;
                case natural_seq_hex_0 is -- encode the natural seqence to light the LEDS
                    when"0000"=> natural_out_encoded_0<="1111110"; --0
                    when"0001"=> natural_out_encoded_0<="0110000"; --1
                    when"0010"=> natural_out_encoded_0<="1101101"; --2
                    when"0011"=> natural_out_encoded_0<="1111001"; --3
                    when"0100"=> natural_out_encoded_0<="0110011"; --4
                    when"0101"=> natural_out_encoded_0<="1011011"; --5
                    when"0110"=> natural_out_encoded_0<="1011111"; --6
                    when"0111"=> natural_out_encoded_0<="1110000"; --7
                    when"1000"=> natural_out_encoded_0<="1111111"; --8
                    when"1001"=> natural_out_encoded_0<="1110011"; --9
                    when"1010"=> natural_out_encoded_0<="1110111"; --A
                    when"1011"=> natural_out_encoded_0<="0011111"; --B
                    when"1100"=> natural_out_encoded_0<="1001110"; --C
                    when"1101"=> natural_out_encoded_0<="0111101"; --D
                    when"1110"=> natural_out_encoded_0<="1001111"; --E
                    when"1111"=> natural_out_encoded_0<="1000111"; --F
                    when others=>natural_out_encoded_0<="0000000"; --off when other circumstances
                end case;
                clock_cycle <= (others => '0');

            else
                clock_cycle <= clock_cycle + 1;
            end if;
        else
            null;
        end if;



   end process;

end architecture bhv;
