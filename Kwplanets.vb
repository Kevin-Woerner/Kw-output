'    Copyright (C) 2021 by Kevin D. Woerner
''-' =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
''-' =KDW= ######### SOURCE $KWROOT/codekdw/kw-lib/Kwplanets.fwipp ##########
''-' =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
''-' =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
' 2021-05-14 kdw  For Changelog, See File Kwplanets.varylog
Option Explicit On
Imports System.IO.Filestream
Public Class KWPLANETS
   Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables ############################### LANG_VBDOTNET #
Public Const SUN_GM As Double = 1.32712440018E+20 * Kw.UNITGM
Public Const SUN_YEAR As Double = 0.0 * Kw.EARTH_SOLARDAY
Public Const SUN_DAY As Double = 24.47 * Kw.EARTH_SOLARDAY
Public Const MERCURY_GM As Double = 2.2032E+13 * Kw.UNITGM
Public Const MERCURY_YEAR As Double = 87.9691 * Kw.EARTH_SOLARDAY
Public Const MERCURY_DAY As Double = 58.6462 * Kw.EARTH_SOLARDAY
Public Const VENUS_GM As Double = 3.24859E+14 * Kw.UNITGM
Public Const VENUS_YEAR As Double = 224.701 * Kw.EARTH_SOLARDAY
Public Const VENUS_DAY As Double = -243.018 * Kw.EARTH_SOLARDAY
Public Const MARS_GM As Double = 4.282837E+13 * Kw.UNITGM
Public Const MARS_YEAR As Double = 686.971 * Kw.EARTH_SOLARDAY
Public Const MARS_DAY As Double = 1.02595676 * Kw.EARTH_SOLARDAY
Public Const EARTH_GM As Double = 3.986004418E+14 * Kw.UNITGM
Public Const EARTH_YEAR As Double = 365.256363004 * Kw.EARTH_SOLARDAY
Public Const EARTH_DAY As Double = 1.0 / 1.00273781191135448 * _
         Kw.EARTH_SOLARDAY
Public Const JUPITER_GM As Double = 1.26686534E+17 * Kw.UNITGM
Public Const JUPITER_YEAR As Double = 4332.59 * Kw.EARTH_SOLARDAY
Public Const JUPITER_DAY As Double = 0.41354 * Kw.EARTH_SOLARDAY
Public Const SATURN_GM As Double = 3.7931187E+16 * Kw.UNITGM
Public Const SATURN_YEAR As Double = 10759.22 * Kw.EARTH_SOLARDAY
Public Const SATURN_DAY As Double = 0.44401 * Kw.EARTH_SOLARDAY
Public Const URANUS_GM As Double = 5.793939E+15 * Kw.UNITGM
Public Const URANUS_YEAR As Double = 30688.5 * Kw.EARTH_SOLARDAY
Public Const URANUS_DAY As Double = -0.71833 * Kw.EARTH_SOLARDAY
Public Const NEPTUNE_GM As Double = 6.836529E+15 * Kw.UNITGM
Public Const NEPTUNE_YEAR As Double = 6.0182E+4 * Kw.EARTH_SOLARDAY
Public Const NEPTUNE_DAY As Double = 0.67125 * Kw.EARTH_SOLARDAY
Public Const PLUTO_GM As Double = 8.71E+11 * Kw.UNITGM
Public Const PLUTO_YEAR As Double = 9.056E+4 * Kw.EARTH_SOLARDAY
Public Const PLUTO_DAY As Double = 6.38723 * Kw.EARTH_SOLARDAY
Public Const MOON_GM As Double = 4.9048695E+12 * Kw.UNITGM
Public Const MOON_YEAR As Double = 27.32166155 * Kw.EARTH_SOLARDAY
Public Const MOON_DAY As Double = 27.321661 * Kw.EARTH_SOLARDAY
Public Const CERES_GM As Double = 6.26325E+10 * Kw.UNITGM
Public Const CERES_YEAR As Double = 1681.63 * Kw.EARTH_SOLARDAY
Public Const CERES_DAY As Double = 0.378090 * Kw.EARTH_SOLARDAY
Public Const ERIS_GM As Double = 1.108E+12 * Kw.UNITGM
Public Const ERIS_YEAR As Double = 2.0383E+5 * Kw.EARTH_SOLARDAY
Public Const ERIS_DAY As Double = 1.0792 * Kw.EARTH_SOLARDAY
Public Const MAKEMAKE_GM As Double = 2.9366E+11 * Kw.UNITGM
Public Const MAKEMAKE_YEAR As Double = 1.12897E+5 * Kw.EARTH_SOLARDAY
Public Const MAKEMAKE_DAY As Double = 0.32379 * Kw.EARTH_SOLARDAY
Public Const HAUMEA_GM As Double = 2.674E+11 * Kw.UNITGM
Public Const HAUMEA_YEAR As Double = 1.03774E+5 * Kw.EARTH_SOLARDAY
Public Const HAUMEA_DAY As Double = 0.16314585 * Kw.EARTH_SOLARDAY
Public Const EARTH_SIDEREALDAY As Double = Kw.EARTH_SOLARDAY / _
         1.002737909350795
Public Const EARTH_STELLARDAY As Double = EARTH_DAY
Public Const EARTH_TROPICALYEAR As Double = 365.242190402 * Kw.EARTH_SOLARDAY
Public Const EARTH_SIDEREALYEAR As Double = EARTH_YEAR
Public Const EARTH_ANOMALISTICYEAR As Double = 365.259636 * Kw.EARTH_SOLARDAY
Public Const SIDEREALYEAR As Double = EARTH_SIDEREALYEAR
Public Const ANOMALISTICYEAR As Double = EARTH_ANOMALISTICYEAR
Public Const TROPICALYEAR As Double = EARTH_TROPICALYEAR
Public Const SUN_FLATNESS As Double = 9.0E-6
Public Const SUN_A As Double = 6.957E+8 * Kw.METER
Public Const SUN_C As Double = SUN_A
Public Const MERCURY_FLATNESS As Double = 0.0
Public Const MERCURY_A As Double = 2.4397E+6 * Kw.METER
Public Const MERCURY_C As Double = MERCURY_A
Public Const VENUS_FLATNESS As Double = 0.0
Public Const VENUS_A As Double = 6.0518E+6 * Kw.METER
Public Const VENUS_C As Double = VENUS_A
Public Const EARTH_FLATNESS As Double = 1.0 / 298.257223563
Public Const EARTH_A As Double = 6.378137E+6 * Kw.METER
Public Const EARTH_C As Double = EARTH_A
Public Const MARS_FLATNESS As Double = 1.0 / 169.81
Public Const MARS_A As Double = 3.3962E+6 * Kw.METER
Public Const MARS_C As Double = MARS_A
Public Const JUPITER_FLATNESS As Double = 1.0 / 15.4144028
Public Const JUPITER_A As Double = 7.1492E+7 * Kw.METER
Public Const JUPITER_C As Double = JUPITER_A
Public Const SATURN_FLATNESS As Double = 1.0 / 10.208
Public Const SATURN_A As Double = 6.0268E+7 * Kw.METER
Public Const SATURN_C As Double = SATURN_A
Public Const URANUS_FLATNESS As Double = 1.0 / 43.61604
Public Const URANUS_A As Double = 2.5559E+7 * Kw.METER
Public Const URANUS_C As Double = URANUS_A
Public Const NEPTUNE_FLATNESS As Double = 1.0 / 58.54373
Public Const NEPTUNE_A As Double = 2.4764E+7 * Kw.METER
Public Const NEPTUNE_C As Double = NEPTUNE_A
Public Const PLUTO_FLATNESS As Double = 0.0
Public Const PLUTO_A As Double = 1.1899E+6 * Kw.METER
Public Const PLUTO_C As Double = PLUTO_A
Public Const MOON_FLATNESS As Double = 1.0 / 827.667
Public Const MOON_A As Double = 1.7381E+6 * Kw.METER
Public Const MOON_C As Double = MOON_A
Public Const CERES_FLATNESS As Double = 1.0 / 13.0432
Public Const CERES_A As Double = 4.826E+5 * Kw.METER
Public Const CERES_C As Double = 4.806E+5 * Kw.METER
Public Const ERIS_FLATNESS As Double = 0.0
Public Const ERIS_A As Double = 1.163E+6 * Kw.METER
Public Const ERIS_C As Double = ERIS_A
Public Const MAKEMAKE_FLATNESS As Double = 1.0 / 30.7917
Public Const MAKEMAKE_A As Double = 7.39E+5 * Kw.METER
Public Const MAKEMAKE_C As Double = MAKEMAKE_A
Public Const HAUMEA_FLATNESS As Double = 1.0 / 1.96115
Public Const HAUMEA_A As Double = 1.161E+6 * Kw.METER
Public Const HAUMEA_C As Double = 8.52E+5 * Kw.METER
Public Const SUN_B As Double = SUN_A * (1.0 - SUN_FLATNESS)
Public Const SUN_RADIUS As Double = (SUN_A + SUN_B + SUN_C) / 3.0
Public Const SUN_GRAVITY As Double = SUN_GM / (SUN_RADIUS * SUN_RADIUS)
Public Const SUN_MASS As Double = SUN_GM / Kw.GRAVITATION
Public Const SUN_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * SUN_RADIUS * _
         SUN_RADIUS * SUN_RADIUS
Public Const SUN_SURFACE As Double = 2.0 * Kw.TAU * SUN_RADIUS * SUN_RADIUS
Public Const SUN_DENSITY As Double = SUN_MASS / SUN_VOLUME
Public Const EARTH_B As Double = EARTH_A * (1.0 - EARTH_FLATNESS)
Public Const EARTH_RADIUS As Double = (EARTH_A + EARTH_B + EARTH_C) / 3.0
Public Const EARTH_GRAVITY As Double = EARTH_GM / (EARTH_RADIUS * _
         EARTH_RADIUS)
Public Const EARTH_MASS As Double = EARTH_GM / Kw.GRAVITATION
Public Const EARTH_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * EARTH_RADIUS * _
         EARTH_RADIUS * EARTH_RADIUS
Public Const EARTH_SURFACE As Double = 2.0 * Kw.TAU * EARTH_RADIUS * _
         EARTH_RADIUS
Public Const EARTH_DENSITY As Double = EARTH_MASS / EARTH_VOLUME
Public Const MERCURY_B As Double = MERCURY_A * (1.0 - MERCURY_FLATNESS)
Public Const MERCURY_RADIUS As Double = (MERCURY_A + MERCURY_B + _
         MERCURY_C) / 3.0
Public Const MERCURY_GRAVITY As Double = MERCURY_GM / (MERCURY_RADIUS * _
         MERCURY_RADIUS)
Public Const MERCURY_MASS As Double = MERCURY_GM / Kw.GRAVITATION
Public Const MERCURY_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
         MERCURY_RADIUS * MERCURY_RADIUS * MERCURY_RADIUS
Public Const MERCURY_SURFACE As Double = 2.0 * Kw.TAU * MERCURY_RADIUS * _
         MERCURY_RADIUS
Public Const MERCURY_DENSITY As Double = MERCURY_MASS / MERCURY_VOLUME
Public Const MERCURY_SYNODIC As Double = EARTH_SIDEREALYEAR * _
         MERCURY_YEAR / (MERCURY_YEAR - EARTH_SIDEREALYEAR)
Public Const VENUS_B As Double = VENUS_A * (1.0 - VENUS_FLATNESS)
Public Const VENUS_RADIUS As Double = (VENUS_A + VENUS_B + VENUS_C) / 3.0
Public Const VENUS_GRAVITY As Double = VENUS_GM / (VENUS_RADIUS * _
         VENUS_RADIUS)
Public Const VENUS_MASS As Double = VENUS_GM / Kw.GRAVITATION
Public Const VENUS_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * VENUS_RADIUS * _
         VENUS_RADIUS * VENUS_RADIUS
Public Const VENUS_SURFACE As Double = 2.0 * Kw.TAU * VENUS_RADIUS * _
         VENUS_RADIUS
Public Const VENUS_DENSITY As Double = VENUS_MASS / VENUS_VOLUME
Public Const VENUS_SYNODIC As Double = EARTH_SIDEREALYEAR * VENUS_YEAR / _
         (VENUS_YEAR - EARTH_SIDEREALYEAR)
Public Const MARS_B As Double = MARS_A * (1.0 - MARS_FLATNESS)
Public Const MARS_RADIUS As Double = (MARS_A + MARS_B + MARS_C) / 3.0
Public Const MARS_GRAVITY As Double = MARS_GM / (MARS_RADIUS * MARS_RADIUS)
Public Const MARS_MASS As Double = MARS_GM / Kw.GRAVITATION
Public Const MARS_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * MARS_RADIUS * _
         MARS_RADIUS * MARS_RADIUS
Public Const MARS_SURFACE As Double = 2.0 * Kw.TAU * MARS_RADIUS * _
         MARS_RADIUS
Public Const MARS_DENSITY As Double = MARS_MASS / MARS_VOLUME
Public Const MARS_SYNODIC As Double = EARTH_SIDEREALYEAR * MARS_YEAR / _
         (MARS_YEAR - EARTH_SIDEREALYEAR)
Public Const JUPITER_B As Double = JUPITER_A * (1.0 - JUPITER_FLATNESS)
Public Const JUPITER_RADIUS As Double = (JUPITER_A + JUPITER_B + _
         JUPITER_C) / 3.0
Public Const JUPITER_GRAVITY As Double = JUPITER_GM / (JUPITER_RADIUS * _
         JUPITER_RADIUS)
Public Const JUPITER_MASS As Double = JUPITER_GM / Kw.GRAVITATION
Public Const JUPITER_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
         JUPITER_RADIUS * JUPITER_RADIUS * JUPITER_RADIUS
Public Const JUPITER_SURFACE As Double = 2.0 * Kw.TAU * JUPITER_RADIUS * _
         JUPITER_RADIUS
Public Const JUPITER_DENSITY As Double = JUPITER_MASS / JUPITER_VOLUME
Public Const JUPITER_SYNODIC As Double = EARTH_SIDEREALYEAR * _
         JUPITER_YEAR / (JUPITER_YEAR - EARTH_SIDEREALYEAR)
