//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ############# SOURCE $KWROOT/codekdw/kw-lib/Kw.fwipp #############
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kw.varylog
#include "Kw.h"
//  CCCCCCCCCConstant ############################################## LANG_C #
double cxKILOGRAM(void) { return (KILOGRAM); }
double cxMETER(void) { return (METER); }
double cxSECOND(void) { return (SECOND); }
double cxKELVIN(void) { return (KELVIN); }
double cxAMPERE(void) { return (AMPERE); }
double cxMOLE(void) { return (MOLE); }
double cxCANDELA(void) { return (CANDELA); }
double cxBIT(void) { return (BIT); }
double cxRADIAN(void) { return (RADIAN); }
double cxMASS(void) { return (MASS); }
double cxLENGTH(void) { return (LENGTH); }
double cxDISTANCE(void) { return (DISTANCE); }
double cxTEMPERATURE(void) { return (TEMPERATURE); }
double cxTIME(void) { return (TIME); }
double cxANGLE(void) { return (ANGLE); }
double cxAMOUNT(void) { return (AMOUNT); }
double cxCURRENT(void) { return (CURRENT); }
double cxCHARGE(void) { return (CHARGE); }
double cxCOULOMB(void) { return (COULOMB); }
double cxSTERADIAN(void) { return (STERADIAN); }
double cxMETRE(void) { return (METRE); }
double cxKG(void) { return (KG); }
double cxRAD(void) { return (RAD); }
double cxE(void) { return (E); }
double cxTAU(void) { return (TAU); }
double cxPHI(void) { return (PHI); }
double cxTWOLN(void) { return (TWOLN); }
double cxTENLN(void) { return (TENLN); }
double cxTWOSQRT(void) { return (TWOSQRT); }
double cxEULER(void) { return (EULER); }
double cxFEIGENBAUM(void) { return (FEIGENBAUM); }
double cxAPERY(void) { return (APERY); }
double cxGAMMAMIN(void) { return (GAMMAMIN); }
double cxPI(void) { return (PI); }
double cxYOTTA(void) { return (YOTTA); }
double cxZETTA(void) { return (ZETTA); }
double cxEXA(void) { return (EXA); }
double cxPETA(void) { return (PETA); }
double cxTERA(void) { return (TERA); }
double cxGIGA(void) { return (GIGA); }
double cxMEGA(void) { return (MEGA); }
double cxKILO(void) { return (KILO); }
double cxHECTO(void) { return (HECTO); }
double cxDECA(void) { return (DECA); }
double cxDECI(void) { return (DECI); }
double cxCENTI(void) { return (CENTI); }
double cxMILLI(void) { return (MILLI); }
double cxMICRO(void) { return (MICRO); }
double cxNANO(void) { return (NANO); }
double cxPICO(void) { return (PICO); }
double cxFEMTO(void) { return (FEMTO); }
double cxATTO(void) { return (ATTO); }
double cxZEPTO(void) { return (ZEPTO); }
double cxYOCTO(void) { return (YOCTO); }
double cxKIBI(void) { return (KIBI); }
double cxMEBI(void) { return (MEBI); }
double cxGIBI(void) { return (GIBI); }
double cxTEBI(void) { return (TEBI); }
double cxPEBI(void) { return (PEBI); }
double cxEXBI(void) { return (EXBI); }
double cxZEBI(void) { return (ZEBI); }
double cxYOBI(void) { return (YOBI); }
double cxMPS(void) { return (MPS); }
double cxMPSS(void) { return (MPSS); }
double cxUNITGM(void) { return (UNITGM); }
double cxNEWTON(void) { return (NEWTON); }
double cxJOULE(void) { return (JOULE); }
double cxPA(void) { return (PA); }
double cxWATT(void) { return (WATT); }
double cxHERTZ(void) { return (HERTZ); }
double cxHz(void) { return (Hz); }
double cxAMP(void) { return (AMP); }
double cxVOLT(void) { return (VOLT); }
double cxOHM(void) { return (OHM); }
double cxHENRY(void) { return (HENRY); }
double cxFARAD(void) { return (FARAD); }
double cxSIEMENS(void) { return (SIEMENS); }
double cxWEBER(void) { return (WEBER); }
double cxTESLA(void) { return (TESLA); }
double cxLUMEN(void) { return (LUMEN); }
double cxLUX(void) { return (LUX); }
double cxBOLTZMANN(void) { return (BOLTZMANN); }
double cxBOLTZMANN_ERR(void) { return (BOLTZMANN_ERR); }
double cxBOLTZMANN_REC(void) { return (BOLTZMANN_REC); }
double cxBOLTZMANN_REC_ERR(void) { return (BOLTZMANN_REC_ERR); }
double cxELEMENTARYCHARGE(void) { return (ELEMENTARYCHARGE); }
double cxELEMENTARYCHARGE_ERR(void) { return (ELEMENTARYCHARGE_ERR); }
double cxLIGHT(void) { return (LIGHT); }
double cxLIGHT_ERR(void) { return (LIGHT_ERR); }
double cxLIGHT_REC(void) { return (LIGHT_REC); }
double cxLIGHT_REC_ERR(void) { return (LIGHT_REC_ERR); }
double cxAVOGADRO(void) { return (AVOGADRO); }
double cxAVOGADRO_ERR(void) { return (AVOGADRO_ERR); }
double cxAVOGADRO_REC(void) { return (AVOGADRO_REC); }
double cxAVOGADRO_REC_ERR(void) { return (AVOGADRO_REC_ERR); }
double cxPLANCK(void) { return (PLANCK); }
double cxPLANCK_ERR(void) { return (PLANCK_ERR); }
double cxPLANCK_REC(void) { return (PLANCK_REC); }
double cxPLANCK_REC_ERR(void) { return (PLANCK_REC_ERR); }
double cxKCD(void) { return (KCD); }
double cxKCD_ERR(void) { return (KCD_ERR); }
double cxdvCs_Hz(void) { return (dvCs_Hz); }
double cxdvCs_WAVELENGTH(void) { return (dvCs_WAVELENGTH); }
double cxdvCs_ENERGY(void) { return (dvCs_ENERGY); }
double cxdvCs_ERR(void) { return (dvCs_ERR); }
double cxkB(void) { return (kB); }
double cxkB_ERR(void) { return (kB_ERR); }
double cxkB_REC(void) { return (kB_REC); }
double cxkB_REC_ERR(void) { return (kB_REC_ERR); }
double cxELECTRON_CHARGE(void) { return (ELECTRON_CHARGE); }
double cxELECTRON_CHARGE_ERR(void) { return (ELECTRON_CHARGE_ERR); }
double cxPLANCKBAR(void) { return (PLANCKBAR); }
double cxPLANCKBAR_ERR(void) { return (PLANCKBAR_ERR); }
double cxh(void) { return (h); }
double cxh_ERR(void) { return (h_ERR); }
double cxh_REC(void) { return (h_REC); }
double cxh_REC_ERR(void) { return (h_REC_ERR); }
double cxc(void) { return (c); }
double cxc_ERR(void) { return (c_ERR); }
double cxc_REC(void) { return (c_REC); }
double cxc_REC_ERR(void) { return (c_REC_ERR); }
double cxHBAR(void) { return (HBAR); }
double cxHBAR_ERR(void) { return (HBAR_ERR); }
double cxGRAVITY(void) { return (GRAVITY); }
double cxGRAVITY_ERR(void) { return (GRAVITY_ERR); }
double cxATMOSPHERE(void) { return (ATMOSPHERE); }
double cxATMOSPHERE_ERR(void) { return (ATMOSPHERE_ERR); }
double cxAU(void) { return (AU); }
double cxAU_ERR(void) { return (AU_ERR); }
double cxJOSEPHSON(void) { return (JOSEPHSON); }
double cxJOSEPHSON_ERR(void) { return (JOSEPHSON_ERR); }
double cxVONKLITZING(void) { return (VONKLITZING); }
double cxVONKLITZING_ERR(void) { return (VONKLITZING_ERR); }
double cxFARADAY(void) { return (FARADAY); }
double cxFARADAY_ERR(void) { return (FARADAY_ERR); }
double cxFARADAY_REC(void) { return (FARADAY_REC); }
double cxFARADAY_REC_ERR(void) { return (FARADAY_REC_ERR); }
double cxGAS(void) { return (GAS); }
double cxGAS_ERR(void) { return (GAS_ERR); }
double cxGAS_REC(void) { return (GAS_REC); }
double cxGAS_REC_ERR(void) { return (GAS_REC_ERR); }
double cxFARADAYCONST(void) { return (FARADAYCONST); }
double cxFARADAYCONST_ERR(void) { return (FARADAYCONST_ERR); }
double cxFARADAYCONST_REC(void) { return (FARADAYCONST_REC); }
double cxFARADAYCONST_REC_ERR(void) { return (FARADAYCONST_REC_ERR); }
double cxGASCONST(void) { return (GASCONST); }
double cxGASCONST_ERR(void) { return (GASCONST_ERR); }
double cxGASCONST_REC(void) { return (GASCONST_REC); }
double cxGASCONST_REC_ERR(void) { return (GASCONST_REC_ERR); }
double cxGRAVITATION(void) { return (GRAVITATION); }
double cxGRAVITATION_ERR(void) { return (GRAVITATION_ERR); }
double cxGRAVITATION_REC(void) { return (GRAVITATION_REC); }
double cxGRAVITATION_REC_ERR(void) { return (GRAVITATION_REC_ERR); }
double cxRYDBERG(void) { return (RYDBERG); }
double cxRYDBERG_ERR(void) { return (RYDBERG_ERR); }
double cxRYDBERG_REC(void) { return (RYDBERG_REC); }
double cxRYDBERG_REC_ERR(void) { return (RYDBERG_REC_ERR); }
double cxG(void) { return (G); }
double cxG_ERR(void) { return (G_ERR); }
double cxALPHA(void) { return (ALPHA); }
double cxALPHA_ERR(void) { return (ALPHA_ERR); }
double cxALPHA_REC(void) { return (ALPHA_REC); }
double cxALPHA_REC_ERR(void) { return (ALPHA_REC_ERR); }
double cxALPHASQRT(void) { return (ALPHASQRT); }
double cxFLTSIG(void) { return (FLTSIG); }
double cxFLTMAN(void) { return (FLTMAN); }
double cxFLTEPS(void) { return (FLTEPS); }
double cxFLTMAX(void) { return (FLTMAX); }
double cxDBLMAXLN(void) { return (DBLMAXLN); }
double cxDBLSIG(void) { return (DBLSIG); }
double cxDBLMAN(void) { return (DBLMAN); }
double cxDBLEPS(void) { return (DBLEPS); }
double cxDBLMAX(void) { return (DBLMAX); }
double cxSI16MAX(void) { return (SI16MAX); }
double cxSI16MIN(void) { return (SI16MIN); }
double cxUI16MAX(void) { return (UI16MAX); }
double cxSI32MAX(void) { return (SI32MAX); }
double cxSI32MIN(void) { return (SI32MIN); }
double cxUI32MAX(void) { return (UI32MAX); }
double cxINTMAX(void) { return (INTMAX); }
double cxJEWISH_FIRST_MONTH(void) { return (JEWISH_FIRST_MONTH); }
double cxMONTHS_IN_YEAR(void) { return (MONTHS_IN_YEAR); }
double cxUVPV(void) { return (UVPV); }
double cxMINUTE(void) { return (MINUTE); }
double cxHOUR(void) { return (HOUR); }
double cxDAY(void) { return (DAY); }
double cxWEEK(void) { return (WEEK); }
double cxFLICK(void) { return (FLICK); }
double cxJDAY(void) { return (JDAY); }
double cxJYEAR(void) { return (JYEAR); }
double cxJCENTURY(void) { return (JCENTURY); }
double cxGYEAR(void) { return (GYEAR); }
double cxGYEAR_AT_0J2K(void) { return (GYEAR_AT_0J2K); }
double cxKWT(void) { return (KWT); }
double cxUET(void) { return (UET); }
double cxJ2K(void) { return (J2K); }
double cxJ2KDAY(void) { return (J2KDAY); }
double cxJDSEC_AT_0GREGORIAN(void) { return (JDSEC_AT_0GREGORIAN); }
double cxJDSEC_AT_0KWT(void) { return (JDSEC_AT_0KWT); }
double cxJDSEC_AT_0J2K(void) { return (JDSEC_AT_0J2K); }
double cxJDSEC_AT_0UET(void) { return (JDSEC_AT_0UET); }
double cxTT_AT_0TAI(void) { return (TT_AT_0TAI); }
double cxTT_AT_0UT1(void) { return (TT_AT_0UT1); }
double cxGRAM(void) { return (GRAM); }
double cxCARAT(void) { return (CARAT); }
double cxTONNE(void) { return (TONNE); }
double cxPOUND(void) { return (POUND); }
double cxLB(void) { return (LB); }
double cxGRAIN(void) { return (GRAIN); }
double cxOUNCE(void) { return (OUNCE); }
double cxOZ(void) { return (OZ); }
double cxSTONE(void) { return (STONE); }
double cxTON(void) { return (TON); }
double cxMM(void) { return (MM); }
double cxINCH(void) { return (INCH); }
double cxHAND(void) { return (HAND); }
double cxFOOT(void) { return (FOOT); }
double cxSURVEYFOOT(void) { return (SURVEYFOOT); }
double cxFEET(void) { return (FEET); }
double cxFT(void) { return (FT); }
double cxYARD(void) { return (YARD); }
double cxHORSE(void) { return (HORSE); }
double cxLINK(void) { return (LINK); }
double cxCHAIN(void) { return (CHAIN); }
double cxFURLONG(void) { return (FURLONG); }
double cxMILE(void) { return (MILE); }
double cxPOINT(void) { return (POINT); }
double cxSTANDARDGRAVITY(void) { return (STANDARDGRAVITY); }
double cxGRAVITATIONNASA(void) { return (GRAVITATIONNASA); }
double cxGRAVITATIONIERS(void) { return (GRAVITATIONIERS); }
double cxKGF(void) { return (KGF); }
double cxLBF(void) { return (LBF); }
double cxATM(void) { return (ATM); }
double cxSTANDARDATMOSPHERE(void) { return (STANDARDATMOSPHERE); }
double cxTORR(void) { return (TORR); }
double cxBAR(void) { return (BAR); }
double cxMMHG(void) { return (MMHG); }
double cxINHG(void) { return (INHG); }
double cxPSI(void) { return (PSI); }
double cxDEGC(void) { return (DEGC); }
double cxDEGF(void) { return (DEGF); }
double cxDEGR(void) { return (DEGR); }
double cxK_AT_0TEMPC(void) { return (K_AT_0TEMPC); }
double cxK_AT_0TEMPF(void) { return (K_AT_0TEMPF); }
double cxK_AT_0TEMPR(void) { return (K_AT_0TEMPR); }
double cxTEMPF_AT_0TEMPC(void) { return (TEMPF_AT_0TEMPC); }
double cxMACH(void) { return (MACH); }
double cxMPH(void) { return (MPH); }
double cxHECTARE(void) { return (HECTARE); }
double cxARE(void) { return (ARE); }
double cxACRE(void) { return (ACRE); }
double cxBARN(void) { return (BARN); }
double cxLITER(void) { return (LITER); }
double cxLITRE(void) { return (LITRE); }
double cxGALLON(void) { return (GALLON); }
double cxQUART(void) { return (QUART); }
double cxPINT(void) { return (PINT); }
double cxCUP(void) { return (CUP); }
double cxFLOZ(void) { return (FLOZ); }
double cxTBLSP(void) { return (TBLSP); }
double cxTSP(void) { return (TSP); }
double cxBARREL(void) { return (BARREL); }
double cxDRYGALLON(void) { return (DRYGALLON); }
double cxPECK(void) { return (PECK); }
double cxBUSHEL(void) { return (BUSHEL); }
double cxAH(void) { return (AH); }
double cxCALORIE(void) { return (CALORIE); }
double cxCAL_IT(void) { return (CAL_IT); }
double cxCAL_TH(void) { return (CAL_TH); }
double cxCAL(void) { return (CAL); }
double cxBTU_TH(void) { return (BTU_TH); }
double cxBTU_IT(void) { return (BTU_IT); }
double cxBTU(void) { return (BTU); }
double cxHP(void) { return (HP); }
double cxHORSEPOWER(void) { return (HORSEPOWER); }
double cxHPMETRIC(void) { return (HPMETRIC); }
double cxELECTRONVOLT(void) { return (ELECTRONVOLT); }
double cxeV(void) { return (eV); }
double cxERG(void) { return (ERG); }
double cxFOE(void) { return (FOE); }
double cxAAABATTERY_CHARGE(void) { return (AAABATTERY_CHARGE); }
double cxAAABATTERY_VOLTAGE(void) { return (AAABATTERY_VOLTAGE); }
double cxAAABATTERY(void) { return (AAABATTERY); }
double cxAAABATTERY_ENERGY(void) { return (AAABATTERY_ENERGY); }
double cxAABATTERY_CHARGE(void) { return (AABATTERY_CHARGE); }
double cxAABATTERY_VOLTAGE(void) { return (AABATTERY_VOLTAGE); }
double cxAABATTERY(void) { return (AABATTERY); }
double cxAABATTERY_ENERGY(void) { return (AABATTERY_ENERGY); }
double cxCBATTERY_CHARGE(void) { return (CBATTERY_CHARGE); }
double cxCBATTERY_VOLTAGE(void) { return (CBATTERY_VOLTAGE); }
double cxCBATTERY(void) { return (CBATTERY); }
double cxCBATTERY_ENERGY(void) { return (CBATTERY_ENERGY); }
double cxDBATTERY_CHARGE(void) { return (DBATTERY_CHARGE); }
double cxDBATTERY_VOLTAGE(void) { return (DBATTERY_VOLTAGE); }
double cxDBATTERY(void) { return (DBATTERY); }
double cxDBATTERY_ENERGY(void) { return (DBATTERY_ENERGY); }
double cxNINEVOLT_CHARGE(void) { return (NINEVOLT_CHARGE); }
double cxNINEVOLT_VOLTAGE(void) { return (NINEVOLT_VOLTAGE); }
double cxNINEVOLT(void) { return (NINEVOLT); }
double cxNINEVOLT_ENERGY(void) { return (NINEVOLT_ENERGY); }
double cxNINEVOLTBATTERY_CHARGE(void) { return (NINEVOLTBATTERY_CHARGE); }
double cxNINEVOLTBATTERY_VOLTAGE(void) { return (NINEVOLTBATTERY_VOLTAGE); }
double cxNINEVOLTBATTERY(void) { return (NINEVOLTBATTERY); }
double cxNINEVOLTBATTERY_ENERGY(void) { return (NINEVOLTBATTERY_ENERGY); }
double cxPHONEBATTERY_CHARGE(void) { return (PHONEBATTERY_CHARGE); }
double cxPHONEBATTERY_VOLTAGE(void) { return (PHONEBATTERY_VOLTAGE); }
double cxPHONEBATTERY(void) { return (PHONEBATTERY); }
double cxPHONEBATTERY_ENERGY(void) { return (PHONEBATTERY_ENERGY); }
double cxCARBATTERY_CHARGE(void) { return (CARBATTERY_CHARGE); }
double cxCARBATTERY_VOLTAGE(void) { return (CARBATTERY_VOLTAGE); }
double cxCARBATTERY(void) { return (CARBATTERY); }
double cxCARBATTERY_ENERGY(void) { return (CARBATTERY_ENERGY); }
double cxMICROWAVE_Hz(void) { return (MICROWAVE_Hz); }
double cxMICROWAVE_WAVELENGTH(void) { return (MICROWAVE_WAVELENGTH); }
double cxMICROWAVE_ENERGY(void) { return (MICROWAVE_ENERGY); }
double cxLF_Hz(void) { return (LF_Hz); }
double cxLF_WAVELENGTH(void) { return (LF_WAVELENGTH); }
double cxLF_ENERGY(void) { return (LF_ENERGY); }
double cxMF_Hz(void) { return (MF_Hz); }
double cxMF_WAVELENGTH(void) { return (MF_WAVELENGTH); }
double cxMF_ENERGY(void) { return (MF_ENERGY); }
double cxHF_Hz(void) { return (HF_Hz); }
double cxHF_WAVELENGTH(void) { return (HF_WAVELENGTH); }
double cxHF_ENERGY(void) { return (HF_ENERGY); }
double cxVHF_Hz(void) { return (VHF_Hz); }
double cxVHF_WAVELENGTH(void) { return (VHF_WAVELENGTH); }
double cxVHF_ENERGY(void) { return (VHF_ENERGY); }
double cxUHF_Hz(void) { return (UHF_Hz); }
double cxUHF_WAVELENGTH(void) { return (UHF_WAVELENGTH); }
double cxUHF_ENERGY(void) { return (UHF_ENERGY); }
double cxSHF_Hz(void) { return (SHF_Hz); }
double cxSHF_WAVELENGTH(void) { return (SHF_WAVELENGTH); }
double cxSHF_ENERGY(void) { return (SHF_ENERGY); }
double cxEHF_Hz(void) { return (EHF_Hz); }
double cxEHF_WAVELENGTH(void) { return (EHF_WAVELENGTH); }
double cxEHF_ENERGY(void) { return (EHF_ENERGY); }
double cxTHF_Hz(void) { return (THF_Hz); }
double cxTHF_WAVELENGTH(void) { return (THF_WAVELENGTH); }
double cxTHF_ENERGY(void) { return (THF_ENERGY); }
double cxFIR_Hz(void) { return (FIR_Hz); }
double cxFIR_WAVELENGTH(void) { return (FIR_WAVELENGTH); }
double cxFIR_ENERGY(void) { return (FIR_ENERGY); }
double cxMIR_Hz(void) { return (MIR_Hz); }
double cxMIR_WAVELENGTH(void) { return (MIR_WAVELENGTH); }
double cxMIR_ENERGY(void) { return (MIR_ENERGY); }
double cxNIR_Hz(void) { return (NIR_Hz); }
double cxNIR_WAVELENGTH(void) { return (NIR_WAVELENGTH); }
double cxNIR_ENERGY(void) { return (NIR_ENERGY); }
double cxRED_WAVELENGTH(void) { return (RED_WAVELENGTH); }
double cxRED_Hz(void) { return (RED_Hz); }
double cxRED_ENERGY(void) { return (RED_ENERGY); }
double cxORANGE_WAVELENGTH(void) { return (ORANGE_WAVELENGTH); }
double cxORANGE_Hz(void) { return (ORANGE_Hz); }
double cxORANGE_ENERGY(void) { return (ORANGE_ENERGY); }
double cxYELLOW_WAVELENGTH(void) { return (YELLOW_WAVELENGTH); }
double cxYELLOW_Hz(void) { return (YELLOW_Hz); }
double cxYELLOW_ENERGY(void) { return (YELLOW_ENERGY); }
double cxYELLOWGREEN_Hz(void) { return (YELLOWGREEN_Hz); }
double cxYELLOWGREEN_WAVELENGTH(void) { return (YELLOWGREEN_WAVELENGTH); }
double cxYELLOWGREEN_ENERGY(void) { return (YELLOWGREEN_ENERGY); }
double cxGREEN_WAVELENGTH(void) { return (GREEN_WAVELENGTH); }
double cxGREEN_Hz(void) { return (GREEN_Hz); }
double cxGREEN_ENERGY(void) { return (GREEN_ENERGY); }
double cxBLUE_WAVELENGTH(void) { return (BLUE_WAVELENGTH); }
double cxBLUE_Hz(void) { return (BLUE_Hz); }
double cxBLUE_ENERGY(void) { return (BLUE_ENERGY); }
double cxVIOLET_WAVELENGTH(void) { return (VIOLET_WAVELENGTH); }
double cxVIOLET_Hz(void) { return (VIOLET_Hz); }
double cxVIOLET_ENERGY(void) { return (VIOLET_ENERGY); }
double cxNUV_Hz(void) { return (NUV_Hz); }
double cxNUV_WAVELENGTH(void) { return (NUV_WAVELENGTH); }
double cxNUV_ENERGY(void) { return (NUV_ENERGY); }
double cxEUV_Hz(void) { return (EUV_Hz); }
double cxEUV_WAVELENGTH(void) { return (EUV_WAVELENGTH); }
double cxEUV_ENERGY(void) { return (EUV_ENERGY); }
double cxUVA_WAVELENGTH(void) { return (UVA_WAVELENGTH); }
double cxUVA_Hz(void) { return (UVA_Hz); }
double cxUVA_ENERGY(void) { return (UVA_ENERGY); }
double cxUVB_WAVELENGTH(void) { return (UVB_WAVELENGTH); }
double cxUVB_Hz(void) { return (UVB_Hz); }
double cxUVB_ENERGY(void) { return (UVB_ENERGY); }
double cxUVC_WAVELENGTH(void) { return (UVC_WAVELENGTH); }
double cxUVC_Hz(void) { return (UVC_Hz); }
double cxUVC_ENERGY(void) { return (UVC_ENERGY); }
double cxSX_Hz(void) { return (SX_Hz); }
double cxSX_WAVELENGTH(void) { return (SX_WAVELENGTH); }
double cxSX_ENERGY(void) { return (SX_ENERGY); }
double cxSXX_WAVELENGTH(void) { return (SXX_WAVELENGTH); }
double cxSXX_Hz(void) { return (SXX_Hz); }
double cxSXX_ENERGY(void) { return (SXX_ENERGY); }
double cxHX_Hz(void) { return (HX_Hz); }
double cxHX_WAVELENGTH(void) { return (HX_WAVELENGTH); }
double cxHX_ENERGY(void) { return (HX_ENERGY); }
double cxGAMMA_Hz(void) { return (GAMMA_Hz); }
double cxGAMMA_WAVELENGTH(void) { return (GAMMA_WAVELENGTH); }
double cxGAMMA_ENERGY(void) { return (GAMMA_ENERGY); }
double cxTURN(void) { return (TURN); }
double cxARCTURN(void) { return (ARCTURN); }
double cxARCRADIAN(void) { return (ARCRADIAN); }
double cxARCDEGREE(void) { return (ARCDEGREE); }
double cxARCMINUTE(void) { return (ARCMINUTE); }
double cxARCSECOND(void) { return (ARCSECOND); }
double cxARCGRAD(void) { return (ARCGRAD); }
double cxARCDEG(void) { return (ARCDEG); }
double cxARCMIN(void) { return (ARCMIN); }
double cxARCSEC(void) { return (ARCSEC); }
double cxGRAD(void) { return (GRAD); }
double cxSQUAREDEGREE(void) { return (SQUAREDEGREE); }
double cxSQDEG(void) { return (SQDEG); }
double cxSPHERESURFACE(void) { return (SPHERESURFACE); }
double cxSHANNON(void) { return (SHANNON); }
double cxNAT(void) { return (NAT); }
double cxHARTLEY(void) { return (HARTLEY); }
double cxHART(void) { return (HART); }
double cxDIT(void) { return (DIT); }
double cxBAN(void) { return (BAN); }
double cxRPM(void) { return (RPM); }
double cxRPS(void) { return (RPS); }
double cxRPH(void) { return (RPH); }
double cxOZFIN(void) { return (OZFIN); }
double cxLBFIN(void) { return (LBFIN); }
double cxLBFFT(void) { return (LBFFT); }
double cxKGFM(void) { return (KGFM); }
double cxNm_PER_lbfin(void) { return (Nm_PER_lbfin); }
double cxkgfm_PER_lbfin(void) { return (kgfm_PER_lbfin); }
double cxlbfinrpm_PER_Hp(void) { return (lbfinrpm_PER_Hp); }
double cxozfin_PER_lbfin(void) { return (ozfin_PER_lbfin); }
double cxlbfft_PER_lbfin(void) { return (lbfft_PER_lbfin); }
double cxW_PER_Hp(void) { return (W_PER_Hp); }
double cxFINESTRUCTURE(void) { return (FINESTRUCTURE); }
double cxFINESTRUCTURE_ERR(void) { return (FINESTRUCTURE_ERR); }
double cxFINESTRUCTURE_REC(void) { return (FINESTRUCTURE_REC); }
double cxFINESTRUCTURE_REC_ERR(void) { return (FINESTRUCTURE_REC_ERR); }
double cxMAGNETIC(void) { return (MAGNETIC); }
double cxMAGNETIC_ERR(void) { return (MAGNETIC_ERR); }
double cxMU0(void) { return (MU0); }
double cxMU0_ERR(void) { return (MU0_ERR); }
double cxELECTRIC(void) { return (ELECTRIC); }
double cxELECTRIC_ERR(void) { return (ELECTRIC_ERR); }
double cxEPSILON0(void) { return (EPSILON0); }
double cxEPSILON0_ERR(void) { return (EPSILON0_ERR); }
double cxCOULOMBCONST(void) { return (COULOMBCONST); }
double cxCOULOMBCONST_ERR(void) { return (COULOMBCONST_ERR); }
double cxPROTON_RADIUS(void) { return (PROTON_RADIUS); }
double cxPROTON_RADIUS_ERR(void) { return (PROTON_RADIUS_ERR); }
double cxMOLARMASS(void) { return (MOLARMASS); }
double cxMOLARMASS_ERR(void) { return (MOLARMASS_ERR); }
double cxDALTON(void) { return (DALTON); }
double cxDALTON_ERR(void) { return (DALTON_ERR); }
double cxAMU(void) { return (AMU); }
double cxAMU_ERR(void) { return (AMU_ERR); }
double cxATOMICMASSUNIT(void) { return (ATOMICMASSUNIT); }
double cxATOMICMASSUNIT_ERR(void) { return (ATOMICMASSUNIT_ERR); }
double cxUAMU(void) { return (UAMU); }
double cxUAMU_ERR(void) { return (UAMU_ERR); }
double cxRYDBERG_Hz(void) { return (RYDBERG_Hz); }
double cxRYDBERG_WAVELENGTH(void) { return (RYDBERG_WAVELENGTH); }
double cxRYDBERG_ENERGY(void) { return (RYDBERG_ENERGY); }
double cxELECTRON_MASSA(void) { return (ELECTRON_MASSA); }
double cxELECTRON_MASSA_ERR(void) { return (ELECTRON_MASSA_ERR); }
double cxHI_Hz(void) { return (HI_Hz); }
double cxHI_WAVELENGTH(void) { return (HI_WAVELENGTH); }
double cxHI_ENERGY(void) { return (HI_ENERGY); }
double cxHYDROGENLINE(void) { return (HYDROGENLINE); }
double cxHYDROGENLINE_ERR(void) { return (HYDROGENLINE_ERR); }
double cxHI(void) { return (HI); }
double cxHI_ERR(void) { return (HI_ERR); }
double cxPLANCKMASS(void) { return (PLANCKMASS); }
double cxPLANCKCHARGE(void) { return (PLANCKCHARGE); }
double cxPLANCKENERGY(void) { return (PLANCKENERGY); }
double cxPLANCKTEMP(void) { return (PLANCKTEMP); }
double cxPLANCKLENGTH(void) { return (PLANCKLENGTH); }
double cxPLANCKTIME(void) { return (PLANCKTIME); }
double cxPLANCKFREQUENCY(void) { return (PLANCKFREQUENCY); }
double cxSTEFAN(void) { return (STEFAN); }
double cxSTEFAN_ERR(void) { return (STEFAN_ERR); }
double cxPINGPONGBALL_RADIUS(void) { return (PINGPONGBALL_RADIUS); }
double cxGOLFBALL_RADIUS(void) { return (GOLFBALL_RADIUS); }
double cxTENNISBALL_RADIUS(void) { return (TENNISBALL_RADIUS); }
double cxBASEBALL_RADIUS(void) { return (BASEBALL_RADIUS); }
double cxSOFTBALL_RADIUS(void) { return (SOFTBALL_RADIUS); }
double cxSOCCERBALL_RADIUS(void) { return (SOCCERBALL_RADIUS); }
double cxBASKETBALL_RADIUS(void) { return (BASKETBALL_RADIUS); }
double cxPINGPONGBALL_MASS(void) { return (PINGPONGBALL_MASS); }
double cxGOLFBALL_MASS(void) { return (GOLFBALL_MASS); }
double cxTENNISBALL_MASS(void) { return (TENNISBALL_MASS); }
double cxBASEBALL_MASS(void) { return (BASEBALL_MASS); }
double cxSOFTBALL_MASS(void) { return (SOFTBALL_MASS); }
double cxBASKETBALL_MASS(void) { return (BASKETBALL_MASS); }
double cxSOCCERBALL_MASS(void) { return (SOCCERBALL_MASS); }
double cxMARATHON(void) { return (MARATHON); }
double cxPENNY_HEIGHT(void) { return (PENNY_HEIGHT); }
double cxNICKEL_HEIGHT(void) { return (NICKEL_HEIGHT); }
double cxDIME_HEIGHT(void) { return (DIME_HEIGHT); }
double cxQUARTER_HEIGHT(void) { return (QUARTER_HEIGHT); }
double cxPENNY_DIAMETER(void) { return (PENNY_DIAMETER); }
double cxNICKEL_DIAMETER(void) { return (NICKEL_DIAMETER); }
double cxDIME_DIAMETER(void) { return (DIME_DIAMETER); }
double cxQUARTER_DIAMETER(void) { return (QUARTER_DIAMETER); }
double cxPENNY_MASS(void) { return (PENNY_MASS); }
double cxNICKEL_MASS(void) { return (NICKEL_MASS); }
double cxDIME_MASS(void) { return (DIME_MASS); }
double cxQUARTER_MASS(void) { return (QUARTER_MASS); }
double cxMOON_MONTH(void) { return (MOON_MONTH); }
double cxMILKYWAY_AGE(void) { return (MILKYWAY_AGE); }
double cxASTRONOMICALUNIT(void) { return (ASTRONOMICALUNIT); }
double cxLIGHTYEAR(void) { return (LIGHTYEAR); }
double cxPARSEC(void) { return (PARSEC); }
double cxPROXIMACENTAURI(void) { return (PROXIMACENTAURI); }
double cxMILKYWAY_RADIUS(void) { return (MILKYWAY_RADIUS); }
double cxGALACTICCENTER(void) { return (GALACTICCENTER); }
double cxMILKYWAY_MASS(void) { return (MILKYWAY_MASS); }
double cxSOLARCONSTANT(void) { return (SOLARCONSTANT); }
double cxUNIVERSE_AGE(void) { return (UNIVERSE_AGE); }
double cxUNIVERSE_RADIUS(void) { return (UNIVERSE_RADIUS); }
double cxUNIVERSE_MASS(void) { return (UNIVERSE_MASS); }
double cxEINSTEIN(void) { return (EINSTEIN); }
double cxEINSTEIN_ERR(void) { return (EINSTEIN_ERR); }
double cxHUBBLE(void) { return (HUBBLE); }
double cxHUBBLE_ERR(void) { return (HUBBLE_ERR); }
double cxHUBBLERADIUS(void) { return (HUBBLERADIUS); }
double cxBHMASSTEMP(void) { return (BHMASSTEMP); }
double cxBHMASS_RADIUS(void) { return (BHMASS_RADIUS); }
double cxBHMASS3_LIFETIME(void) { return (BHMASS3_LIFETIME); }
double cxBHRADIUS2DENSITY(void) { return (BHRADIUS2DENSITY); }
double cxBHMASS2_ENTROPY(void) { return (BHMASS2_ENTROPY); }
double cxBHENTROPY_AREA(void) { return (BHENTROPY_AREA); }
double cxBHMASS2POWER(void) { return (BHMASS2POWER); }
double cxBHMASS2_AREA(void) { return (BHMASS2_AREA); }
double cxBHMASS2_DENSITY(void) { return (BHMASS2_DENSITY); }
double cxBEKENSTEININFORMATION(void) { return (BEKENSTEININFORMATION); }
double cxBEKENSTEINENTROPY(void) { return (BEKENSTEINENTROPY); }
double cxELEVATIONMAX(void) { return (ELEVATIONMAX); }
double cxELEVATIONMIN(void) { return (ELEVATIONMIN); }
double cxKPGBOUNDARY(void) { return (KPGBOUNDARY); }
double cxTRJBOUNDARY(void) { return (TRJBOUNDARY); }
double cxMILKYWAY_DAY(void) { return (MILKYWAY_DAY); }
double cxPTRBOUNDARY(void) { return (PTRBOUNDARY); }
double cxNPBOUNDARY(void) { return (NPBOUNDARY); }
double cxLIFE_AGE(void) { return (LIFE_AGE); }
double cxGIANTIMPACT(void) { return (GIANTIMPACT); }
double cxEARTH_AGE(void) { return (EARTH_AGE); }
double cxPPQ(void) { return (PPQ); }
double cxPPT(void) { return (PPT); }
double cxPPB(void) { return (PPB); }
double cxPPM(void) { return (PPM); }
double cxPERMILLE(void) { return (PERMILLE); }
double cxPERCENT(void) { return (PERCENT); }
double cxSOLID_ANGLE(void) { return (SOLID_ANGLE); }
double cxSPEED(void) { return (SPEED); }
double cxACCELERATION(void) { return (ACCELERATION); }
double cxFORCE(void) { return (FORCE); }
double cxENERGY(void) { return (ENERGY); }
double cxACTION(void) { return (ACTION); }
double cxPOWER(void) { return (POWER); }
double cxAREA(void) { return (AREA); }
double cxVOLUME(void) { return (VOLUME); }
double cxDENSITY(void) { return (DENSITY); }
double cxSPECIFICHEAT(void) { return (SPECIFICHEAT); }
double cxPRESSURE(void) { return (PRESSURE); }
double cxVISCOSITY(void) { return (VISCOSITY); }
double cxFREQUENCY(void) { return (FREQUENCY); }
double cxVOLTAGE(void) { return (VOLTAGE); }
double cxRESISTANCE(void) { return (RESISTANCE); }
double cxINDUCTANCE(void) { return (INDUCTANCE); }
double cxCAPACITANCE(void) { return (CAPACITANCE); }
double cxCONDUCTANCE(void) { return (CONDUCTANCE); }
double cxMAGNETICFLUX(void) { return (MAGNETICFLUX); }
double cxMAGNETICINDUCTION(void) { return (MAGNETICINDUCTION); }
//  IIIIIIIIIIMPORT_MASTER
double timee(void) {
   struct timeval tv;
   gettimeofday(&tv, NULL);
   return(tv.tv_sec + tv.tv_usec / 1000000.0);
}
double id(double xx)
{
   return (xx);
}
double reci(double xx)
{
   return (1.0 / xx);
}
double neg(double xx)
{
   return (- xx);
}
double square(double xx)
{
   return (xx * xx);
}
double sq(double xx)
{
   return (xx * xx);
}
double sqinv(double xx)
{
   return (sqrt(xx));
}
double cube(double xx)
{
   return (xx * xx * xx);
}
double cu(double xx)
{
   return (xx * xx * xx);
}
double sign(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = -1.0;
   } else if (0.0 < xx) {
      retvalu = 1.0;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double stair(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double heaviside(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else if (0.0 < xx) {
      retvalu = 1.0;
   } else {
      retvalu = 0.5;
   }
   return (retvalu);
}
double divi(double numer
      , double denom
      , double def_val)
{
   double retvalu;
   if (denom < 0.0 || 0.0 < denom) {
      retvalu = numer / denom;
   } else {
      retvalu = def_val;
   }
   return (retvalu);
}
double clip(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = xx;
   }
   return (retvalu);
}
double clip2(double xx
      , double xlow
      , double xhigh)
{
   double retvalu;
   if (xx <= xlow) {
      retvalu = xlow;
   } else if (xx <= xhigh) {
      retvalu = xx;
   } else {
      retvalu = xhigh;
   }
   return (retvalu);
}
double clip2x(double xx
      , double xa
      , double xb)
{
   double retvalu;
   if (xb < xa) {
      if (xx <= xb || xa <= xx) {
         retvalu = xx;
      } else if (2.0 * xx < xa + xb) {
         retvalu = xb;
      } else {
         retvalu = xa;
      }
   } else {
      if (xx <= xa) {
         retvalu = xa;
      } else if (xx <= xb) {
         retvalu = xx;
      } else {
         retvalu = xb;
      }
   }
   return (retvalu);
}
double sba(double xx)
{
   double retvalu;
   if (- 1.0 < xx && xx < 1.0) {
      retvalu = xx;
   } else {
      retvalu = 1.0 / xx;
   }
   return (retvalu);
}
double ratio(double aa
      , double bb)
{
   double rati;
   if (fabs(aa) < fabs(bb)) {
      rati = aa / bb;
   } else {
      rati = bb / aa;
   }
   return (rati);
}
double horner(double xx
      , long deg
      , const double *coefh_arr_pc)
{
   long jj;
   double sum_curr;
   sum_curr = coefh_arr_pc[deg];
   for (jj = deg - 1; 0 <= jj; jj -= 1) {
      sum_curr *= xx;
      sum_curr += coefh_arr_pc[jj];
   }
   return (sum_curr);
}
double chebeval(double xx
      , long deg
      , const double *cheb_arr_pc)
{
   double ba;
   double bb;
   double bc;
   long ii;
   xx *= 2.0;
   ba = cheb_arr_pc[deg];
   bb = 0.0;
   bc = 0.0;
   for (ii = deg - 1; 0 <= ii; ii -= 1) {
      bc = bb;
      bb = ba;
      ba = xx * bb - bc + cheb_arr_pc[ii];
   }
   return ((ba - bc) / 2.0);
}
double ln(double xx)
{
   return (log(xx));
}
double lg(double xx)
{
   return (log(xx) / TWOLN);
}
double log10(double xx)
{
   return (log(xx) / log(10.0));
}
double logx(double xx
      , double bb)
{
   return (log(xx) / log(bb));
}
double l10(double xx)
{
   return (log(xx) / log(10.0));
}
double fmody(double xx
      , double yymodulus)
{
   double retvalu;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = xx - floor(xx / yymodulus) * yymodulus;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double fmodu(double xx
      , double yymodulus)
{
   double retvalu;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = fmod(xx, yymodulus);
      if (retvalu < 0.0) {
         retvalu += fabs(yymodulus);
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double remquou(double xx
      , double yymodulus
      , double *ret_int_arr_p)
{
   double retvalu;
   double qu;
   double fl;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      qu = xx / yymodulus;
      fl = floor(qu);
      retvalu = qu - fl;
   } else {
      fl = 0.0;
      retvalu = xx;
   }
   ret_int_arr_p[0] = fl;
   return (retvalu);
}
double fmods(double xx
      , double yymodulus)
{
   double retvalu;
   double ayy;
   double lim;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = fmod(xx, yymodulus);
      ayy = fabs(yymodulus);
      lim = ayy / 2.0;
      if (retvalu < - lim) {
         retvalu += ayy;
      } else if (lim <= retvalu) {
         retvalu -= ayy;
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double pow2(double expo)
{
   return (pow(2.0, expo));
}
double pow10(double expo)
{
   return (pow(10.0, expo));
}
double sigmoid(double xx)
{
   return (1.0 / (1.0 + exp(-xx)));
}
double sigmoidinv(double xx)
{
   return (- log(((1.0 / xx - 0.5) - 0.5)));
}
double sigmoid3(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double xzero;
   double taa;
   if (aa <= 0.0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = log((1.0 - aa) / aa);
      alfa = log((1.0 - bb) / bb) - taa;
      xzero = -taa / alfa;
      retvalu = 1.0 / (1.0 + exp(alfa * (xx - xzero)));
   }
   return (retvalu);
}
double taninv3(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double taa;
   if (aa <= 0.0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = tan((aa - 0.5) * PI);
      alfa = tan((bb - 0.5) * PI) - taa;
      retvalu = taninv(alfa * xx + taa) / PI + 0.5;
   }
   return (retvalu);
}
double sigmoid3d(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double xzero;
   double taa;
   double expa;
   if (aa <= 0.0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = log((1.0 - aa) / aa);
      alfa = log((1.0 - bb) / bb) - taa;
      xzero = -taa / alfa;
      expa = exp(alfa * (xx - xzero));
      retvalu = -alfa * expa / square(1.0 + expa);
   }
   return (retvalu);
}
double sqrtx(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = -sqrt(-xx);
   } else {
      retvalu = sqrt(xx);
   }
   return (retvalu);
}
double smooth(double xx)
{
   double retvalu;
   if (xx <= -1.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else {
      retvalu = sigmoid(4.0 * xx / (1.0 - xx * xx));
   }
   return (retvalu);
}
double hypot(double xx
      , double yy)
{
   double retvalu;
   double axx;
   double ayy;
   axx = fabs(xx);
   ayy = fabs(yy);
   if (axx < ayy) {
      retvalu = ayy;
      ayy = axx;
      axx = retvalu;
   }
   if (0.0 < axx) {
      if (ayy < DBLEPS * axx) {
         retvalu = axx;
      } else {
         ayy /= axx;
         retvalu = axx * sqrt(1.0 + ayy * ayy);
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double hypot1(double xx)
{
   return (hypot(1.0, xx));
}
double hypot1inv(double xx)
{
   return (sqrt(xx * xx - 1.0));
}
double hypot3(double xx
      , double yy
      , double zz)
{
   return (sqrt(xx * xx + yy * yy + zz * zz));
}
double topyh(double xx
      , double yy)
{
   double retvalu;
   double xsq;
   double ysq;
   xsq = xx * xx;
   ysq = yy * yy;
   if (ysq <= 0.0) {
      retvalu = xx;
   } else if (xsq <= 0.0) {
      retvalu = yy;
   } else if (xsq < ysq) {
      xsq /= ysq;
      retvalu = -sign(xx) * sqrt(1.0 - xsq) * fabs(yy);
   } else {
      ysq /= xsq;
      retvalu = sqrt(1.0 - ysq) * xx;
   }
   return (retvalu);
}
double topyh1(double xx)
{
   double retvalu;
   if (xx < - 1.0 || 1.0 < xx) {
      retvalu = -sqrt(xx * xx - 1.0);
   } else {
      retvalu = sqrt(1.0 - xx * xx);
   }
   return (retvalu);
}
long cnv_dbl2si16(double xx)
{
   double retvalu;
   if (xx <= SI16MIN) {
      retvalu = SI16MIN;
   } else if (xx <= SI16MAX) {
      retvalu = floorl(xx + 0.5);
   } else {
      retvalu = SI16MAX;
   }
   return (retvalu);
}
double k2tempc(double temp_k)
{
   return ((temp_k - K_AT_0TEMPC) * KELVIN / DEGC);
}
double tempc2k(double temp_c)
{
   return (temp_c * DEGC / KELVIN + K_AT_0TEMPC);
}
double k2tempf(double temp_k)
{
   return ((temp_k - K_AT_0TEMPF) * KELVIN / DEGF);
}
double tempf2k(double temp_f)
{
   return (temp_f * DEGF / KELVIN + K_AT_0TEMPF);
}
double k2tempr(double temp_k)
{
   return ((temp_k - K_AT_0TEMPR) * KELVIN / DEGR);
}
double tempr2k(double temp_r)
{
   return (temp_r * DEGR / KELVIN + K_AT_0TEMPR);
}
double tempf2tempc(double temp_f)
{
   return ((temp_f - TEMPF_AT_0TEMPC) * DEGF);
}
double tempc2tempf(double temp_c)
{
   return (temp_c / DEGF + TEMPF_AT_0TEMPC);
}
long iszero(double xx)
{
   return (0.0 <= xx && xx <= 0.0);
}
long iseven(double xx)
{
   return (fmodu(xx, 2.0) < 1.0);
}
long isodd(double xx)
{
   return (1.0 <= fmodu(xx, 2.0));
}
long ismult(double xx
      , double mult)
{
   return (fmodu(xx, mult) < 1.0);
}
long ismultl(long xx
      , long mult)
{
   long retvalu_bol;
   if (xx % mult == 0) {
      retvalu_bol = true;
   } else {
      retvalu_bol = false;
   }
   return (retvalu_bol);
}
long isgt(double xx
      , double yy)
{
   return (yy < xx);
}
long islt(double xx
      , double yy)
{
   return (xx < yy);
}
long isge(double xx
      , double yy)
{
   return (yy <= xx);
}
long isle(double xx
      , double yy)
{
   return (xx <= yy);
}
long ispos(double xx)
{
   return (0.0 < xx);
}
long isneg(double xx)
{
   return (xx < 0.0);
}
long iseq(double xx
      , double yy)
{
   long retvalu_bol;
   double epsx;
   double diffxy;
   retvalu_bol = false;
   if (iszero(xx)) {
      if (fabs(yy) <= DBLEPS) {
         retvalu_bol = true;
      }
   } else {
      epsx = 2.0 * xx * DBLEPS;
      diffxy = xx - yy;
      if (epsx < 0.0) {
         epsx = -epsx;
      }
      if (- epsx <= diffxy && diffxy <= epsx) {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long isneq(double xx
      , double yy)
{
   return (xx < yy || yy < xx);
}
long isint(double xx)
{
   return (iseq(xx, floor(xx)));
}
long isnegint(double xx)
{
   return (xx < 0.0 && iseq(xx, floor(xx)));
}
long isposint(double xx)
{
   return (0.0 < xx && iseq(xx, floor(xx)));
}
double ifzero(double cond
      , double tru_val
      , double fal_val)
{
   double retvalu;
   if (cond < 0.0 || 0.0 < cond) {
      retvalu = fal_val;
   } else {
      retvalu = tru_val;
   }
   return (retvalu);
}
long isalmostequal(double xx
      , double yy
      , double epsratio)
{
   return (fabs(xx - yy) <= fabs(epsratio * xx));
}
long iswithin(double xx
      , double yy
      , double delta)
{
   return (xx - delta <= yy && yy <= xx + delta);
}
long isbetweenx(double xx
      , double min_xx
      , double max_xx)
{
   return (min_xx < xx && xx < max_xx);
}
long isbetween(double xx
      , double min_xx
      , double max_xx)
{
   return (min_xx <= xx && xx <= max_xx);
}
long isleapyear(long gregyear)
{
   long retvalu_bol;
   long rema;
   retvalu_bol = false;
   if ((gregyear % 4) == 0) {
      rema = (gregyear % 400);
      if (rema != 100 && rema != 200 && rema != 300) {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long isss(double xx
      , double yy)
{
   long retvalu_bol;
   if (0.0 < xx) {
      if (0.0 < yy) {
         retvalu_bol = true;
      } else {
         retvalu_bol = false;
      }
   } else if (xx < 0.0) {
      if (yy < 0.0) {
         retvalu_bol = true;
      } else {
         retvalu_bol = false;
      }
   } else {
      if (0.0 < yy || yy < 0.0) {
         retvalu_bol = false;
      } else {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long issignsame(double xx
      , double yy)
{
   return (isss(xx, yy));
}
long isfloorsame(double xx
      , double yy
      , double multy)
{
   return (iseq(floor(xx * multy), floor(yy * multy)));
}
static const int LC_MAGIC_INT = 2070108020;
static const int LC_MAGIC_INT_NOT = 301040105;
long magicset(void)
{
   return (LC_MAGIC_INT);
}
long magicnot(void)
{
   return (LC_MAGIC_INT_NOT);
}
long ismagic(long xx)
{
   return (iseq(xx, magicset()));
}
double rtoz(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = ceil(xx);
   } else {
      retvalu = floor(xx);
   }
   return (retvalu);
}
double rtoi(double xx)
{
   double retvalu;
   if (0.0 <= xx) {
      retvalu = ceil(xx);
   } else {
      retvalu = floor(xx);
   }
   return (retvalu);
}
double bankers(double xx)
{
   double retvalu;
   retvalu = floor(xx + 0.5);
   if (isint(xx + 0.5) && isodd(retvalu)) {
      retvalu -= 1.0;
   }
   return (retvalu);
}
double round(double xx)
{
   double retvalu;
   retvalu = floor(xx + 0.5);
   return (retvalu);
}
long iround(double xx)
{
   long retvalu;
   retvalu = floor(xx + 0.5);
   return (retvalu);
}
double round2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = xx;
   } else {
      retvalu = round(xx / yy) * yy;
   }
   return (retvalu);
}
double roundy(double xx
      , double yy
      , double shf)
{
   double retvalu;
   if (yy < 0.0 || 0.0 < yy) {
      retvalu = (round((xx - shf) / yy) * yy + shf);
   } else {
      retvalu = xx;
   }
   return (retvalu);
}
double rtomsd(double fs
      , long msds)
{
   double retvalu;
   double signs;
   long logi;
   if (iszero(fs)) {
      retvalu = 0.0;
   } else {
      if (fs < 0.0) {
         signs = -1.0;
         fs = -fs;
      } else {
         signs = 1.0;
      }
      logi = floor(log10(fs) - msds + 1.0);
      retvalu = signs * round2(fs, pow(10.0, logi));
   }
   return (retvalu);
}
double rto125(double fs)
{
   double signs;
   double tmpf;
   double valu;
   double pow_ten;
   double retvalu;
   if (iszero(fs)) {
      retvalu = 0.0;
   } else {
      if (fs < 0.0) {
         signs = -1.0;
         fs = -fs;
      } else {
         signs = 1.0;
      }
      pow_ten = pow(10.0, floor(log10(fs)));
      tmpf = fs / pow_ten;
      if (tmpf < sqrt(2.0)) {
         valu = 1.0;
      } else if (tmpf < sqrt(10.0)) {
         valu = 2.0;
      } else if (tmpf < sqrt(50.0)) {
         valu = 5.0;
      } else {
         valu = 10.0;
      }
      retvalu = signs * pow_ten * valu;
   }
   return (retvalu);
}
double floor2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else {
      retvalu = floor(xx / fabs(yy)) * fabs(yy);
   }
   return (retvalu);
}
double ceil2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else {
      retvalu = ceil(xx / fabs(yy)) * fabs(yy);
   }
   return (retvalu);
}
double fmod2(double xx
      , double minn
      , double maxx)
{
   double retvalu;
   if (iseq(maxx, minn)) {
      retvalu = 0.0;
   } else {
      retvalu = fmodu(xx - minn, maxx - minn) + minn;
   }
   return (retvalu);
}
double frac(double xx)
{
   return (xx - floor(xx));
}
double trunc(double xx)
{
   double retvalu;
   if (0.0 <= xx) {
      retvalu = xx - floor(xx);
   } else {
      retvalu = xx - ceil(xx);
   }
   return (retvalu);
}
double fmul(double xx
      , double pp)
{
   double lpp;
   lpp = log(pp);
   return (exp(lpp * frac(log(xx) / lpp)));
}
double dist(double xx
      , double xmoduli)
{
   double retvalu;
   double axx;
   double axmoduli;
   axx = fabs(xx);
   axmoduli = fabs(xmoduli);
   retvalu = fmod(axx, axmoduli);
   if (axmoduli < 2.0 * retvalu) {
      retvalu = axmoduli - retvalu;
   }
   return (retvalu);
}
double ddist(double xx
      , double xmoduli)
{
   double retvalu;
   double rema;
   double axmoduli;
   if (iszero(xmoduli)) {
      retvalu = 0.0;
   } else {
      axmoduli = fabs(xmoduli);
      rema = xx - floor(xx / axmoduli) * axmoduli;
      if (axmoduli < 2.0 * rema) {
         rema -= axmoduli;
      }
      retvalu = rema;
   }
   return (retvalu);
}
double sinc(double xx_rad)
{
   double retvalu;
   if (xx_rad < 0.0 || 0.0 < xx_rad) {
      retvalu = sin(xx_rad) / xx_rad;
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double sincinv(double yy)
{
   double min_yy;
   double min_xx;
   double start_xx;
   double aa;
   double bb;
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   min_xx = 4.4934094579090641753079882808139693729311345;
   min_yy = sinc(min_xx);
   if (yy <= min_yy) {
      nrvx_xx = min_xx;
   } else if (yy < 1.0) {
      aa = yy - min_yy;
      bb = 1.0 - yy;
      start_xx = (aa * sqrt(5.0 * bb) + bb * (min_xx - sqrt(6.0 * aa))) /\
               (1.0 - min_yy);
      nrvx_xx = start_xx;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = cos(nrvx_xx) - yy;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = sin(nrvx_xx) - yy * nrvx_xx;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   } else {
      nrvx_xx = 0.0;
   }
   return (nrvx_xx);
}
double sincc(double xx_rad)
{
   double trigsign;
   double xr_rad;
   double sum_curr;
   double sum_prev;
   double nxr_sqr;
   long ii;
   double term;
   double retvalu;
   if (iszero(xx_rad)) {
      retvalu = 1.0;
   } else {
      xr_rad = fmod(xx_rad, TAU);
      if (TAU / 2.0 < xr_rad) {
         xr_rad = TAU - xr_rad;
         trigsign = -1.0;
      } else {
         trigsign = 1.0;
      }
      if (TAU / 4.0 < xr_rad) {
         xr_rad = TAU / 2.0 - xr_rad;
      }
      nxr_sqr = -xr_rad * xr_rad;
      sum_curr = xr_rad;
      term = xr_rad;
      ii = 2;
      for (;;) {
         term *= nxr_sqr / (ii * (ii - 1.0));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
         ii += 2;
      }
      retvalu = trigsign * sum_curr * xr_rad / xx_rad;
   }
   return (retvalu);
}
double versin(double circ_rad)
{
   double trigsign;
   double xr_rad;
   double xr_sqr;
   long ii;
   double sum_curr;
   double term;
   double sum_prev;
   xr_rad = fmod(circ_rad, TAU);
   if (TAU / 2.0 < xr_rad) {
      xr_rad = TAU - xr_rad;
   }
   if (TAU / 4.0 < xr_rad) {
      xr_rad = TAU / 2.0 - xr_rad;
      trigsign = -1.0;
   } else {
      trigsign = 1.0;
   }
   xr_sqr = -xr_rad * xr_rad;
   sum_curr = 1.0 / 2.0;
   term = 1.0 / 2.0;
   ii = 4;
   for (;;) {
      term *= xr_sqr / (ii * (ii - 1.0));
      sum_prev = sum_curr;
      sum_curr += term;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      ii += 2;
   }
   sum_curr *= - xr_sqr;
   if (trigsign < 0.0) {
      sum_curr = 2.0 - sum_curr;
   }
   return (sum_curr);
}
double haversin(double circ_rad)
{
   return (versin(circ_rad) / 2.0);
}
double tur2deg(double circ_tur)
{
   return (circ_tur * TURN / ARCDEG);
}
double deg2tur(double circ_deg)
{
   return (circ_deg * ARCDEG / TURN);
}
double tur2rad(double circ_tur)
{
   return (circ_tur * TURN / RADIAN);
}
double rad2tur(double circ_rad)
{
   return (circ_rad * RADIAN / TURN);
}
double tur2sec(double circ_tur)
{
   return (circ_tur * TURN / ARCSEC);
}
double sec2tur(double circ_sec)
{
   return (circ_sec * ARCSEC / TURN);
}
double rad2deg(double circ_rad)
{
   return (circ_rad * RADIAN / ARCDEG);
}
double deg2rad(double circ_deg)
{
   return (circ_deg * ARCDEG / RADIAN);
}
double rad2sec(double circ_rad)
{
   return (circ_rad * RADIAN / ARCSEC);
}
double sec2rad(double circ_sec)
{
   return (circ_sec * ARCSEC / RADIAN);
}
double deg2sec(double circ_deg)
{
   return (circ_deg * ARCDEG / ARCSEC);
}
double sec2deg(double circ_sec)
{
   return (circ_sec * ARCSEC / ARCDEG);
}
double rad2dms(double xx_rads)
{
   double dd_deg;
   double mm_min;
   double dg;
   dg = rad2deg(xx_rads);
   dd_deg = floor(dg);
   dg = (dg - dd_deg) * ARCDEG / ARCMIN;
   mm_min = floor(dg);
   dg = (dg - mm_min) * ARCMIN / ARCSEC;
   return (dd_deg + (mm_min + dg / 100.0) / 100.0);
}
double rad2dms2(double circ_rads)
{
   double dg;
   double dd_deg_arr[2];
   double mm_min_arr[2];
   dg = rad2deg(circ_rads);
   dg = modf(dg, dd_deg_arr) * ARCDEG / ARCMIN;
   dg = modf(dg, mm_min_arr) * ARCMIN / ARCSEC;
   return (dd_deg_arr[0] + (mm_min_arr[0] + dg / 100.0) / 100.0);
}
double dms2rad(double circ_dms)
{
   double dd_deg;
   double mm_min;
   double dg;
   dd_deg = floor(circ_dms);
   dg = (circ_dms - dd_deg) * 100.0;
   mm_min = floor(dg);
   dg = (dg - mm_min) * 100.0;
   return ((dg * ARCSEC + mm_min * ARCMIN + dd_deg * ARCDEG) / RADIAN);
}
double deg2dms(double circ_deg)
{
   return (rad2dms(deg2rad(circ_deg)));
}
double dms2deg(double circ_dms)
{
   return (rad2deg(dms2rad(circ_dms)));
}
double cot(double circ_rad)
{
   return (cos(circ_rad) / sin(circ_rad));
}
double sec(double circ_rad)
{
   return (1.0 / cos(circ_rad));
}
double csc(double circ_rad)
{
   return (1.0 / sin(circ_rad));
}
double sininv(double xx)
{
   return (atan2(xx, topyh1(xx)));
}
double cosinv(double xx)
{
   return (atan2(topyh1(xx), xx));
}
double taninv(double xx)
{
   return (atan2(xx, 1.0));
}
double cotinv(double xx)
{
   return (atan2(1.0, xx));
}
double secinv(double xx)
{
   return (atan2(sqrt(xx * xx - 1.0), sign(xx)));
}
double cscinv(double xx)
{
   return (atan2(sign(xx), sqrt(xx * xx - 1.0)));
}
double sinh(double hyp_rad)
{
   return ((exp(hyp_rad) - exp(-hyp_rad)) / 2.0);
}
double cosh(double hyp_rad)
{
   return ((exp(hyp_rad) + exp(-hyp_rad)) / 2.0);
}
double tanh(double hyp_rad)
{
   return (sinh(hyp_rad) / cosh(hyp_rad));
}
double coth(double hyp_rad)
{
   return (cosh(hyp_rad) / sinh(hyp_rad));
}
double sech(double hyp_rad)
{
   return (1.0 / cosh(hyp_rad));
}
double csch(double hyp_rad)
{
   return (1.0 / sinh(hyp_rad));
}
double gd(double hyp_rad)
{
   return (2.0 * atan2(exp(hyp_rad), 1.0) - PI / 2.0);
}
double gdinv(double xx)
{
   double xxn;
   xxn = fmods(xx, PI);
   return (log(fabs((1.0 + sin(xxn)) / cos(xxn))));
}
double sinhinv(double xx)
{
   return (log(xx + sqrt(xx * xx + 1.0)));
}
double coshinv(double xx)
{
   return (log(xx + sqrt(xx * xx - 1.0)));
}
double tanhinv(double xx)
{
   return (log((1.0 + xx) / (1.0 - xx)) / 2.0);
}
double cothinv(double xx)
{
   return (log((xx + 1.0) / (xx - 1.0)) / 2.0);
}
double sechinv(double xx)
{
   return (log((1.0 + topyh1(xx)) / xx));
}
double cschinv(double xx)
{
   return (log((1.0 + sqrt(1.0 + xx * xx)) / xx));
}
double atan2h(double xx
      , double yy)
{
   double retvalu;
   if (fabs(yy) <= fabs(xx)) {
      retvalu = 0.0;
   } else {
      retvalu = log((yy + xx) / (yy - xx)) / 2.0;
   }
   return (retvalu);
}
double atan2u(double xx
      , double yy)
{
   return (fmodu(atan2(xx, yy), tur2rad(1.0)));
}
double sind(double circ_deg)
{
   return (sin(deg2rad(circ_deg)));
}
double sindinv(double xx)
{
   return (rad2deg(sininv(xx)));
}
double cosd(double circ_deg)
{
   return (cos(deg2rad(circ_deg)));
}
double cosdinv(double xx)
{
   return (rad2deg(cosinv(xx)));
}
double tand(double circ_deg)
{
   return (tan(deg2rad(circ_deg)));
}
double tandinv(double xx)
{
   return (rad2deg(taninv(xx)));
}
double cotd(double circ_deg)
{
   return (cot(deg2rad(circ_deg)));
}
double cotdinv(double xx)
{
   return (rad2deg(cotinv(xx)));
}
double secd(double circ_deg)
{
   return (sec(deg2rad(circ_deg)));
}
double secdinv(double xx)
{
   return (rad2deg(secinv(xx)));
}
double cscd(double circ_deg)
{
   return (csc(deg2rad(circ_deg)));
}
double cscdinv(double xx)
{
   return (rad2deg(cscinv(xx)));
}
double atan2d(double xx
      , double yy)
{
   return (rad2deg(atan2(xx, yy)));
}
double sint(double circ_tur)
{
   return (sin(tur2rad(circ_tur)));
}
double sintinv(double xx)
{
   return (rad2tur(sininv(xx)));
}
double cost(double circ_tur)
{
   return (cos(tur2rad(circ_tur)));
}
double costinv(double xx)
{
   return (rad2tur(cosinv(xx)));
}
double tant(double circ_tur)
{
   return (tan(tur2rad(circ_tur)));
}
double tantinv(double xx)
{
   return (rad2tur(taninv(xx)));
}
double cott(double circ_tur)
{
   return (cot(tur2rad(circ_tur)));
}
double cottinv(double xx)
{
   return (rad2tur(cotinv(xx)));
}
double sect(double circ_tur)
{
   return (sec(tur2rad(circ_tur)));
}
double sectinv(double xx)
{
   return (rad2tur(secinv(xx)));
}
double csct(double circ_tur)
{
   return (csc(tur2rad(circ_tur)));
}
double csctinv(double xx)
{
   return (rad2tur(cscinv(xx)));
}
double atan2t(double xx
      , double yy)
{
   return (rad2tur(atan2(xx, yy)));
}
double sqrtxp1m1(double xx)
{
   double retvalu;
   if (fabs(xx) < 0.01) {
      retvalu = ((((((((-429.0 / 32768.0) * xx + 33.0 / 2048.0) * xx -\
               21.0 / 1024.0) * xx + 7.0 / 256.0) * xx - 5.0 / 128.0) *\
               xx + 1.0 / 16.0) * xx - 1.0 / 8.0) * xx + 1.0 / 2.0) * xx;
   } else {
      retvalu = sqrt(1.0 + xx) - 1.0;
   }
   return (retvalu);
}
double ln1p(double xx)
{
   double retvalu;
   double sum_curr;
   long jj;
   long start;
   if (0.1 < fabs(xx)) {
      retvalu = log(1.0 + xx);
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 2) {
         start = 2;
      }
      sum_curr = 0.0;
      for (jj = start; 1 <= jj; jj -= 1) {
         sum_curr = 1.0 / jj - sum_curr * xx;
      }
      retvalu = sum_curr * xx;
   }
   return (retvalu);
}
double expm1(double xx)
{
   double retvalu;
   double sum_curr;
   long jj;
   long start;
   if (0.1 < fabs(xx)) {
      retvalu = exp(xx) - 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 2) {
         start = 2;
      }
      sum_curr = 0.0;
      for (jj = start; 1 <= jj; jj -= 1) {
         sum_curr = xx * (1.0 + sum_curr) / jj;
      }
      retvalu = sum_curr;
   }
   return (retvalu);
}
double cosm1(double xx)
{
   double retvalu;
   double sum_curr;
   long jj;
   long start;
   double xr_sqr;
   if (0.1 < fabs(xx)) {
      retvalu = cos(xx) - 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 6) {
         start = 6;
      } else if (isodd(start)) {
         start += 1;
      }
      xr_sqr = -xx * xx;
      sum_curr = 1.0 / (start * (start + 1.0));
      for (jj = start; 2 <= jj; jj -= 2) {
         sum_curr += 1.0;
         sum_curr *= xr_sqr / (jj * (jj - 1.0));
      }
      retvalu = sum_curr;
   }
   return (retvalu);
}
double lns(double xx)
{
   double aa;
   double retvalu;
   aa = fabs(xx);
   if (aa < 1.0 / DBLMAX) {
      retvalu = -DBLMAXLN - 1.0;
   } else {
      retvalu = log(aa);
   }
   return (retvalu);
}
double trip(double xx)
{
   double retvalu;
   double fx;
   fx = 4.0 * frac(xx);
   if (fx < 2.0) {
      retvalu = 1.0 - fx;
   } else {
      retvalu = fx - 3.0;
   }
   return (retvalu);
}
static double lf_cbrtx_gt_zero(double xx)
{
   double yy;
   double zz;
   zz = 64.0 * xx / 27.0;
   yy = 1.0;
   while (zz <= 1.0) {
      zz *= 8.0;
      yy /= 2.0;
   }
   while (8.0 < zz) {
      zz /= 8.0;
      yy *= 2.0;
   }
   return (yy);
}
double cbrt(double yy)
{
   double ayy;
   double init_xx;
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   ayy = fabs(yy);
   if (0.0 < ayy) {
      init_xx = lf_cbrtx_gt_zero(ayy);
      if (yy < 0.0) {
         init_xx = -init_xx;
      }
      nrvx_xx = init_xx;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = 3.0 * nrvx_xx * nrvx_xx;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = nrvx_xx * nrvx_xx * nrvx_xx - yy;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   } else {
      nrvx_xx = 0.0;
   }
   return (nrvx_xx);
}
double cuberoot(double xx)
{
   return (cbrt(xx));
}
double squareroot(double xx)
{
   return (sqrt(xx));
}
long print_array(long arr_size
      , const long *data_arr_pc)
{
   long ii;
   for (ii = 0; ii <= arr_size - 1; ii += 1) {
      printf("%.18g", (double)data_arr_pc[ii]);
      printf("%s", " ");
   }
   return (arr_size);
}
static long lf_continued_fraction(double orig
      , long show_diff)
{
   long whole;
   double xx;
   double epsilon;
   long den_a;
   long den_b;
   long den_c;
   long num_a;
   long num_b;
   long num_c;
   double diff;
   long steps;
   double appr;
   steps = 0;
   xx = orig;
   den_b = 0;
   num_b = 1;
   den_a = 1;
   num_a = 0;
   epsilon = DBLEPS / 2.0;
   for (;;) {
      whole = floorl(xx);
      den_c = den_b * whole + den_a;
      num_c = num_b * whole + num_a;
      den_a = den_b;
      num_a = num_b;
      den_b = den_c;
      num_b = num_c;
      steps += 1;
      appr = (1.0 * num_b / den_b);
      diff = orig - appr;
      printf("%s", "");
      printf("%.18g", (double)whole);
      if (0 <= show_diff) {
         printf("%s", "\t");
         printf("%.18g", (double)num_b);
         printf("%s", " / ");
         printf("%.18g", (double)den_b);
         printf("%s", "\t");
         printf("%.18g", (double)appr);
         if (0 < show_diff) {
            printf("%s", "\t");
            printf("%.18g", (double)diff);
         }
         printf("%s", "\n");
      } else {
         printf("%s", " ");
      }
      if (iseq(xx, whole)) {
         break;
      }
      xx = 1.0 / (xx - whole);
      epsilon *= 2.0;
      if (fabs(diff) < epsilon) {
         break; // loop AWAIT
      }
   }
   return (steps);
}
long contfra_print(double orig)
{
   return (lf_continued_fraction(orig, -1));
}
long contfrac_print(double orig)
{
   return (lf_continued_fraction(orig, 0));
}
long contfracd_print(double orig)
{
   return (lf_continued_fraction(orig, 1));
}
long num2char_print(long num)
{
   if (num < 32) {
      if (num < 16) {
         if (num < 8) {
            if (num < 4) {
               if (num < 2) {
                  if (num < 1) {
                     printf("%s", "0");
                  } else {
                     printf("%s", "1");
                  }
               } else if (num < 3) {
                  printf("%s", "2");
               } else {
                  printf("%s", "3");
               }
            } else if (num < 6) {
               if (num < 5) {
                  printf("%s", "4");
               } else {
                  printf("%s", "5");
               }
            } else if (num < 7) {
               printf("%s", "6");
            } else {
               printf("%s", "7");
            }
         } else if (num < 12) {
            if (num < 10) {
               if (num < 9) {
                  printf("%s", "8");
               } else {
                  printf("%s", "9");
               }
            } else if (num < 11) {
               printf("%s", "a");
            } else {
               printf("%s", "b");
            }
         } else if (num < 14) {
            if (num < 13) {
               printf("%s", "c");
            } else {
               printf("%s", "d");
            }
         } else if (num < 15) {
            printf("%s", "e");
         } else {
            printf("%s", "f");
         }
      } else if (num < 24) {
         if (num < 20) {
            if (num < 18) {
               if (num < 17) {
                  printf("%s", "g");
               } else {
                  printf("%s", "h");
               }
            } else if (num < 19) {
               printf("%s", "i");
            } else {
               printf("%s", "j");
            }
         } else if (num < 22) {
            if (num < 21) {
               printf("%s", "k");
            } else {
               printf("%s", "l");
            }
         } else if (num < 23) {
            printf("%s", "m");
         } else {
            printf("%s", "n");
         }
      } else if (num < 28) {
         if (num < 26) {
            if (num < 25) {
               printf("%s", "o");
            } else {
               printf("%s", "p");
            }
         } else if (num < 27) {
            printf("%s", "q");
         } else {
            printf("%s", "r");
         }
      } else if (num < 30) {
         if (num < 29) {
            printf("%s", "s");
         } else {
            printf("%s", "t");
         }
      } else if (num < 31) {
         printf("%s", "u");
      } else {
         printf("%s", "v");
      }
   } else if (num < 48) {
      if (num < 40) {
         if (num < 36) {
            if (num < 34) {
               if (num < 33) {
                  printf("%s", "w");
               } else {
                  printf("%s", "x");
               }
            } else if (num < 35) {
               printf("%s", "y");
            } else {
               printf("%s", "z");
            }
         } else if (num < 38) {
            if (num < 37) {
               printf("%s", "A");
            } else {
               printf("%s", "B");
            }
         } else if (num < 39) {
            printf("%s", "C");
         } else {
            printf("%s", "D");
         }
      } else if (num < 44) {
         if (num < 42) {
            if (num < 41) {
               printf("%s", "E");
            } else {
               printf("%s", "F");
            }
         } else if (num < 43) {
            printf("%s", "G");
         } else {
            printf("%s", "H");
         }
      } else if (num < 46) {
         if (num < 45) {
            printf("%s", "I");
         } else {
            printf("%s", "J");
         }
      } else if (num < 47) {
         printf("%s", "K");
      } else {
         printf("%s", "L");
      }
   } else if (num < 56) {
      if (num < 52) {
         if (num < 50) {
            if (num < 49) {
               printf("%s", "M");
            } else {
               printf("%s", "N");
            }
         } else if (num < 51) {
            printf("%s", "O");
         } else {
            printf("%s", "P");
         }
      } else if (num < 54) {
         if (num < 53) {
            printf("%s", "Q");
         } else {
            printf("%s", "R");
         }
      } else if (num < 55) {
         printf("%s", "S");
      } else {
         printf("%s", "T");
      }
   } else if (num < 60) {
      if (num < 58) {
         if (num < 57) {
            printf("%s", "U");
         } else {
            printf("%s", "V");
         }
      } else if (num < 59) {
         printf("%s", "W");
      } else {
         printf("%s", "X");
      }
   } else if (num < 62) {
      if (num < 61) {
         printf("%s", "Y");
      } else {
         printf("%s", "Z");
      }
   } else if (num < 63) {
      printf("%s", "_");
   } else if (num < 64) {
      printf("%s", "?");
   } else {
      printf("%s", "(");
      printf("%.18g", (double)num);
      printf("%s", ")");
   }
   return (num);
}
long base_out_print(long num
      , long baset)
{
   long digits_arr[65];
   long dig_count;
   long ii;
   if (num < 0) {
      printf("%s", "-");
      num = -num;
   }
   dig_count = 0;
   for (;;) {
      digits_arr[dig_count] = num % baset;
      dig_count += 1;
      num = floorl(num / baset);
      if (num == 0) {
         break; // loop AWAIT
      }
   }
   for (ii = dig_count - 1; 0 <= ii; ii -= 1) {
      (void) num2char_print(digits_arr[ii]);
   }
   return (dig_count);
}
long base_out_fix_print(long num
      , long baset
      , long min_sz)
{
   long digits_arr[65];
   long dig_count;
   long ii;
   if (num < 0) {
      num = -num;
   }
   dig_count = 0;
   for (;;) {
      digits_arr[dig_count] = num % baset;
      dig_count += 1;
      num = floorl(num / baset);
      if (num == 0) {
         break; // loop AWAIT
      }
   }
   for (ii = dig_count; ii <= min_sz - 1; ii += 1) {
      (void) num2char_print(0);
   }
   for (ii = dig_count - 1; 0 <= ii; ii -= 1) {
      (void) num2char_print(digits_arr[ii]);
   }
   return (min_sz);
}
long base_outf_print(double num
      , long baset)
{
   long dig_count;
   long ii;
   double frc;
   long dig;
   long lim;
   dig_count = 0;
   if (num < 0.0) {
      printf("%s", "-");
      num = -num;
      dig_count += 1;
   }
   dig_count += base_out_print(floorl(num), baset) + 1;
   printf("%s", ".");
   lim = ceill(-lg(DBLEPS) / lg(baset));
   frc = frac(num) * baset;
   ii = 1;
   while (ii <= lim && ! iszero(frc)) {
      dig = floorl(frc);
      (void) num2char_print(dig);
      frc -= dig;
      frc *= baset;
      ii += 1;
   }
   return (dig_count + lim);
}
double fvoa(double payment
      , double rate_per_paymt
      , double num_pays)
{
   double ttp;
   ttp = pow(1.0 + rate_per_paymt, num_pays);
   return (payment * (ttp - 1.0) / rate_per_paymt);
}
double fvad(double payment
      , double rate_per_paymt
      , double num_pays)
{
   return (fvoa(payment, rate_per_paymt, num_pays) * (1.0 + rate_per_paymt));
}
double pvoa(double payment
      , double rate_per_paymt
      , double num_pays)
{
   double ntp;
   ntp = pow(1.0 + rate_per_paymt, - num_pays);
   return (payment * (1.0 - ntp) / rate_per_paymt);
}
double pvad(double payment
      , double rate_per_paymt
      , double num_pays)
{
   double ntp;
   ntp = pow(1.0 + rate_per_paymt, - num_pays);
   return (payment * (1.0 - ntp) / rate_per_paymt * (1.0 + rate_per_paymt));
}
double loanvalue(double payment
      , double rate_per_paymt
      , double num_pays)
{
   return (fvad(payment, rate_per_paymt, num_pays));
}
double loanpayment(double loan_amt
      , double rate_per_paymt
      , double num_pays)
{
   double ttp;
   ttp = pow(1.0 + rate_per_paymt, num_pays);
   return (loan_amt * rate_per_paymt * ttp / (ttp - 1.0));
}
double loanrate(double loan_amt
      , double payment
      , double num_pays)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   scvx_dx = 0.01;
   scvx_xx = 0.05;
   scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
double f21(double aa
      , double bb
      , double cc
      , double zz)
{
   double sum_curr;
   double sum_prev;
   double term;
   double nn;
   if (1 < fabs(zz)) {
      sum_curr = 0.0;
   } else {
      sum_curr = 1.0;
      term = 1.0;
      nn = 0;
      for (;;) {
         term *= ((aa + nn) * (bb + nn) * zz / ((cc + nn) * (1 + nn)));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
         nn += 1;
      }
   }
   return (sum_curr);
}
double f11(double aa
      , double bb
      , double zz)
{
   double sum_curr;
   double sum_prev;
   double term;
   double nn;
   if (1 < fabs(zz)) {
      sum_curr = 0.0;
   } else {
      sum_curr = 1.0;
      term = 1.0;
      nn = 0;
      for (;;) {
         term *= ((aa + nn) * zz / ((bb + nn) * (1 + nn)));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
         nn += 1;
      }
   }
   return (sum_curr);
}
static double lf_lambert_iter(double xx
      , double nearw_zero)
{
   long ii;
   double eww;
   double tnn;
   double snn;
   double unn;
   double delta;
   double wjj;
   double wjj_prev;
   wjj = nearw_zero;
   ii = 0;
   for (;;) {
      eww = exp(wjj);
      tnn = wjj * eww - xx;
      snn = (wjj + 2.0) / (2.0 * (wjj + 1.0));
      unn = (wjj + 1.0) * eww;
      delta = tnn / (tnn * snn - unn);
      wjj_prev = wjj;
      wjj += delta;
      if (iseq(wjj, wjj_prev)) {
         break; // loop AWAIT
      }
      ii += 1;
      if (20 <= ii) {
         break; // loop AWAIT
      }
   }
   return (wjj);
}
double wp(double xx)
{
   double tnn;
   double snn;
   double near_w;
   double retvalu;
   if (xx <= - exp(-1.0)) {
      retvalu = -1.0;
   } else {
      if (xx < 3.0) {
         snn = E * xx + 1.0;
         near_w = cbrt(snn) - 1.0 + 0.025 * (snn / E);
      } else {
         snn = log(xx);
         tnn = log(log(xx));
         near_w = snn - tnn + tnn / snn;
      }
      retvalu = lf_lambert_iter(xx, near_w);
   }
   return (retvalu);
}
double wm(double xx)
{
   long ii;
   double near_w;
   double retvalu;
   double tnn;
   double numer;
   double denom;
   if (xx <= - exp(-1.0)) {
      retvalu = -1.0;
   } else {
      if (xx < - 0.303) {
         tnn = -sqrt(2.0 * (1.0 + E * xx));
         near_w = ((((((((((226287557.0 / 37623398400.0) * tnn - 1963.0 /\
                  204120.0) * tnn + 680863.0 / 43545600.0) * tnn - 221.0\
                  / 8505.0) * tnn + 769.0 / 17280.0) * tnn - 43.0 /\
                  540.0) * tnn + 11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn +\
                  1.0) * tnn - 1.0);
      } else if (xx < - 0.0510129) {
         numer = (((6.5794931769023040E+2) * xx + 2.5388810188892484E+2)\
                  * xx - 7.8141767239074400);
         denom = ((((((1.4779341280760887E+3) * xx +\
                  9.6217849696986600E+2) * xx + 6.8260739999094280E+2) *\
                  xx + 9.9985670831076100E+1) * xx -\
                  6.0439587136908080E+1) * xx + 1.0);
         near_w = numer / denom;
      } else if (xx < 0.0) {
         near_w = log(-xx);
         for (ii = 0; ii <= 8; ii += 1) {
            near_w = log(xx / near_w);
         }
      } else {
         near_w = DBLMAX;
      }
      retvalu = lf_lambert_iter(xx, near_w);
   }
   return (retvalu);
}
double wpinv(double zz)
{
   return (zz * exp(zz));
}
double wminv(double zz)
{
   return (zz * exp(zz));
}
double sinintegral(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   double xsq;
   if (iszero(xx)) {
      sum_curr = 0.0;
   } else {
      sum_curr = xx;
      term = xx;
      xsq = xx * xx;
      kk = 3;
      for (;;) {
         term *= - xsq / (kk * (kk - 1.0));
         sum_prev = sum_curr;
         sum_curr += term / kk;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
         kk += 2;
      }
   }
   return (sum_curr);
}
double cosintegral(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   double xsq;
   if (iszero(xx)) {
      sum_curr = -DBLMAX;
   } else {
      sum_curr = EULER + log(fabs(xx));
      term = 1.0;
      xsq = xx * xx;
      kk = 2;
      for (;;) {
         term *= - xsq / (kk * (kk - 1.0));
         sum_prev = sum_curr;
         sum_curr += term / kk;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
         kk += 2;
      }
   }
   return (sum_curr);
}
double Ein(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   sum_curr = 0;
   term = -1;
   kk = 1;
   for (;;) {
      term *= - xx / kk;
      sum_prev = sum_curr;
      sum_curr += term / kk;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      kk += 1;
   }
   return (sum_curr);
}
double expintegrali(double xx)
{
   double retvalu;
   retvalu = EULER + log(fabs(xx)) - Ein(-xx);
   return (retvalu);
}
double expintegral1(double xx)
{
   double retvalu;
   retvalu = Ein(xx) - EULER - log(fabs(xx));
   return (retvalu);
}
double expintegraln(long nn
      , double xx)
{
   return (pow(xx, nn - 1) * uigamma(1 - nn, xx));
}
double logintegral(double xx)
{
   double sum;
   double lnx;
   double yy;
   long nn;
   double sum_prev;
   double limit;
   double retvalu;
   if (xx <= 1.0) {
      retvalu = 0.0;
   } else {
      lnx = log(xx);
      sum = 0.0;
      yy = 1.0;
      limit = 1.6 * log(xx) + 40;
      nn = 1;
      for (;;) {
         yy *= lnx / nn;
         sum_prev = sum;
         sum += yy / nn;
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         nn += 1;
         if (limit <= nn) {
            break; // loop AWAIT
         }
      }
      retvalu = EULER + log(lnx) + sum;
   }
   return (retvalu);
}
double carlsonRF(double xx
      , double yy
      , double zz)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz)) {
         break; // loop AWAIT
      }
   }
   return (1.0 / sqrt(xx));
}
double carlsonRC(double xx
      , double yy)
{
   double lmbd;
   for (;;) {
      lmbd = 2 * sqrt(xx * yy) + yy;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      if (iseq(xx, yy)) {
         break; // loop AWAIT
      }
   }
   return (1.0 / sqrt(xx));
}
double carlsonRJ(double xx
      , double yy
      , double zz
      , double pp)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   double pfour;
   double alfa;
   double beta;
   double sigm;
   pfour = 1.0;
   sigm = 0.0;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      alfa = pp * (sqx + sqy + sqz) + sqx * sqy * sqz;
      alfa *= alfa;
      beta = pp * (pp + lmbd) * (pp + lmbd);
      sigm += pfour * carlsonRC(alfa, beta);
      pfour /= 4.0;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      pp = (pp + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz) && iseq(zz, pp)) {
         break; // loop AWAIT
      }
   }
   return (3.0 * sigm);
}
double carlsonRD(double xx
      , double yy
      , double zz)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   double pfour;
   double alfa;
   double beta;
   double sigm;
   pfour = 1.0;
   sigm = 0.0;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      alfa = zz * (sqx + sqy + sqz) + sqx * sqy * sqz;
      alfa *= alfa;
      beta = zz * (zz + lmbd) * (zz + lmbd);
      sigm += pfour * carlsonRC(alfa, beta);
      pfour /= 4.0;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz)) {
         break; // loop AWAIT
      }
   }
   return (3.0 * sigm);
}
long powi(long xx
      , long nn)
{
   long pp;
   long xsq;
   pp = 1;
   xsq = xx;
   while (0 < nn) {
      if (isodd(nn)) {
         pp *= xsq;
      }
      xsq *= xsq;
      nn = (nn >> 1);
   }
   return (pp);
}
long atothenmodp(long naa
      , long nn
      , long pp)
{
   long retvalu;
   long cc;
   if (pp == 0) {
      retvalu = 0;
   } else {
      if (pp < 0) {
         pp = -pp;
      }
      if (nn < 0) {
         nn = nn % pp;
         if (nn < 0) {
            nn += pp;
         }
      }
      retvalu = 1;
      cc = naa % pp;
      while (0 < nn) {
         if (isodd(nn)) {
            retvalu = (retvalu * cc) % pp;
            nn = (nn - 1) / 2;
         } else {
            nn /= 2;
         }
         cc = (cc * cc) % pp;
      }
   }
   return (retvalu);
}
double atothenmodx(double xaa
      , double xnn
      , double xpp)
{
   return (frac(exp(xnn * log(xaa) - log(xpp))) * xpp);
}
long ctz(long nn)
{
   long zero_count;
   zero_count = 0;
   while (0 == (nn & 1)) {
      zero_count += 1;
      nn = (nn >> 1);
   }
   return (zero_count);
}
long gcd(long naa
      , long nbb)
{
   long cc;
   naa = labs(naa);
   nbb = labs(nbb);
   if (nbb <= 0) {
      nbb = naa;
   } else {
      while (0 < naa) {
         cc = naa;
         naa = nbb % naa;
         nbb = cc;
      }
   }
   return (nbb);
}
long gcda(long array_count
      , const long *num_arr_pc)
{
   long ind;
   long gc;
   gc = num_arr_pc[0];
   for (ind = 1; ind <= array_count - 1; ind += 1) {
      gc = gcd(gc, num_arr_pc[ind]);
   }
   return (gc);
}
long lcm(long naa
      , long nbb)
{
   return (naa * nbb / gcd(naa, nbb));
}
long lcam(long naa
      , long nbb)
{
   long ii;
   long jj;
   if (nbb < naa) {
      ii = naa;
      naa = nbb;
      nbb = ii;
   }
   ii = nbb;
   for (;;) {
      jj = mods(ii, naa);
      if (- 2 <= jj && jj <= 2) {
         break; // loop AWAIT
      }
      ii += nbb;
   }
   if (jj == -2) {
      ii += 1;
   } else if (0 <= jj) {
      ii -= 1;
   }
   return (ii);
}
long lcams(long naa
      , long nbb)
{
   long ii;
   long jj;
   if (nbb < naa) {
      ii = naa;
      naa = nbb;
      nbb = ii;
   }
   ii = 2 * nbb;
   for (;;) {
      jj = mods(ii, naa);
      if (- 2 <= jj && jj <= 2) {
         break; // loop AWAIT
      }
      ii += nbb;
   }
   if (jj == -2) {
      ii += 1;
   } else if (0 <= jj) {
      ii -= 1;
   }
   return (ii);
}
long lcantim(long naa
      , long nbb)
{
   long hnaa;
   long hnbb;
   long ii;
   long rema;
   long odd_mask;
   if (isposint(naa) && isposint(nbb)) {
      odd_mask = 0;
      if (isodd(naa)) {
         odd_mask = 1;
      }
      if (isodd(nbb)) {
         odd_mask += 2;
      }
      if (2 == odd_mask || (nbb < naa && odd_mask != 1)) {
         ii = nbb;
         nbb = naa;
         naa = ii;
      }
      hnaa = floorl(naa / 2);
      hnbb = floorl(nbb / 2);
      ii = hnbb;
      for (;;) {
         rema = dist(ii, naa);
         if (rema == hnaa) {
            break;
         } else if (odd_mask == 3 && rema == hnaa + 1) {
            break;
         }
         ii += nbb;
         if (naa * nbb <= ii) {
            break; // loop AWAIT
         }
      }
      if (naa * nbb <= ii) {
         ii = 0;
      }
   } else {
      ii = 0;
   }
   return (ii);
}
long factor(long number_to_factor
      , long *ret_fctr_arr_p)
{
   long pp;
   long fctr_ind;
   long inc;
   fctr_ind = 0;
   number_to_factor = labs(number_to_factor);
   if (number_to_factor <= 3) {
      ret_fctr_arr_p[fctr_ind] = number_to_factor;
      fctr_ind = 1;
   } else {
      for (pp = 2; pp <= 3; pp += 1) {
         while (0 == number_to_factor % pp) {
            ret_fctr_arr_p[fctr_ind] = pp;
            fctr_ind += 1;
            number_to_factor /= pp;
         }
      }
      pp = 1;
      inc = 4;
      for (;;) {
         pp += inc;
         inc = 6 - inc;
         while (0 == number_to_factor % pp) {
            ret_fctr_arr_p[fctr_ind] = pp;
            fctr_ind += 1;
            number_to_factor /= pp;
         }
         if (number_to_factor < pp * pp) {
            break; // loop AWAIT
         }
      }
      if (1 < number_to_factor) {
         ret_fctr_arr_p[fctr_ind] = number_to_factor;
         fctr_ind += 1;
      }
   }
   ret_fctr_arr_p[fctr_ind] = 0;
   return (fctr_ind);
}
long modulo(long nxx
      , long modyy)
{
   long retvalu;
   retvalu = nxx % modyy;
   if (retvalu < 0) {
      retvalu += labs(modyy);
   }
   return (retvalu);
}
long mods(long nxx
      , long modyy)
{
   long retvalu;
   long amodyy;
   long anxx;
   amodyy = floorl(labs(modyy));
   anxx = labs(nxx);
   retvalu = anxx % amodyy;
   if (0 < retvalu) {
      while (amodyy < 2 * retvalu) {
         retvalu -= amodyy;
      }
   } else if (retvalu < 0) {
      while (2 * retvalu < - amodyy) {
         retvalu += amodyy;
      }
   }
   return (retvalu);
}
long pfl(long nn)
{
   long small_factor;
   long lim;
   long divid;
   if (nn < 2) {
      small_factor = 1;
   } else if (nn % 2 == 0) {
      small_factor = 2;
   } else if (nn % 3 == 0) {
      small_factor = 3;
   } else if (nn % 5 == 0) {
      small_factor = 5;
   } else if (nn % 7 == 0) {
      small_factor = 7;
   } else {
      lim = floorl(sqrt(nn));
      divid = 11;
      small_factor = nn;
      while (divid <= lim) {
         if (nn % divid == 0) {
            small_factor = divid;
            break;
         }
         divid += 2;
         if (nn % divid == 0) {
            small_factor = divid;
            break;
         }
         divid += 4;
      }
   }
   return (small_factor);
}
long pfg(long nn)
{
   long jj;
   long ii;
   jj = nn;
   for (;;) {
      ii = pfl(jj);
      jj /= ii;
      if (jj == 1) {
         break; // loop AWAIT
      }
   }
   return (ii);
}
long isprime(long nn)
{
   long retvalu_bol;
   long ann;
   ann = labs(nn);
   if (ann == 2 || ann == 3 || ann == 5 || ann == 7) {
      retvalu_bol = true;
   } else if (ann < 11) {
      retvalu_bol = false;
   } else if (pfl(ann) == ann) {
      retvalu_bol = true;
   } else {
      retvalu_bol = false;
   }
   return (retvalu_bol);
}
static long lf_primeprev(long pp)
{
   long retvalu;
   long rema;
   long inc;
   long qq;
   if (pp <= 7) {
      if (5 < pp) {
         retvalu = 5;
      } else if (3 < pp) {
         retvalu = 3;
      } else if (2 < pp) {
         retvalu = 2;
      } else {
         retvalu = -2;
      }
   } else {
      rema = pp % 6;
      qq = pp - rema;
      if (rema <= 1) {
         qq -= 1;
         inc = 4;
      } else {
         qq += 1;
         inc = 2;
      }
      while (! isprime(qq)) {
         qq -= inc;
         inc = 6 - inc;
      }
      retvalu = qq;
   }
   return (retvalu);
}
static long lf_primenext(long pp)
{
   long retvalu;
   long rema;
   long inc;
   long qq;
   if (pp < 7) {
      if (pp < 2) {
         retvalu = 2;
      } else if (pp < 3) {
         retvalu = 3;
      } else if (pp < 5) {
         retvalu = 5;
      } else {
         retvalu = 7;
      }
   } else {
      rema = (pp + 1) % 6;
      qq = (pp + 1) - rema;
      if (rema <= 1) {
         qq += 1;
         inc = 4;
      } else {
         qq += 5;
         inc = 2;
      }
      while (! isprime(qq)) {
         qq += inc;
         inc = 6 - inc;
      }
      retvalu = qq;
   }
   return (retvalu);
}
long primeprev(long pp)
{
   long retvalu;
   if (0 <= pp) {
      retvalu = lf_primeprev(pp);
   } else {
      retvalu = -lf_primenext(-pp);
   }
   return (retvalu);
}
long primenext(long pp)
{
   long retvalu;
   if (0 <= pp) {
      retvalu = lf_primenext(pp);
   } else {
      retvalu = -lf_primeprev(-pp);
   }
   return (retvalu);
}
static long lv_pcf_end = 0;
static double *lv_pcf_arr = NULL;
long primecount(double xx)
{
   // local-use C lv_pcf_arr;
   // local-use C lv_pcf_end;
   long retvalu;
   long poss_prime;
   long s_ind;
   long ps_ind;
   long pcf_val;
   if (xx < 7) {
      if (xx < 3) {
         if (xx < 2) {
            retvalu = 0;
         } else {
            retvalu = 1;
         }
      } else {
         if (xx < 5) {
            retvalu = 2;
         } else {
            retvalu = 3;
         }
      }
   } else {
      s_ind = floorl((xx - 5) / 2) - floorl((xx - 3) / 6);
      if (lv_pcf_end <= s_ind) {
         ps_ind = lv_pcf_end;
         if (lv_pcf_end <= 0) {
            pcf_val = 2;
         } else {
            pcf_val = lv_pcf_arr[lv_pcf_end - 1];
         }
         lv_pcf_end = ceil2(s_ind + 1, 2);
         lv_pcf_arr = realloc(lv_pcf_arr
            , (lv_pcf_end) * sizeof(lv_pcf_arr[0]));
         poss_prime = 3 * ps_ind - (ps_ind % 2) + 5;
         while (ps_ind <= s_ind) {
            if (isprime(poss_prime)) {
               pcf_val += 1;
            }
            lv_pcf_arr[ps_ind] = pcf_val;
            poss_prime += 2;
            ps_ind += 1;
            if (isprime(poss_prime)) {
               pcf_val += 1;
            }
            lv_pcf_arr[ps_ind] = pcf_val;
            poss_prime += 4;
            ps_ind += 1;
         }
      }
      retvalu = lv_pcf_arr[s_ind];
   }
   return (retvalu);
}
long pcf(double xx)
{
   return (primecount(xx));
}
long primecountx(double xx)
{
   long retvalu;
   long poss_prime;
   long inc;
   long pcf_val;
   if (xx < 7) {
      if (xx < 3) {
         if (xx < 2) {
            retvalu = 0;
         } else {
            retvalu = 1;
         }
      } else {
         if (xx < 5) {
            retvalu = 2;
         } else {
            retvalu = 3;
         }
      }
   } else {
      pcf_val = 4;
      poss_prime = 11;
      inc = 2;
      while (poss_prime <= xx) {
         if (isprime(poss_prime)) {
            pcf_val += 1;
         }
         poss_prime += inc;
         inc = 6 - inc;
      }
      retvalu = pcf_val;
   }
   return (retvalu);
}
double eta(double xx)
{
   double sum;
   double sump;
   long tt;
   long nn;
   long kk;
   long s_ind;
   double retvalu;
   double pm_one;
   double *ps_arr = NULL;
   double *temp_arr = NULL;
   double term;
   if (0 < xx) {
      tt = 0;
      term = -log(DBLEPS) / xx;
      if (term < log(4000)) {
         kk = ceill(exp(term));
         sum = 0;
         pm_one = -1.0;
         nn = 1;
         for (;;) {
            pm_one = -pm_one;
            term = pm_one * pow(nn, - xx);
            tt += 1;
            sump = sum;
            sum += term;
            if (iseq(sump, sum)) {
               break; // loop AWAIT
            }
            nn += 1;
            if (kk <= nn) {
               break; // loop AWAIT
            }
         }
         retvalu = sum - 0.5 * term;
      } else {
         sum = 0;
         pm_one = -1.0;
         ps_arr = realloc(ps_arr
            , 402 * sizeof(ps_arr[0]));
         temp_arr = realloc(temp_arr
            , 402 * sizeof(temp_arr[0]));
         ps_arr[0] = -pow(2, - xx);
         tt += 1;
         temp_arr[0] = ps_arr[0];
         nn = 1;
         for (;;) {
            pm_one = -pm_one;
            ps_arr[nn] = ps_arr[nn - 1] + pm_one * pow(nn + 2, - xx);
            tt += 1;
            temp_arr[nn] = ps_arr[nn];
            for (kk = nn - 1; 0 <= kk; kk -= 1) {
               temp_arr[kk] = (temp_arr[kk] + temp_arr[kk + 1]) / 2.0;
            }
            sump = sum;
            sum = temp_arr[0];
            if (iseq(sump, sum)) {
               break; // loop AWAIT
            }
            nn += 1;
            if (400 <= nn) {
               break; // loop AWAIT
            }
         }
         s_ind = floorl(nn / 3);
         sum = (4 * temp_arr[s_ind] + 3 * temp_arr[s_ind + 1]) / 7;
         free(temp_arr);
         free(ps_arr);
         retvalu = sum + 1.0;
      }
   } else if (xx < 0) {
      retvalu = 0.0;
   } else {
      retvalu = 0.5;
   }
   return (retvalu);
}
double zeta(double xx)
{
   double retvalu;
   if (1 < xx) {
      retvalu = eta(xx) / (1.0 - pow(2.0, 1.0 - xx));
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double fibo3(long nn
      , double fib_a
      , double fib_b)
{
   long ii;
   double tt;
   double retvalu;
   if (nn == 0) {
      retvalu = fib_a;
   } else {
      for (ii = 2; ii <= nn; ii += 1) {
         tt = fib_b;
         fib_b += fib_a;
         fib_a = tt;
      }
      retvalu = fib_b;
   }
   return (retvalu);
}
double fibo(long nn)
{
   return (fibo3(nn, 0, 1));
}
double fibox(double xx)
{
   double zz;
   double retvalu;
   if (log(DBLMAX) / log(PHI) < fabs(xx)) {
      retvalu = 0.0;
   } else {
      zz = pow(PHI, xx);
      retvalu = (zz - cos(PI * xx) / zz) / sqrt(5.0);
   }
   return (retvalu);
}
double fiboxinv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double x_init;
   if (yy <= 0) {
      scvx_xx = 0.0;
   } else {
      if (yy <= 0.2) {
         x_init = 0.075;
      } else if (yy <= 0.896946387424606) {
         x_init = 0.8 * yy - 0.15;
      } else if (yy <= 1.009824331847821) {
         x_init = 0.92;
      } else {
         x_init = log(yy * sqrt(5.0)) / log(PHI);
      }
      scvx_dx = 0.05;
      scvx_xx = x_init;
      scvx_yy = yy - fibox(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - fibox(scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double lucas(long nn)
{
   return (fibo3(nn, 2, 1));
}
double lucasx(double xx)
{
   double zz;
   double retvalu;
   if (log(DBLMAX) / log(PHI) < fabs(xx)) {
      retvalu = 0.0;
   } else {
      zz = pow(PHI, xx);
      retvalu = (zz + cos(PI * xx) / zz);
   }
   return (retvalu);
}
long fusc(long nn)
{
   long naa;
   long nbb;
   naa = 1;
   nbb = 0;
   while (0 < nn) {
      if (isodd(nn)) {
         nbb += naa;
      } else {
         naa += nbb;
      }
      nn = (nn >> 1);
   }
   return (nbb);
}
double Tn(long nn
      , double xx)
{
   double retvalu;
   double tnm_a;
   double tnm_b;
   double tnn;
   long kk;
   if (nn == 0) {
      retvalu = 1.0;
   } else if (nn == 1) {
      retvalu = xx;
   } else if (nn == 2) {
      retvalu = 2.0 * xx * xx - 1.0;
   } else {
      tnm_a = 2.0 * xx * xx - 1.0;
      tnm_b = xx;
      tnn = tnm_a;
      for (kk = 3; kk <= nn; kk += 1) {
         tnn = (2.0 * xx * tnm_a) - tnm_b;
         tnm_b = tnm_a;
         tnm_a = tnn;
      }
      retvalu = tnn;
   }
   return (retvalu);
}
double Un(long nn
      , double xx)
{
   double retvalu;
   double tnm_a;
   double tnm_b;
   double tnn;
   long kk;
   if (nn == 0) {
      retvalu = 1.0;
   } else if (nn == 1) {
      retvalu = 2.0 * xx;
   } else {
      tnm_a = 2.0 * xx;
      tnm_b = 1.0;
      tnn = tnm_a;
      for (kk = 2; kk <= nn; kk += 1) {
         tnn = (2.0 * xx * tnm_a) - tnm_b;
         tnm_b = tnm_a;
         tnm_a = tnn;
      }
      retvalu = tnn;
   }
   return (retvalu);
}
double tri(double nn)
{
   return (nn * (nn + 1) / 2);
}
double triinv(double nn)
{
   double retvalu;
   if (- 0.125 < nn) {
      retvalu = (sqrt(8.0 * nn + 1.0) - 1.0) / 2.0;
   } else {
      retvalu = -0.5;
   }
   return (retvalu);
}
double polynum(double ss
      , double nn)
{
   return ((ss - 2) * nn * (nn - 1) / 2 + nn);
}
double polycnum(double ss
      , double nn)
{
   return (ss * nn * (nn - 1) / 2 + 1);
}
double tetranum(double ss
      , double nn)
{
   return (nn * (nn + 1) * ((ss - 2) * nn + 5 - ss) / 6);
}
double tetracnum(double ss
      , double nn)
{
   return (nn * (ss * nn * nn + 6 - ss) / 6);
}
double minkowski(double xx)
{
   double pp;
   double qq;
   double rr;
   double ss;
   double ff;
   double gg;
   double dd;
   double yy;
   pp = floor(xx);
   qq = 1;
   rr = pp + 1;
   ss = 1;
   dd = 1.0;
   yy = pp;
   for (;;) {
      dd /= 2.0;
      ff = pp + rr;
      gg = qq + ss;
      if (xx < ff / gg) {
         rr = ff;
         ss = gg;
      } else {
         yy += dd;
         pp = ff;
         qq = gg;
      }
      if (iseq(yy + dd, yy)) {
         break; // loop AWAIT
      }
   }
   return (yy);
}
double cantorxx(double nbb
      , double ee
      , double xx)
{
   double yy;
   double rest;
   double dd;
   double ulmt;
   if (ee < 0.0 || nbb < 0.0 || 1.0 < ee + nbb) {
      yy = xx;
   } else {
      ulmt = 1.0 - ee;
      yy = floor(xx);
      rest = (xx - yy);
      dd = 0.5;
      for (;;) {
         if (ulmt <= rest) {
            yy += dd;
            rest = frac((rest - ulmt) / ee);
         } else if (nbb <= rest) {
            yy += dd;
            break;
         } else {
            rest = frac(rest / nbb);
         }
         dd /= 2.0;
         if (iseq(yy + dd, yy) || iszero(rest)) {
            break; // loop AWAIT
         }
      }
   }
   return (yy);
}
double cantor(double xx)
{
   return (cantorxx(1.0 / 3.0, 1.0 / 3.0, xx));
}
double cantorul(double bb
      , double ee
      , double xx)
{
   return (pow(0.5, log(xx) / log(bb) + 0.0 * ee));
}
double cantorll(double bb
      , double ee
      , double xx)
{
   return (pow(0.5, log(xx / (1.0 - ee)) / log(bb) + 1.0));
}
long dlogx(long naa
      , long nbb
      , long nn)
{
   long ii;
   long pp;
   long retvalu;
   pp = naa;
   retvalu = -1;
   for (ii = 1; ii <= nn; ii += 1) {
      if (pp == nbb) {
         retvalu = ii;
         break;
      }
      pp = (pp * naa) % nn;
   }
   return (retvalu);
}
long dlog(long naa
      , long nbb
      , long nn)
{
   long sqnn;
   long cur;
   long atothesqnn;
   long atothens;
   long ii;
   long *log_arr = NULL;
   long retvalu;
   if (naa == nbb) {
      retvalu = 1;
   } else if (naa <= 0 || nbb <= 0 || nn <= 0) {
      retvalu = -1;
   } else if (1 < gcd(naa, nn)) {
      retvalu = dlogx(naa, nbb, nn);
   } else if (! isprimitiveroot(naa, nn)) {
      retvalu = dlogx(naa, nbb, nn);
   } else {
      sqnn = ceill(sqrt(nn));
      log_arr = realloc(log_arr
         , (nn) * sizeof(log_arr[0]));
      for (ii = 0; ii <= nn - 1; ii += 1) {
         log_arr[ii] = 0;
      }
      atothesqnn = atothenmodp(naa, sqnn, nn);
      cur = atothesqnn;
      for (ii = 1; ii <= sqnn; ii += 1) {
         if (log_arr[cur] == 0) {
            log_arr[cur] = ii;
         }
         cur = (cur * atothesqnn) % nn;
      }
      cur = nbb % nn;
      retvalu = -1;
      for (ii = 0; ii <= sqnn; ii += 1) {
         if (0 < log_arr[cur]) {
            atothens = log_arr[cur] * sqnn - ii;
            if (atothens < nn) {
               retvalu = atothens;
               break;
            }
         }
         cur = (cur * naa) % nn;
      }
      free(log_arr);
   }
   return (retvalu);
}
long dlog1(long naa
      , long nn)
{
   return (dlog(naa, 1, nn));
}
static long lv_mertens_end = 0;
static long *lv_mertens_arr = NULL;
long mertens(long nn)
{
   // local-use C lv_mertens_arr;
   // local-use C lv_mertens_end;
   long retvalu;
   long kk;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_mertens_end <= 0) {
         lv_mertens_end = 4;
         lv_mertens_arr = realloc(lv_mertens_arr
            , (lv_mertens_end) * sizeof(lv_mertens_arr[0]));
         lv_mertens_arr[0] = 0;
         lv_mertens_arr[1] = 1;
         lv_mertens_arr[2] = 0;
         lv_mertens_arr[3] = -1;
      }
      if (lv_mertens_end <= nn) {
         kk = lv_mertens_end;
         lv_mertens_end = nn + 1;
         lv_mertens_arr = realloc(lv_mertens_arr
            , (lv_mertens_end) * sizeof(lv_mertens_arr[0]));
         while (kk < lv_mertens_end) {
            lv_mertens_arr[kk] = lv_mertens_arr[kk - 1] + mobius(kk);
            kk += 1;
         }
      }
      retvalu = lv_mertens_arr[nn];
   }
   return (retvalu);
}
long has_primitiveroot_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   ind = 0;
   if (1 < array_size) {
      if (fac_arr_pc[0] == 2) {
         ind += 1;
      }
      if (2 < fac_arr_pc[ind]) {
         while (ind < array_size - 1) {
            if (fac_arr_pc[ind] < fac_arr_pc[ind + 1]) {
               break;
            }
            ind += 1;
         }
      }
   }
   return (ind == (array_size - 1));
}
long sigma0_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   retvalu = 1;
   exp_i = 2;
   for (ind = 0; ind <= array_size - 2; ind += 1) {
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]) {
         exp_i += 1;
      } else {
         retvalu *= exp_i;
         exp_i = 2;
      }
   }
   return (retvalu * exp_i);
}
long sigma1_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   long prm_prev;
   long prm_curr;
   retvalu = 1;
   exp_i = 2;
   prm_prev = fac_arr_pc[0];
   for (ind = 1; ind <= array_size - 1; ind += 1) {
      prm_curr = fac_arr_pc[ind];
      if (prm_prev == prm_curr) {
         exp_i += 1;
      } else {
         retvalu *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1);
         exp_i = 2;
         prm_prev = prm_curr;
      }
   }
   return (retvalu * (powi(prm_prev, exp_i) - 1) / (prm_prev - 1));
}
long sigma_f(long powy
      , long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   long prm_curr;
   long prm_prev;
   long pw;
   if (powy == 0) {
      retvalu = sigma0_f(array_size, fac_arr_pc);
   } else if (powy == 1) {
      retvalu = sigma1_f(array_size, fac_arr_pc);
   } else {
      retvalu = 1;
      exp_i = 2;
      prm_prev = fac_arr_pc[0];
      for (ind = 1; ind <= array_size - 1; ind += 1) {
         prm_curr = fac_arr_pc[ind];
         if (prm_prev == prm_curr) {
            exp_i += 1;
         } else {
            pw = powi(prm_prev, powy);
            retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1));
            exp_i = 2;
            prm_prev = prm_curr;
         }
      }
      pw = powi(prm_prev, powy);
      retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1));
   }
   return (retvalu);
}
long ispractical_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long sgma;
   long exp_i;
   long prm_curr;
   long prm_prev;
   long retvalu_bol;
   if (2 < fac_arr_pc[0]) {
      retvalu_bol = false;
   } else {
      retvalu_bol = true;
      sgma = 1;
      exp_i = 2;
      prm_prev = fac_arr_pc[0];
      for (ind = 1; ind <= array_size - 1; ind += 1) {
         prm_curr = fac_arr_pc[ind];
         if (prm_prev == prm_curr) {
            exp_i += 1;
         } else {
            sgma *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1);
            if (1 + sgma < prm_curr) {
               retvalu_bol = false;
               break;
            }
            exp_i = 2;
            prm_prev = prm_curr;
         }
      }
   }
   return (retvalu_bol);
}
long issquarefree_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu_bol;
   retvalu_bol = true;
   for (ind = 1; ind <= array_size - 1; ind += 1) {
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]) {
         retvalu_bol = false;
         break;
      }
   }
   return (retvalu_bol);
}
long totient_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   retvalu = 1;
   for (ind = 0; ind <= array_size - 2; ind += 1) {
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]) {
         retvalu *= fac_arr_pc[ind];
      } else {
         retvalu *= (fac_arr_pc[ind] - 1);
      }
   }
   retvalu *= (fac_arr_pc[array_size - 1] - 1);
   return (retvalu);
}
long mobius_f(long array_size
      , const long *fac_arr_pc)
{
   long retvalu;
   long ind;
   if (iseven(array_size)) {
      retvalu = 1;
   } else {
      retvalu = -1;
   }
   for (ind = 1; ind <= array_size - 1; ind += 1) {
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]) {
         retvalu = 0;
         break;
      }
   }
   return (retvalu);
}
long prime0_f(long array_size
      , const long *fac_arr_pc)
{
   long ind;
   long prm_curr;
   long prm_prev;
   long retvalu;
   retvalu = 1;
   prm_prev = fac_arr_pc[0];
   for (ind = 1; ind <= array_size - 1; ind += 1) {
      prm_curr = fac_arr_pc[ind];
      if (prm_prev < prm_curr) {
         retvalu += 1;
      }
      prm_prev = prm_curr;
   }
   return (retvalu);
}
#define LC_FACTORS_CNT 65
long factor_print(long nn)
{
   long ind;
   long fac_arr[LC_FACTORS_CNT];
   long array_size;
   array_size = factor(nn, fac_arr);
   printf("%.18g", (double)nn);
   printf("%s", ":");
   for (ind = 0; ind <= array_size - 1; ind += 1) {
      printf("%s", " ");
      printf("%.18g", (double)fac_arr[ind]);
   }
   printf("%s", "\n");
   return (array_size);
}
long mobius(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   array_size = factor(nn, fac_arr);
   return (mobius_f(array_size, fac_arr));
}
long isprimitiveroot(long naa
      , long nn)
{
   long toti;
   long array_size_toti;
   long ind;
   long prm;
   long retvalu_bol;
   long fac_arr[LC_FACTORS_CNT];
   if (naa <= 1 || 1 < gcd(naa, nn)) {
      retvalu_bol = false;
   } else if (naa == 2) {
      retvalu_bol = isodd(nn);
   } else {
      toti = totient(nn);
      array_size_toti = factor(toti, fac_arr);
      if (atothenmodp(naa, toti / fac_arr[0], nn) == 1) {
         retvalu_bol = false;
      } else {
         retvalu_bol = true;
         for (ind = 1; ind <= array_size_toti - 1; ind += 1) {
            if (fac_arr[ind - 1] != fac_arr[ind]) {
               prm = fac_arr[ind];
               if (atothenmodp(naa, toti / prm, nn) == 1) {
                  retvalu_bol = false;
                  break;
               }
            }
         }
      }
   }
   return (retvalu_bol);
}
long prime0(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   array_size = factor(nn, fac_arr);
   return (prime0_f(array_size, fac_arr));
}
long prime1(long nn)
{
   long fac_arr[LC_FACTORS_CNT];
   return (factor(nn, fac_arr));
}
long sigma0(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   array_size = factor(nn, fac_arr);
   return (sigma0_f(array_size, fac_arr));
}
long sigma1(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   array_size = factor(nn, fac_arr);
   return (sigma1_f(array_size, fac_arr));
}
long sigma(long powy
      , long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   long retvalu;
   if (nn <= 1) {
      retvalu = nn;
   } else if (powy == 0) {
      retvalu = sigma0(nn);
   } else if (powy == 1) {
      retvalu = sigma1(nn);
   } else {
      array_size = factor(nn, fac_arr);
      retvalu = sigma_f(powy, array_size, fac_arr);
   }
   return (retvalu);
}
long totient(long nn)
{
   long fac_arr[LC_FACTORS_CNT];
   long array_size;
   array_size = factor(nn, fac_arr);
   return (totient_f(array_size, fac_arr));
}
long has_primitiveroot(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   long retvalu_bol;
   if (nn < 2) {
      retvalu_bol = false;
   } else {
      array_size = factor(nn, fac_arr);
      retvalu_bol = has_primitiveroot_f(array_size, fac_arr);
   }
   return (retvalu_bol);
}
long issquarefree(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   long retvalu_bol;
   if (nn < 1) {
      retvalu_bol = false;
   } else if (nn < 3) {
      retvalu_bol = true;
   } else {
      array_size = factor(nn, fac_arr);
      retvalu_bol = issquarefree_f(array_size, fac_arr);
   }
   return (retvalu_bol);
}
long ispractical(long nn)
{
   long array_size;
   long fac_arr[LC_FACTORS_CNT];
   long retvalu_bol;
   if (nn < 1) {
      retvalu_bol = false;
   } else if (nn < 3) {
      retvalu_bol = true;
   } else {
      array_size = factor(nn, fac_arr);
      retvalu_bol = ispractical_f(array_size, fac_arr);
   }
   return (retvalu_bol);
}
long primitiveroot(long nn)
{
   long ind;
   long array_size_toti;
   long toti;
   long ii;
   long fac_arr[LC_FACTORS_CNT];
   long prm;
   long retvalu;
   if (nn < 2) {
      retvalu = 0;
   } else if (nn < 5) {
      retvalu = nn - 1;
   } else if (! has_primitiveroot(nn)) {
      retvalu = 0;
   } else {
      toti = totient(nn);
      array_size_toti = factor(toti, fac_arr);
      ii = 2;
      retvalu = 0;
      while (ii < nn && retvalu <= 0) {
         if (gcd(ii, nn) == 1) {
            retvalu = ii;
            prm = 0;
            for (ind = 0; ind <= array_size_toti - 1; ind += 1) {
               if (prm != fac_arr[ind]) {
                  prm = fac_arr[ind];
                  if (atothenmodp(ii, toti / prm, nn) == 1) {
                     retvalu = 0;
                     break;
                  }
               }
            }
         }
         ii += 1;
      }
   }
   return (retvalu);
}
long carmichael(long nn)
{
   long ind;
   long array_size;
   long lmbd;
   long prm;
   long pk;
   long fac_arr[LC_FACTORS_CNT];
   if (nn < 8) {
      lmbd = totient(nn);
   } else {
      array_size = factor(nn, fac_arr);
      ind = 0;
      while (ind < array_size && fac_arr[ind] == 2) {
         ind += 1;
      }
      if (2 < ind) {
         lmbd = (1 << (ind - 2));
      } else {
         lmbd = 1;
      }
      while (ind < array_size) {
         prm = fac_arr[ind];
         pk = prm - 1;
         while (ind < array_size - 1 && prm == fac_arr[ind + 1]) {
            ind += 1;
            pk *= prm;
         }
         lmbd = lcm(lmbd, pk);
         ind += 1;
      }
   }
   return (lmbd);
}
long znorder(long naa
      , long nn)
{
   long ind;
   long fac_arr[LC_FACTORS_CNT];
   long array_sizekk;
   long kk;
   long ab;
   long ek;
   long prm_i;
   long exp_i;
   if (nn == 0 || naa == 0) {
      kk = 0;
   } else {
      if (nn < 0) {
         nn = -nn;
      }
      while (naa < 0) {
         naa += nn;
      }
      if (nn <= 1) {
         kk = nn;
      } else if (naa <= 1) {
         kk = naa;
      } else if (1 < gcd(naa, nn)) {
         kk = 0;
      } else {
         kk = carmichael(nn);
         array_sizekk = factor(kk, fac_arr);
         exp_i = 1;
         for (ind = 0; ind <= array_sizekk - 1; ind += 1) {
            prm_i = fac_arr[ind];
            kk /= prm_i;
            if (ind + 1 < array_sizekk && prm_i == fac_arr[ind + 1]) {
               exp_i += 1;
            } else {
               ab = atothenmodp(naa, kk, nn);
               for (ek = 0; ek <= exp_i; ek += 1) {
                  if (ab == 1) {
                     break;
                  }
                  kk *= prm_i;
                  ab = atothenmodp(ab, prm_i, nn);
               }
               if (exp_i < ek) {
                  kk = 0;
                  break;
               }
               exp_i = 1;
            }
         }
      }
   }
   return (kk);
}
long repetendlen(long denm
      , long basee)
{
   long gdn;
   long retvalu;
   for (;;) {
      gdn = gcd(denm, basee);
      denm /= gdn;
      if (1 == gdn) {
         break; // loop AWAIT
      }
   }
   if (denm == 1) {
      retvalu = 0;
   } else {
      retvalu = znorder(basee, denm);
   }
   return (retvalu);
}
long kevy_print(long den
      , long start
      , long basee)
{
   long numer;
   long valu;
   long leny;
   long rema;
   long overall_len;
   long baseek;
   long log_start;
   log_start = floorl(log(start) / log(basee) + 1);
   baseek = pow(basee, log_start);
   overall_len = (dlog(basee, den, den * baseek - 1) + 3) * log_start;
   leny = 0;
   numer = start;
   valu = start;
   for (;;) {
      (void) base_out_fix_print(valu, basee, log_start);
      leny += log_start;
      valu = floorl(numer / den);
      rema = numer % den;
      numer = rema * baseek + valu;
      if (numer == start) {
         break;
      }
      if (2 * overall_len < leny) {
         break; // loop AWAIT
      }
   }
   return (leny);
}
long eulerphi(long nn)
{
   return (totient(nn));
}
long znorder__1(long nbb
      , long mdls)
{
   long nn;
   long pp;
   if (1 < gcd(nbb, mdls)) {
      nn = 0;
   } else {
      pp = 1;
      nn = 1;
      for (;;) {
         pp = (pp * nbb) % mdls;
         if (pp == 1) {
            break; // loop AWAIT
         }
         nn += 1;
         if (mdls <= nn) {
            break; // loop AWAIT
         }
      }
   }
   return (nn);
}
long bkn(long nbb
      , long kk)
{
   return (znorder(nbb, kk * nbb - 1));
}
long bkbn(long nbb
      , long kk
      , long cc)
{
   long mdls;
   mdls = kk * nbb - 1;
   if (mdls % cc == 0) {
      mdls /= cc;
   }
   return (znorder(nbb, mdls));
}
static double lv_li_two = 0;
double lix(double xx)
{
   // local-use C lv_li_two;
   if (lv_li_two <= 0) {
      lv_li_two = logintegral(2.0);
   }
   return (logintegral(xx) - lv_li_two);
}
double lixinv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double x_init;
   x_init = yy / log(yy);
   scvx_dx = 0.05;
   scvx_xx = x_init;
   scvx_yy = yy - lix(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - lix(scvx_xx);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
static long lf_n2primish(long nn)
{
   long retvalu;
   if (nn == 0) {
      retvalu = 0;
   } else if (nn < 3) {
      retvalu = nn + 1;
   } else if (isodd(nn)) {
      retvalu = 3 * nn - 4;
   } else {
      retvalu = 3 * nn - 5;
   }
   return (retvalu);
}
long n2primish(long nn)
{
   long retvalu;
   if (0 < nn) {
      retvalu = lf_n2primish(nn);
   } else {
      retvalu = -lf_n2primish(-nn);
   }
   return (retvalu);
}
double primenth__1(double nn)
{
   double logn;
   double loglogn;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else if (nn < 4.25) {
      retvalu = 1.6 * nn + 0.1;
   } else {
      logn = log(nn);
      loglogn = log(logn);
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0) / logn -\
               ((loglogn - 6.0) * loglogn + 11.0) / (2.0 * logn * logn))\
               + 3.5 * sqrt(nn) + 10;
   }
   return (retvalu);
}
double reimann(double nn)
{
   double retvalu;
   double sum;
   double sum_prev;
   double ii;
   double lim;
   if (nn < 2) {
      retvalu = 0;
   } else {
      sum = lix(nn);
      lim = 10 * lg(nn);
      ii = 2;
      for (;;) {
         sum_prev = sum;
         sum += mobius(ii) * lix(pow(nn, 1.0 / ii)) / ii;
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (lim <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = sum;
   }
   return (retvalu);
}
long primenth(long nn)
{
   long ii;
   long pp;
   double rmndr;
   long inc;
   double prime_arr[30];
   if (nn < 5) {
      if (nn < 1) {
         pp = 0;
      } else if (nn < 2) {
         pp = 2;
      } else if (nn < 3) {
         pp = 3;
      } else if (nn < 4) {
         pp = 5;
      } else {
         pp = 7;
      }
   } else {
      if (1024 <= nn) {
         prime_arr[0] = 8161;
         prime_arr[1] = 17863;
         prime_arr[2] = 38873;
         prime_arr[3] = 84017;
         prime_arr[4] = 180503;
         prime_arr[5] = 386093;
         prime_arr[6] = 821641;
         prime_arr[7] = 1742537;
         prime_arr[8] = 3681131;
         prime_arr[9] = 7754077;
         prime_arr[10] = 16290047;
         prime_arr[11] = 34136029;
         prime_arr[12] = 71378569;
         prime_arr[13] = 148948139;
         prime_arr[14] = 310248241;
         prime_arr[15] = 645155197;
         prime_arr[16] = 1339484197;
         prime_arr[17] = 2777105129;
         prime_arr[18] = 5750079047;
         prime_arr[19] = 11891268401;
         prime_arr[20] = 24563311309;
         prime_arr[21] = 50685770167;
         prime_arr[22] = 104484802057;
         ii = floorl(lg(nn + 1) - 10);
         if (22 <= ii) {
            ii = 22;
         }
         pp = prime_arr[ii];
         ii = round(pow(2, ii + 10));
         rmndr = fmodu(pp, 6);
         if (iseq(rmndr, 5)) {
            inc = 2;
         } else if (iseq(rmndr, 1)) {
            inc = 4;
         } else {
            fprintf(stderr, "primenth:""PRIME_ISNT_PM_1_MOD_6");
            exit(1);
         }
      } else {
         pp = 11;
         ii = 5;
         inc = 2;
      }
      while (ii < nn) {
         for (;;) {
            pp += inc;
            inc = 6 - inc;
            if (isprime(pp)) {
               break; // loop AWAIT
            }
         }
         ii += 1;
      }
   }
   return (pp);
}
double bessJv(double vv
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double ff;
   double xxsqr_div_four;
   double avv;
   if (xx < 0.0) {
      sum = 0.0;
   } else {
      avv = vv;
      if (isposint(-vv)) {
         avv = fabs(vv);
      }
      xxsqr_div_four = (xx * xx / 4.0);
      term = pow(xx / 2.0, avv) / tgamma(avv + 1.0);
      sum = term;
      ff = 1;
      for (;;) {
         term *= - xxsqr_div_four / (ff * (avv + ff));
         sum_prev = sum;
         sum += term;
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         ff += 1;
      }
      if (isposint(-vv) && isodd(vv)) {
         sum = -sum;
      }
   }
   return (sum);
}
double bessYv(double vv
      , double xx)
{
   double retvalu;
   double vvpi;
   if (isint(vv)) {
      retvalu = bessYn(vv, xx);
   } else {
      vvpi = PI * vv;
      retvalu = (cos(vvpi) * bessJv(vv, xx) - bessJv(-vv, xx)) / sin(vvpi);
   }
   return (retvalu);
}
double bessI0(double xx)
{
   double yy;
   double retvalu;
   if (xx < 7.75) {
      yy = xx * xx / 4.0;
      retvalu = (((((((((((((((((1.1497640034400735733456400E-29) * yy +\
               2.0732014503197852176921968E-27) * yy +\
               5.9203280572170548134753422E-25) * yy +\
               1.3141332422663039834197910E-22) * yy +\
               2.5791926805873898803749321E-20) * yy +\
               4.3583591008893599099577755E-18) * yy +\
               6.2760839879536225394314453E-16) * yy +\
               7.5940582595094190098755663E-14) * yy +\
               7.5940584360755226536109511E-12) * yy +\
               6.1511873265092916275099070E-10) * yy +\
               3.9367598891475388547279760E-8) * yy +\
               1.9290123456788994104574754E-6) * yy +\
               6.9444444444444568581891535E-5) * yy +\
               1.7361111111111110294015271E-3) * yy +\
               2.7777777777777777805664954E-2) * yy +\
               2.4999999999999999999629693E-1) * yy +\
               1.0000000000000000000000801) * yy + 1.0;
   } else {
      yy = 1.0 / xx;
      retvalu = (((((((((((((((((((((((1.6069467093441596329340754E+16) *\
               yy - 2.1363029690365351606041265E+16) * yy +\
               1.3012646806421079076251950E+16) * yy -\
               4.8049082153027457378879746E+15) * yy +\
               1.1989242681178569338129044E+15) * yy -\
               2.1323049786724612220362154E+14) * yy +\
               2.7752144774934763122129261E+13) * yy -\
               2.6632742974569782078420204E+12) * yy +\
               1.8592340458074104721496236E+11) * yy -\
               8.9270060370015930749184222E+9) * yy +\
               2.3518420447411254516178388E+8) * yy +\
               2.6092888649549172879282592E+6) * yy -\
               5.9355022509673600842060002E+5) * yy +\
               3.1275740782277570164423916E+4) * yy -\
               1.0026890180180668595066918E+3) * yy +\
               2.2725199603010833194037016E+1) * yy -\
               1.0699095472110916094973951E-1) * yy +\
               9.4085204199017869159183831E-2) * yy +\
               4.4718622769244715693031735E-2) * yy +\
               2.9219501690198775910219311E-2) * yy +\
               2.8050628884163787533196746E-2) * yy +\
               4.9867785050353992900698488E-2) * yy +\
               3.9894228040143265335649948E-1);
      retvalu *= exp(xx) / sqrt(xx);
   }
   return (retvalu);
}
double bessI1(double xx)
{
   double yy;
   double aa;
   double retvalu;
   if (xx < 7.75) {
      yy = xx * xx / 4.0;
      aa = (((((((((((((1.332898928162290861E-23) * yy +\
               1.625212890947171108E-21) * yy + 3.410720494727771276E-19)\
               * yy + 5.220157095351373194E-17) * yy +\
               6.904822652741917551E-15) * yy + 7.593969849687574339E-13)\
               * yy + 6.834657311305621830E-11) * yy +\
               4.920949692800671435E-9) * yy + 2.755731926254790268E-7) *\
               yy + 1.157407407354987232E-5) * yy +\
               3.472222222225921045E-4) * yy + 6.944444444444341983E-3) *\
               yy + 8.333333333333333803E-2);
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0;
   } else if (xx < 500.0) {
      yy = 1.0 / xx;
      retvalu = ((((((((((((((((((((((-2.213318202179221945E+15) * yy +\
               3.146401654361325073E+15) * yy - 2.067285045778906105E+15)\
               * yy + 8.325554073334618015E+14) * yy -\
               2.298849639457172489E+14) * yy + 4.614040809616582764E+13)\
               * yy - 6.967602516005787001E+12) * yy +\
               8.087824484994859552E+11) * yy - 7.313784438967834057E+10)\
               * yy + 5.192386898222206474E+9) * yy -\
               2.903390398236656519E+8) * yy + 1.277677779341446497E+7) *\
               yy - 4.404655582443487334E+5) * yy +\
               1.178785865993440669E+4) * yy - 2.426181371595021021E+2) *\
               yy + 3.458284470977172076) * yy - 1.528189554374492735E-1)\
               * yy - 5.719036414430205390E-2) * yy -\
               4.090895951581637791E-2) * yy - 4.675104253598537322E-2) *\
               yy - 1.496033551613111533E-1) * yy +\
               3.989422804014406054E-1) * exp(xx) / sqrt(xx);
   } else {
      yy = 1.0 / xx;
      aa = exp(xx / 2.0);
      retvalu = (((((-5.843630344778927582E-2) * yy -\
               4.090421597376992892E-2) * yy - 4.675105322571775911E-2) *\
               yy - 1.496033551467584157E-1) * yy +\
               3.989422804014314820E-1) * aa / sqrt(xx);
      retvalu *= aa;
   }
   return (retvalu);
}
double bessK0(double arg)
{
   double retvalu;
   double sumf;
   double sumg;
   double sump;
   double sumq;
   double xx;
   double xz;
   xx = arg;
   if (xx <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx < DBLEPS) {
      retvalu = 0.11593151565841244858684731328185 - log(xx);
   } else if (xx <= 1.0) {
      xz = xx * xx;
      sump = (((((5.8599221412826100000E-4) * xz +\
               1.3166052564989571850E-1) * xz + 1.1999463724910714109E+1)\
               * xz + 4.6850901201934832188E+2) * xz +\
               5.9169059852270512312E+3) * xz + 2.4708152720399552679E+3;
      sumq = ((1.0) * xz - 2.4994418972832303646E+2) * xz +\
               2.1312714303849120380E+4;
      sumf = (((-1.6414452837299064100) * xz - 2.9601657892958843866E+2)\
               * xz - 1.7733784684952985886E+4) * xz -\
               4.0320340761145482298E+5;
      sumg = ((1.0 * xz - 2.5064972445877992730E+2) * xz +\
               2.9865713163054025489E+4) * xz - 1.6128136304458193998E+6;
      retvalu = sump / sumq - log(xx) * (xz * sumf / sumg + 1.0);
   } else if (xx < DBLMAXLN) {
      xz = 1.0 / xx;
      sump = (((((((((1.1394980557384778174E+2) * xz +\
               3.6832589957340267940E+3) * xz + 3.1075408980684392399E+4)\
               * xz + 1.0577068948034021957E+5) * xz +\
               1.7398867902565686251E+5) * xz + 1.5097646353289914539E+5)\
               * xz + 7.1557062783764037541E+4) * xz +\
               1.8321525870183537725E+4) * xz + 2.3444738764199315021E+3)\
               * xz + 1.1600249425076035558E+2;
      sumq = ((((((((((1.0) * xz + 2.0013443064949242491E+2) * xz +\
               4.4329628889746408858E+3) * xz + 3.1474655750295278825E+4)\
               * xz + 9.7418829762268075784E+4) * xz +\
               1.5144644673520157801E+5) * xz + 1.2689839587977598727E+5)\
               * xz + 5.8824616785857027752E+4) * xz +\
               1.4847228371802360957E+4) * xz + 1.8821890840982713696E+3)\
               * xz + 9.2556599177304839811E+1;
      retvalu = sump / sumq / sqrt(xx) * exp(-xx);
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double bessK1(double arg)
{
   double retvalu;
   double sumf;
   double sumg;
   double sump;
   double sumq;
   double xx;
   double xz;
   xx = arg;
   if (xx < DBLEPS) {
      retvalu = DBLMAX;
   } else if (xx < DBLEPS) {
      retvalu = 1.0 / xx;
   } else if (xx <= 1.0) {
      xz = xx * xx;
      sump = (((((4.8127070456878442310E-1) * xz +\
               9.9991373567429309922E+1) * xz + 7.1885382604084798576E+3)\
               * xz + 1.7733324035147015630E+5) * xz +\
               7.1938920065420586101E+5) * xz - 2.2149374878243304548E+6;
      sumq = (((1.0) * xz - 2.8143915754538725829E+2) * xz +\
               3.7264298672067697862E+4) * xz - 2.2149374878243304548E+6;
      sumf = ((((-2.2795590826955002390E-1) * xz -\
               5.3103913335180275253E+1) * xz - 4.5051623763436087023E+3)\
               * xz - 1.4758069205414222471E+5) * xz -\
               1.3531161492785421328E+6;
      sumg = (((1.0) * xz - 3.0507151578787595807E+2) * xz +\
               4.3117653211351080007E+4) * xz - 2.7062322985570842656E+6;
      retvalu = (xz * log(xx) * sumf / sumg + sump / sumq) / xx;
   } else if (xx < DBLMAXLN) {
      xz = 1.0 / xx;
      sump = ((((((((((6.4257745859173138767E-2) * xz +\
               7.5584584631176030810) * xz + 1.3182609918569941308E+2) *\
               xz + 8.1094256146537402173E+2) * xz +\
               2.3123742209168871550E+3) * xz + 3.4540675585544584407E+3)\
               * xz + 2.8590657697910288226E+3) * xz +\
               1.3319486433183221990E+3) * xz + 3.4122953486801312910E+2)\
               * xz + 4.4137176114230414036E+1) * xz + 2.2196792496874548962;
      sumq = (((((((((1.0) * xz + 3.6001069306861518855E+1) * xz +\
               3.3031020088765390854E+2) * xz + 1.2082692316002348638E+3)\
               * xz + 2.1181000487171943810E+3) * xz +\
               1.9448440788918006154E+3) * xz + 9.6929165726802648634E+2)\
               * xz + 2.5951223655579051357E+2) * xz +\
               3.4552228452758912848E+1) * xz + 1.7710478032601086579;
      retvalu = sump / sumq / sqrt(xx);
      retvalu = retvalu * exp(-xx);
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double bessJn_ps(long nn
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double ff;
   double xxsqr_div_four;
   long ann;
   if (nn < 0) {
      ann = -nn;
   } else {
      ann = nn;
   }
   term = pow(xx / 2.0, ann) / factorial(ann);
   xxsqr_div_four = -(xx * xx / 4.0);
   sum = term;
   ff = 1;
   for (;;) {
      term *= xxsqr_div_four / (ff * (ann + ff));
      sum_prev = sum;
      sum += term;
      if (iseq(sum, sum_prev)) {
         break; // loop AWAIT
      }
      ff += 1;
   }
   if (nn < 0 && isodd(nn)) {
      sum = -sum;
   }
   return (sum);
}
double bessIn_ps(long nn
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double ff;
   double xxsqr_div_four;
   long ann;
   if (nn < 0) {
      ann = -nn;
   } else {
      ann = nn;
   }
   term = pow(xx / 2.0, ann) / factorial(ann);
   xxsqr_div_four = xx * xx / 4.0;
   sum = term;
   ff = 1;
   for (;;) {
      term *= xxsqr_div_four / (ff * (ann + ff));
      sum_prev = sum;
      sum += term;
      if (iseq(sum, sum_prev)) {
         break; // loop AWAIT
      }
      ff += 1;
   }
   return (sum);
}
static double lf_besucjy0_xge5(double xx
      , long jfunc)
{
   double ww;
   double pp;
   double qq;
   double zz;
   double xn;
   double denom;
   double numer;
   ww = 5.0 / xx;
   zz = 25.0 / (xx * xx);
   numer = (((((((7.96936729297347051624E-4) * zz +\
            8.28352392107440799803E-2) * zz + 1.23953371646414299388) *\
            zz + 5.44725003058768775090) * zz + 8.74716500199817011941) *\
            zz + 5.30324038235394892183) * zz + 9.99999999999999997821E-1);
   denom = (((((((9.24408810558863637013E-4) * zz +\
            8.56288474354474431428E-2) * zz + 1.25352743901058953537) *\
            zz + 5.47097740330417105182) * zz + 8.76190883237069594232) *\
            zz + 5.30605288235394617618) * zz + 1.00000000000000000218);
   pp = numer / denom;
   numer = ((((((((-1.13663838898469149931E-2) * zz -\
            1.28252718670509318512) * zz - 1.95539544257735972385E+1) *\
            zz - 9.32060152123768231369E+1) * zz -\
            1.77681167980488050595E+2) * zz - 1.47077505154951170175E+2)\
            * zz - 5.14105326766599330220E+1) * zz - 6.05014350600728481186);
   denom = ((((((((1.0) * zz + 6.43178256118178023184E+1) * zz +\
            8.56430025976980587198E+2) * zz + 3.88240183605401609683E+3)\
            * zz + 7.24046774195652478189E+3) * zz +\
            5.93072701187316984827E+3) * zz + 2.06209331660327847417E+3)\
            * zz + 2.42005740240291393179E+2);
   qq = numer / denom;
   xn = xx - PI / 4.0;
   if (jfunc < 1) {
      pp = pp * cos(xn) - ww * qq * sin(xn);
   } else {
      pp = pp * sin(xn) + ww * qq * cos(xn);
   }
   return (pp * TWOSQRT / sqrt(PI * xx));
}
static double lf_besucjy1_xge5(double xx
      , long jfunc)
{
   double ww;
   double pp;
   double qq;
   double zz;
   double xn;
   double denom;
   double numer;
   ww = 5.0 / xx;
   zz = 25.0 / (xx * xx);
   numer = (((((((7.62125616208173112003E-4) * zz +\
            7.31397056940917570436E-2) * zz + 1.12719608129684925192) *\
            zz + 5.11207951146807644818) * zz + 8.42404590141772420927) *\
            zz + 5.21451598682361504063) * zz + 1.00000000000000000254);
   denom = (((((((5.71323128072548699714E-4) * zz +\
            6.88455908754495404082E-2) * zz + 1.10514232634061696926) *\
            zz + 5.07386386128601488557) * zz + 8.39985554327604159757) *\
            zz + 5.20982848682361821619) * zz + 9.99999999999999997461E-1);
   pp = numer / denom;
   numer = ((((((((5.10862594750176621635E-2) * zz +\
            4.98213872951233449420) * zz + 7.58238284132545283818E+1) *\
            zz + 3.66779609360150777800E+2) * zz +\
            7.10856304998926107277E+2) * zz + 5.97489612400613639965E+2)\
            * zz + 2.11688757100572135698E+2) * zz +\
            2.52070205858023719784E+1);
   denom = ((((((((1.0) * zz + 7.42373277035675149943E+1) * zz +\
            1.05644886038262816351E+3) * zz + 4.98641058337653607651E+3)\
            * zz + 9.56231892404756170795E+3) * zz +\
            7.99704160447350683650E+3) * zz + 2.82619278517639096600E+3)\
            * zz + 3.36093607810698293419E+2);
   qq = numer / denom;
   xn = xx - 3.0 * PI / 4.0;
   if (jfunc < 1) {
      pp = pp * cos(xn) - ww * qq * sin(xn);
   } else {
      pp = pp * sin(xn) + ww * qq * cos(xn);
   }
   return (pp * TWOSQRT / sqrt(PI * xx));
}
double bessJ0(double xx)
{
   double zz;
   double denom;
   double numer;
   double retvalu;
   if (xx < 0.0) {
      xx = -xx;
   }
   zz = xx * xx;
   if (xx < 1.0E-5) {
      retvalu = 1.0 - zz / 4.0;
   } else if (xx < 5.0) {
      numer = ((((-4.79443220978201773821E+9) * zz +\
               1.95617491946556577543E+12) * zz -\
               2.49248344360967716204E+14) * zz +\
               9.70862251047306323952E+15);
      denom = (((((((((1.0) * zz + 4.99563147152651017219E+2) * zz +\
               1.73785401676374683123E+5) * zz +\
               4.84409658339962045305E+7) * zz +\
               1.11855537045356834862E+10) * zz +\
               2.11277520115489217587E+12) * zz +\
               3.10518229857422583814E+14) * zz +\
               3.18121955943204943306E+16) * zz +\
               1.71086294081043136091E+18);
      retvalu = (zz - 5.783185962946784521175) * (zz -\
               30.4712623436620863991) * numer / denom;
   } else {
      retvalu = lf_besucjy0_xge5(xx, 0);
   }
   return (retvalu);
}
double bessJ1(double xx)
{
   double ww;
   double zz;
   double denom;
   double numer;
   double retvalu;
   ww = xx;
   if (ww < 0.0) {
      ww = -ww;
   }
   if (ww < 5.0) {
      zz = ww * ww;
      numer = ((((-8.99971225705559398224E+8) * zz +\
               4.52228297998194034323E+11) * zz -\
               7.27494245221818276015E+13) * zz +\
               3.68295732863852883286E+15);
      denom = (((((((((1.0) * zz + 6.20836478118054335476E+2) * zz +\
               2.56987256757748830383E+5) * zz +\
               8.35146791431949253037E+7) * zz +\
               2.21511595479792499675E+10) * zz +\
               4.74914122079991414898E+12) * zz +\
               7.84369607876235854894E+14) * zz +\
               8.95222336184627338078E+16) * zz +\
               5.32278620332680085395E+18);
      retvalu = numer / denom * xx * (zz - 14.6819706421238932572) * (zz\
               - 49.2184563216946036703);
   } else {
      retvalu = lf_besucjy1_xge5(xx, 0);
   }
   return (retvalu);
}
double bessY0(double xx)
{
   double zz;
   double denom;
   double numer;
   double retvalu;
   if (xx <= 0.0) {
      retvalu = DBLMAX;
   } else {
      zz = xx * xx;
      if (xx < 1.0E-5) {
         retvalu = 1.0 - zz / 4.0;
      } else if (xx < 5.0) {
         numer = ((((((((1.55924367855235737965E+4) * zz -\
                  1.46639295903971606143E+7) * zz +\
                  5.43526477051876500413E+9) * zz -\
                  9.82136065717911466409E+11) * zz +\
                  8.75906394395366999549E+13) * zz -\
                  3.46628303384729719441E+15) * zz +\
                  4.42733268572569800351E+16) * zz -\
                  1.84950800436986690637E+16);
         denom = ((((((((1.0) * zz + 1.04128353664259848412E+3) * zz +\
                  6.26107330137134956842E+5) * zz +\
                  2.68919633393814121987E+8) * zz +\
                  8.64002487103935000337E+10) * zz +\
                  2.02979612750105546709E+13) * zz +\
                  3.17157752842975028269E+15) * zz +\
                  2.50596256172653059228E+17);
         retvalu = numer / denom + 2.0 * log(xx) * bessJ0(xx) / PI;
      } else {
         retvalu = lf_besucjy0_xge5(xx, 1);
      }
   }
   return (retvalu);
}
double bessY1(double xx)
{
   double ww;
   double zz;
   double denom;
   double numer;
   double retvalu;
   ww = xx;
   if (xx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (ww <= 5.0) {
      zz = ww * ww;
      numer = ((((((1.2632047479017802640E+9) * zz -\
               6.47355876379160291031E+11) * zz +\
               1.14509511541823727583E+14) * zz -\
               8.12770255501325109621E+15) * zz +\
               2.02439475713594898196E+17) * zz -\
               7.78877196265950026825E+17);
      denom = (((((((((1.0) * zz + 5.94301592346128195359E+2) * zz +\
               2.35564092943068577943E+5) * zz +\
               7.34811944459721705660E+7) * zz +\
               1.87601316108706159478E+10) * zz +\
               3.88231277496238566008E+12) * zz +\
               6.20557727146953693363E+14) * zz +\
               6.87141087355300489866E+16) * zz +\
               3.97270608116560655612E+18);
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) * log(xx) - 1.0 /\
               xx) / PI;
   } else {
      retvalu = lf_besucjy1_xge5(xx, 1);
   }
   return (retvalu);
}
static double lf_bess_ucrecur(long nn
      , double xx
      , double fzero
      , double fone)
{
   double av;
   double bv;
   double cv;
   double tox;
   long ii;
   if (nn <= 0) {
      cv = fzero;
   } else if (nn == 1) {
      cv = fone;
   } else {
      tox = 2.0 / xx;
      av = fzero;
      bv = fone;
      for (ii = 1; ii <= nn - 1; ii += 1) {
         cv = tox * ii * bv - av;
         av = bv;
         bv = cv;
      }
   }
   return (cv);
}
static long lf_limi(long nn)
{
   return (nn + floor(sqrt(40.0 * nn)));
}
static double lf_bess_ucrecur2(long nn
      , double xx)
{
   double tox;
   double bzp;
   double bzc;
   double bzm;
   double sjm;
   long jj;
   long flipflop;
   long limi;
   double retvalu;
   flipflop = 0;
   sjm = 0.0;
   tox = 2.0 / fabs(xx);
   retvalu = 0.0;
   bzp = 0.0;
   bzc = 1.0;
   limi = lf_limi(nn);
   if (isodd(limi)) {
      limi -= 1;
   }
   for (jj = limi; 1 <= jj; jj -= 1) {
      bzm = jj * tox * bzc - bzp;
      bzp = bzc;
      bzc = bzm;
      if (flipflop == 0) {
         flipflop = 1;
      } else {
         sjm += bzc;
         flipflop = 0;
      }
      if (jj == nn) {
         retvalu = bzp;
      }
   }
   sjm = 2.0 * sjm - bzc;
   retvalu /= sjm;
   return (retvalu);
}
double bessIn(long nn
      , double xx)
{
   long jj;
   long limi;
   double bzc;
   double bzm;
   double bzp;
   double tox;
   double retvalu;
   double axx;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      axx = fabs(xx);
      retvalu = bessI0(axx);
   } else if (nn == 1) {
      axx = fabs(xx);
      retvalu = bessI1(axx);
   } else {
      tox = 2.0 / fabs(xx);
      retvalu = 0.0;
      bzp = 0.0;
      bzc = 1.0;
      limi = 2 * lf_limi(nn);
      for (jj = limi; 1 <= jj; jj -= 1) {
         bzm = bzp + jj * tox * bzc;
         bzp = bzc;
         bzc = bzm;
         if (jj == nn) {
            retvalu = bzp;
         }
      }
      retvalu *= bessI0(xx) / bzc;
   }
   if (xx < 0.0 && isodd(nn)) {
      retvalu = -retvalu;
   }
   return (retvalu);
}
double bessJn(long nn
      , double xx)
{
   double retvalu;
   if (nn == 0) {
      retvalu = bessJ0(xx);
   } else if (nn == 1) {
      retvalu = bessJ1(xx);
   } else if (nn < fabs(xx)) {
      retvalu = lf_bess_ucrecur(nn, xx, bessJ0(xx), bessJ1(xx));
   } else {
      retvalu = lf_bess_ucrecur2(nn, xx);
   }
   return (retvalu);
}
double bessYn(long nn
      , double xx)
{
   double retvalu;
   if (nn == 0) {
      retvalu = bessY0(xx);
   } else if (nn == 1) {
      retvalu = bessY1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx));
   }
   return (retvalu);
}
double bessKn(long nn
      , double xx)
{
   double retvalu;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      retvalu = bessK0(xx);
   } else if (nn == 1) {
      retvalu = bessK1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessK0(xx), bessK1(xx));
   }
   return (retvalu);
}
double bessYn_ps(long nn
      , double xx)
{
   double retvalu;
   double sum;
   double sum_prev;
   double term;
   double hn;
   double kk;
   double xxsqr_div_four;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      xxsqr_div_four = xx * xx / 4.0;
      sum = (log(xx / 2.0) + EULER) * bessJn(0, xx);
      term = -1;
      hn = 0.0;
      kk = 1;
      for (;;) {
         hn += 1.0 / kk;
         term *= - xxsqr_div_four / (kk * kk);
         sum_prev = sum;
         sum += term * hn;
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         kk += 1;
      }
      retvalu = 2.0 * sum / PI;
   } else if (nn == 1) {
      retvalu = bessY1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx));
   }
   return (retvalu);
}
double bessY1__1(double xx)
{
   double numer;
   double denom;
   double zz;
   double ww;
   double yy;
   double retvalu;
   if (iszero(xx)) {
      retvalu = -DBLMAX;
   } else if (xx < 8.0) {
      yy = xx * xx;
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) * yy +\
               7.349264551E+8) * yy - 5.153438139E+10) * yy +\
               1.275274390E+12) * yy - 4.900604943E+12);
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy + 1.020426050E+5) *\
               yy + 2.245904002E+7) * yy + 3.733650367E+9) * yy +\
               4.244419664E+11) * yy + 2.499580570E+13);
      retvalu = 2.0 * (bessJn(1, xx) * log(xx) - 1.0 / xx) / PI + xx *\
               (numer / denom);
   } else {
      zz = 8.0 / xx;
      yy = zz * zz;
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) * yy -\
               3.516396496E-5) * yy + 1.831050000E-3) * yy + 1.0);
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) * yy +\
               8.449199096E-6) * yy - 2.002690873E-4) * yy + 4.687499995E-2);
      ww = xx - 0.75 * PI;
      retvalu = TWOSQRT / sqrt(PI * xx) * (sin(ww) * numer + zz * cos(ww)\
               * denom);
   }
   return (retvalu);
}
static double lf_bess_lcrecur(long nn
      , double xx
      , double fzero
      , double fone)
{
   double av;
   double bv;
   double cv;
   long ii;
   if (nn <= 0) {
      cv = fzero;
   } else if (nn == 1) {
      cv = fone;
   } else {
      av = fzero;
      bv = fone;
      for (ii = 1; ii <= nn - 1; ii += 1) {
         cv = (2.0 * ii + 1.0) * bv / xx - av;
         av = bv;
         bv = cv;
      }
   }
   return (cv);
}
double bess_jn(long nn
      , double xx)
{
   double retvalu;
   double jk_a;
   double jk_b;
   if (iszero(xx)) {
      if (nn == 0) {
         retvalu = 1.0;
      } else {
         retvalu = 0.0;
      }
   } else {
      jk_a = sin(xx) / xx;
      jk_b = (sin(xx) - xx * cos(xx)) / (xx * xx);
      if (nn <= 0) {
         retvalu = jk_a;
      } else if (nn <= 1) {
         retvalu = jk_b;
      } else {
         retvalu = lf_bess_lcrecur(nn, xx, jk_a, jk_b);
      }
   }
   return (retvalu);
}
double bess_yn(long nn
      , double xx)
{
   double retvalu;
   double yk_a;
   double yk_b;
   if (iszero(xx)) {
      if (nn == 0) {
         retvalu = 1.0;
      } else {
         retvalu = 0.0;
      }
   } else {
      yk_a = -cos(xx) / xx;
      yk_b = (-cos(xx) - xx * sin(xx)) / (xx * xx);
      if (nn <= 0) {
         retvalu = yk_a;
      } else if (nn <= 1) {
         retvalu = yk_b;
      } else {
         retvalu = lf_bess_lcrecur(nn, xx, yk_a, yk_b);
      }
   }
   return (retvalu);
}
static double *lv_partitionr_arr = NULL;
static long lv_partitionr_end = 0;
double partition(long nn)
{
   // local-use C lv_partitionr_arr;
   // local-use C lv_partitionr_end;
   double retvalu;
   long jj;
   long ii;
   long kk;
   double sum;
   double ssign;
   if (nn < 0) {
      retvalu = 0.0;
   } else {
      if (lv_partitionr_end <= 0) {
         lv_partitionr_end = 6;
         lv_partitionr_arr = realloc(lv_partitionr_arr
            , (lv_partitionr_end) * sizeof(lv_partitionr_arr[0]));
         lv_partitionr_arr[0] = 1.0;
         lv_partitionr_arr[1] = 1.0;
         lv_partitionr_arr[2] = 2.0;
         lv_partitionr_arr[3] = 3.0;
         lv_partitionr_arr[4] = 5.0;
         lv_partitionr_arr[5] = 7.0;
      }
      if (lv_partitionr_end <= nn) {
         ii = lv_partitionr_end;
         lv_partitionr_end = nn + 1;
         lv_partitionr_arr = realloc(lv_partitionr_arr
            , (lv_partitionr_end) * sizeof(lv_partitionr_arr[0]));
         while (ii < lv_partitionr_end) {
            sum = 0.0;
            ssign = 1.0;
            kk = 1;
            jj = ii - 1;
            while (0 <= jj) {
               sum += ssign * lv_partitionr_arr[jj];
               jj -= kk;
               if (jj < 0) {
                  break;
               }
               sum += ssign * lv_partitionr_arr[jj];
               ssign = -ssign;
               kk += 1;
               jj -= (2 * kk - 1);
            }
            lv_partitionr_arr[ii] = sum;
            ii += 1;
         }
      }
      retvalu = lv_partitionr_arr[nn];
   }
   return (retvalu);
}
static double *lv_partitionq_arr = NULL;
static long lv_partitionq_end = 0;
double partitionq(long nn)
{
   // local-use C lv_partitionq_arr;
   // local-use C lv_partitionq_end;
   double retvalu;
   long jj;
   long ii;
   long kk;
   double sum;
   double ssign;
   long ee;
   if (nn < 0) {
      retvalu = 0.0;
   } else {
      if (lv_partitionq_end <= 0) {
         lv_partitionq_end = 6;
         lv_partitionq_arr = realloc(lv_partitionq_arr
            , (lv_partitionq_end) * sizeof(lv_partitionq_arr[0]));
         lv_partitionq_arr[0] = 1.0;
         lv_partitionq_arr[1] = 1.0;
         lv_partitionq_arr[2] = 1.0;
         lv_partitionq_arr[3] = 2.0;
         lv_partitionq_arr[4] = 2.0;
         lv_partitionq_arr[5] = 3.0;
      }
      if (lv_partitionq_end <= nn) {
         ii = lv_partitionq_end;
         lv_partitionq_end = nn + 1;
         lv_partitionq_arr = realloc(lv_partitionq_arr
            , (lv_partitionq_end) * sizeof(lv_partitionq_arr[0]));
         while (ii < lv_partitionq_end) {
            sum = 0.0;
            ssign = 1.0;
            kk = 1;
            jj = ii - 1;
            while (0 <= jj) {
               sum += ssign * lv_partitionq_arr[jj];
               jj -= kk;
               if (jj < 0) {
                  break;
               }
               sum += ssign * lv_partitionq_arr[jj];
               ssign = -ssign;
               kk += 1;
               jj -= (2 * kk - 1);
            }
            ee = round(sqrt(1.0 + 12.0 * ii) / 6.0);
            if (ii == (3 * ee * ee - ee) || ii == (3 * ee * ee + ee)) {
               if (isodd(ee)) {
                  sum -= 1.0;
               } else {
                  sum += 1.0;
               }
            }
            lv_partitionq_arr[ii] = sum;
            ii += 1;
         }
      }
      retvalu = lv_partitionq_arr[nn];
   }
   return (retvalu);
}
long bitwisenot(long xx)
{
   long retvalu;
   retvalu = ~xx;
   return (retvalu);
}
long bitwiseand(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx & yy);
   return (retvalu);
}
long bitwiseor(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx | yy);
   return (retvalu);
}
long bitwisexor(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx ^ yy);
   return (retvalu);
}
long bitshiftl(long hexnumber
      , long shift_count)
{
   long retvalu;
   if (shift_count < 0) {
      retvalu = (hexnumber >> (- shift_count));
   } else if (0 < shift_count) {
      retvalu = (hexnumber << shift_count);
   } else {
      retvalu = hexnumber;
   }
   return (retvalu);
}
long bitshiftr(long hexnumber
      , long shift_count)
{
   long retvalu;
   if (shift_count < 0) {
      retvalu = (hexnumber << (- shift_count));
   } else if (0 < shift_count) {
      retvalu = (hexnumber >> shift_count);
   } else {
      retvalu = hexnumber;
   }
   return (retvalu);
}
long bits_count(long hexnumber)
{
   long bit_counter;
   long bitmask;
   bitmask = 1;
   bit_counter = 0;
   while (bitmask <= hexnumber) {
      if (bitwiseand(bitmask, hexnumber) != 0) {
         bit_counter += 1;
      }
      bitmask = (bitmask << 1);
   }
   return (bit_counter);
}
long bits_ls1b(long orig)
{
   long divisor;
   long retvalu;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = 1;
      while (0 == (divisor & orig)) {
         divisor *= 2;
      }
      retvalu = divisor;
   }
   return (retvalu);
}
long bits_ms1b(long orig)
{
   long divisor;
   long retvalu;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = -2;
      while ((divisor & orig) != 0) {
         divisor *= 2;
      }
      retvalu = -divisor / 2;
   }
   return (retvalu);
}
long bits_ls1bpos(long orig)
{
   long divisor;
   long retvalu;
   long bit_count;
   if (orig == 0) {
      retvalu = -1;
   } else {
      divisor = 1;
      bit_count = 0;
      while (0 == (divisor & orig)) {
         divisor *= 2;
         bit_count += 1;
      }
      retvalu = bit_count;
   }
   return (retvalu);
}
long bits_ms1bpos(long orig)
{
   long divisor;
   long retvalu;
   long bit_count;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = -2;
      bit_count = 0;
      while ((divisor & orig) != 0) {
         divisor *= 2;
         bit_count += 1;
      }
      retvalu = bit_count;
   }
   return (retvalu);
}
long bits_assign(long orig
      , long value_to_set
      , long which_mask)
{
   long divisor;
   long retvalu;
   long tempo;
   long tempv;
   if (which_mask == 0) {
      retvalu = orig;
   } else {
      divisor = bits_ls1bpos(which_mask);
      tempo = (orig & (~which_mask));
      tempv = (value_to_set << divisor);
      retvalu = (tempo | (tempv & which_mask));
   }
   return (retvalu);
}
long bits_get(long vall
      , long mask)
{
   return ((vall & mask) / bits_ls1b(mask));
}
long bits_set(long vall
      , long mask)
{
   return (((vall * bits_ls1b(mask)) & mask));
}
static double lf_calerf(double xx
      , long jint)
{
   double result;
   double retvalu;
   double absx;
   double numer;
   double denom;
   double rsqrpi;
   double rxsq;
   double xsq;
   long flag;
   absx = fabs(xx);
   xsq = xx * xx;
   flag = 0;
   if (absx <= 0.46875) {
      numer = (((((1.85777706184603153E-1) * xsq + 3.16112374387056560) *\
               xsq + 1.13864154151050156E+2) * xsq +\
               3.77485237685302021E+2) * xsq + 3.20937758913846947E+3);
      denom = (((((1.00000000000000000) * xsq + 2.36012909523441209E+1) *\
               xsq + 2.44024637934444173E+2) * xsq +\
               1.28261652607737228E+3) * xsq + 2.84423683343917062E+3);
      retvalu = xx * numer / denom;
      if (jint == 1) {
         retvalu = 1.0 - retvalu;
      } else if (jint == 2) {
         retvalu = exp(xsq) * (1.0 - retvalu);
      }
      flag = 1;
   } else if (absx <= 4.0) {
      numer = (((((((((2.15311535474403846E-8) * absx +\
               5.64188496988670089E-1) * absx + 8.88314979438837594) *\
               absx + 6.61191906371416295E+1) * absx +\
               2.98635138197400131E+2) * absx + 8.81952221241769090E+2) *\
               absx + 1.71204761263407058E+3) * absx +\
               2.05107837782607147E+3) * absx + 1.23033935479799725E+3);
      denom = (((((((((1.00000000000000000) * absx +\
               1.57449261107098347E+1) * absx + 1.17693950891312499E+2) *\
               absx + 5.37181101862009858E+2) * absx +\
               1.62138957456669019E+3) * absx + 3.29079923573345963E+3) *\
               absx + 4.36261909014324716E+3) * absx +\
               3.43936767414372164E+3) * absx + 1.23033935480374942E+3);
      result = numer / denom;
   } else {
      rsqrpi = sqrt(1.0 / PI);
      if (jint != 2 && sqrt(log(DBLMAX)) <= absx) {
         result = 0.0;
      } else if (jint == 2 && 6.71E+7 <= absx) {
         if (DBLMAX / 8.0 <= absx) {
            result = 0.0;
         } else {
            result = rsqrpi / absx;
         }
      } else {
         rxsq = 1.0 / (absx * absx);
         numer = ((((((-1.63153871373020978E+2) * rxsq -\
                  3.05326634961232344E+3) * rxsq -\
                  3.60344899949804439E+3) * rxsq -\
                  1.25781726111229246E+3) * rxsq -\
                  1.60837851487422766E+2) * rxsq - 6.58749161529837803);
         denom = ((((((1.00000000000000000E+4) * rxsq +\
                  2.56852019228982242E+4) * rxsq +\
                  1.87295284992346047E+4) * rxsq +\
                  5.27905102951428412E+3) * rxsq +\
                  6.05183413124413191E+2) * rxsq + 2.33520497626869185E+1);
         result = (rsqrpi + rxsq * numer / denom) / absx;
      }
   }
   if (flag == 0) {
      if (jint == 2) {
         if (xx < - sqrt(log(DBLMAX))) {
            retvalu = DBLMAX;
         } else if (xx < 0.0) {
            retvalu = 2.0 * exp(xsq) - result;
         } else {
            retvalu = result;
         }
      } else {
         result *= exp(-xsq);
         if (jint == 0) {
            if (0.0 <= xx) {
               retvalu = (0.5 - result) + 0.5;
            } else {
               retvalu = -((0.5 - result) + 0.5);
            }
         } else if (jint == 1) {
            if (xx < 0.0) {
               retvalu = 2.0 - result;
            } else {
               retvalu = result;
            }
         } else {
            retvalu = 0.0;
         }
      }
   }
   return (retvalu);
}
double erf(double xx)
{
   return (lf_calerf(xx, 0));
}
double erfc(double xx)
{
   return (lf_calerf(xx, 1));
}
double erfcx(double xx)
{
   return (lf_calerf(xx, 2));
}
double erfcinv(double yy_orig)
{
   double retvalu;
   double xx;
   double yy;
   double xx_pr;
   double dx;
   double cc;
   double uu;
   long ii;
   if (yy_orig <= 0.0) {
      retvalu = DBLMAX / 2.0;
   } else if (2.0 <= yy_orig) {
      retvalu = -(DBLMAX / 2.0);
   } else if (iszero(yy_orig - 1.0)) {
      retvalu = 0.0;
   } else {
      if (1.0 < yy_orig) {
         yy = 2.0 - yy_orig;
      } else {
         yy = yy_orig;
      }
      dx = 1.0;
      xx = 0.0;
      cc = -sqrt(TAU / 8.0);
      ii = 0;
      for (;;) {
         uu = cc * (erfcx(xx) - yy * exp(xx * xx));
         dx = -uu / (1.0 + uu * xx);
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      if (1.0 < yy_orig) {
         retvalu = -xx;
      } else {
         retvalu = xx;
      }
   }
   return (retvalu);
}
double erfcxinv(double yy)
{
   double xx;
   double xx_pr;
   double dx;
   double cc;
   double ex;
   double df;
   double uu;
   long ii;
   xx = 0.0;
   if (! iszero(yy - 1.0)) {
      dx = 1.0;
      cc = sqrt(8.0 / TAU);
      ii = 0;
      for (;;) {
         ex = erfcx(xx);
         df = 2.0 * xx * ex - cc;
         uu = (ex - yy) / df;
         dx = -uu / (1.0 - uu * (xx + ex / df));
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
   }
   return (xx);
}
double erfinv(double yy)
{
   double retvalu;
   double xx;
   double xx_pr;
   double dx;
   double cc;
   double uu;
   long ii;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else if (0.5 < yy) {
      retvalu = erfcinv(1.0 - yy);
   } else if (yy < - 0.5) {
      retvalu = -erfcinv(1.0 + yy);
   } else {
      dx = 1.0;
      xx = 0.0;
      cc = sqrt(TAU / 8.0);
      ii = 0;
      for (;;) {
         uu = cc * (erf(xx) - yy) * exp(xx * xx);
         dx = -uu / (1.0 + uu * xx);
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xx;
   }
   return (retvalu);
}
double erf__1(double xx)
{
   double tt;
   double ans;
   double ply;
   tt = (1.0 / (1.0 + (0.5 * fabs(xx))));
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt +\
            1.48851587) * tt - 1.13520398) * tt + 2.78868070E-1) * tt -\
            1.86288060E-1) * tt + 9.67841800E-2) * tt + 3.74091960E-1) *\
            tt + 1.00002368) * tt - 1.26551223);
   ans = 1.0 - tt * exp((-xx * xx) + ply);
   if (xx < 0.0) {
      ans = -ans;
   }
   return (ans);
}
double erf__2(double xx)
{
   double tt;
   double ans;
   double ply;
   tt = 1.0 / (1.0 + 0.3275911 * fabs(xx));
   ply = ((((((1.061405429) * tt - 1.453152027) * tt + 1.421413741) * tt\
            - 2.844967360E-1) * tt + 2.548295920E-1) * tt + 0.000000000);
   ans = 1.0 - exp(-xx * xx) * ply;
   if (xx < 0.0) {
      ans = -ans;
   }
   return (ans);
}
double erf__3(double xx)
{
   double axx;
   double xxsq;
   double sum_curr;
   double factx;
   long nn;
   double add_arr[80];
   long kk;
   axx = fabs(xx);
   xxsq = xx * xx;
   if (axx < 4.4) {
      factx = 1.0;
      add_arr[0] = 1;
      nn = 1;
      for (;;) {
         factx *= - xxsq / nn;
         add_arr[nn] = factx / (2.0 * nn + 1.0);
         if (fabs(add_arr[nn]) < DBLEPS) {
            break; // loop AWAIT
         }
         nn += 1;
         if (79 <= nn) {
            break; // loop AWAIT
         }
      }
      sum_curr = 0.0;
      for (kk = nn; 0 <= kk; kk -= 1) {
         sum_curr += add_arr[kk];
      }
      sum_curr *= (2.0 * xx / sqrt(PI));
   } else {
      factx = -exp(-xxsq) / sqrt(PI);
      sum_curr = 0.0;
      kk = round(xxsq);
      for (nn = 1; nn <= kk - 1; nn += 1) {
         factx *= - (2.0 * nn - 1.0) / (2.0 * xxsq);
         sum_curr += factx;
      }
      sum_curr += 1.0 - exp(-xxsq) / sqrt(PI) / axx;
      if (xx < 0.0) {
         sum_curr = -sum_curr;
      }
   }
   return (sum_curr);
}
double erf__4(double xx)
{
   double xxsq;
   double axx;
   double sum_prev;
   double sum_curr;
   long nn;
   long kk;
   long twonnpone;
   double factx;
   double factz;
   double twoxxsq;
   double term;
   double denom;
   axx = fabs(xx);
   xxsq = xx * xx;
   twoxxsq = 2.0 * xxsq;
   sum_curr = 0.0;
   if (axx < 4.4) {
      factz = (2.0 * xx / sqrt(PI));
      factx = factz;
      nn = 3;
      for (;;) {
         twonnpone = 2 * nn + 1;
         factx *= xxsq * xxsq / ((nn - 1.0) * nn);
         denom = 4.0 * nn * nn - 1.0;
         term = factx * (twonnpone * (nn - xxsq) + twoxxsq) / denom;
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_prev, sum_curr)) {
            break; // loop AWAIT
         }
         nn += 2;
      }
      sum_curr += (1.0 - xxsq / 3.0) * factz;
   } else {
      factx = -exp(-xxsq) / (xx * sqrt(PI));
      kk = round(xxsq);
      for (nn = 1; nn <= kk - 5; nn += 2) {
         factx *= nn * (nn + 1.0) / (twoxxsq * twoxxsq);
         term = factx * (1.0 - (2.0 * nn + 1.0) / twoxxsq);
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_prev, sum_curr)) {
            break;
         }
      }
      sum_curr += 1.0 - exp(-xxsq) / sqrt(PI) / axx;
      if (xx < 0.0) {
         sum_curr = -sum_curr;
      }
   }
   return (sum_curr);
}
double lgamma__1(double xx)
{
   double aa_arr[15];
   double sum;
   long ii;
   double tt;
   double retvalu;
   double qq;
   if (xx <= 0.0 && isint(xx)) {
      retvalu = log(DBLMAX);
   } else {
      if (xx < 0.0) {
         qq = 1.0 - xx;
      } else {
         qq = xx;
      }
      aa_arr[0] = +5.7156235665862923517E+1;
      aa_arr[1] = -5.9597960355475491248E+1;
      aa_arr[2] = +1.4136097974741747174E+1;
      aa_arr[3] = -4.9191381609762019978E-1;
      aa_arr[4] = +3.3994649984811888699E-5;
      aa_arr[5] = +4.6523628927048575665E-5;
      aa_arr[6] = -9.8374475304879564677E-5;
      aa_arr[7] = +1.5808870322491248884E-4;
      aa_arr[8] = -2.1026444172410488319E-4;
      aa_arr[9] = +2.1743961811521264320E-4;
      aa_arr[10] = -1.6431810653676389022E-4;
      aa_arr[11] = +8.4418223983852743293E-5;
      aa_arr[12] = -2.6190838401581408670E-5;
      aa_arr[13] = +3.6899182659531622704E-6;
      sum = 0.99999999999999709182;
      for (ii = 0; ii <= 13; ii += 1) {
         sum += aa_arr[ii] / (qq + ii);
      }
      tt = qq + 607.0 / 128.0 - 0.5;
      qq = log(TAU) / 2.0 + (qq - 0.5) * log(tt) + log(sum) - tt;
      if (xx < 0.0) {
         retvalu = log(PI / fabs(sin(2.0 * TAU * xx))) - qq;
      } else {
         retvalu = qq;
      }
   }
   return (retvalu);
}
double lgammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double yy_fixed;
   double xx_init;
   yy_fixed = yy / PI + log(yy + 0.5);
   xx_init = yy_fixed + PI - 0.5;
   scvx_dx = 0.01;
   scvx_xx = xx_init;
   scvx_yy = yy - lgamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - lgamma(scvx_xx);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
static double lf_lgamma_gt_zero(double xx)
{
   double retvalu;
   double zz;
   double pp;
   double uu;
   double denom;
   double numer;
   if (xx < 13.0) {
      zz = 1.0;
      pp = 0.0;
      uu = xx;
      while (3.0 <= uu) {
         pp -= 1.0;
         uu = xx + pp;
         zz *= uu;
      }
      while (uu < 2.0) {
         zz /= uu;
         pp += 1.0;
         uu = xx + pp;
      }
      if (zz < 0.0) {
         zz = -zz;
      }
      if (iseq(uu, 2.0)) {
         retvalu = log(zz);
      } else {
         pp -= 2.0;
         xx += pp;
         numer = ((((((-1.37825152569120859100E+3) * xx -\
                  3.88016315134637840924E+4) * xx -\
                  3.31612992738871184744E+5) * xx -\
                  1.16237097492762307383E+6) * xx -\
                  1.72173700820839662146E+6) * xx -\
                  8.53555664245765465627E+5);
         denom = (((((((1.0) * xx - 3.51815701436523470549E+2) * xx -\
                  1.70642106651881159223E+4) * xx -\
                  2.20528590553854454839E+5) * xx -\
                  1.13933444367982507207E+6) * xx -\
                  2.53252307177582951285E+6) * xx -\
                  2.01889141433532773231E+6);
         retvalu = log(zz) + xx * numer / denom;
      }
   } else {
      uu = (xx - 0.5) * log(xx) - xx + log(sqrt(TAU));
      if (1.0E+8 < xx) {
         retvalu = uu;
      } else {
         pp = 1.0 / (xx * xx);
         if (1000.0 < xx) {
            zz = (((7.9365079365079365079365E-4) * pp -\
                     2.7777777777777777777778E-3) * pp +\
                     8.3333333333333333333333E-2);
         } else {
            zz = (((((8.11614167470508450300E-4) * pp -\
                     5.95061904284301438324E-4) * pp +\
                     7.93650340457716943945E-4) * pp -\
                     2.77777777300996872050E-3) * pp +\
                     8.33333333333331927722E-2);
         }
         retvalu = uu + zz / xx;
      }
   }
   return (retvalu);
}
double lgamma(double zz)
{
   double retvalu;
   if (zz <= 0.0) {
      if (isint(zz)) {
         retvalu = log(DBLMAX);
      } else {
         retvalu = (log(PI / fabs(sin(2.0 * TAU * zz))) -\
                  lf_lgamma_gt_zero(1.0 - zz));
      }
   } else {
      retvalu = lf_lgamma_gt_zero(zz);
   }
   return (retvalu);
}
static double lf_eval_cont(double xx
      , long deg
      , const double *coeff_arr_pc)
{
   double sum;
   long ii;
   sum = xx;
   for (ii = deg; 0 <= ii; ii -= 1) {
      sum = xx + coeff_arr_pc[ii] / sum;
   }
   return (sum);
}
double lgamma__2(double zz)
{
   double retvalu;
   double aa_arr[10];
   double sum;
   if (zz <= 0.0) {
      if (isint(zz)) {
         retvalu = log(DBLMAX);
      } else {
         retvalu = (log(PI / fabs(sin(2.0 * TAU * zz))) - lgamma(1.0 - zz));
      }
   } else {
      aa_arr[0] = +1.0 / 12.0;
      aa_arr[1] = +1.0 / 30.0;
      aa_arr[2] = +53.0 / 210.0;
      aa_arr[3] = +195.0 / 371.0;
      aa_arr[4] = +229999.0 / 22737.0;
      aa_arr[5] = +29944523.0 / 19733142.0;
      aa_arr[6] = +109535241009.0 / 48264275462.0;
      aa_arr[7] = +29404527905795295658.0 / 9769214287853155785.0;
      aa_arr[8] = +455377030420113432210116914702.0 /\
               113084128923675014537885725485.0;
      sum = 0.0;
      while (zz <= 6.0) {
         sum += log(zz);
         zz += 1.0;
      }
      sum -= lf_eval_cont(zz, 8, aa_arr);
      retvalu = (log(TAU) / 2.0 + (zz - 0.5) * log(zz) - 2.0 * zz - sum);
   }
   return (retvalu);
}
double lpermx(double nn
      , double rr)
{
   return (lgamma(nn + 1.0) - lgamma(nn - rr + 1.0));
}
double permx(double nn
      , double rr)
{
   return (exp(lpermx(nn, rr)));
}
double lcombx(double nn
      , double rr)
{
   return (lpermx(nn, rr) - lgamma(rr + 1.0));
}
double combx(double nn
      , double rr)
{
   return (exp(lcombx(nn, rr)));
}
double birthdayx(double nn
      , double rr)
{
   return (exp(lpermx(nn, rr) - log(nn) * rr));
}
double tgamma__1(double xx)
{
   double zz;
   double rslt;
   double denom;
   double numer;
   if (isposint(1.0 - xx)) {
      rslt = DBLMAX;
   } else {
      zz = 1.0;
      while (3.0 <= xx) {
         xx -= 1.0;
         zz *= xx;
      }
      while (xx < 2.0) {
         if (fabs(xx) < 1.0E-9) {
            break;
         }
         zz /= xx;
         xx += 1.0;
      }
      if (iseq(xx, 0.0)) {
         rslt = DBLMAX;
      } else if (xx < 2.0) {
         rslt = zz / ((1.0 + EULER * xx) * xx);
      } else if (iseq(xx, 2.0)) {
         rslt = zz;
      } else {
         xx -= 2.0;
         numer = (((((((1.60119522476751861407E-4) * xx +\
                  1.19135147006586384913E-3) * xx +\
                  1.04213797561761569935E-2) * xx +\
                  4.76367800457137231464E-2) * xx +\
                  2.07448227648435975150E-1) * xx +\
                  4.94214826801497100753E-1) * xx +\
                  9.99999999999999996796E-1);
         denom = ((((((((-2.31581873324120129819E-5) * xx +\
                  5.39605580493303397842E-4) * xx -\
                  4.45641913851797240494E-3) * xx +\
                  1.18139785222060435552E-2) * xx +\
                  3.58236398605498653373E-2) * xx -\
                  2.34591795718243348568E-1) * xx +\
                  7.14304917030273074085E-2) * xx + 1.00000000000000000320);
         rslt = zz * numer / denom;
      }
   }
   return (rslt);
}
double tgamma(double xx)
{
   double retvalu;
   double tmp;
   if (xx < 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         tmp = exp(lgamma(1.0 - xx));
         retvalu = PI / (sin(PI * xx) * tmp);
      }
   } else {
      retvalu = exp(lgamma(xx));
   }
   return (retvalu);
}
double tgammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double kk;
   double cc;
   double pp;
   double xx_init;
   kk = GAMMAMIN;
   cc = sqrt(TAU) / E - tgamma(kk);
   pp = log((yy + cc) / sqrt(TAU));
   xx_init = pp / wp(pp / E) + 0.5;
   scvx_dx = 0.01;
   scvx_xx = xx_init;
   scvx_yy = yy - tgamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - tgamma(scvx_xx);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
static double lf_gamma_shift(double xx
      , double yy)
{
   double prod;
   if (isposint(1.0 - yy)) {
      prod = DBLMAX;
   } else {
      prod = 1.0;
      while (yy < xx - 0.0001) {
         prod *= yy;
         yy += 1.0;
      }
      while (xx + 0.0001 < yy) {
         yy -= 1.0;
         prod /= yy;
      }
   }
   return (prod);
}
static double lf_tgamma_gt_half(double xx)
{
   long ii;
   double sum;
   double yy;
   double pp_arr[11];
   double ex;
   yy = xx - floor(xx) + 1.0;
   pp_arr[0] = +5.716400188274341379136E+3;
   pp_arr[1] = -1.481530426768413909044E+4;
   pp_arr[2] = +1.429149277657478554025E+4;
   pp_arr[3] = -6.348160217641458813289E+3;
   pp_arr[4] = +1.301608286058321874105E+3;
   pp_arr[5] = -1.081767053514369634679E+2;
   pp_arr[6] = +2.605696505611755827729;
   pp_arr[7] = -7.423452510201416151527E-3;
   pp_arr[8] = +5.384136432509564062961E-8;
   pp_arr[9] = -4.023533141268236372067E-9;
   sum = 1.000000000000000174663;
   for (ii = 0; ii <= 9; ii += 1) {
      sum += pp_arr[ii] / (yy + ii);
   }
   ex = log(yy + 8.5) * (yy - 0.5) - yy - 8.5;
   return (sqrt(TAU) * sum * lf_gamma_shift(xx, yy) * exp(ex));
}
double tgamma__2(double xx)
{
   long ii;
   double sum;
   double pp_arr[10];
   double yy;
   double rslt;
   double ex;
   if (isposint(1.0 - xx)) {
      rslt = DBLMAX;
   } else {
      yy = xx - floor(xx) + 2.0;
      pp_arr[0] = +7.61800917294715E+1;
      pp_arr[1] = -8.65053203294168E+1;
      pp_arr[2] = +2.40140982408309E+1;
      pp_arr[3] = -1.23173957245015;
      pp_arr[4] = +1.20865097386618E-3;
      pp_arr[5] = -5.395239384953E-6;
      sum = 1.00000000019001;
      for (ii = 0; ii <= 5; ii += 1) {
         sum += pp_arr[ii] / (yy + ii);
      }
      ex = log(yy + 4.5) * (yy - 0.5) - yy - 4.5;
      rslt = sqrt(TAU) * sum * lf_gamma_shift(xx, yy) * exp(ex);
   }
   return (rslt);
}
double tgamma__3(double xx)
{
   double retvalu;
   if (isposint(1.0 - xx)) {
      retvalu = DBLMAX;
   } else if (xx < 0.5) {
      retvalu = PI / (sin(PI * xx) * lf_tgamma_gt_half(1.0 - xx));
   } else {
      retvalu = lf_tgamma_gt_half(xx);
   }
   return (retvalu);
}
double tgamma__stirling(double xx)
{
   double yy;
   double ryy;
   double sc;
   double ply;
   sc = 1.0;
   while (xx < 10.0) {
      sc /= xx;
      xx += 1.0;
   }
   yy = xx - 1.0;
   ryy = 1.0 / yy;
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0 /\
            209018880.0) * ryy - 571.0 / 2488320.0) * ryy - 139.0 /\
            51840) * ryy + 1.0 / 288.0) * ryy + 1.0 / 12.0) * ryy + 1.0);
   return (sc * pow(yy / E, yy) * sqrt(TAU * yy) * ply);
}
double tgammadouble(double xx)
{
   double xxh;
   xxh = (xx - 1.0) / 2.0;
   return (pow(2.0, xxh) * tgamma(xxh + 1.0) * pow(2.0 / PI, (1.0 -\
            cos(TAU * xxh)) / 4.0));
}
static double lf_ligamma_xxleaa(double aa
      , double xx)
{
   long kk;
   double rr;
   double sum_curr;
   double sum_prev;
   sum_curr = exp(aa * log(xx) - xx) / aa;
   rr = sum_curr;
   for (kk = 1; kk <= 100; kk += 1) {
      rr *= xx / (aa + kk);
      sum_prev = sum_curr;
      sum_curr += rr;
      if (iseq(sum_prev, sum_curr)) {
         break;
      }
   }
   return (sum_curr);
}
static double lf_uigamma_aalexx(double aa
      , double xx)
{
   long jj;
   double pp;
   long ipp;
   double sum_curr;
   double tt;
   sum_curr = 0.0;
   pp = 47.0 / sqrt(xx - 0.75);
   ipp = floor(pp);
   for (jj = ipp; 1 <= jj; jj -= 1) {
      tt = xx + sum_curr;
      sum_curr = (jj - aa) * tt / (tt + jj);
   }
   return (exp(aa * log(xx) - xx) / (xx + sum_curr));
}
double ligamma(double aa
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 1.1 || xx <= aa) {
      retvalu = lf_ligamma_xxleaa(aa, xx);
   } else {
      retvalu = tgamma(aa) - lf_uigamma_aalexx(aa, xx);
   }
   return (retvalu);
}
double uigamma(double aa
      , double xx)
{
   double retvalu;
   if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 0.0) {
      retvalu = tgamma(aa);
   } else if (xx <= 1.1 || xx <= aa) {
      retvalu = tgamma(aa) - lf_ligamma_xxleaa(aa, xx);
   } else {
      retvalu = lf_uigamma_aalexx(aa, xx);
   }
   return (retvalu);
}
double rligamma(double aa
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else {
      retvalu = ligamma(aa, xx) / tgamma(aa);
   }
   return (retvalu);
}
double ruigamma(double aa
      , double xx)
{
   double retvalu;
   if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 0.0) {
      retvalu = 1.0;
   } else {
      retvalu = uigamma(aa, xx) / tgamma(aa);
   }
   return (retvalu);
}
double uigamma__1(double aa
      , double xx)
{
   double ans;
   double ax;
   double cc;
   double yc;
   double rr;
   double tt;
   double yy;
   double zz;
   double pk;
   double pkma;
   double pkmb;
   double qk;
   double qkma;
   double qkmb;
   double retvalu;
   if (xx <= 0.0 || aa <= 0.0) {
      retvalu = 1.0;
   } else {
      ax = aa * log(xx) - xx - lgamma(aa);
      if (ax < - DBLMAXLN) {
         retvalu = 0.0;
      } else {
         ax = exp(ax);
         if (xx < 1.0 || xx < aa) {
            rr = aa;
            cc = 1.0;
            ans = 1.0;
            for (;;) {
               rr += 1.0;
               cc *= xx / rr;
               ans += cc;
               if (cc / ans < DBLEPS) {
                  break; // loop AWAIT
               }
            }
            retvalu = 1.0 - ans * ax / aa;
         } else {
            yy = 1.0 - aa;
            zz = xx + yy + 1.0;
            cc = 0.0;
            pkmb = 1.0;
            qkmb = xx;
            pkma = xx + 1.0;
            qkma = zz * xx;
            ans = pkma / qkma;
            for (;;) {
               cc += 1.0;
               yy += 1.0;
               zz += 2.0;
               yc = yy * cc;
               pk = pkma * zz - pkmb * yc;
               qk = qkma * zz - qkmb * yc;
               if (! iszero(qk)) {
                  rr = pk / qk;
                  tt = fabs((ans - rr) / rr);
                  ans = rr;
               } else {
                  tt = 1.0;
               }
               pkmb = pkma;
               pkma = pk;
               qkmb = qkma;
               qkma = qk;
               if (1.0 / DBLEPS < fabs(pk)) {
                  pkmb *= DBLEPS;
                  pkma *= DBLEPS;
                  qkmb *= DBLEPS;
                  qkma *= DBLEPS;
               }
               if (tt <= DBLEPS) {
                  break; // loop AWAIT
               }
            }
            retvalu = ans * ax;
         }
      }
   }
   return (retvalu);
}
double uigammainv(double aa
      , double yy)
{
   double dd;
   double tt;
   double xx;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   dd = 1.0 / (9.0 * aa);
   tt = 1.0 - dd - gau_quantile(yy) * sqrt(dd);
   xx = aa * pow(tt, 3);
   scvx_dx = 0.1;
   scvx_xx = xx;
   scvx_yy = yy - uigamma(aa, scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - uigamma(aa, scvx_xx);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
double ligammainv(double aa
      , double yy)
{
   return (uigammainv(aa, 1.0 - yy));
}
double lbeta(double aa
      , double bb)
{
   return (lgamma(aa) + lgamma(bb) - lgamma(aa + bb));
}
double beta(double aa
      , double bb)
{
   double retvalu;
   double lbe;
   lbe = lbeta(aa, bb);
   if (DBLMAXLN < lbe) {
      retvalu = DBLMAX;
   } else if (- DBLMAXLN < lbe) {
      retvalu = exp(lbe);
   } else {
      retvalu = -DBLMAX;
   }
   return (retvalu);
}
double betainc(double aa
      , double bb
      , double xx)
{
   double sum_curr;
   double sum_prev;
   double compx;
   double new_xx;
   double pp;
   double qq;
   double term;
   double ai;
   double rx;
   double temp;
   double log_beta;
   double retvalu;
   long indx;
   long ns;
   double psq;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0 || bb <= 0.0 || 1.0 <= xx) {
      retvalu = 1.0;
   } else {
      psq = aa + bb;
      if (aa < psq * xx) {
         new_xx = 1.0 - xx;
         compx = xx;
         pp = bb;
         qq = aa;
         indx = 0;
      } else {
         new_xx = xx;
         compx = 1.0 - xx;
         pp = aa;
         qq = bb;
         indx = 1;
      }
      term = 1.0;
      sum_curr = 1.0;
      ai = 1.0;
      ns = floor(qq + compx * psq);
      rx = new_xx / compx;
      temp = qq - ai;
      if (ns == 0) {
         rx = new_xx;
      }
      for (;;) {
         term *= temp * rx / (pp + ai);
         ai += 1.0;
         ns -= 1;
         if (0 <= ns) {
            temp = qq - ai;
            if (ns == 0) {
               rx = new_xx;
            }
         } else {
            temp = psq;
            psq += 1.0;
         }
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // loop AWAIT
         }
      }
      log_beta = lgamma(aa) + lgamma(bb) - lgamma(aa + bb);
      retvalu = sum_curr * exp(pp * log(new_xx) + (qq - 1.0) * log(compx)\
               - log_beta) / pp;
      if (indx == 0) {
         retvalu = 1.0 - retvalu;
      }
   }
   return (retvalu);
}
double betainc__1(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double lbeta_ab;
   double front;
   double ff;
   double cc;
   double dd;
   long ii;
   long jj;
   long kk;
   double numerator;
   double den;
   double cd;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0 || bb <= 0.0 || 1.0 <= xx) {
      retvalu = 1.0;
   } else if ((aa + 1.0) / (aa + bb + 2.0) < xx) {
      retvalu = 1.0 - betainc__1(bb, aa, 1.0 - xx);
   } else if (aa <= 0) {
      retvalu = 0.0;
   } else {
      lbeta_ab = lbeta(aa, bb);
      front = exp(log(xx) * aa + log(1.0 - xx) * bb - lbeta_ab) / aa;
      ff = 1.0;
      cc = 1.0;
      dd = 0.0;
      jj = 0;
      ii = 0;
      for (;;) {
         if (ii == 0) {
            numerator = 1.0;
         } else if (jj == 0) {
            kk = ii / 2;
            den = (aa + 2.0 * kk - 1.0) * (aa + 2.0 * kk);
            numerator = (kk * (bb - kk) * xx) / den;
         } else {
            kk = (ii - 1) / 2;
            den = (aa + 2.0 * kk) * (aa + 2.0 * kk + 1.0);
            numerator = -((aa + kk) * (aa + bb + kk) * xx) / den;
         }
         dd = 1.0 + numerator * dd;
         if (fabs(dd) < DBLEPS * DBLEPS) {
            dd = DBLEPS * DBLEPS;
         }
         dd = 1.0 / dd;
         cc = 1.0 + numerator / cc;
         if (fabs(cc) < DBLEPS * DBLEPS) {
            cc = DBLEPS * DBLEPS;
         }
         cd = cc * dd;
         ff *= cd;
         jj = 1 - ii;
         if (fabs(1.0 - cd) < DBLEPS) {
            break; // loop AWAIT
         }
         ii += 1;
         if (200 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = front * (ff - 1.0);
   }
   return (retvalu);
}
static double lf_digamma_gt_zero(double xx)
{
   double rec_xx_sqr;
   double shift;
   double sxx;
   long ii;
   double sumy;
   shift = 0.0;
   sxx = xx;
   while (sxx < 8.0) {
      shift -= 1.0 / sxx;
      sxx += 1.0;
   }
   rec_xx_sqr = 1.0 / (sxx * sxx);
   sumy = 0.0;
   for (ii = 14; 2 <= ii; ii -= 2) {
      sumy *= rec_xx_sqr;
      sumy += - bernoulli(ii) / ii;
   }
   return ((shift + log(sxx) - 1.0 / (2.0 * sxx) + rec_xx_sqr * sumy));
}
double digamma(double xx)
{
   double sxx;
   double retvalu;
   if (xx <= 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         sxx = 2.0 * xx;
         retvalu = lf_digamma_gt_zero(1.0 - xx) - PI / tan(sxx);
      }
   } else {
      retvalu = lf_digamma_gt_zero(xx);
   }
   return (retvalu);
}
double digammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   scvx_dx = 0.1;
   scvx_xx = exp(yy);
   scvx_yy = yy - digamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - digamma(scvx_xx);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
static double lf_digamma_gt_zero__1(double xx)
{
   double gg;
   double aa_arr[10];
   double sxx;
   double term;
   double lnarg;
   double numer;
   double denom;
   long ii;
   gg = 9.6565781537733158945718737389;
   aa_arr[0] = +1.144005294538510956673085217E+4;
   aa_arr[1] = -3.239880201523183350535979104E+4;
   aa_arr[2] = +3.505145235055716665660834611E+4;
   aa_arr[3] = -1.816413095412607026106469185E+4;
   aa_arr[4] = +4.632329905366668184091382704E+3;
   aa_arr[5] = -5.369767777033567805557478696E+2;
   aa_arr[6] = +2.287544733951810076451548089E+1;
   aa_arr[7] = -2.179257487388651155600822204E-1;
   aa_arr[8] = +1.083148362725893688606893534E-4;
   numer = 0.0;
   denom = 1.0;
   for (ii = 8; 0 <= ii; ii -= 1) {
      sxx = xx + ii;
      term = aa_arr[ii] / sxx;
      denom += term;
      numer += term / sxx;
   }
   lnarg = (gg + xx - 0.5);
   return (log(lnarg) - (gg / lnarg) - numer / denom);
}
double digamma__1(double xx)
{
   double sxx;
   double retvalu;
   if (xx <= 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         sxx = 2.0 * xx;
         retvalu = lf_digamma_gt_zero__1(1.0 - xx) - PI / tan(sxx);
      }
   } else {
      retvalu = lf_digamma_gt_zero__1(xx);
   }
   return (retvalu);
}
double factorialinv(double yy)
{
   return (tgammainv(yy) - 1.0);
}
double facinv(double yy)
{
   return (tgammainv(yy) - 1.0);
}
double hn(double xx)
{
   double sum;
   double kk;
   double fxx;
   if (0.0 < xx) {
      fxx = floor(xx);
      sum = 0.0;
      for (kk = fxx; 1 <= kk; kk -= 1) {
         sum += 1.0 / kk;
      }
   } else {
      sum = 0.0;
   }
   return (sum);
}
double hn__1(double xx)
{
   double yy;
   double retvalu;
   if (0.0 < xx) {
      yy = 1.0 / (xx * xx);
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 / (30.0 * 8.0)) *\
               yy - 1.0 / (42.0 * 6.0)) * yy + 1.0 / (30.0 * 4.0)) * yy -\
               1.0 / (6.0 * 2.0)) * yy + EULER) + log(xx) + 0.5 / xx;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double hnm(double xx
      , double vv)
{
   double sum;
   double kk;
   double fxx;
   fxx = floor(xx);
   sum = 0.0;
   for (kk = fxx; 1 <= kk; kk -= 1) {
      sum += 1.0 / pow(kk, vv);
   }
   return (sum);
}
static double *lv_factorial_arr = NULL;
static long lv_factorial_end = 0;
double factorial(long nn)
{
   // local-use C lv_factorial_end;
   // local-use C lv_factorial_arr;
   long ii;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_factorial_end <= 0) {
         lv_factorial_end = 6;
         lv_factorial_arr = realloc(lv_factorial_arr
            , (lv_factorial_end) * sizeof(lv_factorial_arr[0]));
         lv_factorial_arr[0] = 1;
         lv_factorial_arr[1] = 1;
         lv_factorial_arr[2] = 2;
         lv_factorial_arr[3] = 6;
         lv_factorial_arr[4] = 24;
         lv_factorial_arr[5] = 120;
      }
      if (lv_factorial_end <= nn) {
         ii = lv_factorial_end;
         lv_factorial_end = nn + 1;
         lv_factorial_arr = realloc(lv_factorial_arr
            , (lv_factorial_end) * sizeof(lv_factorial_arr[0]));
         while (ii < lv_factorial_end) {
            lv_factorial_arr[ii] = (ii * lv_factorial_arr[ii - 1]);
            ii += 1;
         }
      }
      retvalu = lv_factorial_arr[nn];
   }
   return (retvalu);
}
static double *lv_factorial_b_arr = NULL;
static long lv_factorial_b_end = 0;
double factorialdouble(long nn)
{
   // local-use C lv_factorial_b_end;
   // local-use C lv_factorial_b_arr;
   double retvalu;
   long ii;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_factorial_b_end <= 0) {
         lv_factorial_b_end = 6;
         lv_factorial_b_arr = realloc(lv_factorial_b_arr
            , (lv_factorial_b_end) * sizeof(lv_factorial_b_arr[0]));
         lv_factorial_b_arr[0] = 1;
         lv_factorial_b_arr[1] = 1;
         lv_factorial_b_arr[2] = 2;
         lv_factorial_b_arr[3] = 3;
         lv_factorial_b_arr[4] = 8;
         lv_factorial_b_arr[5] = 15;
      }
      if (lv_factorial_b_end <= nn) {
         ii = lv_factorial_b_end;
         lv_factorial_b_end = nn + 1;
         lv_factorial_b_arr = realloc(lv_factorial_b_arr
            , (lv_factorial_b_end) * sizeof(lv_factorial_b_arr[0]));
         while (ii < lv_factorial_b_end) {
            lv_factorial_b_arr[ii] = ii * lv_factorial_b_arr[ii - 2];
            ii += 1;
         }
      }
      retvalu = lv_factorial_b_arr[nn];
   }
   return (retvalu);
}
double fac(long nn)
{
   return (factorial(nn));
}
double factorialt(long n_things
      , long r_each)
{
   long ii;
   double retvalu;
   retvalu = 1.0;
   for (ii = r_each + 1; ii <= n_things; ii += 1) {
      retvalu *= ii;
   }
   return (retvalu);
}
double comb(long n_things
      , long r_each)
{
   long ii;
   double retvalu;
   if (r_each < 0 || n_things < r_each) {
      retvalu = 0.0;
   } else {
      if (2 * r_each < n_things) {
         r_each = n_things - r_each;
      }
      retvalu = 1.0;
      for (ii = r_each + 1; ii <= n_things; ii += 1) {
         retvalu *= ii;
         retvalu /= (ii - r_each);
      }
   }
   return (retvalu);
}
double perm(long n_things
      , long r_each)
{
   return (factorialt(n_things, n_things - r_each));
}
double combination(long n_things
      , long r_each)
{
   return (comb(n_things, r_each));
}
double permutation(long n_things
      , long r_each)
{
   return (perm(n_things, r_each));
}
static double *lv_catalan_arr = NULL;
static long lv_catalan_end = 0;
double catalan(long nn)
{
   // local-use C lv_catalan_end;
   // local-use C lv_catalan_arr;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_catalan_end <= 0) {
         lv_catalan_end = 1;
         lv_catalan_arr = realloc(lv_catalan_arr
            , (lv_catalan_end) * sizeof(lv_catalan_arr[0]));
         lv_catalan_arr[0] = 1;
      }
      if (lv_catalan_end <= nn) {
         kk = lv_catalan_end;
         lv_catalan_end = nn + 1;
         lv_catalan_arr = realloc(lv_catalan_arr
            , (lv_catalan_end) * sizeof(lv_catalan_arr[0]));
         while (kk < lv_catalan_end) {
            lv_catalan_arr[kk] = (2.0 * (2.0 * kk - 1.0) *\
                     lv_catalan_arr[kk - 1] / (kk + 1.0));
            kk += 1;
         }
      }
      retvalu = lv_catalan_arr[nn];
   }
   return (retvalu);
}
static double *lv_supercatalan_arr = NULL;
static long lv_supercatalan_end = 0;
double supercatalan(long nn)
{
   // local-use C lv_supercatalan_end;
   // local-use C lv_supercatalan_arr;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_supercatalan_end <= 0) {
         lv_supercatalan_end = 3;
         lv_supercatalan_arr = realloc(lv_supercatalan_arr
            , (lv_supercatalan_end) * sizeof(lv_supercatalan_arr[0]));
         lv_supercatalan_arr[0] = 1;
         lv_supercatalan_arr[1] = 1;
         lv_supercatalan_arr[2] = 1;
      }
      if (lv_supercatalan_end <= nn) {
         kk = lv_supercatalan_end;
         lv_supercatalan_end = nn + 1;
         lv_supercatalan_arr = realloc(lv_supercatalan_arr
            , (lv_supercatalan_end) * sizeof(lv_supercatalan_arr[0]));
         while (kk < lv_supercatalan_end) {
            lv_supercatalan_arr[kk] = (((6 * kk - 9) *\
                     lv_supercatalan_arr[kk - 1] - (kk - 3) *\
                     lv_supercatalan_arr[kk - 2]) / kk);
            kk += 1;
         }
      }
      retvalu = lv_supercatalan_arr[nn];
   }
   return (retvalu);
}
static double *lv_bell_arr = NULL;
static double *lv_bell_x_arr = NULL;
static long lv_bell_end = 0;
double bell(long nn)
{
   // local-use C lv_bell_end;
   // local-use C lv_bell_arr;
   // local-use C lv_bell_x_arr;
   long jj;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_bell_end <= 0) {
         lv_bell_end = 3;
         lv_bell_arr = realloc(lv_bell_arr
            , (lv_bell_end) * sizeof(lv_bell_arr[0]));
         lv_bell_x_arr = realloc(lv_bell_x_arr
            , (lv_bell_end - 1) * sizeof(lv_bell_x_arr[0]));
         lv_bell_arr[0] = 1;
         lv_bell_arr[1] = 1;
         lv_bell_arr[2] = 2;
         lv_bell_x_arr[0] = 2;
         lv_bell_x_arr[1] = 1;
      }
      if (lv_bell_end <= nn) {
         kk = lv_bell_end;
         lv_bell_end = nn + 1;
         lv_bell_arr = realloc(lv_bell_arr
            , (lv_bell_end) * sizeof(lv_bell_arr[0]));
         lv_bell_x_arr = realloc(lv_bell_x_arr
            , (lv_bell_end - 1) * sizeof(lv_bell_x_arr[0]));
         while (kk < lv_bell_end) {
            lv_bell_x_arr[kk - 1] = lv_bell_x_arr[0];
            for (jj = kk - 2; 0 <= jj; jj -= 1) {
               lv_bell_x_arr[jj] += lv_bell_x_arr[jj + 1];
            }
            lv_bell_arr[kk] = lv_bell_x_arr[0];
            kk += 1;
         }
      }
      retvalu = lv_bell_arr[nn];
   }
   return (retvalu);
}
double bellx(double xxn)
{
   double sum;
   long kk;
   double sum_prev;
   double den;
   kk = 0;
   sum = 0.0;
   den = 1.0;
   for (;;) {
      kk += 1;
      den *= kk;
      sum_prev = sum;
      sum += pow(kk, xxn) / den;
      if (iseq(sum_prev, sum)) {
         break; // loop AWAIT
      }
   }
   return (sum / E);
}
double fubini(long nn)
{
   long ii;
   double sum;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else if (nn == 0) {
      retvalu = 1;
   } else {
      sum = 1.0 / (2.0 * TWOLN * TWOLN);
      for (ii = 2; ii <= nn; ii += 1) {
         sum *= ii / TWOLN;
      }
      retvalu = round(sum);
   }
   return (retvalu);
}
long d2lt_d1(long xx
      , long yy)
{
   long retvalu;
   if (0 <= yy && yy <= xx) {
      retvalu = yy + (xx * (xx + 1)) / 2;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
long d1lt_d2(long nn
      , long *ret_arr_p)
{
   long basee;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      basee = floorl((sqrt(1 + 8.0 * nn) - 1) / 2);
      ret_arr_p[1] = nn - basee * (basee + 1) / 2;
      ret_arr_p[0] = basee;
   }
   return (ret_arr_p[0]);
}
long d2ur_d1(long xx
      , long yy)
{
   long retvalu;
   long suma;
   if (0 <= xx && 0 <= yy) {
      suma = (yy + xx);
      retvalu = suma * (suma + 1) / 2 + yy;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
long d1ur_d2(long nn
      , long *ret_arr_p)
{
   long basee;
   long y_coord;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      basee = floorl((sqrt(1 + 8.0 * nn) - 1) / 2);
      y_coord = nn - basee * (basee + 1) / 2;
      ret_arr_p[1] = y_coord;
      ret_arr_p[0] = basee - y_coord;
   }
   return (ret_arr_p[0]);
}
long d2diamond_d1(long xx
      , long yy)
{
   long ss;
   long tt;
   long retvalu;
   if (0 == yy && xx == 0) {
      retvalu = 0;
   } else {
      ss = labs(xx) + labs(yy);
      tt = 2 * ss * (ss - 1) + 1;
      if (0 < xx) {
         retvalu = tt + ss + yy - 1;
      } else {
         retvalu = tt + 3 * ss - yy - 1;
      }
   }
   return (retvalu);
}
long d1diamond_d2(long nn
      , long *ret_arr_p)
{
   long ss;
   long ssq;
   long x_coord;
   if (nn <= 0) {
      x_coord = 0;
      ret_arr_p[1] = 0;
   } else {
      ss = floorl(sqrt(nn) / TWOSQRT);
      ssq = 2 * ss * ss;
      if (nn <= ssq + 2 * ss) {
         ret_arr_p[1] = ssq - nn + ss;
         x_coord = ssq - nn;
         if (ss < - x_coord) {
            x_coord = -x_coord - 2 * ss;
         }
      } else {
         ret_arr_p[1] = nn - ssq - 3 * ss - 1;
         x_coord = nn - ssq - 2 * ss;
         if (ss < x_coord) {
            x_coord = -x_coord + 2 * ss + 2;
         }
      }
   }
   ret_arr_p[0] = x_coord;
   return (x_coord);
}
long d2spiral_d1(long xx
      , long yy)
{
   long retvalu;
   if (xx == 0 && yy == 0) {
      retvalu = 0;
   } else if (labs(xx) <= labs(yy)) {
      retvalu = (4 * yy - 1) * yy - xx;
      if (yy < 0) {
         retvalu -= 2 * (yy - xx);
      }
   } else {
      retvalu = (4 * xx - 1) * xx - yy;
      if (0 < xx) {
         retvalu -= 2 * (xx - yy);
      }
   }
   return (retvalu);
}
long d1spiral_d2(long nn
      , long *ret_arr_p)
{
   long sqrtnn;
   long newdd;
   long fxd;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      sqrtnn = floorl(sqrt(nn));
      if (iseven(sqrtnn)) {
         fxd = -sqrtnn / 2;
      } else {
         fxd = (sqrtnn + 1) / 2;
      }
      newdd = nn - sqrtnn * sqrtnn;
      if (newdd <= sqrtnn) {
         ret_arr_p[0] = fxd;
         if (fxd < 0) {
            ret_arr_p[1] = -fxd - newdd;
         } else {
            ret_arr_p[1] = -fxd + newdd + 1;
         }
      } else {
         ret_arr_p[1] = fxd;
         newdd -= sqrtnn;
         if (fxd < 0) {
            ret_arr_p[0] = fxd + newdd;
         } else {
            ret_arr_p[0] = fxd - newdd;
         }
      }
   }
   return (ret_arr_p[0]);
}
long d2hypot_d1(long xx
      , long yy)
{
   long retvalu;
   long xlim;
   double dist;
   long distsq;
   long count;
   long ixx;
   long nyy;
   long nyysq;
   long xmax;
   if (0 <= yy && yy <= xx) {
      distsq = xx * xx + yy * yy;
      dist = sqrt(distsq);
      xlim = floorl(dist / TWOSQRT);
      xmax = floorl(dist);
      count = 0;
      for (ixx = xlim; ixx <= xmax; ixx += 1) {
         nyysq = distsq - ixx * ixx;
         nyy = ceill(sqrt(nyysq));
         if (ixx < nyy) {
            count += ixx + 1;
         } else {
            count += nyy;
            if (ixx < xx && nyy * nyy == nyysq) {
               count += 1;
            }
         }
      }
      retvalu = count + (xlim) * (xlim + 1) / 2;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
double binomialx(double xnn
      , double xkk)
{
   return (tgamma(xnn + 1) / (tgamma(xkk + 1) * tgamma(xnn + 1 - xkk)));
}
static double *lv_binom_arr = NULL;
static long lv_binom_end = 0;
static long lv_binom_max = 0;
long binomial(long nn
      , long kk)
{
   // local-use C lv_binom_arr;
   // local-use C lv_binom_end;
   // local-use C lv_binom_max;
   long rz_ind;
   long lz_ind;
   long rr;
   long ul_ind;
   long retvalu;
   if (nn < kk || nn < 0 || kk < 0) {
      retvalu = 0;
   } else {
      if (lv_binom_end <= 0) {
         lv_binom_max = 2;
         lv_binom_end = d2lt_d1(lv_binom_max, 0);
         lv_binom_arr = realloc(lv_binom_arr
            , (lv_binom_end) * sizeof(lv_binom_arr[0]));
         lv_binom_arr[0] = 1;
         lv_binom_arr[1] = 1;
         lv_binom_arr[2] = 1;
      }
      rr = lv_binom_max;
      if (rr < nn + 1) {
         lv_binom_end = d2lt_d1(nn + 1, 0);
         lv_binom_arr = realloc(lv_binom_arr
            , (lv_binom_end) * sizeof(lv_binom_arr[0]));
         while (rr <= nn) {
            ul_ind = d2lt_d1(rr - 1, 0);
            lz_ind = ul_ind + rr;
            lv_binom_arr[lz_ind] = 1;
            rz_ind = lz_ind + rr;
            while (lz_ind < rz_ind) {
               lv_binom_arr[rz_ind] = lv_binom_arr[lz_ind];
               rz_ind -= 1;
               lz_ind += 1;
               lv_binom_arr[lz_ind] = (lv_binom_arr[ul_ind] +\
                        lv_binom_arr[ul_ind + 1]);
               ul_ind += 1;
            }
            rr += 1;
         }
         lv_binom_max = rr;
      }
      retvalu = lv_binom_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_euler_arr = NULL;
static long lv_euler_end = 0;
static long lv_euler_max = 0;
double eulerian(long nn
      , long kk)
{
   // local-use C lv_euler_arr;
   // local-use C lv_euler_end;
   // local-use C lv_euler_max;
   long jj;
   long ii;
   long lz_ind;
   long rz_ind;
   long ul_ind;
   double retvalu;
   if (nn < kk || nn < 0 || kk < 0) {
      retvalu = 0;
   } else {
      if (lv_euler_end <= 0) {
         lv_euler_max = 3;
         lv_euler_end = d2lt_d1(lv_euler_max, 0);
         lv_euler_arr = realloc(lv_euler_arr
            , (lv_euler_end) * sizeof(lv_euler_arr[0]));
         lv_euler_arr[0] = 0;
         lv_euler_arr[1] = 1;
         lv_euler_arr[2] = 0;
         lv_euler_arr[3] = 1;
         lv_euler_arr[4] = 1;
         lv_euler_arr[5] = 0;
      }
      ii = lv_euler_max;
      if (ii < nn + 1) {
         lv_euler_end = d2lt_d1(nn + 1, 0);
         lv_euler_arr = realloc(lv_euler_arr
            , (lv_euler_end) * sizeof(lv_euler_arr[0]));
         while (ii <= nn) {
            lz_ind = d2lt_d1(ii, 0);
            lv_euler_arr[lz_ind] = 1;
            lv_euler_arr[lz_ind + ii] = 0;
            rz_ind = lz_ind + ii - 1;
            ul_ind = d2lt_d1(ii - 1, 0);
            jj = 1;
            while (lz_ind < rz_ind) {
               lv_euler_arr[rz_ind] = lv_euler_arr[lz_ind];
               lz_ind += 1;
               lv_euler_arr[lz_ind] = ((ii - jj) * lv_euler_arr[ul_ind] +\
                        (jj + 1) * lv_euler_arr[ul_ind + 1]);
               ul_ind += 1;
               rz_ind -= 1;
               jj += 1;
            }
            ii += 1;
            lv_euler_max = ii;
         }
      }
      retvalu = lv_euler_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_entringer_arr = NULL;
static long lv_entringer_end = 0;
static long lv_entringer_max = 0;
double entringer(long nn
      , long kk)
{
   // local-use C lv_entringer_arr;
   // local-use C lv_entringer_max;
   // local-use C lv_entringer_end;
   long ii;
   long inda;
   long jj;
   double retvalu;
   if (nn <= 0 || kk < 0 || nn < kk) {
      retvalu = 0;
   } else {
      if (lv_entringer_end <= 0) {
         lv_entringer_max = 1;
         lv_entringer_end = d2lt_d1(lv_entringer_max, 0);
         lv_entringer_arr = realloc(lv_entringer_arr
            , (lv_entringer_end) * sizeof(lv_entringer_arr[0]));
         lv_entringer_arr[0] = 1;
      }
      jj = lv_entringer_max;
      if (jj < nn + 1) {
         lv_entringer_end = d2lt_d1(nn + 1, 0);
         lv_entringer_arr = realloc(lv_entringer_arr
            , (lv_entringer_end) * sizeof(lv_entringer_arr[0]));
         while (jj <= nn) {
            inda = d2lt_d1(jj, 0);
            lv_entringer_arr[inda] = 0;
            for (ii = 1; ii <= jj; ii += 1) {
               lv_entringer_arr[inda + ii] = lv_entringer_arr[inda - ii]\
                        + lv_entringer_arr[inda + ii - 1];
            }
            jj += 1;
            lv_entringer_max = jj;
         }
      }
      retvalu = lv_entringer_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
double zigzag(long nn)
{
   return (entringer(nn, nn));
}
double zig(long nn)
{
   return (zigzag(2 * nn));
}
double zag(long nn)
{
   return (zigzag(2 * nn - 1));
}
double eulerx(long nn)
{
   double retvalu;
   if (nn <= 0 || isodd(nn)) {
      retvalu = 0;
   } else {
      retvalu = entringer(nn, nn);
   }
   return (retvalu);
}
double ballot(double xmm
      , double xnn)
{
   return (fabs(xnn - xmm) / (xmm + xnn));
}
double ballots(double xmm
      , double xnn)
{
   double retvalu;
   if (xmm < xnn) {
      retvalu = (xnn - xmm + 1.0) / (xnn + 1.0);
   } else {
      retvalu = (xmm - xnn + 1.0) / (xmm + 1.0);
   }
   return (retvalu);
}
static double *lv_stir_a_arr = NULL;
static long lv_stir_a_end = 0;
static long lv_stir_a_max = 0;
double stirling1(long nn
      , long kk)
{
   // local-use C lv_stir_a_arr;
   // local-use C lv_stir_a_end;
   // local-use C lv_stir_a_max;
   long col_k;
   long ul_ind;
   long cz_ind;
   long ii;
   double retvalu;
   if (nn < 0 || kk < 0 || nn < kk) {
      retvalu = 0;
   } else {
      if (lv_stir_a_max <= 0) {
         lv_stir_a_max = 2;
         lv_stir_a_end = d2lt_d1(lv_stir_a_max, 0);
         lv_stir_a_arr = realloc(lv_stir_a_arr
            , (lv_stir_a_end) * sizeof(lv_stir_a_arr[0]));
         lv_stir_a_arr[0] = 1;
         lv_stir_a_arr[1] = 0;
         lv_stir_a_arr[2] = 1;
      }
      ii = lv_stir_a_max;
      if (ii < nn + 1) {
         lv_stir_a_end = d2lt_d1(nn + 1, 0);
         lv_stir_a_arr = realloc(lv_stir_a_arr
            , (lv_stir_a_end) * sizeof(lv_stir_a_arr[0]));
         while (ii <= nn) {
            cz_ind = d2lt_d1(ii, 0);
            lv_stir_a_arr[cz_ind] = 0;
            cz_ind += 1;
            ul_ind = d2lt_d1(ii - 1, 0);
            for (col_k = 1; col_k <= ii - 1; col_k += 1) {
               lv_stir_a_arr[cz_ind] = (lv_stir_a_arr[ul_ind] - (ii - 1)\
                        * lv_stir_a_arr[ul_ind + 1]);
               ul_ind += 1;
               cz_ind += 1;
            }
            lv_stir_a_arr[cz_ind] = 1;
            ii += 1;
            lv_stir_a_max = ii;
         }
      }
      retvalu = lv_stir_a_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_stir_b_arr = NULL;
static long lv_stir_b_end = 0;
static long lv_stir_b_max = 0;
double stirling2(long nn
      , long kk)
{
   // local-use C lv_stir_b_arr;
   // local-use C lv_stir_b_end;
   // local-use C lv_stir_b_max;
   long col_k;
   long ul_ind;
   long cz_ind;
   long ii;
   double retvalu;
   if (nn < kk || nn < 0 || kk < 0) {
      retvalu = 0;
   } else {
      if (lv_stir_b_end <= 0) {
         lv_stir_b_max = 2;
         lv_stir_b_end = d2lt_d1(lv_stir_b_max, 0);
         lv_stir_b_arr = realloc(lv_stir_b_arr
            , (lv_stir_b_end) * sizeof(lv_stir_b_arr[0]));
         lv_stir_b_arr[0] = 1;
         lv_stir_b_arr[1] = 0;
         lv_stir_b_arr[2] = 1;
      }
      ii = lv_stir_b_max;
      if (ii < nn + 1) {
         lv_stir_b_end = d2lt_d1(nn + 1, 0);
         lv_stir_b_arr = realloc(lv_stir_b_arr
            , (lv_stir_b_end) * sizeof(lv_stir_b_arr[0]));
         while (ii <= nn) {
            cz_ind = d2lt_d1(ii, 0);
            lv_stir_b_arr[cz_ind] = 0;
            cz_ind += 1;
            ul_ind = d2lt_d1(ii - 1, 0);
            for (col_k = 1; col_k <= ii - 1; col_k += 1) {
               lv_stir_b_arr[cz_ind] = (lv_stir_b_arr[ul_ind] + col_k *\
                        lv_stir_b_arr[ul_ind + 1]);
               ul_ind += 1;
               cz_ind += 1;
            }
            lv_stir_b_arr[cz_ind] = 1;
            ii += 1;
            lv_stir_b_max = ii;
         }
      }
      retvalu = lv_stir_b_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_bern_n_arr = NULL;
static double *lv_bern_d_arr = NULL;
static long lv_bern_end = 0;
double bernoulli(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   // local-use C lv_bern_end;
   double retvalu;
   long sz_ind;
   double coeff;
   double sumn;
   double sumd;
   long jj;
   long ii;
   double gdn;
   double nsumn;
   double nsumd;
   double xkk;
   long nnhalf;
   if (nn == 1) {
      retvalu = -0.5;
   } else if (nn < 0 || isodd(nn)) {
      retvalu = 0.0;
   } else {
      if (lv_bern_end <= 0) {
         lv_bern_end = 3;
         lv_bern_n_arr = realloc(lv_bern_n_arr
            , (lv_bern_end) * sizeof(lv_bern_n_arr[0]));
         lv_bern_d_arr = realloc(lv_bern_d_arr
            , (lv_bern_end) * sizeof(lv_bern_d_arr[0]));
         lv_bern_n_arr[0] = 1;
         lv_bern_n_arr[1] = 1;
         lv_bern_n_arr[2] = -1;
         lv_bern_d_arr[0] = 1;
         lv_bern_d_arr[1] = 6;
         lv_bern_d_arr[2] = 30;
      }
      nnhalf = floorl(nn / 2);
      if (lv_bern_end <= nnhalf) {
         ii = lv_bern_end;
         lv_bern_end = nnhalf + 1;
         lv_bern_n_arr = realloc(lv_bern_n_arr
            , (lv_bern_end) * sizeof(lv_bern_n_arr[0]));
         lv_bern_d_arr = realloc(lv_bern_d_arr
            , (lv_bern_end) * sizeof(lv_bern_d_arr[0]));
         while (ii < lv_bern_end) {
            sz_ind = 2 * ii;
            coeff = ((sz_ind + 1) * sz_ind) / 2;
            sumn = 1.0 - sz_ind;
            sumd = 2.0;
            for (jj = 1; jj <= ii - 1; jj += 1) {
               nsumn = round(sumn * lv_bern_d_arr[jj] + sumd * coeff *\
                        lv_bern_n_arr[jj]);
               nsumd = round(sumd * lv_bern_d_arr[jj]);
               gdn = gcd(nsumn, nsumd);
               sumn = nsumn / gdn;
               sumd = nsumd / gdn;
               xkk = 2 * jj;
               coeff *= (sz_ind - xkk + 1.0) / (xkk + 1.0);
               coeff *= (sz_ind - xkk) / (xkk + 2.0);
               coeff = round(coeff);
            }
            sumd *= (sz_ind + 1);
            gdn = gcd(sumn, sumd);
            lv_bern_n_arr[ii] = -sumn / gdn;
            lv_bern_d_arr[ii] = sumd / gdn;
            ii += 1;
         }
      }
      retvalu = lv_bern_n_arr[nnhalf] / lv_bern_d_arr[nnhalf];
   }
   return (retvalu);
}
long bernoullin(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   long retvalu;
   if (nn == 1) {
      retvalu = -1;
   } else if (isodd(nn) || nn < 0) {
      retvalu = 0;
   } else {
      retvalu = bernoulli(nn);
      retvalu = lv_bern_n_arr[nn / 2];
   }
   return (retvalu);
}
long bernoullid(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   long retvalu;
   if (nn == 1) {
      retvalu = 2;
   } else if (isodd(nn) || nn < 0) {
      retvalu = 1;
   } else {
      retvalu = bernoulli(nn);
      retvalu = lv_bern_d_arr[nn / 2];
   }
   return (retvalu);
}
double birthday(double xnn
      , double xrr)
{
   double prob;
   long ii;
   prob = 1.0;
   for (ii = 1; ii <= xrr - 1; ii += 1) {
      prob *= (xnn - ii) / xnn;
   }
   return (prob);
}
double birthdayinv(double xnn
      , double xprob)
{
   double xrr;
   double cprob;
   cprob = 1.0;
   xrr = 1.0;
   while (xprob < cprob) {
      cprob *= (xnn - xrr) / xnn;
      xrr += 1;
   }
   return (xrr);
}
long n2perm(long nth
      , long nn
      , long *ret_perm_arr_p)
{
   long ii;
   long jj;
   long kk;
   long nthmod;
   long *pat_arr = NULL;
   long *source_arr = NULL;
   long sz_ind;
   pat_arr = realloc(pat_arr
      , (nn) * sizeof(pat_arr[0]));
   source_arr = realloc(source_arr
      , (nn) * sizeof(source_arr[0]));
   nthmod = modulo(nth, factorial(nn));
   kk = nthmod;
   for (ii = 1; ii <= nn; ii += 1) {
      pat_arr[nn - ii] = kk % ii;
      kk = floor(kk / ii);
      source_arr[ii - 1] = ii - 1;
   }
   for (ii = 0; ii <= nn - 1; ii += 1) {
      sz_ind = pat_arr[ii];
      ret_perm_arr_p[ii] = source_arr[sz_ind];
      for (jj = sz_ind; jj <= nn - ii - 2; jj += 1) {
         source_arr[jj] = source_arr[jj + 1];
      }
   }
   free(pat_arr);
   free(source_arr);
   return (nthmod);
}
long n2comb(long nth
      , long nn
      , long rr
      , long *ret_comb_arr_p)
{
   long kk;
   long cc;
   long qq;
   long ss;
   long pp;
   long nthmod;
   nthmod = modulo(nth, comb(nn, rr));
   kk = comb(nn, rr) - nthmod;
   for (ss = 0; ss <= rr - 1; ss += 1) {
      pp = rr - ss;
      cc = 1;
      qq = 1;
      while (cc < kk) {
         kk -= cc;
         cc = (cc * pp) / qq;
         qq += 1;
         pp += 1;
      }
      ret_comb_arr_p[ss] = nn - pp;
   }
   return (nthmod);
}
long n2perm_print(long nth
      , long nn)
{
   long *perm_arr = NULL;
   long jj;
   perm_arr = realloc(perm_arr
      , (nn) * sizeof(perm_arr[0]));
   jj = n2perm(nth, nn, perm_arr);
   (void) print_array(nn, perm_arr);
   free(perm_arr);
   return (jj);
}
long n2comb_print(long nth
      , long nn
      , long rr)
{
   long *comb_arr = NULL;
   long jj;
   comb_arr = realloc(comb_arr
      , (rr) * sizeof(comb_arr[0]));
   jj = n2comb(nth, nn, rr, comb_arr);
   (void) print_array(rr, comb_arr);
   free(comb_arr);
   return (jj);
}
double pochhammer(long nn
      , double xx)
{
   double retvalu;
   long ii;
   if (0 < nn) {
      retvalu = xx;
      for (ii = 1; ii <= nn; ii += 1) {
         retvalu *= (xx + ii);
      }
   } else if (nn < 0) {
      retvalu = xx;
      for (ii = -1; nn <= ii; ii -= 1) {
         retvalu *= (xx + ii);
      }
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
long days_in_month(long g_year
      , long g_month)
{
   long retvalu;
   if (g_month == 2) {
      if (isleapyear(g_year)) {
         retvalu = 29;
      } else {
         retvalu = 28;
      }
   } else if ((6 * g_month + 1) % 11 < 5) {
      retvalu = 30;
   } else {
      retvalu = 31;
   }
   return (retvalu);
}
double sec2dhms(double seconds)
{
   double dy;
   double hr;
   double mn;
   double tm;
   double sg;
   if (seconds < 0.0) {
      sg = -1.0;
   } else {
      sg = 1.0;
   }
   dy = floor(seconds * SECOND / DAY);
   tm = (seconds * SECOND / DAY - dy) * DAY / HOUR;
   hr = floor(tm);
   tm = (tm - hr) * HOUR / MINUTE;
   mn = floor(tm);
   tm = (tm - mn) * MINUTE / SECOND;
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0);
}
double day2dhms(double dayfrac)
{
   double dy;
   double hr;
   double mn;
   double tm;
   double sg;
   if (dayfrac < 0.0) {
      sg = -1.0;
   } else {
      sg = 1.0;
   }
   dy = floor(dayfrac);
   tm = (dayfrac - dy) * DAY / HOUR;
   hr = floor(tm);
   tm = (tm - hr) * HOUR / MINUTE;
   mn = floor(tm);
   tm = (tm - mn) * MINUTE / SECOND;
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0);
}
double day2dhmsinv(double xx_hms)
{
   double dy;
   double hr;
   double mn;
   double tm;
   dy = floor(xx_hms);
   tm = (xx_hms - dy) * 100.0;
   hr = floor(tm);
   tm = (tm - hr) * 100.0;
   mn = floor(tm);
   tm = (tm - mn) * 100.0;
   return (dy + (hr * HOUR + mn * MINUTE + tm * SECOND) / DAY);
}
double hms2day(double hourx
      , double minutex
      , double secondx)
{
   return ((secondx * SECOND + minutex * MINUTE + hourx * HOUR) / DAY);
}
double hour2day(double hourx)
{
   return (hourx * HOUR / DAY);
}
double day2hour(double dayx)
{
   return (dayx * DAY / HOUR);
}
double jd2kwt(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0KWT) / KWT);
}
double jd2j2k(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0J2K) / J2KDAY);
}
double jd2uet(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0UET) / UET);
}
double kwt2jd(double kwttime)
{
   return ((kwttime * KWT + JDSEC_AT_0KWT) / JDAY);
}
double uet2jd(double uettime)
{
   return ((uettime * UET + JDSEC_AT_0UET) / JDAY);
}
double j2k2jd(double jtwoktm)
{
   return ((jtwoktm * J2KDAY + JDSEC_AT_0J2K) / JDAY);
}
double j2k2kwt(double jtwoktm)
{
   return (jd2kwt(j2k2jd(jtwoktm)));
}
double j2k2uet(double jtwoktm)
{
   return (jd2uet(j2k2jd(jtwoktm)));
}
double kwt2j2k(double kwttime)
{
   return (jd2j2k(kwt2jd(kwttime)));
}
double kwt2uet(double kwttime)
{
   return (jd2uet(kwt2jd(kwttime)));
}
double uet2kwt(double uettime)
{
   return (jd2kwt(uet2jd(uettime)));
}
double uet2j2k(double uettime)
{
   return (jd2j2k(uet2jd(uettime)));
}
long jd2dow(double jjd)
{
   long jjtemp;
   jjtemp = floor(jjd + 1.5);
   return (jjtemp % 7);
}
long j2k2dow(double jtwok)
{
   long jjtemp;
   jjtemp = floor(jtwok + 6.5);
   return (jjtemp % 7);
}
double ymd2doy(long g_year
      , long g_month
      , double g_daymon)
{
   double delta;
   if (2 < g_month) {
      delta = floor(30.6001 * g_month - 32.3);
      if (isleapyear(g_year)) {
         delta += 1;
      }
   } else if (g_month == 2) {
      delta = 31;
   } else {
      delta = 0;
   }
   return (delta + g_daymon);
}
double ymd2j2k__1(double g_year
      , double g_month
      , double g_day)
{
   double yr;
   double mn;
   double jtwok;
   double jcen;
   double dayoffset;
   yr = g_year - GYEAR_AT_0J2K;
   mn = g_month;
   if (mn < 3) {
      mn += MONTHS_IN_YEAR;
      yr -= 1;
   }
   jcen = floor(yr / 100);
   dayoffset = jcen - floor(jcen / 4.0) + 31.3;
   jtwok = (floor(yr * JYEAR / JDAY) + floor(30.6001 * mn - dayoffset) +\
            g_day - 1.5);
   return (jtwok);
}
double ymd2j2k(double g_year
      , double g_month
      , double g_day)
{
   double yr;
   double mn;
   double jtwok;
   long jcen;
   yr = g_year - GYEAR_AT_0J2K;
   mn = g_month;
   jcen = floor((yr - 1) / 100);
   jtwok = (floor(yr * JYEAR / JDAY - 0.001) + floor(jcen / 4.0) - jcen +\
            ymd2doy(yr, mn, g_day) - 0.5);
   return (jtwok);
}
double ymd2jd(double g_year
      , double g_month
      , double g_day)
{
   return (j2k2jd(ymd2j2k(g_year, g_month, g_day)));
}
long ymd2dow(long g_year
      , long g_month
      , double g_daymon)
{
   return (jd2dow(ymd2jd(g_year, g_month, g_daymon)));
}
long doomsday(long g_year)
{
   long cc;
   long yy;
   long lps;
   long anchor;
   long retvalu;
   cc = floor(g_year / 100);
   anchor = (cc % 4) * 5 + 2;
   yy = g_year % 100;
   lps = floor(yy / 4);
   retvalu = (anchor + yy + lps) % 7;
   return (retvalu);
}
static const int LC_GD_YEAR = 0;
static const int LC_GD_MONTH = 1;
static const int LC_GD_DAY = 2;
static const int LC_GD_HOUR = 3;
static const int LC_GD_MIN = 4;
static const int LC_GD_SEC = 5;
static const int LC_GD_DOW = 6;
static const int LC_GD_NUM = 7;
static const int LC_GD_JD = 8;
#define LC_GD_CNT 9
static double lv_ymdhms_arr[20];
double jd2ymdhms(double jjulid)
{
   // local-use C lv_ymdhms_arr;
   long jcent;
   long bbdays;
   long bdiff;
   long g_years;
   long month_next;
   double ftime_frac;
   double dtime_rem;
   long ijulian;
   lv_ymdhms_arr[LC_GD_JD] = jjulid;
   ftime_frac = frac(jjulid + 0.5);
   ijulian = floor(jjulid + 0.5);
   jcent = floor(((ijulian - 60.5) * JDAY - JDSEC_AT_0GREGORIAN) / (100.0\
            * GYEAR));
   bbdays = ijulian + jcent - floor(jcent / 4.0);
   g_years = floor((bbdays + 1399.9) * JDAY / JYEAR);
   bdiff = bbdays - floor(g_years * JYEAR / JDAY) + 1522;
   month_next = floor(bdiff / 30.6001);
   dtime_rem = bdiff - floor(30.6001 * month_next) + ftime_frac;
   lv_ymdhms_arr[LC_GD_YEAR] = g_years - 4716.0;
   if (13 < month_next) {
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 13;
   } else {
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 1;
   }
   if (lv_ymdhms_arr[LC_GD_MONTH] < 3) {
      lv_ymdhms_arr[LC_GD_YEAR] += 1;
   }
   lv_ymdhms_arr[LC_GD_DAY] = floor(dtime_rem);
   dtime_rem = DAY / HOUR * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_HOUR] = floor(dtime_rem);
   dtime_rem = HOUR / MINUTE * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_MIN] = floor(dtime_rem);
   dtime_rem = MINUTE / SECOND * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_SEC] = dtime_rem;
   lv_ymdhms_arr[LC_GD_DOW] = floor(fmod(ijulian + 1.0, 7.0));
   dtime_rem = (lv_ymdhms_arr[LC_GD_MONTH] * 100.0 +\
            lv_ymdhms_arr[LC_GD_DAY] + lv_ymdhms_arr[LC_GD_HOUR] / 100.0\
            + lv_ymdhms_arr[LC_GD_MIN] / 10000.0 +\
            lv_ymdhms_arr[LC_GD_SEC] / 1000000.0);
   ftime_frac = lv_ymdhms_arr[LC_GD_YEAR] * 10000.0;
   if (ftime_frac < 0.0) {
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac - dtime_rem;
   } else {
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac + dtime_rem;
   }
   return (lv_ymdhms_arr[LC_GD_NUM]);
}
double j2k2ymdhms(double jtwokd)
{
   return (jd2ymdhms(j2k2jd(jtwokd)));
}
double ymdhms_get(long indexp)
{
   // local-use C lv_ymdhms_arr;
   double retvalu;
   if (LC_GD_YEAR <= indexp && indexp < LC_GD_CNT) {
      retvalu = lv_ymdhms_arr[indexp];
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
double jd2ymdhmsinv(void)
{
   // local-use C lv_ymdhms_arr;
   return (ymd2jd(lv_ymdhms_arr[LC_GD_YEAR], lv_ymdhms_arr[LC_GD_MONTH],\
            lv_ymdhms_arr[LC_GD_DAY]) + hms2day(lv_ymdhms_arr[LC_GD_HOUR]\
            , lv_ymdhms_arr[LC_GD_MIN], lv_ymdhms_arr[LC_GD_SEC]) * DAY /\
            JDAY);
}
double jd264_print(double jjulid)
{
   (void) jd2ymdhms(jjulid);
   (void) base_out_print(ymdhms_get(LC_GD_YEAR), 64);
   (void) base_out_print(ymdhms_get(LC_GD_MONTH), 64);
   (void) base_out_print(ymdhms_get(LC_GD_DAY), 64);
   (void) base_out_print(ymdhms_get(LC_GD_HOUR), 64);
   (void) base_out_print(ymdhms_get(LC_GD_MIN), 64);
   (void) base_outf_print(ymdhms_get(LC_GD_SEC), 64);
   return (jjulid);
}
double ymdhms2jd(double ymdhmsx)
{
   double xx_arr[LC_GD_CNT];
   double ys;
   ys = ymdhmsx * (1.0 + DBLEPS);
   xx_arr[LC_GD_YEAR] = floor(ys / 10000.0);
   if (ys < 0) {
      ys = -ys;
   }
   xx_arr[LC_GD_MONTH] = fmodu(floor(ys / 100.0), 100.0);
   xx_arr[LC_GD_DAY] = fmodu(floor(ys), 100.0);
   xx_arr[LC_GD_HOUR] = fmodu(floor(ys * 100.0), 100.0);
   xx_arr[LC_GD_MIN] = fmodu(floor(ys * 10000.0), 100.0);
   xx_arr[LC_GD_SEC] = frac(ys * 10000.0) * 100.0;
   return (ymd2jd(xx_arr[LC_GD_YEAR], xx_arr[LC_GD_MONTH],\
            xx_arr[LC_GD_DAY]) + hms2day(xx_arr[LC_GD_HOUR],\
            xx_arr[LC_GD_MIN], xx_arr[LC_GD_SEC]) * DAY / JDAY);
}
double ymdhms2j2k(double ymdhmsx)
{
   return (jd2j2k(ymdhms2jd(ymdhmsx)));
}
double clocksec(double secnds)
{
   return (frac(secnds / MINUTE) * TAU);
}
double clockmin(double secnds)
{
   return (frac(secnds / HOUR) * TAU);
}
double clockhour(double secnds)
{
   return (frac(secnds / (DAY / 2)) * TAU);
}
double clocksum(double secnds)
{
   double sc;
   double mn;
   double hr;
   sc = clocksec(secnds);
   mn = clockmin(secnds);
   hr = clockhour(secnds);
   return (dist(sc - mn, TAU) + dist(hr - mn, TAU) + dist(sc - hr, TAU));
}
double clockstdev(double secnds)
{
   double sc;
   double mn;
   double hr;
   double da;
   double db;
   double dc;
   sc = clocksec(secnds);
   mn = clockmin(secnds);
   hr = clockhour(secnds);
   da = dist(sc - mn, TAU);
   db = dist(hr - mn, TAU);
   dc = dist(sc - hr, TAU);
   return (sqrt((da * da + db * db + dc * dc - square(da + db + dc) /\
            3.0) / 2.0));
}
static const int LC_HALAQIM_PER_HOUR = 1080;
#define LX_HALAQIM (HOUR / LC_HALAQIM_PER_HOUR)
static const int LC_YEAR_PER_METONIC = 19;
long date_easter(long g_year)
{
   long century;
   long ii;
   long dow;
   long kk;
   long jj;
   long skipped_leap;
   long modmet;
   long leap_years;
   century = floor(g_year / 100);
   modmet = g_year % LC_YEAR_PER_METONIC;
   skipped_leap = century - floor(century / 4);
   leap_years = floor(g_year / 4);
   kk = floor((century + 8) / 25 - 1);
   jj = floor((century - kk) / 3);
   ii = (skipped_leap - jj + LC_YEAR_PER_METONIC * modmet + 15) % 30;
   if (28 < ii || (ii == 28 && 10 < modmet)) {
      ii -= 1;
   }
   dow = (g_year + leap_years + ii + 2 - skipped_leap) % 7;
   return (ii - dow + 28);
}
double date_rosh_hashanah(long g_year)
{
   long aa;
   double dos;
   long day_of_september;
   double parts;
   long doww;
   double am;
   aa = (12 * g_year + 12) % LC_YEAR_PER_METONIC;
   am = round(MOON_MONTH / LX_HALAQIM) * aa - 1565.0 * g_year;
   dos = floor(g_year / 100) - floor(g_year / 400) - 2 + (g_year % 4) /\
            4.0 + (am - 445405) / (LC_YEAR_PER_METONIC * DAY / LX_HALAQIM);
   day_of_september = floor(dos);
   parts = (dos - day_of_september) * DAY / LX_HALAQIM;
   doww = ymd2dow(g_year, 9, day_of_september);
   if (doww == 0 || doww == 3 || doww == 5) {
      day_of_september += 1;
   } else if (doww == 1 && 11 < aa && 23269 <= parts) {
      day_of_september += 1;
   } else if (doww == 2 && 6 < aa && 16404 <= parts) {
      day_of_september += 2;
   }
   return (day_of_september - 0.25);
}
double jewish2jdx(long hebyear)
{
   long months_el;
   long halaqims_el;
   long hour_el;
   long hq_left;
   long days_left;
   long alt_days;
   long alt_dow;
   long hymod;
   hymod = (hebyear - 1) % LC_YEAR_PER_METONIC;
   months_el = (235 * floor((hebyear - 1) / LC_YEAR_PER_METONIC) + 12 *\
            hymod + floor((7 * hymod + 1) / LC_YEAR_PER_METONIC));
   halaqims_el = 204 + (793 * (months_el % LC_HALAQIM_PER_HOUR));
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el /\
            LC_HALAQIM_PER_HOUR) + floor(halaqims_el / LC_HALAQIM_PER_HOUR));
   days_left = floor(hour_el / (DAY / HOUR)) + 1 + 29 * months_el;
   alt_days = days_left + 347996;
   alt_dow = (alt_days % iround(WEEK / DAY));
   hq_left = (halaqims_el % LC_HALAQIM_PER_HOUR);
   hq_left += DAY * frac(hour_el * HOUR / DAY) / LX_HALAQIM;
   if (19440 <= hq_left) {
      if (0 == alt_dow || 2 == alt_dow || 4 == alt_dow) {
         alt_days += 2;
      } else {
         alt_days += 1;
      }
   } else if (0 == alt_dow) {
      if (9924 <= hq_left) {
         if (! isjewishleap(hebyear)) {
            alt_days += 2;
         }
      }
   } else if (6 == alt_dow) {
      if (16789 <= hq_left && isjewishleap(hebyear - 1)) {
         alt_days += 1;
      }
   } else if (1 == alt_dow || 3 == alt_dow || 5 == alt_dow) {
      alt_days += 1;
   }
   return (alt_days + 0.25);
}
long isjewishleap(long hebyear)
{
   return ((7 * hebyear + 1) % LC_YEAR_PER_METONIC < 7);
}
double date_pesach(long g_year)
{
   double rh;
   rh = date_rosh_hashanah(g_year);
   return (rh + 21);
}
long g2jewish(long g_year)
{
   return (g_year + 3761);
}
long jewish2g(long hebyear)
{
   return (hebyear - 3760);
}
long jewish_months_in_year(long hebyear)
{
   long miy;
   if (isjewishleap(hebyear)) {
      miy = 13;
   } else {
      miy = 12;
   }
   return (miy);
}
long jewish_yearlength(long hebyear)
{
   long g_year;
   long retvalu;
   g_year = jewish2g(hebyear - 1);
   retvalu = (floor(JYEAR / JDAY) + (date_rosh_hashanah(g_year + 1) -\
            date_rosh_hashanah(g_year)));
   if (isleapyear(g_year + 1)) {
      retvalu += 1;
   }
   return (retvalu);
}
double jewish2jd(long hebyear)
{
   long gregyear;
   gregyear = jewish2g(hebyear - 1);
   return (ymd2jd(gregyear, 9, date_rosh_hashanah(gregyear)));
}
long isjewish8short(long hebyear)
{
   long remten;
   remten = jewish_yearlength(hebyear) % 10;
   return (remten != 5);
}
long isjewish9short(long hebyear)
{
   long remten;
   remten = jewish_yearlength(hebyear) % 10;
   return (remten == 3);
}
long jewish_monthlength(long hebyear
      , long hebmonth)
{
   long retvalu;
   retvalu = 30;
   if (hebmonth < 1 || 13 < hebmonth) {
      retvalu = 0;
   } else if (hebmonth < 8) {
      if (iseven(hebmonth)) {
         retvalu = 29;
      }
   } else if (hebmonth == 8) {
      if (isjewish8short(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 9) {
      if (isjewish9short(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 10) {
      retvalu = 29;
   } else if (hebmonth == 11) {
      retvalu = 30;
   } else if (hebmonth == 12) {
      if (! isjewishleap(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 13 && isjewishleap(hebyear)) {
      retvalu = 29;
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
long jewish_monthbegin(long hebyear
      , long hmonth)
{
   long g_year;
   long g_month;
   long hm;
   double gdate;
   g_year = jewish2g(hebyear - 1);
   g_month = 9;
   if (hmonth < JEWISH_FIRST_MONTH) {
      g_year += 1;
      gdate = date_rosh_hashanah(g_year);
      for (hm = JEWISH_FIRST_MONTH - 1; hmonth <= hm; hm -= 1) {
         g_month -= 1;
         gdate += (days_in_month(g_year, g_month) -\
                  jewish_monthlength(hebyear, hm));
      }
   } else {
      gdate = date_rosh_hashanah(g_year);
      for (hm = JEWISH_FIRST_MONTH; hm <= hmonth - 1; hm += 1) {
         gdate -= (days_in_month(g_year, g_month) -\
                  jewish_monthlength(hebyear, hm));
         g_month += 1;
         if (MONTHS_IN_YEAR < g_month) {
            g_month = 1;
            g_year += 1;
         }
      }
   }
   return (gdate);
}
double jewishymd2jd(long hebyear
      , long hebmonth
      , double hebday)
{
   double jds;
   long hfirst;
   long hmon;
   long moninyear;
   moninyear = jewish_months_in_year(hebyear);
   if (1 <= hebmonth && hebmonth <= moninyear) {
      jds = jewish2jd(hebyear);
      hfirst = JEWISH_FIRST_MONTH;
      hmon = JEWISH_FIRST_MONTH;
      while (hmon != hebmonth) {
         jds += jewish_monthlength(hebyear, hmon);
         hmon += 1;
         if (moninyear < hmon) {
            hmon = 1;
         } else if (hmon == hfirst) {
            hebyear += 1;
            moninyear = jewish_months_in_year(hebyear);
         }
      }
   } else {
      jds = 0;
   }
   return (jds + hebday - 1.0);
}
double amean(double xa
      , double xb)
{
   return ((xa + xb) / 2.0);
}
double amean1(double xa)
{
   return ((xa + 1.0) / 2.0);
}
double lmean(double xa
      , double xb)
{
   double retvalu;
   double diffy;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      diffy = xa - xb;
      if (0.0001 < fabs(diffy)) {
         retvalu = diffy / log(xa / xb);
      } else {
         retvalu = diffy / ln1p(diffy / xb);
      }
   }
   return (retvalu);
}
double lmean1(double xa)
{
   return (lmean(1.0, xa));
}
double pmean(double pp
      , double xa
      , double xb)
{
   double retvalu;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else if (iszero(pp)) {
      retvalu = sqrt(xa * xb);
   } else {
      retvalu = pow((pow(xa, pp) + pow(xb, pp)) / 2.0, 1.0 / pp);
   }
   return (retvalu);
}
double gmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0.0 || xb < 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = sqrt(xa * xb);
   }
   return (retvalu);
}
double gmean1(double xa)
{
   return (gmean(1.0, xa));
}
double hmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0.0 || xb < 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = 2.0 * xa * xb / (xa + xb);
   }
   return (retvalu);
}
double hmean1(double xa)
{
   return (hmean(1.0, xa));
}
double qmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0.0 || xb < 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = sqrt((xa * xa + xb * xb) / 2.0);
   }
   return (retvalu);
}
double qmean1(double xa)
{
   return (qmean(1.0, xa));
}
double heronianmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0.0 || xb < 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = (xa + xb + sqrt(xa * xb)) / 3.0;
   }
   return (retvalu);
}
double heronianmean1(double xa)
{
   return (heronianmean(1.0, xa));
}
double agmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double agmean1(double xa)
{
   return (agmean(1.0, xa));
}
double ahmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double ahmean1(double xa)
{
   return (ahmean(1.0, xa));
}
double almean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = lmean(xa, xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double almean1(double xa)
{
   return (almean(1.0, xa));
}
double aqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = (xa + xb) / 2.0;
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double aqmean1(double xa)
{
   return (aqmean(1.0, xa));
}
double ghmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = sqrt(xa * xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double ghmean1(double xa)
{
   return (ghmean(1.0, xa));
}
double glmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = lmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double glmean1(double xa)
{
   return (glmean(1.0, xa));
}
double gqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double gqmean1(double xa)
{
   return (gqmean(1.0, xa));
}
double hlmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = lmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double hlmean1(double xa)
{
   return (hlmean(1.0, xa));
}
double hqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double hqmean1(double xa)
{
   return (hqmean(1.0, xa));
}
double lqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0.0 || xb <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = lmean(xa, xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10.0 * DBLEPS) || pdifff < cdifff) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double lqmean1(double xa)
{
   return (lqmean(1.0, xa));
}
double agmean__1(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double xsgn;
   xsgn = 1.0;
   ii = 0;
   for (;;) {
      xtmp = xa;
      xa = (xa + xb) / 2.0;
      xb = sqrt(fabs(xtmp * xb)) * sign(xa);
      if (iswithin(xa, xb, 10.0 * DBLEPS)) {
         break; // loop AWAIT
      }
      ii += 1;
      if (20 <= ii) {
         break; // loop AWAIT
      }
   }
   retvalu = xsgn * xtmp;
   return (retvalu);
}
double agcmean(const double *xa_arr_pc
      , const double *xb_arr_pc
      , double *ret_arr_p)
{
   double gg_arr[2];
   double aa_arr[2];
   double tt_arr[2];
   double pr_arr[2];
   double pr_len;
   double pr_theta;
   gg_arr[0] = xa_arr_pc[0];
   gg_arr[1] = xa_arr_pc[1];
   aa_arr[0] = xb_arr_pc[0];
   aa_arr[1] = xb_arr_pc[1];
   for (;;) {
      tt_arr[0] = (aa_arr[0] + gg_arr[0]) / 2;
      tt_arr[1] = (aa_arr[1] + gg_arr[1]) / 2;
      pr_arr[0] = aa_arr[0] * gg_arr[0] - aa_arr[1] * gg_arr[1];
      pr_arr[1] = aa_arr[1] * gg_arr[0] + aa_arr[0] * gg_arr[1];
      pr_len = sqrt(hypot(pr_arr[0], pr_arr[1]));
      pr_theta = atan2(pr_arr[1], pr_arr[0]) / 2.0;
      gg_arr[0] = pr_len * cos(pr_theta);
      gg_arr[1] = pr_len * sin(pr_theta);
      aa_arr[0] = tt_arr[0];
      aa_arr[1] = tt_arr[1];
      if (aa_arr[0] * gg_arr[0] + aa_arr[1] * gg_arr[1] < 0.0) {
         gg_arr[0] = -gg_arr[0];
         gg_arr[1] = -gg_arr[1];
      }
      if (iseq(gg_arr[0], aa_arr[0]) && iseq(gg_arr[1], aa_arr[1])) {
         break; // loop AWAIT
      }
   }
   ret_arr_p[0] = gg_arr[0];
   ret_arr_p[1] = gg_arr[1];
   return (hypot(gg_arr[0], gg_arr[1]));
}
double aghmean(double xa
      , double xb
      , double xc)
{
   long ii;
   double ta;
   double tb;
   double tc;
   double retvalu;
   if (xa <= 0.0 || xb <= 0.0 || xc <= 0.0) {
      retvalu = 0.0;
   } else if (iseq(xa, xb) && iseq(xa, xc)) {
      retvalu = xa;
   } else {
      ii = 0;
      for (;;) {
         ta = xa;
         tb = xb;
         tc = xc;
         xa = (ta + tb + tc) / 3.0;
         xb = cuberoot(ta * tb * tc);
         xc = 3.0 / (1.0 / ta + 1.0 / tb + 1.0 / tc);
         if (iswithin(xa, xc, 10.0 * DBLEPS)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = xb;
   }
   return (retvalu);
}
double rms(double xa
      , double xb)
{
   return (sqrt((xa * xa + xb * xb) / 2.0));
}
double agmeaninva(double aa
      , double gg)
{
   double new_aa;
   if (gg < aa) {
      new_aa = aa + sqrt(aa * aa - gg * gg);
   } else {
      new_aa = gg + sqrt(gg * gg - aa * aa);
   }
   return (new_aa);
}
double agmeaninvg(double aa
      , double gg)
{
   double new_gg;
   if (gg < aa) {
      new_gg = gg * gg / aa;
   } else {
      new_gg = aa * aa / gg;
   }
   return (new_gg);
}
double agmean1inv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double x_init;
   double dx;
   double cc;
   if (yy <= 0.0) {
      scvx_xx = 0.0;
   } else if (yy < 0.0022) {
      scvx_xx = 1.0 / DBLMAX;
   } else {
      if (yy <= 0.5) {
         x_init = 4.0 * exp(PI / (-2.0 * yy));
      } else if (yy < 2.1) {
         cc = yy - 1.0;
         x_init = ((((((((-0.09765625) * cc + 0.12890625) * cc + 0.1875)\
                  * cc + 0.1875) * cc - 0.25) * cc + 0.5) * cc + 2.0) *\
                  cc + 1.0);
      } else {
         cc = -(PI / 2.0);
         x_init = yy * wm(cc / (4.0 * yy)) / cc;
      }
      if (yy < 0.06) {
         dx = x_init * 0.1;
      } else {
         dx = x_init * 0.5;
      }
      scvx_dx = dx;
      scvx_xx = x_init;
      scvx_yy = yy - agmean1(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - agmean1(scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double ghmean1inv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double x_init;
   if (yy <= 0.0) {
      scvx_xx = 0.0;
   } else {
      if (yy < 0.073) {
         x_init = 0.352 * yy;
      } else {
         x_init = (exp(PI * yy / 2.0) - exp(-yy * yy * 0.2)) / 4.0;
      }
      scvx_dx = 0.3;
      scvx_xx = x_init;
      scvx_yy = yy - ghmean1(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - ghmean1(scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double contraharmonic(long nn
      , const double *val_arr_pc)
{
   double denom;
   double numer;
   long ii;
   numer = 0.0;
   denom = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      denom += val_arr_pc[ii] * val_arr_pc[ii];
      numer += val_arr_pc[ii];
   }
   return (denom / numer);
}
static const int LC_KNUTH_MAX = 1073741823;
#define LC_KNUTH_QUALITY_CNT 1009
#define LC_KNUTH_KK_CNT 100
static const int LC_KNUTH_LL = 37;
static const int LC_KNUTH_TT = 70;
#define LC_KNUTH_ARRAY_CNT 1100
static long lv_ranz_ind = -3;
static double lv_ranz_magic = 0.0;
static long lv_ranz_arr[LC_KNUTH_QUALITY_CNT];
static long lv_ran_a_arr[LC_KNUTH_ARRAY_CNT];
static long lv_ran_x_arr[LC_KNUTH_KK_CNT];
static long lf_ran_cycle(long nn)
{
   // local-use C lv_ran_x_arr;
   // local-use C lv_ran_a_arr;
   long aa;
   long bb;
   long cc;
   long mody;
   aa = 0;
   while (aa < LC_KNUTH_KK_CNT) {
      lv_ran_a_arr[aa] = lv_ran_x_arr[aa];
      aa += 1;
   }
   bb = 0;
   cc = (LC_KNUTH_KK_CNT - LC_KNUTH_LL);
   while (aa < nn) {
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc];
      lv_ran_a_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   aa = 0;
   while (aa < LC_KNUTH_LL) {
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc];
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   cc = 0;
   while (aa < LC_KNUTH_KK_CNT) {
      mody = lv_ran_a_arr[bb] - lv_ran_x_arr[cc];
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   return (bb);
}
static long lf_fill_ranz(void)
{
   // local-use C lv_ranz_magic;
   // local-use C lv_ranz_ind;
   // local-use C lv_ranz_arr;
   // local-use C lv_ran_a_arr;
   long jj;
   (void) lf_ran_cycle(LC_KNUTH_QUALITY_CNT);
   for (jj = 0; jj <= LC_KNUTH_QUALITY_CNT - 1; jj += 1) {
      lv_ranz_arr[jj] = lv_ran_a_arr[jj];
   }
   lv_ranz_arr[LC_KNUTH_KK_CNT] = -1;
   lv_ranz_ind = 0;
   lv_ranz_magic = magicset();
   return (lv_ranz_arr[0]);
}
static long lf_next_ranz(void)
{
   // local-use C lv_ranz_magic;
   // local-use C lv_ranz_ind;
   // local-use C lv_ranz_arr;
   if (! ismagic(lv_ranz_magic)) {
      (void) rand_init(timee());
   } else if (lv_ranz_arr[lv_ranz_ind] < 0) {
      (void) lf_fill_ranz();
   }
   lv_ranz_ind += 1;
   return (lv_ranz_arr[lv_ranz_ind - 1]);
}
double rand_init_array(long seed_size
      , const long *seed_arr_pc)
{
   // local-use C lv_ran_x_arr;
   long tt;
   long jj;
   long kk;
   long dd;
   long rnd_arr[2 * LC_KNUTH_KK_CNT];
   long rndss;
   long rndx;
   long rndff;
   long seed_ind;
   long bitmask;
   rndss = ((seed_arr_pc[0] + 2) & (LC_KNUTH_MAX - 1));
   for (jj = 0; jj <= LC_KNUTH_KK_CNT - 1; jj += 1) {
      rnd_arr[jj] = rndss;
      rndss = (rndss << 1);
      if (LC_KNUTH_MAX < rndss) {
         rndss -= (LC_KNUTH_MAX - 1);
      }
   }
   rndff = 0;
   seed_ind = 0;
   bitmask = 0;
   for (jj = 0; jj <= LC_KNUTH_KK_CNT - 1; jj += 1) {
      if (bitmask <= 1) {
         seed_ind += 1;
         if (seed_size <= seed_ind) {
            break;
         }
         rndff = seed_arr_pc[seed_ind];
         bitmask = (1 << 30);
      }
      if ((rndff & bitmask) != 0) {
         rnd_arr[jj] = (bitmask ^ (rnd_arr[jj]));
      }
      bitmask = (bitmask >> 1);
   }
   rnd_arr[1] += 1;
   rndss = (seed_arr_pc[0] & LC_KNUTH_MAX);
   tt = LC_KNUTH_TT - 1;
   while (0 < tt) {
      for (jj = LC_KNUTH_KK_CNT - 1; 1 <= jj; jj -= 1) {
         rnd_arr[jj + jj] = rnd_arr[jj];
         rnd_arr[jj + jj - 1] = 0;
      }
      jj = LC_KNUTH_KK_CNT + LC_KNUTH_KK_CNT - 2;
      dd = LC_KNUTH_KK_CNT + LC_KNUTH_LL - 2;
      kk = LC_KNUTH_KK_CNT - 2;
      while (0 <= kk) {
         rndx = rnd_arr[dd] - rnd_arr[jj];
         rnd_arr[dd] = (rndx & LC_KNUTH_MAX);
         rndx = rnd_arr[kk] - rnd_arr[jj];
         rnd_arr[kk] = (rndx & LC_KNUTH_MAX);
         dd -= 1;
         kk -= 1;
         jj -= 1;
      }
      if (isodd(rndss)) {
         for (jj = LC_KNUTH_KK_CNT; 1 <= jj; jj -= 1) {
            rnd_arr[jj] = rnd_arr[jj - 1];
         }
         rnd_arr[0] = rnd_arr[LC_KNUTH_KK_CNT];
         jj = rnd_arr[LC_KNUTH_LL] - rnd_arr[0];
         rnd_arr[LC_KNUTH_LL] = (LC_KNUTH_MAX & jj);
         rndss = (rndss >> 1);
      } else if (rndss == 0) {
         tt -= 1;
      } else {
         rndss = (rndss >> 1);
      }
   }
   kk = (LC_KNUTH_KK_CNT - LC_KNUTH_LL);
   jj = 0;
   while (jj < LC_KNUTH_LL) {
      lv_ran_x_arr[kk] = rnd_arr[jj];
      kk += 1;
      jj += 1;
   }
   kk = 0;
   while (jj < LC_KNUTH_KK_CNT) {
      lv_ran_x_arr[kk] = rnd_arr[jj];
      kk += 1;
      jj += 1;
   }
   for (jj = 0; jj <= 9; jj += 1) {
      (void) lf_ran_cycle(2 * LC_KNUTH_KK_CNT - 1);
   }
   (void) lf_fill_ranz();
   return 0;
}
double rand_init(double seed)
{
   long sd_arr[2];
   sd_arr[0] = floor(seed);
   sd_arr[1] = floor(frac(seed) * INTMAX);
   (void) rand_init_array(2, sd_arr);
   return (seed);
}
long randl(long nn)
{
   long max_allowed;
   long rndm;
   long retvalu;
   max_allowed = LC_KNUTH_MAX - (LC_KNUTH_MAX % nn);
   for (;;) {
      rndm = lf_next_ranz();
      if (rndm < max_allowed) {
         break; // loop AWAIT
      }
   }
   retvalu = rndm % nn;
   return (retvalu);
}
double randd(void)
{
   return ((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX + 1.0)) /\
            (LC_KNUTH_MAX + 1.0));
}
double int_pdf(double para_nn
      , double xx)
{
   double retvalu;
   double ff;
   if (xx < 0.0 || para_nn < xx || (! isint(xx))) {
      retvalu = 0.0;
   } else {
      ff = floor(para_nn);
      if (isint(para_nn)) {
         if (xx < para_nn) {
            retvalu = 1.0 / para_nn;
         } else {
            retvalu = 0.0;
         }
      } else {
         if (xx < ff) {
            retvalu = 1.0 / para_nn;
         } else {
            retvalu = 1.0 - ff / para_nn;
         }
      }
   }
   return (retvalu);
}
double int_cdf(double para_nn
      , double xx)
{
   double retvalu;
   double ff;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (para_nn <= xx) {
      retvalu = 1.0;
   } else {
      ff = floor(para_nn);
      if (xx < ff) {
         retvalu = (floor(xx) + 1) / para_nn;
      } else {
         retvalu = 1;
      }
   }
   return (retvalu);
}
double int_quantile(double para_nn
      , double probx)
{
   double retvalu;
   if (probx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 - frac(para_nn) / para_nn <= probx) {
      retvalu = ceil(para_nn - 1);
   } else {
      retvalu = floor(para_nn * probx + 1);
   }
   return (retvalu);
}
long int_rand(double para_nn)
{
   long retvalu;
   if (para_nn <= 1) {
      retvalu = 0;
   } else {
      retvalu = floorl(randd() * para_nn);
   }
   return (retvalu);
}
double normal_pdf(double xx)
{
   return (exp(-xx * xx / 2.0) / (sqrt(TAU)));
}
double normal_cdf(double xx)
{
   return (erf(xx / TWOSQRT) / 2.0 + 0.5);
}
double normal_cdf__1(double xx)
{
   double retvalu;
   double sum_curr;
   double sum_prev;
   double bb;
   double xx_sqr;
   double ii;
   if (xx <= -10.0) {
      retvalu = 0.0;
   } else if (10.0 <= xx) {
      retvalu = 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.5;
   } else {
      sum_curr = 0.0;
      bb = 1.0 / xx;
      xx_sqr = xx * xx;
      ii = 0;
      for (;;) {
         bb *= xx_sqr / (2.0 * ii + 1.0);
         sum_prev = sum_curr;
         sum_curr += bb;
         if (iseq(sum_prev, sum_curr)) {
            break; // loop AWAIT
         }
         ii += 1;
      }
      retvalu = (sum_curr * exp(-0.5 * (xx_sqr + log(TAU))) + 0.5);
   }
   return (retvalu);
}
double normal_quantile(double probx)
{
   return (TWOSQRT * erfinv(2.0 * probx - 1.0));
}
static double lv_rand_gau_magic = 0.0;
static double lv_rand_gau_prev = 0.0;
double normal_rand(void)
{
   // local-use C lv_rand_gau_magic;
   // local-use C lv_rand_gau_prev;
   double retvalu;
   double uua;
   double uub;
   double ww;
   if (ismagic(lv_rand_gau_magic)) {
      lv_rand_gau_magic = magicnot();
      retvalu = lv_rand_gau_prev;
   } else {
      for (;;) {
         uua = randd() - 0.5;
         uub = randd() - 0.5;
         ww = uua * uua + uub * uub;
         if (isbetweenx(ww, 0.0, 0.25)) {
            break; // loop AWAIT
         }
      }
      ww = sqrt(-2.0 * log(4.0 * ww) / ww);
      lv_rand_gau_prev = uub * ww;
      lv_rand_gau_magic = magicset();
      retvalu = uua * ww;
   }
   return (retvalu);
}
double gau_pdf(double xx)
{
   return (normal_pdf(xx));
}
double gau_cdf(double xx)
{
   return (normal_cdf(xx));
}
double gau_quantile(double probx)
{
   return (normal_quantile(probx));
}
double gau_rand(void)
{
   return (normal_rand());
}
double normal_quantile__1(double probx)
{
   double retvalu;
   double p_low;
   double qq;
   double rr;
   double denom;
   double numer;
   p_low = 0.02425;
   if (probx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (1.0 <= probx) {
      retvalu = DBLMAX;
   } else if (p_low <= probx && probx <= 1.0 - p_low) {
      qq = probx - 0.5;
      rr = qq * qq;
      numer = ((((((-3.96968302866538E+1) * rr + 2.20946098424521E+2) *\
               rr - 2.75928510446969E+2) * rr + 1.38357751867269E+2) * rr\
               - 3.06647980661472E+1) * rr + 2.50662827745924);
      denom = ((((((-5.44760987982241E+1) * rr + 1.61585836858041E+2) *\
               rr - 1.55698979859887E+2) * rr + 6.68013118877197E+1) * rr\
               - 1.32806815528857E+1) * rr + 1.00000000000000);
      retvalu = (qq * numer / denom);
   } else {
      if (probx < p_low) {
         rr = sqrt(-2.0 * log(probx));
         qq = 1.0;
      } else {
         rr = sqrt(-2.0 * log(1 - probx));
         qq = -1.0;
      }
      numer = ((((((-7.78489400243029E-3) * rr - 3.22396458041136E-1) *\
               rr - 2.40075827716184) * rr - 2.54973253934373) * rr +\
               4.37466414146497) * rr + 2.93816398269878);
      denom = (((((7.78469570904146E-3) * rr + 3.22467129070040E-1) * rr\
               + 2.44513413714300) * rr + 3.75440866190742) * rr +\
               1.00000000000000);
      retvalu = qq * numer / denom;
   }
   return (retvalu);
}
double uni_pdf(double max_x
      , double xxp)
{
   double retvalu;
   if (max_x <= 0.0 || xxp <= 0.0 || max_x <= xxp) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / max_x;
   }
   return (retvalu);
}
double uni_cdf(double max_x
      , double xxp)
{
   double retvalu;
   if (max_x <= 0.0 || xxp < 0.0) {
      retvalu = 0.0;
   } else if (max_x < xxp) {
      retvalu = 1.0;
   } else {
      retvalu = xxp / max_x;
   }
   return (retvalu);
}
double uni_quantile(double max_x
      , double probx)
{
   double retvalu;
   if (probx < 0.0 || max_x <= 0.0) {
      retvalu = 0.0;
   } else if (max_x < probx) {
      retvalu = 1.0;
   } else {
      retvalu = probx * max_x;
   }
   return (retvalu);
}
double uni_rand(double max_x)
{
   return (uni_quantile(max_x, randd()));
}
double exp_pdf(double para_scaling
      , double xxp)
{
   double retvalu;
   if (xxp < 0.0 || para_scaling <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = para_scaling * exp(-para_scaling * xxp);
   }
   return (retvalu);
}
double exp_cdf(double para_scaling
      , double xxp)
{
   double retvalu;
   if (xxp < 0.0 || para_scaling <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 - exp(-para_scaling * xxp);
   }
   return (retvalu);
}
double exp_quantile(double para_scaling
      , double probx)
{
   double retvalu;
   if (probx <= 0.0 || para_scaling <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= probx) {
      retvalu = DBLMAX;
   } else {
      retvalu = -log(1.0 - probx) / para_scaling;
   }
   return (retvalu);
}
double exp_rand(double para_scaling)
{
   return (- log(randd()) / para_scaling);
}
double poi_pdf(double meanx
      , double xxp)
{
   double kk;
   double retvalu;
   if (xxp < 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else {
      kk = floor(xxp);
      retvalu = pow(meanx, kk) * exp(-meanx) / factorial(kk);
   }
   return (retvalu);
}
double poi_cdf(double meanx
      , double xxp)
{
   long ii;
   long kk;
   double sum;
   double term;
   double retvalu;
   if (xxp <= 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else if (1000.0 < xxp / meanx) {
      retvalu = 1;
   } else {
      term = exp(-meanx);
      sum = term;
      kk = floorl(xxp);
      for (ii = 1; ii <= kk; ii += 1) {
         term *= meanx / ii;
         sum += term;
      }
      retvalu = sum;
   }
   return (retvalu);
}
double poi_quantile(double meanx
      , double probx)
{
   long ii;
   double sum;
   double prevsum;
   double term;
   double retvalu;
   if (probx <= 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= probx) {
      retvalu = DBLMAX;
   } else {
      prevsum = 0.0;
      term = exp(-meanx);
      sum = term;
      ii = 0;
      while (sum <= probx) {
         ii += 1;
         term *= meanx / ii;
         prevsum = sum;
         sum += term;
      }
      if (sum - probx < probx - prevsum) {
         retvalu = ii;
      } else {
         retvalu = ii - 1;
      }
   }
   return (retvalu);
}
long poi_rand(double meanx)
{
   double prob;
   double poi;
   double sum;
   long nn;
   prob = randd();
   poi = exp(-meanx);
   sum = poi;
   nn = 0;
   while (sum < prob) {
      nn += 1;
      poi *= meanx / nn;
      sum += poi;
   }
   return (nn);
}
double geo_pdf(double prob
      , double kk)
{
   double retvalu;
   if (kk < 0 || prob < 0.0 || 1.0 <= prob) {
      retvalu = 0.0;
   } else {
      retvalu = pow(1.0 - prob, kk) * prob;
   }
   return (retvalu);
}
double geo_cdf(double prob
      , double kk)
{
   double retvalu;
   if (kk <= -1 || prob < 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prob) {
      retvalu = 1.0;
   } else {
      retvalu = 1.0 - pow(1.0 - prob, kk + 1);
   }
   return (retvalu);
}
double geo_quantile(double prob
      , double probx)
{
   double retvalu;
   if (probx <= 0.0 || 1.0 <= probx || prob <= 0.0 || 1.0 <= prob) {
      retvalu = 0.0;
   } else {
      retvalu = log(1.0 - probx) / log(1.0 - prob) - 1.0;
   }
   return (retvalu);
}
long geo_rand(double prob)
{
   return (floorl(log(randd()) / log(1.0 - prob)));
}
double cauchy_pdf(double para_scaling
      , double xx)
{
   return (1.0 / (PI * para_scaling * (1.0 + (square(xx / para_scaling)))));
}
double cauchy_cdf(double para_scaling
      , double xx)
{
   return (taninv(xx / para_scaling) / PI + 0.5);
}
double cauchy_quantile(double para_scaling
      , double probx)
{
   return (para_scaling * tan((probx - 0.5) * PI));
}
double cauchy_rand(double para_scaling)
{
   return (cauchy_quantile(para_scaling, randd()));
}
double logistic_pdf(double ss
      , double xx)
{
   double exs;
   double retvalu;
   if (ss <= 0.0) {
      retvalu = 0.0;
   } else {
      exs = exp(-xx / ss);
      retvalu = exs / (ss * pow(1.0 + exs, 2.0));
   }
   return (retvalu);
}
double logistic_cdf(double ss
      , double xx)
{
   double retvalu;
   if (ss <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (1.0 + exp(-xx / ss));
   }
   return (retvalu);
}
double logistic_quantile(double ss
      , double probx)
{
   double retvalu;
   if (probx <= 0.0 || ss <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= probx) {
      retvalu = 1.0;
   } else {
      retvalu = -ss * log(1.0 / probx - 1.0);
   }
   return (retvalu);
}
double logistic_rand(double ss)
{
   return (- ss * log(1.0 / randd() - 1.0));
}
double tri_pdf(double pp
      , double xxp)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0.0;
   } else {
      if (xxp < 0.0 || 1.0 < xxp) {
         retvalu = 0.0;
      } else if (xxp < pp) {
         retvalu = divi(2.0 * xxp, pp, 2.0);
      } else {
         retvalu = divi(2.0 * (1.0 - xxp), 1.0 - pp, 2.0);
      }
   }
   return (retvalu);
}
double tri_cdf(double pp
      , double xxp)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0.0;
   } else {
      if (xxp <= 0.0) {
         retvalu = 0.0;
      } else if (xxp < pp) {
         retvalu = xxp * xxp / pp;
      } else if (xxp < 1.0) {
         retvalu = 1.0 - square(1.0 - xxp) / (1.0 - pp);
      } else {
         retvalu = 1.0;
      }
   }
   return (retvalu);
}
double tri_quantile(double pp
      , double probx)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0.0;
   } else {
      if (probx <= 0.0) {
         retvalu = 0.0;
      } else if (probx < pp) {
         retvalu = sqrt(probx * pp);
      } else if (probx < 1.0) {
         retvalu = 1.0 - sqrt((1.0 - probx) * (1.0 - pp));
      } else {
         retvalu = 1.0;
      }
   }
   return (retvalu);
}
double tri_rand(double pp)
{
   double xxp;
   double yy;
   xxp = randd();
   yy = randd();
   if (xxp < pp) {
      if (2.0 * xxp < pp * yy) {
         xxp = pp - xxp;
      }
   } else {
      if ((pp - 1.0) * yy < 2.0 * (xxp - 1.0)) {
         xxp = (pp + 1.0) - xxp;
      }
   }
   return (xxp);
}
double trap_pdf(double prob_a
      , double prob_b
      , double xx)
{
   double retvalu;
   if (xx < 0.0 || 1.0 < xx || prob_a < 0.0 || prob_b < prob_a || 1.0 <\
            prob_b) {
      retvalu = 0.0;
   } else {
      if (xx < prob_a) {
         retvalu = xx / prob_a;
      } else if (xx <= prob_b) {
         retvalu = 1.0;
      } else {
         retvalu = (1.0 - xx) / (1.0 - prob_b);
      }
   }
   return (retvalu * 2.0 / (1.0 + prob_b - prob_a));
}
double trap_cdf(double prob_a
      , double prob_b
      , double xx)
{
   double ff;
   double retvalu;
   if (prob_a < 0.0 || prob_b < prob_a || 1.0 < prob_b) {
      retvalu = 0.0;
   } else if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else {
      ff = 2.0 / (1.0 + prob_b - prob_a);
      if (xx < prob_a) {
         retvalu = ff * xx * xx / (2.0 * prob_a);
      } else if (xx < prob_b) {
         retvalu = ff * (xx - prob_a / 2.0);
      } else {
         retvalu = 1.0 - ff * square(1.0 - xx) / (2.0 * (1.0 - prob_b));
      }
   }
   return (retvalu);
}
double trap_quantile(double prob_a
      , double prob_b
      , double xx)
{
   double ff;
   double retvalu;
   if (prob_a < 0.0 || prob_b < prob_a || 1.0 < prob_b) {
      retvalu = 0.0;
   } else if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else {
      ff = 2.0 / (1.0 + prob_b - prob_a);
      if (xx < prob_a * ff / 2.0) {
         retvalu = sqrt((2.0 * prob_a * xx) / ff);
      } else if (xx < 1.0 - ff * (1.0 - prob_b) / 2.0) {
         retvalu = xx / ff + prob_a / 2.0;
      } else {
         retvalu = 1.0 - sqrt(2.0 * (1.0 - prob_b) * (1.0 - xx) / ff);
      }
   }
   return (retvalu);
}
double trap_rand(double prob_a
      , double prob_b)
{
   double xx;
   double retvalu;
   retvalu = -1;
   for (;;) {
      xx = randd();
      if (xx < prob_a) {
         if (randd() * prob_a < xx) {
            retvalu = xx;
         }
      } else if (xx <= prob_b) {
         retvalu = xx;
      } else {
         if (randd() * (1.0 - prob_b) < (1.0 - xx)) {
            retvalu = xx;
         }
      }
      if (0.0 <= retvalu) {
         break; // loop AWAIT
      }
   }
   return (retvalu);
}
double pareto_pdf(double para_shape
      , double para_scaling
      , double xx)
{
   return (para_shape * pow(para_scaling / xx, para_shape) / xx);
}
double pareto_cdf(double para_shape
      , double para_scaling
      , double xx)
{
   return (1.0 - pow(para_scaling / xx, para_shape));
}
double pareto_quantile(double para_shape
      , double para_scaling
      , double probx)
{
   return (para_scaling / pow(1.0 - probx, 1.0 / para_shape));
}
double pareto_rand(double para_shape
      , double para_scaling)
{
   return (para_scaling / pow(randd(), 1.0 / para_shape));
}
double gompertz_pdf(double para_shape
      , double para_scaling
      , double xx)
{
   return (exp(para_scaling * xx + para_shape * (1 - exp(para_scaling *\
            xx))) * para_scaling * para_shape);
}
double gompertz_cdf(double para_shape
      , double para_scaling
      , double xx)
{
   return (1.0 - exp(para_shape * (1.0 - exp(para_scaling * xx))));
}
double gompertz_quantile(double para_shape
      , double para_scaling
      , double probx)
{
   return (log(1 - log(1.0 - probx) / para_shape) / para_scaling);
}
double gompertz_rand(double para_shape
      , double para_scaling)
{
   return (gompertz_quantile(para_shape, para_scaling, randd()));
}
double zipf_pdf(double ss
      , long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0 || max_kk < kk) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (pow(kk, ss) * hnm(max_kk, ss));
   }
   return (retvalu);
}
double zipf_cdf(double ss
      , long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0) {
      retvalu = 0.0;
   } else if (max_kk < kk) {
      retvalu = 1.0;
   } else {
      retvalu = hnm(kk, ss) / hnm(max_kk, ss);
   }
   return (retvalu);
}
long zipf_quantile(double ss
      , long max_kk
      , double probx)
{
   long ii;
   double summ;
   double target;
   target = probx * hnm(max_kk, ss);
   summ = 0.0;
   ii = 1;
   for (;;) {
      summ += 1.0 / pow(ii, ss);
      if (target <= summ) {
         break; // loop AWAIT
      }
      ii += 1;
   }
   return (ii);
}
long zipf_rand(double ss
      , long max_kk)
{
   return (zipf_quantile(ss, max_kk, randd()));
}
double beta_pdf(double para_shape_a
      , double para_shape_b
      , double xx)
{
   return (pow(xx, para_shape_a - 1.0) * pow((1.0 - xx), para_shape_b -\
            1.0) / beta(para_shape_a, para_shape_b));
}
double beta_cdf(double para_shape_a
      , double para_shape_b
      , double xx)
{
   return (betainc(para_shape_a, para_shape_b, xx));
}
double beta_quantile(double para_shape_a
      , double para_shape_b
      , double probx)
{
   double retvalu;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   if (probx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= probx) {
      retvalu = 1.0;
   } else {
      scvx_dx = 0.50;
      scvx_xx = 0.25;
      scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
      retvalu = scvx_xx;
   }
   return (retvalu);
}
double beta_rand(double para_shape_a
      , double para_shape_b)
{
   return (beta_quantile(para_shape_a, para_shape_b, randd()));
}
double gamma_pdf(double para_shape
      , double xxp)
{
   double retvalu;
   if (xxp <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = exp(log(xxp) * (para_shape - 1.0) - xxp) /\
               tgamma(para_shape);
   }
   return (retvalu);
}
double gamma_cdf(double para_shape
      , double xxp)
{
   double retvalu;
   double rr;
   long ii;
   double sum;
   if (xxp <= 0.0 || para_shape <= 0.0) {
      retvalu = 0.0;
   } else if (isint(para_shape)) {
      sum = 1.0;
      rr = 1.0;
      for (ii = 1; ii <= para_shape - 1; ii += 1) {
         rr *= xxp / ii;
         sum += rr;
      }
      retvalu = 1.0 - exp(-xxp) * sum;
   } else {
      retvalu = rligamma(para_shape, xxp);
   }
   return (retvalu);
}
double gamma_rand(double para_shape)
{
   double i_shape;
   double f_shape;
   double rval;
   double jj;
   double ee;
   double gg;
   double yy;
   double ff;
   double xx;
   double vv;
   double qq;
   double pp;
   i_shape = floor(para_shape);
   rval = 1.0;
   if (para_shape < 5) {
      for (jj = 1; jj <= i_shape; jj += 1) {
         rval *= randd();
      }
      rval = -log(rval);
      f_shape = para_shape - i_shape;
      if (0.00001 < f_shape) {
         pp = E / (f_shape + E);
         for (;;) {
            vv = log(randd());
            if (randd() < pp) {
               xx = exp(vv / f_shape);
               qq = exp(-xx);
            } else {
               xx = 1.0 - vv;
               qq = exp(log(xx) * (f_shape - 1));
            }
            if (randd() < qq) {
               break; // loop AWAIT
            }
         }
         rval += xx;
      }
   } else {
      ee = para_shape - 1.0;
      gg = sqrt(para_shape + ee);
      yy = 0.0;
      ff = 0.0;
      while (rval <= 0.0 || (1.0 + yy * yy) * exp(ee * log(rval / ee) -\
               ff) < randd()) {
         xx = PI * randd();
         yy = sin(xx) / cos(xx);
         ff = gg * yy;
         rval = ff + ee;
      }
   }
   return (rval);
}
double chisqr_pdf(double df
      , double xxp)
{
   double retvalu;
   if (xxp <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = exp((log(xxp / 2.0) * df - xxp) / 2.0) / (xxp * tgamma(df\
               / 2.0));
   }
   return (retvalu);
}
double chisqr_cdf(double df
      , double xxp)
{
   double retvalu;
   if (xxp <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = (1.0 - ruigamma(df / 2.0, xxp / 2.0));
   }
   return (retvalu);
}
double chisqr_rand(double df)
{
   double sum;
   double vv;
   double jj;
   sum = 0.0;
   for (jj = 1; jj <= df; jj += 1) {
      vv = gau_rand();
      sum += vv * vv;
   }
   if (! isint(df)) {
      sum += gamma_rand(frac(df) / 2.0) * 2.0;
   }
   return (sum);
}
double binomial_pdf(double prob_a
      , long success
      , long trial)
{
   double retvalu;
   if (success < 0 || trial < success) {
      retvalu = 0.0;
   } else {
      retvalu = comb(trial, success) * pow(prob_a, success) * pow(1.0 -\
               prob_a, trial - success);
   }
   return (retvalu);
}
double binomial_cdf(double prob_a
      , long success
      , long trial)
{
   double lsum;
   double sfactor;
   long ss;
   double mu;
   double kk;
   if (prob_a <= 0.0 || success < 0) {
      lsum = 0.0;
   } else if (1.0 <= prob_a || trial <= success) {
      lsum = 1.0;
   } else {
      if (trial <= 2 * success) {
         ss = trial - success - 1;
         prob_a = 1.0 - prob_a;
      } else {
         ss = success;
      }
      sfactor = pow(1.0 - prob_a, trial);
      mu = prob_a / (1.0 - prob_a);
      lsum = 0.0;
      for (kk = 0; kk <= ss; kk += 1) {
         lsum += sfactor;
         sfactor *= (mu * (trial - kk)) / (kk + 1.0);
      }
      if (ss != success) {
         lsum = 1.0 - lsum;
      }
   }
   return (lsum);
}
double binomial_rand(double prob_a
      , double rr)
{
   double successes;
   successes = 0.0;
   while (0 < rr) {
      if (randd() < prob_a) {
         successes += 1;
      }
      rr -= 1;
   }
   return (successes);
}
double benford_pdf(long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0 || max_kk <= kk) {
      retvalu = 0.0;
   } else {
      retvalu = log(1.0 + 1.0 / kk) / log(max_kk);
   }
   return (retvalu);
}
double benford_cdf(long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0) {
      retvalu = 0.0;
   } else if (max_kk <= kk) {
      retvalu = 1.0;
   } else {
      retvalu = log(kk + 1.0) / log(max_kk);
   }
   return (retvalu);
}
long benford_rand(long max_kk)
{
   long ii;
   double summ;
   double target;
   target = randd();
   summ = 0.0;
   ii = 1;
   for (;;) {
      summ += log(1.0 + 1.0 / ii) / log(max_kk);
      if (target <= summ) {
         break; // loop AWAIT
      }
      ii += 1;
   }
   return (ii);
}
double nbd_pdf(double prob_a
      , long rsuccesses
      , long kfailures)
{
   return (comb(rsuccesses + kfailures - 1, kfailures) * pow(prob_a,\
            rsuccesses) * pow(1.0 - prob_a, kfailures));
}
double nbd_cdf(double prob_a
      , long rsuccesses
      , long kfailures)
{
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a));
}
long nbd_rand(double prob_a
      , long rsuccesses)
{
   long failures;
   long rr;
   rr = rsuccesses;
   failures = 0;
   while (0 < rr) {
      if (randd() <= prob_a) {
         rr -= 1;
      } else {
         failures += 1;
      }
   }
   return (failures);
}
double polya_pdf(double prob_a
      , double rsuccesses
      , double kfailures)
{
   return (combx(rsuccesses + kfailures - 1, kfailures) * pow(1.0 -\
            prob_a, kfailures) * pow(prob_a, rsuccesses));
}
double polya_cdf(double prob_a
      , double rsuccesses
      , double kfailures)
{
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a));
}
double polya_rand(double tt
      , double probx)
{
   double nn;
   double ff;
   double rr;
   long uu;
   double qq;
   nn = 0;
   ff = tt - 1;
   qq = exp(tt * log(probx));
   rr = qq;
   uu = randd();
   while (rr <= uu) {
      nn += 1;
      ff += 1;
      qq *= (1.0 - probx) * ff / nn;
      rr += qq;
   }
   return (nn);
}
double zeta_pdf(double ss
      , long ixxp)
{
   double retvalu;
   if (ixxp <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (zeta(ss) * pow(ixxp, ss));
   }
   return (retvalu);
}
double zeta_cdf(double ss
      , long ixxp)
{
   double retvalu;
   if (ixxp <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = hnm(ixxp, ss) / zeta(ss);
   }
   return (retvalu);
}
double ks_cdf(long para_nn
      , double xx)
{
   double retvalu;
   double two_tt_sqr;
   long kk;
   double sum;
   double tt;
   if (para_nn <= 0 || xx <= 0.0) {
      retvalu = 0.0;
   } else {
      if (30 < para_nn) {
         tt = xx;
         two_tt_sqr = 2.0 * tt * tt;
         sum = exp(-two_tt_sqr) * (1.0 - 2.0 * tt / (3.0 * sqrt(para_nn))\
                  - two_tt_sqr * (two_tt_sqr / 9.0 - 1.0 / 3.0) / para_nn);
         retvalu = 1.0 - sum;
      } else {
         tt = xx * sqrt(para_nn);
         sum = 0.0;
         kk = para_nn;
         while (tt < kk) {
            sum += comb(para_nn, kk) * pow(kk - tt, kk) * pow(tt +\
                     para_nn - kk, para_nn - kk - 1);
            kk -= 1;
         }
         retvalu = 1.0 - sum * tt / pow(para_nn, para_nn);
      }
   }
   return (retvalu);
}
double ks_a_cdf(double xx)
{
   double sum;
   double sum_prev;
   double vv;
   long kk;
   double retvalu;
   if (xx < 0.0001) {
      retvalu = 0.0;
   } else {
      sum = 0.0;
      vv = -square(PI / xx) / 8.0;
      kk = 1;
      for (;;) {
         sum_prev = sum;
         sum += exp(vv * kk * kk);
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         kk += 2;
      }
      retvalu = sum * sqrt(TAU) / xx;
   }
   return (retvalu);
}
double ks_b_cdf(long para_nn
      , double xx)
{
   double retvalu;
   double nxx;
   if (xx < 0.0001 || para_nn <= 0) {
      retvalu = 0.0;
   } else {
      nxx = xx + (2.0 * sqrt(para_nn) + 3.0 * xx - 3.0) / (12.0 * para_nn);
      retvalu = ks_a_cdf(nxx);
   }
   return (retvalu);
}
double ks_quantile(double para_nn
      , double probx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   if (! isbetween(probx, 0.0, 1.0)) {
      scvx_xx = 0.0;
   } else {
      scvx_dx = 0.5;
      scvx_xx = 0.25;
      scvx_yy = probx - ks_cdf(para_nn, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = probx - ks_cdf(para_nn, scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double t_pdf(double dfn
      , double xx)
{
   return (tgamma((dfn + 1.0) / 2.0) * pow((1.0 + square(xx) / dfn),\
            (-(dfn + 1.0) / 2.0)) / (sqrt(dfn * PI) * tgamma(dfn / 2.0)));
}
static double lf_subtprob(double para_nnx
      , double xx)
{
   double aa;
   double bb;
   double ww;
   double zz;
   double yy;
   double ii;
   long para_nn;
   double retvalu;
   para_nn = floorl(fabs(para_nnx));
   ww = atan2(xx, sqrt(para_nn));
   zz = square(cos(ww));
   yy = 1.0;
   ii = para_nn - 2.0;
   while (2.0 <= ii) {
      yy = 1.0 + (ii - 1.0) / ii * zz * yy;
      ii -= 2.0;
   }
   if (iseven(para_nn)) {
      aa = sin(ww) / 2.0;
      bb = 0.5;
   } else {
      if (para_nn == 1) {
         aa = 0.0;
      } else {
         aa = sin(ww) * cos(ww) / PI;
      }
      bb = 0.5 + ww / PI;
   }
   retvalu = bb + aa * yy;
   if (1.0 < retvalu) {
      retvalu = 1.0;
   }
   return (retvalu);
}
double t_cdf(double dfx
      , double xx)
{
   return (lf_subtprob(dfx, xx));
}
static double lf_t_quantile(long ndfx
      , double probx)
{
   double ux;
   double uxsq;
   double aa_x;
   double bb_x;
   double cc_x;
   double dd_x;
   double ee_x;
   double retvalu;
   double delta;
   double pp_a;
   double nn_a;
   double out_sign;
   if (probx < 0.5) {
      probx = 1.0 - probx;
      out_sign = -1;
   } else {
      out_sign = 1;
   }
   ux = normal_quantile(probx);
   uxsq = square(ux);
   aa_x = ((1.0) * uxsq + 1.0) / 4.0;
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0;
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq - 15.0) / 384.0;
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq - 1920.0) *\
            uxsq - 945.0) / 92160.0;
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq - 1782.0) *\
            uxsq - 765.0) * uxsq - 17955.0) / 368640.0;
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x / ndfx) /\
            ndfx) / ndfx) / ndfx) / ndfx);
   if (ndfx <= square(log10(probx)) + 3.0) {
      nn_a = ndfx + 1.0;
      for (;;) {
         pp_a = lf_subtprob(ndfx, retvalu);
         ee_x = (nn_a * log(nn_a / (ndfx + square(retvalu))) + log(ndfx /\
                  nn_a / TAU) - 1.0 + (1.0 / nn_a - 1.0 / ndfx) / 6.0) / 2.0;
         if (DBLMAXLN / 2.0 < ee_x) {
            delta = 0.0;
         } else {
            delta = (pp_a - probx) / exp(ee_x);
         }
         retvalu -= delta;
         aa_x = fabs(delta) * 10000.0;
         if (iszero(retvalu) || aa_x < retvalu) {
            break; // loop AWAIT
         }
      }
   }
   return (out_sign * retvalu);
}
double t_quantile(double dfx
      , double probx)
{
   long ndfx;
   double retvalu;
   ndfx = floor(fabs(dfx));
   if (iszero(probx - 0.5)) {
      retvalu = 0.0;
   } else if (probx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (1.0 <= probx) {
      retvalu = DBLMAX;
   } else {
      retvalu = lf_t_quantile(ndfx, probx);
   }
   return (retvalu);
}
double t_cdf__1(double dfx
      , double xx)
{
   double zz;
   double yy;
   yy = sqrt(dfx + xx * xx);
   zz = (xx + yy) / (2.0 * yy);
   return (betainc__1(dfx / 2.0, dfx / 2.0, zz));
}
double t_quantile__1(double dfx
      , double probx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   if (! isbetween(probx, 0.0, 1.0)) {
      scvx_xx = 0.0;
   } else {
      scvx_dx = 0.5;
      scvx_xx = 0.25;
      scvx_yy = probx - t_cdf(dfx, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = probx - t_cdf(dfx, scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double f_cdf(long dfn_a
      , long dfn_b
      , double xx)
{
   double aa;
   double bb;
   double gg;
   aa = dfn_a / 2.0;
   bb = dfn_b / 2.0;
   gg = aa * xx;
   return (beta_cdf(aa, bb, gg / (bb + gg)));
}
static double lf_subfprob(long dfn_a
      , long dfn_b
      , double xx)
{
   double retvalu;
   double zx;
   double ax;
   double bx;
   double yx;
   double ix;
   double pp_a;
   if (xx <= 0.0) {
      retvalu = 1.0;
   } else if (iseven(dfn_b)) {
      zx = dfn_b / (dfn_b + dfn_a * xx);
      ax = 1.0;
      for (ix = dfn_b - 2; 2 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_a + ix - 2.0) / ix * zx * ax;
      }
      retvalu = 1.0 - (pow(1.0 - zx, dfn_a / 2.0) * ax);
   } else if (iseven(dfn_a)) {
      zx = dfn_a * xx / (dfn_b + dfn_a * xx);
      ax = 1.0;
      for (ix = dfn_a - 2; 2 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax;
      }
      retvalu = pow(1.0 - zx, dfn_b / 2.0) * ax;
   } else {
      yx = atan2(sqrt(dfn_a * xx / dfn_b), 1.0);
      zx = square(sin(yx));
      if (dfn_a == 1) {
         ax = 0.0;
      } else {
         ax = 1.0;
      }
      for (ix = dfn_a - 2; 3 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax;
      }
      bx = PI;
      for (ix = 2; ix <= dfn_b - 1; ix += 2) {
         bx *= (ix - 1.0) / ix;
      }
      pp_a = 2.0 / bx * sin(yx) * pow(cos(yx), dfn_b) * ax;
      zx = square(cos(yx));
      if (dfn_b == 1) {
         ax = 0.0;
      } else {
         ax = 1.0;
      }
      for (ix = dfn_b - 2; 3 <= ix; ix -= 2) {
         ax = 1.0 + (ix - 1.0) / ix * zx * ax;
      }
      retvalu = pp_a + 1.0 - 4.0 * (yx + sin(yx) * cos(yx) * ax) / TAU;
      if (retvalu < 0.0) {
         retvalu = 0.0;
      }
   }
   return (retvalu);
}
static double lf_subf_two(double nx
      , double qq
      , double pp)
{
   double uu;
   double nxs;
   double xx_prev;
   double xx;
   double zz;
   uu = chisqr_cdf(nx, pp);
   nxs = nx - 2.0;
   xx = (uu / nx * (1.0 + ((uu - nxs) / 2.0 + (((4.0 * uu - 11.0 * nxs) *\
            uu + nxs * (7.0 * nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 *\
            nxs) * uu + nxs * (17.0 * nx - 26.0)) * uu - nxs * nxs * (9.0\
            * nx - 6.0)) / 48.0 / qq) / qq) / qq));
   for (;;) {
      if (xx <= 0.0) {
         break;
      }
      zz = exp(((nx + qq) * log((nx + qq) / (nx * xx + qq)) + (nx - 2.0)\
               * log(xx) + log(nx * qq / (nx + qq)) - TWOLN - log(TAU) -\
               (1.0 / nx + 1.0 / qq - 1.0 / (nx + qq)) / 6.0) / 2.0);
      xx_prev = xx;
      xx += (lf_subfprob(nx, qq, xx) - pp) / zz;
      if (iswithin(xx, xx_prev, 0.00001)) {
         break; // loop AWAIT
      }
   }
   return (xx);
}
static double lf_subfx(long nx
      , long jj
      , double pp)
{
   double retvalu;
   double uu;
   double aa;
   if (iseq(pp, 1.0)) {
      retvalu = 0.0;
   } else if (jj == 0) {
      retvalu = 1.0 / square(t_quantile(nx, 0.5 - pp / 2.0));
   } else if (nx == 1) {
      retvalu = square(t_quantile(jj, pp / 2.0));
   } else if (jj == 2) {
      uu = chisqr_cdf(jj, 1.0 - pp);
      aa = jj - 2.0;
      retvalu = 1.0 / (uu / jj * (1.0 + ((uu - aa) / 2.0 + (((4.0 * uu -\
               11.0 * aa) * uu + aa * (7.0 * jj - 10)) / 24.0 + (((2.0 *\
               uu - 10.0 * aa) * uu + aa * (17.0 * jj - 26)) * uu - aa *\
               aa * (9.0 * jj - 6.0)) / 48.0 / nx) / nx) / nx));
   } else if (jj < nx) {
      retvalu = 1.0 / lf_subf_two(jj, nx, 1.0 - pp);
   } else {
      retvalu = lf_subf_two(nx, jj, pp);
   }
   return (retvalu);
}
double f_quantile(long dfn_a
      , long dfn_b
      , double probx)
{
   return (lf_subfx(dfn_a, dfn_b, 1.0 - probx));
}
double f_quantile__1(long dfn_a
      , long dfn_b
      , double probx)
{
   double retvalu;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   if (probx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= probx) {
      retvalu = 1.0;
   } else {
      scvx_dx = 0.50;
      scvx_xx = 0.25;
      scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx);
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
      retvalu = scvx_xx;
   }
   return (retvalu);
}
double mb_pdf(double aa
      , double xx)
{
   return (sqrt(4 / TAU) * xx * xx * exp(-xx * xx / (2 * aa * aa)) / (aa\
            * aa * aa));
}
double mb_cdf(double aa
      , double xx)
{
   return (erf(xx / (TWOSQRT * aa)) - sqrt(4 / TAU) * xx * exp(-xx * xx /\
            (2 * aa * aa)) / aa);
}
double maxwell_boltzmann_pdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double aa;
   aa = sqrt(BOLTZMANN * temperature / molecular_mass);
   return (mb_pdf(aa, velocity));
}
double maxwell_boltzmann_cdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double aa;
   aa = sqrt(BOLTZMANN * temperature / molecular_mass);
   return (mb_cdf(aa, velocity));
}
double maxwell_juttner_pdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double gmm;
   double bt;
   double rtht;
   double dn;
   double retvalu;
   if (temperature <= 0.0 || velocity <= 0.0 || LIGHT <= velocity ||\
            molecular_mass <= 0.0) {
      retvalu = 0.0;
   } else {
      rtht = (molecular_mass * LIGHT * LIGHT) / (BOLTZMANN * temperature);
      bt = velocity / LIGHT;
      gmm = 1.0 / topyh1(bt);
      dn = bessKn(2, rtht);
      if (iszero(dn)) {
         retvalu = 0.0;
      } else {
         retvalu = gmm * gmm * bt * rtht * exp(-gmm * rtht) / dn;
      }
   }
   return (retvalu);
}
double blackbodyl_pdf(double wavelen)
{
   double retvalu;
   if (wavelen <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = pow(wavelen, -5.0) / (exp(1.0 / wavelen) - 1.0);
   }
   return (retvalu * 15.0 / pow(PI, 4.0));
}
double blackbodyf_pdf(double freq)
{
   double retvalu;
   if (freq <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = pow(freq, 3.0) / (exp(freq) - 1.0);
   }
   return (retvalu * 15.0 / pow(PI, 4.0));
}
long ints_rand(long para_nn
      , const double *prob_arr_pc)
{
   double sum;
   long p_ind;
   double rndm;
   double hh;
   sum = 0.0;
   for (p_ind = 0; p_ind <= para_nn - 1; p_ind += 1) {
      sum += prob_arr_pc[p_ind];
   }
   rndm = randd();
   hh = 0.0;
   for (p_ind = 0; p_ind <= para_nn - 1; p_ind += 1) {
      hh += prob_arr_pc[p_ind] / sum;
      if (rndm < hh) {
         break;
      }
   }
   return (p_ind);
}
static double lf_num2norm(double numm)
{
   double retvalu;
   if (numm <= 1) {
      retvalu = 0.0;
   } else {
      retvalu = 3.0 * sqrt(log(numm)) - 1.4 - (0.5 * log(numm) - 0.39) /\
               numm;
   }
   return (retvalu);
}
double stdev2spread(double numm
      , double stdevx)
{
   double retvalu;
   if (numm <= 1 || iszero(stdevx)) {
      retvalu = 0.0;
   } else {
      retvalu = (stdevx * lf_num2norm(numm));
   }
   return (retvalu);
}
double spread2stdev(double numm
      , double spread)
{
   double retvalu;
   if (numm <= 1 || iszero(spread)) {
      retvalu = 0.0;
   } else {
      retvalu = (spread / lf_num2norm(numm));
   }
   return (retvalu);
}
double maxabs(long nn
      , const double *data_arr_pc)
{
   long ii;
   double maxaby;
   double amaxaby;
   double atemp;
   maxaby = data_arr_pc[0];
   amaxaby = fabs(maxaby);
   for (ii = 1; ii <= nn - 1; ii += 1) {
      atemp = fabs(data_arr_pc[ii]);
      if (amaxaby < atemp) {
         maxaby = data_arr_pc[ii];
         amaxaby = atemp;
      }
   }
   return (maxaby);
}
double minabs(long nn
      , const double *data_arr_pc)
{
   long ii;
   double minaby;
   double aminaby;
   double atemp;
   minaby = data_arr_pc[0];
   aminaby = fabs(minaby);
   for (ii = 1; ii <= nn - 1; ii += 1) {
      atemp = fabs(data_arr_pc[ii]);
      if (atemp < aminaby) {
         minaby = data_arr_pc[ii];
         aminaby = atemp;
      }
   }
   return (minaby);
}
double maxabsoffset(double offset
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double maxaby;
   double delta;
   maxaby = data_arr_pc[0] - offset;
   for (ii = 1; ii <= nn - 1; ii += 1) {
      delta = data_arr_pc[ii] - offset;
      if (fabs(maxaby) < fabs(delta)) {
         maxaby = delta;
      }
   }
   return (maxaby + offset);
}
double minabsoffset(double offset
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double minaby;
   double delta;
   minaby = data_arr_pc[0] - offset;
   for (ii = 1; ii <= nn - 1; ii += 1) {
      delta = data_arr_pc[ii] - offset;
      if (fabs(delta) < fabs(minaby)) {
         minaby = delta;
      }
   }
   return (minaby + offset);
}
double mini(long num
      , const double *data_arr_pc)
{
   double curr;
   double tmp;
   long ii;
   curr = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (tmp < curr) {
         curr = tmp;
      }
   }
   return (curr);
}
double maxi(long num
      , const double *data_arr_pc)
{
   double curr;
   double tmp;
   long ii;
   curr = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (curr < tmp) {
         curr = tmp;
      }
   }
   return (curr);
}
double maxmin(long num
      , const double *data_arr_pc
      , double *ret_maxmin_arr_p)
{
   double tmp;
   long ii;
   double maxx;
   double minn;
   minn = data_arr_pc[0];
   maxx = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (minn < tmp) {
         minn = tmp;
      }
      if (tmp < maxx) {
         maxx = tmp;
      }
   }
   ret_maxmin_arr_p[0] = maxx;
   ret_maxmin_arr_p[1] = minn;
   return (maxx - minn);
}
double min2(double value_a
      , double value_b)
{
   double retvalu;
   if (value_a < value_b) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double max2(double value_a
      , double value_b)
{
   double retvalu;
   if (value_b < value_a) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double minabs2(double value_a
      , double value_b)
{
   double retvalu;
   if (fabs(value_a) < fabs(value_b)) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double maxabs2(double value_a
      , double value_b)
{
   double retvalu;
   if (fabs(value_b) < fabs(value_a)) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double variance(long nn
      , const double *xx_arr_pc)
{
   long ii;
   double delta;
   double meanx;
   double variancex;
   meanx = 0.0;
   variancex = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      delta = xx_arr_pc[ii] - meanx;
      meanx += delta / (ii + 1.0);
      variancex += delta * (xx_arr_pc[ii] - meanx);
   }
   if (2 <= nn) {
      variancex /= (nn - 1.0);
   } else {
      variancex = 0.0;
   }
   return (variancex);
}
double mean(long nn
      , const double *xx_arr_pc)
{
   long ii;
   double delta;
   double meanx;
   meanx = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      delta = xx_arr_pc[ii] - meanx;
      meanx += delta / (ii + 1.0);
   }
   return (meanx);
}
static const int LC_STTS_NUM = 0;
static const int LC_STTS_MEAN = 1;
static const int LC_STTS_MSQ = 2;
static const int LC_STTS_MAX = 3;
static const int LC_STTS_MIN = 4;
static const int LC_STTS_MAGIC = 5;
#define LC_STTS_CNT 6
#define LC_STTS_KEY_CNT 100
static double lv_sttx_mtrx[LC_STTS_KEY_CNT][LC_STTS_CNT];
static long lf_stts_is_inited(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   long vll;
   long ii;
   long jj;
   long retvalu_bol;
   vll = lv_sttx_mtrx[0][LC_STTS_MAGIC];
   if (vll != magicset() && vll != magicnot()) {
      for (ii = 0; ii <= LC_STTS_KEY_CNT - 1; ii += 1) {
         for (jj = 0; jj <= LC_STTS_MAGIC - 1; jj += 1) {
            lv_sttx_mtrx[ii][jj] = 0.0;
         }
         lv_sttx_mtrx[0][LC_STTS_MAGIC] = magicnot();
      }
   }
   if (LC_STTS_KEY_CNT <= ix_hndl) {
      retvalu_bol = false;
   } else {
      vll = lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC];
      retvalu_bol = ismagic(vll);
   }
   return (retvalu_bol);
}
static long lf_stts_find_empty(void)
{
   long ix_hndl;
   ix_hndl = 0;
   while (lf_stts_is_inited(ix_hndl)) {
      ix_hndl += 1;
   }
   if (LC_STTS_KEY_CNT <= ix_hndl) {
      fprintf(stderr, "lf_stts_find_empty:""STTS-Bad-handle");
      exit(1);
   }
   return (ix_hndl);
}
long stts_init(long ix_hndl
      , double n_count
      , double meanx
      , double var
      , double minim
      , double maxim)
{
   // local-use C lv_sttx_mtrx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] = n_count;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = meanx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = var * (n_count - 1.0);
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = minim;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = maxim;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicset();
   return (ix_hndl);
}
long stts_initx(long ix_hndl
      , double num_count
      , double meanx
      , double msq
      , double minim
      , double maxim)
{
   // local-use C lv_sttx_mtrx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] = num_count;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = meanx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = msq;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = minim;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = maxim;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicset();
   return (ix_hndl);
}
long stts_reset(long ix_hndl)
{
   return (stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0));
}
long stts_new(void)
{
   long ix_hndl;
   ix_hndl = lf_stts_find_empty();
   return (stts_reset(ix_hndl));
}
long stts_delete(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicnot();
   return (ix_hndl);
}
double sttscount(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]);
}
double sttsmean(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN]);
}
double sttsmsq(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ]);
}
double sttsmax(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MAX]);
}
double sttsmin(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MIN]);
}
double sttsmagic(long ix_hndl)
{
   // local-use C lv_sttx_mtrx;
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC]);
}
double sttssum(long ix_hndl)
{
   return (sttsmean(ix_hndl) * sttscount(ix_hndl));
}
double sttsvar(long ix_hndl)
{
   double retvalu;
   if (fabs(sttscount(ix_hndl)) <= 1.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sttsmsq(ix_hndl) / (fabs(sttscount(ix_hndl) - 1.0)));
   }
   return (retvalu);
}
double sttsstdev(long ix_hndl)
{
   double retvalu;
   if (sttscount(ix_hndl) <= 1.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sqrt(sttsmsq(ix_hndl) / (sttscount(ix_hndl) - 1.0)));
   }
   return (retvalu);
}
double sttsstdevmean(long ix_hndl)
{
   double retvalu;
   if (sttscount(ix_hndl) <= 1.0 || sttsmsq(ix_hndl) <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sqrt(sttsmsq(ix_hndl)) / (sttscount(ix_hndl) - 1.0));
   }
   return (retvalu);
}
double sttsspread(long ix_hndl)
{
   return (sttsmax(ix_hndl) - sttsmin(ix_hndl));
}
double stts_update(long ix_hndl
      , double new_data)
{
   // local-use C lv_sttx_mtrx;
   double delta;
   double numy;
   if (! lf_stts_is_inited(ix_hndl)) {
      fprintf(stderr, "stts_update:""STTS-Bad-handle");
      exit(1);
   }
   delta = new_data - lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN];
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] += 1.0;
   numy = lv_sttx_mtrx[ix_hndl][LC_STTS_NUM];
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] += (delta / numy);
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] += (delta * (new_data -\
            lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN]));
   if ((numy < 2.0 || sttsspread(ix_hndl) < 0.0)) {
      lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = new_data;
      lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = new_data;
   } else {
      if (new_data < lv_sttx_mtrx[ix_hndl][LC_STTS_MIN]) {
         lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = new_data;
      }
      if (lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] < new_data) {
         lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = new_data;
      }
   }
   return (delta);
}
double stts_downdate(long ix_hndl
      , double old_data)
{
   double delt;
   double men;
   if (! lf_stts_is_inited(ix_hndl)) {
      fprintf(stderr, "stts_downdate:""STTS-Bad-handle");
      exit(1);
   }
   men = lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN];
   delt = old_data - men;
   if (0.0 < lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]) {
      lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] -= 1;
      if (0.0 < lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]) {
         men -= delt / lv_sttx_mtrx[ix_hndl][LC_STTS_NUM];
         lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = men;
         lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] -= delt * (old_data - men);
         if (lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] < 0.0) {
            lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = 0.0;
         }
      } else {
         lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = 0.0;
         lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = 0.0;
      }
   }
   return (delt);
}
double stts_updatex(long ix_hndl
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double retvalu;
   retvalu = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      retvalu += stts_update(ix_hndl, data_arr_pc[ii]);
   }
   return (retvalu);
}
long stts_newx(long nn
      , const double *data_arr_pc)
{
   long ihndl;
   long ii;
   ihndl = stts_new();
   for (ii = 0; ii <= nn - 1; ii += 1) {
      (void) stts_update(ihndl, data_arr_pc[ii]);
   }
   return (ihndl);
}
long stts_shift(long ix_hndl
      , double data_shift)
{
   // local-use C lv_sttx_mtrx;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] += data_shift;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] += data_shift;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] += data_shift;
   return (ix_hndl);
}
long stts_scale(long ix_hndl
      , double xfactor)
{
   // local-use C lv_sttx_mtrx;
   double newmax;
   double newmin;
   if (0 < xfactor) {
      newmax = lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] * xfactor;
      newmin = lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] * xfactor;
   } else {
      newmax = lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] * xfactor;
      newmin = lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] * xfactor;
   }
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = newmin;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = newmax;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] *= xfactor;
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] *= xfactor * xfactor;
   return (ix_hndl);
}
long stts_copy(long hto
      , long hfrom)
{
   // local-use C lv_sttx_mtrx;
   long ii;
   for (ii = 0; ii <= LC_STTS_CNT - 1; ii += 1) {
      lv_sttx_mtrx[hto][ii] = lv_sttx_mtrx[hfrom][ii];
   }
   return (hto);
}
long stts_update2(long ix_hnda
      , long ix_hndb)
{
   double delta;
   double ncount;
   double nb;
   double nmean;
   double nmsqr;
   double bmin;
   double bmax;
   double amin;
   double amax;
   if (! lf_stts_is_inited(ix_hndb)) {
      fprintf(stderr, "stts_update2:""STTS-Bad-hndb");
      exit(1);
   }
   nb = sttscount(ix_hndb);
   if (! iszero(nb)) {
      if (! lf_stts_is_inited(ix_hnda)) {
         fprintf(stderr, "stts_update2:""STTS-Bad-hnda");
         exit(1);
      }
      if (iszero(sttscount(ix_hnda))) {
         (void) stts_copy(ix_hnda, ix_hndb);
      } else {
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda);
         ncount = nb + sttscount(ix_hnda);
         nmean = sttsmean(ix_hnda) + delta * nb / ncount;
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta * delta *\
                  sttscount(ix_hnda) * nb / ncount);
         amin = sttsmin(ix_hnda);
         amax = sttsmax(ix_hnda);
         bmin = sttsmin(ix_hndb);
         bmax = sttsmax(ix_hndb);
         if (amax < amin) {
            amin = bmin;
            amax = bmax;
         } else {
            if (bmin < amin) {
               amin = bmin;
            }
            if (amax < bmax) {
               amax = bmax;
            }
         }
         (void) stts_init(ix_hnda, ncount, nmean, nmsqr / (ncount - 1.0),\
                  amin, amax);
      }
   }
   return (ix_hnda);
}
static const int LC_STTSC_XX = 0;
static const int LC_STTSC_YY = 1;
static const int LC_STTSC_COVAR = 2;
static const int LC_STTSC_MAGIC = 3;
#define LC_STTSC_CNT 4
static double lv_crx_mtrx[LC_STTS_KEY_CNT][LC_STTSC_CNT];
static long lf_corr_is_init(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   long retvalu_bol;
   double vll;
   if (LC_STTS_KEY_CNT <= ix_chnd) {
      retvalu_bol = false;
   } else {
      vll = lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC];
      retvalu_bol = ismagic(vll);
   }
   return (retvalu_bol);
}
static long lf_corr_find_empty(void)
{
   long ix_chnd;
   ix_chnd = 0;
   while (lf_corr_is_init(ix_chnd)) {
      ix_chnd += 1;
   }
   if (LC_STTS_KEY_CNT <= ix_chnd) {
      fprintf(stderr, "lf_corr_find_empty:""STTS-No-empty-handle");
      exit(1);
   }
   return (ix_chnd);
}
long corr_new(void)
{
   // local-use C lv_crx_mtrx;
   long ix_chnd;
   ix_chnd = lf_corr_find_empty();
   lv_crx_mtrx[ix_chnd][LC_STTSC_XX] = stts_new();
   lv_crx_mtrx[ix_chnd][LC_STTSC_YY] = stts_new();
   lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] = 0.0;
   lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC] = magicset();
   return (ix_chnd);
}
long corr_delete(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC] = magicnot();
   (void) stts_delete(lv_crx_mtrx[ix_chnd][LC_STTSC_XX]);
   (void) stts_delete(lv_crx_mtrx[ix_chnd][LC_STTSC_YY]);
   return (ix_chnd);
}
long corr_handlex(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   return (lv_crx_mtrx[ix_chnd][LC_STTSC_XX]);
}
long corr_handley(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   return (lv_crx_mtrx[ix_chnd][LC_STTSC_YY]);
}
double corr_update(long ix_chnd
      , double xx
      , double yy)
{
   // local-use C lv_crx_mtrx;
   long num;
   double ddxx;
   double ddyy;
   long yyhnd;
   long xxhnd;
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY];
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX];
   num = sttscount(xxhnd);
   ddxx = stts_update(xxhnd, xx);
   ddyy = stts_update(yyhnd, yy);
   lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] += (ddxx * ddyy * num / (num + 1.0));
   return (lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR]);
}
double corrslope(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   double den;
   double retvalu;
   long xxhnd;
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX];
   den = sttsmsq(xxhnd);
   if (iszero(den)) {
      retvalu = 0.0;
   } else {
      retvalu = lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] / den;
   }
   return (retvalu);
}
double corry0(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   double retvalu;
   long yyhnd;
   long xxhnd;
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY];
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX];
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) * sttsmean(xxhnd));
   return (retvalu);
}
double corrcorr(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   double retvalu;
   double xxmsq;
   double yymsq;
   double den;
   xxmsq = sttsmsq(lv_crx_mtrx[ix_chnd][LC_STTSC_XX]);
   yymsq = sttsmsq(lv_crx_mtrx[ix_chnd][LC_STTSC_YY]);
   den = xxmsq * yymsq;
   if (iszero(den)) {
      retvalu = 0.0;
   } else {
      retvalu = (lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] / sqrt(den));
   }
   return (retvalu);
}
double corrstderr(long ix_chnd)
{
   // local-use C lv_crx_mtrx;
   long yyhnd;
   double diff;
   double retvalu;
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY];
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) *\
            lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR]);
   if (diff < 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = sqrt(diff / (sttscount(yyhnd) - 2.0));
   }
   return (retvalu);
}
double fit_poly(long num_points
      , const double *pts_arr_pc
      , double *ret_coeff_arr_p)
{
   long i_ind;
   long j_ind;
   long k_ind;
   double prod;
   double *cc_arr = NULL;
   cc_arr = realloc(cc_arr
      , (num_points) * sizeof(cc_arr[0]));
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      cc_arr[j_ind] = pts_arr_pc[2 * j_ind + 1];
   }
   for (j_ind = 1; j_ind <= num_points - 1; j_ind += 1) {
      k_ind = num_points - 1 - j_ind;
      for (i_ind = num_points - 1; j_ind <= i_ind; i_ind -= 1) {
         cc_arr[i_ind] = ((cc_arr[i_ind - 1] - cc_arr[i_ind]) /\
                  (pts_arr_pc[2 * k_ind] - pts_arr_pc[2 * i_ind]));
         k_ind -= 1;
      }
   }
   for (j_ind = 0; j_ind <= num_points - 2; j_ind += 1) {
      for (i_ind = num_points - 2; j_ind <= i_ind; i_ind -= 1) {
         prod = cc_arr[i_ind + 1] * pts_arr_pc[2 * (i_ind - j_ind)];
         cc_arr[i_ind] -= prod;
      }
   }
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      ret_coeff_arr_p[j_ind] = cc_arr[j_ind];
   }
   free(cc_arr);
   return (num_points);
}
static const int LC_PARABOLA_X_AXIS = 0;
static const int LC_PARABOLA_Y_EXTREMA = 1;
static const int LC_PARABOLA_REAL_ROOTS = 2;
static const int LC_PARABOLA_ROOT_A = 3;
static const int LC_PARABOLA_ROOT_B = 4;
static const int LC_PARABOLA_COEFF_C = 5;
static const int LC_PARABOLA_COEFF_B = 6;
static const int LC_PARABOLA_COEFF_A = 7;
static double lv_parabola_arr[8];
double parabola_solve(double xx_a
      , double yy_a
      , double xx_b
      , double yy_b
      , double xx_c
      , double yy_c)
{
   // local-use C lv_parabola_arr;
   double pts_arr[8];
   double cc_arr[4];
   double disc;
   double axis;
   double yyextrema;
   long real_roots;
   double roots_arr[2];
   pts_arr[0] = xx_a;
   pts_arr[1] = yy_a;
   pts_arr[2] = xx_b;
   pts_arr[3] = yy_b;
   pts_arr[4] = xx_c;
   pts_arr[5] = yy_c;
   (void) fit_poly(3, pts_arr, cc_arr);
   roots_arr[0] = DBLMAX;
   roots_arr[1] = DBLMAX;
   if (iszero(cc_arr[2])) {
      axis = DBLMAX;
      if (iszero(cc_arr[1])) {
         yyextrema = cc_arr[0];
         real_roots = 0;
      } else {
         yyextrema = DBLMAX;
         real_roots = 1;
         roots_arr[0] = (-cc_arr[0] / cc_arr[1]);
      }
   } else {
      axis = (-cc_arr[1] / (2.0 * cc_arr[2]));
      yyextrema = (cc_arr[0] + xx_a * (cc_arr[1] + xx_a * cc_arr[2]));
      disc = (cc_arr[1] * cc_arr[1] - 4.0 * cc_arr[2] * cc_arr[0]);
      if (iszero(disc)) {
         real_roots = 1;
         roots_arr[0] = axis;
      } else if (0 < disc) {
         disc = sqrt(disc) / (2.0 * cc_arr[2]);
         real_roots = 2;
         roots_arr[0] = axis - disc;
         roots_arr[1] = axis + disc;
      } else {
         real_roots = 0;
      }
   }
   lv_parabola_arr[LC_PARABOLA_X_AXIS] = axis;
   lv_parabola_arr[LC_PARABOLA_Y_EXTREMA] = yyextrema;
   lv_parabola_arr[LC_PARABOLA_REAL_ROOTS] = real_roots;
   lv_parabola_arr[LC_PARABOLA_ROOT_A] = roots_arr[0];
   lv_parabola_arr[LC_PARABOLA_ROOT_B] = roots_arr[1];
   lv_parabola_arr[LC_PARABOLA_COEFF_C] = cc_arr[0];
   lv_parabola_arr[LC_PARABOLA_COEFF_B] = cc_arr[1];
   lv_parabola_arr[LC_PARABOLA_COEFF_A] = cc_arr[2];
   return (axis);
}
double parabola_get(long ii_ind)
{
   // local-use C lv_parabola_arr;
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 7) {
      retvalu = lv_parabola_arr[ii_ind];
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
double parabola_roots(long ii_ind)
{
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 1) {
      retvalu = parabola_get(ii_ind + LC_PARABOLA_ROOT_A);
   } else {
      retvalu = DBLMAX;
   }
   return (retvalu);
}
double parabola_yextrema(void)
{
   return (parabola_get(LC_PARABOLA_Y_EXTREMA));
}
double parabola_xaxis(void)
{
   return (parabola_get(LC_PARABOLA_X_AXIS));
}
double parabola_realroots(void)
{
   return (parabola_get(LC_PARABOLA_REAL_ROOTS));
}
static const int LC_CIRCLE_X = 0;
static const int LC_CIRCLE_Y = 1;
static const int LC_CIRCLE_RADIUS = 2;
static double lv_circle_arr[3];
double circle_solve(double x_a
      , double y_a
      , double x_b
      , double y_b
      , double x_c
      , double y_c)
{
   // local-use C lv_circle_arr;
   double y_ba;
   double x_ba;
   double y_ca;
   double x_ca;
   double det;
   double xy_ba;
   double xy_ca;
   double center_x;
   double center_y;
   double radius;
   y_ba = y_b - y_a;
   x_ba = x_b - x_a;
   y_ca = y_c - y_a;
   x_ca = x_c - x_a;
   det = 2.0 * (y_ba * x_ca - y_ca * x_ba);
   if (! iszero(det)) {
      xy_ba = y_ba * (y_a + y_b) + x_ba * (x_a + x_b);
      xy_ca = y_ca * (y_a + y_c) + x_ca * (x_a + x_c);
      center_x = (y_ba * xy_ca - y_ca * xy_ba) / det;
      center_y = (x_ca * xy_ba - x_ba * xy_ca) / det;
      radius = hypot(center_x - x_a, center_y - y_a);
   } else {
      center_x = DBLMAX;
      center_y = DBLMAX;
      radius = DBLMAX;
   }
   lv_circle_arr[LC_CIRCLE_X] = center_x;
   lv_circle_arr[LC_CIRCLE_Y] = center_y;
   lv_circle_arr[LC_CIRCLE_RADIUS] = radius;
   return (radius);
}
double circle_get(long ii_ind)
{
   // local-use C lv_circle_arr;
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 2) {
      retvalu = lv_circle_arr[ii_ind];
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
double fit_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_coeff_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spr;
   double nx_spr;
   double nx_a;
   double nx_b;
   double dxx;
   double dyy;
   double pty;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double max_dyy;
   double min_dyy;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
   }
   nx_spr = -1;
   nx_a = 0;
   nx_b = 0;
   epsxx *= 16 * DBLEPS;
   epsyy *= 16 * DBLEPS;
   for (i_ind = 1; i_ind <= num_points - 1; i_ind += 1) {
      for (j_ind = 0; j_ind <= i_ind - 1; j_ind += 1) {
         dxx = xxp_arr[i_ind] - xxp_arr[j_ind];
         if (epsxx < fabs(dxx)) {
            slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx;
            intercept_t = yyp_arr[i_ind] - slope_t * xxp_arr[i_ind];
            pty = slope_t * xxp_arr[0] + intercept_t;
            dyy = yyp_arr[0] - pty;
            min_dyy = dyy;
            max_dyy = dyy;
            k_ind = 1;
            while (k_ind < num_points) {
               pty = slope_t * xxp_arr[k_ind] + intercept_t;
               dyy = yyp_arr[k_ind] - pty;
               if (dyy < min_dyy) {
                  min_dyy = dyy;
               }
               if (max_dyy < dyy) {
                  max_dyy = dyy;
               }
               this_spr = max_dyy - min_dyy;
               if ((0 < nx_spr && nx_spr + epsyy < this_spr) || (min_dyy\
                        < - epsyy && epsyy < max_dyy)) {
                  break;
               }
               k_ind += 1;
            }
            if (num_points <= k_ind) {
               if ((this_spr <= nx_spr + epsyy && fabs(nx_a) <\
                        fabs(slope_t)) || nx_spr < 0 || this_spr < nx_spr\
                        - epsyy) {
                  nx_spr = this_spr;
                  nx_a = slope_t;
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0;
               }
            }
         }
      }
   }
   free(xxp_arr);
   free(yyp_arr);
   ret_coeff_arr_p[1] = nx_a;
   ret_coeff_arr_p[0] = nx_b;
   ret_coeff_arr_p[2] = nx_spr / 2.0;
   return (nx_spr / 2.0);
}
static double lf_signcrossproduct(double x_a
      , double y_a
      , double x_b
      , double y_b
      , double x_c
      , double y_c)
{
   double cr;
   double bbx_a;
   double bby_a;
   double ccx_a;
   double ccy_a;
   bbx_a = x_b - x_a;
   bby_a = y_b - y_a;
   ccx_a = x_c - x_a;
   ccy_a = y_c - y_a;
   cr = bbx_a * ccy_a - ccx_a * bby_a;
   return (cr);
}
double fitx_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long *chi_arr = NULL;
   long chisize;
   long hh;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spr;
   double nx_spr;
   double nx_a;
   double nx_b;
   double dxx;
   double pty;
   double dyy;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double max_dyy;
   double min_dyy;
   long e_ind;
   long t_ind;
   long poh_ind;
   double crx;
   long lmbm_ind;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   chi_arr = realloc(chi_arr
      , (num_points) * sizeof(chi_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   lmbm_ind = 0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
      if (xxp_arr[j_ind] <= xxp_arr[lmbm_ind]) {
         if (xxp_arr[j_ind] < xxp_arr[lmbm_ind] || yyp_arr[j_ind] <=\
                  yyp_arr[lmbm_ind]) {
            lmbm_ind = j_ind;
         }
      }
   }
   nx_spr = -1;
   nx_a = 0;
   nx_b = 0;
   epsxx *= 16 * DBLEPS;
   epsyy *= 16 * DBLEPS;
   poh_ind = lmbm_ind;
   chisize = 0;
   for (;;) {
      chi_arr[chisize] = poh_ind;
      e_ind = 0;
      for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
         if (e_ind == poh_ind) {
            e_ind = j_ind;
         } else {
            t_ind = chi_arr[chisize];
            crx = lf_signcrossproduct(xxp_arr[j_ind], yyp_arr[j_ind],\
                     xxp_arr[t_ind], yyp_arr[t_ind], xxp_arr[e_ind],\
                     yyp_arr[e_ind]);
            if (crx < 0) {
               e_ind = j_ind;
            }
         }
      }
      chisize += 1;
      if (num_points < chisize) {
         fprintf(stderr, "fitx_minmax:""OOPS");
         exit(1);
      }
      poh_ind = e_ind;
      if (e_ind == chi_arr[0]) {
         break; // loop AWAIT
      }
   }
   chi_arr[chisize] = chi_arr[0];
   chisize += 1;
   for (hh = 0; hh <= chisize - 2; hh += 1) {
      i_ind = chi_arr[hh];
      j_ind = chi_arr[hh + 1];
      dxx = xxp_arr[i_ind] - xxp_arr[j_ind];
      if (epsxx < fabs(dxx)) {
         slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx;
         intercept_t = yyp_arr[i_ind] - slope_t * xxp_arr[i_ind];
         dyy = yyp_arr[0] - (slope_t * xxp_arr[0] + intercept_t);
         min_dyy = dyy;
         max_dyy = dyy;
         this_spr = 0;
         k_ind = 1;
         while (k_ind < num_points) {
            pty = (slope_t * xxp_arr[k_ind] + intercept_t);
            dyy = yyp_arr[k_ind] - pty;
            if (dyy < min_dyy) {
               min_dyy = dyy;
            }
            if (max_dyy < dyy) {
               max_dyy = dyy;
            }
            this_spr = max_dyy - min_dyy;
            if ((0 < nx_spr && nx_spr + epsyy < this_spr) || (min_dyy < -\
                     epsyy && epsyy < max_dyy)) {
               break;
            }
            k_ind += 1;
         }
         if (num_points <= k_ind) {
            if ((this_spr <= nx_spr + epsyy && fabs(nx_a) <\
                     fabs(slope_t)) || nx_spr < 0 || this_spr < nx_spr -\
                     epsyy) {
               nx_a = slope_t;
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0;
               nx_spr = this_spr;
            }
         }
      }
   }
   free(xxp_arr);
   free(yyp_arr);
   free(chi_arr);
   ret_arr_p[0] = nx_b;
   ret_arr_p[1] = nx_a;
   ret_arr_p[2] = nx_spr / 2.0;
   return (ret_arr_p[2]);
}
double fit_minmax0(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spr;
   double mnmxz_spread;
   double mnmxz_slope;
   double mnmxz_intercept;
   double dxx;
   double dyy;
   double pty;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double midxx;
   double midyy;
   double max_dyy;
   double min_dyy;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pts_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pts_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
   }
   mnmxz_spread = -1;
   mnmxz_slope = 0;
   mnmxz_intercept = yyp_arr[0];
   epsxx *= 8 * DBLEPS;
   epsyy *= 8 * DBLEPS;
   for (i_ind = 2; i_ind <= num_points - 1; i_ind += 1) {
      for (j_ind = 2; j_ind <= i_ind - 1; j_ind += 1) {
         midxx = (xxp_arr[i_ind] + xxp_arr[j_ind]) / 2.0;
         midyy = (yyp_arr[i_ind] + yyp_arr[j_ind]) / 2.0;
         dxx = xxp_arr[0] - midxx;
         if (epsxx < fabs(dxx)) {
            slope_t = (yyp_arr[0] - midyy) / dxx;
            intercept_t = yyp_arr[0] - slope_t * xxp_arr[0];
            min_dyy = 0;
            max_dyy = 0;
            for (k_ind = 0; k_ind <= num_points - 1; k_ind += 1) {
               pty = slope_t * xxp_arr[k_ind] + intercept_t;
               dyy = yyp_arr[k_ind] - pty;
               if (dyy < min_dyy) {
                  min_dyy = dyy;
               }
               if (max_dyy < dyy) {
                  max_dyy = dyy;
               }
               this_spr = max_dyy - min_dyy;
               if (0 < mnmxz_spread && mnmxz_spread + epsyy < this_spr) {
                  break;
               }
            }
            if (mnmxz_spread < 0 || this_spr < mnmxz_spread - epsyy) {
               mnmxz_slope = slope_t;
               mnmxz_intercept = intercept_t;
               mnmxz_spread = this_spr;
            }
         }
      }
   }
   if (0 <= mnmxz_spread) {
      ret_arr_p[1] = mnmxz_slope;
      ret_arr_p[0] = mnmxz_intercept;
      ret_arr_p[2] = mnmxz_spread / 2.0;
   }
   free(xxp_arr);
   free(yyp_arr);
   return (mnmxz_spread / 2.0);
}
double fit_ls(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p)
{
   long i_ind;
   double dxx;
   double dyy;
   double xx;
   double yy;
   double slope;
   double mean_yy;
   double ssq_yy;
   double mean_xx;
   double ssq_xx;
   double covariance_xy;
   mean_xx = 0.0;
   ssq_xx = 0.0;
   mean_yy = 0.0;
   ssq_yy = 0.0;
   covariance_xy = 0.0;
   for (i_ind = 0; i_ind <= num_points - 1; i_ind += 1) {
      xx = pts_arr_pc[2 * i_ind];
      dxx = xx - mean_xx;
      mean_xx += dxx / (i_ind + 1);
      ssq_xx += dxx * (xx - mean_xx);
      yy = pts_arr_pc[2 * i_ind + 1];
      dyy = yy - mean_yy;
      mean_yy += dyy / (i_ind + 1);
      ssq_yy += dyy * (yy - mean_yy);
      covariance_xy += dxx * dyy * i_ind / (i_ind + 1.0);
   }
   slope = covariance_xy / ssq_xx;
   ret_arr_p[1] = slope;
   ret_arr_p[0] = mean_yy - slope * mean_xx;
   ret_arr_p[2] = covariance_xy / sqrt(ssq_xx * ssq_yy);
   ret_arr_p[3] = sqrt((ssq_yy - slope * covariance_xy) / (num_points - 2));
   return (ret_arr_p[2]);
}
double fit_ls0(long num_points
      , const double *pts_arr_pc
      , double *ret_lsz_arr_p)
{
   double xxsum;
   double xysum;
   double dxx;
   double slope;
   long j_ind;
   long i_ind;
   xxsum = 0.0;
   xysum = 0.0;
   for (i_ind = 1; i_ind <= num_points - 1; i_ind += 1) {
      j_ind = 2 * i_ind;
      dxx = (pts_arr_pc[j_ind] - pts_arr_pc[0]);
      xxsum += dxx * dxx;
      xysum += dxx * (pts_arr_pc[j_ind + 1] - pts_arr_pc[1]);
   }
   slope = xysum / xxsum;
   ret_lsz_arr_p[1] = slope;
   ret_lsz_arr_p[0] = (pts_arr_pc[1] - slope * pts_arr_pc[0]);
   return (slope);
}
double sqrt__1(double xx)
{
   double yy_curr;
   double yy_prev;
   double zz;
   double power_of_two;
   if (xx <= 0.0) {
      yy_curr = 0.0;
   } else {
      power_of_two = 1.0;
      zz = xx;
      while (4.0 <= zz) {
         zz /= 4.0;
         power_of_two *= 2.0;
      }
      while (zz < 1.0) {
         zz *= 4.0;
         power_of_two /= 2.0;
      }
      yy_curr = (((-0.0353026277858345) * zz + 0.502513025246083) * zz +\
               0.546382637992462);
      for (;;) {
         yy_prev = yy_curr;
         yy_curr = (yy_curr + zz / yy_curr) / 2.0;
         if (iseq(yy_prev, yy_curr)) {
            break; // loop AWAIT
         }
      }
      yy_curr *= power_of_two;
   }
   return (yy_curr);
}
double sqrt__2(double xx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double ini;
   if (xx <= 0.0) {
      scvx_xx = 0.0;
   } else {
      if (1.0 < xx) {
         ini = xx / 2.0;
      } else {
         ini = 2.0 * xx;
      }
      scvx_dx = ini / 10.0;
      scvx_xx = ini;
      scvx_yy = xx - scvx_xx * scvx_xx;
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = xx - scvx_xx * scvx_xx;
         if (iseq(scvx_yy, scvx_yp)) {
            break;
         }
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
      }
   }
   return (scvx_xx);
}
double sqrt__3(double yy)
{
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   double ini;
   if (yy <= 0.0) {
      nrvx_xx = 0.0;
   } else {
      if (1.0 < yy) {
         ini = yy / 2.0;
      } else {
         ini = 2.0 * yy;
      }
      nrvx_xx = ini;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = 2.0 * nrvx_xx;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = nrvx_xx * nrvx_xx - yy;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   }
   return (nrvx_xx);
}
double nthroot__1(double xx
      , long kk)
{
   double yy_curr;
   double yy_prev;
   double pp;
   long ii;
   if (xx <= 0.0) {
      yy_curr = 0.0;
   } else {
      yy_curr = xx / 2.0;
      for (;;) {
         yy_prev = yy_curr;
         pp = yy_curr;
         for (ii = 2; ii <= kk - 1; ii += 1) {
            pp *= yy_curr;
         }
         yy_curr = (yy_curr * (kk - 1.0) + xx / pp) / kk;
         if (iseq(yy_prev, yy_curr)) {
            break; // loop AWAIT
         }
      }
   }
   return (yy_curr);
}
double cossin_ev(long init_ii
      , double xx_rad
      , long addone_mult)
{
   double cval;
   long ii;
   double trig_sum;
   double xr_rad;
   double xr_sqr;
   if (iszero(xx_rad)) {
      trig_sum = 0.0;
   } else {
      xr_rad = fmods(xx_rad, TAU);
      xr_sqr = -xr_rad * xr_rad;
      cval = 1.0;
      ii = init_ii;
      while (DBLEPS / 16.0 < fabs(cval)) {
         ii += 2;
         cval *= xr_sqr / (ii * (ii - 1.0));
      }
      trig_sum = 1.0 / (ii * (ii + 1.0));
      while (1 < ii) {
         trig_sum += 1.0;
         trig_sum *= xr_sqr / (ii * (ii - 1.0));
         ii -= 2;
      }
      if (addone_mult) {
         trig_sum += 1.0;
         trig_sum *= xr_rad;
      }
   }
   return (trig_sum);
}
double cos__1(double xx_rad)
{
   return (cossin_ev(0, xx_rad, false) + 1.0);
}
double cosm1__1(double xx_rad)
{
   return (cossin_ev(0, xx_rad, false));
}
double sin__1(double xx_rad)
{
   return (cossin_ev(1, xx_rad, true));
}
double sinc__1(double xx_rad)
{
   double retvalu;
   if (iszero(xx_rad)) {
      retvalu = 1.0;
   } else {
      if (TAU / 2.0 < fabs(xx_rad)) {
         retvalu = cossin_ev(1, xx_rad, true) / xx_rad;
      } else {
         retvalu = cossin_ev(1, xx_rad, false) + 1.0;
      }
   }
   return (retvalu);
}
double exp__1(double xx)
{
   long ii;
   long term_count;
   double vale;
   double axx;
   double exp_sum;
   double retvalu;
   long squaring_count;
   if (xx < 0.0) {
      axx = -xx;
   } else {
      axx = xx;
   }
   squaring_count = 0;
   while (1.0 < axx) {
      axx /= 2.0;
      squaring_count += 1;
   }
   vale = 1.0;
   term_count = 1;
   while (DBLEPS / 10.0 < vale) {
      term_count += 1;
      vale *= axx / term_count;
   }
   exp_sum = 1.0 / (term_count + 1.0);
   for (ii = term_count; 1 <= ii; ii -= 1) {
      exp_sum = 1.0 + axx * (exp_sum / ii);
   }
   if (xx < 0.0) {
      retvalu = 1.0 / exp_sum;
   } else {
      retvalu = exp_sum;
   }
   for (ii = 1; ii <= squaring_count; ii += 1) {
      retvalu *= retvalu;
   }
   return (retvalu);
}
double exp__2(double xx)
{
   long ii;
   long term_count;
   double axx;
   double expmo_sum;
   double retvalu;
   long squaring_count;
   double vale;
   if (xx < 0.0) {
      axx = -xx;
   } else {
      axx = xx;
   }
   squaring_count = 0;
   while (1.0 < axx) {
      axx /= 2.0;
      squaring_count += 1;
   }
   vale = 1.0;
   term_count = 1;
   while (DBLEPS / 4.0 < vale) {
      term_count += 1;
      vale *= axx / term_count;
   }
   expmo_sum = 0.0;
   for (ii = term_count; 1 <= ii; ii -= 1) {
      expmo_sum = axx * (expmo_sum + 1.0) / ii;
   }
   for (ii = 1; ii <= squaring_count; ii += 1) {
      expmo_sum *= (2.0 + expmo_sum);
   }
   if (xx < 0.0) {
      retvalu = 1.0 / (expmo_sum + 1.0);
   } else {
      retvalu = expmo_sum + 1.0;
   }
   return (retvalu);
}
double ln__1(double xx)
{
   double yy_curr;
   double logshift;
   double retvalu;
   double tmp;
   logshift = 0.0;
   yy_curr = 8.0 / xx;
   tmp = (DBLEPS);
   while (tmp < yy_curr) {
      logshift -= 16.0 * TWOLN;
      yy_curr /= 65536.0;
   }
   retvalu = (PI / agmean(2.0, yy_curr) + logshift);
   return (retvalu);
}
double ln__2(double xx)
{
   double yy_curr;
   double ptwo;
   double term;
   double nn;
   double sum_curr;
   double sum_prev;
   double mant;
   yy_curr = xx;
   ptwo = 0.0;
   while (TWOSQRT < yy_curr) {
      ptwo += 1.0;
      yy_curr /= 2.0;
   }
   while (yy_curr < 1.0 / TWOSQRT) {
      ptwo -= 1.0;
      yy_curr *= 2.0;
   }
   mant = (yy_curr - 1.0) / (yy_curr + 1.0);
   sum_curr = 2.0 * mant;
   term = sum_curr;
   mant *= mant;
   nn = 3;
   for (;;) {
      term *= mant;
      sum_prev = sum_curr;
      sum_curr += term / nn;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      nn += 2;
   }
   return (ptwo * TWOLN + sum_curr);
}
double euler__1(void)
{
   double twon;
   double exptwon;
   long ii;
   long jj;
   double term;
   double subsum;
   double sum_curr;
   double sum_prev;
   twon = 1.0;
   exptwon = E;
   ii = 0;
   for (;;) {
      twon *= 2.0;
      exptwon *= exptwon;
      if (0.1 < DBLEPS * exptwon) {
         break; // loop AWAIT
      }
      ii += 1;
   }
   term = 1.0 / twon;
   subsum = 0.0;
   sum_curr = 0.0;
   jj = 1;
   for (;;) {
      subsum += 1.0 / jj;
      term *= twon / jj;
      sum_prev = sum_curr;
      sum_curr += term * subsum;
      if (iseq(sum_prev, sum_curr)) {
         break; // loop AWAIT
      }
      jj += 1;
   }
   return (twon * sum_curr / exptwon - (ii + 1.0) * TWOLN);
}
double sphere_d(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad)
{
   double xc;
   double xd;
   double xe;
   double c_lond;
   double s_lond;
   double c_lata;
   double c_latb;
   double s_lata;
   double s_latb;
   double retvalu;
   c_lata = cos(lata_rad);
   c_latb = cos(latb_rad);
   s_lata = sin(lata_rad);
   s_latb = sin(latb_rad);
   s_lond = sin(lonb_rad - lona_rad);
   c_lond = cos(lonb_rad - lona_rad);
   xc = c_lata * s_latb - s_lata * c_latb * c_lond;
   xd = c_latb * s_lond;
   xe = s_lata * s_latb + c_lata * c_latb * c_lond;
   retvalu = atan2(hypot(xd, xc), xe);
   return (retvalu);
}
double great_circle_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad)
{
   return (sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad));
}
double sphere_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p)
{
   double xc;
   double xd;
   double xe;
   double s_lond;
   double c_lond;
   double c_lata;
   double c_latb;
   double s_lata;
   double s_latb;
   double dist;
   c_lata = cos(lata_rad);
   c_latb = cos(latb_rad);
   s_lata = sin(lata_rad);
   s_latb = sin(latb_rad);
   s_lond = sin(lonb_rad - lona_rad);
   c_lond = cos(lonb_rad - lona_rad);
   xc = c_lata * s_latb - s_lata * c_latb * c_lond;
   xd = c_latb * s_lond;
   ret_dirs_arr_p[0] = atan2(xd, xc);
   xe = s_lata * s_latb + c_lata * c_latb * c_lond;
   dist = atan2(hypot(xd, xc), xe);
   xc = c_latb * s_lata - s_latb * c_lata * c_lond;
   xd = c_lata * s_lond;
   ret_dirs_arr_p[1] = -atan2(xd, xc);
   return (dist);
}
static double lf_ka(double usq)
{
   double hyp;
   hyp = sqrt(1.0 + usq);
   return ((hyp - 1.0) / (hyp + 1.0));
}
static double lf_cap_a(double usq)
{
   double ka;
   ka = lf_ka(usq);
   return ((1.0 + square(ka / 2.0)) / (1.0 - ka));
}
static double lf_cap_b(double usq)
{
   double ka;
   ka = lf_ka(usq);
   return (ka * (1.0 - 3.0 * square(ka) / 8.0));
}
double ellipsoid_distance(double flat
      , double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p)
{
   double iflat;
   double cap_ua;
   double cap_ub;
   double lon_diff;
   double c_cap_ua;
   double s_cap_ua;
   double c_cap_ub;
   double s_cap_ub;
   double xx_curr;
   double xx_prev;
   double xc;
   double xd;
   double s_xx;
   double c_xx;
   double c_sig;
   double s_sig;
   double sig;
   double s_a;
   double c_asq;
   double cbsigm;
   double cap_c;
   double usq;
   double cap_a;
   double cap_b;
   double deltasig;
   long ii;
   double dist;
   iflat = 1.0 - flat;
   cap_ua = atan2(iflat * sin(lata_rad), cos(lata_rad));
   cap_ub = atan2(iflat * sin(latb_rad), cos(latb_rad));
   lon_diff = lonb_rad - lona_rad;
   xx_curr = lon_diff;
   c_cap_ua = cos(cap_ua);
   c_cap_ub = cos(cap_ub);
   s_cap_ua = sin(cap_ua);
   s_cap_ub = sin(cap_ub);
   ii = 0;
   for (;;) {
      s_xx = sin(xx_curr);
      c_xx = cos(xx_curr);
      s_sig = hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub - s_cap_ua *\
               c_cap_ub * c_xx);
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx;
      sig = atan2(s_sig, c_sig);
      s_a = c_cap_ua * c_cap_ub * s_xx / s_sig;
      c_asq = 1.0 - square(s_a);
      cbsigm = c_sig - divi(2 * s_cap_ua * s_cap_ub, c_asq, 0.0);
      cap_c = ((flat / 16) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)));
      xx_prev = xx_curr;
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_a * (sig + cap_c *\
               s_sig * (cbsigm + cap_c * c_sig * (2.0 * square(cbsigm) -\
               1.0))));
      if (10 < ii && iseq(fabs(xx_prev + xx_curr), TAU)) {
         xx_curr = TAU / 2.0;
         break;
      }
      if (fabs(xx_curr - xx_prev) < 1.0E-12) {
         break; // loop AWAIT
      }
      ii += 1;
   }
   usq = c_asq * (1.0 / square(iflat) - 1.0);
   cap_a = iflat * lf_cap_a(usq);
   cap_b = lf_cap_b(usq);
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig * (-1.0 +\
            2.0 * square(cbsigm)) - (1.0 / 6.0) * cap_b * cbsigm * (3.0 +\
            4.0 * square(s_sig)) * (-3.0 + 4.0 * square(cbsigm))));
   dist = cap_a * (sig - deltasig);
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx;
   xd = c_cap_ub * s_xx;
   ret_dirs_arr_p[0] = atan2(xd, xc);
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx;
   xd = c_cap_ua * s_xx;
   ret_dirs_arr_p[1] = -atan2(xd, xc);
   return (dist);
}
double ellipsoid_destination(double flat
      , double lata_rad
      , double lona_rad
      , double heading_rad
      , double distance
      , double *ret_loc_arr_p)
{
   double iflat;
   double cap_ua;
   double c_cap_ua;
   double s_cap_ua;
   double sig_rad;
   double sig_rad_prev;
   double sig_rad_delta;
   double c_sig;
   double s_sig;
   double aa;
   double bb;
   double sig_b_rad;
   double s_a;
   double c_asq;
   double twosigm_rad;
   double c_twosigm;
   double c_twosigmsq;
   double cap_c;
   double usq;
   double cap_a;
   double cap_b;
   double cap_l;
   double alpha_rad;
   double c_heading;
   double s_heading;
   double lamda;
   double xd;
   double xc;
   iflat = 1.0 - flat;
   aa = 1.0;
   bb = iflat * aa;
   cap_ua = atan2(iflat * sin(lata_rad), cos(lata_rad));
   c_cap_ua = cos(cap_ua);
   s_cap_ua = sin(cap_ua);
   c_heading = cos(heading_rad);
   s_heading = sin(heading_rad);
   sig_b_rad = atan2(s_cap_ua, c_cap_ua * c_heading);
   s_a = cos(cap_ua) * sin(heading_rad);
   c_asq = 1.0 - square(s_a);
   usq = c_asq * (square(aa / bb) - 1.0);
   cap_a = lf_cap_a(usq);
   cap_b = lf_cap_b(usq);
   sig_rad_delta = 0.0;
   sig_rad = -10.0;
   for (;;) {
      sig_rad_prev = sig_rad;
      sig_rad = distance / (bb * cap_a) + sig_rad_delta;
      s_sig = sin(sig_rad);
      c_sig = cos(sig_rad);
      twosigm_rad = 2.0 * sig_b_rad + sig_rad;
      c_twosigm = cos(twosigm_rad);
      c_twosigmsq = square(c_twosigm);
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 * cap_b * (c_sig\
               * (2.0 * c_twosigmsq - 1.0) - (cap_b / 6.0) * c_twosigm *\
               (4.0 * s_sig * s_sig - 3.0) * (4.0 * c_twosigmsq - 3.0)));
      if (iseq(sig_rad, sig_rad_prev)) {
         break; // loop AWAIT
      }
   }
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading;
   xc = iflat * hypot(s_a, s_cap_ua * s_sig - c_cap_ua * c_sig * c_heading);
   ret_loc_arr_p[0] = atan2(xd, xc);
   xd = s_sig * s_heading;
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading;
   lamda = atan2(xd, xc);
   cap_c = ((flat / 16.0) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)));
   cap_l = lamda - (1.0 - cap_c) * flat * s_a * (sig_rad + cap_c * s_sig\
            * (c_twosigm + cap_c * c_sig * (2 * c_twosigmsq - 1.0)));
   ret_loc_arr_p[1] = cap_l + lona_rad;
   alpha_rad = fmodu(PI + atan2(s_a, c_cap_ua * c_sig * c_heading -\
            s_cap_ua * s_sig), TAU);
   return (alpha_rad);
}
double ellipsoid_surface(double axis_a
      , double axis_b
      , double axis_c)
{
   double absaa;
   double absbb;
   double abscc;
   double phi_rad;
   double sinphi;
   double cosphi;
   double kk;
   double retvalu;
   absaa = fabs(axis_a);
   absbb = fabs(axis_b);
   abscc = fabs(axis_c);
   if (absaa < absbb) {
      kk = absaa;
      absaa = absbb;
      absbb = kk;
   }
   if (absbb < abscc) {
      kk = abscc;
      abscc = absbb;
      absbb = kk;
      if (absaa < absbb) {
         kk = absaa;
         absaa = absbb;
         absbb = kk;
      }
   }
   if (abscc < absaa) {
      cosphi = (abscc / absaa);
      phi_rad = cosinv(cosphi);
      sinphi = sin(phi_rad);
      kk = sqrt((1.0 - abscc * abscc / (absbb * absbb)) / (1.0 - abscc *\
               abscc / (absaa * absaa)));
      retvalu = TAU * (abscc * abscc + absaa * absbb / sinphi * (sinphi *\
               sinphi * elliptic2ik(kk, phi_rad) + cosphi * cosphi *\
               elliptic1ik(kk, phi_rad)));
   } else {
      retvalu = 2.0 * TAU * absaa * absaa;
   }
   return (retvalu);
}
double ellipsoid_volume(double axis_a
      , double axis_b
      , double axis_c)
{
   return (2.0 * TAU * axis_a * axis_b * axis_c / 3.0);
}
double shc_shftpoles2steps(long shft
      , long poles)
{
   double step_arr[20];
   double retvalu;
   if (poles <= 0) {
      retvalu = 0.0;
   } else if (shft < 0) {
      retvalu = 0.0;
   } else if (16 < shft) {
      retvalu = 1.0E+9;
   } else if (poles == 1) {
      step_arr[0] = +1.0;
      step_arr[1] = +8.75664018;
      step_arr[2] = +2.174418277E+1;
      step_arr[3] = +4.709615109E+1;
      step_arr[4] = +9.755325605E+1;
      step_arr[5] = +1.983575685E+2;
      step_arr[6] = +3.9991425188E+2;
      step_arr[7] = +8.0300236937E+2;
      step_arr[8] = +1.60916613901E+3;
      step_arr[9] = +3.22148750069E+3;
      step_arr[10] = +6.44612712926E+3;
      step_arr[11] = +1.289540487229E+4;
      step_arr[12] = +2.579395961911E+4;
      step_arr[13] = +5.159106828928E+4;
      step_arr[14] = +1.0318528839545E+5;
      step_arr[15] = +2.0637372529029E+5;
      step_arr[16] = +4.1275053067337E+5;
      retvalu = step_arr[shft];
   } else if (poles == 2) {
      step_arr[0] = +1.0;
      step_arr[1] = +1.372295755E+1;
      step_arr[2] = +3.383938971E+1;
      step_arr[3] = +7.318281398E+1;
      step_arr[4] = +1.5153838699E+2;
      step_arr[5] = +3.0810336456E+2;
      step_arr[6] = +6.2116437416E+2;
      step_arr[7] = +1.24725288016E+3;
      step_arr[8] = +2.49941335432E+3;
      step_arr[9] = +5.00372613671E+3;
      step_arr[10] = +1.001234749878E+4;
      step_arr[11] = +2.002958840334E+4;
      step_arr[12] = +4.006406905172E+4;
      step_arr[13] = +8.013303000155E+4;
      step_arr[14] = +1.6027095510986E+5;
      step_arr[15] = +3.2054680443102E+5;
      step_arr[16] = +6.4109851712798E+5;
      retvalu = step_arr[shft];
   } else if (poles == 3) {
      step_arr[0] = +1.0;
      step_arr[1] = +1.737173781E+1;
      step_arr[2] = +4.273609545E+1;
      step_arr[3] = +9.238532150E+1;
      step_arr[4] = +1.9128399554E+2;
      step_arr[5] = +3.8890510497E+2;
      step_arr[6] = +7.8406421045E+2;
      step_arr[7] = +1.57434201644E+3;
      step_arr[8] = +3.15487771808E+3;
      step_arr[9] = +6.31593923478E+3;
      step_arr[10] = +1.263805730898E+4;
      step_arr[11] = +2.528229097067E+4;
      step_arr[12] = +5.057075779500E+4;
      step_arr[13] = +1.0114768912723E+5;
      step_arr[14] = +2.0230154729287E+5;
      step_arr[15] = +4.0460928016924E+5;
      step_arr[16] = +8.0922476138170E+5;
      retvalu = step_arr[shft];
   } else if (poles == 4) {
      step_arr[0] = +1.0;
      step_arr[1] = +2.03878236E+1;
      step_arr[2] = +5.009900279E+1;
      step_arr[3] = +1.0828162825E+2;
      step_arr[4] = +2.2418834788E+2;
      step_arr[5] = +4.5579968748E+2;
      step_arr[6] = +9.189270663E+2;
      step_arr[7] = +1.84513549236E+3;
      step_arr[8] = +3.69752950942E+3;
      step_arr[9] = +7.40230620593E+3;
      step_arr[10] = +1.48118537839E+4;
      step_arr[11] = +2.963094667636E+4;
      step_arr[12] = +5.926913086318E+4;
      step_arr[13] = +1.1854549900613E+5;
      step_arr[14] = +2.3709822433702E+5;
      step_arr[15] = +4.7420371217077E+5;
      step_arr[16] = +9.4841452431326E+5;
      retvalu = step_arr[shft];
   } else if (poles == 5) {
      step_arr[0] = +1.0;
      step_arr[1] = +2.301559338E+1;
      step_arr[2] = +5.651862690E+1;
      step_arr[3] = +1.2214337218E+2;
      step_arr[4] = +2.5288215751E+2;
      step_arr[5] = +5.1413464355E+2;
      step_arr[6] = +1.03653347249E+3;
      step_arr[7] = +2.08127953713E+3;
      step_arr[8] = +4.17074621528E+3;
      step_arr[9] = +8.34966697295E+3;
      step_arr[10] = +1.670750214140E+4;
      step_arr[11] = +3.342316957219E+4;
      step_arr[12] = +6.685449836446E+4;
      step_arr[13] = +1.3371716646729E+5;
      step_arr[14] = +2.6744248565129E+5;
      step_arr[15] = +5.3489319815476E+5;
      step_arr[16] = +1.06979462735136E+6;
      retvalu = step_arr[shft];
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
#define LX_SHC_SHIFTSHIFT (3.85514)
#define LX_SHC_STEPSHIFT (8.5)
double shc_steps2shft(double steps)
{
   return (lg(steps + LX_SHC_STEPSHIFT) - LX_SHC_SHIFTSHIFT);
}
double shc_steps2shftinv(double shft)
{
   return (pow(2.0, shft + LX_SHC_SHIFTSHIFT) - LX_SHC_STEPSHIFT);
}
double shc_shft2steps(long shft)
{
   return (shc_shftpoles2steps(shft, 4));
}
double m2k(double emm)
{
   return (sqrt(emm));
}
double k2m(double ekk)
{
   return (ekk * ekk);
}
double a2k(double eaa)
{
   return (sin(eaa));
}
double k2a(double ekk)
{
   return (sininv(ekk));
}
double a2m(double eaa)
{
   return (square(sin(eaa)));
}
double m2a(double emm)
{
   return (sininv(sqrt(emm)));
}
double m2b(double emm)
{
   return (1.0 / sqrt(1.0 - emm));
}
double b2m(double ebb)
{
   return (1.0 - 1.0 / (ebb * ebb));
}
double elliptic1m(double emm)
{
   double retvalu;
   double aa_arr[2];
   double bb_arr[2];
   double cc_arr[2];
   double dd;
   if (emm < 1.0) {
      retvalu = PI / (2.0 * agmean(1.0, sqrt(1.0 - emm)));
   } else if (1.0 < emm) {
      aa_arr[0] = 1.0;
      aa_arr[1] = 0.0;
      bb_arr[0] = 0.0;
      bb_arr[1] = sqrt(emm - 1.0);
      dd = agcmean(aa_arr, bb_arr, cc_arr);
      retvalu = PI / (2.0 * dd);
   } else {
      retvalu = 20.0;
   }
   return (retvalu);
}
double ellipticK(double ekk)
{
   return (elliptic1m(k2m(ekk)));
}
double elliptic1m__1(double emm)
{
   return (carlsonRF(0.0, 1.0 - emm, 1.0));
}
double elliptic1m__2(double emm)
{
   double term;
   double sum_curr;
   double sum_prev;
   long ii;
   term = TAU / 4.0;
   sum_curr = 0.0;
   ii = 1;
   for (;;) {
      term *= square(emm * ii / (ii + 1.0));
      sum_prev = sum_curr;
      sum_curr += term;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      ii += 2;
   }
   return (sum_curr);
}
double elliptic1im(double emm
      , double circ_rad)
{
   double aan;
   double ggn;
   double cc;
   long skip_flag;
   double temp;
   double retvalu;
   double tt;
   double kresult;
   double lcirc_rad;
   double emmc;
   long ii;
   long modd;
   long signof;
   long npihlfs;
   double ee;
   emmc = 1.0 - emm;
   if (iszero(emm)) {
      retvalu = circ_rad;
   } else if (iszero(emmc)) {
      if (PI / 2.0 <= fabs(circ_rad)) {
         retvalu = DBLMAX;
      } else {
         retvalu = log(tan((PI / 2.0 + circ_rad) / 2.0));
      }
   } else {
      npihlfs = floor(circ_rad / (PI / 2.0));
      if (isodd(npihlfs)) {
         npihlfs += 1;
      }
      lcirc_rad = circ_rad;
      if (npihlfs == 0) {
         kresult = 0.0;
      } else {
         kresult = elliptic1m(emm);
         lcirc_rad -= npihlfs * PI / 2.0;
      }
      if (lcirc_rad < 0.0) {
         lcirc_rad = -lcirc_rad;
         signof = -1;
      } else {
         signof = 1;
      }
      tt = tan(lcirc_rad);
      ggn = sqrt(emmc);
      skip_flag = false;
      if (10.0 < fabs(tt)) {
         ee = 1.0 / (ggn * tt);
         if (fabs(ee) < 10.0) {
            if (npihlfs == 0) {
               kresult = elliptic1m(emm);
            }
            temp = kresult - elliptic1im(emm, atan2(ee, 1.0));
            skip_flag = true;
         }
      }
      if (! skip_flag) {
         aan = 1.0;
         ii = 1;
         modd = 0;
         for (;;) {
            temp = ggn / aan;
            lcirc_rad += atan2(tt * temp, 1.0) + modd * PI;
            modd = floor(lcirc_rad / PI + 0.5);
            tt *= (1.0 + temp) / (1.0 - temp * tt * tt);
            cc = (aan - ggn) / 2.0;
            temp = sqrt(aan * ggn);
            aan = (aan + ggn) / 2.0;
            ggn = temp;
            ii += ii;
            if (fabs(cc / aan) <= DBLEPS) {
               break; // loop AWAIT
            }
         }
         temp = (atan2(tt, 1.0) + modd * PI) / (ii * aan);
      }
      if (signof < 0) {
         temp = -temp;
      }
      retvalu = temp + npihlfs * kresult;
   }
   return (retvalu);
}
double elliptic1k(double kk)
{
   return (elliptic1m(k2m(kk)));
}
double elliptic1ik(double kk
      , double circ_rad)
{
   return (elliptic1im(k2m(kk), circ_rad));
}
double elliptic1a(double aa)
{
   return (elliptic1m(a2m(aa)));
}
double elliptic1ia(double aa
      , double circ_rad)
{
   return (elliptic1im(a2m(aa), circ_rad));
}
double ellipticF(double ekk
      , double circ_rad)
{
   return (elliptic1im(k2m(ekk), circ_rad));
}
double elliptic1im__1(double emm
      , double circ_rad)
{
   double sinphi;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2.0));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic1m(emm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2.0;
   }
   sinphi = sin(lcirc_rad);
   return (sinphi * carlsonRF(square(cos(lcirc_rad)), 1.0 - emm *\
            square(sinphi), 1.0) + kresult);
}
double elliptic2m(double emm)
{
   double aan;
   double ggn;
   double tn;
   double twon;
   double sum;
   double sum_prev;
   long ii;
   double aemm;
   double retvalu;
   aemm = fabs(emm);
   if (aemm < 1.0) {
      twon = 0.5;
      aan = 1.0;
      ggn = sqrt(1.0 - emm);
      sum = 1.0 - emm / 2.0;
      ii = 0;
      for (;;) {
         twon *= 2.0;
         tn = aan;
         aan = (aan + ggn) / 2.0;
         ggn = sqrt(tn * ggn);
         sum_prev = sum;
         sum -= twon * (aan * aan - ggn * ggn);
         if (iseq(sum, sum_prev)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = PI * sum / (2.0 * aan);
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double ellipticE(double ekk)
{
   return (elliptic2m(k2m(ekk)));
}
double elliptic2m__1(double emm)
{
   return (carlsonRF(0.0, 1.0 - emm, 1.0) - emm * carlsonRD(0.0, 1.0 -\
            emm, 1.0) / 3.0);
}
double elliptic2im(double emm
      , double circ_rad)
{
   double aan;
   double ggn;
   double cc;
   double errsum;
   double temp;
   double tt;
   double eliptwoemm;
   double emmc;
   long ii;
   long modd;
   long npihalfs;
   long signof;
   double lcirc_rad;
   double retvalu;
   if (iszero(emm)) {
      retvalu = circ_rad;
   } else {
      emmc = 1.0 - emm;
      eliptwoemm = elliptic2m(emm);
      npihalfs = floor(circ_rad / (PI / 2.0));
      if (isodd(npihalfs)) {
         npihalfs += 1;
      }
      lcirc_rad = circ_rad - npihalfs * PI / 2.0;
      if (iszero(emmc)) {
         retvalu = sin(lcirc_rad) + npihalfs * eliptwoemm;
      } else {
         if (lcirc_rad < 0.0) {
            lcirc_rad = -lcirc_rad;
            signof = -1;
         } else {
            signof = 1;
         }
         tt = tan(lcirc_rad);
         ggn = sqrt(emmc);
         if (fabs(tt) < - 1) {
            errsum = 1.0 / (ggn * tt);
         } else {
            errsum = 0.0;
         }
         if (0.0 < fabs(errsum) && fabs(errsum) < 1000.0) {
            errsum = atan2(1.0, ggn * tt);
            temp = eliptwoemm - elliptic2im(emm, errsum) + emm *\
                     sin(circ_rad) * sin(errsum);
         } else {
            cc = sqrt(emm);
            aan = 1.0;
            ii = 1;
            modd = 0;
            while (DBLEPS < fabs(cc / aan)) {
               temp = ggn / aan;
               lcirc_rad += atan2(tt * temp, 1.0) + modd * PI;
               modd = floor(lcirc_rad / PI + 0.5);
               tt *= (1.0 + temp) / (1.0 - temp * tt * tt);
               cc = (aan - ggn) / 2.0;
               temp = sqrt(aan * ggn);
               aan = (aan + ggn) / 2.0;
               ggn = temp;
               ii += ii;
               errsum += cc * sin(lcirc_rad);
            }
            temp = errsum + eliptwoemm * (atan2(tt, 1.0) + modd * PI) /\
                     (ii * aan * elliptic1m(emm));
         }
         if (signof < 0) {
            temp = -temp;
         }
         retvalu = temp + npihalfs * eliptwoemm;
      }
   }
   return (retvalu);
}
double ellipticEi(double ekk
      , double circ_rad)
{
   return (elliptic2im(k2m(ekk), circ_rad));
}
double elliptic2im__1(double emm
      , double circ_rad)
{
   double sinphi;
   double sinphisq;
   double sinphicu;
   double cosphisq;
   double argb;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2.0));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic2m(emm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2.0;
   }
   sinphi = sin(lcirc_rad);
   sinphisq = sinphi * sinphi;
   sinphicu = sinphi * sinphisq;
   cosphisq = square(cos(lcirc_rad));
   argb = 1.0 - emm * sinphisq;
   return (sinphi * carlsonRF(cosphisq, argb, 1.0) - emm * sinphicu *\
            carlsonRD(cosphisq, argb, 1.0) / 3.0 + kresult);
}
double elliptic2k(double kk)
{
   return (elliptic2m(k2m(kk)));
}
double elliptic2ik(double kk
      , double circ_rad)
{
   return (elliptic2im(k2m(kk), circ_rad));
}
double elliptic2a(double aa)
{
   return (elliptic2m(a2m(aa)));
}
double elliptic2ia(double aa
      , double circ_rad)
{
   return (elliptic2im(a2m(aa), circ_rad));
}
double elliptic3m(double enn
      , double emm)
{
   double aan;
   double ggn;
   double ppn;
   double een;
   double qqn;
   double tpp;
   double tag;
   double tn;
   double sum;
   double sum_prev;
   long ii;
   double aemm;
   double retvalu;
   aemm = fabs(emm);
   if (aemm < 1.0) {
      aan = 1.0;
      ggn = sqrt(1.0 - emm);
      if (1.0 <= fabs(enn)) {
         ppn = sqrt(1.0 - emm / enn);
      } else {
         ppn = sqrt(1.0 - enn);
      }
      qqn = 1.0;
      sum = qqn;
      ii = 0;
      for (;;) {
         tpp = ppn * ppn;
         tag = aan * ggn;
         een = (tpp - tag) / (tpp + tag);
         ppn = (tpp + tag) / (2.0 * ppn);
         qqn = qqn * een / 2.0;
         aan = (aan + ggn) / 2.0;
         ggn = sqrt(tag);
         sum_prev = sum;
         sum += qqn;
         if (iseq(sum, sum_prev) && iseq(aan, ggn)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (20 <= ii) {
            break; // loop AWAIT
         }
      }
      if (1.0 <= fabs(enn)) {
         tn = emm * sum / (emm - enn);
      } else {
         tn = 2.0 + sum * enn / (1.0 - enn);
      }
      retvalu = PI * tn / (4.0 * aan);
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double elliptic3k(double enn
      , double kk)
{
   return (elliptic3m(enn, k2m(kk)));
}
double elliptic3ik(double enn
      , double kk
      , double circ_rad)
{
   return (elliptic3im(enn, k2m(kk), circ_rad));
}
double elliptic3a(double enn
      , double aa)
{
   return (elliptic3m(enn, a2m(aa)));
}
double elliptic3ia(double enn
      , double aa
      , double circ_rad)
{
   return (elliptic3im(enn, a2m(aa), circ_rad));
}
double ellipticP(double ekk
      , double circ_rad)
{
   return (elliptic3m(ekk, circ_rad));
}
double elliptic3im(double enn
      , double emm
      , double circ_rad)
{
   double sp;
   double cp;
   double spq;
   double cpq;
   double spm;
   double spn;
   sp = sin(circ_rad);
   cp = cos(circ_rad);
   spq = sp * sp;
   cpq = cp * cp;
   spm = 1.0 - emm * spq;
   spn = 1.0 - enn * spq;
   return (sp * (carlsonRF(cpq, spm, 1.0) + spq * enn * carlsonRJ(cpq,\
            spm, 1.0, spn) / 3.0));
}
double ellipticPi(double enn
      , double ekk
      , double circ_rad)
{
   return (elliptic3im(enn, k2m(ekk), circ_rad));
}
double elliptic3m__1(double enn
      , double emm)
{
   return (carlsonRF(0.0, 1.0 - emm, 1.0) + enn * carlsonRJ(0.0, 1.0 -\
            emm, 1.0, 1.0 - enn) / 3.0);
}
double elliptic3im__1(double enn
      , double emm
      , double circ_rad)
{
   double sinphi;
   double sinphisq;
   double sinphicu;
   double cosphisq;
   double argb;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2.0));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic3m(enn, emm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2.0;
   }
   sinphi = sin(lcirc_rad);
   sinphisq = sinphi * sinphi;
   sinphicu = sinphi * sinphisq;
   cosphisq = square(cos(lcirc_rad));
   argb = 1.0 - emm * sinphisq;
   return (kresult + sinphi * carlsonRF(cosphisq, argb, 1.0) + sinphicu *\
            carlsonRJ(cosphisq, argb, 1.0, 1.0 - enn * sinphisq) * enn /\
            3.0);
}
#define LX_ELLIPTIC_EPS (1.0E-9)
static double lv_emm = -10.0;
static double lv_elli_rad = -10.0;
static double lv_arr_arr[4];
static double lf_jacobiphi_0_1(double emm
      , double elli_rad)
{
   double ai;
   double ebb;
   double circ_rad;
   double geo_mean;
   double twon;
   double aa_arr[20];
   double cc_arr[20];
   long ii;
   ebb = sqrt(1.0 - emm);
   aa_arr[0] = 1.0;
   cc_arr[0] = sqrt(emm);
   twon = 1.0;
   ii = 0;
   while (DBLEPS < fabs(cc_arr[ii] / aa_arr[ii])) {
      if (19 - 1 < ii) {
         break;
      }
      ai = aa_arr[ii];
      ii += 1;
      cc_arr[ii] = (ai - ebb) / 2.0;
      geo_mean = sqrt(ai * ebb);
      aa_arr[ii] = (ai + ebb) / 2.0;
      ebb = geo_mean;
      twon *= 2.0;
   }
   circ_rad = twon * aa_arr[ii] * elli_rad;
   while (0 < ii) {
      ebb = cc_arr[ii] * sin(circ_rad) / aa_arr[ii];
      circ_rad = (sininv(ebb) + circ_rad) / 2.0;
      ii -= 1;
   }
   return (circ_rad);
}
static double lf_cn_0_1(double emm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double retvalu;
   if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = emm * (elli_rad - snx * csx) / 4.0;
      retvalu = csx + ai * snx;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      retvalu = cos(lf_jacobiphi_0_1(emm, elli_rad));
   } else {
      csx = cosh(elli_rad);
      if (emm < 1.0) {
         snx = sinh(elli_rad);
         ai = (1.0 - emm) / 4.0;
         retvalu = 1.0 / csx - ai * (csx * snx + elli_rad);
      } else {
         retvalu = 1.0 / csx;
      }
   }
   return (retvalu);
}
static double lf_sn_0_1(double emm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double retvalu;
   if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = emm * (elli_rad - snx * csx) / 4.0;
      retvalu = snx - ai * csx;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      retvalu = sin(lf_jacobiphi_0_1(emm, elli_rad));
   } else {
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      if (emm < 1.0) {
         ai = (1.0 - emm) / 4.0;
         retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx;
      } else {
         retvalu = snx / csx;
      }
   }
   return (retvalu);
}
static double lf_dn_0_1(double emm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double retvalu;
   if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      retvalu = 1.0 - emm * snx * snx / 2.0;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      snx = sin(lf_jacobiphi_0_1(emm, elli_rad));
      retvalu = sqrtx(1.0 - emm * snx * snx);
   } else {
      csx = cosh(elli_rad);
      if (emm < 1.0) {
         ai = (1.0 - emm) / 4.0;
         snx = sinh(elli_rad);
         retvalu = 1.0 / csx + ai * (csx * snx + elli_rad);
      } else {
         retvalu = 1.0 / csx;
      }
   }
   return (retvalu);
}
static double lf_cn_gt1(double emm
      , double elli_rad)
{
   double ekk;
   double retvalu;
   ekk = m2k(emm);
   retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk);
   return (retvalu);
}
static double lf_sn_gt1(double emm
      , double elli_rad)
{
   double ekk;
   double retvalu;
   ekk = m2k(emm);
   retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk;
   return (retvalu);
}
static double lf_dn_gt1(double emm
      , double elli_rad)
{
   double ekk;
   double retvalu;
   ekk = m2k(emm);
   retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk);
   return (retvalu);
}
static long lf_ellpj_0_1(double emm
      , double elli_rad
      , double *ret_arr_p)
{
   // local-use C lv_emm;
   // local-use C lv_elli_rad;
   double ai;
   double csx;
   double snx;
   double circ_rad;
   double twon;
   if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = emm * (elli_rad - snx * csx) / 4.0;
      ret_arr_p[0] = snx - ai * csx;
      ret_arr_p[1] = csx + ai * snx;
      ret_arr_p[2] = 1.0 - emm * snx * snx / 2.0;
      ret_arr_p[3] = elli_rad - ai;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad);
      snx = sin(circ_rad);
      ret_arr_p[0] = snx;
      ret_arr_p[1] = cos(circ_rad);
      ret_arr_p[2] = sqrtx(1.0 - emm * snx * snx);
      ret_arr_p[3] = circ_rad;
   } else {
      ai = (1.0 - emm) / 4.0;
      csx = cosh(elli_rad);
      snx = tanh(elli_rad);
      twon = csx * sinh(elli_rad);
      ret_arr_p[0] = snx + ai * (twon - elli_rad) / (csx * csx);
      ret_arr_p[3] = 2.0 * atan2(exp(elli_rad), 1.0) - PI / 2.0 + ai *\
               (twon - elli_rad) / csx;
      ai *= snx / csx;
      ret_arr_p[1] = 1.0 / csx - ai * (twon - elli_rad);
      ret_arr_p[2] = 1.0 / csx + ai * (twon + elli_rad);
   }
   lv_emm = emm;
   lv_elli_rad = elli_rad;
   return 0;
}
static long lf_ellpj(double emm
      , double elli_rad
      , double *ret_arr_p)
{
   // local-use C lv_emm;
   // local-use C lv_elli_rad;
   double ai;
   double csx;
   double snx;
   double junk_arr[4];
   if (emm < 0.0) {
      if (emm < - 2.0) {
         snx = sin(elli_rad) + tanh(elli_rad) - lf_sn_gt1(1.0 - emm,\
                  elli_rad);
      } else {
         snx = sin(elli_rad) + tanh(elli_rad) - lf_sn_0_1(1.0 - emm,\
                  elli_rad);
      }
      if (emm < - 1.0) {
         csx = 2.0 * cos(elli_rad) - lf_cn_gt1(-emm, elli_rad);
      } else {
         csx = 2.0 * cos(elli_rad) - lf_cn_0_1(-emm, elli_rad);
      }
      ret_arr_p[0] = snx;
      ret_arr_p[1] = csx;
      ret_arr_p[2] = -dn(-emm, elli_rad) + 2.0;
      ret_arr_p[3] = atan2(snx, csx);
   } else if (emm <= 1.0) {
      (void) lf_ellpj_0_1(emm, elli_rad, junk_arr);
      ret_arr_p[0] = junk_arr[0];
      ret_arr_p[1] = junk_arr[1];
      ret_arr_p[2] = junk_arr[2];
      ret_arr_p[3] = junk_arr[3];
   } else {
      ai = m2k(emm);
      (void) lf_ellpj_0_1(1.0 / emm, elli_rad * ai, junk_arr);
      ret_arr_p[0] = junk_arr[0] / ai;
      ret_arr_p[1] = junk_arr[2];
      ret_arr_p[2] = junk_arr[1];
      ret_arr_p[3] = junk_arr[3];
   }
   lv_emm = emm;
   lv_elli_rad = elli_rad;
   return 0;
}
double jacobiphi(double emm
      , double elli_rad)
{
   double circ_rad;
   if (0.0 < emm && emm < 1.0) {
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad);
   } else {
      circ_rad = taninv(sn(emm, elli_rad) / cn(emm, elli_rad));
   }
   return (circ_rad);
}
double sn__1(double emm
      , double elli_rad)
{
   // local-use C lv_emm;
   // local-use C lv_elli_rad;
   // local-use C lv_arr_arr;
   if (isneq(emm, lv_emm) || isneq(elli_rad, lv_elli_rad)) {
      (void) lf_ellpj(emm, elli_rad, lv_arr_arr);
   }
   return (lv_arr_arr[0]);
}
double cn__1(double emm
      , double elli_rad)
{
   // local-use C lv_emm;
   // local-use C lv_elli_rad;
   // local-use C lv_arr_arr;
   if (isneq(emm, lv_emm) || isneq(elli_rad, lv_elli_rad)) {
      (void) lf_ellpj(emm, elli_rad, lv_arr_arr);
   }
   return (lv_arr_arr[1]);
}
double dn__1(double emm
      , double elli_rad)
{
   // local-use C lv_emm;
   // local-use C lv_elli_rad;
   // local-use C lv_arr_arr;
   if (isneq(emm, lv_emm) || isneq(elli_rad, lv_elli_rad)) {
      (void) lf_ellpj(emm, elli_rad, lv_arr_arr);
   }
   return (lv_arr_arr[2]);
}
double dn(double emm
      , double elli_rad)
{
   double ekk;
   double retvalu;
   if (emm < - 1.0) {
      retvalu = -lf_dn_gt1(-emm, elli_rad) + 2.0;
   } else if (emm < 0.0) {
      retvalu = -lf_dn_0_1(-emm, elli_rad) + 2.0;
   } else if (emm <= 1.0) {
      retvalu = lf_dn_0_1(emm, elli_rad);
   } else {
      ekk = m2k(emm);
      retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk);
   }
   return (retvalu);
}
double cn(double emm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double ekk;
   double retvalu;
   if (emm < - 1.0) {
      retvalu = -lf_cn_gt1(-emm, elli_rad) + 2.0 * cos(elli_rad);
   } else if (emm < 0.0) {
      retvalu = -lf_cn_0_1(-emm, elli_rad) + 2.0 * cos(elli_rad);
   } else if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = emm * (elli_rad - snx * csx) / 4.0;
      retvalu = csx + ai * snx;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      retvalu = cos(lf_jacobiphi_0_1(emm, elli_rad));
   } else if (emm <= 1.0) {
      ai = (1.0 - emm) / 4.0;
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad);
   } else {
      ekk = m2k(emm);
      retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk);
   }
   return (retvalu);
}
double sn(double emm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double ekk;
   double retvalu;
   if (emm < - 1.0) {
      retvalu = sin(elli_rad) + tanh(elli_rad) - lf_sn_gt1(1.0 - emm,\
               elli_rad);
   } else if (emm < 0.0) {
      retvalu = sin(elli_rad) + tanh(elli_rad) - lf_sn_0_1(1.0 - emm,\
               elli_rad);
   } else if (emm < LX_ELLIPTIC_EPS) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = emm * (elli_rad - snx * csx) / 4.0;
      retvalu = snx - ai * csx;
   } else if (emm < 1.0 - LX_ELLIPTIC_EPS) {
      retvalu = sin(lf_jacobiphi_0_1(emm, elli_rad));
   } else if (emm <= 1.0) {
      ai = (1.0 - emm) / 4.0;
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx;
   } else {
      ekk = m2k(emm);
      retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk;
   }
   return (retvalu);
}
double cd(double emm
      , double elli_rad)
{
   return (cn(emm, elli_rad) / dn(emm, elli_rad));
}
double sd(double emm
      , double elli_rad)
{
   return (sn(emm, elli_rad) / dn(emm, elli_rad));
}
double nd(double emm
      , double elli_rad)
{
   return (1.0 / dn(emm, elli_rad));
}
double dc(double emm
      , double elli_rad)
{
   return (dn(emm, elli_rad) / cn(emm, elli_rad));
}
double nc(double emm
      , double elli_rad)
{
   return (1.0 / cn(emm, elli_rad));
}
double sc(double emm
      , double elli_rad)
{
   return (sn(emm, elli_rad) / cn(emm, elli_rad));
}
double ds(double emm
      , double elli_rad)
{
   return (dn(emm, elli_rad) / sn(emm, elli_rad));
}
double cs(double emm
      , double elli_rad)
{
   return (cn(emm, elli_rad) / sn(emm, elli_rad));
}
double ns(double emm
      , double elli_rad)
{
   return (1.0 / sn(emm, elli_rad));
}
double ell2cir(double emm
      , double elli_rad)
{
   return (jacobiphi(emm, elli_rad));
}
double cir2ell(double emm
      , double circ_rad)
{
   return (elliptic1im(emm, circ_rad));
}
double jacobicir(double emm)
{
   return (4.0 * elliptic2m(emm) / sqrt(1.0 - emm));
}
double nom(double emm)
{
   return (exp(-PI * elliptic1m(1.0 - emm) / elliptic1m(emm)));
}
double theta1(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double sig;
   double ang;
   double ang_inc;
   double qq;
   sig = 1.0;
   qq = nom(emm);
   sum_curr = 0.0;
   ang = zz;
   ang_inc = 2.0 * zz;
   enn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, square(enn + 0.5)) * sin(ang);
      ang += ang_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (2.0 * sum_curr);
}
double theta2(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double ang;
   double ang_inc;
   double qq;
   qq = nom(emm);
   sum_curr = 0.0;
   ang = zz;
   ang_inc = 2.0 * zz;
   enn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, square(enn + 0.5)) * cos(ang);
      ang += ang_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (2.0 * sum_curr);
}
double theta3(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double ang;
   double ang_inc;
   double qq;
   qq = nom(emm);
   sum_curr = 0.0;
   ang = 2.0 * zz;
   ang_inc = ang;
   enn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, enn * enn) * cos(ang);
      ang += ang_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (1.0 + 2.0 * sum_curr);
}
double theta4(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double ang;
   double ang_inc;
   double qq;
   double sig;
   sig = 1.0;
   qq = nom(emm);
   sum_curr = 0.0;
   ang = 2.0 * zz;
   ang_inc = ang;
   enn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, enn * enn) * cos(ang);
      ang += ang_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (1.0 + 2.0 * sum_curr);
}
double nevillethetac(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double qq;
   double km;
   double cos_of;
   double cos_inc;
   km = elliptic1m(emm);
   qq = exp(-PI * elliptic1m(1.0 - emm) / km);
   sum_curr = 0.0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / (2.0 * km);
   enn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, enn * enn + enn) * cos(cos_of);
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (sum_curr * sqrt(TAU * sqrt(qq / emm) / km));
}
double nevillethetad(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double qq;
   double km;
   double cos_of;
   double cos_inc;
   km = elliptic1m(emm);
   qq = exp(-PI * elliptic1m(1.0 - emm) / km);
   sum_curr = 0.0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / km;
   enn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, enn * enn) * cos(cos_of);
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return ((1.0 + 2.0 * sum_curr) * sqrt(TAU / km) / 2.0);
}
double nevillethetan(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double qq;
   double km;
   double sig;
   double cos_of;
   double cos_inc;
   km = elliptic1m(emm);
   qq = exp(-PI * elliptic1m(1.0 - emm) / km);
   sum_curr = 0.5;
   sig = -1.0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / km;
   enn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, enn * enn) * cos(cos_of);
      cos_of += cos_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (2.0 * sum_curr * sqrt(TAU / (km * sqrt(1.0 - emm))) / 2.0);
}
double nevillethetas(double emm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long enn;
   double qq;
   double km;
   double sig;
   double cos_of;
   double cos_inc;
   km = elliptic1m(emm);
   qq = exp(-PI * elliptic1m(1.0 - emm) / km);
   sum_curr = 0.0;
   sig = 1.0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / (2.0 * km);
   enn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, enn * enn + enn) * sin(cos_of);
      sig = -sig;
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // loop AWAIT
      }
      enn += 1;
   }
   return (sum_curr * sqrt(TAU * sqrt(qq / (emm * (1.0 - emm))) / km));
}
double ellipsearea(double semi_axis_a
      , double semi_axis_b)
{
   return (PI * semi_axis_a * semi_axis_b);
}
double ellipseecc(double semi_axis_a
      , double semi_axis_b)
{
   return (topyh1(ratio(semi_axis_a, semi_axis_b)));
}
double ellipsem(double semi_axis_a
      , double semi_axis_b)
{
   double rati;
   rati = ratio(semi_axis_a, semi_axis_b);
   return (1.0 - rati * rati);
}
double ellipseflatness(double semi_axis_a
      , double semi_axis_b)
{
   return (1.0 - ratio(semi_axis_a, semi_axis_b));
}
double ellipsen(double semi_axis_a
      , double semi_axis_b)
{
   return (fabs(semi_axis_a - semi_axis_b) / (semi_axis_a + semi_axis_b));
}
double flat2ecc(double flt)
{
   return (sqrt(flt * (2.0 - flt)));
}
double ecc2flat(double ecc)
{
   return (1.0 - sqrt(1.0 - ecc * ecc));
}
double ellipsecir(double semi_axes_a
      , double semi_axes_b)
{
   double aaa;
   double bbb;
   double pows_two;
   double suma;
   double temp;
   long ii;
   double retvalu;
   double axes_sum;
   if (semi_axes_a < semi_axes_b) {
      aaa = semi_axes_b;
      bbb = semi_axes_a;
   } else {
      aaa = semi_axes_a;
      bbb = semi_axes_b;
   }
   if (bbb <= sqrt(DBLEPS) * aaa) {
      retvalu = 4.0 * aaa;
   } else {
      suma = 0.0;
      axes_sum = aaa + bbb;
      pows_two = 1.0;
      ii = 0;
      for (;;) {
         temp = (aaa + bbb) / 2.0;
         bbb = sqrt(aaa * bbb);
         aaa = temp;
         pows_two += pows_two;
         suma += pows_two * square(aaa - bbb);
         if (iseq(aaa, bbb)) {
            break; // loop AWAIT
         }
         ii += 1;
         if (30 <= ii) {
            break; // loop AWAIT
         }
      }
      retvalu = PI * (square(axes_sum) - suma) / (aaa + bbb);
   }
   return (retvalu);
}
double ellipsecir__1(double semi_axis_a
      , double semi_axis_b)
{
   double major_axis;
   double minor_axis;
   double rati;
   if (semi_axis_a < semi_axis_b) {
      major_axis = semi_axis_b;
      minor_axis = semi_axis_a;
   } else {
      major_axis = semi_axis_a;
      minor_axis = semi_axis_b;
   }
   rati = minor_axis / major_axis;
   return (4.0 * major_axis * elliptic2m(1.0 - rati * rati));
}
double epdf(double minvalx
      , double maxvalx
      , long data_num
      , const double *data_arr_pc
      , long pdf_num
      , double *ret_pdf_arr_p)
{
   long ii;
   long indi;
   double gap_size;
   double retvalu;
   double inc;
   for (ii = 0; ii <= pdf_num - 1; ii += 1) {
      ret_pdf_arr_p[ii] = 0.0;
   }
   inc = 1.0 / data_num;
   gap_size = (maxvalx - minvalx) / (pdf_num - 1.0);
   retvalu = 0.0;
   for (ii = 0; ii <= data_num - 1; ii += 1) {
      if (data_arr_pc[ii] < minvalx) {
         ret_pdf_arr_p[0] += inc;
      } else if (data_arr_pc[ii] < maxvalx) {
         indi = ceil((data_arr_pc[ii] - minvalx) / gap_size);
         ret_pdf_arr_p[indi] += inc;
      } else {
         retvalu += inc;
      }
   }
   return (retvalu);
}
double ecdf(double minvalx
      , double maxvalx
      , long data_num
      , const double *data_arr_pc
      , long pdf_num
      , double *ret_cdf_arr_p)
{
   long ii;
   double sumcurr;
   (void) epdf(minvalx, maxvalx, data_num, data_arr_pc, pdf_num,\
            ret_cdf_arr_p);
   sumcurr = ret_cdf_arr_p[0];
   for (ii = 1; ii <= pdf_num - 1; ii += 1) {
      sumcurr += ret_cdf_arr_p[ii];
      ret_cdf_arr_p[ii] = sumcurr;
   }
   return (sumcurr);
}
double epdf2cdf(long data_num
      , const double *pdf_arr_pc
      , double *ret_cdf_arr_p)
{
   long ii;
   double sumcurr;
   sumcurr = 0.0;
   for (ii = 0; ii <= data_num - 1; ii += 1) {
      sumcurr += pdf_arr_pc[ii];
      ret_cdf_arr_p[ii] = sumcurr;
   }
   return (sumcurr);
}
static long lv_search_target = 0;
long search_check(long gg)
{
   // local-use C lv_search_target;
   long retvalu;
   if (gg < lv_search_target) {
      retvalu = -1;
   } else if (lv_search_target < gg) {
      retvalu = 1;
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
long search_search(long gg)
{
   // local-use C lv_search_target;
   long curr;
   long delta;
   long result;
   lv_search_target = gg;
   curr = 1;
   for (delta = 0; delta <= INTMAX; delta += 1) {
      result = search_check(curr);
      if (0 <= result) {
         break;
      }
      curr += curr;
   }
   if (4 <= curr) {
      delta = curr / 4;
      while (1 <= delta) {
         if (0 < result) {
            curr -= delta;
         } else if (result < 0) {
            curr += delta;
         } else {
            break;
         }
         result = search_check(curr);
         if (delta < 2) {
            if (0 < result && 1 < curr) {
               curr -= 1;
            }
            break;
         }
         delta /= 2;
      }
   }
   return (curr);
}
double blackbodyl(double wavelen
      , double temp_k)
{
   double hc;
   double hc_kt;
   double retvalu;
   if (wavelen <= 0.0 || temp_k <= 0.0) {
      retvalu = 0.0;
   } else {
      hc = PLANCK * LIGHT;
      hc_kt = hc / (BOLTZMANN * temp_k);
      retvalu = 2.0 * hc * LIGHT / (pow(wavelen, 5) * (exp(hc_kt /\
               wavelen) - 1.0));
   }
   return (retvalu);
}
double blackbodyf(double wavefreq
      , double temp_k)
{
   double h_kt;
   double retvalu;
   if (wavefreq <= 0.0 || temp_k <= 0.0) {
      retvalu = 0.0;
   } else {
      h_kt = PLANCK / (BOLTZMANN * temp_k);
      retvalu = 2.0 * PLANCK * pow(wavefreq, 3) / (pow(LIGHT, 2) *\
               (exp(h_kt * wavefreq) - 1.0));
   }
   return (retvalu);
}
double blackbodymode(double temp_k)
{
   double hc_kt;
   double retvalu;
   if (temp_k <= 0.0) {
      retvalu = 0.0;
   } else {
      hc_kt = PLANCK * LIGHT / (BOLTZMANN * temp_k);
      retvalu = hc_kt / (5.0 + wp(-5.0 * exp(-5.0)));
   }
   return (retvalu);
}
double blackbodypower(double temp_k)
{
   return (STEFAN * pow(temp_k, 4.0));
}
double bhmass_to_tempk(double bhmass_kg)
{
   return (BHMASSTEMP / bhmass_kg);
}
double bhtempk_to_mass(double bhtemp_k)
{
   return (BHMASSTEMP / bhtemp_k);
}
double bhmass_to_radius(double bhmass_kg)
{
   return (bhmass_kg / BHMASS_RADIUS);
}
double bhradius_to_mass(double bhradius_m)
{
   return (BHMASS_RADIUS * bhradius_m);
}
double bhmass_to_entropy(double bhmass_kg)
{
   return (bhmass_kg * bhmass_kg / BHMASS2_ENTROPY);
}
double bhentropy_to_mass(double bhentropy)
{
   return (sqrt(bhentropy * BHMASS2_ENTROPY));
}
double bhmass_to_power(double bhmass_kg)
{
   return (BHMASS2POWER / (bhmass_kg * bhmass_kg));
}
double bhpower_to_mass(double bhpower_w)
{
   return (sqrt(BHMASS2POWER / bhpower_w));
}
double bhmass_to_area(double bhmass_kg)
{
   return (bhmass_kg * bhmass_kg / BHMASS2_AREA);
}
double bharea_to_mass(double bharea)
{
   return (sqrt(BHMASS2_AREA * bharea));
}
double bhlifetime_to_mass(double bhlifetime_s)
{
   return (cbrt(BHMASS3_LIFETIME * bhlifetime_s));
}
double bhmass_to_lifetime(double bhmass_kg)
{
   return (bhmass_kg * bhmass_kg * bhmass_kg / BHMASS3_LIFETIME);
}
double bhmass_to_density(double bhmass_kg)
{
   return (bhmass_kg * bhmass_kg / BHMASS2_DENSITY);
}
double bhdensity_to_mass(double bhdensity)
{
   return (sqrt(bhdensity * BHMASS2_DENSITY));
}
double pendulum(double len_m
      , double ang_offset_rad
      , double grav)
{
   return (TAU * sqrt(len_m / grav) / agmean(1.0, cos(ang_offset_rad /\
            2.0)));
}
double sr_mass(double velo_mps)
{
   return (1.0 / sqrtxp1m1(-square(velo_mps / LIGHT)));
}
double sr_time(double velo_mps)
{
   return (sqrtxp1m1(-square(velo_mps / LIGHT)));
}
double gr_massgm(double gm_gm
      , double radius_m)
{
   return (gm_gm / (radius_m * LIGHT * LIGHT));
}
double gr_mass(double mass_kg
      , double radius_m)
{
   return (gr_massgm(GRAVITATION * mass_kg, radius_m));
}
double gr_timegm(double gm_gm
      , double radius_m)
{
   double con;
   con = 2 * gm_gm / (LIGHT * LIGHT);
   return (sqrtxp1m1(-con / radius_m));
}
double gr_time(double mass_kg
      , double radius_m)
{
   return (gr_timegm(GRAVITATION * mass_kg, radius_m));
}
double gr_timegm_dr(double gm_gm
      , double radius_m)
{
   double con;
   con = 2 * gm_gm / (LIGHT * LIGHT);
   return (con / (2 * radius_m * radius_m * sqrt(1.0 - con / radius_m)));
}
double cent2ratio(double cnt)
{
   return (pow2(cnt / 1200.0));
}
double ratio2cent(double rat)
{
   return (lg(rat) * 1200.0);
}
