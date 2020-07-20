'    Copyright (C) 2020 by Kevin D. Woerner
''-' =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
''-' =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
''-' =KDW= ##### SRC $KWROOT/codekdw/kw-lib/Kwplanets.fwipp #####
' 2020-07-20 kdw  For Changelog, See File Kwplanets.varylog
Option Explicit On
Imports System.IO.Filestream
Public Class KWPLANETS
   Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables ------------------- LANG_VBDOTNET #
Public Const EARTHSIDEREALDAY As Double = Kw.EARTHSOLARDAY / _
      1.002737909350795
Public Const EARTHSTELLARDAY As Double = Kw.EARTHSOLARDAY / _
      1.00273781191135448
Public Const EARTHTROPICALYEAR As Double = 365.242190402 * _
      Kw.EARTHSOLARDAY
Public Const EARTHSIDEREALYEAR As Double = 365.256363004 * _
      Kw.EARTHSOLARDAY
Public Const EARTHANOMALISTICYEAR As Double = 365.259636 * _
      Kw.EARTHSOLARDAY
Public Const SIDEREALYEAR As Double = EARTHSIDEREALYEAR
Public Const ANOMALISTICYEAR As Double = EARTHANOMALISTICYEAR
Public Const TROPICALYEAR As Double = EARTHTROPICALYEAR
Public Const STELLARDAY As Double = EARTHSTELLARDAY
Public Const SIDEREALDAY As Double = EARTHSIDEREALDAY
Public Const SUNGMNASA As Double = 1.32712440018E+20 * Kw.UNITGM
Public Const SUNGMIERS As Double = 1.32712442099E+20 * Kw.UNITGM
Public Const SUNGM As Double = SUNGMNASA
Public Const SUNYEAR As Double = 0.0 * Kw.EARTHSOLARDAY
Public Const SUNDAY As Double = 24.47 * Kw.EARTHSOLARDAY
Public Const SUNFLATNESS As Double = 9.0E-6
Public Const SUN_A As Double = 6.957E+8 * Kw.METER
Public Const SUN_C As Double = SUN_A
Public Const SUN_B As Double = SUN_A * (1.0 - SUNFLATNESS)
Public Const SUNRADIUS As Double = 0.333333333333333 * (SUN_A _
      + SUN_B + SUN_C)
Public Const SUNGRAVITY As Double = SUNGM / (SUNRADIUS * _
      SUNRADIUS)
Public Const SUNMASS As Double = SUNGM / Kw.GRAVITATION
Public Const SUNVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      SUNRADIUS * SUNRADIUS * SUNRADIUS
Public Const SUNDENSITY As Double = SUNMASS / SUNVOLUME
Public Const MERCURYGM As Double = 2.2032E+13 * Kw.UNITGM
Public Const MERCURYYEAR As Double = 87.9691 * Kw.EARTHSOLARDAY
Public Const MERCURYDAY As Double = 58.6462 * Kw.EARTHSOLARDAY
Public Const MERCURYFLATNESS As Double = 0.0
Public Const MERCURY_A As Double = 2.4397E+6 * Kw.METER
Public Const MERCURY_C As Double = MERCURY_A
Public Const MERCURY_B As Double = MERCURY_A * (1.0 - _
      MERCURYFLATNESS)
Public Const MERCURYRADIUS As Double = 0.333333333333333 * _
      (MERCURY_A + MERCURY_B + MERCURY_C)
Public Const MERCURYGRAVITY As Double = MERCURYGM / _
      (MERCURYRADIUS * MERCURYRADIUS)
Public Const MERCURYMASS As Double = MERCURYGM / Kw.GRAVITATION
Public Const MERCURYVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      MERCURYRADIUS * MERCURYRADIUS * MERCURYRADIUS
Public Const MERCURYDENSITY As Double = MERCURYMASS / _
      MERCURYVOLUME
Public Const VENUSGM As Double = 3.24859E+14 * Kw.UNITGM
Public Const VENUSYEAR As Double = 224.701 * Kw.EARTHSOLARDAY
Public Const VENUSDAY As Double = -243.018 * Kw.EARTHSOLARDAY
Public Const VENUSFLATNESS As Double = 0.0
Public Const VENUS_A As Double = 6.0518E+6 * Kw.METER
Public Const VENUS_C As Double = VENUS_A
Public Const VENUS_B As Double = VENUS_A * (1.0 - VENUSFLATNESS)
Public Const VENUSRADIUS As Double = 0.333333333333333 * _
      (VENUS_A + VENUS_B + VENUS_C)
Public Const VENUSGRAVITY As Double = VENUSGM / (VENUSRADIUS _
      * VENUSRADIUS)
Public Const VENUSMASS As Double = VENUSGM / Kw.GRAVITATION
Public Const VENUSVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      VENUSRADIUS * VENUSRADIUS * VENUSRADIUS
Public Const VENUSDENSITY As Double = VENUSMASS / VENUSVOLUME
Public Const EARTHGM As Double = 3.986004418E+14 * Kw.UNITGM
Public Const EARTHYEAR As Double = EARTHSIDEREALYEAR
Public Const EARTHDAY As Double = EARTHSTELLARDAY
Public Const EARTHFLATNESS As Double = 1.0 / 298.257223563
Public Const EARTH_A As Double = 6.378137E+6 * Kw.METER
Public Const EARTH_C As Double = EARTH_A
Public Const EARTH_B As Double = EARTH_A * (1.0 - EARTHFLATNESS)
Public Const EARTHRADIUS As Double = 0.333333333333333 * _
      (EARTH_A + EARTH_B + EARTH_C)
Public Const EARTHGRAVITY As Double = EARTHGM / (EARTHRADIUS _
      * EARTHRADIUS)
Public Const EARTHMASS As Double = EARTHGM / Kw.GRAVITATION
Public Const EARTHVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      EARTHRADIUS * EARTHRADIUS * EARTHRADIUS
Public Const EARTHDENSITY As Double = EARTHMASS / EARTHVOLUME
Public Const EARTHPRECESSION As Double = 50.28792 * Kw.ARCSEC _
      / Kw.JYEAR
Public Const EARTHTHETA_0 As Double = 0.7790572732640 * Kw.TURN
Public Const MARSGM As Double = 4.282837E+13 * Kw.UNITGM
Public Const MARSYEAR As Double = 686.971 * Kw.EARTHSOLARDAY
Public Const MARSDAY As Double = 1.02595676 * Kw.EARTHSOLARDAY
Public Const MARSFLATNESS As Double = 1.0 / 169.81
Public Const MARS_A As Double = 3.3962E+6 * Kw.METER
Public Const MARS_C As Double = MARS_A
Public Const MARS_B As Double = MARS_A * (1.0 - MARSFLATNESS)
Public Const MARSRADIUS As Double = 0.333333333333333 * _
      (MARS_A + MARS_B + MARS_C)
Public Const MARSGRAVITY As Double = MARSGM / (MARSRADIUS * _
      MARSRADIUS)
Public Const MARSMASS As Double = MARSGM / Kw.GRAVITATION
Public Const MARSVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      MARSRADIUS * MARSRADIUS * MARSRADIUS
Public Const MARSDENSITY As Double = MARSMASS / MARSVOLUME
Public Const JUPITERGM As Double = 1.26686534E+17 * Kw.UNITGM
Public Const JUPITERYEAR As Double = 4332.59 * Kw.EARTHSOLARDAY
Public Const JUPITERDAY As Double = 0.41354 * Kw.EARTHSOLARDAY
Public Const JUPITERFLATNESS As Double = 1.0 / 15.4144028
Public Const JUPITER_A As Double = 7.1492E+7 * Kw.METER
Public Const JUPITER_C As Double = JUPITER_A
Public Const JUPITER_B As Double = JUPITER_A * (1.0 - _
      JUPITERFLATNESS)
Public Const JUPITERRADIUS As Double = 0.333333333333333 * _
      (JUPITER_A + JUPITER_B + JUPITER_C)
Public Const JUPITERGRAVITY As Double = JUPITERGM / _
      (JUPITERRADIUS * JUPITERRADIUS)
Public Const JUPITERMASS As Double = JUPITERGM / Kw.GRAVITATION
Public Const JUPITERVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      JUPITERRADIUS * JUPITERRADIUS * JUPITERRADIUS
Public Const JUPITERDENSITY As Double = JUPITERMASS / _
      JUPITERVOLUME
Public Const SATURNGM As Double = 3.7931187E+16 * Kw.UNITGM
Public Const SATURNYEAR As Double = 10759.22 * Kw.EARTHSOLARDAY
Public Const SATURNDAY As Double = 0.44401 * Kw.EARTHSOLARDAY
Public Const SATURNFLATNESS As Double = 1.0 / 10.208
Public Const SATURN_A As Double = 6.0268E+7 * Kw.METER
Public Const SATURN_C As Double = SATURN_A
Public Const SATURN_B As Double = SATURN_A * (1.0 - _
      SATURNFLATNESS)
Public Const SATURNRADIUS As Double = 0.333333333333333 * _
      (SATURN_A + SATURN_B + SATURN_C)
Public Const SATURNGRAVITY As Double = SATURNGM / _
      (SATURNRADIUS * SATURNRADIUS)
Public Const SATURNMASS As Double = SATURNGM / Kw.GRAVITATION
Public Const SATURNVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      SATURNRADIUS * SATURNRADIUS * SATURNRADIUS
Public Const SATURNDENSITY As Double = SATURNMASS / SATURNVOLUME
Public Const URANUSGM As Double = 5.793939E+15 * Kw.UNITGM
Public Const URANUSYEAR As Double = 30688.5 * Kw.EARTHSOLARDAY
Public Const URANUSDAY As Double = -0.71833 * Kw.EARTHSOLARDAY
Public Const URANUSFLATNESS As Double = 1.0 / 43.61604
Public Const URANUS_A As Double = 2.5559E+7 * Kw.METER
Public Const URANUS_C As Double = URANUS_A
Public Const URANUS_B As Double = URANUS_A * (1.0 - _
      URANUSFLATNESS)
Public Const URANUSRADIUS As Double = 0.333333333333333 * _
      (URANUS_A + URANUS_B + URANUS_C)
Public Const URANUSGRAVITY As Double = URANUSGM / _
      (URANUSRADIUS * URANUSRADIUS)
Public Const URANUSMASS As Double = URANUSGM / Kw.GRAVITATION
Public Const URANUSVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      URANUSRADIUS * URANUSRADIUS * URANUSRADIUS
Public Const URANUSDENSITY As Double = URANUSMASS / URANUSVOLUME
Public Const NEPTUNEGM As Double = 6.836529E+15 * Kw.UNITGM
Public Const NEPTUNEYEAR As Double = 6.0182E+4 * Kw.EARTHSOLARDAY
Public Const NEPTUNEDAY As Double = 0.67125 * Kw.EARTHSOLARDAY
Public Const NEPTUNEFLATNESS As Double = 1.0 / 58.54373
Public Const NEPTUNE_A As Double = 2.4764E+7 * Kw.METER
Public Const NEPTUNE_C As Double = NEPTUNE_A
Public Const NEPTUNE_B As Double = NEPTUNE_A * (1.0 - _
      NEPTUNEFLATNESS)
Public Const NEPTUNERADIUS As Double = 0.333333333333333 * _
      (NEPTUNE_A + NEPTUNE_B + NEPTUNE_C)
Public Const NEPTUNEGRAVITY As Double = NEPTUNEGM / _
      (NEPTUNERADIUS * NEPTUNERADIUS)
Public Const NEPTUNEMASS As Double = NEPTUNEGM / Kw.GRAVITATION
Public Const NEPTUNEVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      NEPTUNERADIUS * NEPTUNERADIUS * NEPTUNERADIUS
Public Const NEPTUNEDENSITY As Double = NEPTUNEMASS / _
      NEPTUNEVOLUME
Public Const PLUTOGM As Double = 8.71E+11 * Kw.UNITGM
Public Const PLUTOYEAR As Double = 9.056E+4 * Kw.EARTHSOLARDAY
Public Const PLUTODAY As Double = 6.38723 * Kw.EARTHSOLARDAY
Public Const PLUTOFLATNESS As Double = 0.0
Public Const PLUTO_A As Double = 1.1899E+6 * Kw.METER
Public Const PLUTO_C As Double = PLUTO_A
Public Const PLUTO_B As Double = PLUTO_A * (1.0 - PLUTOFLATNESS)
Public Const PLUTORADIUS As Double = 0.333333333333333 * _
      (PLUTO_A + PLUTO_B + PLUTO_C)