Public Const SATURN_B As Double = SATURN_A * (1.0 - SATURN_FLATNESS)
Public Const SATURN_RADIUS As Double = (SATURN_A + SATURN_B + SATURN_C) / 3.0
Public Const SATURN_GRAVITY As Double = SATURN_GM / (SATURN_RADIUS * _
         SATURN_RADIUS)
Public Const SATURN_MASS As Double = SATURN_GM / Kw.GRAVITATION
Public Const SATURN_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * SATURN_RADIUS _
         * SATURN_RADIUS * SATURN_RADIUS
Public Const SATURN_SURFACE As Double = 2.0 * Kw.TAU * SATURN_RADIUS * _
         SATURN_RADIUS
Public Const SATURN_DENSITY As Double = SATURN_MASS / SATURN_VOLUME
Public Const SATURN_SYNODIC As Double = EARTH_SIDEREALYEAR * SATURN_YEAR _
         / (SATURN_YEAR - EARTH_SIDEREALYEAR)
Public Const URANUS_B As Double = URANUS_A * (1.0 - URANUS_FLATNESS)
Public Const URANUS_RADIUS As Double = (URANUS_A + URANUS_B + URANUS_C) / 3.0
Public Const URANUS_GRAVITY As Double = URANUS_GM / (URANUS_RADIUS * _
         URANUS_RADIUS)
Public Const URANUS_MASS As Double = URANUS_GM / Kw.GRAVITATION
Public Const URANUS_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * URANUS_RADIUS _
         * URANUS_RADIUS * URANUS_RADIUS
Public Const URANUS_SURFACE As Double = 2.0 * Kw.TAU * URANUS_RADIUS * _
         URANUS_RADIUS
Public Const URANUS_DENSITY As Double = URANUS_MASS / URANUS_VOLUME
Public Const URANUS_SYNODIC As Double = EARTH_SIDEREALYEAR * URANUS_YEAR _
         / (URANUS_YEAR - EARTH_SIDEREALYEAR)
Public Const NEPTUNE_B As Double = NEPTUNE_A * (1.0 - NEPTUNE_FLATNESS)
Public Const NEPTUNE_RADIUS As Double = (NEPTUNE_A + NEPTUNE_B + _
         NEPTUNE_C) / 3.0
Public Const NEPTUNE_GRAVITY As Double = NEPTUNE_GM / (NEPTUNE_RADIUS * _
         NEPTUNE_RADIUS)
Public Const NEPTUNE_MASS As Double = NEPTUNE_GM / Kw.GRAVITATION
Public Const NEPTUNE_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
         NEPTUNE_RADIUS * NEPTUNE_RADIUS * NEPTUNE_RADIUS
Public Const NEPTUNE_SURFACE As Double = 2.0 * Kw.TAU * NEPTUNE_RADIUS * _
         NEPTUNE_RADIUS
Public Const NEPTUNE_DENSITY As Double = NEPTUNE_MASS / NEPTUNE_VOLUME
Public Const NEPTUNE_SYNODIC As Double = EARTH_SIDEREALYEAR * _
         NEPTUNE_YEAR / (NEPTUNE_YEAR - EARTH_SIDEREALYEAR)
Public Const PLUTO_B As Double = PLUTO_A * (1.0 - PLUTO_FLATNESS)
Public Const PLUTO_RADIUS As Double = (PLUTO_A + PLUTO_B + PLUTO_C) / 3.0
Public Const PLUTO_GRAVITY As Double = PLUTO_GM / (PLUTO_RADIUS * _
         PLUTO_RADIUS)
Public Const PLUTO_MASS As Double = PLUTO_GM / Kw.GRAVITATION
Public Const PLUTO_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * PLUTO_RADIUS * _
         PLUTO_RADIUS * PLUTO_RADIUS
Public Const PLUTO_SURFACE As Double = 2.0 * Kw.TAU * PLUTO_RADIUS * _
         PLUTO_RADIUS
Public Const PLUTO_DENSITY As Double = PLUTO_MASS / PLUTO_VOLUME
Public Const PLUTO_SYNODIC As Double = EARTH_SIDEREALYEAR * PLUTO_YEAR / _
         (PLUTO_YEAR - EARTH_SIDEREALYEAR)
Public Const MOON_B As Double = MOON_A * (1.0 - MOON_FLATNESS)
Public Const MOON_RADIUS As Double = (MOON_A + MOON_B + MOON_C) / 3.0
Public Const MOON_GRAVITY As Double = MOON_GM / (MOON_RADIUS * MOON_RADIUS)
Public Const MOON_MASS As Double = MOON_GM / Kw.GRAVITATION
Public Const MOON_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * MOON_RADIUS * _
         MOON_RADIUS * MOON_RADIUS
Public Const MOON_SURFACE As Double = 2.0 * Kw.TAU * MOON_RADIUS * _
         MOON_RADIUS
Public Const MOON_DENSITY As Double = MOON_MASS / MOON_VOLUME
Public Const MOON_SYNODIC As Double = EARTH_SIDEREALYEAR * MOON_YEAR / _
         (MOON_YEAR - EARTH_SIDEREALYEAR)
Public Const CERES_B As Double = CERES_A * (1.0 - CERES_FLATNESS)
Public Const CERES_RADIUS As Double = (CERES_A + CERES_B + CERES_C) / 3.0
Public Const CERES_GRAVITY As Double = CERES_GM / (CERES_RADIUS * _
         CERES_RADIUS)
Public Const CERES_MASS As Double = CERES_GM / Kw.GRAVITATION
Public Const CERES_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * CERES_RADIUS * _
         CERES_RADIUS * CERES_RADIUS
Public Const CERES_SURFACE As Double = 2.0 * Kw.TAU * CERES_RADIUS * _
         CERES_RADIUS
Public Const CERES_DENSITY As Double = CERES_MASS / CERES_VOLUME
Public Const CERES_SYNODIC As Double = EARTH_SIDEREALYEAR * CERES_YEAR / _
         (CERES_YEAR - EARTH_SIDEREALYEAR)
Public Const ERIS_B As Double = ERIS_A * (1.0 - ERIS_FLATNESS)
Public Const ERIS_RADIUS As Double = (ERIS_A + ERIS_B + ERIS_C) / 3.0
Public Const ERIS_GRAVITY As Double = ERIS_GM / (ERIS_RADIUS * ERIS_RADIUS)
Public Const ERIS_MASS As Double = ERIS_GM / Kw.GRAVITATION
Public Const ERIS_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * ERIS_RADIUS * _
         ERIS_RADIUS * ERIS_RADIUS
Public Const ERIS_SURFACE As Double = 2.0 * Kw.TAU * ERIS_RADIUS * _
         ERIS_RADIUS
Public Const ERIS_DENSITY As Double = ERIS_MASS / ERIS_VOLUME
Public Const ERIS_SYNODIC As Double = EARTH_SIDEREALYEAR * ERIS_YEAR / _
         (ERIS_YEAR - EARTH_SIDEREALYEAR)
Public Const MAKEMAKE_B As Double = MAKEMAKE_A * (1.0 - MAKEMAKE_FLATNESS)
Public Const MAKEMAKE_RADIUS As Double = (MAKEMAKE_A + MAKEMAKE_B + _
         MAKEMAKE_C) / 3.0
Public Const MAKEMAKE_GRAVITY As Double = MAKEMAKE_GM / (MAKEMAKE_RADIUS _
         * MAKEMAKE_RADIUS)
Public Const MAKEMAKE_MASS As Double = MAKEMAKE_GM / Kw.GRAVITATION
Public Const MAKEMAKE_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
         MAKEMAKE_RADIUS * MAKEMAKE_RADIUS * MAKEMAKE_RADIUS
Public Const MAKEMAKE_SURFACE As Double = 2.0 * Kw.TAU * MAKEMAKE_RADIUS _
         * MAKEMAKE_RADIUS
Public Const MAKEMAKE_DENSITY As Double = MAKEMAKE_MASS / MAKEMAKE_VOLUME
Public Const MAKEMAKE_SYNODIC As Double = EARTH_SIDEREALYEAR * _
         MAKEMAKE_YEAR / (MAKEMAKE_YEAR - EARTH_SIDEREALYEAR)
Public Const HAUMEA_B As Double = HAUMEA_A * (1.0 - HAUMEA_FLATNESS)
Public Const HAUMEA_RADIUS As Double = (HAUMEA_A + HAUMEA_B + HAUMEA_C) / 3.0
Public Const HAUMEA_GRAVITY As Double = HAUMEA_GM / (HAUMEA_RADIUS * _
         HAUMEA_RADIUS)
Public Const HAUMEA_MASS As Double = HAUMEA_GM / Kw.GRAVITATION
Public Const HAUMEA_VOLUME As Double = 2.0 * Kw.TAU / 3.0 * HAUMEA_RADIUS _
         * HAUMEA_RADIUS * HAUMEA_RADIUS
Public Const HAUMEA_SURFACE As Double = 2.0 * Kw.TAU * HAUMEA_RADIUS * _
         HAUMEA_RADIUS
Public Const HAUMEA_DENSITY As Double = HAUMEA_MASS / HAUMEA_VOLUME
Public Const HAUMEA_SYNODIC As Double = EARTH_SIDEREALYEAR * HAUMEA_YEAR _
         / (HAUMEA_YEAR - EARTH_SIDEREALYEAR)
Public Const SUN_GMIERS As Double = 1.32712442099E+20 * Kw.UNITGM
Public Const SUN_GMNASA As Double = SUN_GM
Public Const EARTH_THETA_0 As Double = 0.7790572732640 * Kw.TURN
Public Const MOON_ORBIT As Double = 3.843999E+8 * Kw.METER
Public Const MOON_ECCENTRICITY As Double = 0.0549
Public Const MOON_INCLINATION As Double = 5.415 * Kw.ARCDEG
Public Const SUN_ORBIT As Double = 0.0 * Kw.AU
Public Const SUN_ECCENTRICITY As Double = 0.0
Public Const SUN_INCLINATION As Double = 0.0 * Kw.ARCDEG
Public Const SUN_LONGITUDE As Double = 0.0 * Kw.ARCDEG
Public Const SUN_PERIAPSIS As Double = 0.0 * Kw.ARCDEG
Public Const SUN_ASCENDING As Double = 0.0 * Kw.ARCDEG
Public Const SUN_ORBIT_DT As Double = 0.0 * Kw.AU / Kw.JCENTURY
Public Const SUN_ECCENTRICITY_DT As Double = 0.0 / Kw.JCENTURY
Public Const SUN_INCLINATION_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const SUN_LONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const SUN_PERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const SUN_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const EARTH_ORBIT As Double = 1.00000261 * Kw.AU
Public Const EARTH_ECCENTRICITY As Double = 0.01671123
Public Const EARTH_INCLINATION As Double = 359.99998469 * Kw.ARCDEG
Public Const EARTH_LONGITUDE As Double = 100.46457166 * Kw.ARCDEG
Public Const EARTH_PERIAPSIS As Double = 102.93768193 * Kw.ARCDEG
Public Const EARTH_ASCENDING As Double = 0.0 * Kw.ARCDEG
Public Const EARTH_ORBIT_DT As Double = 0.00000562 * Kw.AU / Kw.JCENTURY
Public Const EARTH_ECCENTRICITY_DT As Double = -0.00004392 / Kw.JCENTURY
Public Const EARTH_INCLINATION_DT As Double = -0.01294668 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const EARTH_LONGITUDE_DT As Double = 35999.37244981 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const EARTH_PERIAPSIS_DT As Double = 0.32327364 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const EARTH_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const MERCURY_ORBIT As Double = 0.38709927 * Kw.AU
Public Const MERCURY_ECCENTRICITY As Double = 0.20563593
Public Const MERCURY_INCLINATION As Double = 7.00497902 * Kw.ARCDEG
Public Const MERCURY_LONGITUDE As Double = 252.25032350 * Kw.ARCDEG
Public Const MERCURY_PERIAPSIS As Double = 77.45779628 * Kw.ARCDEG
Public Const MERCURY_ASCENDING As Double = 48.33076593 * Kw.ARCDEG
Public Const MERCURY_ORBIT_DT As Double = 0.00000037 * Kw.AU / Kw.JCENTURY
Public Const MERCURY_ECCENTRICITY_DT As Double = 0.00001906 / Kw.JCENTURY
Public Const MERCURY_INCLINATION_DT As Double = -0.00594749 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MERCURY_LONGITUDE_DT As Double = 149472.67411175 * Kw.ARCDEG _
         / Kw.JCENTURY
