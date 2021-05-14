//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ############# SOURCE $KWROOT/codekdw/kw-lib/Kw.fwipp #############
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kw.varylog
#ifndef INCLUDED_Kw_h
#define INCLUDED_Kw_h
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
//  CCCCCCCCCC_DEF ################################################# LANG_C #
#define KILOGRAM (1.0)
#define METER (1.0)
#define SECOND (1.0)
#define KELVIN (1.0)
#define AMPERE (1.0)
#define MOLE (1.0)
#define CANDELA (1.0)
#define BIT (1.0)
#define RADIAN (1.0)
#define MASS (KILOGRAM)
#define LENGTH (METER)
#define DISTANCE (LENGTH)
#define TEMPERATURE (KELVIN)
#define TIME (SECOND)
#define ANGLE (RADIAN)
#define AMOUNT (MOLE)
#define CURRENT (AMPERE)
#define CHARGE (AMPERE * SECOND)
#define COULOMB (AMPERE * SECOND)
#define STERADIAN (RADIAN * RADIAN)
#define METRE (METER)
#define KG (KILOGRAM)
#define RAD (RADIAN)
#define E (2.718281828459045235360287471352662497757247093699960)
#define TAU (6.283185307179586476925286766559005768394338798750212)
#define PHI (1.618033988749894848204586834365638117720309179805763)
#define TWOLN (0.693147180559945309417232121458176568075500134360255)
#define TENLN (2.302585092994045684017991454684364207601101488628773)
#define TWOSQRT (1.414213562373095048801688724209698078569671875376948)
#define EULER (0.577215664901532860606512090082402431042159335939924)
#define FEIGENBAUM (4.669201609102990671853203820466201617258185577475769)
#define APERY (1.202056903159594285399738161511449990764986292340499)
#define GAMMAMIN (1.461632144968362341262659542325721328468196204006446)
#define PI (TAU / 2.0)
#define YOTTA (1.0E+24)
#define ZETTA (1.0E+21)
#define EXA (1.0E+18)
#define PETA (1.0E+15)
#define TERA (1.0E+12)
#define GIGA (1.0E+9)
#define MEGA (1.0E+6)
#define KILO (1.0E+3)
#define HECTO (1.0E+2)
#define DECA (1.0E+1)
#define DECI (1.0E-1)
#define CENTI (1.0E-2)
#define MILLI (1.0E-3)
#define MICRO (1.0E-6)
#define NANO (1.0E-9)
#define PICO (1.0E-12)
#define FEMTO (1.0E-15)
#define ATTO (1.0E-18)
#define ZEPTO (1.0E-21)
#define YOCTO (1.0E-24)
#define KIBI (1024.0)
#define MEBI (KIBI * KIBI)
#define GIBI (MEBI * KIBI)
#define TEBI (GIBI * KIBI)
#define PEBI (TEBI * KIBI)
#define EXBI (PEBI * KIBI)
#define ZEBI (EXBI * KIBI)
#define YOBI (ZEBI * KIBI)
#define MPS (METER / SECOND)
#define MPSS (METER / (SECOND * (SECOND)))
#define UNITGM (METER * (MPS * (MPS)))
#define NEWTON (KILOGRAM * MPSS)
#define JOULE (NEWTON * METER)
#define PA (NEWTON / (METER * (METER)))
#define WATT (JOULE / SECOND)
#define HERTZ (1.0 / SECOND)
#define Hz (HERTZ)
#define AMP (AMPERE)
#define VOLT (WATT / AMPERE)
#define OHM (VOLT / AMPERE)
#define HENRY (OHM * SECOND)
#define FARAD (COULOMB / VOLT)
#define SIEMENS (1.0 / OHM)
#define WEBER (VOLT * SECOND)
#define TESLA (WEBER / (METER * (METER)))
#define LUMEN (CANDELA * STERADIAN)
#define LUX (LUMEN / (METER * (METER)))
#define BOLTZMANN (1.380649E-23 * JOULE / KELVIN)
#define BOLTZMANN_ERR (0.0)
#define BOLTZMANN_REC (1.0 / BOLTZMANN)
#define BOLTZMANN_REC_ERR (0.0)
#define ELEMENTARYCHARGE (1.602176634E-19 * COULOMB)
#define ELEMENTARYCHARGE_ERR (0.0)
#define LIGHT (2.99792458E+8 * METER / SECOND)
#define LIGHT_ERR (0.0)
#define LIGHT_REC (1.0 / LIGHT)
#define LIGHT_REC_ERR (0.0)
#define AVOGADRO (6.02214076E+23 / MOLE)
#define AVOGADRO_ERR (0.0)
#define AVOGADRO_REC (1.0 / AVOGADRO)
#define AVOGADRO_REC_ERR (0.0)
#define PLANCK (6.62607015E-34 * JOULE * SECOND)
#define PLANCK_ERR (0.0)
#define PLANCK_REC (1.0 / PLANCK)
#define PLANCK_REC_ERR (0.0)
#define KCD (6.83E+2 * LUMEN / WATT)
#define KCD_ERR (0.0)
#define dvCs_Hz (9.19263177E+9 / SECOND)
#define dvCs_WAVELENGTH (LIGHT / dvCs_Hz)
#define dvCs_ENERGY (dvCs_Hz * PLANCK)
#define dvCs_ERR (0.0)
#define kB (BOLTZMANN)
#define kB_ERR (BOLTZMANN_ERR)
#define kB_REC (1.0 / kB)
#define kB_REC_ERR (BOLTZMANN_ERR)
#define ELECTRON_CHARGE (- ELEMENTARYCHARGE)
#define ELECTRON_CHARGE_ERR (ELEMENTARYCHARGE_ERR)
#define PLANCKBAR (PLANCK / TAU)
#define PLANCKBAR_ERR (PLANCK_ERR)
#define h (PLANCK)
#define h_ERR (PLANCK_ERR)
#define h_REC (1.0 / PLANCK)
#define h_REC_ERR (PLANCK_ERR)
#define c (LIGHT)
#define c_ERR (LIGHT_ERR)
#define c_REC (1.0 / LIGHT)
#define c_REC_ERR (LIGHT_ERR)
#define HBAR (PLANCKBAR)
#define HBAR_ERR (PLANCKBAR_ERR)
#define GRAVITY (9.80665 * MPSS)
#define GRAVITY_ERR (0.0)
#define ATMOSPHERE (1.01325E+5 * PA)
#define ATMOSPHERE_ERR (0.0)
#define AU (1.495978707E+11 * METER)
#define AU_ERR (0.0)
#define JOSEPHSON (2.0 * ELEMENTARYCHARGE / PLANCK)
#define JOSEPHSON_ERR (0.0)
#define VONKLITZING (PLANCK / (ELEMENTARYCHARGE * (ELEMENTARYCHARGE)))
#define VONKLITZING_ERR (0.0)
#define FARADAY (ELEMENTARYCHARGE * AVOGADRO)
#define FARADAY_ERR (0.0)
#define FARADAY_REC (1.0 / FARADAY)
#define FARADAY_REC_ERR (0.0)
#define GAS (BOLTZMANN * AVOGADRO)
#define GAS_ERR (0.0)
#define GAS_REC (1.0 / GAS)
#define GAS_REC_ERR (0.0)
#define FARADAYCONST (FARADAY)
#define FARADAYCONST_ERR (FARADAY_ERR)
#define FARADAYCONST_REC (1.0 / FARADAYCONST)
#define FARADAYCONST_REC_ERR (FARADAY_ERR)
#define GASCONST (GAS)
#define GASCONST_ERR (GAS_ERR)
#define GASCONST_REC (1.0 / GASCONST)
#define GASCONST_REC_ERR (GAS_ERR)
#define GRAVITATION (6.67430E-11 * UNITGM / KILOGRAM)
#define GRAVITATION_ERR (2.2E-5)
#define GRAVITATION_REC (1.0 / GRAVITATION)
#define GRAVITATION_REC_ERR (2.2E-5)
#define RYDBERG (1.0973731568160E+7 * LIGHT / METER)
#define RYDBERG_ERR (1.9E-12)
#define RYDBERG_REC (1.0 / RYDBERG)
#define RYDBERG_REC_ERR (1.9E-12)
#define G (GRAVITATION)
#define G_ERR (GRAVITATION_ERR)
#define ALPHA (1.0 / 137.035999206)
#define ALPHA_ERR (8.1E-11)
#define ALPHA_REC (1.0 / ALPHA)
#define ALPHA_REC_ERR (8.1E-11)
#define ALPHASQRT (8.54245430938154667258494003787357783877088051044776E-2)
#define FLTSIG 23
#define FLTMAN 8
#define FLTEPS (1.1920928955078125E-7)
#define FLTMAX (3.402823466385288598E+38)
#define DBLMAXLN (TWOLN * 1024.0)
#define DBLSIG 52
#define DBLMAN 11
#define DBLEPS (2.220446049250313E-16)
#define DBLMAX (1.79769313486227E+308)
#define SI16MAX 32767
#define SI16MIN (- 32768)
#define UI16MAX 65535
#define SI32MAX 2147483647
#define SI32MIN (- 2147483648)
#define UI32MAX 4294967295
#define INTMAX (SI32MAX)
#define JEWISH_FIRST_MONTH 7
#define MONTHS_IN_YEAR 12
#define UVPV (MICRO)
#define MINUTE (60.0 * SECOND)
#define HOUR (60.0 * MINUTE)
#define DAY (24.0 * HOUR)
#define WEEK (7.0 * DAY)
#define FLICK (SECOND / 705600000.0)
#define JDAY (DAY)
#define JYEAR (365.25 * JDAY)
#define JCENTURY (100.0 * JYEAR)
#define GYEAR (365.2425 * DAY)
#define GYEAR_AT_0J2K (2000.0)
#define KWT (0.1875 * SECOND)
#define UET (SECOND)
#define J2K (DAY)
#define J2KDAY (DAY)
#define JDSEC_AT_0GREGORIAN (1721058.5 * JDAY)
#define JDSEC_AT_0KWT (2437240.66125 * JDAY)
#define JDSEC_AT_0J2K (2451545.0 * JDAY)
#define JDSEC_AT_0UET (2440587.5 * JDAY)
#define TT_AT_0TAI (32.184 * SECOND)
#define TT_AT_0UT1 (68.97 * SECOND)
#define GRAM (0.001 * KILOGRAM)
#define CARAT (0.2 * GRAM)
#define TONNE (1000.0 * KILOGRAM)
#define POUND (0.45359237 * KILOGRAM)
#define LB (POUND)
#define GRAIN (POUND / 7000.0)
#define OUNCE (0.0625 * POUND)
#define OZ (OUNCE)
#define STONE (14.0 * POUND)
#define TON (2000.0 * POUND)
#define MM (MILLI * METER)
#define INCH (0.0254 * METER)
#define HAND (4.0 * INCH)
#define FOOT (12.0 * INCH)
#define SURVEYFOOT (1200.0 * METER / 3937.0)
#define FEET (FOOT)
#define FT (FOOT)
#define YARD (3.0 * FEET)
#define HORSE (8.0 * FEET)
#define LINK (66.0 * SURVEYFOOT / 100.0)
#define CHAIN (100 * LINK)
#define FURLONG (10 * CHAIN)
#define MILE (5280.0 * FEET)
#define POINT (INCH / 72.0)
#define STANDARDGRAVITY (GRAVITY)
#define GRAVITATIONNASA (6.67259E-11 * UNITGM / KILOGRAM)
#define GRAVITATIONIERS (6.67428E-11 * UNITGM / KILOGRAM)
#define KGF (KILOGRAM * GRAVITY)
#define LBF (POUND * GRAVITY)
#define ATM (ATMOSPHERE)
#define STANDARDATMOSPHERE (ATMOSPHERE)
#define TORR (ATMOSPHERE / 760.0)
#define BAR (1.0E+5 * PA)
#define MMHG (13595.1 * KILOGRAM * GRAVITY * MM / (METER * (METER) *\
         (METER)))
