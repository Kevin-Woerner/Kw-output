'    Copyright (C) 2021 by Kevin D. Woerner
''-' =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
''-' =KDW= ######### SOURCE $KWROOT/codekdw/kw-lib/Kwelements.fwipp #########
''-' =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
''-' =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
' 2021-05-14 kdw  For Changelog, See File Kwelements.varylog
Attribute VB_Name = "Kwelements"
Option Explicit
Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables #################################### LANG_VB6 #
Public Const HYDROGEN_Z As Double = 1
Public Const HYDROGEN As Double = 1.008
Public Const H_Z As Double = HYDROGEN_Z
Public Const H_WEIGHT As Double = 1.008
Public Const H_MASS As Double = 1.008 * Kw.MOLARMASS
Public Const HMASS As Double = H_MASS / Kw.AVOGADRO
Public Const H_DENSITY As Double = 0.08988 * Kw.DENSITY
Public Const H_MELT As Double = 14.01 * Kw.KELVIN
Public Const H_BOIL As Double = 20.28 * Kw.KELVIN
Public Const H_Cp As Double = 14304 * Kw.SPECIFICHEAT
Public Const H_En As Double = 2.20
Public Const HELIUM_Z As Double = 2
Public Const HELIUM As Double = 4.002602
Public Const He_Z As Double = HELIUM_Z
Public Const He_WEIGHT As Double = 4.002602
Public Const He_MASS As Double = 4.002602 * Kw.MOLARMASS
Public Const HeMASS As Double = He_MASS / Kw.AVOGADRO
Public Const He_DENSITY As Double = 0.1785 * Kw.DENSITY
Public Const He_MELT As Double = -1 * Kw.KELVIN
Public Const He_BOIL As Double = 4.22 * Kw.KELVIN
Public Const He_Cp As Double = 5193 * Kw.SPECIFICHEAT
Public Const He_En As Double = -1
Public Const LITHIUM_Z As Double = 3
Public Const LITHIUM As Double = 6.94
Public Const Li_Z As Double = LITHIUM_Z
Public Const Li_WEIGHT As Double = 6.94
Public Const Li_MASS As Double = 6.94 * Kw.MOLARMASS
Public Const LiMASS As Double = Li_MASS / Kw.AVOGADRO
Public Const Li_DENSITY As Double = 534 * Kw.DENSITY
Public Const Li_MELT As Double = 453.69 * Kw.KELVIN
Public Const Li_BOIL As Double = 1560 * Kw.KELVIN
Public Const Li_Cp As Double = 3582 * Kw.SPECIFICHEAT
Public Const Li_En As Double = 0.98
Public Const BERYLLIUM_Z As Double = 4
Public Const BERYLLIUM As Double = 9.0121831
Public Const Be_Z As Double = BERYLLIUM_Z
Public Const Be_WEIGHT As Double = 9.0121831
Public Const Be_MASS As Double = 9.0121831 * Kw.MOLARMASS
Public Const BeMASS As Double = Be_MASS / Kw.AVOGADRO
Public Const Be_DENSITY As Double = 1850 * Kw.DENSITY
Public Const Be_MELT As Double = 1560 * Kw.KELVIN
Public Const Be_BOIL As Double = 2742 * Kw.KELVIN
Public Const Be_Cp As Double = 1825 * Kw.SPECIFICHEAT
Public Const Be_En As Double = 1.57
Public Const BORON_Z As Double = 5
Public Const BORON As Double = 10.81
Public Const B_Z As Double = BORON_Z
Public Const B_WEIGHT As Double = 10.81
Public Const B_MASS As Double = 10.81 * Kw.MOLARMASS
Public Const BMASS As Double = B_MASS / Kw.AVOGADRO
Public Const B_DENSITY As Double = 2340 * Kw.DENSITY
Public Const B_MELT As Double = 2349 * Kw.KELVIN
Public Const B_BOIL As Double = 4200 * Kw.KELVIN
Public Const B_Cp As Double = 1026 * Kw.SPECIFICHEAT
Public Const B_En As Double = 2.04
Public Const CARBON_Z As Double = 6
Public Const CARBON As Double = 12.011
Public Const C_Z As Double = CARBON_Z
Public Const C_WEIGHT As Double = 12.011
Public Const C_MASS As Double = 12.011 * Kw.MOLARMASS
Public Const CMASS As Double = C_MASS / Kw.AVOGADRO
Public Const C_DENSITY As Double = 2267 * Kw.DENSITY
Public Const C_MELT As Double = 3800 * Kw.KELVIN
Public Const C_BOIL As Double = 4300 * Kw.KELVIN
Public Const C_Cp As Double = 709 * Kw.SPECIFICHEAT
Public Const C_En As Double = 2.55
Public Const NITROGEN_Z As Double = 7
Public Const NITROGEN As Double = 14.007
Public Const N_Z As Double = NITROGEN_Z
Public Const N_WEIGHT As Double = 14.007
Public Const N_MASS As Double = 14.007 * Kw.MOLARMASS
Public Const NMASS As Double = N_MASS / Kw.AVOGADRO
Public Const N_DENSITY As Double = 1.2506 * Kw.DENSITY
Public Const N_MELT As Double = 63.15 * Kw.KELVIN
Public Const N_BOIL As Double = 77.36 * Kw.KELVIN
Public Const N_Cp As Double = 1040 * Kw.SPECIFICHEAT
Public Const N_En As Double = 3.04
Public Const OXYGEN_Z As Double = 8
Public Const OXYGEN As Double = 15.999
Public Const O_Z As Double = OXYGEN_Z
Public Const O_WEIGHT As Double = 15.999
Public Const O_MASS As Double = 15.999 * Kw.MOLARMASS
Public Const OMASS As Double = O_MASS / Kw.AVOGADRO
Public Const O_DENSITY As Double = 1.429 * Kw.DENSITY
Public Const O_MELT As Double = 54.36 * Kw.KELVIN
Public Const O_BOIL As Double = 90.20 * Kw.KELVIN
Public Const O_Cp As Double = 918 * Kw.SPECIFICHEAT
Public Const O_En As Double = 3.44
Public Const FLUORINE_Z As Double = 9
Public Const FLUORINE As Double = 18.998403163
Public Const F_Z As Double = FLUORINE_Z
Public Const F_WEIGHT As Double = 18.998403163
Public Const F_MASS As Double = 18.998403163 * Kw.MOLARMASS
Public Const FMASS As Double = F_MASS / Kw.AVOGADRO
Public Const F_DENSITY As Double = 1.696 * Kw.DENSITY
Public Const F_MELT As Double = 53.53 * Kw.KELVIN
Public Const F_BOIL As Double = 85.03 * Kw.KELVIN
Public Const F_Cp As Double = 824 * Kw.SPECIFICHEAT
Public Const F_En As Double = 3.98
Public Const NEON_Z As Double = 10
Public Const NEON As Double = 20.1797
Public Const Ne_Z As Double = NEON_Z
Public Const Ne_WEIGHT As Double = 20.1797
Public Const Ne_MASS As Double = 20.1797 * Kw.MOLARMASS
Public Const NeMASS As Double = Ne_MASS / Kw.AVOGADRO
Public Const Ne_DENSITY As Double = 0.8999 * Kw.DENSITY
Public Const Ne_MELT As Double = 24.56 * Kw.KELVIN
Public Const Ne_BOIL As Double = 27.07 * Kw.KELVIN
Public Const Ne_Cp As Double = 1030 * Kw.SPECIFICHEAT
Public Const Ne_En As Double = -1
Public Const SODIUM_Z As Double = 11
Public Const SODIUM As Double = 22.98976928
Public Const Na_Z As Double = SODIUM_Z
Public Const Na_WEIGHT As Double = 22.98976928
Public Const Na_MASS As Double = 22.98976928 * Kw.MOLARMASS
Public Const NaMASS As Double = Na_MASS / Kw.AVOGADRO
Public Const Na_DENSITY As Double = 971 * Kw.DENSITY
Public Const Na_MELT As Double = 370.87 * Kw.KELVIN
Public Const Na_BOIL As Double = 1156 * Kw.KELVIN
Public Const Na_Cp As Double = 1228 * Kw.SPECIFICHEAT
Public Const Na_En As Double = 0.93
Public Const MAGNESIUM_Z As Double = 12
Public Const MAGNESIUM As Double = 24.305
Public Const Mg_Z As Double = MAGNESIUM_Z
Public Const Mg_WEIGHT As Double = 24.305
Public Const Mg_MASS As Double = 24.305 * Kw.MOLARMASS
Public Const MgMASS As Double = Mg_MASS / Kw.AVOGADRO
Public Const Mg_DENSITY As Double = 1738 * Kw.DENSITY
Public Const Mg_MELT As Double = 923 * Kw.KELVIN
Public Const Mg_BOIL As Double = 1363 * Kw.KELVIN
Public Const Mg_Cp As Double = 1023 * Kw.SPECIFICHEAT
Public Const Mg_En As Double = 1.31
Public Const ALUMINIUM_Z As Double = 13
Public Const ALUMINIUM As Double = 26.9815384
Public Const Al_Z As Double = ALUMINIUM_Z
Public Const Al_WEIGHT As Double = 26.9815384
Public Const Al_MASS As Double = 26.9815384 * Kw.MOLARMASS
Public Const AlMASS As Double = Al_MASS / Kw.AVOGADRO
Public Const Al_DENSITY As Double = 2698 * Kw.DENSITY
Public Const Al_MELT As Double = 933.47 * Kw.KELVIN
Public Const Al_BOIL As Double = 2792 * Kw.KELVIN
Public Const Al_Cp As Double = 897 * Kw.SPECIFICHEAT
Public Const Al_En As Double = 1.61
Public Const SILICON_Z As Double = 14
Public Const SILICON As Double = 28.085
Public Const Si_Z As Double = SILICON_Z
Public Const Si_WEIGHT As Double = 28.085
Public Const Si_MASS As Double = 28.085 * Kw.MOLARMASS
Public Const SiMASS As Double = Si_MASS / Kw.AVOGADRO
Public Const Si_DENSITY As Double = 2329.6 * Kw.DENSITY
Public Const Si_MELT As Double = 1687 * Kw.KELVIN
Public Const Si_BOIL As Double = 3538 * Kw.KELVIN
Public Const Si_Cp As Double = 705 * Kw.SPECIFICHEAT
Public Const Si_En As Double = 1.90
Public Const PHOSPHORUS_Z As Double = 15
Public Const PHOSPHORUS As Double = 30.973761998
Public Const P_Z As Double = PHOSPHORUS_Z
Public Const P_WEIGHT As Double = 30.973761998
Public Const P_MASS As Double = 30.973761998 * Kw.MOLARMASS
Public Const PMASS As Double = P_MASS / Kw.AVOGADRO
Public Const P_DENSITY As Double = 1820 * Kw.DENSITY
Public Const P_MELT As Double = 317.30 * Kw.KELVIN
Public Const P_BOIL As Double = 550 * Kw.KELVIN
Public Const P_Cp As Double = 769 * Kw.SPECIFICHEAT
Public Const P_En As Double = 2.19
Public Const SULFUR_Z As Double = 16
Public Const SULFUR As Double = 32.06
Public Const S_Z As Double = SULFUR_Z
Public Const S_WEIGHT As Double = 32.06
Public Const S_MASS As Double = 32.06 * Kw.MOLARMASS
Public Const SMASS As Double = S_MASS / Kw.AVOGADRO
Public Const S_DENSITY As Double = 2067 * Kw.DENSITY
Public Const S_MELT As Double = 388.36 * Kw.KELVIN
Public Const S_BOIL As Double = 717.87 * Kw.KELVIN
Public Const S_Cp As Double = 710 * Kw.SPECIFICHEAT
Public Const S_En As Double = 2.58
Public Const CHLORINE_Z As Double = 17
Public Const CHLORINE As Double = 35.45
Public Const Cl_Z As Double = CHLORINE_Z
Public Const Cl_WEIGHT As Double = 35.45
Public Const Cl_MASS As Double = 35.45 * Kw.MOLARMASS
Public Const ClMASS As Double = Cl_MASS / Kw.AVOGADRO
Public Const Cl_DENSITY As Double = 3.214 * Kw.DENSITY
Public Const Cl_MELT As Double = 171.6 * Kw.KELVIN
Public Const Cl_BOIL As Double = 239.11 * Kw.KELVIN
Public Const Cl_Cp As Double = 479 * Kw.SPECIFICHEAT
Public Const Cl_En As Double = 3.16
Public Const ARGON_Z As Double = 18
Public Const ARGON As Double = 39.948
Public Const Ar_Z As Double = ARGON_Z
Public Const Ar_WEIGHT As Double = 39.948
Public Const Ar_MASS As Double = 39.948 * Kw.MOLARMASS
Public Const ArMASS As Double = Ar_MASS / Kw.AVOGADRO
Public Const Ar_DENSITY As Double = 1.7837 * Kw.DENSITY
Public Const Ar_MELT As Double = 83.80 * Kw.KELVIN
Public Const Ar_BOIL As Double = 87.30 * Kw.KELVIN
Public Const Ar_Cp As Double = 520 * Kw.SPECIFICHEAT
Public Const Ar_En As Double = -1
Public Const POTASSIUM_Z As Double = 19
Public Const POTASSIUM As Double = 39.0983
Public Const K_Z As Double = POTASSIUM_Z
Public Const K_WEIGHT As Double = 39.0983
Public Const K_MASS As Double = 39.0983 * Kw.MOLARMASS
Public Const KMASS As Double = K_MASS / Kw.AVOGADRO
Public Const K_DENSITY As Double = 862 * Kw.DENSITY
Public Const K_MELT As Double = 336.53 * Kw.KELVIN
Public Const K_BOIL As Double = 1032 * Kw.KELVIN
Public Const K_Cp As Double = 757 * Kw.SPECIFICHEAT
Public Const K_En As Double = 0.82
Public Const CALCIUM_Z As Double = 20
Public Const CALCIUM As Double = 40.078
Public Const Ca_Z As Double = CALCIUM_Z
Public Const Ca_WEIGHT As Double = 40.078
Public Const Ca_MASS As Double = 40.078 * Kw.MOLARMASS
Public Const CaMASS As Double = Ca_MASS / Kw.AVOGADRO
Public Const Ca_DENSITY As Double = 1540 * Kw.DENSITY
Public Const Ca_MELT As Double = 1115 * Kw.KELVIN
Public Const Ca_BOIL As Double = 1757 * Kw.KELVIN
Public Const Ca_Cp As Double = 647 * Kw.SPECIFICHEAT
Public Const Ca_En As Double = 1.00
Public Const SCANDIUM_Z As Double = 21
Public Const SCANDIUM As Double = 44.955908
Public Const Sc_Z As Double = SCANDIUM_Z
Public Const Sc_WEIGHT As Double = 44.955908
Public Const Sc_MASS As Double = 44.955908 * Kw.MOLARMASS
Public Const ScMASS As Double = Sc_MASS / Kw.AVOGADRO
Public Const Sc_DENSITY As Double = 2989 * Kw.DENSITY
Public Const Sc_MELT As Double = 1814 * Kw.KELVIN
Public Const Sc_BOIL As Double = 3109 * Kw.KELVIN
Public Const Sc_Cp As Double = 568 * Kw.SPECIFICHEAT
Public Const Sc_En As Double = 1.36
Public Const TITANIUM_Z As Double = 22
Public Const TITANIUM As Double = 47.867
Public Const Ti_Z As Double = TITANIUM_Z
Public Const Ti_WEIGHT As Double = 47.867
Public Const Ti_MASS As Double = 47.867 * Kw.MOLARMASS
Public Const TiMASS As Double = Ti_MASS / Kw.AVOGADRO
Public Const Ti_DENSITY As Double = 4540 * Kw.DENSITY
Public Const Ti_MELT As Double = 1941 * Kw.KELVIN
Public Const Ti_BOIL As Double = 3560 * Kw.KELVIN
Public Const Ti_Cp As Double = 523 * Kw.SPECIFICHEAT
Public Const Ti_En As Double = 1.54
Public Const VANADIUM_Z As Double = 23
Public Const VANADIUM As Double = 50.9415
Public Const V_Z As Double = VANADIUM_Z
Public Const V_WEIGHT As Double = 50.9415
Public Const V_MASS As Double = 50.9415 * Kw.MOLARMASS
Public Const VMASS As Double = V_MASS / Kw.AVOGADRO
Public Const V_DENSITY As Double = 6110 * Kw.DENSITY
Public Const V_MELT As Double = 2183 * Kw.KELVIN
Public Const V_BOIL As Double = 3680 * Kw.KELVIN
Public Const V_Cp As Double = 489 * Kw.SPECIFICHEAT
Public Const V_En As Double = 1.63
Public Const CHROMIUM_Z As Double = 24
Public Const CHROMIUM As Double = 51.9961
Public Const Cr_Z As Double = CHROMIUM_Z
Public Const Cr_WEIGHT As Double = 51.9961
Public Const Cr_MASS As Double = 51.9961 * Kw.MOLARMASS
Public Const CrMASS As Double = Cr_MASS / Kw.AVOGADRO
Public Const Cr_DENSITY As Double = 7150 * Kw.DENSITY
Public Const Cr_MELT As Double = 2180 * Kw.KELVIN
Public Const Cr_BOIL As Double = 2944 * Kw.KELVIN
Public Const Cr_Cp As Double = 449 * Kw.SPECIFICHEAT
Public Const Cr_En As Double = 1.66
Public Const MANGANESE_Z As Double = 25
Public Const MANGANESE As Double = 54.938043
Public Const Mn_Z As Double = MANGANESE_Z
Public Const Mn_WEIGHT As Double = 54.938043
Public Const Mn_MASS As Double = 54.938043 * Kw.MOLARMASS
Public Const MnMASS As Double = Mn_MASS / Kw.AVOGADRO
Public Const Mn_DENSITY As Double = 7440 * Kw.DENSITY
Public Const Mn_MELT As Double = 1519 * Kw.KELVIN
Public Const Mn_BOIL As Double = 2334 * Kw.KELVIN
Public Const Mn_Cp As Double = 479 * Kw.SPECIFICHEAT
Public Const Mn_En As Double = 1.55
Public Const IRON_Z As Double = 26
Public Const IRON As Double = 55.845
Public Const Fe_Z As Double = IRON_Z
Public Const Fe_WEIGHT As Double = 55.845
Public Const Fe_MASS As Double = 55.845 * Kw.MOLARMASS
Public Const FeMASS As Double = Fe_MASS / Kw.AVOGADRO
Public Const Fe_DENSITY As Double = 7874 * Kw.DENSITY
Public Const Fe_MELT As Double = 1811 * Kw.KELVIN
Public Const Fe_BOIL As Double = 3134 * Kw.KELVIN
Public Const Fe_Cp As Double = 449 * Kw.SPECIFICHEAT
Public Const Fe_En As Double = 1.83
Public Const COBALT_Z As Double = 27
Public Const COBALT As Double = 58.933194
Public Const Co_Z As Double = COBALT_Z
Public Const Co_WEIGHT As Double = 58.933194
Public Const Co_MASS As Double = 58.933194 * Kw.MOLARMASS
Public Const CoMASS As Double = Co_MASS / Kw.AVOGADRO
Public Const Co_DENSITY As Double = 8860 * Kw.DENSITY
Public Const Co_MELT As Double = 1768 * Kw.KELVIN
Public Const Co_BOIL As Double = 3200 * Kw.KELVIN
Public Const Co_Cp As Double = 421 * Kw.SPECIFICHEAT
Public Const Co_En As Double = 1.88
Public Const NICKEL_Z As Double = 28
Public Const NICKEL As Double = 58.6934
Public Const Ni_Z As Double = NICKEL_Z
Public Const Ni_WEIGHT As Double = 58.6934
Public Const Ni_MASS As Double = 58.6934 * Kw.MOLARMASS
Public Const NiMASS As Double = Ni_MASS / Kw.AVOGADRO
Public Const Ni_DENSITY As Double = 8912 * Kw.DENSITY
Public Const Ni_MELT As Double = 1728 * Kw.KELVIN
Public Const Ni_BOIL As Double = 3186 * Kw.KELVIN
Public Const Ni_Cp As Double = 444 * Kw.SPECIFICHEAT
Public Const Ni_En As Double = 1.91
Public Const COPPER_Z As Double = 29
Public Const COPPER As Double = 63.546
Public Const Cu_Z As Double = COPPER_Z
Public Const Cu_WEIGHT As Double = 63.546
Public Const Cu_MASS As Double = 63.546 * Kw.MOLARMASS
Public Const CuMASS As Double = Cu_MASS / Kw.AVOGADRO
Public Const Cu_DENSITY As Double = 8960 * Kw.DENSITY
Public Const Cu_MELT As Double = 1357.77 * Kw.KELVIN
Public Const Cu_BOIL As Double = 2835 * Kw.KELVIN
Public Const Cu_Cp As Double = 385 * Kw.SPECIFICHEAT
Public Const Cu_En As Double = 1.90
Public Const ZINC_Z As Double = 30
Public Const ZINC As Double = 65.38
Public Const Zn_Z As Double = ZINC_Z
Public Const Zn_WEIGHT As Double = 65.38
Public Const Zn_MASS As Double = 65.38 * Kw.MOLARMASS
Public Const ZnMASS As Double = Zn_MASS / Kw.AVOGADRO
Public Const Zn_DENSITY As Double = 7134 * Kw.DENSITY
Public Const Zn_MELT As Double = 692.88 * Kw.KELVIN
Public Const Zn_BOIL As Double = 1180 * Kw.KELVIN
Public Const Zn_Cp As Double = 388 * Kw.SPECIFICHEAT
Public Const Zn_En As Double = 1.65
Public Const GALLIUM_Z As Double = 31
Public Const GALLIUM As Double = 69.723
Public Const Ga_Z As Double = GALLIUM_Z
Public Const Ga_WEIGHT As Double = 69.723
Public Const Ga_MASS As Double = 69.723 * Kw.MOLARMASS
Public Const GaMASS As Double = Ga_MASS / Kw.AVOGADRO
Public Const Ga_DENSITY As Double = 5907 * Kw.DENSITY
Public Const Ga_MELT As Double = 302.9146 * Kw.KELVIN
Public Const Ga_BOIL As Double = 2673 * Kw.KELVIN
Public Const Ga_Cp As Double = 371 * Kw.SPECIFICHEAT
Public Const Ga_En As Double = 1.81
Public Const GERMANIUM_Z As Double = 32
Public Const GERMANIUM As Double = 72.630
Public Const Ge_Z As Double = GERMANIUM_Z
Public Const Ge_WEIGHT As Double = 72.630
Public Const Ge_MASS As Double = 72.630 * Kw.MOLARMASS
Public Const GeMASS As Double = Ge_MASS / Kw.AVOGADRO
Public Const Ge_DENSITY As Double = 5323 * Kw.DENSITY
Public Const Ge_MELT As Double = 1211.40 * Kw.KELVIN
Public Const Ge_BOIL As Double = 3106 * Kw.KELVIN
Public Const Ge_Cp As Double = 320 * Kw.SPECIFICHEAT
Public Const Ge_En As Double = 2.01
Public Const ARSENIC_Z As Double = 33
Public Const ARSENIC As Double = 74.921595
Public Const As_Z As Double = ARSENIC_Z
Public Const As_WEIGHT As Double = 74.921595
Public Const As_MASS As Double = 74.921595 * Kw.MOLARMASS
Public Const AsMASS As Double = As_MASS / Kw.AVOGADRO
Public Const As_DENSITY As Double = 5776 * Kw.DENSITY
Public Const As_MELT As Double = 1090 * Kw.KELVIN
Public Const As_BOIL As Double = 887 * Kw.KELVIN
Public Const As_Cp As Double = 329 * Kw.SPECIFICHEAT
Public Const As_En As Double = 2.18
Public Const SELENIUM_Z As Double = 34
Public Const SELENIUM As Double = 78.971
Public Const Se_Z As Double = SELENIUM_Z
Public Const Se_WEIGHT As Double = 78.971
Public Const Se_MASS As Double = 78.971 * Kw.MOLARMASS
Public Const SeMASS As Double = Se_MASS / Kw.AVOGADRO
Public Const Se_DENSITY As Double = 4809 * Kw.DENSITY
Public Const Se_MELT As Double = 453 * Kw.KELVIN
Public Const Se_BOIL As Double = 958 * Kw.KELVIN
Public Const Se_Cp As Double = 321 * Kw.SPECIFICHEAT
Public Const Se_En As Double = 2.55
Public Const BROMINE_Z As Double = 35
Public Const BROMINE As Double = 79.904
Public Const Br_Z As Double = BROMINE_Z
Public Const Br_WEIGHT As Double = 79.904
Public Const Br_MASS As Double = 79.904 * Kw.MOLARMASS
Public Const BrMASS As Double = Br_MASS / Kw.AVOGADRO
Public Const Br_DENSITY As Double = 3122 * Kw.DENSITY
Public Const Br_MELT As Double = 265.8 * Kw.KELVIN
Public Const Br_BOIL As Double = 332.0 * Kw.KELVIN
Public Const Br_Cp As Double = 474 * Kw.SPECIFICHEAT
Public Const Br_En As Double = 2.96
Public Const KRYPTON_Z As Double = 36
Public Const KRYPTON As Double = 83.798
Public Const Kr_Z As Double = KRYPTON_Z
Public Const Kr_WEIGHT As Double = 83.798
Public Const Kr_MASS As Double = 83.798 * Kw.MOLARMASS
Public Const KrMASS As Double = Kr_MASS / Kw.AVOGADRO
Public Const Kr_DENSITY As Double = 3.733 * Kw.DENSITY
Public Const Kr_MELT As Double = 115.79 * Kw.KELVIN
Public Const Kr_BOIL As Double = 119.93 * Kw.KELVIN
Public Const Kr_Cp As Double = 248 * Kw.SPECIFICHEAT
Public Const Kr_En As Double = 3.00
Public Const RUBIDIUM_Z As Double = 37
Public Const RUBIDIUM As Double = 85.4678
Public Const Rb_Z As Double = RUBIDIUM_Z
Public Const Rb_WEIGHT As Double = 85.4678
Public Const Rb_MASS As Double = 85.4678 * Kw.MOLARMASS
Public Const RbMASS As Double = Rb_MASS / Kw.AVOGADRO
Public Const Rb_DENSITY As Double = 1532 * Kw.DENSITY
Public Const Rb_MELT As Double = 312.46 * Kw.KELVIN
Public Const Rb_BOIL As Double = 961 * Kw.KELVIN
Public Const Rb_Cp As Double = 363 * Kw.SPECIFICHEAT
Public Const Rb_En As Double = 0.82
Public Const STRONTIUM_Z As Double = 38
Public Const STRONTIUM As Double = 87.62
Public Const Sr_Z As Double = STRONTIUM_Z
Public Const Sr_WEIGHT As Double = 87.62
Public Const Sr_MASS As Double = 87.62 * Kw.MOLARMASS
Public Const SrMASS As Double = Sr_MASS / Kw.AVOGADRO
Public Const Sr_DENSITY As Double = 2640 * Kw.DENSITY
Public Const Sr_MELT As Double = 1050 * Kw.KELVIN
Public Const Sr_BOIL As Double = 1655 * Kw.KELVIN
Public Const Sr_Cp As Double = 301 * Kw.SPECIFICHEAT
Public Const Sr_En As Double = 0.95
Public Const YTTRIUM_Z As Double = 39
Public Const YTTRIUM As Double = 88.90584
Public Const Y_Z As Double = YTTRIUM_Z
Public Const Y_WEIGHT As Double = 88.90584
Public Const Y_MASS As Double = 88.90584 * Kw.MOLARMASS
Public Const YMASS As Double = Y_MASS / Kw.AVOGADRO
Public Const Y_DENSITY As Double = 4469 * Kw.DENSITY
Public Const Y_MELT As Double = 1799 * Kw.KELVIN
Public Const Y_BOIL As Double = 3609 * Kw.KELVIN
Public Const Y_Cp As Double = 298 * Kw.SPECIFICHEAT
Public Const Y_En As Double = 1.22
Public Const ZIRCONIUM_Z As Double = 40
Public Const ZIRCONIUM As Double = 91.224
Public Const Zr_Z As Double = ZIRCONIUM_Z
Public Const Zr_WEIGHT As Double = 91.224
Public Const Zr_MASS As Double = 91.224 * Kw.MOLARMASS
Public Const ZrMASS As Double = Zr_MASS / Kw.AVOGADRO
Public Const Zr_DENSITY As Double = 6506 * Kw.DENSITY
Public Const Zr_MELT As Double = 2128 * Kw.KELVIN
Public Const Zr_BOIL As Double = 4682 * Kw.KELVIN
Public Const Zr_Cp As Double = 278 * Kw.SPECIFICHEAT
Public Const Zr_En As Double = 1.33
Public Const NIOBIUM_Z As Double = 41
Public Const NIOBIUM As Double = 92.90637
Public Const Nb_Z As Double = NIOBIUM_Z
Public Const Nb_WEIGHT As Double = 92.90637
Public Const Nb_MASS As Double = 92.90637 * Kw.MOLARMASS
Public Const NbMASS As Double = Nb_MASS / Kw.AVOGADRO
Public Const Nb_DENSITY As Double = 8570 * Kw.DENSITY
Public Const Nb_MELT As Double = 2750 * Kw.KELVIN
Public Const Nb_BOIL As Double = 5017 * Kw.KELVIN
Public Const Nb_Cp As Double = 265 * Kw.SPECIFICHEAT
Public Const Nb_En As Double = 1.6
Public Const MOLYBDENUM_Z As Double = 42
Public Const MOLYBDENUM As Double = 95.95
Public Const Mo_Z As Double = MOLYBDENUM_Z
Public Const Mo_WEIGHT As Double = 95.95
Public Const Mo_MASS As Double = 95.95 * Kw.MOLARMASS
Public Const MoMASS As Double = Mo_MASS / Kw.AVOGADRO
Public Const Mo_DENSITY As Double = 10220 * Kw.DENSITY
Public Const Mo_MELT As Double = 2896 * Kw.KELVIN
Public Const Mo_BOIL As Double = 4912 * Kw.KELVIN
Public Const Mo_Cp As Double = 251 * Kw.SPECIFICHEAT
Public Const Mo_En As Double = 2.16
Public Const TECHNETIUM_Z As Double = 43
Public Const TECHNETIUM As Double = 98
Public Const Tc_Z As Double = TECHNETIUM_Z
Public Const Tc_WEIGHT As Double = 98
Public Const Tc_MASS As Double = 98 * Kw.MOLARMASS
Public Const TcMASS As Double = Tc_MASS / Kw.AVOGADRO
Public Const Tc_DENSITY As Double = 11500 * Kw.DENSITY
Public Const Tc_MELT As Double = 2430 * Kw.KELVIN
Public Const Tc_BOIL As Double = 4538 * Kw.KELVIN
Public Const Tc_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Tc_En As Double = 1.9
Public Const RUTHENIUM_Z As Double = 44
Public Const RUTHENIUM As Double = 101.07
Public Const Ru_Z As Double = RUTHENIUM_Z
Public Const Ru_WEIGHT As Double = 101.07
Public Const Ru_MASS As Double = 101.07 * Kw.MOLARMASS
Public Const RuMASS As Double = Ru_MASS / Kw.AVOGADRO
Public Const Ru_DENSITY As Double = 12370 * Kw.DENSITY
Public Const Ru_MELT As Double = 2607 * Kw.KELVIN
Public Const Ru_BOIL As Double = 4423 * Kw.KELVIN
Public Const Ru_Cp As Double = 238 * Kw.SPECIFICHEAT
Public Const Ru_En As Double = 2.2
Public Const RHODIUM_Z As Double = 45
Public Const RHODIUM As Double = 102.90549
Public Const Rh_Z As Double = RHODIUM_Z
Public Const Rh_WEIGHT As Double = 102.90549
Public Const Rh_MASS As Double = 102.90549 * Kw.MOLARMASS
Public Const RhMASS As Double = Rh_MASS / Kw.AVOGADRO
Public Const Rh_DENSITY As Double = 12410 * Kw.DENSITY
Public Const Rh_MELT As Double = 2237 * Kw.KELVIN
Public Const Rh_BOIL As Double = 3968 * Kw.KELVIN
Public Const Rh_Cp As Double = 243 * Kw.SPECIFICHEAT
Public Const Rh_En As Double = 2.28
Public Const PALLADIUM_Z As Double = 46
Public Const PALLADIUM As Double = 106.42
Public Const Pd_Z As Double = PALLADIUM_Z
Public Const Pd_WEIGHT As Double = 106.42
Public Const Pd_MASS As Double = 106.42 * Kw.MOLARMASS
Public Const PdMASS As Double = Pd_MASS / Kw.AVOGADRO
Public Const Pd_DENSITY As Double = 12020 * Kw.DENSITY
Public Const Pd_MELT As Double = 1828.05 * Kw.KELVIN
Public Const Pd_BOIL As Double = 3236 * Kw.KELVIN
Public Const Pd_Cp As Double = 244 * Kw.SPECIFICHEAT
Public Const Pd_En As Double = 2.20
Public Const SILVER_Z As Double = 47
Public Const SILVER As Double = 107.8682
Public Const Ag_Z As Double = SILVER_Z
Public Const Ag_WEIGHT As Double = 107.8682
Public Const Ag_MASS As Double = 107.8682 * Kw.MOLARMASS
Public Const AgMASS As Double = Ag_MASS / Kw.AVOGADRO
Public Const Ag_DENSITY As Double = 10501 * Kw.DENSITY
Public Const Ag_MELT As Double = 1234.93 * Kw.KELVIN
Public Const Ag_BOIL As Double = 2435 * Kw.KELVIN
Public Const Ag_Cp As Double = 235 * Kw.SPECIFICHEAT
Public Const Ag_En As Double = 1.93
Public Const CADMIUM_Z As Double = 48
Public Const CADMIUM As Double = 112.414
Public Const Cd_Z As Double = CADMIUM_Z
Public Const Cd_WEIGHT As Double = 112.414
Public Const Cd_MASS As Double = 112.414 * Kw.MOLARMASS
Public Const CdMASS As Double = Cd_MASS / Kw.AVOGADRO
Public Const Cd_DENSITY As Double = 8690 * Kw.DENSITY
Public Const Cd_MELT As Double = 594.22 * Kw.KELVIN
Public Const Cd_BOIL As Double = 1040 * Kw.KELVIN
Public Const Cd_Cp As Double = 232 * Kw.SPECIFICHEAT
Public Const Cd_En As Double = 1.69
Public Const INDIUM_Z As Double = 49
Public Const INDIUM As Double = 114.818
Public Const In_Z As Double = INDIUM_Z
Public Const In_WEIGHT As Double = 114.818
Public Const In_MASS As Double = 114.818 * Kw.MOLARMASS
Public Const InMASS As Double = In_MASS / Kw.AVOGADRO
Public Const In_DENSITY As Double = 7310 * Kw.DENSITY
Public Const In_MELT As Double = 429.75 * Kw.KELVIN
Public Const In_BOIL As Double = 2345 * Kw.KELVIN
Public Const In_Cp As Double = 233 * Kw.SPECIFICHEAT
Public Const In_En As Double = 1.78
Public Const TIN_Z As Double = 50
Public Const TIN As Double = 118.710
Public Const Sn_Z As Double = TIN_Z
Public Const Sn_WEIGHT As Double = 118.710
Public Const Sn_MASS As Double = 118.710 * Kw.MOLARMASS
Public Const SnMASS As Double = Sn_MASS / Kw.AVOGADRO
Public Const Sn_DENSITY As Double = 7287 * Kw.DENSITY
Public Const Sn_MELT As Double = 505.08 * Kw.KELVIN
Public Const Sn_BOIL As Double = 2875 * Kw.KELVIN
Public Const Sn_Cp As Double = 228 * Kw.SPECIFICHEAT
Public Const Sn_En As Double = 1.96
Public Const ANTIMONY_Z As Double = 51
Public Const ANTIMONY As Double = 121.760
Public Const Sb_Z As Double = ANTIMONY_Z
Public Const Sb_WEIGHT As Double = 121.760
Public Const Sb_MASS As Double = 121.760 * Kw.MOLARMASS
Public Const SbMASS As Double = Sb_MASS / Kw.AVOGADRO
Public Const Sb_DENSITY As Double = 6685 * Kw.DENSITY
Public Const Sb_MELT As Double = 903.78 * Kw.KELVIN
Public Const Sb_BOIL As Double = 1860 * Kw.KELVIN
Public Const Sb_Cp As Double = 207 * Kw.SPECIFICHEAT
Public Const Sb_En As Double = 2.05
Public Const TELLURIUM_Z As Double = 52
Public Const TELLURIUM As Double = 127.60
Public Const Te_Z As Double = TELLURIUM_Z
Public Const Te_WEIGHT As Double = 127.60
Public Const Te_MASS As Double = 127.60 * Kw.MOLARMASS
Public Const TeMASS As Double = Te_MASS / Kw.AVOGADRO
Public Const Te_DENSITY As Double = 6232 * Kw.DENSITY
Public Const Te_MELT As Double = 722.66 * Kw.KELVIN
Public Const Te_BOIL As Double = 1261 * Kw.KELVIN
Public Const Te_Cp As Double = 202 * Kw.SPECIFICHEAT
Public Const Te_En As Double = 2.1
Public Const IODINE_Z As Double = 53
Public Const IODINE As Double = 126.90447
Public Const I_Z As Double = IODINE_Z
Public Const I_WEIGHT As Double = 126.90447
Public Const I_MASS As Double = 126.90447 * Kw.MOLARMASS
Public Const IMASS As Double = I_MASS / Kw.AVOGADRO
Public Const I_DENSITY As Double = 4930 * Kw.DENSITY
Public Const I_MELT As Double = 386.85 * Kw.KELVIN
Public Const I_BOIL As Double = 457.4 * Kw.KELVIN
Public Const I_Cp As Double = 214 * Kw.SPECIFICHEAT
Public Const I_En As Double = 2.66
Public Const XENON_Z As Double = 54
Public Const XENON As Double = 131.293
Public Const Xe_Z As Double = XENON_Z
Public Const Xe_WEIGHT As Double = 131.293
Public Const Xe_MASS As Double = 131.293 * Kw.MOLARMASS
Public Const XeMASS As Double = Xe_MASS / Kw.AVOGADRO
Public Const Xe_DENSITY As Double = 5.887 * Kw.DENSITY
Public Const Xe_MELT As Double = 161.4 * Kw.KELVIN
Public Const Xe_BOIL As Double = 165.03 * Kw.KELVIN
Public Const Xe_Cp As Double = 158 * Kw.SPECIFICHEAT
Public Const Xe_En As Double = 2.60
Public Const CAESIUM_Z As Double = 55
Public Const CAESIUM As Double = 132.90545196
Public Const Cs_Z As Double = CAESIUM_Z
Public Const Cs_WEIGHT As Double = 132.90545196
Public Const Cs_MASS As Double = 132.90545196 * Kw.MOLARMASS
Public Const CsMASS As Double = Cs_MASS / Kw.AVOGADRO
Public Const Cs_DENSITY As Double = 1873 * Kw.DENSITY
Public Const Cs_MELT As Double = 301.59 * Kw.KELVIN
Public Const Cs_BOIL As Double = 944 * Kw.KELVIN
Public Const Cs_Cp As Double = 242 * Kw.SPECIFICHEAT
Public Const Cs_En As Double = 0.79
Public Const BARIUM_Z As Double = 56
Public Const BARIUM As Double = 137.327
Public Const Ba_Z As Double = BARIUM_Z
Public Const Ba_WEIGHT As Double = 137.327
Public Const Ba_MASS As Double = 137.327 * Kw.MOLARMASS
Public Const BaMASS As Double = Ba_MASS / Kw.AVOGADRO
Public Const Ba_DENSITY As Double = 3594 * Kw.DENSITY
Public Const Ba_MELT As Double = 1000 * Kw.KELVIN
Public Const Ba_BOIL As Double = 2170 * Kw.KELVIN
Public Const Ba_Cp As Double = 204 * Kw.SPECIFICHEAT
Public Const Ba_En As Double = 0.89
Public Const LANTHANUM_Z As Double = 57
Public Const LANTHANUM As Double = 138.90547
Public Const La_Z As Double = LANTHANUM_Z
Public Const La_WEIGHT As Double = 138.90547
Public Const La_MASS As Double = 138.90547 * Kw.MOLARMASS
Public Const LaMASS As Double = La_MASS / Kw.AVOGADRO
Public Const La_DENSITY As Double = 6145 * Kw.DENSITY
Public Const La_MELT As Double = 1193 * Kw.KELVIN
Public Const La_BOIL As Double = 3737 * Kw.KELVIN
Public Const La_Cp As Double = 195 * Kw.SPECIFICHEAT
Public Const La_En As Double = 1.1
Public Const CERIUM_Z As Double = 58
Public Const CERIUM As Double = 140.116
Public Const Ce_Z As Double = CERIUM_Z
Public Const Ce_WEIGHT As Double = 140.116
Public Const Ce_MASS As Double = 140.116 * Kw.MOLARMASS
Public Const CeMASS As Double = Ce_MASS / Kw.AVOGADRO
Public Const Ce_DENSITY As Double = 6770 * Kw.DENSITY
Public Const Ce_MELT As Double = 1068 * Kw.KELVIN
Public Const Ce_BOIL As Double = 3716 * Kw.KELVIN
Public Const Ce_Cp As Double = 192 * Kw.SPECIFICHEAT
Public Const Ce_En As Double = 1.12
Public Const PRASEODYMIUM_Z As Double = 59
Public Const PRASEODYMIUM As Double = 140.90766
Public Const Pr_Z As Double = PRASEODYMIUM_Z
Public Const Pr_WEIGHT As Double = 140.90766
Public Const Pr_MASS As Double = 140.90766 * Kw.MOLARMASS
Public Const PrMASS As Double = Pr_MASS / Kw.AVOGADRO
Public Const Pr_DENSITY As Double = 6773 * Kw.DENSITY
Public Const Pr_MELT As Double = 1208 * Kw.KELVIN
Public Const Pr_BOIL As Double = 3793 * Kw.KELVIN
Public Const Pr_Cp As Double = 193 * Kw.SPECIFICHEAT
Public Const Pr_En As Double = 1.13
Public Const NEODYMIUM_Z As Double = 60
Public Const NEODYMIUM As Double = 144.242
Public Const Nd_Z As Double = NEODYMIUM_Z
Public Const Nd_WEIGHT As Double = 144.242
Public Const Nd_MASS As Double = 144.242 * Kw.MOLARMASS
Public Const NdMASS As Double = Nd_MASS / Kw.AVOGADRO
Public Const Nd_DENSITY As Double = 7007 * Kw.DENSITY
Public Const Nd_MELT As Double = 1297 * Kw.KELVIN
Public Const Nd_BOIL As Double = 3347 * Kw.KELVIN
Public Const Nd_Cp As Double = 190 * Kw.SPECIFICHEAT
Public Const Nd_En As Double = 1.14
Public Const PROMETHIUM_Z As Double = 61
Public Const PROMETHIUM As Double = 145
Public Const Pm_Z As Double = PROMETHIUM_Z
Public Const Pm_WEIGHT As Double = 145
Public Const Pm_MASS As Double = 145 * Kw.MOLARMASS
Public Const PmMASS As Double = Pm_MASS / Kw.AVOGADRO
Public Const Pm_DENSITY As Double = 7260 * Kw.DENSITY
Public Const Pm_MELT As Double = 1315 * Kw.KELVIN
Public Const Pm_BOIL As Double = 3273 * Kw.KELVIN
Public Const Pm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pm_En As Double = 1.13
Public Const SAMARIUM_Z As Double = 62
Public Const SAMARIUM As Double = 150.36
Public Const Sm_Z As Double = SAMARIUM_Z
Public Const Sm_WEIGHT As Double = 150.36
Public Const Sm_MASS As Double = 150.36 * Kw.MOLARMASS
Public Const SmMASS As Double = Sm_MASS / Kw.AVOGADRO
Public Const Sm_DENSITY As Double = 7520 * Kw.DENSITY
Public Const Sm_MELT As Double = 1345 * Kw.KELVIN
Public Const Sm_BOIL As Double = 2067 * Kw.KELVIN
Public Const Sm_Cp As Double = 197 * Kw.SPECIFICHEAT
Public Const Sm_En As Double = 1.17
Public Const EUROPIUM_Z As Double = 63
Public Const EUROPIUM As Double = 151.964
Public Const Eu_Z As Double = EUROPIUM_Z
Public Const Eu_WEIGHT As Double = 151.964
Public Const Eu_MASS As Double = 151.964 * Kw.MOLARMASS
Public Const EuMASS As Double = Eu_MASS / Kw.AVOGADRO
Public Const Eu_DENSITY As Double = 5243 * Kw.DENSITY
Public Const Eu_MELT As Double = 1099 * Kw.KELVIN
Public Const Eu_BOIL As Double = 1802 * Kw.KELVIN
Public Const Eu_Cp As Double = 182 * Kw.SPECIFICHEAT
Public Const Eu_En As Double = 1.2
Public Const GADOLINIUM_Z As Double = 64
Public Const GADOLINIUM As Double = 157.25
Public Const Gd_Z As Double = GADOLINIUM_Z
Public Const Gd_WEIGHT As Double = 157.25
Public Const Gd_MASS As Double = 157.25 * Kw.MOLARMASS
Public Const GdMASS As Double = Gd_MASS / Kw.AVOGADRO
Public Const Gd_DENSITY As Double = 7895 * Kw.DENSITY
Public Const Gd_MELT As Double = 1585 * Kw.KELVIN
Public Const Gd_BOIL As Double = 3546 * Kw.KELVIN
Public Const Gd_Cp As Double = 236 * Kw.SPECIFICHEAT
Public Const Gd_En As Double = 1.2
Public Const TERBIUM_Z As Double = 65
Public Const TERBIUM As Double = 158.925354
Public Const Tb_Z As Double = TERBIUM_Z
Public Const Tb_WEIGHT As Double = 158.925354
Public Const Tb_MASS As Double = 158.925354 * Kw.MOLARMASS
Public Const TbMASS As Double = Tb_MASS / Kw.AVOGADRO
Public Const Tb_DENSITY As Double = 8229 * Kw.DENSITY
Public Const Tb_MELT As Double = 1629 * Kw.KELVIN
Public Const Tb_BOIL As Double = 3503 * Kw.KELVIN
Public Const Tb_Cp As Double = 182 * Kw.SPECIFICHEAT
Public Const Tb_En As Double = 1.2
Public Const DYSPROSIUM_Z As Double = 66
Public Const DYSPROSIUM As Double = 162.500
Public Const Dy_Z As Double = DYSPROSIUM_Z
Public Const Dy_WEIGHT As Double = 162.500
Public Const Dy_MASS As Double = 162.500 * Kw.MOLARMASS
Public Const DyMASS As Double = Dy_MASS / Kw.AVOGADRO
Public Const Dy_DENSITY As Double = 8550 * Kw.DENSITY
Public Const Dy_MELT As Double = 1680 * Kw.KELVIN
Public Const Dy_BOIL As Double = 2840 * Kw.KELVIN
Public Const Dy_Cp As Double = 170 * Kw.SPECIFICHEAT
Public Const Dy_En As Double = 1.22
Public Const HOLMIUM_Z As Double = 67
Public Const HOLMIUM As Double = 164.930328
Public Const Ho_Z As Double = HOLMIUM_Z
Public Const Ho_WEIGHT As Double = 164.930328
Public Const Ho_MASS As Double = 164.930328 * Kw.MOLARMASS
Public Const HoMASS As Double = Ho_MASS / Kw.AVOGADRO
Public Const Ho_DENSITY As Double = 8795 * Kw.DENSITY
Public Const Ho_MELT As Double = 1734 * Kw.KELVIN
Public Const Ho_BOIL As Double = 2993 * Kw.KELVIN
Public Const Ho_Cp As Double = 165 * Kw.SPECIFICHEAT
Public Const Ho_En As Double = 1.23
Public Const ERBIUM_Z As Double = 68
Public Const ERBIUM As Double = 167.259
Public Const Er_Z As Double = ERBIUM_Z
Public Const Er_WEIGHT As Double = 167.259
Public Const Er_MASS As Double = 167.259 * Kw.MOLARMASS
Public Const ErMASS As Double = Er_MASS / Kw.AVOGADRO
Public Const Er_DENSITY As Double = 9066 * Kw.DENSITY
Public Const Er_MELT As Double = 1802 * Kw.KELVIN
Public Const Er_BOIL As Double = 3141 * Kw.KELVIN
Public Const Er_Cp As Double = 168 * Kw.SPECIFICHEAT
Public Const Er_En As Double = 1.24
Public Const THULIUM_Z As Double = 69
Public Const THULIUM As Double = 168.934218
Public Const Tm_Z As Double = THULIUM_Z
Public Const Tm_WEIGHT As Double = 168.934218
Public Const Tm_MASS As Double = 168.934218 * Kw.MOLARMASS
Public Const TmMASS As Double = Tm_MASS / Kw.AVOGADRO
Public Const Tm_DENSITY As Double = 9321 * Kw.DENSITY
Public Const Tm_MELT As Double = 1818 * Kw.KELVIN
Public Const Tm_BOIL As Double = 2223 * Kw.KELVIN
Public Const Tm_Cp As Double = 160 * Kw.SPECIFICHEAT
Public Const Tm_En As Double = 1.25
Public Const YTTERBIUM_Z As Double = 70
Public Const YTTERBIUM As Double = 173.045
Public Const Yb_Z As Double = YTTERBIUM_Z
Public Const Yb_WEIGHT As Double = 173.045
Public Const Yb_MASS As Double = 173.045 * Kw.MOLARMASS
Public Const YbMASS As Double = Yb_MASS / Kw.AVOGADRO
Public Const Yb_DENSITY As Double = 6965 * Kw.DENSITY
Public Const Yb_MELT As Double = 1097 * Kw.KELVIN
Public Const Yb_BOIL As Double = 1469 * Kw.KELVIN
Public Const Yb_Cp As Double = 155 * Kw.SPECIFICHEAT
Public Const Yb_En As Double = 1.1
Public Const LUTETIUM_Z As Double = 71
Public Const LUTETIUM As Double = 174.9668
Public Const Lu_Z As Double = LUTETIUM_Z
Public Const Lu_WEIGHT As Double = 174.9668
Public Const Lu_MASS As Double = 174.9668 * Kw.MOLARMASS
Public Const LuMASS As Double = Lu_MASS / Kw.AVOGADRO
Public Const Lu_DENSITY As Double = 9840 * Kw.DENSITY
Public Const Lu_MELT As Double = 1925 * Kw.KELVIN
Public Const Lu_BOIL As Double = 3675 * Kw.KELVIN
Public Const Lu_Cp As Double = 154 * Kw.SPECIFICHEAT
Public Const Lu_En As Double = 1.27
Public Const HAFNIUM_Z As Double = 72
Public Const HAFNIUM As Double = 178.49
Public Const Hf_Z As Double = HAFNIUM_Z
Public Const Hf_WEIGHT As Double = 178.49
Public Const Hf_MASS As Double = 178.49 * Kw.MOLARMASS
Public Const HfMASS As Double = Hf_MASS / Kw.AVOGADRO
Public Const Hf_DENSITY As Double = 13310 * Kw.DENSITY
Public Const Hf_MELT As Double = 2506 * Kw.KELVIN
Public Const Hf_BOIL As Double = 4876 * Kw.KELVIN
Public Const Hf_Cp As Double = 144 * Kw.SPECIFICHEAT
Public Const Hf_En As Double = 1.3
Public Const TANTALUM_Z As Double = 73
Public Const TANTALUM As Double = 180.94788
Public Const Ta_Z As Double = TANTALUM_Z
Public Const Ta_WEIGHT As Double = 180.94788
Public Const Ta_MASS As Double = 180.94788 * Kw.MOLARMASS
Public Const TaMASS As Double = Ta_MASS / Kw.AVOGADRO
Public Const Ta_DENSITY As Double = 16654 * Kw.DENSITY
Public Const Ta_MELT As Double = 3290 * Kw.KELVIN
Public Const Ta_BOIL As Double = 5731 * Kw.KELVIN
Public Const Ta_Cp As Double = 140 * Kw.SPECIFICHEAT
Public Const Ta_En As Double = 1.5
Public Const TUNGSTEN_Z As Double = 74
Public Const TUNGSTEN As Double = 183.84
Public Const W_Z As Double = TUNGSTEN_Z
Public Const W_WEIGHT As Double = 183.84
Public Const W_MASS As Double = 183.84 * Kw.MOLARMASS
Public Const WMASS As Double = W_MASS / Kw.AVOGADRO
Public Const W_DENSITY As Double = 19250 * Kw.DENSITY
Public Const W_MELT As Double = 3695 * Kw.KELVIN
Public Const W_BOIL As Double = 5828 * Kw.KELVIN
Public Const W_Cp As Double = 132 * Kw.SPECIFICHEAT
Public Const W_En As Double = 2.36
Public Const RHENIUM_Z As Double = 75
Public Const RHENIUM As Double = 186.207
Public Const Re_Z As Double = RHENIUM_Z
Public Const Re_WEIGHT As Double = 186.207
Public Const Re_MASS As Double = 186.207 * Kw.MOLARMASS
Public Const ReMASS As Double = Re_MASS / Kw.AVOGADRO
Public Const Re_DENSITY As Double = 21020 * Kw.DENSITY
Public Const Re_MELT As Double = 3459 * Kw.KELVIN
Public Const Re_BOIL As Double = 5869 * Kw.KELVIN
Public Const Re_Cp As Double = 137 * Kw.SPECIFICHEAT
Public Const Re_En As Double = 1.9
Public Const OSMIUM_Z As Double = 76
Public Const OSMIUM As Double = 190.23
Public Const Os_Z As Double = OSMIUM_Z
Public Const Os_WEIGHT As Double = 190.23
Public Const Os_MASS As Double = 190.23 * Kw.MOLARMASS
Public Const OsMASS As Double = Os_MASS / Kw.AVOGADRO
Public Const Os_DENSITY As Double = 22610 * Kw.DENSITY
Public Const Os_MELT As Double = 3306 * Kw.KELVIN
Public Const Os_BOIL As Double = 5285 * Kw.KELVIN
Public Const Os_Cp As Double = 130 * Kw.SPECIFICHEAT
Public Const Os_En As Double = 2.2
Public Const IRIDIUM_Z As Double = 77
Public Const IRIDIUM As Double = 192.217
Public Const Ir_Z As Double = IRIDIUM_Z
Public Const Ir_WEIGHT As Double = 192.217
Public Const Ir_MASS As Double = 192.217 * Kw.MOLARMASS
Public Const IrMASS As Double = Ir_MASS / Kw.AVOGADRO
Public Const Ir_DENSITY As Double = 22560 * Kw.DENSITY
Public Const Ir_MELT As Double = 2719 * Kw.KELVIN
Public Const Ir_BOIL As Double = 4701 * Kw.KELVIN
Public Const Ir_Cp As Double = 131 * Kw.SPECIFICHEAT
Public Const Ir_En As Double = 2.2
Public Const PLATINUM_Z As Double = 78
Public Const PLATINUM As Double = 195.084
Public Const Pt_Z As Double = PLATINUM_Z
Public Const Pt_WEIGHT As Double = 195.084
Public Const Pt_MASS As Double = 195.084 * Kw.MOLARMASS
Public Const PtMASS As Double = Pt_MASS / Kw.AVOGADRO
Public Const Pt_DENSITY As Double = 21460 * Kw.DENSITY
Public Const Pt_MELT As Double = 2041.4 * Kw.KELVIN
Public Const Pt_BOIL As Double = 4098 * Kw.KELVIN
Public Const Pt_Cp As Double = 133 * Kw.SPECIFICHEAT
Public Const Pt_En As Double = 2.28
Public Const GOLD_Z As Double = 79
Public Const GOLD As Double = 196.966570
Public Const Au_Z As Double = GOLD_Z
Public Const Au_WEIGHT As Double = 196.966570
Public Const Au_MASS As Double = 196.966570 * Kw.MOLARMASS
Public Const AuMASS As Double = Au_MASS / Kw.AVOGADRO
Public Const Au_DENSITY As Double = 19282 * Kw.DENSITY
Public Const Au_MELT As Double = 1337.33 * Kw.KELVIN
Public Const Au_BOIL As Double = 3129 * Kw.KELVIN
Public Const Au_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Au_En As Double = 2.54
Public Const MERCURY_Z As Double = 80
Public Const MERCURY As Double = 200.592
Public Const Hg_Z As Double = MERCURY_Z
Public Const Hg_WEIGHT As Double = 200.592
Public Const Hg_MASS As Double = 200.592 * Kw.MOLARMASS
Public Const HgMASS As Double = Hg_MASS / Kw.AVOGADRO
Public Const Hg_DENSITY As Double = 13533.6 * Kw.DENSITY
Public Const Hg_MELT As Double = 234.43 * Kw.KELVIN
Public Const Hg_BOIL As Double = 629.88 * Kw.KELVIN
Public Const Hg_Cp As Double = 140 * Kw.SPECIFICHEAT
Public Const Hg_En As Double = 2.00
Public Const THALLIUM_Z As Double = 81
Public Const THALLIUM As Double = 204.38
Public Const Tl_Z As Double = THALLIUM_Z
Public Const Tl_WEIGHT As Double = 204.38
Public Const Tl_MASS As Double = 204.38 * Kw.MOLARMASS
Public Const TlMASS As Double = Tl_MASS / Kw.AVOGADRO
Public Const Tl_DENSITY As Double = 11850 * Kw.DENSITY
Public Const Tl_MELT As Double = 577 * Kw.KELVIN
Public Const Tl_BOIL As Double = 1746 * Kw.KELVIN
Public Const Tl_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Tl_En As Double = 1.62
Public Const LEAD_Z As Double = 82
Public Const LEAD As Double = 207.2
Public Const Pb_Z As Double = LEAD_Z
Public Const Pb_WEIGHT As Double = 207.2
Public Const Pb_MASS As Double = 207.2 * Kw.MOLARMASS
Public Const PbMASS As Double = Pb_MASS / Kw.AVOGADRO
Public Const Pb_DENSITY As Double = 11342 * Kw.DENSITY
Public Const Pb_MELT As Double = 600.61 * Kw.KELVIN
Public Const Pb_BOIL As Double = 2022 * Kw.KELVIN
Public Const Pb_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Pb_En As Double = 1.87
Public Const BISMUTH_Z As Double = 83
Public Const BISMUTH As Double = 208.98040
Public Const Bi_Z As Double = BISMUTH_Z
Public Const Bi_WEIGHT As Double = 208.98040
Public Const Bi_MASS As Double = 208.98040 * Kw.MOLARMASS
Public Const BiMASS As Double = Bi_MASS / Kw.AVOGADRO
Public Const Bi_DENSITY As Double = 9807 * Kw.DENSITY
Public Const Bi_MELT As Double = 544.7 * Kw.KELVIN
Public Const Bi_BOIL As Double = 1837 * Kw.KELVIN
Public Const Bi_Cp As Double = 122 * Kw.SPECIFICHEAT
Public Const Bi_En As Double = 2.02
Public Const POLONIUM_Z As Double = 84
Public Const POLONIUM As Double = 209
Public Const Po_Z As Double = POLONIUM_Z
Public Const Po_WEIGHT As Double = 209
Public Const Po_MASS As Double = 209 * Kw.MOLARMASS
Public Const PoMASS As Double = Po_MASS / Kw.AVOGADRO
Public Const Po_DENSITY As Double = 9320 * Kw.DENSITY
Public Const Po_MELT As Double = 527 * Kw.KELVIN
Public Const Po_BOIL As Double = 1235 * Kw.KELVIN
Public Const Po_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Po_En As Double = 2.0
Public Const ASTATINE_Z As Double = 85
Public Const ASTATINE As Double = 210
Public Const At_Z As Double = ASTATINE_Z
Public Const At_WEIGHT As Double = 210
Public Const At_MASS As Double = 210 * Kw.MOLARMASS
Public Const AtMASS As Double = At_MASS / Kw.AVOGADRO
Public Const At_DENSITY As Double = 7000 * Kw.DENSITY
Public Const At_MELT As Double = 575 * Kw.KELVIN
Public Const At_BOIL As Double = 610 * Kw.KELVIN
Public Const At_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const At_En As Double = 2.2
Public Const RADON_Z As Double = 86
Public Const RADON As Double = 222
Public Const Rn_Z As Double = RADON_Z
Public Const Rn_WEIGHT As Double = 222
Public Const Rn_MASS As Double = 222 * Kw.MOLARMASS
Public Const RnMASS As Double = Rn_MASS / Kw.AVOGADRO
Public Const Rn_DENSITY As Double = 9.73 * Kw.DENSITY
Public Const Rn_MELT As Double = 202 * Kw.KELVIN
Public Const Rn_BOIL As Double = 211.3 * Kw.KELVIN
Public Const Rn_Cp As Double = 94 * Kw.SPECIFICHEAT
Public Const Rn_En As Double = 2.2
Public Const FRANCIUM_Z As Double = 87
Public Const FRANCIUM As Double = 223
Public Const Fr_Z As Double = FRANCIUM_Z
Public Const Fr_WEIGHT As Double = 223
Public Const Fr_MASS As Double = 223 * Kw.MOLARMASS
Public Const FrMASS As Double = Fr_MASS / Kw.AVOGADRO
Public Const Fr_DENSITY As Double = 1870 * Kw.DENSITY
Public Const Fr_MELT As Double = 300 * Kw.KELVIN
Public Const Fr_BOIL As Double = 950 * Kw.KELVIN
Public Const Fr_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fr_En As Double = 0.7
Public Const RADIUM_Z As Double = 88
Public Const RADIUM As Double = 226
Public Const Ra_Z As Double = RADIUM_Z
Public Const Ra_WEIGHT As Double = 226
Public Const Ra_MASS As Double = 226 * Kw.MOLARMASS
Public Const RaMASS As Double = Ra_MASS / Kw.AVOGADRO
Public Const Ra_DENSITY As Double = 5500 * Kw.DENSITY
Public Const Ra_MELT As Double = 973 * Kw.KELVIN
Public Const Ra_BOIL As Double = 2010 * Kw.KELVIN
Public Const Ra_Cp As Double = 94 * Kw.SPECIFICHEAT
Public Const Ra_En As Double = 0.9
Public Const ACTINIUM_Z As Double = 89
Public Const ACTINIUM As Double = 227
Public Const Ac_Z As Double = ACTINIUM_Z
Public Const Ac_WEIGHT As Double = 227
Public Const Ac_MASS As Double = 227 * Kw.MOLARMASS
Public Const AcMASS As Double = Ac_MASS / Kw.AVOGADRO
Public Const Ac_DENSITY As Double = 10070 * Kw.DENSITY
Public Const Ac_MELT As Double = 1323 * Kw.KELVIN
Public Const Ac_BOIL As Double = 3471 * Kw.KELVIN
Public Const Ac_Cp As Double = 120 * Kw.SPECIFICHEAT
Public Const Ac_En As Double = 1.1
Public Const THORIUM_Z As Double = 90
Public Const THORIUM As Double = 232.0377
Public Const Th_Z As Double = THORIUM_Z
Public Const Th_WEIGHT As Double = 232.0377
Public Const Th_MASS As Double = 232.0377 * Kw.MOLARMASS
Public Const ThMASS As Double = Th_MASS / Kw.AVOGADRO
Public Const Th_DENSITY As Double = 11720 * Kw.DENSITY
Public Const Th_MELT As Double = 2115 * Kw.KELVIN
Public Const Th_BOIL As Double = 5061 * Kw.KELVIN
Public Const Th_Cp As Double = 113 * Kw.SPECIFICHEAT
Public Const Th_En As Double = 1.3
Public Const PROTACTINIUM_Z As Double = 91
Public Const PROTACTINIUM As Double = 231.03588
Public Const Pa_Z As Double = PROTACTINIUM_Z
Public Const Pa_WEIGHT As Double = 231.03588
Public Const Pa_MASS As Double = 231.03588 * Kw.MOLARMASS
Public Const PaMASS As Double = Pa_MASS / Kw.AVOGADRO
Public Const Pa_DENSITY As Double = 15370 * Kw.DENSITY
Public Const Pa_MELT As Double = 1841 * Kw.KELVIN
Public Const Pa_BOIL As Double = 4300 * Kw.KELVIN
Public Const Pa_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pa_En As Double = 1.5
Public Const URANIUM_Z As Double = 92
Public Const URANIUM As Double = 238.02891
Public Const U_Z As Double = URANIUM_Z
Public Const U_WEIGHT As Double = 238.02891
Public Const U_MASS As Double = 238.02891 * Kw.MOLARMASS
Public Const UMASS As Double = U_MASS / Kw.AVOGADRO
Public Const U_DENSITY As Double = 18950 * Kw.DENSITY
Public Const U_MELT As Double = 1405.3 * Kw.KELVIN
Public Const U_BOIL As Double = 4404 * Kw.KELVIN
Public Const U_Cp As Double = 116 * Kw.SPECIFICHEAT
Public Const U_En As Double = 1.38
Public Const NEPTUNIUM_Z As Double = 93
Public Const NEPTUNIUM As Double = 237
Public Const Np_Z As Double = NEPTUNIUM_Z
Public Const Np_WEIGHT As Double = 237
Public Const Np_MASS As Double = 237 * Kw.MOLARMASS
Public Const NpMASS As Double = Np_MASS / Kw.AVOGADRO
Public Const Np_DENSITY As Double = 20450 * Kw.DENSITY
Public Const Np_MELT As Double = 917 * Kw.KELVIN
Public Const Np_BOIL As Double = 4273 * Kw.KELVIN
Public Const Np_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Np_En As Double = 1.36
Public Const PLUTONIUM_Z As Double = 94
Public Const PLUTONIUM As Double = 244
Public Const Pu_Z As Double = PLUTONIUM_Z
Public Const Pu_WEIGHT As Double = 244
Public Const Pu_MASS As Double = 244 * Kw.MOLARMASS
Public Const PuMASS As Double = Pu_MASS / Kw.AVOGADRO
Public Const Pu_DENSITY As Double = 19840 * Kw.DENSITY
Public Const Pu_MELT As Double = 912.5 * Kw.KELVIN
Public Const Pu_BOIL As Double = 3501 * Kw.KELVIN
Public Const Pu_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pu_En As Double = 1.28
Public Const AMERICIUM_Z As Double = 95
Public Const AMERICIUM As Double = 243
Public Const Am_Z As Double = AMERICIUM_Z
Public Const Am_WEIGHT As Double = 243
Public Const Am_MASS As Double = 243 * Kw.MOLARMASS
Public Const AmMASS As Double = Am_MASS / Kw.AVOGADRO
Public Const Am_DENSITY As Double = 13690 * Kw.DENSITY
Public Const Am_MELT As Double = 1449 * Kw.KELVIN
Public Const Am_BOIL As Double = 2880 * Kw.KELVIN
Public Const Am_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Am_En As Double = 1.13
Public Const CURIUM_Z As Double = 96
Public Const CURIUM As Double = 247
Public Const Cm_Z As Double = CURIUM_Z
Public Const Cm_WEIGHT As Double = 247
Public Const Cm_MASS As Double = 247 * Kw.MOLARMASS
Public Const CmMASS As Double = Cm_MASS / Kw.AVOGADRO
Public Const Cm_DENSITY As Double = 13510 * Kw.DENSITY
Public Const Cm_MELT As Double = 1613 * Kw.KELVIN
Public Const Cm_BOIL As Double = 3383 * Kw.KELVIN
Public Const Cm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cm_En As Double = 1.28
Public Const BERKELIUM_Z As Double = 97
Public Const BERKELIUM As Double = 247
Public Const Bk_Z As Double = BERKELIUM_Z
Public Const Bk_WEIGHT As Double = 247
Public Const Bk_MASS As Double = 247 * Kw.MOLARMASS
Public Const BkMASS As Double = Bk_MASS / Kw.AVOGADRO
Public Const Bk_DENSITY As Double = 14790 * Kw.DENSITY
Public Const Bk_MELT As Double = 1259 * Kw.KELVIN
Public Const Bk_BOIL As Double = 2900 * Kw.KELVIN
Public Const Bk_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Bk_En As Double = 1.3
Public Const CALIFORNIUM_Z As Double = 98
Public Const CALIFORNIUM As Double = 251
Public Const Cf_Z As Double = CALIFORNIUM_Z
Public Const Cf_WEIGHT As Double = 251
Public Const Cf_MASS As Double = 251 * Kw.MOLARMASS
Public Const CfMASS As Double = Cf_MASS / Kw.AVOGADRO
Public Const Cf_DENSITY As Double = 15100 * Kw.DENSITY
Public Const Cf_MELT As Double = 1173 * Kw.KELVIN
Public Const Cf_BOIL As Double = -1 * Kw.KELVIN
Public Const Cf_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cf_En As Double = 1.3
Public Const EINSTEINIUM_Z As Double = 99
Public Const EINSTEINIUM As Double = 252
Public Const Es_Z As Double = EINSTEINIUM_Z
Public Const Es_WEIGHT As Double = 252
Public Const Es_MASS As Double = 252 * Kw.MOLARMASS
Public Const EsMASS As Double = Es_MASS / Kw.AVOGADRO
Public Const Es_DENSITY As Double = 8840 * Kw.DENSITY
Public Const Es_MELT As Double = 1133 * Kw.KELVIN
Public Const Es_BOIL As Double = -1 * Kw.KELVIN
Public Const Es_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Es_En As Double = 1.3
Public Const FERMIUM_Z As Double = 100
Public Const FERMIUM As Double = 257
Public Const Fm_Z As Double = FERMIUM_Z
Public Const Fm_WEIGHT As Double = 257
Public Const Fm_MASS As Double = 257 * Kw.MOLARMASS
Public Const FmMASS As Double = Fm_MASS / Kw.AVOGADRO
Public Const Fm_DENSITY As Double = -1 * Kw.DENSITY
Public Const Fm_MELT As Double = -1 * Kw.KELVIN
Public Const Fm_BOIL As Double = -1 * Kw.KELVIN
Public Const Fm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fm_En As Double = 1.3
Public Const MENDELEVIUM_Z As Double = 101
Public Const MENDELEVIUM As Double = 258
Public Const Md_Z As Double = MENDELEVIUM_Z
Public Const Md_WEIGHT As Double = 258
Public Const Md_MASS As Double = 258 * Kw.MOLARMASS
Public Const MdMASS As Double = Md_MASS / Kw.AVOGADRO
Public Const Md_DENSITY As Double = -1 * Kw.DENSITY
Public Const Md_MELT As Double = -1 * Kw.KELVIN
Public Const Md_BOIL As Double = -1 * Kw.KELVIN
Public Const Md_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Md_En As Double = 1.3
Public Const NOBELIUM_Z As Double = 102
Public Const NOBELIUM As Double = 259
Public Const No_Z As Double = NOBELIUM_Z
Public Const No_WEIGHT As Double = 259
Public Const No_MASS As Double = 259 * Kw.MOLARMASS
Public Const NoMASS As Double = No_MASS / Kw.AVOGADRO
Public Const No_DENSITY As Double = -1 * Kw.DENSITY
Public Const No_MELT As Double = -1 * Kw.KELVIN
Public Const No_BOIL As Double = -1 * Kw.KELVIN
Public Const No_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const No_En As Double = 1.3
Public Const LAWRENCIUM_Z As Double = 103
Public Const LAWRENCIUM As Double = 266
Public Const Lr_Z As Double = LAWRENCIUM_Z
Public Const Lr_WEIGHT As Double = 266
Public Const Lr_MASS As Double = 266 * Kw.MOLARMASS
Public Const LrMASS As Double = Lr_MASS / Kw.AVOGADRO
Public Const Lr_DENSITY As Double = -1 * Kw.DENSITY
Public Const Lr_MELT As Double = -1 * Kw.KELVIN
Public Const Lr_BOIL As Double = -1 * Kw.KELVIN
Public Const Lr_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Lr_En As Double = 1.3
Public Const RUTHERFORDIUM_Z As Double = 104
Public Const RUTHERFORDIUM As Double = 267
Public Const Rf_Z As Double = RUTHERFORDIUM_Z
Public Const Rf_WEIGHT As Double = 267
Public Const Rf_MASS As Double = 267 * Kw.MOLARMASS
Public Const RfMASS As Double = Rf_MASS / Kw.AVOGADRO
Public Const Rf_DENSITY As Double = -1 * Kw.DENSITY
Public Const Rf_MELT As Double = -1 * Kw.KELVIN
Public Const Rf_BOIL As Double = -1 * Kw.KELVIN
Public Const Rf_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Rf_En As Double = -1
Public Const DUBNIUM_Z As Double = 105
Public Const DUBNIUM As Double = 268
Public Const Db_Z As Double = DUBNIUM_Z
Public Const Db_WEIGHT As Double = 268
Public Const Db_MASS As Double = 268 * Kw.MOLARMASS
Public Const DbMASS As Double = Db_MASS / Kw.AVOGADRO
Public Const Db_DENSITY As Double = -1 * Kw.DENSITY
Public Const Db_MELT As Double = -1 * Kw.KELVIN
Public Const Db_BOIL As Double = -1 * Kw.KELVIN
Public Const Db_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Db_En As Double = -1
Public Const SEABORGIUM_Z As Double = 106
Public Const SEABORGIUM As Double = 269
Public Const Sg_Z As Double = SEABORGIUM_Z
Public Const Sg_WEIGHT As Double = 269
Public Const Sg_MASS As Double = 269 * Kw.MOLARMASS
Public Const SgMASS As Double = Sg_MASS / Kw.AVOGADRO
Public Const Sg_DENSITY As Double = -1 * Kw.DENSITY
Public Const Sg_MELT As Double = -1 * Kw.KELVIN
Public Const Sg_BOIL As Double = -1 * Kw.KELVIN
Public Const Sg_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Sg_En As Double = -1
Public Const BOHRIUM_Z As Double = 107
Public Const BOHRIUM As Double = 270
Public Const Bh_Z As Double = BOHRIUM_Z
Public Const Bh_WEIGHT As Double = 270
Public Const Bh_MASS As Double = 270 * Kw.MOLARMASS
Public Const BhMASS As Double = Bh_MASS / Kw.AVOGADRO
Public Const Bh_DENSITY As Double = -1 * Kw.DENSITY
Public Const Bh_MELT As Double = -1 * Kw.KELVIN
Public Const Bh_BOIL As Double = -1 * Kw.KELVIN
Public Const Bh_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Bh_En As Double = -1
Public Const HASSIUM_Z As Double = 108
Public Const HASSIUM As Double = 270
Public Const Hs_Z As Double = HASSIUM_Z
Public Const Hs_WEIGHT As Double = 270
Public Const Hs_MASS As Double = 270 * Kw.MOLARMASS
Public Const HsMASS As Double = Hs_MASS / Kw.AVOGADRO
Public Const Hs_DENSITY As Double = -1 * Kw.DENSITY
Public Const Hs_MELT As Double = -1 * Kw.KELVIN
Public Const Hs_BOIL As Double = -1 * Kw.KELVIN
Public Const Hs_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Hs_En As Double = -1
Public Const MEITNERIUM_Z As Double = 109
Public Const MEITNERIUM As Double = 278
Public Const Mt_Z As Double = MEITNERIUM_Z
Public Const Mt_WEIGHT As Double = 278
Public Const Mt_MASS As Double = 278 * Kw.MOLARMASS
Public Const MtMASS As Double = Mt_MASS / Kw.AVOGADRO
Public Const Mt_DENSITY As Double = -1 * Kw.DENSITY
Public Const Mt_MELT As Double = -1 * Kw.KELVIN
Public Const Mt_BOIL As Double = -1 * Kw.KELVIN
Public Const Mt_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Mt_En As Double = -1
Public Const DARMSTADTIUM_Z As Double = 110
Public Const DARMSTADTIUM As Double = 281
Public Const Ds_Z As Double = DARMSTADTIUM_Z
Public Const Ds_WEIGHT As Double = 281
Public Const Ds_MASS As Double = 281 * Kw.MOLARMASS
Public Const DsMASS As Double = Ds_MASS / Kw.AVOGADRO
Public Const Ds_DENSITY As Double = -1 * Kw.DENSITY
Public Const Ds_MELT As Double = -1 * Kw.KELVIN
Public Const Ds_BOIL As Double = -1 * Kw.KELVIN
Public Const Ds_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Ds_En As Double = -1
Public Const ROENTGENIUM_Z As Double = 111
Public Const ROENTGENIUM As Double = 282
Public Const Rg_Z As Double = ROENTGENIUM_Z
Public Const Rg_WEIGHT As Double = 282
Public Const Rg_MASS As Double = 282 * Kw.MOLARMASS
Public Const RgMASS As Double = Rg_MASS / Kw.AVOGADRO
Public Const Rg_DENSITY As Double = -1 * Kw.DENSITY
Public Const Rg_MELT As Double = -1 * Kw.KELVIN
Public Const Rg_BOIL As Double = -1 * Kw.KELVIN
Public Const Rg_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Rg_En As Double = -1
Public Const COPERNICIUM_Z As Double = 112
Public Const COPERNICIUM As Double = 285
Public Const Cn_Z As Double = COPERNICIUM_Z
Public Const Cn_WEIGHT As Double = 285
Public Const Cn_MASS As Double = 285 * Kw.MOLARMASS
Public Const CnMASS As Double = Cn_MASS / Kw.AVOGADRO
Public Const Cn_DENSITY As Double = -1 * Kw.DENSITY
Public Const Cn_MELT As Double = -1 * Kw.KELVIN
Public Const Cn_BOIL As Double = 357 * Kw.KELVIN
Public Const Cn_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cn_En As Double = -1
Public Const NIHONIUM_Z As Double = 113
Public Const NIHONIUM As Double = 286
Public Const Nh_Z As Double = NIHONIUM_Z
Public Const Nh_WEIGHT As Double = 286
Public Const Nh_MASS As Double = 286 * Kw.MOLARMASS
Public Const NhMASS As Double = Nh_MASS / Kw.AVOGADRO
Public Const Nh_DENSITY As Double = -1 * Kw.DENSITY
Public Const Nh_MELT As Double = -1 * Kw.KELVIN
Public Const Nh_BOIL As Double = -1 * Kw.KELVIN
Public Const Nh_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Nh_En As Double = -1
Public Const FLEROVIUM_Z As Double = 114
Public Const FLEROVIUM As Double = 289
Public Const Fl_Z As Double = FLEROVIUM_Z
Public Const Fl_WEIGHT As Double = 289
Public Const Fl_MASS As Double = 289 * Kw.MOLARMASS
Public Const FlMASS As Double = Fl_MASS / Kw.AVOGADRO
Public Const Fl_DENSITY As Double = -1 * Kw.DENSITY
Public Const Fl_MELT As Double = -1 * Kw.KELVIN
Public Const Fl_BOIL As Double = 210 * Kw.KELVIN
Public Const Fl_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fl_En As Double = -1
Public Const MOSCOVIUM_Z As Double = 115
Public Const MOSCOVIUM As Double = 290
Public Const Mc_Z As Double = MOSCOVIUM_Z
Public Const Mc_WEIGHT As Double = 290
Public Const Mc_MASS As Double = 290 * Kw.MOLARMASS
Public Const McMASS As Double = Mc_MASS / Kw.AVOGADRO
Public Const Mc_DENSITY As Double = -1 * Kw.DENSITY
Public Const Mc_MELT As Double = -1 * Kw.KELVIN
Public Const Mc_BOIL As Double = -1 * Kw.KELVIN
Public Const Mc_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Mc_En As Double = -1
Public Const LIVERMORIUM_Z As Double = 116
Public Const LIVERMORIUM As Double = 293
Public Const Lv_Z As Double = LIVERMORIUM_Z
Public Const Lv_WEIGHT As Double = 293
Public Const Lv_MASS As Double = 293 * Kw.MOLARMASS
Public Const LvMASS As Double = Lv_MASS / Kw.AVOGADRO
Public Const Lv_DENSITY As Double = -1 * Kw.DENSITY
Public Const Lv_MELT As Double = -1 * Kw.KELVIN
Public Const Lv_BOIL As Double = -1 * Kw.KELVIN
Public Const Lv_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Lv_En As Double = -1
Public Const TENNESSINE_Z As Double = 117
Public Const TENNESSINE As Double = 294
Public Const Ts_Z As Double = TENNESSINE_Z
Public Const Ts_WEIGHT As Double = 294
Public Const Ts_MASS As Double = 294 * Kw.MOLARMASS
Public Const TsMASS As Double = Ts_MASS / Kw.AVOGADRO
Public Const Ts_DENSITY As Double = -1 * Kw.DENSITY
Public Const Ts_MELT As Double = -1 * Kw.KELVIN
Public Const Ts_BOIL As Double = -1 * Kw.KELVIN
Public Const Ts_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Ts_En As Double = -1
Public Const OGANESSON_Z As Double = 118
Public Const OGANESSON As Double = 294
Public Const Og_Z As Double = OGANESSON_Z
Public Const Og_WEIGHT As Double = 294
Public Const Og_MASS As Double = 294 * Kw.MOLARMASS
Public Const OgMASS As Double = Og_MASS / Kw.AVOGADRO
Public Const Og_DENSITY As Double = -1 * Kw.DENSITY
Public Const Og_MELT As Double = -1 * Kw.KELVIN
Public Const Og_BOIL As Double = -1 * Kw.KELVIN
Public Const Og_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Og_En As Double = -1
Public Const H1_WEIGHT As Double = 1.007825032241
Public Const H1_MASS As Double = 1.007825032241 * Kw.MOLARMASS
Public Const H1MASS As Double = H1_MASS / Kw.AVOGADRO
Public Const DEUTERIUM_Z As Double = 1
Public Const DEUTERIUM As Double = 2.01410177811
Public Const D_Z As Double = DEUTERIUM_Z
Public Const D_WEIGHT As Double = 2.01410177811
Public Const D_MASS As Double = 2.01410177811 * Kw.MOLARMASS
Public Const DMASS As Double = D_MASS / Kw.AVOGADRO
Public Const TRITIUM_Z As Double = 1
Public Const TRITIUM As Double = 3.01604928199
Public Const T_Z As Double = TRITIUM_Z
Public Const T_WEIGHT As Double = 3.01604928199
Public Const T_MASS As Double = 3.01604928199 * Kw.MOLARMASS
Public Const TMASS As Double = T_MASS / Kw.AVOGADRO
Public Const H2_WEIGHT As Double = D_WEIGHT
Public Const H2_MASS As Double = D_WEIGHT * Kw.MOLARMASS
Public Const H2MASS As Double = H2_MASS / Kw.AVOGADRO
Public Const H3_WEIGHT As Double = T_WEIGHT
Public Const H3_MASS As Double = T_WEIGHT * Kw.MOLARMASS
Public Const H3MASS As Double = H3_MASS / Kw.AVOGADRO
Public Const He3_WEIGHT As Double = 3.01602932265
Public Const He3_MASS As Double = 3.01602932265 * Kw.MOLARMASS
Public Const He3MASS As Double = He3_MASS / Kw.AVOGADRO
Public Const He4_WEIGHT As Double = 4.002603254130
Public Const He4_MASS As Double = 4.002603254130 * Kw.MOLARMASS
Public Const He4MASS As Double = He4_MASS / Kw.AVOGADRO
Public Const C12_WEIGHT As Double = 12.0
Public Const C12_MASS As Double = 12.0 * Kw.MOLARMASS
Public Const C12MASS As Double = C12_MASS / Kw.AVOGADRO
Public Const C13_WEIGHT As Double = 13.00335483521
Public Const C13_MASS As Double = 13.00335483521 * Kw.MOLARMASS
Public Const C13MASS As Double = C13_MASS / Kw.AVOGADRO
Public Const C14_WEIGHT As Double = 14.003241988
Public Const C14_MASS As Double = 14.003241988 * Kw.MOLARMASS
Public Const C14MASS As Double = C14_MASS / Kw.AVOGADRO
Public Const O16_WEIGHT As Double = 15.99491461960
Public Const O16_MASS As Double = 15.99491461960 * Kw.MOLARMASS
Public Const O16MASS As Double = O16_MASS / Kw.AVOGADRO
Public Const O17_WEIGHT As Double = 16.9991317566
Public Const O17_MASS As Double = 16.9991317566 * Kw.MOLARMASS
Public Const O17MASS As Double = O17_MASS / Kw.AVOGADRO
Public Const O18_WEIGHT As Double = 17.9991596128
Public Const O18_MASS As Double = 17.9991596128 * Kw.MOLARMASS
Public Const O18MASS As Double = O18_MASS / Kw.AVOGADRO
Public Const DEUTERON_WEIGHT As Double = 2.013553212745
Public Const DEUTERON_MASS As Double = 2.013553212745 * Kw.MOLARMASS
Public Const DEUTERONMASS As Double = DEUTERON_MASS / Kw.AVOGADRO
Public Const DEUTERONMASS_ERR As Double = 2.0E-11
Public Const DEUTERONENERGY As Double = DEUTERONMASS * (Kw.LIGHT * Kw.LIGHT)
Public Const HELION_WEIGHT As Double = 3.0149322467175
Public Const HELION_MASS As Double = 3.0149322467175 * Kw.MOLARMASS
Public Const HELIONMASS As Double = HELION_MASS / Kw.AVOGADRO
Public Const HELIONMASS_ERR As Double = 3.2E-11
Public Const HELIONENERGY As Double = HELIONMASS * (Kw.LIGHT * Kw.LIGHT)
Public Const TRITON_WEIGHT As Double = 3.01550071621
Public Const TRITON_MASS As Double = 3.01550071621 * Kw.MOLARMASS
Public Const TRITONMASS As Double = TRITON_MASS / Kw.AVOGADRO
Public Const TRITONMASS_ERR As Double = 4.0E-11
Public Const TRITONENERGY As Double = TRITONMASS * (Kw.LIGHT * Kw.LIGHT)
Public Const ALPHA_WEIGHT As Double = 4.001506179127
Public Const ALPHA_MASS As Double = 4.001506179127 * Kw.MOLARMASS
Public Const ALPHAMASS As Double = ALPHA_MASS / Kw.AVOGADRO
Public Const ALPHAMASS_ERR As Double = 1.6E-11
Public Const ALPHAENERGY As Double = ALPHAMASS * (Kw.LIGHT * Kw.LIGHT)
Public Const UPQUARK_ENERGY As Double = 2.3E+6 * Kw.eV
Public Const UPQUARKMASS As Double = UPQUARK_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const UPQUARK_MASS As Double = UPQUARKMASS * Kw.AVOGADRO
Public Const UPQUARKMASS_ERR As Double = 0.7E+6 / 2.3E+6
Public Const UPQUARK_Hz As Double = UPQUARK_ENERGY / Kw.PLANCK
Public Const UPQUARK_WAVELENGTH As Double = Kw.LIGHT / UPQUARK_Hz
Public Const UPQUARK_CHARGE As Double = 2.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const DOWNQUARK_ENERGY As Double = 4.8E+6 * Kw.eV
Public Const DOWNQUARKMASS As Double = DOWNQUARK_ENERGY / (Kw.LIGHT * _
         Kw.LIGHT)
