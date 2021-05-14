//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ########## SOURCE $KWROOT/codekdw/kw-lib/Tm_Const.fwipp ##########
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Tm_Const.varylog
#include "Tm_Const.h"
//  CCCCCCCCCConstant ############################################## LANG_C #
double cxA2DCNT(void) { return (A2DCNT); }
double cxP0CNT(void) { return (P0CNT); }
double cxENGCNT(void) { return (ENGCNT); }
double cxDACCNT(void) { return (DACCNT); }
const char * cxTM_LIST_SEPARATOR(void) { return (TM_LIST_SEPARATOR); }
const char * cxTM_PDTM_MIN_VERSION(void) { return (TM_PDTM_MIN_VERSION); }
const char * cxTM_REG_KEY(void) { return (TM_REG_KEY); }
const char * cxTM_BLT_REGKEY(void) { return (TM_BLT_REGKEY); }
const char * cxTM_CDTM_REGKEY(void) { return (TM_CDTM_REGKEY); }
const char * cxTM_DPT_REGKEY(void) { return (TM_DPT_REGKEY); }
const char * cxTM_NGRTM_REGKEY(void) { return (TM_NGRTM_REGKEY); }
const char * cxTM_NGT_REGKEY(void) { return (TM_NGT_REGKEY); }
const char * cxTM_PDTM_REGKEY(void) { return (TM_PDTM_REGKEY); }
const char * cxTM_S700_REGKEY(void) { return (TM_S700_REGKEY); }
const char * cxTM_S700P_REGKEY(void) { return (TM_S700P_REGKEY); }
const char * cxTM_BLT_REGEX(void) { return (TM_BLT_REGEX); }
const char * cxTM_CDTM_REGEX(void) { return (TM_CDTM_REGEX); }
const char * cxTM_NGRTM_REGEX(void) { return (TM_NGRTM_REGEX); }
const char * cxTM_NGT_REGEX(void) { return (TM_NGT_REGEX); }
const char * cxTM_PDTM_REGEX(void) { return (TM_PDTM_REGEX); }
const char * cxTM_S700_REGEX(void) { return (TM_S700_REGEX); }
const char * cxTM_S700P_REGEX(void) { return (TM_S700P_REGEX); }
double cxTM_TEST_TIME_SEC(void) { return (TM_TEST_TIME_SEC); }
double cxTM_DAOV_CAP(void) { return (TM_DAOV_CAP); }
double cxTM_DAOV_VREF(void) { return (TM_DAOV_VREF); }
double cxLX_DAOV_RPRE(void) { return (LX_DAOV_RPRE); }
double cxLX_DAOV_2R(void) { return (LX_DAOV_2R); }
double cxLX_DAOV_RGND(void) { return (LX_DAOV_RGND); }
double cxTM_DAOV_GAIN(void) { return (TM_DAOV_GAIN); }
double cxTM_DAOV_DAC_PER_V(void) { return (TM_DAOV_DAC_PER_V); }
double cxTM_DAOV_V_IF_DACMIN(void) { return (TM_DAOV_V_IF_DACMIN); }
double cxTM_DAOV_DAC_IF_0V(void) { return (TM_DAOV_DAC_IF_0V); }
double cxTM_DAOV_DAC_MAX(void) { return (TM_DAOV_DAC_MAX); }
double cxTM_DAOV_DAC_MIN(void) { return (TM_DAOV_DAC_MIN); }
double cxTM_DAOV_V_IF_DACMAX(void) { return (TM_DAOV_V_IF_DACMAX); }
double cxTM_DAOV_DAC_IF_P10V(void) { return (TM_DAOV_DAC_IF_P10V); }
double cxTM_DAOV_DAC_IF_M10V(void) { return (TM_DAOV_DAC_IF_M10V); }
double cxTM_DAOI_GZ_MAGIC(void) { return (TM_DAOI_GZ_MAGIC); }
double cxLX_DAOI_1R(void) { return (LX_DAOI_1R); }
double cxLX_DAOI_2R(void) { return (LX_DAOI_2R); }
double cxLX_DAOI_3R(void) { return (LX_DAOI_3R); }
double cxLX_DAOI_4R(void) { return (LX_DAOI_4R); }
double cxTM_DAOI_mA_AT_0V(void) { return (TM_DAOI_mA_AT_0V); }
double cxTM_DAOI_mA_PER_V(void) { return (TM_DAOI_mA_PER_V); }
double cxTM_DAOI_mA_GAIN(void) { return (TM_DAOI_mA_GAIN); }
double cxTM_DAOI_mA_IF_0V(void) { return (TM_DAOI_mA_IF_0V); }
double cxTM_DAOI_DAC_PER_mA(void) { return (TM_DAOI_DAC_PER_mA); }
double cxTM_DAOI_DAC_IF_00mA(void) { return (TM_DAOI_DAC_IF_00mA); }
double cxTM_DAOI_DAC_IF_04mA(void) { return (TM_DAOI_DAC_IF_04mA); }
double cxTM_DAOI_DAC_IF_12mA(void) { return (TM_DAOI_DAC_IF_12mA); }
double cxTM_DAOI_DAC_IF_20mA(void) { return (TM_DAOI_DAC_IF_20mA); }
double cxTM_DAOI_mA_IF_DACMIN(void) { return (TM_DAOI_mA_IF_DACMIN); }
double cxTM_DAOI_mA_IF_DACMAX(void) { return (TM_DAOI_mA_IF_DACMAX); }
double cxTM_NGT_COUNT_AT_FS(void) { return (TM_NGT_COUNT_AT_FS); }
double cxTM_NGT_P0_PER_COUNT(void) { return (TM_NGT_P0_PER_COUNT); }
double cxTM_NGT_P0_AT_FS(void) { return (TM_NGT_P0_AT_FS); }
double cxTM_NGT_P0_MAX(void) { return (TM_NGT_P0_MAX); }
double cxTM_NGT_AO_MULT(void) { return (TM_NGT_AO_MULT); }
double cxTM_NGT_AO_SHFT(void) { return (TM_NGT_AO_SHFT); }
double cxTM_NGT_A2D_CAP(void) { return (TM_NGT_A2D_CAP); }
double cxTM_NGT_IA_INPUT_MAX(void) { return (TM_NGT_IA_INPUT_MAX); }
double cxTM_NGT_CLOCK_Hz(void) { return (TM_NGT_CLOCK_Hz); }
double cxTM_NGT_ROTOR_CLOCK_Hz(void) { return (TM_NGT_ROTOR_CLOCK_Hz); }
double cxTM_NGT_NOISE_MAX(void) { return (TM_NGT_NOISE_MAX); }
double cxTM_NGT_NOISE_MIN(void) { return (TM_NGT_NOISE_MIN); }
double cxLX_NGT_3R(void) { return (LX_NGT_3R); }
double cxLX_NGT_7R(void) { return (LX_NGT_7R); }
double cxTM_NGT_GAIN(void) { return (TM_NGT_GAIN); }
double cxTM_NGT_A2D_PER_UVPV(void) { return (TM_NGT_A2D_PER_UVPV); }
double cxLX_NGT_ROTOR_BRIDGE(void) { return (LX_NGT_ROTOR_BRIDGE); }
double cxLX_NGT_SHUNT_OHMS(void) { return (LX_NGT_SHUNT_OHMS); }
double cxTM_NGT_SHUNT_UVPV(void) { return (TM_NGT_SHUNT_UVPV); }
double cxTM_NGT_SHUNT_A2D(void) { return (TM_NGT_SHUNT_A2D); }
double cxLX_NGT00_ROTOR_BRIDGE(void) { return (LX_NGT00_ROTOR_BRIDGE); }
double cxLX_NGT00_SHUNT_OHMS(void) { return (LX_NGT00_SHUNT_OHMS); }
double cxTM_NGT00_SHUNT_UVPV(void) { return (TM_NGT00_SHUNT_UVPV); }
double cxTM_NGT00_SHUNT_A2D(void) { return (TM_NGT00_SHUNT_A2D); }
double cxTM_NGT_MSP430_URV_A2D_FS_COUNT(void) {
   return (TM_NGT_MSP430_URV_A2D_FS_COUNT); }
