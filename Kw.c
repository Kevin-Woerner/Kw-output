//   Copyright (C) 2020 by Kevin D. Woerner
//-/ =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
//-/ =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
//-/ =KDW= ######### SRC $KWROOT/codekdw/kw-lib/Kw.fwipp ########
// 2020-07-17 kdw  For Changelog, See File Kw.varylog
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include "Kw.h"
//  CCCCCCCCCConstant ---------------------------------- LANG_C #
double cxkilogram(void) { return (KILOGRAM); }
double cxmeter(void) { return (METER); }
double cxsecond(void) { return (SECOND); }
double cxkelvin(void) { return (KELVIN); }
double cxampere(void) { return (AMPERE); }
double cxcoulomb(void) { return (COULOMB); }
double cxmole(void) { return (MOLE); }
double cxcandela(void) { return (CANDELA); }
double cxbit(void) { return (BIT); }
double cxradian(void) { return (RADIAN); }
double cxsteradian(void) { return (STERADIAN); }
double cxmetre(void) { return (METRE); }
double cxkg(void) { return (KG); }
double cxrad(void) { return (RAD); }
double cxe(void) { return (E); }
double cxtau(void) { return (TAU); }
double cxphi(void) { return (PHI); }
double cxlntwo(void) { return (LNTWO); }
double cxlnten(void) { return (LNTEN); }
double cxsqrttwo(void) { return (SQRTTWO); }
double cxeuler(void) { return (EULER); }
double cxfeigenbaum(void) { return (FEIGENBAUM); }
double cxapery(void) { return (APERY); }
double cxpi(void) { return (PI); }
double cxyotta(void) { return (YOTTA); }
double cxzetta(void) { return (ZETTA); }
double cxexa(void) { return (EXA); }
double cxpeta(void) { return (PETA); }
double cxtera(void) { return (TERA); }
double cxgiga(void) { return (GIGA); }
double cxmega(void) { return (MEGA); }
double cxkilo(void) { return (KILO); }
double cxhecto(void) { return (HECTO); }
double cxdeca(void) { return (DECA); }
double cxdeci(void) { return (DECI); }
double cxcenti(void) { return (CENTI); }
double cxmilli(void) { return (MILLI); }
double cxmicro(void) { return (MICRO); }
double cxnano(void) { return (NANO); }
double cxpico(void) { return (PICO); }
double cxfemto(void) { return (FEMTO); }
double cxatto(void) { return (ATTO); }
double cxzepto(void) { return (ZEPTO); }
double cxyocto(void) { return (YOCTO); }
double cxkibi(void) { return (KIBI); }
double cxmebi(void) { return (MEBI); }
double cxgibi(void) { return (GIBI); }
double cxtebi(void) { return (TEBI); }
double cxpebi(void) { return (PEBI); }
double cxexbi(void) { return (EXBI); }
double cxzebi(void) { return (ZEBI); }
double cxyobi(void) { return (YOBI); }
double cxmps(void) { return (MPS); }
double cxmpss(void) { return (MPSS); }
double cxunitgm(void) { return (UNITGM); }
double cxnewton(void) { return (NEWTON); }
double cxjoule(void) { return (JOULE); }
double cxpa(void) { return (PA); }
double cxwatt(void) { return (WATT); }
double cxhertz(void) { return (HERTZ); }
double cxamp(void) { return (AMP); }
double cxvolt(void) { return (VOLT); }
double cxohm(void) { return (OHM); }
double cxhenry(void) { return (HENRY); }
double cxfarad(void) { return (FARAD); }
double cxsiemens(void) { return (SIEMENS); }
double cxweber(void) { return (WEBER); }
double cxtesla(void) { return (TESLA); }
double cxlumen(void) { return (LUMEN); }
double cxlux(void) { return (LUX); }
double cxboltzmann(void) { return (BOLTZMANN); }
double cxboltzmann_err(void) { return (BOLTZMANN_ERR); }
double cxelectroncharge(void) { return (ELECTRONCHARGE); }
double cxelectroncharge_err(void) {
   return (ELECTRONCHARGE_ERR); }
double cxlight(void) { return (LIGHT); }
double cxlight_err(void) { return (LIGHT_ERR); }
double cxavogadro(void) { return (AVOGADRO); }
double cxavogadro_err(void) { return (AVOGADRO_ERR); }
double cxplanck(void) { return (PLANCK); }
double cxplanck_err(void) { return (PLANCK_ERR); }
double cxkcd(void) { return (KCD); }
double cxkcd_err(void) { return (KCD_ERR); }
double cxdvcshz(void) { return (dvCsHz); }
double cxdvcswavelength(void) { return (dvCsWAVELENGTH); }
double cxdvcswavenumber(void) { return (dvCsWAVENUMBER); }
double cxdvcsenergy(void) { return (dvCsENERGY); }
double cxdvcs_err(void) { return (dvCs_ERR); }
double cxkb(void) { return (kB); }
double cxkb_err(void) { return (kB_ERR); }
double cxelementarycharge(void) { return (ELEMENTARYCHARGE); }
double cxelementarycharge_err(void) {
   return (ELEMENTARYCHARGE_ERR); }
double cxplanckbar(void) { return (PLANCKBAR); }
double cxplanckbar_err(void) { return (PLANCKBAR_ERR); }
double cxh(void) { return (h); }
double cxh_err(void) { return (h_ERR); }
double cxhbar(void) { return (HBAR); }
double cxhbar_err(void) { return (HBAR_ERR); }
double cxboltzmann_rec(void) { return (BOLTZMANN_REC); }
double cxelectroncharge_rec(void) {
   return (ELECTRONCHARGE_REC); }
double cxlight_rec(void) { return (LIGHT_REC); }
double cxavogadro_rec(void) { return (AVOGADRO_REC); }
double cxdvcshz_rec(void) { return (dvCsHz_REC); }
double cxplanck_rec(void) { return (PLANCK_REC); }
double cxh_rec(void) { return (h_REC); }
double cxkb_rec(void) { return (kB_REC); }
double cxkghz(void) { return (KGHz); }
double cxkgwavelength(void) { return (KGWAVELENGTH); }
double cxkgwavenumber(void) { return (KGWAVENUMBER); }
double cxkgenergy(void) { return (KGENERGY); }
double cxgravity(void) { return (GRAVITY); }
double cxgravity_err(void) { return (GRAVITY_ERR); }
double cxatmosphere(void) { return (ATMOSPHERE); }
double cxatmosphere_err(void) { return (ATMOSPHERE_ERR); }
double cxau(void) { return (AU); }
double cxau_err(void) { return (AU_ERR); }
double cxjosephson(void) { return (JOSEPHSON); }
double cxjosephson_err(void) { return (JOSEPHSON_ERR); }
double cxvonklitzing(void) { return (VONKLITZING); }
double cxvonklitzing_err(void) { return (VONKLITZING_ERR); }
double cxfaraday(void) { return (FARADAY); }
double cxfaraday_err(void) { return (FARADAY_ERR); }
double cxgas(void) { return (GAS); }
double cxgas_err(void) { return (GAS_ERR); }
double cxgravitation(void) { return (GRAVITATION); }
double cxgravitation_err(void) { return (GRAVITATION_ERR); }
double cxrydberg(void) { return (RYDBERG); }
double cxrydberg_err(void) { return (RYDBERG_ERR); }
double cxg(void) { return (G); }
double cxg_err(void) { return (G_ERR); }
double cxalpha(void) { return (ALPHA); }
double cxalpha_err(void) { return (ALPHA_ERR); }
double cxalpha_rec(void) { return (ALPHA_REC); }
double cxalpha_rec_err(void) { return (ALPHA_REC_ERR); }
double cxfltsig(void) { return (FLTSIG); }
double cxfltman(void) { return (FLTMAN); }
double cxflteps(void) { return (FLTEPS); }
double cxfltmax(void) { return (FLTMAX); }
double cxdblmaxln(void) { return (DBLMAXLN); }
double cxdblsig(void) { return (DBLSIG); }
double cxdblman(void) { return (DBLMAN); }
double cxdbleps(void) { return (DBLEPS); }
double cxdblmax(void) { return (DBLMAX); }
double cxsi16max(void) { return (SI16MAX); }
double cxsi16min(void) { return (SI16MIN); }
double cxui16max(void) { return (UI16MAX); }
double cxsi32max(void) { return (SI32MAX); }
double cxsi32min(void) { return (SI32MIN); }
double cxui32max(void) { return (UI32MAX); }
double cxintmax(void) { return (INTMAX); }
double cxmonths_in_year(void) { return (MONTHS_IN_YEAR); }
double cxminute(void) { return (MINUTE); }
double cxhour(void) { return (HOUR); }
double cxday(void) { return (DAY); }
double cxearthsolarday(void) { return (EARTHSOLARDAY); }
double cxweek(void) { return (WEEK); }
double cxflick(void) { return (FLICK); }
double cxjulianday(void) { return (JULIANDAY); }
double cxjulianyear(void) { return (JULIANYEAR); }
double cxjuliancentury(void) { return (JULIANCENTURY); }
double cxjulianmillennium(void) { return (JULIANMILLENNIUM); }
double cxjday(void) { return (JDAY); }
double cxjyear(void) { return (JYEAR); }
double cxjcentury(void) { return (JCENTURY); }
double cxjmillennium(void) { return (JMILLENNIUM); }
double cxjd(void) { return (JD); }
double cxjy(void) { return (JY); }
double cxjc(void) { return (JC); }
double cxjm(void) { return (JM); }
double cxjewish_first_month(void) {
   return (JEWISH_FIRST_MONTH); }
double cxgyear(void) { return (GYEAR); }
double cxgregorianyear(void) { return (GREGORIANYEAR); }
double cxkwt(void) { return (KWT); }
double cxuet(void) { return (UET); }
double cxj2k(void) { return (J2K); }
double cxj2kday(void) { return (J2KDAY); }
double cxjdsec_at_0gregorian(void) {
   return (JDSEC_AT_0GREGORIAN); }
double cxjdsec_at_0kwt(void) { return (JDSEC_AT_0KWT); }
double cxjdsec_at_0j2k(void) { return (JDSEC_AT_0J2K); }
double cxjdsec_at_0uet(void) { return (JDSEC_AT_0UET); }
double cxtt_at_0tai(void) { return (TT_AT_0TAI); }
double cxtt_at_0ut1(void) { return (TT_AT_0UT1); }
double cxgram(void) { return (GRAM); }
double cxpound(void) { return (POUND); }
double cxlb(void) { return (LB); }
double cxounce(void) { return (OUNCE); }
double cxton(void) { return (TON); }
double cxtonne(void) { return (TONNE); }
double cxgrain(void) { return (GRAIN); }
double cxcarat(void) { return (CARAT); }
double cxmm(void) { return (MM); }
double cxinch(void) { return (INCH); }
double cxfoot(void) { return (FOOT); }
double cxft(void) { return (FT); }
double cxyard(void) { return (YARD); }
double cxmile(void) { return (MILE); }
double cxpoint(void) { return (POINT); }
double cxstandardgravity(void) { return (STANDARDGRAVITY); }
double cxearthgravitya(void) { return (EARTHGRAVITYA); }
double cxearthgravityb(void) { return (EARTHGRAVITYB); }
double cxgravitationnasa(void) { return (GRAVITATIONNASA); }
double cxgravitationiers(void) { return (GRAVITATIONIERS); }
double cxkgf(void) { return (KGF); }
double cxlbf(void) { return (LBF); }
double cxatm(void) { return (ATM); }
double cxstandardatmosphere(void) {
   return (STANDARDATMOSPHERE); }
double cxtorr(void) { return (TORR); }
double cxbar(void) { return (BAR); }
double cxmmhg(void) { return (MMHG); }
double cxinhg(void) { return (INHG); }
double cxpsi(void) { return (PSI); }
double cxdegc(void) { return (DEGC); }
double cxdegf(void) { return (DEGF); }
double cxdegr(void) { return (DEGR); }
double cxk_at_0tempc(void) { return (K_AT_0TEMPC); }
double cxk_at_0tempf(void) { return (K_AT_0TEMPF); }
double cxk_at_0tempr(void) { return (K_AT_0TEMPR); }
double cxmach(void) { return (MACH); }
double cxmph(void) { return (MPH); }
double cxhectare(void) { return (HECTARE); }
double cxare(void) { return (ARE); }
double cxacre(void) { return (ACRE); }
double cxbarn(void) { return (BARN); }
double cxliter(void) { return (LITER); }
double cxlitre(void) { return (LITRE); }
double cxgallon(void) { return (GALLON); }
double cxquart(void) { return (QUART); }
double cxpint(void) { return (PINT); }
double cxcup(void) { return (CUP); }
double cxfloz(void) { return (FLOZ); }
double cxtblsp(void) { return (TBLSP); }
double cxtsp(void) { return (TSP); }
double cxbarrel(void) { return (BARREL); }
double cxah(void) { return (AH); }
double cxcalorie(void) { return (CALORIE); }
double cxcal_it(void) { return (CAL_IT); }
double cxcal_th(void) { return (CAL_TH); }
double cxcal(void) { return (CAL); }
double cxbtu_th(void) { return (BTU_TH); }
double cxbtu_it(void) { return (BTU_IT); }
double cxbtu(void) { return (BTU); }
double cxhp(void) { return (HP); }
double cxhorsepower(void) { return (HORSEPOWER); }
double cxhpmetric(void) { return (HPMETRIC); }
double cxelectronvolt(void) { return (ELECTRONVOLT); }
double cxerg(void) { return (ERG); }
double cxfoe(void) { return (FOE); }
double cxaaabatterycharge(void) { return (AAABATTERYCHARGE); }
double cxaaabatteryvoltage(void) { return (AAABATTERYVOLTAGE); }
double cxaaabattery(void) { return (AAABATTERY); }
double cxaaabatteryenergy(void) { return (AAABATTERYENERGY); }
double cxaabatterycharge(void) { return (AABATTERYCHARGE); }
double cxaabatteryvoltage(void) { return (AABATTERYVOLTAGE); }
double cxaabattery(void) { return (AABATTERY); }
double cxaabatteryenergy(void) { return (AABATTERYENERGY); }
double cxcbatterycharge(void) { return (CBATTERYCHARGE); }
double cxcbatteryvoltage(void) { return (CBATTERYVOLTAGE); }
double cxcbattery(void) { return (CBATTERY); }
double cxcbatteryenergy(void) { return (CBATTERYENERGY); }
double cxdbatterycharge(void) { return (DBATTERYCHARGE); }
double cxdbatteryvoltage(void) { return (DBATTERYVOLTAGE); }
double cxdbattery(void) { return (DBATTERY); }
double cxdbatteryenergy(void) { return (DBATTERYENERGY); }
double cxninevoltcharge(void) { return (NINEVOLTCHARGE); }
double cxninevoltvoltage(void) { return (NINEVOLTVOLTAGE); }
double cxninevolt(void) { return (NINEVOLT); }
double cxninevoltenergy(void) { return (NINEVOLTENERGY); }
double cxninevoltbatterycharge(void) {
   return (NINEVOLTBATTERYCHARGE); }
double cxninevoltbatteryvoltage(void) {
   return (NINEVOLTBATTERYVOLTAGE); }
double cxninevoltbattery(void) { return (NINEVOLTBATTERY); }
double cxninevoltbatteryenergy(void) {
   return (NINEVOLTBATTERYENERGY); }
double cxphonebatterycharge(void) {
   return (PHONEBATTERYCHARGE); }
double cxphonebatteryvoltage(void) {
   return (PHONEBATTERYVOLTAGE); }
double cxphonebattery(void) { return (PHONEBATTERY); }
double cxphonebatteryenergy(void) {
   return (PHONEBATTERYENERGY); }
double cxcarbatterycharge(void) { return (CARBATTERYCHARGE); }
double cxcarbatteryvoltage(void) { return (CARBATTERYVOLTAGE); }
double cxcarbattery(void) { return (CARBATTERY); }
double cxcarbatteryenergy(void) { return (CARBATTERYENERGY); }
double cxmicrowavehz(void) { return (MICROWAVEHz); }
double cxmicrowavewavelength(void) {
   return (MICROWAVEWAVELENGTH); }
double cxmicrowavewavenumber(void) {
   return (MICROWAVEWAVENUMBER); }
double cxmicrowaveenergy(void) { return (MICROWAVEENERGY); }
double cxlfhz(void) { return (LFHz); }
double cxlfwavelength(void) { return (LFWAVELENGTH); }
double cxlfwavenumber(void) { return (LFWAVENUMBER); }
double cxlfenergy(void) { return (LFENERGY); }
double cxmfhz(void) { return (MFHz); }
double cxmfwavelength(void) { return (MFWAVELENGTH); }
double cxmfwavenumber(void) { return (MFWAVENUMBER); }
double cxmfenergy(void) { return (MFENERGY); }
double cxhfhz(void) { return (HFHz); }
double cxhfwavelength(void) { return (HFWAVELENGTH); }
double cxhfwavenumber(void) { return (HFWAVENUMBER); }
double cxhfenergy(void) { return (HFENERGY); }
double cxvhfhz(void) { return (VHFHz); }
double cxvhfwavelength(void) { return (VHFWAVELENGTH); }
double cxvhfwavenumber(void) { return (VHFWAVENUMBER); }
double cxvhfenergy(void) { return (VHFENERGY); }
double cxuhfhz(void) { return (UHFHz); }
double cxuhfwavelength(void) { return (UHFWAVELENGTH); }
double cxuhfwavenumber(void) { return (UHFWAVENUMBER); }
double cxuhfenergy(void) { return (UHFENERGY); }
double cxshfhz(void) { return (SHFHz); }
double cxshfwavelength(void) { return (SHFWAVELENGTH); }
double cxshfwavenumber(void) { return (SHFWAVENUMBER); }
double cxshfenergy(void) { return (SHFENERGY); }
double cxehfhz(void) { return (EHFHz); }
double cxehfwavelength(void) { return (EHFWAVELENGTH); }
double cxehfwavenumber(void) { return (EHFWAVENUMBER); }
double cxehfenergy(void) { return (EHFENERGY); }
double cxthfhz(void) { return (THFHz); }
double cxthfwavelength(void) { return (THFWAVELENGTH); }
double cxthfwavenumber(void) { return (THFWAVENUMBER); }
double cxthfenergy(void) { return (THFENERGY); }
double cxfirhz(void) { return (FIRHz); }
double cxfirwavelength(void) { return (FIRWAVELENGTH); }
double cxfirwavenumber(void) { return (FIRWAVENUMBER); }
double cxfirenergy(void) { return (FIRENERGY); }
double cxmirhz(void) { return (MIRHz); }
double cxmirwavelength(void) { return (MIRWAVELENGTH); }
double cxmirwavenumber(void) { return (MIRWAVENUMBER); }
double cxmirenergy(void) { return (MIRENERGY); }
double cxnirhz(void) { return (NIRHz); }
double cxnirwavelength(void) { return (NIRWAVELENGTH); }
double cxnirwavenumber(void) { return (NIRWAVENUMBER); }
double cxnirenergy(void) { return (NIRENERGY); }
double cxredwavelength(void) { return (REDWAVELENGTH); }
double cxredhz(void) { return (REDHz); }
double cxredwavenumber(void) { return (REDWAVENUMBER); }
double cxredenergy(void) { return (REDENERGY); }
double cxorangewavelength(void) { return (ORANGEWAVELENGTH); }
double cxorangehz(void) { return (ORANGEHz); }
double cxorangewavenumber(void) { return (ORANGEWAVENUMBER); }
double cxorangeenergy(void) { return (ORANGEENERGY); }
double cxyellowwavelength(void) { return (YELLOWWAVELENGTH); }
double cxyellowhz(void) { return (YELLOWHz); }
double cxyellowwavenumber(void) { return (YELLOWWAVENUMBER); }
double cxyellowenergy(void) { return (YELLOWENERGY); }
double cxyellowgreenhz(void) { return (YELLOWGREENHz); }
double cxyellowgreenwavelength(void) {
   return (YELLOWGREENWAVELENGTH); }
double cxyellowgreenwavenumber(void) {
   return (YELLOWGREENWAVENUMBER); }
double cxyellowgreenenergy(void) { return (YELLOWGREENENERGY); }
double cxgreenwavelength(void) { return (GREENWAVELENGTH); }
double cxgreenhz(void) { return (GREENHz); }
double cxgreenwavenumber(void) { return (GREENWAVENUMBER); }
double cxgreenenergy(void) { return (GREENENERGY); }
double cxbluewavelength(void) { return (BLUEWAVELENGTH); }
double cxbluehz(void) { return (BLUEHz); }
double cxbluewavenumber(void) { return (BLUEWAVENUMBER); }
double cxblueenergy(void) { return (BLUEENERGY); }
double cxvioletwavelength(void) { return (VIOLETWAVELENGTH); }
double cxviolethz(void) { return (VIOLETHz); }
double cxvioletwavenumber(void) { return (VIOLETWAVENUMBER); }
double cxvioletenergy(void) { return (VIOLETENERGY); }
double cxnuvhz(void) { return (NUVHz); }
double cxnuvwavelength(void) { return (NUVWAVELENGTH); }
double cxnuvwavenumber(void) { return (NUVWAVENUMBER); }
double cxnuvenergy(void) { return (NUVENERGY); }
double cxeuvhz(void) { return (EUVHz); }
double cxeuvwavelength(void) { return (EUVWAVELENGTH); }
double cxeuvwavenumber(void) { return (EUVWAVENUMBER); }
double cxeuvenergy(void) { return (EUVENERGY); }
double cxuvawavelength(void) { return (UVAWAVELENGTH); }
double cxuvahz(void) { return (UVAHz); }
double cxuvawavenumber(void) { return (UVAWAVENUMBER); }
double cxuvaenergy(void) { return (UVAENERGY); }
double cxuvbwavelength(void) { return (UVBWAVELENGTH); }
double cxuvbhz(void) { return (UVBHz); }
double cxuvbwavenumber(void) { return (UVBWAVENUMBER); }
double cxuvbenergy(void) { return (UVBENERGY); }
double cxuvcwavelength(void) { return (UVCWAVELENGTH); }
double cxuvchz(void) { return (UVCHz); }
double cxuvcwavenumber(void) { return (UVCWAVENUMBER); }
double cxuvcenergy(void) { return (UVCENERGY); }
double cxsxhz(void) { return (SXHz); }
double cxsxwavelength(void) { return (SXWAVELENGTH); }
double cxsxwavenumber(void) { return (SXWAVENUMBER); }
double cxsxenergy(void) { return (SXENERGY); }
double cxsxxwavelength(void) { return (SXXWAVELENGTH); }
double cxsxxhz(void) { return (SXXHz); }
double cxsxxwavenumber(void) { return (SXXWAVENUMBER); }
double cxsxxenergy(void) { return (SXXENERGY); }
double cxhxhz(void) { return (HXHz); }
double cxhxwavelength(void) { return (HXWAVELENGTH); }
double cxhxwavenumber(void) { return (HXWAVENUMBER); }
double cxhxenergy(void) { return (HXENERGY); }
double cxgammahz(void) { return (GAMMAHz); }
double cxgammawavelength(void) { return (GAMMAWAVELENGTH); }
double cxgammawavenumber(void) { return (GAMMAWAVENUMBER); }
double cxgammaenergy(void) { return (GAMMAENERGY); }
double cxturn(void) { return (TURN); }
double cxarcdegree(void) { return (ARCDEGREE); }
double cxarcminute(void) { return (ARCMINUTE); }
double cxarcsecond(void) { return (ARCSECOND); }
double cxgrad(void) { return (GRAD); }
double cxarcdeg(void) { return (ARCDEG); }
double cxarcmin(void) { return (ARCMIN); }
double cxarcsec(void) { return (ARCSEC); }
double cxsquaredegree(void) { return (SQUAREDEGREE); }
double cxsqdeg(void) { return (SQDEG); }
double cxspheresurface(void) { return (SPHERESURFACE); }
double cxshannon(void) { return (SHANNON); }
double cxnat(void) { return (NAT); }
double cxhartley(void) { return (HARTLEY); }
double cxhart(void) { return (HART); }
double cxdit(void) { return (DIT); }
double cxban(void) { return (BAN); }
double cxrpm(void) { return (RPM); }
double cxrps(void) { return (RPS); }
double cxfinestructure(void) { return (FINESTRUCTURE); }
double cxfinestructure_err(void) { return (FINESTRUCTURE_ERR); }
double cxfinestructure_rec(void) { return (FINESTRUCTURE_REC); }
double cxfinestructure_rec_err(void) {
   return (FINESTRUCTURE_REC_ERR); }
double cxmagnetic(void) { return (MAGNETIC); }
double cxmagnetic_err(void) { return (MAGNETIC_ERR); }
double cxmu0(void) { return (MU0); }
double cxmu0_err(void) { return (MU0_ERR); }
double cxelectric(void) { return (ELECTRIC); }
double cxelectric_err(void) { return (ELECTRIC_ERR); }
double cxepsilon0(void) { return (EPSILON0); }
double cxepsilon0_err(void) { return (EPSILON0_ERR); }
double cxcoulombconst(void) { return (COULOMBCONST); }
double cxcoulombconst_err(void) { return (COULOMBCONST_ERR); }
double cxprotonradius(void) { return (PROTONRADIUS); }
double cxprotonradius_err(void) { return (PROTONRADIUS_ERR); }
double cxmolarmass(void) { return (MOLARMASS); }
double cxmolarmass_err(void) { return (MOLARMASS_ERR); }
double cxmolarmassx(void) { return (MOLARMASSX); }
double cxmolarmassx_err(void) { return (MOLARMASSX_ERR); }
double cxdalton(void) { return (DALTON); }
double cxdalton_err(void) { return (DALTON_ERR); }
double cxamu(void) { return (AMU); }
double cxamu_err(void) { return (AMU_ERR); }
double cxatomicmassunit(void) { return (ATOMICMASSUNIT); }
double cxatomicmassunit_err(void) {
   return (ATOMICMASSUNIT_ERR); }
double cxuamu(void) { return (UAMU); }
double cxuamu_err(void) { return (UAMU_ERR); }
double cxrydberghz(void) { return (RYDBERGHz); }
double cxrydbergwavelength(void) { return (RYDBERGWAVELENGTH); }
double cxrydbergwavenumber(void) { return (RYDBERGWAVENUMBER); }
double cxrydbergenergy(void) { return (RYDBERGENERGY); }
double cxelectronmassa(void) { return (ELECTRONMASSA); }
double cxelectronmassa_err(void) { return (ELECTRONMASSA_ERR); }
double cxelectronmass(void) { return (ELECTRONMASS); }
double cxelectronmass_err(void) { return (ELECTRONMASS_ERR); }
double cxelectron_mass(void) { return (ELECTRON_MASS); }
double cxelectronenergy(void) { return (ELECTRONENERGY); }
double cxelectronhz(void) { return (ELECTRONHz); }
double cxelectronwavelength(void) {
   return (ELECTRONWAVELENGTH); }
double cxupquarkmass(void) { return (UPQUARKMASS); }
double cxupquarkmass_err(void) { return (UPQUARKMASS_ERR); }
double cxupquark_mass(void) { return (UPQUARK_MASS); }
double cxupquarkenergy(void) { return (UPQUARKENERGY); }
double cxupquarkhz(void) { return (UPQUARKHz); }
double cxupquarkwavelength(void) { return (UPQUARKWAVELENGTH); }
double cxdownquarkmass(void) { return (DOWNQUARKMASS); }
double cxdownquarkmass_err(void) { return (DOWNQUARKMASS_ERR); }
double cxdownquark_mass(void) { return (DOWNQUARK_MASS); }
double cxdownquarkenergy(void) { return (DOWNQUARKENERGY); }
double cxdownquarkhz(void) { return (DOWNQUARKHz); }
double cxdownquarkwavelength(void) {
   return (DOWNQUARKWAVELENGTH); }
double cxmuonmass(void) { return (MUONMASS); }
double cxmuonmass_err(void) { return (MUONMASS_ERR); }
double cxmuon_mass(void) { return (MUON_MASS); }
double cxmuonenergy(void) { return (MUONENERGY); }
double cxmuonhz(void) { return (MUONHz); }
double cxmuonwavelength(void) { return (MUONWAVELENGTH); }
double cxprotonmass(void) { return (PROTONMASS); }
double cxprotonmass_err(void) { return (PROTONMASS_ERR); }
double cxproton_mass(void) { return (PROTON_MASS); }
double cxprotonenergy(void) { return (PROTONENERGY); }
double cxprotonhz(void) { return (PROTONHz); }
double cxprotonwavelength(void) { return (PROTONWAVELENGTH); }
double cxneutronmass(void) { return (NEUTRONMASS); }
double cxneutronmass_err(void) { return (NEUTRONMASS_ERR); }
double cxneutron_mass(void) { return (NEUTRON_MASS); }
double cxneutronenergy(void) { return (NEUTRONENERGY); }
double cxneutronhz(void) { return (NEUTRONHz); }
double cxneutronwavelength(void) { return (NEUTRONWAVELENGTH); }
double cxtaumass(void) { return (TAUMASS); }
double cxtaumass_err(void) { return (TAUMASS_ERR); }
double cxtau_mass(void) { return (TAU_MASS); }
double cxtauenergy(void) { return (TAUENERGY); }
double cxtauhz(void) { return (TAUHz); }
double cxtauwavelength(void) { return (TAUWAVELENGTH); }
double cxdeuteronmass(void) { return (DEUTERONMASS); }
double cxdeuteronmass_err(void) { return (DEUTERONMASS_ERR); }
double cxdeuteron_mass(void) { return (DEUTERON_MASS); }
double cxhelionmass(void) { return (HELIONMASS); }
double cxhelionmass_err(void) { return (HELIONMASS_ERR); }
double cxhelion_mass(void) { return (HELION_MASS); }
double cxtritonmass(void) { return (TRITONMASS); }
double cxtritonmass_err(void) { return (TRITONMASS_ERR); }
double cxtriton_mass(void) { return (TRITON_MASS); }
double cxalphamass(void) { return (ALPHAMASS); }
double cxalphamass_err(void) { return (ALPHAMASS_ERR); }
double cxalpha_mass(void) { return (ALPHA_MASS); }
double cxhydrogenradius(void) { return (HYDROGENRADIUS); }
double cxhydrogenradius_err(void) {
   return (HYDROGENRADIUS_ERR); }
double cxbohrradius(void) { return (BOHRRADIUS); }
double cxbohrradius_err(void) { return (BOHRRADIUS_ERR); }
double cxhihz(void) { return (HIHz); }
double cxhiwavelength(void) { return (HIWAVELENGTH); }
double cxhiwavenumber(void) { return (HIWAVENUMBER); }
double cxhienergy(void) { return (HIENERGY); }
double cxhydrogenline(void) { return (HYDROGENLINE); }
double cxhydrogenline_err(void) { return (HYDROGENLINE_ERR); }
double cxhi(void) { return (HI); }
double cxhi_err(void) { return (HI_ERR); }
double cxplanckmass(void) { return (PLANCKMASS); }
double cxplanckcharge(void) { return (PLANCKCHARGE); }
double cxplanckenergy(void) { return (PLANCKENERGY); }
double cxplancktemp(void) { return (PLANCKTEMP); }
double cxplancklength(void) { return (PLANCKLENGTH); }
double cxplancktime(void) { return (PLANCKTIME); }
double cxstefan(void) { return (STEFAN); }
double cxstefan_err(void) { return (STEFAN_ERR); }
double cxpingpongballradius(void) {
   return (PINGPONGBALLRADIUS); }
double cxgolfballradius(void) { return (GOLFBALLRADIUS); }
double cxtennisballradius(void) { return (TENNISBALLRADIUS); }
double cxbaseballradius(void) { return (BASEBALLRADIUS); }
double cxsoftballradius(void) { return (SOFTBALLRADIUS); }
double cxsoccerballradius(void) { return (SOCCERBALLRADIUS); }
double cxbasketballradius(void) { return (BASKETBALLRADIUS); }
double cxpingpongballmass(void) { return (PINGPONGBALLMASS); }
double cxgolfballmass(void) { return (GOLFBALLMASS); }
double cxtennisballmass(void) { return (TENNISBALLMASS); }
double cxbaseballmass(void) { return (BASEBALLMASS); }
double cxsoftballmass(void) { return (SOFTBALLMASS); }
double cxbasketballmass(void) { return (BASKETBALLMASS); }
double cxsoccerballmass(void) { return (SOCCERBALLMASS); }
double cxmarathon(void) { return (MARATHON); }
double cxpennythickness(void) { return (PENNYTHICKNESS); }
double cxnickelthickness(void) { return (NICKELTHICKNESS); }
double cxdimethickness(void) { return (DIMETHICKNESS); }
double cxquarterthickness(void) { return (QUARTERTHICKNESS); }
double cxpennyradius(void) { return (PENNYRADIUS); }
double cxnickelradius(void) { return (NICKELRADIUS); }
double cxdimeradius(void) { return (DIMERADIUS); }
double cxquarterradius(void) { return (QUARTERRADIUS); }
double cxpennymass(void) { return (PENNYMASS); }
double cxnickelmass(void) { return (NICKELMASS); }
double cxdimemass(void) { return (DIMEMASS); }
double cxquartermass(void) { return (QUARTERMASS); }
double cxmoonmonth(void) { return (MOONMONTH); }
double cxmilkywayage(void) { return (MILKYWAYAGE); }
double cxuniverseage(void) { return (UNIVERSEAGE); }
double cxlightyear(void) { return (LIGHTYEAR); }
double cxastronomicalunit(void) { return (ASTRONOMICALUNIT); }
double cxparsec(void) { return (PARSEC); }
double cxproximacentauri(void) { return (PROXIMACENTAURI); }
double cxmilkywayradius(void) { return (MILKYWAYRADIUS); }
double cxgalacticcenter(void) { return (GALACTICCENTER); }
double cxuniverseradius(void) { return (UNIVERSERADIUS); }
double cxmilkywaymass(void) { return (MILKYWAYMASS); }
double cxuniversemass(void) { return (UNIVERSEMASS); }
double cxsolarconstant(void) { return (SOLARCONSTANT); }
double cxeinstein(void) { return (EINSTEIN); }
double cxeinstein_err(void) { return (EINSTEIN_ERR); }
double cxhubble(void) { return (HUBBLE); }
double cxhubble_err(void) { return (HUBBLE_ERR); }
double cxbhmasstemp(void) { return (BHMASSTEMP); }
double cxbhmass_radius(void) { return (BHMASS_RADIUS); }
double cxbhmass3_lifetime(void) { return (BHMASS3_LIFETIME); }
double cxbhradius2density(void) { return (BHRADIUS2DENSITY); }
double cxbhentropy_area(void) { return (BHENTROPY_AREA); }
double cxbekensteininformation(void) {
   return (BEKENSTEININFORMATION); }
double cxbekensteinentropy(void) { return (BEKENSTEINENTROPY); }
double cxelevationmax(void) { return (ELEVATIONMAX); }
double cxelevationmin(void) { return (ELEVATIONMIN); }
double cxkpgboundary(void) { return (KPGBOUNDARY); }
double cxtrjboundary(void) { return (TRJBOUNDARY); }
double cxmilkywayday(void) { return (MILKYWAYDAY); }
double cxptrboundary(void) { return (PTRBOUNDARY); }
double cxnpboundary(void) { return (NPBOUNDARY); }
double cxlifeage(void) { return (LIFEAGE); }
double cxgiantimpact(void) { return (GIANTIMPACT); }
double cxearthage(void) { return (EARTHAGE); }
double cxppq(void) { return (PPQ); }
double cxppt(void) { return (PPT); }
double cxppb(void) { return (PPB); }
double cxppm(void) { return (PPM); }
double cxmass(void) { return (MASS); }
double cxlength(void) { return (LENGTH); }
double cxdistance(void) { return (DISTANCE); }
double cxtemperature(void) { return (TEMPERATURE); }
double cxtime(void) { return (TIME); }
double cxangle(void) { return (ANGLE); }
double cxsolid_angle(void) { return (SOLID_ANGLE); }
double cxspeed(void) { return (SPEED); }
double cxacceleration(void) { return (ACCELERATION); }
double cxforce(void) { return (FORCE); }
double cxenergy(void) { return (ENERGY); }
double cxaction(void) { return (ACTION); }
double cxpower(void) { return (POWER); }
double cxarea(void) { return (AREA); }
double cxvolume(void) { return (VOLUME); }
double cxdensity(void) { return (DENSITY); }
double cxspecificheat(void) { return (SPECIFICHEAT); }
double cxpressure(void) { return (PRESSURE); }
double cxviscosity(void) { return (VISCOSITY); }
double cxfrequency(void) { return (FREQUENCY); }
double cxcharge(void) { return (CHARGE); }
double cxcurrent(void) { return (CURRENT); }
double cxvoltage(void) { return (VOLTAGE); }
double cxresistance(void) { return (RESISTANCE); }
double cxinductance(void) { return (INDUCTANCE); }
double cxcapacitance(void) { return (CAPACITANCE); }
double cxconductance(void) { return (CONDUCTANCE); }
double cxmagneticflux(void) { return (MAGNETICFLUX); }
double cxmagneticinduction(void) { return (MAGNETICINDUCTION); }
//  MMMMMMMMMMASTER ----------------------------------------- A
double timee(void) {
   struct timeval tv;
   gettimeofday(&tv, NULL);
   return(tv.tv_sec + tv.tv_usec / 1000000.0);
}
double id(double xx)
{
   return (xx);
}
double reci(double xx)
{
   return (1.0 / xx);
}
double neg(double xx)
{
   return (- xx);
}
double square(double xx)
{
   return (xx * xx);
}
double sq(double xx)
{
   return (xx * xx);
}
double sqinv(double xx)
{
   return (sqrt(xx));
}
double cube(double xx)
{
   return (xx * xx * xx);
}
double cu(double xx)
{
   return (xx * xx * xx);
}
double sign(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = -1.0;
   } else if (0.0 < xx) {
      retvalu = 1.0;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double stair(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double heaviside(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else if (0.0 < xx) {
      retvalu = 1.0;
   } else {
      retvalu = 0.5;
   }
   return (retvalu);
}
double divi(double numer
      , double denom
      , double def_val)
{
   double retvalu;
   if (denom < 0.0 || 0.0 < denom) {
      retvalu = numer / denom;
   } else {
      retvalu = def_val;
   }
   return (retvalu);
}
double clip(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = xx;
   }
   return (retvalu);
}
double clip2(double xx
      , double xlow
      , double xhigh)
{
   double retvalu;
   if (xx <= xlow) {
      retvalu = xlow;
   } else if (xx <= xhigh) {
      retvalu = xx;
   } else {
      retvalu = xhigh;
   }
   return (retvalu);
}
double clip2x(double xx
      , double xa
      , double xb)
{
   double retvalu;
   if (xb < xa) {
      if (xx <= xb || xa <= xx) {
         retvalu = xx;
      } else if (2.0 * xx < xa + xb) {
         retvalu = xb;
      } else {
         retvalu = xa;
      }
   } else {
      if (xx <= xa) {
         retvalu = xa;
      } else if (xx <= xb) {
         retvalu = xx;
      } else {
         retvalu = xb;
      }
   }
   return (retvalu);
}
double sba(double xx)
{
   double retvalu;
   if (- 1.0 < xx && xx < 1.0) {
      retvalu = xx;
   } else {
      retvalu = 1.0 / xx;
   }
   return (retvalu);
}
double ratio(double aa
      , double bb)
{
   double rati;
   if (fabs(aa) < fabs(bb)) {
      rati = aa / bb;
   } else {
      rati = bb / aa;
   }
   return (rati);
}
double horner(double xx
      , long deg
      , const double *coefh_arr_pc)
{
   long jj;
   double sum_curr;
   sum_curr = coefh_arr_pc[deg];
   for (jj = deg - 1; 0 <= jj; jj -= 1) {
      sum_curr *= xx;
      sum_curr += coefh_arr_pc[jj];
   }
   return (sum_curr);
}
double chebeval(double xx
      , long deg
      , const double *cheb_arr_pc)
{
   double ba;
   double bb;
   double bc;
   long ii;
   xx *= 2;
   ba = cheb_arr_pc[deg];
   bb = 0.0;
   bc = 0.0;
   for (ii = deg - 1; 0 <= ii; ii -= 1) {
      bc = bb;
      bb = ba;
      ba = xx * bb - bc + cheb_arr_pc[ii];
   }
   return ((ba - bc) / 2.0);
}
double ln(double xx)
{
   return (log(xx));
}
double lg(double xx)
{
   return (log(xx) / LNTWO);
}
double log10(double xx)
{
   return (log(xx) / log(10.0));
}
double l10(double xx)
{
   return (log(xx) / log(10.0));
}
double fmody(double xx
      , double yymodulus)
{
   double retvalu;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = xx - floor(xx / yymodulus) * yymodulus;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double fmodu(double xx
      , double yymodulus)
{
   double retvalu;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = fmod(xx, yymodulus);
      if (retvalu < 0.0) {
         retvalu += fabs(yymodulus);
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double remquou(double xx
      , double yymodulus
      , double *ret_int_arr_p)
{
   double retvalu;
   double qu;
   double fl;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      qu = xx / yymodulus;
      fl = floor(qu);
      retvalu = qu - fl;
   } else {
      fl = 0.0;
      retvalu = xx;
   }
   ret_int_arr_p[0] = fl;
   return (retvalu);
}
double fmods(double xx
      , double yymodulus)
{
   double retvalu;
   double ayy;
   double lim;
   if (yymodulus < 0.0 || 0.0 < yymodulus) {
      retvalu = fmod(xx, yymodulus);
      ayy = fabs(yymodulus);
      lim = ayy / 2;
      if (retvalu < - lim) {
         retvalu += ayy;
      } else if (lim <= retvalu) {
         retvalu -= ayy;
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double pow2(double expo)
{
   return (pow(2.0, expo));
}
double pow10(double expo)
{
   return (pow(10.0, expo));
}
double sigmoid(double xx)
{
   return (1.0 / (1.0 + exp(-xx)));
}
double sigmoidinv(double xx)
{
   return (- log(((1.0 / xx - 0.5) - 0.5)));
}
double sigmoid3(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double xzero;
   double taa;
   if (aa <= 0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = log((1.0 - aa) / aa);
      alfa = log((1.0 - bb) / bb) - taa;
      xzero = -taa / alfa;
      retvalu = 1.0 / (1.0 + exp(alfa * (xx - xzero)));
   }
   return (retvalu);
}
double taninv3(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double taa;
   if (aa <= 0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = tan((aa - 0.5) * PI);
      alfa = tan((bb - 0.5) * PI) - taa;
      retvalu = taninv(alfa * xx + taa) / PI + 0.5;
   }
   return (retvalu);
}
double sigmoid3d(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double alfa;
   double xzero;
   double taa;
   double expa;
   if (aa <= 0 || 1.0 <= aa || bb <= 0.0 || 1.0 <= bb) {
      retvalu = 0.0;
   } else {
      taa = log((1.0 - aa) / aa);
      alfa = log((1.0 - bb) / bb) - taa;
      xzero = -taa / alfa;
      expa = exp(alfa * (xx - xzero));
      retvalu = -alfa * expa / square(1 + expa);
   }
   return (retvalu);
}
double sqrtx(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = -sqrt(-xx);
   } else {
      retvalu = sqrt(xx);
   }
   return (retvalu);
}
double smooth(double xx)
{
   double retvalu;
   if (xx <= -1.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else {
      retvalu = sigmoid(4.0 * xx / (1.0 - xx * xx));
   }
   return (retvalu);
}
double hypot(double xx
      , double yy)
{
   double retvalu;
   double axx;
   double ayy;
   axx = fabs(xx);
   ayy = fabs(yy);
   if (axx < ayy) {
      retvalu = ayy;
      ayy = axx;
      axx = retvalu;
   }
   if (0.0 < axx) {
      if (ayy < DBLEPS * axx) {
         retvalu = axx;
      } else {
         ayy /= axx;
         retvalu = axx * sqrt(1.0 + ayy * ayy);
      }
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double hypot1(double xx)
{
   return (hypot(1.0, xx));
}
double hypot1inv(double xx)
{
   return (sqrt(xx * xx - 1.0));
}
double hypot3(double xx
      , double yy
      , double zz)
{
   return (sqrt(xx * xx + yy * yy + zz * zz));
}
double topyh(double xx
      , double yy)
{
   double retvalu;
   double xsq;
   double ysq;
   xsq = xx * xx;
   ysq = yy * yy;
   if (ysq <= 0.0) {
      retvalu = xx;
   } else if (xsq <= 0) {
      retvalu = yy;
   } else if (xsq < ysq) {
      xsq /= ysq;
      retvalu = -sign(xx) * sqrt(1.0 - xsq) * fabs(yy);
   } else {
      ysq /= xsq;
      retvalu = sqrt(1.0 - ysq) * xx;
   }
   return (retvalu);
}
double topyh1(double xx)
{
   double retvalu;
   if (xx < - 1.0 || 1.0 < xx) {
      retvalu = -sqrt(xx * xx - 1.0);
   } else {
      retvalu = sqrt(1.0 - xx * xx);
   }
   return (retvalu);
}
long cnv_dbl2si16(double xx)
{
   double retvalu;
   if (xx <= SI16MIN) {
      retvalu = SI16MIN;
   } else if (xx <= SI16MAX) {
      retvalu = floorl(xx + 0.5);
   } else {
      retvalu = SI16MAX;
   }
   return (retvalu);
}
double k2tempc(double temp_k)
{
   return ((temp_k - K_AT_0TEMPC) * KELVIN / DEGC);
}
double tempc2k(double temp_c)
{
   return (temp_c * DEGC / KELVIN + K_AT_0TEMPC);
}
double tempc(double temp_c)
{
   return (tempc2k(temp_c));
}
double k2tempf(double temp_k)
{
   return ((temp_k - K_AT_0TEMPF) * KELVIN / DEGF);
}
double tempf2k(double temp_f)
{
   return (temp_f * DEGF / KELVIN + K_AT_0TEMPF);
}
double tempf(double temp_f)
{
   return (tempf2k(temp_f));
}
double k2tempr(double temp_k)
{
   return ((temp_k - K_AT_0TEMPR) * KELVIN / DEGR);
}
double tempr2k(double temp_r)
{
   return (temp_r * DEGR / KELVIN + K_AT_0TEMPR);
}
double tempr(double temp_r)
{
   return (tempr2k(temp_r));
}
double tempf2tempc(double temp_f)
{
   return (k2tempc(tempf2k(temp_f)));
}
double tempc2tempf(double temp_c)
{
   return (k2tempf(tempc2k(temp_c)));
}
long iszero(double xx)
{
   return (0.0 <= xx && xx <= 0.0);
}
long iseven(double xx)
{
   return (fmodu(xx, 2.0) < 1.0);
}
long isodd(double xx)
{
   return (1.0 <= fmodu(xx, 2.0));
}
long ismult(double xx
      , double mult)
{
   return (fmodu(xx, mult) < 1.0);
}
long ismultl(long xx
      , long mult)
{
   long retvalu_bol;
   if (xx % mult == 0) {
      retvalu_bol = true;
   } else {
      retvalu_bol = false;
   }
   return (retvalu_bol);
}
long isgt(double xx
      , double yy)
{
   return (yy < xx);
}
long islt(double xx
      , double yy)
{
   return (xx < yy);
}
long isge(double xx
      , double yy)
{
   return (yy <= xx);
}
long isle(double xx
      , double yy)
{
   return (xx <= yy);
}
long ispos(double xx)
{
   return (0.0 < xx);
}
long isneg(double xx)
{
   return (xx < 0.0);
}
long iseq(double xx
      , double yy)
{
   long retvalu_bol;
   double epsx;
   double diffxy;
   retvalu_bol = false;
   if (iszero(xx)) {
      if (fabs(yy) <= DBLEPS) {
         retvalu_bol = true;
      }
   } else {
      epsx = 2.0 * xx * DBLEPS;
      diffxy = xx - yy;
      if (epsx < 0.0) {
         epsx = -epsx;
      }
      if (- epsx <= diffxy && diffxy <= epsx) {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long isint(double xx)
{
   return (iseq(xx, floor(xx)));
}
long isnegint(double xx)
{
   return (xx < 0.0 && iseq(xx, floor(xx)));
}
long isposint(double xx)
{
   return (0.0 < xx && iseq(xx, floor(xx)));
}
double ifzero(double cond
      , double tru_val
      , double fal_val)
{
   double retvalu;
   if (cond < 0.0 || 0.0 < cond) {
      retvalu = fal_val;
   } else {
      retvalu = tru_val;
   }
   return (retvalu);
}
long isalmostequal(double xx
      , double yy
      , double epsratio)
{
   return (fabs(xx - yy) <= fabs(epsratio * xx));
}
long iswithin(double xx
      , double yy
      , double delta)
{
   return (xx - delta <= yy && yy <= xx + delta);
}
long isbetweenx(double xx
      , double min_xx
      , double max_xx)
{
   return (min_xx < xx && xx < max_xx);
}
long isbetween(double xx
      , double min_xx
      , double max_xx)
{
   return (min_xx <= xx && xx <= max_xx);
}
long isleapyear(long gregyear)
{
   long retvalu_bol;
   long rema;
   retvalu_bol = false;
   if ((gregyear % 4) == 0) {
      rema = (gregyear % 400);
      if (rema != 100 && rema != 200 && rema != 300) {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long isss(double xx
      , double yy)
{
   long retvalu_bol;
   if (0.0 < xx) {
      if (0.0 < yy) {
         retvalu_bol = true;
      } else {
         retvalu_bol = false;
      }
   } else if (xx < 0.0) {
      if (yy < 0.0) {
         retvalu_bol = true;
      } else {
         retvalu_bol = false;
      }
   } else {
      if (0.0 < yy || yy < 0.0) {
         retvalu_bol = false;
      } else {
         retvalu_bol = true;
      }
   }
   return (retvalu_bol);
}
long issignsame(double xx
      , double yy)
{
   return (isss(xx, yy));
}
long isfloorsame(double xx
      , double yy
      , double multy)
{
   return (iseq(floor(xx * multy), floor(yy * multy)));
}
#define LC_MAGIC_INT 2070108020
#define LC_MAGIC_INT_NOT 301040105
long magicset(void)
{
   return (LC_MAGIC_INT);
}
long magicnot(void)
{
   return (LC_MAGIC_INT_NOT);
}
long ismagic(long xx)
{
   return (iseq(xx, magicset()));
}
double rtoz(double xx)
{
   double retvalu;
   if (xx < 0.0) {
      retvalu = ceil(xx);
   } else {
      retvalu = floor(xx);
   }
   return (retvalu);
}
double rtoi(double xx)
{
   double retvalu;
   if (0.0 <= xx) {
      retvalu = ceil(xx);
   } else {
      retvalu = floor(xx);
   }
   return (retvalu);
}
double bankers(double xx)
{
   double retvalu;
   retvalu = floor(xx + 0.5);
   if (isint(xx + 0.5) && isodd(retvalu)) {
      retvalu -= 1.0;
   }
   return (retvalu);
}
double round(double xx)
{
   double retvalu;
   retvalu = floor(xx + 0.5);
   return (retvalu);
}
long iround(double xx)
{
   long retvalu;
   retvalu = floor(xx + 0.5);
   return (retvalu);
}
double round2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = xx;
   } else {
      retvalu = round(xx / yy) * yy;
   }
   return (retvalu);
}
double roundy(double xx
      , double yy
      , double shf)
{
   double retvalu;
   if (yy < 0.0 || 0.0 < yy) {
      retvalu = (round((xx - shf) / yy) * yy + shf);
   } else {
      retvalu = xx;
   }
   return (retvalu);
}
double rtomsd(double fs
      , long msds)
{
   double retvalu;
   double signs;
   long logi;
   if (iszero(fs)) {
      retvalu = 0.0;
   } else {
      if (fs < 0.0) {
         signs = -1.0;
         fs = -fs;
      } else {
         signs = 1.0;
      }
      logi = floor(log10(fs) - msds + 1.0);
      retvalu = signs * round2(fs, pow(10.0, logi));
   }
   return (retvalu);
}
double rto125(double fs)
{
   double signs;
   double tmpf;
   double valu;
   double pow_ten;
   double retvalu;
   if (iszero(fs)) {
      retvalu = 0.0;
   } else {
      if (fs < 0.0) {
         signs = -1.0;
         fs = -fs;
      } else {
         signs = 1.0;
      }
      pow_ten = pow(10.0, floor(log10(fs)));
      tmpf = fs / pow_ten;
      if (tmpf < sqrt(2.0)) {
         valu = 1.0;
      } else if (tmpf < sqrt(10.0)) {
         valu = 2.0;
      } else if (tmpf < sqrt(50.0)) {
         valu = 5.0;
      } else {
         valu = 10.0;
      }
      retvalu = signs * pow_ten * valu;
   }
   return (retvalu);
}
double floor2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else {
      retvalu = floor(xx / fabs(yy)) * fabs(yy);
   }
   return (retvalu);
}
double ceil2(double xx
      , double yy)
{
   double retvalu;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else {
      retvalu = ceil(xx / fabs(yy)) * fabs(yy);
   }
   return (retvalu);
}
double fmod2(double xx
      , double minn
      , double maxx)
{
   double retvalu;
   if (iseq(maxx, minn)) {
      retvalu = 0.0;
   } else {
      retvalu = fmodu(xx - minn, maxx - minn) + minn;
   }
   return (retvalu);
}
double frac(double xx)
{
   return (xx - floor(xx));
}
double trunc(double xx)
{
   double retvalu;
   if (0.0 <= xx) {
      retvalu = xx - floor(xx);
   } else {
      retvalu = xx - ceil(xx);
   }
   return (retvalu);
}
double fmul(double xx
      , double pp)
{
   double lpp;
   lpp = log(pp);
   return (exp(lpp * frac(log(xx) / lpp)));
}
double dist(double xx
      , double mm)
{
   double retvalu;
   double axx;
   double amm;
   axx = fabs(xx);
   amm = fabs(mm);
   retvalu = fmod(axx, amm);
   if (amm < 2.0 * retvalu) {
      retvalu = amm - retvalu;
   }
   return (retvalu);
}
double ddist(double xx
      , double mm)
{
   double retvalu;
   double rema;
   double amm;
   if (iszero(mm)) {
      retvalu = 0.0;
   } else {
      amm = fabs(mm);
      rema = xx - floor(xx / amm) * amm;
      if (amm < 2.0 * rema) {
         rema -= amm;
      }
      retvalu = rema;
   }
   return (retvalu);
}
double sinc(double xx_rad)
{
   double retvalu;
   if (xx_rad < 0.0 || 0.0 < xx_rad) {
      retvalu = sin(xx_rad) / xx_rad;
   } else {
      retvalu = 1;
   }
   return (retvalu);
}
#define LC_SINC_MIN_X\
      (4.4934094579090641753079882808139693729311345)
double sincinv(double yy)
{
   double min_yy;
   double start_xx;
   double aa;
   double bb;
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   min_yy = sinc(LC_SINC_MIN_X);
   if (yy <= min_yy) {
      nrvx_xx = LC_SINC_MIN_X;
   } else if (yy < 1.0) {
      aa = yy - min_yy;
      bb = 1.0 - yy;
      start_xx = (aa * sqrt(5.0 * bb) + bb * (LC_SINC_MIN_X -\
            sqrt(6 * aa))) / (aa + bb);
      nrvx_xx = start_xx;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = cos(nrvx_xx) - yy;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = sin(nrvx_xx) - yy * nrvx_xx;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   } else {
      nrvx_xx = 0.0;
   }
   return (nrvx_xx);
}
double sincc(double xx_rad)
{
   double trigsign;
   double xr_rad;
   double sum_curr;
   double sum_prev;
   double nxr_sqr;
   long ii;
   double term;
   double retvalu;
   if (iszero(xx_rad)) {
      retvalu = 1.0;
   } else {
      xr_rad = fmod(xx_rad, TAU);
      if (TAU / 2.0 < xr_rad) {
         xr_rad = TAU - xr_rad;
         trigsign = -1.0;
      } else {
         trigsign = 1.0;
      }
      if (TAU / 4.0 < xr_rad) {
         xr_rad = TAU / 2.0 - xr_rad;
      }
      nxr_sqr = -xr_rad * xr_rad;
      sum_curr = xr_rad;
      term = xr_rad;
      ii = 2;
      for (;;) {
         term *= nxr_sqr / (ii * (ii - 1));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
         ii += 2;
      }
      retvalu = trigsign * sum_curr * xr_rad / xx_rad;
   }
   return (retvalu);
}
double versin(double xx_rad)
{
   double trigsign;
   double xr_rad;
   double xr_sqr;
   long ii;
   double sum_curr;
   double term;
   double sum_prev;
   xr_rad = fmod(xx_rad, TAU);
   if (TAU / 2.0 < xr_rad) {
      xr_rad = TAU - xr_rad;
   }
   if (TAU / 4.0 < xr_rad) {
      xr_rad = TAU / 2.0 - xr_rad;
      trigsign = -1.0;
   } else {
      trigsign = 1.0;
   }
   xr_sqr = -xr_rad * xr_rad;
   sum_curr = 1.0 / 2.0;
   term = 1.0 / 2.0;
   ii = 4;
   for (;;) {
      term *= xr_sqr / (ii * (ii - 1));
      sum_prev = sum_curr;
      sum_curr += term;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      ii += 2;
   }
   sum_curr *= - xr_sqr;
   if (trigsign < 0) {
      sum_curr = 2.0 - sum_curr;
   }
   return (sum_curr);
}
double haversin(double xx_rad)
{
   return (versin(xx_rad) / 2.0);
}
double tur2deg(double xx_tur)
{
   return (xx_tur * TURN / ARCDEG);
}
double deg2tur(double xx_deg)
{
   return (xx_deg * ARCDEG / TURN);
}
double tur2rad(double xx_tur)
{
   return (xx_tur * TURN / RADIAN);
}
double rad2tur(double xx_rad)
{
   return (xx_rad * RADIAN / TURN);
}
double tur2sec(double xx_tur)
{
   return (xx_tur * TURN / ARCSEC);
}
double sec2tur(double xx_sec)
{
   return (xx_sec * ARCSEC / TURN);
}
double rad2deg(double xx_rad)
{
   return (xx_rad * RADIAN / ARCDEG);
}
double deg2rad(double xx_deg)
{
   return (xx_deg * ARCDEG / RADIAN);
}
double rad2sec(double xx_rad)
{
   return (xx_rad * RADIAN / ARCSEC);
}
double sec2rad(double xx_sec)
{
   return (xx_sec * ARCSEC / RADIAN);
}
double deg2sec(double xx_deg)
{
   return (xx_deg * ARCDEG / ARCSEC);
}
double sec2deg(double xx_sec)
{
   return (xx_sec * ARCSEC / ARCDEG);
}
double rad2dms(double xx_rads)
{
   double dd_deg;
   double mm_min;
   double dg;
   dg = rad2deg(xx_rads);
   dd_deg = floor(dg);
   dg = (dg - dd_deg) * ARCDEG / ARCMIN;
   mm_min = floor(dg);
   dg = (dg - mm_min) * ARCMIN / ARCSEC;
   return (dd_deg + (mm_min + dg / 100.0) / 100.0);
}
double rad2dms2(double xx_rads)
{
   double dg;
   double dd_deg_arr[2];
   double mm_min_arr[2];
   dg = rad2deg(xx_rads);
   dg = modf(dg, dd_deg_arr) * ARCDEG / ARCMIN;
   dg = modf(dg, mm_min_arr) * ARCMIN / ARCSEC;
   return (dd_deg_arr[0] + (mm_min_arr[0] + dg / 100.0) / 100.0);
}
double dms2rad(double xx_dms)
{
   double dd_deg;
   double mm_min;
   double dg;
   dd_deg = floor(xx_dms);
   dg = (xx_dms - dd_deg) * 100.0;
   mm_min = floor(dg);
   dg = (dg - mm_min) * 100.0;
   return ((dg * ARCSEC + mm_min * ARCMIN + dd_deg * ARCDEG)\
         / RADIAN);
}
double deg2dms(double xx_deg)
{
   return (rad2dms(deg2rad(xx_deg)));
}
double dms2deg(double xx_dms)
{
   return (rad2deg(dms2rad(xx_dms)));
}
double cot(double xx_rad)
{
   return (cos(xx_rad) / sin(xx_rad));
}
double sec(double xx_rad)
{
   return (1.0 / cos(xx_rad));
}
double csc(double xx_rad)
{
   return (1.0 / sin(xx_rad));
}
double sininv(double xx)
{
   return (atan2(xx, topyh1(xx)));
}
double cosinv(double xx)
{
   return (atan2(topyh1(xx), xx));
}
double taninv(double xx)
{
   return (atan2(xx, 1.0));
}
double cotinv(double xx)
{
   return (atan2(1.0, xx));
}
double secinv(double xx)
{
   return (atan2(sqrt(xx * xx - 1.0), sign(xx)));
}
double cscinv(double xx)
{
   return (atan2(sign(xx), sqrt(xx * xx - 1.0)));
}
double sinh(double xx)
{
   return ((exp(xx) - exp(-xx)) / 2.0);
}
double cosh(double xx)
{
   return ((exp(xx) + exp(-xx)) / 2.0);
}
double tanh(double xx)
{
   return (sinh(xx) / cosh(xx));
}
double coth(double xx)
{
   return (cosh(xx) / sinh(xx));
}
double sech(double xx)
{
   return (1.0 / cosh(xx));
}
double csch(double xx)
{
   return (1.0 / sinh(xx));
}
double sinhinv(double xx)
{
   return (log(xx + sqrt(xx * xx + 1.0)));
}
double coshinv(double xx)
{
   return (log(xx + sqrt(xx * xx - 1.0)));
}
double tanhinv(double xx)
{
   return (log((1.0 + xx) / (1.0 - xx)) / 2.0);
}
double cothinv(double xx)
{
   return (log((xx + 1.0) / (xx - 1.0)) / 2.0);
}
double sechinv(double xx)
{
   return (log((1.0 + topyh1(xx)) / xx));
}
double cschinv(double xx)
{
   return (log((1.0 + sqrt(1.0 + xx * xx)) / xx));
}
double atan2h(double xx
      , double yy)
{
   double retvalu;
   if (fabs(yy) <= fabs(xx)) {
      retvalu = 0.0;
   } else {
      retvalu = log((yy + xx) / (yy - xx)) / 2.0;
   }
   return (retvalu);
}
double atan2u(double xx
      , double yy)
{
   return (fmodu(atan2(xx, yy), tur2rad(1.0)));
}
double sind(double xx)
{
   return (sin(deg2rad(xx)));
}
double sindinv(double xx)
{
   return (rad2deg(sininv(xx)));
}
double cosd(double xx)
{
   return (cos(deg2rad(xx)));
}
double cosdinv(double xx)
{
   return (rad2deg(cosinv(xx)));
}
double tand(double xx)
{
   return (tan(deg2rad(xx)));
}
double tandinv(double xx)
{
   return (rad2deg(taninv(xx)));
}
double cotd(double xx)
{
   return (cot(deg2rad(xx)));
}
double cotdinv(double xx)
{
   return (rad2deg(cotinv(xx)));
}
double secd(double xx)
{
   return (sec(deg2rad(xx)));
}
double secdinv(double xx)
{
   return (rad2deg(secinv(xx)));
}
double cscd(double xx)
{
   return (csc(deg2rad(xx)));
}
double cscdinv(double xx)
{
   return (rad2deg(cscinv(xx)));
}
double atan2d(double xx
      , double yy)
{
   return (rad2deg(atan2(xx, yy)));
}
double sint(double xx)
{
   return (sin(tur2rad(xx)));
}
double sintinv(double xx)
{
   return (rad2tur(sininv(xx)));
}
double cost(double xx)
{
   return (cos(tur2rad(xx)));
}
double costinv(double xx)
{
   return (rad2tur(cosinv(xx)));
}
double tant(double xx)
{
   return (tan(tur2rad(xx)));
}
double tantinv(double xx)
{
   return (rad2tur(taninv(xx)));
}
double cott(double xx)
{
   return (cot(tur2rad(xx)));
}
double cottinv(double xx)
{
   return (rad2tur(cotinv(xx)));
}
double sect(double xx)
{
   return (sec(tur2rad(xx)));
}
double sectinv(double xx)
{
   return (rad2tur(secinv(xx)));
}
double csct(double xx)
{
   return (csc(tur2rad(xx)));
}
double csctinv(double xx)
{
   return (rad2tur(cscinv(xx)));
}
double atan2t(double xx
      , double yy)
{
   return (rad2tur(atan2(xx, yy)));
}
double ln1p(double xx)
{
   double retvalu;
   double sum_curr;
   double jj;
   double start;
   if (0.1 < fabs(xx)) {
      retvalu = log(1.0 + xx);
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 2) {
         start = 2;
      }
      sum_curr = 0.0;
      for (jj = start; 1 <= jj; jj -= 1) {
         sum_curr = 1.0 / jj - sum_curr * xx;
      }
      retvalu = sum_curr * xx;
   }
   return (retvalu);
}
double expm1(double xx)
{
   double retvalu;
   double sum_curr;
   double jj;
   double start;
   if (0.1 < fabs(xx)) {
      retvalu = exp(xx) - 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 2) {
         start = 2;
      }
      sum_curr = 0.0;
      for (jj = start; 1 <= jj; jj -= 1) {
         sum_curr = xx * (1.0 + sum_curr) / jj;
      }
      retvalu = sum_curr;
   }
   return (retvalu);
}
double cosm1(double xx)
{
   double retvalu;
   double sum_curr;
   double jj;
   double start;
   double xr_sqr;
   if (0.1 < fabs(xx)) {
      retvalu = cos(xx) - 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.0;
   } else {
      start = ceil(fabs(log(DBLEPS) / log(fabs(xx))));
      if (start < 6) {
         start = 6;
      } else if (isodd(start)) {
         start += 1;
      }
      xr_sqr = -xx * xx;
      sum_curr = 1.0 / (start * (start + 1));
      for (jj = start; 2 <= jj; jj -= 2) {
         sum_curr += 1;
         sum_curr *= xr_sqr / (jj * (jj - 1));
      }
      retvalu = sum_curr;
   }
   return (retvalu);
}
double lns(double xx)
{
   double aa;
   double retvalu;
   aa = fabs(xx);
   if (aa < 1.0 / DBLMAX) {
      retvalu = -DBLMAXLN - 1.0;
   } else {
      retvalu = log(aa);
   }
   return (retvalu);
}
double trip(double xx)
{
   double retvalu;
   double fx;
   fx = 4.0 * frac(xx);
   if (fx < 2.0) {
      retvalu = 1.0 - fx;
   } else {
      retvalu = fx - 3.0;
   }
   return (retvalu);
}
static double lf_cbrtx_gt_zero(double xx)
{
   double yy;
   double zz;
   zz = 64.0 * xx / 27.0;
   yy = 1.0;
   while (zz <= 1.0) {
      zz *= 8.0;
      yy /= 2.0;
   }
   while (8.0 < zz) {
      zz /= 8.0;
      yy *= 2.0;
   }
   return (yy);
}
double cbrt(double yy)
{
   double ayy;
   double init_xx;
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   ayy = fabs(yy);
   if (0.0 < ayy) {
      init_xx = lf_cbrtx_gt_zero(ayy);
      if (yy < 0) {
         init_xx = -init_xx;
      }
      nrvx_xx = init_xx;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = 3 * nrvx_xx;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = nrvx_xx * nrvx_xx - yy / nrvx_xx;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   } else {
      nrvx_xx = 0.0;
   }
   return (nrvx_xx);
}
double cuberoot(double xx)
{
   return (cbrt(xx));
}
double squareroot(double xx)
{
   return (sqrt(xx));
}
static long lf_continued_fraction(double orig
      , long show_diff)
{
   long whole;
   double xx;
   double epsilon;
   long den_a;
   long den_b;
   long den_c;
   long num_a;
   long num_b;
   long num_c;
   double diff;
   long steps;
   double appr;
   steps = 0;
   xx = orig;
   den_b = 0;
   num_b = 1;
   den_a = 1;
   num_a = 0;
   epsilon = DBLEPS / 2.0;
   for (;;) {
      whole = floorl(xx);
      den_c = den_b * whole + den_a;
      num_c = num_b * whole + num_a;
      den_a = den_b;
      num_a = num_b;
      den_b = den_c;
      num_b = num_c;
      steps += 1;
      appr = (1.0 * num_b / den_b);
      diff = orig - appr;
      printf("%s", "");
      printf("%.18g", (double)whole);
      if (0 <= show_diff) {
         printf("%s", "\t");
         printf("%.18g", (double)num_b);
         printf("%s", " / ");
         printf("%.18g", (double)den_b);
         printf("%s", "\t");
         printf("%.18g", (double)appr);
         if (0 < show_diff) {
            printf("%s", "\t");
            printf("%.18g", (double)diff);
         }
         printf("%s", "\n");
      } else {
         printf("%s", " ");
      }
      if (iseq(xx, whole)) {
         break;
      }
      xx = 1.0 / (xx - whole);
      epsilon *= 2.0;
      if (fabs(diff) < epsilon) {
         break; // KQS
      }
   }
   return (steps);
}
long print_contfra(double orig)
{
   return (lf_continued_fraction(orig, -1));
}
long print_contfrac(double orig)
{
   return (lf_continued_fraction(orig, 0));
}
long print_contfracd(double orig)
{
   return (lf_continued_fraction(orig, 1));
}
long print_num2char(long num)
{
   if (num < 32) {
      if (num < 16) {
         if (num < 8) {
            if (num < 4) {
               if (num < 2) {
                  if (num < 1) {
                     printf("%s", "0");
                  } else {
                     printf("%s", "1");
                  }
               } else if (num < 3) {
                  printf("%s", "2");
               } else {
                  printf("%s", "3");
               }
            } else if (num < 6) {
               if (num < 5) {
                  printf("%s", "4");
               } else {
                  printf("%s", "5");
               }
            } else if (num < 7) {
               printf("%s", "6");
            } else {
               printf("%s", "7");
            }
         } else if (num < 12) {
            if (num < 10) {
               if (num < 9) {
                  printf("%s", "8");
               } else {
                  printf("%s", "9");
               }
            } else if (num < 11) {
               printf("%s", "a");
            } else {
               printf("%s", "b");
            }
         } else if (num < 14) {
            if (num < 13) {
               printf("%s", "c");
            } else {
               printf("%s", "d");
            }
         } else if (num < 15) {
            printf("%s", "e");
         } else {
            printf("%s", "f");
         }
      } else if (num < 24) {
         if (num < 20) {
            if (num < 18) {
               if (num < 17) {
                  printf("%s", "g");
               } else {
                  printf("%s", "h");
               }
            } else if (num < 19) {
               printf("%s", "i");
            } else {
               printf("%s", "j");
            }
         } else if (num < 22) {
            if (num < 21) {
               printf("%s", "k");
            } else {
               printf("%s", "l");
            }
         } else if (num < 23) {
            printf("%s", "m");
         } else {
            printf("%s", "n");
         }
      } else if (num < 28) {
         if (num < 26) {
            if (num < 25) {
               printf("%s", "o");
            } else {
               printf("%s", "p");
            }
         } else if (num < 27) {
            printf("%s", "q");
         } else {
            printf("%s", "r");
         }
      } else if (num < 30) {
         if (num < 29) {
            printf("%s", "s");
         } else {
            printf("%s", "t");
         }
      } else if (num < 31) {
         printf("%s", "u");
      } else {
         printf("%s", "v");
      }
   } else if (num < 48) {
      if (num < 40) {
         if (num < 36) {
            if (num < 34) {
               if (num < 33) {
                  printf("%s", "w");
               } else {
                  printf("%s", "x");
               }
            } else if (num < 35) {
               printf("%s", "y");
            } else {
               printf("%s", "z");
            }
         } else if (num < 38) {
            if (num < 37) {
               printf("%s", "A");
            } else {
               printf("%s", "B");
            }
         } else if (num < 39) {
            printf("%s", "C");
         } else {
            printf("%s", "D");
         }
      } else if (num < 44) {
         if (num < 42) {
            if (num < 41) {
               printf("%s", "E");
            } else {
               printf("%s", "F");
            }
         } else if (num < 43) {
            printf("%s", "G");
         } else {
            printf("%s", "H");
         }
      } else if (num < 46) {
         if (num < 45) {
            printf("%s", "I");
         } else {
            printf("%s", "J");
         }
      } else if (num < 47) {
         printf("%s", "K");
      } else {
         printf("%s", "L");
      }
   } else if (num < 56) {
      if (num < 52) {
         if (num < 50) {
            if (num < 49) {
               printf("%s", "M");
            } else {
               printf("%s", "N");
            }
         } else if (num < 51) {
            printf("%s", "O");
         } else {
            printf("%s", "P");
         }
      } else if (num < 54) {
         if (num < 53) {
            printf("%s", "Q");
         } else {
            printf("%s", "R");
         }
      } else if (num < 55) {
         printf("%s", "S");
      } else {
         printf("%s", "T");
      }
   } else if (num < 60) {
      if (num < 58) {
         if (num < 57) {
            printf("%s", "U");
         } else {
            printf("%s", "V");
         }
      } else if (num < 59) {
         printf("%s", "W");
      } else {
         printf("%s", "X");
      }
   } else if (num < 62) {
      if (num < 61) {
         printf("%s", "Y");
      } else {
         printf("%s", "Z");
      }
   } else if (num < 63) {
      printf("%s", "_");
   } else if (num < 64) {
      printf("%s", "?");
   } else {
      printf("%s", "(");
      printf("%.18g", (double)num);
      printf("%s", ")");
   }
   return (num);
}
long print_base_out(long num
      , long baset)
{
   long digits_arr[65];
   long dig_count;
   long ii;
   if (num < 0) {
      printf("%s", "-");
      num = -num;
   }
   dig_count = 0;
   for (;;) {
      digits_arr[dig_count] = num % baset;
      dig_count += 1;
      num = floorl(num / baset);
      if (num == 0) {
         break; // KQS
      }
   }
   for (ii = dig_count - 1; 0 <= ii; ii -= 1) {
      (void) print_num2char(digits_arr[ii]);
   }
   return (dig_count);
}
long print_base_outf(double num
      , long baset)
{
   long dig_count;
   long ii;
   double frc;
   long dig;
   long lim;
   dig_count = 0;
   if (num < 0.0) {
      printf("%s", "-");
      num = -num;
      dig_count += 1;
   }
   dig_count += print_base_out(floorl(num), baset) + 1;
   printf("%s", ".");
   lim = ceill(-lg(DBLEPS) / lg(baset));
   frc = frac(num) * baset;
   ii = 1;
   while (! iszero(frc) && ii <= lim) {
      dig = floorl(frc);
      (void) print_num2char(dig);
      frc -= dig;
      frc *= baset;
      ii += 1;
   }
   return (dig_count + lim);
}
double f21(double aa
      , double bb
      , double cc
      , double zz)
{
   double sum_curr;
   double sum_prev;
   double term;
   double nn;
   if (1 <= fabs(zz)) {
      sum_curr = 0.0;
   } else {
      sum_curr = 1.0;
      term = 1.0;
      nn = 0;
      for (;;) {
         term *= ((aa + nn) * (bb + nn) * zz / ((cc + nn) *\
               (nn + 1)));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
         nn += 1;
      }
   }
   return (sum_curr);
}
double f11(double aa
      , double bb
      , double zz)
{
   double sum_curr;
   double sum_prev;
   double term;
   double nn;
   if (1 <= fabs(zz)) {
      sum_curr = 0.0;
   } else {
      sum_curr = 1.0;
      term = 1.0;
      nn = 0;
      for (;;) {
         term *= ((aa + nn) * zz / ((bb + nn) * (nn + 1)));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
         nn += 1;
      }
   }
   return (sum_curr);
}
static double lf_lambert_iter(double xx
      , double nearw_zero)
{
   long ii;
   double eww;
   double tnn;
   double snn;
   double unn;
   double delta;
   double wjj;
   double wjj_prev;
   wjj = nearw_zero;
   ii = 0;
   for (;;) {
      eww = exp(wjj);
      tnn = wjj * eww - xx;
      snn = (wjj + 2.0) / (2.0 * (wjj + 1));
      unn = (wjj + 1.0) * eww;
      delta = tnn / (tnn * snn - unn);
      wjj_prev = wjj;
      wjj += delta;
      if (iseq(wjj, wjj_prev)) {
         break; // KQS
      }
      ii += 1;
      if (20 <= ii) {
         break; // KQS
      }
   }
   return (wjj);
}
double wp(double xx)
{
   double tnn;
   double snn;
   double near_w;
   double retvalu;
   if (xx <= - exp(-1.0)) {
      retvalu = -1.0;
   } else {
      if (xx < 3.0) {
         snn = E * xx + 1.0;
         near_w = cbrt(snn) - 1.0 + 0.025 * (snn / E);
      } else {
         snn = log(xx);
         tnn = log(log(xx));
         near_w = snn - tnn + tnn / snn;
      }
      retvalu = lf_lambert_iter(xx, near_w);
   }
   return (retvalu);
}
double wm(double xx)
{
   long ii;
   double near_w;
   double retvalu;
   double tnn;
   double numer;
   double denom;
   if (xx <= - exp(-1.0)) {
      retvalu = -1.0;
   } else {
      if (xx < - 0.303) {
         tnn = -sqrt(2.0 * (1.0 + E * xx));
         near_w = ((((((((((226287557.0 / 37623398400.0) *\
               tnn - 1963.0 / 204120.0) * tnn + 680863.0 /\
               43545600.0) * tnn - 221.0 / 8505.0) * tnn +\
               769.0 / 17280.0) * tnn - 43.0 / 540.0) * tnn +\
               11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn + 1.0) *\
               tnn - 1.0);
      } else if (xx < - 0.0510129) {
         numer = (((6.5794931769023040E+2) * xx +\
               2.5388810188892484E+2) * xx -\
               7.8141767239074400E+0);
         denom = ((((((1.4779341280760887E+3) * xx +\
               9.6217849696986600E+2) * xx +\
               6.8260739999094280E+2) * xx +\
               9.9985670831076100E+1) * xx -\
               6.0439587136908080E+1) * xx +\
               1.0000000000000000E+0);
         near_w = numer / denom;
      } else if (xx < 0.0) {
         near_w = log(-xx);
         for (ii = 0; ii <= 8; ii += 1) {
            near_w = log(xx / near_w);
         }
      } else {
         near_w = DBLMAX;
      }
      retvalu = lf_lambert_iter(xx, near_w);
   }
   return (retvalu);
}
double wpinv(double zz)
{
   return (zz * exp(zz));
}
double wminv(double zz)
{
   return (zz * exp(zz));
}
double sinintegral(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   double xsq;
   if (iszero(xx)) {
      sum_curr = 0.0;
   } else {
      sum_curr = xx;
      term = xx;
      xsq = xx * xx;
      kk = 3;
      for (;;) {
         term *= - xsq / (kk * (kk - 1.0));
         sum_prev = sum_curr;
         sum_curr += term / kk;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
         kk += 2;
      }
   }
   return (sum_curr);
}
double cosintegral(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   double xsq;
   if (iszero(xx)) {
      sum_curr = -DBLMAX;
   } else {
      sum_curr = EULER + log(fabs(xx));
      term = 1.0;
      xsq = xx * xx;
      kk = 2;
      for (;;) {
         term *= - xsq / (kk * (kk - 1.0));
         sum_prev = sum_curr;
         sum_curr += term / kk;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
         kk += 2;
      }
   }
   return (sum_curr);
}
double Ein(double xx)
{
   double sum_curr;
   double sum_prev;
   double term;
   double kk;
   sum_curr = 0;
   term = -1;
   kk = 1;
   for (;;) {
      term *= - xx / kk;
      sum_prev = sum_curr;
      sum_curr += term / kk;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      kk += 1;
   }
   return (sum_curr);
}
double expintegrali(double xx)
{
   double retvalu;
   retvalu = EULER + log(fabs(xx)) - Ein(-xx);
   return (retvalu);
}
double expintegraln(long nn
      , double xx)
{
   return (pow(xx, nn - 1) * uigamma(1 - nn, xx));
}
double expintegral1(double xx)
{
   double retvalu;
   retvalu = -EULER - log(fabs(xx)) + Ein(xx);
   return (retvalu);
}
double logintegral(double xx)
{
   double sum;
   double lnx;
   double yy;
   long nn;
   double sum_prev;
   double limit;
   double retvalu;
   if (xx <= 1.0) {
      retvalu = 0.0;
   } else {
      lnx = log(xx);
      sum = 0.0;
      yy = 1.0;
      limit = 1.6 * log(xx) + 40;
      nn = 1;
      for (;;) {
         yy *= lnx / nn;
         sum_prev = sum;
         sum += yy / nn;
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         nn += 1;
         if (limit <= nn) {
            break; // KQS
         }
      }
      retvalu = EULER + log(lnx) + sum;
   }
   return (retvalu);
}
double carlsonRF(double xx
      , double yy
      , double zz)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz)) {
         break; // KQS
      }
   }
   return (1.0 / sqrt(xx));
}
double carlsonRC(double xx
      , double yy)
{
   double lmbd;
   for (;;) {
      lmbd = 2 * sqrt(xx * yy) + yy;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      if (iseq(xx, yy)) {
         break; // KQS
      }
   }
   return (1.0 / sqrt(xx));
}
double carlsonRJ(double xx
      , double yy
      , double zz
      , double pp)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   double pfour;
   double alfa;
   double beta;
   double sigm;
   pfour = 1.0;
   sigm = 0.0;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      alfa = pp * (sqx + sqy + sqz) + sqx * sqy * sqz;
      alfa *= alfa;
      beta = pp * (pp + lmbd) * (pp + lmbd);
      sigm += pfour * carlsonRC(alfa, beta);
      pfour /= 4.0;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      pp = (pp + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz) && iseq(zz, pp)) {
         break; // KQS
      }
   }
   return (3.0 * sigm);
}
double carlsonRD(double xx
      , double yy
      , double zz)
{
   double sqx;
   double sqy;
   double sqz;
   double lmbd;
   double pfour;
   double alfa;
   double beta;
   double sigm;
   pfour = 1.0;
   sigm = 0.0;
   for (;;) {
      sqx = sqrt(xx);
      sqy = sqrt(yy);
      sqz = sqrt(zz);
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz;
      alfa = zz * (sqx + sqy + sqz) + sqx * sqy * sqz;
      alfa *= alfa;
      beta = zz * (zz + lmbd) * (zz + lmbd);
      sigm += pfour * carlsonRC(alfa, beta);
      pfour /= 4.0;
      xx = (xx + lmbd) / 4.0;
      yy = (yy + lmbd) / 4.0;
      zz = (zz + lmbd) / 4.0;
      if (iseq(xx, yy) && iseq(yy, zz)) {
         break; // KQS
      }
   }
   return (3.0 * sigm);
}
long powi(long xx
      , long nn)
{
   long pp;
   long sqx;
   pp = 1;
   sqx = xx;
   while (0 < nn) {
      if (isodd(nn)) {
         pp *= sqx;
      }
      sqx *= sqx;
      nn = (nn >> 1);
   }
   return (pp);
}
long atothenmodp(long aa
      , long nn
      , long pp)
{
   long retvalu;
   long cc;
   retvalu = 1;
   cc = aa % pp;
   while (0 < nn) {
      if (isodd(nn)) {
         retvalu = (retvalu * cc) % pp;
         nn = (nn - 1) / 2;
      } else {
         nn /= 2;
      }
      cc = (cc * cc) % pp;
   }
   return (retvalu);
}
double atothenmodx(double aa
      , double nn
      , double pp)
{
   return (frac(exp(nn * log(aa) - log(pp))) * pp);
}
long ctz(long nn)
{
   long ii;
   ii = 0;
   while (0 == (nn & 1)) {
      ii += 1;
      nn = (nn >> 1);
   }
   return (ii);
}
long gcd(long aa
      , long bb)
{
   long cc;
   aa = labs(aa);
   bb = labs(bb);
   if (bb <= 0) {
      bb = aa;
   } else {
      while (0 < aa) {
         cc = aa;
         aa = bb % aa;
         bb = cc;
      }
   }
   return (bb);
}
long gcda(long nn
      , const long *num_arr_pc)
{
   long ind;
   long gc;
   gc = num_arr_pc[0];
   for (ind = 1; ind <= nn - 1; ind += 1) {
      gc = gcd(gc, num_arr_pc[ind]);
   }
   return (gc);
}
long lcm(long aa
      , long bb)
{
   return (aa * bb / gcd(aa, bb));
}
long lcam(long aa
      , long bb)
{
   long ii;
   long mm;
   if (bb < aa) {
      ii = aa;
      aa = bb;
      bb = ii;
   }
   ii = bb;
   for (;;) {
      mm = mods(ii, aa);
      if (- 2 <= mm && mm <= 2) {
         break; // KQS
      }
      ii += bb;
   }
   if (mm == -2) {
      ii += 1;
   } else if (0 <= mm) {
      ii -= 1;
   }
   return (ii);
}
long lcams(long aa
      , long bb)
{
   long ii;
   long mm;
   if (bb < aa) {
      ii = aa;
      aa = bb;
      bb = ii;
   }
   ii = 2 * bb;
   for (;;) {
      mm = mods(ii, aa);
      if (- 2 <= mm && mm <= 2) {
         break; // KQS
      }
      ii += bb;
   }
   if (mm == -2) {
      ii += 1;
   } else if (0 <= mm) {
      ii -= 1;
   }
   return (ii);
}
long lcantim(long aa
      , long bb)
{
   long haa;
   long hbb;
   long ii;
   long rema;
   long odd_mask;
   if (isposint(aa) && isposint(bb)) {
      odd_mask = 0;
      if (isodd(aa)) {
         odd_mask = 1;
      }
      if (isodd(bb)) {
         odd_mask += 2;
      }
      if (2 == odd_mask || (bb < aa && odd_mask != 1)) {
         ii = bb;
         bb = aa;
         aa = ii;
      }
      haa = floorl(aa / 2);
      hbb = floorl(bb / 2);
      ii = hbb;
      for (;;) {
         rema = dist(ii, aa);
         if (rema == haa) {
            break;
         } else if (odd_mask == 3 && rema == haa + 1) {
            break;
         }
         ii += bb;
         if (aa * bb <= ii) {
            break; // KQS
         }
      }
      if (aa * bb <= ii) {
         ii = 0;
      }
   } else {
      ii = 0;
   }
   return (ii);
}
long factor(long nn
      , long *ret_fctr_arr_p)
{
   long pp;
   long fctr_ind;
   long inc;
   fctr_ind = 0;
   nn = labs(nn);
   if (nn <= 3) {
      ret_fctr_arr_p[fctr_ind] = nn;
      fctr_ind = 1;
   } else {
      for (pp = 2; pp <= 3; pp += 1) {
         while (0 == nn % pp) {
            ret_fctr_arr_p[fctr_ind] = pp;
            fctr_ind += 1;
            nn /= pp;
         }
      }
      pp = 1;
      inc = 4;
      for (;;) {
         pp += inc;
         inc = 6 - inc;
         while (0 == nn % pp) {
            ret_fctr_arr_p[fctr_ind] = pp;
            fctr_ind += 1;
            nn /= pp;
         }
         if (nn < pp * pp) {
            break; // KQS
         }
      }
      if (1 < nn) {
         ret_fctr_arr_p[fctr_ind] = nn;
         fctr_ind += 1;
      }
   }
   ret_fctr_arr_p[fctr_ind] = 0;
   return (fctr_ind);
}
long modulo(long xxn
      , long yymod)
{
   long retvalu;
   retvalu = xxn % yymod;
   if (retvalu < 0) {
      retvalu += labs(yymod);
   }
   return (retvalu);
}
long mods(long xxn
      , long yymod)
{
   long retvalu;
   long ayy;
   long axx;
   ayy = floorl(labs(yymod));
   axx = labs(xxn);
   retvalu = axx % ayy;
   if (0 < retvalu) {
      while (ayy < 2 * retvalu) {
         retvalu -= ayy;
      }
   } else if (retvalu < 0) {
      while (2 * retvalu < - ayy) {
         retvalu += ayy;
      }
   }
   return (retvalu);
}
long pfl(long nn)
{
   long small_factor;
   long lim;
   long divid;
   if (nn < 2) {
      small_factor = 1;
   } else if (nn % 2 == 0) {
      small_factor = 2;
   } else if (nn % 3 == 0) {
      small_factor = 3;
   } else if (nn % 5 == 0) {
      small_factor = 5;
   } else if (nn % 7 == 0) {
      small_factor = 7;
   } else {
      lim = floorl(sqrt(nn));
      divid = 11;
      small_factor = nn;
      while (divid <= lim) {
         if (nn % divid == 0) {
            small_factor = divid;
            break;
         }
         divid += 2;
         if (nn % divid == 0) {
            small_factor = divid;
            break;
         }
         divid += 4;
      }
   }
   return (small_factor);
}
long pfg(long nn)
{
   long mm;
   long ff;
   mm = nn;
   for (;;) {
      ff = pfl(mm);
      mm /= ff;
      if (mm == 1) {
         break; // KQS
      }
   }
   return (ff);
}
long isprime(long nn)
{
   long retvalu_bol;
   long ann;
   ann = labs(nn);
   if (ann == 2 || ann == 3 || ann == 5 || ann == 7) {
      retvalu_bol = true;
   } else if (ann < 11) {
      retvalu_bol = false;
   } else if (pfl(ann) == ann) {
      retvalu_bol = true;
   } else {
      retvalu_bol = false;
   }
   return (retvalu_bol);
}
long primeprev(long pp)
{
   long retvalu;
   long rema;
   long inc;
   long qq;
   if (pp <= 7) {
      if (pp < 0) {
         retvalu = -primenext(-pp);
      } else if (5 < pp) {
         retvalu = 5;
      } else if (3 < pp) {
         retvalu = 3;
      } else if (2 < pp) {
         retvalu = 2;
      } else {
         retvalu = -2;
      }
   } else {
      rema = pp % 6;
      qq = pp - rema;
      if (rema <= 1) {
         qq -= 1;
         inc = 4;
      } else {
         qq += 1;
         inc = 2;
      }
      while (! isprime(qq)) {
         qq -= inc;
         inc = 6 - inc;
      }
      retvalu = qq;
   }
   return (retvalu);
}
long primenext(long pp)
{
   long retvalu;
   long rema;
   long inc;
   long qq;
   if (pp < 7) {
      if (pp < 0) {
         retvalu = -primeprev(-pp);
      } else if (pp < 2) {
         retvalu = 2;
      } else if (pp < 3) {
         retvalu = 3;
      } else if (pp < 5) {
         retvalu = 5;
      } else {
         retvalu = 7;
      }
   } else {
      rema = (pp + 1) % 6;
      qq = (pp + 1) - rema;
      if (rema <= 1) {
         qq += 1;
         inc = 4;
      } else {
         qq += 5;
         inc = 2;
      }
      while (! isprime(qq)) {
         qq += inc;
         inc = 6 - inc;
      }
      retvalu = qq;
   }
   return (retvalu);
}
static long lv_pcf_end = 0;
static double *lv_pcf_arr = NULL;
long primecount(double xx)
{
   // local-use C lv_pcf_arr;
   // local-use C lv_pcf_end;
   long retvalu;
   long poss_prime;
   long s_ind;
   long ps_ind;
   long pcf_val;
   if (xx < 7) {
      if (xx < 3) {
         if (xx < 2) {
            retvalu = 0;
         } else {
            retvalu = 1;
         }
      } else {
         if (xx < 5) {
            retvalu = 2;
         } else {
            retvalu = 3;
         }
      }
   } else {
      s_ind = floorl((xx - 5) / 2) - floorl((xx - 3) / 6);
      if (lv_pcf_end <= s_ind) {
         ps_ind = lv_pcf_end;
         if (lv_pcf_end <= 0) {
            pcf_val = 2;
         } else {
            pcf_val = lv_pcf_arr[lv_pcf_end - 1];
         }
         lv_pcf_end = ceil2(s_ind + 1, 2);
         lv_pcf_arr = realloc(lv_pcf_arr
            , (lv_pcf_end) * sizeof(lv_pcf_arr[0]));
         poss_prime = 3 * ps_ind - (ps_ind % 2) + 5;
         while (ps_ind <= s_ind) {
            if (isprime(poss_prime)) {
               pcf_val += 1;
            }
            lv_pcf_arr[ps_ind] = pcf_val;
            poss_prime += 2;
            ps_ind += 1;
            if (isprime(poss_prime)) {
               pcf_val += 1;
            }
            lv_pcf_arr[ps_ind] = pcf_val;
            poss_prime += 4;
            ps_ind += 1;
         }
      }
      retvalu = lv_pcf_arr[s_ind];
   }
   return (retvalu);
}
long pcf(double xx)
{
   return (primecount(xx));
}
long primecountx(double xx)
{
   long retvalu;
   long poss_prime;
   long inc;
   long pcf_val;
   if (xx < 7) {
      if (xx < 3) {
         if (xx < 2) {
            retvalu = 0;
         } else {
            retvalu = 1;
         }
      } else {
         if (xx < 5) {
            retvalu = 2;
         } else {
            retvalu = 3;
         }
      }
   } else {
      pcf_val = 4;
      poss_prime = 11;
      inc = 2;
      while (poss_prime <= xx) {
         if (isprime(poss_prime)) {
            pcf_val += 1;
         }
         poss_prime += inc;
         inc = 6 - inc;
      }
      retvalu = pcf_val;
   }
   return (retvalu);
}
double eta(double xx)
{
   double sum;
   double sump;
   long tt;
   long nn;
   long kk;
   long s_ind;
   double retvalu;
   double pm_one;
   double *ps_arr = NULL;
   double *temp_arr = NULL;
   double term;
   if (0 < xx) {
      tt = 0;
      term = -log(DBLEPS) / xx;
      if (term < log(4000)) {
         kk = ceill(exp(term));
         sum = 0;
         pm_one = -1.0;
         nn = 1;
         for (;;) {
            pm_one = -pm_one;
            term = pm_one * pow(nn, - xx);
            tt += 1;
            sump = sum;
            sum += term;
            if (iseq(sump, sum)) {
               break; // KQS
            }
            nn += 1;
            if (kk <= nn) {
               break; // KQS
            }
         }
         retvalu = sum - 0.5 * term;
      } else {
         sum = 0;
         pm_one = -1.0;
         ps_arr = realloc(ps_arr
            , 402 * sizeof(ps_arr[0]));
         temp_arr = realloc(temp_arr
            , 402 * sizeof(temp_arr[0]));
         ps_arr[0] = -pow(2, - xx);
         tt += 1;
         temp_arr[0] = ps_arr[0];
         nn = 1;
         for (;;) {
            pm_one = -pm_one;
            ps_arr[nn] = ps_arr[nn - 1] + pm_one * pow(nn + 2\
                  , - xx);
            tt += 1;
            temp_arr[nn] = ps_arr[nn];
            for (kk = nn - 1; 0 <= kk; kk -= 1) {
               temp_arr[kk] = (temp_arr[kk] + temp_arr[kk +\
                     1]) / 2.0;
            }
            sump = sum;
            sum = temp_arr[0];
            if (iseq(sump, sum)) {
               break; // KQS
            }
            nn += 1;
            if (400 <= nn) {
               break; // KQS
            }
         }
         s_ind = floorl(nn / 3);
         sum = (4 * temp_arr[s_ind] + 3 * temp_arr[s_ind +\
               1]) / 7;
         free(temp_arr);
         free(ps_arr);
         retvalu = sum + 1.0;
      }
   } else if (xx < 0) {
      retvalu = 0.0;
   } else {
      retvalu = 0.5;
   }
   return (retvalu);
}
double zeta(double xx)
{
   double retvalu;
   if (1 < xx) {
      retvalu = eta(xx) / (1.0 - pow(2.0, 1.0 - xx));
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double fibo3(long nn
      , double fib_a
      , double fib_b)
{
   long ii;
   double tt;
   double retvalu;
   if (nn == 0) {
      retvalu = fib_a;
   } else {
      for (ii = 2; ii <= nn; ii += 1) {
         tt = fib_b;
         fib_b += fib_a;
         fib_a = tt;
      }
      retvalu = fib_b;
   }
   return (retvalu);
}
double fibo(long nn)
{
   return (fibo3(nn, 0, 1));
}
double fibox(double xx)
{
   double zz;
   double retvalu;
   if (log(DBLMAX) / log(PHI) < fabs(xx)) {
      retvalu = 0.0;
   } else {
      zz = pow(PHI, xx);
      retvalu = (zz - cos(PI * xx) / zz) / sqrt(5.0);
   }
   return (retvalu);
}
double fiboxinv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double x_init;
   if (yy <= 0) {
      scvx_xx = 0.0;
   } else {
      if (yy <= 0.2) {
         x_init = 0.075;
      } else if (yy <= 0.896946387424606) {
         x_init = 0.8 * yy - 0.15;
      } else if (yy <= 1.009824331847821) {
         x_init = 0.92;
      } else {
         x_init = log(yy * sqrt(5.0)) / log(PHI);
      }
      scvx_dx = 0.05;
      scvx_xx = x_init;
      scvx_yy = yy - fibox(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - fibox(scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double lucas(long nn)
{
   return (fibo3(nn, 2, 1));
}
double lucasx(double xx)
{
   double zz;
   double retvalu;
   if (log(DBLMAX) / log(PHI) < fabs(xx)) {
      retvalu = 0.0;
   } else {
      zz = pow(PHI, xx);
      retvalu = (zz + cos(PI * xx) / zz);
   }
   return (retvalu);
}
long fusc(long nn)
{
   long aa;
   long bb;
   aa = 1;
   bb = 0;
   while (0 < nn) {
      if (isodd(nn)) {
         bb += aa;
      } else {
         aa += bb;
      }
      nn = (nn >> 1);
   }
   return (bb);
}
double Tn(long nn
      , double xx)
{
   double retvalu;
   double tnm_a;
   double tnm_b;
   double tnn;
   long kk;
   if (nn == 0) {
      retvalu = 1.0;
   } else if (nn == 1) {
      retvalu = xx;
   } else if (nn == 2) {
      retvalu = 2.0 * xx * xx - 1.0;
   } else {
      tnm_a = 2.0 * xx * xx - 1.0;
      tnm_b = xx;
      tnn = tnm_a;
      for (kk = 3; kk <= nn; kk += 1) {
         tnn = (2.0 * xx * tnm_a) - tnm_b;
         tnm_b = tnm_a;
         tnm_a = tnn;
      }
      retvalu = tnn;
   }
   return (retvalu);
}
double Un(long nn
      , double xx)
{
   double retvalu;
   double tnm_a;
   double tnm_b;
   double tnn;
   long kk;
   if (nn == 0) {
      retvalu = 1.0;
   } else if (nn == 1) {
      retvalu = 2.0 * xx;
   } else {
      tnm_a = 2.0 * xx;
      tnm_b = 1.0;
      tnn = tnm_a;
      for (kk = 2; kk <= nn; kk += 1) {
         tnn = (2.0 * xx * tnm_a) - tnm_b;
         tnm_b = tnm_a;
         tnm_a = tnn;
      }
      retvalu = tnn;
   }
   return (retvalu);
}
double tri(double nn)
{
   return (nn * (nn + 1) / 2);
}
double triinv(double nn)
{
   double retvalu;
   if (- 0.125 < nn) {
      retvalu = (sqrt(8.0 * nn + 1.0) - 1.0) / 2.0;
   } else {
      retvalu = -0.5;
   }
   return (retvalu);
}
double polynum(double ss
      , double nn)
{
   return ((ss - 2) * nn * (nn - 1) / 2 + nn);
}
double polycnum(double ss
      , double nn)
{
   return (ss * nn * (nn - 1) / 2 + 1);
}
double tetranum(double ss
      , double nn)
{
   return (nn * (nn + 1) * ((ss - 2) * nn + 5 - ss) / 6);
}
double tetracnum(double ss
      , double nn)
{
   return (nn * (ss * nn * nn + 6 - ss) / 6);
}
double minkowski(double xx)
{
   double pp;
   double qq;
   double rr;
   double ss;
   double mm;
   double nn;
   double dd;
   double yy;
   pp = floor(xx);
   qq = 1;
   rr = pp + 1;
   ss = 1;
   dd = 1.0;
   yy = pp;
   for (;;) {
      dd /= 2.0;
      mm = pp + rr;
      nn = qq + ss;
      if (xx < mm / nn) {
         rr = mm;
         ss = nn;
      } else {
         yy += dd;
         pp = mm;
         qq = nn;
      }
      if (iseq(yy + dd, yy)) {
         break; // KQS
      }
   }
   return (yy);
}
double cantorxx(double bb
      , double ee
      , double xx)
{
   double yy;
   double rest;
   double dd;
   double ulmt;
   if (ee < 0.0 || bb < 0.0 || 1.0 < ee + bb) {
      yy = xx;
   } else {
      ulmt = 1.0 - ee;
      yy = floor(xx);
      rest = (xx - yy);
      dd = 0.5;
      for (;;) {
         if (ulmt <= rest) {
            yy += dd;
            rest = frac((rest - ulmt) / ee);
         } else if (bb <= rest) {
            yy += dd;
            break;
         } else {
            rest = frac(rest / bb);
         }
         dd /= 2.0;
         if (iseq(yy + dd, yy) || iszero(rest)) {
            break; // KQS
         }
      }
   }
   return (yy);
}
double cantor(double xx)
{
   return (cantorxx(1.0 / 3.0, 1.0 / 3.0, xx));
}
double cantorul(double bb
      , double ee
      , double xx)
{
   return (pow(0.5, log(xx) / log(bb) + 0.0 * ee));
}
double cantorll(double bb
      , double ee
      , double xx)
{
   return (pow(0.5, log(xx / (1.0 - ee)) / log(bb) + 1.0));
}
long dlogx(long aa
      , long bb
      , long nn)
{
   long ii;
   long pp;
   long retvalu;
   pp = aa;
   retvalu = -1;
   for (ii = 1; ii <= nn; ii += 1) {
      if (pp == bb) {
         retvalu = ii;
         break;
      }
      pp = (pp * aa) % nn;
   }
   return (retvalu);
}
long dlog(long aa
      , long bb
      , long nn)
{
   long sqnn;
   long cur;
   long atothesqnn;
   long atothens;
   long ii;
   long *log_arr = NULL;
   long retvalu;
   if (aa == bb) {
      retvalu = 1;
   } else if (aa <= 0 || bb <= 0 || nn <= 0) {
      retvalu = -1;
   } else if (1 < gcd(aa, nn) || ! isprimitiveroot(aa, nn)) {
      retvalu = dlogx(aa, bb, nn);
   } else {
      sqnn = ceill(sqrt(nn));
      log_arr = realloc(log_arr
         , (nn) * sizeof(log_arr[0]));
      for (ii = 0; ii <= nn - 1; ii += 1) {
         log_arr[ii] = 0;
      }
      atothesqnn = atothenmodp(aa, sqnn, nn);
      cur = atothesqnn;
      for (ii = 1; ii <= sqnn; ii += 1) {
         if (log_arr[cur] == 0) {
            log_arr[cur] = ii;
         }
         cur = (cur * atothesqnn) % nn;
      }
      cur = bb % nn;
      retvalu = -1;
      for (ii = 0; ii <= sqnn; ii += 1) {
         if (0 < log_arr[cur]) {
            atothens = log_arr[cur] * sqnn - ii;
            if (atothens < nn) {
               retvalu = atothens;
               break;
            }
         }
         cur = (cur * aa) % nn;
      }
      free(log_arr);
   }
   return (retvalu);
}
long dlog1(long aa
      , long nn)
{
   return (dlog(aa, 1, nn));
}
static long lv_mertens_end = 0;
static long *lv_mertens_arr = NULL;
long mertens(long nn)
{
   // local-use C lv_mertens_arr;
   // local-use C lv_mertens_end;
   long retvalu;
   long kk;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_mertens_end <= 0) {
         lv_mertens_end = 4;
         lv_mertens_arr = realloc(lv_mertens_arr
            , (lv_mertens_end) * sizeof(lv_mertens_arr[0]));
         lv_mertens_arr[0] = 0;
         lv_mertens_arr[1] = 1;
         lv_mertens_arr[2] = 0;
         lv_mertens_arr[3] = -1;
      }
      if (lv_mertens_end <= nn) {
         kk = lv_mertens_end;
         lv_mertens_end = nn + 1;
         lv_mertens_arr = realloc(lv_mertens_arr
            , (lv_mertens_end) * sizeof(lv_mertens_arr[0]));
         while (kk < lv_mertens_end) {
            lv_mertens_arr[kk] = lv_mertens_arr[kk - 1] +\
                  mobius(kk);
            kk += 1;
         }
      }
      retvalu = lv_mertens_arr[nn];
   }
   return (retvalu);
}
long has_primitiveroot_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   ind = 0;
   if (1 < nf) {
      if (fac_arr_pc[0] == 2) {
         ind += 1;
      }
      if (2 < fac_arr_pc[ind]) {
         while (ind < nf - 1) {
            if (fac_arr_pc[ind] < fac_arr_pc[ind + 1]) {
               break;
            }
            ind += 1;
         }
      }
   }
   return (ind == (nf - 1));
}
long sigma0_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   retvalu = 1;
   exp_i = 2;
   for (ind = 0; ind <= nf - 2; ind += 1) {
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]) {
         exp_i += 1;
      } else {
         retvalu *= exp_i;
         exp_i = 2;
      }
   }
   return (retvalu * exp_i);
}
long sigma1_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   long prm_prev;
   long prm_curr;
   retvalu = 1;
   exp_i = 2;
   prm_prev = fac_arr_pc[0];
   for (ind = 1; ind <= nf - 1; ind += 1) {
      prm_curr = fac_arr_pc[ind];
      if (prm_prev == prm_curr) {
         exp_i += 1;
      } else {
         retvalu *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1);
         exp_i = 2;
         prm_prev = prm_curr;
      }
   }
   return (retvalu * (powi(prm_prev, exp_i) - 1) / (prm_prev\
         - 1));
}
long sigma_f(long powy
      , long nf
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   long exp_i;
   long prm_curr;
   long prm_prev;
   long pw;
   if (powy == 0) {
      retvalu = sigma0_f(nf, fac_arr_pc);
   } else if (powy == 1) {
      retvalu = sigma1_f(nf, fac_arr_pc);
   } else {
      retvalu = 1;
      exp_i = 2;
      prm_prev = fac_arr_pc[0];
      for (ind = 1; ind <= nf - 1; ind += 1) {
         prm_curr = fac_arr_pc[ind];
         if (prm_prev == prm_curr) {
            exp_i += 1;
         } else {
            pw = powi(prm_prev, powy);
            retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1));
            exp_i = 2;
            prm_prev = prm_curr;
         }
      }
      pw = powi(prm_prev, powy);
      retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1));
   }
   return (retvalu);
}
long ispractical_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long sgma;
   long exp_i;
   long prm_curr;
   long prm_prev;
   long retvalu_bol;
   if (2 < fac_arr_pc[0]) {
      retvalu_bol = false;
   } else {
      retvalu_bol = true;
      sgma = 1;
      exp_i = 2;
      prm_prev = fac_arr_pc[0];
      for (ind = 1; ind <= nf - 1; ind += 1) {
         prm_curr = fac_arr_pc[ind];
         if (prm_prev == prm_curr) {
            exp_i += 1;
         } else {
            sgma *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1);
            if (1 + sgma < prm_curr) {
               retvalu_bol = false;
               break;
            }
            exp_i = 2;
            prm_prev = prm_curr;
         }
      }
   }
   return (retvalu_bol);
}
long issquarefree_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu_bol;
   retvalu_bol = true;
   for (ind = 1; ind <= nf - 1; ind += 1) {
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]) {
         retvalu_bol = false;
         break;
      }
   }
   return (retvalu_bol);
}
long totient_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long retvalu;
   retvalu = 1;
   for (ind = 0; ind <= nf - 2; ind += 1) {
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]) {
         retvalu *= fac_arr_pc[ind];
      } else {
         retvalu *= (fac_arr_pc[ind] - 1);
      }
   }
   retvalu *= (fac_arr_pc[nf - 1] - 1);
   return (retvalu);
}
long mobius_f(long nf
      , const long *fac_arr_pc)
{
   long retvalu;
   long ind;
   if (iseven(nf)) {
      retvalu = 1;
   } else {
      retvalu = -1;
   }
   for (ind = 1; ind <= nf - 1; ind += 1) {
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]) {
         retvalu = 0;
         break;
      }
   }
   return (retvalu);
}
long prime0_f(long nf
      , const long *fac_arr_pc)
{
   long ind;
   long prm_curr;
   long prm_prev;
   long retvalu;
   retvalu = 1;
   prm_prev = fac_arr_pc[0];
   for (ind = 1; ind <= nf - 1; ind += 1) {
      prm_curr = fac_arr_pc[ind];
      if (prm_prev < prm_curr) {
         retvalu += 1;
      }
      prm_prev = prm_curr;
   }
   return (retvalu);
}
#define LC_MAX_FACTORS 65
long print_factor(long nn)
{
   long ind;
   long fac_arr[LC_MAX_FACTORS];
   long nf;
   nf = factor(nn, fac_arr);
   printf("%.18g", (double)nn);
   printf("%s", ":");
   for (ind = 0; ind <= nf - 1; ind += 1) {
      printf("%s", " ");
      printf("%.18g", (double)fac_arr[ind]);
   }
   printf("%s", "\n");
   return (nf);
}
long mobius(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   nf = factor(nn, fac_arr);
   return (mobius_f(nf, fac_arr));
}
long isprimitiveroot(long aa
      , long nn)
{
   long toti;
   long nf_toti;
   long ind;
   long prm;
   long retvalu_bol;
   long fac_arr[LC_MAX_FACTORS];
   if (aa <= 1 || 1 < gcd(aa, nn)) {
      retvalu_bol = false;
   } else if (aa == 2) {
      retvalu_bol = isodd(nn);
   } else {
      toti = totient(nn);
      nf_toti = factor(toti, fac_arr);
      if (atothenmodp(aa, toti / fac_arr[0], nn) == 1) {
         retvalu_bol = false;
      } else {
         retvalu_bol = true;
         for (ind = 1; ind <= nf_toti - 1; ind += 1) {
            if (fac_arr[ind - 1] != fac_arr[ind]) {
               prm = fac_arr[ind];
               if (atothenmodp(aa, toti / prm, nn) == 1) {
                  retvalu_bol = false;
                  break;
               }
            }
         }
      }
   }
   return (retvalu_bol);
}
long prime0(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   nf = factor(nn, fac_arr);
   return (prime0_f(nf, fac_arr));
}
long prime1(long nn)
{
   long fac_arr[LC_MAX_FACTORS];
   return (factor(nn, fac_arr));
}
long sigma0(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   nf = factor(nn, fac_arr);
   return (sigma0_f(nf, fac_arr));
}
long sigma1(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   nf = factor(nn, fac_arr);
   return (sigma1_f(nf, fac_arr));
}
long sigma(long powy
      , long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   long retvalu;
   if (nn <= 1) {
      retvalu = nn;
   } else if (powy == 0) {
      retvalu = sigma0(nn);
   } else if (powy == 1) {
      retvalu = sigma1(nn);
   } else {
      nf = factor(nn, fac_arr);
      retvalu = sigma_f(powy, nf, fac_arr);
   }
   return (retvalu);
}
long totient(long nn)
{
   long fac_arr[LC_MAX_FACTORS];
   long nf;
   nf = factor(nn, fac_arr);
   return (totient_f(nf, fac_arr));
}
long has_primitiveroot(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   long retvalu_bol;
   if (nn < 2) {
      retvalu_bol = false;
   } else {
      nf = factor(nn, fac_arr);
      retvalu_bol = has_primitiveroot_f(nf, fac_arr);
   }
   return (retvalu_bol);
}
long issquarefree(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   long retvalu_bol;
   if (nn < 1) {
      retvalu_bol = false;
   } else if (nn < 3) {
      retvalu_bol = true;
   } else {
      nf = factor(nn, fac_arr);
      retvalu_bol = issquarefree_f(nf, fac_arr);
   }
   return (retvalu_bol);
}
long ispractical(long nn)
{
   long nf;
   long fac_arr[LC_MAX_FACTORS];
   long retvalu_bol;
   if (nn < 1) {
      retvalu_bol = false;
   } else if (nn < 3) {
      retvalu_bol = true;
   } else {
      nf = factor(nn, fac_arr);
      retvalu_bol = ispractical_f(nf, fac_arr);
   }
   return (retvalu_bol);
}
long primitiveroot(long nn)
{
   long ind;
   long nf_toti;
   long toti;
   long mm;
   long fac_arr[LC_MAX_FACTORS];
   long prm;
   long retvalu;
   if (nn < 2) {
      retvalu = 0;
   } else if (nn < 5) {
      retvalu = nn - 1;
   } else if (! has_primitiveroot(nn)) {
      retvalu = 0;
   } else {
      toti = totient(nn);
      nf_toti = factor(toti, fac_arr);
      mm = 2;
      retvalu = 0;
      while (mm < nn && retvalu <= 0) {
         if (gcd(mm, nn) == 1) {
            retvalu = mm;
            prm = 0;
            for (ind = 0; ind <= nf_toti - 1; ind += 1) {
               if (prm != fac_arr[ind]) {
                  prm = fac_arr[ind];
                  if (atothenmodp(mm, toti / prm, nn) == 1) {
                     retvalu = 0;
                     break;
                  }
               }
            }
         }
         mm += 1;
      }
   }
   return (retvalu);
}
long carmichael(long nn)
{
   long ind;
   long nf;
   long lmbd;
   long prm;
   long pk;
   long fac_arr[LC_MAX_FACTORS];
   if (nn < 8) {
      lmbd = totient(nn);
   } else {
      nf = factor(nn, fac_arr);
      ind = 0;
      while (ind < nf && fac_arr[ind] == 2) {
         ind += 1;
      }
      if (2 < ind) {
         lmbd = (1 << (ind - 2));
      } else {
         lmbd = 1;
      }
      while (ind < nf) {
         prm = fac_arr[ind];
         pk = prm - 1;
         while (ind < nf - 1 && prm == fac_arr[ind + 1]) {
            ind += 1;
            pk *= prm;
         }
         lmbd = lcm(lmbd, pk);
         ind += 1;
      }
   }
   return (lmbd);
}
long znorder(long aa
      , long nn)
{
   long ind;
   long fac_arr[LC_MAX_FACTORS];
   long nfkk;
   long kk;
   long ab;
   long ek;
   long prm_i;
   long exp_i;
   if (nn <= 1) {
      kk = nn;
   } else if (aa <= 1) {
      kk = aa;
   } else if (1 < gcd(aa, nn)) {
      kk = 0;
   } else {
      kk = carmichael(nn);
      nfkk = factor(kk, fac_arr);
      exp_i = 1;
      for (ind = 0; ind <= nfkk - 1; ind += 1) {
         prm_i = fac_arr[ind];
         kk /= prm_i;
         if (ind + 1 < nfkk && prm_i == fac_arr[ind + 1]) {
            exp_i += 1;
         } else {
            ab = atothenmodp(aa, kk, nn);
            for (ek = 0; ek <= exp_i; ek += 1) {
               if (ab == 1) {
                  break;
               }
               kk *= prm_i;
               ab = atothenmodp(ab, prm_i, nn);
            }
            if (exp_i < ek) {
               kk = 0;
               break;
            }
            exp_i = 1;
         }
      }
   }
   return (kk);
}
long repetendlen(long denm
      , long basee)
{
   long gd;
   long retvalu;
   for (;;) {
      gd = gcd(denm, basee);
      denm /= gd;
      if (1 == gd) {
         break; // KQS
      }
   }
   if (denm == 1) {
      retvalu = 0;
   } else {
      retvalu = znorder(basee, denm);
   }
   return (retvalu);
}
long print_kevy(long den
      , long start
      , long basee)
{
   long numer;
   long valu;
   long leny;
   leny = 0;
   if (start < basee * den) {
      numer = start;
      valu = start;
      for (;;) {
         (void) print_num2char(valu);
         leny += 1;
         valu = floorl(numer / den);
         numer = (numer % den) * basee + valu;
         if (numer == start || den * basee < leny) {
            break; // KQS
         }
      }
      if (basee <= start) {
         printf("%s", "-");
         printf("%.18g", (double)floorl(start / basee));
      }
   }
   return (leny);
}
long eulerphi(long nn)
{
   return (totient(nn));
}
long znorder__1(long bb
      , long mdls)
{
   long nn;
   long pp;
   if (1 < gcd(bb, mdls)) {
      nn = 0;
   } else {
      pp = 1;
      nn = 1;
      for (;;) {
         pp = (pp * bb) % mdls;
         if (pp == 1) {
            break; // KQS
         }
         nn += 1;
         if (mdls <= nn) {
            break; // KQS
         }
      }
   }
   return (nn);
}
long bkn(long bb
      , long kk)
{
   return (znorder(bb, kk * bb - 1));
}
long bkbn(long bb
      , long kk
      , long bbb)
{
   long mdls;
   mdls = kk * bb - 1;
   if (mdls % bbb == 0) {
      mdls /= bbb;
   }
   return (znorder(bb, mdls));
}
static double lv_li_two = 0;
double lix(double xx)
{
   // local-use C lv_li_two;
   if (lv_li_two <= 0) {
      lv_li_two = logintegral(2.0);
   }
   return (logintegral(xx) - lv_li_two);
}
double lixinv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double x_init;
   x_init = yy / log(yy);
   scvx_dx = 0.05;
   scvx_xx = x_init;
   scvx_yy = yy - lix(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - lix(scvx_xx);
      scvx_dy = (scvx_yy - scvx_yp);
      if (iszero(scvx_dy)) {
         break;
      }
      scvx_dx *= - scvx_yy / scvx_dy;
   }
   return (scvx_xx);
}
double primenth__1(double nn)
{
   double logn;
   double loglogn;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else if (nn < 4.25) {
      retvalu = 1.6 * nn + 0.1;
   } else {
      logn = log(nn);
      loglogn = log(logn);
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0)\
            / logn - ((loglogn - 6.0) * loglogn + 11.0) /\
            (2.0 * logn * logn)) + 3.5 * sqrt(nn) + 10;
   }
   return (retvalu);
}
double reimann(double nn)
{
   double retvalu;
   double sum;
   double sum_prev;
   double ii;
   double lim;
   if (nn < 2) {
      retvalu = 0;
   } else {
      sum = lix(nn);
      lim = 10 * lg(nn);
      ii = 2;
      for (;;) {
         sum_prev = sum;
         sum += mobius(ii) * lix(pow(nn, 1.0 / ii)) / ii;
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         ii += 1;
         if (lim <= ii) {
            break; // KQS
         }
      }
      retvalu = sum;
   }
   return (retvalu);
}
long primenth(long nn)
{
   long ii;
   long pp;
   double rmndr;
   long inc;
   double prime_arr[30];
   if (nn < 5) {
      if (nn < 1) {
         pp = 0;
      } else if (nn < 2) {
         pp = 2;
      } else if (nn < 3) {
         pp = 3;
      } else if (nn < 4) {
         pp = 5;
      } else {
         pp = 7;
      }
   } else {
      if (1024 <= nn) {
         prime_arr[0] = 8161;
         prime_arr[1] = 17863;
         prime_arr[2] = 38873;
         prime_arr[3] = 84017;
         prime_arr[4] = 180503;
         prime_arr[5] = 386093;
         prime_arr[6] = 821641;
         prime_arr[7] = 1742537;
         prime_arr[8] = 3681131;
         prime_arr[9] = 7754077;
         prime_arr[10] = 16290047;
         prime_arr[11] = 34136029;
         prime_arr[12] = 71378569;
         prime_arr[13] = 148948139;
         prime_arr[14] = 310248241;
         prime_arr[15] = 645155197;
         prime_arr[16] = 1339484197;
         prime_arr[17] = 2777105129;
         prime_arr[18] = 5750079047;
         prime_arr[19] = 11891268401;
         prime_arr[20] = 24563311309;
         prime_arr[21] = 50685770167;
         prime_arr[22] = 104484802057;
         ii = floorl(lg(nn + 1) - 10);
         if (22 <= ii) {
            ii = 22;
         }
         pp = prime_arr[ii];
         ii = round(pow(2, ii + 10));
         rmndr = fmodu(pp, 6);
         if (iseq(rmndr, 5)) {
            inc = 2;
         } else if (iseq(rmndr, 1)) {
            inc = 4;
         } else {
            fprintf(stderr, "primenth:""PRIME_ISNT_PM_1_MOD_6");
            exit(1);
         }
      } else {
         pp = 11;
         ii = 5;
         inc = 2;
      }
      if (nn < ii) {
         printf("%s", "II=");
         printf("%.18g", (double)ii);
         printf("%s", " NN=");
         printf("%.18g", (double)nn);
         fprintf(stderr, "primenth:""PRIMENTH_failed");
         exit(1);
      }
      while (ii < nn) {
         for (;;) {
            pp += inc;
            inc = 6 - inc;
            if (isprime(pp)) {
               break; // KQS
            }
         }
         ii += 1;
      }
   }
   return (pp);
}
double bessJv(double vv
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double mm;
   double xxsqr_div_four;
   double avv;
   if (xx < 0.0) {
      sum = 0.0;
   } else {
      avv = vv;
      if (isposint(-vv)) {
         avv = fabs(vv);
      }
      xxsqr_div_four = (xx * xx / 4.0);
      term = pow(xx / 2.0, avv) / tgamma(avv + 1.0);
      sum = term;
      mm = 1;
      for (;;) {
         term *= - xxsqr_div_four / (mm * (avv + mm));
         sum_prev = sum;
         sum += term;
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         mm += 1;
      }
      if (isposint(-vv) && isodd(vv)) {
         sum = -sum;
      }
   }
   return (sum);
}
double bessYv(double vv
      , double xx)
{
   double retvalu;
   double vvpi;
   if (isint(vv)) {
      retvalu = bessYn(vv, xx);
   } else {
      vvpi = PI * vv;
      retvalu = ((cos(vvpi) * bessJv(vv, xx) - bessJv(-vv,\
            xx)) / sin(vvpi));
   }
   return (retvalu);
}
double bessI0(double xx)
{
   double yy;
   double retvalu;
   if (xx < 7.75) {
      yy = xx * xx / 4;
      retvalu =\
            (((((((((((((((((1.1497640034400735733456400E-29)\
            * yy + 2.0732014503197852176921968E-27) * yy +\
            5.9203280572170548134753422E-25) * yy +\
            1.3141332422663039834197910E-22) * yy +\
            2.5791926805873898803749321E-20) * yy +\
            4.3583591008893599099577755E-18) * yy +\
            6.2760839879536225394314453E-16) * yy +\
            7.5940582595094190098755663E-14) * yy +\
            7.5940584360755226536109511E-12) * yy +\
            6.1511873265092916275099070E-10) * yy +\
            3.9367598891475388547279760E-08) * yy +\
            1.9290123456788994104574754E-06) * yy +\
            6.9444444444444568581891535E-05) * yy +\
            1.7361111111111110294015271E-03) * yy +\
            2.7777777777777777805664954E-02) * yy +\
            2.4999999999999999999629693E-01) * yy +\
            1.0000000000000000000000801E+00) * yy + 1;
   } else {
      yy = 1.0 / xx;
      retvalu =\
            (((((((((((((((((((((((\
            1.6069467093441596329340754E+16) * yy -\
            2.1363029690365351606041265E+16) * yy +\
            1.3012646806421079076251950E+16) * yy -\
            4.8049082153027457378879746E+15) * yy +\
            1.1989242681178569338129044E+15) * yy -\
            2.1323049786724612220362154E+14) * yy +\
            2.7752144774934763122129261E+13) * yy -\
            2.6632742974569782078420204E+12) * yy +\
            1.8592340458074104721496236E+11) * yy -\
            8.9270060370015930749184222E+09) * yy +\
            2.3518420447411254516178388E+08) * yy +\
            2.6092888649549172879282592E+06) * yy -\
            5.9355022509673600842060002E+05) * yy +\
            3.1275740782277570164423916E+04) * yy -\
            1.0026890180180668595066918E+03) * yy +\
            2.2725199603010833194037016E+01) * yy -\
            1.0699095472110916094973951E-01) * yy +\
            9.4085204199017869159183831E-02) * yy +\
            4.4718622769244715693031735E-02) * yy +\
            2.9219501690198775910219311E-02) * yy +\
            2.8050628884163787533196746E-02) * yy +\
            4.9867785050353992900698488E-02) * yy +\
            3.9894228040143265335649948E-01);
      retvalu *= exp(xx) / sqrt(xx);
   }
   return (retvalu);
}
double bessI1(double xx)
{
   double yy;
   double aa;
   double retvalu;
   if (xx < 7.75) {
      yy = xx * xx / 4;
      aa = (((((((((((((1.332898928162290861E-23) * yy +\
            1.625212890947171108E-21) * yy +\
            3.410720494727771276E-19) * yy +\
            5.220157095351373194E-17) * yy +\
            6.904822652741917551E-15) * yy +\
            7.593969849687574339E-13) * yy +\
            6.834657311305621830E-11) * yy +\
            4.920949692800671435E-09) * yy +\
            2.755731926254790268E-07) * yy +\
            1.157407407354987232E-05) * yy +\
            3.472222222225921045E-04) * yy +\
            6.944444444444341983E-03) * yy +\
            8.333333333333333803E-02);
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0;
   } else if (xx < 500) {
      yy = 1.0 / xx;
      retvalu =\
            ((((((((((((((((((((((-2.213318202179221945E+15)\
            * yy + 3.146401654361325073E+15) * yy -\
            2.067285045778906105E+15) * yy +\
            8.325554073334618015E+14) * yy -\
            2.298849639457172489E+14) * yy +\
            4.614040809616582764E+13) * yy -\
            6.967602516005787001E+12) * yy +\
            8.087824484994859552E+11) * yy -\
            7.313784438967834057E+10) * yy +\
            5.192386898222206474E+09) * yy -\
            2.903390398236656519E+08) * yy +\
            1.277677779341446497E+07) * yy -\
            4.404655582443487334E+05) * yy +\
            1.178785865993440669E+04) * yy -\
            2.426181371595021021E+02) * yy +\
            3.458284470977172076E+00) * yy -\
            1.528189554374492735E-01) * yy -\
            5.719036414430205390E-02) * yy -\
            4.090895951581637791E-02) * yy -\
            4.675104253598537322E-02) * yy -\
            1.496033551613111533E-01) * yy +\
            3.989422804014406054E-01) * exp(xx) / sqrt(xx);
   } else {
      yy = 1.0 / xx;
      aa = exp(xx / 2.0);
      retvalu = (((((-5.843630344778927582E-02) * yy -\
            4.090421597376992892E-02) * yy -\
            4.675105322571775911E-02) * yy -\
            1.496033551467584157E-01) * yy +\
            3.989422804014314820E-01) * aa / sqrt(xx);
      retvalu *= aa;
   }
   return (retvalu);
}
double bessK0(double arg)
{
   double retvalu;
   double sumf;
   double sumg;
   double sump;
   double sumq;
   double xx;
   double xz;
   xx = arg;
   if (xx <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx < DBLEPS) {
      retvalu = 0.11593151565841244858684731328185 - log(xx);
   } else if (xx <= 1.0) {
      xz = xx * xx;
      sump = (((((5.8599221412826100000E-04) * xz +\
            1.3166052564989571850E-01) * xz +\
            1.1999463724910714109E+01) * xz +\
            4.6850901201934832188E+02) * xz +\
            5.9169059852270512312E+03) * xz +\
            2.4708152720399552679E+03;
      sumq = ((1.0000000000000000000E+00) * xz -\
            2.4994418972832303646E+02) * xz +\
            2.1312714303849120380E+04;
      sumf = (((-1.6414452837299064100E+00) * xz -\
            2.9601657892958843866E+02) * xz -\
            1.7733784684952985886E+04) * xz -\
            4.0320340761145482298E+05;
      sumg = ((1.0 * xz - 2.5064972445877992730E+02) * xz +\
            2.9865713163054025489E+04) * xz -\
            1.6128136304458193998E+06;
      retvalu = sump / sumq - log(xx) * (xz * sumf / sumg + 1.0);
   } else if (xx < DBLMAXLN) {
      xz = 1.0 / xx;
      sump = (((((((((1.1394980557384778174E+02) * xz +\
            3.6832589957340267940E+03) * xz +\
            3.1075408980684392399E+04) * xz +\
            1.0577068948034021957E+05) * xz +\
            1.7398867902565686251E+05) * xz +\
            1.5097646353289914539E+05) * xz +\
            7.1557062783764037541E+04) * xz +\
            1.8321525870183537725E+04) * xz +\
            2.3444738764199315021E+03) * xz +\
            1.1600249425076035558E+02;
      sumq = ((((((((((1.0000000000000000000E+00) * xz +\
            2.0013443064949242491E+02) * xz +\
            4.4329628889746408858E+03) * xz +\
            3.1474655750295278825E+04) * xz +\
            9.7418829762268075784E+04) * xz +\
            1.5144644673520157801E+05) * xz +\
            1.2689839587977598727E+05) * xz +\
            5.8824616785857027752E+04) * xz +\
            1.4847228371802360957E+04) * xz +\
            1.8821890840982713696E+03) * xz +\
            9.2556599177304839811E+01;
      retvalu = sump / sumq / sqrt(xx) * exp(-xx);
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double bessK1(double arg)
{
   double retvalu;
   double sumf;
   double sumg;
   double sump;
   double sumq;
   double xx;
   double xz;
   xx = arg;
   if (xx < DBLEPS) {
      retvalu = DBLMAX;
   } else if (xx < DBLEPS) {
      retvalu = 1.0 / xx;
   } else if (xx <= 1.0) {
      xz = xx * xx;
      sump = (((((4.8127070456878442310E-1) * xz +\
            9.9991373567429309922E+1) * xz +\
            7.1885382604084798576E+3) * xz +\
            1.7733324035147015630E+5) * xz +\
            7.1938920065420586101E+5) * xz -\
            2.2149374878243304548E+6;
      sumq = (((1.0000000000000000000E+0) * xz -\
            2.8143915754538725829E+2) * xz +\
            3.7264298672067697862E+4) * xz -\
            2.2149374878243304548E+6;
      sumf = ((((-2.2795590826955002390E-1) * xz -\
            5.3103913335180275253E+1) * xz -\
            4.5051623763436087023E+3) * xz -\
            1.4758069205414222471E+5) * xz -\
            1.3531161492785421328E+6;
      sumg = (((1.0000000000000000000E+0) * xz -\
            3.0507151578787595807E+2) * xz +\
            4.3117653211351080007E+4) * xz -\
            2.7062322985570842656E+6;
      retvalu = (xz * log(xx) * sumf / sumg + sump / sumq) / xx;
   } else if (xx < DBLMAXLN) {
      xz = 1.0 / xx;
      sump = ((((((((((6.4257745859173138767E-2) * xz +\
            7.5584584631176030810E+0) * xz +\
            1.3182609918569941308E+2) * xz +\
            8.1094256146537402173E+2) * xz +\
            2.3123742209168871550E+3) * xz +\
            3.4540675585544584407E+3) * xz +\
            2.8590657697910288226E+3) * xz +\
            1.3319486433183221990E+3) * xz +\
            3.4122953486801312910E+2) * xz +\
            4.4137176114230414036E+1) * xz +\
            2.2196792496874548962E+0;
      sumq = (((((((((1.0000000000000000000E+0) * xz +\
            3.6001069306861518855E+1) * xz +\
            3.3031020088765390854E+2) * xz +\
            1.2082692316002348638E+3) * xz +\
            2.1181000487171943810E+3) * xz +\
            1.9448440788918006154E+3) * xz +\
            9.6929165726802648634E+2) * xz +\
            2.5951223655579051357E+2) * xz +\
            3.4552228452758912848E+1) * xz +\
            1.7710478032601086579E+0;
      retvalu = sump / sumq / sqrt(xx);
      retvalu = retvalu * exp(-xx);
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double bessJn_ps(long nn
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double mm;
   double xxsqr_div_four;
   long ann;
   if (nn < 0) {
      ann = -nn;
   } else {
      ann = nn;
   }
   term = pow(xx / 2.0, ann) / factorial(ann);
   xxsqr_div_four = -(xx * xx / 4.0);
   sum = term;
   mm = 1;
   for (;;) {
      term *= xxsqr_div_four / (mm * (ann + mm));
      sum_prev = sum;
      sum += term;
      if (iseq(sum, sum_prev)) {
         break; // KQS
      }
      mm += 1;
   }
   if (nn < 0 && isodd(nn)) {
      sum = -sum;
   }
   return (sum);
}
double bessIn_ps(long nn
      , double xx)
{
   double sum;
   double sum_prev;
   double term;
   double mm;
   double xxsqr_div_four;
   long ann;
   if (nn < 0) {
      ann = -nn;
   } else {
      ann = nn;
   }
   term = pow(xx / 2.0, ann) / factorial(ann);
   xxsqr_div_four = xx * xx / 4.0;
   sum = term;
   mm = 1;
   for (;;) {
      term *= xxsqr_div_four / (mm * (ann + mm));
      sum_prev = sum;
      sum += term;
      if (iseq(sum, sum_prev)) {
         break; // KQS
      }
      mm += 1;
   }
   return (sum);
}
static double lf_besucjy0_xge5(double xx
      , long jfunc)
{
   double ww;
   double pp;
   double qq;
   double zz;
   double xn;
   double denom;
   double numer;
   ww = 5.0 / xx;
   zz = 25.0 / (xx * xx);
   numer = (((((((7.96936729297347051624E-4) * zz +\
         8.28352392107440799803E-2) * zz +\
         1.23953371646414299388E0) * zz +\
         5.44725003058768775090E0) * zz +\
         8.74716500199817011941E0) * zz +\
         5.30324038235394892183E0) * zz +\
         9.99999999999999997821E-1);
   denom = (((((((9.24408810558863637013E-4) * zz +\
         8.56288474354474431428E-2) * zz +\
         1.25352743901058953537E0) * zz +\
         5.47097740330417105182E0) * zz +\
         8.76190883237069594232E0) * zz +\
         5.30605288235394617618E0) * zz +\
         1.00000000000000000218E0);
   pp = numer / denom;
   numer = ((((((((-1.13663838898469149931E-2) * zz -\
         1.28252718670509318512E0) * zz -\
         1.95539544257735972385E1) * zz -\
         9.32060152123768231369E1) * zz -\
         1.77681167980488050595E2) * zz -\
         1.47077505154951170175E2) * zz -\
         5.14105326766599330220E1) * zz -\
         6.05014350600728481186E0);
   denom = ((((((((1.00000000000000000000E0) * zz +\
         6.43178256118178023184E1) * zz +\
         8.56430025976980587198E2) * zz +\
         3.88240183605401609683E3) * zz +\
         7.24046774195652478189E3) * zz +\
         5.93072701187316984827E3) * zz +\
         2.06209331660327847417E3) * zz +\
         2.42005740240291393179E2);
   qq = numer / denom;
   xn = xx - PI / 4;
   if (jfunc < 1) {
      pp = pp * cos(xn) - ww * qq * sin(xn);
   } else {
      pp = pp * sin(xn) + ww * qq * cos(xn);
   }
   return (pp * SQRTTWO / sqrt(PI * xx));
}
static double lf_besucjy1_xge5(double xx
      , long jfunc)
{
   double ww;
   double pp;
   double qq;
   double zz;
   double xn;
   double denom;
   double numer;
   ww = 5.0 / xx;
   zz = 25.0 / (xx * xx);
   numer = (((((((7.62125616208173112003E-4) * zz +\
         7.31397056940917570436E-2) * zz +\
         1.12719608129684925192E0) * zz +\
         5.11207951146807644818E0) * zz +\
         8.42404590141772420927E0) * zz +\
         5.21451598682361504063E0) * zz +\
         1.00000000000000000254E0);
   denom = (((((((5.71323128072548699714E-4) * zz +\
         6.88455908754495404082E-2) * zz +\
         1.10514232634061696926E0) * zz +\
         5.07386386128601488557E0) * zz +\
         8.39985554327604159757E0) * zz +\
         5.20982848682361821619E0) * zz +\
         9.99999999999999997461E-1);
   pp = numer / denom;
   numer = ((((((((5.10862594750176621635E-2) * zz +\
         4.98213872951233449420E0) * zz +\
         7.58238284132545283818E1) * zz +\
         3.66779609360150777800E2) * zz +\
         7.10856304998926107277E2) * zz +\
         5.97489612400613639965E2) * zz +\
         2.11688757100572135698E2) * zz +\
         2.52070205858023719784E1);
   denom = ((((((((1.00000000000000000000E0) * zz +\
         7.42373277035675149943E1) * zz +\
         1.05644886038262816351E3) * zz +\
         4.98641058337653607651E3) * zz +\
         9.56231892404756170795E3) * zz +\
         7.99704160447350683650E3) * zz +\
         2.82619278517639096600E3) * zz +\
         3.36093607810698293419E2);
   qq = numer / denom;
   xn = xx - 3 * PI / 4;
   if (jfunc < 1) {
      pp = pp * cos(xn) - ww * qq * sin(xn);
   } else {
      pp = pp * sin(xn) + ww * qq * cos(xn);
   }
   return (pp * SQRTTWO / sqrt(PI * xx));
}
double bessJ0(double xx)
{
   double zz;
   double denom;
   double numer;
   double retvalu;
   if (xx < 0.0) {
      xx = -xx;
   }
   zz = xx * xx;
   if (xx < 1E-5) {
      retvalu = 1.0 - zz / 4.0;
   } else if (xx < 5.0) {
      numer = ((((-4.79443220978201773821E9) * zz +\
            1.95617491946556577543E12) * zz -\
            2.49248344360967716204E14) * zz +\
            9.70862251047306323952E15);
      denom = (((((((((1.00000000000000000000E0) * zz +\
            4.99563147152651017219E2) * zz +\
            1.73785401676374683123E5) * zz +\
            4.84409658339962045305E7) * zz +\
            1.11855537045356834862E10) * zz +\
            2.11277520115489217587E12) * zz +\
            3.10518229857422583814E14) * zz +\
            3.18121955943204943306E16) * zz +\
            1.71086294081043136091E18);
      retvalu = (zz - 5.783185962946784521175) * (zz -\
            30.4712623436620863991) * numer / denom;
   } else {
      retvalu = lf_besucjy0_xge5(xx, 0);
   }
   return (retvalu);
}
double bessJ1(double xx)
{
   double ww;
   double zz;
   double denom;
   double numer;
   double retvalu;
   ww = xx;
   if (ww < 0.0) {
      ww = -ww;
   }
   if (ww < 5.0) {
      zz = ww * ww;
      numer = ((((-8.99971225705559398224E8) * zz +\
            4.52228297998194034323E11) * zz -\
            7.27494245221818276015E13) * zz +\
            3.68295732863852883286E15);
      denom = (((((((((1.00000000000000000000E0) * zz +\
            6.20836478118054335476E2) * zz +\
            2.56987256757748830383E5) * zz +\
            8.35146791431949253037E7) * zz +\
            2.21511595479792499675E10) * zz +\
            4.74914122079991414898E12) * zz +\
            7.84369607876235854894E14) * zz +\
            8.95222336184627338078E16) * zz +\
            5.32278620332680085395E18);
      retvalu = numer / denom * xx * (zz -\
            14.6819706421238932572) * (zz -\
            49.2184563216946036703);
   } else {
      retvalu = lf_besucjy1_xge5(xx, 0);
   }
   return (retvalu);
}
double bessY0(double xx)
{
   double zz;
   double denom;
   double numer;
   double retvalu;
   if (xx <= 0.0) {
      retvalu = DBLMAX;
   } else {
      zz = xx * xx;
      if (xx < 1E-5) {
         retvalu = 1.0 - zz / 4.0;
      } else if (xx < 5.0) {
         numer = ((((((((1.55924367855235737965E4) * zz -\
               1.46639295903971606143E7) * zz +\
               5.43526477051876500413E9) * zz -\
               9.82136065717911466409E11) * zz +\
               8.75906394395366999549E13) * zz -\
               3.46628303384729719441E15) * zz +\
               4.42733268572569800351E16) * zz -\
               1.84950800436986690637E16);
         denom = ((((((((1.00000000000000000000E0) * zz +\
               1.04128353664259848412E3) * zz +\
               6.26107330137134956842E5) * zz +\
               2.68919633393814121987E8) * zz +\
               8.64002487103935000337E10) * zz +\
               2.02979612750105546709E13) * zz +\
               3.17157752842975028269E15) * zz +\
               2.50596256172653059228E17);
         retvalu = numer / denom + 2.0 * log(xx) * bessJ0(xx)\
               / PI;
      } else {
         retvalu = lf_besucjy0_xge5(xx, 1);
      }
   }
   return (retvalu);
}
double bessY1(double xx)
{
   double ww;
   double zz;
   double denom;
   double numer;
   double retvalu;
   ww = xx;
   if (xx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (ww <= 5.0) {
      zz = ww * ww;
      numer = ((((((1.2632047479017802640E9) * zz -\
            6.47355876379160291031E11) * zz +\
            1.14509511541823727583E14) * zz -\
            8.12770255501325109621E15) * zz +\
            2.02439475713594898196E17) * zz -\
            7.78877196265950026825E17);
      denom = (((((((((1.00000000000000000000E0) * zz +\
            5.94301592346128195359E2) * zz +\
            2.35564092943068577943E5) * zz +\
            7.34811944459721705660E7) * zz +\
            1.87601316108706159478E10) * zz +\
            3.88231277496238566008E12) * zz +\
            6.20557727146953693363E14) * zz +\
            6.87141087355300489866E16) * zz +\
            3.97270608116560655612E18);
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) *\
            log(xx) - 1.0 / xx) / PI;
   } else {
      retvalu = lf_besucjy1_xge5(xx, 1);
   }
   return (retvalu);
}
static double lf_bess_ucrecur(long nn
      , double xx
      , double fzero
      , double fone)
{
   double av;
   double bv;
   double cv;
   double tox;
   long ii;
   if (nn <= 0) {
      cv = fzero;
   } else if (nn == 1) {
      cv = fone;
   } else {
      tox = 2.0 / xx;
      av = fzero;
      bv = fone;
      for (ii = 1; ii <= nn - 1; ii += 1) {
         cv = tox * ii * bv - av;
         av = bv;
         bv = cv;
      }
   }
   return (cv);
}
static long lf_limi(long nn)
{
   return (nn + floor(sqrt(40.0 * nn)));
}
static double lf_bess_ucrecur2(long nn
      , double xx)
{
   double tox;
   double bzp;
   double bzc;
   double bzm;
   double sjm;
   long jj;
   long flipflop;
   long limi;
   double retvalu;
   flipflop = 0;
   sjm = 0.0;
   tox = 2.0 / fabs(xx);
   retvalu = 0.0;
   bzp = 0.0;
   bzc = 1.0;
   limi = lf_limi(nn);
   if (isodd(limi)) {
      limi -= 1;
   }
   for (jj = limi; 1 <= jj; jj -= 1) {
      bzm = jj * tox * bzc - bzp;
      bzp = bzc;
      bzc = bzm;
      if (flipflop == 0) {
         flipflop = 1;
      } else {
         sjm += bzc;
         flipflop = 0;
      }
      if (jj == nn) {
         retvalu = bzp;
      }
   }
   sjm = 2.0 * sjm - bzc;
   retvalu /= sjm;
   return (retvalu);
}
double bessIn(long nn
      , double xx)
{
   long jj;
   long limi;
   double bzc;
   double bzm;
   double bzp;
   double tox;
   double retvalu;
   double axx;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      axx = fabs(xx);
      retvalu = bessI0(axx);
   } else if (nn == 1) {
      axx = fabs(xx);
      retvalu = bessI1(axx);
   } else {
      tox = 2.0 / fabs(xx);
      retvalu = 0.0;
      bzp = 0.0;
      bzc = 1.0;
      limi = 2 * lf_limi(nn);
      for (jj = limi; 1 <= jj; jj -= 1) {
         bzm = bzp + jj * tox * bzc;
         bzp = bzc;
         bzc = bzm;
         if (jj == nn) {
            retvalu = bzp;
         }
      }
      retvalu *= bessI0(xx) / bzc;
   }
   if (xx < 0.0 && isodd(nn)) {
      retvalu = -retvalu;
   }
   return (retvalu);
}
double bessJn(long nn
      , double xx)
{
   double retvalu;
   if (nn == 0) {
      retvalu = bessJ0(xx);
   } else if (nn == 1) {
      retvalu = bessJ1(xx);
   } else if (nn < fabs(xx)) {
      retvalu = lf_bess_ucrecur(nn, xx, bessJ0(xx), bessJ1(xx));
   } else {
      retvalu = lf_bess_ucrecur2(nn, xx);
   }
   return (retvalu);
}
double bessYn(long nn
      , double xx)
{
   double retvalu;
   if (nn == 0) {
      retvalu = bessY0(xx);
   } else if (nn == 1) {
      retvalu = bessY1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx));
   }
   return (retvalu);
}
double bessKn(long nn
      , double xx)
{
   double retvalu;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      retvalu = bessK0(xx);
   } else if (nn == 1) {
      retvalu = bessK1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessK0(xx), bessK1(xx));
   }
   return (retvalu);
}
double bessYn_ps(long nn
      , double xx)
{
   double retvalu;
   double sum;
   double sum_prev;
   double term;
   double hn;
   double kk;
   double xxsqr_div_four;
   if (nn < 0 || iszero(xx)) {
      retvalu = 0.0;
   } else if (nn == 0) {
      xxsqr_div_four = xx * xx / 4.0;
      sum = (log(xx / 2.0) + EULER) * bessJn(0, xx);
      term = -1;
      hn = 0;
      kk = 1;
      for (;;) {
         hn += 1.0 / kk;
         term *= - xxsqr_div_four / (kk * kk);
         sum_prev = sum;
         sum += term * hn;
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         kk += 1;
      }
      retvalu = 2.0 * sum / PI;
   } else if (nn == 1) {
      retvalu = bessY1(xx);
   } else {
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx));
   }
   return (retvalu);
}
double bessY1__1(double xx)
{
   double numer;
   double denom;
   double zz;
   double ww;
   double yy;
   double retvalu;
   if (iszero(xx)) {
      retvalu = -DBLMAX;
   } else if (xx < 8.0) {
      yy = xx * xx;
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) *\
            yy + 7.349264551E+8) * yy - 5.153438139E+10) * yy\
            + 1.275274390E+12) * yy - 4.900604943E+12);
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy +\
            1.020426050E+5) * yy + 2.245904002E+7) * yy +\
            3.733650367E+9) * yy + 4.244419664E+11) * yy +\
            2.499580570E+13);
      retvalu = (xx * (numer / denom) + 2.0 * (bessJn(1, xx)\
            * log(xx) - 1.0 / xx) / PI);
   } else {
      zz = 8.0 / xx;
      yy = zz * zz;
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) *\
            yy - 3.516396496E-5) * yy + 1.831050000E-3) * yy\
            + 1.000000000E+0);
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) *\
            yy + 8.449199096E-6) * yy - 2.002690873E-4) * yy\
            + 4.687499995E-2);
      ww = xx - 0.75 * PI;
      retvalu = SQRTTWO / sqrt(PI * xx) * (sin(ww) * numer +\
            zz * cos(ww) * denom);
   }
   return (retvalu);
}
static double lf_bess_lcrecur(long nn
      , double xx
      , double fzero
      , double fone)
{
   double av;
   double bv;
   double cv;
   long ii;
   if (nn <= 0) {
      cv = fzero;
   } else if (nn == 1) {
      cv = fone;
   } else {
      av = fzero;
      bv = fone;
      for (ii = 1; ii <= nn - 1; ii += 1) {
         cv = (2.0 * ii + 1.0) * bv / xx - av;
         av = bv;
         bv = cv;
      }
   }
   return (cv);
}
double bess_jn(long nn
      , double xx)
{
   double retvalu;
   double jk_a;
   double jk_b;
   if (iszero(xx)) {
      if (nn == 0) {
         retvalu = 1.0;
      } else {
         retvalu = 0.0;
      }
   } else {
      jk_a = sin(xx) / xx;
      jk_b = (sin(xx) - xx * cos(xx)) / (xx * xx);
      if (nn <= 0) {
         retvalu = jk_a;
      } else if (nn <= 1) {
         retvalu = jk_b;
      } else {
         retvalu = lf_bess_lcrecur(nn, xx, jk_a, jk_b);
      }
   }
   return (retvalu);
}
double bess_yn(long nn
      , double xx)
{
   double retvalu;
   double yk_a;
   double yk_b;
   if (iszero(xx)) {
      if (nn == 0) {
         retvalu = 1.0;
      } else {
         retvalu = 0.0;
      }
   } else {
      yk_a = -cos(xx) / xx;
      yk_b = (-cos(xx) - xx * sin(xx)) / (xx * xx);
      if (nn <= 0) {
         retvalu = yk_a;
      } else if (nn <= 1) {
         retvalu = yk_b;
      } else {
         retvalu = lf_bess_lcrecur(nn, xx, yk_a, yk_b);
      }
   }
   return (retvalu);
}
static double *lv_partitionr_arr = NULL;
static long lv_partitionr_end = 0;
double partition(long nn)
{
   // local-use C lv_partitionr_arr;
   // local-use C lv_partitionr_end;
   double retvalu;
   long jj;
   long mm;
   long kk;
   double sum;
   double ssign;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_partitionr_end <= 0) {
         lv_partitionr_end = 6;
         lv_partitionr_arr = realloc(lv_partitionr_arr
            , (lv_partitionr_end) *\
                  sizeof(lv_partitionr_arr[0]));
         lv_partitionr_arr[0] = 1;
         lv_partitionr_arr[1] = 1;
         lv_partitionr_arr[2] = 2;
         lv_partitionr_arr[3] = 3;
         lv_partitionr_arr[4] = 5;
         lv_partitionr_arr[5] = 7;
      }
      if (lv_partitionr_end <= nn) {
         mm = lv_partitionr_end;
         lv_partitionr_end = nn + 1;
         lv_partitionr_arr = realloc(lv_partitionr_arr
            , (lv_partitionr_end) *\
                  sizeof(lv_partitionr_arr[0]));
         while (mm < lv_partitionr_end) {
            sum = 0;
            ssign = 1;
            kk = 1;
            jj = mm - 1;
            while (0 <= jj) {
               sum += ssign * lv_partitionr_arr[jj];
               jj -= kk;
               if (jj < 0) {
                  break;
               }
               sum += ssign * lv_partitionr_arr[jj];
               ssign = -ssign;
               kk += 1;
               jj -= (2 * kk - 1);
            }
            lv_partitionr_arr[mm] = sum;
            mm += 1;
         }
      }
      retvalu = lv_partitionr_arr[nn];
   }
   return (retvalu);
}
static double *lv_partitionq_arr = NULL;
static long lv_partitionq_end = 0;
double partitionq(long nn)
{
   // local-use C lv_partitionq_arr;
   // local-use C lv_partitionq_end;
   double retvalu;
   long jj;
   long mm;
   long kk;
   double sum;
   double ssign;
   long ee;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_partitionq_end <= 0) {
         lv_partitionq_end = 6;
         lv_partitionq_arr = realloc(lv_partitionq_arr
            , (lv_partitionq_end) *\
                  sizeof(lv_partitionq_arr[0]));
         lv_partitionq_arr[0] = 1;
         lv_partitionq_arr[1] = 1;
         lv_partitionq_arr[2] = 1;
         lv_partitionq_arr[3] = 2;
         lv_partitionq_arr[4] = 2;
         lv_partitionq_arr[5] = 3;
      }
      if (lv_partitionq_end <= nn) {
         mm = lv_partitionq_end;
         lv_partitionq_end = nn + 1;
         lv_partitionq_arr = realloc(lv_partitionq_arr
            , (lv_partitionq_end) *\
                  sizeof(lv_partitionq_arr[0]));
         while (mm < lv_partitionq_end) {
            sum = 0;
            ssign = 1;
            kk = 1;
            jj = mm - 1;
            while (0 <= jj) {
               sum += ssign * lv_partitionq_arr[jj];
               jj -= kk;
               if (jj < 0) {
                  break;
               }
               sum += ssign * lv_partitionq_arr[jj];
               ssign = -ssign;
               kk += 1;
               jj -= (2 * kk - 1);
            }
            ee = round(sqrt(1.0 + 12.0 * mm) / 6.0);
            if (mm == (3 * ee * ee - ee) || mm == (3 * ee *\
                  ee + ee)) {
               if (isodd(ee)) {
                  sum -= 1;
               } else {
                  sum += 1;
               }
            }
            lv_partitionq_arr[mm] = sum;
            mm += 1;
         }
      }
      retvalu = lv_partitionq_arr[nn];
   }
   return (retvalu);
}
long bitwisenot(long xx)
{
   long retvalu;
   retvalu = ~xx;
   return (retvalu);
}
long bitwiseand(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx & yy);
   return (retvalu);
}
long bitwiseor(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx | yy);
   return (retvalu);
}
long bitwisexor(long xx
      , long yy)
{
   long retvalu;
   retvalu = (xx ^ yy);
   return (retvalu);
}
long bitshiftl(long hexnumber
      , long shift_count)
{
   long retvalu;
   if (shift_count < 0) {
      retvalu = (hexnumber >> (- shift_count));
   } else if (0 < shift_count) {
      retvalu = (hexnumber << shift_count);
   } else {
      retvalu = hexnumber;
   }
   return (retvalu);
}
long bitshiftr(long hexnumber
      , long shift_count)
{
   long retvalu;
   if (shift_count < 0) {
      retvalu = (hexnumber << (- shift_count));
   } else if (0 < shift_count) {
      retvalu = (hexnumber >> shift_count);
   } else {
      retvalu = hexnumber;
   }
   return (retvalu);
}
long bits_count(long hexnumber)
{
   long bit_counter;
   long bitmask;
   bitmask = 1;
   bit_counter = 0;
   while (bitmask <= hexnumber) {
      if (bitwiseand(bitmask, hexnumber) != 0) {
         bit_counter += 1;
      }
      bitmask = (bitmask << 1);
   }
   return (bit_counter);
}
long bits_ls1b(long orig)
{
   long divisor;
   long retvalu;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = 1;
      while (0 == (divisor & orig)) {
         divisor *= 2;
      }
      retvalu = divisor;
   }
   return (retvalu);
}
long bits_ms1b(long orig)
{
   long divisor;
   long retvalu;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = -2;
      while (0 != (divisor & orig)) {
         divisor *= 2;
      }
      retvalu = -divisor / 2;
   }
   return (retvalu);
}
long bits_ls1bpos(long orig)
{
   long divisor;
   long retvalu;
   long bit_count;
   if (orig == 0) {
      retvalu = -1;
   } else {
      divisor = 1;
      bit_count = 0;
      while (0 == (divisor & orig)) {
         divisor *= 2;
         bit_count += 1;
      }
      retvalu = bit_count;
   }
   return (retvalu);
}
long bits_ms1bpos(long orig)
{
   long divisor;
   long retvalu;
   long bit_count;
   if (orig == 0) {
      retvalu = 0;
   } else {
      divisor = -2;
      bit_count = 0;
      while (0 != (divisor & orig)) {
         divisor *= 2;
         bit_count += 1;
      }
      retvalu = bit_count;
   }
   return (retvalu);
}
long bits_assign(long orig
      , long value_to_set
      , long which_mask)
{
   long divisor;
   long retvalu;
   long tempo;
   long tempv;
   if (which_mask == 0) {
      retvalu = orig;
   } else {
      divisor = bits_ls1bpos(which_mask);
      tempo = (orig & (~which_mask));
      tempv = (value_to_set << divisor);
      retvalu = (tempo | (tempv & which_mask));
   }
   return (retvalu);
}
long bits_get(long vall
      , long mask)
{
   return ((vall & mask) / bits_ls1b(mask));
}
long bits_set(long vall
      , long mask)
{
   return (((vall * bits_ls1b(mask)) & mask));
}
static double lf_calerf(double xx
      , long jint)
{
   double result;
   double retvalu;
   double absx;
   double numer;
   double denom;
   double rsqrpi;
   double rxsq;
   double xsq;
   long flag;
   absx = fabs(xx);
   xsq = xx * xx;
   flag = 0;
   if (absx <= 0.46875) {
      numer = (((((1.85777706184603153E-1) * xsq +\
            3.16112374387056560E+0) * xsq +\
            1.13864154151050156E+2) * xsq +\
            3.77485237685302021E+2) * xsq +\
            3.20937758913846947E+3);
      denom = (((((1.00000000000000000E+0) * xsq +\
            2.36012909523441209E+1) * xsq +\
            2.44024637934444173E+2) * xsq +\
            1.28261652607737228E+3) * xsq +\
            2.84423683343917062E+3);
      retvalu = xx * numer / denom;
      if (jint == 1) {
         retvalu = 1.0 - retvalu;
      } else if (jint == 2) {
         retvalu = exp(xsq) * (1.0 - retvalu);
      }
      flag = 1;
   } else if (absx <= 4.0) {
      numer = (((((((((2.15311535474403846E-8) * absx +\
            5.64188496988670089E-1) * absx +\
            8.88314979438837594E+0) * absx +\
            6.61191906371416295E+1) * absx +\
            2.98635138197400131E+2) * absx +\
            8.81952221241769090E+2) * absx +\
            1.71204761263407058E+3) * absx +\
            2.05107837782607147E+3) * absx +\
            1.23033935479799725E+3);
      denom = (((((((((1.00000000000000000E+0) * absx +\
            1.57449261107098347E+1) * absx +\
            1.17693950891312499E+2) * absx +\
            5.37181101862009858E+2) * absx +\
            1.62138957456669019E+3) * absx +\
            3.29079923573345963E+3) * absx +\
            4.36261909014324716E+3) * absx +\
            3.43936767414372164E+3) * absx +\
            1.23033935480374942E+3);
      result = numer / denom;
   } else {
      rsqrpi = sqrt(1.0 / PI);
      if (jint != 2 && sqrt(log(DBLMAX)) <= absx) {
         result = 0.0;
      } else if (jint == 2 && 6.71E+7 <= absx) {
         if (DBLMAX / 8.0 <= absx) {
            result = 0.0;
         } else {
            result = rsqrpi / absx;
         }
      } else {
         rxsq = 1.0 / (absx * absx);
         numer = ((((((-1.63153871373020978E+2) * rxsq -\
               3.05326634961232344E+3) * rxsq -\
               3.60344899949804439E+3) * rxsq -\
               1.25781726111229246E+3) * rxsq -\
               1.60837851487422766E+2) * rxsq -\
               6.58749161529837803E+0);
         denom = ((((((1.00000000000000000E+4) * rxsq +\
               2.56852019228982242E+4) * rxsq +\
               1.87295284992346047E+4) * rxsq +\
               5.27905102951428412E+3) * rxsq +\
               6.05183413124413191E+2) * rxsq +\
               2.33520497626869185E+1);
         result = (rsqrpi + rxsq * numer / denom) / absx;
      }
   }
   if (flag == 0) {
      if (jint == 2) {
         if (xx < - sqrt(log(DBLMAX))) {
            retvalu = DBLMAX;
         } else if (xx < 0.0) {
            retvalu = 2.0 * exp(xsq) - result;
         } else {
            retvalu = result;
         }
      } else {
         result *= exp(-xsq);
         if (jint == 0) {
            if (0.0 <= xx) {
               retvalu = (0.5 - result) + 0.5;
            } else {
               retvalu = -((0.5 - result) + 0.5);
            }
         } else if (jint == 1) {
            if (xx < 0.0) {
               retvalu = 2.0 - result;
            } else {
               retvalu = result;
            }
         } else {
            retvalu = 0.0;
         }
      }
   }
   return (retvalu);
}
double erf(double xx)
{
   return (lf_calerf(xx, 0));
}
double erfc(double xx)
{
   return (lf_calerf(xx, 1));
}
double erfcx(double xx)
{
   return (lf_calerf(xx, 2));
}
double erfcinv(double yy_orig)
{
   double retvalu;
   double xx;
   double yy;
   double xx_pr;
   double dx;
   double cc;
   double uu;
   long ii;
   if (yy_orig <= 0.0) {
      retvalu = DBLMAX / 2.0;
   } else if (2.0 <= yy_orig) {
      retvalu = -(DBLMAX / 2.0);
   } else if (iszero(yy_orig - 1.0)) {
      retvalu = 0.0;
   } else {
      if (1.0 < yy_orig) {
         yy = 2.0 - yy_orig;
      } else {
         yy = yy_orig;
      }
      dx = 1.0;
      xx = 0.0;
      cc = -sqrt(TAU / 8.0);
      ii = 0;
      for (;;) {
         uu = cc * (erfcx(xx) - yy * exp(xx * xx));
         dx = -uu / (1.0 + uu * xx);
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      if (1.0 < yy_orig) {
         retvalu = -xx;
      } else {
         retvalu = xx;
      }
   }
   return (retvalu);
}
double erfcxinv(double yy)
{
   double xx;
   double xx_pr;
   double dx;
   double cc;
   double ex;
   double df;
   double uu;
   long ii;
   xx = 0.0;
   if (! iszero(yy - 1.0)) {
      dx = 1.0;
      cc = sqrt(8.0 / TAU);
      ii = 0;
      for (;;) {
         ex = erfcx(xx);
         df = 2.0 * xx * ex - cc;
         uu = (ex - yy) / df;
         dx = -uu / (1.0 - uu * (xx + ex / df));
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
   }
   return (xx);
}
double erfinv(double yy)
{
   double retvalu;
   double xx;
   double xx_pr;
   double dx;
   double cc;
   double uu;
   long ii;
   if (iszero(yy)) {
      retvalu = 0.0;
   } else if (0.5 < yy) {
      retvalu = erfcinv(1.0 - yy);
   } else if (yy < - 0.5) {
      retvalu = -erfcinv(1.0 + yy);
   } else {
      dx = 1.0;
      xx = 0.0;
      cc = sqrt(TAU / 8.0);
      ii = 0;
      for (;;) {
         uu = cc * (erf(xx) - yy) * exp(xx * xx);
         dx = -uu / (1.0 + uu * xx);
         xx_pr = xx;
         xx += dx;
         if (iseq(xx_pr, xx)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xx;
   }
   return (retvalu);
}
double erf__1(double xx)
{
   double tt;
   double ans;
   double ply;
   tt = (1.0 / (1.0 + (0.5 * fabs(xx))));
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt\
         + 1.48851587E+0) * tt - 1.13520398E+0) * tt +\
         2.78868070E-1) * tt - 1.86288060E-1) * tt +\
         9.67841800E-2) * tt + 3.74091960E-1) * tt +\
         1.00002368E+0) * tt - 1.26551223E+0);
   ans = 1.0 - tt * exp((-xx * xx) + ply);
   if (xx < 0.0) {
      ans = -ans;
   }
   return (ans);
}
double erf__2(double xx)
{
   double tt;
   double ans;
   double ply;
   tt = 1.0 / (1.0 + 0.3275911 * fabs(xx));
   ply = ((((((1.061405429E+0) * tt - 1.453152027E+0) * tt +\
         1.421413741E+0) * tt - 2.844967360E-1) * tt +\
         2.548295920E-1) * tt + 0.000000000E+0);
   ans = 1.0 - exp(-xx * xx) * ply;
   if (xx < 0.0) {
      ans = -ans;
   }
   return (ans);
}
double erf__3(double xx)
{
   double axx;
   double xxsq;
   double sum_curr;
   double factx;
   long nn;
   double add_arr[200];
   long kk;
   axx = fabs(xx);
   xxsq = xx * xx;
   if (axx < 4.4) {
      factx = 1;
      add_arr[0] = 1;
      nn = 1;
      for (;;) {
         factx *= - xxsq / nn;
         add_arr[nn] = factx / (2.0 * nn + 1.0);
         if (fabs(add_arr[nn]) < DBLEPS / 16) {
            break; // KQS
         }
         nn += 1;
      }
      sum_curr = 0;
      for (kk = nn; 0 <= kk; kk -= 1) {
         sum_curr += add_arr[kk];
      }
      sum_curr *= (2.0 * xx / sqrt(PI));
   } else {
      factx = -exp(-xxsq) / sqrt(PI);
      sum_curr = 0.0;
      kk = round(xxsq);
      for (nn = 1; nn <= kk - 1; nn += 1) {
         factx *= - (2.0 * nn - 1.0) / (2.0 * xxsq);
         sum_curr += factx;
      }
      sum_curr += 1.0 - exp(-xxsq) / sqrt(PI) / axx;
      if (xx < 0) {
         sum_curr = -sum_curr;
      }
   }
   return (sum_curr);
}
double erf__4(double xx)
{
   double xxsq;
   double axx;
   double sum_prev;
   double sum_curr;
   long nn;
   long kk;
   long twonnpone;
   double factx;
   double factz;
   double twoxxsq;
   double term;
   axx = fabs(xx);
   xxsq = xx * xx;
   twoxxsq = 2.0 * xxsq;
   sum_curr = 0.0;
   if (axx < 4.4) {
      factz = (2.0 * xx / sqrt(PI));
      factx = factz;
      nn = 3;
      for (;;) {
         twonnpone = 2 * nn + 1;
         factx *= xxsq * xxsq / ((nn - 1) * nn);
         term = (factx * (twonnpone * (nn - xxsq) + twoxxsq)\
               / (4.0 * nn * nn - 1.0));
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_prev, sum_curr)) {
            break; // KQS
         }
         nn += 2;
      }
      sum_curr += (1.0 - xxsq / 3.0) * factz;
   } else {
      factx = -exp(-xxsq) / (xx * sqrt(PI));
      kk = round(xxsq);
      for (nn = 1; nn <= kk - 5; nn += 2) {
         factx *= nn * (nn + 1) / (twoxxsq * twoxxsq);
         term = factx * (1.0 - (2.0 * nn + 1) / twoxxsq);
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_prev, sum_curr)) {
            break;
         }
      }
      sum_curr += 1.0 - exp(-xxsq) / sqrt(PI) / axx;
      if (xx < 0.0) {
         sum_curr = -sum_curr;
      }
   }
   return (sum_curr);
}
double lgamma__1(double xx)
{
   double aa_arr[15];
   double sum;
   long ii;
   double tt;
   double retvalu;
   double qq;
   if (xx <= 0.0 && isint(xx)) {
      retvalu = log(DBLMAX);
   } else {
      if (xx < 0) {
         qq = 1 - xx;
      } else {
         qq = xx;
      }
      aa_arr[0] = +5.7156235665862923517E+1;
      aa_arr[1] = -5.9597960355475491248E+1;
      aa_arr[2] = +1.4136097974741747174E+1;
      aa_arr[3] = -4.9191381609762019978E-1;
      aa_arr[4] = +3.3994649984811888699E-5;
      aa_arr[5] = +4.6523628927048575665E-5;
      aa_arr[6] = -9.8374475304879564677E-5;
      aa_arr[7] = +1.5808870322491248884E-4;
      aa_arr[8] = -2.1026444172410488319E-4;
      aa_arr[9] = +2.1743961811521264320E-4;
      aa_arr[10] = -1.6431810653676389022E-4;
      aa_arr[11] = +8.4418223983852743293E-5;
      aa_arr[12] = -2.6190838401581408670E-5;
      aa_arr[13] = +3.6899182659531622704E-6;
      sum = 0.99999999999999709182;
      for (ii = 0; ii <= 13; ii += 1) {
         sum += aa_arr[ii] / (qq + ii);
      }
      tt = qq + 607.0 / 128.0 - 0.5;
      qq = log(TAU) / 2.0 + (qq - 0.5) * log(tt) + log(sum) - tt;
      if (xx < 0) {
         retvalu = log(PI / fabs(sin(2.0 * TAU * xx))) - qq;
      } else {
         retvalu = qq;
      }
   }
   return (retvalu);
}
double lgammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double yy_fixed;
   double xx_init;
   yy_fixed = yy / PI + log(yy + 0.5);
   xx_init = yy_fixed + PI - 0.5;
   scvx_dx = 0.01;
   scvx_xx = xx_init;
   scvx_yy = yy - lgamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - lgamma(scvx_xx);
      scvx_dy = (scvx_yy - scvx_yp);
      if (iszero(scvx_dy)) {
         break;
      }
      scvx_dx *= - scvx_yy / scvx_dy;
   }
   return (scvx_xx);
}
static double lf_lgamma_gt_zero(double xx)
{
   double retvalu;
   double zz;
   double pp;
   double uu;
   double denom;
   double numer;
   if (xx < 13.0) {
      zz = 1.0;
      pp = 0.0;
      uu = xx;
      while (3.0 <= uu) {
         pp -= 1.0;
         uu = xx + pp;
         zz *= uu;
      }
      while (uu < 2.0) {
         zz /= uu;
         pp += 1.0;
         uu = xx + pp;
      }
      if (zz < 0.0) {
         zz = -zz;
      }
      if (iseq(uu, 2.0)) {
         retvalu = log(zz);
      } else {
         pp -= 2.0;
         xx += pp;
         numer = ((((((-1.37825152569120859100E+3) * xx -\
               3.88016315134637840924E+4) * xx -\
               3.31612992738871184744E+5) * xx -\
               1.16237097492762307383E+6) * xx -\
               1.72173700820839662146E+6) * xx -\
               8.53555664245765465627E+5);
         denom = (((((((1.00000000000000000000E+0) * xx -\
               3.51815701436523470549E+2) * xx -\
               1.70642106651881159223E+4) * xx -\
               2.20528590553854454839E+5) * xx -\
               1.13933444367982507207E+6) * xx -\
               2.53252307177582951285E+6) * xx -\
               2.01889141433532773231E+6);
         retvalu = log(zz) + xx * numer / denom;
      }
   } else {
      uu = (xx - 0.5) * log(xx) - xx + log(sqrt(TAU));
      if (1E+8 < xx) {
         retvalu = uu;
      } else {
         pp = 1.0 / (xx * xx);
         if (1000 < xx) {
            zz = (((7.9365079365079365079365E-4) * pp -\
                  2.7777777777777777777778E-3) * pp +\
                  8.3333333333333333333333E-2);
         } else {
            zz = (((((8.11614167470508450300E-4) * pp -\
                  5.95061904284301438324E-4) * pp +\
                  7.93650340457716943945E-4) * pp -\
                  2.77777777300996872050E-3) * pp +\
                  8.33333333333331927722E-2);
         }
         retvalu = uu + zz / xx;
      }
   }
   return (retvalu);
}
double lgamma(double zz)
{
   double retvalu;
   if (zz <= 0.0) {
      if (isint(zz)) {
         retvalu = log(DBLMAX);
      } else {
         retvalu = (log(PI / fabs(sin(2.0 * TAU * zz))) -\
               lf_lgamma_gt_zero(1.0 - zz));
      }
   } else {
      retvalu = lf_lgamma_gt_zero(zz);
   }
   return (retvalu);
}
static double lf_eval_cont(double xx
      , long deg
      , const double *coeff_arr_pc)
{
   double sum;
   long ii;
   sum = xx;
   for (ii = deg; 0 <= ii; ii -= 1) {
      sum = xx + coeff_arr_pc[ii] / sum;
   }
   return (sum);
}
double lgamma__2(double zz)
{
   double retvalu;
   double aa_arr[10];
   double sum;
   if (zz <= 0.0) {
      if (isint(zz)) {
         retvalu = log(DBLMAX);
      } else {
         retvalu = (log(PI / fabs(sin(2.0 * TAU * zz))) -\
               lgamma(1.0 - zz));
      }
   } else {
      aa_arr[0] = +1.0 / 12.0;
      aa_arr[1] = +1.0 / 30.0;
      aa_arr[2] = +53.0 / 210.0;
      aa_arr[3] = +195.0 / 371.0;
      aa_arr[4] = +229999.0 / 22737.0;
      aa_arr[5] = +29944523.0 / 19733142.0;
      aa_arr[6] = +109535241009.0 / 48264275462.0;
      aa_arr[7] = +29404527905795295658.0 /\
            9769214287853155785.0;
      aa_arr[8] = +455377030420113432210116914702.0 /\
            113084128923675014537885725485.0;
      sum = 0.0;
      while (zz <= 6.0) {
         sum += log(zz);
         zz += 1.0;
      }
      sum -= lf_eval_cont(zz, 8, aa_arr);
      retvalu = (log(TAU) / 2.0 + (zz - 0.5) * log(zz) - 2.0\
            * zz - sum);
   }
   return (retvalu);
}
double lpermx(double nn
      , double rr)
{
   return (lgamma(nn + 1.0) - lgamma(nn - rr + 1.0));
}
double permx(double nn
      , double rr)
{
   return (exp(lpermx(nn, rr)));
}
double lcombx(double nn
      , double rr)
{
   return (lpermx(nn, rr) - lgamma(rr + 1.0));
}
double combx(double nn
      , double rr)
{
   return (exp(lcombx(nn, rr)));
}
double birthdayx(double nn
      , double rr)
{
   return (exp(lpermx(nn, rr) - log(nn) * rr));
}
double tgamma__1(double xx)
{
   double zz;
   double rslt;
   double denom;
   double numer;
   if (isposint(1 - xx)) {
      rslt = DBLMAX;
   } else {
      zz = 1.0;
      while (3.0 <= xx) {
         xx -= 1;
         zz *= xx;
      }
      while (xx < 2.0) {
         if (fabs(xx) < 1E-9) {
            break;
         }
         zz /= xx;
         xx += 1.0;
      }
      if (iseq(xx, 0.0)) {
         rslt = DBLMAX;
      } else if (xx < 2.0) {
         rslt = zz / ((1 + EULER * xx) * xx);
      } else if (iseq(xx, 2.0)) {
         rslt = zz;
      } else {
         xx -= 2.0;
         numer = (((((((1.60119522476751861407E-04) * xx +\
               1.19135147006586384913E-03) * xx +\
               1.04213797561761569935E-02) * xx +\
               4.76367800457137231464E-02) * xx +\
               2.07448227648435975150E-01) * xx +\
               4.94214826801497100753E-01) * xx +\
               9.99999999999999996796E-01);
         denom = ((((((((-2.31581873324120129819E-05) * xx +\
               5.39605580493303397842E-04) * xx -\
               4.45641913851797240494E-03) * xx +\
               1.18139785222060435552E-02) * xx +\
               3.58236398605498653373E-02) * xx -\
               2.34591795718243348568E-01) * xx +\
               7.14304917030273074085E-02) * xx +\
               1.00000000000000000320E+00);
         rslt = zz * numer / denom;
      }
   }
   return (rslt);
}
double tgamma(double xx)
{
   double retvalu;
   double tmp;
   if (xx < 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         tmp = exp(lgamma(1.0 - xx));
         retvalu = PI / (sin(PI * xx) * tmp);
      }
   } else {
      retvalu = exp(lgamma(xx));
   }
   return (retvalu);
}
double tgammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double kk;
   double cc;
   double pp;
   double xx_init;
   kk = 1.46163214496836234126265954;
   cc = sqrt(TAU) / E - tgamma(kk);
   pp = log((yy + cc) / sqrt(TAU));
   xx_init = pp / wp(pp / E) + 0.5;
   scvx_dx = 0.01;
   scvx_xx = xx_init;
   scvx_yy = yy - tgamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - tgamma(scvx_xx);
      scvx_dy = (scvx_yy - scvx_yp);
      if (iszero(scvx_dy)) {
         break;
      }
      scvx_dx *= - scvx_yy / scvx_dy;
   }
   return (scvx_xx);
}
static double lf_gamma_shift(double xx
      , double yy)
{
   double prod;
   if (isposint(1 - yy)) {
      prod = DBLMAX;
   } else {
      prod = 1.0;
      while (yy < xx - 0.0001) {
         prod *= yy;
         yy += 1.0;
      }
      while (xx + 0.0001 < yy) {
         yy -= 1.0;
         prod /= yy;
      }
   }
   return (prod);
}
static double lf_tgamma_gt_half(double xx)
{
   long ii;
   double sum;
   double yy;
   double pp_arr[11];
   yy = xx - floor(xx) + 1.0;
   pp_arr[0] = +5.716400188274341379136E+3;
   pp_arr[1] = -1.481530426768413909044E+4;
   pp_arr[2] = +1.429149277657478554025E+4;
   pp_arr[3] = -6.348160217641458813289E+3;
   pp_arr[4] = +1.301608286058321874105E+3;
   pp_arr[5] = -1.081767053514369634679E+2;
   pp_arr[6] = +2.605696505611755827729E+0;
   pp_arr[7] = -7.423452510201416151527E-3;
   pp_arr[8] = +5.384136432509564062961E-8;
   pp_arr[9] = -4.023533141268236372067E-9;
   sum = 1.000000000000000174663;
   for (ii = 0; ii <= 9; ii += 1) {
      sum += pp_arr[ii] / (yy + ii);
   }
   return ((sqrt(TAU) * sum * exp(log(yy + 8.5) * (yy - 0.5)\
         - yy - 8.5) * lf_gamma_shift(xx, yy)));
}
double tgamma__2(double xx)
{
   long ii;
   double sum;
   double pp_arr[10];
   double yy;
   double rslt;
   if (isposint(1 - xx)) {
      rslt = DBLMAX;
   } else {
      yy = xx - floor(xx) + 2.0;
      pp_arr[0] = +7.61800917294715E+1;
      pp_arr[1] = -8.65053203294168E+1;
      pp_arr[2] = +2.40140982408309E+1;
      pp_arr[3] = -1.23173957245015E+0;
      pp_arr[4] = +1.20865097386618E-3;
      pp_arr[5] = -5.395239384953E-6;
      sum = 1.00000000019001E+0;
      for (ii = 0; ii <= 5; ii += 1) {
         sum += pp_arr[ii] / (yy + ii);
      }
      rslt = (sqrt(TAU) * sum * exp(log(yy + 4.5) * (yy -\
            0.5) - yy - 4.5) * lf_gamma_shift(xx, yy));
   }
   return (rslt);
}
double tgamma__3(double xx)
{
   double retvalu;
   if (isposint(1 - xx)) {
      retvalu = DBLMAX;
   } else if (xx < 0.5) {
      retvalu = (PI / sin(PI * xx) / lf_tgamma_gt_half(1.0 -\
            xx));
   } else {
      retvalu = lf_tgamma_gt_half(xx);
   }
   return (retvalu);
}
double tgamma__stirling(double xx)
{
   double yy;
   double ryy;
   double sc;
   double ply;
   sc = 1.0;
   while (xx < 10.0) {
      sc /= xx;
      xx += 1;
   }
   yy = xx - 1.0;
   ryy = 1.0 / yy;
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0\
         / 209018880.0) * ryy - 571.0 / 2488320.0) * ryy -\
         139.0 / 51840) * ryy + 1.0 / 288.0) * ryy + 1.0 /\
         12.0) * ryy + 1.0);
   return (sc * pow(yy / E, yy) * sqrt(TAU * yy) * ply);
}
double tgammadouble(double xx)
{
   double xxh;
   xxh = (xx - 1.0) / 2.0;
   return (pow(2.0, xxh) * pow(2.0 / PI, (1.0 - cos(TAU *\
         xxh)) / 4.0) * tgamma(xxh + 1.0));
}
static double lf_ligamma_xxleaa(double aa
      , double xx)
{
   long kk;
   double rr;
   double sum_curr;
   double sum_prev;
   sum_curr = exp(aa * log(xx) - xx) / aa;
   rr = sum_curr;
   for (kk = 1; kk <= 100; kk += 1) {
      rr *= xx / (aa + kk);
      sum_prev = sum_curr;
      sum_curr += rr;
      if (iseq(sum_prev, sum_curr)) {
         break;
      }
   }
   return (sum_curr);
}
static double lf_uigamma_aalexx(double aa
      , double xx)
{
   long jj;
   double pp;
   long ipp;
   double sum_curr;
   double tt;
   sum_curr = 0.0;
   pp = 47.0 / sqrt(xx - 0.75);
   ipp = floor(pp);
   for (jj = ipp; 1 <= jj; jj -= 1) {
      tt = xx + sum_curr;
      sum_curr = (jj - aa) * tt / (tt + jj);
   }
   return (exp(aa * log(xx) - xx) / (xx + sum_curr));
}
double ligamma(double aa
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 1.1 || xx <= aa) {
      retvalu = lf_ligamma_xxleaa(aa, xx);
   } else {
      retvalu = tgamma(aa) - lf_uigamma_aalexx(aa, xx);
   }
   return (retvalu);
}
double uigamma(double aa
      , double xx)
{
   double retvalu;
   if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 0.0) {
      retvalu = tgamma(aa);
   } else if (xx <= 1.1 || xx <= aa) {
      retvalu = tgamma(aa) - lf_ligamma_xxleaa(aa, xx);
   } else {
      retvalu = lf_uigamma_aalexx(aa, xx);
   }
   return (retvalu);
}
double rligamma(double aa
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else {
      retvalu = ligamma(aa, xx) / tgamma(aa);
   }
   return (retvalu);
}
double ruigamma(double aa
      , double xx)
{
   double retvalu;
   if (aa <= 0.0) {
      retvalu = DBLMAX;
   } else if (xx <= 0.0) {
      retvalu = 1;
   } else {
      retvalu = uigamma(aa, xx) / tgamma(aa);
   }
   return (retvalu);
}
double uigamma__1(double aa
      , double xx)
{
   double ans;
   double ax;
   double cc;
   double yc;
   double rr;
   double tt;
   double yy;
   double zz;
   double pk;
   double pkma;
   double pkmb;
   double qk;
   double qkma;
   double qkmb;
   double retvalu;
   if (xx <= 0.0 || aa <= 0.0) {
      retvalu = 1.0;
   } else {
      ax = aa * log(xx) - xx - lgamma(aa);
      if (ax < - DBLMAXLN) {
         retvalu = 0.0;
      } else {
         ax = exp(ax);
         if (xx < 1.0 || xx < aa) {
            rr = aa;
            cc = 1.0;
            ans = 1.0;
            for (;;) {
               rr += 1;
               cc *= xx / rr;
               ans += cc;
               if (cc / ans < DBLEPS) {
                  break; // KQS
               }
            }
            retvalu = 1.0 - ans * ax / aa;
         } else {
            yy = 1.0 - aa;
            zz = xx + yy + 1.0;
            cc = 0.0;
            pkmb = 1.0;
            qkmb = xx;
            pkma = xx + 1.0;
            qkma = zz * xx;
            ans = pkma / qkma;
            for (;;) {
               cc += 1.0;
               yy += 1.0;
               zz += 2.0;
               yc = yy * cc;
               pk = pkma * zz - pkmb * yc;
               qk = qkma * zz - qkmb * yc;
               if (! iszero(qk)) {
                  rr = pk / qk;
                  tt = fabs((ans - rr) / rr);
                  ans = rr;
               } else {
                  tt = 1.0;
               }
               pkmb = pkma;
               pkma = pk;
               qkmb = qkma;
               qkma = qk;
               if (1 / DBLEPS < fabs(pk)) {
                  pkmb *= DBLEPS;
                  pkma *= DBLEPS;
                  qkmb *= DBLEPS;
                  qkma *= DBLEPS;
               }
               if (tt <= DBLEPS) {
                  break; // KQS
               }
            }
            retvalu = ans * ax;
         }
      }
   }
   return (retvalu);
}
double uigammainv(double aa
      , double yy)
{
   double dd;
   double tt;
   double xx;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   dd = 1.0 / (9.0 * aa);
   tt = 1 - dd - gau_quantile(yy) * sqrt(dd);
   xx = aa * pow(tt, 3);
   scvx_dx = 0.1;
   scvx_xx = xx;
   scvx_yy = yy - uigamma(aa, scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - uigamma(aa, scvx_xx);
      scvx_dy = (scvx_yy - scvx_yp);
      if (iszero(scvx_dy)) {
         break;
      }
      scvx_dx *= - scvx_yy / scvx_dy;
   }
   return (scvx_xx);
}
double ligammainv(double aa
      , double yy)
{
   return (uigammainv(aa, 1 - yy));
}
double lbeta(double aa
      , double bb)
{
   return (lgamma(aa) + lgamma(bb) - lgamma(aa + bb));
}
double beta(double aa
      , double bb)
{
   double retvalu;
   double lbe;
   lbe = lbeta(aa, bb);
   if (DBLMAXLN < lbe) {
      retvalu = DBLMAX;
   } else if (- DBLMAXLN < lbe) {
      retvalu = exp(lbe);
   } else {
      retvalu = -DBLMAX;
   }
   return (retvalu);
}
double betainc(double aa
      , double bb
      , double xx)
{
   double sum_curr;
   double sum_prev;
   double psq;
   double compx;
   double new_xx;
   double pp;
   double qq;
   double term;
   double ai;
   double rx;
   double temp;
   double log_beta;
   double retvalu;
   long indx;
   long ns;
   if (aa <= 0.0 || bb <= 0.0 || 1.0 <= xx) {
      retvalu = 1.0;
   } else if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      psq = aa + bb;
      if (aa < psq * xx) {
         new_xx = 1.0 - xx;
         compx = xx;
         pp = bb;
         qq = aa;
         indx = 0;
      } else {
         new_xx = xx;
         compx = 1.0 - xx;
         pp = aa;
         qq = bb;
         indx = 1;
      }
      term = 1.0;
      sum_curr = 1.0;
      ai = 1.0;
      ns = floor(qq + compx * psq);
      rx = new_xx / compx;
      temp = qq - ai;
      if (ns == 0) {
         rx = new_xx;
      }
      for (;;) {
         term *= temp * rx / (pp + ai);
         ai += 1.0;
         ns -= 1;
         if (0 <= ns) {
            temp = qq - ai;
            if (ns == 0) {
               rx = new_xx;
            }
         } else {
            temp = psq;
            psq += 1.0;
         }
         sum_prev = sum_curr;
         sum_curr += term;
         if (iseq(sum_curr, sum_prev)) {
            break; // KQS
         }
      }
      log_beta = lgamma(aa) + lgamma(bb) - lgamma(aa + bb);
      retvalu = sum_curr * exp(pp * log(new_xx) + (qq - 1.0)\
            * log(compx) - log_beta) / pp;
      if (indx == 0) {
         retvalu = 1.0 - retvalu;
      }
   }
   return (retvalu);
}
double betainc__1(double aa
      , double bb
      , double xx)
{
   double retvalu;
   double lbeta_ab;
   double front;
   double ff;
   double cc;
   double dd;
   long ii;
   long jj;
   long mm;
   double numerator;
   double cd;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else if ((aa + 1.0) / (aa + bb + 2.0) < xx) {
      retvalu = (1.0 - betainc__1(bb, aa, 1.0 - xx));
   } else {
      lbeta_ab = lbeta(aa, bb);
      front = exp(log(xx) * aa + log(1.0 - xx) * bb -\
            lbeta_ab) / aa;
      ff = 1.0;
      cc = 1.0;
      dd = 0.0;
      jj = 0;
      ii = 0;
      for (;;) {
         if (ii == 0) {
            numerator = 1.0;
         } else if (jj == 0) {
            mm = ii / 2;
            numerator = (mm * (bb - mm) * xx) / ((aa + 2.0 *\
                  mm - 1.0) * (aa + 2.0 * mm));
         } else {
            mm = (ii - 1) / 2;
            numerator = -((aa + mm) * (aa + bb + mm) * xx) /\
                  ((aa + 2.0 * mm) * (aa + 2.0 * mm + 1));
         }
         dd = 1.0 + numerator * dd;
         if (fabs(dd) < DBLEPS * DBLEPS) {
            dd = DBLEPS * DBLEPS;
         }
         dd = 1.0 / dd;
         cc = 1.0 + numerator / cc;
         if (fabs(cc) < DBLEPS * DBLEPS) {
            cc = DBLEPS * DBLEPS;
         }
         cd = cc * dd;
         ff *= cd;
         jj = 1 - ii;
         if (fabs(1.0 - cd) < DBLEPS) {
            break; // KQS
         }
         ii += 1;
         if (200 <= ii) {
            break; // KQS
         }
      }
      retvalu = front * (ff - 1.0);
   }
   return (retvalu);
}
static double lf_digamma_gt_zero(double xx)
{
   double rec_xx_sqr;
   double shift;
   double sxx;
   long ii;
   double sumy;
   shift = 0.0;
   sxx = xx;
   while (sxx < 8.0) {
      shift -= 1.0 / sxx;
      sxx += 1.0;
   }
   rec_xx_sqr = 1.0 / (sxx * sxx);
   sumy = 0.0;
   for (ii = 14; 2 <= ii; ii -= 2) {
      sumy *= rec_xx_sqr;
      sumy += - bernoulli(ii) / ii;
   }
   return ((shift + log(sxx) - 1.0 / (2.0 * sxx) + rec_xx_sqr\
         * sumy));
}
double digamma(double xx)
{
   double sxx;
   double retvalu;
   if (xx <= 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         sxx = 2.0 * xx;
         retvalu = (lf_digamma_gt_zero(1.0 - xx) - PI *\
               cos(sxx) / sin(sxx));
      }
   } else {
      retvalu = lf_digamma_gt_zero(xx);
   }
   return (retvalu);
}
double digammainv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   scvx_dx = 0.1;
   scvx_xx = exp(yy);
   scvx_yy = yy - digamma(scvx_xx);
   for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
      scvx_xp = scvx_xx;
      scvx_yp = scvx_yy;
      scvx_xx += scvx_dx;
      if (iseq(scvx_xp, scvx_xx)) {
         break;
      }
      scvx_yy = yy - digamma(scvx_xx);
      scvx_dy = (scvx_yy - scvx_yp);
      if (iszero(scvx_dy)) {
         break;
      }
      scvx_dx *= - scvx_yy / scvx_dy;
   }
   return (scvx_xx);
}
static double lf_digamma_gt_zero__1(double xx)
{
   double gg;
   double aa_arr[10];
   double sxx;
   double term;
   double lnarg;
   double numer;
   double denom;
   long ii;
   gg = 9.6565781537733158945718737389;
   aa_arr[0] = +1.144005294538510956673085217E+4;
   aa_arr[1] = -3.239880201523183350535979104E+4;
   aa_arr[2] = +3.505145235055716665660834611E+4;
   aa_arr[3] = -1.816413095412607026106469185E+4;
   aa_arr[4] = +4.632329905366668184091382704E+3;
   aa_arr[5] = -5.369767777033567805557478696E+2;
   aa_arr[6] = +2.287544733951810076451548089E+1;
   aa_arr[7] = -2.179257487388651155600822204E-1;
   aa_arr[8] = +1.083148362725893688606893534E-4;
   numer = 0.0;
   denom = 1.0;
   for (ii = 8; 0 <= ii; ii -= 1) {
      sxx = xx + ii;
      term = aa_arr[ii] / sxx;
      denom += term;
      numer += term / sxx;
   }
   lnarg = (gg + xx - 0.5);
   return (log(lnarg) - (gg / lnarg) - numer / denom);
}
double digamma__1(double xx)
{
   double sxx;
   double retvalu;
   if (xx <= 0.0) {
      if (isint(xx)) {
         retvalu = DBLMAX;
      } else {
         sxx = 2.0 * xx;
         retvalu = (lf_digamma_gt_zero__1(1.0 - xx) - PI *\
               cos(sxx) / sin(sxx));
      }
   } else {
      retvalu = lf_digamma_gt_zero__1(xx);
   }
   return (retvalu);
}
double factorialinv(double yy)
{
   return (tgammainv(yy) - 1.0);
}
double facinv(double yy)
{
   return (tgammainv(yy) - 1.0);
}
double hn(double xx)
{
   double sum;
   double kk;
   double fxx;
   if (0.0 < xx) {
      fxx = floor(xx);
      sum = 0.0;
      for (kk = fxx; 1 <= kk; kk -= 1) {
         sum += 1.0 / kk;
      }
   } else {
      sum = 0.0;
   }
   return (sum);
}
double hn__1(double xx)
{
   double yy;
   double retvalu;
   if (0.0 < xx) {
      yy = 1.0 / (xx * xx);
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 /\
            (30.0 * 8.0)) * yy - 1.0 / (42.0 * 6.0)) * yy +\
            1.0 / (30.0 * 4.0)) * yy - 1.0 / (6.0 * 2.0)) *\
            yy + EULER) + log(xx) + 0.5 / xx;
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double hnm(double xx
      , double mm)
{
   double sum;
   double kk;
   double fxx;
   fxx = floor(xx);
   sum = 0.0;
   for (kk = fxx; 1 <= kk; kk -= 1) {
      sum += 1.0 / pow(kk, mm);
   }
   return (sum);
}
static double *lv_factorial_arr = NULL;
static long lv_factorial_end = 0;
double factorial(long nn)
{
   // local-use C lv_factorial_end;
   // local-use C lv_factorial_arr;
   long mm;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_factorial_end <= 0) {
         lv_factorial_end = 6;
         lv_factorial_arr = realloc(lv_factorial_arr
            , (lv_factorial_end) * sizeof(lv_factorial_arr[0]));
         lv_factorial_arr[0] = 1;
         lv_factorial_arr[1] = 1;
         lv_factorial_arr[2] = 2;
         lv_factorial_arr[3] = 6;
         lv_factorial_arr[4] = 24;
         lv_factorial_arr[5] = 120;
      }
      if (lv_factorial_end <= nn) {
         mm = lv_factorial_end;
         lv_factorial_end = nn + 1;
         lv_factorial_arr = realloc(lv_factorial_arr
            , (lv_factorial_end) * sizeof(lv_factorial_arr[0]));
         while (mm < lv_factorial_end) {
            lv_factorial_arr[mm] = (mm * lv_factorial_arr[mm\
                  - 1]);
            mm += 1;
         }
      }
      retvalu = lv_factorial_arr[nn];
   }
   return (retvalu);
}
static double *lv_factorial_b_arr = NULL;
static long lv_factorial_b_end = 0;
double factorialdouble(long nn)
{
   // local-use C lv_factorial_b_end;
   // local-use C lv_factorial_b_arr;
   double retvalu;
   long mm;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_factorial_b_end <= 0) {
         lv_factorial_b_end = 6;
         lv_factorial_b_arr = realloc(lv_factorial_b_arr
            , (lv_factorial_b_end) *\
                  sizeof(lv_factorial_b_arr[0]));
         lv_factorial_b_arr[0] = 1;
         lv_factorial_b_arr[1] = 1;
         lv_factorial_b_arr[2] = 2;
         lv_factorial_b_arr[3] = 3;
         lv_factorial_b_arr[4] = 8;
         lv_factorial_b_arr[5] = 15;
      }
      if (lv_factorial_b_end <= nn) {
         mm = lv_factorial_b_end;
         lv_factorial_b_end = nn + 1;
         lv_factorial_b_arr = realloc(lv_factorial_b_arr
            , (lv_factorial_b_end) *\
                  sizeof(lv_factorial_b_arr[0]));
         while (mm < lv_factorial_b_end) {
            lv_factorial_b_arr[mm] = mm *\
                  lv_factorial_b_arr[mm - 2];
            mm += 1;
         }
      }
      retvalu = lv_factorial_b_arr[nn];
   }
   return (retvalu);
}
double fac(long nn)
{
   return (factorial(nn));
}
double factorialt(long n_things
      , long r_each)
{
   long ii;
   double retvalu;
   retvalu = 1.0;
   for (ii = r_each + 1; ii <= n_things; ii += 1) {
      retvalu *= ii;
   }
   return (retvalu);
}
double comb(long n_things
      , long r_each)
{
   long ii;
   double retvalu;
   if (r_each < 0 || n_things < r_each) {
      retvalu = 0.0;
   } else {
      if (2 * r_each < n_things) {
         r_each = n_things - r_each;
      }
      retvalu = 1.0;
      for (ii = r_each + 1; ii <= n_things; ii += 1) {
         retvalu *= ii;
         retvalu /= (ii - r_each);
      }
   }
   return (retvalu);
}
double perm(long n_things
      , long r_each)
{
   return (factorialt(n_things, n_things - r_each));
}
double combination(long n_things
      , long r_each)
{
   return (comb(n_things, r_each));
}
double permutation(long n_things
      , long r_each)
{
   return (perm(n_things, r_each));
}
static double *lv_catalan_arr = NULL;
static long lv_catalan_end = 0;
double catalan(long nn)
{
   // local-use C lv_catalan_end;
   // local-use C lv_catalan_arr;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_catalan_end <= 0) {
         lv_catalan_end = 1;
         lv_catalan_arr = realloc(lv_catalan_arr
            , (lv_catalan_end) * sizeof(lv_catalan_arr[0]));
         lv_catalan_arr[0] = 1;
      }
      if (lv_catalan_end <= nn) {
         kk = lv_catalan_end;
         lv_catalan_end = nn + 1;
         lv_catalan_arr = realloc(lv_catalan_arr
            , (lv_catalan_end) * sizeof(lv_catalan_arr[0]));
         while (kk < lv_catalan_end) {
            lv_catalan_arr[kk] = (2 * (2.0 * kk - 1) *\
                  lv_catalan_arr[kk - 1] / (kk + 1.0));
            kk += 1;
         }
      }
      retvalu = lv_catalan_arr[nn];
   }
   return (retvalu);
}
static double *lv_supercatalan_arr = NULL;
static long lv_supercatalan_end = 0;
double supercatalan(long nn)
{
   // local-use C lv_supercatalan_end;
   // local-use C lv_supercatalan_arr;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_supercatalan_end <= 0) {
         lv_supercatalan_end = 3;
         lv_supercatalan_arr = realloc(lv_supercatalan_arr
            , (lv_supercatalan_end) *\
                  sizeof(lv_supercatalan_arr[0]));
         lv_supercatalan_arr[0] = 1;
         lv_supercatalan_arr[1] = 1;
         lv_supercatalan_arr[2] = 1;
      }
      if (lv_supercatalan_end <= nn) {
         kk = lv_supercatalan_end;
         lv_supercatalan_end = nn + 1;
         lv_supercatalan_arr = realloc(lv_supercatalan_arr
            , (lv_supercatalan_end) *\
                  sizeof(lv_supercatalan_arr[0]));
         while (kk < lv_supercatalan_end) {
            lv_supercatalan_arr[kk] = (((6 * kk - 9) *\
                  lv_supercatalan_arr[kk - 1] - (kk - 3) *\
                  lv_supercatalan_arr[kk - 2]) / kk);
            kk += 1;
         }
      }
      retvalu = lv_supercatalan_arr[nn];
   }
   return (retvalu);
}
static double *lv_bell_arr = NULL;
static double *lv_bell_x_arr = NULL;
static long lv_bell_end = 0;
double bell(long nn)
{
   // local-use C lv_bell_end;
   // local-use C lv_bell_arr;
   // local-use C lv_bell_x_arr;
   long jj;
   long kk;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else {
      if (lv_bell_end <= 0) {
         lv_bell_end = 3;
         lv_bell_arr = realloc(lv_bell_arr
            , (lv_bell_end) * sizeof(lv_bell_arr[0]));
         lv_bell_x_arr = realloc(lv_bell_x_arr
            , (lv_bell_end - 1) * sizeof(lv_bell_x_arr[0]));
         lv_bell_arr[0] = 1;
         lv_bell_arr[1] = 1;
         lv_bell_arr[2] = 2;
         lv_bell_x_arr[0] = 2;
         lv_bell_x_arr[1] = 1;
      }
      if (lv_bell_end <= nn) {
         kk = lv_bell_end;
         lv_bell_end = nn + 1;
         lv_bell_arr = realloc(lv_bell_arr
            , (lv_bell_end) * sizeof(lv_bell_arr[0]));
         lv_bell_x_arr = realloc(lv_bell_x_arr
            , (lv_bell_end - 1) * sizeof(lv_bell_x_arr[0]));
         while (kk < lv_bell_end) {
            lv_bell_x_arr[kk - 1] = lv_bell_x_arr[0];
            for (jj = kk - 2; 0 <= jj; jj -= 1) {
               lv_bell_x_arr[jj] += lv_bell_x_arr[jj + 1];
            }
            lv_bell_arr[kk] = lv_bell_x_arr[0];
            kk += 1;
         }
      }
      retvalu = lv_bell_arr[nn];
   }
   return (retvalu);
}
double bellx(double xxn)
{
   double sum;
   long kk;
   double sum_prev;
   double den;
   kk = 0;
   sum = 0.0;
   den = 1.0;
   for (;;) {
      kk += 1;
      den *= kk;
      sum_prev = sum;
      sum += pow(kk, xxn) / den;
      if (iseq(sum_prev, sum)) {
         break; // KQS
      }
   }
   return (sum / E);
}
double fubini(long nn)
{
   long mm;
   double sum;
   double retvalu;
   if (nn < 0) {
      retvalu = 0;
   } else if (nn == 0) {
      retvalu = 1;
   } else {
      sum = 1.0 / (2.0 * LNTWO * LNTWO);
      for (mm = 2; mm <= nn; mm += 1) {
         sum *= mm / LNTWO;
      }
      retvalu = round(sum);
   }
   return (retvalu);
}
long d2lt_d1(long xx
      , long yy)
{
   long retvalu;
   if (0 <= yy && yy <= xx) {
      retvalu = yy + (xx * (xx + 1)) / 2;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
long d1lt_d2(long nn
      , long *ret_arr_p)
{
   long basee;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      basee = floorl((sqrt(1 + 8.0 * nn) - 1) / 2);
      ret_arr_p[1] = nn - basee * (basee + 1) / 2;
      ret_arr_p[0] = basee;
   }
   return (ret_arr_p[0]);
}
long d2ur_d1(long xx
      , long yy)
{
   long retvalu;
   long suma;
   if (0 <= xx && 0 <= yy) {
      suma = (yy + xx);
      retvalu = suma * (suma + 1) / 2 + yy;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
long d1ur_d2(long nn
      , long *ret_arr_p)
{
   long basee;
   long y_coord;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      basee = floorl((sqrt(1 + 8.0 * nn) - 1) / 2);
      y_coord = nn - basee * (basee + 1) / 2;
      ret_arr_p[1] = y_coord;
      ret_arr_p[0] = basee - y_coord;
   }
   return (ret_arr_p[0]);
}
long d2diamond_d1(long xx
      , long yy)
{
   long ss;
   long tt;
   long retvalu;
   if (0 == yy && xx == 0) {
      retvalu = 0;
   } else {
      ss = labs(xx) + labs(yy);
      tt = 2 * ss * (ss - 1) + 1;
      if (0 < xx) {
         retvalu = tt + ss + yy - 1;
      } else {
         retvalu = tt + 3 * ss - yy - 1;
      }
   }
   return (retvalu);
}
long d1diamond_d2(long nn
      , long *ret_arr_p)
{
   long ss;
   long ssq;
   long x_coord;
   if (nn <= 0) {
      x_coord = 0;
      ret_arr_p[1] = 0;
   } else {
      ss = floorl(sqrt(nn) / SQRTTWO);
      ssq = 2 * ss * ss;
      if (nn <= ssq + 2 * ss) {
         ret_arr_p[1] = ssq - nn + ss;
         x_coord = ssq - nn;
         if (ss < - x_coord) {
            x_coord = -x_coord - 2 * ss;
         }
      } else {
         ret_arr_p[1] = nn - ssq - 3 * ss - 1;
         x_coord = nn - ssq - 2 * ss;
         if (ss < x_coord) {
            x_coord = -x_coord + 2 * ss + 2;
         }
      }
   }
   ret_arr_p[0] = x_coord;
   return (x_coord);
}
long d2spiral_d1(long xx
      , long yy)
{
   long retvalu;
   if (xx == 0 && yy == 0) {
      retvalu = 0;
   } else if (labs(xx) <= labs(yy)) {
      retvalu = (4 * yy - 1) * yy - xx;
      if (yy < 0) {
         retvalu -= 2 * (yy - xx);
      }
   } else {
      retvalu = (4 * xx - 1) * xx - yy;
      if (0 < xx) {
         retvalu -= 2 * (xx - yy);
      }
   }
   return (retvalu);
}
long d1spiral_d2(long nn
      , long *ret_arr_p)
{
   long sqrtnn;
   long newdd;
   long fxd;
   if (nn <= 0) {
      ret_arr_p[0] = 0;
      ret_arr_p[1] = 0;
   } else {
      sqrtnn = floorl(sqrt(nn));
      if (iseven(sqrtnn)) {
         fxd = -sqrtnn / 2;
      } else {
         fxd = (sqrtnn + 1) / 2;
      }
      newdd = nn - sqrtnn * sqrtnn;
      if (newdd <= sqrtnn) {
         ret_arr_p[0] = fxd;
         if (fxd < 0) {
            ret_arr_p[1] = -fxd - newdd;
         } else {
            ret_arr_p[1] = -fxd + newdd + 1;
         }
      } else {
         ret_arr_p[1] = fxd;
         newdd -= sqrtnn;
         if (fxd < 0) {
            ret_arr_p[0] = fxd + newdd;
         } else {
            ret_arr_p[0] = fxd - newdd;
         }
      }
   }
   return (ret_arr_p[0]);
}
long d2hypot_d1(long xx
      , long yy)
{
   long retvalu;
   long xlim;
   double dist;
   long distsq;
   long count;
   long ixx;
   long nyy;
   long nyysq;
   long xmax;
   if (0 <= yy && yy <= xx) {
      distsq = xx * xx + yy * yy;
      dist = sqrt(distsq);
      xlim = floorl(dist / SQRTTWO);
      xmax = floorl(dist);
      count = 0;
      for (ixx = xlim; ixx <= xmax; ixx += 1) {
         nyysq = distsq - ixx * ixx;
         nyy = ceill(sqrt(nyysq));
         if (ixx < nyy) {
            count += ixx + 1;
         } else {
            count += nyy;
            if (ixx < xx && nyy * nyy == nyysq) {
               count += 1;
            }
         }
      }
      retvalu = count + xlim * (xlim + 1) / 2;
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
double binomialx(double xnn
      , double xkk)
{
   return (tgamma(xnn + 1) / (tgamma(xkk + 1) * tgamma(xnn +\
         1 - xkk)));
}
static double *lv_binom_arr = NULL;
static long lv_binom_end = 0;
static long lv_binom_max = 0;
long binomial(long nn
      , long kk)
{
   // local-use C lv_binom_arr;
   // local-use C lv_binom_end;
   // local-use C lv_binom_max;
   long rz_ind;
   long lz_ind;
   long rr;
   long ul_ind;
   long retvalu;
   if (nn < kk || nn < 0 || kk < 0) {
      retvalu = 0;
   } else {
      if (lv_binom_end <= 0) {
         lv_binom_max = 2;
         lv_binom_end = d2lt_d1(lv_binom_max, 0);
         lv_binom_arr = realloc(lv_binom_arr
            , (lv_binom_end) * sizeof(lv_binom_arr[0]));
         lv_binom_arr[0] = 1;
         lv_binom_arr[1] = 1;
         lv_binom_arr[2] = 1;
      }
      rr = lv_binom_max;
      if (rr < nn + 1) {
         lv_binom_end = d2lt_d1(nn + 1, 0);
         lv_binom_arr = realloc(lv_binom_arr
            , (lv_binom_end) * sizeof(lv_binom_arr[0]));
         while (rr <= nn) {
            ul_ind = d2lt_d1(rr - 1, 0);
            lz_ind = ul_ind + rr;
            lv_binom_arr[lz_ind] = 1;
            rz_ind = lz_ind + rr;
            while (lz_ind < rz_ind) {
               lv_binom_arr[rz_ind] = lv_binom_arr[lz_ind];
               rz_ind -= 1;
               lz_ind += 1;
               lv_binom_arr[lz_ind] = (lv_binom_arr[ul_ind] +\
                     lv_binom_arr[ul_ind + 1]);
               ul_ind += 1;
            }
            rr += 1;
         }
         lv_binom_max = rr;
      }
      retvalu = lv_binom_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_euler_arr = NULL;
static long lv_euler_end = 0;
static long lv_euler_max = 0;
double eulerian(long nn
      , long mm)
{
   // local-use C lv_euler_arr;
   // local-use C lv_euler_end;
   // local-use C lv_euler_max;
   long cr;
   long rr;
   long lz_ind;
   long rz_ind;
   long ul_ind;
   double retvalu;
   if (nn < mm || nn < 0 || mm < 0) {
      retvalu = 0;
   } else {
      if (lv_euler_end <= 0) {
         lv_euler_max = 3;
         lv_euler_end = d2lt_d1(lv_euler_max, 0);
         lv_euler_arr = realloc(lv_euler_arr
            , (lv_euler_end) * sizeof(lv_euler_arr[0]));
         lv_euler_arr[0] = 0;
         lv_euler_arr[1] = 1;
         lv_euler_arr[2] = 0;
         lv_euler_arr[3] = 1;
         lv_euler_arr[4] = 1;
         lv_euler_arr[5] = 0;
      }
      rr = lv_euler_max;
      if (rr < nn + 1) {
         lv_euler_end = d2lt_d1(nn + 1, 0);
         lv_euler_arr = realloc(lv_euler_arr
            , (lv_euler_end) * sizeof(lv_euler_arr[0]));
         while (rr <= nn) {
            lz_ind = d2lt_d1(rr, 0);
            lv_euler_arr[lz_ind] = 1;
            lv_euler_arr[lz_ind + rr] = 0;
            rz_ind = lz_ind + rr - 1;
            ul_ind = d2lt_d1(rr - 1, 0);
            cr = 1;
            while (lz_ind < rz_ind) {
               lv_euler_arr[rz_ind] = lv_euler_arr[lz_ind];
               lz_ind += 1;
               lv_euler_arr[lz_ind] = ((rr - cr) *\
                     lv_euler_arr[ul_ind] + (cr + 1) *\
                     lv_euler_arr[ul_ind + 1]);
               ul_ind += 1;
               rz_ind -= 1;
               cr += 1;
            }
            rr += 1;
            lv_euler_max = rr;
         }
      }
      retvalu = lv_euler_arr[d2lt_d1(nn, mm)];
   }
   return (retvalu);
}
static double *lv_entringer_arr = NULL;
static long lv_entringer_end = 0;
static long lv_entringer_max = 0;
double entringer(long nn
      , long kk)
{
   // local-use C lv_entringer_arr;
   // local-use C lv_entringer_max;
   // local-use C lv_entringer_end;
   long cz;
   long inda;
   long rr;
   double retvalu;
   if (nn <= 0 || kk < 0 || nn < kk) {
      retvalu = 0;
   } else {
      if (lv_entringer_end <= 0) {
         lv_entringer_max = 1;
         lv_entringer_end = d2lt_d1(lv_entringer_max, 0);
         lv_entringer_arr = realloc(lv_entringer_arr
            , (lv_entringer_end) * sizeof(lv_entringer_arr[0]));
         lv_entringer_arr[0] = 1;
      }
      rr = lv_entringer_max;
      if (rr < nn + 1) {
         lv_entringer_end = d2lt_d1(nn + 1, 0);
         lv_entringer_arr = realloc(lv_entringer_arr
            , (lv_entringer_end) * sizeof(lv_entringer_arr[0]));
         while (rr <= nn) {
            inda = d2lt_d1(rr, 0);
            lv_entringer_arr[inda] = 0;
            for (cz = 1; cz <= rr; cz += 1) {
               lv_entringer_arr[inda + cz] =\
                     lv_entringer_arr[inda + cz - 1] +\
                     lv_entringer_arr[inda - cz];
            }
            rr += 1;
            lv_entringer_max = rr;
         }
      }
      retvalu = lv_entringer_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
double zigzag(long nn)
{
   return (entringer(nn, nn));
}
double zig(long nn)
{
   return (zigzag(2 * nn));
}
double zag(long nn)
{
   return (zigzag(2 * nn - 1));
}
double eulerx(long nn)
{
   double retvalu;
   if (nn <= 0 || isodd(nn)) {
      retvalu = 0;
   } else {
      retvalu = entringer(nn, nn);
   }
   return (retvalu);
}
double ballot(double xmm
      , double xnn)
{
   return (fabs(xnn - xmm) / (xmm + xnn));
}
double ballots(double xmm
      , double xnn)
{
   double retvalu;
   if (xmm < xnn) {
      retvalu = (xnn - xmm + 1.0) / (xnn + 1.0);
   } else {
      retvalu = (xmm - xnn + 1.0) / (xmm + 1.0);
   }
   return (retvalu);
}
static double *lv_stir_a_arr = NULL;
static long lv_stir_a_end = 0;
static long lv_stir_a_max = 0;
double stirling1(long nn
      , long kk)
{
   // local-use C lv_stir_a_arr;
   // local-use C lv_stir_a_end;
   // local-use C lv_stir_a_max;
   long col_k;
   long ul_ind;
   long cz_ind;
   long rr;
   double retvalu;
   if (nn < 0 || kk < 0 || nn < kk) {
      retvalu = 0;
   } else {
      if (lv_stir_a_max <= 0) {
         lv_stir_a_max = 2;
         lv_stir_a_end = d2lt_d1(lv_stir_a_max, 0);
         lv_stir_a_arr = realloc(lv_stir_a_arr
            , (lv_stir_a_end) * sizeof(lv_stir_a_arr[0]));
         lv_stir_a_arr[0] = 1;
         lv_stir_a_arr[1] = 0;
         lv_stir_a_arr[2] = 1;
      }
      rr = lv_stir_a_max;
      if (rr < nn + 1) {
         lv_stir_a_end = d2lt_d1(nn + 1, 0);
         lv_stir_a_arr = realloc(lv_stir_a_arr
            , (lv_stir_a_end) * sizeof(lv_stir_a_arr[0]));
         while (rr <= nn) {
            cz_ind = d2lt_d1(rr, 0);
            lv_stir_a_arr[cz_ind] = 0;
            cz_ind += 1;
            ul_ind = d2lt_d1(rr - 1, 0);
            for (col_k = 1; col_k <= rr - 1; col_k += 1) {
               lv_stir_a_arr[cz_ind] = (lv_stir_a_arr[ul_ind]\
                     - (rr - 1) * lv_stir_a_arr[ul_ind + 1]);
               ul_ind += 1;
               cz_ind += 1;
            }
            lv_stir_a_arr[cz_ind] = 1;
            rr += 1;
            lv_stir_a_max = rr;
         }
      }
      retvalu = lv_stir_a_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_stir_b_arr = NULL;
static long lv_stir_b_end = 0;
static long lv_stir_b_max = 0;
double stirling2(long nn
      , long kk)
{
   // local-use C lv_stir_b_arr;
   // local-use C lv_stir_b_end;
   // local-use C lv_stir_b_max;
   long col_k;
   long ul_ind;
   long cz_ind;
   long rr;
   double retvalu;
   if (nn < kk || nn < 0 || kk < 0) {
      retvalu = 0;
   } else {
      if (lv_stir_b_end <= 0) {
         lv_stir_b_max = 2;
         lv_stir_b_end = d2lt_d1(lv_stir_b_max, 0);
         lv_stir_b_arr = realloc(lv_stir_b_arr
            , (lv_stir_b_end) * sizeof(lv_stir_b_arr[0]));
         lv_stir_b_arr[0] = 1;
         lv_stir_b_arr[1] = 0;
         lv_stir_b_arr[2] = 1;
      }
      rr = lv_stir_b_max;
      if (rr < nn + 1) {
         lv_stir_b_end = d2lt_d1(nn + 1, 0);
         lv_stir_b_arr = realloc(lv_stir_b_arr
            , (lv_stir_b_end) * sizeof(lv_stir_b_arr[0]));
         while (rr <= nn) {
            cz_ind = d2lt_d1(rr, 0);
            lv_stir_b_arr[cz_ind] = 0;
            cz_ind += 1;
            ul_ind = d2lt_d1(rr - 1, 0);
            for (col_k = 1; col_k <= rr - 1; col_k += 1) {
               lv_stir_b_arr[cz_ind] = (lv_stir_b_arr[ul_ind]\
                     + col_k * lv_stir_b_arr[ul_ind + 1]);
               ul_ind += 1;
               cz_ind += 1;
            }
            lv_stir_b_arr[cz_ind] = 1;
            rr += 1;
            lv_stir_b_max = rr;
         }
      }
      retvalu = lv_stir_b_arr[d2lt_d1(nn, kk)];
   }
   return (retvalu);
}
static double *lv_bern_n_arr = NULL;
static double *lv_bern_d_arr = NULL;
static long lv_bern_end = 0;
double bernoulli(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   // local-use C lv_bern_end;
   double retvalu;
   long sz_ind;
   double coeff;
   double sumn;
   double sumd;
   long jj;
   long mm;
   double gd;
   double nsumn;
   double nsumd;
   double xkk;
   long nnhalf;
   if (nn == 1) {
      retvalu = -0.5;
   } else if (nn < 0 || isodd(nn)) {
      retvalu = 0.0;
   } else {
      if (lv_bern_end <= 0) {
         lv_bern_end = 3;
         lv_bern_n_arr = realloc(lv_bern_n_arr
            , (lv_bern_end) * sizeof(lv_bern_n_arr[0]));
         lv_bern_d_arr = realloc(lv_bern_d_arr
            , (lv_bern_end) * sizeof(lv_bern_d_arr[0]));
         lv_bern_n_arr[0] = 1;
         lv_bern_n_arr[1] = 1;
         lv_bern_n_arr[2] = -1;
         lv_bern_d_arr[0] = 1;
         lv_bern_d_arr[1] = 6;
         lv_bern_d_arr[2] = 30;
      }
      nnhalf = floorl(nn / 2);
      if (lv_bern_end <= nnhalf) {
         mm = lv_bern_end;
         lv_bern_end = nnhalf + 1;
         lv_bern_n_arr = realloc(lv_bern_n_arr
            , (lv_bern_end) * sizeof(lv_bern_n_arr[0]));
         lv_bern_d_arr = realloc(lv_bern_d_arr
            , (lv_bern_end) * sizeof(lv_bern_d_arr[0]));
         while (mm < lv_bern_end) {
            sz_ind = 2 * mm;
            coeff = ((sz_ind + 1) * sz_ind) / 2;
            sumn = 1.0 - sz_ind;
            sumd = 2.0;
            for (jj = 1; jj <= mm - 1; jj += 1) {
               nsumn = round(sumn * lv_bern_d_arr[jj] + sumd\
                     * coeff * lv_bern_n_arr[jj]);
               nsumd = round(sumd * lv_bern_d_arr[jj]);
               gd = gcd(nsumn, nsumd);
               sumn = nsumn / gd;
               sumd = nsumd / gd;
               xkk = 2 * jj;
               coeff *= (sz_ind - xkk + 1.0) / (xkk + 1.0);
               coeff *= (sz_ind - xkk) / (xkk + 2.0);
               coeff = round(coeff);
            }
            sumd *= (sz_ind + 1);
            gd = gcd(sumn, sumd);
            lv_bern_n_arr[mm] = -sumn / gd;
            lv_bern_d_arr[mm] = sumd / gd;
            mm += 1;
         }
      }
      retvalu = lv_bern_n_arr[nnhalf] / lv_bern_d_arr[nnhalf];
   }
   return (retvalu);
}
long bernoullin(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   long retvalu;
   if (nn == 1) {
      retvalu = -1;
   } else if (isodd(nn) || nn < 0) {
      retvalu = 0;
   } else {
      retvalu = bernoulli(nn);
      retvalu = lv_bern_n_arr[nn / 2];
   }
   return (retvalu);
}
long bernoullid(long nn)
{
   // local-use C lv_bern_n_arr;
   // local-use C lv_bern_d_arr;
   long retvalu;
   if (nn == 1) {
      retvalu = 2;
   } else if (isodd(nn) || nn < 0) {
      retvalu = 1;
   } else {
      retvalu = bernoulli(nn);
      retvalu = lv_bern_d_arr[nn / 2];
   }
   return (retvalu);
}
double birthday(double xnn
      , double xrr)
{
   double prob;
   long ii;
   prob = 1.0;
   for (ii = 1; ii <= xrr - 1; ii += 1) {
      prob *= (xnn - ii) / xnn;
   }
   return (prob);
}
double birthdayinv(double xnn
      , double xprob)
{
   double xrr;
   double cprob;
   cprob = 1.0;
   xrr = 1.0;
   while (xprob < cprob) {
      cprob *= (xnn - xrr) / xnn;
      xrr += 1;
   }
   return (xrr);
}
long n2perm(long mm
      , long nn
      , long *ret_perm_arr_p)
{
   long ii;
   long *pat_arr = NULL;
   long *source_arr = NULL;
   long jj;
   long kk;
   long sz_ind;
   pat_arr = realloc(pat_arr
      , (nn) * sizeof(pat_arr[0]));
   source_arr = realloc(source_arr
      , (nn) * sizeof(source_arr[0]));
   kk = mm;
   for (ii = 1; ii <= nn; ii += 1) {
      pat_arr[nn - ii] = kk % ii;
      kk = floor(kk / ii);
      source_arr[ii - 1] = ii - 1;
   }
   for (ii = 0; ii <= nn - 1; ii += 1) {
      sz_ind = pat_arr[ii];
      ret_perm_arr_p[ii] = source_arr[sz_ind];
      for (jj = sz_ind; jj <= nn - ii - 2; jj += 1) {
         source_arr[jj] = source_arr[jj + 1];
      }
   }
   free(pat_arr);
   free(source_arr);
   return (mm);
}
long n2comb(long mm
      , long nn
      , long rr
      , long *ret_comb_arr_p)
{
   long kk;
   long cc;
   long qq;
   long ss;
   long pp;
   kk = comb(nn, rr) - mm;
   for (ss = 0; ss <= rr - 1; ss += 1) {
      pp = rr - ss;
      cc = 1;
      qq = 1;
      while (cc < kk) {
         kk -= cc;
         cc = (cc * pp) / qq;
         qq += 1;
         pp += 1;
      }
      ret_comb_arr_p[ss] = nn - pp;
   }
   return (mm);
}
long days_in_month(long g_year
      , long g_month)
{
   long retvalu;
   if (g_month == 2) {
      if (isleapyear(g_year)) {
         retvalu = 29;
      } else {
         retvalu = 28;
      }
   } else if ((6 * g_month + 1) % 11 < 5) {
      retvalu = 30;
   } else {
      retvalu = 31;
   }
   return (retvalu);
}
double sec2dhms(double seconds)
{
   double dy;
   double hr;
   double mn;
   double tm;
   double sg;
   if (seconds < 0.0) {
      sg = -1.0;
   } else {
      sg = 1.0;
   }
   dy = floor(seconds * SECOND / DAY);
   tm = (seconds * SECOND / DAY - dy) * DAY / HOUR;
   hr = floor(tm);
   tm = (tm - hr) * HOUR / MINUTE;
   mn = floor(tm);
   tm = (tm - mn) * MINUTE / SECOND;
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0);
}
double day2dhms(double dayfrac)
{
   double dy;
   double hr;
   double mn;
   double tm;
   double sg;
   if (dayfrac < 0.0) {
      sg = -1.0;
   } else {
      sg = 1.0;
   }
   dy = floor(dayfrac);
   tm = (dayfrac - dy) * DAY / HOUR;
   hr = floor(tm);
   tm = (tm - hr) * HOUR / MINUTE;
   mn = floor(tm);
   tm = (tm - mn) * MINUTE / SECOND;
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0);
}
double day2dhmsinv(double xx_hms)
{
   double dy;
   double hr;
   double mn;
   double tm;
   dy = floor(xx_hms);
   tm = (xx_hms - dy) * 100.0;
   hr = floor(tm);
   tm = (tm - hr) * 100.0;
   mn = floor(tm);
   tm = (tm - mn) * 100.0;
   return (dy + (hr * HOUR + mn * MINUTE + tm * SECOND) / DAY);
}
double hms2day(double hourx
      , double minutex
      , double secondx)
{
   return ((secondx * SECOND + minutex * MINUTE + hourx *\
         HOUR) / DAY);
}
double hour2day(double hourx)
{
   return (hourx * HOUR / DAY);
}
double day2hour(double dayx)
{
   return (dayx * DAY / HOUR);
}
double jd2kwt(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0KWT) / KWT);
}
double jd2j2k(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0J2K) / J2KDAY);
}
double jd2uet(double jjdtime)
{
   return ((jjdtime * JDAY - JDSEC_AT_0UET) / UET);
}
double kwt2jd(double kwttime)
{
   return ((kwttime * KWT + JDSEC_AT_0KWT) / JDAY);
}
double uet2jd(double uettime)
{
   return ((uettime * UET + JDSEC_AT_0UET) / JDAY);
}
double j2k2jd(double jtwoktm)
{
   return ((jtwoktm * J2KDAY + JDSEC_AT_0J2K) / JDAY);
}
double j2k2kwt(double jtwoktm)
{
   return (jd2kwt(j2k2jd(jtwoktm)));
}
double j2k2uet(double jtwoktm)
{
   return (jd2uet(j2k2jd(jtwoktm)));
}
double kwt2j2k(double kwttime)
{
   return (jd2j2k(kwt2jd(kwttime)));
}
double kwt2uet(double kwttime)
{
   return (jd2uet(kwt2jd(kwttime)));
}
double uet2kwt(double uettime)
{
   return (jd2kwt(uet2jd(uettime)));
}
double uet2j2k(double uettime)
{
   return (jd2j2k(uet2jd(uettime)));
}
long jd2dow(double jjd)
{
   long jjtemp;
   jjtemp = floor(jjd + 1.5);
   return (jjtemp % 7);
}
long j2k2dow(double jtwok)
{
   long jjtemp;
   jjtemp = floor(jtwok + 6.5);
   return (jjtemp % 7);
}
double ymd2doy(long g_year
      , long g_month
      , double g_daymon)
{
   double delta;
   while (g_month < 1) {
      g_month += MONTHS_IN_YEAR;
      g_year -= 1;
   }
   while (MONTHS_IN_YEAR < g_month) {
      g_month -= MONTHS_IN_YEAR;
      g_year += 1;
   }
   delta = 0;
   if (2 < g_month) {
      if (isleapyear(g_year)) {
         delta = 1;
      }
      delta += floor(30.6001 * g_month - 0.3) - 32.0;
   } else if (g_month == 2) {
      delta = 31;
   }
   return (delta + g_daymon);
}
double ymd2j2k(double g_year
      , double g_month
      , double g_day)
{
   double yr;
   double mn;
   double jtwok;
   double jcen;
   double dayoffset;
   g_year -= 2000;
   while (g_month < 1) {
      g_month += MONTHS_IN_YEAR;
      g_year -= 1;
   }
   while (MONTHS_IN_YEAR < g_month) {
      g_month -= MONTHS_IN_YEAR;
      g_year += 1;
   }
   mn = g_month + 1;
   yr = g_year;
   if (g_month < 3) {
      mn += MONTHS_IN_YEAR;
      yr -= 1;
   }
   jcen = floor(yr / 100);
   dayoffset = jcen - floor(jcen / 4.0) + 62;
   jtwok = (floor(yr * JYEAR / DAY) + floor(30.6001 * mn -\
         dayoffset) + g_day - 1.5);
   return (jtwok);
}
double ymd2jd(double g_year
      , double g_month
      , double g_day)
{
   return (j2k2jd(ymd2j2k(g_year, g_month, g_day)));
}
long ymd2dow(long g_year
      , long g_month
      , double g_daymon)
{
   return (jd2dow(ymd2jd(g_year, g_month, g_daymon)));
}
long doomsday(long g_year)
{
   long cc;
   long yy;
   long lps;
   long anchor;
   long retvalu;
   cc = floor(g_year / 100);
   anchor = (cc % 4) * 5 + 2;
   yy = g_year % 100;
   lps = floor(yy / 4);
   retvalu = (anchor + yy + lps) % 7;
   return (retvalu);
}
#define LC_GD_YEAR 0
#define LC_GD_MONTH 1
#define LC_GD_DAY 2
#define LC_GD_HOUR 3
#define LC_GD_MIN 4
#define LC_GD_SEC 5
#define LC_GD_DOW 6
#define LC_GD_NUM 7
#define LC_GD_JD 8
#define LC_GD_COUNT 9
static double lv_ymdhms_arr[20];
double jd2ymdhms(double jjulid)
{
   // local-use C lv_ymdhms_arr;
   long jcent;
   long bbdays;
   long bdiff;
   long g_years;
   long month_next;
   double ftime_frac;
   double dtime_rem;
   long ijulian;
   lv_ymdhms_arr[LC_GD_JD] = jjulid;
   ftime_frac = frac(jjulid + 0.5);
   ijulian = floor(jjulid + 0.5);
   jcent = floor(((ijulian - 60.5) * JDAY -\
         JDSEC_AT_0GREGORIAN) / (100.0 * GYEAR));
   bbdays = ijulian + jcent - floor(jcent / 4.0);
   g_years = floor((bbdays + 1399.9) * DAY / JYEAR);
   bdiff = bbdays - floor(g_years * JYEAR / DAY) + 1522;
   month_next = floor(bdiff / 30.6001);
   dtime_rem = bdiff - floor(30.6001 * month_next) + ftime_frac;
   lv_ymdhms_arr[LC_GD_YEAR] = g_years - 4716.0;
   if (13 < month_next) {
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 13;
   } else {
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 1;
   }
   if (lv_ymdhms_arr[LC_GD_MONTH] < 3) {
      lv_ymdhms_arr[LC_GD_YEAR] += 1;
   }
   lv_ymdhms_arr[LC_GD_DAY] = floor(dtime_rem);
   dtime_rem = DAY / HOUR * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_HOUR] = floor(dtime_rem);
   dtime_rem = HOUR / MINUTE * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_MIN] = floor(dtime_rem);
   dtime_rem = MINUTE / SECOND * frac(dtime_rem);
   lv_ymdhms_arr[LC_GD_SEC] = dtime_rem;
   lv_ymdhms_arr[LC_GD_DOW] = floor(fmod(ijulian + 1.0, 7.0));
   dtime_rem = (lv_ymdhms_arr[LC_GD_MONTH] * 100.0 +\
         lv_ymdhms_arr[LC_GD_DAY] + lv_ymdhms_arr[LC_GD_HOUR]\
         / 100.0 + lv_ymdhms_arr[LC_GD_MIN] / 10000.0 +\
         lv_ymdhms_arr[LC_GD_SEC] / 1000000.0);
   ftime_frac = lv_ymdhms_arr[LC_GD_YEAR] * 10000.0;
   if (ftime_frac < 0.0) {
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac - dtime_rem;
   } else {
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac + dtime_rem;
   }
   return (lv_ymdhms_arr[LC_GD_NUM]);
}
double j2k2ymdhms(double jtwokd)
{
   return (jd2ymdhms(j2k2jd(jtwokd)));
}
double ymdhms_get(long indexp)
{
   // local-use C lv_ymdhms_arr;
   double retvalu;
   if (LC_GD_YEAR <= indexp && indexp < LC_GD_COUNT) {
      retvalu = lv_ymdhms_arr[indexp];
   } else {
      retvalu = -1;
   }
   return (retvalu);
}
double jd2ymdhmsinv(void)
{
   // local-use C lv_ymdhms_arr;
   return (ymd2jd(lv_ymdhms_arr[LC_GD_YEAR],\
         lv_ymdhms_arr[LC_GD_MONTH],\
         lv_ymdhms_arr[LC_GD_DAY]) +\
         hms2day(lv_ymdhms_arr[LC_GD_HOUR],\
         lv_ymdhms_arr[LC_GD_MIN], lv_ymdhms_arr[LC_GD_SEC])\
         * DAY / JDAY);
}
double print_jd264(double jjulid)
{
   (void) jd2ymdhms(jjulid);
   (void) print_base_out(ymdhms_get(LC_GD_YEAR), 64);
   (void) print_base_out(ymdhms_get(LC_GD_MONTH), 64);
   (void) print_base_out(ymdhms_get(LC_GD_DAY), 64);
   (void) print_base_out(ymdhms_get(LC_GD_HOUR), 64);
   (void) print_base_out(ymdhms_get(LC_GD_MIN), 64);
   (void) print_base_outf(ymdhms_get(LC_GD_SEC), 64);
   return (jjulid);
}
double ymdhms2jd(double ymdhmsx)
{
   double xx_arr[LC_GD_COUNT];
   double ys;
   ys = ymdhmsx * (1.0 + DBLEPS);
   xx_arr[LC_GD_YEAR] = floor(ys / 10000.0);
   if (ys < 0) {
      ys = -ys;
   }
   xx_arr[LC_GD_MONTH] = fmodu(floor(ys / 100.0), 100.0);
   xx_arr[LC_GD_DAY] = fmodu(floor(ys), 100.0);
   xx_arr[LC_GD_HOUR] = fmodu(floor(ys * 100.0), 100.0);
   xx_arr[LC_GD_MIN] = fmodu(floor(ys * 10000.0), 100.0);
   xx_arr[LC_GD_SEC] = frac(ys * 10000.0) * 100.0;
   return (ymd2jd(xx_arr[LC_GD_YEAR], xx_arr[LC_GD_MONTH],\
         xx_arr[LC_GD_DAY]) + hms2day(xx_arr[LC_GD_HOUR],\
         xx_arr[LC_GD_MIN], xx_arr[LC_GD_SEC]) * DAY / JDAY);
}
double ymdhms2j2k(double ymdhmsx)
{
   return (jd2j2k(ymdhms2jd(ymdhmsx)));
}
double clocksec(double secnds)
{
   return (frac(secnds / MINUTE) * TAU);
}
double clockmin(double secnds)
{
   return (frac(secnds / HOUR) * TAU);
}
double clockhour(double secnds)
{
   return (frac(secnds / (DAY / 2)) * TAU);
}
double clocksum(double secnds)
{
   double sc;
   double mn;
   double hr;
   sc = clocksec(secnds);
   mn = clockmin(secnds);
   hr = clockhour(secnds);
   return (dist(sc - mn, TAU) + dist(hr - mn, TAU) + dist(sc\
         - hr, TAU));
}
double clockstdev(double secnds)
{
   double sc;
   double mn;
   double hr;
   double da;
   double db;
   double dc;
   sc = clocksec(secnds);
   mn = clockmin(secnds);
   hr = clockhour(secnds);
   da = dist(sc - mn, TAU);
   db = dist(hr - mn, TAU);
   dc = dist(sc - hr, TAU);
   return (sqrt((da * da + db * db + dc * dc - square(da + db\
         + dc) / 3) / 2));
}
long date_easter(long g_year)
{
   long cc;
   long nn;
   long kk;
   long ff;
   long ii;
   long jj;
   long mm;
   long lps;
   cc = floor(g_year / 100);
   nn = g_year % 19;
   lps = floor(g_year / 4);
   kk = floor((cc + 8) / 25 - 1);
   ff = floor((cc - kk) / 3);
   mm = cc - floor(cc / 4);
   ii = (mm - ff + 19 * nn + 15) % 30;
   if (28 < ii || (ii == 28 && 10 < nn)) {
      ii -= 1;
   }
   jj = (g_year + lps + ii + 2 - mm) % 7;
   return (ii - jj + 28);
}
#define HQPHR 1080
#define HALAQIM (HOUR / HQPHR)
double date_rosh_hashanah(long g_year)
{
   long aa;
   double dos;
   long day_of_september;
   double parts;
   long doww;
   aa = (12 * g_year + 12) % 19;
   dos = (floor(g_year / 100) - floor(g_year / 400) - 2 +\
         (g_year % 4) / 4.0 + (round(MOONMONTH / HALAQIM) *\
         aa - 1565.0 * g_year - 445405) / (19.0 * DAY /\
         HALAQIM));
   day_of_september = floor(dos);
   parts = frac(dos) * DAY / HALAQIM;
   doww = ymd2dow(g_year, 9, day_of_september);
   if (doww == 0 || doww == 3 || doww == 5) {
      day_of_september += 1;
   } else if (doww == 1 && 11 < aa && 23269 <= parts) {
      day_of_september += 1;
   } else if (doww == 2 && 6 < aa && 16404 <= parts) {
      day_of_september += 2;
   }
   return (day_of_september - 0.25);
}
double jewish2jdx(long hebyear)
{
   long hebyear_mone;
   long months_el;
   long halaqims_el;
   long hour_el;
   long hq_left;
   long days_left;
   long alt_days;
   long alt_dow;
   hebyear_mone = hebyear - 1;
   months_el = (235 * floor(hebyear_mone / 19) + 12 *\
         (hebyear_mone % 19) + floor((7 * (hebyear_mone % 19)\
         + 1) / 19));
   halaqims_el = 204 + (793 * (months_el % HQPHR));
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el /\
         HQPHR) + floor(halaqims_el / HQPHR));
   days_left = 1 + 29 * months_el + floor(hour_el / (DAY /\
         HOUR));
   alt_days = days_left + 347996;
   alt_dow = (alt_days % iround(WEEK / DAY));
   hq_left = (halaqims_el % HQPHR);
   hq_left += DAY * frac(hour_el * HOUR / DAY) / HALAQIM;
   if (19440 <= hq_left) {
      if (0 == alt_dow || 2 == alt_dow || 4 == alt_dow) {
         alt_days += 2;
      } else {
         alt_days += 1;
      }
   } else if (0 == alt_dow) {
      if (9924 <= hq_left && ! isjewishleap(hebyear)) {
         alt_days += 2;
      }
   } else if (6 == alt_dow) {
      if (16789 <= hq_left && isjewishleap(hebyear - 1)) {
         alt_days += 1;
      }
   } else if (1 == alt_dow || 3 == alt_dow || 5 == alt_dow) {
      alt_days += 1;
   }
   return (alt_days + 0.25);
}
double date_pesach(long g_year)
{
   double rh;
   rh = date_rosh_hashanah(g_year);
   return (rh + 21);
}
long g2jewish(long g_year)
{
   return (g_year + 3761);
}
long jewish2g(long hebyear)
{
   return (hebyear - 3760);
}
long isjewishleap(long hebyear)
{
   return ((7 * hebyear + 1) % 19 < 7);
}
long jewish_months_in_year(long hebyear)
{
   long miy;
   if (isjewishleap(hebyear)) {
      miy = 13;
   } else {
      miy = 12;
   }
   return (miy);
}
long jewish_yearlength(long hebyear)
{
   long g_year;
   long retvalu;
   g_year = jewish2g(hebyear - 1);
   retvalu = (floor(JYEAR / DAY) + (date_rosh_hashanah(g_year\
         + 1) - date_rosh_hashanah(g_year)));
   if (isleapyear(g_year + 1)) {
      retvalu += 1;
   }
   return (retvalu);
}
double jewish2jd(long hebyear)
{
   long gyear;
   gyear = jewish2g(hebyear - 1);
   return (ymd2jd(gyear, 9, date_rosh_hashanah(gyear)));
}
long isjewish8short(long hebyear)
{
   long remten;
   remten = jewish_yearlength(hebyear) % 10;
   return (remten != 5);
}
long isjewish9short(long hebyear)
{
   long remten;
   remten = jewish_yearlength(hebyear) % 10;
   return (remten == 3);
}
long jewish_monthlength(long hebyear
      , long hebmonth)
{
   long retvalu;
   retvalu = 30;
   if (hebmonth < 1 || 13 < hebmonth) {
      retvalu = 0;
   } else if (hebmonth < 8) {
      if (iseven(hebmonth)) {
         retvalu = 29;
      }
   } else if (hebmonth == 10) {
      retvalu = 29;
   } else if (hebmonth == 11) {
      retvalu = 30;
   } else if (hebmonth == 8) {
      if (isjewish8short(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 9) {
      if (isjewish9short(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 12) {
      if (! isjewishleap(hebyear)) {
         retvalu = 29;
      }
   } else if (hebmonth == 13 && isjewishleap(hebyear)) {
      retvalu = 29;
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
long jewish_monthbegin(long hebyear
      , long hmonth)
{
   long g_year;
   long g_month;
   long hm;
   double gdate;
   g_year = jewish2g(hebyear - 1);
   g_month = 9;
   if (hmonth < JEWISH_FIRST_MONTH) {
      g_year += 1;
      gdate = date_rosh_hashanah(g_year);
      for (hm = JEWISH_FIRST_MONTH - 1; hmonth <= hm; hm -= 1) {
         g_month -= 1;
         gdate += (days_in_month(g_year, g_month) -\
               jewish_monthlength(hebyear, hm));
      }
   } else if (JEWISH_FIRST_MONTH <= hmonth) {
      gdate = date_rosh_hashanah(g_year);
      for (hm = JEWISH_FIRST_MONTH; hm <= hmonth - 1; hm += 1) {
         gdate -= (days_in_month(g_year, g_month) -\
               jewish_monthlength(hebyear, hm));
         g_month += 1;
         if (MONTHS_IN_YEAR < g_month) {
            g_month = 1;
            g_year += 1;
         }
      }
   }
   return (gdate);
}
double jewishymd2jd(long hebyear
      , long hebmonth
      , double hebday)
{
   double jds;
   long hmon;
   long moninyear;
   moninyear = jewish_months_in_year(hebyear);
   if (1 <= hebmonth && hebmonth <= moninyear) {
      jds = jewish2jd(hebyear);
      hmon = JEWISH_FIRST_MONTH;
      while (hmon != hebmonth) {
         jds += jewish_monthlength(hebyear, hmon);
         hmon += 1;
         if (moninyear < hmon) {
            hmon = 1;
         } else if (hmon == JEWISH_FIRST_MONTH) {
            hebyear += 1;
            moninyear = jewish_months_in_year(hebyear);
         }
      }
   } else {
      jds = 0;
   }
   return (jds + hebday - 1.0);
}
double amean(double xa
      , double xb)
{
   return ((xa + xb) / 2.0);
}
double amean1(double xa)
{
   return ((xa + 1.0) / 2.0);
}
double lmean(double xa
      , double xb)
{
   double retvalu;
   double diffy;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      diffy = xa - xb;
      if (0.0001 < fabs(diffy)) {
         retvalu = diffy / log(xa / xb);
      } else {
         retvalu = diffy / ln1p(diffy / xb);
      }
   }
   return (retvalu);
}
double lmean1(double xa)
{
   return (lmean(1.0, xa));
}
double pmean(double pp
      , double xa
      , double xb)
{
   double retvalu;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else if (iszero(pp)) {
      retvalu = sqrt(xa * xb);
   } else {
      retvalu = pow((pow(xa, pp) + pow(xb, pp)) / 2.0, 1.0 / pp);
   }
   return (retvalu);
}
double gmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0 || xb < 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = sqrt(xa * xb);
   }
   return (retvalu);
}
double gmean1(double xa)
{
   return (gmean(1.0, xa));
}
double hmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0 || xb < 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = 2.0 * xa * xb / (xa + xb);
   }
   return (retvalu);
}
double hmean1(double xa)
{
   return (hmean(1.0, xa));
}
double qmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0 || xb < 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = sqrt((xa * xa + xb * xb) / 2.0);
   }
   return (retvalu);
}
double qmean1(double xa)
{
   return (qmean(1.0, xa));
}
double heronianmean(double xa
      , double xb)
{
   double retvalu;
   if (xa < 0 || xb < 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      retvalu = (xa + xb + sqrt(xa * xb)) / 3.0;
   }
   return (retvalu);
}
double heronianmean1(double xa)
{
   return (heronianmean(1.0, xa));
}
double agmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double agmean1(double xa)
{
   return (agmean(1.0, xa));
}
double ahmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double ahmean1(double xa)
{
   return (ahmean(1.0, xa));
}
double almean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = lmean(xa, xb);
         xa = (xa + xb) / 2.0;
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double almean1(double xa)
{
   return (almean(1.0, xa));
}
double aqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = (xa + xb) / 2.0;
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double aqmean1(double xa)
{
   return (aqmean(1.0, xa));
}
double ghmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = sqrt(xa * xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double ghmean1(double xa)
{
   return (ghmean(1.0, xa));
}
double glmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = lmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double glmean1(double xa)
{
   return (glmean(1.0, xa));
}
double gqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = sqrt(xa * xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double gqmean1(double xa)
{
   return (gqmean(1.0, xa));
}
double hlmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = lmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double hlmean1(double xa)
{
   return (hlmean(1.0, xa));
}
double hqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = 2.0 * xa * xb / (xa + xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double hqmean1(double xa)
{
   return (hqmean(1.0, xa));
}
double lqmean(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double pdifff;
   double cdifff;
   if (xa <= 0 || xb <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb)) {
      retvalu = xa;
   } else {
      cdifff = fabs(xa - xb);
      ii = 0;
      for (;;) {
         pdifff = cdifff;
         xtmp = lmean(xa, xb);
         xa = qmean(xa, xb);
         xb = xtmp;
         cdifff = xa - xb;
         if (iswithin(xa, xb, 10 * DBLEPS) || pdifff < cdifff) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xtmp;
   }
   return (retvalu);
}
double lqmean1(double xa)
{
   return (lqmean(1.0, xa));
}
double agmean__1(double xa
      , double xb)
{
   long ii;
   double retvalu;
   double xtmp;
   double xsgn;
   xsgn = 1;
   ii = 0;
   for (;;) {
      xtmp = xa;
      xa = (xa + xb) / 2.0;
      xb = sqrt(fabs(xtmp * xb)) * sign(xa);
      if (iswithin(xa, xb, 10 * DBLEPS)) {
         break; // KQS
      }
      ii += 1;
      if (20 <= ii) {
         break; // KQS
      }
   }
   retvalu = xsgn * xtmp;
   return (retvalu);
}
double aghmean(double xa
      , double xb
      , double xc)
{
   long ii;
   double ta;
   double tb;
   double tc;
   double retvalu;
   if (xa <= 0 || xb <= 0 || xc <= 0) {
      retvalu = 0;
   } else if (iseq(xa, xb) && iseq(xa, xc)) {
      retvalu = xa;
   } else {
      ii = 0;
      for (;;) {
         ta = xa;
         tb = xb;
         tc = xc;
         xa = (ta + tb + tc) / 3.0;
         xb = cuberoot(ta * tb * tc);
         xc = 3.0 / (1.0 / ta + 1.0 / tb + 1.0 / tc);
         if (iswithin(xa, xc, 10 * DBLEPS)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = xb;
   }
   return (retvalu);
}
double rms(double xa
      , double xb)
{
   return (sqrt((xa * xa + xb * xb) / 2.0));
}
double agmean1inv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double x_init;
   double dx;
   double cc;
   if (yy <= 0.0) {
      scvx_xx = 0.0;
   } else if (yy < 0.0022) {
      scvx_xx = 1.0 / DBLMAX;
   } else {
      if (yy <= 0.5) {
         x_init = 4.0 * exp(PI / (-2.0 * yy));
      } else if (yy < 2.1) {
         cc = yy - 1.0;
         x_init = ((((((((-0.09765625) * cc + 0.12890625) *\
               cc + 0.18750000) * cc + 0.18750000) * cc -\
               0.25000000) * cc + 0.50000000) * cc +\
               2.00000000) * cc + 1.00000000);
      } else {
         cc = -(PI / 2.0);
         x_init = yy * wm(cc / (4.0 * yy)) / cc;
      }
      if (yy < 0.06) {
         dx = x_init * 0.1;
      } else {
         dx = x_init * 0.5;
      }
      scvx_dx = dx;
      scvx_xx = x_init;
      scvx_yy = yy - agmean1(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - agmean1(scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double ghmean1inv(double yy)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double x_init;
   if (yy <= 0.0) {
      scvx_xx = 0.0;
   } else {
      x_init = exp(PI * yy / 2.0 - 1.385) - 0.22;
      scvx_dx = 0.2;
      scvx_xx = x_init;
      scvx_yy = yy - ghmean1(scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = yy - ghmean1(scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double contraharmonic(long nn
      , const double *val_arr_pc)
{
   double denom;
   double numer;
   long ii;
   numer = 0.0;
   denom = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      denom += val_arr_pc[ii] * val_arr_pc[ii];
      numer += val_arr_pc[ii];
   }
   return (denom / numer);
}
#define LC_KNUTH_MAX 1073741823
#define LC_KNUTH_QUALITY_COUNT 1009
#define LC_KNUTH_KK_COUNT 100
#define LC_KNUTH_LL 37
#define LC_KNUTH_TT 70
#define LC_KNUTH_ARRAY_COUNT 1100
static long lv_ranz_ind = -3;
static double lv_ranz_magic = 0.0;
static long lv_ranz_arr[LC_KNUTH_QUALITY_COUNT];
static long lv_ran_a_arr[LC_KNUTH_ARRAY_COUNT];
static long lv_ran_x_arr[LC_KNUTH_KK_COUNT];
static long lf_ran_cycle(long nn)
{
   // local-use C lv_ran_x_arr;
   // local-use C lv_ran_a_arr;
   long aa;
   long bb;
   long cc;
   long mody;
   aa = 0;
   while (aa < LC_KNUTH_KK_COUNT) {
      lv_ran_a_arr[aa] = lv_ran_x_arr[aa];
      aa += 1;
   }
   bb = 0;
   cc = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL);
   while (aa < nn) {
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc];
      lv_ran_a_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   aa = 0;
   while (aa < LC_KNUTH_LL) {
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc];
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   cc = 0;
   while (aa < LC_KNUTH_KK_COUNT) {
      mody = lv_ran_a_arr[bb] - lv_ran_x_arr[cc];
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody);
      aa += 1;
      bb += 1;
      cc += 1;
   }
   return (bb);
}
static long lf_fill_ranz(void)
{
   // local-use C lv_ranz_magic;
   // local-use C lv_ranz_ind;
   // local-use C lv_ranz_arr;
   // local-use C lv_ran_a_arr;
   long jj;
   (void) lf_ran_cycle(LC_KNUTH_QUALITY_COUNT);
   for (jj = 0; jj <= LC_KNUTH_QUALITY_COUNT - 1; jj += 1) {
      lv_ranz_arr[jj] = lv_ran_a_arr[jj];
   }
   lv_ranz_arr[LC_KNUTH_KK_COUNT] = -1;
   lv_ranz_ind = 0;
   lv_ranz_magic = magicset();
   return (lv_ranz_arr[0]);
}
static long lf_next_ranz(void)
{
   // local-use C lv_ranz_magic;
   // local-use C lv_ranz_ind;
   // local-use C lv_ranz_arr;
   if (! ismagic(lv_ranz_magic)) {
      (void) rand_init(timee());
   } else if (lv_ranz_arr[lv_ranz_ind] < 0) {
      (void) lf_fill_ranz();
   }
   lv_ranz_ind += 1;
   return (lv_ranz_arr[lv_ranz_ind - 1]);
}
double rand_init_array(long seed_size
      , const long *seed_arr_pc)
{
   // local-use C lv_ran_x_arr;
   long tt;
   long jj;
   long kk;
   long dd;
   long rnd_arr[2 * LC_KNUTH_KK_COUNT];
   long rndss;
   long rndx;
   long rndff;
   long seed_ind;
   long bitmask;
   rndss = ((seed_arr_pc[0] + 2) & (LC_KNUTH_MAX - 1));
   for (jj = 0; jj <= LC_KNUTH_KK_COUNT - 1; jj += 1) {
      rnd_arr[jj] = rndss;
      rndss = (rndss << 1);
      if (LC_KNUTH_MAX < rndss) {
         rndss -= (LC_KNUTH_MAX - 1);
      }
   }
   rndff = 0;
   seed_ind = 0;
   bitmask = 0;
   for (jj = 0; jj <= LC_KNUTH_KK_COUNT - 1; jj += 1) {
      if (bitmask <= 1) {
         seed_ind += 1;
         if (seed_size <= seed_ind) {
            break;
         }
         rndff = seed_arr_pc[seed_ind];
         bitmask = (1 << 30);
      }
      if ((rndff & bitmask) != 0) {
         rnd_arr[jj] = (bitmask ^ (rnd_arr[jj]));
      }
      bitmask = (bitmask >> 1);
   }
   rnd_arr[1] += 1;
   rndss = (seed_arr_pc[0] & LC_KNUTH_MAX);
   tt = LC_KNUTH_TT - 1;
   while (0 < tt) {
      for (jj = LC_KNUTH_KK_COUNT - 1; 1 <= jj; jj -= 1) {
         rnd_arr[jj + jj] = rnd_arr[jj];
         rnd_arr[jj + jj - 1] = 0;
      }
      jj = LC_KNUTH_KK_COUNT + LC_KNUTH_KK_COUNT - 2;
      dd = LC_KNUTH_KK_COUNT + LC_KNUTH_LL - 2;
      kk = LC_KNUTH_KK_COUNT - 2;
      while (0 <= kk) {
         rndx = rnd_arr[dd] - rnd_arr[jj];
         rnd_arr[dd] = (rndx & LC_KNUTH_MAX);
         rndx = rnd_arr[kk] - rnd_arr[jj];
         rnd_arr[kk] = (rndx & LC_KNUTH_MAX);
         dd -= 1;
         kk -= 1;
         jj -= 1;
      }
      if (isodd(rndss)) {
         for (jj = LC_KNUTH_KK_COUNT; 1 <= jj; jj -= 1) {
            rnd_arr[jj] = rnd_arr[jj - 1];
         }
         rnd_arr[0] = rnd_arr[LC_KNUTH_KK_COUNT];
         jj = rnd_arr[LC_KNUTH_LL] - rnd_arr[0];
         rnd_arr[LC_KNUTH_LL] = (LC_KNUTH_MAX & jj);
         rndss = (rndss >> 1);
      } else if (rndss == 0) {
         tt -= 1;
      } else {
         rndss = (rndss >> 1);
      }
   }
   kk = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL);
   jj = 0;
   while (jj < LC_KNUTH_LL) {
      lv_ran_x_arr[kk] = rnd_arr[jj];
      kk += 1;
      jj += 1;
   }
   kk = 0;
   while (jj < LC_KNUTH_KK_COUNT) {
      lv_ran_x_arr[kk] = rnd_arr[jj];
      kk += 1;
      jj += 1;
   }
   for (jj = 0; jj <= 9; jj += 1) {
      (void) lf_ran_cycle(2 * LC_KNUTH_KK_COUNT - 1);
   }
   (void) lf_fill_ranz();
   return 0;
}
double rand_init(double seed)
{
   long sd_arr[2];
   sd_arr[0] = floor(seed);
   sd_arr[1] = floor(frac(seed) * INTMAX);
   (void) rand_init_array(2, sd_arr);
   return (seed);
}
long randl(long nn)
{
   long max_allowed;
   long rndm;
   long retvalu;
   max_allowed = LC_KNUTH_MAX - (LC_KNUTH_MAX % nn);
   for (;;) {
      rndm = lf_next_ranz();
      if (rndm < max_allowed) {
         break; // KQS
      }
   }
   retvalu = rndm % nn;
   return (retvalu);
}
double randd(void)
{
   return ((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX +\
         1.0)) / (LC_KNUTH_MAX + 1.0));
}
double int_pdf(double nn
      , double xx)
{
   double retvalu;
   double mm;
   if (xx < 0.0 || nn < xx || ! isint(xx)) {
      retvalu = 0.0;
   } else {
      mm = floor(nn);
      if (isint(nn)) {
         if (xx < nn) {
            retvalu = 1.0 / nn;
         } else {
            retvalu = 0;
         }
      } else {
         if (xx < mm) {
            retvalu = 1.0 / nn;
         } else {
            retvalu = 1.0 - mm / nn;
         }
      }
   }
   return (retvalu);
}
double int_cdf(double nn
      , double xx)
{
   double retvalu;
   double mm;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (nn <= xx) {
      retvalu = 1.0;
   } else {
      mm = floor(nn);
      if (xx < mm) {
         retvalu = (floor(xx) + 1) / nn;
      } else {
         retvalu = 1;
      }
   }
   return (retvalu);
}
double int_quantile(double nn
      , double prbx)
{
   double retvalu;
   if (prbx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 - frac(nn) / nn <= prbx) {
      retvalu = ceil(nn - 1);
   } else {
      retvalu = floor(nn * prbx + 1);
   }
   return (retvalu);
}
long int_rand(double nn)
{
   long retvalu;
   if (nn <= 1) {
      retvalu = 0;
   } else {
      retvalu = floorl(randd() * nn);
   }
   return (retvalu);
}
double normal_pdf(double xx)
{
   return (exp(-xx * xx / 2.0) / (sqrt(TAU)));
}
double normal_cdf(double xx)
{
   return (erf(xx / SQRTTWO) / 2.0 + 0.5);
}
double normal_cdf__1(double xx)
{
   double retvalu;
   double sum_curr;
   double sum_prev;
   double bb;
   double xx_sqr;
   double ii;
   if (xx <= -10.0) {
      retvalu = 0.0;
   } else if (10.0 <= xx) {
      retvalu = 1.0;
   } else if (iszero(xx)) {
      retvalu = 0.5;
   } else {
      sum_curr = 0.0;
      bb = 1.0 / xx;
      xx_sqr = xx * xx;
      ii = 0;
      for (;;) {
         bb *= xx_sqr / (2.0 * ii + 1.0);
         sum_prev = sum_curr;
         sum_curr += bb;
         if (iseq(sum_prev, sum_curr)) {
            break; // KQS
         }
         ii += 1;
      }
      retvalu = (sum_curr * exp(-0.5 * (xx_sqr + log(TAU))) +\
            0.5);
   }
   return (retvalu);
}
double normal_quantile(double prbx)
{
   return (SQRTTWO * erfinv(2.0 * prbx - 1.0));
}
static double lv_rand_gau_magic = 0.0;
static double lv_rand_gau_prev = 0.0;
double normal_rand(void)
{
   // local-use C lv_rand_gau_magic;
   // local-use C lv_rand_gau_prev;
   double retvalu;
   double uua;
   double uub;
   double ww;
   if (ismagic(lv_rand_gau_magic)) {
      lv_rand_gau_magic = magicnot();
      retvalu = lv_rand_gau_prev;
   } else {
      for (;;) {
         uua = randd() - 0.5;
         uub = randd() - 0.5;
         ww = uua * uua + uub * uub;
         if (isbetweenx(ww, 0.0, 0.25)) {
            break; // KQS
         }
      }
      ww = sqrt(-2.0 * log(4.0 * ww) / ww);
      lv_rand_gau_prev = uub * ww;
      lv_rand_gau_magic = magicset();
      retvalu = uua * ww;
   }
   return (retvalu);
}
double gau_pdf(double xx)
{
   return (normal_pdf(xx));
}
double gau_cdf(double xx)
{
   return (normal_cdf(xx));
}
double gau_quantile(double prbx)
{
   return (normal_quantile(prbx));
}
double gau_rand(void)
{
   return (normal_rand());
}
double normal_quantile__1(double prbx)
{
   double retvalu;
   double p_low;
   double qq;
   double rr;
   double denom;
   double numer;
   p_low = 0.02425;
   if (prbx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (1.0 <= prbx) {
      retvalu = DBLMAX;
   } else if (p_low <= prbx && prbx <= 1.0 - p_low) {
      qq = prbx - 0.5;
      rr = qq * qq;
      numer = ((((((-3.96968302866538E+1) * rr +\
            2.20946098424521E+2) * rr - 2.75928510446969E+2)\
            * rr + 1.38357751867269E+2) * rr -\
            3.06647980661472E+1) * rr + 2.50662827745924E+0);
      denom = ((((((-5.44760987982241E+1) * rr +\
            1.61585836858041E+2) * rr - 1.55698979859887E+2)\
            * rr + 6.68013118877197E+1) * rr -\
            1.32806815528857E+1) * rr + 1.00000000000000E+0);
      retvalu = (qq * numer / denom);
   } else {
      if (prbx < p_low) {
         rr = sqrt(-2.0 * log(prbx));
         qq = 1.0;
      } else {
         rr = sqrt(-2.0 * log(1 - prbx));
         qq = -1.0;
      }
      numer = ((((((-7.78489400243029E-3) * rr -\
            3.22396458041136E-1) * rr - 2.40075827716184E+0)\
            * rr - 2.54973253934373E+0) * rr +\
            4.37466414146497E+0) * rr + 2.93816398269878E+0);
      denom = (((((7.78469570904146E-3) * rr +\
            3.22467129070040E-1) * rr + 2.44513413714300E+0)\
            * rr + 3.75440866190742E+0) * rr +\
            1.00000000000000E+0);
      retvalu = qq * numer / denom;
   }
   return (retvalu);
}
double uni_pdf(double max_x
      , double xx)
{
   double retvalu;
   if (max_x <= 0.0 || xx <= 0.0 || max_x <= xx) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / max_x;
   }
   return (retvalu);
}
double uni_cdf(double max_x
      , double xx)
{
   double retvalu;
   if (max_x <= 0.0 || xx < 0.0) {
      retvalu = 0.0;
   } else if (max_x < xx) {
      retvalu = 1.0;
   } else {
      retvalu = xx / max_x;
   }
   return (retvalu);
}
double uni_quantile(double max_x
      , double prbx)
{
   double retvalu;
   if (prbx < 0.0 || max_x <= 0.0) {
      retvalu = 0.0;
   } else if (max_x < prbx) {
      retvalu = 1.0;
   } else {
      retvalu = prbx * max_x;
   }
   return (retvalu);
}
double uni_rand(double max_x)
{
   return (uni_quantile(max_x, randd()));
}
double exp_pdf(double scal
      , double xx)
{
   double retvalu;
   if (xx < 0.0 || scal <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = scal * exp(-scal * xx);
   }
   return (retvalu);
}
double exp_cdf(double scal
      , double xx)
{
   double retvalu;
   if (xx < 0.0 || scal <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 - exp(-scal * xx);
   }
   return (retvalu);
}
double exp_quantile(double scal
      , double prbx)
{
   double retvalu;
   if (prbx <= 0.0 || scal <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = DBLMAX;
   } else {
      retvalu = -log(1.0 - prbx) / scal;
   }
   return (retvalu);
}
double exp_rand(double scal)
{
   return (- log(randd()) / scal);
}
double poi_pdf(double meanx
      , double xx)
{
   double kk;
   double retvalu;
   if (xx < 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else {
      kk = floor(xx);
      retvalu = pow(meanx, kk) * exp(-meanx) / factorial(kk);
   }
   return (retvalu);
}
double poi_cdf(double meanx
      , double xx)
{
   long ii;
   long kk;
   double sum;
   double term;
   double retvalu;
   if (xx <= 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else if (1000 < xx / meanx) {
      retvalu = 1;
   } else {
      term = exp(-meanx);
      sum = term;
      kk = floorl(xx);
      for (ii = 1; ii <= kk; ii += 1) {
         term *= meanx / ii;
         sum += term;
      }
      retvalu = sum;
   }
   return (retvalu);
}
double poi_quantile(double meanx
      , double prbx)
{
   long ii;
   double sum;
   double prevsum;
   double term;
   double retvalu;
   if (prbx <= 0.0 || meanx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = DBLMAX;
   } else {
      prevsum = 0.0;
      term = exp(-meanx);
      sum = term;
      ii = 0;
      while (sum <= prbx) {
         ii += 1;
         term *= meanx / ii;
         prevsum = sum;
         sum += term;
      }
      if (sum - prbx < prbx - prevsum) {
         retvalu = ii;
      } else {
         retvalu = ii - 1;
      }
   }
   return (retvalu);
}
long poi_rand(double meanx)
{
   double prob;
   double poi;
   double sum;
   long nn;
   prob = randd();
   poi = exp(-meanx);
   sum = poi;
   nn = 0;
   while (sum < prob) {
      nn += 1;
      poi *= 1.0 * meanx / nn;
      sum += poi;
   }
   return (nn);
}
double geo_pdf(double prob
      , double kk)
{
   double retvalu;
   if (kk < 0 || prob < 0.0 || 1.0 <= prob) {
      retvalu = 0.0;
   } else {
      retvalu = pow(1.0 - prob, kk) * prob;
   }
   return (retvalu);
}
double geo_cdf(double prob
      , double kk)
{
   double retvalu;
   if (kk <= -1 || prob < 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prob) {
      retvalu = 1.0;
   } else {
      retvalu = 1.0 - pow(1.0 - prob, kk + 1);
   }
   return (retvalu);
}
double geo_quantile(double prob
      , double prbx)
{
   double retvalu;
   if (prbx <= 0.0 || 1.0 <= prbx || prob <= 0.0 || 1.0 <=\
         prob) {
      retvalu = 0.0;
   } else {
      retvalu = log(1.0 - prbx) / log(1.0 - prob) - 1.0;
   }
   return (retvalu);
}
long geo_rand(double prob)
{
   return (floorl(log(randd()) / log(1.0 - prob)));
}
double cauchy_pdf(double scal
      , double xx)
{
   return (1.0 / (PI * scal * (1 + (square(xx / scal)))));
}
double cauchy_cdf(double scal
      , double xx)
{
   return (taninv(xx / scal) / PI + 0.5);
}
double cauchy_quantile(double scal
      , double prbx)
{
   return (scal * tan((prbx - 0.5) * PI));
}
double cauchy_rand(double scal)
{
   return (cauchy_quantile(scal, randd()));
}
double logistic_pdf(double ss
      , double xx)
{
   double exs;
   double retvalu;
   if (ss <= 0.0) {
      retvalu = 0.0;
   } else {
      exs = exp(-xx / ss);
      retvalu = exs / (ss * pow(1.0 + exs, 2.0));
   }
   return (retvalu);
}
double logistic_cdf(double ss
      , double xx)
{
   double retvalu;
   if (ss <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (1.0 + exp(-xx / ss));
   }
   return (retvalu);
}
double logistic_quantile(double ss
      , double prbx)
{
   double retvalu;
   if (prbx <= 0.0 || ss <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = 1.0;
   } else {
      retvalu = -ss * log(1.0 / prbx - 1.0);
   }
   return (retvalu);
}
double logistic_rand(double ss)
{
   return (- ss * log(1.0 / randd() - 1.0));
}
double tri_pdf(double pp
      , double xx)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0;
   } else {
      if (xx < 0.0 || 1.0 < xx) {
         retvalu = 0.0;
      } else if (xx < pp) {
         retvalu = divi(2.0 * xx, pp, 2.0);
      } else {
         retvalu = divi(2.0 * (1.0 - xx), 1.0 - pp, 2.0);
      }
   }
   return (retvalu);
}
double tri_cdf(double pp
      , double xx)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0;
   } else {
      if (xx <= 0) {
         retvalu = 0;
      } else if (xx < pp) {
         retvalu = xx * xx / pp;
      } else if (xx < 1.0) {
         retvalu = 1.0 - square(1.0 - xx) / (1.0 - pp);
      } else {
         retvalu = 1.0;
      }
   }
   return (retvalu);
}
double tri_quantile(double pp
      , double prbx)
{
   double retvalu;
   if (pp < 0.0 || 1.0 < pp) {
      retvalu = 0;
   } else {
      if (prbx <= 0) {
         retvalu = 0;
      } else if (prbx < pp) {
         retvalu = sqrt(prbx * pp);
      } else if (prbx < 1.0) {
         retvalu = 1.0 - sqrt((1.0 - prbx) * (1.0 - pp));
      } else {
         retvalu = 1.0;
      }
   }
   return (retvalu);
}
double tri_rand(double pp)
{
   double xx;
   double yy;
   xx = randd();
   yy = randd();
   if (xx < pp) {
      if (2 * xx < pp * yy) {
         xx = pp - xx;
      }
   } else {
      if ((pp - 1.0) * yy < 2.0 * (xx - 1.0)) {
         xx = (pp + 1.0) - xx;
      }
   }
   return (xx);
}
double trap_pdf(double para
      , double parb
      , double xx)
{
   double retvalu;
   if (xx < 0.0 || 1.0 < xx || para < 0.0 || parb < para ||\
         1.0 < parb) {
      retvalu = 0.0;
   } else {
      if (xx < para) {
         retvalu = xx / para;
      } else if (xx <= parb) {
         retvalu = 1.0;
      } else {
         retvalu = (1.0 - xx) / (1.0 - parb);
      }
   }
   return (retvalu * 2.0 / (1.0 + parb - para));
}
double trap_cdf(double para
      , double parb
      , double xx)
{
   double mm;
   double retvalu;
   if (para < 0.0 || parb < para || 1.0 < parb) {
      retvalu = 0.0;
   } else if (xx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= xx) {
      retvalu = 1.0;
   } else {
      mm = 2.0 / (1.0 + parb - para);
      if (xx < para) {
         retvalu = mm * xx * xx / (2.0 * para);
      } else if (xx < parb) {
         retvalu = mm * (xx - para / 2.0);
      } else {
         retvalu = 1.0 - mm * square(1.0 - xx) / (2.0 * (1.0\
               - parb));
      }
   }
   return (retvalu);
}
double trap_quantile(double para
      , double parb
      , double prbx)
{
   double mm;
   double retvalu;
   if (para < 0.0 || parb < para || 1.0 < parb) {
      retvalu = 0.0;
   } else if (prbx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = 1.0;
   } else {
      mm = 2.0 / (1.0 + parb - para);
      if (prbx < para * mm / 2.0) {
         retvalu = sqrt((2.0 * para * prbx) / mm);
      } else if (prbx < 1.0 - mm * (1.0 - parb) / 2.0) {
         retvalu = prbx / mm + para / 2.0;
      } else {
         retvalu = 1.0 - SQRTTWO * sqrt((1.0 - parb) * (1.0 -\
               prbx) / mm);
      }
   }
   return (retvalu);
}
double trap_rand(double para
      , double parb)
{
   double xx;
   double retvalu;
   retvalu = -1;
   for (;;) {
      xx = randd();
      if (xx < para) {
         if (randd() * para < xx) {
            retvalu = xx;
         }
      } else if (xx <= parb) {
         retvalu = xx;
      } else {
         if (randd() * (1.0 - parb) < (1.0 - xx)) {
            retvalu = xx;
         }
      }
      if (0.0 <= retvalu) {
         break; // KQS
      }
   }
   return (retvalu);
}
double pareto_pdf(double shap
      , double scal
      , double xx)
{
   return (shap * pow(scal / xx, shap) / xx);
}
double pareto_cdf(double shap
      , double scal
      , double xx)
{
   return (1.0 - pow(scal / xx, shap));
}
double pareto_quantile(double shap
      , double scal
      , double prbx)
{
   return (scal / pow(1.0 - prbx, 1.0 / shap));
}
double pareto_rand(double shap
      , double scal)
{
   return (scal / pow(randd(), 1.0 / shap));
}
double gompertz_pdf(double shap
      , double scal
      , double xx)
{
   return (scal * shap * exp(shap + scal * xx - shap *\
         exp(scal * xx)));
}
double gompertz_cdf(double shap
      , double scal
      , double xx)
{
   return (1.0 - exp(-shap * (exp(scal * xx) - 1)));
}
double gompertz_quantile(double shap
      , double scal
      , double prbx)
{
   return (log(1 - log(1.0 - prbx) / shap) / scal);
}
double gompertz_rand(double shap
      , double scal)
{
   return (gompertz_quantile(shap, scal, randd()));
}
double zipf_pdf(double ss
      , long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0 || max_kk < kk) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (pow(kk, ss) * hnm(max_kk, ss));
   }
   return (retvalu);
}
double zipf_cdf(double ss
      , long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0) {
      retvalu = 0.0;
   } else if (max_kk < kk) {
      retvalu = 1.0;
   } else {
      retvalu = hnm(kk, ss) / hnm(max_kk, ss);
   }
   return (retvalu);
}
long zipf_quantile(double ss
      , long max_kk
      , double prbx)
{
   long ii;
   double summ;
   double target;
   target = prbx * hnm(max_kk, ss);
   summ = 0;
   ii = 1;
   for (;;) {
      summ += 1.0 / pow(ii, ss);
      if (target <= summ) {
         break; // KQS
      }
      ii += 1;
   }
   return (ii);
}
long zipf_rand(double ss
      , long max_kk)
{
   return (zipf_quantile(ss, max_kk, randd()));
}
double beta_pdf(double shap_a
      , double shap_b
      , double xx)
{
   return (pow(xx, shap_a - 1.0) * pow((1.0 - xx), shap_b -\
         1.0) / beta(shap_a, shap_b));
}
double beta_cdf(double shap_a
      , double shap_b
      , double xx)
{
   return (betainc(shap_a, shap_b, xx));
}
double beta_quantile(double shap_a
      , double shap_b
      , double prbx)
{
   double retvalu;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   if (prbx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = 1.0;
   } else {
      scvx_dx = 0.50;
      scvx_xx = 0.25;
      scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
      retvalu = scvx_xx;
   }
   return (retvalu);
}
double beta_rand(double shap_a
      , double shap_b)
{
   return (beta_quantile(shap_a, shap_b, randd()));
}
double gamma_pdf(double shap
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = exp(log(xx) * (shap - 1.0) - xx) / tgamma(shap);
   }
   return (retvalu);
}
double gamma_cdf(double shap
      , double xx)
{
   double retvalu;
   double rr;
   long ii;
   double sum;
   if (xx <= 0.0 || shap <= 0.0) {
      retvalu = 0.0;
   } else if (isint(shap)) {
      sum = 1.0;
      rr = 1.0;
      for (ii = 1; ii <= shap - 1; ii += 1) {
         rr *= xx / ii;
         sum += rr;
      }
      retvalu = 1.0 - exp(-xx) * sum;
   } else {
      retvalu = rligamma(shap, xx);
   }
   return (retvalu);
}
double gamma_rand(double shap)
{
   double i_shape;
   double f_shape;
   double val;
   double jj;
   double ee;
   double gg;
   double yy;
   double ff;
   double xx;
   double vv;
   double qq;
   double pp;
   i_shape = floor(shap);
   val = 1.0;
   if (shap < 5) {
      for (jj = 1; jj <= i_shape; jj += 1) {
         val *= randd();
      }
      val = -log(val);
      f_shape = shap - i_shape;
      if (0.00001 < f_shape) {
         pp = E / (f_shape + E);
         for (;;) {
            vv = log(randd());
            if (randd() < pp) {
               xx = exp(vv / f_shape);
               qq = exp(-xx);
            } else {
               xx = 1.0 - vv;
               qq = exp(log(xx) * (f_shape - 1));
            }
            if (randd() < qq) {
               break; // KQS
            }
         }
         val += xx;
      }
   } else {
      ee = shap - 1.0;
      gg = sqrt(shap + ee);
      yy = 0.0;
      ff = 0.0;
      while (val <= 0.0 || (1.0 + yy * yy) * exp(ee * log(val\
            / ee) - ff) < randd()) {
         xx = PI * randd();
         yy = sin(xx) / cos(xx);
         ff = gg * yy;
         val = ff + ee;
      }
   }
   return (val);
}
double chisqr_pdf(double df
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = (exp((log(xx / 2.0) * df - xx) / 2.0) / (xx *\
            tgamma(df / 2.0)));
   }
   return (retvalu);
}
double chisqr_cdf(double df
      , double xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = (1.0 - ruigamma(df / 2.0, xx / 2.0));
   }
   return (retvalu);
}
double chisqr_rand(double df)
{
   double sum;
   double vv;
   double jj;
   sum = 0;
   for (jj = 1; jj <= df; jj += 1) {
      vv = gau_rand();
      sum += vv * vv;
   }
   if (! isint(df)) {
      sum += gamma_rand(frac(df) / 2.0) * 2.0;
   }
   return (sum);
}
double binomial_pdf(double prob
      , long success
      , long trial)
{
   double retvalu;
   if (success < 0 || trial < success) {
      retvalu = 0.0;
   } else {
      retvalu = comb(trial, success) * pow(prob, success) *\
            pow(1.0 - prob, trial - success);
   }
   return (retvalu);
}
double binomial_cdf(double prob
      , long success
      , long trial)
{
   double lsum;
   double sfactor;
   long ss;
   double mu;
   double kk;
   if (prob <= 0.0 || success < 0) {
      lsum = 0.0;
   } else if (1.0 <= prob || trial <= success) {
      lsum = 1.0;
   } else {
      if (trial <= 2 * success) {
         ss = trial - success - 1;
         prob = 1.0 - prob;
      } else {
         ss = success;
      }
      sfactor = pow(1.0 - prob, trial);
      mu = prob / (1.0 - prob);
      lsum = 0.0;
      for (kk = 0; kk <= ss; kk += 1) {
         lsum += sfactor;
         sfactor *= (mu * (trial - kk)) / (kk + 1.0);
      }
      if (ss != success) {
         lsum = 1.0 - lsum;
      }
   }
   return (lsum);
}
double binomial_rand(double prob
      , double rr)
{
   double successes;
   successes = 0;
   while (0 < rr) {
      if (randd() < prob) {
         successes += 1;
      }
      rr -= 1;
   }
   return (successes);
}
double benford_pdf(long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0 || max_kk <= kk) {
      retvalu = 0.0;
   } else {
      retvalu = log(1.0 + 1.0 / kk) / log(max_kk);
   }
   return (retvalu);
}
double benford_cdf(long max_kk
      , long kk)
{
   double retvalu;
   if (kk <= 0.0) {
      retvalu = 0.0;
   } else if (max_kk <= kk) {
      retvalu = 1.0;
   } else {
      retvalu = log(kk + 1.0) / log(max_kk);
   }
   return (retvalu);
}
long benford_rand(long max_kk)
{
   long ii;
   double summ;
   double target;
   target = randd();
   summ = 0;
   ii = 1;
   for (;;) {
      summ += log(1.0 + 1.0 / ii) / log(max_kk);
      if (target <= summ) {
         break; // KQS
      }
      ii += 1;
   }
   return (ii);
}
double nbd_pdf(double prob
      , long rsuccesses
      , long kfailures)
{
   return (comb(rsuccesses + kfailures - 1, kfailures) *\
         pow(1.0 - prob, kfailures) * pow(prob, rsuccesses));
}
double nbd_cdf(double prob
      , long rsuccesses
      , long kfailures)
{
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob));
}
long nbd_rand(double prob
      , long rsuccesses)
{
   long failures;
   long rr;
   rr = rsuccesses;
   failures = 0;
   while (0 < rr) {
      if (randd() <= prob) {
         rr -= 1;
      } else {
         failures += 1;
      }
   }
   return (failures);
}
double polya_pdf(double prob
      , double rsuccesses
      , double kfailures)
{
   return (combx(rsuccesses + kfailures - 1, kfailures) *\
         pow(1.0 - prob, kfailures) * pow(prob, rsuccesses));
}
double polya_cdf(double prob
      , double rsuccesses
      , double kfailures)
{
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob));
}
double polya_rand(double tt
      , double prob)
{
   double nn;
   double mm;
   double rr;
   long uu;
   double qq;
   nn = 0;
   mm = tt - 1;
   qq = exp(tt * log(prob));
   rr = qq;
   uu = randd();
   while (rr <= uu) {
      nn += 1;
      mm += 1;
      qq *= (1.0 - prob) * mm / nn;
      rr += qq;
   }
   return (nn);
}
double zeta_pdf(double ss
      , long xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (zeta(ss) * pow(xx, ss));
   }
   return (retvalu);
}
double zeta_cdf(double ss
      , long xx)
{
   double retvalu;
   if (xx <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = hnm(xx, ss) / zeta(ss);
   }
   return (retvalu);
}
double ks_cdf(long nn
      , double xx)
{
   double retvalu;
   double two_tt_sqr;
   long kk;
   double sum;
   double tt;
   if (nn <= 0 || xx <= 0.0) {
      retvalu = 0.0;
   } else {
      if (30 < nn) {
         tt = xx;
         two_tt_sqr = 2.0 * tt * tt;
         retvalu = 1.0 - exp(-two_tt_sqr) * (1.0 - 2.0 * tt /\
               (3.0 * sqrt(nn)) - two_tt_sqr * (two_tt_sqr /\
               9.0 - 1.0 / 3.0) / nn);
      } else {
         tt = xx * sqrt(nn);
         sum = 0.0;
         kk = nn;
         while (tt < kk) {
            sum += comb(nn, kk) * pow(kk - tt, kk) * pow(tt +\
                  nn - kk, nn - kk - 1);
            kk -= 1;
         }
         retvalu = 1.0 - sum * tt / pow(nn, nn);
      }
   }
   return (retvalu);
}
double ks_a_cdf(double xx)
{
   double sum;
   double sum_prev;
   double vv;
   long kk;
   double retvalu;
   if (xx < 0.0001) {
      retvalu = 0.0;
   } else {
      sum = 0.0;
      vv = -square(PI / xx) / 8.0;
      kk = 1;
      for (;;) {
         sum_prev = sum;
         sum += exp(vv * kk * kk);
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         kk += 2;
      }
      retvalu = sum * sqrt(TAU) / xx;
   }
   return (retvalu);
}
double ks_b_cdf(long nn
      , double xx)
{
   double retvalu;
   double nxx;
   if (xx < 0.0001 || nn <= 0) {
      retvalu = 0.0;
   } else {
      nxx = xx + (2.0 * sqrt(nn) + 3.0 * xx - 3.0) / (12.0 * nn);
      retvalu = ks_a_cdf(nxx);
   }
   return (retvalu);
}
double ks_quantile(double nn
      , double prbx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   if (! isbetween(prbx, 0.0, 1.0)) {
      scvx_xx = 0.0;
   } else {
      scvx_dx = 0.5;
      scvx_xx = 0.25;
      scvx_yy = prbx - ks_cdf(nn, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = prbx - ks_cdf(nn, scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double t_pdf(double dfn
      , double xx)
{
   return (tgamma((dfn + 1.0) / 2.0) * pow((1.0 + square(xx)\
         / dfn), (-(dfn + 1.0) / 2.0)) / (sqrt(dfn * PI) *\
         tgamma(dfn / 2.0)));
}
static double lf_subtprob(double nnx
      , double xx)
{
   double aa;
   double bb;
   double ww;
   double zz;
   double yy;
   double ii;
   long nn;
   double retvalu;
   nn = floorl(fabs(nnx));
   ww = atan2(xx, sqrt(nn));
   zz = square(cos(ww));
   yy = 1.0;
   ii = nn - 2.0;
   while (2.0 <= ii) {
      yy = 1.0 + (ii - 1.0) / ii * zz * yy;
      ii -= 2.0;
   }
   if (iseven(nn)) {
      aa = sin(ww) / 2.0;
      bb = 0.5;
   } else {
      if (nn == 1) {
         aa = 0;
      } else {
         aa = sin(ww) * cos(ww) / PI;
      }
      bb = 0.5 + ww / PI;
   }
   retvalu = bb + aa * yy;
   if (1.0 < retvalu) {
      retvalu = 1.0;
   }
   return (retvalu);
}
double t_cdf(double dfx
      , double xx)
{
   return (lf_subtprob(dfx, xx));
}
static double lf_t_quantile(long ndfx
      , double prbx)
{
   double ux;
   double uxsq;
   double aa_x;
   double bb_x;
   double cc_x;
   double dd_x;
   double ee_x;
   double retvalu;
   double delta;
   double pp_a;
   double nn_a;
   double out_sign;
   if (prbx < 0.5) {
      prbx = 1.0 - prbx;
      out_sign = -1;
   } else {
      out_sign = 1;
   }
   ux = normal_quantile(prbx);
   uxsq = square(ux);
   aa_x = ((1.0) * uxsq + 1.0) / 4.0;
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0;
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq -\
         15.0) / 384.0;
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq\
         - 1920.0) * uxsq - 945.0) / 92160.0;
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq\
         - 1782.0) * uxsq - 765.0) * uxsq - 17955.0) / 368640.0;
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x\
         / ndfx) / ndfx) / ndfx) / ndfx) / ndfx);
   if (ndfx <= square(log10(prbx)) + 3.0) {
      nn_a = ndfx + 1.0;
      for (;;) {
         pp_a = lf_subtprob(ndfx, retvalu);
         ee_x = (nn_a * log(nn_a / (ndfx + square(retvalu)))\
               + log(ndfx / nn_a / TAU) - 1.0 + (1.0 / nn_a -\
               1.0 / ndfx) / 6.0) / 2.0;
         if (100 < ee_x) {
            delta = 0;
         } else {
            delta = (pp_a - prbx) / exp(ee_x);
         }
         retvalu -= delta;
         aa_x = fabs(delta) * 10000.0;
         if (iszero(retvalu) || aa_x < retvalu) {
            break; // KQS
         }
      }
   }
   return (out_sign * retvalu);
}
double t_quantile(double dfx
      , double prbx)
{
   long ndfx;
   double retvalu;
   ndfx = floor(fabs(dfx));
   if (iszero(prbx - 0.5)) {
      retvalu = 0.0;
   } else if (prbx <= 0.0) {
      retvalu = -DBLMAX;
   } else if (1.0 <= prbx) {
      retvalu = DBLMAX;
   } else {
      retvalu = lf_t_quantile(ndfx, prbx);
   }
   return (retvalu);
}
double t_cdf__1(double dfx
      , double xx)
{
   double zz;
   double yy;
   yy = sqrt(dfx + xx * xx);
   zz = (xx + yy) / (2.0 * yy);
   return (betainc__1(dfx / 2.0, dfx / 2.0, zz));
}
double t_quantile__1(double dfx
      , double prbx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   if (! isbetween(prbx, 0.0, 1.0)) {
      scvx_xx = 0.0;
   } else {
      scvx_dx = 0.5;
      scvx_xx = 0.25;
      scvx_yy = prbx - t_cdf(dfx, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = prbx - t_cdf(dfx, scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double f_cdf(long dfn_a
      , long dfn_b
      , double xx)
{
   double aa;
   double bb;
   double gg;
   aa = dfn_a / 2.0;
   bb = dfn_b / 2.0;
   gg = aa * xx;
   return (beta_cdf(aa, bb, gg / (bb + gg)));
}
static double lf_subfprob(long dfn_a
      , long dfn_b
      , double xx)
{
   double retvalu;
   double zx;
   double ax;
   double bx;
   double yx;
   double ix;
   double pp_a;
   if (xx <= 0.0) {
      retvalu = 1.0;
   } else if (iseven(dfn_b)) {
      zx = dfn_b / (dfn_b + dfn_a * xx);
      ax = 1.0;
      for (ix = dfn_b - 2; 2 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_a + ix - 2.0) / ix * zx * ax;
      }
      retvalu = 1.0 - (pow(1.0 - zx, dfn_a / 2.0) * ax);
   } else if (iseven(dfn_a)) {
      zx = dfn_a * xx / (dfn_b + dfn_a * xx);
      ax = 1.0;
      for (ix = dfn_a - 2; 2 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax;
      }
      retvalu = pow(1.0 - zx, dfn_b / 2.0) * ax;
   } else {
      yx = atan2(sqrt(dfn_a * xx / dfn_b), 1.0);
      zx = square(sin(yx));
      if (dfn_a == 1) {
         ax = 0.0;
      } else {
         ax = 1.0;
      }
      for (ix = dfn_a - 2; 3 <= ix; ix -= 2) {
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax;
      }
      bx = PI;
      for (ix = 2; ix <= dfn_b - 1; ix += 2) {
         bx *= (ix - 1.0) / ix;
      }
      pp_a = 2.0 / bx * sin(yx) * pow(cos(yx), dfn_b) * ax;
      zx = square(cos(yx));
      if (dfn_b == 1) {
         ax = 0.0;
      } else {
         ax = 1.0;
      }
      for (ix = dfn_b - 2; 3 <= ix; ix -= 2) {
         ax = 1.0 + (ix - 1.0) / ix * zx * ax;
      }
      retvalu = (pp_a + 1.0 - (4.0 / TAU) * (yx + sin(yx) *\
            cos(yx) * ax));
      if (retvalu < 0.0) {
         retvalu = 0.0;
      }
   }
   return (retvalu);
}
static double lf_subf_two(double nx
      , double mm
      , double pp)
{
   double uu;
   double nx_sub_two;
   double xx_prev;
   double xx;
   double zz;
   uu = chisqr_cdf(nx, pp);
   nx_sub_two = nx - 2.0;
   xx = (uu / nx * (1.0 + ((uu - nx_sub_two) / 2.0 + (((4.0 *\
         uu - 11.0 * nx_sub_two) * uu + nx_sub_two * (7.0 *\
         nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 *\
         nx_sub_two) * uu + nx_sub_two * (17.0 * nx - 26.0))\
         * uu - nx_sub_two * nx_sub_two * (9.0 * nx - 6.0)) /\
         48.0 / mm) / mm) / mm));
   for (;;) {
      if (xx <= 0.0) {
         break;
      }
      zz = exp(((nx + mm) * log((nx + mm) / (nx * xx + mm)) +\
            (nx - 2.0) * log(xx) + log(nx * mm / (nx + mm)) -\
            LNTWO - log(TAU) - (1.0 / nx + 1.0 / mm - 1.0 /\
            (nx + mm)) / 6.0) / 2.0);
      xx_prev = xx;
      xx += (lf_subfprob(nx, mm, xx) - pp) / zz;
      if (iswithin(xx, xx_prev, 0.00001)) {
         break; // KQS
      }
   }
   return (xx);
}
static double lf_subfx(long nx
      , long mm
      , double pp)
{
   double retvalu;
   double uu;
   double aa;
   if (iseq(pp, 1.0)) {
      retvalu = 0.0;
   } else if (mm == 0) {
      retvalu = 1.0 / square(t_quantile(nx, 0.5 - pp / 2.0));
   } else if (nx == 1) {
      retvalu = square(t_quantile(mm, pp / 2.0));
   } else if (mm == 2) {
      uu = chisqr_cdf(mm, 1.0 - pp);
      aa = mm - 2.0;
      retvalu = 1.0 / (uu / mm * (1.0 + ((uu - aa) / 2.0 +\
            (((4.0 * uu - 11.0 * aa) * uu + aa * (7.0 * mm -\
            10.0)) / 24.0 + (((2.0 * uu - 10.0 * aa) * uu +\
            aa * (17.0 * mm - 26.0)) * uu - aa * aa * (9.0 *\
            mm - 6.0)) / 48.0 / nx) / nx) / nx));
   } else if (mm < nx) {
      retvalu = 1.0 / lf_subf_two(mm, nx, 1.0 - pp);
   } else {
      retvalu = lf_subf_two(nx, mm, pp);
   }
   return (retvalu);
}
double f_quantile(long dfn_a
      , long dfn_b
      , double prbx)
{
   return (lf_subfx(dfn_a, dfn_b, 1.0 - prbx));
}
double f_quantile__1(long dfn_a
      , long dfn_b
      , double prbx)
{
   double retvalu;
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   if (prbx <= 0.0) {
      retvalu = 0.0;
   } else if (1.0 <= prbx) {
      retvalu = 1.0;
   } else {
      scvx_dx = 0.50;
      scvx_xx = 0.25;
      scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx);
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx);
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
      retvalu = scvx_xx;
   }
   return (retvalu);
}
double mb_pdf(double aa
      , double xx)
{
   return (sqrt(4 / TAU) * xx * xx * exp(-xx * xx / (2 * aa *\
         aa)) / (aa * aa * aa));
}
double mb_cdf(double aa
      , double xx)
{
   return (erf(xx / (SQRTTWO * aa)) - sqrt(4 / TAU) * xx *\
         exp(-xx * xx / (2 * aa * aa)) / aa);
}
double maxwell_boltzmann_pdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double aa;
   aa = sqrt(BOLTZMANN * temperature / molecular_mass);
   return (mb_pdf(aa, velocity));
}
double maxwell_boltzmann_cdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double aa;
   aa = sqrt(BOLTZMANN * temperature / molecular_mass);
   return (mb_cdf(aa, velocity));
}
double maxwell_juttner_pdf(double temperature
      , double molecular_mass
      , double velocity)
{
   double gmm;
   double bt;
   double rtht;
   double dn;
   double retvalu;
   if (temperature <= 0.0 || velocity <= 0.0 || LIGHT <=\
         velocity || molecular_mass <= 0.0) {
      retvalu = 0.0;
   } else {
      rtht = (molecular_mass * LIGHT * LIGHT) / (BOLTZMANN *\
            temperature);
      bt = velocity / LIGHT;
      gmm = 1.0 / topyh1(bt);
      dn = bessKn(2, rtht);
      if (iszero(dn)) {
         retvalu = 0.0;
      } else {
         retvalu = gmm * gmm * bt * rtht * exp(-gmm * rtht) / dn;
      }
   }
   return (retvalu);
}
double bb_pdf(double wavelen)
{
   double retvalu;
   if (wavelen <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = 1.0 / (pow(wavelen, 5.0) * (exp(1.0 /\
            wavelen) - 1.0));
   }
   return (retvalu * 15.0 / pow(PI, 4.0));
}
double blackbody_pdf(double wavelen)
{
   return (bb_pdf(wavelen));
}
long ints_rand(long nn
      , const double *prob_arr_pc)
{
   double sum;
   long p_ind;
   double rndm;
   double hh;
   sum = 0;
   for (p_ind = 0; p_ind <= nn - 1; p_ind += 1) {
      sum += prob_arr_pc[p_ind];
   }
   rndm = randd();
   hh = 0;
   for (p_ind = 0; p_ind <= nn - 1; p_ind += 1) {
      hh += prob_arr_pc[p_ind] / sum;
      if (rndm < hh) {
         break;
      }
   }
   return (p_ind);
}
static double lf_num2norm(double numm)
{
   double retvalu;
   if (numm <= 1) {
      retvalu = 0.0;
   } else {
      retvalu = (3.0 * sqrt(log(numm)) - 1.4 - (0.5 *\
            log(numm) - 0.39) / numm);
   }
   return (retvalu);
}
double stdev2spread(double numm
      , double stdevx)
{
   double retvalu;
   if (numm <= 1 || iszero(stdevx)) {
      retvalu = 0.0;
   } else {
      retvalu = (stdevx * lf_num2norm(numm));
   }
   return (retvalu);
}
double spread2stdev(double numm
      , double spread)
{
   double retvalu;
   if (numm <= 1 || iszero(spread)) {
      retvalu = 0.0;
   } else {
      retvalu = (spread / lf_num2norm(numm));
   }
   return (retvalu);
}
double maxabs(long nn
      , const double *data_arr_pc)
{
   long ii;
   double maxaby;
   double amaxaby;
   double atemp;
   maxaby = data_arr_pc[0];
   amaxaby = fabs(maxaby);
   for (ii = 1; ii <= nn - 1; ii += 1) {
      atemp = fabs(data_arr_pc[ii]);
      if (amaxaby < atemp) {
         maxaby = data_arr_pc[ii];
         amaxaby = atemp;
      }
   }
   return (maxaby);
}
double minabs(long nn
      , const double *data_arr_pc)
{
   long ii;
   double minaby;
   double aminaby;
   double atemp;
   minaby = data_arr_pc[0];
   aminaby = fabs(minaby);
   for (ii = 1; ii <= nn - 1; ii += 1) {
      atemp = fabs(data_arr_pc[ii]);
      if (atemp < aminaby) {
         minaby = data_arr_pc[ii];
         aminaby = atemp;
      }
   }
   return (minaby);
}
double maxabsoffset(double offset
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double maxaby;
   double delta;
   maxaby = data_arr_pc[0] - offset;
   for (ii = 1; ii <= nn - 1; ii += 1) {
      delta = data_arr_pc[ii] - offset;
      if (fabs(maxaby) < fabs(delta)) {
         maxaby = delta;
      }
   }
   return (maxaby + offset);
}
double minabsoffset(double offset
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double minaby;
   double delta;
   minaby = data_arr_pc[0] - offset;
   for (ii = 1; ii <= nn - 1; ii += 1) {
      delta = data_arr_pc[ii] - offset;
      if (fabs(delta) < fabs(minaby)) {
         minaby = delta;
      }
   }
   return (minaby + offset);
}
double mini(long num
      , const double *data_arr_pc)
{
   double curr;
   double tmp;
   long ii;
   curr = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (tmp < curr) {
         curr = tmp;
      }
   }
   return (curr);
}
double maxi(long num
      , const double *data_arr_pc)
{
   double curr;
   double tmp;
   long ii;
   curr = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (curr < tmp) {
         curr = tmp;
      }
   }
   return (curr);
}
double maxmin(long num
      , const double *data_arr_pc
      , double *ret_maxmin_arr_p)
{
   double tmp;
   long ii;
   double maxx;
   double minn;
   minn = data_arr_pc[0];
   maxx = data_arr_pc[0];
   for (ii = 1; ii <= num - 1; ii += 1) {
      tmp = data_arr_pc[ii];
      if (minn < tmp) {
         minn = tmp;
      }
      if (tmp < maxx) {
         maxx = tmp;
      }
   }
   ret_maxmin_arr_p[0] = maxx;
   ret_maxmin_arr_p[1] = minn;
   return (maxx - minn);
}
double min2(double value_a
      , double value_b)
{
   double retvalu;
   if (value_a < value_b) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double max2(double value_a
      , double value_b)
{
   double retvalu;
   if (value_b < value_a) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double minabs2(double value_a
      , double value_b)
{
   double retvalu;
   if (fabs(value_a) < fabs(value_b)) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double maxabs2(double value_a
      , double value_b)
{
   double retvalu;
   if (fabs(value_b) < fabs(value_a)) {
      retvalu = value_a;
   } else {
      retvalu = value_b;
   }
   return (retvalu);
}
double variance(long nn
      , const double *xx_arr_pc)
{
   long ii;
   double delta;
   double meanx;
   double variancex;
   meanx = 0.0;
   variancex = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      delta = xx_arr_pc[ii] - meanx;
      meanx += delta / (ii + 1.0);
      variancex += delta * (xx_arr_pc[ii] - meanx);
   }
   if (2 <= nn) {
      variancex /= (nn - 1.0);
   } else {
      variancex = 0;
   }
   return (variancex);
}
double mean(long nn
      , const double *xx_arr_pc)
{
   long ii;
   double delta;
   double meanx;
   meanx = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      delta = xx_arr_pc[ii] - meanx;
      meanx += delta / (ii + 1.0);
   }
   return (meanx);
}
#define LC_STTS_NUM 0
#define LC_STTS_MEAN 1
#define LC_STTS_MSQ 2
#define LC_STTS_MAX 3
#define LC_STTS_MIN 4
#define LC_STTS_MAGIC 5
#define LC_STTS_COUNT 6
#define LC_STTS_MAX_KEY 100
static double lv_sttx_arr[LC_STTS_MAX_KEY][LC_STTS_COUNT];
static long lf_stts_is_inited(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   long vll;
   long ii;
   long jj;
   long retvalu_bol;
   vll = lv_sttx_arr[0][LC_STTS_MAGIC];
   if (vll != magicset() && vll != magicnot()) {
      for (ii = 0; ii <= LC_STTS_MAX_KEY - 1; ii += 1) {
         for (jj = 0; jj <= LC_STTS_MAGIC - 1; jj += 1) {
            lv_sttx_arr[ii][jj] = 0;
         }
         lv_sttx_arr[0][LC_STTS_MAGIC] = magicnot();
      }
   }
   if (LC_STTS_MAX_KEY <= ix_hndl) {
      retvalu_bol = false;
   } else {
      vll = lv_sttx_arr[ix_hndl][LC_STTS_MAGIC];
      retvalu_bol = ismagic(vll);
   }
   return (retvalu_bol);
}
static long lf_stts_find_empty(void)
{
   long ix_hndl;
   ix_hndl = 0;
   while (lf_stts_is_inited(ix_hndl)) {
      ix_hndl += 1;
   }
   if (LC_STTS_MAX_KEY <= ix_hndl) {
      fprintf(stderr, "lf_stts_find_empty:""STTS-Bad-handle");
      exit(1);
   }
   return (ix_hndl);
}
long stts_init(long ix_hndl
      , double n_count
      , double meanx
      , double var
      , double minim
      , double maxim)
{
   // local-use C lv_sttx_arr;
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] = n_count;
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = meanx;
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = var * (n_count - 1.0);
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = minim;
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = maxim;
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicset();
   return (ix_hndl);
}
long stts_initx(long ix_hndl
      , double num_count
      , double meanx
      , double msq
      , double minim
      , double maxim)
{
   // local-use C lv_sttx_arr;
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] = num_count;
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = meanx;
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = msq;
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = minim;
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = maxim;
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicset();
   return (ix_hndl);
}
long stts_reset(long ix_hndl)
{
   return (stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0));
}
long stts_new(void)
{
   long ix_hndl;
   ix_hndl = lf_stts_find_empty();
   return (stts_reset(ix_hndl));
}
long stts_delete(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicnot();
   return (ix_hndl);
}
double sttscount(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_NUM]);
}
double sttsmean(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_MEAN]);
}
double sttsmsq(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_MSQ]);
}
double sttsmax(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_MAX]);
}
double sttsmin(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_MIN]);
}
double sttsmagic(long ix_hndl)
{
   // local-use C lv_sttx_arr;
   return (lv_sttx_arr[ix_hndl][LC_STTS_MAGIC]);
}
double sttssum(long ix_hndl)
{
   return (sttsmean(ix_hndl) * sttscount(ix_hndl));
}
double sttsvar(long ix_hndl)
{
   double retvalu;
   if (fabs(sttscount(ix_hndl)) <= 1.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sttsmsq(ix_hndl) / (fabs(sttscount(ix_hndl)\
            - 1.0)));
   }
   return (retvalu);
}
double sttsstdev(long ix_hndl)
{
   double retvalu;
   if (sttscount(ix_hndl) <= 1.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sqrt(sttsmsq(ix_hndl) / (sttscount(ix_hndl)\
            - 1.0)));
   }
   return (retvalu);
}
double sttsstdevmean(long ix_hndl)
{
   double retvalu;
   if (sttscount(ix_hndl) <= 1.0 || sttsmsq(ix_hndl) <= 0.0) {
      retvalu = 0.0;
   } else {
      retvalu = (sqrt(sttsmsq(ix_hndl)) / (sttscount(ix_hndl)\
            - 1.0));
   }
   return (retvalu);
}
double sttsspread(long ix_hndl)
{
   return (sttsmax(ix_hndl) - sttsmin(ix_hndl));
}
double stts_update(long ix_hndl
      , double new_data)
{
   // local-use C lv_sttx_arr;
   double delta;
   double numy;
   if (! lf_stts_is_inited(ix_hndl)) {
      fprintf(stderr, "stts_update:""STTS-Bad-handle");
      exit(1);
   }
   delta = new_data - lv_sttx_arr[ix_hndl][LC_STTS_MEAN];
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] += 1.0;
   numy = lv_sttx_arr[ix_hndl][LC_STTS_NUM];
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] += (delta / numy);
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] += (delta * (new_data -\
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN]));
   if ((numy < 2.0 || sttsspread(ix_hndl) < 0.0)) {
      lv_sttx_arr[ix_hndl][LC_STTS_MIN] = new_data;
      lv_sttx_arr[ix_hndl][LC_STTS_MAX] = new_data;
   } else {
      if (new_data < lv_sttx_arr[ix_hndl][LC_STTS_MIN]) {
         lv_sttx_arr[ix_hndl][LC_STTS_MIN] = new_data;
      }
      if (lv_sttx_arr[ix_hndl][LC_STTS_MAX] < new_data) {
         lv_sttx_arr[ix_hndl][LC_STTS_MAX] = new_data;
      }
   }
   return (delta);
}
double stts_downdate(long ix_hndl
      , double old_data)
{
   double delt;
   double men;
   if (! lf_stts_is_inited(ix_hndl)) {
      fprintf(stderr, "stts_downdate:""STTS-Bad-handle");
      exit(1);
   }
   men = lv_sttx_arr[ix_hndl][LC_STTS_MEAN];
   delt = old_data - men;
   if (0 < lv_sttx_arr[ix_hndl][LC_STTS_NUM]) {
      lv_sttx_arr[ix_hndl][LC_STTS_NUM] -= 1;
      if (0 < lv_sttx_arr[ix_hndl][LC_STTS_NUM]) {
         men -= delt / lv_sttx_arr[ix_hndl][LC_STTS_NUM];
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = men;
         lv_sttx_arr[ix_hndl][LC_STTS_MSQ] -= delt *\
               (old_data - men);
         if (lv_sttx_arr[ix_hndl][LC_STTS_MSQ] < 0.0) {
            lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = 0.0;
         }
      } else {
         lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = 0.0;
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = 0.0;
      }
   }
   return (delt);
}
double stts_updatex(long ix_hndl
      , long nn
      , const double *data_arr_pc)
{
   long ii;
   double retvalu;
   retvalu = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      retvalu += stts_update(ix_hndl, data_arr_pc[ii]);
   }
   return (retvalu);
}
long stts_newx(long nn
      , const double *data_arr_pc)
{
   long ihndl;
   long ii;
   ihndl = stts_new();
   for (ii = 0; ii <= nn - 1; ii += 1) {
      (void) stts_update(ihndl, data_arr_pc[ii]);
   }
   return (ihndl);
}
long stts_shift(long ix_hndl
      , double data_shift)
{
   // local-use C lv_sttx_arr;
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] += data_shift;
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] += data_shift;
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] += data_shift;
   return (ix_hndl);
}
long stts_scale(long ix_hndl
      , double xfactor)
{
   // local-use C lv_sttx_arr;
   double newmax;
   double newmin;
   if (0 < xfactor) {
      newmax = lv_sttx_arr[ix_hndl][LC_STTS_MAX] * xfactor;
      newmin = lv_sttx_arr[ix_hndl][LC_STTS_MIN] * xfactor;
   } else {
      newmax = lv_sttx_arr[ix_hndl][LC_STTS_MIN] * xfactor;
      newmin = lv_sttx_arr[ix_hndl][LC_STTS_MAX] * xfactor;
   }
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = newmin;
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = newmax;
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] *= xfactor;
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] *= xfactor * xfactor;
   return (ix_hndl);
}
long stts_copy(long hto
      , long hfrom)
{
   // local-use C lv_sttx_arr;
   long ii;
   for (ii = 0; ii <= LC_STTS_COUNT - 1; ii += 1) {
      lv_sttx_arr[hto][ii] = lv_sttx_arr[hfrom][ii];
   }
   return (hto);
}
long stts_update2(long ix_hnda
      , long ix_hndb)
{
   double delta;
   double ncount;
   double nmean;
   double nmsqr;
   double bmin;
   double bmax;
   double amin;
   double amax;
   if (! lf_stts_is_inited(ix_hndb)) {
      fprintf(stderr, "stts_update2:""STTS-Bad-hndb");
      exit(1);
   }
   if (! iszero(sttscount(ix_hndb))) {
      if (! lf_stts_is_inited(ix_hnda)) {
         fprintf(stderr, "stts_update2:""STTS-Bad-hnda");
         exit(1);
      }
      if (iszero(sttscount(ix_hnda))) {
         (void) stts_copy(ix_hnda, ix_hndb);
      } else {
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda);
         ncount = sttscount(ix_hndb) + sttscount(ix_hnda);
         nmean = (sttsmean(ix_hnda) + delta *\
               (sttscount(ix_hndb) / ncount));
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta\
               * delta * (sttscount(ix_hnda) *\
               sttscount(ix_hndb)) / ncount);
         amin = sttsmin(ix_hnda);
         amax = sttsmax(ix_hnda);
         bmin = sttsmin(ix_hndb);
         bmax = sttsmax(ix_hndb);
         if (amax < amin) {
            amin = bmin;
            amax = bmax;
         } else {
            if (bmin < amin) {
               amin = bmin;
            }
            if (amax < bmax) {
               amax = bmax;
            }
         }
         (void) stts_init(ix_hnda, ncount, nmean, nmsqr /\
               (ncount - 1.0), amin, amax);
      }
   }
   return (ix_hnda);
}
#define LC_STTSC_XX 0
#define LC_STTSC_YY 1
#define LC_STTSC_COVAR 2
#define LC_STTSC_MAGIC 3
#define LC_STTSC_COUNT 4
static double lv_corx_arr[LC_STTS_MAX_KEY][LC_STTSC_COUNT];
static long lf_corr_is_init(long ix_chnd)
{
   // local-use C lv_corx_arr;
   long retvalu_bol;
   double vll;
   if (LC_STTS_MAX_KEY <= ix_chnd) {
      retvalu_bol = false;
   } else {
      vll = lv_corx_arr[ix_chnd][LC_STTSC_MAGIC];
      retvalu_bol = ismagic(vll);
   }
   return (retvalu_bol);
}
static long lf_corr_find_empty(void)
{
   long ix_chnd;
   ix_chnd = 0;
   while (lf_corr_is_init(ix_chnd)) {
      ix_chnd += 1;
   }
   if (LC_STTS_MAX_KEY <= ix_chnd) {
      fprintf(stderr,\
            "lf_corr_find_empty:""STTS-No-empty-handle");
      exit(1);
   }
   return (ix_chnd);
}
long corr_new(void)
{
   // local-use C lv_corx_arr;
   long ix_chnd;
   ix_chnd = lf_corr_find_empty();
   lv_corx_arr[ix_chnd][LC_STTSC_XX] = stts_new();
   lv_corx_arr[ix_chnd][LC_STTSC_YY] = stts_new();
   lv_corx_arr[ix_chnd][LC_STTSC_COVAR] = 0.0;
   lv_corx_arr[ix_chnd][LC_STTSC_MAGIC] = magicset();
   return (ix_chnd);
}
long corr_delete(long ix_chnd)
{
   // local-use C lv_corx_arr;
   lv_corx_arr[ix_chnd][LC_STTSC_MAGIC] = magicnot();
   (void) stts_delete(lv_corx_arr[ix_chnd][LC_STTSC_XX]);
   (void) stts_delete(lv_corx_arr[ix_chnd][LC_STTSC_YY]);
   return (ix_chnd);
}
long corr_handlex(long ix_chnd)
{
   // local-use C lv_corx_arr;
   return (lv_corx_arr[ix_chnd][LC_STTSC_XX]);
}
long corr_handley(long ix_chnd)
{
   // local-use C lv_corx_arr;
   return (lv_corx_arr[ix_chnd][LC_STTSC_YY]);
}
double corr_update(long ix_chnd
      , double xx
      , double yy)
{
   // local-use C lv_corx_arr;
   long num;
   double ddxx;
   double ddyy;
   long yyhnd;
   long xxhnd;
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY];
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX];
   num = sttscount(xxhnd);
   ddxx = stts_update(xxhnd, xx);
   ddyy = stts_update(yyhnd, yy);
   lv_corx_arr[ix_chnd][LC_STTSC_COVAR] += (ddxx * ddyy * num\
         / (num + 1.0));
   return (lv_corx_arr[ix_chnd][LC_STTSC_COVAR]);
}
double corrslope(long ix_chnd)
{
   // local-use C lv_corx_arr;
   double den;
   double retvalu;
   long xxhnd;
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX];
   den = sttsmsq(xxhnd);
   if (iszero(den)) {
      retvalu = 0.0;
   } else {
      retvalu = lv_corx_arr[ix_chnd][LC_STTSC_COVAR] / den;
   }
   return (retvalu);
}
double corry0(long ix_chnd)
{
   // local-use C lv_corx_arr;
   double retvalu;
   long yyhnd;
   long xxhnd;
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY];
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX];
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) *\
         sttsmean(xxhnd));
   return (retvalu);
}
double corrcorr(long ix_chnd)
{
   // local-use C lv_corx_arr;
   double retvalu;
   double xxmsq;
   double yymsq;
   double den;
   xxmsq = sttsmsq(lv_corx_arr[ix_chnd][LC_STTSC_XX]);
   yymsq = sttsmsq(lv_corx_arr[ix_chnd][LC_STTSC_YY]);
   den = xxmsq * yymsq;
   if (iszero(den)) {
      retvalu = 0.0;
   } else {
      retvalu = (lv_corx_arr[ix_chnd][LC_STTSC_COVAR] /\
            sqrt(den));
   }
   return (retvalu);
}
double corrstderr(long ix_chnd)
{
   // local-use C lv_corx_arr;
   long yyhnd;
   double diff;
   double retvalu;
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY];
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) *\
         lv_corx_arr[ix_chnd][LC_STTSC_COVAR]);
   if (diff < 0) {
      retvalu = 0;
   } else {
      retvalu = sqrt(diff / (sttscount(yyhnd) - 2));
   }
   return (retvalu);
}
double fit_poly(long num_points
      , const double *pts_arr_pc
      , double *ret_coeff_arr_p)
{
   long i_ind;
   long j_ind;
   long k_ind;
   double prod;
   double *cc_arr = NULL;
   cc_arr = realloc(cc_arr
      , (num_points) * sizeof(cc_arr[0]));
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      cc_arr[j_ind] = pts_arr_pc[2 * j_ind + 1];
   }
   for (j_ind = 1; j_ind <= num_points - 1; j_ind += 1) {
      k_ind = num_points - 1 - j_ind;
      for (i_ind = num_points - 1; j_ind <= i_ind; i_ind -= 1) {
         cc_arr[i_ind] = ((cc_arr[i_ind - 1] - cc_arr[i_ind])\
               / (pts_arr_pc[2 * k_ind] - pts_arr_pc[2 *\
               i_ind]));
         k_ind -= 1;
      }
   }
   for (j_ind = 0; j_ind <= num_points - 2; j_ind += 1) {
      for (i_ind = num_points - 2; j_ind <= i_ind; i_ind -= 1) {
         prod = cc_arr[i_ind + 1] * pts_arr_pc[2 * (i_ind -\
               j_ind)];
         cc_arr[i_ind] -= prod;
      }
   }
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      ret_coeff_arr_p[j_ind] = cc_arr[j_ind];
   }
   free(cc_arr);
   return (num_points);
}
#define LC_PARABOLA_X_AXIS 0
#define LC_PARABOLA_Y_EXTREMA 1
#define LC_PARABOLA_REAL_ROOTS 2
#define LC_PARABOLA_ROOT_A 3
#define LC_PARABOLA_ROOT_B 4
#define LC_PARABOLA_COEFF_C 5
#define LC_PARABOLA_COEFF_B 6
#define LC_PARABOLA_COEFF_A 7
static double lv_parabola_arr[8];
double parabola_solve(double xx_a
      , double yy_a
      , double xx_b
      , double yy_b
      , double xx_c
      , double yy_c)
{
   // local-use C lv_parabola_arr;
   double pts_arr[8];
   double cc_arr[4];
   double disc;
   double axis;
   double yyextrema;
   long real_roots;
   double roots_arr[2];
   pts_arr[0] = xx_a;
   pts_arr[1] = yy_a;
   pts_arr[2] = xx_b;
   pts_arr[3] = yy_b;
   pts_arr[4] = xx_c;
   pts_arr[5] = yy_c;
   (void) fit_poly(3, pts_arr, cc_arr);
   roots_arr[0] = DBLMAX;
   roots_arr[1] = DBLMAX;
   if (iszero(cc_arr[2])) {
      axis = DBLMAX;
      if (iszero(cc_arr[1])) {
         yyextrema = cc_arr[0];
         real_roots = 0;
      } else {
         yyextrema = DBLMAX;
         real_roots = 1;
         roots_arr[0] = (-cc_arr[0] / cc_arr[1]);
      }
   } else {
      axis = (-cc_arr[1] / (2.0 * cc_arr[2]));
      yyextrema = (cc_arr[0] + xx_a * (cc_arr[1] + xx_a *\
            cc_arr[2]));
      disc = (cc_arr[1] * cc_arr[1] - 4.0 * cc_arr[2] *\
            cc_arr[0]);
      if (iszero(disc)) {
         real_roots = 1;
         roots_arr[0] = axis;
      } else if (0 < disc) {
         disc = sqrt(disc) / (2.0 * cc_arr[2]);
         real_roots = 2;
         roots_arr[0] = axis - disc;
         roots_arr[1] = axis + disc;
      } else {
         real_roots = 0;
      }
   }
   lv_parabola_arr[LC_PARABOLA_X_AXIS] = axis;
   lv_parabola_arr[LC_PARABOLA_Y_EXTREMA] = yyextrema;
   lv_parabola_arr[LC_PARABOLA_REAL_ROOTS] = real_roots;
   lv_parabola_arr[LC_PARABOLA_ROOT_A] = roots_arr[0];
   lv_parabola_arr[LC_PARABOLA_ROOT_B] = roots_arr[1];
   lv_parabola_arr[LC_PARABOLA_COEFF_C] = cc_arr[0];
   lv_parabola_arr[LC_PARABOLA_COEFF_B] = cc_arr[1];
   lv_parabola_arr[LC_PARABOLA_COEFF_A] = cc_arr[2];
   return (axis);
}
double parabola_get(long ii_ind)
{
   // local-use C lv_parabola_arr;
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 7) {
      retvalu = lv_parabola_arr[ii_ind];
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
double parabola_roots(long ii_ind)
{
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 1) {
      retvalu = parabola_get(ii_ind + LC_PARABOLA_ROOT_A);
   } else {
      retvalu = DBLMAX;
   }
   return (retvalu);
}
double parabola_yextrema(void)
{
   return (parabola_get(LC_PARABOLA_Y_EXTREMA));
}
double parabola_xaxis(void)
{
   return (parabola_get(LC_PARABOLA_X_AXIS));
}
double parabola_realroots(void)
{
   return (parabola_get(LC_PARABOLA_REAL_ROOTS));
}
#define LC_CIRCLE_X 0
#define LC_CIRCLE_Y 1
#define LC_CIRCLE_RADIUS 2
static double lv_circle_arr[3];
double circle_solve(double aa_x
      , double aa_y
      , double bb_x
      , double bb_y
      , double cc_x
      , double cc_y)
{
   // local-use C lv_circle_arr;
   double ca_a;
   double cb_a;
   double ca_b;
   double cb_b;
   double det;
   double cc_a;
   double cc_b;
   double center_x;
   double center_y;
   double radius;
   ca_a = bb_y - aa_y;
   cb_a = bb_x - aa_x;
   ca_b = cc_y - aa_y;
   cb_b = cc_x - aa_x;
   det = 2.0 * (ca_a * cb_b - ca_b * cb_a);
   if (! iszero(det)) {
      cc_a = -ca_a * (aa_y + bb_y) - cb_a * (aa_x + bb_x);
      cc_b = -ca_b * (aa_y + cc_y) - cb_b * (aa_x + cc_x);
      center_x = (ca_b * cc_a - ca_a * cc_b) / det;
      center_y = (cb_a * cc_b - cb_b * cc_a) / det;
      radius = hypot(center_x - aa_x, center_y - aa_y);
   } else {
      center_x = DBLMAX;
      center_y = DBLMAX;
      radius = DBLMAX;
   }
   lv_circle_arr[LC_CIRCLE_X] = center_x;
   lv_circle_arr[LC_CIRCLE_Y] = center_y;
   lv_circle_arr[LC_CIRCLE_RADIUS] = radius;
   return (radius);
}
double circle_get(long ii_ind)
{
   // local-use C lv_circle_arr;
   double retvalu;
   if (0 <= ii_ind && ii_ind <= 2) {
      retvalu = lv_circle_arr[ii_ind];
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
double fit_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_coeff_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spread;
   double nx_spr;
   double nx_a;
   double nx_b;
   double dxx;
   double dyy;
   double pty;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double max_dyy;
   double min_dyy;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
   }
   nx_spr = -1;
   nx_a = 0;
   nx_b = 0;
   epsxx *= 16 * DBLEPS;
   epsyy *= 16 * DBLEPS;
   for (i_ind = 1; i_ind <= num_points - 1; i_ind += 1) {
      for (j_ind = 0; j_ind <= i_ind - 1; j_ind += 1) {
         dxx = xxp_arr[i_ind] - xxp_arr[j_ind];
         if (epsxx < fabs(dxx)) {
            slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx;
            intercept_t = yyp_arr[i_ind] - slope_t *\
                  xxp_arr[i_ind];
            pty = slope_t * xxp_arr[0] + intercept_t;
            dyy = yyp_arr[0] - pty;
            min_dyy = dyy;
            max_dyy = dyy;
            k_ind = 1;
            while (k_ind < num_points) {
               pty = slope_t * xxp_arr[k_ind] + intercept_t;
               dyy = yyp_arr[k_ind] - pty;
               if (dyy < min_dyy) {
                  min_dyy = dyy;
               }
               if (max_dyy < dyy) {
                  max_dyy = dyy;
               }
               this_spread = max_dyy - min_dyy;
               if ((0 < nx_spr && nx_spr + epsyy <\
                     this_spread) || (min_dyy < - epsyy &&\
                     epsyy < max_dyy)) {
                  break;
               }
               k_ind += 1;
            }
            if (num_points <= k_ind) {
               if (nx_spr < 0 || this_spread < nx_spr - epsyy\
                     || (this_spread <= nx_spr + epsyy &&\
                     fabs(nx_a) < fabs(slope_t))) {
                  nx_a = slope_t;
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0;
                  nx_spr = this_spread;
               }
            }
         }
      }
   }
   free(xxp_arr);
   free(yyp_arr);
   ret_coeff_arr_p[1] = nx_a;
   ret_coeff_arr_p[0] = nx_b;
   ret_coeff_arr_p[2] = nx_spr / 2.0;
   return (nx_spr / 2.0);
}
static double lf_signcrossproduct(double aa_x
      , double aa_y
      , double bb_x
      , double bb_y
      , double cc_x
      , double cc_y)
{
   double cr;
   double bbaa_x;
   double bbaa_y;
   double ccaa_x;
   double ccaa_y;
   bbaa_x = bb_x - aa_x;
   bbaa_y = bb_y - aa_y;
   ccaa_x = cc_x - aa_x;
   ccaa_y = cc_y - aa_y;
   cr = bbaa_x * ccaa_y - ccaa_x * bbaa_y;
   return (cr);
}
double fitx_minmax(long num_points
      , const double *pt_arr_pc
      , double *ret_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long *chi_arr = NULL;
   long chisize;
   long hh;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spread;
   double nx_spr;
   double nx_a;
   double nx_b;
   double dxx;
   double pty;
   double dyy;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double max_dyy;
   double min_dyy;
   long e_ind;
   long t_ind;
   long poh_ind;
   double crx;
   long lmbm_ind;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   chi_arr = realloc(chi_arr
      , (num_points) * sizeof(chi_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   lmbm_ind = 0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
      if (xxp_arr[j_ind] <= xxp_arr[lmbm_ind]) {
         if (xxp_arr[j_ind] < xxp_arr[lmbm_ind] ||\
               yyp_arr[j_ind] <= yyp_arr[lmbm_ind]) {
            lmbm_ind = j_ind;
         }
      }
   }
   nx_spr = -1;
   nx_a = 0;
   nx_b = 0;
   epsxx *= 16 * DBLEPS;
   epsyy *= 16 * DBLEPS;
   poh_ind = lmbm_ind;
   chisize = 0;
   for (;;) {
      chi_arr[chisize] = poh_ind;
      e_ind = 0;
      for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
         if (e_ind == poh_ind) {
            e_ind = j_ind;
         } else {
            t_ind = chi_arr[chisize];
            crx = lf_signcrossproduct(xxp_arr[j_ind],\
                  yyp_arr[j_ind], xxp_arr[t_ind],\
                  yyp_arr[t_ind], xxp_arr[e_ind],\
                  yyp_arr[e_ind]);
            if (crx < 0) {
               e_ind = j_ind;
            }
         }
      }
      chisize += 1;
      if (num_points < chisize) {
         fprintf(stderr, "fitx_minmax:""OOPS");
         exit(1);
      }
      poh_ind = e_ind;
      if (e_ind == chi_arr[0]) {
         break; // KQS
      }
   }
   chi_arr[chisize] = chi_arr[0];
   chisize += 1;
   for (hh = 0; hh <= chisize - 2; hh += 1) {
      i_ind = chi_arr[hh];
      j_ind = chi_arr[hh + 1];
      dxx = xxp_arr[i_ind] - xxp_arr[j_ind];
      if (epsxx < fabs(dxx)) {
         slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx;
         intercept_t = yyp_arr[i_ind] - slope_t * xxp_arr[i_ind];
         dyy = yyp_arr[0] - (slope_t * xxp_arr[0] + intercept_t);
         min_dyy = dyy;
         max_dyy = dyy;
         this_spread = 0;
         k_ind = 1;
         while (k_ind < num_points) {
            pty = (slope_t * xxp_arr[k_ind] + intercept_t);
            dyy = yyp_arr[k_ind] - pty;
            if (dyy < min_dyy) {
               min_dyy = dyy;
            }
            if (max_dyy < dyy) {
               max_dyy = dyy;
            }
            this_spread = max_dyy - min_dyy;
            if ((0 < nx_spr && nx_spr + epsyy < this_spread)\
                  || (min_dyy < - epsyy && epsyy < max_dyy)) {
               break;
            }
            k_ind += 1;
         }
         if (num_points <= k_ind) {
            if (nx_spr < 0 || this_spread < nx_spr - epsyy ||\
                  (this_spread <= nx_spr + epsyy &&\
                  fabs(nx_a) < fabs(slope_t))) {
               nx_a = slope_t;
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0;
               nx_spr = this_spread;
            }
         }
      }
   }
   free(xxp_arr);
   free(yyp_arr);
   free(chi_arr);
   ret_arr_p[0] = nx_b;
   ret_arr_p[1] = nx_a;
   ret_arr_p[2] = nx_spr / 2.0;
   return (ret_arr_p[2]);
}
double fit_minmax0(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p)
{
   double *xxp_arr = NULL;
   double *yyp_arr = NULL;
   long i_ind;
   long j_ind;
   long k_ind;
   double this_spread;
   double minmaxz_spread;
   double minmaxz_slope;
   double minmaxz_intercept;
   double dxx;
   double dyy;
   double pty;
   double epsxx;
   double epsyy;
   double slope_t;
   double intercept_t;
   double midxx;
   double midyy;
   double max_dyy;
   double min_dyy;
   xxp_arr = realloc(xxp_arr
      , (num_points) * sizeof(xxp_arr[0]));
   yyp_arr = realloc(yyp_arr
      , (num_points) * sizeof(yyp_arr[0]));
   epsxx = 0.0;
   epsyy = 0.0;
   for (j_ind = 0; j_ind <= num_points - 1; j_ind += 1) {
      xxp_arr[j_ind] = pts_arr_pc[2 * j_ind];
      yyp_arr[j_ind] = pts_arr_pc[2 * j_ind + 1];
      if (epsxx < fabs(xxp_arr[j_ind])) {
         epsxx = fabs(xxp_arr[j_ind]);
      }
      if (epsyy < fabs(yyp_arr[j_ind])) {
         epsyy = fabs(yyp_arr[j_ind]);
      }
   }
   minmaxz_spread = -1;
   minmaxz_slope = 0;
   minmaxz_intercept = yyp_arr[0];
   epsxx *= 8 * DBLEPS;
   epsyy *= 8 * DBLEPS;
   for (i_ind = 2; i_ind <= num_points - 1; i_ind += 1) {
      for (j_ind = 2; j_ind <= i_ind - 1; j_ind += 1) {
         midxx = (xxp_arr[i_ind] + xxp_arr[j_ind]) / 2.0;
         midyy = (yyp_arr[i_ind] + yyp_arr[j_ind]) / 2.0;
         dxx = xxp_arr[0] - midxx;
         if (epsxx < fabs(dxx)) {
            slope_t = (yyp_arr[0] - midyy) / dxx;
            intercept_t = yyp_arr[0] - slope_t * xxp_arr[0];
            min_dyy = 0;
            max_dyy = 0;
            for (k_ind = 0; k_ind <= num_points - 1; k_ind +=\
                  1) {
               pty = slope_t * xxp_arr[k_ind] + intercept_t;
               dyy = yyp_arr[k_ind] - pty;
               if (dyy < min_dyy) {
                  min_dyy = dyy;
               }
               if (max_dyy < dyy) {
                  max_dyy = dyy;
               }
               this_spread = max_dyy - min_dyy;
               if (0 < minmaxz_spread && minmaxz_spread +\
                     epsyy < this_spread) {
                  break;
               }
            }
            if (minmaxz_spread < 0 || this_spread <\
                  minmaxz_spread - epsyy) {
               minmaxz_slope = slope_t;
               minmaxz_intercept = intercept_t;
               minmaxz_spread = this_spread;
            }
         }
      }
   }
   if (0 <= minmaxz_spread) {
      ret_arr_p[1] = minmaxz_slope;
      ret_arr_p[0] = minmaxz_intercept;
      ret_arr_p[2] = minmaxz_spread / 2.0;
   }
   free(xxp_arr);
   free(yyp_arr);
   return (minmaxz_spread / 2.0);
}
double fit_ls(long num_points
      , const double *pts_arr_pc
      , double *ret_arr_p)
{
   long i_ind;
   double dxx;
   double dyy;
   double xx;
   double yy;
   double slope;
   double mean_yy;
   double ssq_yy;
   double mean_xx;
   double ssq_xx;
   double covariance_xy;
   mean_xx = 0.0;
   ssq_xx = 0.0;
   mean_yy = 0.0;
   ssq_yy = 0.0;
   covariance_xy = 0.0;
   for (i_ind = 0; i_ind <= num_points - 1; i_ind += 1) {
      xx = pts_arr_pc[2 * i_ind];
      dxx = xx - mean_xx;
      mean_xx += dxx / (i_ind + 1);
      ssq_xx += dxx * (xx - mean_xx);
      yy = pts_arr_pc[2 * i_ind + 1];
      dyy = yy - mean_yy;
      mean_yy += dyy / (i_ind + 1);
      ssq_yy += dyy * (yy - mean_yy);
      covariance_xy += dxx * dyy * i_ind / (i_ind + 1.0);
   }
   slope = covariance_xy / ssq_xx;
   ret_arr_p[1] = slope;
   ret_arr_p[0] = mean_yy - slope * mean_xx;
   ret_arr_p[2] = covariance_xy / sqrt(ssq_xx * ssq_yy);
   ret_arr_p[3] = sqrt((ssq_yy - slope * covariance_xy) /\
         (num_points - 2));
   return (ret_arr_p[2]);
}
double fit_ls0(long num_points
      , const double *pts_arr_pc
      , double *ret_lsz_arr_p)
{
   double xxsum;
   double xysum;
   double dxx;
   double slope;
   long j_ind;
   long i_ind;
   xxsum = 0.0;
   xysum = 0.0;
   for (i_ind = 1; i_ind <= num_points - 1; i_ind += 1) {
      j_ind = 2 * i_ind;
      dxx = (pts_arr_pc[j_ind] - pts_arr_pc[0]);
      xxsum += dxx * dxx;
      xysum += dxx * (pts_arr_pc[j_ind + 1] - pts_arr_pc[1]);
   }
   slope = xysum / xxsum;
   ret_lsz_arr_p[1] = slope;
   ret_lsz_arr_p[0] = (pts_arr_pc[1] - slope * pts_arr_pc[0]);
   return (slope);
}
double sqrt__1(double xx)
{
   double yy_curr;
   double yy_prev;
   double zz;
   double power_of_two;
   if (xx <= 0.0) {
      yy_curr = 0;
   } else {
      power_of_two = 1.0;
      zz = xx;
      while (4.0 <= zz) {
         zz /= 4;
         power_of_two *= 2.0;
      }
      while (zz < 1.0) {
         zz *= 4;
         power_of_two /= 2.0;
      }
      yy_curr = (0.546382637992462 + zz * (0.502513025246083\
            + zz * (-0.0353026277858345)));
      for (;;) {
         yy_prev = yy_curr;
         yy_curr = (yy_curr + zz / yy_curr) / 2.0;
         if (iseq(yy_prev, yy_curr)) {
            break; // KQS
         }
      }
      yy_curr *= power_of_two;
   }
   return (yy_curr);
}
double sqrt__2(double xx)
{
   double scvx_xp;
   double scvx_xx;
   double scvx_yp;
   double scvx_yy;
   double scvx_dx;
   double scvx_dy;
   long scvx_ii;
   double ini;
   if (xx <= 0.0) {
      scvx_xx = 0.0;
   } else {
      if (1 < xx) {
         ini = xx / 2.0;
      } else {
         ini = 2.0 * xx;
      }
      scvx_dx = ini / 10.0;
      scvx_xx = ini;
      scvx_yy = xx - scvx_xx * scvx_xx;
      for (scvx_ii = 0; scvx_ii <= 20; scvx_ii += 1) {
         scvx_xp = scvx_xx;
         scvx_yp = scvx_yy;
         scvx_xx += scvx_dx;
         if (iseq(scvx_xp, scvx_xx)) {
            break;
         }
         scvx_yy = xx - scvx_xx * scvx_xx;
         scvx_dy = (scvx_yy - scvx_yp);
         if (iszero(scvx_dy)) {
            break;
         }
         scvx_dx *= - scvx_yy / scvx_dy;
      }
   }
   return (scvx_xx);
}
double sqrt__3(double yy)
{
   long nrvx_ii;
   double nrvx_yy;
   double nrvx_xx;
   double nrvx_dy;
   double nrvx_xp;
   double ini;
   if (yy <= 0.0) {
      nrvx_xx = 0.0;
   } else {
      if (1 < yy) {
         ini = yy / 2.0;
      } else {
         ini = 2.0 * yy;
      }
      nrvx_xx = ini;
      for (nrvx_ii = 0; nrvx_ii <= 20; nrvx_ii += 1) {
         nrvx_xp = nrvx_xx;
         nrvx_dy = 2 * nrvx_xx;
         if (iszero(nrvx_dy)) {
            break;
         }
         nrvx_yy = nrvx_xx * nrvx_xx - yy;
         nrvx_xx -= nrvx_yy / nrvx_dy;
         if (iseq(nrvx_xp, nrvx_xx)) {
            break;
         }
      }
   }
   return (nrvx_xx);
}
double nthroot__1(double xx
      , long kk)
{
   double yy_curr;
   double yy_prev;
   double pp;
   long ii;
   if (xx <= 0.0) {
      yy_curr = 0;
   } else {
      yy_curr = xx / 2.0;
      for (;;) {
         yy_prev = yy_curr;
         pp = yy_curr;
         for (ii = 2; ii <= kk - 1; ii += 1) {
            pp *= yy_curr;
         }
         yy_curr = (yy_curr * (kk - 1) + xx / pp) / kk;
         if (iseq(yy_prev, yy_curr)) {
            break; // KQS
         }
      }
   }
   return (yy_curr);
}
#define LC_EPS (DBLEPS / 16.0)
double cossin_ev(long init_ii
      , double xx_rad
      , long addone_mult)
{
   double val;
   long ii;
   double trig_sum;
   double xr_rad;
   double xr_sqr;
   if (iszero(xx_rad)) {
      trig_sum = 0.0;
   } else {
      xr_rad = fmods(xx_rad, TAU);
      xr_sqr = -xr_rad * xr_rad;
      val = 1;
      ii = init_ii;
      while (LC_EPS < fabs(val)) {
         ii += 2;
         val *= xr_sqr / (ii * (ii - 1));
      }
      trig_sum = 1.0 / (ii * (ii + 1.0));
      while (1 < ii) {
         trig_sum += 1.0;
         trig_sum *= xr_sqr / (ii * (ii - 1));
         ii -= 2;
      }
      if (addone_mult) {
         trig_sum += 1.0;
         trig_sum *= xr_rad;
      }
   }
   return (trig_sum);
}
double cos__1(double xx_rad)
{
   return (cossin_ev(0, xx_rad, false) + 1.0);
}
double cosm1__1(double xx_rad)
{
   return (cossin_ev(0, xx_rad, false));
}
double sin__1(double xx_rad)
{
   return (cossin_ev(1, xx_rad, true));
}
double sinc__1(double xx_rad)
{
   double retvalu;
   if (iszero(xx_rad)) {
      retvalu = 1.0;
   } else {
      if (TAU / 2 < fabs(xx_rad)) {
         retvalu = cossin_ev(1, xx_rad, true);
         retvalu /= xx_rad;
      } else {
         retvalu = cossin_ev(1, xx_rad, false) + 1.0;
      }
   }
   return (retvalu);
}
double exp__1(double xx)
{
   long ii;
   double val;
   double axx;
   double exp_sum;
   double retvalu;
   long squarings;
   if (xx < 0) {
      axx = -xx;
   } else {
      axx = xx;
   }
   squarings = 0;
   while (1.0 < axx) {
      axx /= 2.0;
      squarings += 1;
   }
   val = 1.0;
   ii = 1;
   while (DBLEPS / 10.0 < val) {
      ii += 1;
      val *= axx / ii;
   }
   exp_sum = 1.0 / (ii + 1.0);
   while (0 < ii) {
      exp_sum = 1.0 + axx * (exp_sum / ii);
      ii -= 1;
   }
   if (xx < 0.0) {
      retvalu = 1.0 / exp_sum;
   } else {
      retvalu = exp_sum;
   }
   while (0 < squarings) {
      retvalu *= retvalu;
      squarings -= 1;
   }
   return (retvalu);
}
double exp__2(double xx)
{
   long ii;
   double axx;
   double expmo_sum;
   double retvalu;
   long squarings;
   double val;
   if (xx < 0) {
      axx = -xx;
   } else {
      axx = xx;
   }
   squarings = 0;
   while (1 < axx) {
      axx /= 2.0;
      squarings += 1;
   }
   val = 1.0;
   ii = 1;
   while (DBLEPS / 4.0 < val) {
      ii += 1;
      val *= axx / ii;
   }
   expmo_sum = 0;
   while (0 < ii) {
      expmo_sum = axx * (expmo_sum + 1.0) / ii;
      ii -= 1;
   }
   for (ii = 1; ii <= squarings; ii += 1) {
      expmo_sum *= (2.0 + expmo_sum);
   }
   if (xx < 0) {
      retvalu = 1.0 / (expmo_sum + 1.0);
   } else {
      retvalu = expmo_sum + 1.0;
   }
   return (retvalu);
}
double ln__1(double xx)
{
   double yy_curr;
   long logstep;
   double retvalu;
   double tmp;
   logstep = 0;
   yy_curr = 8.0 / xx;
   tmp = (DBLEPS);
   while (tmp < yy_curr) {
      logstep -= 16;
      yy_curr /= 65536.0;
   }
   retvalu = (PI / agmean(2.0, yy_curr) + logstep * LNTWO);
   return (retvalu);
}
double ln__2(double xx)
{
   double yy_curr;
   double ptwo;
   double term;
   double nn;
   double sum_curr;
   double sum_prev;
   double mant;
   yy_curr = xx;
   ptwo = 0.0;
   while (SQRTTWO < yy_curr) {
      ptwo += 1;
      yy_curr /= 2.0;
   }
   while (yy_curr < 1.0 / SQRTTWO) {
      ptwo -= 1;
      yy_curr *= 2.0;
   }
   mant = (yy_curr - 1.0) / (yy_curr + 1.0);
   sum_curr = 2.0 * mant;
   term = sum_curr;
   mant *= mant;
   nn = 3;
   for (;;) {
      term *= mant;
      sum_prev = sum_curr;
      sum_curr += term / nn;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 2;
   }
   return (ptwo * LNTWO + sum_curr);
}
double euler__1(void)
{
   double twon;
   double exptwon;
   long nn;
   double term;
   double subsum;
   double sum_curr;
   double sum_prev;
   long mm;
   twon = 1.0;
   exptwon = E;
   nn = 0;
   for (;;) {
      twon *= 2.0;
      exptwon *= exptwon;
      if (0.1 < DBLEPS * exptwon) {
         break; // KQS
      }
      nn += 1;
   }
   term = 1.0 / twon;
   subsum = 0.0;
   sum_curr = 0.0;
   mm = 1;
   for (;;) {
      subsum += 1.0 / mm;
      term *= twon / mm;
      sum_prev = sum_curr;
      sum_curr += term * subsum;
      if (iseq(sum_prev, sum_curr)) {
         break; // KQS
      }
      mm += 1;
   }
   return (twon * sum_curr / exptwon - (nn + 1) * LNTWO);
}
double sphere_d(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad)
{
   double xc;
   double xd;
   double xe;
   double c_lond;
   double s_lond;
   double c_lata;
   double c_latb;
   double s_lata;
   double s_latb;
   double retvalu;
   c_lata = cos(lata_rad);
   c_latb = cos(latb_rad);
   s_lata = sin(lata_rad);
   s_latb = sin(latb_rad);
   s_lond = sin(lonb_rad - lona_rad);
   c_lond = cos(lonb_rad - lona_rad);
   xc = c_lata * s_latb - s_lata * c_latb * c_lond;
   xd = c_latb * s_lond;
   xe = s_lata * s_latb + c_lata * c_latb * c_lond;
   retvalu = atan2(hypot(xd, xc), xe);
   return (retvalu);
}
double great_circle_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad)
{
   return (sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad));
}
double sphere_distance(double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p)
{
   double xc;
   double xd;
   double xe;
   double s_lond;
   double c_lond;
   double c_lata;
   double c_latb;
   double s_lata;
   double s_latb;
   double dist;
   c_lata = cos(lata_rad);
   c_latb = cos(latb_rad);
   s_lata = sin(lata_rad);
   s_latb = sin(latb_rad);
   s_lond = sin(lonb_rad - lona_rad);
   c_lond = cos(lonb_rad - lona_rad);
   xc = c_lata * s_latb - s_lata * c_latb * c_lond;
   xd = c_latb * s_lond;
   ret_dirs_arr_p[0] = atan2(xd, xc);
   xe = s_lata * s_latb + c_lata * c_latb * c_lond;
   dist = atan2(hypot(xd, xc), xe);
   xc = c_latb * s_lata - s_latb * c_lata * c_lond;
   xd = c_lata * s_lond;
   ret_dirs_arr_p[1] = -atan2(xd, xc);
   return (dist);
}
static double lf_ka(double usq)
{
   double hyp;
   hyp = sqrt(1.0 + usq);
   return ((hyp - 1.0) / (hyp + 1.0));
}
static double lf_cap_a(double usq)
{
   double ka;
   ka = lf_ka(usq);
   return ((1.0 + square(ka / 2.0)) / (1.0 - ka));
}
static double lf_cap_b(double usq)
{
   double ka;
   ka = lf_ka(usq);
   return (ka * (1.0 - 3.0 * square(ka) / 8.0));
}
double ellipsoid_distance(double flat
      , double lata_rad
      , double lona_rad
      , double latb_rad
      , double lonb_rad
      , double *ret_dirs_arr_p)
{
   double iflat;
   double cap_ua;
   double cap_ub;
   double lon_diff;
   double c_cap_ua;
   double s_cap_ua;
   double c_cap_ub;
   double s_cap_ub;
   double xx_curr;
   double xx_prev;
   double xc;
   double xd;
   double s_xx;
   double c_xx;
   double c_sig;
   double s_sig;
   double sig;
   double s_alpha;
   double c_alpha_sq;
   double cbsigm;
   double cap_c;
   double usq;
   double cap_a;
   double cap_b;
   double deltasig;
   long ii;
   double dist;
   iflat = 1.0 - flat;
   cap_ua = atan2(iflat * sin(lata_rad), cos(lata_rad));
   cap_ub = atan2(iflat * sin(latb_rad), cos(latb_rad));
   lon_diff = lonb_rad - lona_rad;
   xx_curr = lon_diff;
   c_cap_ua = cos(cap_ua);
   c_cap_ub = cos(cap_ub);
   s_cap_ua = sin(cap_ua);
   s_cap_ub = sin(cap_ub);
   ii = 0;
   for (;;) {
      s_xx = sin(xx_curr);
      c_xx = cos(xx_curr);
      s_sig = hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub -\
            s_cap_ua * c_cap_ub * c_xx);
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx;
      sig = atan2(s_sig, c_sig);
      s_alpha = c_cap_ua * c_cap_ub * s_xx / s_sig;
      c_alpha_sq = 1.0 - square(s_alpha);
      cbsigm = c_sig - divi(2.0 * s_cap_ua * s_cap_ub,\
            c_alpha_sq, 0);
      cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat *\
            (4.0 - 3.0 * c_alpha_sq)));
      xx_prev = xx_curr;
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_alpha *\
            (sig + cap_c * s_sig * (cbsigm + cap_c * c_sig *\
            (2.0 * square(cbsigm) - 1.0))));
      if (10 < ii && iseq(fabs(xx_prev + xx_curr), TAU)) {
         xx_curr = TAU / 2.0;
         break;
      }
      if (fabs(xx_curr - xx_prev) < 1.0E-12) {
         break; // KQS
      }
      ii += 1;
   }
   usq = c_alpha_sq * (1.0 / square(iflat) - 1.0);
   cap_a = iflat * lf_cap_a(usq);
   cap_b = lf_cap_b(usq);
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig\
         * (-1.0 + 2.0 * square(cbsigm)) - (1.0 / 6.0) *\
         cap_b * cbsigm * (3.0 + 4.0 * square(s_sig)) * (-3.0\
         + 4.0 * square(cbsigm))));
   dist = cap_a * (sig - deltasig);
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx;
   xd = c_cap_ub * s_xx;
   ret_dirs_arr_p[0] = atan2(xd, xc);
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx;
   xd = c_cap_ua * s_xx;
   ret_dirs_arr_p[1] = -atan2(xd, xc);
   return (dist);
}
double ellipsoid_destination(double flat
      , double lata_rad
      , double lona_rad
      , double heading_rad
      , double distance
      , double *ret_loc_arr_p)
{
   double iflat;
   double cap_ua;
   double c_cap_ua;
   double s_cap_ua;
   double sig_rad;
   double sig_rad_prev;
   double sig_rad_delta;
   double c_sig;
   double s_sig;
   double aa;
   double bb;
   double sig_b_rad;
   double s_alpha;
   double c_alpha_sq;
   double twosigm_rad;
   double c_twosigm;
   double c_twosigm_sq;
   double cap_c;
   double usq;
   double cap_a;
   double cap_b;
   double cap_l;
   double alpha_rad;
   double c_heading;
   double s_heading;
   double lamda;
   double xd;
   double xc;
   iflat = 1.0 - flat;
   aa = 1.0;
   bb = iflat * aa;
   cap_ua = atan2(iflat * sin(lata_rad), cos(lata_rad));
   c_cap_ua = cos(cap_ua);
   s_cap_ua = sin(cap_ua);
   c_heading = cos(heading_rad);
   s_heading = sin(heading_rad);
   sig_b_rad = atan2(s_cap_ua, c_cap_ua * c_heading);
   s_alpha = cos(cap_ua) * sin(heading_rad);
   c_alpha_sq = 1.0 - square(s_alpha);
   usq = c_alpha_sq * (square(aa / bb) - 1.0);
   cap_a = lf_cap_a(usq);
   cap_b = lf_cap_b(usq);
   sig_rad_delta = 0.0;
   sig_rad = -10.0;
   for (;;) {
      sig_rad_prev = sig_rad;
      sig_rad = distance / (bb * cap_a) + sig_rad_delta;
      s_sig = sin(sig_rad);
      c_sig = cos(sig_rad);
      twosigm_rad = 2.0 * sig_b_rad + sig_rad;
      c_twosigm = cos(twosigm_rad);
      c_twosigm_sq = square(c_twosigm);
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 *\
            cap_b * (c_sig * (2.0 * c_twosigm_sq - 1.0) -\
            (cap_b / 6.0) * c_twosigm * (4.0 * square(s_sig)\
            - 3.0) * (4.0 * c_twosigm_sq - 3.0)));
      if (iseq(sig_rad, sig_rad_prev)) {
         break; // KQS
      }
   }
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading;
   xc = iflat * hypot(s_alpha, s_cap_ua * s_sig - c_cap_ua *\
         c_sig * c_heading);
   ret_loc_arr_p[0] = atan2(xd, xc);
   xd = s_sig * s_heading;
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading;
   lamda = atan2(xd, xc);
   cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat * (4.0 -\
         3.0 * c_alpha_sq)));
   cap_l = lamda - (1.0 - cap_c) * flat * s_alpha * (sig_rad\
         + cap_c * s_sig * (c_twosigm + cap_c * c_sig * (2.0\
         * c_twosigm_sq - 1.0)));
   ret_loc_arr_p[1] = cap_l + lona_rad;
   alpha_rad = fmodu(PI + atan2(s_alpha, c_cap_ua * c_sig *\
         c_heading - s_cap_ua * s_sig), TAU);
   return (alpha_rad);
}
double shc_shftpoles2steps(long shft
      , long poles)
{
   double step_arr[20];
   double retvalu;
   if (poles <= 0) {
      retvalu = 0.0;
   } else if (shft < 0) {
      retvalu = 0.0;
   } else if (16 < shft) {
      retvalu = 1000000000.0;
   } else if (poles == 1) {
      step_arr[0] = +1.00000000E+0;
      step_arr[1] = +8.75664018E+0;
      step_arr[2] = +2.174418277E+1;
      step_arr[3] = +4.709615109E+1;
      step_arr[4] = +9.755325605E+1;
      step_arr[5] = +1.983575685E+2;
      step_arr[6] = +3.9991425188E+2;
      step_arr[7] = +8.0300236937E+2;
      step_arr[8] = +1.60916613901E+3;
      step_arr[9] = +3.22148750069E+3;
      step_arr[10] = +6.44612712926E+3;
      step_arr[11] = +1.289540487229E+4;
      step_arr[12] = +2.579395961911E+4;
      step_arr[13] = +5.159106828928E+4;
      step_arr[14] = +1.0318528839545E+5;
      step_arr[15] = +2.0637372529029E+5;
      step_arr[16] = +4.1275053067337E+5;
      retvalu = step_arr[shft];
   } else if (poles == 2) {
      step_arr[0] = +1.000000000E+0;
      step_arr[1] = +1.372295755E+1;
      step_arr[2] = +3.383938971E+1;
      step_arr[3] = +7.318281398E+1;
      step_arr[4] = +1.5153838699E+2;
      step_arr[5] = +3.0810336456E+2;
      step_arr[6] = +6.2116437416E+2;
      step_arr[7] = +1.24725288016E+3;
      step_arr[8] = +2.49941335432E+3;
      step_arr[9] = +5.00372613671E+3;
      step_arr[10] = +1.001234749878E+4;
      step_arr[11] = +2.002958840334E+4;
      step_arr[12] = +4.006406905172E+4;
      step_arr[13] = +8.013303000155E+4;
      step_arr[14] = +1.6027095510986E+5;
      step_arr[15] = +3.2054680443102E+5;
      step_arr[16] = +6.4109851712798E+5;
      retvalu = step_arr[shft];
   } else if (poles == 3) {
      step_arr[0] = +1.000000000E+0;
      step_arr[1] = +1.737173781E+1;
      step_arr[2] = +4.273609545E+1;
      step_arr[3] = +9.238532150E+1;
      step_arr[4] = +1.9128399554E+2;
      step_arr[5] = +3.8890510497E+2;
      step_arr[6] = +7.8406421045E+2;
      step_arr[7] = +1.57434201644E+3;
      step_arr[8] = +3.15487771808E+3;
      step_arr[9] = +6.31593923478E+3;
      step_arr[10] = +1.263805730898E+4;
      step_arr[11] = +2.528229097067E+4;
      step_arr[12] = +5.057075779500E+4;
      step_arr[13] = +1.0114768912723E+5;
      step_arr[14] = +2.0230154729287E+5;
      step_arr[15] = +4.0460928016924E+5;
      step_arr[16] = +8.0922476138170E+5;
      retvalu = step_arr[shft];
   } else if (poles == 4) {
      step_arr[0] = +1.00000000E+0;
      step_arr[1] = +2.03878236E+1;
      step_arr[2] = +5.009900279E+1;
      step_arr[3] = +1.0828162825E+2;
      step_arr[4] = +2.2418834788E+2;
      step_arr[5] = +4.5579968748E+2;
      step_arr[6] = +9.189270663E+2;
      step_arr[7] = +1.84513549236E+3;
      step_arr[8] = +3.69752950942E+3;
      step_arr[9] = +7.40230620593E+3;
      step_arr[10] = +1.48118537839E+4;
      step_arr[11] = +2.963094667636E+4;
      step_arr[12] = +5.926913086318E+4;
      step_arr[13] = +1.1854549900613E+5;
      step_arr[14] = +2.3709822433702E+5;
      step_arr[15] = +4.7420371217077E+5;
      step_arr[16] = +9.4841452431326E+5;
      retvalu = step_arr[shft];
   } else if (poles == 5) {
      step_arr[0] = +1.000000000E+0;
      step_arr[1] = +2.301559338E+1;
      step_arr[2] = +5.651862690E+1;
      step_arr[3] = +1.2214337218E+2;
      step_arr[4] = +2.5288215751E+2;
      step_arr[5] = +5.1413464355E+2;
      step_arr[6] = +1.03653347249E+3;
      step_arr[7] = +2.08127953713E+3;
      step_arr[8] = +4.17074621528E+3;
      step_arr[9] = +8.34966697295E+3;
      step_arr[10] = +1.670750214140E+4;
      step_arr[11] = +3.342316957219E+4;
      step_arr[12] = +6.685449836446E+4;
      step_arr[13] = +1.3371716646729E+5;
      step_arr[14] = +2.6744248565129E+5;
      step_arr[15] = +5.3489319815476E+5;
      step_arr[16] = +1.06979462735136E+6;
      retvalu = step_arr[shft];
   } else {
      retvalu = 0.0;
   }
   return (retvalu);
}
double shc_steps2shft(double steps)
{
   return (lg(steps + 8.5) - 3.85514);
}
double shc_steps2shftinv(double shft)
{
   return (pow(2.0, (shft + 3.85514)) - 8.5);
}
double shc_shft2steps(long shft)
{
   return (shc_shftpoles2steps(shft, 4));
}
double m2k(double mm)
{
   return (sqrt(mm));
}
double k2m(double kk)
{
   return (kk * kk);
}
double m2b(double mm)
{
   return (1.0 / sqrt(1 - mm));
}
double b2m(double bb)
{
   return (1.0 - 1.0 / (bb * bb));
}
double elliptic1(double mm)
{
   return (PI / (2.0 * agmean(1.0, sqrt(1.0 - mm))));
}
double ellipticK(double kk)
{
   return (elliptic1(k2m(kk)));
}
double elliptic1__1(double mm)
{
   return (carlsonRF(0.0, 1.0 - mm, 1.0));
}
double elliptic1i(double mm
      , double circ_rad)
{
   double aan;
   double ggn;
   double cc;
   long skip_flag;
   double temp;
   double retvalu;
   double tt;
   double kresult;
   double lcirc_rad;
   double mc;
   long ii;
   long modd;
   long signof;
   long npihlfs;
   double ee;
   mc = 1.0 - mm;
   if (iszero(mm)) {
      retvalu = circ_rad;
   } else if (iszero(mc)) {
      if (PI / 2 <= fabs(circ_rad)) {
         retvalu = DBLMAX;
      } else {
         retvalu = log(tan((PI / 2 + circ_rad) / 2.0));
      }
   } else {
      npihlfs = floor(circ_rad / (PI / 2));
      if (isodd(npihlfs)) {
         npihlfs += 1;
      }
      lcirc_rad = circ_rad;
      if (npihlfs == 0) {
         kresult = 0.0;
      } else {
         kresult = elliptic1(mm);
         lcirc_rad -= npihlfs * PI / 2;
      }
      if (lcirc_rad < 0.0) {
         lcirc_rad = -lcirc_rad;
         signof = -1;
      } else {
         signof = 1;
      }
      tt = tan(lcirc_rad);
      ggn = sqrt(mc);
      skip_flag = false;
      if (10.0 < fabs(tt)) {
         ee = 1.0 / (ggn * tt);
         if (fabs(ee) < 10.0) {
            if (npihlfs == 0) {
               kresult = elliptic1(mm);
            }
            temp = kresult - elliptic1i(mm, atan2(ee, 1));
            skip_flag = true;
         }
      }
      if (! skip_flag) {
         aan = 1.0;
         ii = 1;
         modd = 0;
         for (;;) {
            temp = ggn / aan;
            lcirc_rad += atan2(tt * temp, 1) + modd * PI;
            modd = floor(lcirc_rad / PI + 0.5);
            tt *= (1.0 + temp) / (1.0 - temp * tt * tt);
            cc = (aan - ggn) / 2.0;
            temp = sqrt(aan * ggn);
            aan = (aan + ggn) / 2.0;
            ggn = temp;
            ii += ii;
            if (fabs(cc / aan) <= DBLEPS) {
               break; // KQS
            }
         }
         temp = (atan2(tt, 1.0) + modd * PI) / (ii * aan);
      }
      if (signof < 0) {
         temp = -temp;
      }
      retvalu = temp + npihlfs * kresult;
   }
   return (retvalu);
}
double ellipticF(double kk
      , double circ_rad)
{
   return (elliptic1i(k2m(kk), circ_rad));
}
double elliptic1i__1(double mm
      , double circ_rad)
{
   double sinphi;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic1(mm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2;
   }
   sinphi = sin(lcirc_rad);
   return (sinphi * carlsonRF(square(cos(lcirc_rad)), 1 - mm\
         * square(sinphi), 1) + kresult);
}
double elliptic2(double mm)
{
   double aan;
   double ggn;
   double tn;
   double twon;
   double sum;
   double sum_prev;
   long ii;
   double amm;
   double retvalu;
   amm = fabs(mm);
   if (amm < 1.0) {
      twon = 0.5;
      aan = 1.0;
      ggn = sqrt(1 - mm);
      sum = 1.0 - mm / 2.0;
      ii = 0;
      for (;;) {
         twon *= 2.0;
         tn = aan;
         aan = (aan + ggn) / 2.0;
         ggn = sqrt(tn * ggn);
         sum_prev = sum;
         sum -= twon * (aan * aan - ggn * ggn);
         if (iseq(sum, sum_prev)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = PI * sum / (2.0 * aan);
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double ellipticE(double kk)
{
   return (elliptic2(k2m(kk)));
}
double elliptic2__1(double mm)
{
   return (carlsonRF(0, 1 - mm, 1) - mm * carlsonRD(0, 1 - mm\
         , 1) / 3.0);
}
double elliptic2i(double mm
      , double circ_rad)
{
   double aan;
   double ggn;
   double cc;
   double errsum;
   double temp;
   double tt;
   double eliptwomm;
   double mmc;
   long ii;
   long modd;
   long npihalfs;
   long signof;
   double lcirc_rad;
   double retvalu;
   if (iszero(mm)) {
      retvalu = circ_rad;
   } else {
      mmc = 1.0 - mm;
      eliptwomm = elliptic2(mm);
      npihalfs = floor(circ_rad / (PI / 2));
      if (isodd(npihalfs)) {
         npihalfs += 1;
      }
      lcirc_rad = circ_rad - npihalfs * PI / 2;
      if (iszero(mmc)) {
         retvalu = sin(lcirc_rad) + npihalfs * eliptwomm;
      } else {
         if (lcirc_rad < 0.0) {
            lcirc_rad = -lcirc_rad;
            signof = -1;
         } else {
            signof = 1;
         }
         tt = tan(lcirc_rad);
         ggn = sqrt(mmc);
         if (fabs(tt) < - 1) {
            errsum = 1.0 / (ggn * tt);
         } else {
            errsum = 0.0;
         }
         if (0.0 < fabs(errsum) && fabs(errsum) < 1000.0) {
            errsum = atan2(1.0, ggn * tt);
            temp = eliptwomm - elliptic2i(mm, errsum) + mm *\
                  sin(circ_rad) * sin(errsum);
         } else {
            cc = sqrt(mm);
            aan = 1.0;
            ii = 1;
            modd = 0;
            while (DBLEPS < fabs(cc / aan)) {
               temp = ggn / aan;
               lcirc_rad += atan2(tt * temp, 1) + modd * PI;
               modd = floor(lcirc_rad / PI + 0.5);
               tt *= (1.0 + temp) / (1.0 - temp * tt * tt);
               cc = (aan - ggn) / 2.0;
               temp = sqrt(aan * ggn);
               aan = (aan + ggn) / 2.0;
               ggn = temp;
               ii += ii;
               errsum += cc * sin(lcirc_rad);
            }
            temp = eliptwomm * (atan2(tt, 1) + modd * PI) /\
                  (ii * aan * elliptic1(mm)) + errsum;
         }
         if (signof < 0) {
            temp = -temp;
         }
         retvalu = temp + npihalfs * eliptwomm;
      }
   }
   return (retvalu);
}
double ellipticEi(double kk
      , double circ_rad)
{
   return (elliptic2i(k2m(kk), circ_rad));
}
double elliptic2i__1(double mm
      , double circ_rad)
{
   double sinphi;
   double sinphisq;
   double sinphicu;
   double cosphisq;
   double argb;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic2(mm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2;
   }
   sinphi = sin(lcirc_rad);
   sinphisq = sinphi * sinphi;
   sinphicu = sinphi * sinphisq;
   cosphisq = square(cos(lcirc_rad));
   argb = 1 - mm * sinphisq;
   return (sinphi * carlsonRF(cosphisq, argb, 1) - mm *\
         sinphicu * carlsonRD(cosphisq, argb, 1) / 3.0 +\
         kresult);
}
double elliptic3(double nn
      , double mm)
{
   double aan;
   double ggn;
   double ppn;
   double een;
   double qqn;
   double tpp;
   double tag;
   double tn;
   double sum;
   double sum_prev;
   long ii;
   double amm;
   double retvalu;
   amm = fabs(mm);
   if (amm < 1.0) {
      aan = 1.0;
      ggn = sqrt(1.0 - mm);
      if (1.0 <= fabs(nn)) {
         ppn = sqrt(1.0 - mm / nn);
      } else {
         ppn = sqrt(1.0 - nn);
      }
      qqn = 1.0;
      sum = qqn;
      ii = 0;
      for (;;) {
         tpp = ppn * ppn;
         tag = aan * ggn;
         een = (tpp - tag) / (tpp + tag);
         ppn = (tpp + tag) / (2.0 * ppn);
         qqn = qqn * een / 2.0;
         aan = (aan + ggn) / 2.0;
         ggn = sqrt(tag);
         sum_prev = sum;
         sum += qqn;
         if (iseq(sum, sum_prev) && iseq(aan, ggn)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      if (1.0 <= fabs(nn)) {
         tn = mm * sum / (mm - nn);
      } else {
         tn = 2.0 + sum * nn / (1.0 - nn);
      }
      retvalu = PI * tn / (4.0 * aan);
   } else {
      retvalu = 1.0;
   }
   return (retvalu);
}
double ellipticP(double kk
      , double circ_rad)
{
   return (elliptic3(kk, circ_rad));
}
double elliptic3i(double nn
      , double mm
      , double circ_rad)
{
   double sp;
   double cp;
   double spq;
   double cpq;
   double spm;
   double spn;
   sp = sin(circ_rad);
   cp = cos(circ_rad);
   spq = sp * sp;
   cpq = cp * cp;
   spm = 1 - mm * spq;
   spn = 1 - nn * spq;
   return (sp * (carlsonRF(cpq, spm, 1) + spq * nn *\
         carlsonRJ(cpq, spm, 1, spn) / 3));
}
double ellipticPi(double nn
      , double kk
      , double circ_rad)
{
   return (elliptic3i(nn, k2m(kk), circ_rad));
}
double elliptic3__1(double nn
      , double mm)
{
   return (carlsonRF(0, 1 - mm, 1) + nn * carlsonRJ(0, 1 - mm\
         , 1, 1 - nn) / 3.0);
}
double elliptic3i__1(double nn
      , double mm
      , double circ_rad)
{
   double sinphi;
   double sinphisq;
   double sinphicu;
   double cosphisq;
   double argb;
   long npihlfs;
   double lcirc_rad;
   double kresult;
   npihlfs = floor(circ_rad / (PI / 2));
   if (isodd(npihlfs)) {
      npihlfs += 1;
   }
   lcirc_rad = circ_rad;
   if (npihlfs == 0) {
      kresult = 0.0;
   } else {
      kresult = elliptic3(nn, mm) * npihlfs;
      lcirc_rad -= npihlfs * PI / 2;
   }
   sinphi = sin(lcirc_rad);
   sinphisq = sinphi * sinphi;
   sinphicu = sinphi * sinphisq;
   cosphisq = square(cos(lcirc_rad));
   argb = 1 - mm * sinphisq;
   return (sinphi * carlsonRF(cosphisq, argb, 1) + (nn / 3.0)\
         * sinphicu * carlsonRJ(cosphisq, argb, 1, 1 - nn *\
         sinphisq) + kresult);
}
double jacobiphi(double mm
      , double elli_rad)
{
   double ai;
   double bb;
   double circ_rad;
   double geo_mean;
   double twon;
   double aa_arr[20];
   double cc_arr[20];
   long ii;
   if (mm <= 0.0) {
      circ_rad = taninv(sn(mm, elli_rad) / cn(mm, elli_rad));
   } else if (mm < 1.0) {
      bb = sqrt(1.0 - mm);
      aa_arr[0] = 1.0;
      cc_arr[0] = sqrt(mm);
      twon = 1.0;
      ii = 0;
      while (DBLEPS < fabs(cc_arr[ii] / aa_arr[ii])) {
         if (8 - 1 < ii) {
            break;
         }
         ai = aa_arr[ii];
         ii += 1;
         cc_arr[ii] = (ai - bb) / 2.0;
         geo_mean = sqrt(ai * bb);
         aa_arr[ii] = (ai + bb) / 2.0;
         bb = geo_mean;
         twon *= 2.0;
      }
      circ_rad = twon * aa_arr[ii] * elli_rad;
      while (0 < ii) {
         bb = cc_arr[ii] * sin(circ_rad) / aa_arr[ii];
         circ_rad = (sininv(bb) + circ_rad) / 2.0;
         ii -= 1;
      }
   } else {
      circ_rad = taninv(sn(mm, elli_rad) / cn(mm, elli_rad));
   }
   return (circ_rad);
}
double ell2cir(double mm
      , double elli_rad)
{
   return (jacobiphi(mm, elli_rad));
}
double cir2ell(double mm
      , double circ_rad)
{
   return (elliptic1i(mm, circ_rad));
}
double jacobicir(double mm)
{
   return (4.0 * elliptic2(mm) / sqrt(1.0 - mm));
}
double dn(double mm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double kk;
   double retvalu;
   if (mm < 0.0) {
      retvalu = -dn(-mm, elli_rad) + 2.0;
   } else if (mm < 1E-9) {
      snx = sin(elli_rad);
      retvalu = 1.0 - mm * snx * snx / 2.0;
   } else if (mm < 1.0 - 1E-9) {
      snx = sin(jacobiphi(mm, elli_rad));
      retvalu = sqrtx(1.0 - mm * snx * snx);
   } else if (mm <= 1.0) {
      ai = (1.0 - mm) / 4.0;
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      retvalu = 1.0 / csx + ai * (csx * snx + elli_rad);
   } else {
      kk = m2k(mm);
      retvalu = cn(1.0 / mm, elli_rad * kk);
   }
   return (retvalu);
}
double cn(double mm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double kk;
   double retvalu;
   if (mm < 0.0) {
      retvalu = -cn(-mm, elli_rad) + 2 * cos(elli_rad);
   } else if (mm < 1E-9) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = mm * (elli_rad - snx * csx) / 4.0;
      retvalu = csx + ai * snx;
   } else if (mm < 1.0 - 1E-9) {
      retvalu = cos(jacobiphi(mm, elli_rad));
   } else if (mm <= 1.0) {
      ai = (1.0 - mm) / 4.0;
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad);
   } else {
      kk = m2k(mm);
      retvalu = dn(1.0 / mm, elli_rad * kk);
   }
   return (retvalu);
}
double sn(double mm
      , double elli_rad)
{
   double ai;
   double csx;
   double snx;
   double kk;
   double retvalu;
   if (mm < 0.0) {
      retvalu = -sn(1.0 - mm, elli_rad) + sin(elli_rad) +\
            tanh(elli_rad);
   } else if (mm < 1E-9) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = mm * (elli_rad - snx * csx) / 4.0;
      retvalu = snx - ai * csx;
   } else if (mm < 1.0 - 1E-9) {
      retvalu = sin(jacobiphi(mm, elli_rad));
   } else if (mm <= 1.0) {
      ai = (1.0 - mm) / 4.0;
      csx = cosh(elli_rad);
      snx = sinh(elli_rad);
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx;
   } else {
      kk = m2k(mm);
      retvalu = sn(1.0 / mm, elli_rad * kk) / kk;
   }
   return (retvalu);
}
double cd(double mm
      , double elli_rad)
{
   return (cn(mm, elli_rad) / dn(mm, elli_rad));
}
double sd(double mm
      , double elli_rad)
{
   return (sn(mm, elli_rad) / dn(mm, elli_rad));
}
double nd(double mm
      , double elli_rad)
{
   return (1.0 / dn(mm, elli_rad));
}
double dc(double mm
      , double elli_rad)
{
   return (dn(mm, elli_rad) / cn(mm, elli_rad));
}
double nc(double mm
      , double elli_rad)
{
   return (1.0 / cn(mm, elli_rad));
}
double sc(double mm
      , double elli_rad)
{
   return (sn(mm, elli_rad) / cn(mm, elli_rad));
}
double ds(double mm
      , double elli_rad)
{
   return (dn(mm, elli_rad) / sn(mm, elli_rad));
}
double cs(double mm
      , double elli_rad)
{
   return (cn(mm, elli_rad) / sn(mm, elli_rad));
}
double ns(double mm
      , double elli_rad)
{
   return (1.0 / sn(mm, elli_rad));
}
long lv_ellpj(double mm
      , double elli_rad
      , double *ret_arr_p)
{
   double ai;
   double csx;
   double snx;
   double circ_rad;
   double twon;
   double junk_arr[4];
   if (mm < 0.0) {
      snx = -sn(1.0 - mm, elli_rad) + sin(elli_rad) +\
            tanh(elli_rad);
      csx = -cn(-mm, elli_rad) + 2 * cos(elli_rad);
      ret_arr_p[0] = snx;
      ret_arr_p[1] = csx;
      ret_arr_p[2] = -dn(-mm, elli_rad) + 2.0;
      ret_arr_p[3] = atan2(snx, csx);
   } else if (mm < 1E-9) {
      snx = sin(elli_rad);
      csx = cos(elli_rad);
      ai = mm * (elli_rad - snx * csx) / 4.0;
      ret_arr_p[0] = snx - ai * csx;
      ret_arr_p[1] = csx + ai * snx;
      ret_arr_p[2] = 1.0 - mm * snx * snx / 2.0;
      ret_arr_p[3] = elli_rad - ai;
   } else if (mm < 1.0 - 1E-9) {
      circ_rad = jacobiphi(mm, elli_rad);
      snx = sin(circ_rad);
      ret_arr_p[0] = snx;
      ret_arr_p[1] = cos(circ_rad);
      ret_arr_p[2] = sqrtx(1.0 - mm * snx * snx);
      ret_arr_p[3] = circ_rad;
   } else if (mm <= 1.0) {
      ai = (1.0 - mm) / 4.0;
      csx = cosh(elli_rad);
      snx = tanh(elli_rad);
      twon = csx * sinh(elli_rad);
      ret_arr_p[0] = snx + ai * (twon - elli_rad) / (csx * csx);
      ret_arr_p[3] = 2.0 * atan2(exp(elli_rad), 1.0) - PI /\
            2.0 + ai * (twon - elli_rad) / csx;
      ai *= snx / csx;
      ret_arr_p[1] = 1.0 / csx - ai * (twon - elli_rad);
      ret_arr_p[2] = 1.0 / csx + ai * (twon + elli_rad);
   } else {
      ai = m2k(mm);
      (void) lv_ellpj(1.0 / mm, elli_rad * ai, junk_arr);
      ret_arr_p[0] = junk_arr[0] / ai;
      ret_arr_p[1] = junk_arr[2];
      ret_arr_p[2] = junk_arr[1];
      ret_arr_p[3] = junk_arr[3];
   }
   return 0;
}
double sn__1(double mm
      , double elli_rad)
{
   double arr_arr[4];
   (void) lv_ellpj(mm, elli_rad, arr_arr);
   return (arr_arr[0]);
}
double cn__1(double mm
      , double elli_rad)
{
   double arr_arr[4];
   (void) lv_ellpj(mm, elli_rad, arr_arr);
   return (arr_arr[1]);
}
double dn__1(double mm
      , double elli_rad)
{
   double arr_arr[4];
   (void) lv_ellpj(mm, elli_rad, arr_arr);
   return (arr_arr[2]);
}
double nom(double mm)
{
   return (exp(-PI * elliptic1(1.0 - mm) / elliptic1(mm)));
}
double theta1(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double sig;
   double ang;
   double ang_inc;
   double qq;
   sig = 1;
   qq = nom(mm);
   sum_curr = 0;
   ang = zz;
   ang_inc = 2 * zz;
   nn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, square(nn + 0.5)) * sin(ang);
      ang += ang_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (2 * sum_curr);
}
double theta2(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double ang;
   double ang_inc;
   double qq;
   qq = nom(mm);
   sum_curr = 0;
   ang = zz;
   ang_inc = 2 * zz;
   nn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, square(nn + 0.5)) * cos(ang);
      ang += ang_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (2 * sum_curr);
}
double theta3(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double ang;
   double ang_inc;
   double qq;
   qq = nom(mm);
   sum_curr = 0;
   ang = 2 * zz;
   ang_inc = ang;
   nn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, nn * nn) * cos(ang);
      ang += ang_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (1 + 2 * sum_curr);
}
double theta4(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double ang;
   double ang_inc;
   double qq;
   double sig;
   sig = 1;
   qq = nom(mm);
   sum_curr = 0;
   ang = 2 * zz;
   ang_inc = ang;
   nn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, nn * nn) * cos(ang);
      ang += ang_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (1 + 2 * sum_curr);
}
double nevillethetac(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double qq;
   double km;
   double cos_of;
   double cos_inc;
   km = elliptic1(mm);
   qq = exp(-PI * elliptic1(1.0 - mm) / km);
   sum_curr = 0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / (2 * km);
   nn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, nn * nn + nn) * cos(cos_of);
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (sum_curr * sqrt(TAU * sqrt(qq / mm) / km));
}
double nevillethetad(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double qq;
   double km;
   double cos_of;
   double cos_inc;
   km = elliptic1(mm);
   qq = exp(-PI * elliptic1(1.0 - mm) / km);
   sum_curr = 0;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / km;
   nn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += pow(qq, nn * nn) * cos(cos_of);
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return ((1 + 2 * sum_curr) * sqrt(TAU / km) / 2.0);
}
double nevillethetan(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double qq;
   double km;
   double sig;
   double cos_of;
   double cos_inc;
   km = elliptic1(mm);
   qq = exp(-PI * elliptic1(1.0 - mm) / km);
   sum_curr = 0;
   sig = -1;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / km;
   nn = 1;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, nn * nn) * cos(cos_of);
      cos_of += cos_inc;
      sig = -sig;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return ((1 + 2 * sum_curr) * sqrt(TAU / (km * sqrt(1.0 -\
         mm))) / 2.0);
}
double nevillethetas(double mm
      , double zz)
{
   double sum_curr;
   double sum_prev;
   long nn;
   double qq;
   double km;
   double sig;
   double cos_of;
   double cos_inc;
   km = elliptic1(mm);
   qq = exp(-PI * elliptic1(1.0 - mm) / km);
   sum_curr = 0;
   sig = 1;
   cos_inc = PI * zz / km;
   cos_of = PI * zz / (2 * km);
   nn = 0;
   for (;;) {
      sum_prev = sum_curr;
      sum_curr += sig * pow(qq, nn * nn + nn) * sin(cos_of);
      sig = -sig;
      cos_of += cos_inc;
      if (iseq(sum_curr, sum_prev)) {
         break; // KQS
      }
      nn += 1;
   }
   return (sum_curr * sqrt(TAU * sqrt(qq / (mm * (1 - mm))) /\
         km));
}
double ellipsearea(double aa
      , double bb)
{
   return (PI * aa * bb);
}
double ellipseecc(double aa
      , double bb)
{
   double rati;
   rati = ratio(aa, bb);
   return (sqrt(1.0 - rati * rati));
}
double ellipsem(double aa
      , double bb)
{
   double rati;
   rati = ratio(aa, bb);
   return (1.0 - rati * rati);
}
double ellipseflatness(double aa
      , double bb)
{
   return (1.0 - ratio(aa, bb));
}
double flat2ecc(double flt)
{
   return (sqrt(flt * (2.0 - flt)));
}
double ecc2flat(double ecc)
{
   return (1.0 - sqrt(1.0 - ecc * ecc));
}
double ellipsecir__1(double aa
      , double bb)
{
   double major_axis;
   double minor_axis;
   double rati;
   if (aa < bb) {
      major_axis = bb;
      minor_axis = aa;
   } else {
      major_axis = aa;
      minor_axis = bb;
   }
   rati = minor_axis / major_axis;
   return (4.0 * major_axis * elliptic2(1.0 - rati * rati));
}
double ellipsecir(double aa
      , double bb)
{
   double xx;
   double yy;
   double mm;
   double suma;
   double temp;
   long ii;
   double retvalu;
   if (aa < bb) {
      xx = bb;
      yy = aa;
   } else {
      xx = aa;
      yy = bb;
   }
   if (yy <= sqrt(DBLEPS) * xx) {
      retvalu = 4.0 * xx;
   } else {
      suma = 0.0;
      mm = 1.0;
      ii = 0;
      for (;;) {
         temp = (xx + yy) / 2.0;
         yy = sqrt(xx * yy);
         xx = temp;
         mm += mm;
         suma += mm * square(xx - yy);
         if (iseq(xx, yy)) {
            break; // KQS
         }
         ii += 1;
         if (20 <= ii) {
            break; // KQS
         }
      }
      retvalu = PI * (square(aa + bb) - suma) / (xx + yy);
   }
   return (retvalu);
}
double epdf(double minvalx
      , double maxvalx
      , long nn
      , const double *data_arr_pc
      , long mm
      , double *ret_pdf_arr_p)
{
   long ii;
   long indi;
   double gap_size;
   double retvalu;
   double inc;
   for (ii = 0; ii <= mm - 1; ii += 1) {
      ret_pdf_arr_p[ii] = 0;
   }
   inc = 1.0 / nn;
   gap_size = (maxvalx - minvalx) / (mm - 1);
   retvalu = 0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      if (data_arr_pc[ii] < minvalx) {
         ret_pdf_arr_p[0] += inc;
      } else if (data_arr_pc[ii] < maxvalx) {
         indi = ceil((data_arr_pc[ii] - minvalx) / gap_size);
         ret_pdf_arr_p[indi] += inc;
      } else {
         retvalu += inc;
      }
   }
   return (retvalu);
}
double ecdf(double minvalx
      , double maxvalx
      , long nn
      , const double *data_arr_pc
      , long mm
      , double *ret_cdf_arr_p)
{
   long ii;
   (void) epdf(minvalx, maxvalx, nn, data_arr_pc, mm,\
         ret_cdf_arr_p);
   for (ii = 1; ii <= mm - 1; ii += 1) {
      ret_cdf_arr_p[ii] += ret_cdf_arr_p[ii - 1];
   }
   return (ret_cdf_arr_p[mm - 1]);
}
double epdf2cdf(long nn
      , const double *pdf_arr_pc
      , double *ret_cdf_arr_p)
{
   long ii;
   double sumcurr;
   sumcurr = 0.0;
   for (ii = 0; ii <= nn - 1; ii += 1) {
      sumcurr += pdf_arr_pc[ii];
      ret_cdf_arr_p[ii] = sumcurr;
   }
   return (ret_cdf_arr_p[nn - 1]);
}
static long lv_search_target = 0;
long search_check(long gg)
{
   // local-use C lv_search_target;
   long retvalu;
   if (gg < lv_search_target) {
      retvalu = -1;
   } else if (lv_search_target < gg) {
      retvalu = 1;
   } else {
      retvalu = 0;
   }
   return (retvalu);
}
long search_search(long gg)
{
   // local-use C lv_search_target;
   long curr;
   long delta;
   long result;
   lv_search_target = gg;
   curr = 1;
   for (delta = 0; delta <= INTMAX; delta += 1) {
      result = search_check(curr);
      if (0 <= result) {
         break;
      }
      curr += curr;
   }
   if (4 <= curr) {
      delta = curr / 4;
      while (1 <= delta) {
         if (0 < result) {
            curr -= delta;
         } else if (result < 0) {
            curr += delta;
         } else {
            break;
         }
         result = search_check(curr);
         if (delta < 2) {
            if (0 < result && 1 < curr) {
               curr -= 1;
            }
            break;
         }
         delta /= 2;
      }
   }
   return (curr);
}
double blackbody(double wavelength
      , double temperk)
{
   double hc;
   double hc_kt;
   double retvalu;
   if (wavelength <= 0.0 || temperk <= 0.0) {
      retvalu = 0.0;
   } else {
      hc = PLANCK * LIGHT;
      hc_kt = hc / (BOLTZMANN * temperk);
      retvalu = 2.0 * hc * LIGHT / (pow(wavelength, 5) *\
            (exp(hc_kt / wavelength) - 1));
   }
   return (retvalu);
}
double blackbodymode(double temperk)
{
   double hc_kt;
   double retvalu;
   if (temperk <= 0.0) {
      retvalu = 0.0;
   } else {
      hc_kt = PLANCK * LIGHT / (BOLTZMANN * temperk);
      retvalu = hc_kt / (5 + wp(-5 * exp(-5)));
   }
   return (retvalu);
}
double blackbodypower(double temperk)
{
   return (STEFAN * pow(temperk, 4.0));
}
double pendulum(double len_m
      , double ang_offset_rad
      , double grav)
{
   return (TAU * sqrt(len_m / grav) / agmean(1,\
         cos(ang_offset_rad / 2.0)));
}