Public Const DOWNQUARK_MASS As Double = DOWNQUARKMASS * Kw.AVOGADRO
Public Const DOWNQUARKMASS_ERR As Double = 0.5E+6 / 4.8E+6
Public Const DOWNQUARK_Hz As Double = DOWNQUARK_ENERGY / Kw.PLANCK
Public Const DOWNQUARK_WAVELENGTH As Double = Kw.LIGHT / DOWNQUARK_Hz
Public Const DOWNQUARK_CHARGE As Double = -1.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const CHARMQUARK_ENERGY As Double = 1275E+6 * Kw.eV
Public Const CHARMQUARKMASS As Double = CHARMQUARK_ENERGY / (Kw.LIGHT * _
         Kw.LIGHT)
Public Const CHARMQUARK_MASS As Double = CHARMQUARKMASS * Kw.AVOGADRO
Public Const CHARMQUARKMASS_ERR As Double = 25E+6 / 1275E+6
Public Const CHARMQUARK_Hz As Double = CHARMQUARK_ENERGY / Kw.PLANCK
Public Const CHARMQUARK_WAVELENGTH As Double = Kw.LIGHT / CHARMQUARK_Hz
Public Const CHARMQUARK_CHARGE As Double = 2.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const STRANGEQUARK_ENERGY As Double = 95E+6 * Kw.eV
Public Const STRANGEQUARKMASS As Double = STRANGEQUARK_ENERGY / (Kw.LIGHT _
         * Kw.LIGHT)