#define INHG (MMHG * INCH / MM)
#define PSI (POUND * GRAVITY / (INCH * (INCH)))
#define DEGC (KELVIN)
#define DEGF (KELVIN / 1.8)
#define DEGR (DEGF)
#define K_AT_0TEMPC (273.15 * DEGC)
#define K_AT_0TEMPF (459.67 * DEGF)
#define K_AT_0TEMPR (0.0 * DEGR)
#define TEMPF_AT_0TEMPC (32.0 * KELVIN)
#define MACH (331.46 * MPS)
#define MPH (MILE / HOUR)
#define HECTARE (10000.0 * (METER * (METER)))
#define ARE (100.0 * (METER * (METER)))
#define ACRE ((MILE * (MILE)) / 640.0)
#define BARN (1.0E-28 * (METER * (METER)))
#define LITER ((METER * (METER) * (METER)) / 1000.0)
#define LITRE (LITER)
#define GALLON (231.0 * (INCH * (INCH) * (INCH)))
#define QUART (GALLON / 4.0)
#define PINT (QUART / 2.0)
#define CUP (PINT / 2.0)
#define FLOZ (CUP / 8.0)
#define TBLSP (FLOZ / 2.0)
#define TSP (TBLSP / 3.0)
#define BARREL (42.0 * GALLON)
#define DRYGALLON (9.25 * 9.25 * PI * (INCH * (INCH) * (INCH)))
#define PECK (2.0 * DRYGALLON)
#define BUSHEL (8.0 * DRYGALLON)
#define AH (AMPERE * HOUR)
#define CALORIE (4.184 * JOULE)
#define CAL_IT (4.1868 * JOULE)
#define CAL_TH (CALORIE)
#define CAL (CALORIE)
#define BTU_TH (CAL_TH * POUND * DEGF / (GRAM * DEGC))
#define BTU_IT (CAL_IT * POUND * DEGF / (GRAM * DEGC))
#define BTU (CALORIE * POUND * DEGF / (GRAM * DEGC))
#define HP (550.0 * FOOT * POUND * GRAVITY / SECOND)
#define HORSEPOWER (HP)
#define HPMETRIC (75.0 * KILOGRAM * GRAVITY * MPS)
#define ELECTRONVOLT (ELEMENTARYCHARGE * VOLT)
#define eV (ELECTRONVOLT)
#define ERG (1.0E-7 * JOULE)
#define FOE (1.0E+44 * JOULE)
#define AAABATTERY_CHARGE (2.1 * AH)
#define AAABATTERY_VOLTAGE (1.5 * VOLT)
#define AAABATTERY (AAABATTERY_CHARGE * AAABATTERY_VOLTAGE)
#define AAABATTERY_ENERGY (AAABATTERY)
#define AABATTERY_CHARGE (2.7 * AH)
#define AABATTERY_VOLTAGE (1.5 * VOLT)
#define AABATTERY (AABATTERY_CHARGE * AABATTERY_VOLTAGE)
#define AABATTERY_ENERGY (AABATTERY)
#define CBATTERY_CHARGE (8.0 * AH)
#define CBATTERY_VOLTAGE (1.5 * VOLT)
#define CBATTERY (CBATTERY_CHARGE * CBATTERY_VOLTAGE)
#define CBATTERY_ENERGY (CBATTERY)
#define DBATTERY_CHARGE (12.0 * AH)
#define DBATTERY_VOLTAGE (1.5 * VOLT)
#define DBATTERY (DBATTERY_CHARGE * DBATTERY_VOLTAGE)
#define DBATTERY_ENERGY (DBATTERY)
#define NINEVOLT_CHARGE (0.565 * AH)
#define NINEVOLT_VOLTAGE (9.0 * VOLT)
#define NINEVOLT (NINEVOLT_CHARGE * NINEVOLT_VOLTAGE)
#define NINEVOLT_ENERGY (NINEVOLT)
#define NINEVOLTBATTERY_CHARGE (NINEVOLT_CHARGE)
#define NINEVOLTBATTERY_VOLTAGE (NINEVOLT_VOLTAGE)
#define NINEVOLTBATTERY (NINEVOLTBATTERY_CHARGE * NINEVOLTBATTERY_VOLTAGE)
#define NINEVOLTBATTERY_ENERGY (NINEVOLTBATTERY)
#define PHONEBATTERY_CHARGE (3.0 * AH)
#define PHONEBATTERY_VOLTAGE (3.8 * VOLT)
#define PHONEBATTERY (PHONEBATTERY_CHARGE * PHONEBATTERY_VOLTAGE)
#define PHONEBATTERY_ENERGY (PHONEBATTERY)
#define CARBATTERY_CHARGE (45.0 * AH)
#define CARBATTERY_VOLTAGE (12.0 * VOLT)
#define CARBATTERY (CARBATTERY_CHARGE * CARBATTERY_VOLTAGE)
#define CARBATTERY_ENERGY (CARBATTERY)
#define MICROWAVE_Hz (2.45E+9 * HERTZ)
#define MICROWAVE_WAVELENGTH (LIGHT / MICROWAVE_Hz)
#define MICROWAVE_ENERGY (MICROWAVE_Hz * PLANCK)
#define LF_Hz (1.0E+5 * HERTZ)
#define LF_WAVELENGTH (LIGHT / LF_Hz)
#define LF_ENERGY (LF_Hz * PLANCK)
#define MF_Hz (1.0E+6 * HERTZ)
#define MF_WAVELENGTH (LIGHT / MF_Hz)
#define MF_ENERGY (MF_Hz * PLANCK)
#define HF_Hz (1.0E+7 * HERTZ)
#define HF_WAVELENGTH (LIGHT / HF_Hz)
#define HF_ENERGY (HF_Hz * PLANCK)
#define VHF_Hz (1.0E+8 * HERTZ)
#define VHF_WAVELENGTH (LIGHT / VHF_Hz)
#define VHF_ENERGY (VHF_Hz * PLANCK)
#define UHF_Hz (1.0E+9 * HERTZ)
#define UHF_WAVELENGTH (LIGHT / UHF_Hz)
#define UHF_ENERGY (UHF_Hz * PLANCK)
#define SHF_Hz (1.0E+10 * HERTZ)
#define SHF_WAVELENGTH (LIGHT / SHF_Hz)
#define SHF_ENERGY (SHF_Hz * PLANCK)
#define EHF_Hz (1.0E+11 * HERTZ)
#define EHF_WAVELENGTH (LIGHT / EHF_Hz)
#define EHF_ENERGY (EHF_Hz * PLANCK)
#define THF_Hz (1.0E+12 * HERTZ)
#define THF_WAVELENGTH (LIGHT / THF_Hz)
#define THF_ENERGY (THF_Hz * PLANCK)
#define FIR_Hz (1.0E+12 * HERTZ)
#define FIR_WAVELENGTH (LIGHT / FIR_Hz)
#define FIR_ENERGY (FIR_Hz * PLANCK)
#define MIR_Hz (1.0E+13 * HERTZ)
#define MIR_WAVELENGTH (LIGHT / MIR_Hz)
#define MIR_ENERGY (MIR_Hz * PLANCK)
#define NIR_Hz (1.0E+14 * HERTZ)
#define NIR_WAVELENGTH (LIGHT / NIR_Hz)
#define NIR_ENERGY (NIR_Hz * PLANCK)
#define RED_WAVELENGTH (7.0E-7 * METER)
#define RED_Hz (LIGHT / RED_WAVELENGTH)
#define RED_ENERGY (RED_Hz * PLANCK)
#define ORANGE_WAVELENGTH (6.2E-7 * METER)
#define ORANGE_Hz (LIGHT / ORANGE_WAVELENGTH)
#define ORANGE_ENERGY (ORANGE_Hz * PLANCK)
#define YELLOW_WAVELENGTH (5.8E-7 * METER)
#define YELLOW_Hz (LIGHT / YELLOW_WAVELENGTH)
#define YELLOW_ENERGY (YELLOW_Hz * PLANCK)
#define YELLOWGREEN_Hz (5.4E+14 * HERTZ)
#define YELLOWGREEN_WAVELENGTH (LIGHT / YELLOWGREEN_Hz)
#define YELLOWGREEN_ENERGY (YELLOWGREEN_Hz * PLANCK)
#define GREEN_WAVELENGTH (5.3E-7 * METER)
#define GREEN_Hz (LIGHT / GREEN_WAVELENGTH)
#define GREEN_ENERGY (GREEN_Hz * PLANCK)
#define BLUE_WAVELENGTH (5.0E-7 * METER)
#define BLUE_Hz (LIGHT / BLUE_WAVELENGTH)
#define BLUE_ENERGY (BLUE_Hz * PLANCK)
#define VIOLET_WAVELENGTH (4.2E-7 * METER)
#define VIOLET_Hz (LIGHT / VIOLET_WAVELENGTH)
#define VIOLET_ENERGY (VIOLET_Hz * PLANCK)
#define NUV_Hz (1.0E+15 * HERTZ)
#define NUV_WAVELENGTH (LIGHT / NUV_Hz)
#define NUV_ENERGY (NUV_Hz * PLANCK)
#define EUV_Hz (1.0E+16 * HERTZ)
#define EUV_WAVELENGTH (LIGHT / EUV_Hz)
#define EUV_ENERGY (EUV_Hz * PLANCK)
#define UVA_WAVELENGTH (3.6E-7 * METER)
#define UVA_Hz (LIGHT / UVA_WAVELENGTH)
#define UVA_ENERGY (UVA_Hz * PLANCK)
#define UVB_WAVELENGTH (3.0E-7 * METER)
#define UVB_Hz (LIGHT / UVB_WAVELENGTH)
#define UVB_ENERGY (UVB_Hz * PLANCK)
#define UVC_WAVELENGTH (1.9E-7 * METER)
#define UVC_Hz (LIGHT / UVC_WAVELENGTH)
#define UVC_ENERGY (UVC_Hz * PLANCK)
#define SX_Hz (3.0E+17 * HERTZ)
#define SX_WAVELENGTH (LIGHT / SX_Hz)
#define SX_ENERGY (SX_Hz * PLANCK)
#define SXX_WAVELENGTH (1.0E-9 * METER)
#define SXX_Hz (LIGHT / SXX_WAVELENGTH)
#define SXX_ENERGY (SXX_Hz * PLANCK)
#define HX_Hz (1.0E+19 * HERTZ)
#define HX_WAVELENGTH (LIGHT / HX_Hz)
#define HX_ENERGY (HX_Hz * PLANCK)
#define GAMMA_Hz (1.0E+20 * HERTZ)
#define GAMMA_WAVELENGTH (LIGHT / GAMMA_Hz)
#define GAMMA_ENERGY (GAMMA_Hz * PLANCK)
#define TURN (TAU * RADIAN)
#define ARCTURN (TURN)
#define ARCRADIAN (RADIAN)
#define ARCDEGREE (TURN / 360.0)
#define ARCMINUTE (ARCDEGREE / 60.0)
#define ARCSECOND (ARCMINUTE / 60.0)
#define ARCGRAD (TURN / 400.0)
#define ARCDEG (ARCDEGREE)
#define ARCMIN (ARCMINUTE)
#define ARCSEC (ARCSECOND)
#define GRAD (ARCGRAD)
#define SQUAREDEGREE ((ARCDEGREE * (ARCDEGREE)))
#define SQDEG (SQUAREDEGREE)
#define SPHERESURFACE (2.0 * TAU * STERADIAN)
#define SHANNON (BIT)
#define NAT (BIT / TWOLN)
#define HARTLEY (TENLN / TWOLN * BIT)
#define HART (HARTLEY)
#define DIT (HARTLEY)
#define BAN (HARTLEY)
#define RPM (TURN / MINUTE)
#define RPS (TURN / SECOND)
#define RPH (TURN / HOUR)
#define OZFIN (OUNCE * GRAVITY * INCH)
#define LBFIN (POUND * GRAVITY * INCH)
#define LBFFT (POUND * GRAVITY * FOOT)
#define KGFM (KG * GRAVITY * METER)
#define Nm_PER_lbfin (LBFIN / (NEWTON * METER))
#define kgfm_PER_lbfin (LBFIN / (KG * GRAVITY * METER))
#define lbfinrpm_PER_Hp (HORSEPOWER / (LBFIN * RPM))
#define ozfin_PER_lbfin (POUND / OUNCE)
#define lbfft_PER_lbfin (INCH / FOOT)
#define W_PER_Hp (HORSEPOWER / WATT)
#define FINESTRUCTURE (ALPHA)
#define FINESTRUCTURE_ERR (ALPHA_ERR)
#define FINESTRUCTURE_REC (1.0 / FINESTRUCTURE)
#define FINESTRUCTURE_REC_ERR (ALPHA_ERR)
#define MAGNETIC (2.0 * VONKLITZING * ALPHA / LIGHT)
#define MAGNETIC_ERR (ALPHA_ERR)
#define MU0 (MAGNETIC)
#define MU0_ERR (ALPHA_ERR)
#define ELECTRIC (1.0 / ((LIGHT * (LIGHT)) * MU0))
#define ELECTRIC_ERR (ALPHA_ERR)
#define EPSILON0 (ELECTRIC)
#define EPSILON0_ERR (ALPHA_ERR)
#define COULOMBCONST (1.0 / (2.0 * TAU * ELECTRIC))
#define COULOMBCONST_ERR (ALPHA_ERR)
#define PROTON_RADIUS (8.414E-16 * METER)
#define PROTON_RADIUS_ERR (2.2E-3)
#define MOLARMASS ((1.0 - 3.5E-10) * GRAM / MOLE)
#define MOLARMASS_ERR (3.0E-10)
#define DALTON (MOLARMASS / AVOGADRO)
#define DALTON_ERR (MOLARMASS_ERR)
#define AMU (DALTON)
#define AMU_ERR (DALTON_ERR)
#define ATOMICMASSUNIT (DALTON)
#define ATOMICMASSUNIT_ERR (DALTON_ERR)
#define UAMU (DALTON)
#define UAMU_ERR (DALTON_ERR)
#define RYDBERG_Hz (RYDBERG)
#define RYDBERG_WAVELENGTH (LIGHT / RYDBERG_Hz)
#define RYDBERG_ENERGY (RYDBERG_Hz * PLANCK)
#define ELECTRON_MASSA (2.0 * RYDBERG_Hz * PLANCK / ((LIGHT * ALPHA) *\
         (LIGHT * ALPHA)))
#define ELECTRON_MASSA_ERR (2.0 * ALPHA_ERR)
#define HI_Hz (1.4204057517667E+9 * HERTZ)
#define HI_WAVELENGTH (LIGHT / HI_Hz)
#define HI_ENERGY (HI_Hz * PLANCK)
#define HYDROGENLINE (HI_WAVELENGTH)
#define HYDROGENLINE_ERR (6.3E-13)
#define HI (LIGHT / HI_Hz)
#define HI_ERR (HYDROGENLINE_ERR)
#define PLANCKMASS (sqrt(HBAR * LIGHT / GRAVITATION))
#define PLANCKCHARGE (ELEMENTARYCHARGE / ALPHASQRT)
#define PLANCKENERGY (PLANCKMASS * (LIGHT * (LIGHT)))
#define PLANCKTEMP (PLANCKENERGY / BOLTZMANN)
#define PLANCKLENGTH (HBAR / (PLANCKMASS * LIGHT))
#define PLANCKTIME (PLANCKLENGTH / LIGHT)
#define PLANCKFREQUENCY (1.0 / PLANCKTIME)
#define STEFAN ((TAU * (TAU) * (TAU) * (TAU) * (TAU)) * (BOLTZMANN *\
         (BOLTZMANN) * (BOLTZMANN) * (BOLTZMANN)) / (240.0 * (LIGHT *\
         (LIGHT)) * (PLANCK * (PLANCK) * (PLANCK))))
#define STEFAN_ERR (0.0)
#define PINGPONGBALL_RADIUS (0.02 * METER)
#define GOLFBALL_RADIUS (0.02135 * METER)
#define TENNISBALL_RADIUS (0.03325 * METER)
#define BASEBALL_RADIUS (9.125 * INCH / TAU)
#define SOFTBALL_RADIUS (12.0 * INCH / TAU)
#define SOCCERBALL_RADIUS (0.69 * METER / TAU)
#define BASKETBALL_RADIUS (0.75 * METER / TAU)
#define PINGPONGBALL_MASS (0.0027 * KG)
#define GOLFBALL_MASS (0.04593 * KG)
#define TENNISBALL_MASS (0.0577 * KG)
#define BASEBALL_MASS (0.1465 * KG)
#define SOFTBALL_MASS (0.187 * KG)
#define BASKETBALL_MASS (0.620 * KG)
#define SOCCERBALL_MASS (0.430 * KG)
#define MARATHON (42195.0 * METER)
#define PENNY_HEIGHT (1.52E-3 * METER)
#define NICKEL_HEIGHT (1.95E-3 * METER)
#define DIME_HEIGHT (1.35E-3 * METER)
#define QUARTER_HEIGHT (1.75E-3 * METER)
#define PENNY_DIAMETER (0.75 * INCH)
#define NICKEL_DIAMETER (2.121E-2 * METER)
#define DIME_DIAMETER (1.791E-2 * METER)
#define QUARTER_DIAMETER (2.426E-2 * METER)
#define PENNY_MASS (2.5 * GRAM)
#define NICKEL_MASS (5.0 * GRAM)
#define DIME_MASS (0.005 * POUND)
#define QUARTER_MASS (0.0125 * POUND)
#define MOON_MONTH (29.530587981 * DAY)
#define MILKYWAY_AGE (8.3E+9 * JYEAR)
#define ASTRONOMICALUNIT (AU)
#define LIGHTYEAR (LIGHT * JYEAR)
#define PARSEC (1296000.0 * ASTRONOMICALUNIT / TAU)
#define PROXIMACENTAURI (39.9E+15 * METER)
#define MILKYWAY_RADIUS (6.0E+4 * LIGHTYEAR)
#define GALACTICCENTER (2.64E+4 * LIGHTYEAR)
#define MILKYWAY_MASS (1.4E+42 * KILOGRAM)
#define SOLARCONSTANT (1361.0 * WATT / (METER * (METER)))
#define UNIVERSE_AGE (13.799E+9 * JYEAR)
#define UNIVERSE_RADIUS (14.26E+9 * PARSEC)
#define UNIVERSE_MASS (1.46E+53 * KILOGRAM)
#define EINSTEIN (4.0 * TAU * GRAVITATION / (LIGHT * (LIGHT) * (LIGHT) *\
         (LIGHT)))
#define EINSTEIN_ERR (GRAVITATION_ERR)
#define HUBBLE (67.66E-3 * METER / (SECOND * PARSEC))
#define HUBBLE_ERR (6.0E-3)
#define HUBBLERADIUS (LIGHT / HUBBLE)
#define BHMASSTEMP (((LIGHT * (LIGHT) * (LIGHT)) * HBAR / (4.0 * TAU *\
         GRAVITATION * BOLTZMANN)))
#define BHMASS_RADIUS (0.5 * (LIGHT * (LIGHT)) / GRAVITATION)
#define BHMASS3_LIFETIME ((PLANCK * (LIGHT * (LIGHT) * (LIGHT) *\
         (LIGHT))) / (2560.0 * (TAU * (TAU)) * (GRAVITATION *\
         (GRAVITATION))))
#define BHRADIUS2DENSITY (1.5 * BHMASS_RADIUS / TAU)
#define BHMASS2_ENTROPY ((PLANCK * LIGHT) / (2.0 * TAU * TAU *\
         GRAVITATION * BOLTZMANN))
#define BHENTROPY_AREA ((TAU * (LIGHT * (LIGHT) * (LIGHT)) * BOLTZMANN) /\
         (4.0 * PLANCK * GRAVITATION))
#define BHMASS2POWER ((LIGHT * (LIGHT) * (LIGHT) * (LIGHT) * (LIGHT) *\
         (LIGHT)) * PLANCK / (7680.0 * (TAU * (TAU)) * (GRAVITATION *\
         (GRAVITATION))))
#define BHMASS2_AREA (BHMASS2_ENTROPY * BHENTROPY_AREA)
#define BHMASS2_DENSITY ((BHMASS_RADIUS * (BHMASS_RADIUS)) *\
         BHRADIUS2DENSITY)
