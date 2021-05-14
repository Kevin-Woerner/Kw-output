//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ######### SOURCE $KWROOT/codekdw/kw-lib/Kwplanets.fwipp ##########
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kwplanets.varylog
#ifndef INCLUDED_Kwplanets_h
#define INCLUDED_Kwplanets_h
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
#include "Kwelements.h"
//  CCCCCCCCCC_DEF ################################################# LANG_C #
#define SUN_GM (1.32712440018E+20 * UNITGM)
#define SUN_YEAR (0.0 * DAY)
#define SUN_DAY (24.47 * DAY)
#define MERCURY_GM (2.2032E+13 * UNITGM)
#define MERCURY_YEAR (87.9691 * DAY)
#define MERCURY_DAY (58.6462 * DAY)
#define VENUS_GM (3.24859E+14 * UNITGM)
#define VENUS_YEAR (224.701 * DAY)
#define VENUS_DAY (- 243.018 * DAY)
#define MARS_GM (4.282837E+13 * UNITGM)
#define MARS_YEAR (686.971 * DAY)
#define MARS_DAY (1.02595676 * DAY)
#define EARTH_GM (3.986004418E+14 * UNITGM)
#define EARTH_YEAR (365.256363004 * DAY)
#define EARTH_DAY (1.0 / 1.00273781191135448 * DAY)
#define JUPITER_GM (1.26686534E+17 * UNITGM)
#define JUPITER_YEAR (4332.59 * DAY)
#define JUPITER_DAY (0.41354 * DAY)
#define SATURN_GM (3.7931187E+16 * UNITGM)
#define SATURN_YEAR (10759.22 * DAY)
#define SATURN_DAY (0.44401 * DAY)
#define URANUS_GM (5.793939E+15 * UNITGM)
#define URANUS_YEAR (30688.5 * DAY)
#define URANUS_DAY (- 0.71833 * DAY)
#define NEPTUNE_GM (6.836529E+15 * UNITGM)
#define NEPTUNE_YEAR (6.0182E+4 * DAY)
#define NEPTUNE_DAY (0.67125 * DAY)
#define PLUTO_GM (8.71E+11 * UNITGM)
#define PLUTO_YEAR (9.056E+4 * DAY)
#define PLUTO_DAY (6.38723 * DAY)
#define MOON_GM (4.9048695E+12 * UNITGM)
#define MOON_YEAR (27.32166155 * DAY)
#define MOON_DAY (27.321661 * DAY)
#define CERES_GM (6.26325E+10 * UNITGM)
#define CERES_YEAR (1681.63 * DAY)
#define CERES_DAY (0.378090 * DAY)
#define ERIS_GM (1.108E+12 * UNITGM)
#define ERIS_YEAR (2.0383E+5 * DAY)
#define ERIS_DAY (1.0792 * DAY)
#define MAKEMAKE_GM (2.9366E+11 * UNITGM)
#define MAKEMAKE_YEAR (1.12897E+5 * DAY)
#define MAKEMAKE_DAY (0.32379 * DAY)
#define HAUMEA_GM (2.674E+11 * UNITGM)
#define HAUMEA_YEAR (1.03774E+5 * DAY)
#define HAUMEA_DAY (0.16314585 * DAY)
#define EARTH_SOLARDAY (DAY)
#define EARTH_SIDEREALDAY (DAY / 1.002737909350795)
#define EARTH_STELLARDAY (EARTH_DAY)
#define EARTH_TROPICALYEAR (365.242190402 * DAY)
#define EARTH_SIDEREALYEAR (EARTH_YEAR)
#define EARTH_ANOMALISTICYEAR (365.259636 * DAY)
#define SIDEREALYEAR (EARTH_SIDEREALYEAR)
#define ANOMALISTICYEAR (EARTH_ANOMALISTICYEAR)
#define TROPICALYEAR (EARTH_TROPICALYEAR)
#define SUN_FLATNESS (9.0E-6)
#define SUN_A (6.957E+8 * METER)
#define SUN_C (SUN_A)
#define MERCURY_FLATNESS (0.0)
#define MERCURY_A (2.4397E+6 * METER)
#define MERCURY_C (MERCURY_A)
#define VENUS_FLATNESS (0.0)
#define VENUS_A (6.0518E+6 * METER)
#define VENUS_C (VENUS_A)
#define EARTH_FLATNESS (1.0 / 298.257223563)
#define EARTH_A (6.378137E+6 * METER)
#define EARTH_C (EARTH_A)
#define MARS_FLATNESS (1.0 / 169.81)
#define MARS_A (3.3962E+6 * METER)
#define MARS_C (MARS_A)
#define JUPITER_FLATNESS (1.0 / 15.4144028)
#define JUPITER_A (7.1492E+7 * METER)
#define JUPITER_C (JUPITER_A)
#define SATURN_FLATNESS (1.0 / 10.208)
#define SATURN_A (6.0268E+7 * METER)
#define SATURN_C (SATURN_A)
#define URANUS_FLATNESS (1.0 / 43.61604)
#define URANUS_A (2.5559E+7 * METER)
#define URANUS_C (URANUS_A)
#define NEPTUNE_FLATNESS (1.0 / 58.54373)
#define NEPTUNE_A (2.4764E+7 * METER)
#define NEPTUNE_C (NEPTUNE_A)
#define PLUTO_FLATNESS (0.0)
#define PLUTO_A (1.1899E+6 * METER)
#define PLUTO_C (PLUTO_A)
#define MOON_FLATNESS (1.0 / 827.667)
#define MOON_A (1.7381E+6 * METER)
#define MOON_C (MOON_A)
#define CERES_FLATNESS (1.0 / 13.0432)
#define CERES_A (4.826E+5 * METER)
#define CERES_C (4.806E+5 * METER)
#define ERIS_FLATNESS (0.0)
#define ERIS_A (1.163E+6 * METER)
#define ERIS_C (ERIS_A)
#define MAKEMAKE_FLATNESS (1.0 / 30.7917)
#define MAKEMAKE_A (7.39E+5 * METER)
#define MAKEMAKE_C (MAKEMAKE_A)
#define HAUMEA_FLATNESS (1.0 / 1.96115)
#define HAUMEA_A (1.161E+6 * METER)
#define HAUMEA_C (8.52E+5 * METER)
#define SUN_B (SUN_A * (1.0 - SUN_FLATNESS))
#define SUN_RADIUS ((SUN_A + SUN_B + SUN_C) / 3.0)
#define SUN_ESCAPE (sqrt(2.0 * SUN_GM / SUN_RADIUS))
#define SUN_OBLATENESS (sqrt(SUN_FLATNESS * (2.0 - SUN_FLATNESS)))
#define SUN_GRAVITY (SUN_GM / (SUN_RADIUS * SUN_RADIUS))
#define SUN_MASS (SUN_GM / GRAVITATION)
#define SUN_VOLUME (2.0 * TAU / 3.0 * SUN_RADIUS * SUN_RADIUS * SUN_RADIUS)
#define SUN_SURFACE (2.0 * TAU * SUN_RADIUS * SUN_RADIUS)
#define SUN_DENSITY (SUN_MASS / SUN_VOLUME)
#define EARTH_B (EARTH_A * (1.0 - EARTH_FLATNESS))
#define EARTH_RADIUS ((EARTH_A + EARTH_B + EARTH_C) / 3.0)
#define EARTH_ESCAPE (sqrt(2.0 * EARTH_GM / EARTH_RADIUS))
#define EARTH_OBLATENESS (sqrt(EARTH_FLATNESS * (2.0 - EARTH_FLATNESS)))
#define EARTH_GRAVITY (EARTH_GM / (EARTH_RADIUS * EARTH_RADIUS))
#define EARTH_MASS (EARTH_GM / GRAVITATION)
#define EARTH_VOLUME (2.0 * TAU / 3.0 * EARTH_RADIUS * EARTH_RADIUS *\
         EARTH_RADIUS)
#define EARTH_SURFACE (2.0 * TAU * EARTH_RADIUS * EARTH_RADIUS)
#define EARTH_DENSITY (EARTH_MASS / EARTH_VOLUME)
#define MERCURY_B (MERCURY_A * (1.0 - MERCURY_FLATNESS))
#define MERCURY_RADIUS ((MERCURY_A + MERCURY_B + MERCURY_C) / 3.0)
#define MERCURY_ESCAPE (sqrt(2.0 * MERCURY_GM / MERCURY_RADIUS))
#define MERCURY_OBLATENESS (sqrt(MERCURY_FLATNESS * (2.0 -\
         MERCURY_FLATNESS)))
#define MERCURY_GRAVITY (MERCURY_GM / (MERCURY_RADIUS * MERCURY_RADIUS))
#define MERCURY_MASS (MERCURY_GM / GRAVITATION)
#define MERCURY_VOLUME (2.0 * TAU / 3.0 * MERCURY_RADIUS * MERCURY_RADIUS\
         * MERCURY_RADIUS)
#define MERCURY_SURFACE (2.0 * TAU * MERCURY_RADIUS * MERCURY_RADIUS)
#define MERCURY_DENSITY (MERCURY_MASS / MERCURY_VOLUME)
#define MERCURY_SYNODIC (EARTH_SIDEREALYEAR * MERCURY_YEAR /\
         (MERCURY_YEAR - EARTH_SIDEREALYEAR))
#define VENUS_B (VENUS_A * (1.0 - VENUS_FLATNESS))
#define VENUS_RADIUS ((VENUS_A + VENUS_B + VENUS_C) / 3.0)
#define VENUS_ESCAPE (sqrt(2.0 * VENUS_GM / VENUS_RADIUS))
#define VENUS_OBLATENESS (sqrt(VENUS_FLATNESS * (2.0 - VENUS_FLATNESS)))
#define VENUS_GRAVITY (VENUS_GM / (VENUS_RADIUS * VENUS_RADIUS))
#define VENUS_MASS (VENUS_GM / GRAVITATION)
#define VENUS_VOLUME (2.0 * TAU / 3.0 * VENUS_RADIUS * VENUS_RADIUS *\
         VENUS_RADIUS)
