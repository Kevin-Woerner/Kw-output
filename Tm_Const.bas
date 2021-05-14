'    Copyright (C) 2021 by Kevin D. Woerner
''-' =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
''-' =KDW= ########## SOURCE $KWROOT/codekdw/kw-lib/Tm_Const.fwipp ##########
''-' =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
''-' =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
' 2021-05-14 kdw  For Changelog, See File Tm_Const.varylog
Attribute VB_Name = "Tm_Const"
Option Explicit
Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables #################################### LANG_VB6 #
Public Const A2DCNT As Double = Kw.BIT
Public Const P0CNT As Double = Kw.BIT
Public Const ENGCNT As Double = Kw.BIT
Public Const DACCNT As Double = Kw.BIT
Public Const TM_LIST_SEPARATOR As String = ","
Public Const TM_PDTM_MIN_VERSION As String = "1.5.4"
Public Const TM_REG_KEY As String = "TM_INFO"
Public Const TM_BLT_REGKEY As String = "BLT"
Public Const TM_CDTM_REGKEY As String = "CDTM"
Public Const TM_DPT_REGKEY As String = "DPT"
Public Const TM_NGRTM_REGKEY As String = "NGRTM"
Public Const TM_NGT_REGKEY As String = "NGT"
Public Const TM_PDTM_REGKEY As String = "PDTM"
Public Const TM_S700_REGKEY As String = "700"
Public Const TM_S700P_REGKEY As String = "700+"
Public Const TM_BLT_REGEX As String = "(MCRT)?(80001|86108|86109|86110" & _
         "|8[14-7]00[24789]" & "|8[14-7]01[01]" & "|8[1458]70[24789]" & _
         "|8[1458]71[01]" & "|8300[247])VS?"
Public Const TM_CDTM_REGEX As String = "(MCRT)?(4820[1-4])VS?"
Public Const TM_NGRTM_REGEX As String = "(CF28(56|82|84)" & _
         "|22(7[1-5]|8[1-7]|9[1-4]|90[89]|910)" & "|23(0[24789]|10)D)" & _
         "V[NCJ]?S?"
Public Const TM_NGT_REGEX As String = "(MCRT)?" & _
         "(4[89]600VH?|(488|[457]98)(0[1234678]|[56]1|[5-8]0)V)S?"
Public Const TM_PDTM_REGEX As String = "(MCRT)?(278[234]0D|27835D" & _
         "|4[89]00[1-4678]P" & "|4[89]0[67]0P" & "|4[89]70[1-8]VH?" & _
         "|4[89]7[678]0VH?" & "|4[89]761VH?" & "|[57]970[1-4678]V" & _
         "|[57]97[67][01]V)S?"
Public Const TM_S700_REGEX As String = "(Model 7)" & _
         "(541|[0-478][0-478]) " & "v[1-7]\\.[0-9] "
Public Const TM_S700P_REGEX As String = "(Model 7|......7)" & _
         "(541\\+|[0-478][0-478]\\+" & ")v1\\.[0-9][0-9]?"
Public Const TM_TEST_TIME_SEC As Double = 3 * Kw.SECOND
Public Const TM_DAOV_CAP As Double = &H10000& * DACCNT
Public Const TM_DAOV_VREF As Double = 2.5 * Kw.VOLT
Private Const LX_DAOV_RPRE As Double = 4.99 * Kw.KILO * Kw.OHM
Private Const LX_DAOV_2R As Double = 30.9 * Kw.KILO * Kw.OHM
Private Const LX_DAOV_RGND As Double = 6.04 * Kw.KILO * Kw.OHM
Public Const TM_DAOV_GAIN As Double = LX_DAOV_2R * (1.0 / LX_DAOV_RPRE + _
         1.0 / LX_DAOV_RGND) + 1.0
Public Const TM_DAOV_DAC_PER_V As Double = TM_DAOV_CAP / (TM_DAOV_GAIN * _
         TM_DAOV_VREF)
Public Const TM_DAOV_V_IF_DACMIN As Double = - TM_DAOV_VREF * LX_DAOV_2R _
         / LX_DAOV_RPRE
Public Const TM_DAOV_DAC_IF_0V As Double = - TM_DAOV_V_IF_DACMIN * _
         TM_DAOV_DAC_PER_V
Public Const TM_DAOV_DAC_MAX As Double = TM_DAOV_CAP - TM_DAOV_DAC_IF_0V
Public Const TM_DAOV_DAC_MIN As Double = - TM_DAOV_DAC_IF_0V
Public Const TM_DAOV_V_IF_DACMAX As Double = TM_DAOV_DAC_MAX / _
         TM_DAOV_DAC_PER_V
Public Const TM_DAOV_DAC_IF_P10V As Double = TM_DAOV_DAC_IF_0V + 10.0 * _
         Kw.VOLT * TM_DAOV_DAC_PER_V
Public Const TM_DAOV_DAC_IF_M10V As Double = TM_DAOV_DAC_IF_0V - 10.0 * _
         Kw.VOLT * TM_DAOV_DAC_PER_V
Public Const TM_DAOI_GZ_MAGIC As Double = 10.0 * Kw.AMP / Kw.VOLT
Private Const LX_DAOI_1R As Double = 45.3 * Kw.KILO * Kw.OHM
Private Const LX_DAOI_2R As Double = 191.0 * Kw.KILO * Kw.OHM
Private Const LX_DAOI_3R As Double = 18.2 * Kw.KILO * Kw.OHM
Private Const LX_DAOI_4R As Double = 100.0 * Kw.OHM
Public Const TM_DAOI_mA_AT_0V As Double = (LX_DAOI_3R * TM_DAOV_VREF * _
         TM_DAOI_GZ_MAGIC) / LX_DAOI_1R
Public Const TM_DAOI_mA_PER_V As Double = LX_DAOI_3R / (LX_DAOI_2R * _
         LX_DAOI_4R * Kw.MILLI)
Public Const TM_DAOI_mA_GAIN As Double = (LX_DAOI_3R * TM_DAOI_mA_PER_V) _
         / LX_DAOI_2R