#define BEKENSTEININFORMATION (((TAU * (TAU)) * NAT) / (PLANCK * LIGHT))
#define BEKENSTEINENTROPY (((TAU * (TAU)) * BOLTZMANN) / (PLANCK * LIGHT))
#define ELEVATIONMAX (8848.0 * METER)
#define ELEVATIONMIN (- 10994.0 * METER)
#define KPGBOUNDARY (65.5E+6 * JYEAR)
#define TRJBOUNDARY (199.6E+6 * JYEAR)
#define MILKYWAY_DAY (250.0E+6 * JYEAR)
#define PTRBOUNDARY (251.4E+6 * JYEAR)
#define NPBOUNDARY (542.0E+6 * JYEAR)
#define LIFE_AGE (3.85E+9 * JYEAR)
#define GIANTIMPACT (4.533E+9 * JYEAR)
#define EARTH_AGE (4.56717E+9 * JYEAR)
#define PPQ (1.0E-15)
#define PPT (1.0E-12)
#define PPB (1.0E-9)
#define PPM (1.0E-6)
#define PERMILLE (1.0E-3)
#define PERCENT (1.0E-2)
#define SOLID_ANGLE (STERADIAN)
#define SPEED (LENGTH / TIME)
#define ACCELERATION (SPEED / TIME)
#define FORCE (MASS * ACCELERATION)
#define ENERGY (FORCE * LENGTH)
#define ACTION (ENERGY * TIME)
#define POWER (ENERGY / TIME)
#define AREA ((LENGTH * (LENGTH)))
#define VOLUME ((LENGTH * (LENGTH) * (LENGTH)))
#define DENSITY (MASS / VOLUME)
#define SPECIFICHEAT (ENERGY / (MASS * TEMPERATURE))
#define PRESSURE (FORCE / AREA)
#define VISCOSITY (FORCE * TIME / AREA)
#define FREQUENCY (1 / TIME)
#define VOLTAGE (POWER / CURRENT)
#define RESISTANCE (VOLTAGE / CURRENT)
#define INDUCTANCE (RESISTANCE * TIME)
#define CAPACITANCE (CHARGE / VOLTAGE)
#define CONDUCTANCE (1.0 / RESISTANCE)
#define MAGNETICFLUX (VOLTAGE * TIME)
#define MAGNETICINDUCTION (MAGNETICFLUX / AREA)
//  CCCCCCCCCCX_FUNC_PROTO ######################################### LANG_C #
double cxKILOGRAM(void);
double cxMETER(void);
double cxSECOND(void);
double cxKELVIN(void);
double cxAMPERE(void);
double cxMOLE(void);
double cxCANDELA(void);
double cxBIT(void);
double cxRADIAN(void);
double cxMASS(void);
double cxLENGTH(void);
double cxDISTANCE(void);
double cxTEMPERATURE(void);
double cxTIME(void);
double cxANGLE(void);
double cxAMOUNT(void);
double cxCURRENT(void);
double cxCHARGE(void);
double cxCOULOMB(void);
double cxSTERADIAN(void);
double cxMETRE(void);
double cxKG(void);
double cxRAD(void);
double cxE(void);
double cxTAU(void);
double cxPHI(void);
double cxTWOLN(void);
double cxTENLN(void);
double cxTWOSQRT(void);
double cxEULER(void);
double cxFEIGENBAUM(void);
double cxAPERY(void);
double cxGAMMAMIN(void);
double cxPI(void);
double cxYOTTA(void);
double cxZETTA(void);
double cxEXA(void);
double cxPETA(void);
double cxTERA(void);
double cxGIGA(void);
double cxMEGA(void);
double cxKILO(void);
double cxHECTO(void);
double cxDECA(void);
double cxDECI(void);
double cxCENTI(void);
double cxMILLI(void);
double cxMICRO(void);
double cxNANO(void);
double cxPICO(void);
double cxFEMTO(void);
double cxATTO(void);
double cxZEPTO(void);
double cxYOCTO(void);
double cxKIBI(void);
double cxMEBI(void);
double cxGIBI(void);
double cxTEBI(void);
double cxPEBI(void);
double cxEXBI(void);
double cxZEBI(void);
double cxYOBI(void);
double cxMPS(void);
double cxMPSS(void);
double cxUNITGM(void);
double cxNEWTON(void);
double cxJOULE(void);
double cxPA(void);
double cxWATT(void);
double cxHERTZ(void);
double cxHz(void);
double cxAMP(void);
double cxVOLT(void);
double cxOHM(void);
double cxHENRY(void);
double cxFARAD(void);
double cxSIEMENS(void);
double cxWEBER(void);
double cxTESLA(void);
double cxLUMEN(void);
double cxLUX(void);
double cxBOLTZMANN(void);
double cxBOLTZMANN_ERR(void);
double cxBOLTZMANN_REC(void);
double cxBOLTZMANN_REC_ERR(void);
double cxELEMENTARYCHARGE(void);
double cxELEMENTARYCHARGE_ERR(void);
double cxLIGHT(void);
double cxLIGHT_ERR(void);
double cxLIGHT_REC(void);
double cxLIGHT_REC_ERR(void);
double cxAVOGADRO(void);
double cxAVOGADRO_ERR(void);
double cxAVOGADRO_REC(void);
double cxAVOGADRO_REC_ERR(void);
double cxPLANCK(void);
double cxPLANCK_ERR(void);
double cxPLANCK_REC(void);
double cxPLANCK_REC_ERR(void);
double cxKCD(void);
double cxKCD_ERR(void);
double cxdvCs_Hz(void);
double cxdvCs_WAVELENGTH(void);
double cxdvCs_ENERGY(void);
double cxdvCs_ERR(void);
double cxkB(void);
double cxkB_ERR(void);
double cxkB_REC(void);
double cxkB_REC_ERR(void);
double cxELECTRON_CHARGE(void);
double cxELECTRON_CHARGE_ERR(void);
double cxPLANCKBAR(void);
double cxPLANCKBAR_ERR(void);
double cxh(void);
double cxh_ERR(void);
double cxh_REC(void);
double cxh_REC_ERR(void);
double cxc(void);
double cxc_ERR(void);
double cxc_REC(void);
double cxc_REC_ERR(void);
double cxHBAR(void);
double cxHBAR_ERR(void);
double cxGRAVITY(void);
double cxGRAVITY_ERR(void);
double cxATMOSPHERE(void);
double cxATMOSPHERE_ERR(void);
double cxAU(void);
double cxAU_ERR(void);
double cxJOSEPHSON(void);
double cxJOSEPHSON_ERR(void);
double cxVONKLITZING(void);
double cxVONKLITZING_ERR(void);
double cxFARADAY(void);
double cxFARADAY_ERR(void);
double cxFARADAY_REC(void);
double cxFARADAY_REC_ERR(void);
double cxGAS(void);
double cxGAS_ERR(void);
double cxGAS_REC(void);
double cxGAS_REC_ERR(void);
double cxFARADAYCONST(void);
double cxFARADAYCONST_ERR(void);
double cxFARADAYCONST_REC(void);
double cxFARADAYCONST_REC_ERR(void);
double cxGASCONST(void);
double cxGASCONST_ERR(void);
double cxGASCONST_REC(void);
double cxGASCONST_REC_ERR(void);
double cxGRAVITATION(void);
double cxGRAVITATION_ERR(void);
double cxGRAVITATION_REC(void);
double cxGRAVITATION_REC_ERR(void);
double cxRYDBERG(void);
double cxRYDBERG_ERR(void);
double cxRYDBERG_REC(void);
double cxRYDBERG_REC_ERR(void);
double cxG(void);
double cxG_ERR(void);
double cxALPHA(void);
double cxALPHA_ERR(void);
double cxALPHA_REC(void);
double cxALPHA_REC_ERR(void);
double cxALPHASQRT(void);
double cxFLTSIG(void);
double cxFLTMAN(void);
double cxFLTEPS(void);
double cxFLTMAX(void);
double cxDBLMAXLN(void);
double cxDBLSIG(void);
double cxDBLMAN(void);
double cxDBLEPS(void);
double cxDBLMAX(void);
double cxSI16MAX(void);
double cxSI16MIN(void);
double cxUI16MAX(void);
double cxSI32MAX(void);
double cxSI32MIN(void);
double cxUI32MAX(void);
double cxINTMAX(void);
double cxJEWISH_FIRST_MONTH(void);
double cxMONTHS_IN_YEAR(void);
double cxUVPV(void);
double cxMINUTE(void);
double cxHOUR(void);
double cxDAY(void);
double cxWEEK(void);
double cxFLICK(void);
double cxJDAY(void);
double cxJYEAR(void);
double cxJCENTURY(void);
double cxGYEAR(void);
double cxGYEAR_AT_0J2K(void);
double cxKWT(void);
double cxUET(void);
double cxJ2K(void);
double cxJ2KDAY(void);
double cxJDSEC_AT_0GREGORIAN(void);
double cxJDSEC_AT_0KWT(void);
double cxJDSEC_AT_0J2K(void);
double cxJDSEC_AT_0UET(void);
double cxTT_AT_0TAI(void);
double cxTT_AT_0UT1(void);
double cxGRAM(void);
double cxCARAT(void);
double cxTONNE(void);
double cxPOUND(void);
double cxLB(void);
double cxGRAIN(void);
double cxOUNCE(void);
double cxOZ(void);
double cxSTONE(void);
double cxTON(void);
double cxMM(void);
double cxINCH(void);
double cxHAND(void);
double cxFOOT(void);
double cxSURVEYFOOT(void);
double cxFEET(void);
double cxFT(void);
double cxYARD(void);
double cxHORSE(void);
double cxLINK(void);
double cxCHAIN(void);
double cxFURLONG(void);
double cxMILE(void);
double cxPOINT(void);
double cxSTANDARDGRAVITY(void);
double cxGRAVITATIONNASA(void);
double cxGRAVITATIONIERS(void);
double cxKGF(void);
double cxLBF(void);
double cxATM(void);
double cxSTANDARDATMOSPHERE(void);
double cxTORR(void);
double cxBAR(void);
double cxMMHG(void);
double cxINHG(void);
double cxPSI(void);
double cxDEGC(void);
double cxDEGF(void);
double cxDEGR(void);
double cxK_AT_0TEMPC(void);
double cxK_AT_0TEMPF(void);
double cxK_AT_0TEMPR(void);
double cxTEMPF_AT_0TEMPC(void);
double cxMACH(void);
double cxMPH(void);
double cxHECTARE(void);
double cxARE(void);
double cxACRE(void);
double cxBARN(void);
double cxLITER(void);
double cxLITRE(void);
double cxGALLON(void);
double cxQUART(void);
double cxPINT(void);
double cxCUP(void);
double cxFLOZ(void);
double cxTBLSP(void);
double cxTSP(void);
double cxBARREL(void);
double cxDRYGALLON(void);
double cxPECK(void);
double cxBUSHEL(void);
double cxAH(void);
double cxCALORIE(void);
double cxCAL_IT(void);
double cxCAL_TH(void);
double cxCAL(void);
double cxBTU_TH(void);
double cxBTU_IT(void);
double cxBTU(void);
double cxHP(void);
double cxHORSEPOWER(void);
double cxHPMETRIC(void);
double cxELECTRONVOLT(void);
double cxeV(void);
double cxERG(void);
double cxFOE(void);
double cxAAABATTERY_CHARGE(void);
double cxAAABATTERY_VOLTAGE(void);
double cxAAABATTERY(void);
double cxAAABATTERY_ENERGY(void);
double cxAABATTERY_CHARGE(void);
double cxAABATTERY_VOLTAGE(void);
double cxAABATTERY(void);
double cxAABATTERY_ENERGY(void);
double cxCBATTERY_CHARGE(void);
double cxCBATTERY_VOLTAGE(void);
double cxCBATTERY(void);
double cxCBATTERY_ENERGY(void);
double cxDBATTERY_CHARGE(void);
double cxDBATTERY_VOLTAGE(void);
double cxDBATTERY(void);
double cxDBATTERY_ENERGY(void);
double cxNINEVOLT_CHARGE(void);
double cxNINEVOLT_VOLTAGE(void);
double cxNINEVOLT(void);
double cxNINEVOLT_ENERGY(void);
double cxNINEVOLTBATTERY_CHARGE(void);
double cxNINEVOLTBATTERY_VOLTAGE(void);
double cxNINEVOLTBATTERY(void);
double cxNINEVOLTBATTERY_ENERGY(void);
double cxPHONEBATTERY_CHARGE(void);
double cxPHONEBATTERY_VOLTAGE(void);
double cxPHONEBATTERY(void);
double cxPHONEBATTERY_ENERGY(void);
double cxCARBATTERY_CHARGE(void);
double cxCARBATTERY_VOLTAGE(void);
double cxCARBATTERY(void);
double cxCARBATTERY_ENERGY(void);
double cxMICROWAVE_Hz(void);
double cxMICROWAVE_WAVELENGTH(void);
double cxMICROWAVE_ENERGY(void);
double cxLF_Hz(void);
double cxLF_WAVELENGTH(void);
double cxLF_ENERGY(void);
double cxMF_Hz(void);
double cxMF_WAVELENGTH(void);
double cxMF_ENERGY(void);
double cxHF_Hz(void);
double cxHF_WAVELENGTH(void);
double cxHF_ENERGY(void);
double cxVHF_Hz(void);
double cxVHF_WAVELENGTH(void);
double cxVHF_ENERGY(void);
double cxUHF_Hz(void);
double cxUHF_WAVELENGTH(void);
double cxUHF_ENERGY(void);
double cxSHF_Hz(void);
double cxSHF_WAVELENGTH(void);
double cxSHF_ENERGY(void);
double cxEHF_Hz(void);
double cxEHF_WAVELENGTH(void);
double cxEHF_ENERGY(void);
double cxTHF_Hz(void);
double cxTHF_WAVELENGTH(void);
double cxTHF_ENERGY(void);
double cxFIR_Hz(void);
double cxFIR_WAVELENGTH(void);
double cxFIR_ENERGY(void);
double cxMIR_Hz(void);
double cxMIR_WAVELENGTH(void);
double cxMIR_ENERGY(void);
double cxNIR_Hz(void);
double cxNIR_WAVELENGTH(void);
double cxNIR_ENERGY(void);
double cxRED_WAVELENGTH(void);
double cxRED_Hz(void);
double cxRED_ENERGY(void);
double cxORANGE_WAVELENGTH(void);
double cxORANGE_Hz(void);
double cxORANGE_ENERGY(void);
double cxYELLOW_WAVELENGTH(void);
double cxYELLOW_Hz(void);
double cxYELLOW_ENERGY(void);
double cxYELLOWGREEN_Hz(void);
double cxYELLOWGREEN_WAVELENGTH(void);
double cxYELLOWGREEN_ENERGY(void);
double cxGREEN_WAVELENGTH(void);
double cxGREEN_Hz(void);
double cxGREEN_ENERGY(void);
double cxBLUE_WAVELENGTH(void);
double cxBLUE_Hz(void);
double cxBLUE_ENERGY(void);
double cxVIOLET_WAVELENGTH(void);
double cxVIOLET_Hz(void);
double cxVIOLET_ENERGY(void);
double cxNUV_Hz(void);
double cxNUV_WAVELENGTH(void);
double cxNUV_ENERGY(void);
double cxEUV_Hz(void);
double cxEUV_WAVELENGTH(void);
double cxEUV_ENERGY(void);
double cxUVA_WAVELENGTH(void);
double cxUVA_Hz(void);
double cxUVA_ENERGY(void);
double cxUVB_WAVELENGTH(void);
double cxUVB_Hz(void);
double cxUVB_ENERGY(void);
double cxUVC_WAVELENGTH(void);
double cxUVC_Hz(void);
double cxUVC_ENERGY(void);
double cxSX_Hz(void);
double cxSX_WAVELENGTH(void);
double cxSX_ENERGY(void);
double cxSXX_WAVELENGTH(void);
double cxSXX_Hz(void);
double cxSXX_ENERGY(void);
double cxHX_Hz(void);
double cxHX_WAVELENGTH(void);
double cxHX_ENERGY(void);
double cxGAMMA_Hz(void);
double cxGAMMA_WAVELENGTH(void);
double cxGAMMA_ENERGY(void);
double cxTURN(void);
double cxARCTURN(void);
double cxARCRADIAN(void);
double cxARCDEGREE(void);
double cxARCMINUTE(void);
double cxARCSECOND(void);
double cxARCGRAD(void);
double cxARCDEG(void);
double cxARCMIN(void);
double cxARCSEC(void);
double cxGRAD(void);
double cxSQUAREDEGREE(void);
double cxSQDEG(void);
double cxSPHERESURFACE(void);
double cxSHANNON(void);
double cxNAT(void);
double cxHARTLEY(void);
double cxHART(void);
double cxDIT(void);
double cxBAN(void);
double cxRPM(void);
double cxRPS(void);
double cxRPH(void);
double cxOZFIN(void);
double cxLBFIN(void);
double cxLBFFT(void);
double cxKGFM(void);
double cxNm_PER_lbfin(void);
double cxkgfm_PER_lbfin(void);
double cxlbfinrpm_PER_Hp(void);
double cxozfin_PER_lbfin(void);
double cxlbfft_PER_lbfin(void);
double cxW_PER_Hp(void);
double cxFINESTRUCTURE(void);
double cxFINESTRUCTURE_ERR(void);
double cxFINESTRUCTURE_REC(void);
double cxFINESTRUCTURE_REC_ERR(void);
double cxMAGNETIC(void);
double cxMAGNETIC_ERR(void);
double cxMU0(void);
double cxMU0_ERR(void);
double cxELECTRIC(void);
double cxELECTRIC_ERR(void);
double cxEPSILON0(void);
double cxEPSILON0_ERR(void);
double cxCOULOMBCONST(void);
double cxCOULOMBCONST_ERR(void);
double cxPROTON_RADIUS(void);
double cxPROTON_RADIUS_ERR(void);
double cxMOLARMASS(void);
double cxMOLARMASS_ERR(void);
double cxDALTON(void);
double cxDALTON_ERR(void);
double cxAMU(void);
double cxAMU_ERR(void);
double cxATOMICMASSUNIT(void);
double cxATOMICMASSUNIT_ERR(void);
double cxUAMU(void);
double cxUAMU_ERR(void);
double cxRYDBERG_Hz(void);
double cxRYDBERG_WAVELENGTH(void);
double cxRYDBERG_ENERGY(void);
double cxELECTRON_MASSA(void);
double cxELECTRON_MASSA_ERR(void);
double cxHI_Hz(void);
double cxHI_WAVELENGTH(void);
double cxHI_ENERGY(void);
double cxHYDROGENLINE(void);
double cxHYDROGENLINE_ERR(void);
double cxHI(void);
double cxHI_ERR(void);
double cxPLANCKMASS(void);
double cxPLANCKCHARGE(void);
double cxPLANCKENERGY(void);
double cxPLANCKTEMP(void);
double cxPLANCKLENGTH(void);
double cxPLANCKTIME(void);
double cxPLANCKFREQUENCY(void);
double cxSTEFAN(void);
double cxSTEFAN_ERR(void);
double cxPINGPONGBALL_RADIUS(void);
double cxGOLFBALL_RADIUS(void);
double cxTENNISBALL_RADIUS(void);
double cxBASEBALL_RADIUS(void);
double cxSOFTBALL_RADIUS(void);
double cxSOCCERBALL_RADIUS(void);
double cxBASKETBALL_RADIUS(void);
double cxPINGPONGBALL_MASS(void);
double cxGOLFBALL_MASS(void);
double cxTENNISBALL_MASS(void);
double cxBASEBALL_MASS(void);
double cxSOFTBALL_MASS(void);
double cxBASKETBALL_MASS(void);
double cxSOCCERBALL_MASS(void);
double cxMARATHON(void);
double cxPENNY_HEIGHT(void);
double cxNICKEL_HEIGHT(void);
double cxDIME_HEIGHT(void);
double cxQUARTER_HEIGHT(void);
double cxPENNY_DIAMETER(void);
double cxNICKEL_DIAMETER(void);
double cxDIME_DIAMETER(void);
double cxQUARTER_DIAMETER(void);
double cxPENNY_MASS(void);
double cxNICKEL_MASS(void);
double cxDIME_MASS(void);
double cxQUARTER_MASS(void);
double cxMOON_MONTH(void);
double cxMILKYWAY_AGE(void);
double cxASTRONOMICALUNIT(void);
double cxLIGHTYEAR(void);
double cxPARSEC(void);
double cxPROXIMACENTAURI(void);
double cxMILKYWAY_RADIUS(void);
double cxGALACTICCENTER(void);
double cxMILKYWAY_MASS(void);
double cxSOLARCONSTANT(void);
double cxUNIVERSE_AGE(void);
double cxUNIVERSE_RADIUS(void);
double cxUNIVERSE_MASS(void);
double cxEINSTEIN(void);
double cxEINSTEIN_ERR(void);
double cxHUBBLE(void);
double cxHUBBLE_ERR(void);
double cxHUBBLERADIUS(void);
double cxBHMASSTEMP(void);
double cxBHMASS_RADIUS(void);
double cxBHMASS3_LIFETIME(void);
double cxBHRADIUS2DENSITY(void);
double cxBHMASS2_ENTROPY(void);
double cxBHENTROPY_AREA(void);
double cxBHMASS2POWER(void);
double cxBHMASS2_AREA(void);
double cxBHMASS2_DENSITY(void);
double cxBEKENSTEININFORMATION(void);
double cxBEKENSTEINENTROPY(void);
double cxELEVATIONMAX(void);
double cxELEVATIONMIN(void);
double cxKPGBOUNDARY(void);
double cxTRJBOUNDARY(void);
double cxMILKYWAY_DAY(void);
double cxPTRBOUNDARY(void);
double cxNPBOUNDARY(void);
double cxLIFE_AGE(void);
double cxGIANTIMPACT(void);
double cxEARTH_AGE(void);
double cxPPQ(void);
double cxPPT(void);
double cxPPB(void);
double cxPPM(void);
double cxPERMILLE(void);
double cxPERCENT(void);
double cxSOLID_ANGLE(void);
double cxSPEED(void);
double cxACCELERATION(void);
double cxFORCE(void);
double cxENERGY(void);
double cxACTION(void);
double cxPOWER(void);
double cxAREA(void);
double cxVOLUME(void);
double cxDENSITY(void);
double cxSPECIFICHEAT(void);
double cxPRESSURE(void);
double cxVISCOSITY(void);
double cxFREQUENCY(void);
double cxVOLTAGE(void);
double cxRESISTANCE(void);
double cxINDUCTANCE(void);
double cxCAPACITANCE(void);
double cxCONDUCTANCE(void);
double cxMAGNETICFLUX(void);
double cxMAGNETICINDUCTION(void);
//  FFFFFFFFFFUNC_PROTOTYPE ######################################## LANG_C #
double timee(void);
void kw_description(void);
double id(double xx);
double reci(double xx);
double neg(double xx);
double square(double xx);
double sq(double xx);
double sqinv(double xx);
double cube(double xx);
double cu(double xx);
double sign(double xx);
double stair(double xx);
double heaviside(double xx);
double divi(double numer
      , double denom
      , double def_val);
