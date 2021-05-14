//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ######### SOURCE $KWROOT/codekdw/kw-lib/Kwelements.fwipp #########
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kwelements.varylog
#ifndef INCLUDED_Kwelements_h
#define INCLUDED_Kwelements_h
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
//  CCCCCCCCCC_DEF ################################################# LANG_C #
#define HYDROGEN_Z 1
#define HYDROGEN (1.008)
#define H_Z (HYDROGEN_Z)
#define H_WEIGHT (1.008)
#define H_MASS (1.008 * MOLARMASS)
#define HMASS (H_MASS / AVOGADRO)
#define H_DENSITY (0.08988 * DENSITY)
#define H_MELT (14.01 * KELVIN)
#define H_BOIL (20.28 * KELVIN)
#define H_Cp (14304 * SPECIFICHEAT)
#define H_En (2.20)
#define HELIUM_Z 2
#define HELIUM (4.002602)
#define He_Z (HELIUM_Z)
#define He_WEIGHT (4.002602)
#define He_MASS (4.002602 * MOLARMASS)
#define HeMASS (He_MASS / AVOGADRO)
#define He_DENSITY (0.1785 * DENSITY)
#define He_MELT (- 1 * KELVIN)
#define He_BOIL (4.22 * KELVIN)
#define He_Cp (5193 * SPECIFICHEAT)
#define He_En (- 1)
#define LITHIUM_Z 3
#define LITHIUM (6.94)
#define Li_Z (LITHIUM_Z)
#define Li_WEIGHT (6.94)
#define Li_MASS (6.94 * MOLARMASS)
#define LiMASS (Li_MASS / AVOGADRO)
#define Li_DENSITY (534 * DENSITY)
#define Li_MELT (453.69 * KELVIN)
#define Li_BOIL (1560 * KELVIN)
#define Li_Cp (3582 * SPECIFICHEAT)
#define Li_En (0.98)
#define BERYLLIUM_Z 4
#define BERYLLIUM (9.0121831)
#define Be_Z (BERYLLIUM_Z)
#define Be_WEIGHT (9.0121831)
#define Be_MASS (9.0121831 * MOLARMASS)
#define BeMASS (Be_MASS / AVOGADRO)
#define Be_DENSITY (1850 * DENSITY)
#define Be_MELT (1560 * KELVIN)
#define Be_BOIL (2742 * KELVIN)
#define Be_Cp (1825 * SPECIFICHEAT)
#define Be_En (1.57)
#define BORON_Z 5
#define BORON (10.81)
#define B_Z (BORON_Z)
#define B_WEIGHT (10.81)
#define B_MASS (10.81 * MOLARMASS)
#define BMASS (B_MASS / AVOGADRO)
#define B_DENSITY (2340 * DENSITY)
#define B_MELT (2349 * KELVIN)
#define B_BOIL (4200 * KELVIN)
#define B_Cp (1026 * SPECIFICHEAT)
#define B_En (2.04)
#define CARBON_Z 6
#define CARBON (12.011)
#define C_Z (CARBON_Z)
#define C_WEIGHT (12.011)
#define C_MASS (12.011 * MOLARMASS)
#define CMASS (C_MASS / AVOGADRO)
#define C_DENSITY (2267 * DENSITY)
#define C_MELT (3800 * KELVIN)
#define C_BOIL (4300 * KELVIN)
#define C_Cp (709 * SPECIFICHEAT)
#define C_En (2.55)
#define NITROGEN_Z 7
#define NITROGEN (14.007)
#define N_Z (NITROGEN_Z)
#define N_WEIGHT (14.007)
#define N_MASS (14.007 * MOLARMASS)
#define NMASS (N_MASS / AVOGADRO)
#define N_DENSITY (1.2506 * DENSITY)
#define N_MELT (63.15 * KELVIN)
#define N_BOIL (77.36 * KELVIN)
#define N_Cp (1040 * SPECIFICHEAT)
#define N_En (3.04)
#define OXYGEN_Z 8
#define OXYGEN (15.999)
#define O_Z (OXYGEN_Z)
#define O_WEIGHT (15.999)
#define O_MASS (15.999 * MOLARMASS)
#define OMASS (O_MASS / AVOGADRO)
#define O_DENSITY (1.429 * DENSITY)
#define O_MELT (54.36 * KELVIN)
#define O_BOIL (90.20 * KELVIN)
#define O_Cp (918 * SPECIFICHEAT)
#define O_En (3.44)
#define FLUORINE_Z 9
#define FLUORINE (18.998403163)
#define F_Z (FLUORINE_Z)
#define F_WEIGHT (18.998403163)
#define F_MASS (18.998403163 * MOLARMASS)
#define FMASS (F_MASS / AVOGADRO)
#define F_DENSITY (1.696 * DENSITY)
#define F_MELT (53.53 * KELVIN)
#define F_BOIL (85.03 * KELVIN)
#define F_Cp (824 * SPECIFICHEAT)
#define F_En (3.98)
#define NEON_Z 10
#define NEON (20.1797)
#define Ne_Z (NEON_Z)
#define Ne_WEIGHT (20.1797)
#define Ne_MASS (20.1797 * MOLARMASS)
#define NeMASS (Ne_MASS / AVOGADRO)
#define Ne_DENSITY (0.8999 * DENSITY)
#define Ne_MELT (24.56 * KELVIN)
#define Ne_BOIL (27.07 * KELVIN)
#define Ne_Cp (1030 * SPECIFICHEAT)
#define Ne_En (- 1)
#define SODIUM_Z 11
#define SODIUM (22.98976928)
#define Na_Z (SODIUM_Z)
#define Na_WEIGHT (22.98976928)
#define Na_MASS (22.98976928 * MOLARMASS)
#define NaMASS (Na_MASS / AVOGADRO)
#define Na_DENSITY (971 * DENSITY)
#define Na_MELT (370.87 * KELVIN)
#define Na_BOIL (1156 * KELVIN)
#define Na_Cp (1228 * SPECIFICHEAT)
#define Na_En (0.93)
#define MAGNESIUM_Z 12
#define MAGNESIUM (24.305)
#define Mg_Z (MAGNESIUM_Z)
#define Mg_WEIGHT (24.305)
#define Mg_MASS (24.305 * MOLARMASS)
#define MgMASS (Mg_MASS / AVOGADRO)
#define Mg_DENSITY (1738 * DENSITY)
#define Mg_MELT (923 * KELVIN)
#define Mg_BOIL (1363 * KELVIN)
#define Mg_Cp (1023 * SPECIFICHEAT)
#define Mg_En (1.31)
#define ALUMINIUM_Z 13
#define ALUMINIUM (26.9815384)
#define Al_Z (ALUMINIUM_Z)
#define Al_WEIGHT (26.9815384)
#define Al_MASS (26.9815384 * MOLARMASS)
#define AlMASS (Al_MASS / AVOGADRO)
#define Al_DENSITY (2698 * DENSITY)
#define Al_MELT (933.47 * KELVIN)
#define Al_BOIL (2792 * KELVIN)
#define Al_Cp (897 * SPECIFICHEAT)
#define Al_En (1.61)
#define SILICON_Z 14
#define SILICON (28.085)
#define Si_Z (SILICON_Z)
#define Si_WEIGHT (28.085)
#define Si_MASS (28.085 * MOLARMASS)
#define SiMASS (Si_MASS / AVOGADRO)
#define Si_DENSITY (2329.6 * DENSITY)
#define Si_MELT (1687 * KELVIN)
#define Si_BOIL (3538 * KELVIN)
#define Si_Cp (705 * SPECIFICHEAT)
#define Si_En (1.90)
#define PHOSPHORUS_Z 15
#define PHOSPHORUS (30.973761998)
#define P_Z (PHOSPHORUS_Z)
#define P_WEIGHT (30.973761998)
#define P_MASS (30.973761998 * MOLARMASS)
#define PMASS (P_MASS / AVOGADRO)
#define P_DENSITY (1820 * DENSITY)
#define P_MELT (317.30 * KELVIN)
#define P_BOIL (550 * KELVIN)
#define P_Cp (769 * SPECIFICHEAT)
#define P_En (2.19)
#define SULFUR_Z 16
#define SULFUR (32.06)
#define S_Z (SULFUR_Z)
#define S_WEIGHT (32.06)
#define S_MASS (32.06 * MOLARMASS)
#define SMASS (S_MASS / AVOGADRO)
#define S_DENSITY (2067 * DENSITY)
#define S_MELT (388.36 * KELVIN)
#define S_BOIL (717.87 * KELVIN)
#define S_Cp (710 * SPECIFICHEAT)
#define S_En (2.58)
#define CHLORINE_Z 17
#define CHLORINE (35.45)
#define Cl_Z (CHLORINE_Z)
#define Cl_WEIGHT (35.45)
#define Cl_MASS (35.45 * MOLARMASS)
#define ClMASS (Cl_MASS / AVOGADRO)
#define Cl_DENSITY (3.214 * DENSITY)
#define Cl_MELT (171.6 * KELVIN)
#define Cl_BOIL (239.11 * KELVIN)
#define Cl_Cp (479 * SPECIFICHEAT)
#define Cl_En (3.16)
#define ARGON_Z 18
#define ARGON (39.948)
#define Ar_Z (ARGON_Z)
#define Ar_WEIGHT (39.948)
#define Ar_MASS (39.948 * MOLARMASS)
#define ArMASS (Ar_MASS / AVOGADRO)
#define Ar_DENSITY (1.7837 * DENSITY)
#define Ar_MELT (83.80 * KELVIN)
#define Ar_BOIL (87.30 * KELVIN)
#define Ar_Cp (520 * SPECIFICHEAT)
#define Ar_En (- 1)
#define POTASSIUM_Z 19
#define POTASSIUM (39.0983)
#define K_Z (POTASSIUM_Z)
#define K_WEIGHT (39.0983)
#define K_MASS (39.0983 * MOLARMASS)
#define KMASS (K_MASS / AVOGADRO)
#define K_DENSITY (862 * DENSITY)
#define K_MELT (336.53 * KELVIN)
#define K_BOIL (1032 * KELVIN)
#define K_Cp (757 * SPECIFICHEAT)
#define K_En (0.82)
#define CALCIUM_Z 20
#define CALCIUM (40.078)
#define Ca_Z (CALCIUM_Z)
#define Ca_WEIGHT (40.078)
#define Ca_MASS (40.078 * MOLARMASS)
#define CaMASS (Ca_MASS / AVOGADRO)
#define Ca_DENSITY (1540 * DENSITY)
#define Ca_MELT (1115 * KELVIN)
#define Ca_BOIL (1757 * KELVIN)
#define Ca_Cp (647 * SPECIFICHEAT)
#define Ca_En (1.00)
#define SCANDIUM_Z 21
#define SCANDIUM (44.955908)
#define Sc_Z (SCANDIUM_Z)
#define Sc_WEIGHT (44.955908)
#define Sc_MASS (44.955908 * MOLARMASS)
#define ScMASS (Sc_MASS / AVOGADRO)
#define Sc_DENSITY (2989 * DENSITY)
#define Sc_MELT (1814 * KELVIN)
#define Sc_BOIL (3109 * KELVIN)
#define Sc_Cp (568 * SPECIFICHEAT)
#define Sc_En (1.36)
#define TITANIUM_Z 22
#define TITANIUM (47.867)
#define Ti_Z (TITANIUM_Z)
#define Ti_WEIGHT (47.867)
#define Ti_MASS (47.867 * MOLARMASS)
#define TiMASS (Ti_MASS / AVOGADRO)
#define Ti_DENSITY (4540 * DENSITY)
#define Ti_MELT (1941 * KELVIN)
#define Ti_BOIL (3560 * KELVIN)
#define Ti_Cp (523 * SPECIFICHEAT)
#define Ti_En (1.54)
#define VANADIUM_Z 23
#define VANADIUM (50.9415)
#define V_Z (VANADIUM_Z)
#define V_WEIGHT (50.9415)
#define V_MASS (50.9415 * MOLARMASS)
#define VMASS (V_MASS / AVOGADRO)
#define V_DENSITY (6110 * DENSITY)
#define V_MELT (2183 * KELVIN)
#define V_BOIL (3680 * KELVIN)
#define V_Cp (489 * SPECIFICHEAT)
#define V_En (1.63)
#define CHROMIUM_Z 24
#define CHROMIUM (51.9961)
#define Cr_Z (CHROMIUM_Z)
#define Cr_WEIGHT (51.9961)
#define Cr_MASS (51.9961 * MOLARMASS)
#define CrMASS (Cr_MASS / AVOGADRO)
#define Cr_DENSITY (7150 * DENSITY)
#define Cr_MELT (2180 * KELVIN)
#define Cr_BOIL (2944 * KELVIN)
#define Cr_Cp (449 * SPECIFICHEAT)
#define Cr_En (1.66)
#define MANGANESE_Z 25
#define MANGANESE (54.938043)
#define Mn_Z (MANGANESE_Z)
#define Mn_WEIGHT (54.938043)
#define Mn_MASS (54.938043 * MOLARMASS)
#define MnMASS (Mn_MASS / AVOGADRO)
#define Mn_DENSITY (7440 * DENSITY)
#define Mn_MELT (1519 * KELVIN)
#define Mn_BOIL (2334 * KELVIN)
#define Mn_Cp (479 * SPECIFICHEAT)
#define Mn_En (1.55)
#define IRON_Z 26
#define IRON (55.845)
#define Fe_Z (IRON_Z)
#define Fe_WEIGHT (55.845)
#define Fe_MASS (55.845 * MOLARMASS)
#define FeMASS (Fe_MASS / AVOGADRO)
#define Fe_DENSITY (7874 * DENSITY)
#define Fe_MELT (1811 * KELVIN)
#define Fe_BOIL (3134 * KELVIN)
#define Fe_Cp (449 * SPECIFICHEAT)
#define Fe_En (1.83)
#define COBALT_Z 27
#define COBALT (58.933194)
#define Co_Z (COBALT_Z)
#define Co_WEIGHT (58.933194)
#define Co_MASS (58.933194 * MOLARMASS)
#define CoMASS (Co_MASS / AVOGADRO)
#define Co_DENSITY (8860 * DENSITY)
#define Co_MELT (1768 * KELVIN)
#define Co_BOIL (3200 * KELVIN)
#define Co_Cp (421 * SPECIFICHEAT)
#define Co_En (1.88)
#define NICKEL_Z 28
#define NICKEL (58.6934)
#define Ni_Z (NICKEL_Z)
#define Ni_WEIGHT (58.6934)
#define Ni_MASS (58.6934 * MOLARMASS)
#define NiMASS (Ni_MASS / AVOGADRO)
#define Ni_DENSITY (8912 * DENSITY)
#define Ni_MELT (1728 * KELVIN)
#define Ni_BOIL (3186 * KELVIN)
#define Ni_Cp (444 * SPECIFICHEAT)
#define Ni_En (1.91)
#define COPPER_Z 29
#define COPPER (63.546)
#define Cu_Z (COPPER_Z)
#define Cu_WEIGHT (63.546)
#define Cu_MASS (63.546 * MOLARMASS)
#define CuMASS (Cu_MASS / AVOGADRO)
#define Cu_DENSITY (8960 * DENSITY)
#define Cu_MELT (1357.77 * KELVIN)
#define Cu_BOIL (2835 * KELVIN)
#define Cu_Cp (385 * SPECIFICHEAT)
#define Cu_En (1.90)
#define ZINC_Z 30
#define ZINC (65.38)
#define Zn_Z (ZINC_Z)
#define Zn_WEIGHT (65.38)
#define Zn_MASS (65.38 * MOLARMASS)
#define ZnMASS (Zn_MASS / AVOGADRO)
#define Zn_DENSITY (7134 * DENSITY)
#define Zn_MELT (692.88 * KELVIN)
#define Zn_BOIL (1180 * KELVIN)
#define Zn_Cp (388 * SPECIFICHEAT)
#define Zn_En (1.65)
#define GALLIUM_Z 31
#define GALLIUM (69.723)
#define Ga_Z (GALLIUM_Z)
#define Ga_WEIGHT (69.723)
#define Ga_MASS (69.723 * MOLARMASS)
#define GaMASS (Ga_MASS / AVOGADRO)
#define Ga_DENSITY (5907 * DENSITY)
#define Ga_MELT (302.9146 * KELVIN)
#define Ga_BOIL (2673 * KELVIN)
#define Ga_Cp (371 * SPECIFICHEAT)
#define Ga_En (1.81)
#define GERMANIUM_Z 32
#define GERMANIUM (72.630)
#define Ge_Z (GERMANIUM_Z)
#define Ge_WEIGHT (72.630)
#define Ge_MASS (72.630 * MOLARMASS)
#define GeMASS (Ge_MASS / AVOGADRO)
#define Ge_DENSITY (5323 * DENSITY)
#define Ge_MELT (1211.40 * KELVIN)
#define Ge_BOIL (3106 * KELVIN)
#define Ge_Cp (320 * SPECIFICHEAT)
#define Ge_En (2.01)
#define ARSENIC_Z 33
#define ARSENIC (74.921595)
#define As_Z (ARSENIC_Z)
#define As_WEIGHT (74.921595)
#define As_MASS (74.921595 * MOLARMASS)
#define AsMASS (As_MASS / AVOGADRO)
#define As_DENSITY (5776 * DENSITY)
#define As_MELT (1090 * KELVIN)
#define As_BOIL (887 * KELVIN)
#define As_Cp (329 * SPECIFICHEAT)
#define As_En (2.18)
#define SELENIUM_Z 34
#define SELENIUM (78.971)
#define Se_Z (SELENIUM_Z)
#define Se_WEIGHT (78.971)
#define Se_MASS (78.971 * MOLARMASS)
#define SeMASS (Se_MASS / AVOGADRO)
#define Se_DENSITY (4809 * DENSITY)
#define Se_MELT (453 * KELVIN)
#define Se_BOIL (958 * KELVIN)
#define Se_Cp (321 * SPECIFICHEAT)
#define Se_En (2.55)
#define BROMINE_Z 35
#define BROMINE (79.904)
#define Br_Z (BROMINE_Z)
#define Br_WEIGHT (79.904)
#define Br_MASS (79.904 * MOLARMASS)
#define BrMASS (Br_MASS / AVOGADRO)
#define Br_DENSITY (3122 * DENSITY)
#define Br_MELT (265.8 * KELVIN)
#define Br_BOIL (332.0 * KELVIN)
#define Br_Cp (474 * SPECIFICHEAT)
#define Br_En (2.96)
#define KRYPTON_Z 36
#define KRYPTON (83.798)
#define Kr_Z (KRYPTON_Z)
#define Kr_WEIGHT (83.798)
#define Kr_MASS (83.798 * MOLARMASS)
#define KrMASS (Kr_MASS / AVOGADRO)
#define Kr_DENSITY (3.733 * DENSITY)
#define Kr_MELT (115.79 * KELVIN)
#define Kr_BOIL (119.93 * KELVIN)
#define Kr_Cp (248 * SPECIFICHEAT)
#define Kr_En (3.00)
#define RUBIDIUM_Z 37
#define RUBIDIUM (85.4678)
#define Rb_Z (RUBIDIUM_Z)
#define Rb_WEIGHT (85.4678)
#define Rb_MASS (85.4678 * MOLARMASS)
#define RbMASS (Rb_MASS / AVOGADRO)
#define Rb_DENSITY (1532 * DENSITY)
#define Rb_MELT (312.46 * KELVIN)
#define Rb_BOIL (961 * KELVIN)
#define Rb_Cp (363 * SPECIFICHEAT)
#define Rb_En (0.82)
#define STRONTIUM_Z 38
#define STRONTIUM (87.62)
#define Sr_Z (STRONTIUM_Z)
#define Sr_WEIGHT (87.62)
#define Sr_MASS (87.62 * MOLARMASS)
#define SrMASS (Sr_MASS / AVOGADRO)
#define Sr_DENSITY (2640 * DENSITY)
#define Sr_MELT (1050 * KELVIN)
#define Sr_BOIL (1655 * KELVIN)
#define Sr_Cp (301 * SPECIFICHEAT)
#define Sr_En (0.95)
#define YTTRIUM_Z 39
#define YTTRIUM (88.90584)
#define Y_Z (YTTRIUM_Z)
#define Y_WEIGHT (88.90584)
#define Y_MASS (88.90584 * MOLARMASS)
#define YMASS (Y_MASS / AVOGADRO)
#define Y_DENSITY (4469 * DENSITY)
#define Y_MELT (1799 * KELVIN)
#define Y_BOIL (3609 * KELVIN)
#define Y_Cp (298 * SPECIFICHEAT)
#define Y_En (1.22)
#define ZIRCONIUM_Z 40
#define ZIRCONIUM (91.224)
#define Zr_Z (ZIRCONIUM_Z)
#define Zr_WEIGHT (91.224)
#define Zr_MASS (91.224 * MOLARMASS)
#define ZrMASS (Zr_MASS / AVOGADRO)
#define Zr_DENSITY (6506 * DENSITY)
#define Zr_MELT (2128 * KELVIN)
#define Zr_BOIL (4682 * KELVIN)
#define Zr_Cp (278 * SPECIFICHEAT)
#define Zr_En (1.33)
#define NIOBIUM_Z 41
#define NIOBIUM (92.90637)
#define Nb_Z (NIOBIUM_Z)
#define Nb_WEIGHT (92.90637)
#define Nb_MASS (92.90637 * MOLARMASS)
#define NbMASS (Nb_MASS / AVOGADRO)
#define Nb_DENSITY (8570 * DENSITY)
#define Nb_MELT (2750 * KELVIN)
#define Nb_BOIL (5017 * KELVIN)
#define Nb_Cp (265 * SPECIFICHEAT)
#define Nb_En (1.6)
#define MOLYBDENUM_Z 42
#define MOLYBDENUM (95.95)
#define Mo_Z (MOLYBDENUM_Z)
#define Mo_WEIGHT (95.95)
#define Mo_MASS (95.95 * MOLARMASS)
#define MoMASS (Mo_MASS / AVOGADRO)
#define Mo_DENSITY (10220 * DENSITY)
#define Mo_MELT (2896 * KELVIN)
#define Mo_BOIL (4912 * KELVIN)
#define Mo_Cp (251 * SPECIFICHEAT)
#define Mo_En (2.16)
#define TECHNETIUM_Z 43
#define TECHNETIUM 98
#define Tc_Z (TECHNETIUM_Z)
#define Tc_WEIGHT 98
#define Tc_MASS (98 * MOLARMASS)
#define TcMASS (Tc_MASS / AVOGADRO)
#define Tc_DENSITY (11500 * DENSITY)
#define Tc_MELT (2430 * KELVIN)
#define Tc_BOIL (4538 * KELVIN)
#define Tc_Cp (- 1 * SPECIFICHEAT)
#define Tc_En (1.9)
#define RUTHENIUM_Z 44
#define RUTHENIUM (101.07)
#define Ru_Z (RUTHENIUM_Z)
#define Ru_WEIGHT (101.07)
#define Ru_MASS (101.07 * MOLARMASS)
#define RuMASS (Ru_MASS / AVOGADRO)
#define Ru_DENSITY (12370 * DENSITY)
#define Ru_MELT (2607 * KELVIN)
#define Ru_BOIL (4423 * KELVIN)
#define Ru_Cp (238 * SPECIFICHEAT)
#define Ru_En (2.2)
#define RHODIUM_Z 45
#define RHODIUM (102.90549)
#define Rh_Z (RHODIUM_Z)
#define Rh_WEIGHT (102.90549)
#define Rh_MASS (102.90549 * MOLARMASS)
#define RhMASS (Rh_MASS / AVOGADRO)
#define Rh_DENSITY (12410 * DENSITY)
#define Rh_MELT (2237 * KELVIN)
#define Rh_BOIL (3968 * KELVIN)
#define Rh_Cp (243 * SPECIFICHEAT)
#define Rh_En (2.28)
#define PALLADIUM_Z 46
#define PALLADIUM (106.42)
#define Pd_Z (PALLADIUM_Z)
#define Pd_WEIGHT (106.42)
#define Pd_MASS (106.42 * MOLARMASS)
#define PdMASS (Pd_MASS / AVOGADRO)
#define Pd_DENSITY (12020 * DENSITY)
#define Pd_MELT (1828.05 * KELVIN)
#define Pd_BOIL (3236 * KELVIN)
#define Pd_Cp (244 * SPECIFICHEAT)
#define Pd_En (2.20)
#define SILVER_Z 47
#define SILVER (107.8682)
#define Ag_Z (SILVER_Z)
#define Ag_WEIGHT (107.8682)
#define Ag_MASS (107.8682 * MOLARMASS)
#define AgMASS (Ag_MASS / AVOGADRO)
#define Ag_DENSITY (10501 * DENSITY)
#define Ag_MELT (1234.93 * KELVIN)
#define Ag_BOIL (2435 * KELVIN)
#define Ag_Cp (235 * SPECIFICHEAT)
#define Ag_En (1.93)
#define CADMIUM_Z 48
#define CADMIUM (112.414)
#define Cd_Z (CADMIUM_Z)
#define Cd_WEIGHT (112.414)
#define Cd_MASS (112.414 * MOLARMASS)
#define CdMASS (Cd_MASS / AVOGADRO)
#define Cd_DENSITY (8690 * DENSITY)
#define Cd_MELT (594.22 * KELVIN)
#define Cd_BOIL (1040 * KELVIN)
#define Cd_Cp (232 * SPECIFICHEAT)
#define Cd_En (1.69)
#define INDIUM_Z 49
#define INDIUM (114.818)
#define In_Z (INDIUM_Z)
#define In_WEIGHT (114.818)
#define In_MASS (114.818 * MOLARMASS)
#define InMASS (In_MASS / AVOGADRO)
#define In_DENSITY (7310 * DENSITY)
#define In_MELT (429.75 * KELVIN)
#define In_BOIL (2345 * KELVIN)
#define In_Cp (233 * SPECIFICHEAT)
#define In_En (1.78)
#define TIN_Z 50
#define TIN (118.710)
#define Sn_Z (TIN_Z)
#define Sn_WEIGHT (118.710)
#define Sn_MASS (118.710 * MOLARMASS)
#define SnMASS (Sn_MASS / AVOGADRO)
#define Sn_DENSITY (7287 * DENSITY)
#define Sn_MELT (505.08 * KELVIN)
#define Sn_BOIL (2875 * KELVIN)
#define Sn_Cp (228 * SPECIFICHEAT)
#define Sn_En (1.96)
#define ANTIMONY_Z 51
#define ANTIMONY (121.760)
#define Sb_Z (ANTIMONY_Z)
#define Sb_WEIGHT (121.760)
#define Sb_MASS (121.760 * MOLARMASS)
#define SbMASS (Sb_MASS / AVOGADRO)
#define Sb_DENSITY (6685 * DENSITY)
#define Sb_MELT (903.78 * KELVIN)
#define Sb_BOIL (1860 * KELVIN)
#define Sb_Cp (207 * SPECIFICHEAT)
#define Sb_En (2.05)
#define TELLURIUM_Z 52
#define TELLURIUM (127.60)
#define Te_Z (TELLURIUM_Z)
#define Te_WEIGHT (127.60)
#define Te_MASS (127.60 * MOLARMASS)
#define TeMASS (Te_MASS / AVOGADRO)
#define Te_DENSITY (6232 * DENSITY)
#define Te_MELT (722.66 * KELVIN)
#define Te_BOIL (1261 * KELVIN)
#define Te_Cp (202 * SPECIFICHEAT)
#define Te_En (2.1)
#define IODINE_Z 53
#define IODINE (126.90447)
#define I_Z (IODINE_Z)
#define I_WEIGHT (126.90447)
#define I_MASS (126.90447 * MOLARMASS)
#define IMASS (I_MASS / AVOGADRO)
#define I_DENSITY (4930 * DENSITY)
#define I_MELT (386.85 * KELVIN)
#define I_BOIL (457.4 * KELVIN)
#define I_Cp (214 * SPECIFICHEAT)
#define I_En (2.66)
#define XENON_Z 54
#define XENON (131.293)
#define Xe_Z (XENON_Z)
#define Xe_WEIGHT (131.293)
#define Xe_MASS (131.293 * MOLARMASS)
#define XeMASS (Xe_MASS / AVOGADRO)
#define Xe_DENSITY (5.887 * DENSITY)
#define Xe_MELT (161.4 * KELVIN)
#define Xe_BOIL (165.03 * KELVIN)
#define Xe_Cp (158 * SPECIFICHEAT)
#define Xe_En (2.60)
#define CAESIUM_Z 55
#define CAESIUM (132.90545196)
#define Cs_Z (CAESIUM_Z)
#define Cs_WEIGHT (132.90545196)
#define Cs_MASS (132.90545196 * MOLARMASS)
#define CsMASS (Cs_MASS / AVOGADRO)
#define Cs_DENSITY (1873 * DENSITY)
#define Cs_MELT (301.59 * KELVIN)
#define Cs_BOIL (944 * KELVIN)
#define Cs_Cp (242 * SPECIFICHEAT)
#define Cs_En (0.79)
#define BARIUM_Z 56
#define BARIUM (137.327)
#define Ba_Z (BARIUM_Z)
#define Ba_WEIGHT (137.327)
#define Ba_MASS (137.327 * MOLARMASS)
#define BaMASS (Ba_MASS / AVOGADRO)
#define Ba_DENSITY (3594 * DENSITY)
#define Ba_MELT (1000 * KELVIN)
#define Ba_BOIL (2170 * KELVIN)
#define Ba_Cp (204 * SPECIFICHEAT)
#define Ba_En (0.89)
#define LANTHANUM_Z 57
#define LANTHANUM (138.90547)
#define La_Z (LANTHANUM_Z)
#define La_WEIGHT (138.90547)
#define La_MASS (138.90547 * MOLARMASS)
#define LaMASS (La_MASS / AVOGADRO)
#define La_DENSITY (6145 * DENSITY)
#define La_MELT (1193 * KELVIN)
#define La_BOIL (3737 * KELVIN)
#define La_Cp (195 * SPECIFICHEAT)
#define La_En (1.1)
#define CERIUM_Z 58
#define CERIUM (140.116)
#define Ce_Z (CERIUM_Z)
#define Ce_WEIGHT (140.116)
#define Ce_MASS (140.116 * MOLARMASS)
#define CeMASS (Ce_MASS / AVOGADRO)
#define Ce_DENSITY (6770 * DENSITY)
#define Ce_MELT (1068 * KELVIN)
#define Ce_BOIL (3716 * KELVIN)
#define Ce_Cp (192 * SPECIFICHEAT)
#define Ce_En (1.12)
#define PRASEODYMIUM_Z 59
#define PRASEODYMIUM (140.90766)
#define Pr_Z (PRASEODYMIUM_Z)
#define Pr_WEIGHT (140.90766)
#define Pr_MASS (140.90766 * MOLARMASS)
#define PrMASS (Pr_MASS / AVOGADRO)
#define Pr_DENSITY (6773 * DENSITY)
#define Pr_MELT (1208 * KELVIN)
#define Pr_BOIL (3793 * KELVIN)
#define Pr_Cp (193 * SPECIFICHEAT)
#define Pr_En (1.13)
#define NEODYMIUM_Z 60
#define NEODYMIUM (144.242)
#define Nd_Z (NEODYMIUM_Z)
#define Nd_WEIGHT (144.242)
#define Nd_MASS (144.242 * MOLARMASS)
#define NdMASS (Nd_MASS / AVOGADRO)
#define Nd_DENSITY (7007 * DENSITY)
#define Nd_MELT (1297 * KELVIN)
#define Nd_BOIL (3347 * KELVIN)
#define Nd_Cp (190 * SPECIFICHEAT)
#define Nd_En (1.14)
#define PROMETHIUM_Z 61
#define PROMETHIUM 145
#define Pm_Z (PROMETHIUM_Z)
#define Pm_WEIGHT 145
#define Pm_MASS (145 * MOLARMASS)
#define PmMASS (Pm_MASS / AVOGADRO)
#define Pm_DENSITY (7260 * DENSITY)
#define Pm_MELT (1315 * KELVIN)
#define Pm_BOIL (3273 * KELVIN)
#define Pm_Cp (- 1 * SPECIFICHEAT)
#define Pm_En (1.13)
#define SAMARIUM_Z 62
#define SAMARIUM (150.36)
#define Sm_Z (SAMARIUM_Z)
#define Sm_WEIGHT (150.36)
#define Sm_MASS (150.36 * MOLARMASS)
#define SmMASS (Sm_MASS / AVOGADRO)
#define Sm_DENSITY (7520 * DENSITY)
#define Sm_MELT (1345 * KELVIN)
#define Sm_BOIL (2067 * KELVIN)
#define Sm_Cp (197 * SPECIFICHEAT)
#define Sm_En (1.17)
#define EUROPIUM_Z 63
#define EUROPIUM (151.964)
#define Eu_Z (EUROPIUM_Z)
#define Eu_WEIGHT (151.964)
#define Eu_MASS (151.964 * MOLARMASS)
#define EuMASS (Eu_MASS / AVOGADRO)
#define Eu_DENSITY (5243 * DENSITY)
#define Eu_MELT (1099 * KELVIN)
#define Eu_BOIL (1802 * KELVIN)
#define Eu_Cp (182 * SPECIFICHEAT)
#define Eu_En (1.2)
#define GADOLINIUM_Z 64
#define GADOLINIUM (157.25)
#define Gd_Z (GADOLINIUM_Z)
#define Gd_WEIGHT (157.25)
#define Gd_MASS (157.25 * MOLARMASS)
#define GdMASS (Gd_MASS / AVOGADRO)
#define Gd_DENSITY (7895 * DENSITY)
#define Gd_MELT (1585 * KELVIN)
#define Gd_BOIL (3546 * KELVIN)
#define Gd_Cp (236 * SPECIFICHEAT)
#define Gd_En (1.2)
#define TERBIUM_Z 65
#define TERBIUM (158.925354)
#define Tb_Z (TERBIUM_Z)
#define Tb_WEIGHT (158.925354)
#define Tb_MASS (158.925354 * MOLARMASS)
#define TbMASS (Tb_MASS / AVOGADRO)
#define Tb_DENSITY (8229 * DENSITY)
#define Tb_MELT (1629 * KELVIN)
#define Tb_BOIL (3503 * KELVIN)
#define Tb_Cp (182 * SPECIFICHEAT)
#define Tb_En (1.2)
#define DYSPROSIUM_Z 66
#define DYSPROSIUM (162.500)
#define Dy_Z (DYSPROSIUM_Z)
#define Dy_WEIGHT (162.500)
#define Dy_MASS (162.500 * MOLARMASS)
#define DyMASS (Dy_MASS / AVOGADRO)
#define Dy_DENSITY (8550 * DENSITY)
#define Dy_MELT (1680 * KELVIN)
#define Dy_BOIL (2840 * KELVIN)
#define Dy_Cp (170 * SPECIFICHEAT)
#define Dy_En (1.22)
#define HOLMIUM_Z 67
#define HOLMIUM (164.930328)
#define Ho_Z (HOLMIUM_Z)
#define Ho_WEIGHT (164.930328)
#define Ho_MASS (164.930328 * MOLARMASS)
#define HoMASS (Ho_MASS / AVOGADRO)
#define Ho_DENSITY (8795 * DENSITY)
#define Ho_MELT (1734 * KELVIN)
#define Ho_BOIL (2993 * KELVIN)
#define Ho_Cp (165 * SPECIFICHEAT)
#define Ho_En (1.23)
#define ERBIUM_Z 68
#define ERBIUM (167.259)
#define Er_Z (ERBIUM_Z)
#define Er_WEIGHT (167.259)
#define Er_MASS (167.259 * MOLARMASS)
#define ErMASS (Er_MASS / AVOGADRO)
#define Er_DENSITY (9066 * DENSITY)
#define Er_MELT (1802 * KELVIN)
#define Er_BOIL (3141 * KELVIN)
#define Er_Cp (168 * SPECIFICHEAT)
#define Er_En (1.24)
#define THULIUM_Z 69
#define THULIUM (168.934218)
#define Tm_Z (THULIUM_Z)
#define Tm_WEIGHT (168.934218)
#define Tm_MASS (168.934218 * MOLARMASS)
#define TmMASS (Tm_MASS / AVOGADRO)
#define Tm_DENSITY (9321 * DENSITY)
#define Tm_MELT (1818 * KELVIN)
#define Tm_BOIL (2223 * KELVIN)
#define Tm_Cp (160 * SPECIFICHEAT)
#define Tm_En (1.25)
#define YTTERBIUM_Z 70
#define YTTERBIUM (173.045)
#define Yb_Z (YTTERBIUM_Z)
#define Yb_WEIGHT (173.045)
#define Yb_MASS (173.045 * MOLARMASS)
#define YbMASS (Yb_MASS / AVOGADRO)
#define Yb_DENSITY (6965 * DENSITY)
#define Yb_MELT (1097 * KELVIN)
#define Yb_BOIL (1469 * KELVIN)
#define Yb_Cp (155 * SPECIFICHEAT)
#define Yb_En (1.1)
#define LUTETIUM_Z 71
#define LUTETIUM (174.9668)
#define Lu_Z (LUTETIUM_Z)
#define Lu_WEIGHT (174.9668)
#define Lu_MASS (174.9668 * MOLARMASS)
#define LuMASS (Lu_MASS / AVOGADRO)
#define Lu_DENSITY (9840 * DENSITY)
#define Lu_MELT (1925 * KELVIN)
#define Lu_BOIL (3675 * KELVIN)
#define Lu_Cp (154 * SPECIFICHEAT)
#define Lu_En (1.27)
#define HAFNIUM_Z 72
#define HAFNIUM (178.49)
#define Hf_Z (HAFNIUM_Z)
#define Hf_WEIGHT (178.49)
#define Hf_MASS (178.49 * MOLARMASS)
#define HfMASS (Hf_MASS / AVOGADRO)
#define Hf_DENSITY (13310 * DENSITY)
#define Hf_MELT (2506 * KELVIN)
#define Hf_BOIL (4876 * KELVIN)
#define Hf_Cp (144 * SPECIFICHEAT)
#define Hf_En (1.3)
#define TANTALUM_Z 73
#define TANTALUM (180.94788)
#define Ta_Z (TANTALUM_Z)
#define Ta_WEIGHT (180.94788)
#define Ta_MASS (180.94788 * MOLARMASS)
#define TaMASS (Ta_MASS / AVOGADRO)
#define Ta_DENSITY (16654 * DENSITY)
#define Ta_MELT (3290 * KELVIN)
#define Ta_BOIL (5731 * KELVIN)
#define Ta_Cp (140 * SPECIFICHEAT)
#define Ta_En (1.5)
#define TUNGSTEN_Z 74
#define TUNGSTEN (183.84)
#define W_Z (TUNGSTEN_Z)
#define W_WEIGHT (183.84)
#define W_MASS (183.84 * MOLARMASS)
#define WMASS (W_MASS / AVOGADRO)
#define W_DENSITY (19250 * DENSITY)
#define W_MELT (3695 * KELVIN)
#define W_BOIL (5828 * KELVIN)
#define W_Cp (132 * SPECIFICHEAT)
#define W_En (2.36)
#define RHENIUM_Z 75
#define RHENIUM (186.207)
#define Re_Z (RHENIUM_Z)
#define Re_WEIGHT (186.207)
#define Re_MASS (186.207 * MOLARMASS)
#define ReMASS (Re_MASS / AVOGADRO)
#define Re_DENSITY (21020 * DENSITY)
#define Re_MELT (3459 * KELVIN)
#define Re_BOIL (5869 * KELVIN)
#define Re_Cp (137 * SPECIFICHEAT)
#define Re_En (1.9)
#define OSMIUM_Z 76
#define OSMIUM (190.23)
#define Os_Z (OSMIUM_Z)
#define Os_WEIGHT (190.23)
#define Os_MASS (190.23 * MOLARMASS)
#define OsMASS (Os_MASS / AVOGADRO)
#define Os_DENSITY (22610 * DENSITY)
#define Os_MELT (3306 * KELVIN)
#define Os_BOIL (5285 * KELVIN)
#define Os_Cp (130 * SPECIFICHEAT)
#define Os_En (2.2)
#define IRIDIUM_Z 77
#define IRIDIUM (192.217)
#define Ir_Z (IRIDIUM_Z)
#define Ir_WEIGHT (192.217)
#define Ir_MASS (192.217 * MOLARMASS)
#define IrMASS (Ir_MASS / AVOGADRO)
#define Ir_DENSITY (22560 * DENSITY)
#define Ir_MELT (2719 * KELVIN)
#define Ir_BOIL (4701 * KELVIN)
#define Ir_Cp (131 * SPECIFICHEAT)
#define Ir_En (2.2)
#define PLATINUM_Z 78
#define PLATINUM (195.084)
#define Pt_Z (PLATINUM_Z)
#define Pt_WEIGHT (195.084)
#define Pt_MASS (195.084 * MOLARMASS)
#define PtMASS (Pt_MASS / AVOGADRO)
#define Pt_DENSITY (21460 * DENSITY)
#define Pt_MELT (2041.4 * KELVIN)
#define Pt_BOIL (4098 * KELVIN)
#define Pt_Cp (133 * SPECIFICHEAT)
#define Pt_En (2.28)
#define GOLD_Z 79
#define GOLD (196.966570)
#define Au_Z (GOLD_Z)
#define Au_WEIGHT (196.966570)
#define Au_MASS (196.966570 * MOLARMASS)
#define AuMASS (Au_MASS / AVOGADRO)
#define Au_DENSITY (19282 * DENSITY)
#define Au_MELT (1337.33 * KELVIN)
#define Au_BOIL (3129 * KELVIN)
#define Au_Cp (129 * SPECIFICHEAT)
#define Au_En (2.54)
#define MERCURY_Z 80
#define MERCURY (200.592)
#define Hg_Z (MERCURY_Z)
#define Hg_WEIGHT (200.592)
#define Hg_MASS (200.592 * MOLARMASS)
#define HgMASS (Hg_MASS / AVOGADRO)
#define Hg_DENSITY (13533.6 * DENSITY)
#define Hg_MELT (234.43 * KELVIN)
#define Hg_BOIL (629.88 * KELVIN)
#define Hg_Cp (140 * SPECIFICHEAT)
#define Hg_En (2.00)
#define THALLIUM_Z 81
#define THALLIUM (204.38)
#define Tl_Z (THALLIUM_Z)
#define Tl_WEIGHT (204.38)
#define Tl_MASS (204.38 * MOLARMASS)
#define TlMASS (Tl_MASS / AVOGADRO)
#define Tl_DENSITY (11850 * DENSITY)
#define Tl_MELT (577 * KELVIN)
#define Tl_BOIL (1746 * KELVIN)
#define Tl_Cp (129 * SPECIFICHEAT)
#define Tl_En (1.62)
#define LEAD_Z 82
#define LEAD (207.2)
#define Pb_Z (LEAD_Z)
#define Pb_WEIGHT (207.2)
#define Pb_MASS (207.2 * MOLARMASS)
#define PbMASS (Pb_MASS / AVOGADRO)
#define Pb_DENSITY (11342 * DENSITY)
#define Pb_MELT (600.61 * KELVIN)
#define Pb_BOIL (2022 * KELVIN)
#define Pb_Cp (129 * SPECIFICHEAT)
#define Pb_En (1.87)
#define BISMUTH_Z 83
#define BISMUTH (208.98040)
#define Bi_Z (BISMUTH_Z)
#define Bi_WEIGHT (208.98040)
#define Bi_MASS (208.98040 * MOLARMASS)
#define BiMASS (Bi_MASS / AVOGADRO)
#define Bi_DENSITY (9807 * DENSITY)
#define Bi_MELT (544.7 * KELVIN)
#define Bi_BOIL (1837 * KELVIN)
#define Bi_Cp (122 * SPECIFICHEAT)
#define Bi_En (2.02)
#define POLONIUM_Z 84
#define POLONIUM 209
#define Po_Z (POLONIUM_Z)
#define Po_WEIGHT 209
#define Po_MASS (209 * MOLARMASS)
#define PoMASS (Po_MASS / AVOGADRO)
#define Po_DENSITY (9320 * DENSITY)
#define Po_MELT (527 * KELVIN)
#define Po_BOIL (1235 * KELVIN)
#define Po_Cp (- 1 * SPECIFICHEAT)
#define Po_En (2.0)
#define ASTATINE_Z 85
#define ASTATINE 210
#define At_Z (ASTATINE_Z)
#define At_WEIGHT 210
#define At_MASS (210 * MOLARMASS)
#define AtMASS (At_MASS / AVOGADRO)
#define At_DENSITY (7000 * DENSITY)
#define At_MELT (575 * KELVIN)
#define At_BOIL (610 * KELVIN)
#define At_Cp (- 1 * SPECIFICHEAT)
#define At_En (2.2)
#define RADON_Z 86
#define RADON 222
#define Rn_Z (RADON_Z)
#define Rn_WEIGHT 222
#define Rn_MASS (222 * MOLARMASS)
#define RnMASS (Rn_MASS / AVOGADRO)
#define Rn_DENSITY (9.73 * DENSITY)
#define Rn_MELT (202 * KELVIN)
#define Rn_BOIL (211.3 * KELVIN)
#define Rn_Cp (94 * SPECIFICHEAT)
#define Rn_En (2.2)
#define FRANCIUM_Z 87
#define FRANCIUM 223
#define Fr_Z (FRANCIUM_Z)
#define Fr_WEIGHT 223
#define Fr_MASS (223 * MOLARMASS)
#define FrMASS (Fr_MASS / AVOGADRO)
#define Fr_DENSITY (1870 * DENSITY)
#define Fr_MELT (300 * KELVIN)
#define Fr_BOIL (950 * KELVIN)
#define Fr_Cp (- 1 * SPECIFICHEAT)
#define Fr_En (0.7)
#define RADIUM_Z 88
#define RADIUM 226
#define Ra_Z (RADIUM_Z)
#define Ra_WEIGHT 226
#define Ra_MASS (226 * MOLARMASS)
#define RaMASS (Ra_MASS / AVOGADRO)
#define Ra_DENSITY (5500 * DENSITY)
#define Ra_MELT (973 * KELVIN)
#define Ra_BOIL (2010 * KELVIN)
#define Ra_Cp (94 * SPECIFICHEAT)
#define Ra_En (0.9)
#define ACTINIUM_Z 89
#define ACTINIUM 227
#define Ac_Z (ACTINIUM_Z)
#define Ac_WEIGHT 227
#define Ac_MASS (227 * MOLARMASS)
#define AcMASS (Ac_MASS / AVOGADRO)
#define Ac_DENSITY (10070 * DENSITY)
#define Ac_MELT (1323 * KELVIN)
#define Ac_BOIL (3471 * KELVIN)
#define Ac_Cp (120 * SPECIFICHEAT)
#define Ac_En (1.1)
#define THORIUM_Z 90
#define THORIUM (232.0377)
#define Th_Z (THORIUM_Z)
#define Th_WEIGHT (232.0377)
#define Th_MASS (232.0377 * MOLARMASS)
#define ThMASS (Th_MASS / AVOGADRO)
#define Th_DENSITY (11720 * DENSITY)
#define Th_MELT (2115 * KELVIN)
#define Th_BOIL (5061 * KELVIN)
#define Th_Cp (113 * SPECIFICHEAT)
#define Th_En (1.3)
#define PROTACTINIUM_Z 91
#define PROTACTINIUM (231.03588)
#define Pa_Z (PROTACTINIUM_Z)
#define Pa_WEIGHT (231.03588)
#define Pa_MASS (231.03588 * MOLARMASS)
#define PaMASS (Pa_MASS / AVOGADRO)
#define Pa_DENSITY (15370 * DENSITY)
#define Pa_MELT (1841 * KELVIN)
#define Pa_BOIL (4300 * KELVIN)
#define Pa_Cp (- 1 * SPECIFICHEAT)
#define Pa_En (1.5)
#define URANIUM_Z 92
#define URANIUM (238.02891)
#define U_Z (URANIUM_Z)
#define U_WEIGHT (238.02891)
#define U_MASS (238.02891 * MOLARMASS)
#define UMASS (U_MASS / AVOGADRO)
#define U_DENSITY (18950 * DENSITY)
#define U_MELT (1405.3 * KELVIN)
#define U_BOIL (4404 * KELVIN)
#define U_Cp (116 * SPECIFICHEAT)
#define U_En (1.38)
#define NEPTUNIUM_Z 93
#define NEPTUNIUM 237
#define Np_Z (NEPTUNIUM_Z)
#define Np_WEIGHT 237
#define Np_MASS (237 * MOLARMASS)
#define NpMASS (Np_MASS / AVOGADRO)
#define Np_DENSITY (20450 * DENSITY)
#define Np_MELT (917 * KELVIN)
#define Np_BOIL (4273 * KELVIN)
#define Np_Cp (- 1 * SPECIFICHEAT)
#define Np_En (1.36)
#define PLUTONIUM_Z 94
#define PLUTONIUM 244
#define Pu_Z (PLUTONIUM_Z)
#define Pu_WEIGHT 244
#define Pu_MASS (244 * MOLARMASS)
#define PuMASS (Pu_MASS / AVOGADRO)
#define Pu_DENSITY (19840 * DENSITY)
#define Pu_MELT (912.5 * KELVIN)
#define Pu_BOIL (3501 * KELVIN)
#define Pu_Cp (- 1 * SPECIFICHEAT)
#define Pu_En (1.28)
#define AMERICIUM_Z 95
#define AMERICIUM 243
#define Am_Z (AMERICIUM_Z)
#define Am_WEIGHT 243
#define Am_MASS (243 * MOLARMASS)
#define AmMASS (Am_MASS / AVOGADRO)
#define Am_DENSITY (13690 * DENSITY)
#define Am_MELT (1449 * KELVIN)
#define Am_BOIL (2880 * KELVIN)
#define Am_Cp (- 1 * SPECIFICHEAT)
#define Am_En (1.13)
#define CURIUM_Z 96
#define CURIUM 247
#define Cm_Z (CURIUM_Z)
#define Cm_WEIGHT 247
#define Cm_MASS (247 * MOLARMASS)
#define CmMASS (Cm_MASS / AVOGADRO)
#define Cm_DENSITY (13510 * DENSITY)
#define Cm_MELT (1613 * KELVIN)
#define Cm_BOIL (3383 * KELVIN)
#define Cm_Cp (- 1 * SPECIFICHEAT)
#define Cm_En (1.28)
#define BERKELIUM_Z 97
#define BERKELIUM 247
#define Bk_Z (BERKELIUM_Z)
#define Bk_WEIGHT 247
#define Bk_MASS (247 * MOLARMASS)
#define BkMASS (Bk_MASS / AVOGADRO)
#define Bk_DENSITY (14790 * DENSITY)
#define Bk_MELT (1259 * KELVIN)
#define Bk_BOIL (2900 * KELVIN)
#define Bk_Cp (- 1 * SPECIFICHEAT)
#define Bk_En (1.3)
#define CALIFORNIUM_Z 98
#define CALIFORNIUM 251
#define Cf_Z (CALIFORNIUM_Z)
#define Cf_WEIGHT 251
#define Cf_MASS (251 * MOLARMASS)
#define CfMASS (Cf_MASS / AVOGADRO)
#define Cf_DENSITY (15100 * DENSITY)
#define Cf_MELT (1173 * KELVIN)
#define Cf_BOIL (- 1 * KELVIN)
#define Cf_Cp (- 1 * SPECIFICHEAT)
#define Cf_En (1.3)
#define EINSTEINIUM_Z 99
#define EINSTEINIUM 252
#define Es_Z (EINSTEINIUM_Z)
#define Es_WEIGHT 252
#define Es_MASS (252 * MOLARMASS)
#define EsMASS (Es_MASS / AVOGADRO)
#define Es_DENSITY (8840 * DENSITY)
#define Es_MELT (1133 * KELVIN)
#define Es_BOIL (- 1 * KELVIN)
#define Es_Cp (- 1 * SPECIFICHEAT)
#define Es_En (1.3)
#define FERMIUM_Z 100
#define FERMIUM 257
#define Fm_Z (FERMIUM_Z)
#define Fm_WEIGHT 257
#define Fm_MASS (257 * MOLARMASS)
#define FmMASS (Fm_MASS / AVOGADRO)
#define Fm_DENSITY (- 1 * DENSITY)
#define Fm_MELT (- 1 * KELVIN)
#define Fm_BOIL (- 1 * KELVIN)
#define Fm_Cp (- 1 * SPECIFICHEAT)
#define Fm_En (1.3)
#define MENDELEVIUM_Z 101
#define MENDELEVIUM 258
#define Md_Z (MENDELEVIUM_Z)
#define Md_WEIGHT 258
#define Md_MASS (258 * MOLARMASS)
#define MdMASS (Md_MASS / AVOGADRO)
#define Md_DENSITY (- 1 * DENSITY)
#define Md_MELT (- 1 * KELVIN)
#define Md_BOIL (- 1 * KELVIN)
#define Md_Cp (- 1 * SPECIFICHEAT)
#define Md_En (1.3)
#define NOBELIUM_Z 102
#define NOBELIUM 259
#define No_Z (NOBELIUM_Z)
#define No_WEIGHT 259
#define No_MASS (259 * MOLARMASS)
#define NoMASS (No_MASS / AVOGADRO)
#define No_DENSITY (- 1 * DENSITY)
#define No_MELT (- 1 * KELVIN)
#define No_BOIL (- 1 * KELVIN)
#define No_Cp (- 1 * SPECIFICHEAT)
#define No_En (1.3)
#define LAWRENCIUM_Z 103
#define LAWRENCIUM 266
#define Lr_Z (LAWRENCIUM_Z)
#define Lr_WEIGHT 266
#define Lr_MASS (266 * MOLARMASS)
#define LrMASS (Lr_MASS / AVOGADRO)
#define Lr_DENSITY (- 1 * DENSITY)
#define Lr_MELT (- 1 * KELVIN)
#define Lr_BOIL (- 1 * KELVIN)
#define Lr_Cp (- 1 * SPECIFICHEAT)
#define Lr_En (1.3)
#define RUTHERFORDIUM_Z 104
#define RUTHERFORDIUM 267
#define Rf_Z (RUTHERFORDIUM_Z)
#define Rf_WEIGHT 267
#define Rf_MASS (267 * MOLARMASS)
#define RfMASS (Rf_MASS / AVOGADRO)
#define Rf_DENSITY (- 1 * DENSITY)
#define Rf_MELT (- 1 * KELVIN)
#define Rf_BOIL (- 1 * KELVIN)
#define Rf_Cp (- 1 * SPECIFICHEAT)
#define Rf_En (- 1)
#define DUBNIUM_Z 105
#define DUBNIUM 268
#define Db_Z (DUBNIUM_Z)
#define Db_WEIGHT 268
#define Db_MASS (268 * MOLARMASS)
#define DbMASS (Db_MASS / AVOGADRO)
#define Db_DENSITY (- 1 * DENSITY)
#define Db_MELT (- 1 * KELVIN)
#define Db_BOIL (- 1 * KELVIN)
#define Db_Cp (- 1 * SPECIFICHEAT)
#define Db_En (- 1)
#define SEABORGIUM_Z 106
#define SEABORGIUM 269
#define Sg_Z (SEABORGIUM_Z)
#define Sg_WEIGHT 269
#define Sg_MASS (269 * MOLARMASS)
#define SgMASS (Sg_MASS / AVOGADRO)
#define Sg_DENSITY (- 1 * DENSITY)
#define Sg_MELT (- 1 * KELVIN)
#define Sg_BOIL (- 1 * KELVIN)
#define Sg_Cp (- 1 * SPECIFICHEAT)
#define Sg_En (- 1)
#define BOHRIUM_Z 107
#define BOHRIUM 270
#define Bh_Z (BOHRIUM_Z)
#define Bh_WEIGHT 270
#define Bh_MASS (270 * MOLARMASS)
#define BhMASS (Bh_MASS / AVOGADRO)
#define Bh_DENSITY (- 1 * DENSITY)
#define Bh_MELT (- 1 * KELVIN)
#define Bh_BOIL (- 1 * KELVIN)
#define Bh_Cp (- 1 * SPECIFICHEAT)
#define Bh_En (- 1)
#define HASSIUM_Z 108
#define HASSIUM 270
#define Hs_Z (HASSIUM_Z)
#define Hs_WEIGHT 270
#define Hs_MASS (270 * MOLARMASS)
#define HsMASS (Hs_MASS / AVOGADRO)
#define Hs_DENSITY (- 1 * DENSITY)
#define Hs_MELT (- 1 * KELVIN)
#define Hs_BOIL (- 1 * KELVIN)
#define Hs_Cp (- 1 * SPECIFICHEAT)
#define Hs_En (- 1)
#define MEITNERIUM_Z 109
#define MEITNERIUM 278
#define Mt_Z (MEITNERIUM_Z)
#define Mt_WEIGHT 278
#define Mt_MASS (278 * MOLARMASS)
#define MtMASS (Mt_MASS / AVOGADRO)
#define Mt_DENSITY (- 1 * DENSITY)
#define Mt_MELT (- 1 * KELVIN)
#define Mt_BOIL (- 1 * KELVIN)
#define Mt_Cp (- 1 * SPECIFICHEAT)
#define Mt_En (- 1)
#define DARMSTADTIUM_Z 110
#define DARMSTADTIUM 281
#define Ds_Z (DARMSTADTIUM_Z)
#define Ds_WEIGHT 281
#define Ds_MASS (281 * MOLARMASS)
#define DsMASS (Ds_MASS / AVOGADRO)
#define Ds_DENSITY (- 1 * DENSITY)
#define Ds_MELT (- 1 * KELVIN)
#define Ds_BOIL (- 1 * KELVIN)
#define Ds_Cp (- 1 * SPECIFICHEAT)
#define Ds_En (- 1)
#define ROENTGENIUM_Z 111
#define ROENTGENIUM 282
#define Rg_Z (ROENTGENIUM_Z)
#define Rg_WEIGHT 282
#define Rg_MASS (282 * MOLARMASS)
#define RgMASS (Rg_MASS / AVOGADRO)
#define Rg_DENSITY (- 1 * DENSITY)
#define Rg_MELT (- 1 * KELVIN)
#define Rg_BOIL (- 1 * KELVIN)
#define Rg_Cp (- 1 * SPECIFICHEAT)
#define Rg_En (- 1)
#define COPERNICIUM_Z 112
#define COPERNICIUM 285
#define Cn_Z (COPERNICIUM_Z)
#define Cn_WEIGHT 285
#define Cn_MASS (285 * MOLARMASS)
#define CnMASS (Cn_MASS / AVOGADRO)
#define Cn_DENSITY (- 1 * DENSITY)
#define Cn_MELT (- 1 * KELVIN)
#define Cn_BOIL (357 * KELVIN)
#define Cn_Cp (- 1 * SPECIFICHEAT)
#define Cn_En (- 1)
#define NIHONIUM_Z 113
#define NIHONIUM 286
#define Nh_Z (NIHONIUM_Z)
#define Nh_WEIGHT 286
#define Nh_MASS (286 * MOLARMASS)
#define NhMASS (Nh_MASS / AVOGADRO)
#define Nh_DENSITY (- 1 * DENSITY)
#define Nh_MELT (- 1 * KELVIN)
#define Nh_BOIL (- 1 * KELVIN)
#define Nh_Cp (- 1 * SPECIFICHEAT)
#define Nh_En (- 1)
#define FLEROVIUM_Z 114
#define FLEROVIUM 289
#define Fl_Z (FLEROVIUM_Z)
#define Fl_WEIGHT 289
#define Fl_MASS (289 * MOLARMASS)
#define FlMASS (Fl_MASS / AVOGADRO)
#define Fl_DENSITY (- 1 * DENSITY)
#define Fl_MELT (- 1 * KELVIN)
#define Fl_BOIL (210 * KELVIN)
#define Fl_Cp (- 1 * SPECIFICHEAT)
#define Fl_En (- 1)
#define MOSCOVIUM_Z 115
#define MOSCOVIUM 290
#define Mc_Z (MOSCOVIUM_Z)
#define Mc_WEIGHT 290
#define Mc_MASS (290 * MOLARMASS)
#define McMASS (Mc_MASS / AVOGADRO)
#define Mc_DENSITY (- 1 * DENSITY)
#define Mc_MELT (- 1 * KELVIN)
#define Mc_BOIL (- 1 * KELVIN)
#define Mc_Cp (- 1 * SPECIFICHEAT)
#define Mc_En (- 1)
#define LIVERMORIUM_Z 116
#define LIVERMORIUM 293
#define Lv_Z (LIVERMORIUM_Z)
#define Lv_WEIGHT 293
#define Lv_MASS (293 * MOLARMASS)
#define LvMASS (Lv_MASS / AVOGADRO)
#define Lv_DENSITY (- 1 * DENSITY)
#define Lv_MELT (- 1 * KELVIN)
#define Lv_BOIL (- 1 * KELVIN)
#define Lv_Cp (- 1 * SPECIFICHEAT)
#define Lv_En (- 1)
#define TENNESSINE_Z 117
#define TENNESSINE 294
#define Ts_Z (TENNESSINE_Z)
#define Ts_WEIGHT 294
#define Ts_MASS (294 * MOLARMASS)
#define TsMASS (Ts_MASS / AVOGADRO)
#define Ts_DENSITY (- 1 * DENSITY)
#define Ts_MELT (- 1 * KELVIN)
#define Ts_BOIL (- 1 * KELVIN)
#define Ts_Cp (- 1 * SPECIFICHEAT)
#define Ts_En (- 1)
#define OGANESSON_Z 118
#define OGANESSON 294
#define Og_Z (OGANESSON_Z)
#define Og_WEIGHT 294
#define Og_MASS (294 * MOLARMASS)
#define OgMASS (Og_MASS / AVOGADRO)
#define Og_DENSITY (- 1 * DENSITY)
#define Og_MELT (- 1 * KELVIN)
#define Og_BOIL (- 1 * KELVIN)
#define Og_Cp (- 1 * SPECIFICHEAT)
#define Og_En (- 1)
#define H1_WEIGHT (1.007825032241)
#define H1_MASS (1.007825032241 * MOLARMASS)
#define H1MASS (H1_MASS / AVOGADRO)
#define DEUTERIUM_Z 1
#define DEUTERIUM (2.01410177811)
#define D_Z (DEUTERIUM_Z)
#define D_WEIGHT (2.01410177811)
#define D_MASS (2.01410177811 * MOLARMASS)
#define DMASS (D_MASS / AVOGADRO)
#define TRITIUM_Z 1
#define TRITIUM (3.01604928199)
#define T_Z (TRITIUM_Z)
#define T_WEIGHT (3.01604928199)
#define T_MASS (3.01604928199 * MOLARMASS)
#define TMASS (T_MASS / AVOGADRO)
#define H2_WEIGHT (D_WEIGHT)
#define H2_MASS (D_WEIGHT * MOLARMASS)
#define H2MASS (H2_MASS / AVOGADRO)
#define H3_WEIGHT (T_WEIGHT)
#define H3_MASS (T_WEIGHT * MOLARMASS)
#define H3MASS (H3_MASS / AVOGADRO)
#define He3_WEIGHT (3.01602932265)
#define He3_MASS (3.01602932265 * MOLARMASS)
#define He3MASS (He3_MASS / AVOGADRO)
#define He4_WEIGHT (4.002603254130)
#define He4_MASS (4.002603254130 * MOLARMASS)
#define He4MASS (He4_MASS / AVOGADRO)
#define C12_WEIGHT (12.0)
#define C12_MASS (12.0 * MOLARMASS)
#define C12MASS (C12_MASS / AVOGADRO)
#define C13_WEIGHT (13.00335483521)
#define C13_MASS (13.00335483521 * MOLARMASS)
#define C13MASS (C13_MASS / AVOGADRO)
#define C14_WEIGHT (14.003241988)
#define C14_MASS (14.003241988 * MOLARMASS)
#define C14MASS (C14_MASS / AVOGADRO)
#define O16_WEIGHT (15.99491461960)
#define O16_MASS (15.99491461960 * MOLARMASS)
#define O16MASS (O16_MASS / AVOGADRO)
#define O17_WEIGHT (16.9991317566)
#define O17_MASS (16.9991317566 * MOLARMASS)
#define O17MASS (O17_MASS / AVOGADRO)
#define O18_WEIGHT (17.9991596128)
#define O18_MASS (17.9991596128 * MOLARMASS)
#define O18MASS (O18_MASS / AVOGADRO)
#define DEUTERON_WEIGHT (2.013553212745)
#define DEUTERON_MASS (2.013553212745 * MOLARMASS)
#define DEUTERONMASS (DEUTERON_MASS / AVOGADRO)
#define DEUTERONMASS_ERR (2.0E-11)
#define DEUTERONENERGY (DEUTERONMASS * (LIGHT * LIGHT))
#define HELION_WEIGHT (3.0149322467175)
#define HELION_MASS (3.0149322467175 * MOLARMASS)
#define HELIONMASS (HELION_MASS / AVOGADRO)
#define HELIONMASS_ERR (3.2E-11)
#define HELIONENERGY (HELIONMASS * (LIGHT * LIGHT))
#define TRITON_WEIGHT (3.01550071621)
#define TRITON_MASS (3.01550071621 * MOLARMASS)
#define TRITONMASS (TRITON_MASS / AVOGADRO)
#define TRITONMASS_ERR (4.0E-11)
#define TRITONENERGY (TRITONMASS * (LIGHT * LIGHT))
#define ALPHA_WEIGHT (4.001506179127)
#define ALPHA_MASS (4.001506179127 * MOLARMASS)
#define ALPHAMASS (ALPHA_MASS / AVOGADRO)
#define ALPHAMASS_ERR (1.6E-11)
#define ALPHAENERGY (ALPHAMASS * (LIGHT * LIGHT))
#define UPQUARK_ENERGY (2.3E+6 * eV)
#define UPQUARKMASS (UPQUARK_ENERGY / (LIGHT * LIGHT))
#define UPQUARK_MASS (UPQUARKMASS * AVOGADRO)
#define UPQUARKMASS_ERR (0.7E+6 / 2.3E+6)
#define UPQUARK_Hz (UPQUARK_ENERGY / PLANCK)
#define UPQUARK_WAVELENGTH (LIGHT / UPQUARK_Hz)
#define UPQUARK_CHARGE (2.0 / 3.0 * ELEMENTARYCHARGE)
#define DOWNQUARK_ENERGY (4.8E+6 * eV)
#define DOWNQUARKMASS (DOWNQUARK_ENERGY / (LIGHT * LIGHT))
#define DOWNQUARK_MASS (DOWNQUARKMASS * AVOGADRO)
#define DOWNQUARKMASS_ERR (0.5E+6 / 4.8E+6)
#define DOWNQUARK_Hz (DOWNQUARK_ENERGY / PLANCK)
#define DOWNQUARK_WAVELENGTH (LIGHT / DOWNQUARK_Hz)
#define DOWNQUARK_CHARGE (- 1.0 / 3.0 * ELEMENTARYCHARGE)
#define CHARMQUARK_ENERGY (1275E+6 * eV)
#define CHARMQUARKMASS (CHARMQUARK_ENERGY / (LIGHT * LIGHT))
#define CHARMQUARK_MASS (CHARMQUARKMASS * AVOGADRO)
#define CHARMQUARKMASS_ERR (25E+6 / 1275E+6)
#define CHARMQUARK_Hz (CHARMQUARK_ENERGY / PLANCK)
#define CHARMQUARK_WAVELENGTH (LIGHT / CHARMQUARK_Hz)
#define CHARMQUARK_CHARGE (2.0 / 3.0 * ELEMENTARYCHARGE)
#define STRANGEQUARK_ENERGY (95E+6 * eV)
#define STRANGEQUARKMASS (STRANGEQUARK_ENERGY / (LIGHT * LIGHT))
#define STRANGEQUARK_MASS (STRANGEQUARKMASS * AVOGADRO)
#define STRANGEQUARKMASS_ERR (5E+6 / 95E+6)
#define STRANGEQUARK_Hz (STRANGEQUARK_ENERGY / PLANCK)
#define STRANGEQUARK_WAVELENGTH (LIGHT / STRANGEQUARK_Hz)
#define STRANGEQUARK_CHARGE (- 1.0 / 3.0 * ELEMENTARYCHARGE)
#define TOPQUARK_ENERGY (173210E+6 * eV)
#define TOPQUARKMASS (TOPQUARK_ENERGY / (LIGHT * LIGHT))
#define TOPQUARK_MASS (TOPQUARKMASS * AVOGADRO)
#define TOPQUARKMASS_ERR (710E+6 / 173210E+6)
#define TOPQUARK_Hz (TOPQUARK_ENERGY / PLANCK)
#define TOPQUARK_WAVELENGTH (LIGHT / TOPQUARK_Hz)
#define TOPQUARK_CHARGE (2.0 / 3.0 * ELEMENTARYCHARGE)
#define BOTTOMQUARK_ENERGY (4180E+6 * eV)
#define BOTTOMQUARKMASS (BOTTOMQUARK_ENERGY / (LIGHT * LIGHT))
#define BOTTOMQUARK_MASS (BOTTOMQUARKMASS * AVOGADRO)
#define BOTTOMQUARKMASS_ERR (30E+6 / 4180E+6)
#define BOTTOMQUARK_Hz (BOTTOMQUARK_ENERGY / PLANCK)
#define BOTTOMQUARK_WAVELENGTH (LIGHT / BOTTOMQUARK_Hz)
#define BOTTOMQUARK_CHARGE (- 1.0 / 3.0 * ELEMENTARYCHARGE)
#define HIGGSBOSON_ENERGY (125.1E+9 * eV)
#define HIGGSBOSONMASS (HIGGSBOSON_ENERGY / (LIGHT * LIGHT))
#define HIGGSBOSON_MASS (HIGGSBOSONMASS * AVOGADRO)
#define HIGGSBOSONMASS_ERR (0.14E+9 / 125.1E+9)
#define HIGGSBOSON_Hz (HIGGSBOSON_ENERGY / PLANCK)
#define HIGGSBOSON_WAVELENGTH (LIGHT / HIGGSBOSON_Hz)
#define WBOSON_ENERGY (80.379E+9 * eV)
#define WBOSONMASS (WBOSON_ENERGY / (LIGHT * LIGHT))
#define WBOSON_MASS (WBOSONMASS * AVOGADRO)
#define WBOSONMASS_ERR (0.012E+9 / 80.379E+9)
#define WBOSON_Hz (WBOSON_ENERGY / PLANCK)
#define WBOSON_WAVELENGTH (LIGHT / WBOSON_Hz)
#define ZBOSON_ENERGY (91.1876E+9 * eV)
#define ZBOSONMASS (ZBOSON_ENERGY / (LIGHT * LIGHT))
#define ZBOSON_MASS (ZBOSONMASS * AVOGADRO)
#define ZBOSONMASS_ERR (0.0023E+9 / 91.1876E+9)
#define ZBOSON_Hz (ZBOSON_ENERGY / PLANCK)
#define ZBOSON_WAVELENGTH (LIGHT / ZBOSON_Hz)
#define TAU_ENERGY (1776.86E+6 * eV)
#define TAUMASS (TAU_ENERGY / (LIGHT * LIGHT))
#define TAU_MASS (TAUMASS * AVOGADRO)
#define TAUMASS_ERR (0.12E+6 / 1776.86E+6)
#define TAU_Hz (TAU_ENERGY / PLANCK)
#define TAU_WAVELENGTH (LIGHT / TAU_Hz)
#define MUON_ENERGY (105.6583755E+6 * eV)
#define MUONMASS (MUON_ENERGY / (LIGHT * LIGHT))
#define MUON_MASS (MUONMASS * AVOGADRO)
#define MUONMASS_ERR (0.0000023E+6 / 105.6583755E+6)
#define MUON_Hz (MUON_ENERGY / PLANCK)
#define MUON_WAVELENGTH (LIGHT / MUON_Hz)
#define ELECTRON_ENERGY (0.51099895000E+6 * eV)
#define ELECTRONMASS (ELECTRON_ENERGY / (LIGHT * LIGHT))
#define ELECTRON_MASS (ELECTRONMASS * AVOGADRO)
#define ELECTRONMASS_ERR (0.00000000015E+6 / 0.51099895000E+6)
#define ELECTRON_Hz (ELECTRON_ENERGY / PLANCK)
#define ELECTRON_WAVELENGTH (LIGHT / ELECTRON_Hz)
#define PROTON_ENERGY (938.27208816E+6 * eV)
#define PROTONMASS (PROTON_ENERGY / (LIGHT * LIGHT))
#define PROTON_MASS (PROTONMASS * AVOGADRO)
#define PROTONMASS_ERR (0.00000029E+6 / 938.27208816E+6)
#define PROTON_Hz (PROTON_ENERGY / PLANCK)
#define PROTON_WAVELENGTH (LIGHT / PROTON_Hz)
#define NEUTRON_ENERGY (939.56542052E+6 * eV)
#define NEUTRONMASS (NEUTRON_ENERGY / (LIGHT * LIGHT))
#define NEUTRON_MASS (NEUTRONMASS * AVOGADRO)
#define NEUTRONMASS_ERR (0.00000054E+6 / 939.56542052E+6)
#define NEUTRON_Hz (NEUTRON_ENERGY / PLANCK)
#define NEUTRON_WAVELENGTH (LIGHT / NEUTRON_Hz)
#define HYDROGEN_RADIUS ((HBAR / (ELECTRON_MASS * LIGHT * ALPHA)))
#define HYDROGEN_RADIUS_ERR (ALPHA_ERR)
#define BOHRRADIUS (HYDROGEN_RADIUS)
#define BOHRRADIUS_ERR (HYDROGEN_RADIUS_ERR)
#define AIR_MASS (PPM * (7.80781E+5 * (2.0 * N_MASS) + 2.09444E+5 * (2.0\
         * O_MASS) + 9.339E+3 * (Ar_MASS) + 4.1E+2 * (C_MASS + 2.0 *\
         O_MASS) + 1.818E+1 * (Ne_MASS) + 5.24 * (He_MASS) + 1.79 *\
         (C_MASS + 4.0 * H_MASS) + 1.14 * (Kr_MASS) + 0.55 * (2.0 * H_MASS)))
