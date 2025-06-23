# ----------------------------------------------------------------------------
# Clock and Reset
# ----------------------------------------------------------------------------
# Clock (Bank 13)
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Reset (Bank 34)
set_property PACKAGE_PIN P16 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]


# ----------------------------------------------------------------------------
# Signal Inputs (86 bits total)
# ----------------------------------------------------------------------------
# Pmod JA (Bank 13): signal[0] to signal[7]
set_property PACKAGE_PIN Y11  [get_ports {signal[0]}]  ;# JA1
set_property IOSTANDARD LVCMOS33 [get_ports {signal[0]}]
set_property PACKAGE_PIN AA11 [get_ports {signal[1]}]  ;# JA2
set_property IOSTANDARD LVCMOS33 [get_ports {signal[1]}]
set_property PACKAGE_PIN Y10  [get_ports {signal[2]}]  ;# JA3
set_property IOSTANDARD LVCMOS33 [get_ports {signal[2]}]
set_property PACKAGE_PIN AA9  [get_ports {signal[3]}]  ;# JA4
set_property IOSTANDARD LVCMOS33 [get_ports {signal[3]}]
set_property PACKAGE_PIN AB11 [get_ports {signal[4]}]  ;# JA7
set_property IOSTANDARD LVCMOS33 [get_ports {signal[4]}]
set_property PACKAGE_PIN AB10 [get_ports {signal[5]}]  ;# JA8
set_property IOSTANDARD LVCMOS33 [get_ports {signal[5]}]
set_property PACKAGE_PIN AB9  [get_ports {signal[6]}]  ;# JA9
set_property IOSTANDARD LVCMOS33 [get_ports {signal[6]}]
set_property PACKAGE_PIN AA8  [get_ports {signal[7]}]  ;# JA10
set_property IOSTANDARD LVCMOS33 [get_ports {signal[7]}]

# Pmod JB (Bank 13): signal[8] to signal[15]
set_property PACKAGE_PIN W12 [get_ports {signal[8]}]   ;# JB1
set_property IOSTANDARD LVCMOS33 [get_ports {signal[8]}]
set_property PACKAGE_PIN W11 [get_ports {signal[9]}]   ;# JB2
set_property IOSTANDARD LVCMOS33 [get_ports {signal[9]}]
set_property PACKAGE_PIN V10 [get_ports {signal[10]}]  ;# JB3
set_property IOSTANDARD LVCMOS33 [get_ports {signal[10]}]
set_property PACKAGE_PIN W8  [get_ports {signal[11]}]  ;# JB4
set_property IOSTANDARD LVCMOS33 [get_ports {signal[11]}]
set_property PACKAGE_PIN V12 [get_ports {signal[12]}]  ;# JB7
set_property IOSTANDARD LVCMOS33 [get_ports {signal[12]}]
set_property PACKAGE_PIN W10 [get_ports {signal[13]}]  ;# JB8
set_property IOSTANDARD LVCMOS33 [get_ports {signal[13]}]
set_property PACKAGE_PIN V9  [get_ports {signal[14]}]  ;# JB9
set_property IOSTANDARD LVCMOS33 [get_ports {signal[14]}]
set_property PACKAGE_PIN V8  [get_ports {signal[15]}]  ;# JB10
set_property IOSTANDARD LVCMOS33 [get_ports {signal[15]}]

# Pmod JC (Bank 13): signal[16] to signal[23]
set_property PACKAGE_PIN AB6 [get_ports {signal[16]}]  ;# JC1_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[16]}]
set_property PACKAGE_PIN AB7 [get_ports {signal[17]}]  ;# JC1_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[17]}]
set_property PACKAGE_PIN AA4 [get_ports {signal[18]}]  ;# JC2_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[18]}]
set_property PACKAGE_PIN Y4  [get_ports {signal[19]}]  ;# JC2_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[19]}]
set_property PACKAGE_PIN T6  [get_ports {signal[20]}]  ;# JC3_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[20]}]
set_property PACKAGE_PIN R6  [get_ports {signal[21]}]  ;# JC3_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[21]}]
set_property PACKAGE_PIN U4  [get_ports {signal[22]}]  ;# JC4_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[22]}]
set_property PACKAGE_PIN T4  [get_ports {signal[23]}]  ;# JC4_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[23]}]

