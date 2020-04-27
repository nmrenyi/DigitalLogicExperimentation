library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Counter_tb is
end;

architecture bench of Counter_tb is

  component Counter
  	port(
  		reset:in std_logic := '0';
  		clock:in std_logic := '0';
  		natural_out_encoded_0:out std_logic_vector(6 downto 0) := "1111110";
  		natural_out_encoded_1:out std_logic_vector(6 downto 0) := "1111110";
  		natural_out_test_0: out std_logic_vector(3 downto 0) := "0000";
  		natural_out_test_1: out std_logic_vector(3 downto 0) := "0000"
  	);
  end component;

  signal reset: std_logic := '0';
  signal clock: std_logic := '0';
  signal natural_out_encoded_0: std_logic_vector(6 downto 0) := "1111110";
  signal natural_out_encoded_1: std_logic_vector(6 downto 0) := "1111110";
  signal natural_out_test_0: std_logic_vector(3 downto 0) := "0000";
  signal natural_out_test_1: std_logic_vector(3 downto 0) := "0000" ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Counter port map ( reset                 => reset,
                          clock                 => clock,
                          natural_out_encoded_0 => natural_out_encoded_0,
                          natural_out_encoded_1 => natural_out_encoded_1,
                          natural_out_test_0    => natural_out_test_0,
                          natural_out_test_1    => natural_out_test_1 );


  reset <= '0', '1' after 80 * clock_period, '0' after 85 * clock_period;

  clocking: process
  begin
    while not stop_the_clock loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
  