'    Copyright (C) 2021 by Kevin D. Woerner
''-' =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
''-' =KDW= ########### SOURCE $KWROOT/codekdw/kw-lib/Kwsun.fwipp ############
''-' =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
''-' =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
' 2021-05-14 kdw  For Changelog, See File Kwsun.varylog
Option Explicit On
Imports System.IO.Filestream
Public Class KWSUN
   Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables ############################### LANG_VBDOTNET #
Public Const ATMOSREFRACT_RAD As Double = 0.5667 * Kw.ARCDEG
Public Const SUNBELOW_RAD As Double = ATMOSREFRACT_RAD + _
         Kwplanets.SUN_RADIUS / Kwplanets.EARTH_ORBIT * Kw.RADIAN
Private Shared lv_x_sun_dist_m As Double
Private Shared lv_x_sun_dec_rad As Double
Private Shared lv_x_sun_ra_rad As Double
Private Shared lv_x_sun_rad As Double
Private Shared lv_x_loc_transit_tz_day As Double
Private Shared lv_x_loc_halfday_day As Double
Private Shared lv_sun_ra_rad As Double
Private Shared lv_sun_dec_rad As Double
Private Shared lv_sun_dist_m As Double
Private Shared lv_moon_ra_rad As Double
Private Shared lv_moon_dec_rad As Double
'IMPORT "Kw"
'IMPORT "Kwplanets"
Public Shared Function kwsun_obliquity_rad(ByVal jtwok As Double) As Double
   Dim tmill As Double
   Dim ob_arcsec As Double
   tmill = jtwok * Kw.EARTH_SOLARDAY / (1.0E+4 * Kw.JYEAR)
   ob_arcsec = (((((((((((2.45) * tmill + 5.79) * tmill + 27.8) * tmill + _
            7.12) * tmill - 39.05) * tmill - 249.67) * tmill - 51.38) * _
            tmill + 1999.25) * tmill - 1.55) * tmill - 4680.93) * tmill + _
            84381.448)
   kwsun_obliquity_rad = Kw.sec2rad(ob_arcsec)
End Function
Public Shared Function kwsun_eccentricity(ByVal jtwok As Double) As Double
   kwsun_eccentricity = ((-1.2025E-9) * jtwok + Kwplanets.EARTH_ECCENTRICITY)
   Exit Function
End Function
Public Shared Function kwsun_perihelion_rad(ByVal jtwok As Double) As Double
   Dim pdeg As Double
   pdeg = (8.850749897E-6) * jtwok + 282.93768193
   kwsun_perihelion_rad = Kw.deg2rad(Kw.fmodu(pdeg, Kw.tur2deg(1.0)))
End Function
Public Shared Function kwsun_mean_anomaly_rad(ByVal jtwok As Double) As _
         Double
   Dim madeg As Double
   Dim jtwoke As Double
   jtwoke = jtwok + Kw.TT_AT_0UT1 / Kw.EARTH_SOLARDAY
   madeg = ((((-6.84081855587485E-20) * jtwoke - 1.20158105729576E-13) * _
            jtwoke + 0.98560028309377146) * jtwoke + 357.52772)
   kwsun_mean_anomaly_rad = Kw.deg2rad(Kw.fmodu(madeg, Kw.tur2deg(1.0)))
End Function
Public Shared Function kwsun_gmst_rad(ByVal jtwok As Double) As Double
   Dim gmt_arcdeg As Double
   gmt_arcdeg = ((((-5.30159020088E-22) * jtwok + 2.90787862944E-13) * _
            jtwok + Kw.tur2deg(Kw.EARTH_SOLARDAY / _
            Kwplanets.EARTH_SIDEREALDAY)) * jtwok + _
            Kw.rad2deg(Kwplanets.EARTH_THETA_0))
   kwsun_gmst_rad = Kw.fmodu(Kw.deg2rad(gmt_arcdeg), Kw.tur2rad(1.0))
End Function
Public Shared Function kwsun_lmst_rad(ByVal jtwok As Double, ByVal _
         geo_longitude_deg As Double) As Double
   kwsun_lmst_rad = Kw.fmodu(kwsun_gmst_rad(jtwok) + _
            Kw.deg2rad(geo_longitude_deg), Kw.tur2rad(1.0))