Public Const TM_DAOI_mA_IF_0V As Double = (LX_DAOI_3R * TM_DAOI_mA_PER_V _
         * TM_DAOV_VREF) / LX_DAOI_1R
Public Const TM_DAOI_DAC_PER_mA As Double = TM_DAOV_DAC_PER_V / _
         TM_DAOI_mA_PER_V
Public Const TM_DAOI_DAC_IF_00mA As Double = TM_DAOV_DAC_IF_0V - _
         TM_DAOI_DAC_PER_mA * TM_DAOI_mA_AT_0V
Public Const TM_DAOI_DAC_IF_04mA As Double = TM_DAOI_DAC_IF_00mA + _
         TM_DAOI_DAC_PER_mA * (4.0 * Kw.AMP)
Public Const TM_DAOI_DAC_IF_12mA As Double = TM_DAOI_DAC_IF_00mA + _
         TM_DAOI_DAC_PER_mA * (12.0 * Kw.AMP)
Public Const TM_DAOI_DAC_IF_20mA As Double = TM_DAOI_DAC_IF_00mA + _
         TM_DAOI_DAC_PER_mA * (20.0 * Kw.AMP)
Public Const TM_DAOI_mA_IF_DACMIN As Double = - TM_DAOI_DAC_IF_00mA / _
         TM_DAOI_DAC_PER_mA
Public Const TM_DAOI_mA_IF_DACMAX As Double = TM_DAOI_mA_IF_DACMIN + _
         TM_DAOV_CAP / TM_DAOI_DAC_PER_mA
Public Const TM_NGT_COUNT_AT_FS As Double = 20000.0 * ENGCNT
Public Const TM_NGT_P0_PER_COUNT As Double = &H8000& * P0CNT / ENGCNT
Public Const TM_NGT_P0_AT_FS As Double = TM_NGT_P0_PER_COUNT * _
         TM_NGT_COUNT_AT_FS
Public Const TM_NGT_P0_MAX As Double = TM_NGT_P0_AT_FS * 1.5
Public Const TM_NGT_AO_MULT As Double = 8192.0
Public Const TM_NGT_AO_SHFT As Double = 256.0
Public Const TM_NGT_A2D_CAP As Double = &H40000& * A2DCNT
Public Const TM_NGT_IA_INPUT_MAX As Double = 16
Public Const TM_NGT_CLOCK_Hz As Double = 60.0 * Kw.MEGA * Kw.Hz
Public Const TM_NGT_ROTOR_CLOCK_Hz As Double = 16.0 * Kw.MEGA * Kw.Hz
Public Const TM_NGT_NOISE_MAX As Double = (1.0)
Public Const TM_NGT_NOISE_MIN As Double = 0.3
Private Const LX_NGT_3R As Double = 10.0 * Kw.KILO * Kw.OHM
Private Const LX_NGT_7R As Double = 130.0 * Kw.OHM
Public Const TM_NGT_GAIN As Double = 2.0 * LX_NGT_3R / LX_NGT_7R + 1.0
Public Const TM_NGT_A2D_PER_UVPV As Double = TM_NGT_A2D_CAP * TM_NGT_GAIN _
         * Kw.UVPV
Private Const LX_NGT_ROTOR_BRIDGE As Double = 1.0 * Kw.KILO * Kw.OHM
Private Const LX_NGT_SHUNT_OHMS As Double = 100.0 * Kw.KILO * Kw.OHM
Public Const TM_NGT_SHUNT_UVPV As Double = 0.5 * LX_NGT_ROTOR_BRIDGE / _
         (Kw.UVPV * (2.0 * LX_NGT_SHUNT_OHMS + LX_NGT_ROTOR_BRIDGE))
Public Const TM_NGT_SHUNT_A2D As Double = TM_NGT_SHUNT_UVPV * _
         TM_NGT_A2D_PER_UVPV
Private Const LX_NGT00_ROTOR_BRIDGE As Double = 5.0 * Kw.KILO * Kw.OHM
Private Const LX_NGT00_SHUNT_OHMS As Double = 270.0 * Kw.KILO * Kw.OHM
Public Const TM_NGT00_SHUNT_UVPV As Double = 0.5 * LX_NGT00_ROTOR_BRIDGE _
         / (Kw.UVPV * (2.0 * LX_NGT00_SHUNT_OHMS + LX_NGT00_ROTOR_BRIDGE))
Public Const TM_NGT00_SHUNT_A2D As Double = TM_NGT00_SHUNT_UVPV * _
         TM_NGT_A2D_PER_UVPV
Public Const TM_NGT_MSP430_URV_A2D_FS_COUNT As Double = &H8000&
Private Const LX_NGT_MSP430_URV_A2D_FS_V As Double = 3.3 * Kw.VOLT
Private Const LX_NGT_MSP430_URV_A2D_0_V As Double = 0.0 * Kw.VOLT
Public Const TM_NGT_MSP430_URV_A2D_PER_V As Double = _
         TM_NGT_MSP430_URV_A2D_FS_COUNT / (LX_NGT_MSP430_URV_A2D_FS_V - _
         LX_NGT_MSP430_URV_A2D_0_V)
Private Const LX_NGT_URV_ROTOR_R_PLUS As Double = 30100.0 * Kw.OHM
Private Const LX_NGT_URV_ROTOR_R_GND As Double = 10000.0 * Kw.OHM
Private Const LX_NGT_URV_GAIN As Double = LX_NGT_URV_ROTOR_R_GND / _
         (LX_NGT_URV_ROTOR_R_PLUS + LX_NGT_URV_ROTOR_R_GND)
Public Const TM_NGT_URV_A2D_PER_V As Double = (LX_NGT_URV_GAIN * _
         TM_NGT_MSP430_URV_A2D_PER_V)
Public Const TM_BLT_A2D_CAP As Double = &H20000& * A2DCNT
Public Const TM_BLTDC_NOISE_MIN As Double = 0.3
Public Const TM_BLTDC_NOISE_MAX As Double = 0.7
Public Const TM_BLT_COUNT_AT_FS As Double = 20000 * ENGCNT
Public Const TM_BLT_P0_PER_COUNT As Double = &H8000& * P0CNT / ENGCNT
Public Const TM_BLT_P0_AT_FS As Double = TM_BLT_COUNT_AT_FS * _
         TM_BLT_P0_PER_COUNT