Public Const MERCURY_PERIAPSIS_DT As Double = 0.16047689 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MERCURY_ASCENDING_DT As Double = -0.12534081 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const VENUS_ORBIT As Double = 0.72333566 * Kw.AU
Public Const VENUS_ECCENTRICITY As Double = 0.00677672
Public Const VENUS_INCLINATION As Double = 3.39467605 * Kw.ARCDEG
Public Const VENUS_LONGITUDE As Double = 181.97909950 * Kw.ARCDEG
Public Const VENUS_PERIAPSIS As Double = 131.60246718 * Kw.ARCDEG
Public Const VENUS_ASCENDING As Double = 76.67984255 * Kw.ARCDEG
Public Const VENUS_ORBIT_DT As Double = 0.00000390 * Kw.AU / Kw.JCENTURY
Public Const VENUS_ECCENTRICITY_DT As Double = -0.00004107 / Kw.JCENTURY
Public Const VENUS_INCLINATION_DT As Double = -0.00078890 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const VENUS_LONGITUDE_DT As Double = 58517.81538729 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const VENUS_PERIAPSIS_DT As Double = 0.00268329 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const VENUS_ASCENDING_DT As Double = -0.27769418 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MARS_ORBIT As Double = 1.52371034 * Kw.AU
Public Const MARS_ECCENTRICITY As Double = 0.09339410
Public Const MARS_INCLINATION As Double = 1.84969142 * Kw.ARCDEG
Public Const MARS_LONGITUDE As Double = 355.44656795 * Kw.ARCDEG
Public Const MARS_PERIAPSIS As Double = 336.05637041 * Kw.ARCDEG
Public Const MARS_ASCENDING As Double = 49.55953891 * Kw.ARCDEG
Public Const MARS_ORBIT_DT As Double = 0.00001847 * Kw.AU / Kw.JCENTURY
Public Const MARS_ECCENTRICITY_DT As Double = 0.00007882 / Kw.JCENTURY
Public Const MARS_INCLINATION_DT As Double = -0.00813131 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MARS_LONGITUDE_DT As Double = 19140.30268499 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MARS_PERIAPSIS_DT As Double = 0.44441088 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MARS_ASCENDING_DT As Double = -0.29257343 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const JUPITER_ORBIT As Double = 5.20288700 * Kw.AU
Public Const JUPITER_ECCENTRICITY As Double = 0.04838624
Public Const JUPITER_INCLINATION As Double = 1.30439695 * Kw.ARCDEG
Public Const JUPITER_LONGITUDE As Double = 34.39644051 * Kw.ARCDEG
Public Const JUPITER_PERIAPSIS As Double = 14.72847983 * Kw.ARCDEG
Public Const JUPITER_ASCENDING As Double = 100.47390909 * Kw.ARCDEG
Public Const JUPITER_ORBIT_DT As Double = -0.00011607 * Kw.AU / Kw.JCENTURY
Public Const JUPITER_ECCENTRICITY_DT As Double = -0.00013253 / Kw.JCENTURY
Public Const JUPITER_INCLINATION_DT As Double = -0.00183714 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const JUPITER_LONGITUDE_DT As Double = 3034.74612775 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const JUPITER_PERIAPSIS_DT As Double = 0.21252668 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const JUPITER_ASCENDING_DT As Double = 0.20469106 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const SATURN_ORBIT As Double = 9.53667594 * Kw.AU
Public Const SATURN_ECCENTRICITY As Double = 0.05386179
Public Const SATURN_INCLINATION As Double = 2.48599187 * Kw.ARCDEG
Public Const SATURN_LONGITUDE As Double = 49.95424423 * Kw.ARCDEG
Public Const SATURN_PERIAPSIS As Double = 92.59887831 * Kw.ARCDEG
Public Const SATURN_ASCENDING As Double = 113.66242448 * Kw.ARCDEG
Public Const SATURN_ORBIT_DT As Double = -0.00125060 * Kw.AU / Kw.JCENTURY
Public Const SATURN_ECCENTRICITY_DT As Double = -0.00050991 / Kw.JCENTURY
Public Const SATURN_INCLINATION_DT As Double = 0.00193609 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const SATURN_LONGITUDE_DT As Double = 1222.49362201 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const SATURN_PERIAPSIS_DT As Double = -0.41897216 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const SATURN_ASCENDING_DT As Double = -0.28867794 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const URANUS_ORBIT As Double = 19.18916464 * Kw.AU
Public Const URANUS_ECCENTRICITY As Double = 0.04725744
Public Const URANUS_INCLINATION As Double = 0.77263783 * Kw.ARCDEG
Public Const URANUS_LONGITUDE As Double = 313.23810451 * Kw.ARCDEG
Public Const URANUS_PERIAPSIS As Double = 170.95427630 * Kw.ARCDEG
Public Const URANUS_ASCENDING As Double = 74.01692503 * Kw.ARCDEG
Public Const URANUS_ORBIT_DT As Double = -0.00196176 * Kw.AU / Kw.JCENTURY
Public Const URANUS_ECCENTRICITY_DT As Double = -0.00004397 / Kw.JCENTURY
Public Const URANUS_INCLINATION_DT As Double = -0.00242939 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const URANUS_LONGITUDE_DT As Double = 428.48202785 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const URANUS_PERIAPSIS_DT As Double = 0.40805281 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const URANUS_ASCENDING_DT As Double = 0.04240589 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const NEPTUNE_ORBIT As Double = 30.06992276 * Kw.AU
Public Const NEPTUNE_ECCENTRICITY As Double = 0.00859048
Public Const NEPTUNE_INCLINATION As Double = 1.77004347 * Kw.ARCDEG
Public Const NEPTUNE_LONGITUDE As Double = 304.87997031 * Kw.ARCDEG
Public Const NEPTUNE_PERIAPSIS As Double = 44.96476227 * Kw.ARCDEG
Public Const NEPTUNE_ASCENDING As Double = 131.78422574 * Kw.ARCDEG
Public Const NEPTUNE_ORBIT_DT As Double = 0.00026291 * Kw.AU / Kw.JCENTURY
Public Const NEPTUNE_ECCENTRICITY_DT As Double = 0.00005105 / Kw.JCENTURY
Public Const NEPTUNE_INCLINATION_DT As Double = 0.00035372 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const NEPTUNE_LONGITUDE_DT As Double = 218.45945325 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const NEPTUNE_PERIAPSIS_DT As Double = -0.32241464 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const NEPTUNE_ASCENDING_DT As Double = -0.00508664 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const PLUTO_ORBIT As Double = 39.48211675 * Kw.AU
Public Const PLUTO_ECCENTRICITY As Double = 0.24882730
Public Const PLUTO_INCLINATION As Double = 17.14001206 * Kw.ARCDEG
Public Const PLUTO_LONGITUDE As Double = 238.92903833 * Kw.ARCDEG
Public Const PLUTO_PERIAPSIS As Double = 224.06891629 * Kw.ARCDEG
Public Const PLUTO_ASCENDING As Double = 110.30393684 * Kw.ARCDEG
Public Const PLUTO_ORBIT_DT As Double = -0.00031596 * Kw.AU / Kw.JCENTURY
Public Const PLUTO_ECCENTRICITY_DT As Double = 0.00005170 / Kw.JCENTURY
Public Const PLUTO_INCLINATION_DT As Double = 0.00004818 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const PLUTO_LONGITUDE_DT As Double = 145.20780515 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const PLUTO_PERIAPSIS_DT As Double = -0.04062942 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const PLUTO_ASCENDING_DT As Double = -0.01183482 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const CERES_ORBIT As Double = 2.76740933 * Kw.AU
Public Const CERES_ECCENTRICITY As Double = 0.07560729
Public Const CERES_INCLINATION As Double = 10.59321706 * Kw.ARCDEG
Public Const CERES_LONGITUDE As Double = 102.82668 * Kw.ARCDEG
Public Const CERES_PERIAPSIS As Double = 73.023742647 * Kw.ARCDEG
Public Const CERES_ASCENDING As Double = 80.308882612359 * Kw.ARCDEG
Public Const CERES_ORBIT_DT As Double = 0.0 * Kw.AU / Kw.JCENTURY
Public Const CERES_ECCENTRICITY_DT As Double = 0.0 / Kw.JCENTURY
Public Const CERES_INCLINATION_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const CERES_LONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const CERES_PERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const CERES_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const ERIS_ORBIT As Double = 67.781 * Kw.AU
Public Const ERIS_ECCENTRICITY As Double = 0.44068
Public Const ERIS_INCLINATION As Double = 44.0445 * Kw.ARCDEG
Public Const ERIS_LONGITUDE As Double = 32.4926663 * Kw.ARCDEG
Public Const ERIS_PERIAPSIS As Double = 151.60371236817 * Kw.ARCDEG
Public Const ERIS_ASCENDING As Double = 35.87992471211 * Kw.ARCDEG
Public Const ERIS_ORBIT_DT As Double = 0.0 * Kw.AU / Kw.JCENTURY
Public Const ERIS_ECCENTRICITY_DT As Double = 0.0 / Kw.JCENTURY
Public Const ERIS_INCLINATION_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const ERIS_LONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const ERIS_PERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const ERIS_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const MAKEMAKE_ORBIT As Double = 45.715 * Kw.AU
Public Const MAKEMAKE_ECCENTRICITY As Double = 0.15586
Public Const MAKEMAKE_INCLINATION As Double = 29.00685 * Kw.ARCDEG
Public Const MAKEMAKE_LONGITUDE As Double = 177.2966805 * Kw.ARCDEG
Public Const MAKEMAKE_PERIAPSIS As Double = 295.642772002 * Kw.ARCDEG
Public Const MAKEMAKE_ASCENDING As Double = 79.616805978978 * Kw.ARCDEG
Public Const MAKEMAKE_ORBIT_DT As Double = 0.0 * Kw.AU / Kw.JCENTURY
Public Const MAKEMAKE_ECCENTRICITY_DT As Double = 0.0 / Kw.JCENTURY
Public Const MAKEMAKE_INCLINATION_DT As Double = 0.0 * Kw.ARCDEG / _
         Kw.JCENTURY
Public Const MAKEMAKE_LONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const MAKEMAKE_PERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const MAKEMAKE_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const HAUMEA_ORBIT As Double = 43.218 * Kw.AU
Public Const HAUMEA_ECCENTRICITY As Double = 0.19126
Public Const HAUMEA_INCLINATION As Double = 28.19 * Kw.ARCDEG
Public Const HAUMEA_LONGITUDE As Double = 215.687315 * Kw.ARCDEG
Public Const HAUMEA_PERIAPSIS As Double = 238.69440821915 * Kw.ARCDEG
Public Const HAUMEA_ASCENDING As Double = 122.01840302632 * Kw.ARCDEG
Public Const HAUMEA_ORBIT_DT As Double = 0.0 * Kw.AU / Kw.JCENTURY
Public Const HAUMEA_ECCENTRICITY_DT As Double = 0.0 / Kw.JCENTURY
Public Const HAUMEA_INCLINATION_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const HAUMEA_LONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const HAUMEA_PERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Public Const HAUMEA_ASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JCENTURY
Private Const LC_P1_ERR As Double = -1
Private Const LC_P1_PREV_PL As Double = -1
Private Const LC_P1_SUN As Double = 0
Private Const LC_P1_MERCURY As Double = 1
Private Const LC_P1_VENUS As Double = 2
Private Const LC_P1_EARTH As Double = 3
Private Const LC_P1_MARS As Double = 4
Private Const LC_P1_JUPITER As Double = 5
Private Const LC_P1_SATURN As Double = 6
Private Const LC_P1_URANUS As Double = 7
Private Const LC_P1_NEPTUNE As Double = 8
Private Const LC_P1_PLUTO As Double = 9
Private Const LC_P1_CERES As Double = 10
Private Const LC_P1_ERIS As Double = 11
Private Const LC_P1_MAKEMAKE As Double = 12
Private Const LC_P1_HAUMEA As Double = 13
Private Const LC_P1_CNT As Double = 14
Private Const LC_P2_GM As Double = 0
Private Const LC_P2_DAY As Double = 1
Private Const LC_P2_FLATNESS As Double = 2
Private Const LC_P2_A As Double = 3
Private Const LC_P2_C As Double = 4
Private Const LC_P2_YEAR As Double = 5
Private Const LC_P2_ORB As Double = 6
Private Const LC_P2_ECC As Double = 7
Private Const LC_P2_INC As Double = 8
Private Const LC_P2_LON As Double = 9
Private Const LC_P2_PER As Double = 10
Private Const LC_P2_ASC As Double = 11
Private Const LC_P2_ORB_DT As Double = 12
Private Const LC_P2_ECC_DT As Double = 13
Private Const LC_P2_INC_DT As Double = 14
Private Const LC_P2_LON_DT As Double = 15
Private Const LC_P2_PER_DT As Double = 16
Private Const LC_P2_ASC_DT As Double = 17
Private Const LC_P2_CNT As Double = 18
Private Shared lv_plsun_arr(3) As Double
Private Shared lv_plgeo_arr(3) As Double
Private Shared lv_pl_ind As Integer
Private Shared lv_pl_mtrx(LC_P1_CNT, LC_P2_CNT) As Double
Private Shared lv_pl_earth_year As Double
Private Shared lv_pl_jtwoktime As Double
Public Const EARTH_GRAVITYA As Double = 9.7803253359 * Kw.MPSS
Public Const EARTH_GRAVITYB As Double = 9.8321849378 * Kw.MPSS
Private Const LC_ISA_CNT As Double = 12
Private Const LC_ISA_TEMP As Double = 0
Private Const LC_ISA_PRES As Double = 1
Private Const LC_ISA_DENS As Double = 2
Private Const LC_ISA_HEIGHT As Double = 3
Private Const LC_ISA_KEY_CNT As Double = 4
Private Shared lv_isa_mtrx(LC_ISA_CNT, LC_ISA_KEY_CNT) As Double
Private Shared lv_isa_magic As Double
Private Const LC_PREM_DENS As Double = 0
Private Const LC_PREM_MASS As Double = 1
Private Const LC_PREM_XHEIGHT As Double = 0
Private Const LC_PREM_XCOEA As Double = 1
Private Const LC_PREM_XCOEB As Double = 2
Private Const LC_PREM_XCOEC As Double = 3
Private Const LC_PREM_XMASSD As Double = 4
Private Shared lv_prem_mtrx(12, 6) As Double
Private Shared lv_prem_magic As Double
'IMPORT "Kw"
'IMPORT "Kwelements"
Public Shared Function orbitgm_v(ByVal gm_gm As Double, ByVal orbit_m As _
         Double) As Double
   orbitgm_v = Math.Sqrt(gm_gm / orbit_m)
End Function
Public Shared Function orbit_v(ByVal mass_kg As Double, ByVal orbit_m As _
         Double) As Double
   orbit_v = orbitgm_v(Kw.GRAVITATION * mass_kg, orbit_m)
