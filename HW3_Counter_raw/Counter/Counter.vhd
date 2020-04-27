library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Counter is
	port(
		reset:in std_logic := '0';  -- reset
		original_clock:in std_logic := '0';  -- clock
		natural_out_encoded_0:out std_logic_vector(6 downto 0) := "1111110";  -- natural number output, directly controlling the 7 LEDS
		natural_out_encoded_1:out std_logic_vector(6 downto 0) := "1111110";  -- natural number output, directly controlling the 7 LEDS
		natural_out_test_0: out std_logic_vector(3 downto 0) := "0000";
        natural_out_test_1: out std_logic_vector(3 downto 0) := "0000"
	);
end entity Counter;

architecture bhv of Counter is
	component D_Flip_Flop
	port(
		clock, D, clr_n : in std_logic;
		Q : out std_logic
	);
    end component;
    component D_Flip_Flop_Fall
	port(
		clock, D, clr_n : in std_logic;
		Q : out std_logic
	);
	end component;
	component fdiv
	generic (N : integer);
	port(
        clkin: IN std_logic;
        clkout: OUT std_logic
		);
	end component;

    signal natural_seq_hex_0 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal natural_seq_hex_1 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal clock_cycle :std_logic_vector (31 downto 0) := (others => '0');
	signal Q :std_logic_vector(3 downto 0) := "0000";
	signal D :std_logic_vector(3 downto 0) := "0000";
	signal Q1 :std_logic_vector(3 downto 0) := "0000";
	signal D1 :std_logic_vector(3 downto 0) := "0000";
	signal clock :std_logic := '0';
    constant divide :integer := 6;

begin
    clock <= original_clock;
    -- c0: fdiv generic map(N => divide) port map(clkin=>original_clock, clkout=>clock);
	
	u0: D_Flip_Flop port map (clock=>clock, D=>D(0), clr_n=>reset, Q=>Q(0));
	u1: D_Flip_Flop port map (clock=>clock, D=>D(1), clr_n=>reset, Q=>Q(1));
	u2: D_Flip_Flop port map (clock=>clock, D=>D(2), clr_n=>reset, Q=>Q(2));
	u3: D_Flip_Flop port map (clock=>clock, D=>D(3), clr_n=>reset, Q=>Q(3));
	D(0) <= not Q(0);
	D(1) <= ((not(Q(0) xor (not Q(1)))) and ((not Q(0)) or (not Q(3))));
	D(2) <= not((Q(0) and Q(1)) xor (not Q(2)));
	D(3) <= ((not((Q(0) and (Q(1) and Q(2))) xor (not Q(3)))) and (not(Q(0) and Q(3))));


	u4: D_Flip_Flop_Fall port map (clock=>Q(3), D=>D1(0), clr_n=>reset, Q=>Q1(0));
	u5: D_Flip_Flop_Fall port map (clock=>Q(3), D=>D1(1), clr_n=>reset, Q=>Q1(1));
	u6: D_Flip_Flop_Fall port map (clock=>Q(3), D=>D1(2), clr_n=>reset, Q=>Q1(2));
	u7: D_Flip_Flop_Fall port map (clock=>Q(3), D=>D1(3), clr_n=>reset, Q=>Q1(3));
	D1(0) <= not Q1(0);
	D1(1) <= ((not Q1(3)) and (not Q1(2)) and (not Q1(1)) and Q1(0)) or ((not Q1(3)) and (not Q1(2)) and (Q1(1)) and (not Q1(0)));
	D1(2) <= ((not Q1(3)) and (not Q1(2)) and (Q1(1)) and Q1(0)) or ((not Q1(3)) and (Q1(2)) and (not Q1(1)) and (not Q1(0)));
	D1(3) <= '0';
	
	natural_out_test_0 <= Q;
	natural_seq_hex_0 <= Q;
	natural_out_test_1 <= Q1;
	natural_seq_hex_1 <= Q1;

	process(clock)  begin
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
	end process;
end architecture bhv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity D_Flip_Flop is
	port(
        clock: in std_logic := '0';
        D: in std_logic := '0';
        clr_n: in std_logic := '0';
		Q : out std_logic := '0'
	);
end D_Flip_Flop;

architecture bhv of D_Flip_Flop is
begin
	process(clock, clr_n)
	begin		
		if(clr_n = '1')then
			Q <= '0';
		elsif (rising_edge(clock))then
			Q <= D;
		end if;
	end process;
end bhv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity D_Flip_Flop_Fall is
	port(
        clock: in std_logic := '0';
        D: in std_logic := '0';
        clr_n: in std_logic := '0';
		Q : out std_logic := '0'
	);
end D_Flip_Flop_Fall;

architecture bhv of D_Flip_Flop_Fall is
begin
	process(clock, clr_n)
	begin		
		if(clr_n = '1')then
			Q <= '0';
		elsif (falling_edge(clock))then
			Q <= D;
		end if;
	end process;
end bhv;

Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;
Entity fdiv is
  generic(N: integer:= 10);
  port(
        clkin: IN std_logic := '0';
        clkout: OUT std_logic := '0'
        );
End fdiv;
Architecture a of fdiv is
	signal cnt: integer range 0 to n/2-1 := 0;
	signal temp: std_logic := '0';
  Begin
	process(clkin)
	begin
		if(clkin'event and clkin='1') then
			if(cnt=n/2-1) then
				cnt <= 0;
				temp <= NOT temp;
			else
				cnt <= cnt+1;
			end if;
		end if;
	end process;
  
	clkout <= temp;
  End a;