Public Const PLUTOGRAVITY As Double = PLUTOGM / (PLUTORADIUS _
      * PLUTORADIUS)
Public Const PLUTOMASS As Double = PLUTOGM / Kw.GRAVITATION
Public Const PLUTOVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      PLUTORADIUS * PLUTORADIUS * PLUTORADIUS
Public Const PLUTODENSITY As Double = PLUTOMASS / PLUTOVOLUME
Public Const MOONGM As Double = 4.9048695E+12 * Kw.UNITGM
Public Const MOONYEAR As Double = 27.32166155 * Kw.EARTHSOLARDAY
Public Const MOONDAY As Double = 27.321661 * Kw.EARTHSOLARDAY
Public Const MOONFLATNESS As Double = 1.0 / 827.667
Public Const MOON_A As Double = 1.7381E+6 * Kw.METER
Public Const MOON_C As Double = MOON_A
Public Const MOON_B As Double = MOON_A * (1.0 - MOONFLATNESS)
Public Const MOONRADIUS As Double = 0.333333333333333 * _
      (MOON_A + MOON_B + MOON_C)
Public Const MOONGRAVITY As Double = MOONGM / (MOONRADIUS * _
      MOONRADIUS)
Public Const MOONMASS As Double = MOONGM / Kw.GRAVITATION
Public Const MOONVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      MOONRADIUS * MOONRADIUS * MOONRADIUS
Public Const MOONDENSITY As Double = MOONMASS / MOONVOLUME
Public Const MOONORBIT As Double = 3.843999E+8 * Kw.METER
Public Const MOONECCENTRICITY As Double = 0.0549
Public Const MOONINCLINATION As Double = 5.415 * Kw.ARCDEG
Public Const CERESGM As Double = 6.26325E+10 * Kw.UNITGM
Public Const CERESYEAR As Double = 1681.63 * Kw.EARTHSOLARDAY
Public Const CERESDAY As Double = 9.074170 * Kw.HOUR
Public Const CERESFLATNESS As Double = 1.0 / 13.0432
Public Const CERES_A As Double = 4.826E+5 * Kw.METER
Public Const CERES_C As Double = 4.806E+5 * Kw.METER
Public Const CERES_B As Double = CERES_A * (1.0 - CERESFLATNESS)
Public Const CERESRADIUS As Double = 0.333333333333333 * _
      (CERES_A + CERES_B + CERES_C)
Public Const CERESGRAVITY As Double = CERESGM / (CERESRADIUS _
      * CERESRADIUS)
Public Const CERESMASS As Double = CERESGM / Kw.GRAVITATION
Public Const CERESVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      CERESRADIUS * CERESRADIUS * CERESRADIUS
Public Const CERESDENSITY As Double = CERESMASS / CERESVOLUME
Public Const ERISGM As Double = 1.108E+12 * Kw.UNITGM
Public Const ERISYEAR As Double = 2.0383E+5 * Kw.EARTHSOLARDAY
Public Const ERISDAY As Double = 25.9 * Kw.HOUR
Public Const ERISFLATNESS As Double = 0.0
Public Const ERIS_A As Double = 1.163E+6 * Kw.METER
Public Const ERIS_C As Double = ERIS_A
Public Const ERIS_B As Double = ERIS_A * (1.0 - ERISFLATNESS)
Public Const ERISRADIUS As Double = 0.333333333333333 * _
      (ERIS_A + ERIS_B + ERIS_C)
Public Const ERISGRAVITY As Double = ERISGM / (ERISRADIUS * _
      ERISRADIUS)
Public Const ERISMASS As Double = ERISGM / Kw.GRAVITATION
Public Const ERISVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      ERISRADIUS * ERISRADIUS * ERISRADIUS
Public Const ERISDENSITY As Double = ERISMASS / ERISVOLUME
Public Const MAKEMAKEGM As Double = 2.9366E+11 * Kw.UNITGM
Public Const MAKEMAKEYEAR As Double = 1.12897E+5 * _
      Kw.EARTHSOLARDAY
Public Const MAKEMAKEDAY As Double = 7.771 * Kw.HOUR
Public Const MAKEMAKEFLATNESS As Double = 1.0 / 30.7917
Public Const MAKEMAKE_A As Double = 7.39E+5 * Kw.METER
Public Const MAKEMAKE_C As Double = MAKEMAKE_A
Public Const MAKEMAKE_B As Double = MAKEMAKE_A * (1.0 - _
      MAKEMAKEFLATNESS)
Public Const MAKEMAKERADIUS As Double = 0.333333333333333 * _
      (MAKEMAKE_A + MAKEMAKE_B + MAKEMAKE_C)
Public Const MAKEMAKEGRAVITY As Double = MAKEMAKEGM / _
      (MAKEMAKERADIUS * MAKEMAKERADIUS)
Public Const MAKEMAKEMASS As Double = MAKEMAKEGM / Kw.GRAVITATION
Public Const MAKEMAKEVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      MAKEMAKERADIUS * MAKEMAKERADIUS * MAKEMAKERADIUS
Public Const MAKEMAKEDENSITY As Double = MAKEMAKEMASS / _
      MAKEMAKEVOLUME
Public Const HAUMEAGM As Double = 2.674E+11 * Kw.UNITGM
Public Const HAUMEAYEAR As Double = 1.03774E+5 * Kw.EARTHSOLARDAY
Public Const HAUMEADAY As Double = 3.9155 * Kw.HOUR
Public Const HAUMEAFLATNESS As Double = 1.0 / 1.96115
Public Const HAUMEA_A As Double = 1.161E+6 * Kw.METER
Public Const HAUMEA_C As Double = 8.52E+5 * Kw.METER
Public Const HAUMEA_B As Double = HAUMEA_A * (1.0 - _
      HAUMEAFLATNESS)
Public Const HAUMEARADIUS As Double = 0.333333333333333 * _
      (HAUMEA_A + HAUMEA_B + HAUMEA_C)
Public Const HAUMEAGRAVITY As Double = HAUMEAGM / _
      (HAUMEARADIUS * HAUMEARADIUS)
Public Const HAUMEAMASS As Double = HAUMEAGM / Kw.GRAVITATION
Public Const HAUMEAVOLUME As Double = 2.0 * Kw.TAU / 3.0 * _
      HAUMEARADIUS * HAUMEARADIUS * HAUMEARADIUS
Public Const HAUMEADENSITY As Double = HAUMEAMASS / HAUMEAVOLUME
Public Const SUNORBIT As Double = 0.0 * Kw.AU
Public Const SUNECCENTRICITY As Double = 0.0
Public Const SUNINCLINATION As Double = 0.0 * Kw.ARCDEG
Public Const SUNLONGITUDE As Double = 0.0 * Kw.ARCDEG
Public Const SUNPERIAPSIS As Double = 0.0 * Kw.ARCDEG
Public Const SUNASCENDING As Double = 0.0 * Kw.ARCDEG
Public Const SUNORBIT_DT As Double = 0.0 * Kw.AU / Kw.JC
Public Const SUNECCENTRICITY_DT As Double = 0.0 / Kw.JC
Public Const SUNINCLINATION_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const SUNLONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const SUNPERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const SUNASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const EARTHORBIT As Double = 1.00000261 * Kw.AU
Public Const EARTHECCENTRICITY As Double = 0.01671123
Public Const EARTHINCLINATION As Double = 359.99998469 * _
      Kw.ARCDEG
Public Const EARTHLONGITUDE As Double = 100.46457166 * Kw.ARCDEG
Public Const EARTHPERIAPSIS As Double = 102.93768193 * Kw.ARCDEG
Public Const EARTHASCENDING As Double = 0.0 * Kw.ARCDEG
Public Const EARTHORBIT_DT As Double = 0.00000562 * Kw.AU / Kw.JC
Public Const EARTHECCENTRICITY_DT As Double = -0.00004392 / Kw.JC
Public Const EARTHINCLINATION_DT As Double = -0.01294668 * _
      Kw.ARCDEG / Kw.JC
Public Const EARTHLONGITUDE_DT As Double = 35999.37244981 * _
      Kw.ARCDEG / Kw.JC
Public Const EARTHPERIAPSIS_DT As Double = 0.32327364 * _
      Kw.ARCDEG / Kw.JC
Public Const EARTHASCENDING_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const MERCURYORBIT As Double = 0.38709927 * Kw.AU
Public Const MERCURYECCENTRICITY As Double = 0.20563593
Public Const MERCURYINCLINATION As Double = 7.00497902 * _
      Kw.ARCDEG
Public Const MERCURYLONGITUDE As Double = 252.25032350 * _
      Kw.ARCDEG
Public Const MERCURYPERIAPSIS As Double = 77.45779628 * Kw.ARCDEG
Public Const MERCURYASCENDING As Double = 48.33076593 * Kw.ARCDEG
Public Const MERCURYORBIT_DT As Double = 0.00000037 * Kw.AU / _
      Kw.JC
Public Const MERCURYECCENTRICITY_DT As Double = 0.00001906 / _
      Kw.JC
Public Const MERCURYINCLINATION_DT As Double = -0.00594749 * _
      Kw.ARCDEG / Kw.JC
Public Const MERCURYLONGITUDE_DT As Double = 149472.67411175 _
      * Kw.ARCDEG / Kw.JC
Public Const MERCURYPERIAPSIS_DT As Double = 0.16047689 * _
      Kw.ARCDEG / Kw.JC
Public Const MERCURYASCENDING_DT As Double = -0.12534081 * _
      Kw.ARCDEG / Kw.JC
Public Const VENUSORBIT As Double = 0.72333566 * Kw.AU
Public Const VENUSECCENTRICITY As Double = 0.00677672
Public Const VENUSINCLINATION As Double = 3.39467605 * Kw.ARCDEG
Public Const VENUSLONGITUDE As Double = 181.97909950 * Kw.ARCDEG
Public Const VENUSPERIAPSIS As Double = 131.60246718 * Kw.ARCDEG
Public Const VENUSASCENDING As Double = 76.67984255 * Kw.ARCDEG
Public Const VENUSORBIT_DT As Double = 0.00000390 * Kw.AU / Kw.JC
Public Const VENUSECCENTRICITY_DT As Double = -0.00004107 / Kw.JC
Public Const VENUSINCLINATION_DT As Double = -0.00078890 * _
      Kw.ARCDEG / Kw.JC
Public Const VENUSLONGITUDE_DT As Double = 58517.81538729 * _
      Kw.ARCDEG / Kw.JC
Public Const VENUSPERIAPSIS_DT As Double = 0.00268329 * _
      Kw.ARCDEG / Kw.JC
Public Const VENUSASCENDING_DT As Double = -0.27769418 * _
      Kw.ARCDEG / Kw.JC
Public Const MARSORBIT As Double = 1.52371034 * Kw.AU
Public Const MARSECCENTRICITY As Double = 0.09339410
Public Const MARSINCLINATION As Double = 1.84969142 * Kw.ARCDEG
Public Const MARSLONGITUDE As Double = 355.44656795 * Kw.ARCDEG
Public Const MARSPERIAPSIS As Double = 336.05637041 * Kw.ARCDEG
Public Const MARSASCENDING As Double = 49.55953891 * Kw.ARCDEG
Public Const MARSORBIT_DT As Double = 0.00001847 * Kw.AU / Kw.JC
Public Const MARSECCENTRICITY_DT As Double = 0.00007882 / Kw.JC
Public Const MARSINCLINATION_DT As Double = -0.00813131 * _
      Kw.ARCDEG / Kw.JC
Public Const MARSLONGITUDE_DT As Double = 19140.30268499 * _
      Kw.ARCDEG / Kw.JC
Public Const MARSPERIAPSIS_DT As Double = 0.44441088 * _
      Kw.ARCDEG / Kw.JC
Public Const MARSASCENDING_DT As Double = -0.29257343 * _
      Kw.ARCDEG / Kw.JC
Public Const JUPITERORBIT As Double = 5.20288700 * Kw.AU
Public Const JUPITERECCENTRICITY As Double = 0.04838624
Public Const JUPITERINCLINATION As Double = 1.30439695 * _
      Kw.ARCDEG