#define AIRMASS (AIR_MASS / AVOGADRO)
#define STEAM_MASS (2 * H_MASS + 0 * C_MASS + 1 * O_MASS)
#define STEAMMASS (STEAM_MASS / AVOGADRO)
#define STEAM_HF (- 241826 * JOULE / MOLE)
#define STEAM_HC (0.0 * JOULE / MOLE)
#define STEAM_JPKG (- STEAM_HC / STEAM_MASS)
#define STEAM_DENSITY (0.7363 * DENSITY)
#define STEAM_JPL (STEAM_JPKG * STEAM_DENSITY * LITER)
#define H2O_MASS (2 * H_MASS + 0 * C_MASS + 1 * O_MASS)
#define H2OMASS (H2O_MASS / AVOGADRO)
#define H2O_HF (- 285830 * JOULE / MOLE)
#define H2O_HC (0.0 * JOULE / MOLE)
#define H2O_JPKG (- H2O_HC / H2O_MASS)
#define H2O_DENSITY (999 * DENSITY)
#define H2O_JPL (H2O_JPKG * H2O_DENSITY * LITER)
#define WATER_MASS (2 * H_MASS + 0 * C_MASS + 1 * O_MASS)
#define WATERMASS (WATER_MASS / AVOGADRO)
#define WATER_HF (- 285830 * JOULE / MOLE)
#define WATER_HC (0.0 * JOULE / MOLE)
#define WATER_JPKG (- WATER_HC / WATER_MASS)
#define WATER_DENSITY (999 * DENSITY)
#define WATER_JPL (WATER_JPKG * WATER_DENSITY * LITER)
#define CO2_MASS (0 * H_MASS + 1 * C_MASS + 2 * O_MASS)
#define CO2MASS (CO2_MASS / AVOGADRO)
#define CO2_HF (- 393510 * JOULE / MOLE)
#define CO2_HC (0.0 * JOULE / MOLE)
#define CO2_JPKG (- CO2_HC / CO2_MASS)
#define CO2_DENSITY (1.7988 * DENSITY)
#define CO2_JPL (CO2_JPKG * CO2_DENSITY * LITER)
#define CARBONDIOXIDE_MASS (0 * H_MASS + 1 * C_MASS + 2 * O_MASS)
#define CARBONDIOXIDEMASS (CARBONDIOXIDE_MASS / AVOGADRO)
#define CARBONDIOXIDE_HF (- 393510 * JOULE / MOLE)
#define CARBONDIOXIDE_HC (0.0 * JOULE / MOLE)
#define CARBONDIOXIDE_JPKG (- CARBONDIOXIDE_HC / CARBONDIOXIDE_MASS)
#define CARBONDIOXIDE_DENSITY (1.7988 * DENSITY)
#define CARBONDIOXIDE_JPL (CARBONDIOXIDE_JPKG * CARBONDIOXIDE_DENSITY *\
         LITER)
