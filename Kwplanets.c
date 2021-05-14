//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ######### SOURCE $KWROOT/codekdw/kw-lib/Kwplanets.fwipp ##########
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kwplanets.varylog
#include "Kwplanets.h"
//  CCCCCCCCCConstant ############################################## LANG_C #
double cxSUN_GM(void) { return (SUN_GM); }
double cxSUN_YEAR(void) { return (SUN_YEAR); }
double cxSUN_DAY(void) { return (SUN_DAY); }
double cxMERCURY_GM(void) { return (MERCURY_GM); }
double cxMERCURY_YEAR(void) { return (MERCURY_YEAR); }
double cxMERCURY_DAY(void) { return (MERCURY_DAY); }
double cxVENUS_GM(void) { return (VENUS_GM); }
double cxVENUS_YEAR(void) { return (VENUS_YEAR); }
double cxVENUS_DAY(void) { return (VENUS_DAY); }
double cxMARS_GM(void) { return (MARS_GM); }
double cxMARS_YEAR(void) { return (MARS_YEAR); }
double cxMARS_DAY(void) { return (MARS_DAY); }
double cxEARTH_GM(void) { return (EARTH_GM); }
double cxEARTH_YEAR(void) { return (EARTH_YEAR); }
double cxEARTH_DAY(void) { return (EARTH_DAY); }
double cxJUPITER_GM(void) { return (JUPITER_GM); }
double cxJUPITER_YEAR(void) { return (JUPITER_YEAR); }
double cxJUPITER_DAY(void) { return (JUPITER_DAY); }
double cxSATURN_GM(void) { return (SATURN_GM); }
double cxSATURN_YEAR(void) { return (SATURN_YEAR); }
double cxSATURN_DAY(void) { return (SATURN_DAY); }
double cxURANUS_GM(void) { return (URANUS_GM); }
double cxURANUS_YEAR(void) { return (URANUS_YEAR); }
double cxURANUS_DAY(void) { return (URANUS_DAY); }
double cxNEPTUNE_GM(void) { return (NEPTUNE_GM); }
double cxNEPTUNE_YEAR(void) { return (NEPTUNE_YEAR); }
double cxNEPTUNE_DAY(void) { return (NEPTUNE_DAY); }
double cxPLUTO_GM(void) { return (PLUTO_GM); }
double cxPLUTO_YEAR(void) { return (PLUTO_YEAR); }
double cxPLUTO_DAY(void) { return (PLUTO_DAY); }
double cxMOON_GM(void) { return (MOON_GM); }
double cxMOON_YEAR(void) { return (MOON_YEAR); }
double cxMOON_DAY(void) { return (MOON_DAY); }
double cxCERES_GM(void) { return (CERES_GM); }
double cxCERES_YEAR(void) { return (CERES_YEAR); }
double cxCERES_DAY(void) { return (CERES_DAY); }
double cxERIS_GM(void) { return (ERIS_GM); }
double cxERIS_YEAR(void) { return (ERIS_YEAR); }
double cxERIS_DAY(void) { return (ERIS_DAY); }
double cxMAKEMAKE_GM(void) { return (MAKEMAKE_GM); }
double cxMAKEMAKE_YEAR(void) { return (MAKEMAKE_YEAR); }
double cxMAKEMAKE_DAY(void) { return (MAKEMAKE_DAY); }
double cxHAUMEA_GM(void) { return (HAUMEA_GM); }
double cxHAUMEA_YEAR(void) { return (HAUMEA_YEAR); }
double cxHAUMEA_DAY(void) { return (HAUMEA_DAY); }
double cxEARTH_SOLARDAY(void) { return (EARTH_SOLARDAY); }
double cxEARTH_SIDEREALDAY(void) { return (EARTH_SIDEREALDAY); }
double cxEARTH_STELLARDAY(void) { return (EARTH_STELLARDAY); }
double cxEARTH_TROPICALYEAR(void) { return (EARTH_TROPICALYEAR); }
double cxEARTH_SIDEREALYEAR(void) { return (EARTH_SIDEREALYEAR); }
double cxEARTH_ANOMALISTICYEAR(void) { return (EARTH_ANOMALISTICYEAR); }
double cxSIDEREALYEAR(void) { return (SIDEREALYEAR); }
double cxANOMALISTICYEAR(void) { return (ANOMALISTICYEAR); }
double cxTROPICALYEAR(void) { return (TROPICALYEAR); }
double cxSUN_FLATNESS(void) { return (SUN_FLATNESS); }
double cxSUN_A(void) { return (SUN_A); }
double cxSUN_C(void) { return (SUN_C); }
double cxMERCURY_FLATNESS(void) { return (MERCURY_FLATNESS); }
double cxMERCURY_A(void) { return (MERCURY_A); }
double cxMERCURY_C(void) { return (MERCURY_C); }
double cxVENUS_FLATNESS(void) { return (VENUS_FLATNESS); }
double cxVENUS_A(void) { return (VENUS_A); }
double cxVENUS_C(void) { return (VENUS_C); }
double cxEARTH_FLATNESS(void) { return (EARTH_FLATNESS); }
double cxEARTH_A(void) { return (EARTH_A); }
double cxEARTH_C(void) { return (EARTH_C); }
double cxMARS_FLATNESS(void) { return (MARS_FLATNESS); }
double cxMARS_A(void) { return (MARS_A); }
double cxMARS_C(void) { return (MARS_C); }
double cxJUPITER_FLATNESS(void) { return (JUPITER_FLATNESS); }
double cxJUPITER_A(void) { return (JUPITER_A); }
double cxJUPITER_C(void) { return (JUPITER_C); }
double cxSATURN_FLATNESS(void) { return (SATURN_FLATNESS); }
double cxSATURN_A(void) { return (SATURN_A); }
double cxSATURN_C(void) { return (SATURN_C); }
double cxURANUS_FLATNESS(void) { return (URANUS_FLATNESS); }
double cxURANUS_A(void) { return (URANUS_A); }
double cxURANUS_C(void) { return (URANUS_C); }
double cxNEPTUNE_FLATNESS(void) { return (NEPTUNE_FLATNESS); }
double cxNEPTUNE_A(void) { return (NEPTUNE_A); }
double cxNEPTUNE_C(void) { return (NEPTUNE_C); }
double cxPLUTO_FLATNESS(void) { return (PLUTO_FLATNESS); }
double cxPLUTO_A(void) { return (PLUTO_A); }
double cxPLUTO_C(void) { return (PLUTO_C); }
double cxMOON_FLATNESS(void) { return (MOON_FLATNESS); }
double cxMOON_A(void) { return (MOON_A); }
double cxMOON_C(void) { return (MOON_C); }
double cxCERES_FLATNESS(void) { return (CERES_FLATNESS); }
double cxCERES_A(void) { return (CERES_A); }
double cxCERES_C(void) { return (CERES_C); }
double cxERIS_FLATNESS(void) { return (ERIS_FLATNESS); }
double cxERIS_A(void) { return (ERIS_A); }
double cxERIS_C(void) { return (ERIS_C); }
double cxMAKEMAKE_FLATNESS(void) { return (MAKEMAKE_FLATNESS); }
double cxMAKEMAKE_A(void) { return (MAKEMAKE_A); }
double cxMAKEMAKE_C(void) { return (MAKEMAKE_C); }
double cxHAUMEA_FLATNESS(void) { return (HAUMEA_FLATNESS); }
double cxHAUMEA_A(void) { return (HAUMEA_A); }
double cxHAUMEA_C(void) { return (HAUMEA_C); }
double cxSUN_B(void) { return (SUN_B); }
double cxSUN_RADIUS(void) { return (SUN_RADIUS); }
double cxSUN_ESCAPE(void) { return (SUN_ESCAPE); }
double cxSUN_OBLATENESS(void) { return (SUN_OBLATENESS); }
double cxSUN_GRAVITY(void) { return (SUN_GRAVITY); }
double cxSUN_MASS(void) { return (SUN_MASS); }
double cxSUN_VOLUME(void) { return (SUN_VOLUME); }
double cxSUN_SURFACE(void) { return (SUN_SURFACE); }
double cxSUN_DENSITY(void) { return (SUN_DENSITY); }
double cxEARTH_B(void) { return (EARTH_B); }
double cxEARTH_RADIUS(void) { return (EARTH_RADIUS); }
double cxEARTH_ESCAPE(void) { return (EARTH_ESCAPE); }
double cxEARTH_OBLATENESS(void) { return (EARTH_OBLATENESS); }
double cxEARTH_GRAVITY(void) { return (EARTH_GRAVITY); }
double cxEARTH_MASS(void) { return (EARTH_MASS); }
double cxEARTH_VOLUME(void) { return (EARTH_VOLUME); }
double cxEARTH_SURFACE(void) { return (EARTH_SURFACE); }
double cxEARTH_DENSITY(void) { return (EARTH_DENSITY); }
double cxMERCURY_B(void) { return (MERCURY_B); }
double cxMERCURY_RADIUS(void) { return (MERCURY_RADIUS); }
double cxMERCURY_ESCAPE(void) { return (MERCURY_ESCAPE); }
double cxMERCURY_OBLATENESS(void) { return (MERCURY_OBLATENESS); }
double cxMERCURY_GRAVITY(void) { return (MERCURY_GRAVITY); }
double cxMERCURY_MASS(void) { return (MERCURY_MASS); }
double cxMERCURY_VOLUME(void) { return (MERCURY_VOLUME); }
double cxMERCURY_SURFACE(void) { return (MERCURY_SURFACE); }
double cxMERCURY_DENSITY(void) { return (MERCURY_DENSITY); }
double cxMERCURY_SYNODIC(void) { return (MERCURY_SYNODIC); }
double cxVENUS_B(void) { return (VENUS_B); }
double cxVENUS_RADIUS(void) { return (VENUS_RADIUS); }
double cxVENUS_ESCAPE(void) { return (VENUS_ESCAPE); }
double cxVENUS_OBLATENESS(void) { return (VENUS_OBLATENESS); }
double cxVENUS_GRAVITY(void) { return (VENUS_GRAVITY); }
double cxVENUS_MASS(void) { return (VENUS_MASS); }
double cxVENUS_VOLUME(void) { return (VENUS_VOLUME); }
double cxVENUS_SURFACE(void) { return (VENUS_SURFACE); }
double cxVENUS_DENSITY(void) { return (VENUS_DENSITY); }
double cxVENUS_SYNODIC(void) { return (VENUS_SYNODIC); }
double cxMARS_B(void) { return (MARS_B); }
double cxMARS_RADIUS(void) { return (MARS_RADIUS); }
double cxMARS_ESCAPE(void) { return (MARS_ESCAPE); }
double cxMARS_OBLATENESS(void) { return (MARS_OBLATENESS); }
double cxMARS_GRAVITY(void) { return (MARS_GRAVITY); }
double cxMARS_MASS(void) { return (MARS_MASS); }
double cxMARS_VOLUME(void) { return (MARS_VOLUME); }
double cxMARS_SURFACE(void) { return (MARS_SURFACE); }
double cxMARS_DENSITY(void) { return (MARS_DENSITY); }
double cxMARS_SYNODIC(void) { return (MARS_SYNODIC); }
double cxJUPITER_B(void) { return (JUPITER_B); }
double cxJUPITER_RADIUS(void) { return (JUPITER_RADIUS); }
double cxJUPITER_ESCAPE(void) { return (JUPITER_ESCAPE); }
double cxJUPITER_OBLATENESS(void) { return (JUPITER_OBLATENESS); }
double cxJUPITER_GRAVITY(void) { return (JUPITER_GRAVITY); }
double cxJUPITER_MASS(void) { return (JUPITER_MASS); }
double cxJUPITER_VOLUME(void) { return (JUPITER_VOLUME); }
double cxJUPITER_SURFACE(void) { return (JUPITER_SURFACE); }
double cxJUPITER_DENSITY(void) { return (JUPITER_DENSITY); }
double cxJUPITER_SYNODIC(void) { return (JUPITER_SYNODIC); }
double cxSATURN_B(void) { return (SATURN_B); }
double cxSATURN_RADIUS(void) { return (SATURN_RADIUS); }
double cxSATURN_ESCAPE(void) { return (SATURN_ESCAPE); }
double cxSATURN_OBLATENESS(void) { return (SATURN_OBLATENESS); }
double cxSATURN_GRAVITY(void) { return (SATURN_GRAVITY); }
double cxSATURN_MASS(void) { return (SATURN_MASS); }
double cxSATURN_VOLUME(void) { return (SATURN_VOLUME); }
double cxSATURN_SURFACE(void) { return (SATURN_SURFACE); }
double cxSATURN_DENSITY(void) { return (SATURN_DENSITY); }
double cxSATURN_SYNODIC(void) { return (SATURN_SYNODIC); }
double cxURANUS_B(void) { return (URANUS_B); }
double cxURANUS_RADIUS(void) { return (URANUS_RADIUS); }
double cxURANUS_ESCAPE(void) { return (URANUS_ESCAPE); }
double cxURANUS_OBLATENESS(void) { return (URANUS_OBLATENESS); }
double cxURANUS_GRAVITY(void) { return (URANUS_GRAVITY); }
double cxURANUS_MASS(void) { return (URANUS_MASS); }
double cxURANUS_VOLUME(void) { return (URANUS_VOLUME); }
double cxURANUS_SURFACE(void) { return (URANUS_SURFACE); }
double cxURANUS_DENSITY(void) { return (URANUS_DENSITY); }
double cxURANUS_SYNODIC(void) { return (URANUS_SYNODIC); }
double cxNEPTUNE_B(void) { return (NEPTUNE_B); }
double cxNEPTUNE_RADIUS(void) { return (NEPTUNE_RADIUS); }
double cxNEPTUNE_ESCAPE(void) { return (NEPTUNE_ESCAPE); }
double cxNEPTUNE_OBLATENESS(void) { return (NEPTUNE_OBLATENESS); }
double cxNEPTUNE_GRAVITY(void) { return (NEPTUNE_GRAVITY); }
double cxNEPTUNE_MASS(void) { return (NEPTUNE_MASS); }
double cxNEPTUNE_VOLUME(void) { return (NEPTUNE_VOLUME); }
double cxNEPTUNE_SURFACE(void) { return (NEPTUNE_SURFACE); }
double cxNEPTUNE_DENSITY(void) { return (NEPTUNE_DENSITY); }
double cxNEPTUNE_SYNODIC(void) { return (NEPTUNE_SYNODIC); }
double cxPLUTO_B(void) { return (PLUTO_B); }
double cxPLUTO_RADIUS(void) { return (PLUTO_RADIUS); }
double cxPLUTO_ESCAPE(void) { return (PLUTO_ESCAPE); }
double cxPLUTO_OBLATENESS(void) { return (PLUTO_OBLATENESS); }
double cxPLUTO_GRAVITY(void) { return (PLUTO_GRAVITY); }
double cxPLUTO_MASS(void) { return (PLUTO_MASS); }
double cxPLUTO_VOLUME(void) { return (PLUTO_VOLUME); }
double cxPLUTO_SURFACE(void) { return (PLUTO_SURFACE); }
double cxPLUTO_DENSITY(void) { return (PLUTO_DENSITY); }
double cxPLUTO_SYNODIC(void) { return (PLUTO_SYNODIC); }
double cxMOON_B(void) { return (MOON_B); }
double cxMOON_RADIUS(void) { return (MOON_RADIUS); }
double cxMOON_ESCAPE(void) { return (MOON_ESCAPE); }
double cxMOON_OBLATENESS(void) { return (MOON_OBLATENESS); }
double cxMOON_GRAVITY(void) { return (MOON_GRAVITY); }
double cxMOON_MASS(void) { return (MOON_MASS); }
double cxMOON_VOLUME(void) { return (MOON_VOLUME); }
double cxMOON_SURFACE(void) { return (MOON_SURFACE); }
double cxMOON_DENSITY(void) { return (MOON_DENSITY); }
double cxMOON_SYNODIC(void) { return (MOON_SYNODIC); }
double cxCERES_B(void) { return (CERES_B); }
double cxCERES_RADIUS(void) { return (CERES_RADIUS); }
double cxCERES_ESCAPE(void) { return (CERES_ESCAPE); }
double cxCERES_OBLATENESS(void) { return (CERES_OBLATENESS); }
double cxCERES_GRAVITY(void) { return (CERES_GRAVITY); }
double cxCERES_MASS(void) { return (CERES_MASS); }
double cxCERES_VOLUME(void) { return (CERES_VOLUME); }
double cxCERES_SURFACE(void) { return (CERES_SURFACE); }
double cxCERES_DENSITY(void) { return (CERES_DENSITY); }
double cxCERES_SYNODIC(void) { return (CERES_SYNODIC); }
double cxERIS_B(void) { return (ERIS_B); }
double cxERIS_RADIUS(void) { return (ERIS_RADIUS); }
double cxERIS_ESCAPE(void) { return (ERIS_ESCAPE); }
double cxERIS_OBLATENESS(void) { return (ERIS_OBLATENESS); }
double cxERIS_GRAVITY(void) { return (ERIS_GRAVITY); }
double cxERIS_MASS(void) { return (ERIS_MASS); }
double cxERIS_VOLUME(void) { return (ERIS_VOLUME); }
double cxERIS_SURFACE(void) { return (ERIS_SURFACE); }
double cxERIS_DENSITY(void) { return (ERIS_DENSITY); }
double cxERIS_SYNODIC(void) { return (ERIS_SYNODIC); }
double cxMAKEMAKE_B(void) { return (MAKEMAKE_B); }
double cxMAKEMAKE_RADIUS(void) { return (MAKEMAKE_RADIUS); }
double cxMAKEMAKE_ESCAPE(void) { return (MAKEMAKE_ESCAPE); }
double cxMAKEMAKE_OBLATENESS(void) { return (MAKEMAKE_OBLATENESS); }
double cxMAKEMAKE_GRAVITY(void) { return (MAKEMAKE_GRAVITY); }
double cxMAKEMAKE_MASS(void) { return (MAKEMAKE_MASS); }
double cxMAKEMAKE_VOLUME(void) { return (MAKEMAKE_VOLUME); }
double cxMAKEMAKE_SURFACE(void) { return (MAKEMAKE_SURFACE); }
double cxMAKEMAKE_DENSITY(void) { return (MAKEMAKE_DENSITY); }
double cxMAKEMAKE_SYNODIC(void) { return (MAKEMAKE_SYNODIC); }
double cxHAUMEA_B(void) { return (HAUMEA_B); }
double cxHAUMEA_RADIUS(void) { return (HAUMEA_RADIUS); }
double cxHAUMEA_ESCAPE(void) { return (HAUMEA_ESCAPE); }
double cxHAUMEA_OBLATENESS(void) { return (HAUMEA_OBLATENESS); }
double cxHAUMEA_GRAVITY(void) { return (HAUMEA_GRAVITY); }
double cxHAUMEA_MASS(void) { return (HAUMEA_MASS); }
double cxHAUMEA_VOLUME(void) { return (HAUMEA_VOLUME); }
double cxHAUMEA_SURFACE(void) { return (HAUMEA_SURFACE); }
double cxHAUMEA_DENSITY(void) { return (HAUMEA_DENSITY); }
double cxHAUMEA_SYNODIC(void) { return (HAUMEA_SYNODIC); }
double cxSUN_GMIERS(void) { return (SUN_GMIERS); }
double cxSUN_GMNASA(void) { return (SUN_GMNASA); }
double cxEARTH_THETA_0(void) { return (EARTH_THETA_0); }
double cxMOON_ORBIT(void) { return (MOON_ORBIT); }
double cxMOON_ECCENTRICITY(void) { return (MOON_ECCENTRICITY); }
double cxMOON_INCLINATION(void) { return (MOON_INCLINATION); }
double cxSUN_ORBIT(void) { return (SUN_ORBIT); }
double cxSUN_ECCENTRICITY(void) { return (SUN_ECCENTRICITY); }
double cxSUN_INCLINATION(void) { return (SUN_INCLINATION); }
double cxSUN_LONGITUDE(void) { return (SUN_LONGITUDE); }
double cxSUN_PERIAPSIS(void) { return (SUN_PERIAPSIS); }
double cxSUN_ASCENDING(void) { return (SUN_ASCENDING); }
double cxSUN_ORBIT_DT(void) { return (SUN_ORBIT_DT); }
double cxSUN_ECCENTRICITY_DT(void) { return (SUN_ECCENTRICITY_DT); }
double cxSUN_INCLINATION_DT(void) { return (SUN_INCLINATION_DT); }
double cxSUN_LONGITUDE_DT(void) { return (SUN_LONGITUDE_DT); }
double cxSUN_PERIAPSIS_DT(void) { return (SUN_PERIAPSIS_DT); }
double cxSUN_ASCENDING_DT(void) { return (SUN_ASCENDING_DT); }
double cxEARTH_ORBIT(void) { return (EARTH_ORBIT); }
double cxEARTH_ECCENTRICITY(void) { return (EARTH_ECCENTRICITY); }
double cxEARTH_INCLINATION(void) { return (EARTH_INCLINATION); }
double cxEARTH_LONGITUDE(void) { return (EARTH_LONGITUDE); }
double cxEARTH_PERIAPSIS(void) { return (EARTH_PERIAPSIS); }
double cxEARTH_ASCENDING(void) { return (EARTH_ASCENDING); }
double cxEARTH_ORBIT_DT(void) { return (EARTH_ORBIT_DT); }
double cxEARTH_ECCENTRICITY_DT(void) { return (EARTH_ECCENTRICITY_DT); }
double cxEARTH_INCLINATION_DT(void) { return (EARTH_INCLINATION_DT); }
double cxEARTH_LONGITUDE_DT(void) { return (EARTH_LONGITUDE_DT); }
double cxEARTH_PERIAPSIS_DT(void) { return (EARTH_PERIAPSIS_DT); }
double cxEARTH_ASCENDING_DT(void) { return (EARTH_ASCENDING_DT); }
double cxMERCURY_ORBIT(void) { return (MERCURY_ORBIT); }
double cxMERCURY_ECCENTRICITY(void) { return (MERCURY_ECCENTRICITY); }
double cxMERCURY_INCLINATION(void) { return (MERCURY_INCLINATION); }
double cxMERCURY_LONGITUDE(void) { return (MERCURY_LONGITUDE); }
double cxMERCURY_PERIAPSIS(void) { return (MERCURY_PERIAPSIS); }
double cxMERCURY_ASCENDING(void) { return (MERCURY_ASCENDING); }
double cxMERCURY_ORBIT_DT(void) { return (MERCURY_ORBIT_DT); }
double cxMERCURY_ECCENTRICITY_DT(void) { return (MERCURY_ECCENTRICITY_DT); }
double cxMERCURY_INCLINATION_DT(void) { return (MERCURY_INCLINATION_DT); }
double cxMERCURY_LONGITUDE_DT(void) { return (MERCURY_LONGITUDE_DT); }
double cxMERCURY_PERIAPSIS_DT(void) { return (MERCURY_PERIAPSIS_DT); }
double cxMERCURY_ASCENDING_DT(void) { return (MERCURY_ASCENDING_DT); }
double cxVENUS_ORBIT(void) { return (VENUS_ORBIT); }
double cxVENUS_ECCENTRICITY(void) { return (VENUS_ECCENTRICITY); }
double cxVENUS_INCLINATION(void) { return (VENUS_INCLINATION); }
double cxVENUS_LONGITUDE(void) { return (VENUS_LONGITUDE); }
double cxVENUS_PERIAPSIS(void) { return (VENUS_PERIAPSIS); }
double cxVENUS_ASCENDING(void) { return (VENUS_ASCENDING); }
double cxVENUS_ORBIT_DT(void) { return (VENUS_ORBIT_DT); }
double cxVENUS_ECCENTRICITY_DT(void) { return (VENUS_ECCENTRICITY_DT); }
double cxVENUS_INCLINATION_DT(void) { return (VENUS_INCLINATION_DT); }
double cxVENUS_LONGITUDE_DT(void) { return (VENUS_LONGITUDE_DT); }
double cxVENUS_PERIAPSIS_DT(void) { return (VENUS_PERIAPSIS_DT); }
double cxVENUS_ASCENDING_DT(void) { return (VENUS_ASCENDING_DT); }
double cxMARS_ORBIT(void) { return (MARS_ORBIT); }
double cxMARS_ECCENTRICITY(void) { return (MARS_ECCENTRICITY); }
double cxMARS_INCLINATION(void) { return (MARS_INCLINATION); }
double cxMARS_LONGITUDE(void) { return (MARS_LONGITUDE); }
double cxMARS_PERIAPSIS(void) { return (MARS_PERIAPSIS); }
double cxMARS_ASCENDING(void) { return (MARS_ASCENDING); }
double cxMARS_ORBIT_DT(void) { return (MARS_ORBIT_DT); }
double cxMARS_ECCENTRICITY_DT(void) { return (MARS_ECCENTRICITY_DT); }
double cxMARS_INCLINATION_DT(void) { return (MARS_INCLINATION_DT); }
double cxMARS_LONGITUDE_DT(void) { return (MARS_LONGITUDE_DT); }
double cxMARS_PERIAPSIS_DT(void) { return (MARS_PERIAPSIS_DT); }
double cxMARS_ASCENDING_DT(void) { return (MARS_ASCENDING_DT); }
double cxJUPITER_ORBIT(void) { return (JUPITER_ORBIT); }
double cxJUPITER_ECCENTRICITY(void) { return (JUPITER_ECCENTRICITY); }
double cxJUPITER_INCLINATION(void) { return (JUPITER_INCLINATION); }
double cxJUPITER_LONGITUDE(void) { return (JUPITER_LONGITUDE); }
double cxJUPITER_PERIAPSIS(void) { return (JUPITER_PERIAPSIS); }
double cxJUPITER_ASCENDING(void) { return (JUPITER_ASCENDING); }
double cxJUPITER_ORBIT_DT(void) { return (JUPITER_ORBIT_DT); }
double cxJUPITER_ECCENTRICITY_DT(void) { return (JUPITER_ECCENTRICITY_DT); }
double cxJUPITER_INCLINATION_DT(void) { return (JUPITER_INCLINATION_DT); }
double cxJUPITER_LONGITUDE_DT(void) { return (JUPITER_LONGITUDE_DT); }
double cxJUPITER_PERIAPSIS_DT(void) { return (JUPITER_PERIAPSIS_DT); }
double cxJUPITER_ASCENDING_DT(void) { return (JUPITER_ASCENDING_DT); }
double cxSATURN_ORBIT(void) { return (SATURN_ORBIT); }
double cxSATURN_ECCENTRICITY(void) { return (SATURN_ECCENTRICITY); }
double cxSATURN_INCLINATION(void) { return (SATURN_INCLINATION); }
double cxSATURN_LONGITUDE(void) { return (SATURN_LONGITUDE); }
double cxSATURN_PERIAPSIS(void) { return (SATURN_PERIAPSIS); }
double cxSATURN_ASCENDING(void) { return (SATURN_ASCENDING); }
double cxSATURN_ORBIT_DT(void) { return (SATURN_ORBIT_DT); }
double cxSATURN_ECCENTRICITY_DT(void) { return (SATURN_ECCENTRICITY_DT); }
double cxSATURN_INCLINATION_DT(void) { return (SATURN_INCLINATION_DT); }
double cxSATURN_LONGITUDE_DT(void) { return (SATURN_LONGITUDE_DT); }
double cxSATURN_PERIAPSIS_DT(void) { return (SATURN_PERIAPSIS_DT); }
double cxSATURN_ASCENDING_DT(void) { return (SATURN_ASCENDING_DT); }
double cxURANUS_ORBIT(void) { return (URANUS_ORBIT); }
double cxURANUS_ECCENTRICITY(void) { return (URANUS_ECCENTRICITY); }
double cxURANUS_INCLINATION(void) { return (URANUS_INCLINATION); }
double cxURANUS_LONGITUDE(void) { return (URANUS_LONGITUDE); }
double cxURANUS_PERIAPSIS(void) { return (URANUS_PERIAPSIS); }
double cxURANUS_ASCENDING(void) { return (URANUS_ASCENDING); }
double cxURANUS_ORBIT_DT(void) { return (URANUS_ORBIT_DT); }
double cxURANUS_ECCENTRICITY_DT(void) { return (URANUS_ECCENTRICITY_DT); }
double cxURANUS_INCLINATION_DT(void) { return (URANUS_INCLINATION_DT); }
double cxURANUS_LONGITUDE_DT(void) { return (URANUS_LONGITUDE_DT); }
double cxURANUS_PERIAPSIS_DT(void) { return (URANUS_PERIAPSIS_DT); }
double cxURANUS_ASCENDING_DT(void) { return (URANUS_ASCENDING_DT); }
double cxNEPTUNE_ORBIT(void) { return (NEPTUNE_ORBIT); }
double cxNEPTUNE_ECCENTRICITY(void) { return (NEPTUNE_ECCENTRICITY); }
double cxNEPTUNE_INCLINATION(void) { return (NEPTUNE_INCLINATION); }
double cxNEPTUNE_LONGITUDE(void) { return (NEPTUNE_LONGITUDE); }
double cxNEPTUNE_PERIAPSIS(void) { return (NEPTUNE_PERIAPSIS); }
double cxNEPTUNE_ASCENDING(void) { return (NEPTUNE_ASCENDING); }
double cxNEPTUNE_ORBIT_DT(void) { return (NEPTUNE_ORBIT_DT); }
double cxNEPTUNE_ECCENTRICITY_DT(void) { return (NEPTUNE_ECCENTRICITY_DT); }
double cxNEPTUNE_INCLINATION_DT(void) { return (NEPTUNE_INCLINATION_DT); }
double cxNEPTUNE_LONGITUDE_DT(void) { return (NEPTUNE_LONGITUDE_DT); }
double cxNEPTUNE_PERIAPSIS_DT(void) { return (NEPTUNE_PERIAPSIS_DT); }
double cxNEPTUNE_ASCENDING_DT(void) { return (NEPTUNE_ASCENDING_DT); }
double cxPLUTO_ORBIT(void) { return (PLUTO_ORBIT); }
double cxPLUTO_ECCENTRICITY(void) { return (PLUTO_ECCENTRICITY); }
double cxPLUTO_INCLINATION(void) { return (PLUTO_INCLINATION); }
double cxPLUTO_LONGITUDE(void) { return (PLUTO_LONGITUDE); }
double cxPLUTO_PERIAPSIS(void) { return (PLUTO_PERIAPSIS); }
double cxPLUTO_ASCENDING(void) { return (PLUTO_ASCENDING); }
double cxPLUTO_ORBIT_DT(void) { return (PLUTO_ORBIT_DT); }
double cxPLUTO_ECCENTRICITY_DT(void) { return (PLUTO_ECCENTRICITY_DT); }
double cxPLUTO_INCLINATION_DT(void) { return (PLUTO_INCLINATION_DT); }
double cxPLUTO_LONGITUDE_DT(void) { return (PLUTO_LONGITUDE_DT); }
double cxPLUTO_PERIAPSIS_DT(void) { return (PLUTO_PERIAPSIS_DT); }
double cxPLUTO_ASCENDING_DT(void) { return (PLUTO_ASCENDING_DT); }
double cxCERES_ORBIT(void) { return (CERES_ORBIT); }
double cxCERES_ECCENTRICITY(void) { return (CERES_ECCENTRICITY); }
double cxCERES_INCLINATION(void) { return (CERES_INCLINATION); }
double cxCERES_LONGITUDE(void) { return (CERES_LONGITUDE); }
double cxCERES_PERIAPSIS(void) { return (CERES_PERIAPSIS); }
double cxCERES_ASCENDING(void) { return (CERES_ASCENDING); }
double cxCERES_ORBIT_DT(void) { return (CERES_ORBIT_DT); }
double cxCERES_ECCENTRICITY_DT(void) { return (CERES_ECCENTRICITY_DT); }
double cxCERES_INCLINATION_DT(void) { return (CERES_INCLINATION_DT); }
double cxCERES_LONGITUDE_DT(void) { return (CERES_LONGITUDE_DT); }
double cxCERES_PERIAPSIS_DT(void) { return (CERES_PERIAPSIS_DT); }
double cxCERES_ASCENDING_DT(void) { return (CERES_ASCENDING_DT); }
double cxERIS_ORBIT(void) { return (ERIS_ORBIT); }
double cxERIS_ECCENTRICITY(void) { return (ERIS_ECCENTRICITY); }
double cxERIS_INCLINATION(void) { return (ERIS_INCLINATION); }
double cxERIS_LONGITUDE(void) { return (ERIS_LONGITUDE); }
double cxERIS_PERIAPSIS(void) { return (ERIS_PERIAPSIS); }
double cxERIS_ASCENDING(void) { return (ERIS_ASCENDING); }
double cxERIS_ORBIT_DT(void) { return (ERIS_ORBIT_DT); }
double cxERIS_ECCENTRICITY_DT(void) { return (ERIS_ECCENTRICITY_DT); }
double cxERIS_INCLINATION_DT(void) { return (ERIS_INCLINATION_DT); }
double cxERIS_LONGITUDE_DT(void) { return (ERIS_LONGITUDE_DT); }
double cxERIS_PERIAPSIS_DT(void) { return (ERIS_PERIAPSIS_DT); }
double cxERIS_ASCENDING_DT(void) { return (ERIS_ASCENDING_DT); }
double cxMAKEMAKE_ORBIT(void) { return (MAKEMAKE_ORBIT); }
double cxMAKEMAKE_ECCENTRICITY(void) { return (MAKEMAKE_ECCENTRICITY); }
double cxMAKEMAKE_INCLINATION(void) { return (MAKEMAKE_INCLINATION); }
double cxMAKEMAKE_LONGITUDE(void) { return (MAKEMAKE_LONGITUDE); }
double cxMAKEMAKE_PERIAPSIS(void) { return (MAKEMAKE_PERIAPSIS); }
double cxMAKEMAKE_ASCENDING(void) { return (MAKEMAKE_ASCENDING); }
double cxMAKEMAKE_ORBIT_DT(void) { return (MAKEMAKE_ORBIT_DT); }
double cxMAKEMAKE_ECCENTRICITY_DT(void) {
   return (MAKEMAKE_ECCENTRICITY_DT); }