# Pmod JD (Bank 13): signal[24] to signal[31]
set_property PACKAGE_PIN W7 [get_ports {signal[24]}]  ;# JD1_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[24]}]
set_property PACKAGE_PIN V7 [get_ports {signal[25]}]  ;# JD1_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[25]}]
set_property PACKAGE_PIN V4 [get_ports {signal[26]}]  ;# JD2_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[26]}]
set_property PACKAGE_PIN V5 [get_ports {signal[27]}]  ;# JD2_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[27]}]
set_property PACKAGE_PIN W5 [get_ports {signal[28]}]  ;# JD3_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[28]}]
set_property PACKAGE_PIN W6 [get_ports {signal[29]}]  ;# JD3_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[29]}]
set_property PACKAGE_PIN U5 [get_ports {signal[30]}]  ;# JD4_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[30]}]
set_property PACKAGE_PIN U6 [get_ports {signal[31]}]  ;# JD4_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[31]}]

# FMC Expansion Connector (Bank 34): signal[32] to signal[47]
set_property PACKAGE_PIN M20 [get_ports {signal[32]}] ;# FMC_LA00_CC_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[32]}]
set_property PACKAGE_PIN M19 [get_ports {signal[33]}] ;# FMC_LA00_CC_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[33]}]
set_property PACKAGE_PIN N20 [get_ports {signal[34]}] ;# FMC_LA01_CC_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[34]}]
set_property PACKAGE_PIN N19 [get_ports {signal[35]}] ;# FMC_LA01_CC_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[35]}]
set_property PACKAGE_PIN P18 [get_ports {signal[36]}] ;# FMC_LA02_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[36]}]
set_property PACKAGE_PIN P17 [get_ports {signal[37]}] ;# FMC_LA02_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[37]}]
set_property PACKAGE_PIN P22 [get_ports {signal[38]}] ;# FMC_LA03_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[38]}]
set_property PACKAGE_PIN N22 [get_ports {signal[39]}] ;# FMC_LA03_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[39]}]
set_property PACKAGE_PIN M22 [get_ports {signal[40]}] ;# FMC_LA04_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[40]}]
set_property PACKAGE_PIN M21 [get_ports {signal[41]}] ;# FMC_LA04_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[41]}]
set_property PACKAGE_PIN K18 [get_ports {signal[42]}] ;# FMC_LA05_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[42]}]
set_property PACKAGE_PIN J18 [get_ports {signal[43]}] ;# FMC_LA05_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[43]}]
set_property PACKAGE_PIN L22 [get_ports {signal[44]}] ;# FMC_LA06_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[44]}]
set_property PACKAGE_PIN L21 [get_ports {signal[45]}] ;# FMC_LA06_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[45]}]
set_property PACKAGE_PIN T17 [get_ports {signal[46]}] ;# FMC_LA07_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[46]}]
set_property PACKAGE_PIN T16 [get_ports {signal[47]}] ;# FMC_LA07_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[47]}]

