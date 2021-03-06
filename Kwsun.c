//   Copyright (C) 2021 by Kevin D. Woerner
//-/ =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
//-/ =KDW= ########### SOURCE $KWROOT/codekdw/kw-lib/Kwsun.fwipp ############
//-/ =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
//-/ =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
// 2021-05-14 kdw  For Changelog, See File Kwsun.varylog
#include "Kwsun.h"
//  CCCCCCCCCConstant ############################################## LANG_C #
double cxATMOSREFRACT_RAD(void) { return (ATMOSREFRACT_RAD); }
double cxSUNBELOW_RAD(void) { return (SUNBELOW_RAD); }
//  IIIIIIIIIINCLUDE ############################################### LANG_C #
#include "Kw.h"
#include "Kwplanets.h"
double kwsun_obliquity_rad(double jtwok)
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
double kwsun_eccentricity(double jtwok)
{
   return (((-1.2025E-9) * jtwok + EARTH_ECCENTRICITY));
}
double kwsun_perihelion_rad(double jtwok)
{
   double pdeg;
   pdeg = (8.850749897E-6) * jtwok + 282.93768193;
   return (deg2rad(fmodu(pdeg, tur2deg(1.0))));
}
double kwsun_mean_anomaly_rad(double jtwok)
{
   double madeg;
   double jtwoke;
   jtwoke = jtwok + TT_AT_0UT1 / DAY;
   madeg = ((((-6.84081855587485E-20) * jtwoke - 1.20158105729576E-13) *\
            jtwoke + 0.98560028309377146) * jtwoke + 357.52772);
   return (deg2rad(fmodu(madeg, tur2deg(1.0))));
}
double kwsun_gmst_rad(double jtwok)
{
   double gmt_arcdeg;
   gmt_arcdeg = ((((-5.30159020088E-22) * jtwok + 2.90787862944E-13) *\
            jtwok + tur2deg(DAY / EARTH_SIDEREALDAY)) * jtwok +\
            rad2deg(EARTH_THETA_0));
   return (fmodu(deg2rad(gmt_arcdeg), tur2rad(1.0)));
}
double kwsun_lmst_rad(double jtwok
      , double geo_longitude_deg)
{
   return (fmodu(kwsun_gmst_rad(jtwok) + deg2rad(geo_longitude_deg),\
            tur2rad(1.0)));
}
static double lv_x_sun_dist_m = 0.0;
static double lv_x_sun_dec_rad = 0.0;
static double lv_x_sun_ra_rad = 0.0;
static double lv_x_sun_rad = 0.0;
static double lv_x_loc_transit_tz_day = 0.0;
static double lv_x_loc_halfday_day = 0.0;
static double lf_x_earth_position(double jtwok)
{
   // local-use C lv_x_sun_rad;
   // local-use C lv_x_sun_ra_rad;
   // local-use C lv_x_sun_dec_rad;
   // local-use C lv_x_sun_dist_m;
   double ww_rad;
   double ecc;
   double mm_rad;
   double obl_rad;
   double sun_rad;
   double sun_xx_au;
   double sun_yy_au;
   double sun_dist_au;
   double lonsun_rad;
   double ys;
   double earth_xx_au;
   double earth_yy_au;
   double earth_zz_au;
   ww_rad = kwsun_perihelion_rad(jtwok);
   ecc = kwsun_eccentricity(jtwok);
   mm_rad = kwsun_mean_anomaly_rad(jtwok);
   obl_rad = kwsun_obliquity_rad(jtwok);
   lv_x_sun_rad = (ww_rad + mm_rad + tur2rad(0.5));
   sun_rad = (mm_rad + ecc * sin(mm_rad) * (1.0 + ecc * cos(mm_rad)));
   sun_xx_au = cos(sun_rad) - ecc;
   sun_yy_au = topyh1(ecc) * sin(sun_rad);
   sun_dist_au = hypot(sun_xx_au, sun_yy_au);
   lv_x_sun_dist_m = ASTRONOMICALUNIT * (1.0 - ecc * cos(sun_rad));
   lonsun_rad = atan2(sun_yy_au, sun_xx_au) + ww_rad;
   earth_xx_au = sun_dist_au * cos(lonsun_rad);
   ys = sun_dist_au * sin(lonsun_rad);
   earth_yy_au = ys * cos(obl_rad);
   earth_zz_au = ys * sin(obl_rad);
   lv_x_sun_ra_rad = fmodu(atan2(earth_yy_au, earth_xx_au), tur2rad(1.0));
   lv_x_sun_dec_rad = atan2(earth_zz_au, hypot(earth_xx_au, earth_yy_au));
   return (0.0);
}
double kwsunx_init(double jtwok
      , double tz_hr
      , double lon_deg
      , double lat_deg)
{
   // local-use C lv_x_loc_transit_tz_day;
   // local-use C lv_x_loc_halfday_day;
   // local-use C lv_x_sun_rad;
   // local-use C lv_x_sun_ra_rad;
   // local-use C lv_x_sun_dec_rad;
   double ut_transit_day;
   double lha;
   jtwok += rad2tur(kwsun_lmst_rad(jtwok, lon_deg)) - tz_hr * HOUR / DAY;
   (void) lf_x_earth_position(jtwok);
   ut_transit_day = rad2tur(lv_x_sun_ra_rad - lv_x_sun_rad) -\
            deg2tur(lon_deg);
   lv_x_loc_transit_tz_day = frac(ut_transit_day + tz_hr * HOUR / DAY);
   lha = (sin(-SUNBELOW_RAD) - sind(lat_deg) * sin(lv_x_sun_dec_rad) /\
            (cosd(lat_deg) * cos(lv_x_sun_dec_rad)));
   if (lha <= -0.99999) {
      lv_x_loc_transit_tz_day = 0.5;
      lv_x_loc_halfday_day = 0.5;
   } else if (0.99999 <= lha) {
      lv_x_loc_halfday_day = 0.0;
   } else {
      lv_x_loc_halfday_day = costinv(lha) + 110.0 * SECOND / DAY;
   }
   if (lv_x_loc_transit_tz_day < lv_x_loc_halfday_day) {
      lv_x_loc_transit_tz_day += 0.5;
   }
   return (lv_x_loc_transit_tz_day + lv_x_loc_halfday_day);
}
double kwsunx_set_day(void)
{
   // local-use C lv_x_loc_transit_tz_day;
   // local-use C lv_x_loc_halfday_day;
   return (lv_x_loc_transit_tz_day + lv_x_loc_halfday_day);
}
double kwsunx_rise_day(void)
{
   // local-use C lv_x_loc_transit_tz_day;
   // local-use C lv_x_loc_halfday_day;
   return (lv_x_loc_transit_tz_day - lv_x_loc_halfday_day);
}
double kwsunx_transit_day(void)
{
   // local-use C lv_x_loc_transit_tz_day;
   return (lv_x_loc_transit_tz_day);
}
double kwsunx_dist_m(void)
{
   // local-use C lv_x_sun_dist_m;
   return (lv_x_sun_dist_m);
}
double kwsunx_dec_rad(void)
{
   // local-use C lv_x_sun_dec_rad;
   return (lv_x_sun_dec_rad);
}
double kwsunx_ra_rad(void)
{
   // local-use C lv_x_sun_ra_rad;
   return (lv_x_sun_ra_rad);
}
double kwsun_eccentric_anomaly_rad(double ma_deg
      , double eccen)
{
   double ma_rad;
   double xrad;
   double xrad_prev;
   ma_rad = deg2rad(ma_deg);
   xrad = ma_rad + eccen * sin(ma_rad);
   for (;;) {
      xrad_prev = xrad;
      xrad -= (xrad - eccen * sin(xrad) - ma_rad) / (1.0 - eccen *\
               cos(xrad));
      if (iseq(xrad, xrad_prev)) {
         break; // loop AWAIT
      }
   }
   return (xrad);
}
static double lv_sun_ra_rad = 0.0;
static double lv_sun_dec_rad = 0.0;
static double lv_sun_dist_m = 0.0;
double kwsun_sun(double jtwok)
{
   // local-use C lv_sun_ra_rad;
   // local-use C lv_sun_dec_rad;
   double mean_longitude_sun_rad;
   double mean_anomaly_sun_rad;
   double dl_arcsec;
   double sl;
   double xx;
   double yy;
   double zz;
   double rho;
   double obl_rad;
   double ecc;
   double sun_rad;
   mean_anomaly_sun_rad = kwsun_mean_anomaly_rad(jtwok);
   ecc = kwsun_eccentricity(jtwok);
   obl_rad = kwsun_obliquity_rad(jtwok);
   dl_arcsec = (6893.0 * sin(mean_anomaly_sun_rad) + 72.0 * sin(2.0 *\
            mean_anomaly_sun_rad));
   mean_longitude_sun_rad = tur2rad(0.7859453) + mean_anomaly_sun_rad +\
            sec2rad(0.169505818 * jtwok + dl_arcsec);
   sun_rad = (mean_anomaly_sun_rad + ecc * sin(mean_anomaly_sun_rad) *\
            (1.0 + ecc * cos(mean_anomaly_sun_rad)));
   lv_sun_dist_m = ASTRONOMICALUNIT * (1.0 - ecc * cos(sun_rad));
   sl = sin(mean_longitude_sun_rad);
   xx = cos(mean_longitude_sun_rad);
   yy = cos(obl_rad) * sl;
   zz = sin(obl_rad) * sl;
   rho = topyh1(zz);
   lv_sun_dec_rad = atan2(zz, rho);
   lv_sun_ra_rad = 2.0 * atan2(yy, xx + rho);
   if (lv_sun_ra_rad < 0.0) {
      lv_sun_ra_rad += tur2rad(1.0);
   }
   return (lv_sun_dist_m);
}
double kwsun_dist_m(void)
{
   // local-use C lv_sun_dist_m;
   return (lv_sun_dist_m);
}
double kwsun_dec_rad(void)
{
   // local-use C lv_sun_dec_rad;
   return (lv_sun_dec_rad);
}
double kwsun_ra_rad(void)
{
   // local-use C lv_sun_ra_rad;
   return (lv_sun_ra_rad);
}
static double lf_sinalt(double jtwok
      , double geo_longitude_deg
      , double cos_geo_latitude
      , double sin_geo_latitude)
{
   // local-use C lv_sun_ra_rad;
   // local-use C lv_sun_dec_rad;
   double tau_rads;
   (void) kwsun_sun(jtwok);
   tau_rads = (kwsun_lmst_rad(jtwok, geo_longitude_deg) - lv_sun_ra_rad);
   return (sin_geo_latitude * sin(lv_sun_dec_rad) + cos_geo_latitude *\
            cos(lv_sun_dec_rad) * cos(tau_rads));
}
static double lf_parabola_solve(double delta_x
      , double ym
      , double yz
      , double yp)
{
   return (parabola_solve(-delta_x, ym, 0.0, yz, delta_x, yp));
}
static double lf_sun_event(double jtwok
      , double time_zone_in_hours
      , double geo_lon_deg
      , double geo_lat_deg
      , double refraction_rad
      , long want_sunrise)
{
   double sin_glat;
   double cos_glat;
   double alta_rad;
   double altb_rad;
   double altc_rad;
   double orig_altc_rad;
   double sa_rad;
   double sb_rad;
   double sc_rad;
   double utrise_fday;
   double utset_fday;
   double output_fday;
   double hours;
   double ctime_jtwok;
   double cctime_jtwok;
   double d_fday;
   double dd_fday;
   double rta;
   double rtb;
   double rtc;
   long nrr;
   long sunrise_count;
   long sunset_count;
   utrise_fday = 0.0;
   utset_fday = 0.0;
   sin_glat = sind(geo_lat_deg);
   cos_glat = cosd(geo_lat_deg);
   jtwok -= time_zone_in_hours * HOUR / DAY;
   sunrise_count = 0;
   sunset_count = 0;
   d_fday = 1.0 * HOUR / DAY;
   dd_fday = d_fday / 10.0;
   altc_rad = sininv(lf_sinalt(jtwok - d_fday, geo_lon_deg, cos_glat,\
            sin_glat)) - refraction_rad;
   orig_altc_rad = altc_rad;
   for (hours = 1.0; hours <= DAY / HOUR; hours += 2.0) {
      ctime_jtwok = jtwok + hours * HOUR / DAY;
      alta_rad = altc_rad;
      altb_rad = sininv(lf_sinalt(ctime_jtwok, geo_lon_deg, cos_glat,\
               sin_glat)) - refraction_rad;
      altc_rad = sininv(lf_sinalt(ctime_jtwok + d_fday, geo_lon_deg,\
               cos_glat, sin_glat)) - refraction_rad;
      (void) lf_parabola_solve(d_fday, alta_rad, altb_rad, altc_rad);
      nrr = 0;
      rtb = parabola_roots(0);
      rtc = parabola_roots(1);
      rta = 0.0;
      if (fabs(rtb) < d_fday) {
         rta = rtb;
         nrr += 1;
      }
      if (fabs(rtc) < d_fday) {
         rta = rtc;
         nrr += 1;
      }
      if (nrr == 1) {
         cctime_jtwok = ctime_jtwok + rta;
         sa_rad = (sininv(lf_sinalt(cctime_jtwok - dd_fday, geo_lon_deg,\
                  cos_glat, sin_glat)) - refraction_rad);
         sb_rad = (sininv(lf_sinalt(cctime_jtwok, geo_lon_deg, cos_glat,\
                  sin_glat)) - refraction_rad);
         sc_rad = (sininv(lf_sinalt(cctime_jtwok + dd_fday, geo_lon_deg,\
                  cos_glat, sin_glat)) - refraction_rad);
         (void) lf_parabola_solve(dd_fday, sa_rad, sb_rad, sc_rad);
         rtb = parabola_roots(0);
         rtc = parabola_roots(1);
         if (fabs(rtb) < dd_fday) {
            cctime_jtwok += rtb;
         } else {
            cctime_jtwok += rtc;
         }
         if (sa_rad < sb_rad) {
            utrise_fday = cctime_jtwok - jtwok;
            sunrise_count += 1;
         } else {
            utset_fday = cctime_jtwok - jtwok;
            sunset_count += 1;
         }
      } else if (nrr == 2) {
         if (parabola_yextrema() < 0.0) {
            utrise_fday = hours * HOUR / DAY + rtc;
            utset_fday = hours * HOUR / DAY + rtb;
         } else {
            utrise_fday = hours * HOUR / DAY + rtb;
            utset_fday = hours * HOUR / DAY + rtc;
         }
         sunrise_count += 1;
         sunset_count += 1;
      }
      if (0 < sunset_count && 0 < sunrise_count) {
         break;
      }
   }
   if (0 < sunrise_count || 0 < sunset_count) {
      output_fday = -1.0;
      if (0 < want_sunrise) {
         if (0 < sunrise_count) {
            output_fday = utrise_fday;
         }
      } else if (0 < sunset_count) {
         output_fday = utset_fday;
      }
   } else {
      if (0.0 < orig_altc_rad) {
         if (0 < want_sunrise) {
            output_fday = 0.0;
         } else {
            output_fday = 1.0;
         }
      } else {
         output_fday = 0.5;
      }
   }
   return (output_fday);
}
double kwsun_sin_altitude_sun(double jtwok
      , double time_zone_in_hours
      , double geo_lon_deg
      , double geo_lat_deg)
{
   double jtwoktz;
   double salt;
   jtwoktz = jtwok - time_zone_in_hours * HOUR / DAY;
   salt = lf_sinalt(jtwoktz, geo_lon_deg, cosd(geo_lat_deg),\
            sind(geo_lat_deg));
   return (salt);
}
double kwsun_rise_day(double jtwok
      , double tz_in_hours
      , double lon_deg
      , double lat_deg)
{
   return (lf_sun_event(jtwok, tz_in_hours, lon_deg, lat_deg, -\
            SUNBELOW_RAD, 1));
}
double kwsun_set_day(double jtwok
      , double tz_in_hours
      , double lon_deg
      , double lat_deg)
{
   return (lf_sun_event(jtwok, tz_in_hours, lon_deg, lat_deg, -\
            SUNBELOW_RAD, 0));
}
static double lv_moon_ra_rad = 0.0;
static double lv_moon_dec_rad = 0.0;
double kwsun_moon(double jtwok)
{
   double meanlong_moon;
   double ma_moon_rad;
   double ma_sun_rad;
   double d_rad;
   double farg_rad;
   double fifi_arcsec;
   double ss_rad;
   double hh_rad;
   double lct_arcsec;
   double lmoon_rad;
   double bmoon_rad;
   double cb;
   double xx;
   double zz;
   double vv;
   double ww;
   double yy;
   double coseps;
   double sineps;
   double rho;
   double obliquity;
   double jcen;
   jcen = jtwok * DAY / JCENTURY;
   meanlong_moon = frac(0.606433 + 1336.855225 * jcen);
   ma_moon_rad = tur2rad(frac(0.374897 + 1325.55241 * jcen));
   ma_sun_rad = tur2rad(frac(0.993133 + 99.997361 * jcen));
   d_rad = tur2rad(frac(0.827361 + 1236.853086 * jcen));
   farg_rad = tur2rad(frac(0.259086 + 1342.227825 * jcen));
   fifi_arcsec = (0.0 + 22640.0 * sin(ma_moon_rad) - 4586.0 *\
            sin(ma_moon_rad - 2.0 * d_rad) + 192.0 * sin(ma_moon_rad +\
            2.0 * d_rad) - 110.0 * sin(ma_moon_rad + ma_sun_rad) + 148.0\
            * sin(ma_moon_rad - ma_sun_rad) - 206.0 * sin(ma_moon_rad +\
            ma_sun_rad - 2.0 * d_rad) - 125.0 * sin(d_rad) + 2370.0 *\
            sin(2.0 * d_rad) + 769.0 * sin(2.0 * ma_moon_rad) - 212.0 *\
            sin(2.0 * ma_moon_rad - 2.0 * d_rad) - 412.0 * sin(2.0 *\
            farg_rad) - 55.0 * sin(2.0 * farg_rad - 2.0 * d_rad) - 668.0\
            * sin(ma_sun_rad) - 165.0 * sin(ma_sun_rad - 2.0 * d_rad));
   ss_rad = farg_rad + sec2rad(fifi_arcsec + 412.0 * sin(2.0 * farg_rad)\
            + 541.0 * sin(ma_sun_rad));
   hh_rad = farg_rad - 2.0 * d_rad;
   lct_arcsec = (-526.0 * sin(hh_rad) + 44.0 * sin(hh_rad + ma_moon_rad)\
            - 31.0 * sin(hh_rad - ma_moon_rad) + 11.0 * sin(hh_rad -\
            ma_sun_rad) - 23.0 * sin(ma_sun_rad + hh_rad) - 25.0 *\
            sin(farg_rad - 2.0 * ma_moon_rad) + 21.0 * sin(farg_rad -\
            ma_moon_rad));
   lmoon_rad = tur2rad(frac(meanlong_moon + sec2tur(fifi_arcsec)));
   bmoon_rad = sec2rad(18520.0 * sin(ss_rad) + lct_arcsec);
   cb = cos(bmoon_rad);
   xx = cb * cos(lmoon_rad);
   vv = cb * sin(lmoon_rad);
   ww = sin(bmoon_rad);
   obliquity = kwsun_obliquity_rad(jtwok);
   coseps = cos(obliquity);
   sineps = sin(obliquity);
   yy = coseps * vv - sineps * ww;
   zz = sineps * vv + coseps * ww;
   rho = topyh1(zz);
   lv_moon_dec_rad = atan2(zz, rho);
   lv_moon_ra_rad = fmodu(2.0 * atan2(yy, xx + rho), tur2rad(1.0));
   return (rho * MOON_ORBIT);
}
double kwsun_moon_dec_rad(void)
{
   // local-use C lv_moon_dec_rad;
   return (lv_moon_dec_rad);
}
double kwsun_moon_ra_rad(void)
{
   // local-use C lv_moon_ra_rad;
   return (lv_moon_ra_rad);
}
static double lf_ra_sunmoon_diff_rad(double jtwok
      , double frad)
{
   double moon_ra;
   double sun_ra;
   (void) kwsun_moon(jtwok);
   moon_ra = kwsun_moon_ra_rad();
   (void) kwsun_sun(jtwok);
   sun_ra = kwsun_ra_rad();
   return (ddist(moon_ra - sun_ra - frad, TAU / 2.0));
}
double kwsun_lunation(double nn)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   long scvx_ii;
   double jtwokapp;
   double frad;
   jtwokapp = 5.00 + nn * MOON_MONTH / JDAY;
   frad = tur2rad(frac(nn));
   scvx_dx = 0.5;
   scvx_xx = jtwokapp;
   scvx_yy = lf_ra_sunmoon_diff_rad(scvx_xx, frad);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = lf_ra_sunmoon_diff_rad(scvx_xx, frad);
      if (iseq(scvx_yy, scvx_yp)) {
         break;
      }
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp);
   }
   return (scvx_xx);
}