#define VENUS_SURFACE (2.0 * TAU * VENUS_RADIUS * VENUS_RADIUS)
#define VENUS_DENSITY (VENUS_MASS / VENUS_VOLUME)
#define VENUS_SYNODIC (EARTH_SIDEREALYEAR * VENUS_YEAR / (VENUS_YEAR -\
         EARTH_SIDEREALYEAR))
#define MARS_B (MARS_A * (1.0 - MARS_FLATNESS))
#define MARS_RADIUS ((MARS_A + MARS_B + MARS_C) / 3.0)
#define MARS_ESCAPE (sqrt(2.0 * MARS_GM / MARS_RADIUS))
#define MARS_OBLATENESS (sqrt(MARS_FLATNESS * (2.0 - MARS_FLATNESS)))
#define MARS_GRAVITY (MARS_GM / (MARS_RADIUS * MARS_RADIUS))
#define MARS_MASS (MARS_GM / GRAVITATION)
#define MARS_VOLUME (2.0 * TAU / 3.0 * MARS_RADIUS * MARS_RADIUS *\
         MARS_RADIUS)
#define MARS_SURFACE (2.0 * TAU * MARS_RADIUS * MARS_RADIUS)
#define MARS_DENSITY (MARS_MASS / MARS_VOLUME)
#define MARS_SYNODIC (EARTH_SIDEREALYEAR * MARS_YEAR / (MARS_YEAR -\
         EARTH_SIDEREALYEAR))
#define JUPITER_B (JUPITER_A * (1.0 - JUPITER_FLATNESS))
#define JUPITER_RADIUS ((JUPITER_A + JUPITER_B + JUPITER_C) / 3.0)
#define JUPITER_ESCAPE (sqrt(2.0 * JUPITER_GM / JUPITER_RADIUS))
#define JUPITER_OBLATENESS (sqrt(JUPITER_FLATNESS * (2.0 -\
         JUPITER_FLATNESS)))
#define JUPITER_GRAVITY (JUPITER_GM / (JUPITER_RADIUS * JUPITER_RADIUS))
#define JUPITER_MASS (JUPITER_GM / GRAVITATION)
#define JUPITER_VOLUME (2.0 * TAU / 3.0 * JUPITER_RADIUS * JUPITER_RADIUS\
         * JUPITER_RADIUS)
#define JUPITER_SURFACE (2.0 * TAU * JUPITER_RADIUS * JUPITER_RADIUS)
#define JUPITER_DENSITY (JUPITER_MASS / JUPITER_VOLUME)
#define JUPITER_SYNODIC (EARTH_SIDEREALYEAR * JUPITER_YEAR /\
         (JUPITER_YEAR - EARTH_SIDEREALYEAR))
#define SATURN_B (SATURN_A * (1.0 - SATURN_FLATNESS))
#define SATURN_RADIUS ((SATURN_A + SATURN_B + SATURN_C) / 3.0)
#define SATURN_ESCAPE (sqrt(2.0 * SATURN_GM / SATURN_RADIUS))
#define SATURN_OBLATENESS (sqrt(SATURN_FLATNESS * (2.0 - SATURN_FLATNESS)))
#define SATURN_GRAVITY (SATURN_GM / (SATURN_RADIUS * SATURN_RADIUS))
#define SATURN_MASS (SATURN_GM / GRAVITATION)
#define SATURN_VOLUME (2.0 * TAU / 3.0 * SATURN_RADIUS * SATURN_RADIUS *\
         SATURN_RADIUS)
#define SATURN_SURFACE (2.0 * TAU * SATURN_RADIUS * SATURN_RADIUS)
#define SATURN_DENSITY (SATURN_MASS / SATURN_VOLUME)
#define SATURN_SYNODIC (EARTH_SIDEREALYEAR * SATURN_YEAR / (SATURN_YEAR -\
         EARTH_SIDEREALYEAR))
#define URANUS_B (URANUS_A * (1.0 - URANUS_FLATNESS))
#define URANUS_RADIUS ((URANUS_A + URANUS_B + URANUS_C) / 3.0)
#define URANUS_ESCAPE (sqrt(2.0 * URANUS_GM / URANUS_RADIUS))
#define URANUS_OBLATENESS (sqrt(URANUS_FLATNESS * (2.0 - URANUS_FLATNESS)))
#define URANUS_GRAVITY (URANUS_GM / (URANUS_RADIUS * URANUS_RADIUS))
#define URANUS_MASS (URANUS_GM / GRAVITATION)
#define URANUS_VOLUME (2.0 * TAU / 3.0 * URANUS_RADIUS * URANUS_RADIUS *\
         URANUS_RADIUS)
#define URANUS_SURFACE (2.0 * TAU * URANUS_RADIUS * URANUS_RADIUS)
#define URANUS_DENSITY (URANUS_MASS / URANUS_VOLUME)
#define URANUS_SYNODIC (EARTH_SIDEREALYEAR * URANUS_YEAR / (URANUS_YEAR -\
         EARTH_SIDEREALYEAR))
#define NEPTUNE_B (NEPTUNE_A * (1.0 - NEPTUNE_FLATNESS))
#define NEPTUNE_RADIUS ((NEPTUNE_A + NEPTUNE_B + NEPTUNE_C) / 3.0)
#define NEPTUNE_ESCAPE (sqrt(2.0 * NEPTUNE_GM / NEPTUNE_RADIUS))
#define NEPTUNE_OBLATENESS (sqrt(NEPTUNE_FLATNESS * (2.0 -\
         NEPTUNE_FLATNESS)))
#define NEPTUNE_GRAVITY (NEPTUNE_GM / (NEPTUNE_RADIUS * NEPTUNE_RADIUS))
#define NEPTUNE_MASS (NEPTUNE_GM / GRAVITATION)
#define NEPTUNE_VOLUME (2.0 * TAU / 3.0 * NEPTUNE_RADIUS * NEPTUNE_RADIUS\
         * NEPTUNE_RADIUS)
#define NEPTUNE_SURFACE (2.0 * TAU * NEPTUNE_RADIUS * NEPTUNE_RADIUS)
#define NEPTUNE_DENSITY (NEPTUNE_MASS / NEPTUNE_VOLUME)
#define NEPTUNE_SYNODIC (EARTH_SIDEREALYEAR * NEPTUNE_YEAR /\
         (NEPTUNE_YEAR - EARTH_SIDEREALYEAR))
#define PLUTO_B (PLUTO_A * (1.0 - PLUTO_FLATNESS))
#define PLUTO_RADIUS ((PLUTO_A + PLUTO_B + PLUTO_C) / 3.0)
#define PLUTO_ESCAPE (sqrt(2.0 * PLUTO_GM / PLUTO_RADIUS))
#define PLUTO_OBLATENESS (sqrt(PLUTO_FLATNESS * (2.0 - PLUTO_FLATNESS)))
#define PLUTO_GRAVITY (PLUTO_GM / (PLUTO_RADIUS * PLUTO_RADIUS))
#define PLUTO_MASS (PLUTO_GM / GRAVITATION)
#define PLUTO_VOLUME (2.0 * TAU / 3.0 * PLUTO_RADIUS * PLUTO_RADIUS *\
         PLUTO_RADIUS)
#define PLUTO_SURFACE (2.0 * TAU * PLUTO_RADIUS * PLUTO_RADIUS)
#define PLUTO_DENSITY (PLUTO_MASS / PLUTO_VOLUME)
#define PLUTO_SYNODIC (EARTH_SIDEREALYEAR * PLUTO_YEAR / (PLUTO_YEAR -\
         EARTH_SIDEREALYEAR))
#define MOON_B (MOON_A * (1.0 - MOON_FLATNESS))
#define MOON_RADIUS ((MOON_A + MOON_B + MOON_C) / 3.0)
#define MOON_ESCAPE (sqrt(2.0 * MOON_GM / MOON_RADIUS))
#define MOON_OBLATENESS (sqrt(MOON_FLATNESS * (2.0 - MOON_FLATNESS)))
#define MOON_GRAVITY (MOON_GM / (MOON_RADIUS * MOON_RADIUS))
#define MOON_MASS (MOON_GM / GRAVITATION)
#define MOON_VOLUME (2.0 * TAU / 3.0 * MOON_RADIUS * MOON_RADIUS *\
         MOON_RADIUS)
#define MOON_SURFACE (2.0 * TAU * MOON_RADIUS * MOON_RADIUS)
#define MOON_DENSITY (MOON_MASS / MOON_VOLUME)
#define MOON_SYNODIC (EARTH_SIDEREALYEAR * MOON_YEAR / (MOON_YEAR -\
         EARTH_SIDEREALYEAR))
#define CERES_B (CERES_A * (1.0 - CERES_FLATNESS))
#define CERES_RADIUS ((CERES_A + CERES_B + CERES_C) / 3.0)
#define CERES_ESCAPE (sqrt(2.0 * CERES_GM / CERES_RADIUS))
#define CERES_OBLATENESS (sqrt(CERES_FLATNESS * (2.0 - CERES_FLATNESS)))
#define CERES_GRAVITY (CERES_GM / (CERES_RADIUS * CERES_RADIUS))
#define CERES_MASS (CERES_GM / GRAVITATION)
#define CERES_VOLUME (2.0 * TAU / 3.0 * CERES_RADIUS * CERES_RADIUS *\
         CERES_RADIUS)
#define CERES_SURFACE (2.0 * TAU * CERES_RADIUS * CERES_RADIUS)
#define CERES_DENSITY (CERES_MASS / CERES_VOLUME)
#define CERES_SYNODIC (EARTH_SIDEREALYEAR * CERES_YEAR / (CERES_YEAR -\
         EARTH_SIDEREALYEAR))
#define ERIS_B (ERIS_A * (1.0 - ERIS_FLATNESS))
#define ERIS_RADIUS ((ERIS_A + ERIS_B + ERIS_C) / 3.0)
#define ERIS_ESCAPE (sqrt(2.0 * ERIS_GM / ERIS_RADIUS))
#define ERIS_OBLATENESS (sqrt(ERIS_FLATNESS * (2.0 - ERIS_FLATNESS)))
#define ERIS_GRAVITY (ERIS_GM / (ERIS_RADIUS * ERIS_RADIUS))
#define ERIS_MASS (ERIS_GM / GRAVITATION)
#define ERIS_VOLUME (2.0 * TAU / 3.0 * ERIS_RADIUS * ERIS_RADIUS *\
         ERIS_RADIUS)