Public Const JUPITERLONGITUDE As Double = 34.39644051 * Kw.ARCDEG
Public Const JUPITERPERIAPSIS As Double = 14.72847983 * Kw.ARCDEG
Public Const JUPITERASCENDING As Double = 100.47390909 * _
      Kw.ARCDEG
Public Const JUPITERORBIT_DT As Double = -0.00011607 * Kw.AU _
      / Kw.JC
Public Const JUPITERECCENTRICITY_DT As Double = -0.00013253 / _
      Kw.JC
Public Const JUPITERINCLINATION_DT As Double = -0.00183714 * _
      Kw.ARCDEG / Kw.JC
Public Const JUPITERLONGITUDE_DT As Double = 3034.74612775 * _
      Kw.ARCDEG / Kw.JC
Public Const JUPITERPERIAPSIS_DT As Double = 0.21252668 * _
      Kw.ARCDEG / Kw.JC
Public Const JUPITERASCENDING_DT As Double = 0.20469106 * _
      Kw.ARCDEG / Kw.JC
Public Const SATURNORBIT As Double = 9.53667594 * Kw.AU
Public Const SATURNECCENTRICITY As Double = 0.05386179
Public Const SATURNINCLINATION As Double = 2.48599187 * Kw.ARCDEG
Public Const SATURNLONGITUDE As Double = 49.95424423 * Kw.ARCDEG
Public Const SATURNPERIAPSIS As Double = 92.59887831 * Kw.ARCDEG
Public Const SATURNASCENDING As Double = 113.66242448 * Kw.ARCDEG
Public Const SATURNORBIT_DT As Double = -0.00125060 * Kw.AU / _
      Kw.JC
Public Const SATURNECCENTRICITY_DT As Double = -0.00050991 / _
      Kw.JC
Public Const SATURNINCLINATION_DT As Double = 0.00193609 * _
      Kw.ARCDEG / Kw.JC
Public Const SATURNLONGITUDE_DT As Double = 1222.49362201 * _
      Kw.ARCDEG / Kw.JC
Public Const SATURNPERIAPSIS_DT As Double = -0.41897216 * _
      Kw.ARCDEG / Kw.JC
Public Const SATURNASCENDING_DT As Double = -0.28867794 * _
      Kw.ARCDEG / Kw.JC
Public Const URANUSORBIT As Double = 19.18916464 * Kw.AU
Public Const URANUSECCENTRICITY As Double = 0.04725744
Public Const URANUSINCLINATION As Double = 0.77263783 * Kw.ARCDEG
Public Const URANUSLONGITUDE As Double = 313.23810451 * Kw.ARCDEG
Public Const URANUSPERIAPSIS As Double = 170.95427630 * Kw.ARCDEG
Public Const URANUSASCENDING As Double = 74.01692503 * Kw.ARCDEG
Public Const URANUSORBIT_DT As Double = -0.00196176 * Kw.AU / _
      Kw.JC
Public Const URANUSECCENTRICITY_DT As Double = -0.00004397 / _
      Kw.JC
Public Const URANUSINCLINATION_DT As Double = -0.00242939 * _
      Kw.ARCDEG / Kw.JC
Public Const URANUSLONGITUDE_DT As Double = 428.48202785 * _
      Kw.ARCDEG / Kw.JC
Public Const URANUSPERIAPSIS_DT As Double = 0.40805281 * _
      Kw.ARCDEG / Kw.JC
Public Const URANUSASCENDING_DT As Double = 0.04240589 * _
      Kw.ARCDEG / Kw.JC
Public Const NEPTUNEORBIT As Double = 30.06992276 * Kw.AU
Public Const NEPTUNEECCENTRICITY As Double = 0.00859048
Public Const NEPTUNEINCLINATION As Double = 1.77004347 * _
      Kw.ARCDEG
Public Const NEPTUNELONGITUDE As Double = 304.87997031 * _
      Kw.ARCDEG
Public Const NEPTUNEPERIAPSIS As Double = 44.96476227 * Kw.ARCDEG
Public Const NEPTUNEASCENDING As Double = 131.78422574 * _
      Kw.ARCDEG
Public Const NEPTUNEORBIT_DT As Double = 0.00026291 * Kw.AU / _
      Kw.JC
Public Const NEPTUNEECCENTRICITY_DT As Double = 0.00005105 / _
      Kw.JC
Public Const NEPTUNEINCLINATION_DT As Double = 0.00035372 * _
      Kw.ARCDEG / Kw.JC
Public Const NEPTUNELONGITUDE_DT As Double = 218.45945325 * _
      Kw.ARCDEG / Kw.JC
Public Const NEPTUNEPERIAPSIS_DT As Double = -0.32241464 * _
      Kw.ARCDEG / Kw.JC
Public Const NEPTUNEASCENDING_DT As Double = -0.00508664 * _
      Kw.ARCDEG / Kw.JC
Public Const PLUTOORBIT As Double = 39.48211675 * Kw.AU
Public Const PLUTOECCENTRICITY As Double = 0.24882730
Public Const PLUTOINCLINATION As Double = 17.14001206 * Kw.ARCDEG
Public Const PLUTOLONGITUDE As Double = 238.92903833 * Kw.ARCDEG
Public Const PLUTOPERIAPSIS As Double = 224.06891629 * Kw.ARCDEG
Public Const PLUTOASCENDING As Double = 110.30393684 * Kw.ARCDEG
Public Const PLUTOORBIT_DT As Double = -0.00031596 * Kw.AU / _
      Kw.JC
Public Const PLUTOECCENTRICITY_DT As Double = 0.00005170 / Kw.JC
Public Const PLUTOINCLINATION_DT As Double = 0.00004818 * _
      Kw.ARCDEG / Kw.JC
Public Const PLUTOLONGITUDE_DT As Double = 145.20780515 * _
      Kw.ARCDEG / Kw.JC
Public Const PLUTOPERIAPSIS_DT As Double = -0.04062942 * _
      Kw.ARCDEG / Kw.JC
Public Const PLUTOASCENDING_DT As Double = -0.01183482 * _
      Kw.ARCDEG / Kw.JC
Public Const CERESORBIT As Double = 2.76740933 * Kw.AU
Public Const CERESECCENTRICITY As Double = 0.07560729
Public Const CERESINCLINATION As Double = 10.59321706 * Kw.ARCDEG
Public Const CERESLONGITUDE As Double = 102.82668 * Kw.ARCDEG
Public Const CERESPERIAPSIS As Double = 73.023742647 * Kw.ARCDEG
Public Const CERESASCENDING As Double = 80.308882612359 * _
      Kw.ARCDEG
Public Const CERESORBIT_DT As Double = 0.0 * Kw.AU / Kw.JC
Public Const CERESECCENTRICITY_DT As Double = 0.0 / Kw.JC
Public Const CERESINCLINATION_DT As Double = 0.0 * Kw.ARCDEG _
      / Kw.JC
Public Const CERESLONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const CERESPERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const CERESASCENDING_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const ERISORBIT As Double = 67.781 * Kw.AU
Public Const ERISECCENTRICITY As Double = 0.44068
Public Const ERISINCLINATION As Double = 44.0445 * Kw.ARCDEG
Public Const ERISLONGITUDE As Double = 32.4926663 * Kw.ARCDEG
Public Const ERISPERIAPSIS As Double = 151.60371236817 * _
      Kw.ARCDEG
Public Const ERISASCENDING As Double = 35.87992471211 * Kw.ARCDEG
Public Const ERISORBIT_DT As Double = 0.0 * Kw.AU / Kw.JC
Public Const ERISECCENTRICITY_DT As Double = 0.0 / Kw.JC
Public Const ERISINCLINATION_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const ERISLONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const ERISPERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const ERISASCENDING_DT As Double = 0.0 * Kw.ARCDEG / Kw.JC
Public Const MAKEMAKEORBIT As Double = 45.715 * Kw.AU
Public Const MAKEMAKEECCENTRICITY As Double = 0.15586
Public Const MAKEMAKEINCLINATION As Double = 29.00685 * Kw.ARCDEG
Public Const MAKEMAKELONGITUDE As Double = 177.2966805 * _
      Kw.ARCDEG
Public Const MAKEMAKEPERIAPSIS As Double = 295.642772002 * _
      Kw.ARCDEG
Public Const MAKEMAKEASCENDING As Double = 79.616805978978 * _
      Kw.ARCDEG
Public Const MAKEMAKEORBIT_DT As Double = 0.0 * Kw.AU / Kw.JC
Public Const MAKEMAKEECCENTRICITY_DT As Double = 0.0 / Kw.JC
Public Const MAKEMAKEINCLINATION_DT As Double = 0.0 * _
      Kw.ARCDEG / Kw.JC
Public Const MAKEMAKELONGITUDE_DT As Double = 0.0 * Kw.ARCDEG _
      / Kw.JC
Public Const MAKEMAKEPERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG _
      / Kw.JC
Public Const MAKEMAKEASCENDING_DT As Double = 0.0 * Kw.ARCDEG _
      / Kw.JC
Public Const HAUMEAORBIT As Double = 43.218 * Kw.AU
Public Const HAUMEAECCENTRICITY As Double = 0.19126
Public Const HAUMEAINCLINATION As Double = 28.19 * Kw.ARCDEG
Public Const HAUMEALONGITUDE As Double = 215.687315 * Kw.ARCDEG
Public Const HAUMEAPERIAPSIS As Double = 238.69440821915 * _
      Kw.ARCDEG
Public Const HAUMEAASCENDING As Double = 122.01840302632 * _
      Kw.ARCDEG
Public Const HAUMEAORBIT_DT As Double = 0.0 * Kw.AU / Kw.JC
Public Const HAUMEAECCENTRICITY_DT As Double = 0.0 / Kw.JC
Public Const HAUMEAINCLINATION_DT As Double = 0.0 * Kw.ARCDEG _
      / Kw.JC
