#    Copyright (C) 2021 by Kevin D. Woerner
##-# =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
##-# =KDW= ########### SOURCE $KWROOT/codekdw/kw-lib/Kwsun.fwipp ############
##-# =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
##-# =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
# 2021-05-14 kdw  For Changelog, See File Kwsun.varylog
package Kwsun;
use Time::HiRes qw();
use POSIX       qw();
use vars qw(@EXPORT @EXPORT_OK %EXPORT_TAGS);
use Exporter    qw(import);
@EXPORT = ();
@EXPORT_OK = ( qw(
   ATMOSREFRACT_RAD SUNBELOW_RAD kwsun_dec_rad kwsun_dist_m
   kwsun_eccentric_anomaly_rad kwsun_eccentricity kwsun_gmst_rad
   kwsun_lmst_rad kwsun_lunation kwsun_mean_anomaly_rad kwsun_moon
   kwsun_moon_dec_rad kwsun_moon_ra_rad kwsun_obliquity_rad
   kwsun_perihelion_rad kwsun_ra_rad kwsun_rise_day kwsun_set_day
   kwsun_sin_altitude_sun kwsun_sun kwsunx_dec_rad kwsunx_dist_m kwsunx_init
   kwsunx_ra_rad kwsunx_rise_day kwsunx_set_day kwsunx_transit_day
)); # End of EXPORT_OK
%EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );
sub kwsun_obliquity_rad($ );
sub kwsun_eccentricity($ );
sub kwsun_perihelion_rad($ );
sub kwsun_mean_anomaly_rad($ );
sub kwsun_gmst_rad($ );
sub kwsun_lmst_rad($$ );
sub lf_x_earth_position($ );
sub kwsunx_init($$$$ );
sub kwsunx_set_day( );
sub kwsunx_rise_day( );
sub kwsunx_transit_day( );
sub kwsunx_dist_m( );
sub kwsunx_dec_rad( );
sub kwsunx_ra_rad( );
sub kwsun_eccentric_anomaly_rad($$ );
sub kwsun_sun($ );
sub kwsun_dist_m( );
sub kwsun_dec_rad( );
sub kwsun_ra_rad( );
sub lf_sinalt($$$$ );
sub lf_parabola_solve($$$$ );
sub lf_sun_event($$$$$$ );
sub kwsun_sin_altitude_sun($$$$ );
sub kwsun_rise_day($$$$ );
sub kwsun_set_day($$$$ );
sub kwsun_moon($ );
sub kwsun_moon_dec_rad( );
sub kwsun_moon_ra_rad( );
sub lf_ra_sunmoon_diff_rad($$ );
sub kwsun_lunation($ );
use Kw qw();
use Kwplanets qw();
sub ATMOSREFRACT_RAD() { 0.5667 * Kw::ARCDEG; }
sub SUNBELOW_RAD() { ATMOSREFRACT_RAD + Kwplanets::SUN_RADIUS /
         Kwplanets::EARTH_ORBIT * Kw::RADIAN; }