#define ERIS_SURFACE (2.0 * TAU * ERIS_RADIUS * ERIS_RADIUS)
#define ERIS_DENSITY (ERIS_MASS / ERIS_VOLUME)
#define ERIS_SYNODIC (EARTH_SIDEREALYEAR * ERIS_YEAR / (ERIS_YEAR -\
         EARTH_SIDEREALYEAR))
#define MAKEMAKE_B (MAKEMAKE_A * (1.0 - MAKEMAKE_FLATNESS))
#define MAKEMAKE_RADIUS ((MAKEMAKE_A + MAKEMAKE_B + MAKEMAKE_C) / 3.0)
#define MAKEMAKE_ESCAPE (sqrt(2.0 * MAKEMAKE_GM / MAKEMAKE_RADIUS))
#define MAKEMAKE_OBLATENESS (sqrt(MAKEMAKE_FLATNESS * (2.0 -\
         MAKEMAKE_FLATNESS)))
#define MAKEMAKE_GRAVITY (MAKEMAKE_GM / (MAKEMAKE_RADIUS * MAKEMAKE_RADIUS))
#define MAKEMAKE_MASS (MAKEMAKE_GM / GRAVITATION)
#define MAKEMAKE_VOLUME (2.0 * TAU / 3.0 * MAKEMAKE_RADIUS *\
         MAKEMAKE_RADIUS * MAKEMAKE_RADIUS)
#define MAKEMAKE_SURFACE (2.0 * TAU * MAKEMAKE_RADIUS * MAKEMAKE_RADIUS)
#define MAKEMAKE_DENSITY (MAKEMAKE_MASS / MAKEMAKE_VOLUME)
#define MAKEMAKE_SYNODIC (EARTH_SIDEREALYEAR * MAKEMAKE_YEAR /\
         (MAKEMAKE_YEAR - EARTH_SIDEREALYEAR))
#define HAUMEA_B (HAUMEA_A * (1.0 - HAUMEA_FLATNESS))
#define HAUMEA_RADIUS ((HAUMEA_A + HAUMEA_B + HAUMEA_C) / 3.0)
#define HAUMEA_ESCAPE (sqrt(2.0 * HAUMEA_GM / HAUMEA_RADIUS))
#define HAUMEA_OBLATENESS (sqrt(HAUMEA_FLATNESS * (2.0 - HAUMEA_FLATNESS)))
#define HAUMEA_GRAVITY (HAUMEA_GM / (HAUMEA_RADIUS * HAUMEA_RADIUS))
#define HAUMEA_MASS (HAUMEA_GM / GRAVITATION)
#define HAUMEA_VOLUME (2.0 * TAU / 3.0 * HAUMEA_RADIUS * HAUMEA_RADIUS *\
         HAUMEA_RADIUS)
#define HAUMEA_SURFACE (2.0 * TAU * HAUMEA_RADIUS * HAUMEA_RADIUS)
#define HAUMEA_DENSITY (HAUMEA_MASS / HAUMEA_VOLUME)
#define HAUMEA_SYNODIC (EARTH_SIDEREALYEAR * HAUMEA_YEAR / (HAUMEA_YEAR -\
         EARTH_SIDEREALYEAR))