End Function
Public Shared Function margot(ByVal pmass As Double, ByVal porbit As _
         Double) As Double
   Dim retvalu As Double
   If (pmass <= 0.0 Or porbit <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 5.0401742E-10 * pmass / Math.Exp(Math.Log(porbit) * 1.125)
   End If
   margot = retvalu
End Function
Public Shared Function sternlevison(ByVal pmass As Double, ByVal porbit _
         As Double) As Double
   Dim retvalu As Double
   Dim xx As Double
   If (pmass <= 0.0 Or porbit <= 0.0) Then
      retvalu = 0.0
   Else
      xx = 2.0 * Math.Log(pmass) - 1.5 * Math.Log(porbit)
      retvalu = 2.482E-28 * Math.Exp(xx)
   End If
   sternlevison = retvalu
End Function
Private Shared Function lf_pl_init(ByVal plnt As Integer) As Integer
   ' local-use Vbdotnet lv_pl_ind
   ' local-use Vbdotnet lv_pl_mtrx
   If (lv_pl_ind < 0) Then
      lv_pl_mtrx(LC_P1_SUN, LC_P2_GM) = SUN_GM
      lv_pl_mtrx(LC_P1_SUN, LC_P2_DAY) = SUN_DAY
      lv_pl_mtrx(LC_P1_SUN, LC_P2_FLATNESS) = SUN_FLATNESS
      lv_pl_mtrx(LC_P1_SUN, LC_P2_A) = SUN_A
      lv_pl_mtrx(LC_P1_SUN, LC_P2_C) = SUN_C
      lv_pl_mtrx(LC_P1_SUN, LC_P2_YEAR) = SUN_YEAR
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ORB) = SUN_ORBIT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ECC) = SUN_ECCENTRICITY
      lv_pl_mtrx(LC_P1_SUN, LC_P2_INC) = SUN_INCLINATION
      lv_pl_mtrx(LC_P1_SUN, LC_P2_LON) = SUN_LONGITUDE
      lv_pl_mtrx(LC_P1_SUN, LC_P2_PER) = SUN_PERIAPSIS
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ASC) = SUN_ASCENDING
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ORB_DT) = SUN_ORBIT_DT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ECC_DT) = SUN_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_INC_DT) = SUN_INCLINATION_DT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_LON_DT) = SUN_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_PER_DT) = SUN_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_SUN, LC_P2_ASC_DT) = SUN_ASCENDING_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_GM) = MERCURY_GM
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_DAY) = MERCURY_DAY
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_FLATNESS) = MERCURY_FLATNESS
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_A) = MERCURY_A
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_C) = MERCURY_C
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_YEAR) = MERCURY_YEAR
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ORB) = MERCURY_ORBIT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ECC) = MERCURY_ECCENTRICITY
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_INC) = MERCURY_INCLINATION
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_LON) = MERCURY_LONGITUDE
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_PER) = MERCURY_PERIAPSIS
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ASC) = MERCURY_ASCENDING
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ORB_DT) = MERCURY_ORBIT_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ECC_DT) = MERCURY_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_INC_DT) = MERCURY_INCLINATION_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_LON_DT) = MERCURY_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_PER_DT) = MERCURY_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_MERCURY, LC_P2_ASC_DT) = MERCURY_ASCENDING_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_GM) = VENUS_GM
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_DAY) = VENUS_DAY
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_FLATNESS) = VENUS_FLATNESS
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_A) = VENUS_A
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_C) = VENUS_C
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_YEAR) = VENUS_YEAR
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ORB) = VENUS_ORBIT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ECC) = VENUS_ECCENTRICITY
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_INC) = VENUS_INCLINATION
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_LON) = VENUS_LONGITUDE
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_PER) = VENUS_PERIAPSIS
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ASC) = VENUS_ASCENDING
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ORB_DT) = VENUS_ORBIT_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ECC_DT) = VENUS_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_INC_DT) = VENUS_INCLINATION_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_LON_DT) = VENUS_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_PER_DT) = VENUS_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_VENUS, LC_P2_ASC_DT) = VENUS_ASCENDING_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_GM) = EARTH_GM
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_DAY) = EARTH_DAY
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_FLATNESS) = EARTH_FLATNESS
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_A) = EARTH_A
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_C) = EARTH_C
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_YEAR) = EARTH_YEAR
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ORB) = EARTH_ORBIT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ECC) = EARTH_ECCENTRICITY
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_INC) = EARTH_INCLINATION
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_LON) = EARTH_LONGITUDE
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_PER) = EARTH_PERIAPSIS
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ASC) = EARTH_ASCENDING
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ORB_DT) = EARTH_ORBIT_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ECC_DT) = EARTH_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_INC_DT) = EARTH_INCLINATION_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_LON_DT) = EARTH_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_PER_DT) = EARTH_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_EARTH, LC_P2_ASC_DT) = EARTH_ASCENDING_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_GM) = MARS_GM
      lv_pl_mtrx(LC_P1_MARS, LC_P2_DAY) = MARS_DAY
      lv_pl_mtrx(LC_P1_MARS, LC_P2_FLATNESS) = MARS_FLATNESS
      lv_pl_mtrx(LC_P1_MARS, LC_P2_A) = MARS_A
      lv_pl_mtrx(LC_P1_MARS, LC_P2_C) = MARS_C
      lv_pl_mtrx(LC_P1_MARS, LC_P2_YEAR) = MARS_YEAR
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ORB) = MARS_ORBIT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ECC) = MARS_ECCENTRICITY
      lv_pl_mtrx(LC_P1_MARS, LC_P2_INC) = MARS_INCLINATION
      lv_pl_mtrx(LC_P1_MARS, LC_P2_LON) = MARS_LONGITUDE
      lv_pl_mtrx(LC_P1_MARS, LC_P2_PER) = MARS_PERIAPSIS
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ASC) = MARS_ASCENDING
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ORB_DT) = MARS_ORBIT_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ECC_DT) = MARS_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_INC_DT) = MARS_INCLINATION_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_LON_DT) = MARS_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_PER_DT) = MARS_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_MARS, LC_P2_ASC_DT) = MARS_ASCENDING_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_GM) = JUPITER_GM
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_DAY) = JUPITER_DAY
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_FLATNESS) = JUPITER_FLATNESS
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_A) = JUPITER_A
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_C) = JUPITER_C
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_YEAR) = JUPITER_YEAR
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ORB) = JUPITER_ORBIT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ECC) = JUPITER_ECCENTRICITY
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_INC) = JUPITER_INCLINATION
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_LON) = JUPITER_LONGITUDE
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_PER) = JUPITER_PERIAPSIS
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ASC) = JUPITER_ASCENDING
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ORB_DT) = JUPITER_ORBIT_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ECC_DT) = JUPITER_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_INC_DT) = JUPITER_INCLINATION_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_LON_DT) = JUPITER_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_PER_DT) = JUPITER_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_JUPITER, LC_P2_ASC_DT) = JUPITER_ASCENDING_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_GM) = SATURN_GM
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_DAY) = SATURN_DAY
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_FLATNESS) = SATURN_FLATNESS
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_A) = SATURN_A
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_C) = SATURN_C
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_YEAR) = SATURN_YEAR
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ORB) = SATURN_ORBIT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ECC) = SATURN_ECCENTRICITY
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_INC) = SATURN_INCLINATION
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_LON) = SATURN_LONGITUDE
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_PER) = SATURN_PERIAPSIS
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ASC) = SATURN_ASCENDING
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ORB_DT) = SATURN_ORBIT_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ECC_DT) = SATURN_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_INC_DT) = SATURN_INCLINATION_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_LON_DT) = SATURN_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_PER_DT) = SATURN_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_SATURN, LC_P2_ASC_DT) = SATURN_ASCENDING_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_GM) = URANUS_GM
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_DAY) = URANUS_DAY
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_FLATNESS) = URANUS_FLATNESS
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_A) = URANUS_A
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_C) = URANUS_C
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_YEAR) = URANUS_YEAR
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ORB) = URANUS_ORBIT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ECC) = URANUS_ECCENTRICITY
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_INC) = URANUS_INCLINATION
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_LON) = URANUS_LONGITUDE
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_PER) = URANUS_PERIAPSIS
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ASC) = URANUS_ASCENDING
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ORB_DT) = URANUS_ORBIT_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ECC_DT) = URANUS_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_INC_DT) = URANUS_INCLINATION_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_LON_DT) = URANUS_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_PER_DT) = URANUS_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_URANUS, LC_P2_ASC_DT) = URANUS_ASCENDING_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_GM) = NEPTUNE_GM
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_DAY) = NEPTUNE_DAY
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_FLATNESS) = NEPTUNE_FLATNESS
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_A) = NEPTUNE_A
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_C) = NEPTUNE_C
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_YEAR) = NEPTUNE_YEAR
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ORB) = NEPTUNE_ORBIT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ECC) = NEPTUNE_ECCENTRICITY
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_INC) = NEPTUNE_INCLINATION
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_LON) = NEPTUNE_LONGITUDE
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_PER) = NEPTUNE_PERIAPSIS
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ASC) = NEPTUNE_ASCENDING
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ORB_DT) = NEPTUNE_ORBIT_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ECC_DT) = NEPTUNE_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_INC_DT) = NEPTUNE_INCLINATION_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_LON_DT) = NEPTUNE_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_PER_DT) = NEPTUNE_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_NEPTUNE, LC_P2_ASC_DT) = NEPTUNE_ASCENDING_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_GM) = PLUTO_GM
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_DAY) = PLUTO_DAY
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_FLATNESS) = PLUTO_FLATNESS
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_A) = PLUTO_A
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_C) = PLUTO_C
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_YEAR) = PLUTO_YEAR
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ORB) = PLUTO_ORBIT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ECC) = PLUTO_ECCENTRICITY
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_INC) = PLUTO_INCLINATION
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_LON) = PLUTO_LONGITUDE
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_PER) = PLUTO_PERIAPSIS
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ASC) = PLUTO_ASCENDING
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ORB_DT) = PLUTO_ORBIT_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ECC_DT) = PLUTO_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_INC_DT) = PLUTO_INCLINATION_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_LON_DT) = PLUTO_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_PER_DT) = PLUTO_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_PLUTO, LC_P2_ASC_DT) = PLUTO_ASCENDING_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_GM) = CERES_GM
      lv_pl_mtrx(LC_P1_CERES, LC_P2_DAY) = CERES_DAY
      lv_pl_mtrx(LC_P1_CERES, LC_P2_FLATNESS) = CERES_FLATNESS
      lv_pl_mtrx(LC_P1_CERES, LC_P2_A) = CERES_A
      lv_pl_mtrx(LC_P1_CERES, LC_P2_C) = CERES_C
      lv_pl_mtrx(LC_P1_CERES, LC_P2_YEAR) = CERES_YEAR
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ORB) = CERES_ORBIT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ECC) = CERES_ECCENTRICITY
      lv_pl_mtrx(LC_P1_CERES, LC_P2_INC) = CERES_INCLINATION
      lv_pl_mtrx(LC_P1_CERES, LC_P2_LON) = CERES_LONGITUDE
      lv_pl_mtrx(LC_P1_CERES, LC_P2_PER) = CERES_PERIAPSIS
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ASC) = CERES_ASCENDING
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ORB_DT) = CERES_ORBIT_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ECC_DT) = CERES_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_INC_DT) = CERES_INCLINATION_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_LON_DT) = CERES_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_PER_DT) = CERES_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_CERES, LC_P2_ASC_DT) = CERES_ASCENDING_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_GM) = ERIS_GM
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_DAY) = ERIS_DAY
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_FLATNESS) = ERIS_FLATNESS
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_A) = ERIS_A
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_C) = ERIS_C
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_YEAR) = ERIS_YEAR
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ORB) = ERIS_ORBIT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ECC) = ERIS_ECCENTRICITY
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_INC) = ERIS_INCLINATION
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_LON) = ERIS_LONGITUDE
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_PER) = ERIS_PERIAPSIS
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ASC) = ERIS_ASCENDING
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ORB_DT) = ERIS_ORBIT_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ECC_DT) = ERIS_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_INC_DT) = ERIS_INCLINATION_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_LON_DT) = ERIS_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_PER_DT) = ERIS_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_ERIS, LC_P2_ASC_DT) = ERIS_ASCENDING_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_GM) = MAKEMAKE_GM
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_DAY) = MAKEMAKE_DAY
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_FLATNESS) = MAKEMAKE_FLATNESS
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_A) = MAKEMAKE_A
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_C) = MAKEMAKE_C
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_YEAR) = MAKEMAKE_YEAR
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ORB) = MAKEMAKE_ORBIT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ECC) = MAKEMAKE_ECCENTRICITY
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_INC) = MAKEMAKE_INCLINATION
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_LON) = MAKEMAKE_LONGITUDE
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_PER) = MAKEMAKE_PERIAPSIS
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ASC) = MAKEMAKE_ASCENDING
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ORB_DT) = MAKEMAKE_ORBIT_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ECC_DT) = MAKEMAKE_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_INC_DT) = MAKEMAKE_INCLINATION_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_LON_DT) = MAKEMAKE_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_PER_DT) = MAKEMAKE_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_MAKEMAKE, LC_P2_ASC_DT) = MAKEMAKE_ASCENDING_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_GM) = HAUMEA_GM
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_DAY) = HAUMEA_DAY
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_FLATNESS) = HAUMEA_FLATNESS
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_A) = HAUMEA_A
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_C) = HAUMEA_C
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_YEAR) = HAUMEA_YEAR
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ORB) = HAUMEA_ORBIT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ECC) = HAUMEA_ECCENTRICITY
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_INC) = HAUMEA_INCLINATION
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_LON) = HAUMEA_LONGITUDE
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_PER) = HAUMEA_PERIAPSIS
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ASC) = HAUMEA_ASCENDING
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ORB_DT) = HAUMEA_ORBIT_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ECC_DT) = HAUMEA_ECCENTRICITY_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_INC_DT) = HAUMEA_INCLINATION_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_LON_DT) = HAUMEA_LONGITUDE_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_PER_DT) = HAUMEA_PERIAPSIS_DT
      lv_pl_mtrx(LC_P1_HAUMEA, LC_P2_ASC_DT) = HAUMEA_ASCENDING_DT
      If (0 < lv_pl_jtwoktime And lv_pl_jtwoktime < 1.0 / 32.0) Then
         Call plsettime(Kw.uet2j2k(Kw.timee()))
      End If
      lv_pl_earth_year = EARTH_YEAR
   End If
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      lv_pl_ind = plnt
   ElseIf (plnt = LC_P1_PREV_PL) Then
      If (lv_pl_ind < 0) Then
         lv_pl_ind = LC_P1_EARTH
      End If
   Else
      lv_pl_ind = LC_P1_PREV_PL
   End If
   lf_pl_init = lv_pl_ind