sub kwsun_obliquity_rad($ ) {
   my ($jtwok) = @_;
   my $tmill;
   my $ob_arcsec;
   $tmill = $jtwok * Kw::DAY / (1.0E+4 * Kw::JYEAR);
   $ob_arcsec = (((((((((((2.45) * $tmill + 5.79) * $tmill + 27.8) *
            $tmill + 7.12) * $tmill - 39.05) * $tmill - 249.67) * $tmill
            - 51.38) * $tmill + 1999.25) * $tmill - 1.55) * $tmill -
            4680.93) * $tmill + 84381.448);
   return (Kw::sec2rad($ob_arcsec));
}
sub kwsun_eccentricity($ ) {
   my ($jtwok) = @_;
   return (((-1.2025E-9) * $jtwok + Kwplanets::EARTH_ECCENTRICITY));
}
sub kwsun_perihelion_rad($ ) {
   my ($jtwok) = @_;
   my $pdeg;
   $pdeg = (8.850749897E-6) * $jtwok + 282.93768193;
   return (Kw::deg2rad(Kw::fmodu($pdeg, Kw::tur2deg(1.0))));
}
sub kwsun_mean_anomaly_rad($ ) {
   my ($jtwok) = @_;
   my $madeg;
   my $jtwoke;
   $jtwoke = $jtwok + Kw::TT_AT_0UT1 / Kw::DAY;
   $madeg = ((((-6.84081855587485E-20) * $jtwoke - 1.20158105729576E-13)
            * $jtwoke + 0.98560028309377146) * $jtwoke + 357.52772);
   return (Kw::deg2rad(Kw::fmodu($madeg, Kw::tur2deg(1.0))));
}
sub kwsun_gmst_rad($ ) {
   my ($jtwok) = @_;
   my $gmt_arcdeg;
   $gmt_arcdeg = ((((-5.30159020088E-22) * $jtwok + 2.90787862944E-13) *
            $jtwok + Kw::tur2deg(Kw::DAY / Kwplanets::EARTH_SIDEREALDAY))
            * $jtwok + Kw::rad2deg(Kwplanets::EARTH_THETA_0));
   return (Kw::fmodu(Kw::deg2rad($gmt_arcdeg), Kw::tur2rad(1.0)));
}
sub kwsun_lmst_rad($$ ) {
   my ($jtwok, $geo_longitude_deg) = @_;
   return (Kw::fmodu(kwsun_gmst_rad($jtwok) +
            Kw::deg2rad($geo_longitude_deg), Kw::tur2rad(1.0)));
}
{
my $lv_x_sun_dist_m = 0.0;
   my $lv_x_sun_dec_rad = 0.0;
   my $lv_x_sun_ra_rad = 0.0;
   my $lv_x_sun_rad = 0.0;
   my $lv_x_loc_transit_tz_day = 0.0;
   my $lv_x_loc_halfday_day = 0.0;
   sub lf_x_earth_position($ ) {
      my ($jtwok) = @_;
      # local-use Perl $lv_x_sun_rad;
      # local-use Perl $lv_x_sun_ra_rad;
      # local-use Perl $lv_x_sun_dec_rad;
      # local-use Perl $lv_x_sun_dist_m;
      my $ww_rad;
      my $ecc;
      my $mm_rad;
      my $obl_rad;
      my $sun_rad;
      my $sun_xx_au;
      my $sun_yy_au;
      my $sun_dist_au;
      my $lonsun_rad;
      my $ys;
      my $earth_xx_au;
      my $earth_yy_au;
      my $earth_zz_au;
      $ww_rad = kwsun_perihelion_rad($jtwok);
      $ecc = kwsun_eccentricity($jtwok);
      $mm_rad = kwsun_mean_anomaly_rad($jtwok);
      $obl_rad = kwsun_obliquity_rad($jtwok);
      $lv_x_sun_rad = ($ww_rad + $mm_rad + Kw::tur2rad(0.5));
      $sun_rad = ($mm_rad + $ecc * sin($mm_rad) * (1.0 + $ecc *
               cos($mm_rad)));
      $sun_xx_au = cos($sun_rad) - $ecc;
      $sun_yy_au = Kw::topyh1($ecc) * sin($sun_rad);
      $sun_dist_au = Kw::hypot($sun_xx_au, $sun_yy_au);
      $lv_x_sun_dist_m = Kw::ASTRONOMICALUNIT * (1.0 - $ecc * cos($sun_rad));
      $lonsun_rad = atan2($sun_yy_au, $sun_xx_au) + $ww_rad;
      $earth_xx_au = $sun_dist_au * cos($lonsun_rad);
      $ys = $sun_dist_au * sin($lonsun_rad);
      $earth_yy_au = $ys * cos($obl_rad);
      $earth_zz_au = $ys * sin($obl_rad);
      $lv_x_sun_ra_rad = Kw::fmodu(atan2($earth_yy_au, $earth_xx_au),
               Kw::tur2rad(1.0));
      $lv_x_sun_dec_rad = atan2($earth_zz_au, Kw::hypot($earth_xx_au,
               $earth_yy_au));
      return (0.0);
   }
   sub kwsunx_init($$$$ ) {
      my ($jtwok, $tz_hr, $lon_deg, $lat_deg) = @_;
      # local-use Perl $lv_x_loc_transit_tz_day;
      # local-use Perl $lv_x_loc_halfday_day;
      # local-use Perl $lv_x_sun_rad;
      # local-use Perl $lv_x_sun_ra_rad;
      # local-use Perl $lv_x_sun_dec_rad;
      my $ut_transit_day;
      my $lha;
      $jtwok += Kw::rad2tur(kwsun_lmst_rad($jtwok, $lon_deg)) - $tz_hr *
               Kw::HOUR / Kw::DAY;
      lf_x_earth_position($jtwok);
      $ut_transit_day = Kw::rad2tur($lv_x_sun_ra_rad - $lv_x_sun_rad) -
               Kw::deg2tur($lon_deg);
      $lv_x_loc_transit_tz_day = Kw::frac($ut_transit_day + $tz_hr *
               Kw::HOUR / Kw::DAY);
      $lha = (sin(-Kwsun::SUNBELOW_RAD) - Kw::sind($lat_deg) *
               sin($lv_x_sun_dec_rad) / (Kw::cosd($lat_deg) *
               cos($lv_x_sun_dec_rad)));
      if ($lha <= -0.99999) {
         $lv_x_loc_transit_tz_day = 0.5;
         $lv_x_loc_halfday_day = 0.5;
      } elsif (0.99999 <= $lha) {
         $lv_x_loc_halfday_day = 0.0;
      } else {
         $lv_x_loc_halfday_day = Kw::costinv($lha) + 110.0 * Kw::SECOND /
                  Kw::DAY;
      }
      if ($lv_x_loc_transit_tz_day < $lv_x_loc_halfday_day) {
         $lv_x_loc_transit_tz_day += 0.5;
      }
      return ($lv_x_loc_transit_tz_day + $lv_x_loc_halfday_day);
   }
   sub kwsunx_set_day() {
      # local-use Perl $lv_x_loc_transit_tz_day;
      # local-use Perl $lv_x_loc_halfday_day;
      return ($lv_x_loc_transit_tz_day + $lv_x_loc_halfday_day);
   }
   sub kwsunx_rise_day() {
      # local-use Perl $lv_x_loc_transit_tz_day;
      # local-use Perl $lv_x_loc_halfday_day;
      return ($lv_x_loc_transit_tz_day - $lv_x_loc_halfday_day);
   }
   sub kwsunx_transit_day() {
      # local-use Perl $lv_x_loc_transit_tz_day;
      return ($lv_x_loc_transit_tz_day);
   }
   sub kwsunx_dist_m() {
      # local-use Perl $lv_x_sun_dist_m;
      return ($lv_x_sun_dist_m);
   }
   sub kwsunx_dec_rad() {
      # local-use Perl $lv_x_sun_dec_rad;
      return ($lv_x_sun_dec_rad);
   }
   sub kwsunx_ra_rad() {
      # local-use Perl $lv_x_sun_ra_rad;
      return ($lv_x_sun_ra_rad);
   }
}
sub kwsun_eccentric_anomaly_rad($$ ) {
   my ($ma_deg, $eccen) = @_;
   my $ma_rad;
   my $xrad;
   my $xrad_prev;
   $ma_rad = Kw::deg2rad($ma_deg);
   $xrad = $ma_rad + $eccen * sin($ma_rad);
   for (;;) {
      $xrad_prev = $xrad;
      $xrad -= ($xrad - $eccen * sin($xrad) - $ma_rad) / (1.0 - $eccen *
               cos($xrad));
      if (Kw::iseq($xrad, $xrad_prev)) {
         last; # loop AWAIT
      }
   }
   return ($xrad);
}
{
my $lv_sun_ra_rad = 0.0;
   my $lv_sun_dec_rad = 0.0;
   my $lv_sun_dist_m = 0.0;
   sub kwsun_sun($ ) {
      my ($jtwok) = @_;
      # local-use Perl $lv_sun_ra_rad;
      # local-use Perl $lv_sun_dec_rad;
      my $mean_longitude_sun_rad;
      my $mean_anomaly_sun_rad;
      my $dl_arcsec;
      my $sl;
      my $xx;
      my $yy;
      my $zz;
      my $rho;
      my $obl_rad;
      my $ecc;
      my $sun_rad;
      $mean_anomaly_sun_rad = kwsun_mean_anomaly_rad($jtwok);
      $ecc = kwsun_eccentricity($jtwok);
      $obl_rad = kwsun_obliquity_rad($jtwok);
      $dl_arcsec = (6893.0 * sin($mean_anomaly_sun_rad) + 72.0 * sin(2.0
               * $mean_anomaly_sun_rad));
      $mean_longitude_sun_rad = Kw::tur2rad(0.7859453) +
               $mean_anomaly_sun_rad + Kw::sec2rad(0.169505818 * $jtwok +
               $dl_arcsec);
      $sun_rad = ($mean_anomaly_sun_rad + $ecc *
               sin($mean_anomaly_sun_rad) * (1.0 + $ecc *
               cos($mean_anomaly_sun_rad)));
      $lv_sun_dist_m = Kw::ASTRONOMICALUNIT * (1.0 - $ecc * cos($sun_rad));
      $sl = sin($mean_longitude_sun_rad);
      $xx = cos($mean_longitude_sun_rad);
      $yy = cos($obl_rad) * $sl;
      $zz = sin($obl_rad) * $sl;
      $rho = Kw::topyh1($zz);
      $lv_sun_dec_rad = atan2($zz, $rho);
      $lv_sun_ra_rad = 2.0 * atan2($yy, $xx + $rho);
      if ($lv_sun_ra_rad < 0.0) {
         $lv_sun_ra_rad += Kw::tur2rad(1.0);
      }
      return ($lv_sun_dist_m);
   }
   sub kwsun_dist_m() {
      # local-use Perl $lv_sun_dist_m;
      return ($lv_sun_dist_m);
   }
   sub kwsun_dec_rad() {
      # local-use Perl $lv_sun_dec_rad;
      return ($lv_sun_dec_rad);
   }
   sub kwsun_ra_rad() {
      # local-use Perl $lv_sun_ra_rad;
      return ($lv_sun_ra_rad);
   }
}
{
sub lf_sinalt($$$$ ) {
   my ($jtwok, $geo_longitude_deg, $cos_geo_latitude, $sin_geo_latitude)
            = @_;
      # local-use Perl $lv_sun_ra_rad;
      # local-use Perl $lv_sun_dec_rad;
      my $tau_rads;
      kwsun_sun($jtwok);
      $tau_rads = (kwsun_lmst_rad($jtwok, $geo_longitude_deg) -
               $lv_sun_ra_rad);
      return ($sin_geo_latitude * sin($lv_sun_dec_rad) +
               $cos_geo_latitude * cos($lv_sun_dec_rad) * cos($tau_rads));
   }
   sub lf_parabola_solve($$$$ ) {
      my ($delta_x, $ym, $yz, $yp) = @_;
      return (Kw::parabola_solve(-$delta_x, $ym, 0.0, $yz, $delta_x, $yp));
   }
   sub lf_sun_event($$$$$$ ) {
      my ($jtwok, $time_zone_in_hours, $geo_lon_deg, $geo_lat_deg,
               $refraction_rad, $want_sunrise) = @_;
      my $sin_glat;
      my $cos_glat;
      my $alta_rad;
      my $altb_rad;
      my $altc_rad;
      my $orig_altc_rad;
      my $sa_rad;
      my $sb_rad;
      my $sc_rad;
      my $utrise_fday;
      my $utset_fday;
      my $output_fday;
      my $hours;
      my $ctime_jtwok;
      my $cctime_jtwok;
      my $d_fday;
      my $dd_fday;
      my $rta;
      my $rtb;
      my $rtc;
      my $nrr;
      my $sunrise_count;
      my $sunset_count;
      $utrise_fday = 0.0;
      $utset_fday = 0.0;
      $sin_glat = Kw::sind($geo_lat_deg);
      $cos_glat = Kw::cosd($geo_lat_deg);
      $jtwok -= $time_zone_in_hours * Kw::HOUR / Kw::DAY;
      $sunrise_count = 0;
      $sunset_count = 0;
      $d_fday = 1.0 * Kw::HOUR / Kw::DAY;
      $dd_fday = $d_fday / 10.0;
      $altc_rad = Kw::sininv(lf_sinalt($jtwok - $d_fday, $geo_lon_deg,
               $cos_glat, $sin_glat)) - $refraction_rad;
      $orig_altc_rad = $altc_rad;
      for ($hours = 1.0; $hours <= Kw::DAY / Kw::HOUR; $hours += 2.0) {
         $ctime_jtwok = $jtwok + $hours * Kw::HOUR / Kw::DAY;
         $alta_rad = $altc_rad;
         $altb_rad = Kw::sininv(lf_sinalt($ctime_jtwok, $geo_lon_deg,
                  $cos_glat, $sin_glat)) - $refraction_rad;
         $altc_rad = Kw::sininv(lf_sinalt($ctime_jtwok + $d_fday,
                  $geo_lon_deg, $cos_glat, $sin_glat)) - $refraction_rad;
         lf_parabola_solve($d_fday, $alta_rad, $altb_rad, $altc_rad);
         $nrr = 0;
         $rtb = Kw::parabola_roots(0);
         $rtc = Kw::parabola_roots(1);
         $rta = 0.0;
         if (abs($rtb) < $d_fday) {
            $rta = $rtb;
            $nrr += 1;
         }
         if (abs($rtc) < $d_fday) {
            $rta = $rtc;
            $nrr += 1;
         }
         if ($nrr == 1) {
            $cctime_jtwok = $ctime_jtwok + $rta;
            $sa_rad = (Kw::sininv(lf_sinalt($cctime_jtwok - $dd_fday,
                     $geo_lon_deg, $cos_glat, $sin_glat)) - $refraction_rad);
            $sb_rad = (Kw::sininv(lf_sinalt($cctime_jtwok, $geo_lon_deg,
                     $cos_glat, $sin_glat)) - $refraction_rad);
            $sc_rad = (Kw::sininv(lf_sinalt($cctime_jtwok + $dd_fday,
                     $geo_lon_deg, $cos_glat, $sin_glat)) - $refraction_rad);
            lf_parabola_solve($dd_fday, $sa_rad, $sb_rad, $sc_rad);
            $rtb = Kw::parabola_roots(0);
            $rtc = Kw::parabola_roots(1);
            if (abs($rtb) < $dd_fday) {
               $cctime_jtwok += $rtb;
            } else {
               $cctime_jtwok += $rtc;
            }
            if ($sa_rad < $sb_rad) {
               $utrise_fday = $cctime_jtwok - $jtwok;
               $sunrise_count += 1;
            } else {
               $utset_fday = $cctime_jtwok - $jtwok;
               $sunset_count += 1;
            }
         } elsif ($nrr == 2) {
            if (Kw::parabola_yextrema() < 0.0) {
               $utrise_fday = $hours * Kw::HOUR / Kw::DAY + $rtc;
               $utset_fday = $hours * Kw::HOUR / Kw::DAY + $rtb;
            } else {
               $utrise_fday = $hours * Kw::HOUR / Kw::DAY + $rtb;
               $utset_fday = $hours * Kw::HOUR / Kw::DAY + $rtc;
            }
            $sunrise_count += 1;
            $sunset_count += 1;
         }
         if (0 < $sunset_count and 0 < $sunrise_count) {
            last;
         }
      }
      if (0 < $sunrise_count or 0 < $sunset_count) {
         $output_fday = -1.0;
         if (0 < $want_sunrise) {
            if (0 < $sunrise_count) {
               $output_fday = $utrise_fday;
            }
         } elsif (0 < $sunset_count) {
            $output_fday = $utset_fday;
         }
      } else {
         if (0.0 < $orig_altc_rad) {
            if (0 < $want_sunrise) {
               $output_fday = 0.0;
            } else {
               $output_fday = 1.0;
            }
         } else {
            $output_fday = 0.5;
         }
      }
      return ($output_fday);
   }
   sub kwsun_sin_altitude_sun($$$$ ) {
      my ($jtwok, $time_zone_in_hours, $geo_lon_deg, $geo_lat_deg) = @_;
      my $jtwoktz;
      my $salt;
      $jtwoktz = $jtwok - $time_zone_in_hours * Kw::HOUR / Kw::DAY;
      $salt = lf_sinalt($jtwoktz, $geo_lon_deg, Kw::cosd($geo_lat_deg),
               Kw::sind($geo_lat_deg));
      return ($salt);
   }
   sub kwsun_rise_day($$$$ ) {
      my ($jtwok, $tz_in_hours, $lon_deg, $lat_deg) = @_;
      return (lf_sun_event($jtwok, $tz_in_hours, $lon_deg, $lat_deg, -
               Kwsun::SUNBELOW_RAD, 1));
   }
   sub kwsun_set_day($$$$ ) {
      my ($jtwok, $tz_in_hours, $lon_deg, $lat_deg) = @_;
      return (lf_sun_event($jtwok, $tz_in_hours, $lon_deg, $lat_deg, -
               Kwsun::SUNBELOW_RAD, 0));
   }
}
{
my $lv_moon_ra_rad = 0.0;
   my $lv_moon_dec_rad = 0.0;
   sub kwsun_moon($ ) {
      my ($jtwok) = @_;
      my $meanlong_moon;
      my $ma_moon_rad;
      my $ma_sun_rad;
      my $d_rad;
      my $farg_rad;
      my $fifi_arcsec;
      my $ss_rad;
      my $hh_rad;
      my $lct_arcsec;
      my $lmoon_rad;
      my $bmoon_rad;
      my $cb;
      my $xx;
      my $zz;
      my $vv;
      my $ww;
      my $yy;
      my $coseps;
      my $sineps;
      my $rho;
      my $obliquity;
      my $jcen;
      $jcen = $jtwok * Kw::DAY / Kw::JCENTURY;
      $meanlong_moon = Kw::frac(0.606433 + 1336.855225 * $jcen);
      $ma_moon_rad = Kw::tur2rad(Kw::frac(0.374897 + 1325.55241 * $jcen));
      $ma_sun_rad = Kw::tur2rad(Kw::frac(0.993133 + 99.997361 * $jcen));
      $d_rad = Kw::tur2rad(Kw::frac(0.827361 + 1236.853086 * $jcen));
      $farg_rad = Kw::tur2rad(Kw::frac(0.259086 + 1342.227825 * $jcen));
      $fifi_arcsec = (0.0 + 22640.0 * sin($ma_moon_rad) - 4586.0 *
               sin($ma_moon_rad - 2.0 * $d_rad) + 192.0 *
               sin($ma_moon_rad + 2.0 * $d_rad) - 110.0 *
               sin($ma_moon_rad + $ma_sun_rad) + 148.0 * sin($ma_moon_rad
               - $ma_sun_rad) - 206.0 * sin($ma_moon_rad + $ma_sun_rad -
               2.0 * $d_rad) - 125.0 * sin($d_rad) + 2370.0 * sin(2.0 *
               $d_rad) + 769.0 * sin(2.0 * $ma_moon_rad) - 212.0 *
               sin(2.0 * $ma_moon_rad - 2.0 * $d_rad) - 412.0 * sin(2.0 *
               $farg_rad) - 55.0 * sin(2.0 * $farg_rad - 2.0 * $d_rad) -
               668.0 * sin($ma_sun_rad) - 165.0 * sin($ma_sun_rad - 2.0 *
               $d_rad));
      $ss_rad = $farg_rad + Kw::sec2rad($fifi_arcsec + 412.0 * sin(2.0 *
               $farg_rad) + 541.0 * sin($ma_sun_rad));
      $hh_rad = $farg_rad - 2.0 * $d_rad;
      $lct_arcsec = (-526.0 * sin($hh_rad) + 44.0 * sin($hh_rad +
               $ma_moon_rad) - 31.0 * sin($hh_rad - $ma_moon_rad) + 11.0
               * sin($hh_rad - $ma_sun_rad) - 23.0 * sin($ma_sun_rad +
               $hh_rad) - 25.0 * sin($farg_rad - 2.0 * $ma_moon_rad) +
               21.0 * sin($farg_rad - $ma_moon_rad));
      $lmoon_rad = Kw::tur2rad(Kw::frac($meanlong_moon +
               Kw::sec2tur($fifi_arcsec)));
      $bmoon_rad = Kw::sec2rad(18520.0 * sin($ss_rad) + $lct_arcsec);
      $cb = cos($bmoon_rad);
      $xx = $cb * cos($lmoon_rad);
      $vv = $cb * sin($lmoon_rad);
      $ww = sin($bmoon_rad);
      $obliquity = kwsun_obliquity_rad($jtwok);
      $coseps = cos($obliquity);
      $sineps = sin($obliquity);
      $yy = $coseps * $vv - $sineps * $ww;
      $zz = $sineps * $vv + $coseps * $ww;
      $rho = Kw::topyh1($zz);
      $lv_moon_dec_rad = atan2($zz, $rho);
      $lv_moon_ra_rad = Kw::fmodu(2.0 * atan2($yy, $xx + $rho),
               Kw::tur2rad(1.0));
      return ($rho * Kwplanets::MOON_ORBIT);
   }
   sub kwsun_moon_dec_rad() {
      # local-use Perl $lv_moon_dec_rad;
      return ($lv_moon_dec_rad);
   }
   sub kwsun_moon_ra_rad() {
      # local-use Perl $lv_moon_ra_rad;
      return ($lv_moon_ra_rad);
   }
}
{
sub lf_ra_sunmoon_diff_rad($$ ) {
   my ($jtwok, $frad) = @_;
      my $moon_ra;
      my $sun_ra;
      kwsun_moon($jtwok);
      $moon_ra = kwsun_moon_ra_rad();
      kwsun_sun($jtwok);
      $sun_ra = kwsun_ra_rad();
      return (Kw::ddist($moon_ra - $sun_ra - $frad, Kw::TAU / 2.0));
   }
   sub kwsun_lunation($ ) {
      my ($nn) = @_;
      my $scvx_xp;
      my $scvx_xx;
      my $scvx_yp;
      my $scvx_yy;
      my $scvx_dx;
      my $scvx_ii;
      my $jtwokapp;
      my $frad;
      $jtwokapp = 5.00 + $nn * Kw::MOON_MONTH / Kw::JDAY;
      $frad = Kw::tur2rad(Kw::frac($nn));
      $scvx_dx = 0.5;
      $scvx_xx = $jtwokapp;
      $scvx_yy = lf_ra_sunmoon_diff_rad($scvx_xx, $frad);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = lf_ra_sunmoon_diff_rad($scvx_xx, $frad);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
      return ($scvx_xx);
   }
}
#   DDDDDDDDDDescription ################################ kwsun_description #
sub kwsun_description() {
   "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD" .
   "\n" .
   "   Kwsun 0-ary Functions: kwsun_dec_rad kwsun_dist_m kwsun_moon_dec_ra" .
   "d kwsun_moon_ra_rad kwsun_ra_rad kwsunx_dec_rad kwsunx_dist_m kwsunx_r" .
   "a_rad kwsunx_rise_day kwsunx_set_day kwsunx_transit_day" .
   "\n" .
   "   Kwsun 1-ary Functions: kwsun_eccentricity kwsun_gmst_rad kwsun_luna" .
   "tion kwsun_mean_anomaly_rad kwsun_moon kwsun_obliquity_rad kwsun_perih" .
   "elion_rad kwsun_sun" .
   "\n" .
   "   Kwsun 2-ary Functions: kwsun_eccentric_anomaly_rad kwsun_lmst_rad" .
   "\n" .
   "   Kwsun 4-ary Functions: kwsun_rise_day kwsun_set_day kwsun_sin_altit" .
   "ude_sun kwsunx_init" .
   "\n";
}
sub kwsun_desc() {
   "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD" .
   "\n" .
   "   Kwsun 0-ary Functions: kwsun(_(d(ec_rad|ist_m)|moon_(dec_rad|ra_rad" .
   ")|ra_rad)|x_(d(ec_rad|ist_m)|r(a_rad|ise_day)|set_day|transit_day))" .
   "\n" .
   "   Kwsun 1-ary Functions: kwsun_(eccentricity|gmst_rad|lunation|m(ean_" .
   "anomaly_rad|oon)|obliquity_rad|perihelion_rad|sun)" .
   "\n" .
   "   Kwsun 2-ary Functions: kwsun_(eccentric_anomaly_rad|lmst_rad)" .
   "\n" .
   "   Kwsun 4-ary Functions: kwsun(_(rise_day|s(et_day|in_altitude_sun))|" .
   "x_init)" .
   "\n";
}
1; # Final return value
