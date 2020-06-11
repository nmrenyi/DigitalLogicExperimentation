-- Ren Yi 2018011423
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Password is
    port (
        -- input ports
        reset:in std_logic := '0';  -- reset
        clock:in std_logic := '0';  -- clock

        mode: in std_logic_vector(1 downto 0) := (others => '0');
        input_code: in std_logic_vector(3 downto 0) := (others => '0');

        -- output ports
        success:out std_logic  := '0';
        fail:out std_logic  := '0';
        status_num: out std_logic_vector(3 downto 0):=(others => '0')
        
    );
end entity Password;

architecture bhv of Password is
    type state is (start, in1, in2, in3, in4, check1, check2, check3, final);
    signal now_state: state:=start;
    signal real_password :std_logic_vector(15 downto 0):=(others => '0');
    signal status :std_logic_vector(3 downto 0):=(others => '0');

begin
    status_num <= status;
    process (clock, reset) begin -- sensitive to clock and reset signals
        if (reset = '1') then
            now_state <= start;
            success <= '0';
            fail <= '1';
            status <= (others => '0');

        elsif (mode = 0) then -- set password
            case now_state is
                when start => now_state <= in1; real_password(15 downto 12)<=input_code;status<=status+1;
                when in1   => now_state <= in2; real_password(11 downto 8)<=input_code;status<=status+1;
                when in2   => now_state <= in3; real_password(7 downto 4)<=input_code;status<=status+1;
                when in3   => now_state <= final; real_password(3 downto 0)<=input_code;status<=status+1;
                when others => now_state <= final;status <= (others => '0');
            end case;
        elsif (mode = 1) then --validate password
            case now_state is
                when start => 
                    if input_code = real_password(15 downto 12) then
                        now_state <= check1;
                        status <= status + 1;
                    else
                        fail <= '1';
                        now_state <= start;

                    end if;
                when check1 => 
                    if input_code = real_password(11 downto 8) then
                        now_state <= check2;
                        status <= status + 1;
                    else
                        fail <= '1';
                        now_state <= start;

                    end if;
                when check2 => 
                    if input_code = real_password(7 downto 4) then
                        now_state <= check3;
                        status <= status + 1;
                    else
                        fail <= '1';
                        now_state <= start;

                    end if;             
                when check3 => 
                    if input_code = real_password(3 downto 0) then
                        now_state <= final;
                        status <= status + 1;
                        success <= '1';
                    else
                        fail <= '1';
                        now_state <= start;
                    end if;
                when others => 
                    now_state <= final;
                    status <= (others => '0');
            end case;
        else
            null;
        end if;
   end process;


end architecture bhv;