Public Const STRANGEQUARK_MASS As Double = STRANGEQUARKMASS * Kw.AVOGADRO
Public Const STRANGEQUARKMASS_ERR As Double = 5E+6 / 95E+6
Public Const STRANGEQUARK_Hz As Double = STRANGEQUARK_ENERGY / Kw.PLANCK
Public Const STRANGEQUARK_WAVELENGTH As Double = Kw.LIGHT / STRANGEQUARK_Hz
Public Const STRANGEQUARK_CHARGE As Double = -1.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const TOPQUARK_ENERGY As Double = 173210E+6 * Kw.eV
Public Const TOPQUARKMASS As Double = TOPQUARK_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const TOPQUARK_MASS As Double = TOPQUARKMASS * Kw.AVOGADRO
Public Const TOPQUARKMASS_ERR As Double = 710E+6 / 173210E+6
Public Const TOPQUARK_Hz As Double = TOPQUARK_ENERGY / Kw.PLANCK
Public Const TOPQUARK_WAVELENGTH As Double = Kw.LIGHT / TOPQUARK_Hz
Public Const TOPQUARK_CHARGE As Double = 2.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const BOTTOMQUARK_ENERGY As Double = 4180E+6 * Kw.eV
Public Const BOTTOMQUARKMASS As Double = BOTTOMQUARK_ENERGY / (Kw.LIGHT * _
         Kw.LIGHT)