#define O2_MASS (0 * H_MASS + 0 * C_MASS + 2 * O_MASS)
#define O2MASS (O2_MASS / AVOGADRO)
#define O2_HF (0 * JOULE / MOLE)
#define O2_HC (0.0 * JOULE / MOLE)
#define O2_JPKG (- O2_HC / O2_MASS)
#define O2_DENSITY (1.3079 * DENSITY)
#define O2_JPL (O2_JPKG * O2_DENSITY * LITER)
#define HYDROGEN_MASS (2 * H_MASS + 0 * C_MASS + 0 * O_MASS)
#define HYDROGENMASS (HYDROGEN_MASS / AVOGADRO)
#define HYDROGEN_HF (0 * JOULE / MOLE)
#define HYDROGEN_HC ((CO2_HF * 0 + H2O_HF * (2 / 2.0) + HYDROGEN_HF))
#define HYDROGEN_HCC (- 2.86E+5 * JOULE / MOLE)
#define HYDROGEN_JPKG (- HYDROGEN_HC / HYDROGEN_MASS)
#define HYDROGEN_DENSITY (0.08240 * DENSITY)
#define HYDROGEN_JPL (HYDROGEN_JPKG * HYDROGEN_DENSITY * LITER)
#define METHANE_MASS (4 * H_MASS + 1 * C_MASS + 0 * O_MASS)
#define METHANEMASS (METHANE_MASS / AVOGADRO)
#define METHANE_HF (- 74870 * JOULE / MOLE)
#define METHANE_HC ((CO2_HF * 1 + H2O_HF * (4 / 2.0) + METHANE_HF))
#define METHANE_HCC (- 8.907E+5 * JOULE / MOLE)
#define METHANE_JPKG (- METHANE_HC / METHANE_MASS)
#define METHANE_DENSITY (0.6557 * DENSITY)
#define METHANE_JPL (METHANE_JPKG * METHANE_DENSITY * LITER)
#define ETHANE_MASS (6 * H_MASS + 2 * C_MASS + 0 * O_MASS)
#define ETHANEMASS (ETHANE_MASS / AVOGADRO)
#define ETHANE_HF (- 84000 * JOULE / MOLE)
#define ETHANE_HC ((CO2_HF * 2 + H2O_HF * (6 / 2.0) + ETHANE_HF))
#define ETHANE_HCC (- 1.5607E+6 * JOULE / MOLE)
#define ETHANE_JPKG (- ETHANE_HC / ETHANE_MASS)
#define ETHANE_DENSITY (1.229 * DENSITY)
#define ETHANE_JPL (ETHANE_JPKG * ETHANE_DENSITY * LITER)
#define PROPANE_MASS (8 * H_MASS + 3 * C_MASS + 0 * O_MASS)
#define PROPANEMASS (PROPANE_MASS / AVOGADRO)
#define PROPANE_HF (- 104700 * JOULE / MOLE)
#define PROPANE_HC ((CO2_HF * 3 + H2O_HF * (8 / 2.0) + PROPANE_HF))
#define PROPANE_HCC (- 2.2192E+6 * JOULE / MOLE)
#define PROPANE_JPKG (- PROPANE_HC / PROPANE_MASS)
#define PROPANE_DENSITY (1.8028 * DENSITY)
#define PROPANE_JPL (PROPANE_JPKG * PROPANE_DENSITY * LITER)
#define BUTANE_MASS (10 * H_MASS + 4 * C_MASS + 0 * O_MASS)
#define BUTANEMASS (BUTANE_MASS / AVOGADRO)
#define BUTANE_HF (- 125600 * JOULE / MOLE)
#define BUTANE_HC ((CO2_HF * 4 + H2O_HF * (10 / 2.0) + BUTANE_HF))
#define BUTANE_HCC (- 2.8775E+6 * JOULE / MOLE)
#define BUTANE_JPKG (- BUTANE_HC / BUTANE_MASS)
#define BUTANE_DENSITY (2.3757 * DENSITY)
#define BUTANE_JPL (BUTANE_JPKG * BUTANE_DENSITY * LITER)
#define PENTANE_MASS (12 * H_MASS + 5 * C_MASS + 0 * O_MASS)
#define PENTANEMASS (PENTANE_MASS / AVOGADRO)
#define PENTANE_HF (- 173500 * JOULE / MOLE)
#define PENTANE_HC ((CO2_HF * 5 + H2O_HF * (12 / 2.0) + PENTANE_HF))
#define PENTANE_HCC (- 3.509E+6 * JOULE / MOLE)
#define PENTANE_JPKG (- PENTANE_HC / PENTANE_MASS)
#define PENTANE_DENSITY (626 * DENSITY)
#define PENTANE_JPL (PENTANE_JPKG * PENTANE_DENSITY * LITER)
#define HEXANE_MASS (14 * H_MASS + 6 * C_MASS + 0 * O_MASS)
#define HEXANEMASS (HEXANE_MASS / AVOGADRO)
#define HEXANE_HF (- 198700 * JOULE / MOLE)
#define HEXANE_HC ((CO2_HF * 6 + H2O_HF * (14 / 2.0) + HEXANE_HF))
#define HEXANE_HCC (- 4.163E+6 * JOULE / MOLE)
#define HEXANE_JPKG (- HEXANE_HC / HEXANE_MASS)
#define HEXANE_DENSITY (655 * DENSITY)
#define HEXANE_JPL (HEXANE_JPKG * HEXANE_DENSITY * LITER)
#define ETHANOL_MASS (6 * H_MASS + 2 * C_MASS + 1 * O_MASS)
#define ETHANOLMASS (ETHANOL_MASS / AVOGADRO)
#define ETHANOL_HF (- 276000 * JOULE / MOLE)
#define ETHANOL_HC ((CO2_HF * 2 + H2O_HF * (6 / 2.0) + ETHANOL_HF))
#define ETHANOL_HCC (- 1.3676E+6 * JOULE / MOLE)
#define ETHANOL_JPKG (- ETHANOL_HC / ETHANOL_MASS)
#define ETHANOL_DENSITY (789.45 * DENSITY)
#define ETHANOL_JPL (ETHANOL_JPKG * ETHANOL_DENSITY * LITER)
#define ETHANOL_G_MASS (6 * H_MASS + 2 * C_MASS + 1 * O_MASS)
#define ETHANOL_GMASS (ETHANOL_G_MASS / AVOGADRO)
#define ETHANOL_G_HF (- 234000 * JOULE / MOLE)
#define ETHANOL_G_HC ((CO2_HF * 2 + H2O_HF * (6 / 2.0) + ETHANOL_G_HF))
#define ETHANOL_G_HCC (- 1.3663E+6 * JOULE / MOLE)
#define ETHANOL_G_JPKG (- ETHANOL_G_HC / ETHANOL_G_MASS)
#define ETHANOL_G_DENSITY (789.45 * DENSITY)
#define ETHANOL_G_JPL (ETHANOL_G_JPKG * ETHANOL_G_DENSITY * LITER)
#define SUCROSE_MASS (22 * H_MASS + 12 * C_MASS + 11 * O_MASS)
#define SUCROSEMASS (SUCROSE_MASS / AVOGADRO)
#define SUCROSE_HF (- 2221200 * JOULE / MOLE)
#define SUCROSE_HC ((CO2_HF * 12 + H2O_HF * (22 / 2.0) + SUCROSE_HF))
#define SUCROSE_HCC (- 5.6434E+6 * JOULE / MOLE)
#define SUCROSE_JPKG (- SUCROSE_HC / SUCROSE_MASS)
#define SUCROSE_DENSITY (1587 * DENSITY)
#define SUCROSE_JPL (SUCROSE_JPKG * SUCROSE_DENSITY * LITER)
#define SUGAR_MASS (22 * H_MASS + 12 * C_MASS + 11 * O_MASS)
#define SUGARMASS (SUGAR_MASS / AVOGADRO)
#define SUGAR_HF (- 2221200 * JOULE / MOLE)
#define SUGAR_HC ((CO2_HF * 12 + H2O_HF * (22 / 2.0) + SUGAR_HF))
#define SUGAR_HCC (- 5.6434E+6 * JOULE / MOLE)
#define SUGAR_JPKG (- SUGAR_HC / SUGAR_MASS)
#define SUGAR_DENSITY (845 * DENSITY)
#define SUGAR_JPL (SUGAR_JPKG * SUGAR_DENSITY * LITER)
#define COAL_MASS (0 * H_MASS + 1 * C_MASS + 0 * O_MASS)
#define COALMASS (COAL_MASS / AVOGADRO)
#define COAL_JPKG (2.9307E+7 * (JOULE / KG))
#define COAL_DENSITY (1300 * DENSITY)
#define COAL_JPL (COAL_JPKG * COAL_DENSITY * LITER)
#define PARAFFIN_MASS (62 * H_MASS + 30 * C_MASS + 0 * O_MASS)
#define PARAFFINMASS (PARAFFIN_MASS / AVOGADRO)
#define PARAFFIN_JPKG (4.6E+7 * (JOULE / KG))
#define PARAFFIN_DENSITY (900 * DENSITY)
#define PARAFFIN_JPL (PARAFFIN_JPKG * PARAFFIN_DENSITY * LITER)
#define FAT_MASS (104 * H_MASS + 55 * C_MASS + 6 * O_MASS)
#define FATMASS (FAT_MASS / AVOGADRO)
#define FAT_JPKG (3.7E+7 * (JOULE / KG))
#define FAT_DENSITY (900 * DENSITY)
#define FAT_JPL (FAT_JPKG * FAT_DENSITY * LITER)
#define DIESEL_MASS (26 * H_MASS + 12 * C_MASS + 0 * O_MASS)
#define DIESELMASS (DIESEL_MASS / AVOGADRO)
#define DIESEL_JPKG (4.48E+7 * (JOULE / KG))
#define DIESEL_DENSITY (832 * DENSITY)
#define DIESEL_JPL (DIESEL_JPKG * DIESEL_DENSITY * LITER)
#define GASOLINE_MASS (18 * H_MASS + 8 * C_MASS + 0 * O_MASS)
#define GASOLINEMASS (GASOLINE_MASS / AVOGADRO)
#define GASOLINE_JPKG (4.64E+7 * (JOULE / KG))
#define GASOLINE_DENSITY (748.9 * DENSITY)
#define GASOLINE_JPL (GASOLINE_JPKG * GASOLINE_DENSITY * LITER)
#define KEROSENE_MASS (28 * H_MASS + 13 * C_MASS + 0 * O_MASS)
#define KEROSENEMASS (KEROSENE_MASS / AVOGADRO)
#define KEROSENE_JPKG (4.62E+7 * (JOULE / KG))
#define KEROSENE_DENSITY (800 * DENSITY)
#define KEROSENE_JPL (KEROSENE_JPKG * KEROSENE_DENSITY * LITER)
#define C13_RATIO (1.07E-2)
#define C14_RATIO (1.0E-12)
#define C12_RATIO (1.0 - C13_RATIO - C14_RATIO)
#define C_MEAN_MASS (C12_MASS * C12_RATIO + C13_MASS * C13_RATIO +\
         C14_MASS * C14_RATIO)