Public Const TM_BLT_DIODE_VOLTAGE_DROP As Double = 0.7 * Kw.VOLT
Private Const LX_BLTDC_ROTOR_24R As Double = 100.0 * Kw.OHM
Private Const LX_BLTDC_ROTOR_25R As Double = 499.0 * Kw.OHM
Private Const LX_BLTDC_ROTOR_26R As Double = 200.0 * Kw.OHM
Private Const LX_BLTDC_ROTOR_27R As Double = 2210.0 * Kw.OHM
Public Const TM_BLTDC_GAIN As Double = (2.0 * LX_BLTDC_ROTOR_25R / _
         LX_BLTDC_ROTOR_24R + 1.0) * (2.0 * LX_BLTDC_ROTOR_27R / _
         LX_BLTDC_ROTOR_26R + 1.0)
Public Const TM_BLTDC_A2D_PER_UVPV As Double = (TM_BLT_A2D_CAP * _
         TM_BLTDC_GAIN) * Kw.UVPV
Private Const LX_BLTAC_ROTOR_14R As Double = 118.0 * Kw.OHM
Private Const LX_BLTAC_ROTOR_13R As Double = 15000.0 * Kw.OHM
Public Const TM_BLTAC_GAIN As Double = 1.0 + 2.0 * LX_BLTAC_ROTOR_13R / _
         LX_BLTAC_ROTOR_14R
Public Const TM_BLTAC_A2D_PER_UVPV As Double = TM_BLT_A2D_CAP * _
         TM_BLTAC_GAIN * Kw.UVPV
Public Const TM_BLTAC_NOISE_MIN As Double = 0.1
Public Const TM_BLTAC_NOISE_MAX As Double = 0.4
Public Const TM_BLT_CLOCK_Hz As Double = 60.0 * Kw.MEGA * Kw.Hz
Public Const TM_BLT_ROTOR_CLOCK_Hz As Double = 20.0 * Kw.MEGA * Kw.Hz
Public Const TM_BLT_SHUNT_OHMS As Double = 100.0 * Kw.KILO * Kw.OHM
Public Const TM_BLT_ACDC_RATIO As Double = 0.9929
Public Const TM_BLT_MF_NO_TARE_SHUNT_BIT As Double = &H01&
Public Const TM_BLT_MF_NO_LS_BITS_BIT As Double = &H02&
Public Const TM_BLT_MF_LOP_3_BITS_BIT As Double = &H04&
Public Const TM_BLT_MF_20KHZ_FILTER_BIT As Double = &H08&
Public Const TM_BLT_MF_DISABLE_BUTTON_BIT As Double = &H10&
Public Const TM_BLT_MF_RF_FILTER_BIT As Double = &H20&
Public Const TM_BLT_MF_OLD_RF_HW_BIT As Double = &H40&
Public Const TM_BLT_ROTOR_BRIDGE As Double = 1000 * Kw.OHM
Public Const TM_BLTAC_SHUNT_UVPV As Double = TM_BLT_ROTOR_BRIDGE / _
         (Kw.UVPV * (4.0 * TM_BLT_SHUNT_OHMS + 2.0 * TM_BLT_ROTOR_BRIDGE))
Public Const TM_BLTAC_SHUNT_A2D As Double = TM_BLTAC_SHUNT_UVPV * _
         TM_BLTAC_A2D_PER_UVPV
Public Const TM_BLTDC_SHUNT_UVPV As Double = TM_BLT_ROTOR_BRIDGE / _
         (Kw.UVPV * (4.0 * TM_BLT_SHUNT_OHMS + 2.0 * TM_BLT_ROTOR_BRIDGE))
Public Const TM_BLTDC_SHUNT_A2D As Double = TM_BLTDC_SHUNT_UVPV * _
         TM_BLTDC_A2D_PER_UVPV
Public Const TM_CDTM_CLOCK_Hz As Double = 60.0 * Kw.MEGA * Kw.Hz
Public Const TM_CDTM_COUNT_AT_FS As Double = 15000.0 * ENGCNT
Public Const TM_CDTM_P0_PER_COUNT As Double = &H10000& * P0CNT / ENGCNT
Public Const TM_CDTM_NOMINAL_Hz_AT_ZERO As Double = 8.3 * Kw.KILO * Kw.Hz
Public Const TM_CDTM_NOMINAL_FS_SPAN_Hz As Double = 3.5 * Kw.KILO * Kw.Hz
Public Const TM_CDTM_MIN_Hz As Double = 2.0 * Kw.KILO * Kw.Hz
Private Const LX_CDTM_2R As Double = 10.0 * Kw.KILO * Kw.OHM
Private Const LX_CDTM_5R As Double = 10.0 * Kw.KILO * Kw.OHM
Private Const LX_CDTM_8R As Double = 100.0 * Kw.KILO * Kw.OHM
Private Const LX_CDTM_7R As Double = 499.0 * Kw.OHM
Private Const LX_CDTM_7C As Double = 1.5 * Kw.NANO * Kw.FARAD
Private Const LX_CDTM_8C As Double = 1.5 * Kw.NANO * Kw.FARAD
Private Const LX_CDTM_2V As Double = 2.5 * Kw.VOLT
Private Const LX_CDTM_GAINA As Double = LX_CDTM_8R / LX_CDTM_7R
Private Const LX_CDTM_GAINB As Double = LX_CDTM_2R / (LX_CDTM_2R + _
         LX_CDTM_5R)
Private Const LX_CDTM_CT As Double = LX_CDTM_7C + LX_CDTM_8C
Private Const LX_CDTM_RZ As Double = 1.0 / (1.0 / LX_CDTM_2R + 1.0 / _
         LX_CDTM_5R)
Private Const LX_CDTM_FOUT_PER_VIN As Double = 0.1 / (LX_CDTM_2R * _
         LX_CDTM_CT)