Public Const BOTTOMQUARK_MASS As Double = BOTTOMQUARKMASS * Kw.AVOGADRO
Public Const BOTTOMQUARKMASS_ERR As Double = 30E+6 / 4180E+6
Public Const BOTTOMQUARK_Hz As Double = BOTTOMQUARK_ENERGY / Kw.PLANCK
Public Const BOTTOMQUARK_WAVELENGTH As Double = Kw.LIGHT / BOTTOMQUARK_Hz
Public Const BOTTOMQUARK_CHARGE As Double = -1.0 / 3.0 * Kw.ELEMENTARYCHARGE
Public Const HIGGSBOSON_ENERGY As Double = 125.1E+9 * Kw.eV
Public Const HIGGSBOSONMASS As Double = HIGGSBOSON_ENERGY / (Kw.LIGHT * _
         Kw.LIGHT)
Public Const HIGGSBOSON_MASS As Double = HIGGSBOSONMASS * Kw.AVOGADRO
Public Const HIGGSBOSONMASS_ERR As Double = 0.14E+9 / 125.1E+9
Public Const HIGGSBOSON_Hz As Double = HIGGSBOSON_ENERGY / Kw.PLANCK
Public Const HIGGSBOSON_WAVELENGTH As Double = Kw.LIGHT / HIGGSBOSON_Hz
Public Const WBOSON_ENERGY As Double = 80.379E+9 * Kw.eV
Public Const WBOSONMASS As Double = WBOSON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const WBOSON_MASS As Double = WBOSONMASS * Kw.AVOGADRO
Public Const WBOSONMASS_ERR As Double = 0.012E+9 / 80.379E+9
Public Const WBOSON_Hz As Double = WBOSON_ENERGY / Kw.PLANCK
Public Const WBOSON_WAVELENGTH As Double = Kw.LIGHT / WBOSON_Hz
Public Const ZBOSON_ENERGY As Double = 91.1876E+9 * Kw.eV
Public Const ZBOSONMASS As Double = ZBOSON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const ZBOSON_MASS As Double = ZBOSONMASS * Kw.AVOGADRO
Public Const ZBOSONMASS_ERR As Double = 0.0023E+9 / 91.1876E+9
Public Const ZBOSON_Hz As Double = ZBOSON_ENERGY / Kw.PLANCK
Public Const ZBOSON_WAVELENGTH As Double = Kw.LIGHT / ZBOSON_Hz
Public Const TAU_ENERGY As Double = 1776.86E+6 * Kw.eV
Public Const TAUMASS As Double = TAU_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const TAU_MASS As Double = TAUMASS * Kw.AVOGADRO
Public Const TAUMASS_ERR As Double = 0.12E+6 / 1776.86E+6
Public Const TAU_Hz As Double = TAU_ENERGY / Kw.PLANCK
Public Const TAU_WAVELENGTH As Double = Kw.LIGHT / TAU_Hz
Public Const MUON_ENERGY As Double = 105.6583755E+6 * Kw.eV
Public Const MUONMASS As Double = MUON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const MUON_MASS As Double = MUONMASS * Kw.AVOGADRO
Public Const MUONMASS_ERR As Double = 0.0000023E+6 / 105.6583755E+6
Public Const MUON_Hz As Double = MUON_ENERGY / Kw.PLANCK
Public Const MUON_WAVELENGTH As Double = Kw.LIGHT / MUON_Hz
Public Const ELECTRON_ENERGY As Double = 0.51099895000E+6 * Kw.eV
Public Const ELECTRONMASS As Double = ELECTRON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const ELECTRON_MASS As Double = ELECTRONMASS * Kw.AVOGADRO
Public Const ELECTRONMASS_ERR As Double = 0.00000000015E+6 / 0.51099895000E+6
Public Const ELECTRON_Hz As Double = ELECTRON_ENERGY / Kw.PLANCK
Public Const ELECTRON_WAVELENGTH As Double = Kw.LIGHT / ELECTRON_Hz
Public Const PROTON_ENERGY As Double = 938.27208816E+6 * Kw.eV
Public Const PROTONMASS As Double = PROTON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const PROTON_MASS As Double = PROTONMASS * Kw.AVOGADRO
Public Const PROTONMASS_ERR As Double = 0.00000029E+6 / 938.27208816E+6
Public Const PROTON_Hz As Double = PROTON_ENERGY / Kw.PLANCK
Public Const PROTON_WAVELENGTH As Double = Kw.LIGHT / PROTON_Hz
Public Const NEUTRON_ENERGY As Double = 939.56542052E+6 * Kw.eV
Public Const NEUTRONMASS As Double = NEUTRON_ENERGY / (Kw.LIGHT * Kw.LIGHT)
Public Const NEUTRON_MASS As Double = NEUTRONMASS * Kw.AVOGADRO
Public Const NEUTRONMASS_ERR As Double = 0.00000054E+6 / 939.56542052E+6
Public Const NEUTRON_Hz As Double = NEUTRON_ENERGY / Kw.PLANCK
Public Const NEUTRON_WAVELENGTH As Double = Kw.LIGHT / NEUTRON_Hz
Public Const HYDROGEN_RADIUS As Double = (Kw.HBAR / (ELECTRON_MASS * _
         Kw.LIGHT * Kw.ALPHA))
