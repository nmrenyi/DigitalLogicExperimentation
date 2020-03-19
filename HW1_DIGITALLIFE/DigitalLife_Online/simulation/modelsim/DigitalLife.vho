-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/19/2020 12:40:12"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	DigitalLife IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	even_out : OUT std_logic_vector(3 DOWNTO 0);
	odd_out : OUT std_logic_vector(3 DOWNTO 0);
	natural_out_encoded : OUT std_logic_vector(6 DOWNTO 0)
	);
END DigitalLife;

-- Design Ports Information
-- clock	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- even_out[0]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[2]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[3]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[0]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[3]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[1]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[3]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[4]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[5]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out_encoded[6]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF DigitalLife IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_even_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_odd_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_natural_out_encoded : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \Add3~155_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Add3~157\ : std_logic;
SIGNAL \Add3~150_combout\ : std_logic;
SIGNAL \Add3~152\ : std_logic;
SIGNAL \Add3~152COUT1_186\ : std_logic;
SIGNAL \Add3~145_combout\ : std_logic;
SIGNAL \Add3~147\ : std_logic;
SIGNAL \Add3~147COUT1_188\ : std_logic;
SIGNAL \Add3~140_combout\ : std_logic;
SIGNAL \Add3~142\ : std_logic;
SIGNAL \Add3~142COUT1_190\ : std_logic;
SIGNAL \Add3~135_combout\ : std_logic;
SIGNAL \Add3~137\ : std_logic;
SIGNAL \Add3~137COUT1_192\ : std_logic;
SIGNAL \Add3~130_combout\ : std_logic;
SIGNAL \Add3~132\ : std_logic;
SIGNAL \Add3~125_combout\ : std_logic;
SIGNAL \Add3~127\ : std_logic;
SIGNAL \Add3~127COUT1_194\ : std_logic;
SIGNAL \Add3~120_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal0~9\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~122COUT1_196\ : std_logic;
SIGNAL \Add3~95_combout\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~97COUT1_198\ : std_logic;
SIGNAL \Add3~105_combout\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~107COUT1_200\ : std_logic;
SIGNAL \Add3~100_combout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~92\ : std_logic;
SIGNAL \Add3~92COUT1_202\ : std_logic;
SIGNAL \Add3~115_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Add3~117\ : std_logic;
SIGNAL \Add3~117COUT1_204\ : std_logic;
SIGNAL \Add3~112\ : std_logic;
SIGNAL \Add3~112COUT1_206\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~87COUT1_208\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add3~110_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~72\ : std_logic;
SIGNAL \Add3~72COUT1_210\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \Add3~77COUT1_212\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~67COUT1_214\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~62COUT1_216\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_218\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~57COUT1_220\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~52COUT1_222\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_224\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~27COUT1_226\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_228\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_230\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_232\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \natural_out_encoded[0]~0_combout\ : std_logic;
SIGNAL \even_out[1]~reg0_regout\ : std_logic;
SIGNAL \even_out[2]~reg0_regout\ : std_logic;
SIGNAL \even_out[3]~reg0_regout\ : std_logic;
SIGNAL \odd_out[1]~reg0_regout\ : std_logic;
SIGNAL \odd_out[2]~reg0_regout\ : std_logic;
SIGNAL \odd_out[3]~reg0_regout\ : std_logic;
SIGNAL \natural_seq_hex[1]~2_combout\ : std_logic;
SIGNAL \natural_out_encoded[0]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[1]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[2]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[3]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[4]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[5]~reg0_regout\ : std_logic;
SIGNAL \natural_out_encoded[6]~reg0_regout\ : std_logic;
SIGNAL natural_seq_hex : std_logic_vector(3 DOWNTO 0);
SIGNAL even_seq : std_logic_vector(3 DOWNTO 0);
SIGNAL clock_cycle : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clock <= clock;
even_out <= ww_even_out;
odd_out <= ww_odd_out;
natural_out_encoded <= ww_natural_out_encoded;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: LC_X2_Y3_N4
\Add3~155\ : maxii_lcell
-- Equation(s):
-- \Add3~155_combout\ = ((!clock_cycle(0)))
-- \Add3~157\ = CARRY(((clock_cycle(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~155_combout\,
	cout => \Add3~157\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X2_Y3_N1
\clock_cycle[0]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(0) = DFFEAS(((!\Equal0~10_combout\ & (\Add3~155_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \Equal0~10_combout\,
	datac => \Add3~155_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(0));

-- Location: LC_X2_Y3_N5
\Add3~150\ : maxii_lcell
-- Equation(s):
-- \Add3~150_combout\ = clock_cycle(1) $ ((((\Add3~157\))))
-- \Add3~152\ = CARRY(((!\Add3~157\)) # (!clock_cycle(1)))
-- \Add3~152COUT1_186\ = CARRY(((!\Add3~157\)) # (!clock_cycle(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(1),
	cin => \Add3~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~150_combout\,
	cout0 => \Add3~152\,
	cout1 => \Add3~152COUT1_186\);

-- Location: LC_X2_Y3_N3
\clock_cycle[1]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(1) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~150_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(1));

-- Location: LC_X2_Y3_N6
\Add3~145\ : maxii_lcell
-- Equation(s):
-- \Add3~145_combout\ = (clock_cycle(2) $ ((!(!\Add3~157\ & \Add3~152\) # (\Add3~157\ & \Add3~152COUT1_186\))))
-- \Add3~147\ = CARRY(((clock_cycle(2) & !\Add3~152\)))
-- \Add3~147COUT1_188\ = CARRY(((clock_cycle(2) & !\Add3~152COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(2),
	cin => \Add3~157\,
	cin0 => \Add3~152\,
	cin1 => \Add3~152COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~145_combout\,
	cout0 => \Add3~147\,
	cout1 => \Add3~147COUT1_188\);

-- Location: LC_X5_Y2_N4
\clock_cycle[2]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(2) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~145_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(2));

-- Location: LC_X2_Y3_N7
\Add3~140\ : maxii_lcell
-- Equation(s):
-- \Add3~140_combout\ = (clock_cycle(3) $ (((!\Add3~157\ & \Add3~147\) # (\Add3~157\ & \Add3~147COUT1_188\))))
-- \Add3~142\ = CARRY(((!\Add3~147\) # (!clock_cycle(3))))
-- \Add3~142COUT1_190\ = CARRY(((!\Add3~147COUT1_188\) # (!clock_cycle(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(3),
	cin => \Add3~157\,
	cin0 => \Add3~147\,
	cin1 => \Add3~147COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~140_combout\,
	cout0 => \Add3~142\,
	cout1 => \Add3~142COUT1_190\);

-- Location: LC_X6_Y3_N2
\clock_cycle[3]\ : maxii_lcell
-- Equation(s):
-- \Equal0~9\ = (!clock_cycle(1) & (!clock_cycle(0) & (!clock_cycle[3] & !clock_cycle(2))))
-- clock_cycle(3) = DFFEAS(\Equal0~9\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(1),
	datab => clock_cycle(0),
	datac => \Add3~140_combout\,
	datad => clock_cycle(2),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9\,
	regout => clock_cycle(3));

-- Location: LC_X2_Y3_N8
\Add3~135\ : maxii_lcell
-- Equation(s):
-- \Add3~135_combout\ = (clock_cycle(4) $ ((!(!\Add3~157\ & \Add3~142\) # (\Add3~157\ & \Add3~142COUT1_190\))))
-- \Add3~137\ = CARRY(((clock_cycle(4) & !\Add3~142\)))
-- \Add3~137COUT1_192\ = CARRY(((clock_cycle(4) & !\Add3~142COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(4),
	cin => \Add3~157\,
	cin0 => \Add3~142\,
	cin1 => \Add3~142COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~135_combout\,
	cout0 => \Add3~137\,
	cout1 => \Add3~137COUT1_192\);

-- Location: LC_X2_Y3_N2
\clock_cycle[4]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(4) = DFFEAS((((\Add3~135_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~135_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(4));

-- Location: LC_X2_Y3_N9
\Add3~130\ : maxii_lcell
-- Equation(s):
-- \Add3~130_combout\ = (clock_cycle(5) $ (((!\Add3~157\ & \Add3~137\) # (\Add3~157\ & \Add3~137COUT1_192\))))
-- \Add3~132\ = CARRY(((!\Add3~137COUT1_192\) # (!clock_cycle(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(5),
	cin => \Add3~157\,
	cin0 => \Add3~137\,
	cin1 => \Add3~137COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~130_combout\,
	cout => \Add3~132\);

-- Location: LC_X2_Y3_N0
\clock_cycle[5]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(5) = DFFEAS((((\Add3~130_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~130_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(5));

-- Location: LC_X3_Y3_N0
\Add3~125\ : maxii_lcell
-- Equation(s):
-- \Add3~125_combout\ = (clock_cycle(6) $ ((!\Add3~132\)))
-- \Add3~127\ = CARRY(((clock_cycle(6) & !\Add3~132\)))
-- \Add3~127COUT1_194\ = CARRY(((clock_cycle(6) & !\Add3~132\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(6),
	cin => \Add3~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~125_combout\,
	cout0 => \Add3~127\,
	cout1 => \Add3~127COUT1_194\);

-- Location: LC_X4_Y2_N5
\clock_cycle[6]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(6) = DFFEAS((((\Add3~125_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~125_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(6));

-- Location: LC_X5_Y3_N9
\clock_cycle[7]\ : maxii_lcell
-- Equation(s):
-- \Equal0~8\ = (!clock_cycle(6) & (!clock_cycle(5) & (!clock_cycle[7] & !clock_cycle(4))))
-- clock_cycle(7) = DFFEAS(\Equal0~8\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(6),
	datab => clock_cycle(5),
	datac => \Add3~120_combout\,
	datad => clock_cycle(4),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => clock_cycle(7));

-- Location: LC_X3_Y3_N1
\Add3~120\ : maxii_lcell
-- Equation(s):
-- \Add3~120_combout\ = (clock_cycle(7) $ (((!\Add3~132\ & \Add3~127\) # (\Add3~132\ & \Add3~127COUT1_194\))))
-- \Add3~122\ = CARRY(((!\Add3~127\) # (!clock_cycle(7))))
-- \Add3~122COUT1_196\ = CARRY(((!\Add3~127COUT1_194\) # (!clock_cycle(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(7),
	cin => \Add3~132\,
	cin0 => \Add3~127\,
	cin1 => \Add3~127COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~120_combout\,
	cout0 => \Add3~122\,
	cout1 => \Add3~122COUT1_196\);

-- Location: LC_X3_Y3_N2
\Add3~95\ : maxii_lcell
-- Equation(s):
-- \Add3~95_combout\ = (clock_cycle(8) $ ((!(!\Add3~132\ & \Add3~122\) # (\Add3~132\ & \Add3~122COUT1_196\))))
-- \Add3~97\ = CARRY(((clock_cycle(8) & !\Add3~122\)))
-- \Add3~97COUT1_198\ = CARRY(((clock_cycle(8) & !\Add3~122COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(8),
	cin => \Add3~132\,
	cin0 => \Add3~122\,
	cin1 => \Add3~122COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~95_combout\,
	cout0 => \Add3~97\,
	cout1 => \Add3~97COUT1_198\);

-- Location: LC_X7_Y3_N2
\clock_cycle[8]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(8) = DFFEAS((!\Equal0~10_combout\ & (((\Add3~95_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Equal0~10_combout\,
	datad => \Add3~95_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(8));

-- Location: LC_X3_Y3_N3
\Add3~105\ : maxii_lcell
-- Equation(s):
-- \Add3~105_combout\ = (clock_cycle(9) $ (((!\Add3~132\ & \Add3~97\) # (\Add3~132\ & \Add3~97COUT1_198\))))
-- \Add3~107\ = CARRY(((!\Add3~97\) # (!clock_cycle(9))))
-- \Add3~107COUT1_200\ = CARRY(((!\Add3~97COUT1_198\) # (!clock_cycle(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(9),
	cin => \Add3~132\,
	cin0 => \Add3~97\,
	cin1 => \Add3~97COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~105_combout\,
	cout0 => \Add3~107\,
	cout1 => \Add3~107COUT1_200\);

-- Location: LC_X7_Y3_N3
\clock_cycle[9]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(9) = DFFEAS((((\Add3~105_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~105_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(9));

-- Location: LC_X3_Y3_N5
\Add3~90\ : maxii_lcell
-- Equation(s):
-- \Add3~90_combout\ = clock_cycle(11) $ ((((\Add3~102\))))
-- \Add3~92\ = CARRY(((!\Add3~102\)) # (!clock_cycle(11)))
-- \Add3~92COUT1_202\ = CARRY(((!\Add3~102\)) # (!clock_cycle(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(11),
	cin => \Add3~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~90_combout\,
	cout0 => \Add3~92\,
	cout1 => \Add3~92COUT1_202\);

-- Location: LC_X7_Y3_N1
\clock_cycle[11]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(11) = DFFEAS((((\Add3~90_combout\ & !\Equal0~10_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~90_combout\,
	datad => \Equal0~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(11));

-- Location: LC_X3_Y3_N4
\Add3~100\ : maxii_lcell
-- Equation(s):
-- \Add3~100_combout\ = clock_cycle(10) $ ((((!(!\Add3~132\ & \Add3~107\) # (\Add3~132\ & \Add3~107COUT1_200\)))))
-- \Add3~102\ = CARRY((clock_cycle(10) & ((!\Add3~107COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(10),
	cin => \Add3~132\,
	cin0 => \Add3~107\,
	cin1 => \Add3~107COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~100_combout\,
	cout => \Add3~102\);

-- Location: LC_X7_Y3_N4
\clock_cycle[10]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (!clock_cycle(9) & (clock_cycle(11) & (!clock_cycle[10] & clock_cycle(8))))
-- clock_cycle(10) = DFFEAS(\Equal0~6\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(9),
	datab => clock_cycle(11),
	datac => \Add3~100_combout\,
	datad => clock_cycle(8),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => clock_cycle(10));

-- Location: LC_X3_Y3_N6
\Add3~115\ : maxii_lcell
-- Equation(s):
-- \Add3~115_combout\ = (clock_cycle(12) $ ((!(!\Add3~102\ & \Add3~92\) # (\Add3~102\ & \Add3~92COUT1_202\))))
-- \Add3~117\ = CARRY(((clock_cycle(12) & !\Add3~92\)))
-- \Add3~117COUT1_204\ = CARRY(((clock_cycle(12) & !\Add3~92COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(12),
	cin => \Add3~102\,
	cin0 => \Add3~92\,
	cin1 => \Add3~92COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~115_combout\,
	cout0 => \Add3~117\,
	cout1 => \Add3~117COUT1_204\);

-- Location: LC_X5_Y4_N2
\clock_cycle[12]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(12) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~115_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(12));

-- Location: LC_X3_Y3_N7
\Add3~110\ : maxii_lcell
-- Equation(s):
-- \Add3~110_combout\ = (clock_cycle(13) $ (((!\Add3~102\ & \Add3~117\) # (\Add3~102\ & \Add3~117COUT1_204\))))
-- \Add3~112\ = CARRY(((!\Add3~117\) # (!clock_cycle(13))))
-- \Add3~112COUT1_206\ = CARRY(((!\Add3~117COUT1_204\) # (!clock_cycle(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(13),
	cin => \Add3~102\,
	cin0 => \Add3~117\,
	cin1 => \Add3~117COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~110_combout\,
	cout0 => \Add3~112\,
	cout1 => \Add3~112COUT1_206\);

-- Location: LC_X3_Y3_N8
\Add3~85\ : maxii_lcell
-- Equation(s):
-- \Add3~85_combout\ = (clock_cycle(14) $ ((!(!\Add3~102\ & \Add3~112\) # (\Add3~102\ & \Add3~112COUT1_206\))))
-- \Add3~87\ = CARRY(((clock_cycle(14) & !\Add3~112\)))
-- \Add3~87COUT1_208\ = CARRY(((clock_cycle(14) & !\Add3~112COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(14),
	cin => \Add3~102\,
	cin0 => \Add3~112\,
	cin1 => \Add3~112COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~85_combout\,
	cout0 => \Add3~87\,
	cout1 => \Add3~87COUT1_208\);

-- Location: LC_X6_Y3_N0
\clock_cycle[14]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(14) = DFFEAS((((\Add3~85_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~85_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(14));

-- Location: LC_X6_Y3_N8
\clock_cycle[15]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (((!clock_cycle[15] & !clock_cycle(14))))
-- clock_cycle(15) = DFFEAS(\Equal0~5\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~80_combout\,
	datad => clock_cycle(14),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => clock_cycle(15));

-- Location: LC_X3_Y3_N9
\Add3~80\ : maxii_lcell
-- Equation(s):
-- \Add3~80_combout\ = (clock_cycle(15) $ (((!\Add3~102\ & \Add3~87\) # (\Add3~102\ & \Add3~87COUT1_208\))))
-- \Add3~82\ = CARRY(((!\Add3~87COUT1_208\) # (!clock_cycle(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(15),
	cin => \Add3~102\,
	cin0 => \Add3~87\,
	cin1 => \Add3~87COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~80_combout\,
	cout => \Add3~82\);

-- Location: LC_X6_Y3_N7
\clock_cycle[13]\ : maxii_lcell
-- Equation(s):
-- \Equal0~7\ = (!clock_cycle(12) & (\Equal0~6\ & (!clock_cycle[13] & \Equal0~5\)))
-- clock_cycle(13) = DFFEAS(\Equal0~7\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(12),
	datab => \Equal0~6\,
	datac => \Add3~110_combout\,
	datad => \Equal0~5\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => clock_cycle(13));

-- Location: LC_X4_Y3_N0
\Add3~70\ : maxii_lcell
-- Equation(s):
-- \Add3~70_combout\ = (clock_cycle(16) $ ((!\Add3~82\)))
-- \Add3~72\ = CARRY(((clock_cycle(16) & !\Add3~82\)))
-- \Add3~72COUT1_210\ = CARRY(((clock_cycle(16) & !\Add3~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(16),
	cin => \Add3~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~70_combout\,
	cout0 => \Add3~72\,
	cout1 => \Add3~72COUT1_210\);

-- Location: LC_X7_Y3_N8
\clock_cycle[16]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(16) = DFFEAS((((\Add3~70_combout\ & !\Equal0~10_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~70_combout\,
	datad => \Equal0~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(16));

-- Location: LC_X4_Y3_N1
\Add3~75\ : maxii_lcell
-- Equation(s):
-- \Add3~75_combout\ = (clock_cycle(17) $ (((!\Add3~82\ & \Add3~72\) # (\Add3~82\ & \Add3~72COUT1_210\))))
-- \Add3~77\ = CARRY(((!\Add3~72\) # (!clock_cycle(17))))
-- \Add3~77COUT1_212\ = CARRY(((!\Add3~72COUT1_210\) # (!clock_cycle(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(17),
	cin => \Add3~82\,
	cin0 => \Add3~72\,
	cin1 => \Add3~72COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~75_combout\,
	cout0 => \Add3~77\,
	cout1 => \Add3~77COUT1_212\);

-- Location: LC_X4_Y3_N2
\Add3~65\ : maxii_lcell
-- Equation(s):
-- \Add3~65_combout\ = (clock_cycle(18) $ ((!(!\Add3~82\ & \Add3~77\) # (\Add3~82\ & \Add3~77COUT1_212\))))
-- \Add3~67\ = CARRY(((clock_cycle(18) & !\Add3~77\)))
-- \Add3~67COUT1_214\ = CARRY(((clock_cycle(18) & !\Add3~77COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(18),
	cin => \Add3~82\,
	cin0 => \Add3~77\,
	cin1 => \Add3~77COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~65_combout\,
	cout0 => \Add3~67\,
	cout1 => \Add3~67COUT1_214\);

-- Location: LC_X4_Y3_N3
\Add3~60\ : maxii_lcell
-- Equation(s):
-- \Add3~60_combout\ = (clock_cycle(19) $ (((!\Add3~82\ & \Add3~67\) # (\Add3~82\ & \Add3~67COUT1_214\))))
-- \Add3~62\ = CARRY(((!\Add3~67\) # (!clock_cycle(19))))
-- \Add3~62COUT1_216\ = CARRY(((!\Add3~67COUT1_214\) # (!clock_cycle(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(19),
	cin => \Add3~82\,
	cin0 => \Add3~67\,
	cin1 => \Add3~67COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\,
	cout0 => \Add3~62\,
	cout1 => \Add3~62COUT1_216\);

-- Location: LC_X7_Y3_N9
\clock_cycle[19]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(19) = DFFEAS((!\Equal0~10_combout\ & (((\Add3~60_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Equal0~10_combout\,
	datad => \Add3~60_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(19));

-- Location: LC_X7_Y3_N0
\clock_cycle[17]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (clock_cycle(18) & (clock_cycle(16) & (!clock_cycle[17] & clock_cycle(19))))
-- clock_cycle(17) = DFFEAS(\Equal0~3\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(18),
	datab => clock_cycle(16),
	datac => \Add3~75_combout\,
	datad => clock_cycle(19),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => clock_cycle(17));

-- Location: LC_X7_Y3_N6
\clock_cycle[18]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(18) = DFFEAS((((\Add3~65_combout\ & !\Equal0~10_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~65_combout\,
	datad => \Equal0~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(18));

-- Location: LC_X4_Y3_N4
\Add3~45\ : maxii_lcell
-- Equation(s):
-- \Add3~45_combout\ = (clock_cycle(20) $ ((!(!\Add3~82\ & \Add3~62\) # (\Add3~82\ & \Add3~62COUT1_216\))))
-- \Add3~47\ = CARRY(((clock_cycle(20) & !\Add3~62COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(20),
	cin => \Add3~82\,
	cin0 => \Add3~62\,
	cin1 => \Add3~62COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45_combout\,
	cout => \Add3~47\);

-- Location: LC_X7_Y3_N5
\clock_cycle[20]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(20) = DFFEAS((!\Equal0~10_combout\ & (((\Add3~45_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Equal0~10_combout\,
	datad => \Add3~45_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(20));

-- Location: LC_X4_Y3_N5
\Add3~40\ : maxii_lcell
-- Equation(s):
-- \Add3~40_combout\ = (clock_cycle(21) $ ((\Add3~47\)))
-- \Add3~42\ = CARRY(((!\Add3~47\) # (!clock_cycle(21))))
-- \Add3~42COUT1_218\ = CARRY(((!\Add3~47\) # (!clock_cycle(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(21),
	cin => \Add3~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_218\);

-- Location: LC_X6_Y3_N1
\clock_cycle[21]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(21) = DFFEAS((((!\Equal0~10_combout\ & \Add3~40_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Equal0~10_combout\,
	datad => \Add3~40_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(21));

-- Location: LC_X4_Y3_N6
\Add3~55\ : maxii_lcell
-- Equation(s):
-- \Add3~55_combout\ = (clock_cycle(22) $ ((!(!\Add3~47\ & \Add3~42\) # (\Add3~47\ & \Add3~42COUT1_218\))))
-- \Add3~57\ = CARRY(((clock_cycle(22) & !\Add3~42\)))
-- \Add3~57COUT1_220\ = CARRY(((clock_cycle(22) & !\Add3~42COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(22),
	cin => \Add3~47\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout0 => \Add3~57\,
	cout1 => \Add3~57COUT1_220\);

-- Location: LC_X7_Y3_N7
\clock_cycle[22]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(22) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~55_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(22));

-- Location: LC_X6_Y3_N9
\clock_cycle[23]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (!clock_cycle(22) & (clock_cycle(21) & (!clock_cycle[23] & clock_cycle(20))))
-- clock_cycle(23) = DFFEAS(\Equal0~2\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(22),
	datab => clock_cycle(21),
	datac => \Add3~50_combout\,
	datad => clock_cycle(20),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => clock_cycle(23));

-- Location: LC_X4_Y3_N7
\Add3~50\ : maxii_lcell
-- Equation(s):
-- \Add3~50_combout\ = (clock_cycle(23) $ (((!\Add3~47\ & \Add3~57\) # (\Add3~47\ & \Add3~57COUT1_220\))))
-- \Add3~52\ = CARRY(((!\Add3~57\) # (!clock_cycle(23))))
-- \Add3~52COUT1_222\ = CARRY(((!\Add3~57COUT1_220\) # (!clock_cycle(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(23),
	cin => \Add3~47\,
	cin0 => \Add3~57\,
	cin1 => \Add3~57COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50_combout\,
	cout0 => \Add3~52\,
	cout1 => \Add3~52COUT1_222\);

-- Location: LC_X4_Y3_N8
\Add3~35\ : maxii_lcell
-- Equation(s):
-- \Add3~35_combout\ = clock_cycle(24) $ ((((!(!\Add3~47\ & \Add3~52\) # (\Add3~47\ & \Add3~52COUT1_222\)))))
-- \Add3~37\ = CARRY((clock_cycle(24) & ((!\Add3~52\))))
-- \Add3~37COUT1_224\ = CARRY((clock_cycle(24) & ((!\Add3~52COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(24),
	cin => \Add3~47\,
	cin0 => \Add3~52\,
	cin1 => \Add3~52COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_224\);

-- Location: LC_X4_Y2_N7
\clock_cycle[24]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(24) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~35_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(24));

-- Location: LC_X4_Y3_N9
\Add3~30\ : maxii_lcell
-- Equation(s):
-- \Add3~30_combout\ = clock_cycle(25) $ (((((!\Add3~47\ & \Add3~37\) # (\Add3~47\ & \Add3~37COUT1_224\)))))
-- \Add3~32\ = CARRY(((!\Add3~37COUT1_224\)) # (!clock_cycle(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(25),
	cin => \Add3~47\,
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout => \Add3~32\);

-- Location: LC_X4_Y4_N0
\clock_cycle[25]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(25) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~30_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(25));

-- Location: LC_X5_Y3_N0
\Add3~25\ : maxii_lcell
-- Equation(s):
-- \Add3~25_combout\ = clock_cycle(26) $ ((((!\Add3~32\))))
-- \Add3~27\ = CARRY((clock_cycle(26) & ((!\Add3~32\))))
-- \Add3~27COUT1_226\ = CARRY((clock_cycle(26) & ((!\Add3~32\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(26),
	cin => \Add3~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout0 => \Add3~27\,
	cout1 => \Add3~27COUT1_226\);

-- Location: LC_X5_Y3_N8
\clock_cycle[26]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(26) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~25_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(26));

-- Location: LC_X5_Y3_N1
\Add3~20\ : maxii_lcell
-- Equation(s):
-- \Add3~20_combout\ = (clock_cycle(27) $ (((!\Add3~32\ & \Add3~27\) # (\Add3~32\ & \Add3~27COUT1_226\))))
-- \Add3~22\ = CARRY(((!\Add3~27\) # (!clock_cycle(27))))
-- \Add3~22COUT1_228\ = CARRY(((!\Add3~27COUT1_226\) # (!clock_cycle(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(27),
	cin => \Add3~32\,
	cin0 => \Add3~27\,
	cin1 => \Add3~27COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_228\);

-- Location: LC_X5_Y3_N7
\clock_cycle[27]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!clock_cycle(26) & (!clock_cycle(24) & (!clock_cycle[27] & !clock_cycle(25))))
-- clock_cycle(27) = DFFEAS(\Equal0~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(26),
	datab => clock_cycle(24),
	datac => \Add3~20_combout\,
	datad => clock_cycle(25),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => clock_cycle(27));

-- Location: LC_X5_Y3_N2
\Add3~15\ : maxii_lcell
-- Equation(s):
-- \Add3~15_combout\ = clock_cycle(28) $ ((((!(!\Add3~32\ & \Add3~22\) # (\Add3~32\ & \Add3~22COUT1_228\)))))
-- \Add3~17\ = CARRY((clock_cycle(28) & ((!\Add3~22\))))
-- \Add3~17COUT1_230\ = CARRY((clock_cycle(28) & ((!\Add3~22COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(28),
	cin => \Add3~32\,
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_230\);

-- Location: LC_X6_Y3_N3
\clock_cycle[28]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(28) = DFFEAS((((\Add3~15_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \Add3~15_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(28));

-- Location: LC_X5_Y3_N3
\Add3~10\ : maxii_lcell
-- Equation(s):
-- \Add3~10_combout\ = clock_cycle(29) $ (((((!\Add3~32\ & \Add3~17\) # (\Add3~32\ & \Add3~17COUT1_230\)))))
-- \Add3~12\ = CARRY(((!\Add3~17\)) # (!clock_cycle(29)))
-- \Add3~12COUT1_232\ = CARRY(((!\Add3~17COUT1_230\)) # (!clock_cycle(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(29),
	cin => \Add3~32\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_232\);

-- Location: LC_X5_Y4_N5
\clock_cycle[29]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(29) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~10_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(29));

-- Location: LC_X5_Y3_N4
\Add3~5\ : maxii_lcell
-- Equation(s):
-- \Add3~5_combout\ = clock_cycle(30) $ ((((!(!\Add3~32\ & \Add3~12\) # (\Add3~32\ & \Add3~12COUT1_232\)))))
-- \Add3~7\ = CARRY((clock_cycle(30) & ((!\Add3~12COUT1_232\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(30),
	cin => \Add3~32\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout => \Add3~7\);

-- Location: LC_X5_Y3_N6
\clock_cycle[30]\ : maxii_lcell
-- Equation(s):
-- clock_cycle(30) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Add3~5_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock_cycle(30));

-- Location: LC_X6_Y3_N6
\clock_cycle[31]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!clock_cycle(28) & (!clock_cycle(30) & (!clock_cycle[31] & !clock_cycle(29))))
-- clock_cycle(31) = DFFEAS(\Equal0~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \Add3~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => clock_cycle(28),
	datab => clock_cycle(30),
	datac => \Add3~0_combout\,
	datad => clock_cycle(29),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => clock_cycle(31));

-- Location: LC_X5_Y3_N5
\Add3~0\ : maxii_lcell
-- Equation(s):
-- \Add3~0_combout\ = ((\Add3~7\ $ (clock_cycle(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => clock_cycle(31),
	cin => \Add3~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X6_Y3_N4
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3\ & (\Equal0~2\ & (\Equal0~0\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3\,
	datab => \Equal0~2\,
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X6_Y3_N5
\Equal0~10\ : maxii_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8\ & (\Equal0~9\ & (\Equal0~7\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8\,
	datab => \Equal0~9\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X5_Y2_N8
\even_seq[2]\ : maxii_lcell
-- Equation(s):
-- even_seq(2) = DFFEAS(even_seq(2) $ ((((even_seq(1) & \Equal0~10_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => even_seq(2),
	datac => even_seq(1),
	datad => \Equal0~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(2));

-- Location: LC_X5_Y2_N9
\even_seq[3]\ : maxii_lcell
-- Equation(s):
-- even_seq(3) = DFFEAS((even_seq(2) & ((even_seq(1) $ (even_seq(3))))) # (!even_seq(2) & (((even_seq(1) & even_seq(3))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => even_seq(2),
	datac => even_seq(1),
	datad => even_seq(3),
	aclr => \reset~combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(3));

-- Location: LC_X5_Y2_N7
\even_seq[1]\ : maxii_lcell
-- Equation(s):
-- even_seq(1) = DFFEAS(((!even_seq(1) & ((even_seq(2)) # (!even_seq(3))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => even_seq(2),
	datac => even_seq(1),
	datad => even_seq(3),
	aclr => \reset~combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(1));

-- Location: LC_X6_Y2_N9
\natural_out_encoded[0]~0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[0]~0_combout\ = (((!\reset~combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \natural_out_encoded[0]~0_combout\);

-- Location: LC_X6_Y2_N5
\even_out[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \even_out[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(1),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \even_out[1]~reg0_regout\);

-- Location: LC_X7_Y2_N3
\even_out[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \even_out[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(2),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \even_out[2]~reg0_regout\);

-- Location: LC_X7_Y2_N2
\even_out[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \even_out[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(3),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \even_out[3]~reg0_regout\);

-- Location: LC_X6_Y2_N6
\odd_out[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \odd_out[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(1),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \odd_out[1]~reg0_regout\);

-- Location: LC_X7_Y2_N4
\odd_out[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \odd_out[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(2),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \odd_out[2]~reg0_regout\);

-- Location: LC_X7_Y2_N5
\odd_out[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \odd_out[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, even_seq(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => even_seq(3),
	aclr => GND,
	sload => VCC,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \odd_out[3]~reg0_regout\);

-- Location: LC_X5_Y2_N5
\natural_seq_hex[0]\ : maxii_lcell
-- Equation(s):
-- natural_seq_hex(0) = DFFEAS((((!natural_seq_hex(0)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => natural_seq_hex(0),
	aclr => \reset~combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq_hex(0));

-- Location: LC_X5_Y2_N1
\natural_seq_hex[1]\ : maxii_lcell
-- Equation(s):
-- natural_seq_hex(1) = DFFEAS(natural_seq_hex(1) $ (((natural_seq_hex(0) & ((\Equal0~10_combout\))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(0),
	datab => natural_seq_hex(1),
	datad => \Equal0~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq_hex(1));

-- Location: LC_X5_Y2_N6
\natural_seq_hex[2]\ : maxii_lcell
-- Equation(s):
-- natural_seq_hex(2) = DFFEAS(natural_seq_hex(2) $ (((natural_seq_hex(0) & (\Equal0~10_combout\ & natural_seq_hex(1))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(2),
	datab => natural_seq_hex(0),
	datac => \Equal0~10_combout\,
	datad => natural_seq_hex(1),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq_hex(2));

-- Location: LC_X5_Y2_N2
\natural_seq_hex[1]~2\ : maxii_lcell
-- Equation(s):
-- \natural_seq_hex[1]~2_combout\ = (((natural_seq_hex(0) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => natural_seq_hex(0),
	datad => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \natural_seq_hex[1]~2_combout\);

-- Location: LC_X5_Y2_N3
\natural_seq_hex[3]\ : maxii_lcell
-- Equation(s):
-- natural_seq_hex(3) = DFFEAS(natural_seq_hex(3) $ (((natural_seq_hex(2) & (natural_seq_hex(1) & \natural_seq_hex[1]~2_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(2),
	datab => natural_seq_hex(1),
	datac => natural_seq_hex(3),
	datad => \natural_seq_hex[1]~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq_hex(3));

-- Location: LC_X6_Y2_N2
\natural_out_encoded[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[0]~reg0_regout\ = DFFEAS((natural_seq_hex(0) & ((natural_seq_hex(3)) # (natural_seq_hex(1) $ (natural_seq_hex(2))))) # (!natural_seq_hex(0) & ((natural_seq_hex(1)) # (natural_seq_hex(3) $ (natural_seq_hex(2))))), 
-- GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "debe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[0]~reg0_regout\);

-- Location: LC_X6_Y2_N0
\natural_out_encoded[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[1]~reg0_regout\ = DFFEAS((natural_seq_hex(1) & ((natural_seq_hex(3)) # ((natural_seq_hex(2) & !natural_seq_hex(0))))) # (!natural_seq_hex(1) & ((natural_seq_hex(3) $ (natural_seq_hex(2))) # (!natural_seq_hex(0)))), 
-- GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9cfd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[1]~reg0_regout\);

-- Location: LC_X6_Y2_N8
\natural_out_encoded[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[2]~reg0_regout\ = DFFEAS((natural_seq_hex(1) & ((natural_seq_hex(3)) # ((!natural_seq_hex(0))))) # (!natural_seq_hex(1) & ((natural_seq_hex(2) & (natural_seq_hex(3))) # (!natural_seq_hex(2) & ((!natural_seq_hex(0)))))), 
-- GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[2]~reg0_regout\);

-- Location: LC_X6_Y2_N4
\natural_out_encoded[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[3]~reg0_regout\ = DFFEAS((natural_seq_hex(0) & (natural_seq_hex(1) $ (((natural_seq_hex(2)))))) # (!natural_seq_hex(0) & ((natural_seq_hex(1) & ((natural_seq_hex(2)) # (!natural_seq_hex(3)))) # (!natural_seq_hex(1) & 
-- ((natural_seq_hex(3)) # (!natural_seq_hex(2)))))), GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5ae7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[3]~reg0_regout\);

-- Location: LC_X6_Y2_N1
\natural_out_encoded[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[4]~reg0_regout\ = DFFEAS((natural_seq_hex(3) & (((!natural_seq_hex(1) & natural_seq_hex(0))) # (!natural_seq_hex(2)))) # (!natural_seq_hex(3) & (((natural_seq_hex(2)) # (natural_seq_hex(0))) # (!natural_seq_hex(1)))), 
-- GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f3d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[4]~reg0_regout\);

-- Location: LC_X6_Y2_N7
\natural_out_encoded[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[5]~reg0_regout\ = DFFEAS((natural_seq_hex(1) & ((natural_seq_hex(0) & (!natural_seq_hex(3))) # (!natural_seq_hex(0) & ((!natural_seq_hex(2)))))) # (!natural_seq_hex(1) & ((natural_seq_hex(3) $ (!natural_seq_hex(0))) # 
-- (!natural_seq_hex(2)))), GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "671f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[5]~reg0_regout\);

-- Location: LC_X6_Y2_N3
\natural_out_encoded[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \natural_out_encoded[6]~reg0_regout\ = DFFEAS((natural_seq_hex(3) & ((natural_seq_hex(1) $ (!natural_seq_hex(2))) # (!natural_seq_hex(0)))) # (!natural_seq_hex(3) & ((natural_seq_hex(1)) # (natural_seq_hex(2) $ (!natural_seq_hex(0))))), 
-- GLOBAL(\clock~combout\), VCC, , \natural_out_encoded[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b6ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => natural_seq_hex(1),
	datab => natural_seq_hex(3),
	datac => natural_seq_hex(2),
	datad => natural_seq_hex(0),
	aclr => GND,
	ena => \natural_out_encoded[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \natural_out_encoded[6]~reg0_regout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_even_out(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \even_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_even_out(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \even_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_even_out(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \even_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_even_out(3));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_odd_out(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \odd_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_odd_out(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \odd_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_odd_out(2));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \odd_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_odd_out(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[0]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[1]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[2]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[3]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[4]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[5]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(5));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out_encoded[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \natural_out_encoded[6]~reg0_regout\,
	oe => VCC,
	padio => ww_natural_out_encoded(6));
END structure;