Private Const LX_CDTM_FOUT_PER_VINZ As Double = 0.1 / (LX_CDTM_RZ * _
         LX_CDTM_CT)
Private Const LX_CDTM_V_OFFSET As Double = LX_CDTM_2V * LX_CDTM_GAINB
Public Const TM_CDTM_GAIN As Double = LX_CDTM_GAINA * LX_CDTM_GAINB
Public Const TM_CDTM_X As Double = TM_CDTM_GAIN * LX_CDTM_FOUT_PER_VINZ
Public Const TM_CDTM_Hz_PER_UVPV As Double = LX_CDTM_2V * TM_CDTM_X * Kw.UVPV
Public Const TM_CDTM_NOMINAL_Hz_AT_0X As Double = LX_CDTM_V_OFFSET * _
         LX_CDTM_FOUT_PER_VINZ
Public Const TM_CDTM_P0_AT_FS As Double = TM_CDTM_COUNT_AT_FS * _
         TM_CDTM_P0_PER_COUNT
Public Const TM_CDTM_FS_UVPV As Double = TM_CDTM_NOMINAL_FS_SPAN_Hz / _
         TM_CDTM_Hz_PER_UVPV
Public Const TM_CDTM_NOISE_MIN_OLD As Double = 0.2
Public Const TM_CDTM_NOISE_MAX_OLD As Double = 2.0
Public Const TM_CDTM_NOISE_MIN As Double = 0.2
Public Const TM_CDTM_NOISE_MAX As Double = 2.0
Public Const TM_CDTM_SP_DELIM As String = vbTab
Public Const TM_PDTM_ANAOUT_NUMBER As Double = 3
Public Const TM_PDTM_CHANNEL_NUMBER As Double = 4
Public Const TM_PDTM_FILTER_MAX As Double = 10
Public Const TM_PDTM_NOISE_MIN As Double = 7
Public Const TM_PDTM_NOISE_MAX As Double = 25
Public Const TM_PDTM_A2D_FS As Double = 5000
Public Const TM_PDTM_A2D_CAP As Double = &H2000& * A2DCNT
Public Const TM_PDTM_MULT As Double = 2
Public Const TM_PDTM_COUNT_PER_A2D As Double = 4
Public Const TM_PDTM_COUNT_AT_FS As Double = TM_PDTM_A2D_FS * _
         TM_PDTM_COUNT_PER_A2D
Public Const TM_PDTM_TC_PER_DEGC As Double = 16 / Kw.DEGC
Public Const TM_PDTM_GAIN_VALUES As Double = &H1000&
Public Const TM_PDTM_CLOCK_Hz As Double = 8.0 * Kw.MEGA * Kw.Hz
Public Const TM_PDTM_SEC_PER_ZRVALUE As Double = &H8000& / TM_PDTM_CLOCK_Hz
Private Const LX_PDTM_22R As Double = 6.65 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_23R As Double = 30.1 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_18R As Double = 49.9 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_19R As Double = 10.0 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_10R As Double = 49.9 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_11R As Double = 30.1 * Kw.KILO * Kw.OHM
Private Const LX_PDTM_GAIN_HWA As Double = LX_PDTM_23R / LX_PDTM_22R
Private Const LX_PDTM_GAIN_HWB As Double = LX_PDTM_18R / LX_PDTM_19R + 1.0
Private Const LX_PDTM_GAIN_HWC As Double = 2.0 * Kw.TWOSQRT / Kw.PI
Private Const LX_PDTM_GAIN_HWD As Double = LX_PDTM_10R / LX_PDTM_11R + 1.0
Public Const TM_PDTM_GAIN_HW As Double = LX_PDTM_GAIN_HWA * _
         LX_PDTM_GAIN_HWB * LX_PDTM_GAIN_HWC * LX_PDTM_GAIN_HWD
Public Const TM_PDTM_GAIN_PER_GAIN As Double = TM_PDTM_GAIN_HW / _
         TM_PDTM_GAIN_VALUES
Public Const TM_PDTM_COUNT_PER_GAIN_UVPV As Double = Kw.UVPV * _
         TM_PDTM_A2D_CAP * TM_PDTM_COUNT_PER_A2D * TM_PDTM_GAIN_PER_GAIN
Public Const TM_PDTM_P0_AT_FS As Double = TM_PDTM_A2D_CAP * _
         TM_PDTM_COUNT_PER_A2D * TM_PDTM_COUNT_AT_FS
Public Const TM_PDTM_GAIN_MVPVATFS As Double = 35340.0
Public Const TM_S700_NUMBER_CHANNELS As Double = 3
Public Const TM_S700_FILTER_MAX As Double = 10
Public Const TM_S700_COUNT_AT_FS As Double = 10000.0 * ENGCNT
Public Const TM_S700_P0_PER_COUNT As Double = &H10000& * P0CNT / ENGCNT
Public Const TM_S700_P0_AT_FS As Double = TM_S700_P0_PER_COUNT * _
         TM_S700_COUNT_AT_FS
Public Const TM_S700P_FILTER_MAX As Double = 10
Public Const TM_S700P_A2D_CAP As Double = &H800000& * A2DCNT
Public Const TM_S700P_A2D_AT_FS As Double = 4.0 * Kw.MEGA * A2DCNT
Public Const TM_S700P_COUNT_AT_FS As Double = 655360000.0 * ENGCNT
Public Const TM_S700P_P0_PER_COUNT As Double = 1.0 * P0CNT / ENGCNT
Public Const TM_S700P_P0_AT_FS As Double = TM_S700P_P0_PER_COUNT * _
         TM_S700P_COUNT_AT_FS
Public Const TM_NGRTM_CLOCK_Hz As Double = 16.0 * Kw.MEGA * Kw.Hz
Public Const TM_NGRTM_A2D_CAP As Double = &H800000& * A2DCNT
Public Const TM_NGRTM_P0_AT_FS As Double = 163840000.0 * P0CNT
Public Const TM_NGRTM_CAMELD As Double = &H4000&
Public Const TM_NGRTM_CAMELA As Double = 1.0 * &H4000& * &H100000& * _
         P0CNT / DACCNT