double cxLX_NGT_MSP430_URV_A2D_FS_V(void) {
   return (LX_NGT_MSP430_URV_A2D_FS_V); }
double cxLX_NGT_MSP430_URV_A2D_0_V(void) {
   return (LX_NGT_MSP430_URV_A2D_0_V); }
double cxTM_NGT_MSP430_URV_A2D_PER_V(void) {
   return (TM_NGT_MSP430_URV_A2D_PER_V); }
double cxLX_NGT_URV_ROTOR_R_PLUS(void) { return (LX_NGT_URV_ROTOR_R_PLUS); }
double cxLX_NGT_URV_ROTOR_R_GND(void) { return (LX_NGT_URV_ROTOR_R_GND); }
double cxLX_NGT_URV_GAIN(void) { return (LX_NGT_URV_GAIN); }
double cxTM_NGT_URV_A2D_PER_V(void) { return (TM_NGT_URV_A2D_PER_V); }
double cxTM_BLT_A2D_CAP(void) { return (TM_BLT_A2D_CAP); }
double cxTM_BLTDC_NOISE_MIN(void) { return (TM_BLTDC_NOISE_MIN); }
double cxTM_BLTDC_NOISE_MAX(void) { return (TM_BLTDC_NOISE_MAX); }
double cxTM_BLT_COUNT_AT_FS(void) { return (TM_BLT_COUNT_AT_FS); }
double cxTM_BLT_P0_PER_COUNT(void) { return (TM_BLT_P0_PER_COUNT); }
double cxTM_BLT_P0_AT_FS(void) { return (TM_BLT_P0_AT_FS); }
double cxTM_BLT_DIODE_VOLTAGE_DROP(void) {
   return (TM_BLT_DIODE_VOLTAGE_DROP); }
