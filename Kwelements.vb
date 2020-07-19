'    Copyright (C) 2020 by Kevin D. Woerner
''-' =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
''-' =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
''-' =KDW= ##### SRC $KWROOT/codekdw/kw-lib/Kwelements.fwipp ####
' 2020-07-18 kdw  For Changelog, See File Kwelements.varylog
Option Explicit On
Imports System.IO.Filestream
Public Class KWELEMENTS
   Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables ------------------- LANG_VBDOTNET #
Public Const HZ As Double = 1
Public Const H_MASS As Double = 1.008 * Kw.MOLARMASS
Public Const HMASS As Double = H_MASS / Kw.AVOGADRO
Public Const H_DENSITY As Double = 0.08988 * Kw.DENSITY
Public Const H_MELT As Double = 14.01 * Kw.KELVIN
Public Const H_BOIL As Double = 20.28 * Kw.KELVIN
Public Const H_Cp As Double = 14304 * Kw.SPECIFICHEAT
Public Const H_En As Double = 2.20
Public Const HeZ As Double = 2
Public Const He_MASS As Double = 4.002602 * Kw.MOLARMASS
Public Const HeMASS As Double = He_MASS / Kw.AVOGADRO
Public Const He_DENSITY As Double = 0.1785 * Kw.DENSITY
Public Const He_MELT As Double = -1 * Kw.KELVIN
Public Const He_BOIL As Double = 4.22 * Kw.KELVIN
Public Const He_Cp As Double = 5193 * Kw.SPECIFICHEAT
Public Const He_En As Double = -1
Public Const LiZ As Double = 3
Public Const Li_MASS As Double = 6.94 * Kw.MOLARMASS
Public Const LiMASS As Double = Li_MASS / Kw.AVOGADRO
Public Const Li_DENSITY As Double = 534 * Kw.DENSITY
Public Const Li_MELT As Double = 453.69 * Kw.KELVIN
Public Const Li_BOIL As Double = 1560 * Kw.KELVIN
Public Const Li_Cp As Double = 3582 * Kw.SPECIFICHEAT
Public Const Li_En As Double = 0.98
Public Const BeZ As Double = 4
Public Const Be_MASS As Double = 9.0121831 * Kw.MOLARMASS
Public Const BeMASS As Double = Be_MASS / Kw.AVOGADRO
Public Const Be_DENSITY As Double = 1850 * Kw.DENSITY
Public Const Be_MELT As Double = 1560 * Kw.KELVIN
Public Const Be_BOIL As Double = 2742 * Kw.KELVIN
Public Const Be_Cp As Double = 1825 * Kw.SPECIFICHEAT
Public Const Be_En As Double = 1.57
Public Const BZ As Double = 5
Public Const B_MASS As Double = 10.81 * Kw.MOLARMASS
Public Const BMASS As Double = B_MASS / Kw.AVOGADRO
Public Const B_DENSITY As Double = 2340 * Kw.DENSITY
Public Const B_MELT As Double = 2349 * Kw.KELVIN
Public Const B_BOIL As Double = 4200 * Kw.KELVIN
Public Const B_Cp As Double = 1026 * Kw.SPECIFICHEAT
Public Const B_En As Double = 2.04
Public Const CZ As Double = 6
Public Const C_MASS As Double = 12.011 * Kw.MOLARMASS
Public Const CMASS As Double = C_MASS / Kw.AVOGADRO
Public Const C_DENSITY As Double = 2267 * Kw.DENSITY
Public Const C_MELT As Double = 3800 * Kw.KELVIN
Public Const C_BOIL As Double = 4300 * Kw.KELVIN
Public Const C_Cp As Double = 709 * Kw.SPECIFICHEAT
Public Const C_En As Double = 2.55
Public Const NZ As Double = 7
Public Const N_MASS As Double = 14.007 * Kw.MOLARMASS
Public Const NMASS As Double = N_MASS / Kw.AVOGADRO
Public Const N_DENSITY As Double = 1.2506 * Kw.DENSITY
Public Const N_MELT As Double = 63.15 * Kw.KELVIN
Public Const N_BOIL As Double = 77.36 * Kw.KELVIN
Public Const N_Cp As Double = 1040 * Kw.SPECIFICHEAT
Public Const N_En As Double = 3.04
Public Const OZ As Double = 8
Public Const O_MASS As Double = 15.999 * Kw.MOLARMASS
Public Const OMASS As Double = O_MASS / Kw.AVOGADRO
Public Const O_DENSITY As Double = 1.429 * Kw.DENSITY
Public Const O_MELT As Double = 54.36 * Kw.KELVIN
Public Const O_BOIL As Double = 90.20 * Kw.KELVIN
Public Const O_Cp As Double = 918 * Kw.SPECIFICHEAT
Public Const O_En As Double = 3.44
Public Const FZ As Double = 9
Public Const F_MASS As Double = 18.998403163 * Kw.MOLARMASS
Public Const FMASS As Double = F_MASS / Kw.AVOGADRO
Public Const F_DENSITY As Double = 1.696 * Kw.DENSITY
Public Const F_MELT As Double = 53.53 * Kw.KELVIN
Public Const F_BOIL As Double = 85.03 * Kw.KELVIN
Public Const F_Cp As Double = 824 * Kw.SPECIFICHEAT
Public Const F_En As Double = 3.98
Public Const NeZ As Double = 10
Public Const Ne_MASS As Double = 20.1797 * Kw.MOLARMASS
Public Const NeMASS As Double = Ne_MASS / Kw.AVOGADRO
Public Const Ne_DENSITY As Double = 0.8999 * Kw.DENSITY
Public Const Ne_MELT As Double = 24.56 * Kw.KELVIN
Public Const Ne_BOIL As Double = 27.07 * Kw.KELVIN
Public Const Ne_Cp As Double = 1030 * Kw.SPECIFICHEAT
Public Const Ne_En As Double = -1
Public Const NaZ As Double = 11
Public Const Na_MASS As Double = 22.98976928 * Kw.MOLARMASS
Public Const NaMASS As Double = Na_MASS / Kw.AVOGADRO
Public Const Na_DENSITY As Double = 971 * Kw.DENSITY
Public Const Na_MELT As Double = 370.87 * Kw.KELVIN
Public Const Na_BOIL As Double = 1156 * Kw.KELVIN
Public Const Na_Cp As Double = 1228 * Kw.SPECIFICHEAT
Public Const Na_En As Double = 0.93
Public Const MgZ As Double = 12
Public Const Mg_MASS As Double = 24.305 * Kw.MOLARMASS
Public Const MgMASS As Double = Mg_MASS / Kw.AVOGADRO
Public Const Mg_DENSITY As Double = 1738 * Kw.DENSITY
Public Const Mg_MELT As Double = 923 * Kw.KELVIN
Public Const Mg_BOIL As Double = 1363 * Kw.KELVIN
Public Const Mg_Cp As Double = 1023 * Kw.SPECIFICHEAT
Public Const Mg_En As Double = 1.31
Public Const AlZ As Double = 13
Public Const Al_MASS As Double = 26.9815384 * Kw.MOLARMASS
Public Const AlMASS As Double = Al_MASS / Kw.AVOGADRO
Public Const Al_DENSITY As Double = 2698 * Kw.DENSITY
Public Const Al_MELT As Double = 933.47 * Kw.KELVIN
Public Const Al_BOIL As Double = 2792 * Kw.KELVIN
Public Const Al_Cp As Double = 897 * Kw.SPECIFICHEAT
Public Const Al_En As Double = 1.61
Public Const SiZ As Double = 14
Public Const Si_MASS As Double = 28.085 * Kw.MOLARMASS
Public Const SiMASS As Double = Si_MASS / Kw.AVOGADRO
Public Const Si_DENSITY As Double = 2329.6 * Kw.DENSITY
Public Const Si_MELT As Double = 1687 * Kw.KELVIN
Public Const Si_BOIL As Double = 3538 * Kw.KELVIN
Public Const Si_Cp As Double = 705 * Kw.SPECIFICHEAT
Public Const Si_En As Double = 1.9
Public Const PZ As Double = 15
Public Const P_MASS As Double = 30.973761998 * Kw.MOLARMASS
Public Const PMASS As Double = P_MASS / Kw.AVOGADRO
Public Const P_DENSITY As Double = 1820 * Kw.DENSITY
Public Const P_MELT As Double = 317.30 * Kw.KELVIN
Public Const P_BOIL As Double = 550 * Kw.KELVIN
Public Const P_Cp As Double = 769 * Kw.SPECIFICHEAT
Public Const P_En As Double = 2.19
Public Const SZ As Double = 16
Public Const S_MASS As Double = 32.06 * Kw.MOLARMASS
Public Const SMASS As Double = S_MASS / Kw.AVOGADRO
Public Const S_DENSITY As Double = 2067 * Kw.DENSITY
Public Const S_MELT As Double = 388.36 * Kw.KELVIN
Public Const S_BOIL As Double = 717.87 * Kw.KELVIN
Public Const S_Cp As Double = 710 * Kw.SPECIFICHEAT
Public Const S_En As Double = 2.58
Public Const ClZ As Double = 17
Public Const Cl_MASS As Double = 35.45 * Kw.MOLARMASS
Public Const ClMASS As Double = Cl_MASS / Kw.AVOGADRO
Public Const Cl_DENSITY As Double = 3.214 * Kw.DENSITY
Public Const Cl_MELT As Double = 171.6 * Kw.KELVIN
Public Const Cl_BOIL As Double = 239.11 * Kw.KELVIN
Public Const Cl_Cp As Double = 479 * Kw.SPECIFICHEAT
Public Const Cl_En As Double = 3.16
Public Const ArZ As Double = 18
Public Const Ar_MASS As Double = 39.948 * Kw.MOLARMASS
Public Const ArMASS As Double = Ar_MASS / Kw.AVOGADRO
Public Const Ar_DENSITY As Double = 1.7837 * Kw.DENSITY
Public Const Ar_MELT As Double = 83.80 * Kw.KELVIN
Public Const Ar_BOIL As Double = 87.30 * Kw.KELVIN
Public Const Ar_Cp As Double = 520 * Kw.SPECIFICHEAT
Public Const Ar_En As Double = -1
Public Const KZ As Double = 19
Public Const K_MASS As Double = 39.0983 * Kw.MOLARMASS
Public Const KMASS As Double = K_MASS / Kw.AVOGADRO
Public Const K_DENSITY As Double = 862 * Kw.DENSITY
Public Const K_MELT As Double = 336.53 * Kw.KELVIN
Public Const K_BOIL As Double = 1032 * Kw.KELVIN
Public Const K_Cp As Double = 757 * Kw.SPECIFICHEAT
Public Const K_En As Double = 0.82
Public Const CaZ As Double = 20
Public Const Ca_MASS As Double = 40.078 * Kw.MOLARMASS
Public Const CaMASS As Double = Ca_MASS / Kw.AVOGADRO
Public Const Ca_DENSITY As Double = 1540 * Kw.DENSITY
Public Const Ca_MELT As Double = 1115 * Kw.KELVIN
Public Const Ca_BOIL As Double = 1757 * Kw.KELVIN
Public Const Ca_Cp As Double = 647 * Kw.SPECIFICHEAT
Public Const Ca_En As Double = 1
Public Const ScZ As Double = 21
Public Const Sc_MASS As Double = 44.955908 * Kw.MOLARMASS
Public Const ScMASS As Double = Sc_MASS / Kw.AVOGADRO
Public Const Sc_DENSITY As Double = 2989 * Kw.DENSITY
Public Const Sc_MELT As Double = 1814 * Kw.KELVIN
Public Const Sc_BOIL As Double = 3109 * Kw.KELVIN
Public Const Sc_Cp As Double = 568 * Kw.SPECIFICHEAT
Public Const Sc_En As Double = 1.36
Public Const TiZ As Double = 22
Public Const Ti_MASS As Double = 47.867 * Kw.MOLARMASS
Public Const TiMASS As Double = Ti_MASS / Kw.AVOGADRO
Public Const Ti_DENSITY As Double = 4540 * Kw.DENSITY
Public Const Ti_MELT As Double = 1941 * Kw.KELVIN
Public Const Ti_BOIL As Double = 3560 * Kw.KELVIN
Public Const Ti_Cp As Double = 523 * Kw.SPECIFICHEAT
Public Const Ti_En As Double = 1.54
Public Const VZ As Double = 23
Public Const V_MASS As Double = 50.9415 * Kw.MOLARMASS
Public Const VMASS As Double = V_MASS / Kw.AVOGADRO
Public Const V_DENSITY As Double = 6110 * Kw.DENSITY
Public Const V_MELT As Double = 2183 * Kw.KELVIN
Public Const V_BOIL As Double = 3680 * Kw.KELVIN
Public Const V_Cp As Double = 489 * Kw.SPECIFICHEAT
Public Const V_En As Double = 1.63
Public Const CrZ As Double = 24
Public Const Cr_MASS As Double = 51.9961 * Kw.MOLARMASS
Public Const CrMASS As Double = Cr_MASS / Kw.AVOGADRO
Public Const Cr_DENSITY As Double = 7150 * Kw.DENSITY
Public Const Cr_MELT As Double = 2180 * Kw.KELVIN
Public Const Cr_BOIL As Double = 2944 * Kw.KELVIN
Public Const Cr_Cp As Double = 449 * Kw.SPECIFICHEAT
Public Const Cr_En As Double = 1.66
Public Const MnZ As Double = 25
Public Const Mn_MASS As Double = 54.938043 * Kw.MOLARMASS
Public Const MnMASS As Double = Mn_MASS / Kw.AVOGADRO
Public Const Mn_DENSITY As Double = 7440 * Kw.DENSITY
Public Const Mn_MELT As Double = 1519 * Kw.KELVIN
Public Const Mn_BOIL As Double = 2334 * Kw.KELVIN
Public Const Mn_Cp As Double = 479 * Kw.SPECIFICHEAT
Public Const Mn_En As Double = 1.55
Public Const FeZ As Double = 26
Public Const Fe_MASS As Double = 55.845 * Kw.MOLARMASS
Public Const FeMASS As Double = Fe_MASS / Kw.AVOGADRO
Public Const Fe_DENSITY As Double = 7874 * Kw.DENSITY
Public Const Fe_MELT As Double = 1811 * Kw.KELVIN
Public Const Fe_BOIL As Double = 3134 * Kw.KELVIN
Public Const Fe_Cp As Double = 449 * Kw.SPECIFICHEAT
Public Const Fe_En As Double = 1.83
Public Const CoZ As Double = 27
Public Const Co_MASS As Double = 58.933194 * Kw.MOLARMASS
Public Const CoMASS As Double = Co_MASS / Kw.AVOGADRO
Public Const Co_DENSITY As Double = 8860 * Kw.DENSITY
Public Const Co_MELT As Double = 1768 * Kw.KELVIN
Public Const Co_BOIL As Double = 3200 * Kw.KELVIN
Public Const Co_Cp As Double = 421 * Kw.SPECIFICHEAT
Public Const Co_En As Double = 1.88
Public Const NiZ As Double = 28
Public Const Ni_MASS As Double = 58.6934 * Kw.MOLARMASS
Public Const NiMASS As Double = Ni_MASS / Kw.AVOGADRO
Public Const Ni_DENSITY As Double = 8912 * Kw.DENSITY
Public Const Ni_MELT As Double = 1728 * Kw.KELVIN
Public Const Ni_BOIL As Double = 3186 * Kw.KELVIN
Public Const Ni_Cp As Double = 444 * Kw.SPECIFICHEAT
Public Const Ni_En As Double = 1.91
Public Const CuZ As Double = 29
Public Const Cu_MASS As Double = 63.546 * Kw.MOLARMASS
Public Const CuMASS As Double = Cu_MASS / Kw.AVOGADRO
Public Const Cu_DENSITY As Double = 8960 * Kw.DENSITY
Public Const Cu_MELT As Double = 1357.77 * Kw.KELVIN
Public Const Cu_BOIL As Double = 2835 * Kw.KELVIN
Public Const Cu_Cp As Double = 385 * Kw.SPECIFICHEAT
Public Const Cu_En As Double = 1.9
Public Const ZnZ As Double = 30
Public Const Zn_MASS As Double = 65.38 * Kw.MOLARMASS
Public Const ZnMASS As Double = Zn_MASS / Kw.AVOGADRO
Public Const Zn_DENSITY As Double = 7134 * Kw.DENSITY
Public Const Zn_MELT As Double = 692.88 * Kw.KELVIN
Public Const Zn_BOIL As Double = 1180 * Kw.KELVIN
Public Const Zn_Cp As Double = 388 * Kw.SPECIFICHEAT
Public Const Zn_En As Double = 1.65
Public Const GaZ As Double = 31
Public Const Ga_MASS As Double = 69.723 * Kw.MOLARMASS
Public Const GaMASS As Double = Ga_MASS / Kw.AVOGADRO
Public Const Ga_DENSITY As Double = 5907 * Kw.DENSITY
Public Const Ga_MELT As Double = 302.9146 * Kw.KELVIN
Public Const Ga_BOIL As Double = 2673 * Kw.KELVIN
Public Const Ga_Cp As Double = 371 * Kw.SPECIFICHEAT
Public Const Ga_En As Double = 1.81
Public Const GeZ As Double = 32
Public Const Ge_MASS As Double = 72.630 * Kw.MOLARMASS
Public Const GeMASS As Double = Ge_MASS / Kw.AVOGADRO
Public Const Ge_DENSITY As Double = 5323 * Kw.DENSITY
Public Const Ge_MELT As Double = 1211.40 * Kw.KELVIN
Public Const Ge_BOIL As Double = 3106 * Kw.KELVIN
Public Const Ge_Cp As Double = 320 * Kw.SPECIFICHEAT
Public Const Ge_En As Double = 2.01
Public Const AsZ As Double = 33
Public Const As_MASS As Double = 74.921595 * Kw.MOLARMASS
Public Const AsMASS As Double = As_MASS / Kw.AVOGADRO
Public Const As_DENSITY As Double = 5776 * Kw.DENSITY
Public Const As_MELT As Double = 1090 * Kw.KELVIN
Public Const As_BOIL As Double = 887 * Kw.KELVIN
Public Const As_Cp As Double = 329 * Kw.SPECIFICHEAT
Public Const As_En As Double = 2.18
Public Const SeZ As Double = 34
Public Const Se_MASS As Double = 78.971 * Kw.MOLARMASS
Public Const SeMASS As Double = Se_MASS / Kw.AVOGADRO
Public Const Se_DENSITY As Double = 4809 * Kw.DENSITY
Public Const Se_MELT As Double = 453 * Kw.KELVIN
Public Const Se_BOIL As Double = 958 * Kw.KELVIN
Public Const Se_Cp As Double = 321 * Kw.SPECIFICHEAT
Public Const Se_En As Double = 2.55
Public Const BrZ As Double = 35
Public Const Br_MASS As Double = 79.904 * Kw.MOLARMASS
Public Const BrMASS As Double = Br_MASS / Kw.AVOGADRO
Public Const Br_DENSITY As Double = 3122 * Kw.DENSITY
Public Const Br_MELT As Double = 265.8 * Kw.KELVIN
Public Const Br_BOIL As Double = 332.0 * Kw.KELVIN
Public Const Br_Cp As Double = 474 * Kw.SPECIFICHEAT
Public Const Br_En As Double = 2.96
Public Const KrZ As Double = 36
Public Const Kr_MASS As Double = 83.798 * Kw.MOLARMASS
Public Const KrMASS As Double = Kr_MASS / Kw.AVOGADRO
Public Const Kr_DENSITY As Double = 3.733 * Kw.DENSITY
Public Const Kr_MELT As Double = 115.79 * Kw.KELVIN
Public Const Kr_BOIL As Double = 119.93 * Kw.KELVIN
Public Const Kr_Cp As Double = 248 * Kw.SPECIFICHEAT
Public Const Kr_En As Double = 3
Public Const RbZ As Double = 37
Public Const Rb_MASS As Double = 85.4678 * Kw.MOLARMASS
Public Const RbMASS As Double = Rb_MASS / Kw.AVOGADRO
Public Const Rb_DENSITY As Double = 1532 * Kw.DENSITY
Public Const Rb_MELT As Double = 312.46 * Kw.KELVIN
Public Const Rb_BOIL As Double = 961 * Kw.KELVIN
Public Const Rb_Cp As Double = 363 * Kw.SPECIFICHEAT
Public Const Rb_En As Double = 0.82
Public Const SrZ As Double = 38
Public Const Sr_MASS As Double = 87.62 * Kw.MOLARMASS
Public Const SrMASS As Double = Sr_MASS / Kw.AVOGADRO
Public Const Sr_DENSITY As Double = 2640 * Kw.DENSITY
Public Const Sr_MELT As Double = 1050 * Kw.KELVIN
Public Const Sr_BOIL As Double = 1655 * Kw.KELVIN
Public Const Sr_Cp As Double = 301 * Kw.SPECIFICHEAT
Public Const Sr_En As Double = 0.95
Public Const YZ As Double = 39
Public Const Y_MASS As Double = 88.90584 * Kw.MOLARMASS
Public Const YMASS As Double = Y_MASS / Kw.AVOGADRO
Public Const Y_DENSITY As Double = 4469 * Kw.DENSITY
Public Const Y_MELT As Double = 1799 * Kw.KELVIN
Public Const Y_BOIL As Double = 3609 * Kw.KELVIN
Public Const Y_Cp As Double = 298 * Kw.SPECIFICHEAT
Public Const Y_En As Double = 1.22
Public Const ZrZ As Double = 40
Public Const Zr_MASS As Double = 91.224 * Kw.MOLARMASS
Public Const ZrMASS As Double = Zr_MASS / Kw.AVOGADRO
Public Const Zr_DENSITY As Double = 6506 * Kw.DENSITY
Public Const Zr_MELT As Double = 2128 * Kw.KELVIN
Public Const Zr_BOIL As Double = 4682 * Kw.KELVIN
Public Const Zr_Cp As Double = 278 * Kw.SPECIFICHEAT
Public Const Zr_En As Double = 1.33
Public Const NbZ As Double = 41
Public Const Nb_MASS As Double = 92.90637 * Kw.MOLARMASS
Public Const NbMASS As Double = Nb_MASS / Kw.AVOGADRO
Public Const Nb_DENSITY As Double = 8570 * Kw.DENSITY
Public Const Nb_MELT As Double = 2750 * Kw.KELVIN
Public Const Nb_BOIL As Double = 5017 * Kw.KELVIN
Public Const Nb_Cp As Double = 265 * Kw.SPECIFICHEAT
Public Const Nb_En As Double = 1.6
Public Const MoZ As Double = 42
Public Const Mo_MASS As Double = 95.95 * Kw.MOLARMASS
Public Const MoMASS As Double = Mo_MASS / Kw.AVOGADRO
Public Const Mo_DENSITY As Double = 10220 * Kw.DENSITY
Public Const Mo_MELT As Double = 2896 * Kw.KELVIN
Public Const Mo_BOIL As Double = 4912 * Kw.KELVIN
Public Const Mo_Cp As Double = 251 * Kw.SPECIFICHEAT
Public Const Mo_En As Double = 2.16
Public Const TcZ As Double = 43
Public Const Tc_MASS As Double = 98 * Kw.MOLARMASS
Public Const TcMASS As Double = Tc_MASS / Kw.AVOGADRO
Public Const Tc_DENSITY As Double = 11500 * Kw.DENSITY
Public Const Tc_MELT As Double = 2430 * Kw.KELVIN
Public Const Tc_BOIL As Double = 4538 * Kw.KELVIN
Public Const Tc_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Tc_En As Double = 1.9
Public Const RuZ As Double = 44
Public Const Ru_MASS As Double = 101.07 * Kw.MOLARMASS
Public Const RuMASS As Double = Ru_MASS / Kw.AVOGADRO
Public Const Ru_DENSITY As Double = 12370 * Kw.DENSITY
Public Const Ru_MELT As Double = 2607 * Kw.KELVIN
Public Const Ru_BOIL As Double = 4423 * Kw.KELVIN
Public Const Ru_Cp As Double = 238 * Kw.SPECIFICHEAT
Public Const Ru_En As Double = 2.2
Public Const RhZ As Double = 45
Public Const Rh_MASS As Double = 102.90549 * Kw.MOLARMASS
Public Const RhMASS As Double = Rh_MASS / Kw.AVOGADRO
Public Const Rh_DENSITY As Double = 12410 * Kw.DENSITY
Public Const Rh_MELT As Double = 2237 * Kw.KELVIN
Public Const Rh_BOIL As Double = 3968 * Kw.KELVIN
Public Const Rh_Cp As Double = 243 * Kw.SPECIFICHEAT
Public Const Rh_En As Double = 2.28
Public Const PdZ As Double = 46
Public Const Pd_MASS As Double = 106.42 * Kw.MOLARMASS
Public Const PdMASS As Double = Pd_MASS / Kw.AVOGADRO
Public Const Pd_DENSITY As Double = 12020 * Kw.DENSITY
Public Const Pd_MELT As Double = 1828.05 * Kw.KELVIN
Public Const Pd_BOIL As Double = 3236 * Kw.KELVIN
Public Const Pd_Cp As Double = 244 * Kw.SPECIFICHEAT
Public Const Pd_En As Double = 2.2
Public Const AgZ As Double = 47
Public Const Ag_MASS As Double = 107.8682 * Kw.MOLARMASS
Public Const AgMASS As Double = Ag_MASS / Kw.AVOGADRO
Public Const Ag_DENSITY As Double = 10501 * Kw.DENSITY
Public Const Ag_MELT As Double = 1234.93 * Kw.KELVIN
Public Const Ag_BOIL As Double = 2435 * Kw.KELVIN
Public Const Ag_Cp As Double = 235 * Kw.SPECIFICHEAT
Public Const Ag_En As Double = 1.93
Public Const CdZ As Double = 48
Public Const Cd_MASS As Double = 112.414 * Kw.MOLARMASS
Public Const CdMASS As Double = Cd_MASS / Kw.AVOGADRO
Public Const Cd_DENSITY As Double = 8690 * Kw.DENSITY
Public Const Cd_MELT As Double = 594.22 * Kw.KELVIN
Public Const Cd_BOIL As Double = 1040 * Kw.KELVIN
Public Const Cd_Cp As Double = 232 * Kw.SPECIFICHEAT
Public Const Cd_En As Double = 1.69
Public Const InZ As Double = 49
Public Const In_MASS As Double = 114.818 * Kw.MOLARMASS
Public Const InMASS As Double = In_MASS / Kw.AVOGADRO
Public Const In_DENSITY As Double = 7310 * Kw.DENSITY
Public Const In_MELT As Double = 429.75 * Kw.KELVIN
Public Const In_BOIL As Double = 2345 * Kw.KELVIN
Public Const In_Cp As Double = 233 * Kw.SPECIFICHEAT
Public Const In_En As Double = 1.78
Public Const SnZ As Double = 50
Public Const Sn_MASS As Double = 118.710 * Kw.MOLARMASS
Public Const SnMASS As Double = Sn_MASS / Kw.AVOGADRO
Public Const Sn_DENSITY As Double = 7287 * Kw.DENSITY
Public Const Sn_MELT As Double = 505.08 * Kw.KELVIN
Public Const Sn_BOIL As Double = 2875 * Kw.KELVIN
Public Const Sn_Cp As Double = 228 * Kw.SPECIFICHEAT
Public Const Sn_En As Double = 1.96
Public Const SbZ As Double = 51
Public Const Sb_MASS As Double = 121.760 * Kw.MOLARMASS
Public Const SbMASS As Double = Sb_MASS / Kw.AVOGADRO
Public Const Sb_DENSITY As Double = 6685 * Kw.DENSITY
Public Const Sb_MELT As Double = 903.78 * Kw.KELVIN
Public Const Sb_BOIL As Double = 1860 * Kw.KELVIN
Public Const Sb_Cp As Double = 207 * Kw.SPECIFICHEAT
Public Const Sb_En As Double = 2.05
Public Const TeZ As Double = 52
Public Const Te_MASS As Double = 127.60 * Kw.MOLARMASS
Public Const TeMASS As Double = Te_MASS / Kw.AVOGADRO
Public Const Te_DENSITY As Double = 6232 * Kw.DENSITY
Public Const Te_MELT As Double = 722.66 * Kw.KELVIN
Public Const Te_BOIL As Double = 1261 * Kw.KELVIN
Public Const Te_Cp As Double = 202 * Kw.SPECIFICHEAT
Public Const Te_En As Double = 2.1
Public Const IZ As Double = 53
Public Const I_MASS As Double = 126.90447 * Kw.MOLARMASS
Public Const IMASS As Double = I_MASS / Kw.AVOGADRO
Public Const I_DENSITY As Double = 4930 * Kw.DENSITY
Public Const I_MELT As Double = 386.85 * Kw.KELVIN
Public Const I_BOIL As Double = 457.4 * Kw.KELVIN
Public Const I_Cp As Double = 214 * Kw.SPECIFICHEAT
Public Const I_En As Double = 2.66
Public Const XeZ As Double = 54
Public Const Xe_MASS As Double = 131.293 * Kw.MOLARMASS
Public Const XeMASS As Double = Xe_MASS / Kw.AVOGADRO
Public Const Xe_DENSITY As Double = 5.887 * Kw.DENSITY
Public Const Xe_MELT As Double = 161.4 * Kw.KELVIN
Public Const Xe_BOIL As Double = 165.03 * Kw.KELVIN
Public Const Xe_Cp As Double = 158 * Kw.SPECIFICHEAT
Public Const Xe_En As Double = 2.6
Public Const CsZ As Double = 55
Public Const Cs_MASS As Double = 132.90545196 * Kw.MOLARMASS
Public Const CsMASS As Double = Cs_MASS / Kw.AVOGADRO
Public Const Cs_DENSITY As Double = 1873 * Kw.DENSITY
Public Const Cs_MELT As Double = 301.59 * Kw.KELVIN
Public Const Cs_BOIL As Double = 944 * Kw.KELVIN
Public Const Cs_Cp As Double = 242 * Kw.SPECIFICHEAT
Public Const Cs_En As Double = 0.79
Public Const BaZ As Double = 56
Public Const Ba_MASS As Double = 137.327 * Kw.MOLARMASS
Public Const BaMASS As Double = Ba_MASS / Kw.AVOGADRO
Public Const Ba_DENSITY As Double = 3594 * Kw.DENSITY
Public Const Ba_MELT As Double = 1000 * Kw.KELVIN
Public Const Ba_BOIL As Double = 2170 * Kw.KELVIN
Public Const Ba_Cp As Double = 204 * Kw.SPECIFICHEAT
Public Const Ba_En As Double = 0.89
Public Const LaZ As Double = 57
Public Const La_MASS As Double = 138.90547 * Kw.MOLARMASS
Public Const LaMASS As Double = La_MASS / Kw.AVOGADRO
Public Const La_DENSITY As Double = 6145 * Kw.DENSITY
Public Const La_MELT As Double = 1193 * Kw.KELVIN
Public Const La_BOIL As Double = 3737 * Kw.KELVIN
Public Const La_Cp As Double = 195 * Kw.SPECIFICHEAT
Public Const La_En As Double = 1.1
Public Const CeZ As Double = 58
Public Const Ce_MASS As Double = 140.116 * Kw.MOLARMASS
Public Const CeMASS As Double = Ce_MASS / Kw.AVOGADRO
Public Const Ce_DENSITY As Double = 6770 * Kw.DENSITY
Public Const Ce_MELT As Double = 1068 * Kw.KELVIN
Public Const Ce_BOIL As Double = 3716 * Kw.KELVIN
Public Const Ce_Cp As Double = 192 * Kw.SPECIFICHEAT
Public Const Ce_En As Double = 1.12
Public Const PrZ As Double = 59
Public Const Pr_MASS As Double = 140.90766 * Kw.MOLARMASS
Public Const PrMASS As Double = Pr_MASS / Kw.AVOGADRO
Public Const Pr_DENSITY As Double = 6773 * Kw.DENSITY
Public Const Pr_MELT As Double = 1208 * Kw.KELVIN
Public Const Pr_BOIL As Double = 3793 * Kw.KELVIN
Public Const Pr_Cp As Double = 193 * Kw.SPECIFICHEAT
Public Const Pr_En As Double = 1.13
Public Const NdZ As Double = 60
Public Const Nd_MASS As Double = 144.242 * Kw.MOLARMASS
Public Const NdMASS As Double = Nd_MASS / Kw.AVOGADRO
Public Const Nd_DENSITY As Double = 7007 * Kw.DENSITY
Public Const Nd_MELT As Double = 1297 * Kw.KELVIN
Public Const Nd_BOIL As Double = 3347 * Kw.KELVIN
Public Const Nd_Cp As Double = 190 * Kw.SPECIFICHEAT
Public Const Nd_En As Double = 1.14
Public Const PmZ As Double = 61
Public Const Pm_MASS As Double = 145 * Kw.MOLARMASS
Public Const PmMASS As Double = Pm_MASS / Kw.AVOGADRO
Public Const Pm_DENSITY As Double = 7260 * Kw.DENSITY
Public Const Pm_MELT As Double = 1315 * Kw.KELVIN
Public Const Pm_BOIL As Double = 3273 * Kw.KELVIN
Public Const Pm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pm_En As Double = 1.13
Public Const SmZ As Double = 62
Public Const Sm_MASS As Double = 150.36 * Kw.MOLARMASS
Public Const SmMASS As Double = Sm_MASS / Kw.AVOGADRO
Public Const Sm_DENSITY As Double = 7520 * Kw.DENSITY
Public Const Sm_MELT As Double = 1345 * Kw.KELVIN
Public Const Sm_BOIL As Double = 2067 * Kw.KELVIN
Public Const Sm_Cp As Double = 197 * Kw.SPECIFICHEAT
Public Const Sm_En As Double = 1.17
Public Const EuZ As Double = 63
Public Const Eu_MASS As Double = 151.964 * Kw.MOLARMASS
Public Const EuMASS As Double = Eu_MASS / Kw.AVOGADRO
Public Const Eu_DENSITY As Double = 5243 * Kw.DENSITY
Public Const Eu_MELT As Double = 1099 * Kw.KELVIN
Public Const Eu_BOIL As Double = 1802 * Kw.KELVIN
Public Const Eu_Cp As Double = 182 * Kw.SPECIFICHEAT
Public Const Eu_En As Double = 1.2
Public Const GdZ As Double = 64
Public Const Gd_MASS As Double = 157.25 * Kw.MOLARMASS
Public Const GdMASS As Double = Gd_MASS / Kw.AVOGADRO
Public Const Gd_DENSITY As Double = 7895 * Kw.DENSITY
Public Const Gd_MELT As Double = 1585 * Kw.KELVIN
Public Const Gd_BOIL As Double = 3546 * Kw.KELVIN
Public Const Gd_Cp As Double = 236 * Kw.SPECIFICHEAT
Public Const Gd_En As Double = 1.2
Public Const TbZ As Double = 65
Public Const Tb_MASS As Double = 158.925354 * Kw.MOLARMASS
Public Const TbMASS As Double = Tb_MASS / Kw.AVOGADRO
Public Const Tb_DENSITY As Double = 8229 * Kw.DENSITY
Public Const Tb_MELT As Double = 1629 * Kw.KELVIN
Public Const Tb_BOIL As Double = 3503 * Kw.KELVIN
Public Const Tb_Cp As Double = 182 * Kw.SPECIFICHEAT
Public Const Tb_En As Double = 1.2
Public Const DyZ As Double = 66
Public Const Dy_MASS As Double = 162.500 * Kw.MOLARMASS
Public Const DyMASS As Double = Dy_MASS / Kw.AVOGADRO
Public Const Dy_DENSITY As Double = 8550 * Kw.DENSITY
Public Const Dy_MELT As Double = 1680 * Kw.KELVIN
Public Const Dy_BOIL As Double = 2840 * Kw.KELVIN
Public Const Dy_Cp As Double = 170 * Kw.SPECIFICHEAT
Public Const Dy_En As Double = 1.22
Public Const HoZ As Double = 67
Public Const Ho_MASS As Double = 164.930328 * Kw.MOLARMASS
Public Const HoMASS As Double = Ho_MASS / Kw.AVOGADRO
Public Const Ho_DENSITY As Double = 8795 * Kw.DENSITY
Public Const Ho_MELT As Double = 1734 * Kw.KELVIN
Public Const Ho_BOIL As Double = 2993 * Kw.KELVIN
Public Const Ho_Cp As Double = 165 * Kw.SPECIFICHEAT
Public Const Ho_En As Double = 1.23
Public Const ErZ As Double = 68
Public Const Er_MASS As Double = 167.259 * Kw.MOLARMASS
Public Const ErMASS As Double = Er_MASS / Kw.AVOGADRO
Public Const Er_DENSITY As Double = 9066 * Kw.DENSITY
Public Const Er_MELT As Double = 1802 * Kw.KELVIN
Public Const Er_BOIL As Double = 3141 * Kw.KELVIN
Public Const Er_Cp As Double = 168 * Kw.SPECIFICHEAT
Public Const Er_En As Double = 1.24
Public Const TmZ As Double = 69
Public Const Tm_MASS As Double = 168.934218 * Kw.MOLARMASS
Public Const TmMASS As Double = Tm_MASS / Kw.AVOGADRO
Public Const Tm_DENSITY As Double = 9321 * Kw.DENSITY
Public Const Tm_MELT As Double = 1818 * Kw.KELVIN
Public Const Tm_BOIL As Double = 2223 * Kw.KELVIN
Public Const Tm_Cp As Double = 160 * Kw.SPECIFICHEAT
Public Const Tm_En As Double = 1.25
Public Const YbZ As Double = 70
Public Const Yb_MASS As Double = 173.045 * Kw.MOLARMASS
Public Const YbMASS As Double = Yb_MASS / Kw.AVOGADRO
Public Const Yb_DENSITY As Double = 6965 * Kw.DENSITY
Public Const Yb_MELT As Double = 1097 * Kw.KELVIN
Public Const Yb_BOIL As Double = 1469 * Kw.KELVIN
Public Const Yb_Cp As Double = 155 * Kw.SPECIFICHEAT
Public Const Yb_En As Double = 1.1
Public Const LuZ As Double = 71
Public Const Lu_MASS As Double = 174.9668 * Kw.MOLARMASS
Public Const LuMASS As Double = Lu_MASS / Kw.AVOGADRO
Public Const Lu_DENSITY As Double = 9840 * Kw.DENSITY
Public Const Lu_MELT As Double = 1925 * Kw.KELVIN
Public Const Lu_BOIL As Double = 3675 * Kw.KELVIN
Public Const Lu_Cp As Double = 154 * Kw.SPECIFICHEAT
Public Const Lu_En As Double = 1.27
Public Const HfZ As Double = 72
Public Const Hf_MASS As Double = 178.49 * Kw.MOLARMASS
Public Const HfMASS As Double = Hf_MASS / Kw.AVOGADRO
Public Const Hf_DENSITY As Double = 13310 * Kw.DENSITY
Public Const Hf_MELT As Double = 2506 * Kw.KELVIN
Public Const Hf_BOIL As Double = 4876 * Kw.KELVIN
Public Const Hf_Cp As Double = 144 * Kw.SPECIFICHEAT
Public Const Hf_En As Double = 1.3
Public Const TaZ As Double = 73
Public Const Ta_MASS As Double = 180.94788 * Kw.MOLARMASS
Public Const TaMASS As Double = Ta_MASS / Kw.AVOGADRO
Public Const Ta_DENSITY As Double = 16654 * Kw.DENSITY
Public Const Ta_MELT As Double = 3290 * Kw.KELVIN
Public Const Ta_BOIL As Double = 5731 * Kw.KELVIN
Public Const Ta_Cp As Double = 140 * Kw.SPECIFICHEAT
Public Const Ta_En As Double = 1.5
Public Const WZ As Double = 74
Public Const W_MASS As Double = 183.84 * Kw.MOLARMASS
Public Const WMASS As Double = W_MASS / Kw.AVOGADRO
Public Const W_DENSITY As Double = 19250 * Kw.DENSITY
Public Const W_MELT As Double = 3695 * Kw.KELVIN
Public Const W_BOIL As Double = 5828 * Kw.KELVIN
Public Const W_Cp As Double = 132 * Kw.SPECIFICHEAT
Public Const W_En As Double = 2.36
Public Const ReZ As Double = 75
Public Const Re_MASS As Double = 186.207 * Kw.MOLARMASS
Public Const ReMASS As Double = Re_MASS / Kw.AVOGADRO
Public Const Re_DENSITY As Double = 21020 * Kw.DENSITY
Public Const Re_MELT As Double = 3459 * Kw.KELVIN
Public Const Re_BOIL As Double = 5869 * Kw.KELVIN
Public Const Re_Cp As Double = 137 * Kw.SPECIFICHEAT
Public Const Re_En As Double = 1.9
Public Const OsZ As Double = 76
Public Const Os_MASS As Double = 190.23 * Kw.MOLARMASS
Public Const OsMASS As Double = Os_MASS / Kw.AVOGADRO
Public Const Os_DENSITY As Double = 22610 * Kw.DENSITY
Public Const Os_MELT As Double = 3306 * Kw.KELVIN
Public Const Os_BOIL As Double = 5285 * Kw.KELVIN
Public Const Os_Cp As Double = 130 * Kw.SPECIFICHEAT
Public Const Os_En As Double = 2.2
Public Const IrZ As Double = 77
Public Const Ir_MASS As Double = 192.217 * Kw.MOLARMASS
Public Const IrMASS As Double = Ir_MASS / Kw.AVOGADRO
Public Const Ir_DENSITY As Double = 22560 * Kw.DENSITY
Public Const Ir_MELT As Double = 2719 * Kw.KELVIN
Public Const Ir_BOIL As Double = 4701 * Kw.KELVIN
Public Const Ir_Cp As Double = 131 * Kw.SPECIFICHEAT
Public Const Ir_En As Double = 2.2
Public Const PtZ As Double = 78
Public Const Pt_MASS As Double = 195.084 * Kw.MOLARMASS
Public Const PtMASS As Double = Pt_MASS / Kw.AVOGADRO
Public Const Pt_DENSITY As Double = 21460 * Kw.DENSITY
Public Const Pt_MELT As Double = 2041.4 * Kw.KELVIN
Public Const Pt_BOIL As Double = 4098 * Kw.KELVIN
Public Const Pt_Cp As Double = 133 * Kw.SPECIFICHEAT
Public Const Pt_En As Double = 2.28
Public Const AuZ As Double = 79
Public Const Au_MASS As Double = 196.966570 * Kw.MOLARMASS
Public Const AuMASS As Double = Au_MASS / Kw.AVOGADRO
Public Const Au_DENSITY As Double = 19282 * Kw.DENSITY
Public Const Au_MELT As Double = 1337.33 * Kw.KELVIN
Public Const Au_BOIL As Double = 3129 * Kw.KELVIN
Public Const Au_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Au_En As Double = 2.54
Public Const HgZ As Double = 80
Public Const Hg_MASS As Double = 200.592 * Kw.MOLARMASS
Public Const HgMASS As Double = Hg_MASS / Kw.AVOGADRO
Public Const Hg_DENSITY As Double = 13533.6 * Kw.DENSITY
Public Const Hg_MELT As Double = 234.43 * Kw.KELVIN
Public Const Hg_BOIL As Double = 629.88 * Kw.KELVIN
Public Const Hg_Cp As Double = 140 * Kw.SPECIFICHEAT
Public Const Hg_En As Double = 2
Public Const TlZ As Double = 81
Public Const Tl_MASS As Double = 204.38 * Kw.MOLARMASS
Public Const TlMASS As Double = Tl_MASS / Kw.AVOGADRO
Public Const Tl_DENSITY As Double = 11850 * Kw.DENSITY
Public Const Tl_MELT As Double = 577 * Kw.KELVIN
Public Const Tl_BOIL As Double = 1746 * Kw.KELVIN
Public Const Tl_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Tl_En As Double = 1.62
Public Const PbZ As Double = 82
Public Const Pb_MASS As Double = 207.2 * Kw.MOLARMASS
Public Const PbMASS As Double = Pb_MASS / Kw.AVOGADRO
Public Const Pb_DENSITY As Double = 11342 * Kw.DENSITY
Public Const Pb_MELT As Double = 600.61 * Kw.KELVIN
Public Const Pb_BOIL As Double = 2022 * Kw.KELVIN
Public Const Pb_Cp As Double = 129 * Kw.SPECIFICHEAT
Public Const Pb_En As Double = 1.87
Public Const BiZ As Double = 83
Public Const Bi_MASS As Double = 208.98040 * Kw.MOLARMASS
Public Const BiMASS As Double = Bi_MASS / Kw.AVOGADRO
Public Const Bi_DENSITY As Double = 9807 * Kw.DENSITY
Public Const Bi_MELT As Double = 544.7 * Kw.KELVIN
Public Const Bi_BOIL As Double = 1837 * Kw.KELVIN
Public Const Bi_Cp As Double = 122 * Kw.SPECIFICHEAT
Public Const Bi_En As Double = 2.02
Public Const PoZ As Double = 84
Public Const Po_MASS As Double = 209 * Kw.MOLARMASS
Public Const PoMASS As Double = Po_MASS / Kw.AVOGADRO
Public Const Po_DENSITY As Double = 9320 * Kw.DENSITY
Public Const Po_MELT As Double = 527 * Kw.KELVIN
Public Const Po_BOIL As Double = 1235 * Kw.KELVIN
Public Const Po_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Po_En As Double = 2.0
Public Const AtZ As Double = 85
Public Const At_MASS As Double = 210 * Kw.MOLARMASS
Public Const AtMASS As Double = At_MASS / Kw.AVOGADRO
Public Const At_DENSITY As Double = 7000 * Kw.DENSITY
Public Const At_MELT As Double = 575 * Kw.KELVIN
Public Const At_BOIL As Double = 610 * Kw.KELVIN
Public Const At_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const At_En As Double = 2.2
Public Const RnZ As Double = 86
Public Const Rn_MASS As Double = 222 * Kw.MOLARMASS
Public Const RnMASS As Double = Rn_MASS / Kw.AVOGADRO
Public Const Rn_DENSITY As Double = 9.73 * Kw.DENSITY
Public Const Rn_MELT As Double = 202 * Kw.KELVIN
Public Const Rn_BOIL As Double = 211.3 * Kw.KELVIN
Public Const Rn_Cp As Double = 94 * Kw.SPECIFICHEAT
Public Const Rn_En As Double = 2.2
Public Const FrZ As Double = 87
Public Const Fr_MASS As Double = 223 * Kw.MOLARMASS
Public Const FrMASS As Double = Fr_MASS / Kw.AVOGADRO
Public Const Fr_DENSITY As Double = 1870 * Kw.DENSITY
Public Const Fr_MELT As Double = 300 * Kw.KELVIN
Public Const Fr_BOIL As Double = 950 * Kw.KELVIN
Public Const Fr_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fr_En As Double = 0.7
Public Const RaZ As Double = 88
Public Const Ra_MASS As Double = 226 * Kw.MOLARMASS
Public Const RaMASS As Double = Ra_MASS / Kw.AVOGADRO
Public Const Ra_DENSITY As Double = 5500 * Kw.DENSITY
Public Const Ra_MELT As Double = 973 * Kw.KELVIN
Public Const Ra_BOIL As Double = 2010 * Kw.KELVIN
Public Const Ra_Cp As Double = 94 * Kw.SPECIFICHEAT
Public Const Ra_En As Double = 0.9
Public Const AcZ As Double = 89
Public Const Ac_MASS As Double = 227 * Kw.MOLARMASS
Public Const AcMASS As Double = Ac_MASS / Kw.AVOGADRO
Public Const Ac_DENSITY As Double = 10070 * Kw.DENSITY
Public Const Ac_MELT As Double = 1323 * Kw.KELVIN
Public Const Ac_BOIL As Double = 3471 * Kw.KELVIN
Public Const Ac_Cp As Double = 120 * Kw.SPECIFICHEAT
Public Const Ac_En As Double = 1.1
Public Const ThZ As Double = 90
Public Const Th_MASS As Double = 232.0377 * Kw.MOLARMASS
Public Const ThMASS As Double = Th_MASS / Kw.AVOGADRO
Public Const Th_DENSITY As Double = 11720 * Kw.DENSITY
Public Const Th_MELT As Double = 2115 * Kw.KELVIN
Public Const Th_BOIL As Double = 5061 * Kw.KELVIN
Public Const Th_Cp As Double = 113 * Kw.SPECIFICHEAT
Public Const Th_En As Double = 1.3
Public Const PaZ As Double = 91
Public Const Pa_MASS As Double = 231.03588 * Kw.MOLARMASS
Public Const PaMASS As Double = Pa_MASS / Kw.AVOGADRO
Public Const Pa_DENSITY As Double = 15370 * Kw.DENSITY
Public Const Pa_MELT As Double = 1841 * Kw.KELVIN
Public Const Pa_BOIL As Double = 4300 * Kw.KELVIN
Public Const Pa_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pa_En As Double = 1.5
Public Const UZ As Double = 92
Public Const U_MASS As Double = 238.02891 * Kw.MOLARMASS
Public Const UMASS As Double = U_MASS / Kw.AVOGADRO
Public Const U_DENSITY As Double = 18950 * Kw.DENSITY
Public Const U_MELT As Double = 1405.3 * Kw.KELVIN
Public Const U_BOIL As Double = 4404 * Kw.KELVIN
Public Const U_Cp As Double = 116 * Kw.SPECIFICHEAT
Public Const U_En As Double = 1.38
Public Const NpZ As Double = 93
Public Const Np_MASS As Double = 237 * Kw.MOLARMASS
Public Const NpMASS As Double = Np_MASS / Kw.AVOGADRO
Public Const Np_DENSITY As Double = 20450 * Kw.DENSITY
Public Const Np_MELT As Double = 917 * Kw.KELVIN
Public Const Np_BOIL As Double = 4273 * Kw.KELVIN
Public Const Np_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Np_En As Double = 1.36
Public Const PuZ As Double = 94
Public Const Pu_MASS As Double = 244 * Kw.MOLARMASS
Public Const PuMASS As Double = Pu_MASS / Kw.AVOGADRO
Public Const Pu_DENSITY As Double = 19840 * Kw.DENSITY
Public Const Pu_MELT As Double = 912.5 * Kw.KELVIN
Public Const Pu_BOIL As Double = 3501 * Kw.KELVIN
Public Const Pu_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Pu_En As Double = 1.28
Public Const AmZ As Double = 95
Public Const Am_MASS As Double = 243 * Kw.MOLARMASS
Public Const AmMASS As Double = Am_MASS / Kw.AVOGADRO
Public Const Am_DENSITY As Double = 13690 * Kw.DENSITY
Public Const Am_MELT As Double = 1449 * Kw.KELVIN
Public Const Am_BOIL As Double = 2880 * Kw.KELVIN
Public Const Am_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Am_En As Double = 1.13
Public Const CmZ As Double = 96
Public Const Cm_MASS As Double = 247 * Kw.MOLARMASS
Public Const CmMASS As Double = Cm_MASS / Kw.AVOGADRO
Public Const Cm_DENSITY As Double = 13510 * Kw.DENSITY
Public Const Cm_MELT As Double = 1613 * Kw.KELVIN
Public Const Cm_BOIL As Double = 3383 * Kw.KELVIN
Public Const Cm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cm_En As Double = 1.28
Public Const BkZ As Double = 97
Public Const Bk_MASS As Double = 247 * Kw.MOLARMASS
Public Const BkMASS As Double = Bk_MASS / Kw.AVOGADRO
Public Const Bk_DENSITY As Double = 14790 * Kw.DENSITY
Public Const Bk_MELT As Double = 1259 * Kw.KELVIN
Public Const Bk_BOIL As Double = 2900 * Kw.KELVIN
Public Const Bk_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Bk_En As Double = 1.3
Public Const CfZ As Double = 98
Public Const Cf_MASS As Double = 251 * Kw.MOLARMASS
Public Const CfMASS As Double = Cf_MASS / Kw.AVOGADRO
Public Const Cf_DENSITY As Double = 15100 * Kw.DENSITY
Public Const Cf_MELT As Double = 1173 * Kw.KELVIN
Public Const Cf_BOIL As Double = -1 * Kw.KELVIN
Public Const Cf_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cf_En As Double = 1.3
Public Const EsZ As Double = 99
Public Const Es_MASS As Double = 252 * Kw.MOLARMASS
Public Const EsMASS As Double = Es_MASS / Kw.AVOGADRO
Public Const Es_DENSITY As Double = 8840 * Kw.DENSITY
Public Const Es_MELT As Double = 1133 * Kw.KELVIN
Public Const Es_BOIL As Double = -1 * Kw.KELVIN
Public Const Es_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Es_En As Double = 1.3
Public Const FmZ As Double = 100
Public Const Fm_MASS As Double = 257 * Kw.MOLARMASS
Public Const FmMASS As Double = Fm_MASS / Kw.AVOGADRO
Public Const Fm_DENSITY As Double = -1 * Kw.DENSITY
Public Const Fm_MELT As Double = -1 * Kw.KELVIN
Public Const Fm_BOIL As Double = -1 * Kw.KELVIN
Public Const Fm_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fm_En As Double = 1.3
Public Const MdZ As Double = 101
Public Const Md_MASS As Double = 258 * Kw.MOLARMASS
Public Const MdMASS As Double = Md_MASS / Kw.AVOGADRO
Public Const Md_DENSITY As Double = -1 * Kw.DENSITY
Public Const Md_MELT As Double = -1 * Kw.KELVIN
Public Const Md_BOIL As Double = -1 * Kw.KELVIN
Public Const Md_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Md_En As Double = 1.3
Public Const NoZ As Double = 102
Public Const No_MASS As Double = 259 * Kw.MOLARMASS
Public Const NoMASS As Double = No_MASS / Kw.AVOGADRO
Public Const No_DENSITY As Double = -1 * Kw.DENSITY
Public Const No_MELT As Double = -1 * Kw.KELVIN
Public Const No_BOIL As Double = -1 * Kw.KELVIN
Public Const No_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const No_En As Double = 1.3
Public Const LrZ As Double = 103
Public Const Lr_MASS As Double = 266 * Kw.MOLARMASS
Public Const LrMASS As Double = Lr_MASS / Kw.AVOGADRO
Public Const Lr_DENSITY As Double = -1 * Kw.DENSITY
Public Const Lr_MELT As Double = -1 * Kw.KELVIN
Public Const Lr_BOIL As Double = -1 * Kw.KELVIN
Public Const Lr_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Lr_En As Double = 1.3
Public Const RfZ As Double = 104
Public Const Rf_MASS As Double = 267 * Kw.MOLARMASS
Public Const RfMASS As Double = Rf_MASS / Kw.AVOGADRO
Public Const Rf_DENSITY As Double = -1 * Kw.DENSITY
Public Const Rf_MELT As Double = -1 * Kw.KELVIN
Public Const Rf_BOIL As Double = -1 * Kw.KELVIN
Public Const Rf_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Rf_En As Double = -1
Public Const DbZ As Double = 105
Public Const Db_MASS As Double = 268 * Kw.MOLARMASS
Public Const DbMASS As Double = Db_MASS / Kw.AVOGADRO
Public Const Db_DENSITY As Double = -1 * Kw.DENSITY
Public Const Db_MELT As Double = -1 * Kw.KELVIN
Public Const Db_BOIL As Double = -1 * Kw.KELVIN
Public Const Db_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Db_En As Double = -1
Public Const SgZ As Double = 106
Public Const Sg_MASS As Double = 269 * Kw.MOLARMASS
Public Const SgMASS As Double = Sg_MASS / Kw.AVOGADRO
Public Const Sg_DENSITY As Double = -1 * Kw.DENSITY
Public Const Sg_MELT As Double = -1 * Kw.KELVIN
Public Const Sg_BOIL As Double = -1 * Kw.KELVIN
Public Const Sg_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Sg_En As Double = -1
Public Const BhZ As Double = 107
Public Const Bh_MASS As Double = 270 * Kw.MOLARMASS
Public Const BhMASS As Double = Bh_MASS / Kw.AVOGADRO
Public Const Bh_DENSITY As Double = -1 * Kw.DENSITY
Public Const Bh_MELT As Double = -1 * Kw.KELVIN
Public Const Bh_BOIL As Double = -1 * Kw.KELVIN
Public Const Bh_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Bh_En As Double = -1
Public Const HsZ As Double = 108
Public Const Hs_MASS As Double = 270 * Kw.MOLARMASS
Public Const HsMASS As Double = Hs_MASS / Kw.AVOGADRO
Public Const Hs_DENSITY As Double = -1 * Kw.DENSITY
Public Const Hs_MELT As Double = -1 * Kw.KELVIN
Public Const Hs_BOIL As Double = -1 * Kw.KELVIN
Public Const Hs_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Hs_En As Double = -1
Public Const MtZ As Double = 109
Public Const Mt_MASS As Double = 278 * Kw.MOLARMASS
Public Const MtMASS As Double = Mt_MASS / Kw.AVOGADRO
Public Const Mt_DENSITY As Double = -1 * Kw.DENSITY
Public Const Mt_MELT As Double = -1 * Kw.KELVIN
Public Const Mt_BOIL As Double = -1 * Kw.KELVIN
Public Const Mt_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Mt_En As Double = -1
Public Const DsZ As Double = 110
Public Const Ds_MASS As Double = 281 * Kw.MOLARMASS
Public Const DsMASS As Double = Ds_MASS / Kw.AVOGADRO
Public Const Ds_DENSITY As Double = -1 * Kw.DENSITY
Public Const Ds_MELT As Double = -1 * Kw.KELVIN
Public Const Ds_BOIL As Double = -1 * Kw.KELVIN
Public Const Ds_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Ds_En As Double = -1
Public Const RgZ As Double = 111
Public Const Rg_MASS As Double = 282 * Kw.MOLARMASS
Public Const RgMASS As Double = Rg_MASS / Kw.AVOGADRO
Public Const Rg_DENSITY As Double = -1 * Kw.DENSITY
Public Const Rg_MELT As Double = -1 * Kw.KELVIN
Public Const Rg_BOIL As Double = -1 * Kw.KELVIN
Public Const Rg_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Rg_En As Double = -1
Public Const CnZ As Double = 112
Public Const Cn_MASS As Double = 285 * Kw.MOLARMASS
Public Const CnMASS As Double = Cn_MASS / Kw.AVOGADRO
Public Const Cn_DENSITY As Double = -1 * Kw.DENSITY
Public Const Cn_MELT As Double = -1 * Kw.KELVIN
Public Const Cn_BOIL As Double = 357 * Kw.KELVIN
Public Const Cn_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Cn_En As Double = -1
Public Const NhZ As Double = 113
Public Const Nh_MASS As Double = 286 * Kw.MOLARMASS
Public Const NhMASS As Double = Nh_MASS / Kw.AVOGADRO
Public Const Nh_DENSITY As Double = -1 * Kw.DENSITY
Public Const Nh_MELT As Double = -1 * Kw.KELVIN
Public Const Nh_BOIL As Double = -1 * Kw.KELVIN
Public Const Nh_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Nh_En As Double = -1
Public Const FlZ As Double = 114
Public Const Fl_MASS As Double = 289 * Kw.MOLARMASS
Public Const FlMASS As Double = Fl_MASS / Kw.AVOGADRO
Public Const Fl_DENSITY As Double = -1 * Kw.DENSITY
Public Const Fl_MELT As Double = -1 * Kw.KELVIN
Public Const Fl_BOIL As Double = 210 * Kw.KELVIN
Public Const Fl_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Fl_En As Double = -1
Public Const McZ As Double = 115
Public Const Mc_MASS As Double = 290 * Kw.MOLARMASS
Public Const McMASS As Double = Mc_MASS / Kw.AVOGADRO
Public Const Mc_DENSITY As Double = -1 * Kw.DENSITY
Public Const Mc_MELT As Double = -1 * Kw.KELVIN
Public Const Mc_BOIL As Double = -1 * Kw.KELVIN
Public Const Mc_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Mc_En As Double = -1
Public Const LvZ As Double = 116
Public Const Lv_MASS As Double = 293 * Kw.MOLARMASS
Public Const LvMASS As Double = Lv_MASS / Kw.AVOGADRO
Public Const Lv_DENSITY As Double = -1 * Kw.DENSITY
Public Const Lv_MELT As Double = -1 * Kw.KELVIN
Public Const Lv_BOIL As Double = -1 * Kw.KELVIN
Public Const Lv_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Lv_En As Double = -1
Public Const TsZ As Double = 117
Public Const Ts_MASS As Double = 294 * Kw.MOLARMASS
Public Const TsMASS As Double = Ts_MASS / Kw.AVOGADRO
Public Const Ts_DENSITY As Double = -1 * Kw.DENSITY
Public Const Ts_MELT As Double = -1 * Kw.KELVIN
Public Const Ts_BOIL As Double = -1 * Kw.KELVIN
Public Const Ts_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Ts_En As Double = -1
Public Const OgZ As Double = 118
Public Const Og_MASS As Double = 294 * Kw.MOLARMASS
Public Const OgMASS As Double = Og_MASS / Kw.AVOGADRO
Public Const Og_DENSITY As Double = -1 * Kw.DENSITY
Public Const Og_MELT As Double = -1 * Kw.KELVIN
Public Const Og_BOIL As Double = -1 * Kw.KELVIN
Public Const Og_Cp As Double = -1 * Kw.SPECIFICHEAT
Public Const Og_En As Double = -1
Public Const AIR_MASS As Double = Kw.PPM * (780781 * (2 * _
      N_MASS) + 209444 * (2 * O_MASS) + 9339 * Ar_MASS + 410 _
      * (C_MASS + 2 * O_MASS) + 18.18 * Ne_MASS + 5.24 * _
      He_MASS + 1.79 * (C_MASS + 4 * H_MASS) + 1.14 * Kr_MASS _
      + 0.55 * (2 * H_MASS))