# FMC Expansion Connector (Bank 35): signal[48] to signal[83]
set_property PACKAGE_PIN C19 [get_ports {signal[48]}] ;# FMC_CLK1_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[48]}]
set_property PACKAGE_PIN D18 [get_ports {signal[49]}] ;# FMC_CLK1_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[49]}]
set_property PACKAGE_PIN B20 [get_ports {signal[50]}] ;# FMC_LA17_CC_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[50]}]
set_property PACKAGE_PIN B19 [get_ports {signal[51]}] ;# FMC_LA17_CC_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[51]}]
set_property PACKAGE_PIN C20 [get_ports {signal[52]}] ;# FMC_LA18_CC_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[52]}]
set_property PACKAGE_PIN D20 [get_ports {signal[53]}] ;# FMC_LA18_CC_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[53]}]
set_property PACKAGE_PIN G16 [get_ports {signal[54]}] ;# FMC_LA19_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[54]}]
set_property PACKAGE_PIN G15 [get_ports {signal[55]}] ;# FMC_LA19_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[55]}]
set_property PACKAGE_PIN G21 [get_ports {signal[56]}] ;# FMC_LA20_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[56]}]
set_property PACKAGE_PIN G20 [get_ports {signal[57]}] ;# FMC_LA20_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[57]}]
set_property PACKAGE_PIN E20 [get_ports {signal[58]}] ;# FMC_LA21_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[58]}]
set_property PACKAGE_PIN E19 [get_ports {signal[59]}] ;# FMC_LA21_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[59]}]
set_property PACKAGE_PIN F19 [get_ports {signal[60]}] ;# FMC_LA22_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[60]}]
set_property PACKAGE_PIN G19 [get_ports {signal[61]}] ;# FMC_LA22_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[61]}]
set_property PACKAGE_PIN D15 [get_ports {signal[62]}] ;# FMC_LA23_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[62]}]
set_property PACKAGE_PIN E15 [get_ports {signal[63]}] ;# FMC_LA23_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[63]}]
set_property PACKAGE_PIN A19 [get_ports {signal[64]}] ;# FMC_LA24_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[64]}]
set_property PACKAGE_PIN A18 [get_ports {signal[65]}] ;# FMC_LA24_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[65]}]
set_property PACKAGE_PIN C22 [get_ports {signal[66]}] ;# FMC_LA25_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[66]}]
set_property PACKAGE_PIN D22 [get_ports {signal[67]}] ;# FMC_LA25_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[67]}]
set_property PACKAGE_PIN E18 [get_ports {signal[68]}] ;# FMC_LA26_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[68]}]
set_property PACKAGE_PIN F18 [get_ports {signal[69]}] ;# FMC_LA26_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[69]}]
set_property PACKAGE_PIN D21 [get_ports {signal[70]}] ;# FMC_LA27_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[70]}]
set_property PACKAGE_PIN E21 [get_ports {signal[71]}] ;# FMC_LA27_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[71]}]
set_property PACKAGE_PIN A17 [get_ports {signal[72]}] ;# FMC_LA28_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[72]}]
set_property PACKAGE_PIN A16 [get_ports {signal[73]}] ;# FMC_LA28_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[73]}]
set_property PACKAGE_PIN C18 [get_ports {signal[74]}] ;# FMC_LA29_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[74]}]
set_property PACKAGE_PIN C17 [get_ports {signal[75]}] ;# FMC_LA29_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[75]}]
set_property PACKAGE_PIN B15 [get_ports {signal[76]}] ;# FMC_LA30_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[76]}]
set_property PACKAGE_PIN C15 [get_ports {signal[77]}] ;# FMC_LA30_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[77]}]
set_property PACKAGE_PIN B17 [get_ports {signal[78]}] ;# FMC_LA31_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[78]}]
set_property PACKAGE_PIN B16 [get_ports {signal[79]}] ;# FMC_LA31_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[79]}]
set_property PACKAGE_PIN A22 [get_ports {signal[80]}] ;# FMC_LA32_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[80]}]
set_property PACKAGE_PIN A21 [get_ports {signal[81]}] ;# FMC_LA32_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[81]}]
set_property PACKAGE_PIN B22 [get_ports {signal[82]}] ;# FMC_LA33_N
set_property IOSTANDARD LVCMOS33 [get_ports {signal[82]}]
set_property PACKAGE_PIN B21 [get_ports {signal[83]}] ;# FMC_LA33_P
set_property IOSTANDARD LVCMOS33 [get_ports {signal[83]}]

# XADC GIO / Extra Pins (Bank 34): signal[84] to signal[85]
set_property PACKAGE_PIN K15 [get_ports {signal[84]}] ;# XADC_GIO2
set_property IOSTANDARD LVCMOS18 [get_ports {signal[84]}]
set_property PACKAGE_PIN J15 [get_ports {signal[85]}] ;# XADC_GIO3
set_property IOSTANDARD LVCMOS18 [get_ports {signal[85]}]

# ----------------------------------------------------------------------------
# AMDF Multiplexed Outputs (4 bits) on LEDs (Bank 33)
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN T22 [get_ports {amdf_mux_out[0]}] ;# LD0
set_property PACKAGE_PIN T21 [get_ports {amdf_mux_out[1]}] ;# LD1
set_property PACKAGE_PIN U22 [get_ports {amdf_mux_out[2]}] ;# LD2
set_property PACKAGE_PIN U21 [get_ports {amdf_mux_out[3]}] ;# LD3
set_property IOSTANDARD LVCMOS33 [get_ports {amdf_mux_out[*]}]

# ----------------------------------------------------------------------------
# Bank-Wide I/O Standards
# ----------------------------------------------------------------------------
# Bank 13 (3.3V)
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]]
# Bank 34 (1.8V)
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]]
# Bank 35 (1.8V)
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]]