End Function
Private Shared Function lf_x_earth_position(ByVal jtwok As Double) As Double
   ' local-use Vbdotnet lv_x_sun_rad
   ' local-use Vbdotnet lv_x_sun_ra_rad
   ' local-use Vbdotnet lv_x_sun_dec_rad
   ' local-use Vbdotnet lv_x_sun_dist_m
   Dim ww_rad As Double
   Dim ecc As Double
   Dim mm_rad As Double
   Dim obl_rad As Double
   Dim sun_rad As Double
   Dim sun_xx_au As Double
   Dim sun_yy_au As Double
   Dim sun_dist_au As Double
   Dim lonsun_rad As Double
   Dim ys As Double
   Dim earth_xx_au As Double
   Dim earth_yy_au As Double
   Dim earth_zz_au As Double
   ww_rad = kwsun_perihelion_rad(jtwok)
   ecc = kwsun_eccentricity(jtwok)
   mm_rad = kwsun_mean_anomaly_rad(jtwok)
   obl_rad = kwsun_obliquity_rad(jtwok)
   lv_x_sun_rad = (ww_rad + mm_rad + Kw.tur2rad(0.5))
   sun_rad = (mm_rad + ecc * Math.Sin(mm_rad) * (1.0 + ecc * _
            Math.Cos(mm_rad)))
   sun_xx_au = Math.Cos(sun_rad) - ecc
   sun_yy_au = Kw.topyh1(ecc) * Math.Sin(sun_rad)
   sun_dist_au = Kw.hypot(sun_xx_au, sun_yy_au)
   lv_x_sun_dist_m = Kw.ASTRONOMICALUNIT * (1.0 - ecc * Math.Cos(sun_rad))
   lonsun_rad = Math.Atan2(sun_yy_au, sun_xx_au) + ww_rad
   earth_xx_au = sun_dist_au * Math.Cos(lonsun_rad)
   ys = sun_dist_au * Math.Sin(lonsun_rad)
   earth_yy_au = ys * Math.Cos(obl_rad)
   earth_zz_au = ys * Math.Sin(obl_rad)
   lv_x_sun_ra_rad = Kw.fmodu(Math.Atan2(earth_yy_au, earth_xx_au), _
            Kw.tur2rad(1.0))
   lv_x_sun_dec_rad = Math.Atan2(earth_zz_au, Kw.hypot(earth_xx_au, _
            earth_yy_au))
   lf_x_earth_position = 0.0
End Function
Public Shared Function kwsunx_init(ByVal jtwok As Double, ByVal tz_hr As _
         Double, ByVal lon_deg As Double, ByVal lat_deg As Double) As Double
   ' local-use Vbdotnet lv_x_loc_transit_tz_day
   ' local-use Vbdotnet lv_x_loc_halfday_day
   ' local-use Vbdotnet lv_x_sun_rad
   ' local-use Vbdotnet lv_x_sun_ra_rad
   ' local-use Vbdotnet lv_x_sun_dec_rad
   Dim ut_transit_day As Double
   Dim lha As Double
   jtwok = jtwok + Kw.rad2tur(kwsun_lmst_rad(jtwok, lon_deg)) - tz_hr * _
            Kw.HOUR / Kw.EARTH_SOLARDAY
   Call lf_x_earth_position(jtwok)
   ut_transit_day = Kw.rad2tur(lv_x_sun_ra_rad - lv_x_sun_rad) - _
            Kw.deg2tur(lon_deg)
   lv_x_loc_transit_tz_day = Kw.frac(ut_transit_day + tz_hr * Kw.HOUR / _
            Kw.EARTH_SOLARDAY)
   lha = (Math.Sin(-Kwsun.SUNBELOW_RAD) - Kw.sind(lat_deg) * _
            Math.Sin(lv_x_sun_dec_rad) / (Kw.cosd(lat_deg) * _
            Math.Cos(lv_x_sun_dec_rad)))
   If (lha <= -0.99999) Then
      lv_x_loc_transit_tz_day = 0.5
      lv_x_loc_halfday_day = 0.5
   ElseIf (0.99999 <= lha) Then
      lv_x_loc_halfday_day = 0.0
   Else
      lv_x_loc_halfday_day = Kw.costinv(lha) + 110.0 * Kw.SECOND / _
               Kw.EARTH_SOLARDAY
   End If
   If (lv_x_loc_transit_tz_day < lv_x_loc_halfday_day) Then
      lv_x_loc_transit_tz_day = lv_x_loc_transit_tz_day + 0.5
   End If
   kwsunx_init = lv_x_loc_transit_tz_day + lv_x_loc_halfday_day