double clip(double xx);
double clip2(double xx
      , double xlow
      , double xhigh);
double clip2x(double xx
      , double xa
      , double xb);
double sba(double xx);
double ratio(double aa
      , double bb);
double horner(double xx
      , long deg
      , const double *coefh_arr_pc);
double chebeval(double xx
      , long deg
      , const double *cheb_arr_pc);
double ln(double xx);
double lg(double xx);
double log10(double xx);
double logx(double xx
      , double bb);
double l10(double xx);
double fmody(double xx
      , double yymodulus);
double fmodu(double xx
      , double yymodulus);
double remquou(double xx
      , double yymodulus
      , double *ret_int_arr_p);
double fmods(double xx
      , double yymodulus);
double pow2(double expo);
double pow10(double expo);
double sigmoid(double xx);
double sigmoidinv(double xx);
double sigmoid3(double aa
      , double bb
      , double xx);
double taninv3(double aa
      , double bb
      , double xx);
double sigmoid3d(double aa
      , double bb
      , double xx);
double sqrtx(double xx);
double smooth(double xx);
double hypot(double xx
      , double yy);
double hypot1(double xx);
double hypot1inv(double xx);
double hypot3(double xx
      , double yy
      , double zz);
double topyh(double xx
      , double yy);
double topyh1(double xx);
long cnv_dbl2si16(double xx);
double k2tempc(double temp_k);
double tempc2k(double temp_c);
double k2tempf(double temp_k);
double tempf2k(double temp_f);
double k2tempr(double temp_k);
double tempr2k(double temp_r);
double tempf2tempc(double temp_f);
double tempc2tempf(double temp_c);
long iszero(double xx);
long iseven(double xx);
long isodd(double xx);
long ismult(double xx
      , double mult);
long ismultl(long xx
      , long mult);
long isgt(double xx
      , double yy);
long islt(double xx
      , double yy);
long isge(double xx
      , double yy);
long isle(double xx
      , double yy);
long ispos(double xx);
long isneg(double xx);
long iseq(double xx
      , double yy);
long isneq(double xx
      , double yy);
long isint(double xx);
long isnegint(double xx);
long isposint(double xx);
double ifzero(double cond
      , double tru_val
      , double fal_val);
long isalmostequal(double xx
      , double yy
      , double epsratio);
long iswithin(double xx
      , double yy
      , double delta);
long isbetweenx(double xx
      , double min_xx
      , double max_xx);
long isbetween(double xx
      , double min_xx
      , double max_xx);
long isleapyear(long gregyear);
long isss(double xx
      , double yy);
long issignsame(double xx
      , double yy);
long isfloorsame(double xx
      , double yy
      , double multy);
long magicset(void);
long magicnot(void);
long ismagic(long xx);
double rtoz(double xx);
double rtoi(double xx);
double bankers(double xx);
double round(double xx);
long iround(double xx);
double round2(double xx
      , double yy);
double roundy(double xx
      , double yy
      , double shf);
double rtomsd(double fs
      , long msds);
double rto125(double fs);
double floor2(double xx
      , double yy);
double ceil2(double xx
      , double yy);
double fmod2(double xx
      , double minn
      , double maxx);
double frac(double xx);
double trunc(double xx);
double fmul(double xx
      , double pp);
double dist(double xx
      , double xmoduli);
double ddist(double xx
      , double xmoduli);
double sinc(double xx_rad);
double sincinv(double yy);
double sincc(double xx_rad);
double versin(double circ_rad);
double haversin(double circ_rad);
double tur2deg(double circ_tur);
double deg2tur(double circ_deg);
double tur2rad(double circ_tur);
double rad2tur(double circ_rad);
double tur2sec(double circ_tur);
double sec2tur(double circ_sec);
double rad2deg(double circ_rad);
double deg2rad(double circ_deg);
double rad2sec(double circ_rad);
double sec2rad(double circ_sec);
double deg2sec(double circ_deg);
double sec2deg(double circ_sec);
double rad2dms(double xx_rads);
double rad2dms2(double circ_rads);
double dms2rad(double circ_dms);
double deg2dms(double circ_deg);
double dms2deg(double circ_dms);
double cot(double circ_rad);
double sec(double circ_rad);
double csc(double circ_rad);
double sininv(double xx);
double cosinv(double xx);
double taninv(double xx);
double cotinv(double xx);
double secinv(double xx);
double cscinv(double xx);
double sinh(double hyp_rad);
double cosh(double hyp_rad);
double tanh(double hyp_rad);
double coth(double hyp_rad);
double sech(double hyp_rad);
double csch(double hyp_rad);
double gd(double hyp_rad);
double gdinv(double xx);
double sinhinv(double xx);
double coshinv(double xx);
double tanhinv(double xx);
double cothinv(double xx);
double sechinv(double xx);
double cschinv(double xx);
double atan2h(double xx
      , double yy);
double atan2u(double xx
      , double yy);
double sind(double circ_deg);
double sindinv(double xx);
double cosd(double circ_deg);
double cosdinv(double xx);
double tand(double circ_deg);
double tandinv(double xx);
double cotd(double circ_deg);
double cotdinv(double xx);
double secd(double circ_deg);
double secdinv(double xx);
double cscd(double circ_deg);
double cscdinv(double xx);
double atan2d(double xx
      , double yy);
double sint(double circ_tur);
double sintinv(double xx);
double cost(double circ_tur);
double costinv(double xx);
double tant(double circ_tur);
double tantinv(double xx);
double cott(double circ_tur);
double cottinv(double xx);
double sect(double circ_tur);
double sectinv(double xx);
double csct(double circ_tur);
double csctinv(double xx);
double atan2t(double xx
      , double yy);
double sqrtxp1m1(double xx);
double ln1p(double xx);
double expm1(double xx);
double cosm1(double xx);
double lns(double xx);
double trip(double xx);
double cbrt(double yy);
double cuberoot(double xx);
double squareroot(double xx);
long print_array(long arr_size
      , const long *data_arr_pc);
long contfra_print(double orig);
long contfrac_print(double orig);
long contfracd_print(double orig);
long num2char_print(long num);
long base_out_print(long num
      , long baset);
long base_out_fix_print(long num
      , long baset
      , long min_sz);
long base_outf_print(double num
      , long baset);
double fvoa(double payment
      , double rate_per_paymt
      , double num_pays);
double fvad(double payment
      , double rate_per_paymt
      , double num_pays);
double pvoa(double payment
      , double rate_per_paymt
      , double num_pays);
double pvad(double payment
      , double rate_per_paymt
      , double num_pays);
double loanvalue(double payment
      , double rate_per_paymt
      , double num_pays);
double loanpayment(double loan_amt
      , double rate_per_paymt
      , double num_pays);
double loanrate(double loan_amt
      , double payment
      , double num_pays);
double f21(double aa
      , double bb
      , double cc
      , double zz);
double f11(double aa
      , double bb
      , double zz);
double wp(double xx);
double wm(double xx);
double wpinv(double zz);
double wminv(double zz);
double sinintegral(double xx);
double cosintegral(double xx);
double Ein(double xx);
double expintegrali(double xx);
double expintegral1(double xx);
double expintegraln(long nn
      , double xx);
double logintegral(double xx);
double carlsonRF(double xx
      , double yy
      , double zz);
double carlsonRC(double xx
      , double yy);
double carlsonRJ(double xx
      , double yy
      , double zz
      , double pp);
double carlsonRD(double xx
      , double yy
      , double zz);
long powi(long xx
      , long nn);
long atothenmodp(long naa
      , long nn
      , long pp);
double atothenmodx(double xaa
      , double xnn
      , double xpp);
long ctz(long nn);
long gcd(long naa
      , long nbb);
long gcda(long array_count
      , const long *num_arr_pc);
long lcm(long naa
      , long nbb);
long lcam(long naa
      , long nbb);
long lcams(long naa
      , long nbb);
long lcantim(long naa
      , long nbb);
long factor(long number_to_factor
      , long *ret_fctr_arr_p);
long modulo(long nxx
      , long modyy);
long mods(long nxx
      , long modyy);
long pfl(long nn);
long pfg(long nn);
long isprime(long nn);
long primeprev(long pp);
long primenext(long pp);
long primecount(double xx);
long pcf(double xx);
long primecountx(double xx);
double eta(double xx);
double zeta(double xx);
double fibo3(long nn
      , double fib_a
      , double fib_b);
double fibo(long nn);
double fibox(double xx);
double fiboxinv(double yy);
double lucas(long nn);
double lucasx(double xx);
long fusc(long nn);
double Tn(long nn
      , double xx);
double Un(long nn
      , double xx);
double tri(double nn);
double triinv(double nn);
double polynum(double ss
      , double nn);
double polycnum(double ss
      , double nn);
double tetranum(double ss
      , double nn);
double tetracnum(double ss
      , double nn);
double minkowski(double xx);
double cantorxx(double nbb
      , double ee
      , double xx);
double cantor(double xx);
double cantorul(double bb
      , double ee
      , double xx);
double cantorll(double bb
      , double ee
      , double xx);
long dlogx(long naa
      , long nbb
      , long nn);
long dlog(long naa
      , long nbb
      , long nn);
long dlog1(long naa
      , long nn);
long mertens(long nn);
long has_primitiveroot_f(long array_size
      , const long *fac_arr_pc);
long sigma0_f(long array_size
      , const long *fac_arr_pc);
long sigma1_f(long array_size
      , const long *fac_arr_pc);
long sigma_f(long powy
      , long array_size
      , const long *fac_arr_pc);
long ispractical_f(long array_size
      , const long *fac_arr_pc);
long issquarefree_f(long array_size
      , const long *fac_arr_pc);
long totient_f(long array_size
      , const long *fac_arr_pc);
long mobius_f(long array_size
      , const long *fac_arr_pc);
long prime0_f(long array_size
      , const long *fac_arr_pc);
long factor_print(long nn);
long mobius(long nn);
long isprimitiveroot(long naa
      , long nn);
long prime0(long nn);
long prime1(long nn);
long sigma0(long nn);
long sigma1(long nn);
long sigma(long powy
      , long nn);
long totient(long nn);
long has_primitiveroot(long nn);
long issquarefree(long nn);
long ispractical(long nn);
long primitiveroot(long nn);
long carmichael(long nn);
long znorder(long naa
      , long nn);
long repetendlen(long denm
      , long basee);
long kevy_print(long den
      , long start
      , long basee);
long eulerphi(long nn);
long znorder__1(long nbb
      , long mdls);
long bkn(long nbb
      , long kk);
long bkbn(long nbb
      , long kk
      , long cc);
double lix(double xx);
double lixinv(double yy);
long n2primish(long nn);
double primenth__1(double nn);
double reimann(double nn);
long primenth(long nn);
double bessJv(double vv
      , double xx);
double bessYv(double vv
      , double xx);
double bessI0(double xx);
double bessI1(double xx);
double bessK0(double arg);
double bessK1(double arg);
double bessJn_ps(long nn
      , double xx);
double bessIn_ps(long nn
      , double xx);
double bessJ0(double xx);
double bessJ1(double xx);
double bessY0(double xx);
double bessY1(double xx);
double bessIn(long nn
      , double xx);
double bessJn(long nn
      , double xx);
double bessYn(long nn
      , double xx);
double bessKn(long nn
      , double xx);
double bessYn_ps(long nn
      , double xx);
double bessY1__1(double xx);
double bess_jn(long nn
      , double xx);
double bess_yn(long nn
      , double xx);
double partition(long nn);
double partitionq(long nn);
long bitwisenot(long xx);
long bitwiseand(long xx
      , long yy);
long bitwiseor(long xx
      , long yy);
long bitwisexor(long xx
      , long yy);
long bitshiftl(long hexnumber
      , long shift_count);
long bitshiftr(long hexnumber
      , long shift_count);
long bits_count(long hexnumber);
long bits_ls1b(long orig);
long bits_ms1b(long orig);
long bits_ls1bpos(long orig);
long bits_ms1bpos(long orig);
long bits_assign(long orig
      , long value_to_set
      , long which_mask);
long bits_get(long vall
      , long mask);
long bits_set(long vall
      , long mask);
double erf(double xx);
double erfc(double xx);
double erfcx(double xx);
double erfcinv(double yy_orig);
double erfcxinv(double yy);
double erfinv(double yy);
double erf__1(double xx);
double erf__2(double xx);
double erf__3(double xx);
double erf__4(double xx);
double lgamma__1(double xx);
double lgammainv(double yy);
double lgamma(double zz);
double lgamma__2(double zz);
double lpermx(double nn
      , double rr);