double cxLX_BLTDC_ROTOR_24R(void) { return (LX_BLTDC_ROTOR_24R); }
double cxLX_BLTDC_ROTOR_25R(void) { return (LX_BLTDC_ROTOR_25R); }
double cxLX_BLTDC_ROTOR_26R(void) { return (LX_BLTDC_ROTOR_26R); }
double cxLX_BLTDC_ROTOR_27R(void) { return (LX_BLTDC_ROTOR_27R); }
double cxTM_BLTDC_GAIN(void) { return (TM_BLTDC_GAIN); }
double cxTM_BLTDC_A2D_PER_UVPV(void) { return (TM_BLTDC_A2D_PER_UVPV); }
double cxLX_BLTAC_ROTOR_14R(void) { return (LX_BLTAC_ROTOR_14R); }
double cxLX_BLTAC_ROTOR_13R(void) { return (LX_BLTAC_ROTOR_13R); }
double cxTM_BLTAC_GAIN(void) { return (TM_BLTAC_GAIN); }
double cxTM_BLTAC_A2D_PER_UVPV(void) { return (TM_BLTAC_A2D_PER_UVPV); }
double cxTM_BLTAC_NOISE_MIN(void) { return (TM_BLTAC_NOISE_MIN); }
double cxTM_BLTAC_NOISE_MAX(void) { return (TM_BLTAC_NOISE_MAX); }
double cxTM_BLT_CLOCK_Hz(void) { return (TM_BLT_CLOCK_Hz); }
double cxTM_BLT_ROTOR_CLOCK_Hz(void) { return (TM_BLT_ROTOR_CLOCK_Hz); }
double cxTM_BLT_SHUNT_OHMS(void) { return (TM_BLT_SHUNT_OHMS); }
double cxTM_BLT_ACDC_RATIO(void) { return (TM_BLT_ACDC_RATIO); }
double cxTM_BLT_MF_NO_TARE_SHUNT_BIT(void) {
   return (TM_BLT_MF_NO_TARE_SHUNT_BIT); }