Public Const WATER_MASS As Double = 2.0 * H_MASS + O_MASS
Public Const WATERMASS As Double = 2.0 * HMASS + OMASS
Public Const WATER_Cp As Double = 4184 * Kw.SPECIFICHEAT
Public Const ICE_Cp As Double = 2108 * Kw.SPECIFICHEAT
Public Const STEAM_Cp As Double = 1996 * Kw.SPECIFICHEAT
Public Const WATER_FUSION As Double = 3.3355E+5 * Kw.JOULE / _
      Kw.KILOGRAM
Public Const WATER_VAPORIZATION As Double = 2.257E+6 * _
      Kw.JOULE / Kw.KILOGRAM
Public Const H1_MASS As Double = 1.007825032241 * Kw.MOLARMASS
Public Const H1MASS As Double = H1_MASS / Kw.AVOGADRO
Public Const H2_MASS As Double = 2.01410177811 * Kw.MOLARMASS
Public Const H2MASS As Double = H2_MASS / Kw.AVOGADRO
Public Const H3_MASS As Double = 3.01604928199 * Kw.MOLARMASS
Public Const H3MASS As Double = H3_MASS / Kw.AVOGADRO
Public Const He3_MASS As Double = 3.01602932265 * Kw.MOLARMASS
Public Const He3MASS As Double = He3_MASS / Kw.AVOGADRO
Public Const He4_MASS As Double = 4.002603254130 * Kw.MOLARMASS
Public Const He4MASS As Double = He4_MASS / Kw.AVOGADRO
Public Const C12_MASS As Double = 12.0 * Kw.MOLARMASS
Public Const C12MASS As Double = C12_MASS / Kw.AVOGADRO
Public Const C13_MASS As Double = 13.00335483521 * Kw.MOLARMASS
Public Const C13MASS As Double = C13_MASS / Kw.AVOGADRO
Public Const C14_MASS As Double = 14.003241988 * Kw.MOLARMASS
Public Const C14MASS As Double = C14_MASS / Kw.AVOGADRO
Public Const O16_MASS As Double = 15.99491461960 * Kw.MOLARMASS
Public Const O16MASS As Double = O16_MASS / Kw.AVOGADRO
Public Const O17_MASS As Double = 16.9991317566 * Kw.MOLARMASS
Public Const O17MASS As Double = O17_MASS / Kw.AVOGADRO
Public Const O18_MASS As Double = 17.9991596128 * Kw.MOLARMASS
Public Const O18MASS As Double = O18_MASS / Kw.AVOGADRO
Public Const C13_RATIO As Double = 0.0107
Public Const C14_RATIO As Double = 1E-12
Public Const C12_RATIO As Double = 1.0 - C13_RATIO - C14_RATIO
Public Const C_M_MASS As Double = C12_MASS * C12_RATIO + _
      C13_MASS * C13_RATIO + C14_MASS * C14_RATIO
