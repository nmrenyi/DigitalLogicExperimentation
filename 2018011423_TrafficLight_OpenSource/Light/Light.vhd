-- 2018011423 Ren Yi
-- 20200604

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Light is
	port(
		reset:in std_logic := '0';  -- reset
        clock:in std_logic := '0';  -- clock, 1MHz
        north_cnt: out std_logic_vector(3 downto 0) := (others => '0'); -- counter for north-south traffic light
        north_red: out std_logic := '1'; -- north-south red traffic light
        north_yel: out std_logic := '0'; -- north-south yellow traffic light
        north_gre: out std_logic := '0'; -- north-south green traffic light

        west_cnt: out std_logic_vector(3 downto 0) := (others => '0'); -- counter for west-east traffic light
        west_red: out std_logic := '0'; -- west-east red traffic light
        west_yel: out std_logic := '0'; -- west-east yellow traffic light
        west_gre: out std_logic := '1' -- west-east green traffic light
	);
end entity Light;

architecture bhv of Light is

	 -- use finite state machine
    type state is (start, red, yel, gre); -- start, red, yellow, green states
    signal north_state: state:=start;
    signal west_state: state:=start;

	 -- counter for traffic light
    signal north_cnt_local: std_logic_vector(3 downto 0) := "1001";
    signal west_cnt_local: std_logic_vector(3 downto 0) := "1001";
	 
	 -- counter for clock
    signal cnt: integer := 0;
    
begin
    north_cnt <= north_cnt_local;
    west_cnt  <= west_cnt_local;

    process(clock, reset) begin
		  -- reset to north-south red, west-east green
        if (reset = '1') then
            north_cnt_local <= "1001";
            north_red <= '1';
            north_yel <= '0';
            north_gre <= '0';
            north_state <= red;
            west_cnt_local <= "0110";
            west_red <= '0';
            west_yel <= '0';
            west_gre <= '1';
            west_state <= gre;
            cnt <= 0;
        elsif (rising_edge(clock)) then
            cnt <= cnt + 1;
            if (cnt > 1000000) then -- with 1M clock in, this means action every 1 second
                cnt <= 0;
                case north_state is
                    when start=>
                        north_state <= red;
                        north_cnt_local <= "1001";  --9
                        north_red <= '1';
                        north_yel <= '0';
                        north_gre <= '0';
                    when red=>
                        if (CONV_INTEGER(north_cnt_local) = 0) then -- change to green
                            north_state <= gre;
                            north_red <= '0';
                            north_yel <= '0';
                            north_gre <= '1';
                            north_cnt_local <= "0110"; -- 6
                        else
                            north_cnt_local <= north_cnt_local - 1;
                        end if;

                    when gre=>
                        if (CONV_INTEGER(north_cnt_local) = 0) then -- change to yellow
                            north_state <= yel;
                            north_red <= '0';
                            north_yel <= '1';
                            north_gre <= '0';
                            north_cnt_local <= "0010"; -- 2
                        else
                            north_cnt_local <= north_cnt_local - 1;
                        end if;

                    when yel=>
                        if (CONV_INTEGER(north_cnt_local) = 0) then -- change to green
                            north_state <= red;
                            north_red <= '1';
                            north_yel <= '0';
                            north_gre <= '0';
                            north_cnt_local <= "1001"; -- 9
                        else
                            north_cnt_local <= north_cnt_local - 1;
                        end if;
                end case;

                case west_state is
                    when start=>
                        west_state <= gre;
                        west_cnt_local <= "0110";  --6
                        west_red <= '0';
                        west_yel <= '0';
                        west_gre <= '1';
                    when red=>
                        if (CONV_INTEGER(west_cnt_local) = 0) then -- change to green
                            west_state <= gre;
                            west_red <= '0';
                            west_yel <= '0';
                            west_gre <= '1';
                            west_cnt_local <= "0110"; -- 6
                        else
                            west_cnt_local <= west_cnt_local - 1;
                        end if;

                    when gre=>
                        if (CONV_INTEGER(west_cnt_local) = 0) then -- change to yellow
                            west_state <= yel;
                            west_red <= '0';
                            west_yel <= '1';
                            west_gre <= '0';
                            west_cnt_local <= "0010"; -- 2
                        else
                            west_cnt_local <= west_cnt_local - 1;
                        end if;

                    when yel=>
                        if (CONV_INTEGER(west_cnt_local) = 0) then -- change to red
                            west_state <= red;
                            west_red <= '1';
                            west_yel <= '0';
                            west_gre <= '0';
                            west_cnt_local <= "1001"; -- 9
                        else
                            west_cnt_local <= west_cnt_local - 1;
                        end if;
                end case;
            end if;
        end if;
    end process;
end architecture bhv;
