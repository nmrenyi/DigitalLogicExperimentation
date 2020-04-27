library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Counter is
	port(
		reset:in std_logic := '0';  -- reset
		clock:in std_logic := '0';  -- clock
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
    signal natural_seq_hex_0 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal natural_seq_hex_1 :std_logic_vector(3 downto 0) := "0000"; -- natural number sequence binary representation, 0-F
    signal clock_cycle :std_logic_vector (31 downto 0) := (others => '0');
	signal Q :std_logic_vector(3 downto 0) := "0000";
	signal D :std_logic_vector(3 downto 0) := "0000";
begin
	u0: D_Flip_Flop port map (clock=>clock, D=>D(0), clr_n=>reset, Q=>Q(0));
	u1: D_Flip_Flop port map (clock=>clock, D=>D(1), clr_n=>reset, Q=>Q(1));
	u2: D_Flip_Flop port map (clock=>clock, D=>D(2), clr_n=>reset, Q=>Q(2));
	u3: D_Flip_Flop port map (clock=>clock, D=>D(3), clr_n=>reset, Q=>Q(3));
	D(0) <= not Q(0);
	D(1) <= ((not(Q(0) xor (not Q(1)))) and ((not Q(0)) or (not Q(3))));
	D(2) <= not((Q(0) and Q(1)) xor (not Q(2)));
	D(3) <= ((not((Q(0) and (Q(1) and Q(2))) xor (not Q(3)))) and (not(Q(0) and Q(3))));
	
	natural_out_test_0 <= Q;
	natural_seq_hex_0 <= Q;
	natural_out_test_1 <= natural_seq_hex_1;

	process (clock, reset) begin
		if (reset = '1') then
			natural_seq_hex_1 <= (others => '0');
			-- natural_seq_hex_0 <= (others => '0');
		elsif (rising_edge(clock)) then
			-- natural_seq_hex_0 <= Q;
			if (Q = 9) then
				if (natural_seq_hex_1 = 5) then
					natural_seq_hex_1 <= (others => '0'); -- reset it to 0
				else
					natural_seq_hex_1 <= natural_seq_hex_1 + 1;
				end if;
			end if;
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
		end if;
	end process;

end architecture bhv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity D_Flip_Flop is
	port(
		clock, D, clr_n : in std_logic;
		Q : out std_logic
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