Public Const VSMOW_H3_RATIO As Double = 1.85E-17
Public Const VSMOW_H2_RATIO As Double = 1.5576E-4
Public Const VSMOW_H1_RATIO As Double = 1.0 - VSMOW_H2_RATIO _
      - VSMOW_H3_RATIO
Public Const VSMOW_H_MASS As Double = (H1_MASS * _
      VSMOW_H1_RATIO + H2_MASS * VSMOW_H2_RATIO + H3_MASS * _
      VSMOW_H3_RATIO)
Public Const VSMOW_O18_RATIO As Double = 2.00520E-3
Public Const VSMOW_O17_RATIO As Double = 3.799E-4
Public Const VSMOW_O16_RATIO As Double = 1.0 - _
      VSMOW_O17_RATIO - VSMOW_O18_RATIO
Public Const VSMOW_O_MASS As Double = O16_MASS * _
      VSMOW_O16_RATIO + O17_MASS * VSMOW_O17_RATIO + O18_MASS _
      * VSMOW_O18_RATIO
Public Const VSMOW_MASS As Double = 2 * VSMOW_H_MASS + _
      VSMOW_O_MASS
Public Const CH4_MASS As Double = 4 * H_MASS + 1 * C_MASS + 0 _
      * O_MASS
Public Const CH4MASS As Double = 4 * HMASS + 1 * CMASS + 0 * _
      OMASS
