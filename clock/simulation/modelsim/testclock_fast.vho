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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/27/2016 08:12:55"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stopwatch_01 IS
    PORT (
	clk : IN std_logic;
	key_reset : IN std_logic;
	key_start_pasue : IN std_logic;
	key_display_stop : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic
	);
END stopwatch_01;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led0	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led3	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key_reset	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_start_pasue	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_display_stop	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key_reset : std_logic;
SIGNAL ww_key_start_pasue : std_logic;
SIGNAL ww_key_display_stop : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \Add11~36_combout\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Add11~61\ : std_logic;
SIGNAL \Add11~62_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \msecond_counter_low~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \counter2~4_combout\ : std_logic;
SIGNAL \counter1~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \second_counter_low~2_combout\ : std_logic;
SIGNAL \second_counter_high~7_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \key_start_pasue~combout\ : std_logic;
SIGNAL \counter1[26]~feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add11~41\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~53\ : std_logic;
SIGNAL \Add11~54_combout\ : std_logic;
SIGNAL \Add11~55\ : std_logic;
SIGNAL \Add11~57\ : std_logic;
SIGNAL \Add11~58_combout\ : std_logic;
SIGNAL \Add11~59\ : std_logic;
SIGNAL \Add11~60_combout\ : std_logic;
SIGNAL \Add11~56_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add11~48_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add11~42_combout\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \led0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \counter1[25]~feeder_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \counter1[27]~feeder_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \counter1~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter1~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter1~3_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \start~regout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \key_reset~combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \counter2[0]~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter2~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \counter2~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counter2~3_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \reset~0_combout\ : std_logic;
SIGNAL \msecond_counter_low~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \msecond_counter_low~4_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \msecond_counter_low~3_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \msecond_counter_low~5_combout\ : std_logic;
SIGNAL \msecond_counter_low~1_combout\ : std_logic;
SIGNAL \msecond_display_low~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \key_display_stop~combout\ : std_logic;
SIGNAL \led2~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \counter3~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counter3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \counter3~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \counter3~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \display~regout\ : std_logic;
SIGNAL \display~0_combout\ : std_logic;
SIGNAL \msecond_display_low[0]~1_combout\ : std_logic;
SIGNAL \hour_display_high~0_combout\ : std_logic;
SIGNAL \msecond_display_low~2_combout\ : std_logic;
SIGNAL \msecond_display_low~3_combout\ : std_logic;
SIGNAL \msecond_display_low~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \msecond_counter_high~5_combout\ : std_logic;
SIGNAL \msecond_counter_high~1_combout\ : std_logic;
SIGNAL \msecond_counter_high~3_combout\ : std_logic;
SIGNAL \msecond_counter_high~0_combout\ : std_logic;
SIGNAL \msecond_display_high~1_combout\ : std_logic;
SIGNAL \msecond_counter_high~2_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \msecond_counter_high~4_combout\ : std_logic;
SIGNAL \msecond_display_high~2_combout\ : std_logic;
SIGNAL \msecond_display_high~0_combout\ : std_logic;
SIGNAL \msecond_display_high~3_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \second_counter_low~1_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \second_counter_low~3_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \second_counter_low~0_combout\ : std_logic;
SIGNAL \second_display_low~1_combout\ : std_logic;
SIGNAL \second_display_low~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \second_counter_low~4_combout\ : std_logic;
SIGNAL \second_counter_low~5_combout\ : std_logic;
SIGNAL \second_display_low~3_combout\ : std_logic;
SIGNAL \second_display_low~4_combout\ : std_logic;
SIGNAL \second_display_low~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \led_second_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \second_counter_high~4_combout\ : std_logic;
SIGNAL \second_counter_high~8_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \second_counter_high~5_combout\ : std_logic;
SIGNAL \second_counter_high~3_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \second_counter_high~6_combout\ : std_logic;
SIGNAL \second_counter_high~2_combout\ : std_logic;
SIGNAL \second_display_high~1_combout\ : std_logic;
SIGNAL \second_display_high~2_combout\ : std_logic;
SIGNAL \second_display_high~3_combout\ : std_logic;
SIGNAL \second_display_high~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \led_second_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \minute_counter_low~1_combout\ : std_logic;
SIGNAL \minute_counter_low~0_combout\ : std_logic;
SIGNAL \minute_counter_low~2_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \minute_counter_low~3_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \minute_counter_low~4_combout\ : std_logic;
SIGNAL \minute_counter_low~5_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \minute_display_low~1_combout\ : std_logic;
SIGNAL \minute_display_low~3_combout\ : std_logic;
SIGNAL \minute_display_low~4_combout\ : std_logic;
SIGNAL \minute_display_low~2_combout\ : std_logic;
SIGNAL \minute_display_low~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \minute_counter_high~5_combout\ : std_logic;
SIGNAL \minute_counter_high~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \minute_counter_high~3_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \minute_counter_high~2_combout\ : std_logic;
SIGNAL \minute_counter_high~1_combout\ : std_logic;
SIGNAL \minute_counter_high~4_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \minute_display_high~3_combout\ : std_logic;
SIGNAL \minute_display_high~2_combout\ : std_logic;
SIGNAL \minute_display_high~0_combout\ : std_logic;
SIGNAL \minute_display_high~1_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \hour_counter_low~2_combout\ : std_logic;
SIGNAL \hour_counter_low~0_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \hour_counter_low~4_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \hour_counter_low~3_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \hour_display_low~2_combout\ : std_logic;
SIGNAL \hour_counter_low~5_combout\ : std_logic;
SIGNAL \hour_counter_low~1_combout\ : std_logic;
SIGNAL \hour_display_low~3_combout\ : std_logic;
SIGNAL \hour_display_low~1_combout\ : std_logic;
SIGNAL \hour_display_low~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \hour_counter_high~0_combout\ : std_logic;
SIGNAL \hour_display_high~1_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \hour_counter_high~1_combout\ : std_logic;
SIGNAL \hour_display_high~2_combout\ : std_logic;
SIGNAL \hour_counter_high~2_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \hour_counter_high~3_combout\ : std_logic;
SIGNAL \hour_display_high~4_combout\ : std_logic;
SIGNAL \hour_display_high~3_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \led_hour_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \led0~1_combout\ : std_logic;
SIGNAL \led0~reg0_regout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \led2~1_combout\ : std_logic;
SIGNAL \led2~reg0_regout\ : std_logic;
SIGNAL second_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL counter3 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter1 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \led_hour_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_hour_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_minute_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_minute_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_second_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_second_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_msecond_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \led_msecond_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_key_reset <= key_reset;
ww_key_start_pasue <= key_start_pasue;
ww_key_display_stop <= key_display_stop;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\led_hour_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \led_hour_display_high|WideOr0~0_combout\;
\led_hour_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \led_hour_display_low|WideOr0~0_combout\;
\led_minute_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \led_minute_display_high|WideOr0~0_combout\;
\led_minute_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \led_minute_display_low|WideOr0~0_combout\;
\led_second_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \led_second_display_high|WideOr0~0_combout\;
\led_second_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \led_second_display_low|WideOr0~0_combout\;
\led_msecond_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \led_msecond_display_high|WideOr0~0_combout\;
\led_msecond_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \led_msecond_display_low|WideOr0~0_combout\;