double permx(double nn
      , double rr);
double lcombx(double nn
      , double rr);
double combx(double nn
      , double rr);
double birthdayx(double nn
      , double rr);
double tgamma__1(double xx);
double tgamma(double xx);
double tgammainv(double yy);
double tgamma__2(double xx);
double tgamma__3(double xx);
double tgamma__stirling(double xx);
double tgammadouble(double xx);
double ligamma(double aa
      , double xx);
double uigamma(double aa
      , double xx);
double rligamma(double aa
      , double xx);
double ruigamma(double aa
      , double xx);
double uigamma__1(double aa
      , double xx);
double uigammainv(double aa
      , double yy);
double ligammainv(double aa
      , double yy);
double lbeta(double aa
      , double bb);
double beta(double aa
      , double bb);
double betainc(double aa
      , double bb
      , double xx);
double betainc__1(double aa
      , double bb
      , double xx);
double digamma(double xx);
double digammainv(double yy);
double digamma__1(double xx);
double factorialinv(double yy);
double facinv(double yy);
double hn(double xx);
double hn__1(double xx);
double hnm(double xx
      , double vv);
double factorial(long nn);
double factorialdouble(long nn);
double fac(long nn);
double factorialt(long n_things
      , long r_each);
double comb(long n_things
      , long r_each);
double perm(long n_things
      , long r_each);
double combination(long n_things
      , long r_each);
double permutation(long n_things
      , long r_each);
double catalan(long nn);
double supercatalan(long nn);
double bell(long nn);
double bellx(double xxn);
double fubini(long nn);
long d2lt_d1(long xx
      , long yy);
long d1lt_d2(long nn
      , long *ret_arr_p);
long d2ur_d1(long xx
      , long yy);
long d1ur_d2(long nn
      , long *ret_arr_p);
long d2diamond_d1(long xx
      , long yy);
long d1diamond_d2(long nn
      , long *ret_arr_p);
long d2spiral_d1(long xx
      , long yy);
long d1spiral_d2(long nn
      , long *ret_arr_p);
long d2hypot_d1(long xx
      , long yy);
double binomialx(double xnn
      , double xkk);
long binomial(long nn
      , long kk);
double eulerian(long nn
      , long kk);
double entringer(long nn
      , long kk);
double zigzag(long nn);
double zig(long nn);
double zag(long nn);
double eulerx(long nn);
double ballot(double xmm
      , double xnn);
double ballots(double xmm
      , double xnn);
double stirling1(long nn
      , long kk);
double stirling2(long nn
      , long kk);
double bernoulli(long nn);
long bernoullin(long nn);
long bernoullid(long nn);
double birthday(double xnn
      , double xrr);
double birthdayinv(double xnn
      , double xprob);
long n2perm(long nth
      , long nn
      , long *ret_perm_arr_p);
long n2comb(long nth
      , long nn
      , long rr
      , long *ret_comb_arr_p);
long n2perm_print(long nth
      , long nn);
long n2comb_print(long nth
      , long nn
      , long rr);
double pochhammer(long nn
      , double xx);
long days_in_month(long g_year
      , long g_month);
double sec2dhms(double seconds);
double day2dhms(double dayfrac);
double day2dhmsinv(double xx_hms);
double hms2day(double hourx
      , double minutex
      , double secondx);
double hour2day(double hourx);
double day2hour(double dayx);
double jd2kwt(double jjdtime);
double jd2j2k(double jjdtime);
double jd2uet(double jjdtime);
double kwt2jd(double kwttime);
double uet2jd(double uettime);
double j2k2jd(double jtwoktm);
double j2k2kwt(double jtwoktm);
double j2k2uet(double jtwoktm);
double kwt2j2k(double kwttime);
double kwt2uet(double kwttime);
double uet2kwt(double uettime);
double uet2j2k(double uettime);
long jd2dow(double jjd);
long j2k2dow(double jtwok);
double ymd2doy(long g_year
      , long g_month
      , double g_daymon);
double ymd2j2k__1(double g_year
      , double g_month
      , double g_day);
double ymd2j2k(double g_year
      , double g_month
      , double g_day);
double ymd2jd(double g_year
      , double g_month
      , double g_day);
long ymd2dow(long g_year
      , long g_month
      , double g_daymon);
long doomsday(long g_year);
double jd2ymdhms(double jjulid);
double j2k2ymdhms(double jtwokd);
double ymdhms_get(long indexp);
double jd2ymdhmsinv(void);
double jd264_print(double jjulid);
double ymdhms2jd(double ymdhmsx);
double ymdhms2j2k(double ymdhmsx);
double clocksec(double secnds);
double clockmin(double secnds);
double clockhour(double secnds);
double clocksum(double secnds);
double clockstdev(double secnds);
long date_easter(long g_year);
double date_rosh_hashanah(long g_year);
double jewish2jdx(long hebyear);
long isjewishleap(long hebyear);
double date_pesach(long g_year);
long g2jewish(long g_year);
long jewish2g(long hebyear);
long jewish_months_in_year(long hebyear);
long jewish_yearlength(long hebyear);
double jewish2jd(long hebyear);
long isjewish8short(long hebyear);
long isjewish9short(long hebyear);
long jewish_monthlength(long hebyear
      , long hebmonth);
long jewish_monthbegin(long hebyear
      , long hmonth);
double jewishymd2jd(long hebyear
      , long hebmonth
      , double hebday);
double amean(double xa
      , double xb);
double amean1(double xa);
double lmean(double xa
      , double xb);
double lmean1(double xa);
double pmean(double pp
      , double xa
      , double xb);
double gmean(double xa
      , double xb);
double gmean1(double xa);
double hmean(double xa
      , double xb);
double hmean1(double xa);
double qmean(double xa
      , double xb);
double qmean1(double xa);
double heronianmean(double xa
      , double xb);
double heronianmean1(double xa);
double agmean(double xa
      , double xb);
double agmean1(double xa);
double ahmean(double xa
      , double xb);
double ahmean1(double xa);
double almean(double xa
      , double xb);
double almean1(double xa);
double aqmean(double xa
      , double xb);
double aqmean1(double xa);
double ghmean(double xa
      , double xb);
double ghmean1(double xa);
double glmean(double xa
      , double xb);
double glmean1(double xa);
double gqmean(double xa
      , double xb);
double gqmean1(double xa);
double hlmean(double xa
      , double xb);
double hlmean1(double xa);
double hqmean(double xa
      , double xb);
double hqmean1(double xa);
double lqmean(double xa
      , double xb);
double lqmean1(double xa);
double agmean__1(double xa
      , double xb);
double agcmean(const double *xa_arr_pc
      , const double *xb_arr_pc
      , double *ret_arr_p);
double aghmean(double xa
      , double xb
      , double xc);
double rms(double xa
      , double xb);
double agmeaninva(double aa
      , double gg);
double agmeaninvg(double aa
      , double gg);
double agmean1inv(double yy);
double ghmean1inv(double yy);
double contraharmonic(long nn
      , const double *val_arr_pc);
double rand_init_array(long seed_size
      , const long *seed_arr_pc);
double rand_init(double seed);
long randl(long nn);
double randd(void);
double int_pdf(double para_nn
      , double xx);
double int_cdf(double para_nn
      , double xx);
double int_quantile(double para_nn
      , double probx);
long int_rand(double para_nn);
double normal_pdf(double xx);
double normal_cdf(double xx);
double normal_cdf__1(double xx);
double normal_quantile(double probx);
double normal_rand(void);
double gau_pdf(double xx);
double gau_cdf(double xx);
double gau_quantile(double probx);
double gau_rand(void);
double normal_quantile__1(double probx);
double uni_pdf(double max_x
      , double xxp);
double uni_cdf(double max_x
      , double xxp);
double uni_quantile(double max_x
      , double probx);
double uni_rand(double max_x);
double exp_pdf(double para_scaling
      , double xxp);
double exp_cdf(double para_scaling
      , double xxp);
double exp_quantile(double para_scaling
      , double probx);
double exp_rand(double para_scaling);
double poi_pdf(double meanx
      , double xxp);
double poi_cdf(double meanx
      , double xxp);
double poi_quantile(double meanx
      , double probx);
long poi_rand(double meanx);
double geo_pdf(double prob
      , double kk);
double geo_cdf(double prob
      , double kk);
double geo_quantile(double prob
      , double probx);
long geo_rand(double prob);
double cauchy_pdf(double para_scaling
      , double xx);
double cauchy_cdf(double para_scaling
      , double xx);
double cauchy_quantile(double para_scaling
      , double probx);
double cauchy_rand(double para_scaling);
double logistic_pdf(double ss
      , double xx);
double logistic_cdf(double ss
      , double xx);
double logistic_quantile(double ss
      , double probx);
double logistic_rand(double ss);
double tri_pdf(double pp
      , double xxp);
double tri_cdf(double pp
      , double xxp);
double tri_quantile(double pp
      , double probx);
double tri_rand(double pp);
double trap_pdf(double prob_a
      , double prob_b
      , double xx);
double trap_cdf(double prob_a
      , double prob_b
      , double xx);
double trap_quantile(double prob_a
      , double prob_b
      , double xx);
double trap_rand(double prob_a
      , double prob_b);
double pareto_pdf(double para_shape
      , double para_scaling
      , double xx);
double pareto_cdf(double para_shape
      , double para_scaling
      , double xx);
double pareto_quantile(double para_shape
      , double para_scaling
      , double probx);
double pareto_rand(double para_shape
      , double para_scaling);
double gompertz_pdf(double para_shape
      , double para_scaling
      , double xx);
double gompertz_cdf(double para_shape
      , double para_scaling
      , double xx);
double gompertz_quantile(double para_shape
      , double para_scaling
      , double probx);
double gompertz_rand(double para_shape
      , double para_scaling);
double zipf_pdf(double ss
      , long max_kk
      , long kk);
double zipf_cdf(double ss
      , long max_kk
      , long kk);
long zipf_quantile(double ss
      , long max_kk
      , double probx);
long zipf_rand(double ss
      , long max_kk);
double beta_pdf(double para_shape_a
      , double para_shape_b
      , double xx);
double beta_cdf(double para_shape_a
      , double para_shape_b
      , double xx);
double beta_quantile(double para_shape_a
      , double para_shape_b
      , double probx);
double beta_rand(double para_shape_a
      , double para_shape_b);
double gamma_pdf(double para_shape
      , double xxp);
double gamma_cdf(double para_shape
      , double xxp);
double gamma_rand(double para_shape);
double chisqr_pdf(double df
      , double xxp);
double chisqr_cdf(double df
      , double xxp);
double chisqr_rand(double df);
double binomial_pdf(double prob_a
      , long success
      , long trial);
double binomial_cdf(double prob_a
      , long success
      , long trial);
double binomial_rand(double prob_a
      , double rr);
double benford_pdf(long max_kk
      , long kk);
double benford_cdf(long max_kk
      , long kk);
long benford_rand(long max_kk);
double nbd_pdf(double prob_a
      , long rsuccesses
      , long kfailures);
double nbd_cdf(double prob_a
      , long rsuccesses
      , long kfailures);
long nbd_rand(double prob_a
      , long rsuccesses);
double polya_pdf(double prob_a
      , double rsuccesses
      , double kfailures);
double polya_cdf(double prob_a
      , double rsuccesses
      , double kfailures);
double polya_rand(double tt
      , double probx);
double zeta_pdf(double ss
      , long ixxp);
double zeta_cdf(double ss
      , long ixxp);
double ks_cdf(long para_nn
      , double xx);
double ks_a_cdf(double xx);
double ks_b_cdf(long para_nn
      , double xx);
double ks_quantile(double para_nn
      , double probx);
double t_pdf(double dfn
      , double xx);
double t_cdf(double dfx
      , double xx);
double t_quantile(double dfx
      , double probx);
double t_cdf__1(double dfx
      , double xx);
double t_quantile__1(double dfx
      , double probx);
double f_cdf(long dfn_a
      , long dfn_b
      , double xx);
double f_quantile(long dfn_a
      , long dfn_b
      , double probx);
double f_quantile__1(long dfn_a
      , long dfn_b
      , double probx);
double mb_pdf(double aa
      , double xx);
double mb_cdf(double aa
      , double xx);
double maxwell_boltzmann_pdf(double temperature
      , double molecular_mass
      , double velocity);
double maxwell_boltzmann_cdf(double temperature
      , double molecular_mass
      , double velocity);
double maxwell_juttner_pdf(double temperature
      , double molecular_mass
      , double velocity);
double blackbodyl_pdf(double wavelen);
double blackbodyf_pdf(double freq);
long ints_rand(long para_nn
      , const double *prob_arr_pc);
double stdev2spread(double numm
      , double stdevx);
double spread2stdev(double numm
      , double spread);
double maxabs(long nn
      , const double *data_arr_pc);
double minabs(long nn
      , const double *data_arr_pc);
double maxabsoffset(double offset
      , long nn
      , const double *data_arr_pc);
double minabsoffset(double offset
      , long nn
      , const double *data_arr_pc);
double mini(long num
      , const double *data_arr_pc);
double maxi(long num
      , const double *data_arr_pc);
double maxmin(long num
      , const double *data_arr_pc
      , double *ret_maxmin_arr_p);
double min2(double value_a
      , double value_b);
double max2(double value_a
      , double value_b);
double minabs2(double value_a
      , double value_b);
double maxabs2(double value_a
      , double value_b);
double variance(long nn
      , const double *xx_arr_pc);
double mean(long nn
      , const double *xx_arr_pc);
long stts_init(long ix_hndl
      , double n_count
      , double meanx
      , double var
      , double minim
      , double maxim);
long stts_initx(long ix_hndl
      , double num_count
      , double meanx
      , double msq
      , double minim
      , double maxim);
long stts_reset(long ix_hndl);
long stts_new(void);
long stts_delete(long ix_hndl);
double sttscount(long ix_hndl);
double sttsmean(long ix_hndl);
double sttsmsq(long ix_hndl);
double sttsmax(long ix_hndl);
double sttsmin(long ix_hndl);
double sttsmagic(long ix_hndl);
double sttssum(long ix_hndl);
double sttsvar(long ix_hndl);
double sttsstdev(long ix_hndl);
double sttsstdevmean(long ix_hndl);
double sttsspread(long ix_hndl);
double stts_update(long ix_hndl
      , double new_data);
double stts_downdate(long ix_hndl
      , double old_data);
double stts_updatex(long ix_hndl
      , long nn
      , const double *data_arr_pc);
long stts_newx(long nn
      , const double *data_arr_pc);
long stts_shift(long ix_hndl
      , double data_shift);
long stts_scale(long ix_hndl
      , double xfactor);
long stts_copy(long hto
      , long hfrom);
long stts_update2(long ix_hnda
      , long ix_hndb);
long corr_new(void);
long corr_delete(long ix_chnd);
long corr_handlex(long ix_chnd);
long corr_handley(long ix_chnd);
double corr_update(long ix_chnd
      , double xx
      , double yy);
double corrslope(long ix_chnd);
double corry0(long ix_chnd);
double corrcorr(long ix_chnd);
double corrstderr(long ix_chnd);
double fit_poly(long num_points
      , const double *pts_arr_pc
      , double *ret_coeff_arr_p);
double parabola_solve(double xx_a
      , double yy_a
      , double xx_b
      , double yy_b
      , double xx_c
      , double yy_c);
double parabola_get(long ii_ind);
double parabola_roots(long ii_ind);
double parabola_yextrema(void);
double parabola_xaxis(void);
double parabola_realroots(void);
double circle_solve(double x_a
      , double y_a
      , double x_b
      , double y_b
      , double x_c
      , double y_c);
double circle_get(long ii_ind);
double fit_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_coeff_arr_p);
double fitx_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_arr_p);
double fit_minmax0(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p);
double fit_ls(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p);
double fit_ls0(long num_points
      , const double *pts_arr_pc
      , double *ret_lsz_arr_p);
double sqrt__1(double xx);
double sqrt__2(double xx);
double sqrt__3(double yy);
double nthroot__1(double xx
      , long kk);
double cossin_ev(long init_ii
      , double xx_rad
      , long addone_mult);
double cos__1(double xx_rad);
double cosm1__1(double xx_rad);
double sin__1(double xx_rad);
double sinc__1(double xx_rad);
double exp__1(double xx);
double exp__2(double xx);
double ln__1(double xx);
double ln__2(double xx);
double euler__1(void);
double sphere_d(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad);
double great_circle_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad);
double sphere_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p);
double ellipsoid_distance(double flat
      , double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p);
double ellipsoid_destination(double flat
      , double lata_rad
      , double lona_rad
      , double heading_rad
      , double distance
      , double *ret_loc_arr_p);
double ellipsoid_surface(double axis_a
      , double axis_b
      , double axis_c);