#define SUN_GMIERS (1.32712442099E+20 * UNITGM)
#define SUN_GMNASA (SUN_GM)
#define EARTH_THETA_0 (0.7790572732640 * TURN)
#define MOON_ORBIT (3.843999E+8 * METER)
#define MOON_ECCENTRICITY (0.0549)
#define MOON_INCLINATION (5.415 * ARCDEG)
#define SUN_ORBIT (0.0 * AU)
#define SUN_ECCENTRICITY (0.0)
#define SUN_INCLINATION (0.0 * ARCDEG)
#define SUN_LONGITUDE (0.0 * ARCDEG)
#define SUN_PERIAPSIS (0.0 * ARCDEG)
#define SUN_ASCENDING (0.0 * ARCDEG)
#define SUN_ORBIT_DT (0.0 * AU / JCENTURY)
#define SUN_ECCENTRICITY_DT (0.0 / JCENTURY)
#define SUN_INCLINATION_DT (0.0 * ARCDEG / JCENTURY)
#define SUN_LONGITUDE_DT (0.0 * ARCDEG / JCENTURY)
#define SUN_PERIAPSIS_DT (0.0 * ARCDEG / JCENTURY)
#define SUN_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define EARTH_ORBIT (1.00000261 * AU)
#define EARTH_ECCENTRICITY (0.01671123)
#define EARTH_INCLINATION (359.99998469 * ARCDEG)
#define EARTH_LONGITUDE (100.46457166 * ARCDEG)
#define EARTH_PERIAPSIS (102.93768193 * ARCDEG)
#define EARTH_ASCENDING (0.0 * ARCDEG)
#define EARTH_ORBIT_DT (0.00000562 * AU / JCENTURY)
#define EARTH_ECCENTRICITY_DT (- 0.00004392 / JCENTURY)
#define EARTH_INCLINATION_DT (- 0.01294668 * ARCDEG / JCENTURY)
#define EARTH_LONGITUDE_DT (35999.37244981 * ARCDEG / JCENTURY)
#define EARTH_PERIAPSIS_DT (0.32327364 * ARCDEG / JCENTURY)
#define EARTH_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define MERCURY_ORBIT (0.38709927 * AU)
#define MERCURY_ECCENTRICITY (0.20563593)
#define MERCURY_INCLINATION (7.00497902 * ARCDEG)
#define MERCURY_LONGITUDE (252.25032350 * ARCDEG)
#define MERCURY_PERIAPSIS (77.45779628 * ARCDEG)
#define MERCURY_ASCENDING (48.33076593 * ARCDEG)
#define MERCURY_ORBIT_DT (0.00000037 * AU / JCENTURY)
#define MERCURY_ECCENTRICITY_DT (0.00001906 / JCENTURY)
#define MERCURY_INCLINATION_DT (- 0.00594749 * ARCDEG / JCENTURY)
#define MERCURY_LONGITUDE_DT (149472.67411175 * ARCDEG / JCENTURY)
#define MERCURY_PERIAPSIS_DT (0.16047689 * ARCDEG / JCENTURY)
#define MERCURY_ASCENDING_DT (- 0.12534081 * ARCDEG / JCENTURY)
#define VENUS_ORBIT (0.72333566 * AU)
#define VENUS_ECCENTRICITY (0.00677672)
#define VENUS_INCLINATION (3.39467605 * ARCDEG)
#define VENUS_LONGITUDE (181.97909950 * ARCDEG)
#define VENUS_PERIAPSIS (131.60246718 * ARCDEG)
#define VENUS_ASCENDING (76.67984255 * ARCDEG)
#define VENUS_ORBIT_DT (0.00000390 * AU / JCENTURY)
#define VENUS_ECCENTRICITY_DT (- 0.00004107 / JCENTURY)
#define VENUS_INCLINATION_DT (- 0.00078890 * ARCDEG / JCENTURY)
#define VENUS_LONGITUDE_DT (58517.81538729 * ARCDEG / JCENTURY)
#define VENUS_PERIAPSIS_DT (0.00268329 * ARCDEG / JCENTURY)
#define VENUS_ASCENDING_DT (- 0.27769418 * ARCDEG / JCENTURY)
#define MARS_ORBIT (1.52371034 * AU)
#define MARS_ECCENTRICITY (0.09339410)
#define MARS_INCLINATION (1.84969142 * ARCDEG)
#define MARS_LONGITUDE (355.44656795 * ARCDEG)
#define MARS_PERIAPSIS (336.05637041 * ARCDEG)
#define MARS_ASCENDING (49.55953891 * ARCDEG)
#define MARS_ORBIT_DT (0.00001847 * AU / JCENTURY)
#define MARS_ECCENTRICITY_DT (0.00007882 / JCENTURY)
#define MARS_INCLINATION_DT (- 0.00813131 * ARCDEG / JCENTURY)
#define MARS_LONGITUDE_DT (19140.30268499 * ARCDEG / JCENTURY)
#define MARS_PERIAPSIS_DT (0.44441088 * ARCDEG / JCENTURY)
#define MARS_ASCENDING_DT (- 0.29257343 * ARCDEG / JCENTURY)
#define JUPITER_ORBIT (5.20288700 * AU)
#define JUPITER_ECCENTRICITY (0.04838624)
#define JUPITER_INCLINATION (1.30439695 * ARCDEG)
#define JUPITER_LONGITUDE (34.39644051 * ARCDEG)
#define JUPITER_PERIAPSIS (14.72847983 * ARCDEG)
#define JUPITER_ASCENDING (100.47390909 * ARCDEG)
#define JUPITER_ORBIT_DT (- 0.00011607 * AU / JCENTURY)
#define JUPITER_ECCENTRICITY_DT (- 0.00013253 / JCENTURY)
#define JUPITER_INCLINATION_DT (- 0.00183714 * ARCDEG / JCENTURY)
#define JUPITER_LONGITUDE_DT (3034.74612775 * ARCDEG / JCENTURY)
#define JUPITER_PERIAPSIS_DT (0.21252668 * ARCDEG / JCENTURY)
#define JUPITER_ASCENDING_DT (0.20469106 * ARCDEG / JCENTURY)
#define SATURN_ORBIT (9.53667594 * AU)
#define SATURN_ECCENTRICITY (0.05386179)
#define SATURN_INCLINATION (2.48599187 * ARCDEG)
#define SATURN_LONGITUDE (49.95424423 * ARCDEG)
#define SATURN_PERIAPSIS (92.59887831 * ARCDEG)
#define SATURN_ASCENDING (113.66242448 * ARCDEG)
#define SATURN_ORBIT_DT (- 0.00125060 * AU / JCENTURY)
#define SATURN_ECCENTRICITY_DT (- 0.00050991 / JCENTURY)
#define SATURN_INCLINATION_DT (0.00193609 * ARCDEG / JCENTURY)
#define SATURN_LONGITUDE_DT (1222.49362201 * ARCDEG / JCENTURY)
#define SATURN_PERIAPSIS_DT (- 0.41897216 * ARCDEG / JCENTURY)
#define SATURN_ASCENDING_DT (- 0.28867794 * ARCDEG / JCENTURY)
#define URANUS_ORBIT (19.18916464 * AU)
#define URANUS_ECCENTRICITY (0.04725744)
#define URANUS_INCLINATION (0.77263783 * ARCDEG)
#define URANUS_LONGITUDE (313.23810451 * ARCDEG)
#define URANUS_PERIAPSIS (170.95427630 * ARCDEG)
#define URANUS_ASCENDING (74.01692503 * ARCDEG)
#define URANUS_ORBIT_DT (- 0.00196176 * AU / JCENTURY)
#define URANUS_ECCENTRICITY_DT (- 0.00004397 / JCENTURY)
#define URANUS_INCLINATION_DT (- 0.00242939 * ARCDEG / JCENTURY)
#define URANUS_LONGITUDE_DT (428.48202785 * ARCDEG / JCENTURY)
#define URANUS_PERIAPSIS_DT (0.40805281 * ARCDEG / JCENTURY)
#define URANUS_ASCENDING_DT (0.04240589 * ARCDEG / JCENTURY)
#define NEPTUNE_ORBIT (30.06992276 * AU)
#define NEPTUNE_ECCENTRICITY (0.00859048)
#define NEPTUNE_INCLINATION (1.77004347 * ARCDEG)
#define NEPTUNE_LONGITUDE (304.87997031 * ARCDEG)
#define NEPTUNE_PERIAPSIS (44.96476227 * ARCDEG)
#define NEPTUNE_ASCENDING (131.78422574 * ARCDEG)
#define NEPTUNE_ORBIT_DT (0.00026291 * AU / JCENTURY)
#define NEPTUNE_ECCENTRICITY_DT (0.00005105 / JCENTURY)
#define NEPTUNE_INCLINATION_DT (0.00035372 * ARCDEG / JCENTURY)
#define NEPTUNE_LONGITUDE_DT (218.45945325 * ARCDEG / JCENTURY)
#define NEPTUNE_PERIAPSIS_DT (- 0.32241464 * ARCDEG / JCENTURY)
#define NEPTUNE_ASCENDING_DT (- 0.00508664 * ARCDEG / JCENTURY)
#define PLUTO_ORBIT (39.48211675 * AU)
#define PLUTO_ECCENTRICITY (0.24882730)
#define PLUTO_INCLINATION (17.14001206 * ARCDEG)
#define PLUTO_LONGITUDE (238.92903833 * ARCDEG)
#define PLUTO_PERIAPSIS (224.06891629 * ARCDEG)
#define PLUTO_ASCENDING (110.30393684 * ARCDEG)
#define PLUTO_ORBIT_DT (- 0.00031596 * AU / JCENTURY)
#define PLUTO_ECCENTRICITY_DT (0.00005170 / JCENTURY)
#define PLUTO_INCLINATION_DT (0.00004818 * ARCDEG / JCENTURY)
#define PLUTO_LONGITUDE_DT (145.20780515 * ARCDEG / JCENTURY)
#define PLUTO_PERIAPSIS_DT (- 0.04062942 * ARCDEG / JCENTURY)
#define PLUTO_ASCENDING_DT (- 0.01183482 * ARCDEG / JCENTURY)
#define CERES_ORBIT (2.76740933 * AU)
#define CERES_ECCENTRICITY (0.07560729)
#define CERES_INCLINATION (10.59321706 * ARCDEG)
#define CERES_LONGITUDE (102.82668 * ARCDEG)
#define CERES_PERIAPSIS (73.023742647 * ARCDEG)
#define CERES_ASCENDING (80.308882612359 * ARCDEG)
#define CERES_ORBIT_DT (0.0 * AU / JCENTURY)
#define CERES_ECCENTRICITY_DT (0.0 / JCENTURY)
#define CERES_INCLINATION_DT (0.0 * ARCDEG / JCENTURY)
#define CERES_LONGITUDE_DT (0.0 * ARCDEG / JCENTURY)
#define CERES_PERIAPSIS_DT (0.0 * ARCDEG / JCENTURY)
#define CERES_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define ERIS_ORBIT (67.781 * AU)
#define ERIS_ECCENTRICITY (0.44068)
#define ERIS_INCLINATION (44.0445 * ARCDEG)
#define ERIS_LONGITUDE (32.4926663 * ARCDEG)
#define ERIS_PERIAPSIS (151.60371236817 * ARCDEG)
#define ERIS_ASCENDING (35.87992471211 * ARCDEG)
#define ERIS_ORBIT_DT (0.0 * AU / JCENTURY)
#define ERIS_ECCENTRICITY_DT (0.0 / JCENTURY)
#define ERIS_INCLINATION_DT (0.0 * ARCDEG / JCENTURY)
#define ERIS_LONGITUDE_DT (0.0 * ARCDEG / JCENTURY)
#define ERIS_PERIAPSIS_DT (0.0 * ARCDEG / JCENTURY)
#define ERIS_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define MAKEMAKE_ORBIT (45.715 * AU)
#define MAKEMAKE_ECCENTRICITY (0.15586)
#define MAKEMAKE_INCLINATION (29.00685 * ARCDEG)
#define MAKEMAKE_LONGITUDE (177.2966805 * ARCDEG)
#define MAKEMAKE_PERIAPSIS (295.642772002 * ARCDEG)
#define MAKEMAKE_ASCENDING (79.616805978978 * ARCDEG)
#define MAKEMAKE_ORBIT_DT (0.0 * AU / JCENTURY)
#define MAKEMAKE_ECCENTRICITY_DT (0.0 / JCENTURY)
#define MAKEMAKE_INCLINATION_DT (0.0 * ARCDEG / JCENTURY)
#define MAKEMAKE_LONGITUDE_DT (0.0 * ARCDEG / JCENTURY)
#define MAKEMAKE_PERIAPSIS_DT (0.0 * ARCDEG / JCENTURY)
#define MAKEMAKE_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define HAUMEA_ORBIT (43.218 * AU)
#define HAUMEA_ECCENTRICITY (0.19126)
#define HAUMEA_INCLINATION (28.19 * ARCDEG)
#define HAUMEA_LONGITUDE (215.687315 * ARCDEG)
#define HAUMEA_PERIAPSIS (238.69440821915 * ARCDEG)
#define HAUMEA_ASCENDING (122.01840302632 * ARCDEG)
#define HAUMEA_ORBIT_DT (0.0 * AU / JCENTURY)
#define HAUMEA_ECCENTRICITY_DT (0.0 / JCENTURY)
#define HAUMEA_INCLINATION_DT (0.0 * ARCDEG / JCENTURY)
#define HAUMEA_LONGITUDE_DT (0.0 * ARCDEG / JCENTURY)
#define HAUMEA_PERIAPSIS_DT (0.0 * ARCDEG / JCENTURY)
#define HAUMEA_ASCENDING_DT (0.0 * ARCDEG / JCENTURY)
#define EARTH_GRAVITYA (9.7803253359 * MPSS)
#define EARTH_GRAVITYB (9.8321849378 * MPSS)
//  CCCCCCCCCCX_FUNC_PROTO ######################################### LANG_C #
double cxSUN_GM(void);
double cxSUN_YEAR(void);
double cxSUN_DAY(void);
double cxMERCURY_GM(void);
double cxMERCURY_YEAR(void);
double cxMERCURY_DAY(void);
double cxVENUS_GM(void);
double cxVENUS_YEAR(void);
double cxVENUS_DAY(void);
double cxMARS_GM(void);
double cxMARS_YEAR(void);
double cxMARS_DAY(void);
double cxEARTH_GM(void);
double cxEARTH_YEAR(void);
double cxEARTH_DAY(void);
double cxJUPITER_GM(void);
double cxJUPITER_YEAR(void);
double cxJUPITER_DAY(void);
double cxSATURN_GM(void);
double cxSATURN_YEAR(void);
double cxSATURN_DAY(void);
double cxURANUS_GM(void);
double cxURANUS_YEAR(void);
double cxURANUS_DAY(void);
double cxNEPTUNE_GM(void);
double cxNEPTUNE_YEAR(void);
double cxNEPTUNE_DAY(void);
double cxPLUTO_GM(void);
double cxPLUTO_YEAR(void);
double cxPLUTO_DAY(void);
double cxMOON_GM(void);
double cxMOON_YEAR(void);
double cxMOON_DAY(void);
double cxCERES_GM(void);
double cxCERES_YEAR(void);
double cxCERES_DAY(void);
double cxERIS_GM(void);
double cxERIS_YEAR(void);
double cxERIS_DAY(void);
double cxMAKEMAKE_GM(void);
double cxMAKEMAKE_YEAR(void);
double cxMAKEMAKE_DAY(void);
double cxHAUMEA_GM(void);
double cxHAUMEA_YEAR(void);
double cxHAUMEA_DAY(void);
double cxEARTH_SOLARDAY(void);
double cxEARTH_SIDEREALDAY(void);
double cxEARTH_STELLARDAY(void);
double cxEARTH_TROPICALYEAR(void);
double cxEARTH_SIDEREALYEAR(void);
double cxEARTH_ANOMALISTICYEAR(void);
double cxSIDEREALYEAR(void);
double cxANOMALISTICYEAR(void);
double cxTROPICALYEAR(void);
double cxSUN_FLATNESS(void);
double cxSUN_A(void);
double cxSUN_C(void);
double cxMERCURY_FLATNESS(void);
double cxMERCURY_A(void);
double cxMERCURY_C(void);
double cxVENUS_FLATNESS(void);
double cxVENUS_A(void);
double cxVENUS_C(void);
double cxEARTH_FLATNESS(void);
double cxEARTH_A(void);
double cxEARTH_C(void);
double cxMARS_FLATNESS(void);
double cxMARS_A(void);
double cxMARS_C(void);
double cxJUPITER_FLATNESS(void);
double cxJUPITER_A(void);
double cxJUPITER_C(void);
double cxSATURN_FLATNESS(void);
double cxSATURN_A(void);
double cxSATURN_C(void);
double cxURANUS_FLATNESS(void);
double cxURANUS_A(void);
double cxURANUS_C(void);
double cxNEPTUNE_FLATNESS(void);
double cxNEPTUNE_A(void);
double cxNEPTUNE_C(void);
double cxPLUTO_FLATNESS(void);
double cxPLUTO_A(void);
double cxPLUTO_C(void);
double cxMOON_FLATNESS(void);
double cxMOON_A(void);
double cxMOON_C(void);
double cxCERES_FLATNESS(void);
double cxCERES_A(void);
double cxCERES_C(void);
double cxERIS_FLATNESS(void);
double cxERIS_A(void);
double cxERIS_C(void);
double cxMAKEMAKE_FLATNESS(void);
double cxMAKEMAKE_A(void);
double cxMAKEMAKE_C(void);
double cxHAUMEA_FLATNESS(void);
double cxHAUMEA_A(void);
double cxHAUMEA_C(void);
double cxSUN_B(void);
double cxSUN_RADIUS(void);
double cxSUN_ESCAPE(void);
double cxSUN_OBLATENESS(void);
double cxSUN_GRAVITY(void);
double cxSUN_MASS(void);
double cxSUN_VOLUME(void);
double cxSUN_SURFACE(void);
double cxSUN_DENSITY(void);
double cxEARTH_B(void);
double cxEARTH_RADIUS(void);
double cxEARTH_ESCAPE(void);
double cxEARTH_OBLATENESS(void);
double cxEARTH_GRAVITY(void);
double cxEARTH_MASS(void);
double cxEARTH_VOLUME(void);
double cxEARTH_SURFACE(void);
double cxEARTH_DENSITY(void);
double cxMERCURY_B(void);
double cxMERCURY_RADIUS(void);
double cxMERCURY_ESCAPE(void);
double cxMERCURY_OBLATENESS(void);
double cxMERCURY_GRAVITY(void);
double cxMERCURY_MASS(void);
double cxMERCURY_VOLUME(void);
double cxMERCURY_SURFACE(void);
double cxMERCURY_DENSITY(void);
double cxMERCURY_SYNODIC(void);
double cxVENUS_B(void);
double cxVENUS_RADIUS(void);
double cxVENUS_ESCAPE(void);
double cxVENUS_OBLATENESS(void);
double cxVENUS_GRAVITY(void);
double cxVENUS_MASS(void);
double cxVENUS_VOLUME(void);
double cxVENUS_SURFACE(void);
double cxVENUS_DENSITY(void);
double cxVENUS_SYNODIC(void);
double cxMARS_B(void);
double cxMARS_RADIUS(void);
double cxMARS_ESCAPE(void);
double cxMARS_OBLATENESS(void);
double cxMARS_GRAVITY(void);
double cxMARS_MASS(void);
double cxMARS_VOLUME(void);
double cxMARS_SURFACE(void);
double cxMARS_DENSITY(void);
double cxMARS_SYNODIC(void);
double cxJUPITER_B(void);
double cxJUPITER_RADIUS(void);
double cxJUPITER_ESCAPE(void);
double cxJUPITER_OBLATENESS(void);
double cxJUPITER_GRAVITY(void);
double cxJUPITER_MASS(void);
double cxJUPITER_VOLUME(void);
double cxJUPITER_SURFACE(void);
double cxJUPITER_DENSITY(void);
double cxJUPITER_SYNODIC(void);
double cxSATURN_B(void);
double cxSATURN_RADIUS(void);
double cxSATURN_ESCAPE(void);
double cxSATURN_OBLATENESS(void);
double cxSATURN_GRAVITY(void);
double cxSATURN_MASS(void);
double cxSATURN_VOLUME(void);
double cxSATURN_SURFACE(void);
double cxSATURN_DENSITY(void);
double cxSATURN_SYNODIC(void);
double cxURANUS_B(void);
double cxURANUS_RADIUS(void);
double cxURANUS_ESCAPE(void);
double cxURANUS_OBLATENESS(void);
double cxURANUS_GRAVITY(void);
double cxURANUS_MASS(void);
double cxURANUS_VOLUME(void);
double cxURANUS_SURFACE(void);
double cxURANUS_DENSITY(void);
double cxURANUS_SYNODIC(void);
double cxNEPTUNE_B(void);
double cxNEPTUNE_RADIUS(void);
double cxNEPTUNE_ESCAPE(void);
double cxNEPTUNE_OBLATENESS(void);
double cxNEPTUNE_GRAVITY(void);
double cxNEPTUNE_MASS(void);
double cxNEPTUNE_VOLUME(void);
double cxNEPTUNE_SURFACE(void);
double cxNEPTUNE_DENSITY(void);
double cxNEPTUNE_SYNODIC(void);
double cxPLUTO_B(void);
double cxPLUTO_RADIUS(void);
double cxPLUTO_ESCAPE(void);
double cxPLUTO_OBLATENESS(void);
double cxPLUTO_GRAVITY(void);
double cxPLUTO_MASS(void);
double cxPLUTO_VOLUME(void);
double cxPLUTO_SURFACE(void);
double cxPLUTO_DENSITY(void);
double cxPLUTO_SYNODIC(void);
double cxMOON_B(void);
double cxMOON_RADIUS(void);
double cxMOON_ESCAPE(void);
double cxMOON_OBLATENESS(void);
double cxMOON_GRAVITY(void);
double cxMOON_MASS(void);
double cxMOON_VOLUME(void);
double cxMOON_SURFACE(void);
double cxMOON_DENSITY(void);
double cxMOON_SYNODIC(void);
double cxCERES_B(void);
double cxCERES_RADIUS(void);
double cxCERES_ESCAPE(void);
double cxCERES_OBLATENESS(void);
double cxCERES_GRAVITY(void);
double cxCERES_MASS(void);
double cxCERES_VOLUME(void);
double cxCERES_SURFACE(void);
double cxCERES_DENSITY(void);
double cxCERES_SYNODIC(void);
double cxERIS_B(void);
double cxERIS_RADIUS(void);
double cxERIS_ESCAPE(void);
double cxERIS_OBLATENESS(void);
double cxERIS_GRAVITY(void);
double cxERIS_MASS(void);
double cxERIS_VOLUME(void);
double cxERIS_SURFACE(void);
double cxERIS_DENSITY(void);
double cxERIS_SYNODIC(void);
double cxMAKEMAKE_B(void);
double cxMAKEMAKE_RADIUS(void);
double cxMAKEMAKE_ESCAPE(void);
double cxMAKEMAKE_OBLATENESS(void);
double cxMAKEMAKE_GRAVITY(void);
double cxMAKEMAKE_MASS(void);
double cxMAKEMAKE_VOLUME(void);
double cxMAKEMAKE_SURFACE(void);
double cxMAKEMAKE_DENSITY(void);
double cxMAKEMAKE_SYNODIC(void);
double cxHAUMEA_B(void);
double cxHAUMEA_RADIUS(void);
double cxHAUMEA_ESCAPE(void);
double cxHAUMEA_OBLATENESS(void);
double cxHAUMEA_GRAVITY(void);
double cxHAUMEA_MASS(void);
double cxHAUMEA_VOLUME(void);
double cxHAUMEA_SURFACE(void);
double cxHAUMEA_DENSITY(void);
double cxHAUMEA_SYNODIC(void);
double cxSUN_GMIERS(void);
double cxSUN_GMNASA(void);
double cxEARTH_THETA_0(void);
double cxMOON_ORBIT(void);
double cxMOON_ECCENTRICITY(void);
double cxMOON_INCLINATION(void);
double cxSUN_ORBIT(void);
double cxSUN_ECCENTRICITY(void);
double cxSUN_INCLINATION(void);
double cxSUN_LONGITUDE(void);
double cxSUN_PERIAPSIS(void);
double cxSUN_ASCENDING(void);
double cxSUN_ORBIT_DT(void);
double cxSUN_ECCENTRICITY_DT(void);
double cxSUN_INCLINATION_DT(void);
double cxSUN_LONGITUDE_DT(void);
double cxSUN_PERIAPSIS_DT(void);
double cxSUN_ASCENDING_DT(void);
double cxEARTH_ORBIT(void);
double cxEARTH_ECCENTRICITY(void);
double cxEARTH_INCLINATION(void);
double cxEARTH_LONGITUDE(void);
double cxEARTH_PERIAPSIS(void);
double cxEARTH_ASCENDING(void);
double cxEARTH_ORBIT_DT(void);
double cxEARTH_ECCENTRICITY_DT(void);
double cxEARTH_INCLINATION_DT(void);
double cxEARTH_LONGITUDE_DT(void);
double cxEARTH_PERIAPSIS_DT(void);
double cxEARTH_ASCENDING_DT(void);
double cxMERCURY_ORBIT(void);
double cxMERCURY_ECCENTRICITY(void);
double cxMERCURY_INCLINATION(void);
double cxMERCURY_LONGITUDE(void);
double cxMERCURY_PERIAPSIS(void);
double cxMERCURY_ASCENDING(void);
double cxMERCURY_ORBIT_DT(void);
double cxMERCURY_ECCENTRICITY_DT(void);
double cxMERCURY_INCLINATION_DT(void);
double cxMERCURY_LONGITUDE_DT(void);
double cxMERCURY_PERIAPSIS_DT(void);
double cxMERCURY_ASCENDING_DT(void);
double cxVENUS_ORBIT(void);
double cxVENUS_ECCENTRICITY(void);
double cxVENUS_INCLINATION(void);
double cxVENUS_LONGITUDE(void);
double cxVENUS_PERIAPSIS(void);
double cxVENUS_ASCENDING(void);
double cxVENUS_ORBIT_DT(void);
double cxVENUS_ECCENTRICITY_DT(void);
double cxVENUS_INCLINATION_DT(void);
double cxVENUS_LONGITUDE_DT(void);
double cxVENUS_PERIAPSIS_DT(void);
double cxVENUS_ASCENDING_DT(void);
double cxMARS_ORBIT(void);
double cxMARS_ECCENTRICITY(void);
double cxMARS_INCLINATION(void);
double cxMARS_LONGITUDE(void);
double cxMARS_PERIAPSIS(void);
double cxMARS_ASCENDING(void);
double cxMARS_ORBIT_DT(void);
double cxMARS_ECCENTRICITY_DT(void);
double cxMARS_INCLINATION_DT(void);
double cxMARS_LONGITUDE_DT(void);
double cxMARS_PERIAPSIS_DT(void);
double cxMARS_ASCENDING_DT(void);
double cxJUPITER_ORBIT(void);
double cxJUPITER_ECCENTRICITY(void);
double cxJUPITER_INCLINATION(void);
double cxJUPITER_LONGITUDE(void);
double cxJUPITER_PERIAPSIS(void);
double cxJUPITER_ASCENDING(void);
double cxJUPITER_ORBIT_DT(void);
double cxJUPITER_ECCENTRICITY_DT(void);
double cxJUPITER_INCLINATION_DT(void);
double cxJUPITER_LONGITUDE_DT(void);
double cxJUPITER_PERIAPSIS_DT(void);
double cxJUPITER_ASCENDING_DT(void);
double cxSATURN_ORBIT(void);
double cxSATURN_ECCENTRICITY(void);
double cxSATURN_INCLINATION(void);
double cxSATURN_LONGITUDE(void);
double cxSATURN_PERIAPSIS(void);
double cxSATURN_ASCENDING(void);
double cxSATURN_ORBIT_DT(void);
double cxSATURN_ECCENTRICITY_DT(void);
double cxSATURN_INCLINATION_DT(void);
double cxSATURN_LONGITUDE_DT(void);
double cxSATURN_PERIAPSIS_DT(void);
double cxSATURN_ASCENDING_DT(void);
double cxURANUS_ORBIT(void);
double cxURANUS_ECCENTRICITY(void);
double cxURANUS_INCLINATION(void);
double cxURANUS_LONGITUDE(void);
double cxURANUS_PERIAPSIS(void);
double cxURANUS_ASCENDING(void);
double cxURANUS_ORBIT_DT(void);
double cxURANUS_ECCENTRICITY_DT(void);
double cxURANUS_INCLINATION_DT(void);
double cxURANUS_LONGITUDE_DT(void);
double cxURANUS_PERIAPSIS_DT(void);
double cxURANUS_ASCENDING_DT(void);
double cxNEPTUNE_ORBIT(void);
double cxNEPTUNE_ECCENTRICITY(void);
double cxNEPTUNE_INCLINATION(void);
double cxNEPTUNE_LONGITUDE(void);
double cxNEPTUNE_PERIAPSIS(void);
double cxNEPTUNE_ASCENDING(void);
double cxNEPTUNE_ORBIT_DT(void);
double cxNEPTUNE_ECCENTRICITY_DT(void);
double cxNEPTUNE_INCLINATION_DT(void);
double cxNEPTUNE_LONGITUDE_DT(void);
double cxNEPTUNE_PERIAPSIS_DT(void);
double cxNEPTUNE_ASCENDING_DT(void);
double cxPLUTO_ORBIT(void);
double cxPLUTO_ECCENTRICITY(void);
double cxPLUTO_INCLINATION(void);
double cxPLUTO_LONGITUDE(void);
double cxPLUTO_PERIAPSIS(void);
double cxPLUTO_ASCENDING(void);
double cxPLUTO_ORBIT_DT(void);
double cxPLUTO_ECCENTRICITY_DT(void);
double cxPLUTO_INCLINATION_DT(void);
double cxPLUTO_LONGITUDE_DT(void);
double cxPLUTO_PERIAPSIS_DT(void);
double cxPLUTO_ASCENDING_DT(void);
double cxCERES_ORBIT(void);
double cxCERES_ECCENTRICITY(void);
double cxCERES_INCLINATION(void);
double cxCERES_LONGITUDE(void);
double cxCERES_PERIAPSIS(void);
double cxCERES_ASCENDING(void);
double cxCERES_ORBIT_DT(void);
double cxCERES_ECCENTRICITY_DT(void);
double cxCERES_INCLINATION_DT(void);
double cxCERES_LONGITUDE_DT(void);
double cxCERES_PERIAPSIS_DT(void);
double cxCERES_ASCENDING_DT(void);
double cxERIS_ORBIT(void);
double cxERIS_ECCENTRICITY(void);
double cxERIS_INCLINATION(void);
double cxERIS_LONGITUDE(void);
double cxERIS_PERIAPSIS(void);
double cxERIS_ASCENDING(void);
double cxERIS_ORBIT_DT(void);
double cxERIS_ECCENTRICITY_DT(void);
double cxERIS_INCLINATION_DT(void);
double cxERIS_LONGITUDE_DT(void);
double cxERIS_PERIAPSIS_DT(void);
double cxERIS_ASCENDING_DT(void);
double cxMAKEMAKE_ORBIT(void);
double cxMAKEMAKE_ECCENTRICITY(void);
double cxMAKEMAKE_INCLINATION(void);
double cxMAKEMAKE_LONGITUDE(void);
double cxMAKEMAKE_PERIAPSIS(void);
double cxMAKEMAKE_ASCENDING(void);
double cxMAKEMAKE_ORBIT_DT(void);
double cxMAKEMAKE_ECCENTRICITY_DT(void);
double cxMAKEMAKE_INCLINATION_DT(void);
double cxMAKEMAKE_LONGITUDE_DT(void);
double cxMAKEMAKE_PERIAPSIS_DT(void);
double cxMAKEMAKE_ASCENDING_DT(void);
double cxHAUMEA_ORBIT(void);
double cxHAUMEA_ECCENTRICITY(void);
double cxHAUMEA_INCLINATION(void);
double cxHAUMEA_LONGITUDE(void);
double cxHAUMEA_PERIAPSIS(void);
double cxHAUMEA_ASCENDING(void);
double cxHAUMEA_ORBIT_DT(void);
double cxHAUMEA_ECCENTRICITY_DT(void);
double cxHAUMEA_INCLINATION_DT(void);
double cxHAUMEA_LONGITUDE_DT(void);
double cxHAUMEA_PERIAPSIS_DT(void);
double cxHAUMEA_ASCENDING_DT(void);
double cxEARTH_GRAVITYA(void);
double cxEARTH_GRAVITYB(void);
//  FFFFFFFFFFUNC_PROTOTYPE ######################################## LANG_C #
double timee(void);
double orbitgm_v(double gm_gm
      , double orbit_m);