Public Const HAUMEALONGITUDE_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const HAUMEAPERIAPSIS_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
Public Const HAUMEAASCENDING_DT As Double = 0.0 * Kw.ARCDEG / _
      Kw.JC
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
Private Const LC_P1_COUNT As Double = LC_P1_HAUMEA + 1
Private Const LC_P1_ERR As Double = -1
Private Const LC_P2_GM As Double = 0
Private Const LC_P2_YEAR As Double = 1
Private Const LC_P2_DAY As Double = 2
Private Const LC_P2_FLATNESS As Double = 3
Private Const LC_P2_A As Double = 4
Private Const LC_P2_C As Double = 5
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
Private Const LC_P2_COUNT As Double = 18
Private Shared lv_pl_ind As Long
Friend  Shared lv_pl_arr(LC_P1_COUNT, LC_P2_COUNT) As Double
Private Shared lv_pl_earth_year As Double
Friend  Shared lv_pl_helio_arr(3) As Double
Friend  Shared lv_pl_geo_arr(3) As Double
Private Shared lv_pl_jtwoktime As Double
Private Const LC_ISA_TEMPERATURE As Double = 0
Private Const LC_ISA_PRESSURE As Double = 1
Private Const LC_ISA_DENSITY As Double = 2
Private Const LC_ISA_XHEIGHT As Double = 0
Private Const LC_ISA_XTEMPERATURE As Double = 1
Private Const LC_ISA_XLAPSERATE As Double = 2
Private Const LC_ISA_XPRESSURE As Double = 3
Private Const LC_ISA_XDENSITY As Double = 4
Friend  Shared lv_isa_arr(7, 5) As Double
Private Shared lv_isa_magic As Double
'IMPORT "Kw"
'IMPORT "Kwelements"
Public Shared Function margot(ByVal pmass As Double, ByVal _
      porbit As Double) As Double
   Dim retvalu As Double
   If (pmass <= 0.0 Or porbit <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 5.0401742E-10 * pmass / _
            Math.Exp(Math.Log(porbit) * 1.125)
   End If
   margot = (retvalu)
End Function
Public Shared Function sternlevison(ByVal pmass As Double, _
      ByVal porbit As Double) As Double
   Dim retvalu As Double
   Dim xx As Double
   If (pmass <= 0.0 Or porbit <= 0.0) Then
      retvalu = 0.0
   Else
      xx = 2.0 * Math.Log(pmass) - 1.5 * Math.Log(porbit)
      retvalu = 2.482E-28 * Math.Exp(xx)
   End If
   sternlevison = (retvalu)
End Function
Private Shared Function lf_pl_init(ByVal plnt As Long) As Long
   ' local-use Vbdotnet lv_pl_ind
   ' local-use Vbdotnet lv_pl_arr
   If (lv_pl_ind < 0) Then
      lv_pl_arr(LC_P1_SUN, LC_P2_GM) = SUNGM
      lv_pl_arr(LC_P1_SUN, LC_P2_YEAR) = SUNYEAR
      lv_pl_arr(LC_P1_SUN, LC_P2_DAY) = SUNDAY
      lv_pl_arr(LC_P1_SUN, LC_P2_FLATNESS) = SUNFLATNESS
      lv_pl_arr(LC_P1_SUN, LC_P2_A) = SUN_A
      lv_pl_arr(LC_P1_SUN, LC_P2_C) = SUN_C
      lv_pl_arr(LC_P1_SUN, LC_P2_ORB) = SUNORBIT
      lv_pl_arr(LC_P1_SUN, LC_P2_ECC) = SUNECCENTRICITY
      lv_pl_arr(LC_P1_SUN, LC_P2_INC) = SUNINCLINATION
      lv_pl_arr(LC_P1_SUN, LC_P2_LON) = SUNLONGITUDE
      lv_pl_arr(LC_P1_SUN, LC_P2_PER) = SUNPERIAPSIS
      lv_pl_arr(LC_P1_SUN, LC_P2_ASC) = SUNASCENDING
      lv_pl_arr(LC_P1_SUN, LC_P2_ORB_DT) = SUNORBIT_DT
      lv_pl_arr(LC_P1_SUN, LC_P2_ECC_DT) = SUNECCENTRICITY_DT
      lv_pl_arr(LC_P1_SUN, LC_P2_INC_DT) = SUNINCLINATION_DT
      lv_pl_arr(LC_P1_SUN, LC_P2_LON_DT) = SUNLONGITUDE_DT
      lv_pl_arr(LC_P1_SUN, LC_P2_PER_DT) = SUNPERIAPSIS_DT
      lv_pl_arr(LC_P1_SUN, LC_P2_ASC_DT) = SUNASCENDING_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_GM) = MERCURYGM
      lv_pl_arr(LC_P1_MERCURY, LC_P2_YEAR) = MERCURYYEAR
      lv_pl_arr(LC_P1_MERCURY, LC_P2_DAY) = MERCURYDAY
      lv_pl_arr(LC_P1_MERCURY, LC_P2_FLATNESS) = MERCURYFLATNESS
      lv_pl_arr(LC_P1_MERCURY, LC_P2_A) = MERCURY_A
      lv_pl_arr(LC_P1_MERCURY, LC_P2_C) = MERCURY_C
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ORB) = MERCURYORBIT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ECC) = MERCURYECCENTRICITY
      lv_pl_arr(LC_P1_MERCURY, LC_P2_INC) = MERCURYINCLINATION
      lv_pl_arr(LC_P1_MERCURY, LC_P2_LON) = MERCURYLONGITUDE
      lv_pl_arr(LC_P1_MERCURY, LC_P2_PER) = MERCURYPERIAPSIS
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ASC) = MERCURYASCENDING
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ORB_DT) = MERCURYORBIT_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ECC_DT) = _
            MERCURYECCENTRICITY_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_INC_DT) = _
            MERCURYINCLINATION_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_LON_DT) = _
            MERCURYLONGITUDE_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_PER_DT) = _
            MERCURYPERIAPSIS_DT
      lv_pl_arr(LC_P1_MERCURY, LC_P2_ASC_DT) = _
            MERCURYASCENDING_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_GM) = VENUSGM
      lv_pl_arr(LC_P1_VENUS, LC_P2_YEAR) = VENUSYEAR
      lv_pl_arr(LC_P1_VENUS, LC_P2_DAY) = VENUSDAY
      lv_pl_arr(LC_P1_VENUS, LC_P2_FLATNESS) = VENUSFLATNESS
      lv_pl_arr(LC_P1_VENUS, LC_P2_A) = VENUS_A
      lv_pl_arr(LC_P1_VENUS, LC_P2_C) = VENUS_C
      lv_pl_arr(LC_P1_VENUS, LC_P2_ORB) = VENUSORBIT
      lv_pl_arr(LC_P1_VENUS, LC_P2_ECC) = VENUSECCENTRICITY
      lv_pl_arr(LC_P1_VENUS, LC_P2_INC) = VENUSINCLINATION
      lv_pl_arr(LC_P1_VENUS, LC_P2_LON) = VENUSLONGITUDE
      lv_pl_arr(LC_P1_VENUS, LC_P2_PER) = VENUSPERIAPSIS
      lv_pl_arr(LC_P1_VENUS, LC_P2_ASC) = VENUSASCENDING
      lv_pl_arr(LC_P1_VENUS, LC_P2_ORB_DT) = VENUSORBIT_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_ECC_DT) = VENUSECCENTRICITY_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_INC_DT) = VENUSINCLINATION_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_LON_DT) = VENUSLONGITUDE_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_PER_DT) = VENUSPERIAPSIS_DT
      lv_pl_arr(LC_P1_VENUS, LC_P2_ASC_DT) = VENUSASCENDING_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_GM) = EARTHGM
      lv_pl_arr(LC_P1_EARTH, LC_P2_YEAR) = EARTHYEAR
      lv_pl_arr(LC_P1_EARTH, LC_P2_DAY) = EARTHDAY
      lv_pl_arr(LC_P1_EARTH, LC_P2_FLATNESS) = EARTHFLATNESS
      lv_pl_arr(LC_P1_EARTH, LC_P2_A) = EARTH_A
      lv_pl_arr(LC_P1_EARTH, LC_P2_C) = EARTH_C
      lv_pl_arr(LC_P1_EARTH, LC_P2_ORB) = EARTHORBIT
      lv_pl_arr(LC_P1_EARTH, LC_P2_ECC) = EARTHECCENTRICITY
      lv_pl_arr(LC_P1_EARTH, LC_P2_INC) = EARTHINCLINATION
      lv_pl_arr(LC_P1_EARTH, LC_P2_LON) = EARTHLONGITUDE
      lv_pl_arr(LC_P1_EARTH, LC_P2_PER) = EARTHPERIAPSIS
      lv_pl_arr(LC_P1_EARTH, LC_P2_ASC) = EARTHASCENDING
      lv_pl_arr(LC_P1_EARTH, LC_P2_ORB_DT) = EARTHORBIT_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_ECC_DT) = EARTHECCENTRICITY_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_INC_DT) = EARTHINCLINATION_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_LON_DT) = EARTHLONGITUDE_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_PER_DT) = EARTHPERIAPSIS_DT
      lv_pl_arr(LC_P1_EARTH, LC_P2_ASC_DT) = EARTHASCENDING_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_GM) = MARSGM
      lv_pl_arr(LC_P1_MARS, LC_P2_YEAR) = MARSYEAR
      lv_pl_arr(LC_P1_MARS, LC_P2_DAY) = MARSDAY
      lv_pl_arr(LC_P1_MARS, LC_P2_FLATNESS) = MARSFLATNESS
      lv_pl_arr(LC_P1_MARS, LC_P2_A) = MARS_A
      lv_pl_arr(LC_P1_MARS, LC_P2_C) = MARS_C
      lv_pl_arr(LC_P1_MARS, LC_P2_ORB) = MARSORBIT
      lv_pl_arr(LC_P1_MARS, LC_P2_ECC) = MARSECCENTRICITY
      lv_pl_arr(LC_P1_MARS, LC_P2_INC) = MARSINCLINATION
      lv_pl_arr(LC_P1_MARS, LC_P2_LON) = MARSLONGITUDE
      lv_pl_arr(LC_P1_MARS, LC_P2_PER) = MARSPERIAPSIS
      lv_pl_arr(LC_P1_MARS, LC_P2_ASC) = MARSASCENDING
      lv_pl_arr(LC_P1_MARS, LC_P2_ORB_DT) = MARSORBIT_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_ECC_DT) = MARSECCENTRICITY_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_INC_DT) = MARSINCLINATION_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_LON_DT) = MARSLONGITUDE_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_PER_DT) = MARSPERIAPSIS_DT
      lv_pl_arr(LC_P1_MARS, LC_P2_ASC_DT) = MARSASCENDING_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_GM) = JUPITERGM
      lv_pl_arr(LC_P1_JUPITER, LC_P2_YEAR) = JUPITERYEAR
      lv_pl_arr(LC_P1_JUPITER, LC_P2_DAY) = JUPITERDAY
      lv_pl_arr(LC_P1_JUPITER, LC_P2_FLATNESS) = JUPITERFLATNESS
      lv_pl_arr(LC_P1_JUPITER, LC_P2_A) = JUPITER_A
      lv_pl_arr(LC_P1_JUPITER, LC_P2_C) = JUPITER_C
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ORB) = JUPITERORBIT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ECC) = JUPITERECCENTRICITY
      lv_pl_arr(LC_P1_JUPITER, LC_P2_INC) = JUPITERINCLINATION
      lv_pl_arr(LC_P1_JUPITER, LC_P2_LON) = JUPITERLONGITUDE
      lv_pl_arr(LC_P1_JUPITER, LC_P2_PER) = JUPITERPERIAPSIS
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ASC) = JUPITERASCENDING
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ORB_DT) = JUPITERORBIT_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ECC_DT) = _
            JUPITERECCENTRICITY_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_INC_DT) = _
            JUPITERINCLINATION_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_LON_DT) = _
            JUPITERLONGITUDE_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_PER_DT) = _
            JUPITERPERIAPSIS_DT
      lv_pl_arr(LC_P1_JUPITER, LC_P2_ASC_DT) = _
            JUPITERASCENDING_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_GM) = SATURNGM
      lv_pl_arr(LC_P1_SATURN, LC_P2_YEAR) = SATURNYEAR
      lv_pl_arr(LC_P1_SATURN, LC_P2_DAY) = SATURNDAY
      lv_pl_arr(LC_P1_SATURN, LC_P2_FLATNESS) = SATURNFLATNESS
      lv_pl_arr(LC_P1_SATURN, LC_P2_A) = SATURN_A
      lv_pl_arr(LC_P1_SATURN, LC_P2_C) = SATURN_C
      lv_pl_arr(LC_P1_SATURN, LC_P2_ORB) = SATURNORBIT
      lv_pl_arr(LC_P1_SATURN, LC_P2_ECC) = SATURNECCENTRICITY
      lv_pl_arr(LC_P1_SATURN, LC_P2_INC) = SATURNINCLINATION
      lv_pl_arr(LC_P1_SATURN, LC_P2_LON) = SATURNLONGITUDE
      lv_pl_arr(LC_P1_SATURN, LC_P2_PER) = SATURNPERIAPSIS
      lv_pl_arr(LC_P1_SATURN, LC_P2_ASC) = SATURNASCENDING
      lv_pl_arr(LC_P1_SATURN, LC_P2_ORB_DT) = SATURNORBIT_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_ECC_DT) = _
            SATURNECCENTRICITY_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_INC_DT) = _
            SATURNINCLINATION_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_LON_DT) = SATURNLONGITUDE_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_PER_DT) = SATURNPERIAPSIS_DT
      lv_pl_arr(LC_P1_SATURN, LC_P2_ASC_DT) = SATURNASCENDING_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_GM) = URANUSGM
      lv_pl_arr(LC_P1_URANUS, LC_P2_YEAR) = URANUSYEAR
      lv_pl_arr(LC_P1_URANUS, LC_P2_DAY) = URANUSDAY
      lv_pl_arr(LC_P1_URANUS, LC_P2_FLATNESS) = URANUSFLATNESS
      lv_pl_arr(LC_P1_URANUS, LC_P2_A) = URANUS_A
      lv_pl_arr(LC_P1_URANUS, LC_P2_C) = URANUS_C
      lv_pl_arr(LC_P1_URANUS, LC_P2_ORB) = URANUSORBIT
      lv_pl_arr(LC_P1_URANUS, LC_P2_ECC) = URANUSECCENTRICITY
      lv_pl_arr(LC_P1_URANUS, LC_P2_INC) = URANUSINCLINATION
      lv_pl_arr(LC_P1_URANUS, LC_P2_LON) = URANUSLONGITUDE
      lv_pl_arr(LC_P1_URANUS, LC_P2_PER) = URANUSPERIAPSIS
      lv_pl_arr(LC_P1_URANUS, LC_P2_ASC) = URANUSASCENDING
      lv_pl_arr(LC_P1_URANUS, LC_P2_ORB_DT) = URANUSORBIT_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_ECC_DT) = _
            URANUSECCENTRICITY_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_INC_DT) = _
            URANUSINCLINATION_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_LON_DT) = URANUSLONGITUDE_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_PER_DT) = URANUSPERIAPSIS_DT
      lv_pl_arr(LC_P1_URANUS, LC_P2_ASC_DT) = URANUSASCENDING_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_GM) = NEPTUNEGM
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_YEAR) = NEPTUNEYEAR
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_DAY) = NEPTUNEDAY
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_FLATNESS) = NEPTUNEFLATNESS
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_A) = NEPTUNE_A
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_C) = NEPTUNE_C
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ORB) = NEPTUNEORBIT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ECC) = NEPTUNEECCENTRICITY
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_INC) = NEPTUNEINCLINATION
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_LON) = NEPTUNELONGITUDE
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_PER) = NEPTUNEPERIAPSIS
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ASC) = NEPTUNEASCENDING
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ORB_DT) = NEPTUNEORBIT_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ECC_DT) = _
            NEPTUNEECCENTRICITY_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_INC_DT) = _
            NEPTUNEINCLINATION_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_LON_DT) = _
            NEPTUNELONGITUDE_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_PER_DT) = _
            NEPTUNEPERIAPSIS_DT
      lv_pl_arr(LC_P1_NEPTUNE, LC_P2_ASC_DT) = _
            NEPTUNEASCENDING_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_GM) = PLUTOGM
      lv_pl_arr(LC_P1_PLUTO, LC_P2_YEAR) = PLUTOYEAR
      lv_pl_arr(LC_P1_PLUTO, LC_P2_DAY) = PLUTODAY
      lv_pl_arr(LC_P1_PLUTO, LC_P2_FLATNESS) = PLUTOFLATNESS
      lv_pl_arr(LC_P1_PLUTO, LC_P2_A) = PLUTO_A
      lv_pl_arr(LC_P1_PLUTO, LC_P2_C) = PLUTO_C
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ORB) = PLUTOORBIT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ECC) = PLUTOECCENTRICITY
      lv_pl_arr(LC_P1_PLUTO, LC_P2_INC) = PLUTOINCLINATION
      lv_pl_arr(LC_P1_PLUTO, LC_P2_LON) = PLUTOLONGITUDE
      lv_pl_arr(LC_P1_PLUTO, LC_P2_PER) = PLUTOPERIAPSIS
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ASC) = PLUTOASCENDING
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ORB_DT) = PLUTOORBIT_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ECC_DT) = PLUTOECCENTRICITY_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_INC_DT) = PLUTOINCLINATION_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_LON_DT) = PLUTOLONGITUDE_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_PER_DT) = PLUTOPERIAPSIS_DT
      lv_pl_arr(LC_P1_PLUTO, LC_P2_ASC_DT) = PLUTOASCENDING_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_GM) = CERESGM
      lv_pl_arr(LC_P1_CERES, LC_P2_YEAR) = CERESYEAR
      lv_pl_arr(LC_P1_CERES, LC_P2_DAY) = CERESDAY
      lv_pl_arr(LC_P1_CERES, LC_P2_FLATNESS) = CERESFLATNESS
      lv_pl_arr(LC_P1_CERES, LC_P2_A) = CERES_A
      lv_pl_arr(LC_P1_CERES, LC_P2_C) = CERES_C
      lv_pl_arr(LC_P1_CERES, LC_P2_ORB) = CERESORBIT
      lv_pl_arr(LC_P1_CERES, LC_P2_ECC) = CERESECCENTRICITY
      lv_pl_arr(LC_P1_CERES, LC_P2_INC) = CERESINCLINATION
      lv_pl_arr(LC_P1_CERES, LC_P2_LON) = CERESLONGITUDE
      lv_pl_arr(LC_P1_CERES, LC_P2_PER) = CERESPERIAPSIS
      lv_pl_arr(LC_P1_CERES, LC_P2_ASC) = CERESASCENDING
      lv_pl_arr(LC_P1_CERES, LC_P2_ORB_DT) = CERESORBIT_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_ECC_DT) = CERESECCENTRICITY_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_INC_DT) = CERESINCLINATION_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_LON_DT) = CERESLONGITUDE_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_PER_DT) = CERESPERIAPSIS_DT
      lv_pl_arr(LC_P1_CERES, LC_P2_ASC_DT) = CERESASCENDING_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_GM) = ERISGM
      lv_pl_arr(LC_P1_ERIS, LC_P2_YEAR) = ERISYEAR
      lv_pl_arr(LC_P1_ERIS, LC_P2_DAY) = ERISDAY
      lv_pl_arr(LC_P1_ERIS, LC_P2_FLATNESS) = ERISFLATNESS
      lv_pl_arr(LC_P1_ERIS, LC_P2_A) = ERIS_A
      lv_pl_arr(LC_P1_ERIS, LC_P2_C) = ERIS_C
      lv_pl_arr(LC_P1_ERIS, LC_P2_ORB) = ERISORBIT
      lv_pl_arr(LC_P1_ERIS, LC_P2_ECC) = ERISECCENTRICITY
      lv_pl_arr(LC_P1_ERIS, LC_P2_INC) = ERISINCLINATION
      lv_pl_arr(LC_P1_ERIS, LC_P2_LON) = ERISLONGITUDE
      lv_pl_arr(LC_P1_ERIS, LC_P2_PER) = ERISPERIAPSIS
      lv_pl_arr(LC_P1_ERIS, LC_P2_ASC) = ERISASCENDING
      lv_pl_arr(LC_P1_ERIS, LC_P2_ORB_DT) = ERISORBIT_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_ECC_DT) = ERISECCENTRICITY_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_INC_DT) = ERISINCLINATION_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_LON_DT) = ERISLONGITUDE_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_PER_DT) = ERISPERIAPSIS_DT
      lv_pl_arr(LC_P1_ERIS, LC_P2_ASC_DT) = ERISASCENDING_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_GM) = MAKEMAKEGM
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_YEAR) = MAKEMAKEYEAR
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_DAY) = MAKEMAKEDAY
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_FLATNESS) = _
            MAKEMAKEFLATNESS
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_A) = MAKEMAKE_A
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_C) = MAKEMAKE_C
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ORB) = MAKEMAKEORBIT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ECC) = MAKEMAKEECCENTRICITY
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_INC) = MAKEMAKEINCLINATION
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_LON) = MAKEMAKELONGITUDE
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_PER) = MAKEMAKEPERIAPSIS
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ASC) = MAKEMAKEASCENDING
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ORB_DT) = MAKEMAKEORBIT_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ECC_DT) = _
            MAKEMAKEECCENTRICITY_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_INC_DT) = _
            MAKEMAKEINCLINATION_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_LON_DT) = _
            MAKEMAKELONGITUDE_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_PER_DT) = _
            MAKEMAKEPERIAPSIS_DT
      lv_pl_arr(LC_P1_MAKEMAKE, LC_P2_ASC_DT) = _
            MAKEMAKEASCENDING_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_GM) = HAUMEAGM
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_YEAR) = HAUMEAYEAR
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_DAY) = HAUMEADAY
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_FLATNESS) = HAUMEAFLATNESS
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_A) = HAUMEA_A
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_C) = HAUMEA_C
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ORB) = HAUMEAORBIT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ECC) = HAUMEAECCENTRICITY
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_INC) = HAUMEAINCLINATION
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_LON) = HAUMEALONGITUDE
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_PER) = HAUMEAPERIAPSIS
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ASC) = HAUMEAASCENDING
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ORB_DT) = HAUMEAORBIT_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ECC_DT) = _
            HAUMEAECCENTRICITY_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_INC_DT) = _
            HAUMEAINCLINATION_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_LON_DT) = HAUMEALONGITUDE_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_PER_DT) = HAUMEAPERIAPSIS_DT
      lv_pl_arr(LC_P1_HAUMEA, LC_P2_ASC_DT) = HAUMEAASCENDING_DT
      If (0 < lv_pl_jtwoktime And lv_pl_jtwoktime < 1.0 / _
            32.0) Then
         Call plsettime(Kw.uet2j2k(Kw.timee()))
      End If
      lv_pl_earth_year = EARTHYEAR
   End If
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      lv_pl_ind = plnt
   ElseIf (plnt = LC_P1_PREV_PL) Then
      If (lv_pl_ind < 0) Then
         lv_pl_ind = LC_P1_EARTH
      End If
   Else
      lv_pl_ind = LC_P1_PREV_PL
   End If
   lf_pl_init = (lv_pl_ind)