Public Const TM_NGRTM_DACFS_PER_CDE As Double = TM_NGRTM_P0_AT_FS / _
         TM_NGRTM_CAMELA
Public Const TM_NGRTM_FSV_PER_CDE As Double = TM_NGRTM_DACFS_PER_CDE / _
         TM_DAOV_DAC_PER_V
Public Const TM_NGRTM_SCALE As Double = TM_NGRTM_DACFS_PER_CDE * _
         TM_NGRTM_CAMELD
Public Const TM_NGRTM_A2DFS_AT_1GAIN As Double = TM_NGRTM_P0_AT_FS * &H10000&
Private Const LX_NGRTM_30R As Double = 10.0 * Kw.KILO * Kw.OHM
Private Const LX_NGRTM_28R As Double = 130.0 * Kw.OHM
Public Const TM_NGRTM_GAIN As Double = 2.0 * LX_NGRTM_30R / LX_NGRTM_28R _
         + 1.0
Public Const TM_NGRTM_A2D_PER_UVPV As Double = TM_NGRTM_A2D_CAP * _
         TM_NGRTM_GAIN * Kw.UVPV
Public Const TM_NGRTM_NOISE_MIN As Double = 0.5
Public Const TM_NGRTM_NOISE_MAX As Double = (1.0)
Public Const TM_AD22103_VREF As Double = 3.3 * Kw.VOLT
Public Const TM_AD22103_V_PER_DEGC As Double = 0.028 * Kw.VOLT / Kw.DEGC
Public Const TM_AD22103_V_AT_0DEGC As Double = 0.25 * Kw.VOLT
Public Const TM_NGRTM_TEMPA2D_CAP As Double = &H8000& * A2DCNT
Public Const TM_NGRTM_TEMPP0_PER_A2D As Double = &H10000& * P0CNT / A2DCNT
Public Const TM_NGRTM_DEGC_OFFSET As Double = TM_AD22103_V_AT_0DEGC / _
         TM_AD22103_V_PER_DEGC
Public Const TM_NGRTM_TEMPP0_PER_DEGC As Double = TM_NGRTM_TEMPA2D_CAP * _
         TM_AD22103_V_PER_DEGC * TM_NGRTM_TEMPP0_PER_A2D / TM_AD22103_VREF
Public Const TM_NGRTM_TEMPP0_PER_DEGF As Double = Kw.DEGF * _
         TM_NGRTM_TEMPP0_PER_DEGC / Kw.DEGC
Public Const TM_NGRTM_TEMPP0_UVPV_PER_DEGF As Double = _
         TM_NGRTM_TEMPP0_PER_DEGF / (TM_NGRTM_A2D_PER_UVPV * _
         TM_NGRTM_TEMPP0_PER_A2D * &H1000&)
Public Const TM_BLTDC_FILTER_Hz As Double = 20.0 * Kw.KILO * Kw.Hz
Public Const TM_BLTAC_FILTER_Hz As Double = 20.0 * Kw.KILO * Kw.Hz
Public Const TM_CDTM_FILTER_Hz As Double = 10.0 * Kw.KILO * Kw.Hz
Public Const TM_NGT_FILTER_Hz As Double = 7.8125 * Kw.KILO * Kw.Hz
Public Const TM_NGRTM_FILTER_Hz As Double = 7.8125 * Kw.KILO * Kw.Hz
Public Const TM_S700P_FILTER_Hz As Double = 7.8125 * Kw.KILO * Kw.Hz
Public Const TM_PDTM_FILTER_Hz As Double = 2.0 * Kw.KILO * Kw.Hz
Public Const TM_S700_FILTER_Hz As Double = 2.0 * Kw.KILO * Kw.Hz
Public Const TM_BLTDC_UVPV_PER_A2D As Double = 1.0 / TM_BLTDC_A2D_PER_UVPV
Public Const TM_BLTAC_UVPV_PER_A2D As Double = 1.0 / TM_BLTAC_A2D_PER_UVPV
Public Const TM_CDTM_UVPV_PER_Hz As Double = 1.0 / TM_CDTM_Hz_PER_UVPV
Public Const TM_NGRTM_UVPV_PER_A2D As Double = 1.0 / TM_NGRTM_A2D_PER_UVPV
Public Const TM_NGT_UVPV_PER_A2D As Double = 1.0 / TM_NGT_A2D_PER_UVPV
Public Const TM_PDTM_GAIN_UVPV_PER_COUNT As Double = 1.0 / _
         TM_PDTM_COUNT_PER_GAIN_UVPV
Public Const TM_BLTDC_UVPV_IF_A2DMAX As Double = 1.0 / (Kw.UVPV * _
         TM_BLTDC_GAIN)
Public Const TM_BLTAC_UVPV_IF_A2DMAX As Double = 1.0 / (Kw.UVPV * _
         TM_BLTAC_GAIN)
Public Const TM_NGT_UVPV_IF_A2DMAX As Double = 1.0 / (Kw.UVPV * TM_NGT_GAIN)
Public Const TM_NGRTM_UVPV_IF_A2DMAX As Double = 1.0 / (Kw.UVPV * _
         TM_NGRTM_GAIN)
'IMPORT "Kw"
Public Function tmc_cdtm_uVpV_to_rotor_freq(ByVal uvpv_data As Double) As _
         Double
   tmc_cdtm_uVpV_to_rotor_freq = uvpv_data / TM_CDTM_UVPV_PER_Hz + _
            TM_CDTM_NOMINAL_Hz_AT_ZERO
End Function
Public Function tmc_cdtm_rotor_freq_to_uVpV(ByVal rf_data As Double) As _
         Double
   tmc_cdtm_rotor_freq_to_uVpV = TM_CDTM_UVPV_PER_Hz * (rf_data - _
            TM_CDTM_NOMINAL_Hz_AT_ZERO)
End Function
Public Function tmc_dao_V_to_DAC(ByVal volt_data As Double) As Double
   tmc_dao_V_to_DAC = TM_DAOV_DAC_PER_V * (volt_data - TM_DAOV_V_IF_DACMIN)