-- Location: LCCOMB_X36_Y16_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counter2(3) & (!\Add2~5\)) # (!counter2(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counter2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X36_Y16_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counter2(5) & (!\Add2~9\)) # (!counter2(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counter2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X36_Y16_N20
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counter2(10) & (\Add2~19\ $ (GND))) # (!counter2(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counter2(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X36_Y16_N24
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counter2(12) & (\Add2~23\ $ (GND))) # (!counter2(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counter2(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X36_Y15_N16
\Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (counter2(24) & (\Add2~47\ $ (GND))) # (!counter2(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((counter2(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X36_Y15_N20
\Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (counter2(26) & (\Add2~51\ $ (GND))) # (!counter2(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((counter2(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X35_Y18_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter1(4) & (\Add0~7\ $ (GND))) # (!counter1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X35_Y18_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter1(8) & (\Add0~15\ $ (GND))) # (!counter1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X35_Y18_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter1(10) & (\Add0~19\ $ (GND))) # (!counter1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X35_Y17_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter1(16) & (\Add0~31\ $ (GND))) # (!counter1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X35_Y17_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter1(26) & (\Add0~51\ $ (GND))) # (!counter1(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter1(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X33_Y17_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter3(3) & (!\Add1~5\)) # (!counter3(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X33_Y17_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter3(12) & (\Add1~23\ $ (GND))) # (!counter3(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter3(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X33_Y16_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter3(24) & (\Add1~47\ $ (GND))) # (!counter3(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter3(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X33_Y16_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counter3(26) & (\Add1~51\ $ (GND))) # (!counter3(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counter3(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X37_Y19_N10
\Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (counter(5) & (!\Add11~9\)) # (!counter(5) & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X37_Y19_N16
\Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (counter(8) & (\Add11~15\ $ (GND))) # (!counter(8) & (!\Add11~15\ & VCC))
-- \Add11~17\ = CARRY((counter(8) & !\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X37_Y19_N20
\Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (counter(10) & (\Add11~19\ $ (GND))) # (!counter(10) & (!\Add11~19\ & VCC))
-- \Add11~21\ = CARRY((counter(10) & !\Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X37_Y19_N24
\Add11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (counter(12) & (\Add11~23\ $ (GND))) # (!counter(12) & (!\Add11~23\ & VCC))
-- \Add11~25\ = CARRY((counter(12) & !\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X37_Y18_N0
\Add11~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = (counter(16) & (\Add11~31\ $ (GND))) # (!counter(16) & (!\Add11~31\ & VCC))
-- \Add11~33\ = CARRY((counter(16) & !\Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \Add11~31\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X37_Y18_N2
\Add11~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (counter(17) & (!\Add11~33\)) # (!counter(17) & ((\Add11~33\) # (GND)))
-- \Add11~35\ = CARRY((!\Add11~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~34_combout\,
	cout => \Add11~35\);

-- Location: LCCOMB_X37_Y18_N4
\Add11~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~36_combout\ = (counter(18) & (\Add11~35\ $ (GND))) # (!counter(18) & (!\Add11~35\ & VCC))
-- \Add11~37\ = CARRY((counter(18) & !\Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add11~35\,
	combout => \Add11~36_combout\,
	cout => \Add11~37\);

-- Location: LCCOMB_X37_Y18_N6
\Add11~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (counter(19) & (!\Add11~37\)) # (!counter(19) & ((\Add11~37\) # (GND)))
-- \Add11~39\ = CARRY((!\Add11~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add11~37\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X37_Y18_N20
\Add11~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = (counter(26) & (\Add11~51\ $ (GND))) # (!counter(26) & (!\Add11~51\ & VCC))
-- \Add11~53\ = CARRY((counter(26) & !\Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datad => VCC,
	cin => \Add11~51\,
	combout => \Add11~52_combout\,
	cout => \Add11~53\);

-- Location: LCCOMB_X37_Y18_N28
\Add11~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~60_combout\ = (counter(30) & (\Add11~59\ $ (GND))) # (!counter(30) & (!\Add11~59\ & VCC))
-- \Add11~61\ = CARRY((counter(30) & !\Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add11~59\,
	combout => \Add11~60_combout\,
	cout => \Add11~61\);

-- Location: LCCOMB_X37_Y18_N30
\Add11~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~62_combout\ = \Add11~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add11~61\,
	combout => \Add11~62_combout\);

-- Location: LCFF_X36_Y16_N7
\counter2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~6_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(3));

-- Location: LCFF_X35_Y16_N13
\counter2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter2~4_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(5));

-- Location: LCFF_X36_Y16_N21
\counter2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~20_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(10));

-- Location: LCFF_X36_Y16_N25
\counter2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~24_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(12));

-- Location: LCCOMB_X35_Y16_N10
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!counter2(15) & (!counter2(14) & (!counter2(13) & !counter2(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datab => counter2(14),
	datac => counter2(13),
	datad => counter2(12),
	combout => \Equal3~3_combout\);

-- Location: LCFF_X36_Y15_N17
\counter2[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~48_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(24));

-- Location: LCFF_X36_Y15_N21
\counter2[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~52_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(26));

-- Location: LCCOMB_X35_Y15_N20
\Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!counter2(26) & (!counter2(27) & (!counter2(24) & !counter2(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(26),
	datab => counter2(27),
	datac => counter2(24),
	datad => counter2(25),
	combout => \Equal3~7_combout\);

-- Location: LCFF_X34_Y18_N11
\counter1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1~2_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(4));

-- Location: LCFF_X35_Y18_N17
\counter1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(8));

-- Location: LCFF_X35_Y18_N21
\counter1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(10));

-- Location: LCCOMB_X34_Y18_N16
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter1(8) & (!counter1(9) & (!counter1(10) & !counter1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(8),
	datab => counter1(9),
	datac => counter1(10),
	datad => counter1(11),
	combout => \Equal1~2_combout\);

-- Location: LCFF_X35_Y18_N25
\counter1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~32_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(16));

-- Location: LCFF_X34_Y17_N15
\counter1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1[26]~feeder_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(26));

-- Location: LCCOMB_X34_Y17_N18
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!counter1(25) & (!counter1(27) & (!counter1(26) & !counter1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(25),
	datab => counter1(27),
	datac => counter1(26),
	datad => counter1(24),
	combout => \Equal1~7_combout\);

-- Location: LCFF_X33_Y17_N7
\counter3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(3));

-- Location: LCFF_X33_Y17_N25
\counter3[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~24_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(12));

-- Location: LCCOMB_X32_Y17_N12
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!counter3(12) & (!counter3(15) & (!counter3(13) & !counter3(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(12),
	datab => counter3(15),
	datac => counter3(13),
	datad => counter3(14),
	combout => \Equal2~3_combout\);

-- Location: LCFF_X33_Y16_N17
\counter3[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~48_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(24));

-- Location: LCFF_X33_Y16_N21
\counter3[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~52_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(26));

-- Location: LCCOMB_X32_Y16_N12
\Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!counter3(27) & (!counter3(26) & (!counter3(24) & !counter3(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(27),
	datab => counter3(26),
	datac => counter3(24),
	datad => counter3(25),
	combout => \Equal2~7_combout\);

-- Location: LCFF_X36_Y19_N13
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCFF_X36_Y19_N21
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCFF_X37_Y19_N21
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X36_Y19_N6
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(11) & (!counter(10) & (counter(8) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(10),
	datac => counter(8),
	datad => counter(9),
	combout => \Equal0~2_combout\);

-- Location: LCFF_X37_Y19_N25
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCFF_X36_Y18_N31
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCFF_X37_Y18_N7
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X36_Y18_N12
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter(18) & (counter(16) & (counter(17) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(16),
	datac => counter(17),
	datad => counter(19),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X37_Y18_N21
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCFF_X37_Y18_N31
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LCCOMB_X33_Y18_N20
\msecond_counter_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~0_combout\ = msecond_counter_low(1) $ (((\start~0_combout\ & msecond_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_low(1),
	datac => \start~0_combout\,
	datad => msecond_counter_low(0),
	combout => \msecond_counter_low~0_combout\);

-- Location: LCCOMB_X34_Y18_N20
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = msecond_counter_high(3) $ (((msecond_counter_high(0) & (msecond_counter_high(1) & msecond_counter_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => msecond_counter_high(3),
	combout => \Add4~0_combout\);

-- Location: LCFF_X35_Y20_N31
\second_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(1));

-- Location: LCFF_X35_Y20_N15
\second_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~7_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(2));

-- Location: LCCOMB_X35_Y20_N8
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = second_counter_high(3) $ (((second_counter_high(1) & (second_counter_high(0) & second_counter_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(1),
	datab => second_counter_high(0),
	datac => second_counter_high(2),
	datad => second_counter_high(3),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = minute_counter_low(3) $ (((minute_counter_low(0) & (minute_counter_low(2) & minute_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(0),
	datab => minute_counter_low(2),
	datac => minute_counter_low(3),
	datad => minute_counter_low(1),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X31_Y20_N12
\Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = hour_counter_high(2) $ (((hour_counter_high(1) & hour_counter_high(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_counter_high(2),
	datac => hour_counter_high(1),
	datad => hour_counter_high(0),
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X35_Y16_N12
\counter2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter2~4_combout\ = (\Add2~10_combout\ & ((!\Equal3~4_combout\) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Add2~10_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter2~4_combout\);

-- Location: LCCOMB_X34_Y18_N10
\counter1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1~2_combout\ = (\Add0~8_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \counter1~2_combout\);

-- Location: LCCOMB_X36_Y19_N12
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add11~10_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add11~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~1_combout\);

-- Location: LCCOMB_X36_Y19_N20
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add11~16_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add11~16_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X36_Y18_N30
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add11~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add11~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~5_combout\);

-- Location: LCCOMB_X35_Y20_N30
\second_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~2_combout\ = (\reset~0_combout\ & (\second_counter_low~0_combout\ & ((\Equal6~1_combout\) # (\Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \second_counter_low~0_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_low~2_combout\);

-- Location: LCCOMB_X35_Y20_N14
\second_counter_high~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~7_combout\ = (\reset~0_combout\ & (\second_counter_high~3_combout\ & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datac => \second_counter_high~3_combout\,
	datad => \Equal7~1_combout\,
	combout => \second_counter_high~7_combout\);

-- Location: LCCOMB_X33_Y18_N30
\Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!msecond_counter_low(2) & msecond_counter_low(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => msecond_counter_low(2),
	datad => msecond_counter_low(3),
	combout => \Equal4~5_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_start_pasue~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_start_pasue,
	combout => \key_start_pasue~combout\);

-- Location: LCCOMB_X34_Y17_N14
\counter1[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1[26]~feeder_combout\ = \Add0~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~52_combout\,
	combout => \counter1[26]~feeder_combout\);

-- Location: LCCOMB_X35_Y18_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter1(0) $ (VCC)
-- \Add0~1\ = CARRY(counter1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X35_Y18_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter1(5) & (!\Add0~9\)) # (!counter1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X35_Y18_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter1(6) & (\Add0~11\ $ (GND))) # (!counter1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X35_Y18_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter1(7) & (!\Add0~13\)) # (!counter1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X37_Y19_N0
\Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = counter(0) $ (VCC)
-- \Add11~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X36_Y19_N16
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add11~0_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add11~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~0_combout\);

-- Location: LCFF_X36_Y19_N17
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X37_Y19_N2
\Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (counter(1) & (!\Add11~1\)) # (!counter(1) & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCFF_X37_Y19_N3
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X37_Y19_N4
\Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (counter(2) & (\Add11~3\ $ (GND))) # (!counter(2) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((counter(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCFF_X37_Y19_N5
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X37_Y19_N6
\Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (counter(3) & (!\Add11~5\)) # (!counter(3) & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X37_Y19_N8
\Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (counter(4) & (\Add11~7\ $ (GND))) # (!counter(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((counter(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCFF_X37_Y19_N9
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X37_Y19_N12
\Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (counter(6) & (\Add11~11\ $ (GND))) # (!counter(6) & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((counter(6) & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCFF_X37_Y19_N13
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X37_Y19_N14
\Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (counter(7) & (!\Add11~13\)) # (!counter(7) & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCFF_X37_Y19_N15
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X36_Y19_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(5) & (!counter(6) & (!counter(4) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(4),
	datad => counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y19_N18
\Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (counter(9) & (!\Add11~17\)) # (!counter(9) & ((\Add11~17\) # (GND)))
-- \Add11~19\ = CARRY((!\Add11~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCFF_X37_Y19_N19
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X37_Y19_N22
\Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (counter(11) & (!\Add11~21\)) # (!counter(11) & ((\Add11~21\) # (GND)))
-- \Add11~23\ = CARRY((!\Add11~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCFF_X37_Y19_N23
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X37_Y19_N26
\Add11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (counter(13) & (!\Add11~25\)) # (!counter(13) & ((\Add11~25\) # (GND)))
-- \Add11~27\ = CARRY((!\Add11~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X36_Y19_N28
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add11~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add11~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~3_combout\);

-- Location: LCFF_X36_Y19_N29
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X37_Y19_N28
\Add11~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (counter(14) & (\Add11~27\ $ (GND))) # (!counter(14) & (!\Add11~27\ & VCC))
-- \Add11~29\ = CARRY((counter(14) & !\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCFF_X37_Y19_N29
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X37_Y19_N30
\Add11~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (counter(15) & (!\Add11~29\)) # (!counter(15) & ((\Add11~29\) # (GND)))
-- \Add11~31\ = CARRY((!\Add11~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add11~29\,
	combout => \Add11~30_combout\,
	cout => \Add11~31\);

-- Location: LCCOMB_X36_Y19_N14
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add11~30_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add11~30_combout\,
	combout => \counter~4_combout\);

-- Location: LCFF_X36_Y19_N15
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X36_Y19_N8
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(12) & (!counter(14) & (counter(15) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(14),
	datac => counter(15),
	datad => counter(13),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X37_Y19_N7
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X36_Y19_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(2) & (!counter(3) & (!counter(0) & !counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(0),
	datad => counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y19_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X36_Y18_N26
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add11~36_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~36_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	combout => \counter~7_combout\);

-- Location: LCFF_X36_Y18_N27
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X36_Y18_N16
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add11~34_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~34_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	combout => \counter~6_combout\);

-- Location: LCFF_X36_Y18_N17
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X37_Y18_N8
\Add11~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (counter(20) & (\Add11~39\ $ (GND))) # (!counter(20) & (!\Add11~39\ & VCC))
-- \Add11~41\ = CARRY((counter(20) & !\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~40_combout\,
	cout => \Add11~41\);

-- Location: LCFF_X37_Y18_N9
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X37_Y18_N10
\Add11~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~42_combout\ = (counter(21) & (!\Add11~41\)) # (!counter(21) & ((\Add11~41\) # (GND)))
-- \Add11~43\ = CARRY((!\Add11~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add11~41\,
	combout => \Add11~42_combout\,
	cout => \Add11~43\);

-- Location: LCCOMB_X37_Y18_N12
\Add11~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (counter(22) & (\Add11~43\ $ (GND))) # (!counter(22) & (!\Add11~43\ & VCC))
-- \Add11~45\ = CARRY((counter(22) & !\Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add11~43\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X37_Y18_N14
\Add11~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (counter(23) & (!\Add11~45\)) # (!counter(23) & ((\Add11~45\) # (GND)))
-- \Add11~47\ = CARRY((!\Add11~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~46_combout\,
	cout => \Add11~47\);

-- Location: LCFF_X37_Y18_N15
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X37_Y18_N16
\Add11~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~48_combout\ = (counter(24) & (\Add11~47\ $ (GND))) # (!counter(24) & (!\Add11~47\ & VCC))
-- \Add11~49\ = CARRY((counter(24) & !\Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \Add11~47\,
	combout => \Add11~48_combout\,
	cout => \Add11~49\);

-- Location: LCCOMB_X37_Y18_N18
\Add11~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (counter(25) & (!\Add11~49\)) # (!counter(25) & ((\Add11~49\) # (GND)))
-- \Add11~51\ = CARRY((!\Add11~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add11~49\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCFF_X37_Y18_N19
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X37_Y18_N22
\Add11~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~54_combout\ = (counter(27) & (!\Add11~53\)) # (!counter(27) & ((\Add11~53\) # (GND)))
-- \Add11~55\ = CARRY((!\Add11~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add11~53\,
	combout => \Add11~54_combout\,
	cout => \Add11~55\);

-- Location: LCFF_X37_Y18_N23
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCCOMB_X37_Y18_N24
\Add11~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~56_combout\ = (counter(28) & (\Add11~55\ $ (GND))) # (!counter(28) & (!\Add11~55\ & VCC))
-- \Add11~57\ = CARRY((counter(28) & !\Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add11~55\,
	combout => \Add11~56_combout\,
	cout => \Add11~57\);

-- Location: LCCOMB_X37_Y18_N26
\Add11~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~58_combout\ = (counter(29) & (!\Add11~57\)) # (!counter(29) & ((\Add11~57\) # (GND)))
-- \Add11~59\ = CARRY((!\Add11~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add11~57\,
	combout => \Add11~58_combout\,
	cout => \Add11~59\);

-- Location: LCFF_X37_Y18_N27
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCFF_X37_Y18_N29
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCFF_X37_Y18_N25
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: LCCOMB_X36_Y18_N14
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter(31) & (!counter(30) & (!counter(29) & !counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => counter(30),
	datac => counter(29),
	datad => counter(28),
	combout => \Equal0~8_combout\);

-- Location: LCFF_X37_Y18_N17
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X36_Y18_N4
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter(26) & (!counter(27) & (!counter(24) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datab => counter(27),
	datac => counter(24),
	datad => counter(25),
	combout => \Equal0~7_combout\);

-- Location: LCFF_X37_Y18_N11
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCFF_X37_Y18_N13
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X36_Y18_N18
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter(23) & (!counter(21) & (!counter(20) & !counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(21),
	datac => counter(20),
	datad => counter(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X36_Y18_N8
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X36_Y18_N22
\led0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led0~0_combout\ = (!\key_start_pasue~combout\ & (\Equal0~9_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_start_pasue~combout\,
	datab => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \led0~0_combout\);

-- Location: LCFF_X35_Y18_N15
\counter1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(7));

-- Location: LCCOMB_X35_Y18_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter1(9) & (!\Add0~17\)) # (!counter1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X35_Y18_N19
\counter1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(9));

-- Location: LCCOMB_X35_Y18_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter1(11) & (!\Add0~21\)) # (!counter1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X35_Y18_N23
\counter1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(11));

-- Location: LCCOMB_X35_Y18_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter1(12) & (\Add0~23\ $ (GND))) # (!counter1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCFF_X36_Y18_N21
\counter1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~24_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(12));

-- Location: LCCOMB_X35_Y18_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter1(13) & (!\Add0~25\)) # (!counter1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCFF_X35_Y18_N27
\counter1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~26_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(13));

-- Location: LCCOMB_X35_Y18_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter1(14) & (\Add0~27\ $ (GND))) # (!counter1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCFF_X36_Y18_N23
\counter1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~28_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(14));

-- Location: LCCOMB_X35_Y18_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter1(15) & (!\Add0~29\)) # (!counter1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X35_Y17_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter1(17) & (!\Add0~33\)) # (!counter1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X34_Y18_N25
\counter1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~34_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(17));

-- Location: LCCOMB_X35_Y17_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter1(18) & (\Add0~35\ $ (GND))) # (!counter1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X35_Y17_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter1(19) & (!\Add0~37\)) # (!counter1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X35_Y17_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter1(20) & (\Add0~39\ $ (GND))) # (!counter1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCFF_X34_Y17_N17
\counter1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~40_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(20));

-- Location: LCCOMB_X35_Y17_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter1(21) & (!\Add0~41\)) # (!counter1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X35_Y17_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter1(22) & (\Add0~43\ $ (GND))) # (!counter1(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter1(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X35_Y17_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter1(23) & (!\Add0~45\)) # (!counter1(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCFF_X34_Y17_N23
\counter1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~46_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(23));

-- Location: LCFF_X34_Y17_N31
\counter1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~42_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(21));

-- Location: LCFF_X34_Y17_N13
\counter1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~44_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(22));

-- Location: LCCOMB_X34_Y17_N20
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!counter1(20) & (!counter1(23) & (!counter1(21) & !counter1(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(20),
	datab => counter1(23),
	datac => counter1(21),
	datad => counter1(22),
	combout => \Equal1~6_combout\);

-- Location: LCFF_X35_Y18_N1
\counter1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~36_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(18));

-- Location: LCFF_X34_Y18_N3
\counter1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~38_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(19));

-- Location: LCCOMB_X34_Y18_N24
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!counter1(16) & (!counter1(18) & (!counter1(17) & !counter1(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(16),
	datab => counter1(18),
	datac => counter1(17),
	datad => counter1(19),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X35_Y17_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter1(24) & (\Add0~47\ $ (GND))) # (!counter1(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter1(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCFF_X34_Y17_N27
\counter1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~48_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(24));

-- Location: LCCOMB_X35_Y17_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter1(25) & (!\Add0~49\)) # (!counter1(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X34_Y17_N24
\counter1[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1[25]~feeder_combout\ = \Add0~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~50_combout\,
	combout => \counter1[25]~feeder_combout\);

-- Location: LCFF_X34_Y17_N25
\counter1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1[25]~feeder_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(25));

-- Location: LCCOMB_X35_Y17_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter1(27) & (!\Add0~53\)) # (!counter1(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X34_Y17_N28
\counter1[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1[27]~feeder_combout\ = \Add0~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~54_combout\,
	combout => \counter1[27]~feeder_combout\);

-- Location: LCFF_X34_Y17_N29
\counter1[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1[27]~feeder_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(27));

-- Location: LCCOMB_X35_Y17_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter1(28) & (\Add0~55\ $ (GND))) # (!counter1(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter1(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X35_Y17_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter1(29) & (!\Add0~57\)) # (!counter1(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X35_Y17_N27
\counter1[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(29));

-- Location: LCCOMB_X35_Y17_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter1(30) & (\Add0~59\ $ (GND))) # (!counter1(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter1(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X35_Y17_N29
\counter1[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(30));

-- Location: LCCOMB_X35_Y17_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter1(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter1(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCFF_X35_Y17_N31
\counter1[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(31));

-- Location: LCFF_X35_Y17_N25
\counter1[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(28));

-- Location: LCCOMB_X34_Y17_N0
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!counter1(29) & (!counter1(31) & (!counter1(28) & !counter1(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(29),
	datab => counter1(31),
	datac => counter1(28),
	datad => counter1(30),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X34_Y18_N28
\Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (\Equal1~6_combout\ & (\Equal1~5_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X36_Y18_N28
\counter1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1~1_combout\ = (\Add0~0_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal1~9_combout\,
	combout => \counter1~1_combout\);

-- Location: LCFF_X36_Y18_N29
\counter1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1~1_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(0));

-- Location: LCCOMB_X35_Y18_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter1(1) & (!\Add0~1\)) # (!counter1(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X36_Y18_N10
\counter1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1~0_combout\ = (\Add0~2_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Equal1~9_combout\,
	combout => \counter1~0_combout\);

-- Location: LCFF_X36_Y18_N11
\counter1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1~0_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(1));

-- Location: LCCOMB_X35_Y18_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter1(2) & (\Add0~3\ $ (GND))) # (!counter1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X35_Y18_N5
\counter1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(2));

-- Location: LCCOMB_X35_Y18_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter1(3) & (!\Add0~5\)) # (!counter1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y18_N8
\counter1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter1~3_combout\ = (\Add0~10_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \counter1~3_combout\);

-- Location: LCFF_X34_Y18_N9
\counter1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter1~3_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(5));

-- Location: LCFF_X35_Y18_N13
\counter1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(6));

-- Location: LCCOMB_X34_Y18_N30
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (counter1(4) & (counter1(5) & (!counter1(6) & !counter1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(4),
	datab => counter1(5),
	datac => counter1(6),
	datad => counter1(7),
	combout => \Equal1~1_combout\);

-- Location: LCFF_X36_Y18_N25
\counter1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~30_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(15));

-- Location: LCCOMB_X36_Y18_N24
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter1(12) & (!counter1(14) & (!counter1(15) & !counter1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(12),
	datab => counter1(14),
	datac => counter1(15),
	datad => counter1(13),
	combout => \Equal1~3_combout\);

-- Location: LCFF_X36_Y18_N7
\counter1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~6_combout\,
	sload => VCC,
	ena => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter1(3));

-- Location: LCCOMB_X36_Y18_N6
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (counter1(1) & (!counter1(0) & (!counter1(3) & !counter1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(1),
	datab => counter1(0),
	datac => counter1(3),
	datad => counter1(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X34_Y18_N18
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X36_Y18_N20
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCFF_X34_Y18_N1
start : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start~0_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start~regout\);

-- Location: LCCOMB_X34_Y18_N0
\start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = \start~regout\ $ (((!\key_start_pasue~combout\ & (\Equal1~4_combout\ & \Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_start_pasue~combout\,
	datab => \Equal1~4_combout\,
	datac => \start~regout\,
	datad => \Equal1~9_combout\,
	combout => \start~0_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_reset,
	combout => \key_reset~combout\);

-- Location: LCCOMB_X36_Y16_N16
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counter2(8) & (\Add2~15\ $ (GND))) # (!counter2(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counter2(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X36_Y17_N16
\counter2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter2[0]~1_combout\ = (!\key_reset~combout\ & (\Equal0~9_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_reset~combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter2[0]~1_combout\);

-- Location: LCFF_X36_Y16_N17
\counter2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~16_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(8));

-- Location: LCCOMB_X35_Y16_N0
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!counter2(10) & (!counter2(11) & (!counter2(8) & !counter2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(10),
	datab => counter2(11),
	datac => counter2(8),
	datad => counter2(9),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X36_Y16_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counter2(0) $ (VCC)
-- \Add2~1\ = CARRY(counter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X35_Y16_N30
\counter2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter2~2_combout\ = (\Add2~0_combout\ & ((!\Equal3~4_combout\) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter2~2_combout\);

-- Location: LCFF_X35_Y16_N31
\counter2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter2~2_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(0));

-- Location: LCCOMB_X35_Y16_N8
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!counter2(3) & (!counter2(0) & (counter2(1) & !counter2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(0),
	datac => counter2(1),
	datad => counter2(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X36_Y16_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counter2(6) & (\Add2~11\ $ (GND))) # (!counter2(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counter2(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCFF_X36_Y16_N13
\counter2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~12_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(6));

-- Location: LCCOMB_X35_Y16_N18
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (counter2(5) & (!counter2(7) & (!counter2(6) & counter2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(5),
	datab => counter2(7),
	datac => counter2(6),
	datad => counter2(4),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X35_Y16_N28
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~2_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X36_Y16_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counter2(1) & (!\Add2~1\)) # (!counter2(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counter2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X35_Y16_N16
\counter2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter2~0_combout\ = (\Add2~2_combout\ & ((!\Equal3~4_combout\) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal3~4_combout\,
	datac => \Add2~2_combout\,
	combout => \counter2~0_combout\);

-- Location: LCFF_X35_Y16_N17
\counter2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter2~0_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(1));

-- Location: LCCOMB_X36_Y16_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counter2(2) & (\Add2~3\ $ (GND))) # (!counter2(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counter2(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCFF_X36_Y16_N5
\counter2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~4_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(2));

-- Location: LCCOMB_X36_Y16_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counter2(4) & (\Add2~7\ $ (GND))) # (!counter2(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counter2(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X35_Y16_N6
\counter2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter2~3_combout\ = (\Add2~8_combout\ & ((!\Equal3~4_combout\) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Add2~8_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter2~3_combout\);

-- Location: LCFF_X35_Y16_N7
\counter2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter2~3_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(4));

-- Location: LCCOMB_X36_Y16_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counter2(7) & (!\Add2~13\)) # (!counter2(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counter2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCFF_X36_Y16_N15
\counter2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~14_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(7));

-- Location: LCCOMB_X36_Y16_N18
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counter2(9) & (!\Add2~17\)) # (!counter2(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counter2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCFF_X36_Y16_N19
\counter2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~18_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(9));

-- Location: LCCOMB_X36_Y16_N22
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counter2(11) & (!\Add2~21\)) # (!counter2(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counter2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCFF_X36_Y16_N23
\counter2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~22_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(11));

-- Location: LCCOMB_X36_Y16_N26
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counter2(13) & (!\Add2~25\)) # (!counter2(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counter2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCFF_X36_Y16_N27
\counter2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~26_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(13));

-- Location: LCCOMB_X36_Y16_N28
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counter2(14) & (\Add2~27\ $ (GND))) # (!counter2(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counter2(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCFF_X36_Y16_N29
\counter2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~28_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(14));

-- Location: LCCOMB_X36_Y16_N30
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counter2(15) & (!\Add2~29\)) # (!counter2(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counter2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCFF_X36_Y16_N31
\counter2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~30_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(15));

-- Location: LCCOMB_X36_Y15_N0
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counter2(16) & (\Add2~31\ $ (GND))) # (!counter2(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counter2(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCFF_X36_Y15_N1
\counter2[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~32_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(16));

-- Location: LCCOMB_X36_Y15_N2
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counter2(17) & (!\Add2~33\)) # (!counter2(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counter2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCFF_X36_Y15_N3
\counter2[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~34_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(17));

-- Location: LCCOMB_X36_Y15_N4
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counter2(18) & (\Add2~35\ $ (GND))) # (!counter2(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counter2(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCFF_X36_Y15_N5
\counter2[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~36_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(18));

-- Location: LCCOMB_X36_Y15_N6
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counter2(19) & (!\Add2~37\)) # (!counter2(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counter2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X36_Y15_N8
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counter2(20) & (\Add2~39\ $ (GND))) # (!counter2(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counter2(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCFF_X36_Y15_N9
\counter2[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~40_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(20));

-- Location: LCCOMB_X36_Y15_N10
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counter2(21) & (!\Add2~41\)) # (!counter2(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counter2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X36_Y15_N12
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counter2(22) & (\Add2~43\ $ (GND))) # (!counter2(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counter2(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X36_Y15_N14
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counter2(23) & (!\Add2~45\)) # (!counter2(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counter2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCFF_X36_Y15_N15
\counter2[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~46_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(23));

-- Location: LCCOMB_X36_Y15_N18
\Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (counter2(25) & (!\Add2~49\)) # (!counter2(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!counter2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCFF_X36_Y15_N19
\counter2[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~50_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(25));

-- Location: LCCOMB_X36_Y15_N22
\Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (counter2(27) & (!\Add2~53\)) # (!counter2(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!counter2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCFF_X36_Y15_N23
\counter2[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~54_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(27));

-- Location: LCCOMB_X36_Y15_N24
\Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (counter2(28) & (\Add2~55\ $ (GND))) # (!counter2(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((counter2(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X36_Y15_N26
\Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (counter2(29) & (!\Add2~57\)) # (!counter2(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!counter2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCFF_X36_Y15_N27
\counter2[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~58_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(29));

-- Location: LCCOMB_X36_Y15_N28
\Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (counter2(30) & (\Add2~59\ $ (GND))) # (!counter2(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((counter2(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCFF_X36_Y15_N29
\counter2[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~60_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(30));

-- Location: LCCOMB_X36_Y15_N30
\Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (counter2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter2(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCFF_X36_Y15_N31
\counter2[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~62_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(31));

-- Location: LCFF_X36_Y15_N25
\counter2[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~56_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(28));

-- Location: LCCOMB_X35_Y15_N26
\Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!counter2(30) & (!counter2(31) & (!counter2(29) & !counter2(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(30),
	datab => counter2(31),
	datac => counter2(29),
	datad => counter2(28),
	combout => \Equal3~8_combout\);

-- Location: LCFF_X36_Y15_N13
\counter2[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~44_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(22));

-- Location: LCFF_X36_Y15_N11
\counter2[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~42_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(21));

-- Location: LCCOMB_X35_Y15_N14
\Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!counter2(23) & (!counter2(22) & (!counter2(20) & !counter2(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(23),
	datab => counter2(22),
	datac => counter2(20),
	datad => counter2(21),
	combout => \Equal3~6_combout\);

-- Location: LCFF_X36_Y15_N7
\counter2[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~38_combout\,
	ena => \counter2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter2(19));

-- Location: LCCOMB_X35_Y15_N12
\Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!counter2(18) & (!counter2(19) & (!counter2(16) & !counter2(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(18),
	datab => counter2(19),
	datac => counter2(16),
	datad => counter2(17),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X35_Y15_N4
\Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (\Equal3~7_combout\ & (\Equal3~8_combout\ & (\Equal3~6_combout\ & \Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~8_combout\,
	datac => \Equal3~6_combout\,
	datad => \Equal3~5_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X35_Y20_N6
\reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset~0_combout\ = (\key_reset~combout\) # ((!\Equal3~4_combout\) # (!\Equal3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_reset~combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \reset~0_combout\);

-- Location: LCCOMB_X33_Y18_N22
\msecond_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~2_combout\ = (\reset~0_combout\ & (\start~0_combout\ $ (msecond_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~0_combout\,
	datac => msecond_counter_low(0),
	datad => \reset~0_combout\,
	combout => \msecond_counter_low~2_combout\);

-- Location: LCFF_X33_Y18_N23
\msecond_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(0));

-- Location: LCCOMB_X33_Y18_N26
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (msecond_counter_low(1) & msecond_counter_low(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_low(1),
	datad => msecond_counter_low(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X33_Y18_N10
\msecond_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~4_combout\ = (\msecond_counter_low~1_combout\ & (\reset~0_combout\ & ((\Equal4~2_combout\) # (\Equal4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_low~1_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~3_combout\,
	datad => \reset~0_combout\,
	combout => \msecond_counter_low~4_combout\);

-- Location: LCFF_X33_Y18_N11
\msecond_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~4_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(3));

-- Location: LCCOMB_X34_Y18_N22
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (msecond_counter_low(2) & (((msecond_counter_low(3)) # (!\start~0_combout\)) # (!\Add3~0_combout\))) # (!msecond_counter_low(2) & (((\Add3~0_combout\ & \start~0_combout\)) # (!msecond_counter_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(2),
	datab => \Add3~0_combout\,
	datac => msecond_counter_low(3),
	datad => \start~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X33_Y18_N2
\msecond_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~3_combout\ = (\msecond_counter_low~0_combout\ & (\reset~0_combout\ & ((\Equal4~2_combout\) # (\Equal4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_low~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~3_combout\,
	datad => \reset~0_combout\,
	combout => \msecond_counter_low~3_combout\);

-- Location: LCFF_X33_Y18_N3
\msecond_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(1));

-- Location: LCCOMB_X34_Y18_N4
\Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (msecond_counter_low(0) & ((msecond_counter_low(1)) # (!\start~0_combout\))) # (!msecond_counter_low(0) & ((\start~0_combout\) # (!msecond_counter_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_low(0),
	datac => msecond_counter_low(1),
	datad => \start~0_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X33_Y18_N8
\msecond_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~5_combout\ = (\reset~0_combout\ & (msecond_counter_low(2) $ (((\Add3~0_combout\ & \start~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \start~0_combout\,
	datac => msecond_counter_low(2),
	datad => \reset~0_combout\,
	combout => \msecond_counter_low~5_combout\);

-- Location: LCFF_X33_Y18_N9
\msecond_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(2));

-- Location: LCCOMB_X33_Y18_N24
\msecond_counter_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~1_combout\ = msecond_counter_low(3) $ (((\start~0_combout\ & (msecond_counter_low(2) & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(3),
	datab => \start~0_combout\,
	datac => msecond_counter_low(2),
	datad => \Add3~0_combout\,
	combout => \msecond_counter_low~1_combout\);

-- Location: LCCOMB_X33_Y18_N6
\msecond_display_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low~4_combout\ = (\hour_display_high~0_combout\ & (\msecond_counter_low~1_combout\ & ((\Equal4~3_combout\) # (\Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \Equal4~3_combout\,
	datac => \msecond_counter_low~1_combout\,
	datad => \Equal4~2_combout\,
	combout => \msecond_display_low~4_combout\);

-- Location: LCCOMB_X33_Y17_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter3(0) $ (VCC)
-- \Add1~1\ = CARRY(counter3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter3(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X33_Y17_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter3(6) & (\Add1~11\ $ (GND))) # (!counter3(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter3(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_display_stop~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_display_stop,
	combout => \key_display_stop~combout\);

-- Location: LCCOMB_X32_Y17_N16
\led2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led2~0_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & !\key_display_stop~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \key_display_stop~combout\,
	combout => \led2~0_combout\);

-- Location: LCFF_X33_Y17_N13
\counter3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~12_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(6));

-- Location: LCCOMB_X33_Y17_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter3(4) & (\Add1~7\ $ (GND))) # (!counter3(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter3(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X32_Y17_N8
\counter3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter3~2_combout\ = (\Add1~8_combout\ & ((!\Equal2~4_combout\) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add1~8_combout\,
	datad => \Equal2~4_combout\,
	combout => \counter3~2_combout\);

-- Location: LCFF_X32_Y17_N9
\counter3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter3~2_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(4));

-- Location: LCCOMB_X32_Y17_N0
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!counter3(7) & (!counter3(6) & (counter3(4) & counter3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(7),
	datab => counter3(6),
	datac => counter3(4),
	datad => counter3(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X33_Y17_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter3(1) & (!\Add1~1\)) # (!counter3(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X32_Y17_N30
\counter3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter3~0_combout\ = (\Add1~2_combout\ & ((!\Equal2~9_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~9_combout\,
	datad => \Add1~2_combout\,
	combout => \counter3~0_combout\);

-- Location: LCFF_X32_Y17_N31
\counter3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter3~0_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(1));

-- Location: LCCOMB_X32_Y17_N14
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter3(3) & (counter3(1) & (!counter3(0) & !counter3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(3),
	datab => counter3(1),
	datac => counter3(0),
	datad => counter3(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X33_Y17_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter3(10) & (\Add1~19\ $ (GND))) # (!counter3(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter3(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCFF_X33_Y17_N21
\counter3[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~20_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(10));

-- Location: LCCOMB_X33_Y17_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter3(8) & (\Add1~15\ $ (GND))) # (!counter3(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter3(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCFF_X33_Y17_N17
\counter3[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(8));

-- Location: LCCOMB_X32_Y17_N18
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!counter3(9) & (!counter3(10) & (!counter3(8) & !counter3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(9),
	datab => counter3(10),
	datac => counter3(8),
	datad => counter3(11),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X32_Y17_N10
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~1_combout\ & (\Equal2~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X32_Y17_N24
\counter3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter3~1_combout\ = (\Add1~0_combout\ & ((!\Equal2~4_combout\) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal2~4_combout\,
	combout => \counter3~1_combout\);

-- Location: LCFF_X32_Y17_N25
\counter3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter3~1_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(0));

-- Location: LCCOMB_X33_Y17_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter3(2) & (\Add1~3\ $ (GND))) # (!counter3(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter3(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X33_Y17_N5
\counter3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(2));

-- Location: LCCOMB_X33_Y17_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter3(5) & (!\Add1~9\)) # (!counter3(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X32_Y17_N22
\counter3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter3~3_combout\ = (\Add1~10_combout\ & ((!\Equal2~4_combout\) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal2~4_combout\,
	combout => \counter3~3_combout\);

-- Location: LCFF_X32_Y17_N23
\counter3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter3~3_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(5));

-- Location: LCCOMB_X33_Y17_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter3(7) & (!\Add1~13\)) # (!counter3(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCFF_X33_Y17_N15
\counter3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~14_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(7));

-- Location: LCCOMB_X33_Y17_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter3(9) & (!\Add1~17\)) # (!counter3(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCFF_X33_Y17_N19
\counter3[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~18_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(9));

-- Location: LCCOMB_X33_Y17_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter3(11) & (!\Add1~21\)) # (!counter3(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCFF_X33_Y17_N23
\counter3[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~22_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(11));

-- Location: LCCOMB_X33_Y17_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter3(13) & (!\Add1~25\)) # (!counter3(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCFF_X33_Y17_N27
\counter3[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~26_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(13));

-- Location: LCCOMB_X33_Y17_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter3(14) & (\Add1~27\ $ (GND))) # (!counter3(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter3(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCFF_X33_Y17_N29
\counter3[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~28_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(14));

-- Location: LCCOMB_X33_Y17_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter3(15) & (!\Add1~29\)) # (!counter3(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCFF_X33_Y17_N31
\counter3[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~30_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(15));

-- Location: LCCOMB_X33_Y16_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter3(16) & (\Add1~31\ $ (GND))) # (!counter3(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter3(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCFF_X33_Y16_N1
\counter3[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~32_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(16));

-- Location: LCCOMB_X33_Y16_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter3(17) & (!\Add1~33\)) # (!counter3(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCFF_X33_Y16_N3
\counter3[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~34_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(17));

-- Location: LCCOMB_X33_Y16_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter3(18) & (\Add1~35\ $ (GND))) # (!counter3(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter3(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCFF_X33_Y16_N5
\counter3[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~36_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(18));

-- Location: LCCOMB_X33_Y16_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter3(19) & (!\Add1~37\)) # (!counter3(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X33_Y16_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter3(20) & (\Add1~39\ $ (GND))) # (!counter3(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter3(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCFF_X33_Y16_N9
\counter3[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~40_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(20));

-- Location: LCCOMB_X33_Y16_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter3(21) & (!\Add1~41\)) # (!counter3(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X33_Y16_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter3(22) & (\Add1~43\ $ (GND))) # (!counter3(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter3(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X33_Y16_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter3(23) & (!\Add1~45\)) # (!counter3(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCFF_X33_Y16_N15
\counter3[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~46_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(23));

-- Location: LCCOMB_X33_Y16_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counter3(25) & (!\Add1~49\)) # (!counter3(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counter3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCFF_X33_Y16_N19
\counter3[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~50_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(25));

-- Location: LCCOMB_X33_Y16_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counter3(27) & (!\Add1~53\)) # (!counter3(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counter3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCFF_X33_Y16_N23
\counter3[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~54_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(27));

-- Location: LCCOMB_X33_Y16_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counter3(28) & (\Add1~55\ $ (GND))) # (!counter3(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counter3(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X33_Y16_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counter3(29) & (!\Add1~57\)) # (!counter3(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counter3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCFF_X33_Y16_N27
\counter3[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~58_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(29));

-- Location: LCCOMB_X33_Y16_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counter3(30) & (\Add1~59\ $ (GND))) # (!counter3(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counter3(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCFF_X33_Y16_N29
\counter3[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~60_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(30));

-- Location: LCCOMB_X33_Y16_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (counter3(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter3(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCFF_X33_Y16_N31
\counter3[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~62_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(31));

-- Location: LCFF_X33_Y16_N25
\counter3[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~56_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(28));

-- Location: LCCOMB_X32_Y16_N2
\Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!counter3(30) & (!counter3(31) & (!counter3(29) & !counter3(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(30),
	datab => counter3(31),
	datac => counter3(29),
	datad => counter3(28),
	combout => \Equal2~8_combout\);

-- Location: LCFF_X33_Y16_N7
\counter3[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~38_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(19));

-- Location: LCCOMB_X32_Y16_N16
\Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!counter3(17) & (!counter3(19) & (!counter3(16) & !counter3(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(17),
	datab => counter3(19),
	datac => counter3(16),
	datad => counter3(18),
	combout => \Equal2~5_combout\);

-- Location: LCFF_X33_Y16_N11
\counter3[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~42_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(21));

-- Location: LCFF_X33_Y16_N13
\counter3[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~44_combout\,
	ena => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter3(22));

-- Location: LCCOMB_X32_Y16_N18
\Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!counter3(20) & (!counter3(21) & (!counter3(23) & !counter3(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(20),
	datab => counter3(21),
	datac => counter3(23),
	datad => counter3(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X32_Y16_N0
\Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~7_combout\ & (\Equal2~8_combout\ & (\Equal2~5_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCFF_X33_Y18_N29
display : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \display~0_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display~regout\);

-- Location: LCCOMB_X32_Y17_N4
\display~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~0_combout\ = \display~regout\ $ (((\Equal2~4_combout\ & (\Equal2~9_combout\ & !\key_display_stop~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~9_combout\,
	datac => \display~regout\,
	datad => \key_display_stop~combout\,
	combout => \display~0_combout\);

-- Location: LCCOMB_X33_Y18_N28
\msecond_display_low[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low[0]~1_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & ((!\display~0_combout\) # (!\reset~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \reset~0_combout\,
	datac => \display~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \msecond_display_low[0]~1_combout\);

-- Location: LCFF_X33_Y18_N7
\msecond_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low~4_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(3));

-- Location: LCCOMB_X35_Y20_N4
\hour_display_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high~0_combout\ = (!\display~0_combout\ & (((\key_reset~combout\) # (!\Equal3~4_combout\)) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \key_reset~combout\,
	datad => \Equal3~4_combout\,
	combout => \hour_display_high~0_combout\);

-- Location: LCCOMB_X33_Y18_N18
\msecond_display_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low~2_combout\ = (\msecond_counter_low~0_combout\ & (\hour_display_high~0_combout\ & ((\Equal4~2_combout\) # (\Equal4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_low~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \hour_display_high~0_combout\,
	datad => \Equal4~3_combout\,
	combout => \msecond_display_low~2_combout\);

-- Location: LCFF_X33_Y18_N19
\msecond_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(1));

-- Location: LCCOMB_X33_Y18_N0
\msecond_display_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low~3_combout\ = (\hour_display_high~0_combout\ & (msecond_counter_low(2) $ (((\start~0_combout\ & \Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(2),
	datab => \start~0_combout\,
	datac => \hour_display_high~0_combout\,
	datad => \Add3~0_combout\,
	combout => \msecond_display_low~3_combout\);

-- Location: LCFF_X33_Y18_N1
\msecond_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(2));

-- Location: LCCOMB_X33_Y18_N4
\msecond_display_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low~0_combout\ = (!\display~0_combout\ & (\reset~0_combout\ & (msecond_counter_low(0) $ (\start~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display~0_combout\,
	datab => msecond_counter_low(0),
	datac => \start~0_combout\,
	datad => \reset~0_combout\,
	combout => \msecond_display_low~0_combout\);

-- Location: LCFF_X33_Y18_N5
\msecond_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(0));

-- Location: LCCOMB_X28_Y4_N0
\led_msecond_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr6~0_combout\ = (msecond_display_low(1) & (msecond_display_low(3))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((!msecond_display_low(3) & msecond_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\led_msecond_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr5~0_combout\ = (msecond_display_low(3) & ((msecond_display_low(1)) # ((msecond_display_low(2))))) # (!msecond_display_low(3) & (msecond_display_low(2) & (msecond_display_low(1) $ (msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\led_msecond_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr4~0_combout\ = (msecond_display_low(2) & (msecond_display_low(3))) # (!msecond_display_low(2) & (msecond_display_low(1) & ((msecond_display_low(3)) # (!msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\led_msecond_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr3~0_combout\ = (msecond_display_low(1) & ((msecond_display_low(3)) # ((msecond_display_low(2) & msecond_display_low(0))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((!msecond_display_low(3) & 
-- msecond_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\led_msecond_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr2~0_combout\ = (msecond_display_low(0)) # ((msecond_display_low(1) & (msecond_display_low(3))) # (!msecond_display_low(1) & ((msecond_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\led_msecond_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr1~0_combout\ = (msecond_display_low(2) & ((msecond_display_low(3)) # ((msecond_display_low(1) & msecond_display_low(0))))) # (!msecond_display_low(2) & ((msecond_display_low(1)) # ((!msecond_display_low(3) & 
-- msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\led_msecond_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_low|WideOr0~0_combout\ = (msecond_display_low(1) & (!msecond_display_low(3) & ((!msecond_display_low(0)) # (!msecond_display_low(2))))) # (!msecond_display_low(1) & (msecond_display_low(3) $ ((msecond_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(3),
	datab => msecond_display_low(1),
	datac => msecond_display_low(2),
	datad => msecond_display_low(0),
	combout => \led_msecond_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y19_N20
\msecond_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~5_combout\ = (\reset~0_combout\ & (\msecond_counter_high~1_combout\ & ((\Equal5~0_combout\) # (!\msecond_counter_high~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \msecond_counter_high~0_combout\,
	datac => \reset~0_combout\,
	datad => \msecond_counter_high~1_combout\,
	combout => \msecond_counter_high~5_combout\);

-- Location: LCFF_X35_Y18_N3
\msecond_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \msecond_counter_high~5_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(3));

-- Location: LCCOMB_X34_Y18_N26
\msecond_counter_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~1_combout\ = (\Equal4~3_combout\ & (((msecond_counter_high(3))))) # (!\Equal4~3_combout\ & ((\Equal4~2_combout\ & ((msecond_counter_high(3)))) # (!\Equal4~2_combout\ & (\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => msecond_counter_high(3),
	datac => \Equal4~3_combout\,
	datad => \Equal4~2_combout\,
	combout => \msecond_counter_high~1_combout\);

-- Location: LCCOMB_X35_Y19_N16
\msecond_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~3_combout\ = (\msecond_counter_high~0_combout\ & (\reset~0_combout\ & ((\Equal5~0_combout\) # (!\msecond_counter_high~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \msecond_counter_high~0_combout\,
	datac => \reset~0_combout\,
	datad => \msecond_counter_high~1_combout\,
	combout => \msecond_counter_high~3_combout\);

-- Location: LCFF_X35_Y18_N29
\msecond_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \msecond_counter_high~3_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(1));

-- Location: LCCOMB_X34_Y18_N6
\msecond_counter_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~0_combout\ = msecond_counter_high(1) $ (((msecond_counter_high(0) & (!\Equal4~3_combout\ & !\Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(1),
	datac => \Equal4~3_combout\,
	datad => \Equal4~2_combout\,
	combout => \msecond_counter_high~0_combout\);

-- Location: LCCOMB_X35_Y19_N12
\msecond_display_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high~1_combout\ = (\msecond_counter_high~0_combout\ & (\hour_display_high~0_combout\ & ((\Equal5~0_combout\) # (!\msecond_counter_high~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \msecond_counter_high~0_combout\,
	datac => \hour_display_high~0_combout\,
	datad => \msecond_counter_high~1_combout\,
	combout => \msecond_display_high~1_combout\);

-- Location: LCFF_X35_Y19_N13
\msecond_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(1));

-- Location: LCCOMB_X33_Y18_N14
\msecond_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~2_combout\ = (\reset~0_combout\ & (msecond_counter_high(0) $ (((!\Equal4~3_combout\ & !\Equal4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => msecond_counter_high(0),
	datad => \reset~0_combout\,
	combout => \msecond_counter_high~2_combout\);

-- Location: LCFF_X33_Y18_N15
\msecond_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(0));

-- Location: LCCOMB_X33_Y18_N16
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (msecond_counter_high(0) & msecond_counter_high(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => msecond_counter_high(0),
	datad => msecond_counter_high(1),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X34_Y18_N12
\Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = ((msecond_counter_low(0) & ((msecond_counter_low(1)) # (!\start~0_combout\))) # (!msecond_counter_low(0) & ((\start~0_combout\) # (!msecond_counter_low(1))))) # (!\Equal4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~5_combout\,
	datab => msecond_counter_low(0),
	datac => msecond_counter_low(1),
	datad => \start~0_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X35_Y19_N10
\msecond_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~4_combout\ = (\reset~0_combout\ & (msecond_counter_high(2) $ (((\Add4~1_combout\ & !\Equal4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(2),
	datab => \Add4~1_combout\,
	datac => \reset~0_combout\,
	datad => \Equal4~4_combout\,
	combout => \msecond_counter_high~4_combout\);

-- Location: LCFF_X35_Y18_N11
\msecond_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \msecond_counter_high~4_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(2));

-- Location: LCCOMB_X35_Y19_N22
\msecond_display_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high~2_combout\ = (\hour_display_high~0_combout\ & (msecond_counter_high(2) $ (((!\Equal4~4_combout\ & \Add4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \Add4~1_combout\,
	datac => \hour_display_high~0_combout\,
	datad => msecond_counter_high(2),
	combout => \msecond_display_high~2_combout\);

-- Location: LCFF_X35_Y19_N23
\msecond_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(2));

-- Location: LCCOMB_X33_Y18_N12
\msecond_display_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high~0_combout\ = (\hour_display_high~0_combout\ & (msecond_counter_high(0) $ (((!\Equal4~3_combout\ & !\Equal4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => msecond_counter_high(0),
	datac => \Equal4~3_combout\,
	datad => \Equal4~2_combout\,
	combout => \msecond_display_high~0_combout\);

-- Location: LCFF_X33_Y18_N13
\msecond_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(0));

-- Location: LCCOMB_X35_Y19_N28
\msecond_display_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high~3_combout\ = (\hour_display_high~0_combout\ & (\msecond_counter_high~1_combout\ & ((\Equal5~0_combout\) # (!\msecond_counter_high~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \msecond_counter_high~0_combout\,
	datac => \hour_display_high~0_combout\,
	datad => \msecond_counter_high~1_combout\,
	combout => \msecond_display_high~3_combout\);

-- Location: LCFF_X35_Y19_N29
\msecond_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(3));

-- Location: LCCOMB_X35_Y19_N26
\led_msecond_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr6~0_combout\ = (msecond_display_high(1) & (((msecond_display_high(3))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(0) & !msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\led_msecond_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr5~0_combout\ = (msecond_display_high(2) & ((msecond_display_high(3)) # (msecond_display_high(1) $ (msecond_display_high(0))))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\led_msecond_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr4~0_combout\ = (msecond_display_high(2) & (((msecond_display_high(3))))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)) # (!msecond_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X35_Y19_N0
\led_msecond_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr3~0_combout\ = (msecond_display_high(1) & ((msecond_display_high(3)) # ((msecond_display_high(2) & msecond_display_high(0))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(0) & 
-- !msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y19_N30
\led_msecond_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr2~0_combout\ = (msecond_display_high(0)) # ((msecond_display_high(1) & ((msecond_display_high(3)))) # (!msecond_display_high(1) & (msecond_display_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y19_N24
\led_msecond_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr1~0_combout\ = (msecond_display_high(2) & ((msecond_display_high(3)) # ((msecond_display_high(1) & msecond_display_high(0))))) # (!msecond_display_high(2) & ((msecond_display_high(1)) # ((msecond_display_high(0) & 
-- !msecond_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X35_Y19_N2
\led_msecond_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_msecond_display_high|WideOr0~0_combout\ = (msecond_display_high(1) & (!msecond_display_high(3) & ((!msecond_display_high(0)) # (!msecond_display_high(2))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(2),
	datac => msecond_display_high(0),
	datad => msecond_display_high(3),
	combout => \led_msecond_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X36_Y20_N16
\second_counter_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~1_combout\ = (\reset~0_combout\ & (\Equal5~1_combout\ $ (!second_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \reset~0_combout\,
	datac => second_counter_low(0),
	combout => \second_counter_low~1_combout\);

-- Location: LCFF_X36_Y20_N17
\second_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~1_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(0));

-- Location: LCCOMB_X36_Y20_N6
\Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = (second_counter_low(1) & second_counter_low(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(1),
	datac => second_counter_low(0),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X36_Y20_N0
\second_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~3_combout\ = (\reset~0_combout\ & (second_counter_low(2) $ (((!\Equal5~1_combout\ & \Add5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \reset~0_combout\,
	datac => second_counter_low(2),
	datad => \Add5~1_combout\,
	combout => \second_counter_low~3_combout\);

-- Location: LCFF_X36_Y20_N1
\second_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(2));

-- Location: LCCOMB_X34_Y18_N14
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (msecond_counter_high(0) & ((\Equal4~4_combout\) # (msecond_counter_high(1) $ (msecond_counter_high(2))))) # (!msecond_counter_high(0) & (((msecond_counter_high(2)) # (!\Equal4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => \Equal4~4_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X34_Y18_N2
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ((\Equal5~0_combout\) # (!\msecond_counter_high~1_combout\)) # (!\msecond_counter_high~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_high~0_combout\,
	datab => \Equal5~0_combout\,
	datad => \msecond_counter_high~1_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X33_Y20_N24
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (second_counter_low(2)) # (second_counter_low(1) $ (((\Equal5~1_combout\) # (!second_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(1),
	datab => second_counter_low(0),
	datac => second_counter_low(2),
	datad => \Equal5~1_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X36_Y20_N30
\second_counter_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~0_combout\ = second_counter_low(1) $ (((!\Equal5~1_combout\ & second_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(1),
	datac => \Equal5~1_combout\,
	datad => second_counter_low(0),
	combout => \second_counter_low~0_combout\);

-- Location: LCCOMB_X35_Y20_N12
\second_display_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low~1_combout\ = (\hour_display_high~0_combout\ & (\second_counter_low~0_combout\ & ((\Equal6~0_combout\) # (\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \hour_display_high~0_combout\,
	datac => \Equal6~1_combout\,
	datad => \second_counter_low~0_combout\,
	combout => \second_display_low~1_combout\);

-- Location: LCFF_X35_Y20_N13
\second_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(1));

-- Location: LCCOMB_X36_Y20_N26
\second_display_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low~2_combout\ = (\hour_display_high~0_combout\ & (second_counter_low(2) $ (((!\Equal5~1_combout\ & \Add5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => second_counter_low(2),
	datac => \hour_display_high~0_combout\,
	datad => \Add5~1_combout\,
	combout => \second_display_low~2_combout\);

-- Location: LCFF_X36_Y20_N27
\second_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(2));

-- Location: LCCOMB_X36_Y20_N2
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (second_counter_low(1) & (second_counter_low(0) & second_counter_low(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(1),
	datac => second_counter_low(0),
	datad => second_counter_low(2),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X33_Y20_N10
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (second_counter_low(0) & ((\Equal5~1_combout\) # (\Add5~0_combout\ $ (!second_counter_low(3))))) # (!second_counter_low(0) & (((!\Equal5~1_combout\) # (!second_counter_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => second_counter_low(0),
	datac => second_counter_low(3),
	datad => \Equal5~1_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X35_Y20_N24
\second_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~4_combout\ = (\reset~0_combout\ & ((\Equal6~1_combout\) # (\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_low~4_combout\);

-- Location: LCCOMB_X36_Y20_N24
\second_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~5_combout\ = (\second_counter_low~4_combout\ & (second_counter_low(3) $ (((!\Equal5~1_combout\ & \Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add5~0_combout\,
	datac => second_counter_low(3),
	datad => \second_counter_low~4_combout\,
	combout => \second_counter_low~5_combout\);

-- Location: LCFF_X36_Y20_N25
\second_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(3));

-- Location: LCCOMB_X35_Y20_N20
\second_display_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low~3_combout\ = (\hour_display_high~0_combout\ & ((\Equal6~1_combout\) # (\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_display_high~0_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_display_low~3_combout\);

-- Location: LCCOMB_X36_Y20_N4
\second_display_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low~4_combout\ = (\second_display_low~3_combout\ & (second_counter_low(3) $ (((!\Equal5~1_combout\ & \Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => second_counter_low(3),
	datac => \second_display_low~3_combout\,
	datad => \Add5~0_combout\,
	combout => \second_display_low~4_combout\);

-- Location: LCFF_X36_Y20_N5
\second_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low~4_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(3));

-- Location: LCCOMB_X36_Y20_N12
\second_display_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low~0_combout\ = (\hour_display_high~0_combout\ & (second_counter_low(0) $ (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(0),
	datab => \hour_display_high~0_combout\,
	datac => \Equal5~1_combout\,
	combout => \second_display_low~0_combout\);

-- Location: LCFF_X36_Y20_N13
\second_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(0));

-- Location: LCCOMB_X36_Y20_N10
\led_second_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr6~0_combout\ = (second_display_low(1) & (((second_display_low(3))))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X36_Y20_N28
\led_second_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr5~0_combout\ = (second_display_low(2) & ((second_display_low(3)) # (second_display_low(1) $ (second_display_low(0))))) # (!second_display_low(2) & (second_display_low(1) & (second_display_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y20_N18
\led_second_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr4~0_combout\ = (second_display_low(2) & (((second_display_low(3))))) # (!second_display_low(2) & (second_display_low(1) & ((second_display_low(3)) # (!second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y20_N20
\led_second_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr3~0_combout\ = (second_display_low(1) & ((second_display_low(3)) # ((second_display_low(2) & second_display_low(0))))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & 
-- second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X36_Y20_N14
\led_second_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr2~0_combout\ = (second_display_low(0)) # ((second_display_low(1) & ((second_display_low(3)))) # (!second_display_low(1) & (second_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y20_N8
\led_second_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr1~0_combout\ = (second_display_low(2) & ((second_display_low(3)) # ((second_display_low(1) & second_display_low(0))))) # (!second_display_low(2) & ((second_display_low(1)) # ((!second_display_low(3) & 
-- second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y20_N22
\led_second_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_low|WideOr0~0_combout\ = (second_display_low(1) & (!second_display_low(3) & ((!second_display_low(0)) # (!second_display_low(2))))) # (!second_display_low(1) & (second_display_low(2) $ ((second_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(2),
	datac => second_display_low(3),
	datad => second_display_low(0),
	combout => \led_second_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y20_N28
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\Equal6~1_combout\) # (\Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X35_Y20_N2
\second_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~4_combout\ = (\Equal6~1_combout\ & (((second_counter_high(3))))) # (!\Equal6~1_combout\ & ((\Equal6~0_combout\ & ((second_counter_high(3)))) # (!\Equal6~0_combout\ & (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => second_counter_high(3),
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_high~4_combout\);

-- Location: LCCOMB_X35_Y20_N0
\second_counter_high~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~8_combout\ = (\second_counter_high~4_combout\ & (((\key_reset~combout\) # (!\Equal3~4_combout\)) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal3~4_combout\,
	datac => \key_reset~combout\,
	datad => \second_counter_high~4_combout\,
	combout => \second_counter_high~8_combout\);

-- Location: LCFF_X35_Y20_N1
\second_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~8_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(3));

-- Location: LCCOMB_X33_Y20_N14
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ((\Equal6~2_combout\ & ((second_counter_high(3)))) # (!\Equal6~2_combout\ & (\Add6~0_combout\))) # (!\second_counter_high~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Equal6~2_combout\,
	datac => second_counter_high(3),
	datad => \second_counter_high~2_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X35_Y20_N26
\second_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~5_combout\ = (\reset~0_combout\ & (second_counter_high(0) $ (((!\Equal6~1_combout\ & !\Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \reset~0_combout\,
	datac => second_counter_high(0),
	datad => \Equal6~0_combout\,
	combout => \second_counter_high~5_combout\);

-- Location: LCFF_X35_Y20_N27
\second_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(0));

-- Location: LCCOMB_X33_Y20_N12
\second_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~3_combout\ = second_counter_high(2) $ (((second_counter_high(1) & (second_counter_high(0) & !\Equal6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(2),
	datab => second_counter_high(1),
	datac => second_counter_high(0),
	datad => \Equal6~2_combout\,
	combout => \second_counter_high~3_combout\);

-- Location: LCCOMB_X33_Y20_N22
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal7~0_combout\) # ((second_counter_high(0) $ (!\Equal6~2_combout\)) # (!\second_counter_high~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(0),
	datab => \Equal6~2_combout\,
	datac => \Equal7~0_combout\,
	datad => \second_counter_high~3_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X34_Y20_N30
\second_counter_high~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~6_combout\ = (\reset~0_combout\ & (\second_counter_high~2_combout\ & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \second_counter_high~2_combout\,
	datad => \Equal7~1_combout\,
	combout => \second_counter_high~6_combout\);

-- Location: LCFF_X34_Y20_N31
\second_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~6_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(1));

-- Location: LCCOMB_X33_Y20_N18
\second_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~2_combout\ = second_counter_high(1) $ (((second_counter_high(0) & (!\Equal6~1_combout\ & !\Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(0),
	datab => second_counter_high(1),
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_high~2_combout\);

-- Location: LCCOMB_X35_Y20_N16
\second_display_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high~1_combout\ = (\hour_display_high~0_combout\ & (\second_counter_high~2_combout\ & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_display_high~0_combout\,
	datac => \second_counter_high~2_combout\,
	datad => \Equal7~1_combout\,
	combout => \second_display_high~1_combout\);

-- Location: LCFF_X35_Y20_N17
\second_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(1));

-- Location: LCCOMB_X35_Y20_N18
\second_display_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high~2_combout\ = (\hour_display_high~0_combout\ & (\second_counter_high~3_combout\ & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_display_high~0_combout\,
	datac => \second_counter_high~3_combout\,
	datad => \Equal7~1_combout\,
	combout => \second_display_high~2_combout\);

-- Location: LCFF_X35_Y20_N19
\second_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(2));

-- Location: LCCOMB_X35_Y20_N28
\second_display_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high~3_combout\ = (\hour_display_high~0_combout\ & \second_counter_high~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour_display_high~0_combout\,
	datad => \second_counter_high~4_combout\,
	combout => \second_display_high~3_combout\);

-- Location: LCFF_X35_Y20_N29
\second_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(3));

-- Location: LCCOMB_X35_Y20_N22
\second_display_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high~0_combout\ = (\hour_display_high~0_combout\ & (second_counter_high(0) $ (((!\Equal6~0_combout\ & !\Equal6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \hour_display_high~0_combout\,
	datad => second_counter_high(0),
	combout => \second_display_high~0_combout\);

-- Location: LCFF_X35_Y20_N23
\second_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(0));

-- Location: LCCOMB_X64_Y8_N4
\led_second_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr6~0_combout\ = (second_display_high(1) & (((second_display_high(3))))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\led_second_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr5~0_combout\ = (second_display_high(2) & ((second_display_high(3)) # (second_display_high(1) $ (second_display_high(0))))) # (!second_display_high(2) & (second_display_high(1) & (second_display_high(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\led_second_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr4~0_combout\ = (second_display_high(2) & (((second_display_high(3))))) # (!second_display_high(2) & (second_display_high(1) & ((second_display_high(3)) # (!second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\led_second_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr3~0_combout\ = (second_display_high(1) & ((second_display_high(3)) # ((second_display_high(2) & second_display_high(0))))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & 
-- second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\led_second_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr2~0_combout\ = (second_display_high(0)) # ((second_display_high(1) & ((second_display_high(3)))) # (!second_display_high(1) & (second_display_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\led_second_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr1~0_combout\ = (second_display_high(2) & ((second_display_high(3)) # ((second_display_high(1) & second_display_high(0))))) # (!second_display_high(2) & ((second_display_high(1)) # ((!second_display_high(3) & 
-- second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\led_second_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_second_display_high|WideOr0~0_combout\ = (second_display_high(1) & (!second_display_high(3) & ((!second_display_high(0)) # (!second_display_high(2))))) # (!second_display_high(1) & (second_display_high(2) $ ((second_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \led_second_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y20_N20
\minute_counter_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~1_combout\ = (\reset~0_combout\ & (minute_counter_low(0) $ (!\Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datac => minute_counter_low(0),
	datad => \Equal7~1_combout\,
	combout => \minute_counter_low~1_combout\);

-- Location: LCFF_X31_Y20_N21
\minute_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~1_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(0));

-- Location: LCCOMB_X31_Y20_N0
\minute_counter_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~0_combout\ = minute_counter_low(1) $ (((minute_counter_low(0) & !\Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_low(1),
	datac => minute_counter_low(0),
	datad => \Equal7~1_combout\,
	combout => \minute_counter_low~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\minute_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~2_combout\ = (\reset~0_combout\ & (\minute_counter_low~0_combout\ & ((\Equal8~0_combout\) # (\Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \reset~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \minute_counter_low~0_combout\,
	combout => \minute_counter_low~2_combout\);

-- Location: LCFF_X31_Y20_N3
\minute_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(1));

-- Location: LCCOMB_X31_Y20_N28
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = (minute_counter_low(0) & minute_counter_low(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => minute_counter_low(0),
	datad => minute_counter_low(1),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X31_Y20_N14
\minute_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~3_combout\ = (\reset~0_combout\ & (minute_counter_low(2) $ (((\Add7~1_combout\ & !\Equal7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Add7~1_combout\,
	datac => minute_counter_low(2),
	datad => \Equal7~1_combout\,
	combout => \minute_counter_low~3_combout\);

-- Location: LCFF_X31_Y20_N15
\minute_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(2));

-- Location: LCCOMB_X33_Y20_N16
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (minute_counter_low(2)) # (minute_counter_low(1) $ (((\Equal7~1_combout\) # (!minute_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(1),
	datab => minute_counter_low(0),
	datac => minute_counter_low(2),
	datad => \Equal7~1_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X32_Y20_N2
\minute_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~4_combout\ = (\reset~0_combout\ & ((\Equal8~1_combout\) # (\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \minute_counter_low~4_combout\);

-- Location: LCCOMB_X31_Y20_N4
\minute_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~5_combout\ = (\minute_counter_low~4_combout\ & ((\Equal7~1_combout\ & ((minute_counter_low(3)))) # (!\Equal7~1_combout\ & (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Equal7~1_combout\,
	datac => minute_counter_low(3),
	datad => \minute_counter_low~4_combout\,
	combout => \minute_counter_low~5_combout\);

-- Location: LCFF_X31_Y20_N5
\minute_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(3));

-- Location: LCCOMB_X33_Y20_N26
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (minute_counter_low(0) & (((\Equal7~1_combout\)) # (!\Add7~0_combout\))) # (!minute_counter_low(0) & (((!\Equal7~1_combout\) # (!minute_counter_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => minute_counter_low(0),
	datac => minute_counter_low(3),
	datad => \Equal7~1_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X31_Y20_N22
\minute_display_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low~1_combout\ = (\hour_display_high~0_combout\ & (\minute_counter_low~0_combout\ & ((\Equal8~0_combout\) # (\Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \hour_display_high~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \minute_counter_low~0_combout\,
	combout => \minute_display_low~1_combout\);

-- Location: LCFF_X31_Y20_N23
\minute_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(1));

-- Location: LCCOMB_X32_Y20_N4
\minute_display_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low~3_combout\ = (\hour_display_high~0_combout\ & ((\Equal8~1_combout\) # (\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \minute_display_low~3_combout\);

-- Location: LCCOMB_X31_Y20_N18
\minute_display_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low~4_combout\ = (\minute_display_low~3_combout\ & ((\Equal7~1_combout\ & ((minute_counter_low(3)))) # (!\Equal7~1_combout\ & (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Equal7~1_combout\,
	datac => minute_counter_low(3),
	datad => \minute_display_low~3_combout\,
	combout => \minute_display_low~4_combout\);

-- Location: LCFF_X31_Y20_N19
\minute_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low~4_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(3));

-- Location: LCCOMB_X31_Y20_N8
\minute_display_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low~2_combout\ = (\hour_display_high~0_combout\ & (minute_counter_low(2) $ (((\Add7~1_combout\ & !\Equal7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \Add7~1_combout\,
	datac => minute_counter_low(2),
	datad => \Equal7~1_combout\,
	combout => \minute_display_low~2_combout\);

-- Location: LCFF_X31_Y20_N9
\minute_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(2));

-- Location: LCCOMB_X31_Y20_N16
\minute_display_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low~0_combout\ = (\hour_display_high~0_combout\ & (minute_counter_low(0) $ (!\Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datac => minute_counter_low(0),
	datad => \Equal7~1_combout\,
	combout => \minute_display_low~0_combout\);

-- Location: LCFF_X31_Y20_N17
\minute_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(0));

-- Location: LCCOMB_X4_Y14_N12
\led_minute_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr6~0_combout\ = (minute_display_low(1) & (minute_display_low(3))) # (!minute_display_low(1) & (minute_display_low(2) $ (((!minute_display_low(3) & minute_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y14_N22
\led_minute_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr5~0_combout\ = (minute_display_low(3) & ((minute_display_low(1)) # ((minute_display_low(2))))) # (!minute_display_low(3) & (minute_display_low(2) & (minute_display_low(1) $ (minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y14_N16
\led_minute_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr4~0_combout\ = (minute_display_low(2) & (((minute_display_low(3))))) # (!minute_display_low(2) & (minute_display_low(1) & ((minute_display_low(3)) # (!minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y14_N26
\led_minute_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr3~0_combout\ = (minute_display_low(1) & ((minute_display_low(3)) # ((minute_display_low(2) & minute_display_low(0))))) # (!minute_display_low(1) & (minute_display_low(2) $ (((!minute_display_low(3) & 
-- minute_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y14_N24
\led_minute_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr2~0_combout\ = (minute_display_low(0)) # ((minute_display_low(1) & (minute_display_low(3))) # (!minute_display_low(1) & ((minute_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y14_N10
\led_minute_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr1~0_combout\ = (minute_display_low(2) & ((minute_display_low(3)) # ((minute_display_low(1) & minute_display_low(0))))) # (!minute_display_low(2) & ((minute_display_low(1)) # ((!minute_display_low(3) & 
-- minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y14_N0
\led_minute_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_low|WideOr0~0_combout\ = (minute_display_low(1) & (!minute_display_low(3) & ((!minute_display_low(0)) # (!minute_display_low(2))))) # (!minute_display_low(1) & (minute_display_low(3) $ ((minute_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(1),
	datab => minute_display_low(3),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \led_minute_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y20_N2
\Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\Equal8~0_combout\) # (\Equal8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal8~0_combout\,
	datad => \Equal8~1_combout\,
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X32_Y20_N18
\minute_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~5_combout\ = (\reset~0_combout\ & (minute_counter_high(3) $ (((\Add8~0_combout\ & !\Equal8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \reset~0_combout\,
	datac => minute_counter_high(3),
	datad => \Equal8~2_combout\,
	combout => \minute_counter_high~5_combout\);

-- Location: LCFF_X32_Y20_N19
\minute_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(3));

-- Location: LCCOMB_X33_Y20_N4
\minute_counter_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~0_combout\ = minute_counter_high(1) $ (((minute_counter_high(0) & (!\Equal8~0_combout\ & !\Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(0),
	datab => minute_counter_high(1),
	datac => \Equal8~0_combout\,
	datad => \Equal8~1_combout\,
	combout => \minute_counter_high~0_combout\);

-- Location: LCCOMB_X33_Y20_N6
\Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (minute_counter_high(3) $ (((\Add8~0_combout\ & !\Equal8~2_combout\)))) # (!\minute_counter_high~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(3),
	datab => \Add8~0_combout\,
	datac => \minute_counter_high~0_combout\,
	datad => \Equal8~2_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X34_Y20_N28
\minute_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~3_combout\ = (\reset~0_combout\ & (\minute_counter_high~0_combout\ & ((\Equal9~1_combout\) # (\Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \minute_counter_high~0_combout\,
	datac => \Equal9~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \minute_counter_high~3_combout\);

-- Location: LCFF_X34_Y20_N29
\minute_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(1));

-- Location: LCCOMB_X33_Y20_N20
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (minute_counter_high(0) & ((\Equal8~2_combout\) # (minute_counter_high(1) $ (!minute_counter_high(2))))) # (!minute_counter_high(0) & (((!\Equal8~2_combout\) # (!minute_counter_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(0),
	datab => minute_counter_high(1),
	datac => minute_counter_high(2),
	datad => \Equal8~2_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X32_Y20_N14
\minute_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~2_combout\ = (\reset~0_combout\ & (minute_counter_high(0) $ (((!\Equal8~1_combout\ & !\Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \reset~0_combout\,
	datac => minute_counter_high(0),
	datad => \Equal8~0_combout\,
	combout => \minute_counter_high~2_combout\);

-- Location: LCFF_X32_Y20_N15
\minute_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(0));

-- Location: LCCOMB_X32_Y20_N16
\minute_counter_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~1_combout\ = minute_counter_high(2) $ (((minute_counter_high(1) & (minute_counter_high(0) & !\Equal8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(1),
	datab => minute_counter_high(0),
	datac => minute_counter_high(2),
	datad => \Equal8~2_combout\,
	combout => \minute_counter_high~1_combout\);

-- Location: LCCOMB_X32_Y20_N24
\minute_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~4_combout\ = (\reset~0_combout\ & (\minute_counter_high~1_combout\ & ((\Equal9~0_combout\) # (\Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \minute_counter_high~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \minute_counter_high~4_combout\);

-- Location: LCFF_X32_Y20_N25
\minute_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~4_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(2));

-- Location: LCCOMB_X31_Y20_N30
\Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (minute_counter_high(2) & (minute_counter_high(1) & minute_counter_high(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_high(2),
	datac => minute_counter_high(1),
	datad => minute_counter_high(0),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X32_Y20_N20
\minute_display_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high~3_combout\ = (\hour_display_high~0_combout\ & (minute_counter_high(3) $ (((\Add8~0_combout\ & !\Equal8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => minute_counter_high(3),
	datac => \Add8~0_combout\,
	datad => \Equal8~2_combout\,
	combout => \minute_display_high~3_combout\);

-- Location: LCFF_X32_Y20_N21
\minute_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(3));

-- Location: LCCOMB_X32_Y20_N26
\minute_display_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high~2_combout\ = (\hour_display_high~0_combout\ & (\minute_counter_high~1_combout\ & ((\Equal9~0_combout\) # (\Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \minute_counter_high~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \minute_display_high~2_combout\);

-- Location: LCFF_X32_Y20_N27
\minute_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(2));

-- Location: LCCOMB_X32_Y20_N0
\minute_display_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high~0_combout\ = (\hour_display_high~0_combout\ & (minute_counter_high(0) $ (((!\Equal8~1_combout\ & !\Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => minute_counter_high(0),
	datac => \hour_display_high~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \minute_display_high~0_combout\);

-- Location: LCFF_X32_Y20_N1
\minute_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(0));

-- Location: LCCOMB_X33_Y20_N8
\minute_display_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high~1_combout\ = (\minute_counter_high~0_combout\ & (\hour_display_high~0_combout\ & ((\Equal9~0_combout\) # (\Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minute_counter_high~0_combout\,
	datab => \hour_display_high~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \minute_display_high~1_combout\);

-- Location: LCFF_X33_Y20_N9
\minute_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(1));

-- Location: LCCOMB_X1_Y16_N16
\led_minute_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr6~0_combout\ = (minute_display_high(1) & (minute_display_high(3))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y16_N10
\led_minute_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr5~0_combout\ = (minute_display_high(3) & ((minute_display_high(2)) # ((minute_display_high(1))))) # (!minute_display_high(3) & (minute_display_high(2) & (minute_display_high(0) $ (minute_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\led_minute_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr4~0_combout\ = (minute_display_high(2) & (minute_display_high(3))) # (!minute_display_high(2) & (minute_display_high(1) & ((minute_display_high(3)) # (!minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\led_minute_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr3~0_combout\ = (minute_display_high(1) & ((minute_display_high(3)) # ((minute_display_high(2) & minute_display_high(0))))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & 
-- minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\led_minute_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr2~0_combout\ = (minute_display_high(0)) # ((minute_display_high(1) & (minute_display_high(3))) # (!minute_display_high(1) & ((minute_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\led_minute_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr1~0_combout\ = (minute_display_high(2) & ((minute_display_high(3)) # ((minute_display_high(0) & minute_display_high(1))))) # (!minute_display_high(2) & ((minute_display_high(1)) # ((!minute_display_high(3) & 
-- minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y16_N0
\led_minute_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_minute_display_high|WideOr0~0_combout\ = (minute_display_high(2) & (!minute_display_high(3) & ((!minute_display_high(1)) # (!minute_display_high(0))))) # (!minute_display_high(2) & (minute_display_high(3) $ (((minute_display_high(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \led_minute_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y20_N2
\hour_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~2_combout\ = (\reset~0_combout\ & (hour_counter_low(0) $ (((!\Equal9~1_combout\ & !\Equal9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Equal9~1_combout\,
	datac => hour_counter_low(0),
	datad => \Equal9~0_combout\,
	combout => \hour_counter_low~2_combout\);

-- Location: LCFF_X34_Y20_N3
\hour_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(0));

-- Location: LCCOMB_X34_Y20_N26
\hour_counter_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~0_combout\ = hour_counter_low(1) $ (((hour_counter_low(0) & (!\Equal9~1_combout\ & !\Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(1),
	datab => hour_counter_low(0),
	datac => \Equal9~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \hour_counter_low~0_combout\);

-- Location: LCCOMB_X33_Y20_N0
\Equal9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Equal9~0_combout\) # (\Equal9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal9~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X34_Y20_N12
\hour_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~4_combout\ = (\reset~0_combout\ & (hour_counter_low(2) $ (((\Add9~0_combout\ & !\Equal9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Add9~0_combout\,
	datac => hour_counter_low(2),
	datad => \Equal9~2_combout\,
	combout => \hour_counter_low~4_combout\);

-- Location: LCFF_X34_Y20_N13
\hour_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~4_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(2));

-- Location: LCCOMB_X33_Y20_N30
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (hour_counter_low(3) & ((hour_counter_low(2)) # ((\Add9~0_combout\ & !\Equal9~2_combout\)))) # (!hour_counter_low(3) & (((\Equal9~2_combout\) # (!\Add9~0_combout\)) # (!hour_counter_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(3),
	datab => hour_counter_low(2),
	datac => \Add9~0_combout\,
	datad => \Equal9~2_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X34_Y20_N14
\Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (hour_counter_low(1) & ((hour_counter_low(0)) # ((!\Equal9~1_combout\ & !\Equal9~0_combout\)))) # (!hour_counter_low(1) & (((\Equal9~1_combout\) # (\Equal9~0_combout\)) # (!hour_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(1),
	datab => hour_counter_low(0),
	datac => \Equal9~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X34_Y20_N16
\hour_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~3_combout\ = (\reset~0_combout\ & (\hour_counter_low~0_combout\ & ((\Equal10~0_combout\) # (\Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \hour_counter_low~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \hour_counter_low~3_combout\);

-- Location: LCFF_X34_Y20_N17
\hour_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(1));

-- Location: LCCOMB_X34_Y20_N10
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (hour_counter_low(1) & hour_counter_low(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_counter_low(1),
	datad => hour_counter_low(0),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X34_Y20_N24
\hour_display_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low~2_combout\ = (\hour_display_high~0_combout\ & (hour_counter_low(2) $ (((\Add9~0_combout\ & !\Equal9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(2),
	datab => \Add9~0_combout\,
	datac => \hour_display_high~0_combout\,
	datad => \Equal9~2_combout\,
	combout => \hour_display_low~2_combout\);

-- Location: LCFF_X34_Y20_N25
\hour_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(2));

-- Location: LCCOMB_X34_Y20_N4
\hour_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~5_combout\ = (\reset~0_combout\ & (\hour_counter_low~1_combout\ & ((\Equal10~1_combout\) # (\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Equal10~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \hour_counter_low~1_combout\,
	combout => \hour_counter_low~5_combout\);

-- Location: LCFF_X34_Y20_N5
\hour_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~5_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(3));

-- Location: LCCOMB_X34_Y20_N0
\hour_counter_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~1_combout\ = hour_counter_low(3) $ (((hour_counter_low(2) & (!\Equal9~2_combout\ & \Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(2),
	datab => hour_counter_low(3),
	datac => \Equal9~2_combout\,
	datad => \Add9~0_combout\,
	combout => \hour_counter_low~1_combout\);

-- Location: LCCOMB_X34_Y20_N6
\hour_display_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low~3_combout\ = (\hour_display_high~0_combout\ & (\hour_counter_low~1_combout\ & ((\Equal10~1_combout\) # (\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \Equal10~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \hour_counter_low~1_combout\,
	combout => \hour_display_low~3_combout\);

-- Location: LCFF_X34_Y20_N7
\hour_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(3));

-- Location: LCCOMB_X34_Y20_N18
\hour_display_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low~1_combout\ = (\hour_display_high~0_combout\ & (\hour_counter_low~0_combout\ & ((\Equal10~0_combout\) # (\Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \hour_counter_low~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \hour_display_low~1_combout\);

-- Location: LCFF_X34_Y20_N19
\hour_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(1));

-- Location: LCCOMB_X34_Y20_N20
\hour_display_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low~0_combout\ = (\hour_display_high~0_combout\ & (hour_counter_low(0) $ (((!\Equal9~1_combout\ & !\Equal9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => hour_counter_low(0),
	datac => \Equal9~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \hour_display_low~0_combout\);

-- Location: LCFF_X34_Y20_N21
\hour_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low~0_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(0));

-- Location: LCCOMB_X1_Y23_N20
\led_hour_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr6~0_combout\ = (hour_display_low(1) & (((hour_display_low(3))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((!hour_display_low(3) & hour_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\led_hour_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr5~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # (hour_display_low(1) $ (hour_display_low(0))))) # (!hour_display_low(2) & (hour_display_low(3) & (hour_display_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\led_hour_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr4~0_combout\ = (hour_display_low(2) & (hour_display_low(3))) # (!hour_display_low(2) & (hour_display_low(1) & ((hour_display_low(3)) # (!hour_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\led_hour_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr3~0_combout\ = (hour_display_low(1) & ((hour_display_low(3)) # ((hour_display_low(2) & hour_display_low(0))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((!hour_display_low(3) & hour_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\led_hour_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr2~0_combout\ = (hour_display_low(0)) # ((hour_display_low(1) & ((hour_display_low(3)))) # (!hour_display_low(1) & (hour_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y23_N30
\led_hour_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr1~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # ((hour_display_low(1) & hour_display_low(0))))) # (!hour_display_low(2) & ((hour_display_low(1)) # ((!hour_display_low(3) & hour_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\led_hour_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_low|WideOr0~0_combout\ = (hour_display_low(2) & (!hour_display_low(3) & ((!hour_display_low(0)) # (!hour_display_low(1))))) # (!hour_display_low(2) & (hour_display_low(3) $ ((hour_display_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(3),
	datac => hour_display_low(1),
	datad => hour_display_low(0),
	combout => \led_hour_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y20_N22
\hour_counter_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~0_combout\ = (\reset~0_combout\ & (hour_counter_high(0) $ (((!\Equal10~1_combout\ & !\Equal10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Equal10~1_combout\,
	datac => hour_counter_high(0),
	datad => \Equal10~0_combout\,
	combout => \hour_counter_high~0_combout\);

-- Location: LCFF_X34_Y20_N23
\hour_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~0_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(0));

-- Location: LCCOMB_X34_Y20_N8
\hour_display_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high~1_combout\ = (\hour_display_high~0_combout\ & (hour_counter_high(0) $ (((!\Equal10~0_combout\ & !\Equal10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => hour_counter_high(0),
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \hour_display_high~1_combout\);

-- Location: LCFF_X34_Y20_N9
\hour_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_high~1_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(0));

-- Location: LCCOMB_X32_Y20_N12
\Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\Equal10~0_combout\) # ((hour_counter_low(1) & ((hour_counter_low(0)) # (!\Equal9~2_combout\))) # (!hour_counter_low(1) & ((\Equal9~2_combout\) # (!hour_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(1),
	datab => hour_counter_low(0),
	datac => \Equal9~2_combout\,
	datad => \Equal10~0_combout\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X32_Y20_N10
\hour_counter_high~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~1_combout\ = (\reset~0_combout\ & (hour_counter_high(1) $ (((hour_counter_high(0) & !\Equal10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => hour_counter_high(0),
	datac => hour_counter_high(1),
	datad => \Equal10~2_combout\,
	combout => \hour_counter_high~1_combout\);

-- Location: LCFF_X32_Y20_N11
\hour_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~1_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(1));

-- Location: LCCOMB_X32_Y20_N6
\hour_display_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high~2_combout\ = (\hour_display_high~0_combout\ & (hour_counter_high(1) $ (((hour_counter_high(0) & !\Equal10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(0),
	datab => hour_counter_high(1),
	datac => \hour_display_high~0_combout\,
	datad => \Equal10~2_combout\,
	combout => \hour_display_high~2_combout\);

-- Location: LCFF_X32_Y20_N7
\hour_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_high~2_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(1));

-- Location: LCCOMB_X32_Y20_N30
\hour_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~2_combout\ = (\reset~0_combout\ & ((\Equal10~2_combout\ & ((hour_counter_high(2)))) # (!\Equal10~2_combout\ & (\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \reset~0_combout\,
	datac => hour_counter_high(2),
	datad => \Equal10~2_combout\,
	combout => \hour_counter_high~2_combout\);

-- Location: LCFF_X32_Y20_N31
\hour_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(2));

-- Location: LCCOMB_X31_Y20_N26
\Add10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = hour_counter_high(3) $ (((hour_counter_high(2) & (hour_counter_high(1) & hour_counter_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(3),
	datab => hour_counter_high(2),
	datac => hour_counter_high(1),
	datad => hour_counter_high(0),
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X32_Y20_N8
\hour_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~3_combout\ = (\reset~0_combout\ & ((\Equal10~2_combout\ & ((hour_counter_high(3)))) # (!\Equal10~2_combout\ & (\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \Add10~1_combout\,
	datac => hour_counter_high(3),
	datad => \Equal10~2_combout\,
	combout => \hour_counter_high~3_combout\);

-- Location: LCFF_X32_Y20_N9
\hour_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~3_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(3));

-- Location: LCCOMB_X32_Y20_N22
\hour_display_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high~4_combout\ = (\hour_display_high~0_combout\ & ((\Equal10~2_combout\ & ((hour_counter_high(3)))) # (!\Equal10~2_combout\ & (\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_display_high~0_combout\,
	datab => \Add10~1_combout\,
	datac => hour_counter_high(3),
	datad => \Equal10~2_combout\,
	combout => \hour_display_high~4_combout\);

-- Location: LCFF_X32_Y20_N23
\hour_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_high~4_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(3));

-- Location: LCCOMB_X32_Y20_N28
\hour_display_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high~3_combout\ = (\hour_display_high~0_combout\ & ((\Equal10~2_combout\ & ((hour_counter_high(2)))) # (!\Equal10~2_combout\ & (\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => hour_counter_high(2),
	datac => \hour_display_high~0_combout\,
	datad => \Equal10~2_combout\,
	combout => \hour_display_high~3_combout\);

-- Location: LCFF_X32_Y20_N29
\hour_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_high~3_combout\,
	ena => \msecond_display_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(2));

-- Location: LCCOMB_X1_Y24_N12
\led_hour_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr6~0_combout\ = (hour_display_high(1) & (((hour_display_high(3))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\led_hour_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr5~0_combout\ = (hour_display_high(3) & (((hour_display_high(1)) # (hour_display_high(2))))) # (!hour_display_high(3) & (hour_display_high(2) & (hour_display_high(0) $ (hour_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\led_hour_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr4~0_combout\ = (hour_display_high(2) & (((hour_display_high(3))))) # (!hour_display_high(2) & (hour_display_high(1) & ((hour_display_high(3)) # (!hour_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\led_hour_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr3~0_combout\ = (hour_display_high(1) & ((hour_display_high(3)) # ((hour_display_high(0) & hour_display_high(2))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\led_hour_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr2~0_combout\ = (hour_display_high(0)) # ((hour_display_high(1) & (hour_display_high(3))) # (!hour_display_high(1) & ((hour_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\led_hour_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr1~0_combout\ = (hour_display_high(0) & ((hour_display_high(1)) # (hour_display_high(3) $ (!hour_display_high(2))))) # (!hour_display_high(0) & ((hour_display_high(2) & ((hour_display_high(3)))) # (!hour_display_high(2) & 
-- (hour_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\led_hour_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_hour_display_high|WideOr0~0_combout\ = (hour_display_high(1) & (!hour_display_high(3) & ((!hour_display_high(2)) # (!hour_display_high(0))))) # (!hour_display_high(1) & ((hour_display_high(3) $ (hour_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \led_hour_display_high|WideOr0~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y18_N2
\Equal1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & \Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X36_Y18_N0
\led0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \led0~1_combout\ = (\led0~0_combout\ & ((\Equal1~10_combout\ & (!\start~regout\)) # (!\Equal1~10_combout\ & ((\led0~reg0_regout\))))) # (!\led0~0_combout\ & (((\led0~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led0~0_combout\,
	datab => \start~regout\,
	datac => \led0~reg0_regout\,
	datad => \Equal1~10_combout\,
	combout => \led0~1_combout\);

-- Location: LCFF_X36_Y18_N1
\led0~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led0~reg0_regout\);

-- Location: LCCOMB_X32_Y17_N6
\Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~9_combout\ & \Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X32_Y17_N28
\led2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \led2~1_combout\ = (\led2~0_combout\ & ((\Equal2~10_combout\ & (!\display~regout\)) # (!\Equal2~10_combout\ & ((\led2~reg0_regout\))))) # (!\led2~0_combout\ & (((\led2~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led2~0_combout\,
	datab => \display~regout\,
	datac => \led2~reg0_regout\,
	datad => \Equal2~10_combout\,
	combout => \led2~1_combout\);

-- Location: LCFF_X32_Y17_N29
\led2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led2~reg0_regout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_msecond_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_second_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_minute_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_hour_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(6));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led0~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led0);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led2~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led3);
END structure;