End Function
Public Shared Function kwsunx_set_day() As Double
   ' local-use Vbdotnet lv_x_loc_transit_tz_day
   ' local-use Vbdotnet lv_x_loc_halfday_day
   kwsunx_set_day = lv_x_loc_transit_tz_day + lv_x_loc_halfday_day
End Function
Public Shared Function kwsunx_rise_day() As Double
   ' local-use Vbdotnet lv_x_loc_transit_tz_day
   ' local-use Vbdotnet lv_x_loc_halfday_day
   kwsunx_rise_day = lv_x_loc_transit_tz_day - lv_x_loc_halfday_day
End Function
Public Shared Function kwsunx_transit_day() As Double
   ' local-use Vbdotnet lv_x_loc_transit_tz_day
   kwsunx_transit_day = lv_x_loc_transit_tz_day
End Function
Public Shared Function kwsunx_dist_m() As Double
   ' local-use Vbdotnet lv_x_sun_dist_m
   kwsunx_dist_m = lv_x_sun_dist_m
End Function
Public Shared Function kwsunx_dec_rad() As Double
   ' local-use Vbdotnet lv_x_sun_dec_rad
   kwsunx_dec_rad = lv_x_sun_dec_rad
End Function
Public Shared Function kwsunx_ra_rad() As Double
   ' local-use Vbdotnet lv_x_sun_ra_rad
   kwsunx_ra_rad = lv_x_sun_ra_rad