End Function
Private Shared Function lf_val(ByVal pa_ind As Integer, ByVal pb_bb As _
         Integer, ByVal pb_bbd As Integer) As Double
   Dim pl_ind As Integer
   Dim retvalu As Double
   If (pa_ind < LC_P1_PREV_PL Or LC_P1_CNT <= pa_ind) Then
      retvalu = LC_P1_ERR
   Else
      pl_ind = pl(pa_ind)
      retvalu = (lv_pl_mtrx(pl_ind, pb_bb) + lv_pl_jtwoktime * _
               lv_pl_mtrx(pl_ind, pb_bbd))
   End If
   lf_val = retvalu
End Function
Public Shared Function pl(ByVal plnt As Integer) As Integer
   pl = lf_pl_init(plnt)
End Function
Public Shared Function plsettime(ByVal jtwokdate As Double) As Double
   lv_pl_jtwoktime = jtwokdate * Kw.JDAY
   plsettime = lv_pl_jtwoktime
End Function
Public Shared Function pl_gm(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_GM)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_GM)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_gm = retvalu
End Function
Public Shared Function plgm() As Double
   ' local-use Vbdotnet lv_pl_ind
   plgm = pl_gm(LC_P1_PREV_PL)
End Function
Public Shared Function pl_year(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_YEAR)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_YEAR)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_year = retvalu
End Function
Public Shared Function plyear() As Double
   ' local-use Vbdotnet lv_pl_ind
   plyear = pl_year(LC_P1_PREV_PL)
End Function
Public Shared Function pl_day(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_DAY)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_DAY)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_day = retvalu
End Function
Public Shared Function plday() As Double
   ' local-use Vbdotnet lv_pl_ind
   plday = pl_day(LC_P1_PREV_PL)
End Function
Public Shared Function pl_flatness(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_FLATNESS)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_FLATNESS)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_flatness = retvalu
End Function
Public Shared Function plflatness() As Double
   ' local-use Vbdotnet lv_pl_ind
   plflatness = pl_flatness(LC_P1_PREV_PL)
End Function
Public Shared Function pl_a(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_A)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_A)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_a = retvalu
End Function
Public Shared Function pla() As Double
   ' local-use Vbdotnet lv_pl_ind
   pla = pl_a(LC_P1_PREV_PL)
End Function
Public Shared Function pl_c(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_mtrx
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_CNT) Then
      retvalu = lv_pl_mtrx(plnt, LC_P2_C)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_mtrx(lv_pl_ind, LC_P2_C)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_c = retvalu
End Function
Public Shared Function plc() As Double
   ' local-use Vbdotnet lv_pl_ind
   plc = pl_c(LC_P1_PREV_PL)
End Function
Public Shared Function pl_orbit(ByVal plnt As Integer) As Double
   pl_orbit = lf_val(plnt, LC_P2_ORB, LC_P2_ORB_DT)
End Function
Public Shared Function plorbit() As Double
   ' local-use Vbdotnet lv_pl_ind
   plorbit = pl_orbit(LC_P1_PREV_PL)
End Function
Public Shared Function pl_eccentricity(ByVal plnt As Integer) As Double
   pl_eccentricity = lf_val(plnt, LC_P2_ECC, LC_P2_ECC_DT)
End Function
Public Shared Function pleccentricity() As Double
   ' local-use Vbdotnet lv_pl_ind
   pleccentricity = pl_eccentricity(LC_P1_PREV_PL)
End Function
Public Shared Function pl_inclination(ByVal plnt As Integer) As Double
   pl_inclination = lf_val(plnt, LC_P2_INC, LC_P2_INC_DT)
End Function
Public Shared Function plinclination() As Double
   ' local-use Vbdotnet lv_pl_ind
   plinclination = pl_inclination(LC_P1_PREV_PL)
End Function
Public Shared Function pl_longitude(ByVal plnt As Integer) As Double
   pl_longitude = lf_val(plnt, LC_P2_LON, LC_P2_LON_DT)
End Function
Public Shared Function pllongitude() As Double
   ' local-use Vbdotnet lv_pl_ind
   pllongitude = pl_longitude(LC_P1_PREV_PL)
End Function
Public Shared Function pl_periapsis(ByVal plnt As Integer) As Double
   pl_periapsis = lf_val(plnt, LC_P2_PER, LC_P2_PER_DT)
End Function
Public Shared Function plperiapsis() As Double
   ' local-use Vbdotnet lv_pl_ind
   plperiapsis = pl_periapsis(LC_P1_PREV_PL)
End Function
Public Shared Function pl_ascending(ByVal plnt As Integer) As Double
   pl_ascending = lf_val(plnt, LC_P2_ASC, LC_P2_ASC_DT)
End Function
Public Shared Function plascending() As Double
   ' local-use Vbdotnet lv_pl_ind
   plascending = pl_ascending(LC_P1_PREV_PL)