End Function
Private Shared Function lf_val(ByVal pa_ind As Long, ByVal _
      pb_bb As Long, ByVal pb_bbd As Long) As Double
   Dim pl_ind As Long
   Dim retvalu As Double
   If (pa_ind < LC_P1_PREV_PL Or LC_P1_COUNT <= pa_ind) Then
      retvalu = LC_P1_ERR
   Else
      pl_ind = pl(pa_ind)
      retvalu = (lv_pl_arr(pl_ind, pb_bb) + lv_pl_jtwoktime * _
            lv_pl_arr(pl_ind, pb_bbd))
   End If
   lf_val = (retvalu)
End Function
Public Shared Function pl(ByVal plnt As Long) As Long
   pl = ((lf_pl_init(plnt)))
End Function
Public Shared Function plsettime(ByVal jtwokdate As Double) _
      As Double
   lv_pl_jtwoktime = jtwokdate * Kw.JD
   plsettime = (lv_pl_jtwoktime)
End Function
Public Shared Function pl_gm(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_GM)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_GM)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_gm = (retvalu)
End Function
Public Shared Function plgm() As Double
   ' local-use Vbdotnet lv_pl_ind
   plgm = ((pl_gm(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_year(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_YEAR)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_YEAR)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_year = (retvalu)
End Function
Public Shared Function plyear() As Double
   ' local-use Vbdotnet lv_pl_ind
   plyear = ((pl_year(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_day(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_DAY)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_DAY)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_day = (retvalu)
End Function
Public Shared Function plday() As Double
   ' local-use Vbdotnet lv_pl_ind
   plday = ((pl_day(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_flatness(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_FLATNESS)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_FLATNESS)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_flatness = (retvalu)
End Function
Public Shared Function plflatness() As Double
   ' local-use Vbdotnet lv_pl_ind
   plflatness = ((pl_flatness(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_a(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_A)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_A)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_a = (retvalu)
End Function
Public Shared Function pla() As Double
   ' local-use Vbdotnet lv_pl_ind
   pla = ((pl_a(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_c(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_arr
   ' local-use Vbdotnet lv_pl_ind
   Dim retvalu As Double
   Call lf_pl_init(plnt)
   If (LC_P1_SUN <= plnt And plnt < LC_P1_COUNT) Then
      retvalu = lv_pl_arr(plnt, LC_P2_C)
   ElseIf (plnt = LC_P1_PREV_PL) Then
      retvalu = lv_pl_arr(lv_pl_ind, LC_P2_C)
   Else
      retvalu = LC_P1_ERR
   End If
   pl_c = (retvalu)
End Function
Public Shared Function plc() As Double
   ' local-use Vbdotnet lv_pl_ind
   plc = ((pl_c(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_orbit(ByVal plnt As Long) As Double
   pl_orbit = ((lf_val(plnt, LC_P2_ORB, LC_P2_ORB_DT)))
End Function
Public Shared Function plorbit() As Double
   ' local-use Vbdotnet lv_pl_ind
   plorbit = ((pl_orbit(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_eccentricity(ByVal plnt As Long) As _
      Double
   pl_eccentricity = ((lf_val(plnt, LC_P2_ECC, LC_P2_ECC_DT)))
End Function
Public Shared Function pleccentricity() As Double
   ' local-use Vbdotnet lv_pl_ind
   pleccentricity = ((pl_eccentricity(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_inclination(ByVal plnt As Long) As _
      Double
   pl_inclination = ((lf_val(plnt, LC_P2_INC, LC_P2_INC_DT)))
End Function
Public Shared Function plinclination() As Double
   ' local-use Vbdotnet lv_pl_ind
   plinclination = ((pl_inclination(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_longitude(ByVal plnt As Long) As Double
   pl_longitude = ((lf_val(plnt, LC_P2_LON, LC_P2_LON_DT)))
End Function
Public Shared Function pllongitude() As Double
   ' local-use Vbdotnet lv_pl_ind
   pllongitude = ((pl_longitude(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_periapsis(ByVal plnt As Long) As Double
   pl_periapsis = ((lf_val(plnt, LC_P2_PER, LC_P2_PER_DT)))
End Function
Public Shared Function plperiapsis() As Double
   ' local-use Vbdotnet lv_pl_ind
   plperiapsis = ((pl_periapsis(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_ascending(ByVal plnt As Long) As Double
   pl_ascending = ((lf_val(plnt, LC_P2_ASC, LC_P2_ASC_DT)))
End Function
Public Shared Function plascending() As Double
   ' local-use Vbdotnet lv_pl_ind
   plascending = ((pl_ascending(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_mass(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_gm(plnt) / Kw.GRAVITATION
   End If
   pl_mass = (retvalu)
End Function
Public Shared Function plmass() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmass = ((pl_mass(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_b(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = (1.0 - pl_flatness(plnt)) * pl_a(plnt)
   End If
   pl_b = (retvalu)
End Function
Public Shared Function plb() As Double
   ' local-use Vbdotnet lv_pl_ind
   plb = ((pl_b(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_radius(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = (pl_a(plnt) + pl_b(plnt) + pl_c(plnt)) / 3.0
   End If
   pl_radius = (retvalu)
End Function
Public Shared Function plradius() As Double
   ' local-use Vbdotnet lv_pl_ind
   plradius = ((pl_radius(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_gravity(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_gm(plnt) / Kw.square(pl_radius(plnt))
   End If
   pl_gravity = (retvalu)
End Function
Public Shared Function plgravity() As Double
   ' local-use Vbdotnet lv_pl_ind
   plgravity = ((pl_gravity(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_meananomaly(ByVal plnt As Long) As _
      Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = Kw.fmodu(pl_longitude(plnt) - _
            pl_periapsis(plnt), Kw.TAU)
   End If
   pl_meananomaly = (retvalu)
End Function
Public Shared Function plmeananomaly() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmeananomaly = ((pl_meananomaly(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_escape(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = Math.Sqrt(2.0 * pl_gm(plnt) / pl_radius(plnt))
   End If
   pl_escape = (retvalu)
End Function
Public Shared Function plescape() As Double
   ' local-use Vbdotnet lv_pl_ind
   plescape = ((pl_escape(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_synodic(ByVal plnt As Long) As Double
   ' local-use Vbdotnet lv_pl_earth_year
   Dim yra As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      yra = pl_year(plnt)
      retvalu = Kw.divi(yra * lv_pl_earth_year, Math.Abs(yra _
            - lv_pl_earth_year), 0.0)
   End If
   pl_synodic = (retvalu)
End Function
Public Shared Function plsynodic() As Double
   ' local-use Vbdotnet lv_pl_ind
   plsynodic = ((pl_synodic(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_volume(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = 2.0 * Kw.TAU * pl_a(plnt) * pl_b(plnt) * _
            pl_c(plnt) / 3.0
   End If
   pl_volume = (retvalu)
End Function
Public Shared Function plvolume() As Double
   ' local-use Vbdotnet lv_pl_ind
   plvolume = ((pl_volume(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_density(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_mass(plnt) / pl_volume(plnt)
   End If
   pl_density = (retvalu)
End Function
Public Shared Function pldensity() As Double
   ' local-use Vbdotnet lv_pl_ind
   pldensity = ((pl_density(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_argument(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_periapsis(plnt) - pl_ascending(plnt)
   End If
   pl_argument = (retvalu)
End Function
Public Shared Function plargument() As Double
   ' local-use Vbdotnet lv_pl_ind
   plargument = ((pl_argument(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_margot(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = margot(pl_mass(plnt), pl_orbit(plnt))
   End If
   pl_margot = (retvalu)
End Function
Public Shared Function plmargot() As Double
   ' local-use Vbdotnet lv_pl_ind
   plmargot = ((pl_margot(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_sternlevison(ByVal plnt As Long) As _
      Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = sternlevison(pl_mass(plnt), pl_orbit(plnt))
   End If
   pl_sternlevison = (retvalu)
End Function
Public Shared Function plsternlevison() As Double
   ' local-use Vbdotnet lv_pl_ind
   plsternlevison = ((pl_sternlevison(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_perihelion(ByVal plnt As Long) As _
      Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_orbit(plnt) * (1.0 - pl_eccentricity(plnt))
   End If
   pl_perihelion = (retvalu)
End Function
Public Shared Function plperihelion() As Double
   ' local-use Vbdotnet lv_pl_ind
   plperihelion = ((pl_perihelion(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_aphelion(ByVal plnt As Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = pl_orbit(plnt) * (1.0 + pl_eccentricity(plnt))
   End If
   pl_aphelion = (retvalu)
End Function
Public Shared Function plaphelion() As Double
   ' local-use Vbdotnet lv_pl_ind
   plaphelion = ((pl_aphelion(LC_P1_PREV_PL)))
End Function
Public Shared Function eccentric_anomaly(ByVal mean_ano_rad _
      As Double, ByVal eccen As Double) As Double
   Dim mrad As Double
   Dim xrad As Double
   Dim nrvx_ii As Long
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
      nrvx_yy = nrvx_xx - eccen * Math.Sin(nrvx_xx) - _
            mean_ano_rad
      nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
      If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
         Exit For
      End If
   Next
   eccentric_anomaly = (nrvx_xx)
End Function
Public Shared Function pl_eccentricanomaly(ByVal plnt As _
      Long) As Double
   Dim retvalu As Double
   If (plnt < LC_P1_PREV_PL Or LC_P1_COUNT <= plnt) Then
      retvalu = LC_P1_ERR
   Else
      retvalu = eccentric_anomaly(pl_meananomaly(plnt), _
            pl_eccentricity(plnt))
   End If
   pl_eccentricanomaly = (retvalu)
End Function
Public Shared Function pleccentricanomaly() As Double
   ' local-use Vbdotnet lv_pl_ind
   pleccentricanomaly = ((pl_eccentricanomaly(LC_P1_PREV_PL)))
End Function
Public Shared Function pl_heliocentric(ByVal plnt As Long, _
      ByVal jtwok As Double) As Double
   ' local-use Vbdotnet lv_pl_helio_arr
   ' local-use Vbdotnet lv_pl_geo_arr
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
   If (lf_pl_init(plnt) < 0) Then
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
      mean_anomaly_rad = Kw.fmod(lon_rad - per_rad, _
            Kw.tur2rad(1.0))
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
      lv_pl_helio_arr(0) = (dxx_m * (cw * co - swci * so) - _
            dyy_m * (sw * co + cwci * so))
      lv_pl_helio_arr(1) = (dxx_m * (cw * so + swci * co) - _
            dyy_m * (sw * so - cwci * co))
      lv_pl_helio_arr(2) = (dxx_m * (sw * si) + dyy_m * (cw * _
            si))
      obl_rad = earth_obliquity(jtwok)
      co = Math.Cos(obl_rad)
      so = Math.Sin(obl_rad)
      lv_pl_geo_arr(0) = lv_pl_helio_arr(0)
      lv_pl_geo_arr(1) = co * lv_pl_helio_arr(1) - so * _
            lv_pl_helio_arr(2)
      lv_pl_geo_arr(2) = so * lv_pl_helio_arr(1) + co * _
            lv_pl_helio_arr(2)
      retvalu = Kw.hypot3(lv_pl_helio_arr(0), _
            lv_pl_helio_arr(1), lv_pl_helio_arr(2))
   End If
   pl_heliocentric = (retvalu)
End Function
Public Shared Function plhelio(ByVal indd As Long) As Double
   ' local-use Vbdotnet lv_pl_helio_arr
   Dim ret_val As Double
   If (0 <= indd And indd < 3) Then
      ret_val = lv_pl_helio_arr(indd)
   Else
      ret_val = 0
   End If
   plhelio = (ret_val)
End Function
Public Shared Function plgeo(ByVal indd As Long) As Double
   ' local-use Vbdotnet lv_pl_geo_arr
   Dim ret_val As Double
   If (0 <= indd And indd < 3) Then
      ret_val = lv_pl_geo_arr(indd)
   Else
      ret_val = 0
   End If
   plgeo = (ret_val)
End Function
Public Shared Function pl_name(ByVal plnt As Long) As Long
   Dim plnt_ind As Long
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
   pl_name = (plnt_ind)
End Function
Public Shared Function plname() As Double
   ' local-use Vbdotnet lv_pl_ind
   plname = ((pl_name(LC_P1_PREV_PL)))
End Function
Public Shared Function earth_radius(ByVal lat_deg As Double) _
      As Double
   earth_radius = ((pl_aradius(LC_P1_EARTH, lat_deg)))
End Function
Public Shared Function earth_tropicalyear(ByVal jtwokdate As _
      Double) As Double
   Dim jy As Double
   jy = jtwokdate * Kw.EARTHSOLARDAY / Kw.JYEAR
   earth_tropicalyear _
         = ((((((2.64E-16) * jy - 7.29E-14) * jy - _
               6.15359E-8) * jy + 365.2421896698)))
End Function
Public Shared Function earth_distance(ByVal lata_deg As _
      Double, ByVal lona_deg As Double, ByVal latb_deg As _
      Double, ByVal lonb_deg As Double) As Double
   earth_distance _
         = (((Kw.great_circle_distance(Kw.deg2rad(lata_deg), _
               Kw.deg2rad(lona_deg), Kw.deg2rad(latb_deg), _
               Kw.deg2rad(lonb_deg)) * EARTH_A)))
End Function
Public Shared Function plaradius(ByVal lat_deg As Double) As _
      Double
   Dim calat As Double
   Dim sblat As Double
   Dim aa As Double
   Dim bb As Double
   aa = Kw.square(pla())
   bb = Kw.square(plb())
   calat = Kw.square(pla() * Kw.cosd(lat_deg))
   sblat = Kw.square(plb() * Kw.sind(lat_deg))
   plaradius _
         = ((Math.Sqrt((aa * calat + bb * sblat) / (calat + _
               sblat))))
End Function
Public Shared Function pl_aradius(ByVal plnt As Long, ByVal _
      lat_deg As Double) As Double
   Call pl(plnt)
   pl_aradius = ((plaradius(lat_deg)))
End Function
Public Shared Function earth_obliquity(ByVal jtwok As Double) _
      As Double
   Dim obl_rad As Double
   obl_rad = (((-1.24828E-16) * jtwok - 3.56226633E-7) * _
         jtwok + 23.4392889)
   earth_obliquity = ((Kw.deg2rad(obl_rad)))
End Function
Public Shared Function earth_gravity(ByVal lat_deg As Double) _
      As Double
   Dim slatsq As Double
   Dim obltsq As Double
   Dim kk As Double
   slatsq = Kw.square(Kw.sind(lat_deg))
   obltsq = EARTHFLATNESS * (2.0 - EARTHFLATNESS)
   kk = (((1.0 - EARTHFLATNESS) * Kw.EARTHGRAVITYB) - _
         Kw.EARTHGRAVITYA)
   earth_gravity _
         = (((Kw.EARTHGRAVITYA + kk * slatsq) / Math.Sqrt(1.0 _
               - obltsq * slatsq)))
End Function
Public Shared Function earth_gravity_height(ByVal lat_deg As _
      Double, ByVal height_m As Double) As Double
   earth_gravity_height _
         = (((earth_gravity(lat_deg) - height_m * 2.0 * _
               EARTHGM / Kw.cube(EARTH_A))))
End Function
Private Shared Function lf_isa_calc(ByVal height_m As Double, _
      ByVal state_x As Long) As Double
   ' local-use Vbdotnet lv_isa_arr
   ' local-use Vbdotnet lv_isa_magic
   Dim h_ind As Long
   Dim air_k_per_m As Double
   Dim expon As Double
   Dim this_temp As Double
   Dim delta_h As Double
   Dim ret_val As Double
   If (Not Kw.ismagic(lv_isa_magic)) Then
      lv_isa_arr(0, LC_ISA_XHEIGHT) = 0
      lv_isa_arr(0, LC_ISA_XTEMPERATURE) = 288.15
      lv_isa_arr(0, LC_ISA_XLAPSERATE) = -0.0065
      lv_isa_arr(0, LC_ISA_XPRESSURE) = Kw.ATM
      lv_isa_arr(0, LC_ISA_XDENSITY) = 1.2250
      lv_isa_arr(1, LC_ISA_XHEIGHT) = 11000
      lv_isa_arr(1, LC_ISA_XTEMPERATURE) = 216.65
      lv_isa_arr(1, LC_ISA_XLAPSERATE) = +0.0
      lv_isa_arr(1, LC_ISA_XPRESSURE) = 22632.10
      lv_isa_arr(1, LC_ISA_XDENSITY) = 0.36391
      lv_isa_arr(2, LC_ISA_XHEIGHT) = 20000
      lv_isa_arr(2, LC_ISA_XTEMPERATURE) = 216.65
      lv_isa_arr(2, LC_ISA_XLAPSERATE) = +0.001
      lv_isa_arr(2, LC_ISA_XPRESSURE) = 5474.89
      lv_isa_arr(2, LC_ISA_XDENSITY) = 0.08803
      lv_isa_arr(3, LC_ISA_XHEIGHT) = 32000
      lv_isa_arr(3, LC_ISA_XTEMPERATURE) = 228.65
      lv_isa_arr(3, LC_ISA_XLAPSERATE) = +0.0028
      lv_isa_arr(3, LC_ISA_XPRESSURE) = 868.02
      lv_isa_arr(3, LC_ISA_XDENSITY) = 0.01322
      lv_isa_arr(4, LC_ISA_XHEIGHT) = 47000
      lv_isa_arr(4, LC_ISA_XTEMPERATURE) = 270.65
      lv_isa_arr(4, LC_ISA_XLAPSERATE) = +0.0
      lv_isa_arr(4, LC_ISA_XPRESSURE) = 110.91
      lv_isa_arr(4, LC_ISA_XDENSITY) = 0.00143
      lv_isa_arr(5, LC_ISA_XHEIGHT) = 51000
      lv_isa_arr(5, LC_ISA_XTEMPERATURE) = 270.65
      lv_isa_arr(5, LC_ISA_XLAPSERATE) = -0.0028
      lv_isa_arr(5, LC_ISA_XPRESSURE) = 66.94
      lv_isa_arr(5, LC_ISA_XDENSITY) = 8.6E-4
      lv_isa_arr(6, LC_ISA_XHEIGHT) = 71000
      lv_isa_arr(6, LC_ISA_XTEMPERATURE) = 214.65
      lv_isa_arr(6, LC_ISA_XLAPSERATE) = -0.002
      lv_isa_arr(6, LC_ISA_XPRESSURE) = 3.96
      lv_isa_arr(6, LC_ISA_XDENSITY) = 6.4E-5
      lv_isa_magic = Kw.magicset()
   End If
   h_ind = 6
   Do While (height_m < lv_isa_arr(h_ind, 0) And 0 < h_ind)
      h_ind = h_ind - 1
   Loop
   delta_h = height_m - lv_isa_arr(h_ind, LC_ISA_XHEIGHT)
   this_temp = lv_isa_arr(h_ind, LC_ISA_XTEMPERATURE) + _
         lv_isa_arr(h_ind, LC_ISA_XLAPSERATE) * delta_h
   If (state_x = LC_ISA_TEMPERATURE) Then
      ret_val = this_temp
   Else
      air_k_per_m = Kw.GRAVITY * Kwelements.AIR_MASS / Kw.GAS
      If (Kw.iszero(lv_isa_arr(h_ind, LC_ISA_XLAPSERATE))) Then
         ret_val = Math.Exp(-air_k_per_m * delta_h / _
               lv_isa_arr(h_ind, LC_ISA_XTEMPERATURE))
      Else
         expon = air_k_per_m / lv_isa_arr(h_ind, _
               LC_ISA_XLAPSERATE)
         If (state_x = LC_ISA_DENSITY) Then
            expon = expon + 1
         End If
         ret_val = Math.Pow(lv_isa_arr(h_ind, _
               LC_ISA_XTEMPERATURE) / this_temp, expon)
      End If
      If (state_x = LC_ISA_PRESSURE) Then
         ret_val = ret_val * lv_isa_arr(h_ind, LC_ISA_XPRESSURE)
      Else
         ret_val = ret_val * lv_isa_arr(h_ind, LC_ISA_XDENSITY)
      End If
   End If
   lf_isa_calc = (ret_val)
End Function
Public Shared Function isa_temp(ByVal height_m As Double) As _
      Double
   isa_temp = ((lf_isa_calc(height_m, LC_ISA_TEMPERATURE)))
End Function
Public Shared Function isa_pres(ByVal height_m As Double) As _
      Double
   isa_pres = ((lf_isa_calc(height_m, LC_ISA_PRESSURE)))
End Function
Public Shared Function isa_dens(ByVal height_m As Double) As _
      Double
   isa_dens = ((lf_isa_calc(height_m, LC_ISA_DENSITY)))
End Function
Public Shared Function vin_distance(ByVal lata_deg As Double, _
      ByVal lona_deg As Double, ByVal latb_deg As Double, _
      ByVal lonb_deg As Double, ret_bearings_arr_p() As _
      Double) As Double
   Dim retvalu As Double
   Dim rad_arr(2) As Double
   retvalu = EARTH_A * Kw.ellipsoid_distance(EARTHFLATNESS, _
         Kw.deg2rad(lata_deg), Kw.deg2rad(lona_deg), _
         Kw.deg2rad(latb_deg), Kw.deg2rad(lonb_deg), rad_arr) _
         / Kw.METER
   ret_bearings_arr_p(0) = Kw.rad2deg(rad_arr(0))
   ret_bearings_arr_p(1) = Kw.rad2deg(rad_arr(1))
   vin_distance = (retvalu)
End Function
Public Shared Function vin_destination(ByVal lata_deg As _
      Double, ByVal lona_deg As Double, ByVal heading_deg As _
      Double, ByVal dist_m As Double, ret_dest_arr_p() As _
      Double) As Double
   Dim fltnss As Double
   Dim retvalu As Double
   Dim rad_arr(2) As Double
   fltnss = EARTHFLATNESS
   retvalu = Kw.rad2deg(Kw.ellipsoid_destination(fltnss, _
         Kw.deg2rad(lata_deg), Kw.deg2rad(lona_deg), _
         Kw.deg2rad(heading_deg), dist_m * Kw.METER / EARTH_A _
         , rad_arr))
   ret_dest_arr_p(0) = Kw.rad2deg(rad_arr(0))
   ret_dest_arr_p(1) = Kw.rad2deg(rad_arr(1))
   vin_destination = (retvalu)
End Function
'   DDDDDDDDDDescription ---------------- kwplanets_description #
Public Function kwplanets_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwplanets Constants: ANOMALISTICYEAR CERES_A CE" _
         & "RES_B CERES_C CERESASCENDING CERESASCENDING_DT CER" _
         & "ESDAY CERESDENSITY CERESECCENTRICITY CERESECCENTRI"
   desc_string = desc_string _
         & "CITY_DT CERESFLATNESS CERESGM CERESGRAVITY CERESIN" _
         & "CLINATION CERESINCLINATION_DT CERESLONGITUDE CERES" _
         & "LONGITUDE_DT CERESMASS CERESORBIT CERESORBIT_DT CE" _
         & "RESPERIAPSIS CERESPERIAPSIS_DT CERESRADIUS CERESVO"
   desc_string = desc_string _
         & "LUME CERESYEAR EARTH_A EARTH_B EARTH_C EARTHANOMAL" _
         & "ISTICYEAR EARTHASCENDING EARTHASCENDING_DT EARTHDA" _
         & "Y EARTHDENSITY EARTHECCENTRICITY EARTHECCENTRICITY" _
         & "_DT EARTHFLATNESS EARTHGM EARTHGRAVITY EARTHINCLIN"
   desc_string = desc_string _
         & "ATION EARTHINCLINATION_DT EARTHLONGITUDE EARTHLONG" _
         & "ITUDE_DT EARTHMASS EARTHORBIT EARTHORBIT_DT EARTHP" _
         & "ERIAPSIS EARTHPERIAPSIS_DT EARTHPRECESSION EARTHRA" _
         & "DIUS EARTHSIDEREALDAY EARTHSIDEREALYEAR EARTHSTELL"
   desc_string = desc_string _
         & "ARDAY EARTHTHETA_0 EARTHTROPICALYEAR EARTHVOLUME E" _
         & "ARTHYEAR ERIS_A ERIS_B ERIS_C ERISASCENDING ERISAS" _
         & "CENDING_DT ERISDAY ERISDENSITY ERISECCENTRICITY ER" _
         & "ISECCENTRICITY_DT ERISFLATNESS ERISGM ERISGRAVITY "
   desc_string = desc_string _
         & "ERISINCLINATION ERISINCLINATION_DT ERISLONGITUDE E" _
         & "RISLONGITUDE_DT ERISMASS ERISORBIT ERISORBIT_DT ER" _
         & "ISPERIAPSIS ERISPERIAPSIS_DT ERISRADIUS ERISVOLUME" _
         & " ERISYEAR HAUMEA_A HAUMEA_B HAUMEA_C HAUMEAASCENDI"
   desc_string = desc_string _
         & "NG HAUMEAASCENDING_DT HAUMEADAY HAUMEADENSITY HAUM" _
         & "EAECCENTRICITY HAUMEAECCENTRICITY_DT HAUMEAFLATNES" _
         & "S HAUMEAGM HAUMEAGRAVITY HAUMEAINCLINATION HAUMEAI" _
         & "NCLINATION_DT HAUMEALONGITUDE HAUMEALONGITUDE_DT H"
   desc_string = desc_string _
         & "AUMEAMASS HAUMEAORBIT HAUMEAORBIT_DT HAUMEAPERIAPS" _
         & "IS HAUMEAPERIAPSIS_DT HAUMEARADIUS HAUMEAVOLUME HA" _
         & "UMEAYEAR JUPITER_A JUPITER_B JUPITER_C JUPITERASCE" _
         & "NDING JUPITERASCENDING_DT JUPITERDAY JUPITERDENSIT"
   desc_string = desc_string _
         & "Y JUPITERECCENTRICITY JUPITERECCENTRICITY_DT JUPIT" _
         & "ERFLATNESS JUPITERGM JUPITERGRAVITY JUPITERINCLINA" _
         & "TION JUPITERINCLINATION_DT JUPITERLONGITUDE JUPITE" _
         & "RLONGITUDE_DT JUPITERMASS JUPITERORBIT JUPITERORBI"
   desc_string = desc_string _
         & "T_DT JUPITERPERIAPSIS JUPITERPERIAPSIS_DT JUPITERR" _
         & "ADIUS JUPITERVOLUME JUPITERYEAR MAKEMAKE_A MAKEMAK" _
         & "E_B MAKEMAKE_C MAKEMAKEASCENDING MAKEMAKEASCENDING" _
         & "_DT MAKEMAKEDAY MAKEMAKEDENSITY MAKEMAKEECCENTRICI"
   desc_string = desc_string _
         & "TY MAKEMAKEECCENTRICITY_DT MAKEMAKEFLATNESS MAKEMA" _
         & "KEGM MAKEMAKEGRAVITY MAKEMAKEINCLINATION MAKEMAKEI" _
         & "NCLINATION_DT MAKEMAKELONGITUDE MAKEMAKELONGITUDE_" _
         & "DT MAKEMAKEMASS MAKEMAKEORBIT MAKEMAKEORBIT_DT MAK"
   desc_string = desc_string _
         & "EMAKEPERIAPSIS MAKEMAKEPERIAPSIS_DT MAKEMAKERADIUS" _
         & " MAKEMAKEVOLUME MAKEMAKEYEAR MARS_A MARS_B MARS_C " _
         & "MARSASCENDING MARSASCENDING_DT MARSDAY MARSDENSITY" _
         & " MARSECCENTRICITY MARSECCENTRICITY_DT MARSFLATNESS"
   desc_string = desc_string _
         & " MARSGM MARSGRAVITY MARSINCLINATION MARSINCLINATIO" _
         & "N_DT MARSLONGITUDE MARSLONGITUDE_DT MARSMASS MARSO" _
         & "RBIT MARSORBIT_DT MARSPERIAPSIS MARSPERIAPSIS_DT M" _
         & "ARSRADIUS MARSVOLUME MARSYEAR MERCURY_A MERCURY_B "
   desc_string = desc_string _
         & "MERCURY_C MERCURYASCENDING MERCURYASCENDING_DT MER" _
         & "CURYDAY MERCURYDENSITY MERCURYECCENTRICITY MERCURY" _
         & "ECCENTRICITY_DT MERCURYFLATNESS MERCURYGM MERCURYG" _
         & "RAVITY MERCURYINCLINATION MERCURYINCLINATION_DT ME"
   desc_string = desc_string _
         & "RCURYLONGITUDE MERCURYLONGITUDE_DT MERCURYMASS MER" _
         & "CURYORBIT MERCURYORBIT_DT MERCURYPERIAPSIS MERCURY" _
         & "PERIAPSIS_DT MERCURYRADIUS MERCURYVOLUME MERCURYYE" _
         & "AR MOON_A MOON_B MOON_C MOONDAY MOONDENSITY MOONEC"
   desc_string = desc_string _
         & "CENTRICITY MOONFLATNESS MOONGM MOONGRAVITY MOONINC" _
         & "LINATION MOONMASS MOONORBIT MOONRADIUS MOONVOLUME " _
         & "MOONYEAR NEPTUNE_A NEPTUNE_B NEPTUNE_C NEPTUNEASCE" _
         & "NDING NEPTUNEASCENDING_DT NEPTUNEDAY NEPTUNEDENSIT"
   desc_string = desc_string _
         & "Y NEPTUNEECCENTRICITY NEPTUNEECCENTRICITY_DT NEPTU" _
         & "NEFLATNESS NEPTUNEGM NEPTUNEGRAVITY NEPTUNEINCLINA" _
         & "TION NEPTUNEINCLINATION_DT NEPTUNELONGITUDE NEPTUN" _
         & "ELONGITUDE_DT NEPTUNEMASS NEPTUNEORBIT NEPTUNEORBI"
   desc_string = desc_string _
         & "T_DT NEPTUNEPERIAPSIS NEPTUNEPERIAPSIS_DT NEPTUNER" _
         & "ADIUS NEPTUNEVOLUME NEPTUNEYEAR PLUTO_A PLUTO_B PL" _
         & "UTO_C PLUTOASCENDING PLUTOASCENDING_DT PLUTODAY PL" _
         & "UTODENSITY PLUTOECCENTRICITY PLUTOECCENTRICITY_DT "
   desc_string = desc_string _
         & "PLUTOFLATNESS PLUTOGM PLUTOGRAVITY PLUTOINCLINATIO" _
         & "N PLUTOINCLINATION_DT PLUTOLONGITUDE PLUTOLONGITUD" _
         & "E_DT PLUTOMASS PLUTOORBIT PLUTOORBIT_DT PLUTOPERIA" _
         & "PSIS PLUTOPERIAPSIS_DT PLUTORADIUS PLUTOVOLUME PLU"
   desc_string = desc_string _
         & "TOYEAR SATURN_A SATURN_B SATURN_C SATURNASCENDING " _
         & "SATURNASCENDING_DT SATURNDAY SATURNDENSITY SATURNE" _
         & "CCENTRICITY SATURNECCENTRICITY_DT SATURNFLATNESS S" _
         & "ATURNGM SATURNGRAVITY SATURNINCLINATION SATURNINCL"
   desc_string = desc_string _
         & "INATION_DT SATURNLONGITUDE SATURNLONGITUDE_DT SATU" _
         & "RNMASS SATURNORBIT SATURNORBIT_DT SATURNPERIAPSIS " _
         & "SATURNPERIAPSIS_DT SATURNRADIUS SATURNVOLUME SATUR" _
         & "NYEAR SIDEREALDAY SIDEREALYEAR STELLARDAY SUN_A SU"
   desc_string = desc_string _
         & "N_B SUN_C SUNASCENDING SUNASCENDING_DT SUNDAY SUND" _
         & "ENSITY SUNECCENTRICITY SUNECCENTRICITY_DT SUNFLATN" _
         & "ESS SUNGM SUNGMIERS SUNGMNASA SUNGRAVITY SUNINCLIN" _
         & "ATION SUNINCLINATION_DT SUNLONGITUDE SUNLONGITUDE_"
   desc_string = desc_string _
         & "DT SUNMASS SUNORBIT SUNORBIT_DT SUNPERIAPSIS SUNPE" _
         & "RIAPSIS_DT SUNRADIUS SUNVOLUME SUNYEAR TROPICALYEA" _
         & "R URANUS_A URANUS_B URANUS_C URANUSASCENDING URANU" _
         & "SASCENDING_DT URANUSDAY URANUSDENSITY URANUSECCENT"
   desc_string = desc_string _
         & "RICITY URANUSECCENTRICITY_DT URANUSFLATNESS URANUS" _
         & "GM URANUSGRAVITY URANUSINCLINATION URANUSINCLINATI" _
         & "ON_DT URANUSLONGITUDE URANUSLONGITUDE_DT URANUSMAS" _
         & "S URANUSORBIT URANUSORBIT_DT URANUSPERIAPSIS URANU"
   desc_string = desc_string _
         & "SPERIAPSIS_DT URANUSRADIUS URANUSVOLUME URANUSYEAR" _
         & " VENUS_A VENUS_B VENUS_C VENUSASCENDING VENUSASCEN" _
         & "DING_DT VENUSDAY VENUSDENSITY VENUSECCENTRICITY VE" _
         & "NUSECCENTRICITY_DT VENUSFLATNESS VENUSGM VENUSGRAV"
   desc_string = desc_string _
         & "ITY VENUSINCLINATION VENUSINCLINATION_DT VENUSLONG" _
         & "ITUDE VENUSLONGITUDE_DT VENUSMASS VENUSORBIT VENUS" _
         & "ORBIT_DT VENUSPERIAPSIS VENUSPERIAPSIS_DT VENUSRAD" _
         & "IUS VENUSVOLUME VENUSYEAR" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 0-ary Functions: pla plaphelion plarg" _
         & "ument plascending plb plc plday pldensity pleccent" _
         & "ricanomaly pleccentricity plescape plflatness plgm"
   desc_string = desc_string _
         & " plgravity plinclination pllongitude plmargot plma" _
         & "ss plmeananomaly plname plorbit plperiapsis plperi" _
         & "helion plradius plsternlevison plsynodic plvolume " _
         & "plyear" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 1-ary Functions: earth_gravity earth_" _
         & "obliquity earth_radius earth_tropicalyear isa_dens" _
         & " isa_pres isa_temp pl pl_a pl_aphelion pl_argument"
   desc_string = desc_string _
         & " pl_ascending pl_b pl_c pl_day pl_density pl_eccen" _
         & "tricanomaly pl_eccentricity pl_escape pl_flatness " _
         & "pl_gm pl_gravity pl_inclination pl_longitude pl_ma" _
         & "rgot pl_mass pl_meananomaly pl_name pl_orbit pl_pe" _
         & "riapsis pl_perihelion pl_radius pl_sternlevison pl" _
         & "_synodic pl_volume pl_year plaradius plgeo plhelio" _
         & " plsettime" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 2-ary Functions: earth_gravity_height" _
         & " eccentric_anomaly margot pl_aradius pl_heliocentr" _
         & "ic sternlevison" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 4-ary Functions: earth_distance" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 5-ary Functions: vin_destination vin_" _
         & "distance"
   kwplanets_description = desc_string
End Function
Public Function kwplanets_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwplanets Constants: ANOMALISTICYEAR CERES(_[AB" _
         & "C]|ASCENDING(_DT)?|D(AY|ENSITY)|ECCENTRICITY(_DT)?" _
         & "|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE("
   desc_string = desc_string _
         & "_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLU" _
         & "ME|YEAR) EARTH(_[ABC]|A(NOMALISTICYEAR|SCENDING(_D" _
         & "T)?)|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|" _
         & "RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORB"
   desc_string = desc_string _
         & "IT(_DT)?|P(ERIAPSIS(_DT)?|RECESSION)|RADIUS|S(IDER" _
         & "EAL(DAY|YEAR)|TELLARDAY)|T(HETA_0|ROPICALYEAR)|VOL" _
         & "UME|YEAR) ERIS(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)" _
         & "|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINATI"
   desc_string = desc_string _
         & "ON(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSI" _
         & "S(_DT)?|RADIUS|VOLUME|YEAR) HAUMEA(_[ABC]|ASCENDIN" _
         & "G(_DT)?|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G" _
         & "(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|"
   desc_string = desc_string _
         & "ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) JU" _
         & "PITER(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|ECCENTRI" _
         & "CITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|" _
         & "LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|R"
   desc_string = desc_string _
         & "ADIUS|VOLUME|YEAR) MAKEMAKE(_[ABC]|ASCENDING(_DT)?" _
         & "|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVI" _
         & "TY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_" _
         & "DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) MARS(_[AB"
   desc_string = desc_string _
         & "C]|ASCENDING(_DT)?|D(AY|ENSITY)|ECCENTRICITY(_DT)?" _
         & "|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(" _
         & "_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLU" _
         & "ME|YEAR) MERCURY(_[ABC]|ASCENDING(_DT)?|D(AY|ENSIT"
   desc_string = desc_string _
         & "Y)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINA" _
         & "TION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAP" _
         & "SIS(_DT)?|RADIUS|VOLUME|YEAR) MOON(_[ABC]|D(AY|ENS" _
         & "ITY)|ECCENTRICITY|FLATNESS|G(M|RAVITY)|INCLINATION"
   desc_string = desc_string _
         & "|MASS|ORBIT|RADIUS|VOLUME|YEAR) NEPTUNE(_[ABC]|ASC" _
         & "ENDING(_DT)?|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATN" _
         & "ESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|" _
         & "MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEA"
   desc_string = desc_string _
         & "R) PLUTO(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|ECCEN" _
         & "TRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INCLINATION(_DT" _
         & ")?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PERIAPSIS(_DT)" _
         & "?|RADIUS|VOLUME|YEAR) SATURN(_[ABC]|ASCENDING(_DT)"
   desc_string = desc_string _
         & "?|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAV" _
         & "ITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(" _
         & "_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) SIDEREAL" _
         & "(DAY|YEAR) STELLARDAY SUN(_[ABC]|ASCENDING(_DT)?|D"
   desc_string = desc_string _
         & "(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M(IERS|N" _
         & "ASA)?|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MA" _
         & "SS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR)" _
         & " TROPICALYEAR URANUS(_[ABC]|ASCENDING(_DT)?|D(AY|E"
   desc_string = desc_string _
         & "NSITY)|ECCENTRICITY(_DT)?|FLATNESS|G(M|RAVITY)|INC" _
         & "LINATION(_DT)?|LONGITUDE(_DT)?|MASS|ORBIT(_DT)?|PE" _
         & "RIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) VENUS(_[ABC]|ASC" _
         & "ENDING(_DT)?|D(AY|ENSITY)|ECCENTRICITY(_DT)?|FLATN" _
         & "ESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|" _
         & "MASS|ORBIT(_DT)?|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEA" _
         & "R)" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 0-ary Functions: pla(phelion|rgument|" _
         & "scending)? plb plc pld(ay|ensity) ple(ccentric(ano" _
         & "maly|ity)|scape) plflatness plg(m|ravity) plinclin" _
         & "ation pllongitude plm(a(rgot|ss)|eananomaly) plnam" _
         & "e plorbit plperi(apsis|helion) plradius pls(ternle" _
         & "vison|ynodic) plvolume plyear" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 1-ary Functions: earth_(gravity|obliq" _
         & "uity|radius|tropicalyear) isa_(dens|pres|temp) pl " _
         & "pl_(a(phelion|rgument|scending)?|b|c|d(ay|ensity)|"
   desc_string = desc_string _
         & "e(ccentric(anomaly|ity)|scape)|flatness|g(m|ravity" _
         & ")|inclination|longitude|m(a(rgot|ss)|eananomaly)|n" _
         & "ame|orbit|peri(apsis|helion)|radius|s(ternlevison|" _
         & "ynodic)|volume|year) plaradius plgeo plhelio plset" _
         & "time" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 2-ary Functions: earth_gravity_height" _
         & " eccentric_anomaly margot pl_(aradius|heliocentric" _
         & ") sternlevison" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 4-ary Functions: earth_distance" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kwplanets 5-ary Functions: vin_d(estination|ist" _
         & "ance)"
   kwplanets_desc = desc_string
End Function
End Class