End Function
Public Shared Function kwsun_eccentric_anomaly_rad(ByVal ma_deg As Double _
         , ByVal eccen As Double) As Double
   Dim ma_rad As Double
   Dim xrad As Double
   Dim xrad_prev As Double
   ma_rad = Kw.deg2rad(ma_deg)
   xrad = ma_rad + eccen * Math.Sin(ma_rad)
   Do While (True)
      xrad_prev = xrad
      xrad = xrad - (xrad - eccen * Math.Sin(xrad) - ma_rad) / (1.0 - _
               eccen * Math.Cos(xrad))
      If (Kw.iseq(xrad, xrad_prev)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   kwsun_eccentric_anomaly_rad = xrad
End Function
Public Shared Function kwsun_sun(ByVal jtwok As Double) As Double
   ' local-use Vbdotnet lv_sun_ra_rad
   ' local-use Vbdotnet lv_sun_dec_rad
   Dim mean_longitude_sun_rad As Double
   Dim mean_anomaly_sun_rad As Double
   Dim dl_arcsec As Double
   Dim sl As Double
   Dim xx As Double
   Dim yy As Double
   Dim zz As Double
   Dim rho As Double
   Dim obl_rad As Double
   Dim ecc As Double
   Dim sun_rad As Double
   mean_anomaly_sun_rad = kwsun_mean_anomaly_rad(jtwok)
   ecc = kwsun_eccentricity(jtwok)
   obl_rad = kwsun_obliquity_rad(jtwok)
   dl_arcsec = (6893.0 * Math.Sin(mean_anomaly_sun_rad) + 72.0 * _
            Math.Sin(2.0 * mean_anomaly_sun_rad))
   mean_longitude_sun_rad = Kw.tur2rad(0.7859453) + mean_anomaly_sun_rad _
            + Kw.sec2rad(0.169505818 * jtwok + dl_arcsec)
   sun_rad = (mean_anomaly_sun_rad + ecc * Math.Sin(mean_anomaly_sun_rad) _
            * (1.0 + ecc * Math.Cos(mean_anomaly_sun_rad)))
   lv_sun_dist_m = Kw.ASTRONOMICALUNIT * (1.0 - ecc * Math.Cos(sun_rad))
   sl = Math.Sin(mean_longitude_sun_rad)
   xx = Math.Cos(mean_longitude_sun_rad)
   yy = Math.Cos(obl_rad) * sl
   zz = Math.Sin(obl_rad) * sl
   rho = Kw.topyh1(zz)
   lv_sun_dec_rad = Math.Atan2(zz, rho)
   lv_sun_ra_rad = 2.0 * Math.Atan2(yy, xx + rho)
   If (lv_sun_ra_rad < 0.0) Then
      lv_sun_ra_rad = lv_sun_ra_rad + Kw.tur2rad(1.0)
   End If
   kwsun_sun = lv_sun_dist_m
End Function
Public Shared Function kwsun_dist_m() As Double
   ' local-use Vbdotnet lv_sun_dist_m
   kwsun_dist_m = lv_sun_dist_m
End Function
Public Shared Function kwsun_dec_rad() As Double
   ' local-use Vbdotnet lv_sun_dec_rad
   kwsun_dec_rad = lv_sun_dec_rad
End Function
Public Shared Function kwsun_ra_rad() As Double
   ' local-use Vbdotnet lv_sun_ra_rad
   kwsun_ra_rad = lv_sun_ra_rad
End Function
Private Shared Function lf_sinalt(ByVal jtwok As Double, ByVal _
         geo_longitude_deg As Double, ByVal cos_geo_latitude As Double, _
         ByVal sin_geo_latitude As Double) As Double
   ' local-use Vbdotnet lv_sun_ra_rad
   ' local-use Vbdotnet lv_sun_dec_rad
   Dim tau_rads As Double
   Call kwsun_sun(jtwok)
   tau_rads = (kwsun_lmst_rad(jtwok, geo_longitude_deg) - lv_sun_ra_rad)
   lf_sinalt = sin_geo_latitude * Math.Sin(lv_sun_dec_rad) + _
            cos_geo_latitude * Math.Cos(lv_sun_dec_rad) * Math.Cos(tau_rads)
End Function
Private Shared Function lf_parabola_solve(ByVal delta_x As Double, ByVal _
         ym As Double, ByVal yz As Double, ByVal yp As Double) As Double
   lf_parabola_solve = Kw.parabola_solve(-delta_x, ym, 0.0, yz, delta_x, yp)
End Function
Private Shared Function lf_sun_event(ByVal jtwok As Double, ByVal _
         time_zone_in_hours As Double, ByVal geo_lon_deg As Double, ByVal _
         geo_lat_deg As Double, ByVal refraction_rad As Double, ByVal _
         want_sunrise As Integer) As Double
   Dim sin_glat As Double
   Dim cos_glat As Double
   Dim alta_rad As Double
   Dim altb_rad As Double
   Dim altc_rad As Double
   Dim orig_altc_rad As Double
   Dim sa_rad As Double
   Dim sb_rad As Double
   Dim sc_rad As Double
   Dim utrise_fday As Double
   Dim utset_fday As Double
   Dim output_fday As Double
   Dim hours As Double
   Dim ctime_jtwok As Double
   Dim cctime_jtwok As Double
   Dim d_fday As Double
   Dim dd_fday As Double
   Dim rta As Double
   Dim rtb As Double
   Dim rtc As Double
   Dim nrr As Integer
   Dim sunrise_count As Integer
   Dim sunset_count As Integer
   utrise_fday = 0.0
   utset_fday = 0.0
   sin_glat = Kw.sind(geo_lat_deg)
   cos_glat = Kw.cosd(geo_lat_deg)
   jtwok = jtwok - time_zone_in_hours * Kw.HOUR / Kw.EARTH_SOLARDAY
   sunrise_count = 0
   sunset_count = 0
   d_fday = 1.0 * Kw.HOUR / Kw.EARTH_SOLARDAY
   dd_fday = d_fday / 10.0
   altc_rad = Kw.sininv(lf_sinalt(jtwok - d_fday, geo_lon_deg, cos_glat, _
            sin_glat)) - refraction_rad
   orig_altc_rad = altc_rad
   For hours = 1.0 To Kw.EARTH_SOLARDAY / Kw.HOUR Step 2.0
      ctime_jtwok = jtwok + hours * Kw.HOUR / Kw.EARTH_SOLARDAY
      alta_rad = altc_rad
      altb_rad = Kw.sininv(lf_sinalt(ctime_jtwok, geo_lon_deg, cos_glat, _
               sin_glat)) - refraction_rad
      altc_rad = Kw.sininv(lf_sinalt(ctime_jtwok + d_fday, geo_lon_deg, _
               cos_glat, sin_glat)) - refraction_rad
      Call lf_parabola_solve(d_fday, alta_rad, altb_rad, altc_rad)
      nrr = 0
      rtb = Kw.parabola_roots(0)
      rtc = Kw.parabola_roots(1)
      rta = 0.0
      If (Math.Abs(rtb) < d_fday) Then
         rta = rtb
         nrr = nrr + 1
      End If
      If (Math.Abs(rtc) < d_fday) Then
         rta = rtc
         nrr = nrr + 1
      End If
      If (nrr = 1) Then
         cctime_jtwok = ctime_jtwok + rta
         sa_rad = (Kw.sininv(lf_sinalt(cctime_jtwok - dd_fday, _
                  geo_lon_deg, cos_glat, sin_glat)) - refraction_rad)
         sb_rad = (Kw.sininv(lf_sinalt(cctime_jtwok, geo_lon_deg, _
                  cos_glat, sin_glat)) - refraction_rad)
         sc_rad = (Kw.sininv(lf_sinalt(cctime_jtwok + dd_fday, _
                  geo_lon_deg, cos_glat, sin_glat)) - refraction_rad)
         Call lf_parabola_solve(dd_fday, sa_rad, sb_rad, sc_rad)
         rtb = Kw.parabola_roots(0)
         rtc = Kw.parabola_roots(1)
         If (Math.Abs(rtb) < dd_fday) Then
            cctime_jtwok = cctime_jtwok + rtb
         Else
            cctime_jtwok = cctime_jtwok + rtc
         End If
         If (sa_rad < sb_rad) Then
            utrise_fday = cctime_jtwok - jtwok
            sunrise_count = sunrise_count + 1
         Else
            utset_fday = cctime_jtwok - jtwok
            sunset_count = sunset_count + 1
         End If
      ElseIf (nrr = 2) Then
         If (Kw.parabola_yextrema() < 0.0) Then
            utrise_fday = hours * Kw.HOUR / Kw.EARTH_SOLARDAY + rtc
            utset_fday = hours * Kw.HOUR / Kw.EARTH_SOLARDAY + rtb
         Else
            utrise_fday = hours * Kw.HOUR / Kw.EARTH_SOLARDAY + rtb
            utset_fday = hours * Kw.HOUR / Kw.EARTH_SOLARDAY + rtc
         End If
         sunrise_count = sunrise_count + 1
         sunset_count = sunset_count + 1
      End If
      If (0 < sunset_count And 0 < sunrise_count) Then
         Exit For
      End If
   Next
   If (0 < sunrise_count Or 0 < sunset_count) Then
      output_fday = -1.0
      If (0 < want_sunrise) Then
         If (0 < sunrise_count) Then
            output_fday = utrise_fday
         End If
      ElseIf (0 < sunset_count) Then
         output_fday = utset_fday
      End If
   Else
      If (0.0 < orig_altc_rad) Then
         If (0 < want_sunrise) Then
            output_fday = 0.0
         Else
            output_fday = 1.0
         End If
      Else
         output_fday = 0.5
      End If
   End If
   lf_sun_event = output_fday
End Function
Public Shared Function kwsun_sin_altitude_sun(ByVal jtwok As Double, _
         ByVal time_zone_in_hours As Double, ByVal geo_lon_deg As Double, _
         ByVal geo_lat_deg As Double) As Double
   Dim jtwoktz As Double
   Dim salt As Double
   jtwoktz = jtwok - time_zone_in_hours * Kw.HOUR / Kw.EARTH_SOLARDAY
   salt = lf_sinalt(jtwoktz, geo_lon_deg, Kw.cosd(geo_lat_deg), _
            Kw.sind(geo_lat_deg))
   kwsun_sin_altitude_sun = salt
End Function
Public Shared Function kwsun_rise_day(ByVal jtwok As Double, ByVal _
         tz_in_hours As Double, ByVal lon_deg As Double, ByVal lat_deg As _
         Double) As Double
   kwsun_rise_day = lf_sun_event(jtwok, tz_in_hours, lon_deg, lat_deg, - _
            Kwsun.SUNBELOW_RAD, 1)
End Function
Public Shared Function kwsun_set_day(ByVal jtwok As Double, ByVal _
         tz_in_hours As Double, ByVal lon_deg As Double, ByVal lat_deg As _
         Double) As Double
   kwsun_set_day = lf_sun_event(jtwok, tz_in_hours, lon_deg, lat_deg, - _
            Kwsun.SUNBELOW_RAD, 0)
End Function
Public Shared Function kwsun_moon(ByVal jtwok As Double) As Double
   Dim meanlong_moon As Double
   Dim ma_moon_rad As Double
   Dim ma_sun_rad As Double
   Dim d_rad As Double
   Dim farg_rad As Double
   Dim fifi_arcsec As Double
   Dim ss_rad As Double
   Dim hh_rad As Double
   Dim lct_arcsec As Double
   Dim lmoon_rad As Double
   Dim bmoon_rad As Double
   Dim cb As Double
   Dim xx As Double
   Dim zz As Double
   Dim vv As Double
   Dim ww As Double
   Dim yy As Double
   Dim coseps As Double
   Dim sineps As Double
   Dim rho As Double
   Dim obliquity As Double
   Dim jcen As Double
   jcen = jtwok * Kw.EARTH_SOLARDAY / Kw.JCENTURY
   meanlong_moon = Kw.frac(0.606433 + 1336.855225 * jcen)
   ma_moon_rad = Kw.tur2rad(Kw.frac(0.374897 + 1325.55241 * jcen))
   ma_sun_rad = Kw.tur2rad(Kw.frac(0.993133 + 99.997361 * jcen))
   d_rad = Kw.tur2rad(Kw.frac(0.827361 + 1236.853086 * jcen))
   farg_rad = Kw.tur2rad(Kw.frac(0.259086 + 1342.227825 * jcen))
   fifi_arcsec = (0.0 + 22640.0 * Math.Sin(ma_moon_rad) - 4586.0 * _
            Math.Sin(ma_moon_rad - 2.0 * d_rad) + 192.0 * _
            Math.Sin(ma_moon_rad + 2.0 * d_rad) - 110.0 * _
            Math.Sin(ma_moon_rad + ma_sun_rad) + 148.0 * _
            Math.Sin(ma_moon_rad - ma_sun_rad) - 206.0 * _
            Math.Sin(ma_moon_rad + ma_sun_rad - 2.0 * d_rad) - 125.0 * _
            Math.Sin(d_rad) + 2370.0 * Math.Sin(2.0 * d_rad) + 769.0 * _
            Math.Sin(2.0 * ma_moon_rad) - 212.0 * Math.Sin(2.0 * _
            ma_moon_rad - 2.0 * d_rad) - 412.0 * Math.Sin(2.0 * farg_rad) _
            - 55.0 * Math.Sin(2.0 * farg_rad - 2.0 * d_rad) - 668.0 * _
            Math.Sin(ma_sun_rad) - 165.0 * Math.Sin(ma_sun_rad - 2.0 * _
            d_rad))
   ss_rad = farg_rad + Kw.sec2rad(fifi_arcsec + 412.0 * Math.Sin(2.0 * _
            farg_rad) + 541.0 * Math.Sin(ma_sun_rad))
   hh_rad = farg_rad - 2.0 * d_rad
   lct_arcsec = (-526.0 * Math.Sin(hh_rad) + 44.0 * Math.Sin(hh_rad + _
            ma_moon_rad) - 31.0 * Math.Sin(hh_rad - ma_moon_rad) + 11.0 * _
            Math.Sin(hh_rad - ma_sun_rad) - 23.0 * Math.Sin(ma_sun_rad + _
            hh_rad) - 25.0 * Math.Sin(farg_rad - 2.0 * ma_moon_rad) + _
            21.0 * Math.Sin(farg_rad - ma_moon_rad))
   lmoon_rad = Kw.tur2rad(Kw.frac(meanlong_moon + Kw.sec2tur(fifi_arcsec)))
   bmoon_rad = Kw.sec2rad(18520.0 * Math.Sin(ss_rad) + lct_arcsec)
   cb = Math.Cos(bmoon_rad)
   xx = cb * Math.Cos(lmoon_rad)
   vv = cb * Math.Sin(lmoon_rad)
   ww = Math.Sin(bmoon_rad)
   obliquity = kwsun_obliquity_rad(jtwok)
   coseps = Math.Cos(obliquity)
   sineps = Math.Sin(obliquity)
   yy = coseps * vv - sineps * ww
   zz = sineps * vv + coseps * ww
   rho = Kw.topyh1(zz)
   lv_moon_dec_rad = Math.Atan2(zz, rho)
   lv_moon_ra_rad = Kw.fmodu(2.0 * Math.Atan2(yy, xx + rho), Kw.tur2rad(1.0))
   kwsun_moon = rho * Kwplanets.MOON_ORBIT
End Function
Public Shared Function kwsun_moon_dec_rad() As Double
   ' local-use Vbdotnet lv_moon_dec_rad
   kwsun_moon_dec_rad = lv_moon_dec_rad
End Function
Public Shared Function kwsun_moon_ra_rad() As Double
   ' local-use Vbdotnet lv_moon_ra_rad
   kwsun_moon_ra_rad = lv_moon_ra_rad
End Function
Private Shared Function lf_ra_sunmoon_diff_rad(ByVal jtwok As Double, _
         ByVal frad As Double) As Double
   Dim moon_ra As Double
   Dim sun_ra As Double
   Call kwsun_moon(jtwok)
   moon_ra = kwsun_moon_ra_rad()
   Call kwsun_sun(jtwok)
   sun_ra = kwsun_ra_rad()
   lf_ra_sunmoon_diff_rad = Kw.ddist(moon_ra - sun_ra - frad, Kw.TAU / 2.0)
End Function
Public Shared Function kwsun_lunation(ByVal nn As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Integer
   Dim jtwokapp As Double
   Dim frad As Double
   jtwokapp = 5.00 + nn * Kw.MOON_MONTH / Kw.JDAY
   frad = Kw.tur2rad(Kw.frac(nn))
   scvx_dx = 0.5
   scvx_xx = jtwokapp
   scvx_yy = lf_ra_sunmoon_diff_rad(scvx_xx, frad)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = lf_ra_sunmoon_diff_rad(scvx_xx, frad)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   kwsun_lunation = scvx_xx
End Function
'   DDDDDDDDDDescription ################################ kwsun_description #
Public Function kwsun_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD" & vbNL
   desc_string = desc_string _
         & "   Kwsun 0-ary Functions: kwsun_dec_rad kwsun_dist_m kwsun_moo" _
         & "n_dec_rad kwsun_moon_ra_rad kwsun_ra_rad kwsunx_dec_rad kwsunx" _
         & "_dist_m kwsunx_ra_rad kwsunx_rise_day kwsunx_set_day kwsunx_tr" _
         & "ansit_day" & vbNL
   desc_string = desc_string _
         & "   Kwsun 1-ary Functions: kwsun_eccentricity kwsun_gmst_rad kw" _
         & "sun_lunation kwsun_mean_anomaly_rad kwsun_moon kwsun_obliquity" _
         & "_rad kwsun_perihelion_rad kwsun_sun" & vbNL
   desc_string = desc_string _
         & "   Kwsun 2-ary Functions: kwsun_eccentric_anomaly_rad kwsun_lm" _
         & "st_rad" & vbNL
   desc_string = desc_string _
         & "   Kwsun 4-ary Functions: kwsun_rise_day kwsun_set_day kwsun_s" _
         & "in_altitude_sun kwsunx_init"
   kwsun_description = desc_string
End Function
Public Function kwsun_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kwsun Constants: ATMOSREFRACT_RAD SUNBELOW_RAD" & vbNL
   desc_string = desc_string _
         & "   Kwsun 0-ary Functions: kwsun(_(d(ec_rad|ist_m)|moon_(dec_ra" _
         & "d|ra_rad)|ra_rad)|x_(d(ec_rad|ist_m)|r(a_rad|ise_day)|set_day|" _
         & "transit_day))" & vbNL
   desc_string = desc_string _
         & "   Kwsun 1-ary Functions: kwsun_(eccentricity|gmst_rad|lunatio" _
         & "n|m(ean_anomaly_rad|oon)|obliquity_rad|perihelion_rad|sun)" & _
                  vbNL
   desc_string = desc_string _
         & "   Kwsun 2-ary Functions: kwsun_(eccentric_anomaly_rad|lmst_ra" _
         & "d)" & vbNL
   desc_string = desc_string _
         & "   Kwsun 4-ary Functions: kwsun(_(rise_day|s(et_day|in_altitud" _
         & "e_sun))|x_init)"
   kwsun_desc = desc_string
End Function
End Class