End Function
Public Shared Function pl_mass(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_gm(plnt) / Kw.GRAVITATION
   End If
   pl_mass = retvalu
End Function
Public Shared Function plmass() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmass = pl_mass(LC_P1_PREV_PL)
End Function
Public Shared Function pl_b(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = (1.0 - pl_flatness(plnt)) * pl_a(plnt)
   End If
   pl_b = retvalu
End Function
Public Shared Function plb() As Double
   ' local-use Vbdotnet lv_pl_ind
   plb = pl_b(LC_P1_PREV_PL)
End Function
Public Shared Function pl_radius(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = (pl_a(plnt) + pl_b(plnt) + pl_c(plnt)) / 3.0
   End If
   pl_radius = retvalu
End Function
Public Shared Function plradius() As Double
   ' local-use Vbdotnet lv_pl_ind
   plradius = pl_radius(LC_P1_PREV_PL)
End Function
Public Shared Function pl_gravity(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_gm(plnt) / Kw.square(pl_radius(plnt))
   End If
   pl_gravity = retvalu
End Function
Public Shared Function plgravity() As Double
   ' local-use Vbdotnet lv_pl_ind
   plgravity = pl_gravity(LC_P1_PREV_PL)
End Function
Public Shared Function pl_meananomaly(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = Kw.fmodu(pl_longitude(plnt) - pl_periapsis(plnt), Kw.TAU)
   End If
   pl_meananomaly = retvalu
End Function
Public Shared Function plmeananomaly() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmeananomaly = pl_meananomaly(LC_P1_PREV_PL)
End Function
Public Shared Function pl_escape(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = Math.Sqrt(2.0 * pl_gm(plnt) / pl_radius(plnt))
   End If
   pl_escape = retvalu
End Function
Public Shared Function plescape() As Double
   ' local-use Vbdotnet lv_pl_ind
   plescape = pl_escape(LC_P1_PREV_PL)
End Function
Public Shared Function pl_synodic(ByVal plnt As Integer) As Double
   ' local-use Vbdotnet lv_pl_earth_year
   Dim yra As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      yra = pl_year(plnt)
      retvalu = Kw.divi(yra * lv_pl_earth_year, Math.Abs(yra - _
               lv_pl_earth_year), 0.0)
   End If
   pl_synodic = retvalu
End Function
Public Shared Function plsynodic() As Double
   ' local-use Vbdotnet lv_pl_ind
   plsynodic = pl_synodic(LC_P1_PREV_PL)
End Function
Public Shared Function pl_volume(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = 2.0 * Kw.TAU * pl_a(plnt) * pl_b(plnt) * pl_c(plnt) / 3.0
   End If
   pl_volume = retvalu
End Function
Public Shared Function plvolume() As Double
   ' local-use Vbdotnet lv_pl_ind
   plvolume = pl_volume(LC_P1_PREV_PL)
End Function
Public Shared Function pl_surface(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = Kw.ellipsoid_surface(pl_a(plnt), pl_b(plnt), pl_c(plnt))
   End If
   pl_surface = retvalu
End Function
Public Shared Function plsurface() As Double
   ' local-use Vbdotnet lv_pl_ind
   plsurface = pl_surface(LC_P1_PREV_PL)
End Function
Public Shared Function pl_density(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_mass(plnt) / pl_volume(plnt)
   End If
   pl_density = retvalu
End Function
Public Shared Function pldensity() As Double
   ' local-use Vbdotnet lv_pl_ind
   pldensity = pl_density(LC_P1_PREV_PL)
End Function
Public Shared Function pl_argument(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_periapsis(plnt) - pl_ascending(plnt)
   End If
   pl_argument = retvalu
End Function
Public Shared Function plargument() As Double
   ' local-use Vbdotnet lv_pl_ind
   plargument = pl_argument(LC_P1_PREV_PL)
End Function
Public Shared Function pl_margot(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = margot(pl_mass(plnt), pl_orbit(plnt))
   End If
   pl_margot = retvalu
End Function
Public Shared Function plmargot() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmargot = pl_margot(LC_P1_PREV_PL)
End Function
Public Shared Function pl_sternlevison(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = sternlevison(pl_mass(plnt), pl_orbit(plnt))
   End If
   pl_sternlevison = retvalu
End Function
Public Shared Function plsternlevison() As Double
   ' local-use Vbdotnet lv_pl_ind
   plsternlevison = pl_sternlevison(LC_P1_PREV_PL)
End Function
Public Shared Function pl_perihelion(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_orbit(plnt) * (1.0 - pl_eccentricity(plnt))
   End If
   pl_perihelion = retvalu
End Function
Public Shared Function plperihelion() As Double
   ' local-use Vbdotnet lv_pl_ind
   plperihelion = pl_perihelion(LC_P1_PREV_PL)
End Function
Public Shared Function pl_aphelion(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_orbit(plnt) * (1.0 + pl_eccentricity(plnt))
   End If
   pl_aphelion = retvalu
End Function
Public Shared Function plaphelion() As Double
   ' local-use Vbdotnet lv_pl_ind
   plaphelion = pl_aphelion(LC_P1_PREV_PL)
End Function
Public Shared Function eccentric_anomaly(ByVal mean_ano_rad As Double, _
         ByVal eccen As Double) As Double
   Dim mrad As Double
   Dim xrad As Double
   Dim nrvx_ii As Integer
   Dim nrvx_yy As Double
   Dim nrvx_xx As Double
   Dim nrvx_dy As Double
   Dim nrvx_xp As Double
   mrad = Kw.fmodu(mean_ano_rad, Kw.tur2rad(1.0))
   xrad = mrad + eccen * Math.Sin(mrad)
   nrvx_xx = xrad
   For nrvx_ii = 0 To 20
      nrvx_xp = nrvx_xx
      nrvx_dy = 1.0 - eccen * Math.Cos(nrvx_xx)
      If (Kw.iszero(nrvx_dy)) Then
         Exit For
      End If
      nrvx_yy = nrvx_xx - eccen * Math.Sin(nrvx_xx) - mean_ano_rad
      nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
      If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
         Exit For
      End If
   Next
   eccentric_anomaly = nrvx_xx
End Function
Public Shared Function pl_eccentricanomaly(ByVal plnt As Integer) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_CNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = eccentric_anomaly(pl_meananomaly(plnt), _
               pl_eccentricity(plnt))
   End If
   pl_eccentricanomaly = retvalu
End Function
Public Shared Function pleccentricanomaly() As Double
   ' local-use Vbdotnet lv_pl_ind
   pleccentricanomaly = pl_eccentricanomaly(LC_P1_PREV_PL)
End Function
Public Shared Function pl_heliocentric(ByVal plnt As Integer, ByVal jtwok _
         As Double) As Double
   ' local-use Vbdotnet lv_plsun_arr
   ' local-use Vbdotnet lv_plgeo_arr
   Dim orb_m As Double
   Dim eccen As Double
   Dim inc_rad As Double
   Dim lon_rad As Double
   Dim per_rad As Double
   Dim asc_rad As Double
   Dim arg_rad As Double
   Dim mean_anomaly_rad As Double
   Dim eano_rad As Double
   Dim dxx_m As Double
   Dim dyy_m As Double
   Dim ci As Double
   Dim co As Double
   Dim cw As Double
   Dim si As Double
   Dim so As Double
   Dim sw As Double
   Dim swci As Double
   Dim cwci As Double
   Dim obl_rad As Double
   Dim retvalu As Double
   If (lf_pl_init(plnt) < 0.0) Then
      retvalu = LC_P1_ERR
   Else
      Call plsettime(jtwok)
      orb_m = plorbit()
      eccen = pleccentricity()
      inc_rad = plinclination()
      lon_rad = pllongitude()
      per_rad = plperiapsis()
      asc_rad = plascending()
      arg_rad = per_rad - asc_rad
      mean_anomaly_rad = Kw.fmod(lon_rad - per_rad, Kw.tur2rad(1.0))
      eano_rad = eccentric_anomaly(mean_anomaly_rad, eccen)
      dxx_m = orb_m * (Math.Cos(eano_rad) - eccen)
      dyy_m = orb_m * Kw.topyh1(eccen) * Math.Sin(eano_rad)
      cw = Math.Cos(arg_rad)
      sw = Math.Sin(arg_rad)
      co = Math.Cos(asc_rad)
      so = Math.Sin(asc_rad)
      ci = Math.Cos(inc_rad)
      si = Math.Sin(inc_rad)
      swci = sw * ci
      cwci = cw * ci
      lv_plsun_arr(0) = (dxx_m * (cw * co - swci * so) - dyy_m * (sw * co _
               + cwci * so))
      lv_plsun_arr(1) = (dxx_m * (cw * so + swci * co) - dyy_m * (sw * so _
               - cwci * co))
      lv_plsun_arr(2) = (dxx_m * (sw * si) + dyy_m * (cw * si))
      obl_rad = earthobliquity(jtwok)
      co = Math.Cos(obl_rad)
      so = Math.Sin(obl_rad)
      lv_plgeo_arr(0) = lv_plsun_arr(0)
      lv_plgeo_arr(1) = co * lv_plsun_arr(1) - so * lv_plsun_arr(2)
      lv_plgeo_arr(2) = so * lv_plsun_arr(1) + co * lv_plsun_arr(2)
      retvalu = Kw.hypot3(lv_plsun_arr(0), lv_plsun_arr(1), lv_plsun_arr(2))
   End If
   pl_heliocentric = retvalu
End Function
Public Shared Function plhelio(ByVal indd As Integer) As Double
   ' local-use Vbdotnet lv_plsun_arr
   Dim retvalu As Double
   If (0 <= indd And indd < 3) Then
      retvalu = lv_plsun_arr(indd)
   Else
      retvalu = 0.0
   End If
   plhelio = retvalu
End Function
Public Shared Function plgeo(ByVal indd As Integer) As Double
   ' local-use Vbdotnet lv_plgeo_arr
   Dim retvalu As Double
   If (0 <= indd And indd < 3) Then
      retvalu = lv_plgeo_arr(indd)
   Else
      retvalu = 0.0
   End If
   plgeo = retvalu
End Function
Public Shared Function pl_name(ByVal plnt As Integer) As Integer
   Dim plnt_ind As Integer
   plnt_ind = lf_pl_init(plnt)
   If (plnt_ind = LC_P1_SUN) Then
      Debug.Print("SUN      ")
   ElseIf (plnt_ind = LC_P1_MERCURY) Then
      Debug.Print("MERCURY  ")
   ElseIf (plnt_ind = LC_P1_VENUS) Then
      Debug.Print("VENUS    ")
   ElseIf (plnt_ind = LC_P1_EARTH) Then
      Debug.Print("EARTH    ")
   ElseIf (plnt_ind = LC_P1_MARS) Then
      Debug.Print("MARS     ")
   ElseIf (plnt_ind = LC_P1_JUPITER) Then
      Debug.Print("JUPITER  ")
   ElseIf (plnt_ind = LC_P1_SATURN) Then
      Debug.Print("SATURN   ")
   ElseIf (plnt_ind = LC_P1_URANUS) Then
      Debug.Print("URANUS   ")
   ElseIf (plnt_ind = LC_P1_NEPTUNE) Then
      Debug.Print("NEPTUNE  ")
   ElseIf (plnt_ind = LC_P1_PLUTO) Then
      Debug.Print("PLUTO    ")
   ElseIf (plnt_ind = LC_P1_CERES) Then
      Debug.Print("CERES    ")
   ElseIf (plnt_ind = LC_P1_ERIS) Then
      Debug.Print("ERIS     ")
   ElseIf (plnt_ind = LC_P1_MAKEMAKE) Then
      Debug.Print("MAKEMAKE ")
   ElseIf (plnt_ind = LC_P1_HAUMEA) Then
      Debug.Print("HAUMEA   ")
   Else
      Debug.Print("UNKNOWN")
      Debug.Print(plnt_ind)
   End If
   pl_name = plnt_ind
End Function
Public Shared Function plname() As Double
   ' local-use Vbdotnet lv_pl_ind
   plname = pl_name(LC_P1_PREV_PL)
End Function
Public Shared Function earthradius(ByVal lat_deg As Double) As Double
   earthradius = pl_aradius(LC_P1_EARTH, lat_deg)
End Function
Public Shared Function earthtropicalyear(ByVal jtwokdate As Double) As Double
   Dim jy As Double
   jy = jtwokdate * Kw.EARTH_SOLARDAY / Kw.JYEAR
   earthtropicalyear = ((((2.64E-16) * jy - 7.29E-14) * jy - 6.15359E-8) _
            * jy + 365.2421896698)
End Function
Public Shared Function earthdistance(ByVal lata_deg As Double, ByVal _
         lona_deg As Double, ByVal latb_deg As Double, ByVal lonb_deg As _
         Double) As Double
   earthdistance = EARTH_A * _
            Kw.great_circle_distance(Kw.deg2rad(lata_deg), _
            Kw.deg2rad(lona_deg), Kw.deg2rad(latb_deg), Kw.deg2rad(lonb_deg))
End Function
Public Shared Function plaradius(ByVal lat_deg As Double) As Double
   Dim calat As Double
   Dim sblat As Double
   Dim aa As Double
   Dim bb As Double
   aa = Kw.square(pla())
   bb = Kw.square(plb())
   calat = Kw.square(pla() * Kw.cosd(lat_deg))
   sblat = Kw.square(plb() * Kw.sind(lat_deg))
   plaradius = Math.Sqrt((aa * calat + bb * sblat) / (calat + sblat))
End Function
Public Shared Function pl_aradius(ByVal plnt As Integer, ByVal lat_deg As _
         Double) As Double
   Call pl(plnt)
   pl_aradius = plaradius(lat_deg)
End Function
Public Shared Function earthobliquity(ByVal jtwok As Double) As Double
   Dim tmill As Double
   Dim ob_arcsec As Double
   tmill = jtwok * Kw.EARTH_SOLARDAY / (1.0E+4 * Kw.JYEAR)
   ob_arcsec = (((((((((((2.45) * tmill + 5.79) * tmill + 27.8) * tmill + _
            7.12) * tmill - 39.05) * tmill - 249.67) * tmill - 51.38) * _
            tmill + 1999.25) * tmill - 1.55) * tmill - 4680.93) * tmill + _
            84381.448)
   earthobliquity = Kw.sec2rad(ob_arcsec)
End Function
Public Shared Function earthprecession(ByVal jtwok As Double) As Double
   Dim tmill As Double
   Dim ob_arcsec As Double
   tmill = jtwok * Kw.EARTH_SOLARDAY / (1.0E+4 * Kw.JYEAR)
   ob_arcsec = ((((((((((-8.66) * tmill - 47.59) * tmill + 24.24) * tmill _
            + 130.95) * tmill + 174.51) * tmill - 180.55) * tmill - _
            2353.16) * tmill + 77.32) * tmill + 11119.71) * tmill + _
            502909.66) * tmill + 0.0
   earthprecession = Kw.sec2rad(ob_arcsec)
End Function
Public Shared Function earthgravity(ByVal lat_deg As Double) As Double
   Dim slatsq As Double
   Dim obltsq As Double
   Dim kk As Double
   slatsq = Kw.square(Kw.sind(lat_deg))
   obltsq = EARTH_FLATNESS * (2.0 - EARTH_FLATNESS)
   kk = (((1.0 - EARTH_FLATNESS) * EARTH_GRAVITYB) - EARTH_GRAVITYA)
   earthgravity = (EARTH_GRAVITYA + kk * slatsq) / Math.Sqrt(1.0 - obltsq _
            * slatsq)
End Function
Public Shared Function earthgravity_height(ByVal lat_deg As Double, ByVal _
         height_m As Double) As Double
   earthgravity_height = (earthgravity(lat_deg) - height_m * 2.0 * _
            EARTH_GM / Kw.cube(EARTH_A))
End Function
Private Shared Function lf_isa_calc(ByVal height_m As Double, ByVal _
         state_x As Integer) As Double
   ' local-use Vbdotnet lv_isa_mtrx
   ' local-use Vbdotnet lv_isa_magic
   Dim h_ind As Integer
   Dim air_k_per_m As Double
   Dim expon As Double
   Dim this_temp As Double
   Dim delta_h As Double
   Dim retvalu As Double
   Dim tdiff As Double
   Dim hdiff As Double
   Dim lapse_kpm As Double
   If (Not Kw.ismagic(lv_isa_magic)) Then
      lv_isa_mtrx(0, LC_ISA_HEIGHT) = 0.0
      lv_isa_mtrx(0, LC_ISA_TEMP) = 288.15
      lv_isa_mtrx(0, LC_ISA_PRES) = Kw.ATM
      lv_isa_mtrx(0, LC_ISA_DENS) = 1.2250
      lv_isa_mtrx(1, LC_ISA_HEIGHT) = 1.1E+4
      lv_isa_mtrx(1, LC_ISA_TEMP) = 216.65
      lv_isa_mtrx(1, LC_ISA_PRES) = 22632.10
      lv_isa_mtrx(1, LC_ISA_DENS) = 0.36391
      lv_isa_mtrx(2, LC_ISA_HEIGHT) = 2.0E+4
      lv_isa_mtrx(2, LC_ISA_TEMP) = 216.65
      lv_isa_mtrx(2, LC_ISA_PRES) = 5474.89
      lv_isa_mtrx(2, LC_ISA_DENS) = 0.08803
      lv_isa_mtrx(3, LC_ISA_HEIGHT) = 3.2E+4
      lv_isa_mtrx(3, LC_ISA_TEMP) = 228.65
      lv_isa_mtrx(3, LC_ISA_PRES) = 868.02
      lv_isa_mtrx(3, LC_ISA_DENS) = 0.01322
      lv_isa_mtrx(4, LC_ISA_HEIGHT) = 4.7E+4
      lv_isa_mtrx(4, LC_ISA_TEMP) = 270.65
      lv_isa_mtrx(4, LC_ISA_PRES) = 110.91
      lv_isa_mtrx(4, LC_ISA_DENS) = 0.00143
      lv_isa_mtrx(5, LC_ISA_HEIGHT) = 5.1E+4
      lv_isa_mtrx(5, LC_ISA_TEMP) = 270.65
      lv_isa_mtrx(5, LC_ISA_PRES) = 66.94
      lv_isa_mtrx(5, LC_ISA_DENS) = 8.6E-4
      lv_isa_mtrx(6, LC_ISA_HEIGHT) = 7.1E+4
      lv_isa_mtrx(6, LC_ISA_TEMP) = 214.65
      lv_isa_mtrx(6, LC_ISA_PRES) = 3.96
      lv_isa_mtrx(6, LC_ISA_DENS) = 6.4E-5
      lv_isa_mtrx(7, LC_ISA_HEIGHT) = 84852
      lv_isa_mtrx(7, LC_ISA_TEMP) = 186.87
      lv_isa_mtrx(7, LC_ISA_PRES) = 0.3734
      lv_isa_mtrx(7, LC_ISA_DENS) = 7.0E-6
      lv_isa_mtrx(8, LC_ISA_HEIGHT) = 89700
      lv_isa_mtrx(8, LC_ISA_TEMP) = 186.87
      lv_isa_mtrx(8, LC_ISA_PRES) = 0.15
      lv_isa_mtrx(8, LC_ISA_DENS) = 3.0E-6
      lv_isa_mtrx(9, LC_ISA_HEIGHT) = 100400
      lv_isa_mtrx(9, LC_ISA_TEMP) = 199.55
      lv_isa_mtrx(9, LC_ISA_PRES) = 0.02
      lv_isa_mtrx(9, LC_ISA_DENS) = 5.0E-7
      lv_isa_mtrx(10, LC_ISA_HEIGHT) = 105000
      lv_isa_mtrx(10, LC_ISA_TEMP) = 217.65
      lv_isa_mtrx(10, LC_ISA_PRES) = 0.01
      lv_isa_mtrx(10, LC_ISA_DENS) = 2.0E-7
      lv_isa_mtrx(11, LC_ISA_HEIGHT) = 110000
      lv_isa_mtrx(11, LC_ISA_TEMP) = 263.95
      lv_isa_mtrx(11, LC_ISA_PRES) = 0.01
      lv_isa_mtrx(11, LC_ISA_DENS) = 1.0E-7
      lv_isa_magic = Kw.magicset()
   End If
   h_ind = LC_ISA_CNT - 1
   Do While (height_m < lv_isa_mtrx(h_ind, LC_ISA_HEIGHT) And 0 < h_ind)
      h_ind = h_ind - 1
   Loop
   delta_h = height_m - lv_isa_mtrx(h_ind, LC_ISA_HEIGHT)
   If (h_ind < LC_ISA_CNT - 1) Then
      tdiff = lv_isa_mtrx(h_ind + 1, LC_ISA_TEMP) - lv_isa_mtrx(h_ind, _
               LC_ISA_TEMP)
      hdiff = lv_isa_mtrx(h_ind + 1, LC_ISA_HEIGHT) - lv_isa_mtrx(h_ind, _
               LC_ISA_HEIGHT)
      lapse_kpm = tdiff / hdiff
   Else
      lapse_kpm = 0.003
   End If
   this_temp = lv_isa_mtrx(h_ind, LC_ISA_TEMP) + lapse_kpm * delta_h
   If (state_x = LC_ISA_TEMP) Then
      retvalu = this_temp
   Else
      air_k_per_m = Kw.GRAVITY * Kwelements.AIR_MASS / Kw.GAS
      If (Kw.iszero(lapse_kpm)) Then
         retvalu = Math.Exp(-air_k_per_m * delta_h / lv_isa_mtrx(h_ind, _
                  LC_ISA_TEMP))
      Else
         expon = air_k_per_m / lapse_kpm
         If (state_x = LC_ISA_DENS) Then
            expon = expon + 1
         End If
         retvalu = Math.Pow(lv_isa_mtrx(h_ind, LC_ISA_TEMP) / this_temp, _
                  expon)
      End If
      If (state_x = LC_ISA_PRES) Then
         retvalu = retvalu * lv_isa_mtrx(h_ind, LC_ISA_PRES)
      Else
         retvalu = retvalu * lv_isa_mtrx(h_ind, LC_ISA_DENS)
      End If
   End If
   lf_isa_calc = retvalu
End Function
Public Shared Function isa_temp(ByVal height_m As Double) As Double
   isa_temp = lf_isa_calc(height_m, LC_ISA_TEMP)
End Function
Public Shared Function isa_pres(ByVal height_m As Double) As Double
   isa_pres = lf_isa_calc(height_m, LC_ISA_PRES)
End Function
Public Shared Function isa_dens(ByVal height_m As Double) As Double
   isa_dens = lf_isa_calc(height_m, LC_ISA_DENS)
End Function
Public Shared Function vin_distance(ByVal lata_deg As Double, ByVal _
         lona_deg As Double, ByVal latb_deg As Double, ByVal lonb_deg As _
         Double, ret_bearings_arr_p() As Double) As Double
   Dim retvalu As Double
   Dim rad_arr(2) As Double
   retvalu = EARTH_A * Kw.ellipsoid_distance(EARTH_FLATNESS, _
            Kw.deg2rad(lata_deg), Kw.deg2rad(lona_deg), _
            Kw.deg2rad(latb_deg), Kw.deg2rad(lonb_deg), rad_arr)
   ret_bearings_arr_p(0) = Kw.rad2deg(rad_arr(0))
   ret_bearings_arr_p(1) = Kw.rad2deg(rad_arr(1))
   vin_distance = retvalu
End Function
Public Shared Function vin_destination(ByVal lata_deg As Double, ByVal _
         lona_deg As Double, ByVal heading_deg As Double, ByVal dist_m As _
         Double, ret_dest_arr_p() As Double) As Double
   Dim fltnss As Double
   Dim retvalu As Double
   Dim rad_arr(2) As Double
   fltnss = EARTH_FLATNESS
   retvalu = Kw.ellipsoid_destination(fltnss, Kw.deg2rad(lata_deg), _
            Kw.deg2rad(lona_deg), Kw.deg2rad(heading_deg), dist_m / _
            EARTH_A, rad_arr)
   ret_dest_arr_p(0) = Kw.rad2deg(rad_arr(0))
   ret_dest_arr_p(1) = Kw.rad2deg(rad_arr(1))
   vin_destination = Kw.rad2deg(retvalu)
End Function
Private Shared Function lf_prem(ByVal height_m As Double, ByVal state_x _
         As Integer) As Double
   Dim coec As Double
   Dim coeb As Double
   Dim coea As Double
   Dim hght_i As Double
   Dim hght_j As Double
   Dim retvalu As Double
   Dim mass_a As Double
   Dim mass_b As Double
   Dim mass_i As Double
   Dim mass_ip As Double
   Dim ii As Integer
   If (Not Kw.ismagic(lv_prem_magic)) Then
      lv_prem_mtrx(0, LC_PREM_XHEIGHT) = 0.0
      lv_prem_mtrx(0, LC_PREM_XCOEA) = 0.0
      lv_prem_mtrx(0, LC_PREM_XCOEB) = 0.0
      lv_prem_mtrx(0, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(1, LC_PREM_XHEIGHT) = 1.2215E+6
      lv_prem_mtrx(1, LC_PREM_XCOEA) = 1.3088E+4
      lv_prem_mtrx(1, LC_PREM_XCOEB) = 1.911E-8
      lv_prem_mtrx(1, LC_PREM_XCOEC) = -2.1773E-10
      lv_prem_mtrx(2, LC_PREM_XHEIGHT) = 3.480E+6
      lv_prem_mtrx(2, LC_PREM_XCOEA) = 1.2346E+4
      lv_prem_mtrx(2, LC_PREM_XCOEB) = 1.3976E-4
      lv_prem_mtrx(2, LC_PREM_XCOEC) = -2.4123E-10
      lv_prem_mtrx(3, LC_PREM_XHEIGHT) = 3.630E+6
      lv_prem_mtrx(3, LC_PREM_XCOEA) = 7.3067E+3
      lv_prem_mtrx(3, LC_PREM_XCOEB) = -5.0007E-4
      lv_prem_mtrx(3, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(4, LC_PREM_XHEIGHT) = 5.701E+6
      lv_prem_mtrx(4, LC_PREM_XCOEA) = 6.7823E+3
      lv_prem_mtrx(4, LC_PREM_XCOEB) = -2.4441E-4
      lv_prem_mtrx(4, LC_PREM_XCOEC) = -3.0922E-11
      lv_prem_mtrx(5, LC_PREM_XHEIGHT) = 5.771E+6
      lv_prem_mtrx(5, LC_PREM_XCOEA) = 5.3197E+3
      lv_prem_mtrx(5, LC_PREM_XCOEB) = -2.3286E-4
      lv_prem_mtrx(5, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(6, LC_PREM_XHEIGHT) = 5.971E+6
      lv_prem_mtrx(6, LC_PREM_XCOEA) = 1.1249E+4
      lv_prem_mtrx(6, LC_PREM_XCOEB) = -1.2603E-3
      lv_prem_mtrx(6, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(7, LC_PREM_XHEIGHT) = 6.151E+6
      lv_prem_mtrx(7, LC_PREM_XCOEA) = 7.1083E+3
      lv_prem_mtrx(7, LC_PREM_XCOEB) = -5.9706E-4
      lv_prem_mtrx(7, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(8, LC_PREM_XHEIGHT) = 6.3466E+6
      lv_prem_mtrx(8, LC_PREM_XCOEA) = 2.691E+3
      lv_prem_mtrx(8, LC_PREM_XCOEB) = 1.0869E-4
      lv_prem_mtrx(8, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(9, LC_PREM_XHEIGHT) = 6.356E+6
      lv_prem_mtrx(9, LC_PREM_XCOEA) = 2.9E+3
      lv_prem_mtrx(9, LC_PREM_XCOEB) = 0.0
      lv_prem_mtrx(9, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(10, LC_PREM_XHEIGHT) = 6.368E+6
      lv_prem_mtrx(10, LC_PREM_XCOEA) = 2.6E+3
      lv_prem_mtrx(10, LC_PREM_XCOEB) = 0.0
      lv_prem_mtrx(10, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(11, LC_PREM_XHEIGHT) = 6.371E+6
      lv_prem_mtrx(11, LC_PREM_XCOEA) = 1.02E+3
      lv_prem_mtrx(11, LC_PREM_XCOEB) = 0.0
      lv_prem_mtrx(11, LC_PREM_XCOEC) = 0.0
      lv_prem_mtrx(0, LC_PREM_XMASSD) = 0.0
      mass_i = 0.0
      For ii = 1 To 11
         hght_i = lv_prem_mtrx(ii - 1, LC_PREM_XHEIGHT)
         mass_b = 2.0 * Kw.TAU * hght_i * hght_i * hght_i * _
                  ((lv_prem_mtrx(ii, LC_PREM_XCOEC) / 5.0 * hght_i + _
                  lv_prem_mtrx(ii, LC_PREM_XCOEB) / 4.0) * hght_i + _
                  lv_prem_mtrx(ii, LC_PREM_XCOEA) / 3.0)
         hght_j = lv_prem_mtrx(ii, LC_PREM_XHEIGHT)
         mass_a = 2.0 * Kw.TAU * hght_j * hght_j * hght_j * _
                  ((lv_prem_mtrx(ii, LC_PREM_XCOEC) / 5.0 * hght_j + _
                  lv_prem_mtrx(ii, LC_PREM_XCOEB) / 4.0) * hght_j + _
                  lv_prem_mtrx(ii, LC_PREM_XCOEA) / 3.0)
         mass_ip = mass_i
         mass_i = mass_i + (mass_a - mass_b)
         lv_prem_mtrx(ii, LC_PREM_XMASSD) = mass_ip - mass_b
      Next
      lv_prem_magic = Kw.magicset()
   End If
   If (height_m <= 0.0) Then
      retvalu = 0.0
   ElseIf (EARTH_RADIUS < height_m) Then
      If (state_x = 0) Then
         retvalu = 0.0
      Else
         retvalu = EARTH_MASS
      End If
   Else
      ii = 0
      Do While (lv_prem_mtrx(ii, LC_PREM_XHEIGHT) < height_m)
         ii = ii + 1
      Loop
      coea = lv_prem_mtrx(ii, LC_PREM_XCOEA)
      coeb = lv_prem_mtrx(ii, LC_PREM_XCOEB)
      coec = lv_prem_mtrx(ii, LC_PREM_XCOEC)
      If (state_x = 0) Then
         retvalu = (coec * height_m + coeb) * height_m + coea
      ElseIf (state_x = 1) Then
         hght_i = lv_prem_mtrx(ii, LC_PREM_XHEIGHT)
         coec = coec / 5.0
         coeb = coeb / 4.0
         coea = coea / 3.0
         mass_a = 2.0 * Kw.TAU * height_m * height_m * height_m * ((coec _
                  * height_m + coeb) * height_m + coea)
         retvalu = mass_a + lv_prem_mtrx(ii, LC_PREM_XMASSD)
      End If
   End If
   lf_prem = retvalu
End Function
Public Shared Function prem_density(ByVal height_m As Double) As Double
   prem_density = lf_prem(height_m, LC_PREM_DENS)
End Function
Public Shared Function prem_mass(ByVal height_m As Double) As Double
   prem_mass = lf_prem(height_m, LC_PREM_MASS)
End Function
Public Shared Function prem_g(ByVal height_m As Double) As Double
   Dim retvalu As Double
   If (height_m <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Kw.GRAVITATION * prem_mass(height_m) / (height_m * height_m)
   End If
   prem_g = retvalu
End Function
'   DDDDDDDDDDescription ############################ kwplanets_description #
Public Function kwplanets_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwplanets Constants: ANOMALISTICYEAR CERES_A CERES_ASCENDIN" _
         & "G CERES_ASCENDING_DT CERES_B CERES_C CERES_DAY CERES_DENSITY C" _
         & "ERES_ECCENTRICITY CERES_ECCENTRICITY_DT CERES_FLATNESS CERES_G" _
         & "M CERES_GRAVITY CERES_INCLINATION CERES_INCLINATION_DT CERES_L" _
         & "ONGITUDE CERES_LONGITUDE_DT CERES_MASS CERES_ORBIT CERES_ORBIT" _
         & "_DT CERES_PERIAPSIS CERES_PERIAPSIS_DT CERES_RADIUS CERES_SURF" _
         & "ACE CERES_SYNODIC CERES_VOLUME CERES_YEAR EARTH_A EARTH_ANOMAL" _
         & "ISTICYEAR EARTH_ASCENDING EARTH_ASCENDING_DT EARTH_B EARTH_C E" _
         & "ARTH_DAY EARTH_DENSITY EARTH_ECCENTRICITY EARTH_ECCENTRICITY_D" _
         & "T EARTH_FLATNESS EARTH_GM EARTH_GRAVITY EARTH_GRAVITYA EARTH_G" _
         & "RAVITYB EARTH_INCLINATION EARTH_INCLINATION_DT EARTH_LONGITUDE"
   desc_string = desc_string _
         & " EARTH_LONGITUDE_DT EARTH_MASS EARTH_ORBIT EARTH_ORBIT_DT EART" _
         & "H_PERIAPSIS EARTH_PERIAPSIS_DT EARTH_RADIUS EARTH_SIDEREALDAY " _
         & "EARTH_SIDEREALYEAR EARTH_STELLARDAY EARTH_SURFACE EARTH_THETA_" _
         & "0 EARTH_TROPICALYEAR EARTH_VOLUME EARTH_YEAR ERIS_A ERIS_ASCEN" _
         & "DING ERIS_ASCENDING_DT ERIS_B ERIS_C ERIS_DAY ERIS_DENSITY ERI" _
         & "S_ECCENTRICITY ERIS_ECCENTRICITY_DT ERIS_FLATNESS ERIS_GM ERIS" _
         & "_GRAVITY ERIS_INCLINATION ERIS_INCLINATION_DT ERIS_LONGITUDE E" _
         & "RIS_LONGITUDE_DT ERIS_MASS ERIS_ORBIT ERIS_ORBIT_DT ERIS_PERIA" _
         & "PSIS ERIS_PERIAPSIS_DT ERIS_RADIUS ERIS_SURFACE ERIS_SYNODIC E" _
         & "RIS_VOLUME ERIS_YEAR HAUMEA_A HAUMEA_ASCENDING HAUMEA_ASCENDIN" _
         & "G_DT HAUMEA_B HAUMEA_C HAUMEA_DAY HAUMEA_DENSITY HAUMEA_ECCENT" _
         & "RICITY HAUMEA_ECCENTRICITY_DT HAUMEA_FLATNESS HAUMEA_GM HAUMEA"
   desc_string = desc_string _
         & "_GRAVITY HAUMEA_INCLINATION HAUMEA_INCLINATION_DT HAUMEA_LONGI" _
         & "TUDE HAUMEA_LONGITUDE_DT HAUMEA_MASS HAUMEA_ORBIT HAUMEA_ORBIT" _
         & "_DT HAUMEA_PERIAPSIS HAUMEA_PERIAPSIS_DT HAUMEA_RADIUS HAUMEA_" _
         & "SURFACE HAUMEA_SYNODIC HAUMEA_VOLUME HAUMEA_YEAR JUPITER_A JUP" _
         & "ITER_ASCENDING JUPITER_ASCENDING_DT JUPITER_B JUPITER_C JUPITE" _
         & "R_DAY JUPITER_DENSITY JUPITER_ECCENTRICITY JUPITER_ECCENTRICIT" _
         & "Y_DT JUPITER_FLATNESS JUPITER_GM JUPITER_GRAVITY JUPITER_INCLI" _
         & "NATION JUPITER_INCLINATION_DT JUPITER_LONGITUDE JUPITER_LONGIT" _
         & "UDE_DT JUPITER_MASS JUPITER_ORBIT JUPITER_ORBIT_DT JUPITER_PER" _
         & "IAPSIS JUPITER_PERIAPSIS_DT JUPITER_RADIUS JUPITER_SURFACE JUP" _
         & "ITER_SYNODIC JUPITER_VOLUME JUPITER_YEAR LC_ISA_CNT LC_ISA_DEN" _
         & "S LC_ISA_HEIGHT LC_ISA_KEY_CNT LC_ISA_PRES LC_ISA_TEMP LC_P1_C"
   desc_string = desc_string _
         & "ERES LC_P1_CNT LC_P1_EARTH LC_P1_ERIS LC_P1_ERR LC_P1_HAUMEA L" _
         & "C_P1_JUPITER LC_P1_MAKEMAKE LC_P1_MARS LC_P1_MERCURY LC_P1_NEP" _
         & "TUNE LC_P1_PLUTO LC_P1_PREV_PL LC_P1_SATURN LC_P1_SUN LC_P1_UR" _
         & "ANUS LC_P1_VENUS LC_P2_A LC_P2_ASC LC_P2_ASC_DT LC_P2_C LC_P2_" _
         & "CNT LC_P2_DAY LC_P2_ECC LC_P2_ECC_DT LC_P2_FLATNESS LC_P2_GM L" _
         & "C_P2_INC LC_P2_INC_DT LC_P2_LON LC_P2_LON_DT LC_P2_ORB LC_P2_O" _
         & "RB_DT LC_P2_PER LC_P2_PER_DT LC_P2_YEAR LC_PREM_DENS LC_PREM_M" _
         & "ASS LC_PREM_XCOEA LC_PREM_XCOEB LC_PREM_XCOEC LC_PREM_XHEIGHT " _
         & "LC_PREM_XMASSD MAKEMAKE_A MAKEMAKE_ASCENDING MAKEMAKE_ASCENDIN" _
         & "G_DT MAKEMAKE_B MAKEMAKE_C MAKEMAKE_DAY MAKEMAKE_DENSITY MAKEM" _
         & "AKE_ECCENTRICITY MAKEMAKE_ECCENTRICITY_DT MAKEMAKE_FLATNESS MA" _
         & "KEMAKE_GM MAKEMAKE_GRAVITY MAKEMAKE_INCLINATION MAKEMAKE_INCLI"
   desc_string = desc_string _
         & "NATION_DT MAKEMAKE_LONGITUDE MAKEMAKE_LONGITUDE_DT MAKEMAKE_MA" _
         & "SS MAKEMAKE_ORBIT MAKEMAKE_ORBIT_DT MAKEMAKE_PERIAPSIS MAKEMAK" _
         & "E_PERIAPSIS_DT MAKEMAKE_RADIUS MAKEMAKE_SURFACE MAKEMAKE_SYNOD" _
         & "IC MAKEMAKE_VOLUME MAKEMAKE_YEAR MARS_A MARS_ASCENDING MARS_AS" _
         & "CENDING_DT MARS_B MARS_C MARS_DAY MARS_DENSITY MARS_ECCENTRICI" _
         & "TY MARS_ECCENTRICITY_DT MARS_FLATNESS MARS_GM MARS_GRAVITY MAR" _
         & "S_INCLINATION MARS_INCLINATION_DT MARS_LONGITUDE MARS_LONGITUD" _
         & "E_DT MARS_MASS MARS_ORBIT MARS_ORBIT_DT MARS_PERIAPSIS MARS_PE" _
         & "RIAPSIS_DT MARS_RADIUS MARS_SURFACE MARS_SYNODIC MARS_VOLUME M" _
         & "ARS_YEAR MERCURY_A MERCURY_ASCENDING MERCURY_ASCENDING_DT MERC" _
         & "URY_B MERCURY_C MERCURY_DAY MERCURY_DENSITY MERCURY_ECCENTRICI" _
         & "TY MERCURY_ECCENTRICITY_DT MERCURY_FLATNESS MERCURY_GM MERCURY"
   desc_string = desc_string _
         & "_GRAVITY MERCURY_INCLINATION MERCURY_INCLINATION_DT MERCURY_LO" _
         & "NGITUDE MERCURY_LONGITUDE_DT MERCURY_MASS MERCURY_ORBIT MERCUR" _
         & "Y_ORBIT_DT MERCURY_PERIAPSIS MERCURY_PERIAPSIS_DT MERCURY_RADI" _
         & "US MERCURY_SURFACE MERCURY_SYNODIC MERCURY_VOLUME MERCURY_YEAR" _
         & " MOON_A MOON_B MOON_C MOON_DAY MOON_DENSITY MOON_ECCENTRICITY " _
         & "MOON_FLATNESS MOON_GM MOON_GRAVITY MOON_INCLINATION MOON_MASS " _
         & "MOON_ORBIT MOON_RADIUS MOON_SURFACE MOON_SYNODIC MOON_VOLUME M" _
         & "OON_YEAR NEPTUNE_A NEPTUNE_ASCENDING NEPTUNE_ASCENDING_DT NEPT" _
         & "UNE_B NEPTUNE_C NEPTUNE_DAY NEPTUNE_DENSITY NEPTUNE_ECCENTRICI" _
         & "TY NEPTUNE_ECCENTRICITY_DT NEPTUNE_FLATNESS NEPTUNE_GM NEPTUNE" _
         & "_GRAVITY NEPTUNE_INCLINATION NEPTUNE_INCLINATION_DT NEPTUNE_LO" _
         & "NGITUDE NEPTUNE_LONGITUDE_DT NEPTUNE_MASS NEPTUNE_ORBIT NEPTUN"
   desc_string = desc_string _
         & "E_ORBIT_DT NEPTUNE_PERIAPSIS NEPTUNE_PERIAPSIS_DT NEPTUNE_RADI" _
         & "US NEPTUNE_SURFACE NEPTUNE_SYNODIC NEPTUNE_VOLUME NEPTUNE_YEAR" _
         & " PLUTO_A PLUTO_ASCENDING PLUTO_ASCENDING_DT PLUTO_B PLUTO_C PL" _
         & "UTO_DAY PLUTO_DENSITY PLUTO_ECCENTRICITY PLUTO_ECCENTRICITY_DT" _
         & " PLUTO_FLATNESS PLUTO_GM PLUTO_GRAVITY PLUTO_INCLINATION PLUTO" _
         & "_INCLINATION_DT PLUTO_LONGITUDE PLUTO_LONGITUDE_DT PLUTO_MASS " _
         & "PLUTO_ORBIT PLUTO_ORBIT_DT PLUTO_PERIAPSIS PLUTO_PERIAPSIS_DT " _
         & "PLUTO_RADIUS PLUTO_SURFACE PLUTO_SYNODIC PLUTO_VOLUME PLUTO_YE" _
         & "AR SATURN_A SATURN_ASCENDING SATURN_ASCENDING_DT SATURN_B SATU" _
         & "RN_C SATURN_DAY SATURN_DENSITY SATURN_ECCENTRICITY SATURN_ECCE" _
         & "NTRICITY_DT SATURN_FLATNESS SATURN_GM SATURN_GRAVITY SATURN_IN" _
         & "CLINATION SATURN_INCLINATION_DT SATURN_LONGITUDE SATURN_LONGIT"
   desc_string = desc_string _
         & "UDE_DT SATURN_MASS SATURN_ORBIT SATURN_ORBIT_DT SATURN_PERIAPS" _
         & "IS SATURN_PERIAPSIS_DT SATURN_RADIUS SATURN_SURFACE SATURN_SYN" _
         & "ODIC SATURN_VOLUME SATURN_YEAR SIDEREALYEAR SUN_A SUN_ASCENDIN" _
         & "G SUN_ASCENDING_DT SUN_B SUN_C SUN_DAY SUN_DENSITY SUN_ECCENTR" _
         & "ICITY SUN_ECCENTRICITY_DT SUN_FLATNESS SUN_GM SUN_GMIERS SUN_G" _
         & "MNASA SUN_GRAVITY SUN_INCLINATION SUN_INCLINATION_DT SUN_LONGI" _
         & "TUDE SUN_LONGITUDE_DT SUN_MASS SUN_ORBIT SUN_ORBIT_DT SUN_PERI" _
         & "APSIS SUN_PERIAPSIS_DT SUN_RADIUS SUN_SURFACE SUN_VOLUME SUN_Y" _
         & "EAR TROPICALYEAR URANUS_A URANUS_ASCENDING URANUS_ASCENDING_DT" _
         & " URANUS_B URANUS_C URANUS_DAY URANUS_DENSITY URANUS_ECCENTRICI" _
         & "TY URANUS_ECCENTRICITY_DT URANUS_FLATNESS URANUS_GM URANUS_GRA" _
         & "VITY URANUS_INCLINATION URANUS_INCLINATION_DT URANUS_LONGITUDE" _
         & " URANUS_LONGITUDE_DT URANUS_MASS URANUS_ORBIT URANUS_ORBIT_DT " _
         & "URANUS_PERIAPSIS URANUS_PERIAPSIS_DT URANUS_RADIUS URANUS_SURF" _
         & "ACE URANUS_SYNODIC URANUS_VOLUME URANUS_YEAR VENUS_A VENUS_ASC" _
         & "ENDING VENUS_ASCENDING_DT VENUS_B VENUS_C VENUS_DAY VENUS_DENS" _
         & "ITY VENUS_ECCENTRICITY VENUS_ECCENTRICITY_DT VENUS_FLATNESS VE" _
         & "NUS_GM VENUS_GRAVITY VENUS_INCLINATION VENUS_INCLINATION_DT VE" _
         & "NUS_LONGITUDE VENUS_LONGITUDE_DT VENUS_MASS VENUS_ORBIT VENUS_" _
         & "ORBIT_DT VENUS_PERIAPSIS VENUS_PERIAPSIS_DT VENUS_RADIUS VENUS" _
         & "_SURFACE VENUS_SYNODIC VENUS_VOLUME VENUS_YEAR" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 0-ary Functions: pla plaphelion plargument plasce" _
         & "nding plb plc plday pldensity pleccentricanomaly pleccentricit" _
         & "y plescape plflatness plgm plgravity plinclination pllongitude" _
         & " plmargot plmass plmeananomaly plname plorbit plperiapsis plpe" _
         & "rihelion plradius plsternlevison plsurface plsynodic plvolume " _
         & "plyear" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 1-ary Functions: earthgravity earthobliquity eart" _
         & "hprecession earthradius earthtropicalyear isa_dens isa_pres is" _
         & "a_temp pl pl_a pl_aphelion pl_argument pl_ascending pl_b pl_c " _
         & "pl_day pl_density pl_eccentricanomaly pl_eccentricity pl_escap" _
         & "e pl_flatness pl_gm pl_gravity pl_inclination pl_longitude pl_" _
         & "margot pl_mass pl_meananomaly pl_name pl_orbit pl_periapsis pl" _
         & "_perihelion pl_radius pl_sternlevison pl_surface pl_synodic pl" _
         & "_volume pl_year plaradius plgeo plhelio plsettime prem_density" _
         & " prem_g prem_mass" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 2-ary Functions: earthgravity_height eccentric_an" _
         & "omaly margot orbit_v orbitgm_v pl_aradius pl_heliocentric ster" _
         & "nlevison" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 4-ary Functions: earthdistance" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 5-ary Functions: vin_destination vin_distance"
   kwplanets_description = desc_string
End Function
Public Function kwplanets_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwplanets Constants: ANOMALISTICYEAR CERES_(A(SCENDING(_DT)" _
         & "?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)|I" _
         & "NCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_D" _
         & "T)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) EARTH_(A(NOMALISTICYE" _
         & "AR|SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNE" _
         & "SS|G(M|RAVITY[AB]?)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORB" _
         & "IT(_DT)?|PERIAPSIS(_DT)?|RADIUS|S(IDEREAL(DAY|YEAR)|TELLARDAY|" _
         & "URFACE)|T(HETA_0|ROPICALYEAR)|VOLUME|YEAR) ERIS_(A(SCENDING(_D" _
         & "T)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)" _
         & "|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(" _
         & "_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) HAUMEA_(A(SCENDING("
   desc_string = desc_string _
         & "_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVIT" _
         & "Y)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSI" _
         & "S(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) JUPITER_(A(SCENDI" _
         & "NG(_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RA" _
         & "VITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIA" _
         & "PSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) LC_(ISA_(CNT|D" _
         & "ENS|HEIGHT|KEY_CNT|PRES|TEMP)|P(1_(C(ERES|NT)|E(ARTH|R(IS|R))|" _
         & "HAUMEA|JUPITER|M(A(KEMAKE|RS)|ERCURY)|NEPTUNE|P(LUTO|REV_PL)|S" _
         & "(ATURN|UN)|URANUS|VENUS)|2_(A(SC(_DT)?)?|C(NT)?|DAY|ECC(_DT)?|" _
         & "FLATNESS|GM|INC(_DT)?|LON(_DT)?|ORB(_DT)?|PER(_DT)?|YEAR)|REM_" _
         & "(DENS|MASS|X(COE[ABC]|HEIGHT|MASSD)))) MAKEMAKE_(A(SCENDING(_D" _
         & "T)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)"
   desc_string = desc_string _
         & "|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(" _
         & "_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) MARS_(A(SCENDING(_D" _
         & "T)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)" _
         & "|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(" _
         & "_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) MERCURY_(A(SCENDING" _
         & "(_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVI" _
         & "TY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPS" _
         & "IS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) MOON_([ABC]|D(AY" _
         & "|ENSITY)|ECCENTRICITY|FLATNESS|G(M|RAVITY)|INCLINATION|MASS|OR" _
         & "BIT|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) NEPTUNE_(A(SCENDING(_" _
         & "DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY" _
         & ")|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS"
   desc_string = desc_string _
         & "(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) PLUTO_(A(SCENDING(" _
         & "_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVIT" _
         & "Y)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSI" _
         & "S(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) SATURN_(A(SCENDIN" _
         & "G(_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAV" _
         & "ITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAP" _
         & "SIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) SIDEREALYEAR SU" _
         & "N_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLAT" _
         & "NESS|G(M(IERS|NASA)?|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?" _
         & "|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|SURFACE|VOLUME|YEAR) " _
         & "TROPICALYEAR URANUS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|ECCEN" _
         & "TRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE" _
         & "(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC" _
         & ")|VOLUME|YEAR) VENUS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|ECCE" _
         & "NTRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUD" _
         & "E(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODI" _
         & "C)|VOLUME|YEAR)" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 0-ary Functions: pla(phelion|rgument|scending)? p" _
         & "lb plc pld(ay|ensity) ple(ccentric(anomaly|ity)|scape) plflatn" _
         & "ess plg(m|ravity) plinclination pllongitude plm(a(rgot|ss)|ean" _
         & "anomaly) plname plorbit plperi(apsis|helion) plradius pls(tern" _
         & "levison|urface|ynodic) plvolume plyear" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 1-ary Functions: earth(gravity|obliquity|precessi" _
         & "on|radius|tropicalyear) isa_(dens|pres|temp) pl pl_(a(phelion|" _
         & "rgument|scending)?|b|c|d(ay|ensity)|e(ccentric(anomaly|ity)|sc" _
         & "ape)|flatness|g(m|ravity)|inclination|longitude|m(a(rgot|ss)|e" _
         & "ananomaly)|name|orbit|peri(apsis|helion)|radius|s(ternlevison|" _
         & "urface|ynodic)|volume|year) plaradius plgeo plhelio plsettime " _
         & "prem_(density|g|mass)" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 2-ary Functions: earthgravity_height eccentric_an" _
         & "omaly margot orbit(_v|gm_v) pl_(aradius|heliocentric) sternlev" _
         & "ison" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 4-ary Functions: earthdistance" & vbNL
   desc_string = desc_string _
         & "   Kwplanets 5-ary Functions: vin_d(estination|istance)"
   kwplanets_desc = desc_string
End Function
End Class
