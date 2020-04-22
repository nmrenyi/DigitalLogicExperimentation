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

-- DATE "03/17/2020 22:45:46"

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
	rst : IN std_logic;
	clk : IN std_logic;
	natural_out : OUT std_logic_vector(6 DOWNTO 0);
	odd_out : OUT std_logic_vector(3 DOWNTO 0);
	even_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END DigitalLife;

-- Design Ports Information
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- natural_out[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[3]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[4]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- natural_out[6]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- odd_out[3]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[0]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[2]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- even_out[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_natural_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_odd_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_even_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL natural_seq : std_logic_vector(3 DOWNTO 0);
SIGNAL even_seq : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
natural_out <= ww_natural_out;
odd_out <= ww_odd_out;
even_out <= ww_even_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X6_Y1_N2
\natural_seq[1]\ : maxii_lcell
-- Equation(s):
-- natural_seq(1) = DFFEAS((natural_seq(0) $ (((natural_seq(1))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => natural_seq(0),
	datad => natural_seq(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq(1));

-- Location: LC_X6_Y1_N3
\natural_seq[2]\ : maxii_lcell
-- Equation(s):
-- natural_seq(2) = DFFEAS((natural_seq(0) & ((natural_seq(2) & ((!natural_seq(1)))) # (!natural_seq(2) & ((natural_seq(3)) # (natural_seq(1)))))) # (!natural_seq(0) & (((natural_seq(2))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => natural_seq(3),
	datab => natural_seq(0),
	datac => natural_seq(2),
	datad => natural_seq(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq(2));

-- Location: LC_X6_Y1_N6
\natural_seq[3]\ : maxii_lcell
-- Equation(s):
-- natural_seq(3) = DFFEAS(natural_seq(3) $ (((natural_seq(0) & (natural_seq(1) & natural_seq(2))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => natural_seq(3),
	datab => natural_seq(0),
	datac => natural_seq(1),
	datad => natural_seq(2),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq(3));

-- Location: LC_X6_Y1_N9
\natural_seq[0]\ : maxii_lcell
-- Equation(s):
-- natural_seq(0) = DFFEAS(((natural_seq(3) & (!natural_seq(1) & !natural_seq(2)))) # (!natural_seq(0)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => natural_seq(3),
	datab => natural_seq(1),
	datac => natural_seq(2),
	datad => natural_seq(0),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => natural_seq(0));

-- Location: LC_X6_Y1_N7
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (natural_seq(0) & ((natural_seq(3)) # (natural_seq(1) $ (natural_seq(2))))) # (!natural_seq(0) & ((natural_seq(1)) # (natural_seq(3) $ (natural_seq(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dbfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(0),
	datab => natural_seq(3),
	datac => natural_seq(1),
	datad => natural_seq(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X7_Y1_N3
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (natural_seq(2) & (natural_seq(0) & (natural_seq(3) $ (natural_seq(1))))) # (!natural_seq(2) & (!natural_seq(3) & ((natural_seq(1)) # (natural_seq(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5910",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(3),
	datab => natural_seq(2),
	datac => natural_seq(1),
	datad => natural_seq(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X6_Y1_N8
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (natural_seq(1) & (natural_seq(0) & (!natural_seq(3)))) # (!natural_seq(1) & ((natural_seq(2) & ((!natural_seq(3)))) # (!natural_seq(2) & (natural_seq(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "232a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(0),
	datab => natural_seq(3),
	datac => natural_seq(1),
	datad => natural_seq(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X7_Y1_N7
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (natural_seq(0) & ((natural_seq(2) $ (!natural_seq(1))))) # (!natural_seq(0) & ((natural_seq(3) & (!natural_seq(2) & natural_seq(1))) # (!natural_seq(3) & (natural_seq(2) & !natural_seq(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c324",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(3),
	datab => natural_seq(2),
	datac => natural_seq(1),
	datad => natural_seq(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X6_Y1_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (natural_seq(3) & (natural_seq(2) & ((natural_seq(1)) # (!natural_seq(0))))) # (!natural_seq(3) & (!natural_seq(0) & (natural_seq(1) & !natural_seq(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(0),
	datab => natural_seq(3),
	datac => natural_seq(1),
	datad => natural_seq(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X7_Y1_N6
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (natural_seq(3) & ((natural_seq(0) & ((natural_seq(1)))) # (!natural_seq(0) & (natural_seq(2))))) # (!natural_seq(3) & (natural_seq(2) & (natural_seq(1) $ (natural_seq(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(3),
	datab => natural_seq(2),
	datac => natural_seq(1),
	datad => natural_seq(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X6_Y1_N4
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (natural_seq(3) & (natural_seq(0) & (natural_seq(1) $ (natural_seq(2))))) # (!natural_seq(3) & (!natural_seq(1) & (natural_seq(0) $ (natural_seq(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0982",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => natural_seq(0),
	datab => natural_seq(3),
	datac => natural_seq(1),
	datad => natural_seq(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X3_Y4_N3
\even_seq[2]\ : maxii_lcell
-- Equation(s):
-- even_seq(2) = DFFEAS(((even_seq(1) $ (even_seq(2)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => even_seq(1),
	datad => even_seq(2),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(2));

-- Location: LC_X3_Y4_N0
\even_seq[3]\ : maxii_lcell
-- Equation(s):
-- even_seq(3) = DFFEAS((even_seq(2) & ((even_seq(1) $ (even_seq(3))))) # (!even_seq(2) & (((even_seq(1) & even_seq(3))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => even_seq(2),
	datac => even_seq(1),
	datad => even_seq(3),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(3));

-- Location: LC_X3_Y4_N6
\even_seq[1]\ : maxii_lcell
-- Equation(s):
-- even_seq(1) = DFFEAS((!even_seq(1) & (((even_seq(2)) # (!even_seq(3))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => even_seq(1),
	datac => even_seq(3),
	datad => even_seq(2),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => even_seq(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_natural_out(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_natural_out(1));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_natural_out(2));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_natural_out(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_natural_out(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_natural_out(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\natural_out[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_natural_out(6));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_odd_out(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(1),
	oe => VCC,
	padio => ww_odd_out(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(2),
	oe => VCC,
	padio => ww_odd_out(2));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\odd_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(3),
	oe => VCC,
	padio => ww_odd_out(3));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_even_out(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(1),
	oe => VCC,
	padio => ww_even_out(1));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(2),
	oe => VCC,
	padio => ww_even_out(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\even_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => even_seq(3),
	oe => VCC,
	padio => ww_even_out(3));
END structure;