double orbit_v(double mass_kg
      , double orbit_m);
double margot(double pmass
      , double porbit);
double sternlevison(double pmass
      , double porbit);
long pl(long plnt);
double plsettime(double jtwokdate);
double pl_gm(long plnt);
double plgm(void);
double pl_year(long plnt);
double plyear(void);
double pl_day(long plnt);
double plday(void);
double pl_flatness(long plnt);
double plflatness(void);
double pl_a(long plnt);
double pla(void);
double pl_c(long plnt);
double plc(void);
double pl_orbit(long plnt);
double plorbit(void);
double pl_eccentricity(long plnt);
double pleccentricity(void);
double pl_inclination(long plnt);
double plinclination(void);
double pl_longitude(long plnt);
double pllongitude(void);
double pl_periapsis(long plnt);
double plperiapsis(void);
double pl_ascending(long plnt);
double plascending(void);
double pl_mass(long plnt);
double plmass(void);
double pl_b(long plnt);
double plb(void);
double pl_radius(long plnt);
double plradius(void);
double pl_gravity(long plnt);
double plgravity(void);
double pl_meananomaly(long plnt);
double plmeananomaly(void);
double pl_escape(long plnt);
double plescape(void);
double pl_synodic(long plnt);
double plsynodic(void);
double pl_volume(long plnt);
double plvolume(void);
double pl_surface(long plnt);
double plsurface(void);
double pl_density(long plnt);
double pldensity(void);
double pl_argument(long plnt);
double plargument(void);
double pl_margot(long plnt);
double plmargot(void);
double pl_sternlevison(long plnt);
double plsternlevison(void);
double pl_perihelion(long plnt);
double plperihelion(void);
double pl_aphelion(long plnt);
double plaphelion(void);
double eccentric_anomaly(double mean_ano_rad
      , double eccen);