Public Const C2H6_MASS As Double = 6 * H_MASS + 2 * C_MASS + _
      0 * O_MASS
Public Const C2H6MASS As Double = 6 * HMASS + 2 * CMASS + 0 * _
      OMASS
Public Const C3H8_MASS As Double = 8 * H_MASS + 3 * C_MASS + _
      0 * O_MASS
Public Const C3H8MASS As Double = 8 * HMASS + 3 * CMASS + 0 * _
      OMASS
Public Const C4H10_MASS As Double = 10 * H_MASS + 4 * C_MASS _
      + 0 * O_MASS
Public Const C4H10MASS As Double = 10 * HMASS + 4 * CMASS + 0 _
      * OMASS
Public Const C2H60_MASS As Double = 6 * H_MASS + 2 * C_MASS + _
      1 * O_MASS
Public Const C2H60MASS As Double = 6 * HMASS + 2 * CMASS + 1 _
      * OMASS
Public Const CH3CH2OH_MASS As Double = 6 * H_MASS + 2 * _
      C_MASS + 1 * O_MASS
Public Const CH3CH2OHMASS As Double = 6 * HMASS + 2 * CMASS + _
      1 * OMASS
Public Const C12H22O11_MASS As Double = 22 * H_MASS + 12 * _
      C_MASS + 11 * O_MASS