double cxTM_BLT_MF_NO_LS_BITS_BIT(void) {
   return (TM_BLT_MF_NO_LS_BITS_BIT); }
double cxTM_BLT_MF_LOP_3_BITS_BIT(void) {
   return (TM_BLT_MF_LOP_3_BITS_BIT); }
double cxTM_BLT_MF_20KHZ_FILTER_BIT(void) {
   return (TM_BLT_MF_20KHZ_FILTER_BIT); }
double cxTM_BLT_MF_DISABLE_BUTTON_BIT(void) {
   return (TM_BLT_MF_DISABLE_BUTTON_BIT); }
double cxTM_BLT_MF_RF_FILTER_BIT(void) { return (TM_BLT_MF_RF_FILTER_BIT); }
double cxTM_BLT_MF_OLD_RF_HW_BIT(void) { return (TM_BLT_MF_OLD_RF_HW_BIT); }
double cxTM_BLT_ROTOR_BRIDGE(void) { return (TM_BLT_ROTOR_BRIDGE); }
double cxTM_BLTAC_SHUNT_UVPV(void) { return (TM_BLTAC_SHUNT_UVPV); }
double cxTM_BLTAC_SHUNT_A2D(void) { return (TM_BLTAC_SHUNT_A2D); }
double cxTM_BLTDC_SHUNT_UVPV(void) { return (TM_BLTDC_SHUNT_UVPV); }
double cxTM_BLTDC_SHUNT_A2D(void) { return (TM_BLTDC_SHUNT_A2D); }
double cxTM_CDTM_CLOCK_Hz(void) { return (TM_CDTM_CLOCK_Hz); }
double cxTM_CDTM_COUNT_AT_FS(void) { return (TM_CDTM_COUNT_AT_FS); }
double cxTM_CDTM_P0_PER_COUNT(void) { return (TM_CDTM_P0_PER_COUNT); }
double cxTM_CDTM_NOMINAL_Hz_AT_ZERO(void) {
   return (TM_CDTM_NOMINAL_Hz_AT_ZERO); }
double cxTM_CDTM_NOMINAL_FS_SPAN_Hz(void) {
   return (TM_CDTM_NOMINAL_FS_SPAN_Hz); }
double cxTM_CDTM_MIN_Hz(void) { return (TM_CDTM_MIN_Hz); }
double cxLX_CDTM_2R(void) { return (LX_CDTM_2R); }
double cxLX_CDTM_5R(void) { return (LX_CDTM_5R); }
double cxLX_CDTM_8R(void) { return (LX_CDTM_8R); }
double cxLX_CDTM_7R(void) { return (LX_CDTM_7R); }
double cxLX_CDTM_7C(void) { return (LX_CDTM_7C); }
double cxLX_CDTM_8C(void) { return (LX_CDTM_8C); }
double cxLX_CDTM_2V(void) { return (LX_CDTM_2V); }
double cxLX_CDTM_GAINA(void) { return (LX_CDTM_GAINA); }
double cxLX_CDTM_GAINB(void) { return (LX_CDTM_GAINB); }
double cxLX_CDTM_CT(void) { return (LX_CDTM_CT); }
double cxLX_CDTM_RZ(void) { return (LX_CDTM_RZ); }
double cxLX_CDTM_FOUT_PER_VIN(void) { return (LX_CDTM_FOUT_PER_VIN); }
double cxLX_CDTM_FOUT_PER_VINZ(void) { return (LX_CDTM_FOUT_PER_VINZ); }
double cxLX_CDTM_V_OFFSET(void) { return (LX_CDTM_V_OFFSET); }
double cxTM_CDTM_GAIN(void) { return (TM_CDTM_GAIN); }
double cxTM_CDTM_X(void) { return (TM_CDTM_X); }
double cxTM_CDTM_Hz_PER_UVPV(void) { return (TM_CDTM_Hz_PER_UVPV); }
double cxTM_CDTM_NOMINAL_Hz_AT_0X(void) {
   return (TM_CDTM_NOMINAL_Hz_AT_0X); }
