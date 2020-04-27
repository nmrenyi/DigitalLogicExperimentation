library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CarryLookAheadAdder_tb is
end;

architecture bench of CarryLookAheadAdder_tb is

  component CarryLookAheadAdder 
  port(
      a_in:in std_logic_vector(3 downto 0) := (others => '0');
      b_in:in std_logic_vector(3 downto 0) := (others => '0');
      carry_in : in std_logic :='0';
      sum_out:out std_logic_vector(3 downto 0) := (others => '0');
      carry_out : out std_logic :='0'
  );
  end component;

  signal a_in: std_logic_vector(3 downto 0) := (others => '0');
  signal b_in: std_logic_vector(3 downto 0) := (others => '0');
  signal carry_in: std_logic :='0';
  signal sum_out: std_logic_vector(3 downto 0) := (others => '0');
  signal carry_out: std_logic :='0' ;
  signal stop_the_clock: boolean;
  constant clock_period: time := 10 ns;


begin

  uut: CarryLookAheadAdder port map ( a_in      => a_in,
                                      b_in      => b_in,
                                      carry_in  => carry_in,
                                      sum_out   => sum_out,
                                      carry_out => carry_out );

    carry_in_test: process
    begin
        while not stop_the_clock loop
            carry_in <= '0', '1' after (clock_period * 5);
        wait for (clock_period * 10);
        end loop;
        wait;
    end process;
    
    a_in_test: process
    begin
        while not stop_the_clock loop
            a_in <= a_in + 1;
        wait for (clock_period);
        end loop;
        wait;
    end process;
    
    b_in_test: process
    begin
        while not stop_the_clock loop
            b_in <= b_in + 1;
        wait for (clock_period * 15);
        end loop;
        wait;
    end process;


end;