Public Const C12H22O11MASS As Double = 22 * HMASS + 12 * _
      CMASS + 11 * OMASS
Public Const HYDROGEN_MASS As Double = 2 * H_MASS + 0 * _
      C_MASS + 0 * O_MASS
Public Const HYDROGENMASS As Double = 2 * HMASS + 0 * CMASS + _
      0 * OMASS
Public Const HYDROGENJPMOLE As Double = 1.418E+8 * Kw.JOULE / _
      Kw.KILOGRAM * HYDROGEN_MASS
Public Const HYDROGENJPKG As Double = HYDROGENJPMOLE / _
      HYDROGEN_MASS
Public Const HYDROGENJPKGTOTAL As Double = HYDROGENJPMOLE / _
      (HYDROGEN_MASS + (0.5 * 2 + 2.0 * 0 - 1.0 * 0) * O_MASS)
Public Const METHANE_MASS As Double = 4 * H_MASS + 1 * C_MASS _
      + 0 * O_MASS
Public Const METHANEMASS As Double = 4 * HMASS + 1 * CMASS + _
      0 * OMASS
Public Const METHANEJPMOLE As Double = 5.550E+7 * Kw.JOULE / _
      Kw.KILOGRAM * METHANE_MASS
Public Const METHANEJPKG As Double = METHANEJPMOLE / METHANE_MASS
Public Const METHANEJPKGTOTAL As Double = METHANEJPMOLE / _
      (METHANE_MASS + (0.5 * 4 + 2.0 * 1 - 1.0 * 0) * O_MASS)