double pl_eccentricanomaly(long plnt);
double pleccentricanomaly(void);
double pl_heliocentric(long plnt
      , double jtwok);
double plhelio(long indd);
double plgeo(long indd);
long pl_name(long plnt);
double plname(void);
double earthradius(double lat_deg);
double earthtropicalyear(double jtwokdate);
double earthdistance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg);
double plaradius(double lat_deg);
double pl_aradius(long plnt
      , double lat_deg);
double earthobliquity(double jtwok);
double earthprecession(double jtwok);
double earthgravity(double lat_deg);
double earthgravity_height(double lat_deg
      , double height_m);
double isa_temp(double height_m);
double isa_pres(double height_m);
double isa_dens(double height_m);
double vin_distance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg
      , double *ret_bearings_arr_p);
double vin_destination(double lata_deg
      , double lona_deg
      , double heading_deg
      , double dist_m
      , double *ret_dest_arr_p);
double prem_density(double height_m);
double prem_mass(double height_m);
double prem_g(double height_m);
//  DDDDDDDDDDescription ############################ kwplanets_description #
#define Kwplanets_DESCRIPTION \
   "   Kwplanets Constants: ANOMALISTICYEAR CERES_A CERES_ASCENDING CERES_A"\
   "SCENDING_DT CERES_B CERES_C CERES_DAY CERES_DENSITY CERES_ECCENTRICITY "\
   "CERES_ECCENTRICITY_DT CERES_ESCAPE CERES_FLATNESS CERES_GM CERES_GRAVIT"\
   "Y CERES_INCLINATION CERES_INCLINATION_DT CERES_LONGITUDE CERES_LONGITUD"\
   "E_DT CERES_MASS CERES_OBLATENESS CERES_ORBIT CERES_ORBIT_DT CERES_PERIA"\
   "PSIS CERES_PERIAPSIS_DT CERES_RADIUS CERES_SURFACE CERES_SYNODIC CERES_"\
   "VOLUME CERES_YEAR EARTH_A EARTH_ANOMALISTICYEAR EARTH_ASCENDING EARTH_A"\
   "SCENDING_DT EARTH_B EARTH_C EARTH_DAY EARTH_DENSITY EARTH_ECCENTRICITY "\
   "EARTH_ECCENTRICITY_DT EARTH_ESCAPE EARTH_FLATNESS EARTH_GM EARTH_GRAVIT"\
   "Y EARTH_GRAVITYA EARTH_GRAVITYB EARTH_INCLINATION EARTH_INCLINATION_DT "\
   "EARTH_LONGITUDE EARTH_LONGITUDE_DT EARTH_MASS EARTH_OBLATENESS EARTH_OR"\
   "BIT EARTH_ORBIT_DT EARTH_PERIAPSIS EARTH_PERIAPSIS_DT EARTH_RADIUS EART"\
   "H_SIDEREALDAY EARTH_SIDEREALYEAR EARTH_SOLARDAY EARTH_STELLARDAY EARTH_"\
   "SURFACE EARTH_THETA_0 EARTH_TROPICALYEAR EARTH_VOLUME EARTH_YEAR ERIS_A"\
   " ERIS_ASCENDING ERIS_ASCENDING_DT ERIS_B ERIS_C ERIS_DAY ERIS_DENSITY E"\
   "RIS_ECCENTRICITY ERIS_ECCENTRICITY_DT ERIS_ESCAPE ERIS_FLATNESS ERIS_GM"\
   " ERIS_GRAVITY ERIS_INCLINATION ERIS_INCLINATION_DT ERIS_LONGITUDE ERIS_"\
   "LONGITUDE_DT ERIS_MASS ERIS_OBLATENESS ERIS_ORBIT ERIS_ORBIT_DT ERIS_PE"\
   "RIAPSIS ERIS_PERIAPSIS_DT ERIS_RADIUS ERIS_SURFACE ERIS_SYNODIC ERIS_VO"\
   "LUME ERIS_YEAR HAUMEA_A HAUMEA_ASCENDING HAUMEA_ASCENDING_DT HAUMEA_B H"\
   "AUMEA_C HAUMEA_DAY HAUMEA_DENSITY HAUMEA_ECCENTRICITY HAUMEA_ECCENTRICI"\
   "TY_DT HAUMEA_ESCAPE HAUMEA_FLATNESS HAUMEA_GM HAUMEA_GRAVITY HAUMEA_INC"\
   "LINATION HAUMEA_INCLINATION_DT HAUMEA_LONGITUDE HAUMEA_LONGITUDE_DT HAU"\
   "MEA_MASS HAUMEA_OBLATENESS HAUMEA_ORBIT HAUMEA_ORBIT_DT HAUMEA_PERIAPSI"\
   "S HAUMEA_PERIAPSIS_DT HAUMEA_RADIUS HAUMEA_SURFACE HAUMEA_SYNODIC HAUME"\
   "A_VOLUME HAUMEA_YEAR JUPITER_A JUPITER_ASCENDING JUPITER_ASCENDING_DT J"\
   "UPITER_B JUPITER_C JUPITER_DAY JUPITER_DENSITY JUPITER_ECCENTRICITY JUP"\
   "ITER_ECCENTRICITY_DT JUPITER_ESCAPE JUPITER_FLATNESS JUPITER_GM JUPITER"\
   "_GRAVITY JUPITER_INCLINATION JUPITER_INCLINATION_DT JUPITER_LONGITUDE J"\
   "UPITER_LONGITUDE_DT JUPITER_MASS JUPITER_OBLATENESS JUPITER_ORBIT JUPIT"\
   "ER_ORBIT_DT JUPITER_PERIAPSIS JUPITER_PERIAPSIS_DT JUPITER_RADIUS JUPIT"\
   "ER_SURFACE JUPITER_SYNODIC JUPITER_VOLUME JUPITER_YEAR LC_ISA_CNT LC_IS"\
   "A_DENS LC_ISA_HEIGHT LC_ISA_KEY_CNT LC_ISA_PRES LC_ISA_TEMP LC_P1_CERES"\
   " LC_P1_CNT LC_P1_EARTH LC_P1_ERIS LC_P1_ERR LC_P1_HAUMEA LC_P1_JUPITER "\
   "LC_P1_MAKEMAKE LC_P1_MARS LC_P1_MERCURY LC_P1_NEPTUNE LC_P1_PLUTO LC_P1"\
   "_PREV_PL LC_P1_SATURN LC_P1_SUN LC_P1_URANUS LC_P1_VENUS LC_P2_A LC_P2_"\
   "ASC LC_P2_ASC_DT LC_P2_C LC_P2_CNT LC_P2_DAY LC_P2_ECC LC_P2_ECC_DT LC_"\
   "P2_FLATNESS LC_P2_GM LC_P2_INC LC_P2_INC_DT LC_P2_LON LC_P2_LON_DT LC_P"\
   "2_ORB LC_P2_ORB_DT LC_P2_PER LC_P2_PER_DT LC_P2_YEAR LC_PREM_DENS LC_PR"\
   "EM_MASS LC_PREM_XCOEA LC_PREM_XCOEB LC_PREM_XCOEC LC_PREM_XHEIGHT LC_PR"\
   "EM_XMASSD MAKEMAKE_A MAKEMAKE_ASCENDING MAKEMAKE_ASCENDING_DT MAKEMAKE_"\
   "B MAKEMAKE_C MAKEMAKE_DAY MAKEMAKE_DENSITY MAKEMAKE_ECCENTRICITY MAKEMA"\
   "KE_ECCENTRICITY_DT MAKEMAKE_ESCAPE MAKEMAKE_FLATNESS MAKEMAKE_GM MAKEMA"\
   "KE_GRAVITY MAKEMAKE_INCLINATION MAKEMAKE_INCLINATION_DT MAKEMAKE_LONGIT"\
   "UDE MAKEMAKE_LONGITUDE_DT MAKEMAKE_MASS MAKEMAKE_OBLATENESS MAKEMAKE_OR"\
   "BIT MAKEMAKE_ORBIT_DT MAKEMAKE_PERIAPSIS MAKEMAKE_PERIAPSIS_DT MAKEMAKE"\
   "_RADIUS MAKEMAKE_SURFACE MAKEMAKE_SYNODIC MAKEMAKE_VOLUME MAKEMAKE_YEAR"\
   " MARS_A MARS_ASCENDING MARS_ASCENDING_DT MARS_B MARS_C MARS_DAY MARS_DE"\
   "NSITY MARS_ECCENTRICITY MARS_ECCENTRICITY_DT MARS_ESCAPE MARS_FLATNESS "\
   "MARS_GM MARS_GRAVITY MARS_INCLINATION MARS_INCLINATION_DT MARS_LONGITUD"\
   "E MARS_LONGITUDE_DT MARS_MASS MARS_OBLATENESS MARS_ORBIT MARS_ORBIT_DT "\
   "MARS_PERIAPSIS MARS_PERIAPSIS_DT MARS_RADIUS MARS_SURFACE MARS_SYNODIC "\
   "MARS_VOLUME MARS_YEAR MERCURY_A MERCURY_ASCENDING MERCURY_ASCENDING_DT "\
   "MERCURY_B MERCURY_C MERCURY_DAY MERCURY_DENSITY MERCURY_ECCENTRICITY ME"\
   "RCURY_ECCENTRICITY_DT MERCURY_ESCAPE MERCURY_FLATNESS MERCURY_GM MERCUR"\
   "Y_GRAVITY MERCURY_INCLINATION MERCURY_INCLINATION_DT MERCURY_LONGITUDE "\
   "MERCURY_LONGITUDE_DT MERCURY_MASS MERCURY_OBLATENESS MERCURY_ORBIT MERC"\
   "URY_ORBIT_DT MERCURY_PERIAPSIS MERCURY_PERIAPSIS_DT MERCURY_RADIUS MERC"\
   "URY_SURFACE MERCURY_SYNODIC MERCURY_VOLUME MERCURY_YEAR MOON_A MOON_B M"\
   "OON_C MOON_DAY MOON_DENSITY MOON_ECCENTRICITY MOON_ESCAPE MOON_FLATNESS"\
   " MOON_GM MOON_GRAVITY MOON_INCLINATION MOON_MASS MOON_OBLATENESS MOON_O"\
   "RBIT MOON_RADIUS MOON_SURFACE MOON_SYNODIC MOON_VOLUME MOON_YEAR NEPTUN"\
   "E_A NEPTUNE_ASCENDING NEPTUNE_ASCENDING_DT NEPTUNE_B NEPTUNE_C NEPTUNE_"\
   "DAY NEPTUNE_DENSITY NEPTUNE_ECCENTRICITY NEPTUNE_ECCENTRICITY_DT NEPTUN"\
   "E_ESCAPE NEPTUNE_FLATNESS NEPTUNE_GM NEPTUNE_GRAVITY NEPTUNE_INCLINATIO"\
   "N NEPTUNE_INCLINATION_DT NEPTUNE_LONGITUDE NEPTUNE_LONGITUDE_DT NEPTUNE"\
   "_MASS NEPTUNE_OBLATENESS NEPTUNE_ORBIT NEPTUNE_ORBIT_DT NEPTUNE_PERIAPS"\
   "IS NEPTUNE_PERIAPSIS_DT NEPTUNE_RADIUS NEPTUNE_SURFACE NEPTUNE_SYNODIC "\
   "NEPTUNE_VOLUME NEPTUNE_YEAR PLUTO_A PLUTO_ASCENDING PLUTO_ASCENDING_DT "\
   "PLUTO_B PLUTO_C PLUTO_DAY PLUTO_DENSITY PLUTO_ECCENTRICITY PLUTO_ECCENT"\
   "RICITY_DT PLUTO_ESCAPE PLUTO_FLATNESS PLUTO_GM PLUTO_GRAVITY PLUTO_INCL"\
   "INATION PLUTO_INCLINATION_DT PLUTO_LONGITUDE PLUTO_LONGITUDE_DT PLUTO_M"\
   "ASS PLUTO_OBLATENESS PLUTO_ORBIT PLUTO_ORBIT_DT PLUTO_PERIAPSIS PLUTO_P"\
   "ERIAPSIS_DT PLUTO_RADIUS PLUTO_SURFACE PLUTO_SYNODIC PLUTO_VOLUME PLUTO"\
   "_YEAR SATURN_A SATURN_ASCENDING SATURN_ASCENDING_DT SATURN_B SATURN_C S"\
   "ATURN_DAY SATURN_DENSITY SATURN_ECCENTRICITY SATURN_ECCENTRICITY_DT SAT"\
   "URN_ESCAPE SATURN_FLATNESS SATURN_GM SATURN_GRAVITY SATURN_INCLINATION "\
   "SATURN_INCLINATION_DT SATURN_LONGITUDE SATURN_LONGITUDE_DT SATURN_MASS "\
   "SATURN_OBLATENESS SATURN_ORBIT SATURN_ORBIT_DT SATURN_PERIAPSIS SATURN_"\
   "PERIAPSIS_DT SATURN_RADIUS SATURN_SURFACE SATURN_SYNODIC SATURN_VOLUME "\
   "SATURN_YEAR SIDEREALYEAR SUN_A SUN_ASCENDING SUN_ASCENDING_DT SUN_B SUN"\
   "_C SUN_DAY SUN_DENSITY SUN_ECCENTRICITY SUN_ECCENTRICITY_DT SUN_ESCAPE "\
   "SUN_FLATNESS SUN_GM SUN_GMIERS SUN_GMNASA SUN_GRAVITY SUN_INCLINATION S"\
   "UN_INCLINATION_DT SUN_LONGITUDE SUN_LONGITUDE_DT SUN_MASS SUN_OBLATENES"\
   "S SUN_ORBIT SUN_ORBIT_DT SUN_PERIAPSIS SUN_PERIAPSIS_DT SUN_RADIUS SUN_"\
   "SURFACE SUN_VOLUME SUN_YEAR TROPICALYEAR URANUS_A URANUS_ASCENDING URAN"\
   "US_ASCENDING_DT URANUS_B URANUS_C URANUS_DAY URANUS_DENSITY URANUS_ECCE"\
   "NTRICITY URANUS_ECCENTRICITY_DT URANUS_ESCAPE URANUS_FLATNESS URANUS_GM"\
   " URANUS_GRAVITY URANUS_INCLINATION URANUS_INCLINATION_DT URANUS_LONGITU"\
   "DE URANUS_LONGITUDE_DT URANUS_MASS URANUS_OBLATENESS URANUS_ORBIT URANU"\
   "S_ORBIT_DT URANUS_PERIAPSIS URANUS_PERIAPSIS_DT URANUS_RADIUS URANUS_SU"\
   "RFACE URANUS_SYNODIC URANUS_VOLUME URANUS_YEAR VENUS_A VENUS_ASCENDING "\
   "VENUS_ASCENDING_DT VENUS_B VENUS_C VENUS_DAY VENUS_DENSITY VENUS_ECCENT"\
   "RICITY VENUS_ECCENTRICITY_DT VENUS_ESCAPE VENUS_FLATNESS VENUS_GM VENUS"\
   "_GRAVITY VENUS_INCLINATION VENUS_INCLINATION_DT VENUS_LONGITUDE VENUS_L"\
   "ONGITUDE_DT VENUS_MASS VENUS_OBLATENESS VENUS_ORBIT VENUS_ORBIT_DT VENU"\
   "S_PERIAPSIS VENUS_PERIAPSIS_DT VENUS_RADIUS VENUS_SURFACE VENUS_SYNODIC"\
   " VENUS_VOLUME VENUS_YEAR"\
   "\n"\
   "   Kwplanets 0-ary Functions: pla plaphelion plargument plascending plb"\
   " plc plday pldensity pleccentricanomaly pleccentricity plescape plflatn"\
   "ess plgm plgravity plinclination pllongitude plmargot plmass plmeananom"\
   "aly plname plorbit plperiapsis plperihelion plradius plsternlevison pls"\
   "urface plsynodic plvolume plyear"\
   "\n"\
   "   Kwplanets 1-ary Functions: earthgravity earthobliquity earthprecessi"\
   "on earthradius earthtropicalyear isa_dens isa_pres isa_temp pl pl_a pl_"\
   "aphelion pl_argument pl_ascending pl_b pl_c pl_day pl_density pl_eccent"\
   "ricanomaly pl_eccentricity pl_escape pl_flatness pl_gm pl_gravity pl_in"\
   "clination pl_longitude pl_margot pl_mass pl_meananomaly pl_name pl_orbi"\
   "t pl_periapsis pl_perihelion pl_radius pl_sternlevison pl_surface pl_sy"\
   "nodic pl_volume pl_year plaradius plgeo plhelio plsettime prem_density "\
   "prem_g prem_mass"\
   "\n"\
   "   Kwplanets 2-ary Functions: earthgravity_height eccentric_anomaly mar"\
   "got orbit_v orbitgm_v pl_aradius pl_heliocentric sternlevison"\
   "\n"\
   "   Kwplanets 4-ary Functions: earthdistance"\
   "\n"\
   "   Kwplanets 5-ary Functions: vin_destination vin_distance"\
   "\n"