#define WATER_Cp (4184.0 * SPECIFICHEAT)
#define ICE_Cp (2108.0 * SPECIFICHEAT)
#define STEAM_Cp (1996.0 * SPECIFICHEAT)
#define WATER_FUSION_JPMOLE (6.0089E+3 * JOULE / MOLE)
#define WATER_FUSION_JPKG (WATER_FUSION_JPMOLE / WATER_MASS)
#define WATER_VAPORIZATION_JPMOLE (4.0660E+4 * JOULE / MOLE)
#define WATER_VAPORIZATION_JPKG (WATER_VAPORIZATION_JPMOLE / WATER_MASS)
#define WATER_CRITICAL (647.096 * KELVIN)
#define VSMOW_H3_RATIO (1.85E-17)
#define VSMOW_H2_RATIO (1.5576E-4)
#define VSMOW_H1_RATIO (1.0 - VSMOW_H2_RATIO - VSMOW_H3_RATIO)
#define VSMOW_H_MASS (H1_MASS * VSMOW_H1_RATIO + H2_MASS * VSMOW_H2_RATIO\
         + H3_MASS * VSMOW_H3_RATIO)
#define VSMOW_O18_RATIO (2.00520E-3)
#define VSMOW_O17_RATIO (3.799E-4)
#define VSMOW_O16_RATIO (1.0 - VSMOW_O17_RATIO - VSMOW_O18_RATIO)
#define VSMOW_O_MASS (O16_MASS * VSMOW_O16_RATIO + O17_MASS *\
         VSMOW_O17_RATIO + O18_MASS * VSMOW_O18_RATIO)