Public Const ETHANE_MASS As Double = 6 * H_MASS + 2 * C_MASS _
      + 0 * O_MASS
Public Const ETHANEMASS As Double = 6 * HMASS + 2 * CMASS + 0 _
      * OMASS
Public Const ETHANEJPMOLE As Double = 5.190E+7 * Kw.JOULE / _
      Kw.KILOGRAM * ETHANE_MASS
Public Const ETHANEJPKG As Double = ETHANEJPMOLE / ETHANE_MASS
Public Const ETHANEJPKGTOTAL As Double = ETHANEJPMOLE / _
      (ETHANE_MASS + (0.5 * 6 + 2.0 * 2 - 1.0 * 0) * O_MASS)
Public Const PROPANE_MASS As Double = 8 * H_MASS + 3 * C_MASS _
      + 0 * O_MASS
Public Const PROPANEMASS As Double = 8 * HMASS + 3 * CMASS + _
      0 * OMASS
Public Const PROPANEJPMOLE As Double = 5.035E+7 * Kw.JOULE / _
      Kw.KILOGRAM * PROPANE_MASS
Public Const PROPANEJPKG As Double = PROPANEJPMOLE / PROPANE_MASS
Public Const PROPANEJPKGTOTAL As Double = PROPANEJPMOLE / _
      (PROPANE_MASS + (0.5 * 8 + 2.0 * 3 - 1.0 * 0) * O_MASS)
Public Const BUTANE_MASS As Double = 10 * H_MASS + 4 * C_MASS _
      + 0 * O_MASS
Public Const BUTANEMASS As Double = 10 * HMASS + 4 * CMASS + _
      0 * OMASS
Public Const BUTANEJPMOLE As Double = 4.950E+7 * Kw.JOULE / _
      Kw.KILOGRAM * BUTANE_MASS
Public Const BUTANEJPKG As Double = BUTANEJPMOLE / BUTANE_MASS
Public Const BUTANEJPKGTOTAL As Double = BUTANEJPMOLE / _
      (BUTANE_MASS + (0.5 * 10 + 2.0 * 4 - 1.0 * 0) * O_MASS)
Public Const ETHANOL_MASS As Double = 6 * H_MASS + 2 * C_MASS _
      + 1 * O_MASS
Public Const ETHANOLMASS As Double = 6 * HMASS + 2 * CMASS + _
      1 * OMASS
Public Const ETHANOLJPMOLE As Double = 2.97E+7 * Kw.JOULE / _
      Kw.KILOGRAM * ETHANOL_MASS
Public Const ETHANOLJPKG As Double = ETHANOLJPMOLE / ETHANOL_MASS
Public Const ETHANOLJPKGTOTAL As Double = ETHANOLJPMOLE / _
      (ETHANOL_MASS + (0.5 * 6 + 2.0 * 2 - 1.0 * 1) * O_MASS)
Public Const SUGAR_MASS As Double = 22 * H_MASS + 12 * C_MASS _
      + 11 * O_MASS
Public Const SUGARMASS As Double = 22 * HMASS + 12 * CMASS + _
      11 * OMASS
Public Const SUGARJPMOLE As Double = 1.619E+7 * Kw.JOULE / _
      Kw.KILOGRAM * SUGAR_MASS
Public Const SUGARJPKG As Double = SUGARJPMOLE / SUGAR_MASS
Public Const SUGARJPKGTOTAL As Double = SUGARJPMOLE / _
      (SUGAR_MASS + (0.5 * 22 + 2.0 * 12 - 1.0 * 11) * O_MASS)
Public Const COAL_MASS As Double = 0 * H_MASS + 1 * C_MASS + _
      0 * O_MASS
Public Const COALMASS As Double = 0 * HMASS + 1 * CMASS + 0 * _
      OMASS
Public Const COALJPMOLE As Double = 3.0E+7 * Kw.JOULE / _
      Kw.KILOGRAM * COAL_MASS
Public Const COALJPKG As Double = COALJPMOLE / COAL_MASS
Public Const COALJPKGTOTAL As Double = COALJPMOLE / _
      (COAL_MASS + (0.5 * 0 + 2.0 * 1 - 1.0 * 0) * O_MASS)
Public Const PARAFFIN_MASS As Double = 62 * H_MASS + 30 * _
      C_MASS + 0 * O_MASS
Public Const PARAFFINMASS As Double = 62 * HMASS + 30 * CMASS _
      + 0 * OMASS
Public Const PARAFFINJPMOLE As Double = 4.6E+7 * Kw.JOULE / _
      Kw.KILOGRAM * PARAFFIN_MASS
Public Const PARAFFINJPKG As Double = PARAFFINJPMOLE / _
      PARAFFIN_MASS
Public Const PARAFFINJPKGTOTAL As Double = PARAFFINJPMOLE / _
      (PARAFFIN_MASS + (0.5 * 62 + 2.0 * 30 - 1.0 * 0) * O_MASS)
Public Const FAT_MASS As Double = 100 * H_MASS + 60 * C_MASS _
      + 6 * O_MASS
Public Const FATMASS As Double = 100 * HMASS + 60 * CMASS + 6 _
      * OMASS
Public Const FATJPMOLE As Double = 3.7E+7 * Kw.JOULE / _
      Kw.KILOGRAM * FAT_MASS
Public Const FATJPKG As Double = FATJPMOLE / FAT_MASS
Public Const FATJPKGTOTAL As Double = FATJPMOLE / (FAT_MASS + _
      (0.5 * 100 + 2.0 * 60 - 1.0 * 6) * O_MASS)
Public Const DIESEL_MASS As Double = 26 * H_MASS + 12 * _
      C_MASS + 0 * O_MASS
Public Const DIESELMASS As Double = 26 * HMASS + 12 * CMASS + _
      0 * OMASS
Public Const DIESELJPMOLE As Double = 4.48E+7 * Kw.JOULE / _
      Kw.KILOGRAM * DIESEL_MASS
Public Const DIESELJPKG As Double = DIESELJPMOLE / DIESEL_MASS
Public Const DIESELJPKGTOTAL As Double = DIESELJPMOLE / _
      (DIESEL_MASS + (0.5 * 26 + 2.0 * 12 - 1.0 * 0) * O_MASS)
Public Const GASOLINE_MASS As Double = 18 * H_MASS + 8 * _
      C_MASS + 0 * O_MASS
Public Const GASOLINEMASS As Double = 18 * HMASS + 8 * CMASS _
      + 0 * OMASS
Public Const GASOLINEJPMOLE As Double = 4.64E+7 * Kw.JOULE / _
      Kw.KILOGRAM * GASOLINE_MASS
Public Const GASOLINEJPKG As Double = GASOLINEJPMOLE / _
      GASOLINE_MASS
Public Const GASOLINEJPKGTOTAL As Double = GASOLINEJPMOLE / _
      (GASOLINE_MASS + (0.5 * 18 + 2.0 * 8 - 1.0 * 0) * O_MASS)
Public Const SUCROSE_MASS As Double = C12H22O11_MASS
Public Const TNTJPKG As Double = 4.184E+6 * Kw.JOULE / _
      Kw.KILOGRAM