Public Const HYDROGEN_RADIUS_ERR As Double = Kw.ALPHA_ERR
Public Const BOHRRADIUS As Double = HYDROGEN_RADIUS
Public Const BOHRRADIUS_ERR As Double = HYDROGEN_RADIUS_ERR
Public Const AIR_MASS As Double = Kw.PPM * (7.80781E+5 * (2.0 * N_MASS) + _
         2.09444E+5 * (2.0 * O_MASS) + 9.339E+3 * (Ar_MASS) + 4.1E+2 * _
         (C_MASS + 2.0 * O_MASS) + 1.818E+1 * (Ne_MASS) + 5.24 * _
         (He_MASS) + 1.79 * (C_MASS + 4.0 * H_MASS) + 1.14 * (Kr_MASS) + _
         0.55 * (2.0 * H_MASS))
Public Const AIRMASS As Double = AIR_MASS / Kw.AVOGADRO
Public Const STEAM_MASS As Double = 2 * H_MASS + 0 * C_MASS + 1 * O_MASS
Public Const STEAMMASS As Double = STEAM_MASS / Kw.AVOGADRO
Public Const STEAM_HF As Double = -241826 * Kw.JOULE / Kw.MOLE
Public Const STEAM_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const STEAM_JPKG As Double = - STEAM_HC / STEAM_MASS
Public Const STEAM_DENSITY As Double = 0.7363 * Kw.DENSITY
Public Const STEAM_JPL As Double = STEAM_JPKG * STEAM_DENSITY * Kw.LITER
Public Const H2O_MASS As Double = 2 * H_MASS + 0 * C_MASS + 1 * O_MASS
Public Const H2OMASS As Double = H2O_MASS / Kw.AVOGADRO
Public Const H2O_HF As Double = -285830 * Kw.JOULE / Kw.MOLE
Public Const H2O_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const H2O_JPKG As Double = - H2O_HC / H2O_MASS
Public Const H2O_DENSITY As Double = 999 * Kw.DENSITY
Public Const H2O_JPL As Double = H2O_JPKG * H2O_DENSITY * Kw.LITER
Public Const WATER_MASS As Double = 2 * H_MASS + 0 * C_MASS + 1 * O_MASS
Public Const WATERMASS As Double = WATER_MASS / Kw.AVOGADRO
Public Const WATER_HF As Double = -285830 * Kw.JOULE / Kw.MOLE
Public Const WATER_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const WATER_JPKG As Double = - WATER_HC / WATER_MASS
Public Const WATER_DENSITY As Double = 999 * Kw.DENSITY
Public Const WATER_JPL As Double = WATER_JPKG * WATER_DENSITY * Kw.LITER
Public Const CO2_MASS As Double = 0 * H_MASS + 1 * C_MASS + 2 * O_MASS
Public Const CO2MASS As Double = CO2_MASS / Kw.AVOGADRO
Public Const CO2_HF As Double = -393510 * Kw.JOULE / Kw.MOLE
Public Const CO2_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const CO2_JPKG As Double = - CO2_HC / CO2_MASS
Public Const CO2_DENSITY As Double = 1.7988 * Kw.DENSITY
Public Const CO2_JPL As Double = CO2_JPKG * CO2_DENSITY * Kw.LITER
Public Const CARBONDIOXIDE_MASS As Double = 0 * H_MASS + 1 * C_MASS + 2 * _
         O_MASS
Public Const CARBONDIOXIDEMASS As Double = CARBONDIOXIDE_MASS / Kw.AVOGADRO
Public Const CARBONDIOXIDE_HF As Double = -393510 * Kw.JOULE / Kw.MOLE
Public Const CARBONDIOXIDE_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const CARBONDIOXIDE_JPKG As Double = - CARBONDIOXIDE_HC / _
         CARBONDIOXIDE_MASS
Public Const CARBONDIOXIDE_DENSITY As Double = 1.7988 * Kw.DENSITY
Public Const CARBONDIOXIDE_JPL As Double = CARBONDIOXIDE_JPKG * _
         CARBONDIOXIDE_DENSITY * Kw.LITER
Public Const O2_MASS As Double = 0 * H_MASS + 0 * C_MASS + 2 * O_MASS
Public Const O2MASS As Double = O2_MASS / Kw.AVOGADRO
Public Const O2_HF As Double = 0 * Kw.JOULE / Kw.MOLE
Public Const O2_HC As Double = 0.0 * Kw.JOULE / Kw.MOLE
Public Const O2_JPKG As Double = - O2_HC / O2_MASS
Public Const O2_DENSITY As Double = 1.3079 * Kw.DENSITY
Public Const O2_JPL As Double = O2_JPKG * O2_DENSITY * Kw.LITER
Public Const HYDROGEN_MASS As Double = 2 * H_MASS + 0 * C_MASS + 0 * O_MASS
Public Const HYDROGENMASS As Double = HYDROGEN_MASS / Kw.AVOGADRO
Public Const HYDROGEN_HF As Double = 0 * Kw.JOULE / Kw.MOLE
Public Const HYDROGEN_HC As Double = (CO2_HF * 0 + H2O_HF * (2 / 2.0) + _
         HYDROGEN_HF)
Public Const HYDROGEN_HCC As Double = -2.86E+5 * Kw.JOULE / Kw.MOLE
Public Const HYDROGEN_JPKG As Double = - HYDROGEN_HC / HYDROGEN_MASS
Public Const HYDROGEN_DENSITY As Double = 0.08240 * Kw.DENSITY
Public Const HYDROGEN_JPL As Double = HYDROGEN_JPKG * HYDROGEN_DENSITY * _
         Kw.LITER
Public Const METHANE_MASS As Double = 4 * H_MASS + 1 * C_MASS + 0 * O_MASS
Public Const METHANEMASS As Double = METHANE_MASS / Kw.AVOGADRO
Public Const METHANE_HF As Double = -74870 * Kw.JOULE / Kw.MOLE
Public Const METHANE_HC As Double = (CO2_HF * 1 + H2O_HF * (4 / 2.0) + _
         METHANE_HF)
Public Const METHANE_HCC As Double = -8.907E+5 * Kw.JOULE / Kw.MOLE
Public Const METHANE_JPKG As Double = - METHANE_HC / METHANE_MASS
Public Const METHANE_DENSITY As Double = 0.6557 * Kw.DENSITY
Public Const METHANE_JPL As Double = METHANE_JPKG * METHANE_DENSITY * _
         Kw.LITER
Public Const ETHANE_MASS As Double = 6 * H_MASS + 2 * C_MASS + 0 * O_MASS
Public Const ETHANEMASS As Double = ETHANE_MASS / Kw.AVOGADRO
Public Const ETHANE_HF As Double = -84000 * Kw.JOULE / Kw.MOLE
Public Const ETHANE_HC As Double = (CO2_HF * 2 + H2O_HF * (6 / 2.0) + _
         ETHANE_HF)
Public Const ETHANE_HCC As Double = -1.5607E+6 * Kw.JOULE / Kw.MOLE
Public Const ETHANE_JPKG As Double = - ETHANE_HC / ETHANE_MASS
Public Const ETHANE_DENSITY As Double = 1.229 * Kw.DENSITY
Public Const ETHANE_JPL As Double = ETHANE_JPKG * ETHANE_DENSITY * Kw.LITER
Public Const PROPANE_MASS As Double = 8 * H_MASS + 3 * C_MASS + 0 * O_MASS
Public Const PROPANEMASS As Double = PROPANE_MASS / Kw.AVOGADRO
Public Const PROPANE_HF As Double = -104700 * Kw.JOULE / Kw.MOLE
Public Const PROPANE_HC As Double = (CO2_HF * 3 + H2O_HF * (8 / 2.0) + _
         PROPANE_HF)
Public Const PROPANE_HCC As Double = -2.2192E+6 * Kw.JOULE / Kw.MOLE
Public Const PROPANE_JPKG As Double = - PROPANE_HC / PROPANE_MASS
Public Const PROPANE_DENSITY As Double = 1.8028 * Kw.DENSITY
Public Const PROPANE_JPL As Double = PROPANE_JPKG * PROPANE_DENSITY * _
         Kw.LITER
Public Const BUTANE_MASS As Double = 10 * H_MASS + 4 * C_MASS + 0 * O_MASS
Public Const BUTANEMASS As Double = BUTANE_MASS / Kw.AVOGADRO
Public Const BUTANE_HF As Double = -125600 * Kw.JOULE / Kw.MOLE
Public Const BUTANE_HC As Double = (CO2_HF * 4 + H2O_HF * (10 / 2.0) + _
         BUTANE_HF)
Public Const BUTANE_HCC As Double = -2.8775E+6 * Kw.JOULE / Kw.MOLE
Public Const BUTANE_JPKG As Double = - BUTANE_HC / BUTANE_MASS
Public Const BUTANE_DENSITY As Double = 2.3757 * Kw.DENSITY
Public Const BUTANE_JPL As Double = BUTANE_JPKG * BUTANE_DENSITY * Kw.LITER
Public Const PENTANE_MASS As Double = 12 * H_MASS + 5 * C_MASS + 0 * O_MASS
Public Const PENTANEMASS As Double = PENTANE_MASS / Kw.AVOGADRO
Public Const PENTANE_HF As Double = -173500 * Kw.JOULE / Kw.MOLE
Public Const PENTANE_HC As Double = (CO2_HF * 5 + H2O_HF * (12 / 2.0) + _
         PENTANE_HF)
Public Const PENTANE_HCC As Double = -3.509E+6 * Kw.JOULE / Kw.MOLE
Public Const PENTANE_JPKG As Double = - PENTANE_HC / PENTANE_MASS
Public Const PENTANE_DENSITY As Double = 626 * Kw.DENSITY
Public Const PENTANE_JPL As Double = PENTANE_JPKG * PENTANE_DENSITY * _
         Kw.LITER
Public Const HEXANE_MASS As Double = 14 * H_MASS + 6 * C_MASS + 0 * O_MASS
Public Const HEXANEMASS As Double = HEXANE_MASS / Kw.AVOGADRO
Public Const HEXANE_HF As Double = -198700 * Kw.JOULE / Kw.MOLE
Public Const HEXANE_HC As Double = (CO2_HF * 6 + H2O_HF * (14 / 2.0) + _
         HEXANE_HF)
Public Const HEXANE_HCC As Double = -4.163E+6 * Kw.JOULE / Kw.MOLE
Public Const HEXANE_JPKG As Double = - HEXANE_HC / HEXANE_MASS
Public Const HEXANE_DENSITY As Double = 655 * Kw.DENSITY
Public Const HEXANE_JPL As Double = HEXANE_JPKG * HEXANE_DENSITY * Kw.LITER
Public Const ETHANOL_MASS As Double = 6 * H_MASS + 2 * C_MASS + 1 * O_MASS
Public Const ETHANOLMASS As Double = ETHANOL_MASS / Kw.AVOGADRO
Public Const ETHANOL_HF As Double = -276000 * Kw.JOULE / Kw.MOLE
Public Const ETHANOL_HC As Double = (CO2_HF * 2 + H2O_HF * (6 / 2.0) + _
         ETHANOL_HF)
Public Const ETHANOL_HCC As Double = -1.3676E+6 * Kw.JOULE / Kw.MOLE
Public Const ETHANOL_JPKG As Double = - ETHANOL_HC / ETHANOL_MASS
Public Const ETHANOL_DENSITY As Double = 789.45 * Kw.DENSITY
Public Const ETHANOL_JPL As Double = ETHANOL_JPKG * ETHANOL_DENSITY * _
         Kw.LITER
Public Const ETHANOL_G_MASS As Double = 6 * H_MASS + 2 * C_MASS + 1 * O_MASS
Public Const ETHANOL_GMASS As Double = ETHANOL_G_MASS / Kw.AVOGADRO
Public Const ETHANOL_G_HF As Double = -234000 * Kw.JOULE / Kw.MOLE
Public Const ETHANOL_G_HC As Double = (CO2_HF * 2 + H2O_HF * (6 / 2.0) + _
         ETHANOL_G_HF)
Public Const ETHANOL_G_HCC As Double = -1.3663E+6 * Kw.JOULE / Kw.MOLE
Public Const ETHANOL_G_JPKG As Double = - ETHANOL_G_HC / ETHANOL_G_MASS
Public Const ETHANOL_G_DENSITY As Double = 789.45 * Kw.DENSITY
Public Const ETHANOL_G_JPL As Double = ETHANOL_G_JPKG * ETHANOL_G_DENSITY _
         * Kw.LITER