#define VSMOW_MASS (2.0 * VSMOW_H_MASS + VSMOW_O_MASS)
#define TNTJPKG (4.184E+6 * JOULE / KILOGRAM)
//  CCCCCCCCCCX_FUNC_PROTO ######################################### LANG_C #
double cxHYDROGEN_Z(void);
double cxHYDROGEN(void);
double cxH_Z(void);
double cxH_WEIGHT(void);
double cxH_MASS(void);
double cxHMASS(void);
double cxH_DENSITY(void);
double cxH_MELT(void);
double cxH_BOIL(void);
double cxH_Cp(void);
double cxH_En(void);
double cxHELIUM_Z(void);
double cxHELIUM(void);
double cxHe_Z(void);
double cxHe_WEIGHT(void);
double cxHe_MASS(void);
double cxHeMASS(void);
double cxHe_DENSITY(void);
double cxHe_MELT(void);
double cxHe_BOIL(void);
double cxHe_Cp(void);
double cxHe_En(void);
double cxLITHIUM_Z(void);
double cxLITHIUM(void);
double cxLi_Z(void);
double cxLi_WEIGHT(void);
double cxLi_MASS(void);
double cxLiMASS(void);
double cxLi_DENSITY(void);
double cxLi_MELT(void);
double cxLi_BOIL(void);
double cxLi_Cp(void);
double cxLi_En(void);
double cxBERYLLIUM_Z(void);
double cxBERYLLIUM(void);
double cxBe_Z(void);
double cxBe_WEIGHT(void);
double cxBe_MASS(void);
double cxBeMASS(void);
double cxBe_DENSITY(void);
double cxBe_MELT(void);
double cxBe_BOIL(void);
double cxBe_Cp(void);
double cxBe_En(void);
double cxBORON_Z(void);
double cxBORON(void);
double cxB_Z(void);
double cxB_WEIGHT(void);
double cxB_MASS(void);
double cxBMASS(void);
double cxB_DENSITY(void);
double cxB_MELT(void);
double cxB_BOIL(void);
double cxB_Cp(void);
double cxB_En(void);
double cxCARBON_Z(void);
double cxCARBON(void);
double cxC_Z(void);
double cxC_WEIGHT(void);
double cxC_MASS(void);
double cxCMASS(void);
double cxC_DENSITY(void);
double cxC_MELT(void);
double cxC_BOIL(void);
double cxC_Cp(void);
double cxC_En(void);
double cxNITROGEN_Z(void);
double cxNITROGEN(void);
double cxN_Z(void);
double cxN_WEIGHT(void);
double cxN_MASS(void);
double cxNMASS(void);
double cxN_DENSITY(void);
double cxN_MELT(void);
double cxN_BOIL(void);
double cxN_Cp(void);
double cxN_En(void);
double cxOXYGEN_Z(void);
double cxOXYGEN(void);
double cxO_Z(void);
double cxO_WEIGHT(void);
double cxO_MASS(void);
double cxOMASS(void);
double cxO_DENSITY(void);
double cxO_MELT(void);
double cxO_BOIL(void);
double cxO_Cp(void);
double cxO_En(void);
double cxFLUORINE_Z(void);
double cxFLUORINE(void);
double cxF_Z(void);
double cxF_WEIGHT(void);
double cxF_MASS(void);
double cxFMASS(void);
double cxF_DENSITY(void);
double cxF_MELT(void);
double cxF_BOIL(void);
double cxF_Cp(void);
double cxF_En(void);
double cxNEON_Z(void);
double cxNEON(void);
double cxNe_Z(void);
double cxNe_WEIGHT(void);
double cxNe_MASS(void);
double cxNeMASS(void);
double cxNe_DENSITY(void);
double cxNe_MELT(void);
double cxNe_BOIL(void);
double cxNe_Cp(void);
double cxNe_En(void);
double cxSODIUM_Z(void);
double cxSODIUM(void);
double cxNa_Z(void);
double cxNa_WEIGHT(void);
double cxNa_MASS(void);
double cxNaMASS(void);
double cxNa_DENSITY(void);
double cxNa_MELT(void);
double cxNa_BOIL(void);
double cxNa_Cp(void);
double cxNa_En(void);
double cxMAGNESIUM_Z(void);
double cxMAGNESIUM(void);
double cxMg_Z(void);
double cxMg_WEIGHT(void);
double cxMg_MASS(void);
double cxMgMASS(void);
double cxMg_DENSITY(void);
double cxMg_MELT(void);
double cxMg_BOIL(void);
double cxMg_Cp(void);
double cxMg_En(void);
double cxALUMINIUM_Z(void);
double cxALUMINIUM(void);
double cxAl_Z(void);
double cxAl_WEIGHT(void);
double cxAl_MASS(void);
double cxAlMASS(void);
double cxAl_DENSITY(void);
double cxAl_MELT(void);
double cxAl_BOIL(void);
double cxAl_Cp(void);
double cxAl_En(void);
double cxSILICON_Z(void);
double cxSILICON(void);
double cxSi_Z(void);
double cxSi_WEIGHT(void);
double cxSi_MASS(void);
double cxSiMASS(void);
double cxSi_DENSITY(void);
double cxSi_MELT(void);
double cxSi_BOIL(void);
double cxSi_Cp(void);
double cxSi_En(void);
double cxPHOSPHORUS_Z(void);
double cxPHOSPHORUS(void);
double cxP_Z(void);
double cxP_WEIGHT(void);
double cxP_MASS(void);
double cxPMASS(void);
double cxP_DENSITY(void);
double cxP_MELT(void);
double cxP_BOIL(void);
double cxP_Cp(void);
double cxP_En(void);
double cxSULFUR_Z(void);
double cxSULFUR(void);
double cxS_Z(void);
double cxS_WEIGHT(void);
double cxS_MASS(void);
double cxSMASS(void);
double cxS_DENSITY(void);
double cxS_MELT(void);
double cxS_BOIL(void);
double cxS_Cp(void);
double cxS_En(void);
double cxCHLORINE_Z(void);
double cxCHLORINE(void);
double cxCl_Z(void);
double cxCl_WEIGHT(void);
double cxCl_MASS(void);
double cxClMASS(void);
double cxCl_DENSITY(void);
double cxCl_MELT(void);
double cxCl_BOIL(void);
double cxCl_Cp(void);
double cxCl_En(void);
double cxARGON_Z(void);
double cxARGON(void);
double cxAr_Z(void);
double cxAr_WEIGHT(void);
double cxAr_MASS(void);
double cxArMASS(void);
double cxAr_DENSITY(void);
double cxAr_MELT(void);
double cxAr_BOIL(void);
double cxAr_Cp(void);
double cxAr_En(void);
double cxPOTASSIUM_Z(void);
double cxPOTASSIUM(void);
double cxK_Z(void);
double cxK_WEIGHT(void);
double cxK_MASS(void);
double cxKMASS(void);
double cxK_DENSITY(void);
double cxK_MELT(void);
double cxK_BOIL(void);
double cxK_Cp(void);
double cxK_En(void);
double cxCALCIUM_Z(void);
double cxCALCIUM(void);
double cxCa_Z(void);
double cxCa_WEIGHT(void);
double cxCa_MASS(void);
double cxCaMASS(void);
double cxCa_DENSITY(void);
double cxCa_MELT(void);
double cxCa_BOIL(void);
double cxCa_Cp(void);
double cxCa_En(void);
double cxSCANDIUM_Z(void);
double cxSCANDIUM(void);
double cxSc_Z(void);
double cxSc_WEIGHT(void);
double cxSc_MASS(void);
double cxScMASS(void);
double cxSc_DENSITY(void);
double cxSc_MELT(void);
double cxSc_BOIL(void);
double cxSc_Cp(void);
double cxSc_En(void);
double cxTITANIUM_Z(void);
double cxTITANIUM(void);
double cxTi_Z(void);
double cxTi_WEIGHT(void);
double cxTi_MASS(void);
double cxTiMASS(void);
double cxTi_DENSITY(void);
double cxTi_MELT(void);
double cxTi_BOIL(void);
double cxTi_Cp(void);
double cxTi_En(void);
double cxVANADIUM_Z(void);
double cxVANADIUM(void);
double cxV_Z(void);
double cxV_WEIGHT(void);
double cxV_MASS(void);
double cxVMASS(void);
double cxV_DENSITY(void);
double cxV_MELT(void);
double cxV_BOIL(void);
double cxV_Cp(void);
double cxV_En(void);
double cxCHROMIUM_Z(void);
double cxCHROMIUM(void);
double cxCr_Z(void);
double cxCr_WEIGHT(void);
double cxCr_MASS(void);
double cxCrMASS(void);
double cxCr_DENSITY(void);
double cxCr_MELT(void);
double cxCr_BOIL(void);
double cxCr_Cp(void);
double cxCr_En(void);
double cxMANGANESE_Z(void);
double cxMANGANESE(void);
double cxMn_Z(void);
double cxMn_WEIGHT(void);
double cxMn_MASS(void);
double cxMnMASS(void);
double cxMn_DENSITY(void);
double cxMn_MELT(void);
double cxMn_BOIL(void);
double cxMn_Cp(void);
double cxMn_En(void);
double cxIRON_Z(void);
double cxIRON(void);
double cxFe_Z(void);
double cxFe_WEIGHT(void);
double cxFe_MASS(void);
double cxFeMASS(void);
double cxFe_DENSITY(void);
double cxFe_MELT(void);
double cxFe_BOIL(void);
double cxFe_Cp(void);
double cxFe_En(void);
double cxCOBALT_Z(void);
double cxCOBALT(void);
double cxCo_Z(void);
double cxCo_WEIGHT(void);
double cxCo_MASS(void);
double cxCoMASS(void);
double cxCo_DENSITY(void);
double cxCo_MELT(void);
double cxCo_BOIL(void);
double cxCo_Cp(void);
double cxCo_En(void);
double cxNICKEL_Z(void);
double cxNICKEL(void);
double cxNi_Z(void);
double cxNi_WEIGHT(void);
double cxNi_MASS(void);
double cxNiMASS(void);
double cxNi_DENSITY(void);
double cxNi_MELT(void);
double cxNi_BOIL(void);
double cxNi_Cp(void);
double cxNi_En(void);
double cxCOPPER_Z(void);
double cxCOPPER(void);
double cxCu_Z(void);
double cxCu_WEIGHT(void);
double cxCu_MASS(void);
double cxCuMASS(void);
double cxCu_DENSITY(void);
double cxCu_MELT(void);
double cxCu_BOIL(void);
double cxCu_Cp(void);
double cxCu_En(void);
double cxZINC_Z(void);
double cxZINC(void);
double cxZn_Z(void);
double cxZn_WEIGHT(void);
double cxZn_MASS(void);
double cxZnMASS(void);
double cxZn_DENSITY(void);
double cxZn_MELT(void);
double cxZn_BOIL(void);
double cxZn_Cp(void);
double cxZn_En(void);
double cxGALLIUM_Z(void);
double cxGALLIUM(void);
double cxGa_Z(void);
double cxGa_WEIGHT(void);
double cxGa_MASS(void);
double cxGaMASS(void);
double cxGa_DENSITY(void);
double cxGa_MELT(void);
double cxGa_BOIL(void);
double cxGa_Cp(void);
double cxGa_En(void);
double cxGERMANIUM_Z(void);
double cxGERMANIUM(void);
double cxGe_Z(void);
double cxGe_WEIGHT(void);
double cxGe_MASS(void);
double cxGeMASS(void);
double cxGe_DENSITY(void);
double cxGe_MELT(void);
double cxGe_BOIL(void);
double cxGe_Cp(void);
double cxGe_En(void);
double cxARSENIC_Z(void);
double cxARSENIC(void);
double cxAs_Z(void);
double cxAs_WEIGHT(void);
double cxAs_MASS(void);
double cxAsMASS(void);
double cxAs_DENSITY(void);
double cxAs_MELT(void);
double cxAs_BOIL(void);
double cxAs_Cp(void);
double cxAs_En(void);
double cxSELENIUM_Z(void);
double cxSELENIUM(void);
double cxSe_Z(void);
double cxSe_WEIGHT(void);
double cxSe_MASS(void);
double cxSeMASS(void);
double cxSe_DENSITY(void);
double cxSe_MELT(void);
double cxSe_BOIL(void);
double cxSe_Cp(void);
double cxSe_En(void);
double cxBROMINE_Z(void);
double cxBROMINE(void);
double cxBr_Z(void);
double cxBr_WEIGHT(void);
double cxBr_MASS(void);
double cxBrMASS(void);
double cxBr_DENSITY(void);
double cxBr_MELT(void);
double cxBr_BOIL(void);
double cxBr_Cp(void);
double cxBr_En(void);
double cxKRYPTON_Z(void);
double cxKRYPTON(void);
double cxKr_Z(void);
double cxKr_WEIGHT(void);
double cxKr_MASS(void);
double cxKrMASS(void);
double cxKr_DENSITY(void);
double cxKr_MELT(void);
double cxKr_BOIL(void);
double cxKr_Cp(void);
double cxKr_En(void);
double cxRUBIDIUM_Z(void);
double cxRUBIDIUM(void);
double cxRb_Z(void);
double cxRb_WEIGHT(void);
double cxRb_MASS(void);
double cxRbMASS(void);
double cxRb_DENSITY(void);
double cxRb_MELT(void);
double cxRb_BOIL(void);
double cxRb_Cp(void);
double cxRb_En(void);
double cxSTRONTIUM_Z(void);
double cxSTRONTIUM(void);
double cxSr_Z(void);
double cxSr_WEIGHT(void);
double cxSr_MASS(void);
double cxSrMASS(void);
double cxSr_DENSITY(void);
double cxSr_MELT(void);
double cxSr_BOIL(void);
double cxSr_Cp(void);
double cxSr_En(void);
double cxYTTRIUM_Z(void);
double cxYTTRIUM(void);
double cxY_Z(void);
double cxY_WEIGHT(void);
double cxY_MASS(void);
double cxYMASS(void);
double cxY_DENSITY(void);
double cxY_MELT(void);
double cxY_BOIL(void);
double cxY_Cp(void);
double cxY_En(void);
double cxZIRCONIUM_Z(void);
double cxZIRCONIUM(void);
double cxZr_Z(void);
double cxZr_WEIGHT(void);
double cxZr_MASS(void);
double cxZrMASS(void);
double cxZr_DENSITY(void);
double cxZr_MELT(void);
double cxZr_BOIL(void);
double cxZr_Cp(void);
double cxZr_En(void);
double cxNIOBIUM_Z(void);
double cxNIOBIUM(void);
double cxNb_Z(void);
double cxNb_WEIGHT(void);
double cxNb_MASS(void);
double cxNbMASS(void);
double cxNb_DENSITY(void);
double cxNb_MELT(void);
double cxNb_BOIL(void);
double cxNb_Cp(void);
double cxNb_En(void);
double cxMOLYBDENUM_Z(void);
double cxMOLYBDENUM(void);
double cxMo_Z(void);
double cxMo_WEIGHT(void);
double cxMo_MASS(void);
double cxMoMASS(void);
double cxMo_DENSITY(void);
double cxMo_MELT(void);
double cxMo_BOIL(void);
double cxMo_Cp(void);
double cxMo_En(void);
double cxTECHNETIUM_Z(void);
double cxTECHNETIUM(void);
double cxTc_Z(void);
double cxTc_WEIGHT(void);
double cxTc_MASS(void);
double cxTcMASS(void);
double cxTc_DENSITY(void);
double cxTc_MELT(void);
double cxTc_BOIL(void);
double cxTc_Cp(void);
double cxTc_En(void);
double cxRUTHENIUM_Z(void);
double cxRUTHENIUM(void);
double cxRu_Z(void);
double cxRu_WEIGHT(void);
double cxRu_MASS(void);
double cxRuMASS(void);
double cxRu_DENSITY(void);
double cxRu_MELT(void);
double cxRu_BOIL(void);
double cxRu_Cp(void);
double cxRu_En(void);
double cxRHODIUM_Z(void);
double cxRHODIUM(void);
double cxRh_Z(void);
double cxRh_WEIGHT(void);
double cxRh_MASS(void);
double cxRhMASS(void);
double cxRh_DENSITY(void);
double cxRh_MELT(void);
double cxRh_BOIL(void);
double cxRh_Cp(void);
double cxRh_En(void);
double cxPALLADIUM_Z(void);
double cxPALLADIUM(void);
double cxPd_Z(void);
double cxPd_WEIGHT(void);
double cxPd_MASS(void);
double cxPdMASS(void);
double cxPd_DENSITY(void);
double cxPd_MELT(void);
double cxPd_BOIL(void);
double cxPd_Cp(void);
double cxPd_En(void);
double cxSILVER_Z(void);
double cxSILVER(void);
double cxAg_Z(void);
double cxAg_WEIGHT(void);
double cxAg_MASS(void);
double cxAgMASS(void);
double cxAg_DENSITY(void);
double cxAg_MELT(void);
double cxAg_BOIL(void);
double cxAg_Cp(void);
double cxAg_En(void);
double cxCADMIUM_Z(void);
double cxCADMIUM(void);
double cxCd_Z(void);
double cxCd_WEIGHT(void);
double cxCd_MASS(void);
double cxCdMASS(void);
double cxCd_DENSITY(void);
double cxCd_MELT(void);
double cxCd_BOIL(void);
double cxCd_Cp(void);
double cxCd_En(void);
double cxINDIUM_Z(void);
double cxINDIUM(void);
double cxIn_Z(void);
double cxIn_WEIGHT(void);
double cxIn_MASS(void);
double cxInMASS(void);
double cxIn_DENSITY(void);
double cxIn_MELT(void);
double cxIn_BOIL(void);
double cxIn_Cp(void);
double cxIn_En(void);
double cxTIN_Z(void);
double cxTIN(void);
double cxSn_Z(void);
double cxSn_WEIGHT(void);
double cxSn_MASS(void);
double cxSnMASS(void);
double cxSn_DENSITY(void);
double cxSn_MELT(void);
double cxSn_BOIL(void);
double cxSn_Cp(void);
double cxSn_En(void);
double cxANTIMONY_Z(void);
double cxANTIMONY(void);
double cxSb_Z(void);
double cxSb_WEIGHT(void);
double cxSb_MASS(void);
double cxSbMASS(void);
double cxSb_DENSITY(void);
double cxSb_MELT(void);
double cxSb_BOIL(void);
double cxSb_Cp(void);
double cxSb_En(void);
double cxTELLURIUM_Z(void);
double cxTELLURIUM(void);
double cxTe_Z(void);
double cxTe_WEIGHT(void);
double cxTe_MASS(void);
double cxTeMASS(void);
double cxTe_DENSITY(void);
double cxTe_MELT(void);
double cxTe_BOIL(void);
double cxTe_Cp(void);
double cxTe_En(void);
double cxIODINE_Z(void);
double cxIODINE(void);
double cxI_Z(void);
double cxI_WEIGHT(void);
double cxI_MASS(void);
double cxIMASS(void);
double cxI_DENSITY(void);
double cxI_MELT(void);
double cxI_BOIL(void);
double cxI_Cp(void);
double cxI_En(void);
double cxXENON_Z(void);
double cxXENON(void);
double cxXe_Z(void);
double cxXe_WEIGHT(void);
double cxXe_MASS(void);
double cxXeMASS(void);
double cxXe_DENSITY(void);
double cxXe_MELT(void);
double cxXe_BOIL(void);
double cxXe_Cp(void);
double cxXe_En(void);
double cxCAESIUM_Z(void);
double cxCAESIUM(void);
double cxCs_Z(void);
double cxCs_WEIGHT(void);
double cxCs_MASS(void);
double cxCsMASS(void);
double cxCs_DENSITY(void);
double cxCs_MELT(void);
double cxCs_BOIL(void);
double cxCs_Cp(void);
double cxCs_En(void);
double cxBARIUM_Z(void);
double cxBARIUM(void);
double cxBa_Z(void);
double cxBa_WEIGHT(void);
double cxBa_MASS(void);
double cxBaMASS(void);
double cxBa_DENSITY(void);
double cxBa_MELT(void);
double cxBa_BOIL(void);
double cxBa_Cp(void);
double cxBa_En(void);
double cxLANTHANUM_Z(void);
double cxLANTHANUM(void);
double cxLa_Z(void);
double cxLa_WEIGHT(void);
double cxLa_MASS(void);
double cxLaMASS(void);
double cxLa_DENSITY(void);
double cxLa_MELT(void);
double cxLa_BOIL(void);
double cxLa_Cp(void);
double cxLa_En(void);
double cxCERIUM_Z(void);
double cxCERIUM(void);
double cxCe_Z(void);
double cxCe_WEIGHT(void);
double cxCe_MASS(void);
double cxCeMASS(void);
double cxCe_DENSITY(void);
double cxCe_MELT(void);
double cxCe_BOIL(void);
double cxCe_Cp(void);
double cxCe_En(void);
double cxPRASEODYMIUM_Z(void);
double cxPRASEODYMIUM(void);
double cxPr_Z(void);
double cxPr_WEIGHT(void);
double cxPr_MASS(void);
double cxPrMASS(void);
double cxPr_DENSITY(void);
double cxPr_MELT(void);
double cxPr_BOIL(void);
double cxPr_Cp(void);
double cxPr_En(void);
double cxNEODYMIUM_Z(void);
double cxNEODYMIUM(void);
double cxNd_Z(void);
double cxNd_WEIGHT(void);
double cxNd_MASS(void);
double cxNdMASS(void);
double cxNd_DENSITY(void);
double cxNd_MELT(void);
double cxNd_BOIL(void);
double cxNd_Cp(void);
double cxNd_En(void);
double cxPROMETHIUM_Z(void);
double cxPROMETHIUM(void);
double cxPm_Z(void);
double cxPm_WEIGHT(void);
double cxPm_MASS(void);
double cxPmMASS(void);
double cxPm_DENSITY(void);
double cxPm_MELT(void);
double cxPm_BOIL(void);
double cxPm_Cp(void);
double cxPm_En(void);
double cxSAMARIUM_Z(void);
double cxSAMARIUM(void);
double cxSm_Z(void);
double cxSm_WEIGHT(void);
double cxSm_MASS(void);
double cxSmMASS(void);
double cxSm_DENSITY(void);
double cxSm_MELT(void);
double cxSm_BOIL(void);
double cxSm_Cp(void);
double cxSm_En(void);
double cxEUROPIUM_Z(void);
double cxEUROPIUM(void);
double cxEu_Z(void);
double cxEu_WEIGHT(void);
double cxEu_MASS(void);
double cxEuMASS(void);
double cxEu_DENSITY(void);
double cxEu_MELT(void);
double cxEu_BOIL(void);
double cxEu_Cp(void);
double cxEu_En(void);
double cxGADOLINIUM_Z(void);
double cxGADOLINIUM(void);
double cxGd_Z(void);
double cxGd_WEIGHT(void);
double cxGd_MASS(void);
double cxGdMASS(void);
double cxGd_DENSITY(void);
double cxGd_MELT(void);
double cxGd_BOIL(void);
double cxGd_Cp(void);
double cxGd_En(void);
double cxTERBIUM_Z(void);
double cxTERBIUM(void);
double cxTb_Z(void);
double cxTb_WEIGHT(void);
double cxTb_MASS(void);
double cxTbMASS(void);
double cxTb_DENSITY(void);
double cxTb_MELT(void);
double cxTb_BOIL(void);
double cxTb_Cp(void);
double cxTb_En(void);
double cxDYSPROSIUM_Z(void);
double cxDYSPROSIUM(void);
double cxDy_Z(void);
double cxDy_WEIGHT(void);
double cxDy_MASS(void);
double cxDyMASS(void);
double cxDy_DENSITY(void);
double cxDy_MELT(void);
double cxDy_BOIL(void);
double cxDy_Cp(void);
double cxDy_En(void);
double cxHOLMIUM_Z(void);
double cxHOLMIUM(void);
double cxHo_Z(void);
double cxHo_WEIGHT(void);
double cxHo_MASS(void);
double cxHoMASS(void);
double cxHo_DENSITY(void);
double cxHo_MELT(void);
double cxHo_BOIL(void);
double cxHo_Cp(void);
double cxHo_En(void);
double cxERBIUM_Z(void);
double cxERBIUM(void);
double cxEr_Z(void);
double cxEr_WEIGHT(void);
double cxEr_MASS(void);
double cxErMASS(void);
double cxEr_DENSITY(void);
double cxEr_MELT(void);
double cxEr_BOIL(void);
double cxEr_Cp(void);
double cxEr_En(void);
double cxTHULIUM_Z(void);
double cxTHULIUM(void);
double cxTm_Z(void);
double cxTm_WEIGHT(void);
double cxTm_MASS(void);
double cxTmMASS(void);
double cxTm_DENSITY(void);
double cxTm_MELT(void);
double cxTm_BOIL(void);
double cxTm_Cp(void);
double cxTm_En(void);
double cxYTTERBIUM_Z(void);
double cxYTTERBIUM(void);
double cxYb_Z(void);
double cxYb_WEIGHT(void);
double cxYb_MASS(void);
double cxYbMASS(void);
double cxYb_DENSITY(void);
double cxYb_MELT(void);
double cxYb_BOIL(void);
double cxYb_Cp(void);
double cxYb_En(void);
double cxLUTETIUM_Z(void);
double cxLUTETIUM(void);
double cxLu_Z(void);
double cxLu_WEIGHT(void);
double cxLu_MASS(void);
double cxLuMASS(void);
double cxLu_DENSITY(void);
double cxLu_MELT(void);
double cxLu_BOIL(void);
double cxLu_Cp(void);
double cxLu_En(void);
double cxHAFNIUM_Z(void);
double cxHAFNIUM(void);
double cxHf_Z(void);
double cxHf_WEIGHT(void);
double cxHf_MASS(void);
double cxHfMASS(void);
double cxHf_DENSITY(void);
double cxHf_MELT(void);
double cxHf_BOIL(void);
double cxHf_Cp(void);
double cxHf_En(void);
double cxTANTALUM_Z(void);
double cxTANTALUM(void);
double cxTa_Z(void);
double cxTa_WEIGHT(void);
double cxTa_MASS(void);
double cxTaMASS(void);
double cxTa_DENSITY(void);
double cxTa_MELT(void);
double cxTa_BOIL(void);
double cxTa_Cp(void);
double cxTa_En(void);
double cxTUNGSTEN_Z(void);
double cxTUNGSTEN(void);
double cxW_Z(void);
double cxW_WEIGHT(void);
double cxW_MASS(void);
double cxWMASS(void);
double cxW_DENSITY(void);
double cxW_MELT(void);
double cxW_BOIL(void);
double cxW_Cp(void);
double cxW_En(void);
double cxRHENIUM_Z(void);
double cxRHENIUM(void);
double cxRe_Z(void);
double cxRe_WEIGHT(void);
double cxRe_MASS(void);
double cxReMASS(void);
double cxRe_DENSITY(void);
double cxRe_MELT(void);
double cxRe_BOIL(void);
double cxRe_Cp(void);
double cxRe_En(void);
double cxOSMIUM_Z(void);
double cxOSMIUM(void);
double cxOs_Z(void);
double cxOs_WEIGHT(void);
double cxOs_MASS(void);
double cxOsMASS(void);
double cxOs_DENSITY(void);
double cxOs_MELT(void);
double cxOs_BOIL(void);
double cxOs_Cp(void);
double cxOs_En(void);
double cxIRIDIUM_Z(void);
double cxIRIDIUM(void);
double cxIr_Z(void);
double cxIr_WEIGHT(void);
double cxIr_MASS(void);
double cxIrMASS(void);
double cxIr_DENSITY(void);
double cxIr_MELT(void);
double cxIr_BOIL(void);
double cxIr_Cp(void);
double cxIr_En(void);
double cxPLATINUM_Z(void);
double cxPLATINUM(void);
double cxPt_Z(void);
double cxPt_WEIGHT(void);
double cxPt_MASS(void);
double cxPtMASS(void);
double cxPt_DENSITY(void);
double cxPt_MELT(void);
double cxPt_BOIL(void);
double cxPt_Cp(void);
double cxPt_En(void);
double cxGOLD_Z(void);
double cxGOLD(void);
double cxAu_Z(void);
double cxAu_WEIGHT(void);
double cxAu_MASS(void);
double cxAuMASS(void);
double cxAu_DENSITY(void);
double cxAu_MELT(void);
double cxAu_BOIL(void);
double cxAu_Cp(void);
double cxAu_En(void);
double cxMERCURY_Z(void);
double cxMERCURY(void);
double cxHg_Z(void);
double cxHg_WEIGHT(void);
double cxHg_MASS(void);
double cxHgMASS(void);
double cxHg_DENSITY(void);
double cxHg_MELT(void);
double cxHg_BOIL(void);
double cxHg_Cp(void);
double cxHg_En(void);
double cxTHALLIUM_Z(void);
double cxTHALLIUM(void);
double cxTl_Z(void);
double cxTl_WEIGHT(void);
double cxTl_MASS(void);
double cxTlMASS(void);
double cxTl_DENSITY(void);
double cxTl_MELT(void);
double cxTl_BOIL(void);
double cxTl_Cp(void);
double cxTl_En(void);
double cxLEAD_Z(void);
double cxLEAD(void);
double cxPb_Z(void);
double cxPb_WEIGHT(void);
double cxPb_MASS(void);
double cxPbMASS(void);
double cxPb_DENSITY(void);
double cxPb_MELT(void);
double cxPb_BOIL(void);
double cxPb_Cp(void);
double cxPb_En(void);
double cxBISMUTH_Z(void);
double cxBISMUTH(void);
double cxBi_Z(void);
double cxBi_WEIGHT(void);
double cxBi_MASS(void);
double cxBiMASS(void);
double cxBi_DENSITY(void);
double cxBi_MELT(void);
double cxBi_BOIL(void);
double cxBi_Cp(void);
double cxBi_En(void);
double cxPOLONIUM_Z(void);
double cxPOLONIUM(void);
double cxPo_Z(void);
double cxPo_WEIGHT(void);
double cxPo_MASS(void);
double cxPoMASS(void);
double cxPo_DENSITY(void);
double cxPo_MELT(void);
double cxPo_BOIL(void);
double cxPo_Cp(void);
double cxPo_En(void);
double cxASTATINE_Z(void);
double cxASTATINE(void);
double cxAt_Z(void);
double cxAt_WEIGHT(void);
double cxAt_MASS(void);
double cxAtMASS(void);
double cxAt_DENSITY(void);
double cxAt_MELT(void);
double cxAt_BOIL(void);
double cxAt_Cp(void);
double cxAt_En(void);
double cxRADON_Z(void);
double cxRADON(void);
double cxRn_Z(void);
double cxRn_WEIGHT(void);
double cxRn_MASS(void);
double cxRnMASS(void);
double cxRn_DENSITY(void);
double cxRn_MELT(void);
double cxRn_BOIL(void);
double cxRn_Cp(void);
double cxRn_En(void);
double cxFRANCIUM_Z(void);
double cxFRANCIUM(void);
double cxFr_Z(void);
double cxFr_WEIGHT(void);
double cxFr_MASS(void);
double cxFrMASS(void);
double cxFr_DENSITY(void);
double cxFr_MELT(void);
double cxFr_BOIL(void);
double cxFr_Cp(void);
double cxFr_En(void);
double cxRADIUM_Z(void);
double cxRADIUM(void);
double cxRa_Z(void);
double cxRa_WEIGHT(void);
double cxRa_MASS(void);
double cxRaMASS(void);
double cxRa_DENSITY(void);
double cxRa_MELT(void);
double cxRa_BOIL(void);
double cxRa_Cp(void);
double cxRa_En(void);
double cxACTINIUM_Z(void);
double cxACTINIUM(void);
double cxAc_Z(void);
double cxAc_WEIGHT(void);
double cxAc_MASS(void);
double cxAcMASS(void);
double cxAc_DENSITY(void);
double cxAc_MELT(void);
double cxAc_BOIL(void);
double cxAc_Cp(void);
double cxAc_En(void);
double cxTHORIUM_Z(void);
double cxTHORIUM(void);
double cxTh_Z(void);
double cxTh_WEIGHT(void);
double cxTh_MASS(void);
double cxThMASS(void);
double cxTh_DENSITY(void);
double cxTh_MELT(void);
double cxTh_BOIL(void);
double cxTh_Cp(void);
double cxTh_En(void);
double cxPROTACTINIUM_Z(void);
double cxPROTACTINIUM(void);
double cxPa_Z(void);
double cxPa_WEIGHT(void);
double cxPa_MASS(void);
double cxPaMASS(void);
double cxPa_DENSITY(void);
double cxPa_MELT(void);
double cxPa_BOIL(void);
double cxPa_Cp(void);
double cxPa_En(void);
double cxURANIUM_Z(void);
double cxURANIUM(void);
double cxU_Z(void);
double cxU_WEIGHT(void);
double cxU_MASS(void);
double cxUMASS(void);
double cxU_DENSITY(void);
double cxU_MELT(void);
double cxU_BOIL(void);
double cxU_Cp(void);
double cxU_En(void);
double cxNEPTUNIUM_Z(void);
double cxNEPTUNIUM(void);
double cxNp_Z(void);
double cxNp_WEIGHT(void);
double cxNp_MASS(void);
double cxNpMASS(void);
double cxNp_DENSITY(void);
double cxNp_MELT(void);
double cxNp_BOIL(void);
double cxNp_Cp(void);
double cxNp_En(void);
double cxPLUTONIUM_Z(void);
double cxPLUTONIUM(void);
double cxPu_Z(void);
double cxPu_WEIGHT(void);
double cxPu_MASS(void);
double cxPuMASS(void);
double cxPu_DENSITY(void);
double cxPu_MELT(void);
double cxPu_BOIL(void);
double cxPu_Cp(void);
double cxPu_En(void);
double cxAMERICIUM_Z(void);
double cxAMERICIUM(void);
double cxAm_Z(void);
double cxAm_WEIGHT(void);
double cxAm_MASS(void);
double cxAmMASS(void);
double cxAm_DENSITY(void);
double cxAm_MELT(void);
double cxAm_BOIL(void);
double cxAm_Cp(void);
double cxAm_En(void);
double cxCURIUM_Z(void);
double cxCURIUM(void);
double cxCm_Z(void);
double cxCm_WEIGHT(void);
double cxCm_MASS(void);
double cxCmMASS(void);
double cxCm_DENSITY(void);
double cxCm_MELT(void);
double cxCm_BOIL(void);
double cxCm_Cp(void);
double cxCm_En(void);
double cxBERKELIUM_Z(void);
double cxBERKELIUM(void);
double cxBk_Z(void);
double cxBk_WEIGHT(void);
double cxBk_MASS(void);
double cxBkMASS(void);
double cxBk_DENSITY(void);
double cxBk_MELT(void);
double cxBk_BOIL(void);
double cxBk_Cp(void);
double cxBk_En(void);
double cxCALIFORNIUM_Z(void);
double cxCALIFORNIUM(void);
double cxCf_Z(void);
double cxCf_WEIGHT(void);
double cxCf_MASS(void);
double cxCfMASS(void);
double cxCf_DENSITY(void);
double cxCf_MELT(void);
double cxCf_BOIL(void);
double cxCf_Cp(void);
double cxCf_En(void);
double cxEINSTEINIUM_Z(void);
double cxEINSTEINIUM(void);
double cxEs_Z(void);
double cxEs_WEIGHT(void);
double cxEs_MASS(void);
double cxEsMASS(void);
double cxEs_DENSITY(void);
double cxEs_MELT(void);
double cxEs_BOIL(void);
double cxEs_Cp(void);
double cxEs_En(void);
double cxFERMIUM_Z(void);
double cxFERMIUM(void);
double cxFm_Z(void);
double cxFm_WEIGHT(void);
double cxFm_MASS(void);
double cxFmMASS(void);
double cxFm_DENSITY(void);
double cxFm_MELT(void);
double cxFm_BOIL(void);
double cxFm_Cp(void);
double cxFm_En(void);
double cxMENDELEVIUM_Z(void);
double cxMENDELEVIUM(void);
double cxMd_Z(void);
double cxMd_WEIGHT(void);
double cxMd_MASS(void);
double cxMdMASS(void);
double cxMd_DENSITY(void);
double cxMd_MELT(void);
double cxMd_BOIL(void);
double cxMd_Cp(void);
double cxMd_En(void);
double cxNOBELIUM_Z(void);
double cxNOBELIUM(void);
double cxNo_Z(void);
double cxNo_WEIGHT(void);
double cxNo_MASS(void);
double cxNoMASS(void);
double cxNo_DENSITY(void);
double cxNo_MELT(void);
double cxNo_BOIL(void);
double cxNo_Cp(void);
double cxNo_En(void);
double cxLAWRENCIUM_Z(void);
double cxLAWRENCIUM(void);
double cxLr_Z(void);
double cxLr_WEIGHT(void);
double cxLr_MASS(void);
double cxLrMASS(void);
double cxLr_DENSITY(void);
double cxLr_MELT(void);
double cxLr_BOIL(void);
double cxLr_Cp(void);
double cxLr_En(void);
double cxRUTHERFORDIUM_Z(void);
double cxRUTHERFORDIUM(void);
double cxRf_Z(void);
double cxRf_WEIGHT(void);
double cxRf_MASS(void);
double cxRfMASS(void);
double cxRf_DENSITY(void);
double cxRf_MELT(void);
double cxRf_BOIL(void);
double cxRf_Cp(void);
double cxRf_En(void);
double cxDUBNIUM_Z(void);
double cxDUBNIUM(void);
double cxDb_Z(void);
double cxDb_WEIGHT(void);
double cxDb_MASS(void);
double cxDbMASS(void);
double cxDb_DENSITY(void);
double cxDb_MELT(void);
double cxDb_BOIL(void);
double cxDb_Cp(void);
double cxDb_En(void);
double cxSEABORGIUM_Z(void);
double cxSEABORGIUM(void);
double cxSg_Z(void);
double cxSg_WEIGHT(void);
double cxSg_MASS(void);
double cxSgMASS(void);
double cxSg_DENSITY(void);
double cxSg_MELT(void);
double cxSg_BOIL(void);
double cxSg_Cp(void);
double cxSg_En(void);
double cxBOHRIUM_Z(void);
double cxBOHRIUM(void);
double cxBh_Z(void);
double cxBh_WEIGHT(void);
double cxBh_MASS(void);
double cxBhMASS(void);
double cxBh_DENSITY(void);
double cxBh_MELT(void);
double cxBh_BOIL(void);
double cxBh_Cp(void);
double cxBh_En(void);
double cxHASSIUM_Z(void);
double cxHASSIUM(void);
double cxHs_Z(void);
double cxHs_WEIGHT(void);
double cxHs_MASS(void);
double cxHsMASS(void);
double cxHs_DENSITY(void);
double cxHs_MELT(void);
double cxHs_BOIL(void);
double cxHs_Cp(void);
double cxHs_En(void);
double cxMEITNERIUM_Z(void);
double cxMEITNERIUM(void);
double cxMt_Z(void);
double cxMt_WEIGHT(void);
double cxMt_MASS(void);
double cxMtMASS(void);
double cxMt_DENSITY(void);
double cxMt_MELT(void);
double cxMt_BOIL(void);
double cxMt_Cp(void);
double cxMt_En(void);
double cxDARMSTADTIUM_Z(void);
double cxDARMSTADTIUM(void);
double cxDs_Z(void);
double cxDs_WEIGHT(void);
double cxDs_MASS(void);
double cxDsMASS(void);
double cxDs_DENSITY(void);
double cxDs_MELT(void);
double cxDs_BOIL(void);
double cxDs_Cp(void);
double cxDs_En(void);
double cxROENTGENIUM_Z(void);
double cxROENTGENIUM(void);
double cxRg_Z(void);
double cxRg_WEIGHT(void);
double cxRg_MASS(void);
double cxRgMASS(void);
double cxRg_DENSITY(void);
double cxRg_MELT(void);
double cxRg_BOIL(void);
double cxRg_Cp(void);
double cxRg_En(void);
double cxCOPERNICIUM_Z(void);
double cxCOPERNICIUM(void);
double cxCn_Z(void);
double cxCn_WEIGHT(void);
double cxCn_MASS(void);
double cxCnMASS(void);
double cxCn_DENSITY(void);
double cxCn_MELT(void);
double cxCn_BOIL(void);
double cxCn_Cp(void);
double cxCn_En(void);
double cxNIHONIUM_Z(void);
double cxNIHONIUM(void);
double cxNh_Z(void);
double cxNh_WEIGHT(void);
double cxNh_MASS(void);
double cxNhMASS(void);
double cxNh_DENSITY(void);
double cxNh_MELT(void);
double cxNh_BOIL(void);
double cxNh_Cp(void);
double cxNh_En(void);
double cxFLEROVIUM_Z(void);
double cxFLEROVIUM(void);
double cxFl_Z(void);
double cxFl_WEIGHT(void);
double cxFl_MASS(void);
double cxFlMASS(void);
double cxFl_DENSITY(void);
double cxFl_MELT(void);
double cxFl_BOIL(void);
double cxFl_Cp(void);
double cxFl_En(void);
double cxMOSCOVIUM_Z(void);
double cxMOSCOVIUM(void);
double cxMc_Z(void);
double cxMc_WEIGHT(void);
double cxMc_MASS(void);
double cxMcMASS(void);
double cxMc_DENSITY(void);
double cxMc_MELT(void);
double cxMc_BOIL(void);
double cxMc_Cp(void);
double cxMc_En(void);
double cxLIVERMORIUM_Z(void);
double cxLIVERMORIUM(void);
double cxLv_Z(void);
double cxLv_WEIGHT(void);
double cxLv_MASS(void);
double cxLvMASS(void);
double cxLv_DENSITY(void);
double cxLv_MELT(void);
double cxLv_BOIL(void);
double cxLv_Cp(void);
double cxLv_En(void);
double cxTENNESSINE_Z(void);
double cxTENNESSINE(void);
double cxTs_Z(void);
double cxTs_WEIGHT(void);
double cxTs_MASS(void);
double cxTsMASS(void);
double cxTs_DENSITY(void);
double cxTs_MELT(void);
double cxTs_BOIL(void);
double cxTs_Cp(void);
double cxTs_En(void);
double cxOGANESSON_Z(void);
double cxOGANESSON(void);
double cxOg_Z(void);
double cxOg_WEIGHT(void);
double cxOg_MASS(void);
double cxOgMASS(void);
double cxOg_DENSITY(void);
double cxOg_MELT(void);
double cxOg_BOIL(void);
double cxOg_Cp(void);
double cxOg_En(void);
double cxH1_WEIGHT(void);
double cxH1_MASS(void);
double cxH1MASS(void);
double cxDEUTERIUM_Z(void);
double cxDEUTERIUM(void);
double cxD_Z(void);
double cxD_WEIGHT(void);
double cxD_MASS(void);
double cxDMASS(void);
double cxTRITIUM_Z(void);
double cxTRITIUM(void);
double cxT_Z(void);
double cxT_WEIGHT(void);
double cxT_MASS(void);
double cxTMASS(void);
double cxH2_WEIGHT(void);
double cxH2_MASS(void);
double cxH2MASS(void);
double cxH3_WEIGHT(void);
double cxH3_MASS(void);
double cxH3MASS(void);
double cxHe3_WEIGHT(void);
double cxHe3_MASS(void);
double cxHe3MASS(void);
double cxHe4_WEIGHT(void);
double cxHe4_MASS(void);
double cxHe4MASS(void);
double cxC12_WEIGHT(void);
double cxC12_MASS(void);
double cxC12MASS(void);
double cxC13_WEIGHT(void);
double cxC13_MASS(void);
double cxC13MASS(void);
double cxC14_WEIGHT(void);
double cxC14_MASS(void);
double cxC14MASS(void);
double cxO16_WEIGHT(void);
double cxO16_MASS(void);
double cxO16MASS(void);
double cxO17_WEIGHT(void);
double cxO17_MASS(void);
double cxO17MASS(void);
double cxO18_WEIGHT(void);
double cxO18_MASS(void);
double cxO18MASS(void);
double cxDEUTERON_WEIGHT(void);
double cxDEUTERON_MASS(void);
double cxDEUTERONMASS(void);
double cxDEUTERONMASS_ERR(void);
double cxDEUTERONENERGY(void);
double cxHELION_WEIGHT(void);
double cxHELION_MASS(void);
double cxHELIONMASS(void);
double cxHELIONMASS_ERR(void);
double cxHELIONENERGY(void);
double cxTRITON_WEIGHT(void);
double cxTRITON_MASS(void);
double cxTRITONMASS(void);
double cxTRITONMASS_ERR(void);
double cxTRITONENERGY(void);
double cxALPHA_WEIGHT(void);
double cxALPHA_MASS(void);
double cxALPHAMASS(void);
double cxALPHAMASS_ERR(void);
double cxALPHAENERGY(void);
double cxUPQUARK_ENERGY(void);
double cxUPQUARKMASS(void);
double cxUPQUARK_MASS(void);
double cxUPQUARKMASS_ERR(void);
double cxUPQUARK_Hz(void);
double cxUPQUARK_WAVELENGTH(void);
double cxUPQUARK_CHARGE(void);
double cxDOWNQUARK_ENERGY(void);
double cxDOWNQUARKMASS(void);
double cxDOWNQUARK_MASS(void);
double cxDOWNQUARKMASS_ERR(void);
double cxDOWNQUARK_Hz(void);
double cxDOWNQUARK_WAVELENGTH(void);
double cxDOWNQUARK_CHARGE(void);
double cxCHARMQUARK_ENERGY(void);
double cxCHARMQUARKMASS(void);
double cxCHARMQUARK_MASS(void);
double cxCHARMQUARKMASS_ERR(void);
double cxCHARMQUARK_Hz(void);
double cxCHARMQUARK_WAVELENGTH(void);
double cxCHARMQUARK_CHARGE(void);
double cxSTRANGEQUARK_ENERGY(void);
double cxSTRANGEQUARKMASS(void);
double cxSTRANGEQUARK_MASS(void);
double cxSTRANGEQUARKMASS_ERR(void);
double cxSTRANGEQUARK_Hz(void);
double cxSTRANGEQUARK_WAVELENGTH(void);
double cxSTRANGEQUARK_CHARGE(void);
double cxTOPQUARK_ENERGY(void);
double cxTOPQUARKMASS(void);
double cxTOPQUARK_MASS(void);
double cxTOPQUARKMASS_ERR(void);
double cxTOPQUARK_Hz(void);
double cxTOPQUARK_WAVELENGTH(void);
double cxTOPQUARK_CHARGE(void);
double cxBOTTOMQUARK_ENERGY(void);
double cxBOTTOMQUARKMASS(void);
double cxBOTTOMQUARK_MASS(void);
double cxBOTTOMQUARKMASS_ERR(void);
double cxBOTTOMQUARK_Hz(void);
double cxBOTTOMQUARK_WAVELENGTH(void);
double cxBOTTOMQUARK_CHARGE(void);
double cxHIGGSBOSON_ENERGY(void);
double cxHIGGSBOSONMASS(void);
double cxHIGGSBOSON_MASS(void);
double cxHIGGSBOSONMASS_ERR(void);
double cxHIGGSBOSON_Hz(void);
double cxHIGGSBOSON_WAVELENGTH(void);
double cxWBOSON_ENERGY(void);
double cxWBOSONMASS(void);
double cxWBOSON_MASS(void);
double cxWBOSONMASS_ERR(void);
double cxWBOSON_Hz(void);
double cxWBOSON_WAVELENGTH(void);
double cxZBOSON_ENERGY(void);
double cxZBOSONMASS(void);
double cxZBOSON_MASS(void);
double cxZBOSONMASS_ERR(void);
double cxZBOSON_Hz(void);
double cxZBOSON_WAVELENGTH(void);
double cxTAU_ENERGY(void);
double cxTAUMASS(void);
double cxTAU_MASS(void);
double cxTAUMASS_ERR(void);
double cxTAU_Hz(void);
double cxTAU_WAVELENGTH(void);
double cxMUON_ENERGY(void);
double cxMUONMASS(void);
double cxMUON_MASS(void);
double cxMUONMASS_ERR(void);
double cxMUON_Hz(void);
double cxMUON_WAVELENGTH(void);
double cxELECTRON_ENERGY(void);
double cxELECTRONMASS(void);
double cxELECTRON_MASS(void);
double cxELECTRONMASS_ERR(void);
double cxELECTRON_Hz(void);
double cxELECTRON_WAVELENGTH(void);
double cxPROTON_ENERGY(void);
double cxPROTONMASS(void);
double cxPROTON_MASS(void);
double cxPROTONMASS_ERR(void);
double cxPROTON_Hz(void);
double cxPROTON_WAVELENGTH(void);
double cxNEUTRON_ENERGY(void);
double cxNEUTRONMASS(void);
double cxNEUTRON_MASS(void);
double cxNEUTRONMASS_ERR(void);
double cxNEUTRON_Hz(void);
double cxNEUTRON_WAVELENGTH(void);
double cxHYDROGEN_RADIUS(void);
double cxHYDROGEN_RADIUS_ERR(void);
double cxBOHRRADIUS(void);
double cxBOHRRADIUS_ERR(void);
double cxAIR_MASS(void);
double cxAIRMASS(void);
double cxSTEAM_MASS(void);
double cxSTEAMMASS(void);
double cxSTEAM_HF(void);
double cxSTEAM_HC(void);
double cxSTEAM_JPKG(void);
double cxSTEAM_DENSITY(void);
double cxSTEAM_JPL(void);
double cxH2O_MASS(void);
double cxH2OMASS(void);
double cxH2O_HF(void);
double cxH2O_HC(void);
double cxH2O_JPKG(void);
double cxH2O_DENSITY(void);
double cxH2O_JPL(void);
double cxWATER_MASS(void);
double cxWATERMASS(void);
double cxWATER_HF(void);
double cxWATER_HC(void);
double cxWATER_JPKG(void);
double cxWATER_DENSITY(void);
double cxWATER_JPL(void);
double cxCO2_MASS(void);
double cxCO2MASS(void);
double cxCO2_HF(void);
double cxCO2_HC(void);
double cxCO2_JPKG(void);
double cxCO2_DENSITY(void);
double cxCO2_JPL(void);
double cxCARBONDIOXIDE_MASS(void);
double cxCARBONDIOXIDEMASS(void);
double cxCARBONDIOXIDE_HF(void);
double cxCARBONDIOXIDE_HC(void);
double cxCARBONDIOXIDE_JPKG(void);
double cxCARBONDIOXIDE_DENSITY(void);
double cxCARBONDIOXIDE_JPL(void);
double cxO2_MASS(void);
double cxO2MASS(void);
double cxO2_HF(void);
double cxO2_HC(void);
double cxO2_JPKG(void);
double cxO2_DENSITY(void);
double cxO2_JPL(void);
double cxHYDROGEN_MASS(void);
double cxHYDROGENMASS(void);
double cxHYDROGEN_HF(void);
double cxHYDROGEN_HC(void);
double cxHYDROGEN_HCC(void);
double cxHYDROGEN_JPKG(void);
double cxHYDROGEN_DENSITY(void);
double cxHYDROGEN_JPL(void);
double cxMETHANE_MASS(void);
double cxMETHANEMASS(void);
double cxMETHANE_HF(void);
double cxMETHANE_HC(void);
double cxMETHANE_HCC(void);
double cxMETHANE_JPKG(void);
double cxMETHANE_DENSITY(void);
double cxMETHANE_JPL(void);
double cxETHANE_MASS(void);
double cxETHANEMASS(void);
double cxETHANE_HF(void);
double cxETHANE_HC(void);
double cxETHANE_HCC(void);
double cxETHANE_JPKG(void);
double cxETHANE_DENSITY(void);
double cxETHANE_JPL(void);
double cxPROPANE_MASS(void);
double cxPROPANEMASS(void);
double cxPROPANE_HF(void);
double cxPROPANE_HC(void);
double cxPROPANE_HCC(void);
double cxPROPANE_JPKG(void);
double cxPROPANE_DENSITY(void);
double cxPROPANE_JPL(void);
double cxBUTANE_MASS(void);
double cxBUTANEMASS(void);
double cxBUTANE_HF(void);
double cxBUTANE_HC(void);
double cxBUTANE_HCC(void);
double cxBUTANE_JPKG(void);
double cxBUTANE_DENSITY(void);
double cxBUTANE_JPL(void);
double cxPENTANE_MASS(void);
double cxPENTANEMASS(void);
double cxPENTANE_HF(void);
double cxPENTANE_HC(void);
double cxPENTANE_HCC(void);
double cxPENTANE_JPKG(void);
double cxPENTANE_DENSITY(void);
double cxPENTANE_JPL(void);
double cxHEXANE_MASS(void);
double cxHEXANEMASS(void);
double cxHEXANE_HF(void);
double cxHEXANE_HC(void);
double cxHEXANE_HCC(void);
double cxHEXANE_JPKG(void);
double cxHEXANE_DENSITY(void);
double cxHEXANE_JPL(void);
double cxETHANOL_MASS(void);
double cxETHANOLMASS(void);
double cxETHANOL_HF(void);
double cxETHANOL_HC(void);
double cxETHANOL_HCC(void);
double cxETHANOL_JPKG(void);
double cxETHANOL_DENSITY(void);
double cxETHANOL_JPL(void);
double cxETHANOL_G_MASS(void);
double cxETHANOL_GMASS(void);
double cxETHANOL_G_HF(void);
double cxETHANOL_G_HC(void);
double cxETHANOL_G_HCC(void);
double cxETHANOL_G_JPKG(void);
double cxETHANOL_G_DENSITY(void);
double cxETHANOL_G_JPL(void);
double cxSUCROSE_MASS(void);
double cxSUCROSEMASS(void);
double cxSUCROSE_HF(void);
double cxSUCROSE_HC(void);
double cxSUCROSE_HCC(void);
double cxSUCROSE_JPKG(void);
double cxSUCROSE_DENSITY(void);
double cxSUCROSE_JPL(void);
double cxSUGAR_MASS(void);
double cxSUGARMASS(void);
double cxSUGAR_HF(void);
double cxSUGAR_HC(void);
double cxSUGAR_HCC(void);
double cxSUGAR_JPKG(void);
double cxSUGAR_DENSITY(void);
double cxSUGAR_JPL(void);
double cxCOAL_MASS(void);
double cxCOALMASS(void);
double cxCOAL_JPKG(void);
double cxCOAL_DENSITY(void);
double cxCOAL_JPL(void);
double cxPARAFFIN_MASS(void);
double cxPARAFFINMASS(void);
double cxPARAFFIN_JPKG(void);
double cxPARAFFIN_DENSITY(void);
double cxPARAFFIN_JPL(void);
double cxFAT_MASS(void);
double cxFATMASS(void);
double cxFAT_JPKG(void);
double cxFAT_DENSITY(void);
double cxFAT_JPL(void);
double cxDIESEL_MASS(void);
double cxDIESELMASS(void);
double cxDIESEL_JPKG(void);
double cxDIESEL_DENSITY(void);
double cxDIESEL_JPL(void);
double cxGASOLINE_MASS(void);
double cxGASOLINEMASS(void);
double cxGASOLINE_JPKG(void);
double cxGASOLINE_DENSITY(void);
double cxGASOLINE_JPL(void);
double cxKEROSENE_MASS(void);
double cxKEROSENEMASS(void);
double cxKEROSENE_JPKG(void);
double cxKEROSENE_DENSITY(void);
double cxKEROSENE_JPL(void);
double cxC13_RATIO(void);
double cxC14_RATIO(void);
double cxC12_RATIO(void);
double cxC_MEAN_MASS(void);
double cxWATER_Cp(void);
double cxICE_Cp(void);
double cxSTEAM_Cp(void);
double cxWATER_FUSION_JPMOLE(void);
double cxWATER_FUSION_JPKG(void);
double cxWATER_VAPORIZATION_JPMOLE(void);
double cxWATER_VAPORIZATION_JPKG(void);
double cxWATER_CRITICAL(void);
double cxVSMOW_H3_RATIO(void);
double cxVSMOW_H2_RATIO(void);
double cxVSMOW_H1_RATIO(void);
double cxVSMOW_H_MASS(void);
double cxVSMOW_O18_RATIO(void);
double cxVSMOW_O17_RATIO(void);
double cxVSMOW_O16_RATIO(void);
double cxVSMOW_O_MASS(void);
double cxVSMOW_MASS(void);
double cxTNTJPKG(void);
//  FFFFFFFFFFUNC_PROTOTYPE ######################################## LANG_C #
double timee(void);
double watervapor_pressure(double temp_k);
double watervaporization(double temp_k);
double waterboiling(double pressure_pa);
double waterdensity_airfree(double temp_k);
double waterdensity(double temp_k);
double waterdensity_airfree__1(double temp_k);
//  DDDDDDDDDDescription ########################### kwelements_description #
#define Kwelements_DESCRIPTION \
   "   Kwelements Constants: Ac_BOIL Ac_Cp Ac_DENSITY Ac_En Ac_MASS Ac_MELT"\
   " Ac_WEIGHT Ac_Z AcMASS ACTINIUM ACTINIUM_Z Ag_BOIL Ag_Cp Ag_DENSITY Ag_"\
   "En Ag_MASS Ag_MELT Ag_WEIGHT Ag_Z AgMASS AIR_MASS AIRMASS Al_BOIL Al_Cp"\
   " Al_DENSITY Al_En Al_MASS Al_MELT Al_WEIGHT Al_Z AlMASS ALPHA_MASS ALPH"\
   "A_WEIGHT ALPHAENERGY ALPHAMASS ALPHAMASS_ERR ALUMINIUM ALUMINIUM_Z Am_B"\
   "OIL Am_Cp Am_DENSITY Am_En Am_MASS Am_MELT Am_WEIGHT Am_Z AMERICIUM AME"\
   "RICIUM_Z AmMASS ANTIMONY ANTIMONY_Z Ar_BOIL Ar_Cp Ar_DENSITY Ar_En Ar_M"\
   "ASS Ar_MELT Ar_WEIGHT Ar_Z ARGON ARGON_Z ArMASS ARSENIC ARSENIC_Z As_BO"\
   "IL As_Cp As_DENSITY As_En As_MASS As_MELT As_WEIGHT As_Z AsMASS ASTATIN"\
   "E ASTATINE_Z At_BOIL At_Cp At_DENSITY At_En At_MASS At_MELT At_WEIGHT A"\
   "t_Z AtMASS Au_BOIL Au_Cp Au_DENSITY Au_En Au_MASS Au_MELT Au_WEIGHT Au_"\
   "Z AuMASS B_BOIL B_Cp B_DENSITY B_En B_MASS B_MELT B_WEIGHT B_Z Ba_BOIL "\
   "Ba_Cp Ba_DENSITY Ba_En Ba_MASS Ba_MELT Ba_WEIGHT Ba_Z BaMASS BARIUM BAR"\
   "IUM_Z Be_BOIL Be_Cp Be_DENSITY Be_En Be_MASS Be_MELT Be_WEIGHT Be_Z BeM"\
   "ASS BERKELIUM BERKELIUM_Z BERYLLIUM BERYLLIUM_Z Bh_BOIL Bh_Cp Bh_DENSIT"\
   "Y Bh_En Bh_MASS Bh_MELT Bh_WEIGHT Bh_Z BhMASS Bi_BOIL Bi_Cp Bi_DENSITY "\
   "Bi_En Bi_MASS Bi_MELT Bi_WEIGHT Bi_Z BiMASS BISMUTH BISMUTH_Z Bk_BOIL B"\
   "k_Cp Bk_DENSITY Bk_En Bk_MASS Bk_MELT Bk_WEIGHT Bk_Z BkMASS BMASS BOHRI"\
   "UM BOHRIUM_Z BOHRRADIUS BOHRRADIUS_ERR BORON BORON_Z BOTTOMQUARK_CHARGE"\
   " BOTTOMQUARK_ENERGY BOTTOMQUARK_Hz BOTTOMQUARK_MASS BOTTOMQUARK_WAVELEN"\
   "GTH BOTTOMQUARKMASS BOTTOMQUARKMASS_ERR Br_BOIL Br_Cp Br_DENSITY Br_En "\
   "Br_MASS Br_MELT Br_WEIGHT Br_Z BrMASS BROMINE BROMINE_Z BUTANE_DENSITY "\
   "BUTANE_HC BUTANE_HCC BUTANE_HF BUTANE_JPKG BUTANE_JPL BUTANE_MASS BUTAN"\
   "EMASS C12_MASS C12_RATIO C12_WEIGHT C12MASS C13_MASS C13_RATIO C13_WEIG"\
   "HT C13MASS C14_MASS C14_RATIO C14_WEIGHT C14MASS C_BOIL C_Cp C_DENSITY "\
   "C_En C_MASS C_MEAN_MASS C_MELT C_WEIGHT C_Z Ca_BOIL Ca_Cp Ca_DENSITY Ca"\
   "_En Ca_MASS Ca_MELT Ca_WEIGHT Ca_Z CADMIUM CADMIUM_Z CAESIUM CAESIUM_Z "\
   "CALCIUM CALCIUM_Z CALIFORNIUM CALIFORNIUM_Z CaMASS CARBON CARBON_Z CARB"\
   "ONDIOXIDE_DENSITY CARBONDIOXIDE_HC CARBONDIOXIDE_HF CARBONDIOXIDE_JPKG "\
   "CARBONDIOXIDE_JPL CARBONDIOXIDE_MASS CARBONDIOXIDEMASS Cd_BOIL Cd_Cp Cd"\
   "_DENSITY Cd_En Cd_MASS Cd_MELT Cd_WEIGHT Cd_Z CdMASS Ce_BOIL Ce_Cp Ce_D"\
   "ENSITY Ce_En Ce_MASS Ce_MELT Ce_WEIGHT Ce_Z CeMASS CERIUM CERIUM_Z Cf_B"\
   "OIL Cf_Cp Cf_DENSITY Cf_En Cf_MASS Cf_MELT Cf_WEIGHT Cf_Z CfMASS CHARMQ"\
   "UARK_CHARGE CHARMQUARK_ENERGY CHARMQUARK_Hz CHARMQUARK_MASS CHARMQUARK_"\
   "WAVELENGTH CHARMQUARKMASS CHARMQUARKMASS_ERR CHLORINE CHLORINE_Z CHROMI"\
   "UM CHROMIUM_Z Cl_BOIL Cl_Cp Cl_DENSITY Cl_En Cl_MASS Cl_MELT Cl_WEIGHT "\
   "Cl_Z ClMASS Cm_BOIL Cm_Cp Cm_DENSITY Cm_En Cm_MASS Cm_MELT Cm_WEIGHT Cm"\
   "_Z CMASS CmMASS Cn_BOIL Cn_Cp Cn_DENSITY Cn_En Cn_MASS Cn_MELT Cn_WEIGH"\
   "T Cn_Z CnMASS CO2_DENSITY CO2_HC CO2_HF CO2_JPKG CO2_JPL CO2_MASS CO2MA"\
   "SS Co_BOIL Co_Cp Co_DENSITY Co_En Co_MASS Co_MELT Co_WEIGHT Co_Z COAL_D"\
   "ENSITY COAL_JPKG COAL_JPL COAL_MASS COALMASS COBALT COBALT_Z CoMASS COP"\
   "ERNICIUM COPERNICIUM_Z COPPER COPPER_Z Cr_BOIL Cr_Cp Cr_DENSITY Cr_En C"\
   "r_MASS Cr_MELT Cr_WEIGHT Cr_Z CrMASS Cs_BOIL Cs_Cp Cs_DENSITY Cs_En Cs_"\
   "MASS Cs_MELT Cs_WEIGHT Cs_Z CsMASS Cu_BOIL Cu_Cp Cu_DENSITY Cu_En Cu_MA"\
   "SS Cu_MELT Cu_WEIGHT Cu_Z CuMASS CURIUM CURIUM_Z D_MASS D_WEIGHT D_Z DA"\
   "RMSTADTIUM DARMSTADTIUM_Z Db_BOIL Db_Cp Db_DENSITY Db_En Db_MASS Db_MEL"\
   "T Db_WEIGHT Db_Z DbMASS DEUTERIUM DEUTERIUM_Z DEUTERON_MASS DEUTERON_WE"\
   "IGHT DEUTERONENERGY DEUTERONMASS DEUTERONMASS_ERR DIESEL_DENSITY DIESEL"\
   "_JPKG DIESEL_JPL DIESEL_MASS DIESELMASS DMASS DOWNQUARK_CHARGE DOWNQUAR"\
   "K_ENERGY DOWNQUARK_Hz DOWNQUARK_MASS DOWNQUARK_WAVELENGTH DOWNQUARKMASS"\
   " DOWNQUARKMASS_ERR Ds_BOIL Ds_Cp Ds_DENSITY Ds_En Ds_MASS Ds_MELT Ds_WE"\
   "IGHT Ds_Z DsMASS DUBNIUM DUBNIUM_Z Dy_BOIL Dy_Cp Dy_DENSITY Dy_En Dy_MA"\
   "SS Dy_MELT Dy_WEIGHT Dy_Z DyMASS DYSPROSIUM DYSPROSIUM_Z EINSTEINIUM EI"\
   "NSTEINIUM_Z ELECTRON_ENERGY ELECTRON_Hz ELECTRON_MASS ELECTRON_WAVELENG"\
   "TH ELECTRONMASS ELECTRONMASS_ERR Er_BOIL Er_Cp Er_DENSITY Er_En Er_MASS"\
   " Er_MELT Er_WEIGHT Er_Z ERBIUM ERBIUM_Z ErMASS Es_BOIL Es_Cp Es_DENSITY"\
   " Es_En Es_MASS Es_MELT Es_WEIGHT Es_Z EsMASS ETHANE_DENSITY ETHANE_HC E"\
   "THANE_HCC ETHANE_HF ETHANE_JPKG ETHANE_JPL ETHANE_MASS ETHANEMASS ETHAN"\
   "OL_DENSITY ETHANOL_G_DENSITY ETHANOL_G_HC ETHANOL_G_HCC ETHANOL_G_HF ET"\
   "HANOL_G_JPKG ETHANOL_G_JPL ETHANOL_G_MASS ETHANOL_GMASS ETHANOL_HC ETHA"\
   "NOL_HCC ETHANOL_HF ETHANOL_JPKG ETHANOL_JPL ETHANOL_MASS ETHANOLMASS Eu"\
   "_BOIL Eu_Cp Eu_DENSITY Eu_En Eu_MASS Eu_MELT Eu_WEIGHT Eu_Z EuMASS EURO"\
   "PIUM EUROPIUM_Z F_BOIL F_Cp F_DENSITY F_En F_MASS F_MELT F_WEIGHT F_Z F"\
   "AT_DENSITY FAT_JPKG FAT_JPL FAT_MASS FATMASS Fe_BOIL Fe_Cp Fe_DENSITY F"\
   "e_En Fe_MASS Fe_MELT Fe_WEIGHT Fe_Z FeMASS FERMIUM FERMIUM_Z Fl_BOIL Fl"\
   "_Cp Fl_DENSITY Fl_En Fl_MASS Fl_MELT Fl_WEIGHT Fl_Z FLEROVIUM FLEROVIUM"\
   "_Z FlMASS FLUORINE FLUORINE_Z Fm_BOIL Fm_Cp Fm_DENSITY Fm_En Fm_MASS Fm"\
   "_MELT Fm_WEIGHT Fm_Z FMASS FmMASS Fr_BOIL Fr_Cp Fr_DENSITY Fr_En Fr_MAS"\
   "S Fr_MELT Fr_WEIGHT Fr_Z FRANCIUM FRANCIUM_Z FrMASS Ga_BOIL Ga_Cp Ga_DE"\
   "NSITY Ga_En Ga_MASS Ga_MELT Ga_WEIGHT Ga_Z GADOLINIUM GADOLINIUM_Z GALL"\
   "IUM GALLIUM_Z GaMASS GASOLINE_DENSITY GASOLINE_JPKG GASOLINE_JPL GASOLI"\
   "NE_MASS GASOLINEMASS Gd_BOIL Gd_Cp Gd_DENSITY Gd_En Gd_MASS Gd_MELT Gd_"\
   "WEIGHT Gd_Z GdMASS Ge_BOIL Ge_Cp Ge_DENSITY Ge_En Ge_MASS Ge_MELT Ge_WE"\
   "IGHT Ge_Z GeMASS GERMANIUM GERMANIUM_Z GOLD GOLD_Z H1_MASS H1_WEIGHT H1"\
   "MASS H2_MASS H2_WEIGHT H2MASS H2O_DENSITY H2O_HC H2O_HF H2O_JPKG H2O_JP"\
   "L H2O_MASS H2OMASS H3_MASS H3_WEIGHT H3MASS H_BOIL H_Cp H_DENSITY H_En "\
   "H_MASS H_MELT H_WEIGHT H_Z HAFNIUM HAFNIUM_Z HASSIUM HASSIUM_Z He3_MASS"\
   " He3_WEIGHT He3MASS He4_MASS He4_WEIGHT He4MASS He_BOIL He_Cp He_DENSIT"\
   "Y He_En He_MASS He_MELT He_WEIGHT He_Z HELION_MASS HELION_WEIGHT HELION"\
   "ENERGY HELIONMASS HELIONMASS_ERR HELIUM HELIUM_Z HeMASS HEXANE_DENSITY "\
   "HEXANE_HC HEXANE_HCC HEXANE_HF HEXANE_JPKG HEXANE_JPL HEXANE_MASS HEXAN"\
   "EMASS Hf_BOIL Hf_Cp Hf_DENSITY Hf_En Hf_MASS Hf_MELT Hf_WEIGHT Hf_Z HfM"\
   "ASS Hg_BOIL Hg_Cp Hg_DENSITY Hg_En Hg_MASS Hg_MELT Hg_WEIGHT Hg_Z HgMAS"\
   "S HIGGSBOSON_ENERGY HIGGSBOSON_Hz HIGGSBOSON_MASS HIGGSBOSON_WAVELENGTH"\
   " HIGGSBOSONMASS HIGGSBOSONMASS_ERR HMASS Ho_BOIL Ho_Cp Ho_DENSITY Ho_En"\
   " Ho_MASS Ho_MELT Ho_WEIGHT Ho_Z HOLMIUM HOLMIUM_Z HoMASS Hs_BOIL Hs_Cp "\
   "Hs_DENSITY Hs_En Hs_MASS Hs_MELT Hs_WEIGHT Hs_Z HsMASS HYDROGEN HYDROGE"\
   "N_DENSITY HYDROGEN_HC HYDROGEN_HCC HYDROGEN_HF HYDROGEN_JPKG HYDROGEN_J"\
   "PL HYDROGEN_MASS HYDROGEN_RADIUS HYDROGEN_RADIUS_ERR HYDROGEN_Z HYDROGE"\
   "NMASS I_BOIL I_Cp I_DENSITY I_En I_MASS I_MELT I_WEIGHT I_Z ICE_Cp IMAS"\
   "S In_BOIL In_Cp In_DENSITY In_En In_MASS In_MELT In_WEIGHT In_Z INDIUM "\
   "INDIUM_Z InMASS IODINE IODINE_Z Ir_BOIL Ir_Cp Ir_DENSITY Ir_En Ir_MASS "\
   "Ir_MELT Ir_WEIGHT Ir_Z IRIDIUM IRIDIUM_Z IrMASS IRON IRON_Z K_BOIL K_Cp"\
   " K_DENSITY K_En K_MASS K_MELT K_WEIGHT K_Z KEROSENE_DENSITY KEROSENE_JP"\
   "KG KEROSENE_JPL KEROSENE_MASS KEROSENEMASS KMASS Kr_BOIL Kr_Cp Kr_DENSI"\
   "TY Kr_En Kr_MASS Kr_MELT Kr_WEIGHT Kr_Z KrMASS KRYPTON KRYPTON_Z La_BOI"\
   "L La_Cp La_DENSITY La_En La_MASS La_MELT La_WEIGHT La_Z LaMASS LANTHANU"\
   "M LANTHANUM_Z LAWRENCIUM LAWRENCIUM_Z LEAD LEAD_Z Li_BOIL Li_Cp Li_DENS"\
   "ITY Li_En Li_MASS Li_MELT Li_WEIGHT Li_Z LiMASS LITHIUM LITHIUM_Z LIVER"\
   "MORIUM LIVERMORIUM_Z Lr_BOIL Lr_Cp Lr_DENSITY Lr_En Lr_MASS Lr_MELT Lr_"\
   "WEIGHT Lr_Z LrMASS Lu_BOIL Lu_Cp Lu_DENSITY Lu_En Lu_MASS Lu_MELT Lu_WE"\
   "IGHT Lu_Z LuMASS LUTETIUM LUTETIUM_Z Lv_BOIL Lv_Cp Lv_DENSITY Lv_En Lv_"\
   "MASS Lv_MELT Lv_WEIGHT Lv_Z LvMASS MAGNESIUM MAGNESIUM_Z MANGANESE MANG"\
   "ANESE_Z Mc_BOIL Mc_Cp Mc_DENSITY Mc_En Mc_MASS Mc_MELT Mc_WEIGHT Mc_Z M"\
   "cMASS Md_BOIL Md_Cp Md_DENSITY Md_En Md_MASS Md_MELT Md_WEIGHT Md_Z MdM"\
   "ASS MEITNERIUM MEITNERIUM_Z MENDELEVIUM MENDELEVIUM_Z MERCURY MERCURY_Z"\
   " METHANE_DENSITY METHANE_HC METHANE_HCC METHANE_HF METHANE_JPKG METHANE"\
   "_JPL METHANE_MASS METHANEMASS Mg_BOIL Mg_Cp Mg_DENSITY Mg_En Mg_MASS Mg"\
   "_MELT Mg_WEIGHT Mg_Z MgMASS Mn_BOIL Mn_Cp Mn_DENSITY Mn_En Mn_MASS Mn_M"\
   "ELT Mn_WEIGHT Mn_Z MnMASS Mo_BOIL Mo_Cp Mo_DENSITY Mo_En Mo_MASS Mo_MEL"\
   "T Mo_WEIGHT Mo_Z MOLYBDENUM MOLYBDENUM_Z MoMASS MOSCOVIUM MOSCOVIUM_Z M"\
   "t_BOIL Mt_Cp Mt_DENSITY Mt_En Mt_MASS Mt_MELT Mt_WEIGHT Mt_Z MtMASS MUO"\
   "N_ENERGY MUON_Hz MUON_MASS MUON_WAVELENGTH MUONMASS MUONMASS_ERR N_BOIL"\
   " N_Cp N_DENSITY N_En N_MASS N_MELT N_WEIGHT N_Z Na_BOIL Na_Cp Na_DENSIT"\
   "Y Na_En Na_MASS Na_MELT Na_WEIGHT Na_Z NaMASS Nb_BOIL Nb_Cp Nb_DENSITY "\
   "Nb_En Nb_MASS Nb_MELT Nb_WEIGHT Nb_Z NbMASS Nd_BOIL Nd_Cp Nd_DENSITY Nd"\
   "_En Nd_MASS Nd_MELT Nd_WEIGHT Nd_Z NdMASS Ne_BOIL Ne_Cp Ne_DENSITY Ne_E"\
   "n Ne_MASS Ne_MELT Ne_WEIGHT Ne_Z NeMASS NEODYMIUM NEODYMIUM_Z NEON NEON"\
   "_Z NEPTUNIUM NEPTUNIUM_Z NEUTRON_ENERGY NEUTRON_Hz NEUTRON_MASS NEUTRON"\
   "_WAVELENGTH NEUTRONMASS NEUTRONMASS_ERR Nh_BOIL Nh_Cp Nh_DENSITY Nh_En "\
   "Nh_MASS Nh_MELT Nh_WEIGHT Nh_Z NhMASS Ni_BOIL Ni_Cp Ni_DENSITY Ni_En Ni"\
   "_MASS Ni_MELT Ni_WEIGHT Ni_Z NICKEL NICKEL_Z NIHONIUM NIHONIUM_Z NiMASS"\
   " NIOBIUM NIOBIUM_Z NITROGEN NITROGEN_Z NMASS No_BOIL No_Cp No_DENSITY N"\
   "o_En No_MASS No_MELT No_WEIGHT No_Z NOBELIUM NOBELIUM_Z NoMASS Np_BOIL "\
   "Np_Cp Np_DENSITY Np_En Np_MASS Np_MELT Np_WEIGHT Np_Z NpMASS O16_MASS O"\
   "16_WEIGHT O16MASS O17_MASS O17_WEIGHT O17MASS O18_MASS O18_WEIGHT O18MA"\
   "SS O2_DENSITY O2_HC O2_HF O2_JPKG O2_JPL O2_MASS O2MASS O_BOIL O_Cp O_D"\
   "ENSITY O_En O_MASS O_MELT O_WEIGHT O_Z Og_BOIL Og_Cp Og_DENSITY Og_En O"\
   "g_MASS Og_MELT Og_WEIGHT Og_Z OGANESSON OGANESSON_Z OgMASS OMASS Os_BOI"\
   "L Os_Cp Os_DENSITY Os_En Os_MASS Os_MELT Os_WEIGHT Os_Z OsMASS OSMIUM O"\
   "SMIUM_Z OXYGEN OXYGEN_Z P_BOIL P_Cp P_DENSITY P_En P_MASS P_MELT P_WEIG"\
   "HT P_Z Pa_BOIL Pa_Cp Pa_DENSITY Pa_En Pa_MASS Pa_MELT Pa_WEIGHT Pa_Z PA"\
   "LLADIUM PALLADIUM_Z PaMASS PARAFFIN_DENSITY PARAFFIN_JPKG PARAFFIN_JPL "\
   "PARAFFIN_MASS PARAFFINMASS Pb_BOIL Pb_Cp Pb_DENSITY Pb_En Pb_MASS Pb_ME"\
   "LT Pb_WEIGHT Pb_Z PbMASS Pd_BOIL Pd_Cp Pd_DENSITY Pd_En Pd_MASS Pd_MELT"\
   " Pd_WEIGHT Pd_Z PdMASS PENTANE_DENSITY PENTANE_HC PENTANE_HCC PENTANE_H"\
   "F PENTANE_JPKG PENTANE_JPL PENTANE_MASS PENTANEMASS PHOSPHORUS PHOSPHOR"\
   "US_Z PLATINUM PLATINUM_Z PLUTONIUM PLUTONIUM_Z Pm_BOIL Pm_Cp Pm_DENSITY"\
   " Pm_En Pm_MASS Pm_MELT Pm_WEIGHT Pm_Z PMASS PmMASS Po_BOIL Po_Cp Po_DEN"\
   "SITY Po_En Po_MASS Po_MELT Po_WEIGHT Po_Z POLONIUM POLONIUM_Z PoMASS PO"\
   "TASSIUM POTASSIUM_Z Pr_BOIL Pr_Cp Pr_DENSITY Pr_En Pr_MASS Pr_MELT Pr_W"\
   "EIGHT Pr_Z PRASEODYMIUM PRASEODYMIUM_Z PrMASS PROMETHIUM PROMETHIUM_Z P"\
   "ROPANE_DENSITY PROPANE_HC PROPANE_HCC PROPANE_HF PROPANE_JPKG PROPANE_J"\
   "PL PROPANE_MASS PROPANEMASS PROTACTINIUM PROTACTINIUM_Z PROTON_ENERGY P"\
   "ROTON_Hz PROTON_MASS PROTON_WAVELENGTH PROTONMASS PROTONMASS_ERR Pt_BOI"\
   "L Pt_Cp Pt_DENSITY Pt_En Pt_MASS Pt_MELT Pt_WEIGHT Pt_Z PtMASS Pu_BOIL "\
   "Pu_Cp Pu_DENSITY Pu_En Pu_MASS Pu_MELT Pu_WEIGHT Pu_Z PuMASS Ra_BOIL Ra"\
   "_Cp Ra_DENSITY Ra_En Ra_MASS Ra_MELT Ra_WEIGHT Ra_Z RADIUM RADIUM_Z RAD"\
   "ON RADON_Z RaMASS Rb_BOIL Rb_Cp Rb_DENSITY Rb_En Rb_MASS Rb_MELT Rb_WEI"\
   "GHT Rb_Z RbMASS Re_BOIL Re_Cp Re_DENSITY Re_En Re_MASS Re_MELT Re_WEIGH"\
   "T Re_Z ReMASS Rf_BOIL Rf_Cp Rf_DENSITY Rf_En Rf_MASS Rf_MELT Rf_WEIGHT "\
   "Rf_Z RfMASS Rg_BOIL Rg_Cp Rg_DENSITY Rg_En Rg_MASS Rg_MELT Rg_WEIGHT Rg"\
   "_Z RgMASS Rh_BOIL Rh_Cp Rh_DENSITY Rh_En Rh_MASS Rh_MELT Rh_WEIGHT Rh_Z"\
   " RHENIUM RHENIUM_Z RhMASS RHODIUM RHODIUM_Z Rn_BOIL Rn_Cp Rn_DENSITY Rn"\
   "_En Rn_MASS Rn_MELT Rn_WEIGHT Rn_Z RnMASS ROENTGENIUM ROENTGENIUM_Z Ru_"\
   "BOIL Ru_Cp Ru_DENSITY Ru_En Ru_MASS Ru_MELT Ru_WEIGHT Ru_Z RUBIDIUM RUB"\
   "IDIUM_Z RuMASS RUTHENIUM RUTHENIUM_Z RUTHERFORDIUM RUTHERFORDIUM_Z S_BO"\
   "IL S_Cp S_DENSITY S_En S_MASS S_MELT S_WEIGHT S_Z SAMARIUM SAMARIUM_Z S"\
   "b_BOIL Sb_Cp Sb_DENSITY Sb_En Sb_MASS Sb_MELT Sb_WEIGHT Sb_Z SbMASS Sc_"\
   "BOIL Sc_Cp Sc_DENSITY Sc_En Sc_MASS Sc_MELT Sc_WEIGHT Sc_Z SCANDIUM SCA"\
   "NDIUM_Z ScMASS Se_BOIL Se_Cp Se_DENSITY Se_En Se_MASS Se_MELT Se_WEIGHT"\
   " Se_Z SEABORGIUM SEABORGIUM_Z SELENIUM SELENIUM_Z SeMASS Sg_BOIL Sg_Cp "\
   "Sg_DENSITY Sg_En Sg_MASS Sg_MELT Sg_WEIGHT Sg_Z SgMASS Si_BOIL Si_Cp Si"\
   "_DENSITY Si_En Si_MASS Si_MELT Si_WEIGHT Si_Z SILICON SILICON_Z SILVER "\
   "SILVER_Z SiMASS Sm_BOIL Sm_Cp Sm_DENSITY Sm_En Sm_MASS Sm_MELT Sm_WEIGH"\
   "T Sm_Z SMASS SmMASS Sn_BOIL Sn_Cp Sn_DENSITY Sn_En Sn_MASS Sn_MELT Sn_W"\
   "EIGHT Sn_Z SnMASS SODIUM SODIUM_Z Sr_BOIL Sr_Cp Sr_DENSITY Sr_En Sr_MAS"\
   "S Sr_MELT Sr_WEIGHT Sr_Z SrMASS STEAM_Cp STEAM_DENSITY STEAM_HC STEAM_H"\
   "F STEAM_JPKG STEAM_JPL STEAM_MASS STEAMMASS STRANGEQUARK_CHARGE STRANGE"\
   "QUARK_ENERGY STRANGEQUARK_Hz STRANGEQUARK_MASS STRANGEQUARK_WAVELENGTH "\
   "STRANGEQUARKMASS STRANGEQUARKMASS_ERR STRONTIUM STRONTIUM_Z SUCROSE_DEN"\
   "SITY SUCROSE_HC SUCROSE_HCC SUCROSE_HF SUCROSE_JPKG SUCROSE_JPL SUCROSE"\
   "_MASS SUCROSEMASS SUGAR_DENSITY SUGAR_HC SUGAR_HCC SUGAR_HF SUGAR_JPKG "\
   "SUGAR_JPL SUGAR_MASS SUGARMASS SULFUR SULFUR_Z T_MASS T_WEIGHT T_Z Ta_B"\
   "OIL Ta_Cp Ta_DENSITY Ta_En Ta_MASS Ta_MELT Ta_WEIGHT Ta_Z TaMASS TANTAL"\
   "UM TANTALUM_Z TAU_ENERGY TAU_Hz TAU_MASS TAU_WAVELENGTH TAUMASS TAUMASS"\
   "_ERR Tb_BOIL Tb_Cp Tb_DENSITY Tb_En Tb_MASS Tb_MELT Tb_WEIGHT Tb_Z TbMA"\
   "SS Tc_BOIL Tc_Cp Tc_DENSITY Tc_En Tc_MASS Tc_MELT Tc_WEIGHT Tc_Z TcMASS"\
   " Te_BOIL Te_Cp Te_DENSITY Te_En Te_MASS Te_MELT Te_WEIGHT Te_Z TECHNETI"\
   "UM TECHNETIUM_Z TELLURIUM TELLURIUM_Z TeMASS TENNESSINE TENNESSINE_Z TE"\
   "RBIUM TERBIUM_Z Th_BOIL Th_Cp Th_DENSITY Th_En Th_MASS Th_MELT Th_WEIGH"\
   "T Th_Z THALLIUM THALLIUM_Z ThMASS THORIUM THORIUM_Z THULIUM THULIUM_Z T"\
   "i_BOIL Ti_Cp Ti_DENSITY Ti_En Ti_MASS Ti_MELT Ti_WEIGHT Ti_Z TiMASS TIN"\
   " TIN_Z TITANIUM TITANIUM_Z Tl_BOIL Tl_Cp Tl_DENSITY Tl_En Tl_MASS Tl_ME"\
   "LT Tl_WEIGHT Tl_Z TlMASS Tm_BOIL Tm_Cp Tm_DENSITY Tm_En Tm_MASS Tm_MELT"\
   " Tm_WEIGHT Tm_Z TMASS TmMASS TNTJPKG TOPQUARK_CHARGE TOPQUARK_ENERGY TO"\
   "PQUARK_Hz TOPQUARK_MASS TOPQUARK_WAVELENGTH TOPQUARKMASS TOPQUARKMASS_E"\
   "RR TRITIUM TRITIUM_Z TRITON_MASS TRITON_WEIGHT TRITONENERGY TRITONMASS "\
   "TRITONMASS_ERR Ts_BOIL Ts_Cp Ts_DENSITY Ts_En Ts_MASS Ts_MELT Ts_WEIGHT"\
   " Ts_Z TsMASS TUNGSTEN TUNGSTEN_Z U_BOIL U_Cp U_DENSITY U_En U_MASS U_ME"\
   "LT U_WEIGHT U_Z UMASS UPQUARK_CHARGE UPQUARK_ENERGY UPQUARK_Hz UPQUARK_"\
   "MASS UPQUARK_WAVELENGTH UPQUARKMASS UPQUARKMASS_ERR URANIUM URANIUM_Z V"\
   "_BOIL V_Cp V_DENSITY V_En V_MASS V_MELT V_WEIGHT V_Z VANADIUM VANADIUM_"\
   "Z VMASS VSMOW_H1_RATIO VSMOW_H2_RATIO VSMOW_H3_RATIO VSMOW_H_MASS VSMOW"\
   "_MASS VSMOW_O16_RATIO VSMOW_O17_RATIO VSMOW_O18_RATIO VSMOW_O_MASS W_BO"\
   "IL W_Cp W_DENSITY W_En W_MASS W_MELT W_WEIGHT W_Z WATER_Cp WATER_CRITIC"\
   "AL WATER_DENSITY WATER_FUSION_JPKG WATER_FUSION_JPMOLE WATER_HC WATER_H"\
   "F WATER_JPKG WATER_JPL WATER_MASS WATER_VAPORIZATION_JPKG WATER_VAPORIZ"\
   "ATION_JPMOLE WATERMASS WBOSON_ENERGY WBOSON_Hz WBOSON_MASS WBOSON_WAVEL"\
   "ENGTH WBOSONMASS WBOSONMASS_ERR WMASS Xe_BOIL Xe_Cp Xe_DENSITY Xe_En Xe"\
   "_MASS Xe_MELT Xe_WEIGHT Xe_Z XeMASS XENON XENON_Z Y_BOIL Y_Cp Y_DENSITY"\
   " Y_En Y_MASS Y_MELT Y_WEIGHT Y_Z Yb_BOIL Yb_Cp Yb_DENSITY Yb_En Yb_MASS"\
   " Yb_MELT Yb_WEIGHT Yb_Z YbMASS YMASS YTTERBIUM YTTERBIUM_Z YTTRIUM YTTR"\
   "IUM_Z ZBOSON_ENERGY ZBOSON_Hz ZBOSON_MASS ZBOSON_WAVELENGTH ZBOSONMASS "\
   "ZBOSONMASS_ERR ZINC ZINC_Z ZIRCONIUM ZIRCONIUM_Z Zn_BOIL Zn_Cp Zn_DENSI"\
   "TY Zn_En Zn_MASS Zn_MELT Zn_WEIGHT Zn_Z ZnMASS Zr_BOIL Zr_Cp Zr_DENSITY"\
   " Zr_En Zr_MASS Zr_MELT Zr_WEIGHT Zr_Z ZrMASS"\
   "\n"\
   "   Kwelements 1-ary Functions: waterboiling waterdensity waterdensity_a"\
   "irfree waterdensity_airfree__1 watervapor_pressure watervaporization"\
   "\n"