double ellipsoid_volume(double axis_a
      , double axis_b
      , double axis_c);
double shc_shftpoles2steps(long shft
      , long poles);
double shc_steps2shft(double steps);
double shc_steps2shftinv(double shft);
double shc_shft2steps(long shft);
double m2k(double emm);
double k2m(double ekk);
double a2k(double eaa);
double k2a(double ekk);
double a2m(double eaa);
double m2a(double emm);
double m2b(double emm);
double b2m(double ebb);
double elliptic1m(double emm);
double ellipticK(double ekk);
double elliptic1m__1(double emm);
double elliptic1m__2(double emm);
double elliptic1im(double emm
      , double circ_rad);
double elliptic1k(double kk);
double elliptic1ik(double kk
      , double circ_rad);
double elliptic1a(double aa);
double elliptic1ia(double aa
      , double circ_rad);
double ellipticF(double ekk
      , double circ_rad);
double elliptic1im__1(double emm
      , double circ_rad);
double elliptic2m(double emm);
double ellipticE(double ekk);
double elliptic2m__1(double emm);
double elliptic2im(double emm
      , double circ_rad);
double ellipticEi(double ekk
      , double circ_rad);
double elliptic2im__1(double emm
      , double circ_rad);
double elliptic2k(double kk);
double elliptic2ik(double kk
      , double circ_rad);
double elliptic2a(double aa);
double elliptic2ia(double aa
      , double circ_rad);
double elliptic3m(double enn
      , double emm);
double elliptic3k(double enn
      , double kk);
double elliptic3ik(double enn
      , double kk
      , double circ_rad);
double elliptic3a(double enn
      , double aa);
double elliptic3ia(double enn
      , double aa
      , double circ_rad);
double ellipticP(double ekk
      , double circ_rad);
double elliptic3im(double enn
      , double emm
      , double circ_rad);
double ellipticPi(double enn
      , double ekk
      , double circ_rad);
double elliptic3m__1(double enn
      , double emm);
double elliptic3im__1(double enn
      , double emm
      , double circ_rad);
double jacobiphi(double emm
      , double elli_rad);
double sn__1(double emm
      , double elli_rad);
double cn__1(double emm
      , double elli_rad);
double dn__1(double emm
      , double elli_rad);
double dn(double emm
      , double elli_rad);
double cn(double emm
      , double elli_rad);
double sn(double emm
      , double elli_rad);
double cd(double emm
      , double elli_rad);
double sd(double emm
      , double elli_rad);
double nd(double emm
      , double elli_rad);
double dc(double emm
      , double elli_rad);
double nc(double emm
      , double elli_rad);
double sc(double emm
      , double elli_rad);
double ds(double emm
      , double elli_rad);
double cs(double emm
      , double elli_rad);
double ns(double emm
      , double elli_rad);
double ell2cir(double emm
      , double elli_rad);
double cir2ell(double emm
      , double circ_rad);
double jacobicir(double emm);
double nom(double emm);
double theta1(double emm
      , double zz);
double theta2(double emm
      , double zz);
double theta3(double emm
      , double zz);
double theta4(double emm
      , double zz);
double nevillethetac(double emm
      , double zz);
double nevillethetad(double emm
      , double zz);
double nevillethetan(double emm
      , double zz);
double nevillethetas(double emm
      , double zz);
double ellipsearea(double semi_axis_a
      , double semi_axis_b);
double ellipseecc(double semi_axis_a
      , double semi_axis_b);
double ellipsem(double semi_axis_a
      , double semi_axis_b);
double ellipseflatness(double semi_axis_a
      , double semi_axis_b);
double ellipsen(double semi_axis_a
      , double semi_axis_b);
double flat2ecc(double flt);
double ecc2flat(double ecc);
double ellipsecir(double semi_axes_a
      , double semi_axes_b);
double ellipsecir__1(double semi_axis_a
      , double semi_axis_b);
double epdf(double minvalx
      , double maxvalx
      , long data_num
      , const double *data_arr_pc
      , long pdf_num
      , double *ret_pdf_arr_p);
double ecdf(double minvalx
      , double maxvalx
      , long data_num
      , const double *data_arr_pc
      , long pdf_num
      , double *ret_cdf_arr_p);
double epdf2cdf(long data_num
      , const double *pdf_arr_pc
      , double *ret_cdf_arr_p);
long search_check(long gg);
long search_search(long gg);
double blackbodyl(double wavelen
      , double temp_k);
double blackbodyf(double wavefreq
      , double temp_k);
double blackbodymode(double temp_k);
double blackbodypower(double temp_k);
double bhmass_to_tempk(double bhmass_kg);
double bhtempk_to_mass(double bhtemp_k);
double bhmass_to_radius(double bhmass_kg);
double bhradius_to_mass(double bhradius_m);
double bhmass_to_entropy(double bhmass_kg);
double bhentropy_to_mass(double bhentropy);
double bhmass_to_power(double bhmass_kg);
double bhpower_to_mass(double bhpower_w);
double bhmass_to_area(double bhmass_kg);
double bharea_to_mass(double bharea);
double bhlifetime_to_mass(double bhlifetime_s);
double bhmass_to_lifetime(double bhmass_kg);
double bhmass_to_density(double bhmass_kg);
double bhdensity_to_mass(double bhdensity);
double pendulum(double len_m
      , double ang_offset_rad
      , double grav);
double sr_mass(double velo_mps);
double sr_time(double velo_mps);
double gr_massgm(double gm_gm
      , double radius_m);
double gr_mass(double mass_kg
      , double radius_m);
double gr_timegm(double gm_gm
      , double radius_m);
double gr_time(double mass_kg
      , double radius_m);
double gr_timegm_dr(double gm_gm
      , double radius_m);