Public Const SUCROSE_MASS As Double = 22 * H_MASS + 12 * C_MASS + 11 * O_MASS
Public Const SUCROSEMASS As Double = SUCROSE_MASS / Kw.AVOGADRO
Public Const SUCROSE_HF As Double = -2221200 * Kw.JOULE / Kw.MOLE
Public Const SUCROSE_HC As Double = (CO2_HF * 12 + H2O_HF * (22 / 2.0) + _
         SUCROSE_HF)
Public Const SUCROSE_HCC As Double = -5.6434E+6 * Kw.JOULE / Kw.MOLE
Public Const SUCROSE_JPKG As Double = - SUCROSE_HC / SUCROSE_MASS
Public Const SUCROSE_DENSITY As Double = 1587 * Kw.DENSITY
Public Const SUCROSE_JPL As Double = SUCROSE_JPKG * SUCROSE_DENSITY * _
         Kw.LITER
Public Const SUGAR_MASS As Double = 22 * H_MASS + 12 * C_MASS + 11 * O_MASS
Public Const SUGARMASS As Double = SUGAR_MASS / Kw.AVOGADRO
Public Const SUGAR_HF As Double = -2221200 * Kw.JOULE / Kw.MOLE
Public Const SUGAR_HC As Double = (CO2_HF * 12 + H2O_HF * (22 / 2.0) + _
         SUGAR_HF)
Public Const SUGAR_HCC As Double = -5.6434E+6 * Kw.JOULE / Kw.MOLE
Public Const SUGAR_JPKG As Double = - SUGAR_HC / SUGAR_MASS
Public Const SUGAR_DENSITY As Double = 845 * Kw.DENSITY
Public Const SUGAR_JPL As Double = SUGAR_JPKG * SUGAR_DENSITY * Kw.LITER
Public Const COAL_MASS As Double = 0 * H_MASS + 1 * C_MASS + 0 * O_MASS
Public Const COALMASS As Double = COAL_MASS / Kw.AVOGADRO
Public Const COAL_JPKG As Double = 2.9307E+7 * (Kw.JOULE / Kw.KG)
Public Const COAL_DENSITY As Double = 1300 * Kw.DENSITY
Public Const COAL_JPL As Double = COAL_JPKG * COAL_DENSITY * Kw.LITER
Public Const PARAFFIN_MASS As Double = 62 * H_MASS + 30 * C_MASS + 0 * O_MASS
Public Const PARAFFINMASS As Double = PARAFFIN_MASS / Kw.AVOGADRO
Public Const PARAFFIN_JPKG As Double = 4.6E+7 * (Kw.JOULE / Kw.KG)
Public Const PARAFFIN_DENSITY As Double = 900 * Kw.DENSITY
Public Const PARAFFIN_JPL As Double = PARAFFIN_JPKG * PARAFFIN_DENSITY * _
         Kw.LITER
Public Const FAT_MASS As Double = 104 * H_MASS + 55 * C_MASS + 6 * O_MASS
Public Const FATMASS As Double = FAT_MASS / Kw.AVOGADRO
Public Const FAT_JPKG As Double = 3.7E+7 * (Kw.JOULE / Kw.KG)
Public Const FAT_DENSITY As Double = 900 * Kw.DENSITY
Public Const FAT_JPL As Double = FAT_JPKG * FAT_DENSITY * Kw.LITER
Public Const DIESEL_MASS As Double = 26 * H_MASS + 12 * C_MASS + 0 * O_MASS
Public Const DIESELMASS As Double = DIESEL_MASS / Kw.AVOGADRO
Public Const DIESEL_JPKG As Double = 4.48E+7 * (Kw.JOULE / Kw.KG)
Public Const DIESEL_DENSITY As Double = 832 * Kw.DENSITY
Public Const DIESEL_JPL As Double = DIESEL_JPKG * DIESEL_DENSITY * Kw.LITER
Public Const GASOLINE_MASS As Double = 18 * H_MASS + 8 * C_MASS + 0 * O_MASS
Public Const GASOLINEMASS As Double = GASOLINE_MASS / Kw.AVOGADRO
Public Const GASOLINE_JPKG As Double = 4.64E+7 * (Kw.JOULE / Kw.KG)
Public Const GASOLINE_DENSITY As Double = 748.9 * Kw.DENSITY
Public Const GASOLINE_JPL As Double = GASOLINE_JPKG * GASOLINE_DENSITY * _
         Kw.LITER
Public Const KEROSENE_MASS As Double = 28 * H_MASS + 13 * C_MASS + 0 * O_MASS
Public Const KEROSENEMASS As Double = KEROSENE_MASS / Kw.AVOGADRO
Public Const KEROSENE_JPKG As Double = 4.62E+7 * (Kw.JOULE / Kw.KG)
Public Const KEROSENE_DENSITY As Double = 800 * Kw.DENSITY
Public Const KEROSENE_JPL As Double = KEROSENE_JPKG * KEROSENE_DENSITY * _
         Kw.LITER
Public Const C13_RATIO As Double = 1.07E-2
Public Const C14_RATIO As Double = 1.0E-12
Public Const C12_RATIO As Double = 1.0 - C13_RATIO - C14_RATIO
Public Const C_MEAN_MASS As Double = C12_MASS * C12_RATIO + C13_MASS * _
         C13_RATIO + C14_MASS * C14_RATIO
Public Const WATER_Cp As Double = 4184.0 * Kw.SPECIFICHEAT
Public Const ICE_Cp As Double = 2108.0 * Kw.SPECIFICHEAT
Public Const STEAM_Cp As Double = 1996.0 * Kw.SPECIFICHEAT
Public Const WATER_FUSION_JPMOLE As Double = 6.0089E+3 * Kw.JOULE / Kw.MOLE
Public Const WATER_FUSION_JPKG As Double = WATER_FUSION_JPMOLE / WATER_MASS
Public Const WATER_VAPORIZATION_JPMOLE As Double = 4.0660E+4 * Kw.JOULE / _
         Kw.MOLE
Public Const WATER_VAPORIZATION_JPKG As Double = _
         WATER_VAPORIZATION_JPMOLE / WATER_MASS
Public Const WATER_CRITICAL As Double = 647.096 * Kw.KELVIN
Public Const VSMOW_H3_RATIO As Double = 1.85E-17
Public Const VSMOW_H2_RATIO As Double = 1.5576E-4
Public Const VSMOW_H1_RATIO As Double = 1.0 - VSMOW_H2_RATIO - VSMOW_H3_RATIO
Public Const VSMOW_H_MASS As Double = (H1_MASS * VSMOW_H1_RATIO + H2_MASS _
         * VSMOW_H2_RATIO + H3_MASS * VSMOW_H3_RATIO)
Public Const VSMOW_O18_RATIO As Double = 2.00520E-3
Public Const VSMOW_O17_RATIO As Double = 3.799E-4
Public Const VSMOW_O16_RATIO As Double = 1.0 - VSMOW_O17_RATIO - _
         VSMOW_O18_RATIO
Public Const VSMOW_O_MASS As Double = O16_MASS * VSMOW_O16_RATIO + _
         O17_MASS * VSMOW_O17_RATIO + O18_MASS * VSMOW_O18_RATIO
Public Const VSMOW_MASS As Double = 2.0 * VSMOW_H_MASS + VSMOW_O_MASS
Public Const TNTJPKG As Double = 4.184E+6 * Kw.JOULE / Kw.KILOGRAM
'IMPORT "Kw"
Public Function watervapor_pressure(ByVal temp_k As Double) As Double
   Dim retvalu As Double
   Dim temp_c As Double
   If (temp_k <= 16.1 Or WATER_CRITICAL <= temp_k) Then
      retvalu = 0.0
   Else
      temp_c = Kw.k2tempc(temp_k)
      If (0.0 <= temp_c) Then
         retvalu = 611.21 * Math.Exp((18.678 - temp_c / 234.5) * (temp_c _
                  / (257.14 + temp_c)))
      Else
         retvalu = 611.15 * Math.Exp((23.036 - temp_c / 333.7) * (temp_c _
                  / (279.82 + temp_c)))
      End If
   End If
   watervapor_pressure = retvalu
End Function
Public Function watervaporization(ByVal temp_k As Double) As Double
   Dim retvalu As Double
   If (WATER_CRITICAL <= temp_k) Then
      retvalu = 0.0
   Else
      retvalu = Pow((WATER_CRITICAL - temp_k) / (WATER_CRITICAL - 373.15) _
               , 0.37) * WATER_VAPORIZATION_JPMOLE
   End If
   watervaporization = retvalu