End Function
Public Function tmc_dao_DAC_to_V(ByVal dac_data As Double) As Double
   tmc_dao_DAC_to_V = dac_data / TM_DAOV_DAC_PER_V + TM_DAOV_V_IF_DACMIN
End Function
Public Function tmc_dao_deltaV_to_DAC(ByVal volt_data As Double) As Double
   tmc_dao_deltaV_to_DAC = TM_DAOV_DAC_PER_V * volt_data
End Function
Public Function tmc_shunt_value(ByVal bridge_ohms As Double, ByVal _
         shunt_ohms As Double) As Double
   tmc_shunt_value = bridge_ohms / (Kw.UVPV * (4.0 * shunt_ohms + 2.0 * _
            bridge_ohms))
End Function
'   DDDDDDDDDDescription ############################# tm_const_description #
Public Function tm_const_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Tm_Const Constants: A2DCNT DACCNT ENGCNT LX_BLTAC_ROTOR_13R" _
         & " LX_BLTAC_ROTOR_14R LX_BLTDC_ROTOR_24R LX_BLTDC_ROTOR_25R LX_B" _
         & "LTDC_ROTOR_26R LX_BLTDC_ROTOR_27R LX_CDTM_2R LX_CDTM_2V LX_CDT" _
         & "M_5R LX_CDTM_7C LX_CDTM_7R LX_CDTM_8C LX_CDTM_8R LX_CDTM_CT LX" _
         & "_CDTM_FOUT_PER_VIN LX_CDTM_FOUT_PER_VINZ LX_CDTM_GAINA LX_CDTM" _
         & "_GAINB LX_CDTM_RZ LX_CDTM_V_OFFSET LX_DAOI_1R LX_DAOI_2R LX_DA" _
         & "OI_3R LX_DAOI_4R LX_DAOV_2R LX_DAOV_RGND LX_DAOV_RPRE LX_NGRTM" _
         & "_28R LX_NGRTM_30R LX_NGT00_ROTOR_BRIDGE LX_NGT00_SHUNT_OHMS LX" _
         & "_NGT_3R LX_NGT_7R LX_NGT_MSP430_URV_A2D_0_V LX_NGT_MSP430_URV_" _
         & "A2D_FS_V LX_NGT_ROTOR_BRIDGE LX_NGT_SHUNT_OHMS LX_NGT_URV_GAIN" _
         & " LX_NGT_URV_ROTOR_R_GND LX_NGT_URV_ROTOR_R_PLUS LX_PDTM_10R LX"
   desc_string = desc_string _
         & "_PDTM_11R LX_PDTM_18R LX_PDTM_19R LX_PDTM_22R LX_PDTM_23R LX_P" _
         & "DTM_GAIN_HWA LX_PDTM_GAIN_HWB LX_PDTM_GAIN_HWC LX_PDTM_GAIN_HW" _
         & "D P0CNT TM_AD22103_V_AT_0DEGC TM_AD22103_V_PER_DEGC TM_AD22103" _
         & "_VREF TM_BLT_A2D_CAP TM_BLT_ACDC_RATIO TM_BLT_CLOCK_Hz TM_BLT_" _
         & "COUNT_AT_FS TM_BLT_DIODE_VOLTAGE_DROP TM_BLT_MF_20KHZ_FILTER_B" _
         & "IT TM_BLT_MF_DISABLE_BUTTON_BIT TM_BLT_MF_LOP_3_BITS_BIT TM_BL" _
         & "T_MF_NO_LS_BITS_BIT TM_BLT_MF_NO_TARE_SHUNT_BIT TM_BLT_MF_OLD_" _
         & "RF_HW_BIT TM_BLT_MF_RF_FILTER_BIT TM_BLT_P0_AT_FS TM_BLT_P0_PE" _
         & "R_COUNT TM_BLT_REGEX TM_BLT_REGKEY TM_BLT_ROTOR_BRIDGE TM_BLT_" _
         & "ROTOR_CLOCK_Hz TM_BLT_SHUNT_OHMS TM_BLTAC_A2D_PER_UVPV TM_BLTA" _
         & "C_FILTER_Hz TM_BLTAC_GAIN TM_BLTAC_NOISE_MAX TM_BLTAC_NOISE_MI" _
         & "N TM_BLTAC_SHUNT_A2D TM_BLTAC_SHUNT_UVPV TM_BLTAC_UVPV_IF_A2DM"
   desc_string = desc_string _
         & "AX TM_BLTAC_UVPV_PER_A2D TM_BLTDC_A2D_PER_UVPV TM_BLTDC_FILTER" _
         & "_Hz TM_BLTDC_GAIN TM_BLTDC_NOISE_MAX TM_BLTDC_NOISE_MIN TM_BLT" _
         & "DC_SHUNT_A2D TM_BLTDC_SHUNT_UVPV TM_BLTDC_UVPV_IF_A2DMAX TM_BL" _
         & "TDC_UVPV_PER_A2D TM_CDTM_CLOCK_Hz TM_CDTM_COUNT_AT_FS TM_CDTM_" _
         & "FILTER_Hz TM_CDTM_FS_UVPV TM_CDTM_GAIN TM_CDTM_Hz_PER_UVPV TM_" _
         & "CDTM_MIN_Hz TM_CDTM_NOISE_MAX TM_CDTM_NOISE_MAX_OLD TM_CDTM_NO" _
         & "ISE_MIN TM_CDTM_NOISE_MIN_OLD TM_CDTM_NOMINAL_FS_SPAN_Hz TM_CD" _
         & "TM_NOMINAL_Hz_AT_0X TM_CDTM_NOMINAL_Hz_AT_ZERO TM_CDTM_P0_AT_F" _
         & "S TM_CDTM_P0_PER_COUNT TM_CDTM_REGEX TM_CDTM_REGKEY TM_CDTM_SP" _
         & "_DELIM TM_CDTM_UVPV_PER_Hz TM_CDTM_X TM_DAOI_DAC_IF_00mA TM_DA" _
         & "OI_DAC_IF_04mA TM_DAOI_DAC_IF_12mA TM_DAOI_DAC_IF_20mA TM_DAOI" _
         & "_DAC_PER_mA TM_DAOI_GZ_MAGIC TM_DAOI_mA_AT_0V TM_DAOI_mA_GAIN "
   desc_string = desc_string _
         & "TM_DAOI_mA_IF_0V TM_DAOI_mA_IF_DACMAX TM_DAOI_mA_IF_DACMIN TM_" _
         & "DAOI_mA_PER_V TM_DAOV_CAP TM_DAOV_DAC_IF_0V TM_DAOV_DAC_IF_M10" _
         & "V TM_DAOV_DAC_IF_P10V TM_DAOV_DAC_MAX TM_DAOV_DAC_MIN TM_DAOV_" _
         & "DAC_PER_V TM_DAOV_GAIN TM_DAOV_V_IF_DACMAX TM_DAOV_V_IF_DACMIN" _
         & " TM_DAOV_VREF TM_DPT_REGKEY TM_LIST_SEPARATOR TM_NGRTM_A2D_CAP" _
         & " TM_NGRTM_A2D_PER_UVPV TM_NGRTM_A2DFS_AT_1GAIN TM_NGRTM_CAMELA" _
         & " TM_NGRTM_CAMELD TM_NGRTM_CLOCK_Hz TM_NGRTM_DACFS_PER_CDE TM_N" _
         & "GRTM_DEGC_OFFSET TM_NGRTM_FILTER_Hz TM_NGRTM_FSV_PER_CDE TM_NG" _
         & "RTM_GAIN TM_NGRTM_NOISE_MAX TM_NGRTM_NOISE_MIN TM_NGRTM_P0_AT_" _
         & "FS TM_NGRTM_REGEX TM_NGRTM_REGKEY TM_NGRTM_SCALE TM_NGRTM_TEMP" _
         & "A2D_CAP TM_NGRTM_TEMPP0_PER_A2D TM_NGRTM_TEMPP0_PER_DEGC TM_NG" _
         & "RTM_TEMPP0_PER_DEGF TM_NGRTM_TEMPP0_UVPV_PER_DEGF TM_NGRTM_UVP"
   desc_string = desc_string _
         & "V_IF_A2DMAX TM_NGRTM_UVPV_PER_A2D TM_NGT00_SHUNT_A2D TM_NGT00_" _
         & "SHUNT_UVPV TM_NGT_A2D_CAP TM_NGT_A2D_PER_UVPV TM_NGT_AO_MULT T" _
         & "M_NGT_AO_SHFT TM_NGT_CLOCK_Hz TM_NGT_COUNT_AT_FS TM_NGT_FILTER" _
         & "_Hz TM_NGT_GAIN TM_NGT_IA_INPUT_MAX TM_NGT_MSP430_URV_A2D_FS_C" _
         & "OUNT TM_NGT_MSP430_URV_A2D_PER_V TM_NGT_NOISE_MAX TM_NGT_NOISE" _
         & "_MIN TM_NGT_P0_AT_FS TM_NGT_P0_MAX TM_NGT_P0_PER_COUNT TM_NGT_" _
         & "REGEX TM_NGT_REGKEY TM_NGT_ROTOR_CLOCK_Hz TM_NGT_SHUNT_A2D TM_" _
         & "NGT_SHUNT_UVPV TM_NGT_URV_A2D_PER_V TM_NGT_UVPV_IF_A2DMAX TM_N" _
         & "GT_UVPV_PER_A2D TM_PDTM_A2D_CAP TM_PDTM_A2D_FS TM_PDTM_ANAOUT_" _
         & "NUMBER TM_PDTM_CHANNEL_NUMBER TM_PDTM_CLOCK_Hz TM_PDTM_COUNT_A" _
         & "T_FS TM_PDTM_COUNT_PER_A2D TM_PDTM_COUNT_PER_GAIN_UVPV TM_PDTM" _
         & "_FILTER_Hz TM_PDTM_FILTER_MAX TM_PDTM_GAIN_HW TM_PDTM_GAIN_MVP" _
         & "VATFS TM_PDTM_GAIN_PER_GAIN TM_PDTM_GAIN_UVPV_PER_COUNT TM_PDT" _
         & "M_GAIN_VALUES TM_PDTM_MIN_VERSION TM_PDTM_MULT TM_PDTM_NOISE_M" _
         & "AX TM_PDTM_NOISE_MIN TM_PDTM_P0_AT_FS TM_PDTM_REGEX TM_PDTM_RE" _
         & "GKEY TM_PDTM_SEC_PER_ZRVALUE TM_PDTM_TC_PER_DEGC TM_REG_KEY TM" _
         & "_S700_COUNT_AT_FS TM_S700_FILTER_Hz TM_S700_FILTER_MAX TM_S700" _
         & "_NUMBER_CHANNELS TM_S700_P0_AT_FS TM_S700_P0_PER_COUNT TM_S700" _
         & "_REGEX TM_S700_REGKEY TM_S700P_A2D_AT_FS TM_S700P_A2D_CAP TM_S" _
         & "700P_COUNT_AT_FS TM_S700P_FILTER_Hz TM_S700P_FILTER_MAX TM_S70" _
         & "0P_P0_AT_FS TM_S700P_P0_PER_COUNT TM_S700P_REGEX TM_S700P_REGK" _
         & "EY TM_TEST_TIME_SEC" & vbNL
   desc_string = desc_string _
         & "   Tm_Const 1-ary Functions: tmc_cdtm_rotor_freq_to_uVpV tmc_c" _
         & "dtm_uVpV_to_rotor_freq tmc_dao_DAC_to_V tmc_dao_deltaV_to_DAC " _
         & "tmc_dao_V_to_DAC" & vbNL
   desc_string = desc_string _
         & "   Tm_Const 2-ary Functions: tmc_shunt_value"
   tm_const_description = desc_string
