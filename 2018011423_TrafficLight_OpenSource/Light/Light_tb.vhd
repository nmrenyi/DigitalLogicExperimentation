library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Light_tb is
end;

architecture bench of Light_tb is

  component Light
  	port(
  		reset:in std_logic := '0';
          clock:in std_logic := '0';
          north_cnt: out std_logic_vector(3 downto 0) := (others => '0');
          north_red: out std_logic := '1';
          north_yel: out std_logic := '0';
          north_gre: out std_logic := '0';
          west_cnt: out std_logic_vector(3 downto 0) := (others => '0');
          west_red: out std_logic := '0';
          west_yel: out std_logic := '0';
          west_gre: out std_logic := '1'
  	);
  end component;

  signal reset: std_logic := '0';
  signal clock: std_logic := '0';
  signal north_cnt: std_logic_vector(3 downto 0) := (others => '0');
  signal north_red: std_logic := '1';
  signal north_yel: std_logic := '0';
  signal north_gre: std_logic := '0';
  signal west_cnt: std_logic_vector(3 downto 0) := (others => '0');
  signal west_red: std_logic := '0';
  signal west_yel: std_logic := '0';
  signal west_gre: std_logic := '1' ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Light port map ( reset     => reset,
                        clock     => clock,
                        north_cnt => north_cnt,
                        north_red => north_red,
                        north_yel => north_yel,
                        north_gre => north_gre,
                        west_cnt  => west_cnt,
                        west_red  => west_red,
                        west_yel  => west_yel,
                        west_gre  => west_gre );



  clocking: process
  begin
    while not stop_the_clock loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