End Function
Public Function waterboiling(ByVal pressure_pa As Double) As Double
   Dim retvalu As Double
   If (pressure_pa <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (1.0 / 373.15 - Math.Log(pressure_pa / Kw.ATM) * _
               Kw.GAS / WATER_VAPORIZATION_JPMOLE)
   End If
   waterboiling = retvalu
End Function
Public Function waterdensity_airfree(ByVal temp_k As Double) As Double
   Dim temp_c As Double
   Dim retvalu As Double
   temp_c = Kw.k2tempc(temp_k)
   If (temp_c < 5.0 Or 40.0 < temp_c) Then
      retvalu = ((((((-2.8054253E-10) * temp_c + 1.0556302E-7) * temp_c - _
               4.6170461E-5) * temp_c - 7.9870401E-3) * temp_c + _
               1.6945176E+1) * temp_c + 9.9983952E+2)
      retvalu = retvalu / (1.6897850E-2 * temp_c + 1.0)
   Else
      retvalu = (((((-3.821216E-7) * temp_c + 6.943248E-5) * temp_c - _
               8.523829E-3) * temp_c + 6.32693E-2) * temp_c + 9.9985308E+2)
   End If
   waterdensity_airfree = retvalu
End Function
Public Function waterdensity(ByVal temp_k As Double) As Double
   Dim temp_c As Double
   Dim retvalu As Double
   temp_c = Kw.k2tempc(temp_k)
   If (temp_c < 0.0) Then
      retvalu = 917 - 0.13 * temp_c
   ElseIf (temp_c <= 5.0) Then
      retvalu = (((8.7191684845109E-5) * temp_c - 9.0329747829960E-3) * _
               temp_c + 6.7771627919989E-2) * temp_c + 9.9984281840963E+2
   ElseIf (temp_c <= 40.0) Then
      retvalu = ((((-3.821216E-7) * temp_c + 6.943248E-5) * temp_c - _
               8.523829E-3) * temp_c + 6.337563E-2) * temp_c + _
               9.9984847E+2 + 0.0059
   Else
      retvalu = ((((-6.5202248732325E-8) * temp_c + 2.5745673934090E-5) * _
               temp_c - 6.1868849581972E-3) * temp_c + _
               6.0164627537211E-3) * temp_c + 1.0003918667215E+3
   End If
   waterdensity = retvalu
End Function
Public Function waterdensity_airfree__1(ByVal temp_k As Double) As Double
   Dim temp_c As Double
   Dim retvalu As Double
   temp_c = Kw.k2tempc(temp_k)
   If (temp_c <= 5.0) Then
      retvalu = ((((9.6308327803439E-5) * temp_c - 9.0973473048107E-3) * _
               temp_c + 6.7877518213033E-2) * temp_c + 9.9984280358288E+2)
   ElseIf (temp_c <= 40.0) Then
      retvalu = (((((((-4.6205682267935E-11) * temp_c + _
               1.0474115539454E-8) * temp_c - 1.1933226216922E-6) * _
               temp_c + 9.8476793645150E-5) * temp_c - _
               9.0387372512241E-3) * temp_c + 6.7575261493264E-2) * _
               temp_c + 9.9984328159055E+2)
   ElseIf (temp_c <= 100) Then
      retvalu = (((((-6.5202248732325E-8) * temp_c + 2.5745673934090E-5) _
               * temp_c - 6.1868849581972E-3) * temp_c + _
               6.0164627537211E-3) * temp_c + 1.0003918667215E+3)
   Else
      retvalu = ((((((((((-5.4752717629528E-17) * temp_c + _
               1.1052954300641E-13) * temp_c - 9.7190466446857E-11) * _
               temp_c + 4.8801821861028E-8) * temp_c - _
               1.5403658215495E-5) * temp_c + 3.1660515368531E-3) * _
               temp_c - 4.2335200290825E-1) * temp_c + _
               3.5482000718216E+1) * temp_c - 1.6909944548890E+3) * _
               temp_c + 3.5888296998420E+4)
   End If
   waterdensity_airfree__1 = retvalu
End Function
'   DDDDDDDDDDescription ########################### kwelements_description #
Public Function kwelements_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwelements Constants: Ac_BOIL Ac_Cp Ac_DENSITY Ac_En Ac_MAS" _
         & "S Ac_MELT Ac_WEIGHT Ac_Z AcMASS ACTINIUM ACTINIUM_Z Ag_BOIL Ag" _
         & "_Cp Ag_DENSITY Ag_En Ag_MASS Ag_MELT Ag_WEIGHT Ag_Z AgMASS AIR" _
         & "_MASS AIRMASS Al_BOIL Al_Cp Al_DENSITY Al_En Al_MASS Al_MELT A" _
         & "l_WEIGHT Al_Z AlMASS ALPHA_MASS ALPHA_WEIGHT ALPHAENERGY ALPHA" _
         & "MASS ALPHAMASS_ERR ALUMINIUM ALUMINIUM_Z Am_BOIL Am_Cp Am_DENS" _
         & "ITY Am_En Am_MASS Am_MELT Am_WEIGHT Am_Z AMERICIUM AMERICIUM_Z" _
         & " AmMASS ANTIMONY ANTIMONY_Z Ar_BOIL Ar_Cp Ar_DENSITY Ar_En Ar_" _
         & "MASS Ar_MELT Ar_WEIGHT Ar_Z ARGON ARGON_Z ArMASS ARSENIC ARSEN" _
         & "IC_Z As_BOIL As_Cp As_DENSITY As_En As_MASS As_MELT As_WEIGHT " _
         & "As_Z AsMASS ASTATINE ASTATINE_Z At_BOIL At_Cp At_DENSITY At_En"
   desc_string = desc_string _
         & " At_MASS At_MELT At_WEIGHT At_Z AtMASS Au_BOIL Au_Cp Au_DENSIT" _
         & "Y Au_En Au_MASS Au_MELT Au_WEIGHT Au_Z AuMASS B_BOIL B_Cp B_DE" _
         & "NSITY B_En B_MASS B_MELT B_WEIGHT B_Z Ba_BOIL Ba_Cp Ba_DENSITY" _
         & " Ba_En Ba_MASS Ba_MELT Ba_WEIGHT Ba_Z BaMASS BARIUM BARIUM_Z B" _
         & "e_BOIL Be_Cp Be_DENSITY Be_En Be_MASS Be_MELT Be_WEIGHT Be_Z B" _
         & "eMASS BERKELIUM BERKELIUM_Z BERYLLIUM BERYLLIUM_Z Bh_BOIL Bh_C" _
         & "p Bh_DENSITY Bh_En Bh_MASS Bh_MELT Bh_WEIGHT Bh_Z BhMASS Bi_BO" _
         & "IL Bi_Cp Bi_DENSITY Bi_En Bi_MASS Bi_MELT Bi_WEIGHT Bi_Z BiMAS" _
         & "S BISMUTH BISMUTH_Z Bk_BOIL Bk_Cp Bk_DENSITY Bk_En Bk_MASS Bk_" _
         & "MELT Bk_WEIGHT Bk_Z BkMASS BMASS BOHRIUM BOHRIUM_Z BOHRRADIUS " _
         & "BOHRRADIUS_ERR BORON BORON_Z BOTTOMQUARK_CHARGE BOTTOMQUARK_EN" _
         & "ERGY BOTTOMQUARK_Hz BOTTOMQUARK_MASS BOTTOMQUARK_WAVELENGTH BO"
   desc_string = desc_string _
         & "TTOMQUARKMASS BOTTOMQUARKMASS_ERR Br_BOIL Br_Cp Br_DENSITY Br_" _
         & "En Br_MASS Br_MELT Br_WEIGHT Br_Z BrMASS BROMINE BROMINE_Z BUT" _
         & "ANE_DENSITY BUTANE_HC BUTANE_HCC BUTANE_HF BUTANE_JPKG BUTANE_" _
         & "JPL BUTANE_MASS BUTANEMASS C12_MASS C12_RATIO C12_WEIGHT C12MA" _
         & "SS C13_MASS C13_RATIO C13_WEIGHT C13MASS C14_MASS C14_RATIO C1" _
         & "4_WEIGHT C14MASS C_BOIL C_Cp C_DENSITY C_En C_MASS C_MEAN_MASS" _
         & " C_MELT C_WEIGHT C_Z Ca_BOIL Ca_Cp Ca_DENSITY Ca_En Ca_MASS Ca" _
         & "_MELT Ca_WEIGHT Ca_Z CADMIUM CADMIUM_Z CAESIUM CAESIUM_Z CALCI" _
         & "UM CALCIUM_Z CALIFORNIUM CALIFORNIUM_Z CaMASS CARBON CARBON_Z " _
         & "CARBONDIOXIDE_DENSITY CARBONDIOXIDE_HC CARBONDIOXIDE_HF CARBON" _
         & "DIOXIDE_JPKG CARBONDIOXIDE_JPL CARBONDIOXIDE_MASS CARBONDIOXID" _
         & "EMASS Cd_BOIL Cd_Cp Cd_DENSITY Cd_En Cd_MASS Cd_MELT Cd_WEIGHT"
   desc_string = desc_string _
         & " Cd_Z CdMASS Ce_BOIL Ce_Cp Ce_DENSITY Ce_En Ce_MASS Ce_MELT Ce" _
         & "_WEIGHT Ce_Z CeMASS CERIUM CERIUM_Z Cf_BOIL Cf_Cp Cf_DENSITY C" _
         & "f_En Cf_MASS Cf_MELT Cf_WEIGHT Cf_Z CfMASS CHARMQUARK_CHARGE C" _
         & "HARMQUARK_ENERGY CHARMQUARK_Hz CHARMQUARK_MASS CHARMQUARK_WAVE" _
         & "LENGTH CHARMQUARKMASS CHARMQUARKMASS_ERR CHLORINE CHLORINE_Z C" _
         & "HROMIUM CHROMIUM_Z Cl_BOIL Cl_Cp Cl_DENSITY Cl_En Cl_MASS Cl_M" _
         & "ELT Cl_WEIGHT Cl_Z ClMASS Cm_BOIL Cm_Cp Cm_DENSITY Cm_En Cm_MA" _
         & "SS Cm_MELT Cm_WEIGHT Cm_Z CMASS CmMASS Cn_BOIL Cn_Cp Cn_DENSIT" _
         & "Y Cn_En Cn_MASS Cn_MELT Cn_WEIGHT Cn_Z CnMASS CO2_DENSITY CO2_" _
         & "HC CO2_HF CO2_JPKG CO2_JPL CO2_MASS CO2MASS Co_BOIL Co_Cp Co_D" _
         & "ENSITY Co_En Co_MASS Co_MELT Co_WEIGHT Co_Z COAL_DENSITY COAL_" _
         & "JPKG COAL_JPL COAL_MASS COALMASS COBALT COBALT_Z CoMASS COPERN"
   desc_string = desc_string _
         & "ICIUM COPERNICIUM_Z COPPER COPPER_Z Cr_BOIL Cr_Cp Cr_DENSITY C" _
         & "r_En Cr_MASS Cr_MELT Cr_WEIGHT Cr_Z CrMASS Cs_BOIL Cs_Cp Cs_DE" _
         & "NSITY Cs_En Cs_MASS Cs_MELT Cs_WEIGHT Cs_Z CsMASS Cu_BOIL Cu_C" _
         & "p Cu_DENSITY Cu_En Cu_MASS Cu_MELT Cu_WEIGHT Cu_Z CuMASS CURIU" _
         & "M CURIUM_Z D_MASS D_WEIGHT D_Z DARMSTADTIUM DARMSTADTIUM_Z Db_" _
         & "BOIL Db_Cp Db_DENSITY Db_En Db_MASS Db_MELT Db_WEIGHT Db_Z DbM" _
         & "ASS DEUTERIUM DEUTERIUM_Z DEUTERON_MASS DEUTERON_WEIGHT DEUTER" _
         & "ONENERGY DEUTERONMASS DEUTERONMASS_ERR DIESEL_DENSITY DIESEL_J" _
         & "PKG DIESEL_JPL DIESEL_MASS DIESELMASS DMASS DOWNQUARK_CHARGE D" _
         & "OWNQUARK_ENERGY DOWNQUARK_Hz DOWNQUARK_MASS DOWNQUARK_WAVELENG" _
         & "TH DOWNQUARKMASS DOWNQUARKMASS_ERR Ds_BOIL Ds_Cp Ds_DENSITY Ds" _
         & "_En Ds_MASS Ds_MELT Ds_WEIGHT Ds_Z DsMASS DUBNIUM DUBNIUM_Z Dy"
   desc_string = desc_string _
         & "_BOIL Dy_Cp Dy_DENSITY Dy_En Dy_MASS Dy_MELT Dy_WEIGHT Dy_Z Dy" _
         & "MASS DYSPROSIUM DYSPROSIUM_Z EINSTEINIUM EINSTEINIUM_Z ELECTRO" _
         & "N_ENERGY ELECTRON_Hz ELECTRON_MASS ELECTRON_WAVELENGTH ELECTRO" _
         & "NMASS ELECTRONMASS_ERR Er_BOIL Er_Cp Er_DENSITY Er_En Er_MASS " _
         & "Er_MELT Er_WEIGHT Er_Z ERBIUM ERBIUM_Z ErMASS Es_BOIL Es_Cp Es" _
         & "_DENSITY Es_En Es_MASS Es_MELT Es_WEIGHT Es_Z EsMASS ETHANE_DE" _
         & "NSITY ETHANE_HC ETHANE_HCC ETHANE_HF ETHANE_JPKG ETHANE_JPL ET" _
         & "HANE_MASS ETHANEMASS ETHANOL_DENSITY ETHANOL_G_DENSITY ETHANOL" _
         & "_G_HC ETHANOL_G_HCC ETHANOL_G_HF ETHANOL_G_JPKG ETHANOL_G_JPL " _
         & "ETHANOL_G_MASS ETHANOL_GMASS ETHANOL_HC ETHANOL_HCC ETHANOL_HF" _
         & " ETHANOL_JPKG ETHANOL_JPL ETHANOL_MASS ETHANOLMASS Eu_BOIL Eu_" _
         & "Cp Eu_DENSITY Eu_En Eu_MASS Eu_MELT Eu_WEIGHT Eu_Z EuMASS EURO"
   desc_string = desc_string _
         & "PIUM EUROPIUM_Z F_BOIL F_Cp F_DENSITY F_En F_MASS F_MELT F_WEI" _
         & "GHT F_Z FAT_DENSITY FAT_JPKG FAT_JPL FAT_MASS FATMASS Fe_BOIL " _
         & "Fe_Cp Fe_DENSITY Fe_En Fe_MASS Fe_MELT Fe_WEIGHT Fe_Z FeMASS F" _
         & "ERMIUM FERMIUM_Z Fl_BOIL Fl_Cp Fl_DENSITY Fl_En Fl_MASS Fl_MEL" _
         & "T Fl_WEIGHT Fl_Z FLEROVIUM FLEROVIUM_Z FlMASS FLUORINE FLUORIN" _
         & "E_Z Fm_BOIL Fm_Cp Fm_DENSITY Fm_En Fm_MASS Fm_MELT Fm_WEIGHT F" _
         & "m_Z FMASS FmMASS Fr_BOIL Fr_Cp Fr_DENSITY Fr_En Fr_MASS Fr_MEL" _
         & "T Fr_WEIGHT Fr_Z FRANCIUM FRANCIUM_Z FrMASS Ga_BOIL Ga_Cp Ga_D" _
         & "ENSITY Ga_En Ga_MASS Ga_MELT Ga_WEIGHT Ga_Z GADOLINIUM GADOLIN" _
         & "IUM_Z GALLIUM GALLIUM_Z GaMASS GASOLINE_DENSITY GASOLINE_JPKG " _
         & "GASOLINE_JPL GASOLINE_MASS GASOLINEMASS Gd_BOIL Gd_Cp Gd_DENSI" _
         & "TY Gd_En Gd_MASS Gd_MELT Gd_WEIGHT Gd_Z GdMASS Ge_BOIL Ge_Cp G"
   desc_string = desc_string _
         & "e_DENSITY Ge_En Ge_MASS Ge_MELT Ge_WEIGHT Ge_Z GeMASS GERMANIU" _
         & "M GERMANIUM_Z GOLD GOLD_Z H1_MASS H1_WEIGHT H1MASS H2_MASS H2_" _
         & "WEIGHT H2MASS H2O_DENSITY H2O_HC H2O_HF H2O_JPKG H2O_JPL H2O_M" _
         & "ASS H2OMASS H3_MASS H3_WEIGHT H3MASS H_BOIL H_Cp H_DENSITY H_E" _
         & "n H_MASS H_MELT H_WEIGHT H_Z HAFNIUM HAFNIUM_Z HASSIUM HASSIUM" _
         & "_Z He3_MASS He3_WEIGHT He3MASS He4_MASS He4_WEIGHT He4MASS He_" _
         & "BOIL He_Cp He_DENSITY He_En He_MASS He_MELT He_WEIGHT He_Z HEL" _
         & "ION_MASS HELION_WEIGHT HELIONENERGY HELIONMASS HELIONMASS_ERR " _
         & "HELIUM HELIUM_Z HeMASS HEXANE_DENSITY HEXANE_HC HEXANE_HCC HEX" _
         & "ANE_HF HEXANE_JPKG HEXANE_JPL HEXANE_MASS HEXANEMASS Hf_BOIL H" _
         & "f_Cp Hf_DENSITY Hf_En Hf_MASS Hf_MELT Hf_WEIGHT Hf_Z HfMASS Hg" _
         & "_BOIL Hg_Cp Hg_DENSITY Hg_En Hg_MASS Hg_MELT Hg_WEIGHT Hg_Z Hg"
   desc_string = desc_string _
         & "MASS HIGGSBOSON_ENERGY HIGGSBOSON_Hz HIGGSBOSON_MASS HIGGSBOSO" _
         & "N_WAVELENGTH HIGGSBOSONMASS HIGGSBOSONMASS_ERR HMASS Ho_BOIL H" _
         & "o_Cp Ho_DENSITY Ho_En Ho_MASS Ho_MELT Ho_WEIGHT Ho_Z HOLMIUM H" _
         & "OLMIUM_Z HoMASS Hs_BOIL Hs_Cp Hs_DENSITY Hs_En Hs_MASS Hs_MELT" _
         & " Hs_WEIGHT Hs_Z HsMASS HYDROGEN HYDROGEN_DENSITY HYDROGEN_HC H" _
         & "YDROGEN_HCC HYDROGEN_HF HYDROGEN_JPKG HYDROGEN_JPL HYDROGEN_MA" _
         & "SS HYDROGEN_RADIUS HYDROGEN_RADIUS_ERR HYDROGEN_Z HYDROGENMASS" _
         & " I_BOIL I_Cp I_DENSITY I_En I_MASS I_MELT I_WEIGHT I_Z ICE_Cp " _
         & "IMASS In_BOIL In_Cp In_DENSITY In_En In_MASS In_MELT In_WEIGHT" _
         & " In_Z INDIUM INDIUM_Z InMASS IODINE IODINE_Z Ir_BOIL Ir_Cp Ir_" _
         & "DENSITY Ir_En Ir_MASS Ir_MELT Ir_WEIGHT Ir_Z IRIDIUM IRIDIUM_Z" _
         & " IrMASS IRON IRON_Z K_BOIL K_Cp K_DENSITY K_En K_MASS K_MELT K"
   desc_string = desc_string _
         & "_WEIGHT K_Z KEROSENE_DENSITY KEROSENE_JPKG KEROSENE_JPL KEROSE" _
         & "NE_MASS KEROSENEMASS KMASS Kr_BOIL Kr_Cp Kr_DENSITY Kr_En Kr_M" _
         & "ASS Kr_MELT Kr_WEIGHT Kr_Z KrMASS KRYPTON KRYPTON_Z La_BOIL La" _
         & "_Cp La_DENSITY La_En La_MASS La_MELT La_WEIGHT La_Z LaMASS LAN" _
         & "THANUM LANTHANUM_Z LAWRENCIUM LAWRENCIUM_Z LEAD LEAD_Z Li_BOIL" _
         & " Li_Cp Li_DENSITY Li_En Li_MASS Li_MELT Li_WEIGHT Li_Z LiMASS " _
         & "LITHIUM LITHIUM_Z LIVERMORIUM LIVERMORIUM_Z Lr_BOIL Lr_Cp Lr_D" _
         & "ENSITY Lr_En Lr_MASS Lr_MELT Lr_WEIGHT Lr_Z LrMASS Lu_BOIL Lu_" _
         & "Cp Lu_DENSITY Lu_En Lu_MASS Lu_MELT Lu_WEIGHT Lu_Z LuMASS LUTE" _
         & "TIUM LUTETIUM_Z Lv_BOIL Lv_Cp Lv_DENSITY Lv_En Lv_MASS Lv_MELT" _
         & " Lv_WEIGHT Lv_Z LvMASS MAGNESIUM MAGNESIUM_Z MANGANESE MANGANE" _
         & "SE_Z Mc_BOIL Mc_Cp Mc_DENSITY Mc_En Mc_MASS Mc_MELT Mc_WEIGHT "
   desc_string = desc_string _
         & "Mc_Z McMASS Md_BOIL Md_Cp Md_DENSITY Md_En Md_MASS Md_MELT Md_" _
         & "WEIGHT Md_Z MdMASS MEITNERIUM MEITNERIUM_Z MENDELEVIUM MENDELE" _
         & "VIUM_Z MERCURY MERCURY_Z METHANE_DENSITY METHANE_HC METHANE_HC" _
         & "C METHANE_HF METHANE_JPKG METHANE_JPL METHANE_MASS METHANEMASS" _
         & " Mg_BOIL Mg_Cp Mg_DENSITY Mg_En Mg_MASS Mg_MELT Mg_WEIGHT Mg_Z" _
         & " MgMASS Mn_BOIL Mn_Cp Mn_DENSITY Mn_En Mn_MASS Mn_MELT Mn_WEIG" _
         & "HT Mn_Z MnMASS Mo_BOIL Mo_Cp Mo_DENSITY Mo_En Mo_MASS Mo_MELT " _
         & "Mo_WEIGHT Mo_Z MOLYBDENUM MOLYBDENUM_Z MoMASS MOSCOVIUM MOSCOV" _
         & "IUM_Z Mt_BOIL Mt_Cp Mt_DENSITY Mt_En Mt_MASS Mt_MELT Mt_WEIGHT" _
         & " Mt_Z MtMASS MUON_ENERGY MUON_Hz MUON_MASS MUON_WAVELENGTH MUO" _
         & "NMASS MUONMASS_ERR N_BOIL N_Cp N_DENSITY N_En N_MASS N_MELT N_" _
         & "WEIGHT N_Z Na_BOIL Na_Cp Na_DENSITY Na_En Na_MASS Na_MELT Na_W"
   desc_string = desc_string _
         & "EIGHT Na_Z NaMASS Nb_BOIL Nb_Cp Nb_DENSITY Nb_En Nb_MASS Nb_ME" _
         & "LT Nb_WEIGHT Nb_Z NbMASS Nd_BOIL Nd_Cp Nd_DENSITY Nd_En Nd_MAS" _
         & "S Nd_MELT Nd_WEIGHT Nd_Z NdMASS Ne_BOIL Ne_Cp Ne_DENSITY Ne_En" _
         & " Ne_MASS Ne_MELT Ne_WEIGHT Ne_Z NeMASS NEODYMIUM NEODYMIUM_Z N" _
         & "EON NEON_Z NEPTUNIUM NEPTUNIUM_Z NEUTRON_ENERGY NEUTRON_Hz NEU" _
         & "TRON_MASS NEUTRON_WAVELENGTH NEUTRONMASS NEUTRONMASS_ERR Nh_BO" _
         & "IL Nh_Cp Nh_DENSITY Nh_En Nh_MASS Nh_MELT Nh_WEIGHT Nh_Z NhMAS" _
         & "S Ni_BOIL Ni_Cp Ni_DENSITY Ni_En Ni_MASS Ni_MELT Ni_WEIGHT Ni_" _
         & "Z NICKEL NICKEL_Z NIHONIUM NIHONIUM_Z NiMASS NIOBIUM NIOBIUM_Z" _
         & " NITROGEN NITROGEN_Z NMASS No_BOIL No_Cp No_DENSITY No_En No_M" _
         & "ASS No_MELT No_WEIGHT No_Z NOBELIUM NOBELIUM_Z NoMASS Np_BOIL " _
         & "Np_Cp Np_DENSITY Np_En Np_MASS Np_MELT Np_WEIGHT Np_Z NpMASS O"
   desc_string = desc_string _
         & "16_MASS O16_WEIGHT O16MASS O17_MASS O17_WEIGHT O17MASS O18_MAS" _
         & "S O18_WEIGHT O18MASS O2_DENSITY O2_HC O2_HF O2_JPKG O2_JPL O2_" _
         & "MASS O2MASS O_BOIL O_Cp O_DENSITY O_En O_MASS O_MELT O_WEIGHT " _
         & "O_Z Og_BOIL Og_Cp Og_DENSITY Og_En Og_MASS Og_MELT Og_WEIGHT O" _
         & "g_Z OGANESSON OGANESSON_Z OgMASS OMASS Os_BOIL Os_Cp Os_DENSIT" _
         & "Y Os_En Os_MASS Os_MELT Os_WEIGHT Os_Z OsMASS OSMIUM OSMIUM_Z " _
         & "OXYGEN OXYGEN_Z P_BOIL P_Cp P_DENSITY P_En P_MASS P_MELT P_WEI" _
         & "GHT P_Z Pa_BOIL Pa_Cp Pa_DENSITY Pa_En Pa_MASS Pa_MELT Pa_WEIG" _
         & "HT Pa_Z PALLADIUM PALLADIUM_Z PaMASS PARAFFIN_DENSITY PARAFFIN" _
         & "_JPKG PARAFFIN_JPL PARAFFIN_MASS PARAFFINMASS Pb_BOIL Pb_Cp Pb" _
         & "_DENSITY Pb_En Pb_MASS Pb_MELT Pb_WEIGHT Pb_Z PbMASS Pd_BOIL P" _
         & "d_Cp Pd_DENSITY Pd_En Pd_MASS Pd_MELT Pd_WEIGHT Pd_Z PdMASS PE"
   desc_string = desc_string _
         & "NTANE_DENSITY PENTANE_HC PENTANE_HCC PENTANE_HF PENTANE_JPKG P" _
         & "ENTANE_JPL PENTANE_MASS PENTANEMASS PHOSPHORUS PHOSPHORUS_Z PL" _
         & "ATINUM PLATINUM_Z PLUTONIUM PLUTONIUM_Z Pm_BOIL Pm_Cp Pm_DENSI" _
         & "TY Pm_En Pm_MASS Pm_MELT Pm_WEIGHT Pm_Z PMASS PmMASS Po_BOIL P" _
         & "o_Cp Po_DENSITY Po_En Po_MASS Po_MELT Po_WEIGHT Po_Z POLONIUM " _
         & "POLONIUM_Z PoMASS POTASSIUM POTASSIUM_Z Pr_BOIL Pr_Cp Pr_DENSI" _
         & "TY Pr_En Pr_MASS Pr_MELT Pr_WEIGHT Pr_Z PRASEODYMIUM PRASEODYM" _
         & "IUM_Z PrMASS PROMETHIUM PROMETHIUM_Z PROPANE_DENSITY PROPANE_H" _
         & "C PROPANE_HCC PROPANE_HF PROPANE_JPKG PROPANE_JPL PROPANE_MASS" _
         & " PROPANEMASS PROTACTINIUM PROTACTINIUM_Z PROTON_ENERGY PROTON_" _
         & "Hz PROTON_MASS PROTON_WAVELENGTH PROTONMASS PROTONMASS_ERR Pt_" _
         & "BOIL Pt_Cp Pt_DENSITY Pt_En Pt_MASS Pt_MELT Pt_WEIGHT Pt_Z PtM"
   desc_string = desc_string _
         & "ASS Pu_BOIL Pu_Cp Pu_DENSITY Pu_En Pu_MASS Pu_MELT Pu_WEIGHT P" _
         & "u_Z PuMASS Ra_BOIL Ra_Cp Ra_DENSITY Ra_En Ra_MASS Ra_MELT Ra_W" _
         & "EIGHT Ra_Z RADIUM RADIUM_Z RADON RADON_Z RaMASS Rb_BOIL Rb_Cp " _
         & "Rb_DENSITY Rb_En Rb_MASS Rb_MELT Rb_WEIGHT Rb_Z RbMASS Re_BOIL" _
         & " Re_Cp Re_DENSITY Re_En Re_MASS Re_MELT Re_WEIGHT Re_Z ReMASS " _
         & "Rf_BOIL Rf_Cp Rf_DENSITY Rf_En Rf_MASS Rf_MELT Rf_WEIGHT Rf_Z " _
         & "RfMASS Rg_BOIL Rg_Cp Rg_DENSITY Rg_En Rg_MASS Rg_MELT Rg_WEIGH" _
         & "T Rg_Z RgMASS Rh_BOIL Rh_Cp Rh_DENSITY Rh_En Rh_MASS Rh_MELT R" _
         & "h_WEIGHT Rh_Z RHENIUM RHENIUM_Z RhMASS RHODIUM RHODIUM_Z Rn_BO" _
         & "IL Rn_Cp Rn_DENSITY Rn_En Rn_MASS Rn_MELT Rn_WEIGHT Rn_Z RnMAS" _
         & "S ROENTGENIUM ROENTGENIUM_Z Ru_BOIL Ru_Cp Ru_DENSITY Ru_En Ru_" _
         & "MASS Ru_MELT Ru_WEIGHT Ru_Z RUBIDIUM RUBIDIUM_Z RuMASS RUTHENI"
   desc_string = desc_string _
         & "UM RUTHENIUM_Z RUTHERFORDIUM RUTHERFORDIUM_Z S_BOIL S_Cp S_DEN" _
         & "SITY S_En S_MASS S_MELT S_WEIGHT S_Z SAMARIUM SAMARIUM_Z Sb_BO" _
         & "IL Sb_Cp Sb_DENSITY Sb_En Sb_MASS Sb_MELT Sb_WEIGHT Sb_Z SbMAS" _
         & "S Sc_BOIL Sc_Cp Sc_DENSITY Sc_En Sc_MASS Sc_MELT Sc_WEIGHT Sc_" _
         & "Z SCANDIUM SCANDIUM_Z ScMASS Se_BOIL Se_Cp Se_DENSITY Se_En Se" _
         & "_MASS Se_MELT Se_WEIGHT Se_Z SEABORGIUM SEABORGIUM_Z SELENIUM " _
         & "SELENIUM_Z SeMASS Sg_BOIL Sg_Cp Sg_DENSITY Sg_En Sg_MASS Sg_ME" _
         & "LT Sg_WEIGHT Sg_Z SgMASS Si_BOIL Si_Cp Si_DENSITY Si_En Si_MAS" _
         & "S Si_MELT Si_WEIGHT Si_Z SILICON SILICON_Z SILVER SILVER_Z SiM" _
         & "ASS Sm_BOIL Sm_Cp Sm_DENSITY Sm_En Sm_MASS Sm_MELT Sm_WEIGHT S" _
         & "m_Z SMASS SmMASS Sn_BOIL Sn_Cp Sn_DENSITY Sn_En Sn_MASS Sn_MEL" _
         & "T Sn_WEIGHT Sn_Z SnMASS SODIUM SODIUM_Z Sr_BOIL Sr_Cp Sr_DENSI"
   desc_string = desc_string _
         & "TY Sr_En Sr_MASS Sr_MELT Sr_WEIGHT Sr_Z SrMASS STEAM_Cp STEAM_" _
         & "DENSITY STEAM_HC STEAM_HF STEAM_JPKG STEAM_JPL STEAM_MASS STEA" _
         & "MMASS STRANGEQUARK_CHARGE STRANGEQUARK_ENERGY STRANGEQUARK_Hz " _
         & "STRANGEQUARK_MASS STRANGEQUARK_WAVELENGTH STRANGEQUARKMASS STR" _
         & "ANGEQUARKMASS_ERR STRONTIUM STRONTIUM_Z SUCROSE_DENSITY SUCROS" _
         & "E_HC SUCROSE_HCC SUCROSE_HF SUCROSE_JPKG SUCROSE_JPL SUCROSE_M" _
         & "ASS SUCROSEMASS SUGAR_DENSITY SUGAR_HC SUGAR_HCC SUGAR_HF SUGA" _
         & "R_JPKG SUGAR_JPL SUGAR_MASS SUGARMASS SULFUR SULFUR_Z T_MASS T" _
         & "_WEIGHT T_Z Ta_BOIL Ta_Cp Ta_DENSITY Ta_En Ta_MASS Ta_MELT Ta_" _
         & "WEIGHT Ta_Z TaMASS TANTALUM TANTALUM_Z TAU_ENERGY TAU_Hz TAU_M" _
         & "ASS TAU_WAVELENGTH TAUMASS TAUMASS_ERR Tb_BOIL Tb_Cp Tb_DENSIT" _
         & "Y Tb_En Tb_MASS Tb_MELT Tb_WEIGHT Tb_Z TbMASS Tc_BOIL Tc_Cp Tc"
   desc_string = desc_string _
         & "_DENSITY Tc_En Tc_MASS Tc_MELT Tc_WEIGHT Tc_Z TcMASS Te_BOIL T" _
         & "e_Cp Te_DENSITY Te_En Te_MASS Te_MELT Te_WEIGHT Te_Z TECHNETIU" _
         & "M TECHNETIUM_Z TELLURIUM TELLURIUM_Z TeMASS TENNESSINE TENNESS" _
         & "INE_Z TERBIUM TERBIUM_Z Th_BOIL Th_Cp Th_DENSITY Th_En Th_MASS" _
         & " Th_MELT Th_WEIGHT Th_Z THALLIUM THALLIUM_Z ThMASS THORIUM THO" _
         & "RIUM_Z THULIUM THULIUM_Z Ti_BOIL Ti_Cp Ti_DENSITY Ti_En Ti_MAS" _
         & "S Ti_MELT Ti_WEIGHT Ti_Z TiMASS TIN TIN_Z TITANIUM TITANIUM_Z " _
         & "Tl_BOIL Tl_Cp Tl_DENSITY Tl_En Tl_MASS Tl_MELT Tl_WEIGHT Tl_Z " _
         & "TlMASS Tm_BOIL Tm_Cp Tm_DENSITY Tm_En Tm_MASS Tm_MELT Tm_WEIGH" _
         & "T Tm_Z TMASS TmMASS TNTJPKG TOPQUARK_CHARGE TOPQUARK_ENERGY TO" _
         & "PQUARK_Hz TOPQUARK_MASS TOPQUARK_WAVELENGTH TOPQUARKMASS TOPQU" _
         & "ARKMASS_ERR TRITIUM TRITIUM_Z TRITON_MASS TRITON_WEIGHT TRITON"
   desc_string = desc_string _
         & "ENERGY TRITONMASS TRITONMASS_ERR Ts_BOIL Ts_Cp Ts_DENSITY Ts_E" _
         & "n Ts_MASS Ts_MELT Ts_WEIGHT Ts_Z TsMASS TUNGSTEN TUNGSTEN_Z U_" _
         & "BOIL U_Cp U_DENSITY U_En U_MASS U_MELT U_WEIGHT U_Z UMASS UPQU" _
         & "ARK_CHARGE UPQUARK_ENERGY UPQUARK_Hz UPQUARK_MASS UPQUARK_WAVE" _
         & "LENGTH UPQUARKMASS UPQUARKMASS_ERR URANIUM URANIUM_Z V_BOIL V_" _
         & "Cp V_DENSITY V_En V_MASS V_MELT V_WEIGHT V_Z VANADIUM VANADIUM" _
         & "_Z VMASS VSMOW_H1_RATIO VSMOW_H2_RATIO VSMOW_H3_RATIO VSMOW_H_" _
         & "MASS VSMOW_MASS VSMOW_O16_RATIO VSMOW_O17_RATIO VSMOW_O18_RATI" _
         & "O VSMOW_O_MASS W_BOIL W_Cp W_DENSITY W_En W_MASS W_MELT W_WEIG" _
         & "HT W_Z WATER_Cp WATER_CRITICAL WATER_DENSITY WATER_FUSION_JPKG" _
         & " WATER_FUSION_JPMOLE WATER_HC WATER_HF WATER_JPKG WATER_JPL WA" _
         & "TER_MASS WATER_VAPORIZATION_JPKG WATER_VAPORIZATION_JPMOLE WAT" _
         & "ERMASS WBOSON_ENERGY WBOSON_Hz WBOSON_MASS WBOSON_WAVELENGTH W" _
         & "BOSONMASS WBOSONMASS_ERR WMASS Xe_BOIL Xe_Cp Xe_DENSITY Xe_En " _
         & "Xe_MASS Xe_MELT Xe_WEIGHT Xe_Z XeMASS XENON XENON_Z Y_BOIL Y_C" _
         & "p Y_DENSITY Y_En Y_MASS Y_MELT Y_WEIGHT Y_Z Yb_BOIL Yb_Cp Yb_D" _
         & "ENSITY Yb_En Yb_MASS Yb_MELT Yb_WEIGHT Yb_Z YbMASS YMASS YTTER" _
         & "BIUM YTTERBIUM_Z YTTRIUM YTTRIUM_Z ZBOSON_ENERGY ZBOSON_Hz ZBO" _
         & "SON_MASS ZBOSON_WAVELENGTH ZBOSONMASS ZBOSONMASS_ERR ZINC ZINC" _
         & "_Z ZIRCONIUM ZIRCONIUM_Z Zn_BOIL Zn_Cp Zn_DENSITY Zn_En Zn_MAS" _
         & "S Zn_MELT Zn_WEIGHT Zn_Z ZnMASS Zr_BOIL Zr_Cp Zr_DENSITY Zr_En" _
         & " Zr_MASS Zr_MELT Zr_WEIGHT Zr_Z ZrMASS" & vbNL
   desc_string = desc_string _
         & "   Kwelements 1-ary Functions: waterboiling waterdensity water" _
         & "density_airfree waterdensity_airfree__1 watervapor_pressure wa" _
         & "tervaporization"
   kwelements_description = desc_string
End Function
Public Function kwelements_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwelements Constants: Ac_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEI" _
         & "GHT|Z) AcMASS ACTINIUM(_Z)? Ag_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|" _
         & "WEIGHT|Z) AgMASS AIR(_MASS|MASS) Al_(BOIL|Cp|DENSITY|En|M(ASS|" _
         & "ELT)|WEIGHT|Z) AlMASS ALPHA(_(MASS|WEIGHT)|ENERGY|MASS(_ERR)?)" _
         & " ALUMINIUM(_Z)? Am_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) AM" _
         & "ERICIUM(_Z)? AmMASS ANTIMONY(_Z)? Ar_(BOIL|Cp|DENSITY|En|M(ASS" _
         & "|ELT)|WEIGHT|Z) ARGON(_Z)? ArMASS ARSENIC(_Z)? As_(BOIL|Cp|DEN" _
         & "SITY|En|M(ASS|ELT)|WEIGHT|Z) AsMASS ASTATINE(_Z)? At_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) AtMASS Au_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)|WEIGHT|Z) AuMASS B_BOIL B_Cp B_DENSITY B_En B_M(ASS" _
         & "|ELT) B_WEIGHT B_Z Ba_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z)"
   desc_string = desc_string _
         & " BaMASS BARIUM(_Z)? Be_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z" _
         & ") BeMASS BER(KELIUM(_Z)?|YLLIUM(_Z)?) Bh_(BOIL|Cp|DENSITY|En|M" _
         & "(ASS|ELT)|WEIGHT|Z) BhMASS Bi_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|W" _
         & "EIGHT|Z) BiMASS BISMUTH(_Z)? Bk_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" _
         & "|WEIGHT|Z) BkMASS BMASS BOHR(IUM(_Z)?|RADIUS(_ERR)?) BORON(_Z)" _
         & "? BOTTOMQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?)" _
         & " Br_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) BrMASS BROMINE(_Z" _
         & ")? BUTANE(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS) C12(_(MASS|R" _
         & "ATIO|WEIGHT)|MASS) C13(_(MASS|RATIO|WEIGHT)|MASS) C14(_(MASS|R" _
         & "ATIO|WEIGHT)|MASS) C_BOIL C_Cp C_DENSITY C_En C_M(ASS|E(AN_MAS" _
         & "S|LT)) C_WEIGHT C_Z Ca_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z" _
         & ") CADMIUM(_Z)? CAESIUM(_Z)? CAL(CIUM(_Z)?|IFORNIUM(_Z)?) CaMAS"
   desc_string = desc_string _
         & "S CARBON(|_Z|DIOXIDE(_(DENSITY|H[CF]|JP(KG|L)|MASS)|MASS)) Cd_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CdMASS Ce_(BOIL|Cp|DE" _
         & "NSITY|En|M(ASS|ELT)|WEIGHT|Z) CeMASS CERIUM(_Z)? Cf_(BOIL|Cp|D" _
         & "ENSITY|En|M(ASS|ELT)|WEIGHT|Z) CfMASS CHARMQUARK(_(CHARGE|ENER" _
         & "GY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) CHLORINE(_Z)? CHROMIUM(_Z)" _
         & "? Cl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) ClMASS Cm_(BOIL|" _
         & "Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CMASS CmMASS Cn_(BOIL|Cp|DE" _
         & "NSITY|En|M(ASS|ELT)|WEIGHT|Z) CnMASS CO2(_(DENSITY|H[CF]|JP(KG" _
         & "|L)|MASS)|MASS) Co_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CO" _
         & "AL(_(DENSITY|JP(KG|L)|MASS)|MASS) COBALT(_Z)? CoMASS COP(ERNIC" _
         & "IUM(_Z)?|PER(_Z)?) Cr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z)" _
         & " CrMASS Cs_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CsMASS Cu_"
   desc_string = desc_string _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) CuMASS CURIUM(_Z)? D_" _
         & "MASS D_WEIGHT D_Z DARMSTADTIUM(_Z)? Db_(BOIL|Cp|DENSITY|En|M(A" _
         & "SS|ELT)|WEIGHT|Z) DbMASS DEUTER(IUM(_Z)?|ON(_(MASS|WEIGHT)|ENE" _
         & "RGY|MASS(_ERR)?)) DIESEL(_(DENSITY|JP(KG|L)|MASS)|MASS) DMASS " _
         & "DOWNQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Ds_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) DsMASS DUBNIUM(_Z)? D" _
         & "y_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) DyMASS DYSPROSIUM(_" _
         & "Z)? EINSTEINIUM(_Z)? ELECTRON(_(ENERGY|Hz|MASS|WAVELENGTH)|MAS" _
         & "S(_ERR)?) Er_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) ERBIUM(_" _
         & "Z)? ErMASS Es_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) EsMASS " _
         & "ETHAN(E(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS)|OL(_(DENSITY|G" _
         & "(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS)|H(CC?|F)|JP(KG|L)|MAS"
   desc_string = desc_string _
         & "S)|MASS)) Eu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) EuMASS E" _
         & "UROPIUM(_Z)? F_BOIL F_Cp F_DENSITY F_En F_M(ASS|ELT) F_WEIGHT " _
         & "F_Z FAT(_(DENSITY|JP(KG|L)|MASS)|MASS) Fe_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)|WEIGHT|Z) FeMASS FERMIUM(_Z)? Fl_(BOIL|Cp|DENSITY|E" _
         & "n|M(ASS|ELT)|WEIGHT|Z) FLEROVIUM(_Z)? FlMASS FLUORINE(_Z)? Fm_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) FMASS FmMASS Fr_(BOIL" _
         & "|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) FRANCIUM(_Z)? FrMASS Ga_(B" _
         & "OIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) GADOLINIUM(_Z)? GALLIUM" _
         & "(_Z)? GaMASS GASOLINE(_(DENSITY|JP(KG|L)|MASS)|MASS) Gd_(BOIL|" _
         & "Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) GdMASS Ge_(BOIL|Cp|DENSITY|" _
         & "En|M(ASS|ELT)|WEIGHT|Z) GeMASS GERMANIUM(_Z)? GOLD(_Z)? H1_(MA" _
         & "SS|WEIGHT) H1MASS H2_(MASS|WEIGHT) H2MASS H2O(_(DENSITY|H[CF]|"
   desc_string = desc_string _
         & "JP(KG|L)|MASS)|MASS) H3_(MASS|WEIGHT) H3MASS H_BOIL H_Cp H_DEN" _
         & "SITY H_En H_M(ASS|ELT) H_WEIGHT H_Z HAFNIUM(_Z)? HASSIUM(_Z)? " _
         & "He3(_(MASS|WEIGHT)|MASS) He4(_(MASS|WEIGHT)|MASS) He_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HELI(ON(_(MASS|WEIGHT)|ENERGY|" _
         & "MASS(_ERR)?)|UM(_Z)?) HeMASS HEXANE(_(DENSITY|H(CC?|F)|JP(KG|L" _
         & ")|MASS)|MASS) Hf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HfMA" _
         & "SS Hg_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HgMASS HIGGSBOS" _
         & "ON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) HMASS Ho_(BOIL|Cp" _
         & "|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HOLMIUM(_Z)? HoMASS Hs_(BOIL|" _
         & "Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) HsMASS HYDROGEN(|_(DENSITY|" _
         & "H(CC?|F)|JP(KG|L)|MASS|RADIUS(_ERR)?|Z)|MASS) I_BOIL I_Cp I_DE" _
         & "NSITY I_En I_M(ASS|ELT) I_WEIGHT I_Z ICE_Cp IMASS In_(BOIL|Cp|"
   desc_string = desc_string _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) INDIUM(_Z)? InMASS IODINE(_Z)?" _
         & " Ir_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) IRIDIUM(_Z)? IrMA" _
         & "SS IRON(_Z)? K_BOIL K_Cp K_DENSITY K_En K_M(ASS|ELT) K_WEIGHT " _
         & "K_Z KEROSENE(_(DENSITY|JP(KG|L)|MASS)|MASS) KMASS Kr_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) KrMASS KRYPTON(_Z)? La_(BOIL|C" _
         & "p|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) LaMASS LANTHANUM(_Z)? LAWREN" _
         & "CIUM(_Z)? LEAD(_Z)? Li_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z" _
         & ") LiMASS LITHIUM(_Z)? LIVERMORIUM(_Z)? Lr_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)|WEIGHT|Z) LrMASS Lu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|" _
         & "WEIGHT|Z) LuMASS LUTETIUM(_Z)? Lv_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)|WEIGHT|Z) LvMASS MAGNESIUM(_Z)? MANGANESE(_Z)? Mc_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) McMASS Md_(BOIL|Cp|DENSITY|En|"
   desc_string = desc_string _
         & "M(ASS|ELT)|WEIGHT|Z) MdMASS MEITNERIUM(_Z)? MENDELEVIUM(_Z)? M" _
         & "ERCURY(_Z)? METHANE(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS) Mg" _
         & "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) MgMASS Mn_(BOIL|Cp|D" _
         & "ENSITY|En|M(ASS|ELT)|WEIGHT|Z) MnMASS Mo_(BOIL|Cp|DENSITY|En|M" _
         & "(ASS|ELT)|WEIGHT|Z) MOLYBDENUM(_Z)? MoMASS MOSCOVIUM(_Z)? Mt_(" _
         & "BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) MtMASS MUON(_(ENERGY|H" _
         & "z|MASS|WAVELENGTH)|MASS(_ERR)?) N_BOIL N_Cp N_DENSITY N_En N_M" _
         & "(ASS|ELT) N_WEIGHT N_Z Na_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGH" _
         & "T|Z) NaMASS Nb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NbMASS" _
         & " Nd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NdMASS Ne_(BOIL|C" _
         & "p|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NeMASS NEO(DYMIUM(_Z)?|N(_Z)" _
         & "?) NEPTUNIUM(_Z)? NEUTRON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_E"
   desc_string = desc_string _
         & "RR)?) Nh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NhMASS Ni_(B" _
         & "OIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) NICKEL(_Z)? NIHONIUM(_Z" _
         & ")? NiMASS NIOBIUM(_Z)? NITROGEN(_Z)? NMASS No_(BOIL|Cp|DENSITY" _
         & "|En|M(ASS|ELT)|WEIGHT|Z) NOBELIUM(_Z)? NoMASS Np_(BOIL|Cp|DENS" _
         & "ITY|En|M(ASS|ELT)|WEIGHT|Z) NpMASS O16(_(MASS|WEIGHT)|MASS) O1" _
         & "7(_(MASS|WEIGHT)|MASS) O18(_(MASS|WEIGHT)|MASS) O2_(DENSITY|H[" _
         & "CF]|JP(KG|L)|MASS) O2MASS O_BOIL O_Cp O_DENSITY O_En O_M(ASS|E" _
         & "LT) O_WEIGHT O_Z Og_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) O" _
         & "GANESSON(_Z)? OgMASS OMASS Os_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|W" _
         & "EIGHT|Z) OsMASS OSMIUM(_Z)? OXYGEN(_Z)? P_BOIL P_Cp P_DENSITY " _
         & "P_En P_M(ASS|ELT) P_WEIGHT P_Z Pa_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)|WEIGHT|Z) PALLADIUM(_Z)? PaMASS PARAFFIN(_(DENSITY|JP(KG|L)"
   desc_string = desc_string _
         & "|MASS)|MASS) Pb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PbMAS" _
         & "S Pd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) PdMASS PENTANE(_" _
         & "(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS) PHOSPHORUS(_Z)? PLATINU" _
         & "M(_Z)? PLUTONIUM(_Z)? Pm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT" _
         & "|Z) PMASS PmMASS Po_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) P" _
         & "OLONIUM(_Z)? PoMASS POTASSIUM(_Z)? Pr_(BOIL|Cp|DENSITY|En|M(AS" _
         & "S|ELT)|WEIGHT|Z) PRASEODYMIUM(_Z)? PrMASS PRO(METHIUM(_Z)?|PAN" _
         & "E(_(DENSITY|H(CC?|F)|JP(KG|L)|MASS)|MASS)|T(ACTINIUM(_Z)?|ON(_" _
         & "(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?))) Pt_(BOIL|Cp|DENSITY" _
         & "|En|M(ASS|ELT)|WEIGHT|Z) PtMASS Pu_(BOIL|Cp|DENSITY|En|M(ASS|E" _
         & "LT)|WEIGHT|Z) PuMASS Ra_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|" _
         & "Z) RAD(IUM(_Z)?|ON(_Z)?) RaMASS Rb_(BOIL|Cp|DENSITY|En|M(ASS|E"
   desc_string = desc_string _
         & "LT)|WEIGHT|Z) RbMASS Re_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|" _
         & "Z) ReMASS Rf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RfMASS R" _
         & "g_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RgMASS Rh_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RHENIUM(_Z)? RhMASS RHODIUM(_Z" _
         & ")? Rn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RnMASS ROENTGEN" _
         & "IUM(_Z)? Ru_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) RUBIDIUM(" _
         & "_Z)? RuMASS RUTHE(NIUM(_Z)?|RFORDIUM(_Z)?) S_BOIL S_Cp S_DENSI" _
         & "TY S_En S_M(ASS|ELT) S_WEIGHT S_Z SAMARIUM(_Z)? Sb_(BOIL|Cp|DE" _
         & "NSITY|En|M(ASS|ELT)|WEIGHT|Z) SbMASS Sc_(BOIL|Cp|DENSITY|En|M(" _
         & "ASS|ELT)|WEIGHT|Z) SCANDIUM(_Z)? ScMASS Se_(BOIL|Cp|DENSITY|En" _
         & "|M(ASS|ELT)|WEIGHT|Z) SEABORGIUM(_Z)? SELENIUM(_Z)? SeMASS Sg_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SgMASS Si_(BOIL|Cp|DE"
   desc_string = desc_string _
         & "NSITY|En|M(ASS|ELT)|WEIGHT|Z) SIL(ICON(_Z)?|VER(_Z)?) SiMASS S" _
         & "m_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SMASS SmMASS Sn_(BO" _
         & "IL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SnMASS SODIUM(_Z)? Sr_(B" _
         & "OIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) SrMASS STEAM(_(Cp|DENSI" _
         & "TY|H[CF]|JP(KG|L)|MASS)|MASS) STR(ANGEQUARK(_(CHARGE|ENERGY|Hz" _
         & "|MASS|WAVELENGTH)|MASS(_ERR)?)|ONTIUM(_Z)?) SUCROSE(_(DENSITY|" _
         & "H(CC?|F)|JP(KG|L)|MASS)|MASS) SUGAR(_(DENSITY|H(CC?|F)|JP(KG|L" _
         & ")|MASS)|MASS) SULFUR(_Z)? T_MASS T_WEIGHT T_Z Ta_(BOIL|Cp|DENS" _
         & "ITY|En|M(ASS|ELT)|WEIGHT|Z) TaMASS TANTALUM(_Z)? TAU(_(ENERGY|" _
         & "Hz|MASS|WAVELENGTH)|MASS(_ERR)?) Tb_(BOIL|Cp|DENSITY|En|M(ASS|" _
         & "ELT)|WEIGHT|Z) TbMASS Tc_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT" _
         & "|Z) TcMASS Te_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) TECHNET"
   desc_string = desc_string _
         & "IUM(_Z)? TELLURIUM(_Z)? TeMASS TENNESSINE(_Z)? TERBIUM(_Z)? Th" _
         & "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) THALLIUM(_Z)? ThMASS" _
         & " THORIUM(_Z)? THULIUM(_Z)? Ti_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|W" _
         & "EIGHT|Z) TiMASS TIN(_Z)? TITANIUM(_Z)? Tl_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)|WEIGHT|Z) TlMASS Tm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|" _
         & "WEIGHT|Z) TMASS TmMASS TNTJPKG TOPQUARK(_(CHARGE|ENERGY|Hz|MAS" _
         & "S|WAVELENGTH)|MASS(_ERR)?) TRIT(IUM(_Z)?|ON(_(MASS|WEIGHT)|ENE" _
         & "RGY|MASS(_ERR)?)) Ts_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) " _
         & "TsMASS TUNGSTEN(_Z)? U_BOIL U_Cp U_DENSITY U_En U_M(ASS|ELT) U" _
         & "_WEIGHT U_Z UMASS UPQUARK(_(CHARGE|ENERGY|Hz|MASS|WAVELENGTH)|" _
         & "MASS(_ERR)?) URANIUM(_Z)? V_BOIL V_Cp V_DENSITY V_En V_M(ASS|E" _
         & "LT) V_WEIGHT V_Z VANADIUM(_Z)? VMASS VSMOW_(H(1_RATIO|2_RATIO|" _
         & "3_RATIO|_MASS)|MASS|O(1[678]_RATIO|_MASS)) W_BOIL W_Cp W_DENSI" _
         & "TY W_En W_M(ASS|ELT) W_WEIGHT W_Z WATER(_(C(p|RITICAL)|DENSITY" _
         & "|FUSION_JP(KG|MOLE)|H[CF]|JP(KG|L)|MASS|VAPORIZATION_JP(KG|MOL" _
         & "E))|MASS) WBOSON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)?) WMA" _
         & "SS Xe_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) XeMASS XENON(_Z" _
         & ")? Y_BOIL Y_Cp Y_DENSITY Y_En Y_M(ASS|ELT) Y_WEIGHT Y_Z Yb_(BO" _
         & "IL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) YbMASS YMASS YTT(ERBIUM(" _
         & "_Z)?|RIUM(_Z)?) ZBOSON(_(ENERGY|Hz|MASS|WAVELENGTH)|MASS(_ERR)" _
         & "?) ZINC(_Z)? ZIRCONIUM(_Z)? Zn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|" _
         & "WEIGHT|Z) ZnMASS Zr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)|WEIGHT|Z) Z" _
         & "rMASS" & vbNL
   desc_string = desc_string _
         & "   Kwelements 1-ary Functions: water(boiling|density(_airfree(" _
         & "__1)?)?|vapor(_pressure|ization))"
   kwelements_desc = desc_string
End Function