double cxMAKEMAKE_INCLINATION_DT(void) { return (MAKEMAKE_INCLINATION_DT); }
double cxMAKEMAKE_LONGITUDE_DT(void) { return (MAKEMAKE_LONGITUDE_DT); }
double cxMAKEMAKE_PERIAPSIS_DT(void) { return (MAKEMAKE_PERIAPSIS_DT); }
double cxMAKEMAKE_ASCENDING_DT(void) { return (MAKEMAKE_ASCENDING_DT); }
double cxHAUMEA_ORBIT(void) { return (HAUMEA_ORBIT); }
double cxHAUMEA_ECCENTRICITY(void) { return (HAUMEA_ECCENTRICITY); }
double cxHAUMEA_INCLINATION(void) { return (HAUMEA_INCLINATION); }
double cxHAUMEA_LONGITUDE(void) { return (HAUMEA_LONGITUDE); }
double cxHAUMEA_PERIAPSIS(void) { return (HAUMEA_PERIAPSIS); }
double cxHAUMEA_ASCENDING(void) { return (HAUMEA_ASCENDING); }
double cxHAUMEA_ORBIT_DT(void) { return (HAUMEA_ORBIT_DT); }
double cxHAUMEA_ECCENTRICITY_DT(void) { return (HAUMEA_ECCENTRICITY_DT); }
double cxHAUMEA_INCLINATION_DT(void) { return (HAUMEA_INCLINATION_DT); }
double cxHAUMEA_LONGITUDE_DT(void) { return (HAUMEA_LONGITUDE_DT); }
double cxHAUMEA_PERIAPSIS_DT(void) { return (HAUMEA_PERIAPSIS_DT); }
double cxHAUMEA_ASCENDING_DT(void) { return (HAUMEA_ASCENDING_DT); }
double cxEARTH_GRAVITYA(void) { return (EARTH_GRAVITYA); }
double cxEARTH_GRAVITYB(void) { return (EARTH_GRAVITYB); }
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
#include "Kwelements.h"
double orbitgm_v(double gm_gm
      , double orbit_m)
{
   return (sqrt(gm_gm / orbit_m));
}
double orbit_v(double mass_kg
      , double orbit_m)
{
   return (orbitgm_v(GRAVITATION * mass_kg, orbit_m));
}
double margot(double pmass
      , double porbit)
{
   double retvalu;
   if (pmass <= 0.0 || porbit <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 5.0401742E-10 * pmass / exp(log(porbit) * 1.125);
   }
   return (retvalu);
}
double sternlevison(double pmass
      , double porbit)
{
   double retvalu;
   double xx;
   if (pmass <= 0.0 || porbit <= 0.0) {
      retvalu = 0.0;
   } else {
      xx = 2.0 * log(pmass) - 1.5 * log(porbit);
      retvalu = 2.482E-28 * exp(xx);
   }
   return (retvalu);
}
static const int LC_P1_ERR = (- 1);
static const int LC_P1_PREV_PL = (- 1);
static const int LC_P1_SUN = 0;
static const int LC_P1_MERCURY = 1;
static const int LC_P1_VENUS = 2;
static const int LC_P1_EARTH = 3;
static const int LC_P1_MARS = 4;
static const int LC_P1_JUPITER = 5;
static const int LC_P1_SATURN = 6;
static const int LC_P1_URANUS = 7;
static const int LC_P1_NEPTUNE = 8;
static const int LC_P1_PLUTO = 9;
static const int LC_P1_CERES = 10;
static const int LC_P1_ERIS = 11;
static const int LC_P1_MAKEMAKE = 12;
static const int LC_P1_HAUMEA = 13;
#define LC_P1_CNT 14
static const int LC_P2_GM = 0;
static const int LC_P2_DAY = 1;
static const int LC_P2_FLATNESS = 2;
static const int LC_P2_A = 3;
static const int LC_P2_C = 4;
static const int LC_P2_YEAR = 5;
static const int LC_P2_ORB = 6;
static const int LC_P2_ECC = 7;
static const int LC_P2_INC = 8;
static const int LC_P2_LON = 9;
static const int LC_P2_PER = 10;
static const int LC_P2_ASC = 11;
static const int LC_P2_ORB_DT = 12;
static const int LC_P2_ECC_DT = 13;
static const int LC_P2_INC_DT = 14;
static const int LC_P2_LON_DT = 15;
static const int LC_P2_PER_DT = 16;
static const int LC_P2_ASC_DT = 17;
#define LC_P2_CNT 18
static double lv_plsun_arr[3];
static double lv_plgeo_arr[3];
static long lv_pl_ind = LC_P1_PREV_PL;
static double lv_pl_mtrx[LC_P1_CNT][LC_P2_CNT];
static double lv_pl_earth_year = EARTH_YEAR;
static double lv_pl_jtwoktime = 1.0 / 64.0;
static long lf_pl_init(long plnt)
{
   // local-use C lv_pl_ind;
   // local-use C lv_pl_mtrx;
   if (lv_pl_ind < 0) {
      lv_pl_mtrx[LC_P1_SUN][LC_P2_GM] = SUN_GM;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_DAY] = SUN_DAY;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_FLATNESS] = SUN_FLATNESS;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_A] = SUN_A;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_C] = SUN_C;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_YEAR] = SUN_YEAR;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ORB] = SUN_ORBIT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ECC] = SUN_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_INC] = SUN_INCLINATION;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_LON] = SUN_LONGITUDE;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_PER] = SUN_PERIAPSIS;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ASC] = SUN_ASCENDING;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ORB_DT] = SUN_ORBIT_DT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ECC_DT] = SUN_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_INC_DT] = SUN_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_LON_DT] = SUN_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_PER_DT] = SUN_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_SUN][LC_P2_ASC_DT] = SUN_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_GM] = MERCURY_GM;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_DAY] = MERCURY_DAY;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_FLATNESS] = MERCURY_FLATNESS;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_A] = MERCURY_A;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_C] = MERCURY_C;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_YEAR] = MERCURY_YEAR;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ORB] = MERCURY_ORBIT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ECC] = MERCURY_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_INC] = MERCURY_INCLINATION;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_LON] = MERCURY_LONGITUDE;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_PER] = MERCURY_PERIAPSIS;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ASC] = MERCURY_ASCENDING;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ORB_DT] = MERCURY_ORBIT_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ECC_DT] = MERCURY_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_INC_DT] = MERCURY_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_LON_DT] = MERCURY_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_PER_DT] = MERCURY_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_MERCURY][LC_P2_ASC_DT] = MERCURY_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_GM] = VENUS_GM;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_DAY] = VENUS_DAY;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_FLATNESS] = VENUS_FLATNESS;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_A] = VENUS_A;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_C] = VENUS_C;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_YEAR] = VENUS_YEAR;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ORB] = VENUS_ORBIT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ECC] = VENUS_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_INC] = VENUS_INCLINATION;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_LON] = VENUS_LONGITUDE;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_PER] = VENUS_PERIAPSIS;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ASC] = VENUS_ASCENDING;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ORB_DT] = VENUS_ORBIT_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ECC_DT] = VENUS_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_INC_DT] = VENUS_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_LON_DT] = VENUS_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_PER_DT] = VENUS_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_VENUS][LC_P2_ASC_DT] = VENUS_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_GM] = EARTH_GM;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_DAY] = EARTH_DAY;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_FLATNESS] = EARTH_FLATNESS;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_A] = EARTH_A;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_C] = EARTH_C;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_YEAR] = EARTH_YEAR;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ORB] = EARTH_ORBIT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ECC] = EARTH_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_INC] = EARTH_INCLINATION;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_LON] = EARTH_LONGITUDE;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_PER] = EARTH_PERIAPSIS;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ASC] = EARTH_ASCENDING;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ORB_DT] = EARTH_ORBIT_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ECC_DT] = EARTH_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_INC_DT] = EARTH_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_LON_DT] = EARTH_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_PER_DT] = EARTH_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_EARTH][LC_P2_ASC_DT] = EARTH_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_GM] = MARS_GM;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_DAY] = MARS_DAY;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_FLATNESS] = MARS_FLATNESS;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_A] = MARS_A;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_C] = MARS_C;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_YEAR] = MARS_YEAR;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ORB] = MARS_ORBIT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ECC] = MARS_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_INC] = MARS_INCLINATION;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_LON] = MARS_LONGITUDE;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_PER] = MARS_PERIAPSIS;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ASC] = MARS_ASCENDING;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ORB_DT] = MARS_ORBIT_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ECC_DT] = MARS_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_INC_DT] = MARS_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_LON_DT] = MARS_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_PER_DT] = MARS_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_MARS][LC_P2_ASC_DT] = MARS_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_GM] = JUPITER_GM;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_DAY] = JUPITER_DAY;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_FLATNESS] = JUPITER_FLATNESS;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_A] = JUPITER_A;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_C] = JUPITER_C;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_YEAR] = JUPITER_YEAR;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ORB] = JUPITER_ORBIT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ECC] = JUPITER_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_INC] = JUPITER_INCLINATION;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_LON] = JUPITER_LONGITUDE;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_PER] = JUPITER_PERIAPSIS;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ASC] = JUPITER_ASCENDING;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ORB_DT] = JUPITER_ORBIT_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ECC_DT] = JUPITER_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_INC_DT] = JUPITER_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_LON_DT] = JUPITER_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_PER_DT] = JUPITER_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_JUPITER][LC_P2_ASC_DT] = JUPITER_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_GM] = SATURN_GM;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_DAY] = SATURN_DAY;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_FLATNESS] = SATURN_FLATNESS;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_A] = SATURN_A;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_C] = SATURN_C;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_YEAR] = SATURN_YEAR;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ORB] = SATURN_ORBIT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ECC] = SATURN_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_INC] = SATURN_INCLINATION;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_LON] = SATURN_LONGITUDE;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_PER] = SATURN_PERIAPSIS;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ASC] = SATURN_ASCENDING;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ORB_DT] = SATURN_ORBIT_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ECC_DT] = SATURN_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_INC_DT] = SATURN_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_LON_DT] = SATURN_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_PER_DT] = SATURN_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_SATURN][LC_P2_ASC_DT] = SATURN_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_GM] = URANUS_GM;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_DAY] = URANUS_DAY;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_FLATNESS] = URANUS_FLATNESS;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_A] = URANUS_A;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_C] = URANUS_C;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_YEAR] = URANUS_YEAR;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ORB] = URANUS_ORBIT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ECC] = URANUS_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_INC] = URANUS_INCLINATION;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_LON] = URANUS_LONGITUDE;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_PER] = URANUS_PERIAPSIS;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ASC] = URANUS_ASCENDING;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ORB_DT] = URANUS_ORBIT_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ECC_DT] = URANUS_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_INC_DT] = URANUS_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_LON_DT] = URANUS_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_PER_DT] = URANUS_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_URANUS][LC_P2_ASC_DT] = URANUS_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_GM] = NEPTUNE_GM;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_DAY] = NEPTUNE_DAY;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_FLATNESS] = NEPTUNE_FLATNESS;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_A] = NEPTUNE_A;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_C] = NEPTUNE_C;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_YEAR] = NEPTUNE_YEAR;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ORB] = NEPTUNE_ORBIT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ECC] = NEPTUNE_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_INC] = NEPTUNE_INCLINATION;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_LON] = NEPTUNE_LONGITUDE;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_PER] = NEPTUNE_PERIAPSIS;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ASC] = NEPTUNE_ASCENDING;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ORB_DT] = NEPTUNE_ORBIT_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ECC_DT] = NEPTUNE_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_INC_DT] = NEPTUNE_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_LON_DT] = NEPTUNE_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_PER_DT] = NEPTUNE_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_NEPTUNE][LC_P2_ASC_DT] = NEPTUNE_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_GM] = PLUTO_GM;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_DAY] = PLUTO_DAY;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_FLATNESS] = PLUTO_FLATNESS;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_A] = PLUTO_A;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_C] = PLUTO_C;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_YEAR] = PLUTO_YEAR;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ORB] = PLUTO_ORBIT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ECC] = PLUTO_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_INC] = PLUTO_INCLINATION;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_LON] = PLUTO_LONGITUDE;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_PER] = PLUTO_PERIAPSIS;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ASC] = PLUTO_ASCENDING;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ORB_DT] = PLUTO_ORBIT_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ECC_DT] = PLUTO_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_INC_DT] = PLUTO_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_LON_DT] = PLUTO_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_PER_DT] = PLUTO_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_PLUTO][LC_P2_ASC_DT] = PLUTO_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_GM] = CERES_GM;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_DAY] = CERES_DAY;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_FLATNESS] = CERES_FLATNESS;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_A] = CERES_A;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_C] = CERES_C;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_YEAR] = CERES_YEAR;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ORB] = CERES_ORBIT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ECC] = CERES_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_INC] = CERES_INCLINATION;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_LON] = CERES_LONGITUDE;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_PER] = CERES_PERIAPSIS;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ASC] = CERES_ASCENDING;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ORB_DT] = CERES_ORBIT_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ECC_DT] = CERES_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_INC_DT] = CERES_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_LON_DT] = CERES_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_PER_DT] = CERES_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_CERES][LC_P2_ASC_DT] = CERES_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_GM] = ERIS_GM;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_DAY] = ERIS_DAY;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_FLATNESS] = ERIS_FLATNESS;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_A] = ERIS_A;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_C] = ERIS_C;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_YEAR] = ERIS_YEAR;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ORB] = ERIS_ORBIT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ECC] = ERIS_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_INC] = ERIS_INCLINATION;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_LON] = ERIS_LONGITUDE;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_PER] = ERIS_PERIAPSIS;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ASC] = ERIS_ASCENDING;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ORB_DT] = ERIS_ORBIT_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ECC_DT] = ERIS_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_INC_DT] = ERIS_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_LON_DT] = ERIS_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_PER_DT] = ERIS_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_ERIS][LC_P2_ASC_DT] = ERIS_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_GM] = MAKEMAKE_GM;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_DAY] = MAKEMAKE_DAY;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_FLATNESS] = MAKEMAKE_FLATNESS;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_A] = MAKEMAKE_A;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_C] = MAKEMAKE_C;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_YEAR] = MAKEMAKE_YEAR;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ORB] = MAKEMAKE_ORBIT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ECC] = MAKEMAKE_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_INC] = MAKEMAKE_INCLINATION;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_LON] = MAKEMAKE_LONGITUDE;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_PER] = MAKEMAKE_PERIAPSIS;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ASC] = MAKEMAKE_ASCENDING;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ORB_DT] = MAKEMAKE_ORBIT_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ECC_DT] = MAKEMAKE_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_INC_DT] = MAKEMAKE_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_LON_DT] = MAKEMAKE_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_PER_DT] = MAKEMAKE_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_MAKEMAKE][LC_P2_ASC_DT] = MAKEMAKE_ASCENDING_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_GM] = HAUMEA_GM;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_DAY] = HAUMEA_DAY;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_FLATNESS] = HAUMEA_FLATNESS;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_A] = HAUMEA_A;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_C] = HAUMEA_C;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_YEAR] = HAUMEA_YEAR;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ORB] = HAUMEA_ORBIT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ECC] = HAUMEA_ECCENTRICITY;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_INC] = HAUMEA_INCLINATION;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_LON] = HAUMEA_LONGITUDE;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_PER] = HAUMEA_PERIAPSIS;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ASC] = HAUMEA_ASCENDING;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ORB_DT] = HAUMEA_ORBIT_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ECC_DT] = HAUMEA_ECCENTRICITY_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_INC_DT] = HAUMEA_INCLINATION_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_LON_DT] = HAUMEA_LONGITUDE_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_PER_DT] = HAUMEA_PERIAPSIS_DT;
      lv_pl_mtrx[LC_P1_HAUMEA][LC_P2_ASC_DT] = HAUMEA_ASCENDING_DT;
      if (0 < lv_pl_jtwoktime && lv_pl_jtwoktime < 1.0 / 32.0) {
         (void) plsettime(uet2j2k(timee()));
      }
      lv_pl_earth_year = EARTH_YEAR;
   }
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      lv_pl_ind = plnt;
   } else if (plnt == LC_P1_PREV_PL) {
      if (lv_pl_ind < 0) {
         lv_pl_ind = LC_P1_EARTH;
      }
   } else {
      lv_pl_ind = LC_P1_PREV_PL;
   }
   return (lv_pl_ind);
}
static double lf_val(long pa_ind
      , long pb_bb
      , long pb_bbd)
{
   long pl_ind;
   double retvalu;
   if (pa_ind < LC_P1_PREV_PL || LC_P1_CNT <= pa_ind) {
      retvalu = LC_P1_ERR;
   } else {
      pl_ind = pl(pa_ind);
      retvalu = (lv_pl_mtrx[pl_ind][pb_bb] + lv_pl_jtwoktime *\
               lv_pl_mtrx[pl_ind][pb_bbd]);
   }
   return (retvalu);
}
long pl(long plnt)
{
   return (lf_pl_init(plnt));
}
double plsettime(double jtwokdate)
{
   lv_pl_jtwoktime = jtwokdate * JDAY;
   return (lv_pl_jtwoktime);
}
double pl_gm(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_GM];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_GM];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double plgm(void)
{
   // local-use C lv_pl_ind;
   return (pl_gm(LC_P1_PREV_PL));
}
double pl_year(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_YEAR];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_YEAR];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double plyear(void)
{
   // local-use C lv_pl_ind;
   return (pl_year(LC_P1_PREV_PL));
}
double pl_day(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_DAY];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_DAY];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double plday(void)
{
   // local-use C lv_pl_ind;
   return (pl_day(LC_P1_PREV_PL));
}
double pl_flatness(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_FLATNESS];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_FLATNESS];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double plflatness(void)
{
   // local-use C lv_pl_ind;
   return (pl_flatness(LC_P1_PREV_PL));
}
double pl_a(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_A];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_A];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double pla(void)
{
   // local-use C lv_pl_ind;
   return (pl_a(LC_P1_PREV_PL));
}
double pl_c(long plnt)
{
   // local-use C lv_pl_mtrx;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_CNT) {
      retvalu = lv_pl_mtrx[plnt][LC_P2_C];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_mtrx[lv_pl_ind][LC_P2_C];
   } else {
      retvalu = LC_P1_ERR;
   }
   return (retvalu);
}
double plc(void)
{
   // local-use C lv_pl_ind;
   return (pl_c(LC_P1_PREV_PL));
}
double pl_orbit(long plnt)
{
   return (lf_val(plnt, LC_P2_ORB, LC_P2_ORB_DT));
}
double plorbit(void)
{
   // local-use C lv_pl_ind;
   return (pl_orbit(LC_P1_PREV_PL));
}
double pl_eccentricity(long plnt)
{
   return (lf_val(plnt, LC_P2_ECC, LC_P2_ECC_DT));
}
double pleccentricity(void)
{
   // local-use C lv_pl_ind;
   return (pl_eccentricity(LC_P1_PREV_PL));
}
double pl_inclination(long plnt)
{
   return (lf_val(plnt, LC_P2_INC, LC_P2_INC_DT));
}
double plinclination(void)
{
   // local-use C lv_pl_ind;
   return (pl_inclination(LC_P1_PREV_PL));
}
double pl_longitude(long plnt)
{
   return (lf_val(plnt, LC_P2_LON, LC_P2_LON_DT));
}
double pllongitude(void)
{
   // local-use C lv_pl_ind;
   return (pl_longitude(LC_P1_PREV_PL));
}
double pl_periapsis(long plnt)
{
   return (lf_val(plnt, LC_P2_PER, LC_P2_PER_DT));
}
double plperiapsis(void)
{
   // local-use C lv_pl_ind;
   return (pl_periapsis(LC_P1_PREV_PL));
}
double pl_ascending(long plnt)
{
   return (lf_val(plnt, LC_P2_ASC, LC_P2_ASC_DT));
}
double plascending(void)
{
   // local-use C lv_pl_ind;
   return (pl_ascending(LC_P1_PREV_PL));
}
double pl_mass(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_gm(plnt) / GRAVITATION;
   }
   return (retvalu);
}
double plmass(void)
{
   // local-use C lv_pl_ind;
   return (pl_mass(LC_P1_PREV_PL));
}
double pl_b(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = (1.0 - pl_flatness(plnt)) * pl_a(plnt);
   }
   return (retvalu);
}
double plb(void)
{
   // local-use C lv_pl_ind;
   return (pl_b(LC_P1_PREV_PL));
}
double pl_radius(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = (pl_a(plnt) + pl_b(plnt) + pl_c(plnt)) / 3.0;
   }
   return (retvalu);
}
double plradius(void)
{
   // local-use C lv_pl_ind;
   return (pl_radius(LC_P1_PREV_PL));
}
double pl_gravity(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_gm(plnt) / square(pl_radius(plnt));
   }
   return (retvalu);
}
double plgravity(void)
{
   // local-use C lv_pl_ind;
   return (pl_gravity(LC_P1_PREV_PL));
}
double pl_meananomaly(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = fmodu(pl_longitude(plnt) - pl_periapsis(plnt), TAU);
   }
   return (retvalu);
}
double plmeananomaly(void)
{
   // local-use C lv_pl_ind;
   return (pl_meananomaly(LC_P1_PREV_PL));
}
double pl_escape(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = sqrt(2.0 * pl_gm(plnt) / pl_radius(plnt));
   }
   return (retvalu);
}
double plescape(void)
{
   // local-use C lv_pl_ind;
   return (pl_escape(LC_P1_PREV_PL));
}
double pl_synodic(long plnt)
{
   // local-use C lv_pl_earth_year;
   double yra;
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      yra = pl_year(plnt);
      retvalu = divi(yra * lv_pl_earth_year, fabs(yra - lv_pl_earth_year)\
               , 0.0);
   }
   return (retvalu);
}
double plsynodic(void)
{
   // local-use C lv_pl_ind;
   return (pl_synodic(LC_P1_PREV_PL));
}
double pl_volume(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = 2.0 * TAU * pl_a(plnt) * pl_b(plnt) * pl_c(plnt) / 3.0;
   }
   return (retvalu);
}
double plvolume(void)
{
   // local-use C lv_pl_ind;
   return (pl_volume(LC_P1_PREV_PL));
}
double pl_surface(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = ellipsoid_surface(pl_a(plnt), pl_b(plnt), pl_c(plnt));
   }
   return (retvalu);
}
double plsurface(void)
{
   // local-use C lv_pl_ind;
   return (pl_surface(LC_P1_PREV_PL));
}
double pl_density(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_mass(plnt) / pl_volume(plnt);
   }
   return (retvalu);
}
double pldensity(void)
{
   // local-use C lv_pl_ind;
   return (pl_density(LC_P1_PREV_PL));
}
double pl_argument(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_periapsis(plnt) - pl_ascending(plnt);
   }
   return (retvalu);
}
double plargument(void)
{
   // local-use C lv_pl_ind;
   return (pl_argument(LC_P1_PREV_PL));
}
double pl_margot(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = margot(pl_mass(plnt), pl_orbit(plnt));
   }
   return (retvalu);
}
double plmargot(void)
{
   // local-use C lv_pl_ind;
   return (pl_margot(LC_P1_PREV_PL));
}
double pl_sternlevison(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = sternlevison(pl_mass(plnt), pl_orbit(plnt));
   }
   return (retvalu);
}
double plsternlevison(void)
{
   // local-use C lv_pl_ind;
   return (pl_sternlevison(LC_P1_PREV_PL));
}
double pl_perihelion(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_orbit(plnt) * (1.0 - pl_eccentricity(plnt));
   }
   return (retvalu);
}
double plperihelion(void)
{
   // local-use C lv_pl_ind;
   return (pl_perihelion(LC_P1_PREV_PL));
}
double pl_aphelion(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = pl_orbit(plnt) * (1.0 + pl_eccentricity(plnt));
   }
   return (retvalu);
}
double plaphelion(void)
{
   // local-use C lv_pl_ind;
   return (pl_aphelion(LC_P1_PREV_PL));
}
double eccentric_anomaly(double mean_ano_rad
      , double eccen)
{
   double mrad;
   double xrad;
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   mrad = fmodu(mean_ano_rad, tur2rad(1.0));
   xrad = mrad + eccen * sin(mrad);
   nrvx_xx = xrad;
   for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
      nrvx_xp = nrvx_xx;
      nrvx_dy = 1.0 - eccen * cos(nrvx_xx);
      if (iszero(nrvx_dy)) {
         break;
      }
      nrvx_yy = nrvx_xx - eccen * sin(nrvx_xx) - mean_ano_rad;
      nrvx_xx -= nrvx_yy / nrvx_dy;
      if (iseq(nrvx_xp, nrvx_xx)) {
         break;
      }
   }
   return (nrvx_xx);
}
double pl_eccentricanomaly(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_CNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = eccentric_anomaly(pl_meananomaly(plnt),\
               pl_eccentricity(plnt));
   }
   return (retvalu);
}
double pleccentricanomaly(void)
{
   // local-use C lv_pl_ind;
   return (pl_eccentricanomaly(LC_P1_PREV_PL));
}
double pl_heliocentric(long plnt
      , double jtwok)
{
   // local-use C lv_plsun_arr;
   // local-use C lv_plgeo_arr;
   double orb_m;
   double eccen;
   double inc_rad;
   double lon_rad;
   double per_rad;
   double asc_rad;
   double arg_rad;
   double mean_anomaly_rad;
   double eano_rad;
   double dxx_m;
   double dyy_m;
   double ci;
   double co;
   double cw;
   double si;
   double so;
   double sw;
   double swci;
   double cwci;
   double obl_rad;
   double retvalu;
   if (lf_pl_init(plnt) < 0.0) {
      retvalu = LC_P1_ERR;
   } else {
      (void) plsettime(jtwok);
      orb_m = plorbit();
      eccen = pleccentricity();
      inc_rad = plinclination();
      lon_rad = pllongitude();
      per_rad = plperiapsis();
      asc_rad = plascending();
      arg_rad = per_rad - asc_rad;
      mean_anomaly_rad = fmod(lon_rad - per_rad, tur2rad(1.0));
      eano_rad = eccentric_anomaly(mean_anomaly_rad, eccen);
      dxx_m = orb_m * (cos(eano_rad) - eccen);
      dyy_m = orb_m * topyh1(eccen) * sin(eano_rad);
      cw = cos(arg_rad);
      sw = sin(arg_rad);
      co = cos(asc_rad);
      so = sin(asc_rad);
      ci = cos(inc_rad);
      si = sin(inc_rad);
      swci = sw * ci;
      cwci = cw * ci;
      lv_plsun_arr[0] = (dxx_m * (cw * co - swci * so) - dyy_m * (sw * co\
               + cwci * so));
      lv_plsun_arr[1] = (dxx_m * (cw * so + swci * co) - dyy_m * (sw * so\
               - cwci * co));
      lv_plsun_arr[2] = (dxx_m * (sw * si) + dyy_m * (cw * si));
      obl_rad = earthobliquity(jtwok);
      co = cos(obl_rad);
      so = sin(obl_rad);
      lv_plgeo_arr[0] = lv_plsun_arr[0];
      lv_plgeo_arr[1] = co * lv_plsun_arr[1] - so * lv_plsun_arr[2];
      lv_plgeo_arr[2] = so * lv_plsun_arr[1] + co * lv_plsun_arr[2];
      retvalu = hypot3(lv_plsun_arr[0], lv_plsun_arr[1], lv_plsun_arr[2]);
   }
   return (retvalu);
}
double plhelio(long indd)
{
   // local-use C lv_plsun_arr;
   double retvalu;
   if (0 <= indd && indd < 3) {
      retvalu = lv_plsun_arr[indd];
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double plgeo(long indd)
{
   // local-use C lv_plgeo_arr;
   double retvalu;
   if (0 <= indd && indd < 3) {
      retvalu = lv_plgeo_arr[indd];
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
long pl_name(long plnt)
{
   long plnt_ind;
   plnt_ind = lf_pl_init(plnt);
   if (plnt_ind == LC_P1_SUN) {
      printf("%s", "SUN      ");
   } else if (plnt_ind == LC_P1_MERCURY) {
      printf("%s", "MERCURY  ");
   } else if (plnt_ind == LC_P1_VENUS) {
      printf("%s", "VENUS    ");
   } else if (plnt_ind == LC_P1_EARTH) {
      printf("%s", "EARTH    ");
   } else if (plnt_ind == LC_P1_MARS) {
      printf("%s", "MARS     ");
   } else if (plnt_ind == LC_P1_JUPITER) {
      printf("%s", "JUPITER  ");
   } else if (plnt_ind == LC_P1_SATURN) {
      printf("%s", "SATURN   ");
   } else if (plnt_ind == LC_P1_URANUS) {
      printf("%s", "URANUS   ");
   } else if (plnt_ind == LC_P1_NEPTUNE) {
      printf("%s", "NEPTUNE  ");
   } else if (plnt_ind == LC_P1_PLUTO) {
      printf("%s", "PLUTO    ");
   } else if (plnt_ind == LC_P1_CERES) {
      printf("%s", "CERES    ");
   } else if (plnt_ind == LC_P1_ERIS) {
      printf("%s", "ERIS     ");
   } else if (plnt_ind == LC_P1_MAKEMAKE) {
      printf("%s", "MAKEMAKE ");
   } else if (plnt_ind == LC_P1_HAUMEA) {
      printf("%s", "HAUMEA   ");
   } else {
      printf("%s", "UNKNOWN");
      printf("%.18g", (double)plnt_ind);
   }
   return (plnt_ind);
}
double plname(void)
{
   // local-use C lv_pl_ind;
   return (pl_name(LC_P1_PREV_PL));
}
double earthradius(double lat_deg)
{
   return (pl_aradius(LC_P1_EARTH, lat_deg));
}
double earthtropicalyear(double jtwokdate)
{
   double jy;
   jy = jtwokdate * DAY / JYEAR;
   return (((((2.64E-16) * jy - 7.29E-14) * jy - 6.15359E-8) * jy +\
            365.2421896698));
}
double earthdistance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg)
{
   return (EARTH_A * great_circle_distance(deg2rad(lata_deg),\
            deg2rad(lona_deg), deg2rad(latb_deg), deg2rad(lonb_deg)));
}
double plaradius(double lat_deg)
{
   double calat;
   double sblat;
   double aa;
   double bb;
   aa = square(pla());
   bb = square(plb());
   calat = square(pla() * cosd(lat_deg));
   sblat = square(plb() * sind(lat_deg));
   return (sqrt((aa * calat + bb * sblat) / (calat + sblat)));
}
double pl_aradius(long plnt
      , double lat_deg)
{
   (void) pl(plnt);
   return (plaradius(lat_deg));
}
double earthobliquity(double jtwok)
{
   double tmill;
   double ob_arcsec;
   tmill = jtwok * DAY / (1.0E+4 * JYEAR);
   ob_arcsec = (((((((((((2.45) * tmill + 5.79) * tmill + 27.8) * tmill +\
            7.12) * tmill - 39.05) * tmill - 249.67) * tmill - 51.38) *\
            tmill + 1999.25) * tmill - 1.55) * tmill - 4680.93) * tmill +\
            84381.448);
   return (sec2rad(ob_arcsec));
}
double earthprecession(double jtwok)
{
   double tmill;
   double ob_arcsec;
   tmill = jtwok * DAY / (1.0E+4 * JYEAR);
   ob_arcsec = ((((((((((-8.66) * tmill - 47.59) * tmill + 24.24) * tmill\
            + 130.95) * tmill + 174.51) * tmill - 180.55) * tmill -\
            2353.16) * tmill + 77.32) * tmill + 11119.71) * tmill +\
            502909.66) * tmill + 0.0;
   return (sec2rad(ob_arcsec));
}
double earthgravity(double lat_deg)
{
   double slatsq;
   double obltsq;
   double kk;
   slatsq = square(sind(lat_deg));
   obltsq = EARTH_FLATNESS * (2.0 - EARTH_FLATNESS);
   kk = (((1.0 - EARTH_FLATNESS) * EARTH_GRAVITYB) - EARTH_GRAVITYA);
   return ((EARTH_GRAVITYA + kk * slatsq) / sqrt(1.0 - obltsq * slatsq));
}
double earthgravity_height(double lat_deg
      , double height_m)
{
   return ((earthgravity(lat_deg) - height_m * 2.0 * EARTH_GM /\
            cube(EARTH_A)));
}
#define LC_ISA_CNT 12
static const int LC_ISA_TEMP = 0;
static const int LC_ISA_PRES = 1;
static const int LC_ISA_DENS = 2;
static const int LC_ISA_HEIGHT = 3;
#define LC_ISA_KEY_CNT 4
static double lv_isa_mtrx[LC_ISA_CNT][LC_ISA_KEY_CNT];
static double lv_isa_magic = 0.0;
static double lf_isa_calc(double height_m
      , long state_x)
{
   // local-use C lv_isa_mtrx;
   // local-use C lv_isa_magic;
   long h_ind;
   double air_k_per_m;
   double expon;
   double this_temp;
   double delta_h;
   double retvalu;
   double tdiff;
   double hdiff;
   double lapse_kpm;
   if (! ismagic(lv_isa_magic)) {
      lv_isa_mtrx[0][LC_ISA_HEIGHT] = 0.0;
      lv_isa_mtrx[0][LC_ISA_TEMP] = 288.15;
      lv_isa_mtrx[0][LC_ISA_PRES] = ATM;
      lv_isa_mtrx[0][LC_ISA_DENS] = 1.2250;
      lv_isa_mtrx[1][LC_ISA_HEIGHT] = 1.1E+4;
      lv_isa_mtrx[1][LC_ISA_TEMP] = 216.65;
      lv_isa_mtrx[1][LC_ISA_PRES] = 22632.10;
      lv_isa_mtrx[1][LC_ISA_DENS] = 0.36391;
      lv_isa_mtrx[2][LC_ISA_HEIGHT] = 2.0E+4;
      lv_isa_mtrx[2][LC_ISA_TEMP] = 216.65;
      lv_isa_mtrx[2][LC_ISA_PRES] = 5474.89;
      lv_isa_mtrx[2][LC_ISA_DENS] = 0.08803;
      lv_isa_mtrx[3][LC_ISA_HEIGHT] = 3.2E+4;
      lv_isa_mtrx[3][LC_ISA_TEMP] = 228.65;
      lv_isa_mtrx[3][LC_ISA_PRES] = 868.02;
      lv_isa_mtrx[3][LC_ISA_DENS] = 0.01322;
      lv_isa_mtrx[4][LC_ISA_HEIGHT] = 4.7E+4;
      lv_isa_mtrx[4][LC_ISA_TEMP] = 270.65;
      lv_isa_mtrx[4][LC_ISA_PRES] = 110.91;
      lv_isa_mtrx[4][LC_ISA_DENS] = 0.00143;
      lv_isa_mtrx[5][LC_ISA_HEIGHT] = 5.1E+4;
      lv_isa_mtrx[5][LC_ISA_TEMP] = 270.65;
      lv_isa_mtrx[5][LC_ISA_PRES] = 66.94;
      lv_isa_mtrx[5][LC_ISA_DENS] = 8.6E-4;
      lv_isa_mtrx[6][LC_ISA_HEIGHT] = 7.1E+4;
      lv_isa_mtrx[6][LC_ISA_TEMP] = 214.65;
      lv_isa_mtrx[6][LC_ISA_PRES] = 3.96;
      lv_isa_mtrx[6][LC_ISA_DENS] = 6.4E-5;
      lv_isa_mtrx[7][LC_ISA_HEIGHT] = 84852;
      lv_isa_mtrx[7][LC_ISA_TEMP] = 186.87;
      lv_isa_mtrx[7][LC_ISA_PRES] = 0.3734;
      lv_isa_mtrx[7][LC_ISA_DENS] = 7.0E-6;
      lv_isa_mtrx[8][LC_ISA_HEIGHT] = 89700;
      lv_isa_mtrx[8][LC_ISA_TEMP] = 186.87;
      lv_isa_mtrx[8][LC_ISA_PRES] = 0.15;
      lv_isa_mtrx[8][LC_ISA_DENS] = 3.0E-6;
      lv_isa_mtrx[9][LC_ISA_HEIGHT] = 100400;
      lv_isa_mtrx[9][LC_ISA_TEMP] = 199.55;
      lv_isa_mtrx[9][LC_ISA_PRES] = 0.02;
      lv_isa_mtrx[9][LC_ISA_DENS] = 5.0E-7;
      lv_isa_mtrx[10][LC_ISA_HEIGHT] = 105000;
      lv_isa_mtrx[10][LC_ISA_TEMP] = 217.65;
      lv_isa_mtrx[10][LC_ISA_PRES] = 0.01;
      lv_isa_mtrx[10][LC_ISA_DENS] = 2.0E-7;
      lv_isa_mtrx[11][LC_ISA_HEIGHT] = 110000;
      lv_isa_mtrx[11][LC_ISA_TEMP] = 263.95;
      lv_isa_mtrx[11][LC_ISA_PRES] = 0.01;
      lv_isa_mtrx[11][LC_ISA_DENS] = 1.0E-7;
      lv_isa_magic = magicset();
   }
   h_ind = LC_ISA_CNT - 1;
   while (height_m < lv_isa_mtrx[h_ind][LC_ISA_HEIGHT] && 0 < h_ind) {
      h_ind -= 1;
   }
   delta_h = height_m - lv_isa_mtrx[h_ind][LC_ISA_HEIGHT];
   if (h_ind < LC_ISA_CNT - 1) {
      tdiff = lv_isa_mtrx[h_ind + 1][LC_ISA_TEMP] -\
               lv_isa_mtrx[h_ind][LC_ISA_TEMP];
      hdiff = lv_isa_mtrx[h_ind + 1][LC_ISA_HEIGHT] -\
               lv_isa_mtrx[h_ind][LC_ISA_HEIGHT];
      lapse_kpm = tdiff / hdiff;
   } else {
      lapse_kpm = 0.003;
   }
   this_temp = lv_isa_mtrx[h_ind][LC_ISA_TEMP] + lapse_kpm * delta_h;
   if (state_x == LC_ISA_TEMP) {
      retvalu = this_temp;
   } else {
      air_k_per_m = GRAVITY * AIR_MASS / GAS;
      if (iszero(lapse_kpm)) {
         retvalu = exp(-air_k_per_m * delta_h /\
                  lv_isa_mtrx[h_ind][LC_ISA_TEMP]);
      } else {
         expon = air_k_per_m / lapse_kpm;
         if (state_x == LC_ISA_DENS) {
            expon += 1;
         }
         retvalu = pow(lv_isa_mtrx[h_ind][LC_ISA_TEMP] / this_temp, expon);
      }
      if (state_x == LC_ISA_PRES) {
         retvalu *= lv_isa_mtrx[h_ind][LC_ISA_PRES];
      } else {
         retvalu *= lv_isa_mtrx[h_ind][LC_ISA_DENS];
      }
   }
   return (retvalu);
}
double isa_temp(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_TEMP));
}
double isa_pres(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_PRES));
}
double isa_dens(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_DENS));
}
double vin_distance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg
      , double *ret_bearings_arr_p)
{
   double retvalu;
   double rad_arr[2];
   retvalu = EARTH_A * ellipsoid_distance(EARTH_FLATNESS,\
            deg2rad(lata_deg), deg2rad(lona_deg), deg2rad(latb_deg),\
            deg2rad(lonb_deg), rad_arr);
   ret_bearings_arr_p[0] = rad2deg(rad_arr[0]);
   ret_bearings_arr_p[1] = rad2deg(rad_arr[1]);
   return (retvalu);
}
double vin_destination(double lata_deg
      , double lona_deg
      , double heading_deg
      , double dist_m
      , double *ret_dest_arr_p)
{
   double fltnss;
   double retvalu;
   double rad_arr[2];
   fltnss = EARTH_FLATNESS;
   retvalu = ellipsoid_destination(fltnss, deg2rad(lata_deg),\
            deg2rad(lona_deg), deg2rad(heading_deg), dist_m / EARTH_A,\
            rad_arr);
   ret_dest_arr_p[0] = rad2deg(rad_arr[0]);
   ret_dest_arr_p[1] = rad2deg(rad_arr[1]);
   return (rad2deg(retvalu));
}
static const int LC_PREM_DENS = 0;
static const int LC_PREM_MASS = 1;
static const int LC_PREM_XHEIGHT = 0;
static const int LC_PREM_XCOEA = 1;
static const int LC_PREM_XCOEB = 2;
static const int LC_PREM_XCOEC = 3;
static const int LC_PREM_XMASSD = 4;
static double lv_prem_mtrx[12][6];
static double lv_prem_magic = 0.0;
static double lf_prem(double height_m
      , long state_x)
{
   double coec;
   double coeb;
   double coea;
   double hght_i;
   double hght_j;
   double retvalu;
   double mass_a;
   double mass_b;
   double mass_i;
   double mass_ip;
   long ii;
   if (! ismagic(lv_prem_magic)) {
      lv_prem_mtrx[0][LC_PREM_XHEIGHT] = 0.0;
      lv_prem_mtrx[0][LC_PREM_XCOEA] = 0.0;
      lv_prem_mtrx[0][LC_PREM_XCOEB] = 0.0;
      lv_prem_mtrx[0][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[1][LC_PREM_XHEIGHT] = 1.2215E+6;
      lv_prem_mtrx[1][LC_PREM_XCOEA] = 1.3088E+4;
      lv_prem_mtrx[1][LC_PREM_XCOEB] = 1.911E-8;
      lv_prem_mtrx[1][LC_PREM_XCOEC] = -2.1773E-10;
      lv_prem_mtrx[2][LC_PREM_XHEIGHT] = 3.480E+6;
      lv_prem_mtrx[2][LC_PREM_XCOEA] = 1.2346E+4;
      lv_prem_mtrx[2][LC_PREM_XCOEB] = 1.3976E-4;
      lv_prem_mtrx[2][LC_PREM_XCOEC] = -2.4123E-10;
      lv_prem_mtrx[3][LC_PREM_XHEIGHT] = 3.630E+6;
      lv_prem_mtrx[3][LC_PREM_XCOEA] = 7.3067E+3;
      lv_prem_mtrx[3][LC_PREM_XCOEB] = -5.0007E-4;
      lv_prem_mtrx[3][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[4][LC_PREM_XHEIGHT] = 5.701E+6;
      lv_prem_mtrx[4][LC_PREM_XCOEA] = 6.7823E+3;
      lv_prem_mtrx[4][LC_PREM_XCOEB] = -2.4441E-4;
      lv_prem_mtrx[4][LC_PREM_XCOEC] = -3.0922E-11;
      lv_prem_mtrx[5][LC_PREM_XHEIGHT] = 5.771E+6;
      lv_prem_mtrx[5][LC_PREM_XCOEA] = 5.3197E+3;
      lv_prem_mtrx[5][LC_PREM_XCOEB] = -2.3286E-4;
      lv_prem_mtrx[5][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[6][LC_PREM_XHEIGHT] = 5.971E+6;
      lv_prem_mtrx[6][LC_PREM_XCOEA] = 1.1249E+4;
      lv_prem_mtrx[6][LC_PREM_XCOEB] = -1.2603E-3;
      lv_prem_mtrx[6][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[7][LC_PREM_XHEIGHT] = 6.151E+6;
      lv_prem_mtrx[7][LC_PREM_XCOEA] = 7.1083E+3;
      lv_prem_mtrx[7][LC_PREM_XCOEB] = -5.9706E-4;
      lv_prem_mtrx[7][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[8][LC_PREM_XHEIGHT] = 6.3466E+6;
      lv_prem_mtrx[8][LC_PREM_XCOEA] = 2.691E+3;
      lv_prem_mtrx[8][LC_PREM_XCOEB] = 1.0869E-4;
      lv_prem_mtrx[8][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[9][LC_PREM_XHEIGHT] = 6.356E+6;
      lv_prem_mtrx[9][LC_PREM_XCOEA] = 2.9E+3;
      lv_prem_mtrx[9][LC_PREM_XCOEB] = 0.0;
      lv_prem_mtrx[9][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[10][LC_PREM_XHEIGHT] = 6.368E+6;
      lv_prem_mtrx[10][LC_PREM_XCOEA] = 2.6E+3;
      lv_prem_mtrx[10][LC_PREM_XCOEB] = 0.0;
      lv_prem_mtrx[10][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[11][LC_PREM_XHEIGHT] = 6.371E+6;
      lv_prem_mtrx[11][LC_PREM_XCOEA] = 1.02E+3;
      lv_prem_mtrx[11][LC_PREM_XCOEB] = 0.0;
      lv_prem_mtrx[11][LC_PREM_XCOEC] = 0.0;
      lv_prem_mtrx[0][LC_PREM_XMASSD] = 0.0;
      mass_i = 0.0;
      for (ii = 1; ii <= 11; ii += 1) {
         hght_i = lv_prem_mtrx[ii - 1][LC_PREM_XHEIGHT];
         mass_b = 2.0 * TAU * hght_i * hght_i * hght_i *\
                  ((lv_prem_mtrx[ii][LC_PREM_XCOEC] / 5.0 * hght_i +\
                  lv_prem_mtrx[ii][LC_PREM_XCOEB] / 4.0) * hght_i +\
                  lv_prem_mtrx[ii][LC_PREM_XCOEA] / 3.0);
         hght_j = lv_prem_mtrx[ii][LC_PREM_XHEIGHT];
         mass_a = 2.0 * TAU * hght_j * hght_j * hght_j *\
                  ((lv_prem_mtrx[ii][LC_PREM_XCOEC] / 5.0 * hght_j +\
                  lv_prem_mtrx[ii][LC_PREM_XCOEB] / 4.0) * hght_j +\
                  lv_prem_mtrx[ii][LC_PREM_XCOEA] / 3.0);
         mass_ip = mass_i;
         mass_i += (mass_a - mass_b);
         lv_prem_mtrx[ii][LC_PREM_XMASSD] = mass_ip - mass_b;
      }
      lv_prem_magic = magicset();
   }
   if (height_m <= 0.0) {
      retvalu = 0.0;
   } else if (EARTH_RADIUS < height_m) {
      if (state_x == 0) {
         retvalu = 0.0;
      } else {
         retvalu = EARTH_MASS;
      }
   } else {
      ii = 0;
      while (lv_prem_mtrx[ii][LC_PREM_XHEIGHT] < height_m) {
         ii += 1;
      }
      coea = lv_prem_mtrx[ii][LC_PREM_XCOEA];
      coeb = lv_prem_mtrx[ii][LC_PREM_XCOEB];
      coec = lv_prem_mtrx[ii][LC_PREM_XCOEC];
      if (state_x == 0) {
         retvalu = (coec * height_m + coeb) * height_m + coea;
      } else if (state_x == 1) {
         hght_i = lv_prem_mtrx[ii][LC_PREM_XHEIGHT];
         coec /= 5.0;
         coeb /= 4.0;
         coea /= 3.0;
         mass_a = 2.0 * TAU * height_m * height_m * height_m * ((coec *\
                  height_m + coeb) * height_m + coea);
         retvalu = mass_a + lv_prem_mtrx[ii][LC_PREM_XMASSD];
      }
   }
   return (retvalu);
}
double prem_density(double height_m)
{
   return (lf_prem(height_m, LC_PREM_DENS));
}
double prem_mass(double height_m)
{
   return (lf_prem(height_m, LC_PREM_MASS));
}
double prem_g(double height_m)
{
   double retvalu;
   if (height_m <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = GRAVITATION * prem_mass(height_m) / (height_m * height_m);
   }
   return (retvalu);
}