double cxTM_CDTM_P0_AT_FS(void) { return (TM_CDTM_P0_AT_FS); }
double cxTM_CDTM_FS_UVPV(void) { return (TM_CDTM_FS_UVPV); }
double cxTM_CDTM_NOISE_MIN_OLD(void) { return (TM_CDTM_NOISE_MIN_OLD); }
double cxTM_CDTM_NOISE_MAX_OLD(void) { return (TM_CDTM_NOISE_MAX_OLD); }
double cxTM_CDTM_NOISE_MIN(void) { return (TM_CDTM_NOISE_MIN); }
double cxTM_CDTM_NOISE_MAX(void) { return (TM_CDTM_NOISE_MAX); }
const char * cxTM_CDTM_SP_DELIM(void) { return (TM_CDTM_SP_DELIM); }
double cxTM_PDTM_ANAOUT_NUMBER(void) { return (TM_PDTM_ANAOUT_NUMBER); }
double cxTM_PDTM_CHANNEL_NUMBER(void) { return (TM_PDTM_CHANNEL_NUMBER); }
double cxTM_PDTM_FILTER_MAX(void) { return (TM_PDTM_FILTER_MAX); }
double cxTM_PDTM_NOISE_MIN(void) { return (TM_PDTM_NOISE_MIN); }
double cxTM_PDTM_NOISE_MAX(void) { return (TM_PDTM_NOISE_MAX); }
double cxTM_PDTM_A2D_FS(void) { return (TM_PDTM_A2D_FS); }
double cxTM_PDTM_A2D_CAP(void) { return (TM_PDTM_A2D_CAP); }
double cxTM_PDTM_MULT(void) { return (TM_PDTM_MULT); }
double cxTM_PDTM_COUNT_PER_A2D(void) { return (TM_PDTM_COUNT_PER_A2D); }
double cxTM_PDTM_COUNT_AT_FS(void) { return (TM_PDTM_COUNT_AT_FS); }
double cxTM_PDTM_TC_PER_DEGC(void) { return (TM_PDTM_TC_PER_DEGC); }
double cxTM_PDTM_GAIN_VALUES(void) { return (TM_PDTM_GAIN_VALUES); }
double cxTM_PDTM_CLOCK_Hz(void) { return (TM_PDTM_CLOCK_Hz); }
double cxTM_PDTM_SEC_PER_ZRVALUE(void) { return (TM_PDTM_SEC_PER_ZRVALUE); }
double cxLX_PDTM_22R(void) { return (LX_PDTM_22R); }
double cxLX_PDTM_23R(void) { return (LX_PDTM_23R); }
double cxLX_PDTM_18R(void) { return (LX_PDTM_18R); }
double cxLX_PDTM_19R(void) { return (LX_PDTM_19R); }
double cxLX_PDTM_10R(void) { return (LX_PDTM_10R); }
double cxLX_PDTM_11R(void) { return (LX_PDTM_11R); }
double cxLX_PDTM_GAIN_HWA(void) { return (LX_PDTM_GAIN_HWA); }
double cxLX_PDTM_GAIN_HWB(void) { return (LX_PDTM_GAIN_HWB); }
double cxLX_PDTM_GAIN_HWC(void) { return (LX_PDTM_GAIN_HWC); }
double cxLX_PDTM_GAIN_HWD(void) { return (LX_PDTM_GAIN_HWD); }
double cxTM_PDTM_GAIN_HW(void) { return (TM_PDTM_GAIN_HW); }
double cxTM_PDTM_GAIN_PER_GAIN(void) { return (TM_PDTM_GAIN_PER_GAIN); }
double cxTM_PDTM_COUNT_PER_GAIN_UVPV(void) {
   return (TM_PDTM_COUNT_PER_GAIN_UVPV); }