End Function
Public Function tm_const_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Tm_Const Constants: A2DCNT DACCNT ENGCNT LX_(BLT(AC_ROTOR_1" _
         & "(3R|4R)|DC_ROTOR_2(4R|5R|6R|7R))|CDTM_(2[RV]|5R|7[CR]|8[CR]|CT" _
         & "|FOUT_PER_VINZ?|GAIN[AB]|RZ|V_OFFSET)|DAO(I_(1R|2R|3R|4R)|V_(2" _
         & "R|R(GND|PRE)))|NG(RTM_(28R|30R)|T(00_(ROTOR_BRIDGE|SHUNT_OHMS)" _
         & "|_(3R|7R|MSP430_URV_A2D_(0_V|FS_V)|ROTOR_BRIDGE|SHUNT_OHMS|URV" _
         & "_(GAIN|ROTOR_R_(GND|PLUS)))))|PDTM_(1(0R|1R|8R|9R)|2(2R|3R)|GA" _
         & "IN_HW([AB]|[CD]))) P0CNT TM_(AD22103_V(_(AT_0DEGC|PER_DEGC)|RE" _
         & "F)|BLT(_(A(2D_CAP|CDC_RATIO)|C(LOCK_Hz|OUNT_AT_FS)|DIODE_VOLTA" _
         & "GE_DROP|MF_(20KHZ_FILTER_BIT|DISABLE_BUTTON_BIT|LOP_3_BITS_BIT" _
         & "|NO_(LS_BITS_BIT|TARE_SHUNT_BIT)|OLD_RF_HW_BIT|RF_FILTER_BIT)|" _
         & "P0_(AT_FS|PER_COUNT)|R(EG(EX|KEY)|OTOR_(BRIDGE|CLOCK_Hz))|SHUN"
   desc_string = desc_string _
         & "T_OHMS)|AC_(A2D_PER_UVPV|FILTER_Hz|GAIN|NOISE_M(AX|IN)|SHUNT_(" _
         & "A2D|UVPV)|UVPV_(IF_A2DMAX|PER_A2D))|DC_(A2D_PER_UVPV|FILTER_Hz" _
         & "|GAIN|NOISE_M(AX|IN)|SHUNT_(A2D|UVPV)|UVPV_(IF_A2DMAX|PER_A2D)" _
         & "))|CDTM_(C(LOCK_Hz|OUNT_AT_FS)|F(ILTER_Hz|S_UVPV)|GAIN|Hz_PER_" _
         & "UVPV|MIN_Hz|NO(ISE_M(AX(_OLD)?|IN(_OLD)?)|MINAL_(FS_SPAN_Hz|Hz" _
         & "_AT_0X|Hz_AT_ZERO))|P0_(AT_FS|PER_COUNT)|REG(EX|KEY)|SP_DELIM|" _
         & "UVPV_PER_Hz|X)|D(AO(I_(DAC_(IF_(0(0mA|4mA)|(12mA|20mA))|PER_mA" _
         & ")|GZ_MAGIC|mA_(AT_0V|GAIN|IF_(0V|DACM(AX|IN))|PER_V))|V_(CAP|D" _
         & "AC_(IF_(0|M10|P10)V|M(AX|IN)|PER_V)|GAIN|V(_IF_DACM(AX|IN)|REF" _
         & ")))|PT_REGKEY)|LIST_SEPARATOR|NG(RTM_(A2D(_(CAP|PER_UVPV)|FS_A" _
         & "T_1GAIN)|C(AMEL[AD]|LOCK_Hz)|D(ACFS_PER_CDE|EGC_OFFSET)|F(ILTE" _
         & "R_Hz|SV_PER_CDE)|GAIN|NOISE_M(AX|IN)|P0_AT_FS|REG(EX|KEY)|SCAL"
   desc_string = desc_string _
         & "E|TEMP(A2D_CAP|P0_(PER_(A2D|DEGC|DEGF)|UVPV_PER_DEGF))|UVPV_(I" _
         & "F_A2DMAX|PER_A2D))|T(00_SHUNT_(A2D|UVPV)|_(A(2D_(CAP|PER_UVPV)" _
         & "|O_(MULT|SHFT))|C(LOCK_Hz|OUNT_AT_FS)|FILTER_Hz|GAIN|IA_INPUT_" _
         & "MAX|MSP430_URV_A2D_(FS_COUNT|PER_V)|NOISE_M(AX|IN)|P0_(AT_FS|M" _
         & "AX|PER_COUNT)|R(EG(EX|KEY)|OTOR_CLOCK_Hz)|SHUNT_(A2D|UVPV)|U(R" _
         & "V_A2D_PER_V|VPV_(IF_A2DMAX|PER_A2D)))))|PDTM_(A(2D_(CAP|FS)|NA" _
         & "OUT_NUMBER)|C(HANNEL_NUMBER|LOCK_Hz|OUNT_(AT_FS|PER_(A2D|GAIN_" _
         & "UVPV)))|FILTER_(Hz|MAX)|GAIN_(HW|MVPVATFS|PER_GAIN|UVPV_PER_CO" _
         & "UNT|VALUES)|M(IN_VERSION|ULT)|NOISE_M(AX|IN)|P0_AT_FS|REG(EX|K" _
         & "EY)|SEC_PER_ZRVALUE|TC_PER_DEGC)|REG_KEY|S700(_(COUNT_AT_FS|FI" _
         & "LTER_(Hz|MAX)|NUMBER_CHANNELS|P0_(AT_FS|PER_COUNT)|REG(EX|KEY)" _
         & ")|P_(A2D_(AT_FS|CAP)|COUNT_AT_FS|FILTER_(Hz|MAX)|P0_(AT_FS|PER" _
         & "_COUNT)|REG(EX|KEY)))|TEST_TIME_SEC)" & vbNL
   desc_string = desc_string _
         & "   Tm_Const 1-ary Functions: tmc_(cdtm_(rotor_freq_to_uVpV|uVp" _
         & "V_to_rotor_freq)|dao_(DAC_to_V|deltaV_to_DAC|V_to_DAC))" & vbNL
   desc_string = desc_string _
         & "   Tm_Const 2-ary Functions: tmc_shunt_value"
   tm_const_desc = desc_string
End Function
