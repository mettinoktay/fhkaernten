-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\eduyilmet001\Desktop\simulink_vhdlcoder\CLKDIV_LED_basic\clkdiv0_37hz.vhd
-- Created: 2023-10-05 12:09:47
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: clkdiv0_37hz
-- Source Path: CLKDIV_LED_basic/clkdiv0.37hz
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY clkdiv0_37hz IS
  PORT( CLK100MHZ                         :   IN    std_logic;
        RESETN                            :   IN    std_logic;
        CLK0_37HZ                         :   OUT   std_logic
        );
END clkdiv0_37hz;


ARCHITECTURE rtl OF clkdiv0_37hz IS

  -- Signals
  SIGNAL Constant_out1                    : std_logic;
  SIGNAL Add2_out1                        : unsigned(28 DOWNTO 0);  -- ufix29
  SIGNAL Unit_Delay1_out1                 : unsigned(28 DOWNTO 0);  -- ufix29
  SIGNAL Add2_add_cast                    : unsigned(28 DOWNTO 0);  -- ufix29
  SIGNAL Extract_Bits5_out1               : std_logic;  -- ufix1_E28
  SIGNAL Cast_To_Boolean_out1             : std_logic;

BEGIN
  -- Single bit 0.37 Hz CLK
  -- Type cast to boolean (single bit)
  -- MSB is the 6Hz CLK (100MHz/(2^N))
  -- input signal is latched (delayed) by a 100MHz CLK cycle (10ns)
  -- With each CLK cycle '1' is added to the output

  Constant_out1 <= '1';

  Unit_Delay1_process : PROCESS (CLK100MHZ, RESETN)
  BEGIN
    IF RESETN = '0' THEN
      Unit_Delay1_out1 <= to_unsigned(16#00000000#, 29);
    ELSIF CLK100MHZ'EVENT AND CLK100MHZ = '1' THEN
      Unit_Delay1_out1 <= Add2_out1;
    END IF;
  END PROCESS Unit_Delay1_process;


  Add2_add_cast <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & Constant_out1;
  Add2_out1 <= Add2_add_cast + Unit_Delay1_out1;

  Extract_Bits5_out1 <= Add2_out1(28);

  
  Cast_To_Boolean_out1 <= '1' WHEN Extract_Bits5_out1 /= '0' ELSE
      '0';

  CLK0_37HZ <= Cast_To_Boolean_out1;

END rtl;