double cxTM_PDTM_P0_AT_FS(void) { return (TM_PDTM_P0_AT_FS); }
double cxTM_PDTM_GAIN_MVPVATFS(void) { return (TM_PDTM_GAIN_MVPVATFS); }
double cxTM_S700_NUMBER_CHANNELS(void) { return (TM_S700_NUMBER_CHANNELS); }
double cxTM_S700_FILTER_MAX(void) { return (TM_S700_FILTER_MAX); }
double cxTM_S700_COUNT_AT_FS(void) { return (TM_S700_COUNT_AT_FS); }
double cxTM_S700_P0_PER_COUNT(void) { return (TM_S700_P0_PER_COUNT); }
double cxTM_S700_P0_AT_FS(void) { return (TM_S700_P0_AT_FS); }
double cxTM_S700P_FILTER_MAX(void) { return (TM_S700P_FILTER_MAX); }
double cxTM_S700P_A2D_CAP(void) { return (TM_S700P_A2D_CAP); }
double cxTM_S700P_A2D_AT_FS(void) { return (TM_S700P_A2D_AT_FS); }
double cxTM_S700P_COUNT_AT_FS(void) { return (TM_S700P_COUNT_AT_FS); }
double cxTM_S700P_P0_PER_COUNT(void) { return (TM_S700P_P0_PER_COUNT); }
double cxTM_S700P_P0_AT_FS(void) { return (TM_S700P_P0_AT_FS); }
double cxTM_NGRTM_CLOCK_Hz(void) { return (TM_NGRTM_CLOCK_Hz); }
double cxTM_NGRTM_A2D_CAP(void) { return (TM_NGRTM_A2D_CAP); }
double cxTM_NGRTM_P0_AT_FS(void) { return (TM_NGRTM_P0_AT_FS); }
double cxTM_NGRTM_CAMELD(void) { return (TM_NGRTM_CAMELD); }
double cxTM_NGRTM_CAMELA(void) { return (TM_NGRTM_CAMELA); }
double cxTM_NGRTM_DACFS_PER_CDE(void) { return (TM_NGRTM_DACFS_PER_CDE); }
double cxTM_NGRTM_FSV_PER_CDE(void) { return (TM_NGRTM_FSV_PER_CDE); }
double cxTM_NGRTM_SCALE(void) { return (TM_NGRTM_SCALE); }
double cxTM_NGRTM_A2DFS_AT_1GAIN(void) { return (TM_NGRTM_A2DFS_AT_1GAIN); }
double cxLX_NGRTM_30R(void) { return (LX_NGRTM_30R); }
double cxLX_NGRTM_28R(void) { return (LX_NGRTM_28R); }
double cxTM_NGRTM_GAIN(void) { return (TM_NGRTM_GAIN); }
double cxTM_NGRTM_A2D_PER_UVPV(void) { return (TM_NGRTM_A2D_PER_UVPV); }
double cxTM_NGRTM_NOISE_MIN(void) { return (TM_NGRTM_NOISE_MIN); }
double cxTM_NGRTM_NOISE_MAX(void) { return (TM_NGRTM_NOISE_MAX); }
double cxTM_AD22103_VREF(void) { return (TM_AD22103_VREF); }
double cxTM_AD22103_V_PER_DEGC(void) { return (TM_AD22103_V_PER_DEGC); }
double cxTM_AD22103_V_AT_0DEGC(void) { return (TM_AD22103_V_AT_0DEGC); }
double cxTM_NGRTM_TEMPA2D_CAP(void) { return (TM_NGRTM_TEMPA2D_CAP); }
double cxTM_NGRTM_TEMPP0_PER_A2D(void) { return (TM_NGRTM_TEMPP0_PER_A2D); }
double cxTM_NGRTM_DEGC_OFFSET(void) { return (TM_NGRTM_DEGC_OFFSET); }
double cxTM_NGRTM_TEMPP0_PER_DEGC(void) {
   return (TM_NGRTM_TEMPP0_PER_DEGC); }
