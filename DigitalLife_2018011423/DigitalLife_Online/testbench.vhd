
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DigitalLife_tb is
end;

architecture bench of DigitalLife_tb is

  component DigitalLife
      port (
          reset:in std_logic := '0';
          clock:in std_logic := '0';
          even_out:out std_logic_vector(3 downto 0) := "0000";
          odd_out:out std_logic_vector(3 downto 0) := "0001";
          natural_out_encoded:out std_logic_vector(6 downto 0) := "0000000"
      );
  end component;

  signal reset: std_logic := '0';
  signal clock: std_logic := '0';
  signal even_out: std_logic_vector(3 downto 0) := "0000";
  signal odd_out: std_logic_vector(3 downto 0) := "0001";
  signal natural_out_encoded: std_logic_vector(6 downto 0) := "0000000" ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: DigitalLife port map ( reset               => reset,
                              clock               => clock,
                              even_out            => even_out,
                              odd_out             => odd_out,
                              natural_out_encoded => natural_out_encoded );

  reset <= '0', '1' after 40 ns, '0' after 100 ns;

  clocking: process
  begin
    while not stop_the_clock loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;