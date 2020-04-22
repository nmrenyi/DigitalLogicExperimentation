-- FullAdder.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is 
  port (
  ain, bin, cin : in std_logic := '0';
  cout, sum : out std_logic := '0'
  );
end FullAdder;

architecture FA of FullAdder is 
component half_adder
port( a, b: in std_logic;
      sum, carry: out std_logic);
end component;

signal d, e, f: std_logic;
begin
  u1: half_adder port map
  (a=>ain, b=>bin, carry=>d, sum=>e);    
  u2: half_adder port map
  (a=>e, b=>cin, carry=>f, sum=>sum);
  u3:
  cout <= (f or d);
end architecture FA;


