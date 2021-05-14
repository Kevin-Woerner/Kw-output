//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ########### SOURCE $KWROOT/codekdw/kw-lib/Kwsun.fwipp ############
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kwsun.varylog
#ifndef INCLUDED_Kwsun_h
#define INCLUDED_Kwsun_h
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
#include "Kwplanets.h"
//  CCCCCCCCCC_DEF ################################################# LANG_C #
#define ATMOSREFRACT_RAD (0.5667 * ARCDEG)
#define SUNBELOW_RAD (ATMOSREFRACT_RAD + SUN_RADIUS / EARTH_ORBIT * RADIAN)
//  CCCCCCCCCCX_FUNC_PROTO ######################################### LANG_C #
double cxATMOSREFRACT_RAD(void);
double cxSUNBELOW_RAD(void);
//  FFFFFFFFFFUNC_PROTOTYPE ######################################## LANG_C #
double timee(void);
double kwsun_obliquity_rad(double jtwok);
double kwsun_eccentricity(double jtwok);
double kwsun_perihelion_rad(double jtwok);
double kwsun_mean_anomaly_rad(double jtwok);
double kwsun_gmst_rad(double jtwok);
double kwsun_lmst_rad(double jtwok
      , double geo_longitude_deg);
double kwsunx_init(double jtwok
      , double tz_hr
      , double lon_deg
      , double lat_deg);
double kwsunx_set_day(void);
double kwsunx_rise_day(void);
double kwsunx_transit_day(void);
double kwsunx_dist_m(void);
double kwsunx_dec_rad(void);
double kwsunx_ra_rad(void);
double kwsun_eccentric_anomaly_rad(double ma_deg
      , double eccen);
double kwsun_sun(double jtwok);
double kwsun_dist_m(void);
double kwsun_dec_rad(void);
double kwsun_ra_rad(void);
double kwsun_sin_altitude_sun(double jtwok
      , double time_zone_in_hours
      , double geo_lon_deg
      , double geo_lat_deg);
double kwsun_rise_day(double jtwok
      , double tz_in_hours
      , double lon_deg
      , double lat_deg);
double kwsun_set_day(double jtwok
      , double tz_in_hours
      , double lon_deg
      , double lat_deg);
double kwsun_moon(double jtwok);
double kwsun_moon_dec_rad(void);
double kwsun_moon_ra_rad(void);
double kwsun_lunation(double nn);
//  DDDDDDDDDDescription ################################ kwsun_description #
#define Kwsun_DESCRIPTION \
   "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD"\
   "\n"\
   "   Kwsun 0-ary Functions: kwsun_dec_rad kwsun_dist_m kwsun_moon_dec_rad"\
   " kwsun_moon_ra_rad kwsun_ra_rad kwsunx_dec_rad kwsunx_dist_m kwsunx_ra_"\
   "rad kwsunx_rise_day kwsunx_set_day kwsunx_transit_day"\
   "\n"\
   "   Kwsun 1-ary Functions: kwsun_eccentricity kwsun_gmst_rad kwsun_lunat"\
   "ion kwsun_mean_anomaly_rad kwsun_moon kwsun_obliquity_rad kwsun_perihel"\
   "ion_rad kwsun_sun"\
   "\n"\
   "   Kwsun 2-ary Functions: kwsun_eccentric_anomaly_rad kwsun_lmst_rad"\
   "\n"\
   "   Kwsun 4-ary Functions: kwsun_rise_day kwsun_set_day kwsun_sin_altitu"\
   "de_sun kwsunx_init"\
   "\n"
#define Kwsun_DESC \
   "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD"\
   "\n"\
   "   Kwsun 0-ary Functions: kwsun(_(d(ec_rad|ist_m)|moon_(dec_rad|ra_rad)"\
   "|ra_rad)|x_(d(ec_rad|ist_m)|r(a_rad|ise_day)|set_day|transit_day))"\
   "\n"\
   "   Kwsun 1-ary Functions: kwsun_(eccentricity|gmst_rad|lunation|m(ean_a"\
   "nomaly_rad|oon)|obliquity_rad|perihelion_rad|sun)"\
   "\n"\
   "   Kwsun 2-ary Functions: kwsun_(eccentric_anomaly_rad|lmst_rad)"\
   "\n"\
   "   Kwsun 4-ary Functions: kwsun(_(rise_day|s(et_day|in_altitude_sun))|x"\
   "_init)"\
   "\n"
#endif // #ifndef INCLUDED_Kwsun_h