Public Const SUGARDENSITY As Double = 845 * Kw.DENSITY
Public Const DIESELDENSITY As Double = 832 * Kw.DENSITY
Public Const GASOLINEDENSITY As Double = 748.9 * Kw.DENSITY
Public Const ETHANOLDENSITY As Double = 789 * Kw.DENSITY
Public Const PARAFFINDENSITY As Double = 900 * Kw.DENSITY
Public Const FATDENSITY As Double = 900 * Kw.DENSITY
'IMPORT "Kw"
'   DDDDDDDDDDescription --------------- kwelements_description #
Public Function kwelements_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwelements Constants: Ac_BOIL Ac_Cp Ac_DENSITY " _
         & "Ac_En Ac_MASS Ac_MELT AcMASS AcZ Ag_BOIL Ag_Cp Ag_" _
         & "DENSITY Ag_En Ag_MASS Ag_MELT AgMASS AgZ AIR_MASS "
   desc_string = desc_string _
         & "Al_BOIL Al_Cp Al_DENSITY Al_En Al_MASS Al_MELT AlM" _
         & "ASS AlZ Am_BOIL Am_Cp Am_DENSITY Am_En Am_MASS Am_" _
         & "MELT AmMASS AmZ Ar_BOIL Ar_Cp Ar_DENSITY Ar_En Ar_" _
         & "MASS Ar_MELT ArMASS ArZ As_BOIL As_Cp As_DENSITY A"
   desc_string = desc_string _
         & "s_En As_MASS As_MELT AsMASS AsZ At_BOIL At_Cp At_D" _
         & "ENSITY At_En At_MASS At_MELT AtMASS AtZ Au_BOIL Au" _
         & "_Cp Au_DENSITY Au_En Au_MASS Au_MELT AuMASS AuZ B_" _
         & "BOIL B_Cp B_DENSITY B_En B_MASS B_MELT Ba_BOIL Ba_"
   desc_string = desc_string _
         & "Cp Ba_DENSITY Ba_En Ba_MASS Ba_MELT BaMASS BaZ Be_" _
         & "BOIL Be_Cp Be_DENSITY Be_En Be_MASS Be_MELT BeMASS" _
         & " BeZ Bh_BOIL Bh_Cp Bh_DENSITY Bh_En Bh_MASS Bh_MEL" _
         & "T BhMASS BhZ Bi_BOIL Bi_Cp Bi_DENSITY Bi_En Bi_MAS"
   desc_string = desc_string _
         & "S Bi_MELT BiMASS BiZ Bk_BOIL Bk_Cp Bk_DENSITY Bk_E" _
         & "n Bk_MASS Bk_MELT BkMASS BkZ BMASS Br_BOIL Br_Cp B" _
         & "r_DENSITY Br_En Br_MASS Br_MELT BrMASS BrZ BUTANE_" _
         & "MASS BUTANEJPKG BUTANEJPKGTOTAL BUTANEJPMOLE BUTAN"
   desc_string = desc_string _
         & "EMASS BZ C12_MASS C12_RATIO C12H22O11_MASS C12H22O" _
         & "11MASS C12MASS C13_MASS C13_RATIO C13MASS C14_MASS" _
         & " C14_RATIO C14MASS C2H60_MASS C2H60MASS C2H6_MASS " _
         & "C2H6MASS C3H8_MASS C3H8MASS C4H10_MASS C4H10MASS C"
   desc_string = desc_string _
         & "_BOIL C_Cp C_DENSITY C_En C_M_MASS C_MASS C_MELT C" _
         & "a_BOIL Ca_Cp Ca_DENSITY Ca_En Ca_MASS Ca_MELT CaMA" _
         & "SS CaZ Cd_BOIL Cd_Cp Cd_DENSITY Cd_En Cd_MASS Cd_M" _
         & "ELT CdMASS CdZ Ce_BOIL Ce_Cp Ce_DENSITY Ce_En Ce_M"
   desc_string = desc_string _
         & "ASS Ce_MELT CeMASS CeZ Cf_BOIL Cf_Cp Cf_DENSITY Cf" _
         & "_En Cf_MASS Cf_MELT CfMASS CfZ CH3CH2OH_MASS CH3CH" _
         & "2OHMASS CH4_MASS CH4MASS Cl_BOIL Cl_Cp Cl_DENSITY " _
         & "Cl_En Cl_MASS Cl_MELT ClMASS ClZ Cm_BOIL Cm_Cp Cm_"
   desc_string = desc_string _
         & "DENSITY Cm_En Cm_MASS Cm_MELT CMASS CmMASS CmZ Cn_" _
         & "BOIL Cn_Cp Cn_DENSITY Cn_En Cn_MASS Cn_MELT CnMASS" _
         & " CnZ Co_BOIL Co_Cp Co_DENSITY Co_En Co_MASS Co_MEL" _
         & "T COAL_MASS COALJPKG COALJPKGTOTAL COALJPMOLE COAL"
   desc_string = desc_string _
         & "MASS CoMASS CoZ Cr_BOIL Cr_Cp Cr_DENSITY Cr_En Cr_" _
         & "MASS Cr_MELT CrMASS CrZ Cs_BOIL Cs_Cp Cs_DENSITY C" _
         & "s_En Cs_MASS Cs_MELT CsMASS CsZ Cu_BOIL Cu_Cp Cu_D" _
         & "ENSITY Cu_En Cu_MASS Cu_MELT CuMASS CuZ CZ Db_BOIL"
   desc_string = desc_string _
         & " Db_Cp Db_DENSITY Db_En Db_MASS Db_MELT DbMASS DbZ" _
         & " DIESEL_MASS DIESELDENSITY DIESELJPKG DIESELJPKGTO" _
         & "TAL DIESELJPMOLE DIESELMASS Ds_BOIL Ds_Cp Ds_DENSI" _
         & "TY Ds_En Ds_MASS Ds_MELT DsMASS DsZ Dy_BOIL Dy_Cp "
   desc_string = desc_string _
         & "Dy_DENSITY Dy_En Dy_MASS Dy_MELT DyMASS DyZ Er_BOI" _
         & "L Er_Cp Er_DENSITY Er_En Er_MASS Er_MELT ErMASS Er" _
         & "Z Es_BOIL Es_Cp Es_DENSITY Es_En Es_MASS Es_MELT E" _
         & "sMASS EsZ ETHANE_MASS ETHANEJPKG ETHANEJPKGTOTAL E"
   desc_string = desc_string _
         & "THANEJPMOLE ETHANEMASS ETHANOL_MASS ETHANOLDENSITY" _
         & " ETHANOLJPKG ETHANOLJPKGTOTAL ETHANOLJPMOLE ETHANO" _
         & "LMASS Eu_BOIL Eu_Cp Eu_DENSITY Eu_En Eu_MASS Eu_ME" _
         & "LT EuMASS EuZ F_BOIL F_Cp F_DENSITY F_En F_MASS F_"
   desc_string = desc_string _
         & "MELT FAT_MASS FATDENSITY FATJPKG FATJPKGTOTAL FATJ" _
         & "PMOLE FATMASS Fe_BOIL Fe_Cp Fe_DENSITY Fe_En Fe_MA" _
         & "SS Fe_MELT FeMASS FeZ Fl_BOIL Fl_Cp Fl_DENSITY Fl_" _
         & "En Fl_MASS Fl_MELT FlMASS FlZ Fm_BOIL Fm_Cp Fm_DEN"
   desc_string = desc_string _
         & "SITY Fm_En Fm_MASS Fm_MELT FMASS FmMASS FmZ Fr_BOI" _
         & "L Fr_Cp Fr_DENSITY Fr_En Fr_MASS Fr_MELT FrMASS Fr" _
         & "Z FZ Ga_BOIL Ga_Cp Ga_DENSITY Ga_En Ga_MASS Ga_MEL" _
         & "T GaMASS GASOLINE_MASS GASOLINEDENSITY GASOLINEJPK"
   desc_string = desc_string _
         & "G GASOLINEJPKGTOTAL GASOLINEJPMOLE GASOLINEMASS Ga" _
         & "Z Gd_BOIL Gd_Cp Gd_DENSITY Gd_En Gd_MASS Gd_MELT G" _
         & "dMASS GdZ Ge_BOIL Ge_Cp Ge_DENSITY Ge_En Ge_MASS G" _
         & "e_MELT GeMASS GeZ H1_MASS H1MASS H2_MASS H2MASS H3"
   desc_string = desc_string _
         & "_MASS H3MASS H_BOIL H_Cp H_DENSITY H_En H_MASS H_M" _
         & "ELT He3_MASS He3MASS He4_MASS He4MASS He_BOIL He_C" _
         & "p He_DENSITY He_En He_MASS He_MELT HeMASS HeZ Hf_B" _
         & "OIL Hf_Cp Hf_DENSITY Hf_En Hf_MASS Hf_MELT HfMASS "
   desc_string = desc_string _
         & "HfZ Hg_BOIL Hg_Cp Hg_DENSITY Hg_En Hg_MASS Hg_MELT" _
         & " HgMASS HgZ HMASS Ho_BOIL Ho_Cp Ho_DENSITY Ho_En H" _
         & "o_MASS Ho_MELT HoMASS HoZ Hs_BOIL Hs_Cp Hs_DENSITY" _
         & " Hs_En Hs_MASS Hs_MELT HsMASS HsZ HYDROGEN_MASS HY"
   desc_string = desc_string _
         & "DROGENJPKG HYDROGENJPKGTOTAL HYDROGENJPMOLE HYDROG" _
         & "ENMASS HZ I_BOIL I_Cp I_DENSITY I_En I_MASS I_MELT" _
         & " ICE_Cp IMASS In_BOIL In_Cp In_DENSITY In_En In_MA" _
         & "SS In_MELT InMASS InZ Ir_BOIL Ir_Cp Ir_DENSITY Ir_"
   desc_string = desc_string _
         & "En Ir_MASS Ir_MELT IrMASS IrZ IZ K_BOIL K_Cp K_DEN" _
         & "SITY K_En K_MASS K_MELT KMASS Kr_BOIL Kr_Cp Kr_DEN" _
         & "SITY Kr_En Kr_MASS Kr_MELT KrMASS KrZ KZ La_BOIL L" _
         & "a_Cp La_DENSITY La_En La_MASS La_MELT LaMASS LaZ L"
   desc_string = desc_string _
         & "i_BOIL Li_Cp Li_DENSITY Li_En Li_MASS Li_MELT LiMA" _
         & "SS LiZ Lr_BOIL Lr_Cp Lr_DENSITY Lr_En Lr_MASS Lr_M" _
         & "ELT LrMASS LrZ Lu_BOIL Lu_Cp Lu_DENSITY Lu_En Lu_M" _
         & "ASS Lu_MELT LuMASS LuZ Lv_BOIL Lv_Cp Lv_DENSITY Lv"
   desc_string = desc_string _
         & "_En Lv_MASS Lv_MELT LvMASS LvZ Mc_BOIL Mc_Cp Mc_DE" _
         & "NSITY Mc_En Mc_MASS Mc_MELT McMASS McZ Md_BOIL Md_" _
         & "Cp Md_DENSITY Md_En Md_MASS Md_MELT MdMASS MdZ MET" _
         & "HANE_MASS METHANEJPKG METHANEJPKGTOTAL METHANEJPMO"
   desc_string = desc_string _
         & "LE METHANEMASS Mg_BOIL Mg_Cp Mg_DENSITY Mg_En Mg_M" _
         & "ASS Mg_MELT MgMASS MgZ Mn_BOIL Mn_Cp Mn_DENSITY Mn" _
         & "_En Mn_MASS Mn_MELT MnMASS MnZ Mo_BOIL Mo_Cp Mo_DE" _
         & "NSITY Mo_En Mo_MASS Mo_MELT MoMASS MoZ Mt_BOIL Mt_"
   desc_string = desc_string _
         & "Cp Mt_DENSITY Mt_En Mt_MASS Mt_MELT MtMASS MtZ N_B" _
         & "OIL N_Cp N_DENSITY N_En N_MASS N_MELT Na_BOIL Na_C" _
         & "p Na_DENSITY Na_En Na_MASS Na_MELT NaMASS NaZ Nb_B" _
         & "OIL Nb_Cp Nb_DENSITY Nb_En Nb_MASS Nb_MELT NbMASS "
   desc_string = desc_string _
         & "NbZ Nd_BOIL Nd_Cp Nd_DENSITY Nd_En Nd_MASS Nd_MELT" _
         & " NdMASS NdZ Ne_BOIL Ne_Cp Ne_DENSITY Ne_En Ne_MASS" _
         & " Ne_MELT NeMASS NeZ Nh_BOIL Nh_Cp Nh_DENSITY Nh_En" _
         & " Nh_MASS Nh_MELT NhMASS NhZ Ni_BOIL Ni_Cp Ni_DENSI"
   desc_string = desc_string _
         & "TY Ni_En Ni_MASS Ni_MELT NiMASS NiZ NMASS No_BOIL " _
         & "No_Cp No_DENSITY No_En No_MASS No_MELT NoMASS NoZ " _
         & "Np_BOIL Np_Cp Np_DENSITY Np_En Np_MASS Np_MELT NpM" _
         & "ASS NpZ NZ O16_MASS O16MASS O17_MASS O17MASS O18_M"
   desc_string = desc_string _
         & "ASS O18MASS O_BOIL O_Cp O_DENSITY O_En O_MASS O_ME" _
         & "LT Og_BOIL Og_Cp Og_DENSITY Og_En Og_MASS Og_MELT " _
         & "OgMASS OgZ OMASS Os_BOIL Os_Cp Os_DENSITY Os_En Os" _
         & "_MASS Os_MELT OsMASS OsZ OZ P_BOIL P_Cp P_DENSITY "
   desc_string = desc_string _
         & "P_En P_MASS P_MELT Pa_BOIL Pa_Cp Pa_DENSITY Pa_En " _
         & "Pa_MASS Pa_MELT PaMASS PARAFFIN_MASS PARAFFINDENSI" _
         & "TY PARAFFINJPKG PARAFFINJPKGTOTAL PARAFFINJPMOLE P" _
         & "ARAFFINMASS PaZ Pb_BOIL Pb_Cp Pb_DENSITY Pb_En Pb_"
   desc_string = desc_string _
         & "MASS Pb_MELT PbMASS PbZ Pd_BOIL Pd_Cp Pd_DENSITY P" _
         & "d_En Pd_MASS Pd_MELT PdMASS PdZ Pm_BOIL Pm_Cp Pm_D" _
         & "ENSITY Pm_En Pm_MASS Pm_MELT PMASS PmMASS PmZ Po_B" _
         & "OIL Po_Cp Po_DENSITY Po_En Po_MASS Po_MELT PoMASS "
   desc_string = desc_string _
         & "PoZ Pr_BOIL Pr_Cp Pr_DENSITY Pr_En Pr_MASS Pr_MELT" _
         & " PrMASS PROPANE_MASS PROPANEJPKG PROPANEJPKGTOTAL " _
         & "PROPANEJPMOLE PROPANEMASS PrZ Pt_BOIL Pt_Cp Pt_DEN" _
         & "SITY Pt_En Pt_MASS Pt_MELT PtMASS PtZ Pu_BOIL Pu_C"
   desc_string = desc_string _
         & "p Pu_DENSITY Pu_En Pu_MASS Pu_MELT PuMASS PuZ PZ R" _
         & "a_BOIL Ra_Cp Ra_DENSITY Ra_En Ra_MASS Ra_MELT RaMA" _
         & "SS RaZ Rb_BOIL Rb_Cp Rb_DENSITY Rb_En Rb_MASS Rb_M" _
         & "ELT RbMASS RbZ Re_BOIL Re_Cp Re_DENSITY Re_En Re_M"
   desc_string = desc_string _
         & "ASS Re_MELT ReMASS ReZ Rf_BOIL Rf_Cp Rf_DENSITY Rf" _
         & "_En Rf_MASS Rf_MELT RfMASS RfZ Rg_BOIL Rg_Cp Rg_DE" _
         & "NSITY Rg_En Rg_MASS Rg_MELT RgMASS RgZ Rh_BOIL Rh_" _
         & "Cp Rh_DENSITY Rh_En Rh_MASS Rh_MELT RhMASS RhZ Rn_"
   desc_string = desc_string _
         & "BOIL Rn_Cp Rn_DENSITY Rn_En Rn_MASS Rn_MELT RnMASS" _
         & " RnZ Ru_BOIL Ru_Cp Ru_DENSITY Ru_En Ru_MASS Ru_MEL" _
         & "T RuMASS RuZ S_BOIL S_Cp S_DENSITY S_En S_MASS S_M" _
         & "ELT Sb_BOIL Sb_Cp Sb_DENSITY Sb_En Sb_MASS Sb_MELT"
   desc_string = desc_string _
         & " SbMASS SbZ Sc_BOIL Sc_Cp Sc_DENSITY Sc_En Sc_MASS" _
         & " Sc_MELT ScMASS ScZ Se_BOIL Se_Cp Se_DENSITY Se_En" _
         & " Se_MASS Se_MELT SeMASS SeZ Sg_BOIL Sg_Cp Sg_DENSI" _
         & "TY Sg_En Sg_MASS Sg_MELT SgMASS SgZ Si_BOIL Si_Cp "
   desc_string = desc_string _
         & "Si_DENSITY Si_En Si_MASS Si_MELT SiMASS SiZ Sm_BOI" _
         & "L Sm_Cp Sm_DENSITY Sm_En Sm_MASS Sm_MELT SMASS SmM" _
         & "ASS SmZ Sn_BOIL Sn_Cp Sn_DENSITY Sn_En Sn_MASS Sn_" _
         & "MELT SnMASS SnZ Sr_BOIL Sr_Cp Sr_DENSITY Sr_En Sr_"
   desc_string = desc_string _
         & "MASS Sr_MELT SrMASS SrZ STEAM_Cp SUCROSE_MASS SUGA" _
         & "R_MASS SUGARDENSITY SUGARJPKG SUGARJPKGTOTAL SUGAR" _
         & "JPMOLE SUGARMASS SZ Ta_BOIL Ta_Cp Ta_DENSITY Ta_En" _
         & " Ta_MASS Ta_MELT TaMASS TaZ Tb_BOIL Tb_Cp Tb_DENSI"
   desc_string = desc_string _
         & "TY Tb_En Tb_MASS Tb_MELT TbMASS TbZ Tc_BOIL Tc_Cp " _
         & "Tc_DENSITY Tc_En Tc_MASS Tc_MELT TcMASS TcZ Te_BOI" _
         & "L Te_Cp Te_DENSITY Te_En Te_MASS Te_MELT TeMASS Te" _
         & "Z Th_BOIL Th_Cp Th_DENSITY Th_En Th_MASS Th_MELT T"
   desc_string = desc_string _
         & "hMASS ThZ Ti_BOIL Ti_Cp Ti_DENSITY Ti_En Ti_MASS T" _
         & "i_MELT TiMASS TiZ Tl_BOIL Tl_Cp Tl_DENSITY Tl_En T" _
         & "l_MASS Tl_MELT TlMASS TlZ Tm_BOIL Tm_Cp Tm_DENSITY" _
         & " Tm_En Tm_MASS Tm_MELT TmMASS TmZ TNTJPKG Ts_BOIL "
   desc_string = desc_string _
         & "Ts_Cp Ts_DENSITY Ts_En Ts_MASS Ts_MELT TsMASS TsZ " _
         & "U_BOIL U_Cp U_DENSITY U_En U_MASS U_MELT UMASS UZ " _
         & "V_BOIL V_Cp V_DENSITY V_En V_MASS V_MELT VMASS VSM" _
         & "OW_H1_RATIO VSMOW_H2_RATIO VSMOW_H3_RATIO VSMOW_H_"
   desc_string = desc_string _
         & "MASS VSMOW_MASS VSMOW_O16_RATIO VSMOW_O17_RATIO VS" _
         & "MOW_O18_RATIO VSMOW_O_MASS VZ W_BOIL W_Cp W_DENSIT" _
         & "Y W_En W_MASS W_MELT WATER_Cp WATER_FUSION WATER_M" _
         & "ASS WATER_VAPORIZATION WATERMASS WMASS WZ Xe_BOIL "
   desc_string = desc_string _
         & "Xe_Cp Xe_DENSITY Xe_En Xe_MASS Xe_MELT XeMASS XeZ " _
         & "Y_BOIL Y_Cp Y_DENSITY Y_En Y_MASS Y_MELT Yb_BOIL Y" _
         & "b_Cp Yb_DENSITY Yb_En Yb_MASS Yb_MELT YbMASS YbZ Y" _
         & "MASS YZ Zn_BOIL Zn_Cp Zn_DENSITY Zn_En Zn_MASS Zn_" _
         & "MELT ZnMASS ZnZ Zr_BOIL Zr_Cp Zr_DENSITY Zr_En Zr_" _
         & "MASS Zr_MELT ZrMASS ZrZ"
   kwelements_description = desc_string