#define Kwelements_DESC \
   "   Kwelements Constants: Ac_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) Ac"\
   "MASS ACTINIUM(_Z)? Ag_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) AgMASS A"\
   "IR(_MASS|MASS) Al_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) AlMASS ALPHA"\
   "(_(MASS|WEIGHT)|ENERGY|MASS(_ERR)?) ALUMINIUM(_Z)? Am_(BOIL|Cp|DENSITY|"\
   "En|M(ASS|ELT)|WEIGHT|Z) AMERICIUM(_Z)? AmMASS ANTIMONY(_Z)? Ar_(BOIL|Cp"\
   "|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) ARGON(_Z)? ArMASS ARSENIC(_Z)? As_(BOI"\
   "L|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) AsMASS ASTATINE(_Z)? At_(BOIL|Cp|D"\
   "ENSITY|En|M(ASS|ELT)|WEIGHT|Z) AtMASS Au_(BOIL|Cp|DENSITY|En|M(ASS|ELT)"\
   "|WEIGHT|Z) AuMASS B_BOIL B_Cp B_DENSITY B_En B_M(ASS|ELT) B_WEIGHT B_Z "\
   "Ba_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) BaMASS BARIUM(_Z)? Be_(BOIL"\
   "|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) BeMASS BER(KELIUM(_Z)?|YLLIUM(_Z)?)"\
   " Bh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) BhMASS Bi_(BOIL|Cp|DENSITY"\
   "|En|M(ASS|ELT)|WEIGHT|Z) BiMASS BISMUTH(_Z)? Bk_(BOIL|Cp|DENSITY|En|M(A"\
   "SS|ELT)|WEIGHT|Z) BkMASS BMASS BOHR(IUM(_Z)?|RADIUS(_ERR)?) BORON(_Z)? "\
   "BOTTOMQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Br_(BOIL|C"\
   "p|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) BrMASS BROMINE(_Z)? BUTANE(_(DENSITY|"\
   "H(CC?|F)|JP(KG|L)|MASS)|MASS) C12(_(MASS|RATIO|WEIGHT)|MASS) C13(_(MASS"\
   "|RATIO|WEIGHT)|MASS) C14(_(MASS|RATIO|WEIGHT)|MASS) C_BOIL C_Cp C_DENSI"\
   "TY C_En C_M(ASS|E(AN_MASS|LT)) C_WEIGHT C_Z Ca_(BOIL|Cp|DENSITY|En|M(AS"\
   "S|ELT)|WEIGHT|Z) CADMIUM(_Z)? CAESIUM(_Z)? CAL(CIUM(_Z)?|IFORNIUM(_Z)?)"\
   " CaMASS CARBON(|_Z|DIOXIDE(_(DENSITY|H[CF]|JP(KG|L)|MASS)|MASS)) Cd_(BO"\
   "IL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CdMASS Ce_(BOIL|Cp|DENSITY|En|M(A"\
   "SS|ELT)|WEIGHT|Z) CeMASS CERIUM(_Z)? Cf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|"\
   "WEIGHT|Z) CfMASS CHARMQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_E"\
   "RR)?) CHLORINE(_Z)? CHROMIUM(_Z)? Cl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEI"\
   "GHT|Z) ClMASS Cm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CMASS CmMASS "\
   "Cn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CnMASS CO2(_(DENSITY|H[CF]|"\
   "JP(KG|L)|MASS)|MASS) Co_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) COAL(_"\
   "(DENSITY|JP(KG|L)|MASS)|MASS) COBALT(_Z)? CoMASS COP(ERNICIUM(_Z)?|PER("\
   "_Z)?) Cr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CrMASS Cs_(BOIL|Cp|DE"\
   "NSITY|En|M(ASS|ELT)|WEIGHT|Z) CsMASS Cu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|"\
   "WEIGHT|Z) CuMASS CURIUM(_Z)? D_MASS D_WEIGHT D_Z DARMSTADTIUM(_Z)? Db_("\
   "BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) DbMASS DEUTER(IUM(_Z)?|ON(_(MAS"\
   "S|WEIGHT)|ENERGY|MASS(_ERR)?)) DIESEL(_(DENSITY|JP(KG|L)|MASS)|MASS) DM"\
   "ASS DOWNQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Ds_(BOIL"\
   "|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) DsMASS DUBNIUM(_Z)? Dy_(BOIL|Cp|DEN"\
   "SITY|En|M(ASS|ELT)|WEIGHT|Z) DyMASS DYSPROSIUM(_Z)? EINSTEINIUM(_Z)? EL"\
   "ECTRON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Er_(BOIL|Cp|DENSITY|En"\
   "|M(ASS|ELT)|WEIGHT|Z) ERBIUM(_Z)? ErMASS Es_(BOIL|Cp|DENSITY|En|M(ASS|E"\
   "LT)|WEIGHT|Z) EsMASS ETHAN(E(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS)|OL"\
   "(_(DENSITY|G(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS)|H(CC?|F)|JP(KG|L)|"\
   "MASS)|MASS)) Eu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) EuMASS EUROPIU"\
   "M(_Z)? F_BOIL F_Cp F_DENSITY F_En F_M(ASS|ELT) F_WEIGHT F_Z FAT(_(DENSI"\
   "TY|JP(KG|L)|MASS)|MASS) Fe_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) FeM"\
   "ASS FERMIUM(_Z)? Fl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) FLEROVIUM("\
   "_Z)? FlMASS FLUORINE(_Z)? Fm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) F"\
   "MASS FmMASS Fr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) FRANCIUM(_Z)? F"\
   "rMASS Ga_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) GADOLINIUM(_Z)? GALLI"\
   "UM(_Z)? GaMASS GASOLINE(_(DENSITY|JP(KG|L)|MASS)|MASS) Gd_(BOIL|Cp|DENS"\
   "ITY|En|M(ASS|ELT)|WEIGHT|Z) GdMASS Ge_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WE"\
   "IGHT|Z) GeMASS GERMANIUM(_Z)? GOLD(_Z)? H1_(MASS|WEIGHT) H1MASS H2_(MAS"\
   "S|WEIGHT) H2MASS H2O(_(DENSITY|H[CF]|JP(KG|L)|MASS)|MASS) H3_(MASS|WEIG"\
   "HT) H3MASS H_BOIL H_Cp H_DENSITY H_En H_M(ASS|ELT) H_WEIGHT H_Z HAFNIUM"\
   "(_Z)? HASSIUM(_Z)? He3(_(MASS|WEIGHT)|MASS) He4(_(MASS|WEIGHT)|MASS) He"\
   "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HELI(ON(_(MASS|WEIGHT)|ENERGY"\
   "|MASS(_ERR)?)|UM(_Z)?) HeMASS HEXANE(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|"\
   "MASS) Hf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HfMASS Hg_(BOIL|Cp|DE"\
   "NSITY|En|M(ASS|ELT)|WEIGHT|Z) HgMASS HIGGSBOSON(_(ENERGY|Hz|MASS|WAVELE"\
   "NGTH)|MASS(_ERR)?) HMASS Ho_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HO"\
   "LMIUM(_Z)? HoMASS Hs_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HsMASS HY"\
   "DROGEN(|_(DENSITY|H(CC?|F)|JP(KG|L)|MASS|RADIUS(_ERR)?|Z)|MASS) I_BOIL "\
   "I_Cp I_DENSITY I_En I_M(ASS|ELT) I_WEIGHT I_Z ICE_Cp IMASS In_(BOIL|Cp|"\
   "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) INDIUM(_Z)? InMASS IODINE(_Z)? Ir_(BOIL"\
   "|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) IRIDIUM(_Z)? IrMASS IRON(_Z)? K_BOI"\
   "L K_Cp K_DENSITY K_En K_M(ASS|ELT) K_WEIGHT K_Z KEROSENE(_(DENSITY|JP(K"\
   "G|L)|MASS)|MASS) KMASS Kr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) KrMA"\
   "SS KRYPTON(_Z)? La_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) LaMASS LANT"\
   "HANUM(_Z)? LAWRENCIUM(_Z)? LEAD(_Z)? Li_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|"\
   "WEIGHT|Z) LiMASS LITHIUM(_Z)? LIVERMORIUM(_Z)? Lr_(BOIL|Cp|DENSITY|En|M"\
   "(ASS|ELT)|WEIGHT|Z) LrMASS Lu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) "\
   "LuMASS LUTETIUM(_Z)? Lv_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) LvMASS"\
   " MAGNESIUM(_Z)? MANGANESE(_Z)? Mc_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT"\
   "|Z) McMASS Md_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) MdMASS MEITNERIU"\
   "M(_Z)? MENDELEVIUM(_Z)? MERCURY(_Z)? METHANE(_(DENSITY|H(CC?|F)|JP(KG|L"\
   ")|MASS)|MASS) Mg_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) MgMASS Mn_(BO"\
   "IL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) MnMASS Mo_(BOIL|Cp|DENSITY|En|M(A"\
   "SS|ELT)|WEIGHT|Z) MOLYBDENUM(_Z)? MoMASS MOSCOVIUM(_Z)? Mt_(BOIL|Cp|DEN"\
   "SITY|En|M(ASS|ELT)|WEIGHT|Z) MtMASS MUON(_(ENERGY|Hz|MASS|WAVELENGTH)|M"\
   "ASS(_ERR)?) N_BOIL N_Cp N_DENSITY N_En N_M(ASS|ELT) N_WEIGHT N_Z Na_(BO"\
   "IL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NaMASS Nb_(BOIL|Cp|DENSITY|En|M(A"\
   "SS|ELT)|WEIGHT|Z) NbMASS Nd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) Nd"\
   "MASS Ne_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NeMASS NEO(DYMIUM(_Z)?"\
   "|N(_Z)?) NEPTUNIUM(_Z)? NEUTRON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)"\
   "?) Nh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NhMASS Ni_(BOIL|Cp|DENSI"\
   "TY|En|M(ASS|ELT)|WEIGHT|Z) NICKEL(_Z)? NIHONIUM(_Z)? NiMASS NIOBIUM(_Z)"\
   "? NITROGEN(_Z)? NMASS No_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NOBEL"\
   "IUM(_Z)? NoMASS Np_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NpMASS O16("\
   "_(MASS|WEIGHT)|MASS) O17(_(MASS|WEIGHT)|MASS) O18(_(MASS|WEIGHT)|MASS) "\
   "O2_(DENSITY|H[CF]|JP(KG|L)|MASS) O2MASS O_BOIL O_Cp O_DENSITY O_En O_M("\
   "ASS|ELT) O_WEIGHT O_Z Og_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) OGANE"\
   "SSON(_Z)? OgMASS OMASS Os_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) OsMA"\
   "SS OSMIUM(_Z)? OXYGEN(_Z)? P_BOIL P_Cp P_DENSITY P_En P_M(ASS|ELT) P_WE"\
   "IGHT P_Z Pa_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PALLADIUM(_Z)? PaM"\
   "ASS PARAFFIN(_(DENSITY|JP(KG|L)|MASS)|MASS) Pb_(BOIL|Cp|DENSITY|En|M(AS"\
   "S|ELT)|WEIGHT|Z) PbMASS Pd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PdM"\
   "ASS PENTANE(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS) PHOSPHORUS(_Z)? PLA"\
   "TINUM(_Z)? PLUTONIUM(_Z)? Pm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) P"\
   "MASS PmMASS Po_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) POLONIUM(_Z)? P"\
   "oMASS POTASSIUM(_Z)? Pr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PRASEO"\
   "DYMIUM(_Z)? PrMASS PRO(METHIUM(_Z)?|PANE(_(DENSITY|H(CC?|F)|JP(KG|L)|MA"\
   "SS)|MASS)|T(ACTINIUM(_Z)?|ON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?))"\
   ") Pt_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PtMASS Pu_(BOIL|Cp|DENSIT"\
   "Y|En|M(ASS|ELT)|WEIGHT|Z) PuMASS Ra_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIG"\
   "HT|Z) RAD(IUM(_Z)?|ON(_Z)?) RaMASS Rb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WE"\
   "IGHT|Z) RbMASS Re_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) ReMASS Rf_(B"\
   "OIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RfMASS Rg_(BOIL|Cp|DENSITY|En|M("\
   "ASS|ELT)|WEIGHT|Z) RgMASS Rh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) R"\
   "HENIUM(_Z)? RhMASS RHODIUM(_Z)? Rn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGH"\
   "T|Z) RnMASS ROENTGENIUM(_Z)? Ru_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z"\
   ") RUBIDIUM(_Z)? RuMASS RUTHE(NIUM(_Z)?|RFORDIUM(_Z)?) S_BOIL S_Cp S_DEN"\
   "SITY S_En S_M(ASS|ELT) S_WEIGHT S_Z SAMARIUM(_Z)? Sb_(BOIL|Cp|DENSITY|E"\
   "n|M(ASS|ELT)|WEIGHT|Z) SbMASS Sc_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|"\
   "Z) SCANDIUM(_Z)? ScMASS Se_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SEA"\
   "BORGIUM(_Z)? SELENIUM(_Z)? SeMASS Sg_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEI"\
   "GHT|Z) SgMASS Si_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SIL(ICON(_Z)?"\
   "|VER(_Z)?) SiMASS Sm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SMASS SmM"\
   "ASS Sn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SnMASS SODIUM(_Z)? Sr_("\
   "BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SrMASS STEAM(_(Cp|DENSITY|H[CF]"\
   "|JP(KG|L)|MASS)|MASS) STR(ANGEQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)"\
   "|MASS(_ERR)?)|ONTIUM(_Z)?) SUCROSE(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MA"\
   "SS) SUGAR(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS) SULFUR(_Z)? T_MASS T_"\
   "WEIGHT T_Z Ta_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TaMASS TANTALUM("\
   "_Z)? TAU(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Tb_(BOIL|Cp|DENSITY|"\
   "En|M(ASS|ELT)|WEIGHT|Z) TbMASS Tc_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT"\
   "|Z) TcMASS Te_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TECHNETIUM(_Z)? "\
   "TELLURIUM(_Z)? TeMASS TENNESSINE(_Z)? TERBIUM(_Z)? Th_(BOIL|Cp|DENSITY|"\
   "En|M(ASS|ELT)|WEIGHT|Z) THALLIUM(_Z)? ThMASS THORIUM(_Z)? THULIUM(_Z)? "\
   "Ti_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TiMASS TIN(_Z)? TITANIUM(_Z"\
   ")? Tl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TlMASS Tm_(BOIL|Cp|DENSI"\
   "TY|En|M(ASS|ELT)|WEIGHT|Z) TMASS TmMASS TNTJPKG TOPQUARK(_(CHARGE|ENERG"\
   "Y|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) TRIT(IUM(_Z)?|ON(_(MASS|WEIGHT)|ENER"\
   "GY|MASS(_ERR)?)) Ts_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TsMASS TUN"\
   "GSTEN(_Z)? U_BOIL U_Cp U_DENSITY U_En U_M(ASS|ELT) U_WEIGHT U_Z UMASS U"\
   "PQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) URANIUM(_Z)? V_"\
   "BOIL V_Cp V_DENSITY V_En V_M(ASS|ELT) V_WEIGHT V_Z VANADIUM(_Z)? VMASS "\
   "VSMOW_(H(1_RATIO|2_RATIO|3_RATIO|_MASS)|MASS|O(1[678]_RATIO|_MASS)) W_B"\
   "OIL W_Cp W_DENSITY W_En W_M(ASS|ELT) W_WEIGHT W_Z WATER(_(C(p|RITICAL)|"\
   "DENSITY|FUSION_JP(KG|MOLE)|H[CF]|JP(KG|L)|MASS|VAPORIZATION_JP(KG|MOLE)"\
   ")|MASS) WBOSON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) WMASS Xe_(BOIL"\
   "|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) XeMASS XENON(_Z)? Y_BOIL Y_Cp Y_DEN"\
   "SITY Y_En Y_M(ASS|ELT) Y_WEIGHT Y_Z Yb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|W"\
   "EIGHT|Z) YbMASS YMASS YTT(ERBIUM(_Z)?|RIUM(_Z)?) ZBOSON(_(ENERGY|Hz|MAS"\
   "S|WAVELENGTH)|MASS(_ERR)?) ZINC(_Z)? ZIRCONIUM(_Z)? Zn_(BOIL|Cp|DENSITY"\
   "|En|M(ASS|ELT)|WEIGHT|Z) ZnMASS Zr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGH"\
   "T|Z) ZrMASS"\
   "\n"\
   "   Kwelements 1-ary Functions: water(boiling|density(_airfree(__1)?)?|v"\
   "apor(_pressure|ization))"\
   "\n"
#endif // #ifndef INCLUDED_Kwelements_h