double cent2ratio(double cnt);
double ratio2cent(double rat);
//  DDDDDDDDDDescription ################################### kw_description #
#define Kw_DESCRIPTION \
   "   Kw Constants: AAABATTERY AAABATTERY_CHARGE AAABATTERY_ENERGY AAABATT"\
   "ERY_VOLTAGE AABATTERY AABATTERY_CHARGE AABATTERY_ENERGY AABATTERY_VOLTA"\
   "GE ACCELERATION ACRE ACTION AH ALPHA ALPHA_ERR ALPHA_REC ALPHA_REC_ERR "\
   "ALPHASQRT AMOUNT AMP AMPERE AMU AMU_ERR ANGLE APERY ARCDEG ARCDEGREE AR"\
   "CGRAD ARCMIN ARCMINUTE ARCRADIAN ARCSEC ARCSECOND ARCTURN ARE AREA ASTR"\
   "ONOMICALUNIT ATM ATMOSPHERE ATMOSPHERE_ERR ATOMICMASSUNIT ATOMICMASSUNI"\
   "T_ERR ATTO AU AU_ERR AVOGADRO AVOGADRO_ERR AVOGADRO_REC AVOGADRO_REC_ER"\
   "R BAN BAR BARN BARREL BASEBALL_MASS BASEBALL_RADIUS BASKETBALL_MASS BAS"\
   "KETBALL_RADIUS BEKENSTEINENTROPY BEKENSTEININFORMATION BHENTROPY_AREA B"\
   "HMASS2_AREA BHMASS2_DENSITY BHMASS2_ENTROPY BHMASS2POWER BHMASS3_LIFETI"\
   "ME BHMASS_RADIUS BHMASSTEMP BHRADIUS2DENSITY BIT BLUE_ENERGY BLUE_Hz BL"\
   "UE_WAVELENGTH BOLTZMANN BOLTZMANN_ERR BOLTZMANN_REC BOLTZMANN_REC_ERR B"\
   "TU BTU_IT BTU_TH BUSHEL c c_ERR c_REC c_REC_ERR CAL CAL_IT CAL_TH CALOR"\
   "IE CANDELA CAPACITANCE CARAT CARBATTERY CARBATTERY_CHARGE CARBATTERY_EN"\
   "ERGY CARBATTERY_VOLTAGE CBATTERY CBATTERY_CHARGE CBATTERY_ENERGY CBATTE"\
   "RY_VOLTAGE CENTI CHAIN CHARGE CONDUCTANCE COULOMB COULOMBCONST COULOMBC"\
   "ONST_ERR CUP CURRENT DALTON DALTON_ERR DAY DBATTERY DBATTERY_CHARGE DBA"\
   "TTERY_ENERGY DBATTERY_VOLTAGE DBLEPS DBLMAN DBLMAX DBLMAXLN DBLSIG DECA"\
   " DECI DEGC DEGF DEGR DENSITY DIME_DIAMETER DIME_HEIGHT DIME_MASS DISTAN"\
   "CE DIT DRYGALLON dvCs_ENERGY dvCs_ERR dvCs_Hz dvCs_WAVELENGTH E EARTH_A"\
   "GE EHF_ENERGY EHF_Hz EHF_WAVELENGTH EINSTEIN EINSTEIN_ERR ELECTRIC ELEC"\
   "TRIC_ERR ELECTRON_CHARGE ELECTRON_CHARGE_ERR ELECTRON_MASSA ELECTRON_MA"\
   "SSA_ERR ELECTRONVOLT ELEMENTARYCHARGE ELEMENTARYCHARGE_ERR ELEVATIONMAX"\
   " ELEVATIONMIN ENERGY EPSILON0 EPSILON0_ERR ERG EULER EUV_ENERGY EUV_Hz "\
   "EUV_WAVELENGTH eV EXA EXBI FARAD FARADAY FARADAY_ERR FARADAY_REC FARADA"\
   "Y_REC_ERR FARADAYCONST FARADAYCONST_ERR FARADAYCONST_REC FARADAYCONST_R"\
   "EC_ERR FEET FEIGENBAUM FEMTO FINESTRUCTURE FINESTRUCTURE_ERR FINESTRUCT"\
   "URE_REC FINESTRUCTURE_REC_ERR FIR_ENERGY FIR_Hz FIR_WAVELENGTH FLICK FL"\
   "OZ FLTEPS FLTMAN FLTMAX FLTSIG FOE FOOT FORCE FREQUENCY FT FURLONG G G_"\
   "ERR GALACTICCENTER GALLON GAMMA_ENERGY GAMMA_Hz GAMMA_WAVELENGTH GAMMAM"\
   "IN GAS GAS_ERR GAS_REC GAS_REC_ERR GASCONST GASCONST_ERR GASCONST_REC G"\
   "ASCONST_REC_ERR GIANTIMPACT GIBI GIGA GOLFBALL_MASS GOLFBALL_RADIUS GRA"\
   "D GRAIN GRAM GRAVITATION GRAVITATION_ERR GRAVITATION_REC GRAVITATION_RE"\
   "C_ERR GRAVITATIONIERS GRAVITATIONNASA GRAVITY GRAVITY_ERR GREEN_ENERGY "\
   "GREEN_Hz GREEN_WAVELENGTH GYEAR GYEAR_AT_0J2K h h_ERR h_REC h_REC_ERR H"\
   "AND HART HARTLEY HBAR HBAR_ERR HECTARE HECTO HENRY HERTZ HF_ENERGY HF_H"\
   "z HF_WAVELENGTH HI HI_ENERGY HI_ERR HI_Hz HI_WAVELENGTH HORSE HORSEPOWE"\
   "R HOUR HP HPMETRIC HUBBLE HUBBLE_ERR HUBBLERADIUS HX_ENERGY HX_Hz HX_WA"\
   "VELENGTH HYDROGENLINE HYDROGENLINE_ERR Hz INCH INDUCTANCE INHG INTMAX J"\
   "2K J2KDAY JCENTURY JDAY JDSEC_AT_0GREGORIAN JDSEC_AT_0J2K JDSEC_AT_0KWT"\
   " JDSEC_AT_0UET JEWISH_FIRST_MONTH JOSEPHSON JOSEPHSON_ERR JOULE JYEAR K"\
   "_AT_0TEMPC K_AT_0TEMPF K_AT_0TEMPR kB kB_ERR kB_REC kB_REC_ERR KCD KCD_"\
   "ERR KELVIN KG KGF KGFM kgfm_PER_lbfin KIBI KILO KILOGRAM KPGBOUNDARY KW"\
   "T LB LBF LBFFT lbfft_PER_lbfin LBFIN lbfinrpm_PER_Hp LC_CIRCLE_RADIUS L"\
   "C_CIRCLE_X LC_CIRCLE_Y LC_FACTORS_CNT LC_GD_CNT LC_GD_DAY LC_GD_DOW LC_"\
   "GD_HOUR LC_GD_JD LC_GD_MIN LC_GD_MONTH LC_GD_NUM LC_GD_SEC LC_GD_YEAR L"\
   "C_HALAQIM_PER_HOUR LC_KNUTH_ARRAY_CNT LC_KNUTH_KK_CNT LC_KNUTH_LL LC_KN"\
   "UTH_MAX LC_KNUTH_QUALITY_CNT LC_KNUTH_TT LC_MAGIC_INT LC_MAGIC_INT_NOT "\
   "LC_PARABOLA_COEFF_A LC_PARABOLA_COEFF_B LC_PARABOLA_COEFF_C LC_PARABOLA"\
   "_REAL_ROOTS LC_PARABOLA_ROOT_A LC_PARABOLA_ROOT_B LC_PARABOLA_X_AXIS LC"\
   "_PARABOLA_Y_EXTREMA LC_STTS_CNT LC_STTS_KEY_CNT LC_STTS_MAGIC LC_STTS_M"\
   "AX LC_STTS_MEAN LC_STTS_MIN LC_STTS_MSQ LC_STTS_NUM LC_STTSC_CNT LC_STT"\
   "SC_COVAR LC_STTSC_MAGIC LC_STTSC_XX LC_STTSC_YY LC_YEAR_PER_METONIC LEN"\
   "GTH LF_ENERGY LF_Hz LF_WAVELENGTH LIFE_AGE LIGHT LIGHT_ERR LIGHT_REC LI"\
   "GHT_REC_ERR LIGHTYEAR LINK LITER LITRE LUMEN LUX LX_ELLIPTIC_EPS LX_HAL"\
   "AQIM LX_SHC_SHIFTSHIFT LX_SHC_STEPSHIFT MACH MAGNETIC MAGNETIC_ERR MAGN"\
   "ETICFLUX MAGNETICINDUCTION MARATHON MASS MEBI MEGA METER METRE MF_ENERG"\
   "Y MF_Hz MF_WAVELENGTH MICRO MICROWAVE_ENERGY MICROWAVE_Hz MICROWAVE_WAV"\
   "ELENGTH MILE MILKYWAY_AGE MILKYWAY_DAY MILKYWAY_MASS MILKYWAY_RADIUS MI"\
   "LLI MINUTE MIR_ENERGY MIR_Hz MIR_WAVELENGTH MM MMHG MOLARMASS MOLARMASS"\
   "_ERR MOLE MONTHS_IN_YEAR MOON_MONTH MPH MPS MPSS MU0 MU0_ERR NANO NAT N"\
   "EWTON NICKEL_DIAMETER NICKEL_HEIGHT NICKEL_MASS NINEVOLT NINEVOLT_CHARG"\
   "E NINEVOLT_ENERGY NINEVOLT_VOLTAGE NINEVOLTBATTERY NINEVOLTBATTERY_CHAR"\
   "GE NINEVOLTBATTERY_ENERGY NINEVOLTBATTERY_VOLTAGE NIR_ENERGY NIR_Hz NIR"\
   "_WAVELENGTH Nm_PER_lbfin NPBOUNDARY NUV_ENERGY NUV_Hz NUV_WAVELENGTH OH"\
   "M ORANGE_ENERGY ORANGE_Hz ORANGE_WAVELENGTH OUNCE OZ OZFIN ozfin_PER_lb"\
   "fin PA PARSEC PEBI PECK PENNY_DIAMETER PENNY_HEIGHT PENNY_MASS PERCENT "\
   "PERMILLE PETA PHI PHONEBATTERY PHONEBATTERY_CHARGE PHONEBATTERY_ENERGY "\
   "PHONEBATTERY_VOLTAGE PI PICO PINGPONGBALL_MASS PINGPONGBALL_RADIUS PINT"\
   " PLANCK PLANCK_ERR PLANCK_REC PLANCK_REC_ERR PLANCKBAR PLANCKBAR_ERR PL"\
   "ANCKCHARGE PLANCKENERGY PLANCKFREQUENCY PLANCKLENGTH PLANCKMASS PLANCKT"\
   "EMP PLANCKTIME POINT POUND POWER PPB PPM PPQ PPT PRESSURE PROTON_RADIUS"\
   " PROTON_RADIUS_ERR PROXIMACENTAURI PSI PTRBOUNDARY QUART QUARTER_DIAMET"\
   "ER QUARTER_HEIGHT QUARTER_MASS RAD RADIAN RED_ENERGY RED_Hz RED_WAVELEN"\
   "GTH RESISTANCE RPH RPM RPS RYDBERG RYDBERG_ENERGY RYDBERG_ERR RYDBERG_H"\
   "z RYDBERG_REC RYDBERG_REC_ERR RYDBERG_WAVELENGTH SECOND SHANNON SHF_ENE"\
   "RGY SHF_Hz SHF_WAVELENGTH SI16MAX SI16MIN SI32MAX SI32MIN SIEMENS SOCCE"\
   "RBALL_MASS SOCCERBALL_RADIUS SOFTBALL_MASS SOFTBALL_RADIUS SOLARCONSTAN"\
   "T SOLID_ANGLE SPECIFICHEAT SPEED SPHERESURFACE SQDEG SQUAREDEGREE STAND"\
   "ARDATMOSPHERE STANDARDGRAVITY STEFAN STEFAN_ERR STERADIAN STONE SURVEYF"\
   "OOT SX_ENERGY SX_Hz SX_WAVELENGTH SXX_ENERGY SXX_Hz SXX_WAVELENGTH TAU "\
   "TBLSP TEBI TEMPERATURE TEMPF_AT_0TEMPC TENLN TENNISBALL_MASS TENNISBALL"\
   "_RADIUS TERA TESLA THF_ENERGY THF_Hz THF_WAVELENGTH TIME TON TONNE TORR"\
   " TRJBOUNDARY TSP TT_AT_0TAI TT_AT_0UT1 TURN TWOLN TWOSQRT UAMU UAMU_ERR"\
   " UET UHF_ENERGY UHF_Hz UHF_WAVELENGTH UI16MAX UI32MAX UNITGM UNIVERSE_A"\
   "GE UNIVERSE_MASS UNIVERSE_RADIUS UVA_ENERGY UVA_Hz UVA_WAVELENGTH UVB_E"\
   "NERGY UVB_Hz UVB_WAVELENGTH UVC_ENERGY UVC_Hz UVC_WAVELENGTH UVPV VHF_E"\
   "NERGY VHF_Hz VHF_WAVELENGTH VIOLET_ENERGY VIOLET_Hz VIOLET_WAVELENGTH V"\
   "ISCOSITY VOLT VOLTAGE VOLUME VONKLITZING VONKLITZING_ERR W_PER_Hp WATT "\
   "WEBER WEEK YARD YELLOW_ENERGY YELLOW_Hz YELLOW_WAVELENGTH YELLOWGREEN_E"\
   "NERGY YELLOWGREEN_Hz YELLOWGREEN_WAVELENGTH YOBI YOCTO YOTTA ZEBI ZEPTO"\
   " ZETTA"\
   "\n"\
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magicnot"\
   " magicset normal_rand parabola_realroots parabola_xaxis parabola_yextre"\
   "ma randd stts_new timee"\
   "\n"\
   "   Kw 1-ary Functions: a2k a2m abs agmean1 agmean1inv ahmean1 almean1 a"\
   "mean1 aqmean1 b2m bankers bell bellx benford_rand bernoulli bernoullid "\
   "bernoullin bessI0 bessI1 bessJ0 bessJ1 bessK0 bessK1 bessY0 bessY1 bess"\
   "Y1__1 bharea_to_mass bhdensity_to_mass bhentropy_to_mass bhlifetime_to_"\
   "mass bhmass_to_area bhmass_to_density bhmass_to_entropy bhmass_to_lifet"\
   "ime bhmass_to_power bhmass_to_radius bhmass_to_tempk bhpower_to_mass bh"\
   "radius_to_mass bhtempk_to_mass bits_count bits_ls1b bits_ls1bpos bits_m"\
   "s1b bits_ms1bpos bitwisenot blackbodyf_pdf blackbodyl_pdf blackbodymode"\
   " blackbodypower cantor carmichael catalan cauchy_rand cbrt ceil cent2ra"\
   "tio chisqr_rand circle_get clip clockhour clockmin clocksec clockstdev "\
   "clocksum cnv_dbl2si16 contfra_print contfrac_print contfracd_print corr"\
   "_delete corr_handlex corr_handley corrcorr corrslope corrstderr corry0 "\
   "cos cos__1 cosd cosdinv cosh coshinv cosintegral cosinv cosm1 cosm1__1 "\
   "cost costinv cot cotd cotdinv coth cothinv cotinv cott cottinv csc cscd"\
   " cscdinv csch cschinv cscinv csct csctinv ctz cu cube cuberoot date_eas"\
   "ter date_pesach date_rosh_hashanah day2dhms day2dhmsinv day2hour deg2dm"\
   "s deg2rad deg2sec deg2tur digamma digamma__1 digammainv dms2deg dms2rad"\
   " doomsday ecc2flat Ein elliptic1a elliptic1k elliptic1m elliptic1m__1 e"\
   "lliptic1m__2 elliptic2a elliptic2k elliptic2m elliptic2m__1 ellipticE e"\
   "llipticK erf erf__1 erf__2 erf__3 erf__4 erfc erfcinv erfcx erfcxinv er"\
   "finv eta eulerphi eulerx exp exp__1 exp__2 exp_rand expintegral1 expint"\
   "egrali expm1 fac facinv factor_print factorial factorialdouble factoria"\
   "linv fibo fibox fiboxinv flat2ecc floor frac fubini fusc g2jewish gamma"\
   "_rand gau_cdf gau_pdf gau_quantile gd gdinv geo_rand ghmean1 ghmean1inv"\
   " glmean1 gmean1 gqmean1 has_primitiveroot haversin heaviside heronianme"\
   "an1 hlmean1 hmean1 hn hn__1 hour2day hqmean1 hypot1 hypot1inv id int_ra"\
   "nd iround iseven isint isjewish8short isjewish9short isjewishleap islea"\
   "pyear ismagic isneg isnegint isodd ispos isposint ispractical isprime i"\
   "ssquarefree iszero j2k2dow j2k2jd j2k2kwt j2k2uet j2k2ymdhms jacobicir "\
   "jd264_print jd2dow jd2j2k jd2kwt jd2uet jd2ymdhms jewish2g jewish2jd je"\
   "wish2jdx jewish_months_in_year jewish_yearlength k2a k2m k2tempc k2temp"\
   "f k2tempr ks_a_cdf kwt2j2k kwt2jd kwt2uet l10 lg lgamma lgamma__1 lgamm"\
   "a__2 lgammainv lix lixinv lmean1 ln ln1p ln__1 ln__2 lns log log10 logi"\
   "ntegral logistic_rand lqmean1 lucas lucasx m2a m2b m2k mertens minkowsk"\
   "i mobius n2primish neg nom normal_cdf normal_cdf__1 normal_pdf normal_q"\
   "uantile normal_quantile__1 num2char_print parabola_get parabola_roots p"\
   "artition partitionq pcf pfg pfl poi_rand pow10 pow2 prime0 prime1 prime"\
   "count primecountx primenext primenth primenth__1 primeprev primitiveroo"\
   "t qmean1 rad2deg rad2dms rad2dms2 rad2sec rad2tur rand_init randl ratio"\
   "2cent reci reimann round rto125 rtoi rtoz sba search_check search_searc"\
   "h sec sec2deg sec2dhms sec2rad sec2tur secd secdinv sech sechinv secinv"\
   " sect sectinv shc_shft2steps shc_steps2shft shc_steps2shftinv sigma0 si"\
   "gma1 sigmoid sigmoidinv sign sin sin__1 sinc sinc__1 sincc sincinv sind"\
   " sindinv sinh sinhinv sinintegral sininv sint sintinv smooth sq sqinv s"\
   "qrt sqrt__1 sqrt__2 sqrt__3 sqrtx sqrtxp1m1 square squareroot sr_mass s"\
   "r_time stair stts_delete stts_reset sttscount sttsmagic sttsmax sttsmea"\
   "n sttsmin sttsmsq sttsspread sttsstdev sttsstdevmean sttssum sttsvar su"\
   "percatalan tan tand tandinv tanh tanhinv taninv tant tantinv tempc2k te"\
   "mpc2tempf tempf2k tempf2tempc tempr2k tgamma tgamma__1 tgamma__2 tgamma"\
   "__3 tgamma__stirling tgammadouble tgammainv topyh1 totient tri tri_rand"\
   " triinv trip trunc tur2deg tur2rad tur2sec uet2j2k uet2jd uet2kwt uni_r"\
   "and versin wm wminv wp wpinv ymdhms2j2k ymdhms2jd ymdhms_get zag zeta z"\
   "ig zigzag"\
   "\n"\
   "   Kw 2-ary Functions: agmean agmean__1 agmeaninva agmeaninvg ahmean al"\
   "mean amean aqmean atan2 atan2d atan2h atan2t atan2u ballot ballots base"\
   "_out_print base_outf_print benford_cdf benford_pdf bess_jn bess_yn bess"\
   "In bessIn_ps bessJn bessJn_ps bessJv bessKn bessYn bessYn_ps bessYv bet"\
   "a beta_rand binomial binomial_rand binomialx birthday birthdayinv birth"\
   "dayx bits_get bits_set bitshiftl bitshiftr bitwiseand bitwiseor bitwise"\
   "xor bkn blackbodyf blackbodyl carlsonRC cauchy_cdf cauchy_pdf cauchy_qu"\
   "antile cd ceil2 chisqr_cdf chisqr_pdf cir2ell cn cn__1 comb combination"\
   " combx contraharmonic cs d1diamond_d2 d1lt_d2 d1spiral_d2 d1ur_d2 d2dia"\
   "mond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1 d2ur_d1 days_in_month dc ddist d"\
   "ist dlog1 dn dn__1 ds ell2cir ellipsearea ellipsecir ellipsecir__1 elli"\
   "pseecc ellipseflatness ellipsem ellipsen elliptic1ia elliptic1ik ellipt"\
   "ic1im elliptic1im__1 elliptic2ia elliptic2ik elliptic2im elliptic2im__1"\
   " elliptic3a elliptic3k elliptic3m elliptic3m__1 ellipticEi ellipticF el"\
   "lipticP entringer eulerian exp_cdf exp_pdf exp_quantile expintegraln fa"\
   "ctor factorialt floor2 fmod fmods fmodu fmody fmul gamma_cdf gamma_pdf "\
   "gcd gcda geo_cdf geo_pdf geo_quantile ghmean glmean gmean gompertz_rand"\
   " gqmean gr_mass gr_massgm gr_time gr_timegm gr_timegm_dr has_primitiver"\
   "oot_f heronianmean hlmean hmean hnm hqmean hypot int_cdf int_pdf int_qu"\
   "antile ints_rand iseq isge isgt isle islt ismult ismultl isneq ispracti"\
   "cal_f isprimitiveroot issignsame issquarefree_f isss jacobiphi jewish_m"\
   "onthbegin jewish_monthlength ks_b_cdf ks_cdf ks_quantile lbeta lcam lca"\
   "ms lcantim lcm lcombx ligamma ligammainv lmean logistic_cdf logistic_pd"\
   "f logistic_quantile logx lpermx lqmean max2 maxabs maxabs2 maxi mb_cdf "\
   "mb_pdf mean min2 minabs minabs2 mini mobius_f mods modulo n2perm_print "\
   "nbd_rand nc nd nevillethetac nevillethetad nevillethetan nevillethetas "\
   "ns nthroot__1 pareto_rand perm permutation permx pochhammer poi_cdf poi"\
   "_pdf poi_quantile polya_rand polycnum polynum pow powi prime0_f print_a"\
   "rray qmean rand_init_array ratio repetendlen rligamma rms round2 rtomsd"\
   " ruigamma sc sd shc_shftpoles2steps sigma sigma0_f sigma1_f sn sn__1 sp"\
   "read2stdev stdev2spread stirling1 stirling2 stts_copy stts_downdate stt"\
   "s_newx stts_scale stts_shift stts_update stts_update2 t_cdf t_cdf__1 t_"\
   "pdf t_quantile t_quantile__1 tetracnum tetranum theta1 theta2 theta3 th"\
   "eta4 Tn topyh totient_f trap_rand tri_cdf tri_pdf tri_quantile uigamma "\
   "uigamma__1 uigammainv Un uni_cdf uni_pdf uni_quantile variance zeta_cdf"\
   " zeta_pdf zipf_rand znorder znorder__1"\
   "\n"\
   "   Kw 3-ary Functions: agcmean aghmean atothenmodp atothenmodx base_out"\
   "_fix_print beta_cdf beta_pdf beta_quantile betainc betainc__1 binomial_"\
   "cdf binomial_pdf bits_assign bkbn cantorll cantorul cantorxx carlsonRD "\
   "carlsonRF chebeval clip2 clip2x corr_update cossin_ev divi dlog dlogx e"\
   "llipsoid_surface ellipsoid_volume elliptic3ia elliptic3ik elliptic3im e"\
   "lliptic3im__1 ellipticPi epdf2cdf f11 f_cdf f_quantile f_quantile__1 fi"\
   "bo3 fit_ls fit_ls0 fit_minmax fit_minmax0 fit_poly fitx_minmax fmod2 fv"\
   "ad fvoa gompertz_cdf gompertz_pdf gompertz_quantile hms2day horner hypo"\
   "t3 ifzero isalmostequal isbetween isbetweenx isfloorsame iswithin jewis"\
   "hymd2jd kevy_print loanpayment loanrate loanvalue maxabsoffset maxmin m"\
   "axwell_boltzmann_cdf maxwell_boltzmann_pdf maxwell_juttner_pdf minabsof"\
   "fset n2comb_print n2perm nbd_cdf nbd_pdf pareto_cdf pareto_pdf pareto_q"\
   "uantile pendulum pmean polya_cdf polya_pdf pvad pvoa remquou roundy sig"\
   "ma_f sigmoid3 sigmoid3d stts_updatex taninv3 trap_cdf trap_pdf trap_qua"\
   "ntile ymd2dow ymd2doy ymd2j2k ymd2j2k__1 ymd2jd zipf_cdf zipf_pdf zipf_"\
   "quantile"\
   "\n"\
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb spher"\
   "e_d"\
   "\n"\
   "   Kw 5-ary Functions: sphere_distance"\
   "\n"\
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_destination ellipsoi"\
   "d_distance epdf parabola_solve stts_init stts_initx"\
   "\n"