double cxTM_NGRTM_TEMPP0_PER_DEGF(void) {
   return (TM_NGRTM_TEMPP0_PER_DEGF); }
double cxTM_NGRTM_TEMPP0_UVPV_PER_DEGF(void) {
   return (TM_NGRTM_TEMPP0_UVPV_PER_DEGF); }
double cxTM_BLTDC_FILTER_Hz(void) { return (TM_BLTDC_FILTER_Hz); }
double cxTM_BLTAC_FILTER_Hz(void) { return (TM_BLTAC_FILTER_Hz); }
double cxTM_CDTM_FILTER_Hz(void) { return (TM_CDTM_FILTER_Hz); }
double cxTM_NGT_FILTER_Hz(void) { return (TM_NGT_FILTER_Hz); }
double cxTM_NGRTM_FILTER_Hz(void) { return (TM_NGRTM_FILTER_Hz); }
double cxTM_S700P_FILTER_Hz(void) { return (TM_S700P_FILTER_Hz); }
double cxTM_PDTM_FILTER_Hz(void) { return (TM_PDTM_FILTER_Hz); }
double cxTM_S700_FILTER_Hz(void) { return (TM_S700_FILTER_Hz); }
double cxTM_BLTDC_UVPV_PER_A2D(void) { return (TM_BLTDC_UVPV_PER_A2D); }
double cxTM_BLTAC_UVPV_PER_A2D(void) { return (TM_BLTAC_UVPV_PER_A2D); }
double cxTM_CDTM_UVPV_PER_Hz(void) { return (TM_CDTM_UVPV_PER_Hz); }
double cxTM_NGRTM_UVPV_PER_A2D(void) { return (TM_NGRTM_UVPV_PER_A2D); }
double cxTM_NGT_UVPV_PER_A2D(void) { return (TM_NGT_UVPV_PER_A2D); }
double cxTM_PDTM_GAIN_UVPV_PER_COUNT(void) {
   return (TM_PDTM_GAIN_UVPV_PER_COUNT); }
double cxTM_BLTDC_UVPV_IF_A2DMAX(void) { return (TM_BLTDC_UVPV_IF_A2DMAX); }
double cxTM_BLTAC_UVPV_IF_A2DMAX(void) { return (TM_BLTAC_UVPV_IF_A2DMAX); }
double cxTM_NGT_UVPV_IF_A2DMAX(void) { return (TM_NGT_UVPV_IF_A2DMAX); }
double cxTM_NGRTM_UVPV_IF_A2DMAX(void) { return (TM_NGRTM_UVPV_IF_A2DMAX); }
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
double tmc_cdtm_uVpV_to_rotor_freq(double uvpv_data)
{
   return (uvpv_data / TM_CDTM_UVPV_PER_Hz + TM_CDTM_NOMINAL_Hz_AT_ZERO);
}
double tmc_cdtm_rotor_freq_to_uVpV(double rf_data)
{
   return (TM_CDTM_UVPV_PER_Hz * (rf_data - TM_CDTM_NOMINAL_Hz_AT_ZERO));
}
double tmc_dao_V_to_DAC(double volt_data)
{
   return (TM_DAOV_DAC_PER_V * (volt_data - TM_DAOV_V_IF_DACMIN));
}
double tmc_dao_DAC_to_V(double dac_data)
{
   return (dac_data / TM_DAOV_DAC_PER_V + TM_DAOV_V_IF_DACMIN);
}
double tmc_dao_deltaV_to_DAC(double volt_data)
{
   return (TM_DAOV_DAC_PER_V * volt_data);
}
double tmc_shunt_value(double bridge_ohms
      , double shunt_ohms)
{
   return (bridge_ohms / (UVPV * (4.0 * shunt_ohms + 2.0 * bridge_ohms)));
}