#define Kwplanets_DESC \
   "   Kwplanets Constants: ANOMALISTICYEAR CERES_(A(SCENDING(_DT)?)?|B|C|D"\
   "(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION"\
   "(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RAD"\
   "IUS|S(URFACE|YNODIC)|VOLUME|YEAR) EARTH_(A(NOMALISTICYEAR|SCENDING(_DT)"\
   "?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY[AB]"\
   "?)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIA"\
   "PSIS(_DT)?|RADIUS|S(IDEREAL(DAY|YEAR)|OLARDAY|TELLARDAY|URFACE)|T(HETA_"\
   "0|ROPICALYEAR)|VOLUME|YEAR) ERIS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E"\
   "(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGIT"\
   "UDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|"\
   "YNODIC)|VOLUME|YEAR) HAUMEA_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCEN"\
   "TRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_"\
   "DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODI"\
   "C)|VOLUME|YEAR) JUPITER_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRIC"\
   "ITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?"\
   "|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|V"\
   "OLUME|YEAR) LC_(ISA_(CNT|DENS|HEIGHT|KEY_CNT|PRES|TEMP)|P(1_(C(ERES|NT)"\
   "|E(ARTH|R(IS|R))|HAUMEA|JUPITER|M(A(KEMAKE|RS)|ERCURY)|NEPTUNE|P(LUTO|R"\
   "EV_PL)|S(ATURN|UN)|URANUS|VENUS)|2_(A(SC(_DT)?)?|C(NT)?|DAY|ECC(_DT)?|F"\
   "LATNESS|GM|INC(_DT)?|LON(_DT)?|ORB(_DT)?|PER(_DT)?|YEAR)|REM_(DENS|MASS"\
   "|X(COE[ABC]|HEIGHT|MASSD)))) MAKEMAKE_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSI"\
   "TY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|L"\
   "ONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(UR"\
   "FACE|YNODIC)|VOLUME|YEAR) MARS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(C"\
   "CENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUD"\
   "E(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YN"\
   "ODIC)|VOLUME|YEAR) MERCURY_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENT"\
   "RICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_D"\
   "T)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC"\
   ")|VOLUME|YEAR) MOON_([ABC]|D(AY|ENSITY)|E(CCENTRICITY|SCAPE)|FLATNESS|G"\
   "(M|RAVITY)|INCLINATION|MASS|O(BLATENESS|RBIT)|RADIUS|S(URFACE|YNODIC)|V"\
   "OLUME|YEAR) NEPTUNE_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY("\
   "_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MAS"\
   "S|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUM"\
   "E|YEAR) PLUTO_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|"\
   "SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BL"\
   "ATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR"\
   ") SATURN_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE"\
   ")|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENE"\
   "SS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME|YEAR) SID"\
   "EREALYEAR SUN_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|"\
   "SCAPE)|FLATNESS|G(M(IERS|NASA)?|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT"\
   ")?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|SURFACE|VOLUME|Y"\
   "EAR) TROPICALYEAR URANUS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRI"\
   "CITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)"\
   "?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|"\
   "VOLUME|YEAR) VENUS_(A(SCENDING(_DT)?)?|B|C|D(AY|ENSITY)|E(CCENTRICITY(_"\
   "DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS"\
   "|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|S(URFACE|YNODIC)|VOLUME"\
   "|YEAR)"\
   "\n"\
   "   Kwplanets 0-ary Functions: pla(phelion|rgument|scending)? plb plc pl"\
   "d(ay|ensity) ple(ccentric(anomaly|ity)|scape) plflatness plg(m|ravity) "\
   "plinclination pllongitude plm(a(rgot|ss)|eananomaly) plname plorbit plp"\
   "eri(apsis|helion) plradius pls(ternlevison|urface|ynodic) plvolume plye"\
   "ar"\
   "\n"\
   "   Kwplanets 1-ary Functions: earth(gravity|obliquity|precession|radius"\
   "|tropicalyear) isa_(dens|pres|temp) pl pl_(a(phelion|rgument|scending)?"\
   "|b|c|d(ay|ensity)|e(ccentric(anomaly|ity)|scape)|flatness|g(m|ravity)|i"\
   "nclination|longitude|m(a(rgot|ss)|eananomaly)|name|orbit|peri(apsis|hel"\
   "ion)|radius|s(ternlevison|urface|ynodic)|volume|year) plaradius plgeo p"\
   "lhelio plsettime prem_(density|g|mass)"\
   "\n"\
   "   Kwplanets 2-ary Functions: earthgravity_height eccentric_anomaly mar"\
   "got orbit(_v|gm_v) pl_(aradius|heliocentric) sternlevison"\
   "\n"\
   "   Kwplanets 4-ary Functions: earthdistance"\
   "\n"\
   "   Kwplanets 5-ary Functions: vin_d(estination|istance)"\
   "\n"
#endif // #ifndef INCLUDED_Kwplanets_h