#define Kw_DESC \
   "   Kw Constants: AAABATTERY(_(CHARGE|ENERGY|VOLTAGE))? AABATTERY(_(CHAR"\
   "GE|ENERGY|VOLTAGE))? ACCELERATION ACRE ACTION AH ALPHA(|_(ERR|REC(_ERR)"\
   "?)|SQRT) AMOUNT AMP(ERE)? AMU(_ERR)? ANGLE APERY ARC(DEG(REE)?|GRAD|MIN"\
   "(UTE)?|RADIAN|SEC(OND)?|TURN) AREA? ASTRONOMICALUNIT ATM(OSPHERE(_ERR)?"\
   ")? ATOMICMASSUNIT(_ERR)? ATTO AU AU_ERR AVOGADRO(|_(ERR|REC(_ERR)?)) BA"\
   "N BAR(N|REL)? BAS(EBALL_(MASS|RADIUS)|KETBALL_(MASS|RADIUS)) BEKENSTEIN"\
   "(ENTROPY|INFORMATION) BHENTROPY_AREA BHMASS(2(_(AREA|DENSITY|ENTROPY)|P"\
   "OWER)|3_LIFETIME|_RADIUS|TEMP) BHRADIUS2DENSITY BIT BLUE_(ENERGY|Hz|WAV"\
   "ELENGTH) BOLTZMANN(|_(ERR|REC(_ERR)?)) BTU(_(IT|TH))? BUSHEL c c_ERR c_"\
   "REC(_ERR)? CAL(_(IT|TH)|ORIE)? CANDELA CAPACITANCE CAR(AT|BATTERY(_(CHA"\
   "RGE|ENERGY|VOLTAGE))?) CBATTERY(_(CHARGE|ENERGY|VOLTAGE))? CENTI CHA(IN"\
   "|RGE) CONDUCTANCE COULOMB(CONST(_ERR)?)? CUP CURRENT DALTON(_ERR)? DAY "\
   "DBATTERY(_(CHARGE|ENERGY|VOLTAGE))? DBL(EPS|MA(N|X(LN)?)|SIG) DEC[AI] D"\
   "EG[CFR] DENSITY DIME_(DIAMETER|HEIGHT|MASS) DISTANCE DIT DRYGALLON dvCs"\
   "_(E(NERGY|RR)|Hz|WAVELENGTH) E EARTH_AGE EHF_(ENERGY|Hz|WAVELENGTH) EIN"\
   "STEIN(_ERR)? ELE(CTR(IC(_ERR)?|ON(_(CHARGE(_ERR)?|MASSA(_ERR)?)|VOLT))|"\
   "MENTARYCHARGE(_ERR)?|VATIONM(AX|IN)) ENERGY EPSILON0(_ERR)? ERG EULER E"\
   "UV_(ENERGY|Hz|WAVELENGTH) eV EXA EXBI FARAD(|AY(|_(ERR|REC(_ERR)?)|CONS"\
   "T(|_(ERR|REC(_ERR)?)))) FEET FEIGENBAUM FEMTO FINESTRUCTURE(|_(ERR|REC("\
   "_ERR)?)) FIR_(ENERGY|Hz|WAVELENGTH) FLICK FLOZ FLT(EPS|MA[NX]|SIG) FOE "\
   "FOOT FORCE FREQUENCY FT FURLONG G G_ERR GAL(ACTICCENTER|LON) GAMMA(_(EN"\
   "ERGY|Hz|WAVELENGTH)|MIN) GAS(|_(ERR|REC(_ERR)?)|CONST(|_(ERR|REC(_ERR)?"\
   "))) GIANTIMPACT GIBI GIGA GOLFBALL_(MASS|RADIUS) GRA(D|IN|M|VIT(ATION(|"\
   "_(ERR|REC(_ERR)?)|IERS|NASA)|Y(_ERR)?)) GREEN_(ENERGY|Hz|WAVELENGTH) GY"\
   "EAR(_AT_0J2K)? h h_ERR h_REC(_ERR)? HAND HART(LEY)? HBAR(_ERR)? HECT(AR"\
   "E|O) HENRY HERTZ HF_(ENERGY|Hz|WAVELENGTH) HI HI_(E(NERGY|RR)|Hz|WAVELE"\
   "NGTH) HORSE(POWER)? HOUR HP HPMETRIC HUBBLE(_ERR|RADIUS)? HX_(ENERGY|Hz"\
   "|WAVELENGTH) HYDROGENLINE(_ERR)? Hz INCH INDUCTANCE INHG INTMAX J2K(DAY"\
   ")? JCENTURY JDAY JDSEC_AT_0(GREGORIAN|J2K|KWT|UET) JEWISH_FIRST_MONTH J"\
   "OSEPHSON(_ERR)? JOULE JYEAR K_AT_0TEMP[CFR] kB kB_(ERR|REC(_ERR)?) KCD("\
   "_ERR)? KELVIN KG KGFM? kgfm_PER_lbfin KIBI KILO(GRAM)? KPGBOUNDARY KWT "\
   "LB LBF(FT)? lbfft_PER_lbfin LBFIN lbfinrpm_PER_Hp LC_(CIRCLE_(RADIUS|[X"\
   "Y])|FACTORS_CNT|GD_(CNT|D(AY|OW)|HOUR|JD|M(IN|ONTH)|NUM|SEC|YEAR)|HALAQ"\
   "IM_PER_HOUR|KNUTH_(ARRAY_CNT|KK_CNT|LL|MAX|QUALITY_CNT|TT)|MAGIC_INT(_N"\
   "OT)?|PARABOLA_(COEFF_[ABC]|R(EAL_ROOTS|OOT_[AB])|X_AXIS|Y_EXTREMA)|STTS"\
   "(_(CNT|KEY_CNT|M(A(GIC|X)|EAN|IN|SQ)|NUM)|C_(C(NT|OVAR)|MAGIC|XX|YY))|Y"\
   "EAR_PER_METONIC) LENGTH LF_(ENERGY|Hz|WAVELENGTH) LIFE_AGE LIGHT(|_(ERR"\
   "|REC(_ERR)?)|YEAR) LINK LIT(ER|RE) LUMEN LUX LX_(ELLIPTIC_EPS|HALAQIM|S"\
   "HC_S(HIFTSHIFT|TEPSHIFT)) MACH MAGNETIC(_ERR|FLUX|INDUCTION)? MARATHON "\
   "MASS MEBI MEGA MET(ER|RE) MF_(ENERGY|Hz|WAVELENGTH) MICRO(WAVE_(ENERGY|"\
   "Hz|WAVELENGTH))? MIL(E|KYWAY_(AGE|DAY|MASS|RADIUS)|LI) MINUTE MIR_(ENER"\
   "GY|Hz|WAVELENGTH) MM MMHG MOL(ARMASS(_ERR)?|E) MONTHS_IN_YEAR MOON_MONT"\
   "H MPH MPSS? MU0(_ERR)? NANO NAT NEWTON NICKEL_(DIAMETER|HEIGHT|MASS) NI"\
   "NEVOLT(|_(CHARGE|ENERGY|VOLTAGE)|BATTERY(_CHARGE|_ENERGY|_VOLTAGE)?) NI"\
   "R_(ENERGY|Hz|WAVELENGTH) Nm_PER_lbfin NPBOUNDARY NUV_(ENERGY|Hz|WAVELEN"\
   "GTH) OHM ORANGE_(ENERGY|Hz|WAVELENGTH) OUNCE OZ OZFIN ozfin_PER_lbfin P"\
   "A PARSEC PEBI PECK PENNY_(DIAMETER|HEIGHT|MASS) PER(CENT|MILLE) PETA PH"\
   "I PHONEBATTERY(_(CHARGE|ENERGY|VOLTAGE))? PI PICO PIN(GPONGBALL_(MASS|R"\
   "ADIUS)|T) PLANCK(|_(ERR|REC(_ERR)?)|BAR(_ERR)?|CHARGE|ENERGY|FREQUENCY|"\
   "LENGTH|MASS|T(EMP|IME)) POINT POUND POWER PPB PPM PPQ PPT PRESSURE PRO("\
   "TON_RADIUS(_ERR)?|XIMACENTAURI) PSI PTRBOUNDARY QUART(ER_(DIAMETER|HEIG"\
   "HT|MASS))? RAD(IAN)? RED_(ENERGY|Hz|WAVELENGTH) RESISTANCE RPH RPM RPS "\
   "RYDBERG(|_(E(NERGY|RR)|Hz|REC(_ERR)?|WAVELENGTH)) SECOND SHANNON SHF_(E"\
   "NERGY|Hz|WAVELENGTH) SI16M(AX|IN) SI32M(AX|IN) SIEMENS SOCCERBALL_(MASS"\
   "|RADIUS) SOFTBALL_(MASS|RADIUS) SOL(ARCONSTANT|ID_ANGLE) SPE(CIFICHEAT|"\
   "ED) SPHERESURFACE SQDEG SQUAREDEGREE STANDARD(ATMOSPHERE|GRAVITY) STE(F"\
   "AN(_ERR)?|RADIAN) STONE SURVEYFOOT SX_(ENERGY|Hz|WAVELENGTH) SXX_(ENERG"\
   "Y|Hz|WAVELENGTH) TAU TBLSP TEBI TEMP(ERATURE|F_AT_0TEMPC) TEN(LN|NISBAL"\
   "L_(MASS|RADIUS)) TERA TESLA THF_(ENERGY|Hz|WAVELENGTH) TIME TON(NE)? TO"\
   "RR TRJBOUNDARY TSP TT_AT_0(TAI|UT1) TURN TWO(LN|SQRT) UAMU(_ERR)? UET U"\
   "HF_(ENERGY|Hz|WAVELENGTH) UI16MAX UI32MAX UNI(TGM|VERSE_(AGE|MASS|RADIU"\
   "S)) UVA_(ENERGY|Hz|WAVELENGTH) UVB_(ENERGY|Hz|WAVELENGTH) UVC_(ENERGY|H"\
   "z|WAVELENGTH) UVPV VHF_(ENERGY|Hz|WAVELENGTH) VIOLET_(ENERGY|Hz|WAVELEN"\
   "GTH) VISCOSITY VOL(T(AGE)?|UME) VONKLITZING(_ERR)? W_PER_Hp WATT WEBER "\
   "WEEK YARD YELLOW(_(ENERGY|Hz|WAVELENGTH)|GREEN_(ENERGY|Hz|WAVELENGTH)) "\
   "YOBI YOCTO YOTTA ZEBI ZEPTO ZETTA"\
   "\n"\
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magic(no"\
   "t|set) normal_rand parabola_(realroots|xaxis|yextrema) randd stts_new t"\
   "imee"\
   "\n"\
   "   Kw 1-ary Functions: a2k a2m abs agmean1(inv)? ahmean1 almean1 amean1"\
   " aqmean1 b2m bankers bellx? benford_rand bernoulli[dn]? bess(I[01]|J[01"\
   "]|K[01]|Y(0|1(__1)?)) bharea_to_mass bhdensity_to_mass bhentropy_to_mas"\
   "s bhlifetime_to_mass bhmass_to_(area|density|entropy|lifetime|power|rad"\
   "ius|tempk) bhpower_to_mass bhradius_to_mass bhtempk_to_mass bit(s_(coun"\
   "t|ls1b(pos)?|ms1b(pos)?)|wisenot) blackbody(f_pdf|l_pdf|mode|power) can"\
   "tor carmichael catalan cauchy_rand cbrt ceil cent2ratio chisqr_rand cir"\
   "cle_get clip clock(hour|min|s(ec|tdev|um)) cnv_dbl2si16 contfra(_print|"\
   "c(_print|d_print)) corr(_(delete|handle[xy])|corr|s(lope|tderr)|y0) cos"\
   "(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1)?|t(inv)?) cot([dht]?(inv)?)?"\
   " csc([dht]?(inv)?)? ctz cu cube(root)? date_(easter|pesach|rosh_hashana"\
   "h) day2(dhms(inv)?|hour) deg2(dms|rad|sec|tur) digamma(__1|inv)? dms2(d"\
   "eg|rad) doomsday ecc2flat Ein elliptic(1([ak]|m(__[12])?)|2([ak]|m(__1)"\
   "?)|[EK]) erf(|__([12]|[34])|c(inv|x(inv)?)?|inv) eta euler(phi|x) exp(_"\
   "(_[12]|rand)|integral[1i]|m1)? fac(|inv|tor(_print|ial(double|inv)?)) f"\
   "ibo(x(inv)?)? flat2ecc floor frac fubini fusc g2jewish gamma_rand gau_("\
   "cdf|pdf|quantile) gd gdinv geo_rand ghmean1(inv)? glmean1 gmean1 gqmean"\
   "1 has_primitiveroot haversin heaviside heronianmean1 hlmean1 hmean1 hn "\
   "hn__1 hour2day hqmean1 hypot1(inv)? id int_rand iround is(even|int|jewi"\
   "sh8short|jewish9short|jewishleap|leapyear|magic|neg|negint|odd|pos|posi"\
   "nt|practical|prime|squarefree|zero) j2k2(dow|jd|kwt|uet|ymdhms) jacobic"\
   "ir jd2(64_print|dow|j2k|kwt|uet|ymdhms) jewish(2(g|jdx?)|_(months_in_ye"\
   "ar|yearlength)) k2a k2m k2temp[cfr] ks_a_cdf kwt2(j(2k|d)|uet) l10 lg l"\
   "gamma(__[12]|inv)? lix(inv)? lmean1 ln ln1p ln__[12] lns log(10|i(ntegr"\
   "al|stic_rand))? lqmean1 lucasx? m2a m2b m2k mertens minkowski mobius n2"\
   "primish neg nom normal_(cdf(__1)?|pdf|quantile(__1)?) num2char_print pa"\
   "r(abola_(get|roots)|titionq?) pcf pfg pfl poi_rand pow(10|2) prim(e([01"\
   "]|countx?|n(ext|th(__1)?)|prev)|itiveroot) qmean1 rad2(d(eg|ms2?)|sec|t"\
   "ur) rand(_init|l) ratio2cent reci reimann round rto(125|[iz]) sba searc"\
   "h_(check|search) sec(|2(d(eg|hms)|rad|tur)|[dht]?(inv)?) shc_s(hft2step"\
   "s|teps2shft(inv)?) sig(m(a[01]|oid(inv)?)|n) sin(|__1|c(__1|c|inv)?|d(i"\
   "nv)?|h(inv)?|in(tegral|v)|t(inv)?) smooth sq sqinv sqrt(__[123]|x(p1m1)"\
   "?)? square(root)? sr_(mass|time) stair stts(_(delete|reset)|count|m(a(g"\
   "ic|x)|ean|in|sq)|s(pread|tdev(mean)?|um)|var) supercatalan tan([dht]?(i"\
   "nv)?)? temp(c2(k|tempf)|f2(k|tempc)|r2k) tgamma(__([123]|stirling)|doub"\
   "le|inv)? topyh1 totient tri(_rand|inv|p)? trunc tur2(deg|rad|sec) uet2("\
   "j(2k|d)|kwt) uni_rand versin wm(inv)? wp(inv)? ymdhms(2j(2k|d)|_get) za"\
   "g zeta zig(zag)?"\
   "\n"\
   "   Kw 2-ary Functions: agmean(__1|inv[ag])? ahmean almean amean aqmean "\
   "atan2([dh]|[tu])? ballots? base_out(_print|f_print) benford_(cdf|pdf) b"\
   "ess(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n(_ps)?|v)) beta(_rand)? binomi"\
   "al(_rand|x)? birthday(inv|x)? bit(s(_(get|set)|hift[lr])|wise(and|or|xo"\
   "r)) bkn blackbody[fl] carlsonRC cauchy_(cdf|pdf|quantile) cd ceil2 chis"\
   "qr_(cdf|pdf) cir2ell cn cn__1 comb(ination|x)? contraharmonic cs d1diam"\
   "ond_d2 d1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2sp"\
   "iral_d1 d2ur_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds ell(2cir|"\
   "ip(se(area|cir(__1)?|ecc|flatness|[mn])|tic(1i([ak]|m(__1)?)|2i([ak]|m("\
   "__1)?)|3([ak]|m(__1)?)|Ei|[FP]))) entringer eulerian exp(_(cdf|pdf|quan"\
   "tile)|integraln) factor(ialt)? floor2 fmod[suy]? fmul gamma_(cdf|pdf) g"\
   "cda? geo_(cdf|pdf|quantile) ghmean glmean gmean gompertz_rand gqmean gr"\
   "_(mass(gm)?|time(gm(_dr)?)?) has_primitiveroot_f heronianmean hlmean hm"\
   "ean hnm hqmean hypot int(_(cdf|pdf|quantile)|s_rand) is(eq|ge|gt|le|lt|"\
   "mult|multl|neq|practical_f|primitiveroot|signsame|squarefree_f|ss) jaco"\
   "biphi jewish_month(begin|length) ks_(b_cdf|cdf|quantile) lbeta lca(ms?|"\
   "ntim) lcm lcombx ligamma(inv)? lmean log(istic_(cdf|pdf|quantile)|x) lp"\
   "ermx lqmean max(2|abs2?|i) mb_(cdf|pdf) mean min(2|abs2?|i) mobius_f mo"\
   "d(s|ulo) n2perm_print nbd_rand nc nd nevilletheta([cd]|[ns]) ns nthroot"\
   "__1 pareto_rand perm(utation|x)? pochhammer poi_(cdf|pdf|quantile) poly"\
   "(a_rand|cnum|num) powi? pri(me0_f|nt_array) qmean rand_init_array ratio"\
   " repetendlen rligamma rms round2 rtomsd ruigamma sc sd shc_shftpoles2st"\
   "eps sigma(0_f|1_f)? sn sn__1 spread2stdev stdev2spread stirling[12] stt"\
   "s_(copy|downdate|newx|s(cale|hift)|update2?) t_cdf(__1)? t_pdf t_quanti"\
   "le(__1)? tetra(cnum|num) theta([12]|[34]) Tn topyh totient_f trap_rand "\
   "tri_(cdf|pdf|quantile) uigamma(__1|inv)? Un uni_(cdf|pdf|quantile) vari"\
   "ance zeta_(cdf|pdf) zipf_rand znorder(__1)?"\
   "\n"\
   "   Kw 3-ary Functions: agcmean aghmean atothenmod[px] base_out_fix_prin"\
   "t beta(_(cdf|pdf|quantile)|inc(__1)?) binomial_(cdf|pdf) bits_assign bk"\
   "bn cantor(ll|ul|xx) carlsonR[DF] chebeval clip2x? corr_update cossin_ev"\
   " divi dlogx? ellip(soid_(surface|volume)|tic(3i([ak]|m(__1)?)|Pi)) epdf"\
   "2cdf f11 f_cdf f_quantile(__1)? fibo3 fit(_(ls0?|minmax0?|poly)|x_minma"\
   "x) fmod2 fvad fvoa gompertz_(cdf|pdf|quantile) hms2day horner hypot3 if"\
   "zero is(almostequal|between|betweenx|floorsame|within) jewishymd2jd kev"\
   "y_print loan(payment|rate|value) max(absoffset|min|well_(boltzmann_(cdf"\
   "|pdf)|juttner_pdf)) minabsoffset n2comb_print n2perm nbd_(cdf|pdf) pare"\
   "to_(cdf|pdf|quantile) pendulum pmean polya_(cdf|pdf) pvad pvoa remquou "\
   "roundy sigm(a_f|oid3d?) stts_updatex taninv3 trap_(cdf|pdf|quantile) ym"\
   "d2(do[wy]|j(2k(__1)?|d)) zipf_(cdf|pdf|quantile)"\
   "\n"\
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb spher"\
   "e_d"\
   "\n"\
   "   Kw 5-ary Functions: sphere_distance"\
   "\n"\
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_d(estination|istance"\
   ") epdf parabola_solve stts_initx?"\
   "\n"
#endif // #ifndef INCLUDED_Kw_h
