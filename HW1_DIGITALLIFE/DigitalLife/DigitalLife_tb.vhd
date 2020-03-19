-- Testbench created online at:
--   www.doulos.com/knowhow/perl/testbench_creation/
-- Copyright Doulos Ltd
-- SD, 03 November 2002

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DigitalLife_tb is
end;

architecture bench of DigitalLife_tb is

  component DigitalLife
      port (
          rst:in std_logic;
          clk:in std_logic;
          natural_out_test:out std_logic_vector(3 downto 0);
          natural_out:out std_logic_vector(6 downto 0);
          odd_out:out std_logic_vector(3 downto 0);
          even_out:out std_logic_vector(3 downto 0)
      );
  end component;

  signal rst: std_logic;
  signal clk: std_logic;
  signal natural_out_test: std_logic_vector(3 downto 0);
  signal natural_out: std_logic_vector(6 downto 0);
  signal odd_out: std_logic_vector(3 downto 0);
  signal even_out: std_logic_vector(3 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: DigitalLife port map ( rst              => rst,
                              clk              => clk,
                              natural_out_test => natural_out_test,
                              natural_out      => natural_out,
                              odd_out          => odd_out,
                              even_out         => even_out );

  rst <= '0', '1' after 5 * clock_period, '0' after 10 * clock_period;

--  clocking: process
--  begin
--    while not stop_the_clock loop
--      clk <= '0', '1' after clock_period / 2;
--      wait for clock_period;
--    end loop;
--    wait;
--  end process;

  process 
  begin
      clk <= '0';
      wait for clock_period/2;
      clk <= '1';
      wait for clock_period/2;
  end process;

end;
  