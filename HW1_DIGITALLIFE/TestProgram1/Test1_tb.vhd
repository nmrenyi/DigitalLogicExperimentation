architecture bench of Test1_tb is

  component Test1
      port (
          clk:in std_logic;
          z:out std_logic:= '0'
      );
  end component;

  signal clk: std_logic;
  signal z: std_logic:= '0' ;
  constant clock_period: time := 20 ns;
  signal stop_the_clock: boolean;
begin

  uut: Test1 port map ( clk => clk,
                        z   => z );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;
  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;