End Function
Public Function kwelements_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwelements Constants: Ac_(BOIL|Cp|DENSITY|En|M(" _
         & "ASS|ELT)) AcMASS AcZ Ag_(BOIL|Cp|DENSITY|En|M(ASS|" _
         & "ELT)) AgMASS AgZ AIR_MASS Al_(BOIL|Cp|DENSITY|En|M"
   desc_string = desc_string _
         & "(ASS|ELT)) AlMASS AlZ Am_(BOIL|Cp|DENSITY|En|M(ASS" _
         & "|ELT)) AmMASS AmZ Ar_(BOIL|Cp|DENSITY|En|M(ASS|ELT" _
         & ")) ArMASS ArZ As_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) A" _
         & "sMASS AsZ At_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AtMAS"
   desc_string = desc_string _
         & "S AtZ Au_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AuMASS Au" _
         & "Z B_BOIL B_Cp B_DENSITY B_En B_M(ASS|ELT) Ba_(BOIL" _
         & "|Cp|DENSITY|En|M(ASS|ELT)) BaMASS BaZ Be_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)) BeMASS BeZ Bh_(BOIL|Cp|DENS"
   desc_string = desc_string _
         & "ITY|En|M(ASS|ELT)) BhMASS BhZ Bi_(BOIL|Cp|DENSITY|" _
         & "En|M(ASS|ELT)) BiMASS BiZ Bk_(BOIL|Cp|DENSITY|En|M" _
         & "(ASS|ELT)) BkMASS BkZ BMASS Br_(BOIL|Cp|DENSITY|En" _
         & "|M(ASS|ELT)) BrMASS BrZ BUTANE(_MASS|JP(KG(TOTAL)?"
   desc_string = desc_string _
         & "|MOLE)|MASS) BZ C12(_(MASS|RATIO)|H22O11(_MASS|MAS" _
         & "S)|MASS) C13(_(MASS|RATIO)|MASS) C14(_(MASS|RATIO)" _
         & "|MASS) C2H6(0(_MASS|MASS)|_MASS|MASS) C3H8(_MASS|M" _
         & "ASS) C4H10(_MASS|MASS) C_BOIL C_Cp C_DENSITY C_En "
   desc_string = desc_string _
         & "C_M(_MASS|ASS|ELT) Ca_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)) CaMASS CaZ Cd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) " _
         & "CdMASS CdZ Ce_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CeMA" _
         & "SS CeZ Cf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CfMASS C"
   desc_string = desc_string _
         & "fZ CH3CH2OH(_MASS|MASS) CH4(_MASS|MASS) Cl_(BOIL|C" _
         & "p|DENSITY|En|M(ASS|ELT)) ClMASS ClZ Cm_(BOIL|Cp|DE" _
         & "NSITY|En|M(ASS|ELT)) CMASS CmMASS CmZ Cn_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)) CnMASS CnZ Co_(BOIL|Cp|DENS"
   desc_string = desc_string _
         & "ITY|En|M(ASS|ELT)) COAL(_MASS|JP(KG(TOTAL)?|MOLE)|" _
         & "MASS) CoMASS CoZ Cr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" _
         & ") CrMASS CrZ Cs_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) Cs" _
         & "MASS CsZ Cu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CuMASS"
   desc_string = desc_string _
         & " CuZ CZ Db_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) DbMASS " _
         & "DbZ DIESEL(_MASS|DENSITY|JP(KG(TOTAL)?|MOLE)|MASS)" _
         & " Ds_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) DsMASS DsZ Dy_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)) DyMASS DyZ Er_(BOI"
   desc_string = desc_string _
         & "L|Cp|DENSITY|En|M(ASS|ELT)) ErMASS ErZ Es_(BOIL|Cp" _
         & "|DENSITY|En|M(ASS|ELT)) EsMASS EsZ ETHAN(E(_MASS|J" _
         & "P(KG(TOTAL)?|MOLE)|MASS)|OL(_MASS|DENSITY|JP(KG(TO" _
         & "TAL)?|MOLE)|MASS)) Eu_(BOIL|Cp|DENSITY|En|M(ASS|EL"
   desc_string = desc_string _
         & "T)) EuMASS EuZ F_BOIL F_Cp F_DENSITY F_En F_M(ASS|" _
         & "ELT) FAT(_MASS|DENSITY|JP(KG(TOTAL)?|MOLE)|MASS) F" _
         & "e_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) FeMASS FeZ Fl_(B" _
         & "OIL|Cp|DENSITY|En|M(ASS|ELT)) FlMASS FlZ Fm_(BOIL|"
   desc_string = desc_string _
         & "Cp|DENSITY|En|M(ASS|ELT)) FMASS FmMASS FmZ Fr_(BOI" _
         & "L|Cp|DENSITY|En|M(ASS|ELT)) FrMASS FrZ FZ Ga_(BOIL" _
         & "|Cp|DENSITY|En|M(ASS|ELT)) GaMASS GASOLINE(_MASS|D" _
         & "ENSITY|JP(KG(TOTAL)?|MOLE)|MASS) GaZ Gd_(BOIL|Cp|D"
   desc_string = desc_string _
         & "ENSITY|En|M(ASS|ELT)) GdMASS GdZ Ge_(BOIL|Cp|DENSI" _
         & "TY|En|M(ASS|ELT)) GeMASS GeZ H1_MASS H1MASS H2_MAS" _
         & "S H2MASS H3_MASS H3MASS H_BOIL H_Cp H_DENSITY H_En" _
         & " H_M(ASS|ELT) He3(_MASS|MASS) He4(_MASS|MASS) He_("
   desc_string = desc_string _
         & "BOIL|Cp|DENSITY|En|M(ASS|ELT)) HeMASS HeZ Hf_(BOIL" _
         & "|Cp|DENSITY|En|M(ASS|ELT)) HfMASS HfZ Hg_(BOIL|Cp|" _
         & "DENSITY|En|M(ASS|ELT)) HgMASS HgZ HMASS Ho_(BOIL|C" _
         & "p|DENSITY|En|M(ASS|ELT)) HoMASS HoZ Hs_(BOIL|Cp|DE"
   desc_string = desc_string _
         & "NSITY|En|M(ASS|ELT)) HsMASS HsZ HYDROGEN(_MASS|JP(" _
         & "KG(TOTAL)?|MOLE)|MASS) HZ I_BOIL I_Cp I_DENSITY I_" _
         & "En I_M(ASS|ELT) ICE_Cp IMASS In_(BOIL|Cp|DENSITY|E" _
         & "n|M(ASS|ELT)) InMASS InZ Ir_(BOIL|Cp|DENSITY|En|M("
   desc_string = desc_string _
         & "ASS|ELT)) IrMASS IrZ IZ K_BOIL K_Cp K_DENSITY K_En" _
         & " K_M(ASS|ELT) KMASS Kr_(BOIL|Cp|DENSITY|En|M(ASS|E" _
         & "LT)) KrMASS KrZ KZ La_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)) LaMASS LaZ Li_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) "
   desc_string = desc_string _
         & "LiMASS LiZ Lr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) LrMA" _
         & "SS LrZ Lu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) LuMASS L" _
         & "uZ Lv_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) LvMASS LvZ M" _
         & "c_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) McMASS McZ Md_(B"
   desc_string = desc_string _
         & "OIL|Cp|DENSITY|En|M(ASS|ELT)) MdMASS MdZ METHANE(_" _
         & "MASS|JP(KG(TOTAL)?|MOLE)|MASS) Mg_(BOIL|Cp|DENSITY" _
         & "|En|M(ASS|ELT)) MgMASS MgZ Mn_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)) MnMASS MnZ Mo_(BOIL|Cp|DENSITY|En|M(AS"
   desc_string = desc_string _
         & "S|ELT)) MoMASS MoZ Mt_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)) MtMASS MtZ N_BOIL N_Cp N_DENSITY N_En N_M(ASS|" _
         & "ELT) Na_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NaMASS NaZ" _
         & " Nb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NbMASS NbZ Nd_"
   desc_string = desc_string _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NdMASS NdZ Ne_(BOI" _
         & "L|Cp|DENSITY|En|M(ASS|ELT)) NeMASS NeZ Nh_(BOIL|Cp" _
         & "|DENSITY|En|M(ASS|ELT)) NhMASS NhZ Ni_(BOIL|Cp|DEN" _
         & "SITY|En|M(ASS|ELT)) NiMASS NiZ NMASS No_(BOIL|Cp|D"
   desc_string = desc_string _
         & "ENSITY|En|M(ASS|ELT)) NoMASS NoZ Np_(BOIL|Cp|DENSI" _
         & "TY|En|M(ASS|ELT)) NpMASS NpZ NZ O16(_MASS|MASS) O1" _
         & "7(_MASS|MASS) O18(_MASS|MASS) O_BOIL O_Cp O_DENSIT" _
         & "Y O_En O_M(ASS|ELT) Og_(BOIL|Cp|DENSITY|En|M(ASS|E"
   desc_string = desc_string _
         & "LT)) OgMASS OgZ OMASS Os_(BOIL|Cp|DENSITY|En|M(ASS" _
         & "|ELT)) OsMASS OsZ OZ P_BOIL P_Cp P_DENSITY P_En P_" _
         & "M(ASS|ELT) Pa_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PaMA" _
         & "SS PARAFFIN(_MASS|DENSITY|JP(KG(TOTAL)?|MOLE)|MASS"
   desc_string = desc_string _
         & ") PaZ Pb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PbMASS Pb" _
         & "Z Pd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PdMASS PdZ Pm" _
         & "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PMASS PmMASS PmZ " _
         & "Po_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PoMASS PoZ Pr_("
   desc_string = desc_string _
         & "BOIL|Cp|DENSITY|En|M(ASS|ELT)) PrMASS PROPANE(_MAS" _
         & "S|JP(KG(TOTAL)?|MOLE)|MASS) PrZ Pt_(BOIL|Cp|DENSIT" _
         & "Y|En|M(ASS|ELT)) PtMASS PtZ Pu_(BOIL|Cp|DENSITY|En" _
         & "|M(ASS|ELT)) PuMASS PuZ PZ Ra_(BOIL|Cp|DENSITY|En|"
   desc_string = desc_string _
         & "M(ASS|ELT)) RaMASS RaZ Rb_(BOIL|Cp|DENSITY|En|M(AS" _
         & "S|ELT)) RbMASS RbZ Re_(BOIL|Cp|DENSITY|En|M(ASS|EL" _
         & "T)) ReMASS ReZ Rf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) " _
         & "RfMASS RfZ Rg_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RgMA"
   desc_string = desc_string _
         & "SS RgZ Rh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RhMASS R" _
         & "hZ Rn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RnMASS RnZ R" _
         & "u_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RuMASS RuZ S_BOI" _
         & "L S_Cp S_DENSITY S_En S_M(ASS|ELT) Sb_(BOIL|Cp|DEN"
   desc_string = desc_string _
         & "SITY|En|M(ASS|ELT)) SbMASS SbZ Sc_(BOIL|Cp|DENSITY" _
         & "|En|M(ASS|ELT)) ScMASS ScZ Se_(BOIL|Cp|DENSITY|En|" _
         & "M(ASS|ELT)) SeMASS SeZ Sg_(BOIL|Cp|DENSITY|En|M(AS" _
         & "S|ELT)) SgMASS SgZ Si_(BOIL|Cp|DENSITY|En|M(ASS|EL"
   desc_string = desc_string _
         & "T)) SiMASS SiZ Sm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) " _
         & "SMASS SmMASS SmZ Sn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" _
         & ") SnMASS SnZ Sr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) Sr" _
         & "MASS SrZ STEAM_Cp SUCROSE_MASS SUGAR(_MASS|DENSITY"
   desc_string = desc_string _
         & "|JP(KG(TOTAL)?|MOLE)|MASS) SZ Ta_(BOIL|Cp|DENSITY|" _
         & "En|M(ASS|ELT)) TaMASS TaZ Tb_(BOIL|Cp|DENSITY|En|M" _
         & "(ASS|ELT)) TbMASS TbZ Tc_(BOIL|Cp|DENSITY|En|M(ASS" _
         & "|ELT)) TcMASS TcZ Te_(BOIL|Cp|DENSITY|En|M(ASS|ELT"
   desc_string = desc_string _
         & ")) TeMASS TeZ Th_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) T" _
         & "hMASS ThZ Ti_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TiMAS" _
         & "S TiZ Tl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TlMASS Tl" _
         & "Z Tm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TmMASS TmZ TN"
   desc_string = desc_string _
         & "TJPKG Ts_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TsMASS Ts" _
         & "Z U_BOIL U_Cp U_DENSITY U_En U_M(ASS|ELT) UMASS UZ" _
         & " V_BOIL V_Cp V_DENSITY V_En V_M(ASS|ELT) VMASS VSM" _
         & "OW_(H(1_RATIO|2_RATIO|3_RATIO|_MASS)|MASS|O(1[678]"
   desc_string = desc_string _
         & "_RATIO|_MASS)) VZ W_BOIL W_Cp W_DENSITY W_En W_M(A" _
         & "SS|ELT) WATER(_(Cp|FUSION|MASS|VAPORIZATION)|MASS)" _
         & " WMASS WZ Xe_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) XeMAS" _
         & "S XeZ Y_BOIL Y_Cp Y_DENSITY Y_En Y_M(ASS|ELT) Yb_(" _
         & "BOIL|Cp|DENSITY|En|M(ASS|ELT)) YbMASS YbZ YMASS YZ" _
         & " Zn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ZnMASS ZnZ Zr_" _
         & "(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ZrMASS ZrZ"
   kwelements_desc = desc_string
End Function
End Class
