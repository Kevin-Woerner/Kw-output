#    Copyright (C) 2021 by Kevin D. Woerner
##-# =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
##-# =KDW= ############# SOURCE $KWROOT/codekdw/kw-lib/Kw.fwipp #############
##-# =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
##-# =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
# 2021-05-14 kdw  For Changelog, See File Kw.varylog
package Kw;
use Time::HiRes qw();
use POSIX       qw();
use vars qw(@EXPORT @EXPORT_OK %EXPORT_TAGS);
use Exporter    qw(import);
@EXPORT = ();
@EXPORT_OK = ( qw(
   AAABATTERY AAABATTERY_CHARGE AAABATTERY_ENERGY AAABATTERY_VOLTAGE
   AABATTERY AABATTERY_CHARGE AABATTERY_ENERGY AABATTERY_VOLTAGE ACCELERATION
   ACRE ACTION AH ALPHA ALPHASQRT ALPHA_ERR ALPHA_REC ALPHA_REC_ERR AMOUNT
   AMP AMPERE AMU AMU_ERR ANGLE APERY ARCDEG ARCDEGREE ARCGRAD ARCMIN
   ARCMINUTE ARCRADIAN ARCSEC ARCSECOND ARCTURN ARE AREA ASTRONOMICALUNIT ATM
   ATMOSPHERE ATMOSPHERE_ERR ATOMICMASSUNIT ATOMICMASSUNIT_ERR ATTO AU AU_ERR
   AVOGADRO AVOGADRO_ERR AVOGADRO_REC AVOGADRO_REC_ERR BAN BAR BARN BARREL
   BASEBALL_MASS BASEBALL_RADIUS BASKETBALL_MASS BASKETBALL_RADIUS
   BEKENSTEINENTROPY BEKENSTEININFORMATION BHENTROPY_AREA BHMASS2POWER
   BHMASS2_AREA BHMASS2_DENSITY BHMASS2_ENTROPY BHMASS3_LIFETIME BHMASSTEMP
   BHMASS_RADIUS BHRADIUS2DENSITY BIT BLUE_ENERGY BLUE_Hz BLUE_WAVELENGTH
   BOLTZMANN BOLTZMANN_ERR BOLTZMANN_REC BOLTZMANN_REC_ERR BTU BTU_IT BTU_TH
   BUSHEL CAL CALORIE CAL_IT CAL_TH CANDELA CAPACITANCE CARAT CARBATTERY
   CARBATTERY_CHARGE CARBATTERY_ENERGY CARBATTERY_VOLTAGE CBATTERY
   CBATTERY_CHARGE CBATTERY_ENERGY CBATTERY_VOLTAGE CENTI CHAIN CHARGE
   CONDUCTANCE COULOMB COULOMBCONST COULOMBCONST_ERR CUP CURRENT DALTON
   DALTON_ERR DAY DBATTERY DBATTERY_CHARGE DBATTERY_ENERGY DBATTERY_VOLTAGE
   DBLEPS DBLMAN DBLMAX DBLMAXLN DBLSIG DECA DECI DEGC DEGF DEGR DENSITY
   DIME_DIAMETER DIME_HEIGHT DIME_MASS DISTANCE DIT DRYGALLON E EARTH_AGE
   EHF_ENERGY EHF_Hz EHF_WAVELENGTH EINSTEIN EINSTEIN_ERR ELECTRIC
   ELECTRIC_ERR ELECTRONVOLT ELECTRON_CHARGE ELECTRON_CHARGE_ERR
   ELECTRON_MASSA ELECTRON_MASSA_ERR ELEMENTARYCHARGE ELEMENTARYCHARGE_ERR
   ELEVATIONMAX ELEVATIONMIN ENERGY EPSILON0 EPSILON0_ERR ERG EULER
   EUV_ENERGY EUV_Hz EUV_WAVELENGTH EXA EXBI Ein FARAD FARADAY FARADAYCONST
   FARADAYCONST_ERR FARADAYCONST_REC FARADAYCONST_REC_ERR FARADAY_ERR
   FARADAY_REC FARADAY_REC_ERR FEET FEIGENBAUM FEMTO FINESTRUCTURE
   FINESTRUCTURE_ERR FINESTRUCTURE_REC FINESTRUCTURE_REC_ERR FIR_ENERGY
   FIR_Hz FIR_WAVELENGTH FLICK FLOZ FLTEPS FLTMAN FLTMAX FLTSIG FOE FOOT
   FORCE FREQUENCY FT FURLONG G GALACTICCENTER GALLON GAMMAMIN GAMMA_ENERGY
   GAMMA_Hz GAMMA_WAVELENGTH GAS GASCONST GASCONST_ERR GASCONST_REC
   GASCONST_REC_ERR GAS_ERR GAS_REC GAS_REC_ERR GIANTIMPACT GIBI GIGA
   GOLFBALL_MASS GOLFBALL_RADIUS GRAD GRAIN GRAM GRAVITATION GRAVITATIONIERS
   GRAVITATIONNASA GRAVITATION_ERR GRAVITATION_REC GRAVITATION_REC_ERR
   GRAVITY GRAVITY_ERR GREEN_ENERGY GREEN_Hz GREEN_WAVELENGTH GYEAR
   GYEAR_AT_0J2K G_ERR HAND HART HARTLEY HBAR HBAR_ERR HECTARE HECTO HENRY
   HERTZ HF_ENERGY HF_Hz HF_WAVELENGTH HI HI_ENERGY HI_ERR HI_Hz
   HI_WAVELENGTH HORSE HORSEPOWER HOUR HP HPMETRIC HUBBLE HUBBLERADIUS
   HUBBLE_ERR HX_ENERGY HX_Hz HX_WAVELENGTH HYDROGENLINE HYDROGENLINE_ERR Hz
   INCH INDUCTANCE INHG INTMAX J2K J2KDAY JCENTURY JDAY JDSEC_AT_0GREGORIAN
   JDSEC_AT_0J2K JDSEC_AT_0KWT JDSEC_AT_0UET JEWISH_FIRST_MONTH JOSEPHSON
   JOSEPHSON_ERR JOULE JYEAR KCD KCD_ERR KELVIN KG KGF KGFM KIBI KILO
   KILOGRAM KPGBOUNDARY KWT K_AT_0TEMPC K_AT_0TEMPF K_AT_0TEMPR LB LBF LBFFT
   LBFIN LENGTH LF_ENERGY LF_Hz LF_WAVELENGTH LIFE_AGE LIGHT LIGHTYEAR
   LIGHT_ERR LIGHT_REC LIGHT_REC_ERR LINK LITER LITRE LUMEN LUX
   LX_ELLIPTIC_EPS LX_HALAQIM LX_SHC_SHIFTSHIFT LX_SHC_STEPSHIFT MACH
   MAGNETIC MAGNETICFLUX MAGNETICINDUCTION MAGNETIC_ERR MARATHON MASS MEBI
   MEGA METER METRE MF_ENERGY MF_Hz MF_WAVELENGTH MICRO MICROWAVE_ENERGY
   MICROWAVE_Hz MICROWAVE_WAVELENGTH MILE MILKYWAY_AGE MILKYWAY_DAY
   MILKYWAY_MASS MILKYWAY_RADIUS MILLI MINUTE MIR_ENERGY MIR_Hz
   MIR_WAVELENGTH MM MMHG MOLARMASS MOLARMASS_ERR MOLE MONTHS_IN_YEAR
   MOON_MONTH MPH MPS MPSS MU0 MU0_ERR NANO NAT NEWTON NICKEL_DIAMETER
   NICKEL_HEIGHT NICKEL_MASS NINEVOLT NINEVOLTBATTERY NINEVOLTBATTERY_CHARGE
   NINEVOLTBATTERY_ENERGY NINEVOLTBATTERY_VOLTAGE NINEVOLT_CHARGE
   NINEVOLT_ENERGY NINEVOLT_VOLTAGE NIR_ENERGY NIR_Hz NIR_WAVELENGTH
   NPBOUNDARY NUV_ENERGY NUV_Hz NUV_WAVELENGTH Nm_PER_lbfin OHM ORANGE_ENERGY
   ORANGE_Hz ORANGE_WAVELENGTH OUNCE OZ OZFIN PA PARSEC PEBI PECK
   PENNY_DIAMETER PENNY_HEIGHT PENNY_MASS PERCENT PERMILLE PETA PHI
   PHONEBATTERY PHONEBATTERY_CHARGE PHONEBATTERY_ENERGY PHONEBATTERY_VOLTAGE
   PI PICO PINGPONGBALL_MASS PINGPONGBALL_RADIUS PINT PLANCK PLANCKBAR
   PLANCKBAR_ERR PLANCKCHARGE PLANCKENERGY PLANCKFREQUENCY PLANCKLENGTH
   PLANCKMASS PLANCKTEMP PLANCKTIME PLANCK_ERR PLANCK_REC PLANCK_REC_ERR
   POINT POUND POWER PPB PPM PPQ PPT PRESSURE PROTON_RADIUS PROTON_RADIUS_ERR
   PROXIMACENTAURI PSI PTRBOUNDARY QUART QUARTER_DIAMETER QUARTER_HEIGHT
   QUARTER_MASS RAD RADIAN RED_ENERGY RED_Hz RED_WAVELENGTH RESISTANCE RPH
   RPM RPS RYDBERG RYDBERG_ENERGY RYDBERG_ERR RYDBERG_Hz RYDBERG_REC
   RYDBERG_REC_ERR RYDBERG_WAVELENGTH SECOND SHANNON SHF_ENERGY SHF_Hz
   SHF_WAVELENGTH SI16MAX SI16MIN SI32MAX SI32MIN SIEMENS SOCCERBALL_MASS
   SOCCERBALL_RADIUS SOFTBALL_MASS SOFTBALL_RADIUS SOLARCONSTANT SOLID_ANGLE
   SPECIFICHEAT SPEED SPHERESURFACE SQDEG SQUAREDEGREE STANDARDATMOSPHERE
   STANDARDGRAVITY STEFAN STEFAN_ERR STERADIAN STONE SURVEYFOOT SXX_ENERGY
   SXX_Hz SXX_WAVELENGTH SX_ENERGY SX_Hz SX_WAVELENGTH TAU TBLSP TEBI
   TEMPERATURE TEMPF_AT_0TEMPC TENLN TENNISBALL_MASS TENNISBALL_RADIUS TERA
   TESLA THF_ENERGY THF_Hz THF_WAVELENGTH TIME TON TONNE TORR TRJBOUNDARY TSP
   TT_AT_0TAI TT_AT_0UT1 TURN TWOLN TWOSQRT Tn UAMU UAMU_ERR UET UHF_ENERGY
   UHF_Hz UHF_WAVELENGTH UI16MAX UI32MAX UNITGM UNIVERSE_AGE UNIVERSE_MASS
   UNIVERSE_RADIUS UVA_ENERGY UVA_Hz UVA_WAVELENGTH UVB_ENERGY UVB_Hz
   UVB_WAVELENGTH UVC_ENERGY UVC_Hz UVC_WAVELENGTH UVPV Un VHF_ENERGY VHF_Hz
   VHF_WAVELENGTH VIOLET_ENERGY VIOLET_Hz VIOLET_WAVELENGTH VISCOSITY VOLT
   VOLTAGE VOLUME VONKLITZING VONKLITZING_ERR WATT WEBER WEEK W_PER_Hp YARD
   YELLOWGREEN_ENERGY YELLOWGREEN_Hz YELLOWGREEN_WAVELENGTH YELLOW_ENERGY
   YELLOW_Hz YELLOW_WAVELENGTH YOBI YOCTO YOTTA ZEBI ZEPTO ZETTA a2k a2m
   agcmean aghmean agmean agmean1 agmean1inv agmean__1 agmeaninva agmeaninvg
   ahmean ahmean1 almean almean1 amean amean1 aqmean aqmean1 atan2d atan2h
   atan2t atan2u atothenmodp atothenmodx b2m ballot ballots bankers
   base_out_fix_print base_out_print base_outf_print bell bellx benford_cdf
   benford_pdf benford_rand bernoulli bernoullid bernoullin bessI0 bessI1
   bessIn bessIn_ps bessJ0 bessJ1 bessJn bessJn_ps bessJv bessK0 bessK1
   bessKn bessY0 bessY1 bessY1__1 bessYn bessYn_ps bessYv bess_jn bess_yn
   beta beta_cdf beta_pdf beta_quantile beta_rand betainc betainc__1
   bharea_to_mass bhdensity_to_mass bhentropy_to_mass bhlifetime_to_mass
   bhmass_to_area bhmass_to_density bhmass_to_entropy bhmass_to_lifetime
   bhmass_to_power bhmass_to_radius bhmass_to_tempk bhpower_to_mass
   bhradius_to_mass bhtempk_to_mass binomial binomial_cdf binomial_pdf
   binomial_rand binomialx birthday birthdayinv birthdayx bits_assign
   bits_count bits_get bits_ls1b bits_ls1bpos bits_ms1b bits_ms1bpos bits_set
   bitshiftl bitshiftr bitwiseand bitwisenot bitwiseor bitwisexor bkbn bkn
   blackbodyf blackbodyf_pdf blackbodyl blackbodyl_pdf blackbodymode
   blackbodypower c c_ERR c_REC c_REC_ERR cantor cantorll cantorul cantorxx
   carlsonRC carlsonRD carlsonRF carlsonRJ carmichael catalan cauchy_cdf
   cauchy_pdf cauchy_quantile cauchy_rand cbrt cd ceil ceil2 cent2ratio
   chebeval chisqr_cdf chisqr_pdf chisqr_rand cir2ell circle_get circle_solve
   clip clip2 clip2x clockhour clockmin clocksec clockstdev clocksum cn cn__1
   cnv_dbl2si16 comb combination combx contfra_print contfrac_print
   contfracd_print contraharmonic corr_delete corr_handlex corr_handley
   corr_new corr_update corrcorr corrslope corrstderr corry0 cos__1 cosd
   cosdinv cosh coshinv cosintegral cosinv cosm1 cosm1__1 cossin_ev cost
   costinv cot cotd cotdinv coth cothinv cotinv cott cottinv cs csc cscd
   cscdinv csch cschinv cscinv csct csctinv ctz cu cube cuberoot d1diamond_d2
   d1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1
   d2ur_d1 date_easter date_pesach date_rosh_hashanah day2dhms day2dhmsinv
   day2hour days_in_month dc ddist defined deg2dms deg2rad deg2sec deg2tur
   digamma digamma__1 digammainv dist divi dlog dlog1 dlogx dms2deg dms2rad
   dn dn__1 doomsday ds dvCs_ENERGY dvCs_ERR dvCs_Hz dvCs_WAVELENGTH eV
   ecc2flat ecdf ell2cir ellipsearea ellipsecir ellipsecir__1 ellipseecc
   ellipseflatness ellipsem ellipsen ellipsoid_destination ellipsoid_distance
   ellipsoid_surface ellipsoid_volume elliptic1a elliptic1ia elliptic1ik
   elliptic1im elliptic1im__1 elliptic1k elliptic1m elliptic1m__1
   elliptic1m__2 elliptic2a elliptic2ia elliptic2ik elliptic2im
   elliptic2im__1 elliptic2k elliptic2m elliptic2m__1 elliptic3a elliptic3ia
   elliptic3ik elliptic3im elliptic3im__1 elliptic3k elliptic3m elliptic3m__1
   ellipticE ellipticEi ellipticF ellipticK ellipticP ellipticPi entringer
   epdf epdf2cdf erf erf__1 erf__2 erf__3 erf__4 erfc erfcinv erfcx erfcxinv
   erfinv eta euler__1 eulerian eulerphi eulerx exp__1 exp__2 exp_cdf exp_pdf
   exp_quantile exp_rand expintegral1 expintegrali expintegraln expm1 f11 f21
   f_cdf f_quantile f_quantile__1 fac facinv factor factor_print factorial
   factorialdouble factorialinv factorialt fibo fibo3 fibox fiboxinv fit_ls
   fit_ls0 fit_minmax fit_minmax0 fit_poly fitx_minmax flat2ecc floor floor2
   fmod fmod2 fmods fmodu fmody fmul frac fubini fusc fvad fvoa g2jewish
   gamma_cdf gamma_pdf gamma_rand gau_cdf gau_pdf gau_quantile gau_rand gcd
   gcda gd gdinv geo_cdf geo_pdf geo_quantile geo_rand ghmean ghmean1
   ghmean1inv glmean glmean1 gmean gmean1 gompertz_cdf gompertz_pdf
   gompertz_quantile gompertz_rand gqmean gqmean1 gr_mass gr_massgm gr_time
   gr_timegm gr_timegm_dr great_circle_distance h h_ERR h_REC h_REC_ERR
   has_primitiveroot has_primitiveroot_f haversin heaviside heronianmean
   heronianmean1 hlmean hlmean1 hmean hmean1 hms2day hn hn__1 hnm horner
   hour2day hqmean hqmean1 hypot hypot1 hypot1inv hypot3 id ifzero int_cdf
   int_pdf int_quantile int_rand ints_rand iround isalmostequal isbetween
   isbetweenx iseq iseven isfloorsame isge isgt isint isjewish8short
   isjewish9short isjewishleap isle isleapyear islt ismagic ismult ismultl
   isneg isnegint isneq isodd ispos isposint ispractical ispractical_f
   isprime isprimitiveroot issignsame issquarefree issquarefree_f isss
   iswithin iszero j2k2dow j2k2jd j2k2kwt j2k2uet j2k2ymdhms jacobicir
   jacobiphi jd264_print jd2dow jd2j2k jd2kwt jd2uet jd2ymdhms jd2ymdhmsinv
   jewish2g jewish2jd jewish2jdx jewish_monthbegin jewish_monthlength
   jewish_months_in_year jewish_yearlength jewishymd2jd k2a k2m k2tempc
   k2tempf k2tempr kB kB_ERR kB_REC kB_REC_ERR kevy_print kgfm_PER_lbfin
   ks_a_cdf ks_b_cdf ks_cdf ks_quantile kwt2j2k kwt2jd kwt2uet l10 lbeta
   lbfft_PER_lbfin lbfinrpm_PER_Hp lcam lcams lcantim lcm lcombx lg lgamma
   lgamma__1 lgamma__2 lgammainv ligamma ligammainv lix lixinv lmean lmean1
   ln ln1p ln__1 ln__2 lns loanpayment loanrate loanvalue log10 log2
   logintegral logistic_cdf logistic_pdf logistic_quantile logistic_rand logx
   lpermx lqmean lqmean1 lucas lucasx m2a m2b m2k magicnot magicset max2
   maxabs maxabs2 maxabsoffset maxi maxmin maxwell_boltzmann_cdf
   maxwell_boltzmann_pdf maxwell_juttner_pdf mb_cdf mb_pdf mean mertens min2
   minabs minabs2 minabsoffset mini minkowski mobius mobius_f modf mods
   modulo n2comb n2comb_print n2perm n2perm_print n2primish nbd_cdf nbd_pdf
   nbd_rand nc nd neg nevillethetac nevillethetad nevillethetan nevillethetas
   nom normal_cdf normal_cdf__1 normal_pdf normal_quantile normal_quantile__1
   normal_rand ns nthroot__1 num2char_print ozfin_PER_lbfin parabola_get
   parabola_realroots parabola_roots parabola_solve parabola_xaxis
   parabola_yextrema pareto_cdf pareto_pdf pareto_quantile pareto_rand
   partition partitionq pcf pendulum perm permutation permx pfg pfl pmean
   pochhammer poi_cdf poi_pdf poi_quantile poi_rand polya_cdf polya_pdf
   polya_rand polycnum polynum pow pow10 pow2 powi prime0 prime0_f prime1
   primecount primecountx primenext primenth primenth__1 primeprev
   primitiveroot print_array pvad pvoa qmean qmean1 rad2deg rad2dms rad2dms2
   rad2sec rad2tur rand_init rand_init_array randd randl ratio ratio2cent
   reci reimann remquou repetendlen rligamma rms round round2 roundy rto125
   rtoi rtomsd rtoz ruigamma sba sc sd search_check search_search sec sec2deg
   sec2dhms sec2rad sec2tur secd secdinv sech sechinv secinv sect sectinv
   shc_shft2steps shc_shftpoles2steps shc_steps2shft shc_steps2shftinv sigma
   sigma0 sigma0_f sigma1 sigma1_f sigma_f sigmoid sigmoid3 sigmoid3d
   sigmoidinv sign sin__1 sinc sinc__1 sincc sincinv sind sindinv sinh
   sinhinv sinintegral sininv sint sintinv smooth sn sn__1 sphere_d
   sphere_distance spread2stdev sq sqinv sqrt__1 sqrt__2 sqrt__3 sqrtx
   sqrtxp1m1 square squareroot sr_mass sr_time stair stdev2spread stirling1
   stirling2 stts_copy stts_delete stts_downdate stts_init stts_initx
   stts_new stts_newx stts_reset stts_scale stts_shift stts_update
   stts_update2 stts_updatex sttscount sttsmagic sttsmax sttsmean sttsmin
   sttsmsq sttsspread sttsstdev sttsstdevmean sttssum sttsvar supercatalan
   t_cdf t_cdf__1 t_pdf t_quantile t_quantile__1 tan tand tandinv tanh
   tanhinv taninv taninv3 tant tantinv tempc2k tempc2tempf tempf2k
   tempf2tempc tempr2k tetracnum tetranum tgamma tgamma__1 tgamma__2
   tgamma__3 tgamma__stirling tgammadouble tgammainv theta1 theta2 theta3
   theta4 timee topyh topyh1 totient totient_f trap_cdf trap_pdf
   trap_quantile trap_rand tri tri_cdf tri_pdf tri_quantile tri_rand triinv
   trip trunc tur2deg tur2rad tur2sec uet2j2k uet2jd uet2kwt uigamma
   uigamma__1 uigammainv uni_cdf uni_pdf uni_quantile uni_rand variance
   versin wm wminv wp wpinv ymd2dow ymd2doy ymd2j2k ymd2j2k__1 ymd2jd
   ymdhms2j2k ymdhms2jd ymdhms_get zag zeta zeta_cdf zeta_pdf zig zigzag
   zipf_cdf zipf_pdf zipf_quantile zipf_rand znorder znorder__1
)); # End of EXPORT_OK
%EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );
sub floor($ );
sub ceil($ );
sub floorl($ );
sub ceill($ );
sub tan($ );
sub pow($$ );
sub timee();
sub id($ );
sub reci($ );
sub neg($ );
sub square($ );
sub sq($ );
sub sqinv($ );
sub cube($ );
sub cu($ );
sub sign($ );
sub stair($ );
sub heaviside($ );
sub divi($$$ );
sub clip($ );
sub clip2($$$ );
sub clip2x($$$ );
sub sba($ );
sub ratio($$ );
sub horner($$\@ );
sub chebeval($$\@ );
sub ln($ );
sub lg($ );
sub log10($ );
sub logx($$ );
sub l10($ );
sub log2($ );
sub fmod($$ );
sub modf($\@ );
sub fmody($$ );
sub fmodu($$ );
sub remquou($$\@ );
sub fmods($$ );
sub pow2($ );
sub pow10($ );
sub sigmoid($ );
sub sigmoidinv($ );
sub sigmoid3($$$ );
sub taninv3($$$ );
sub sigmoid3d($$$ );
sub sqrtx($ );
sub smooth($ );
sub hypot($$ );
sub hypot1($ );
sub hypot1inv($ );
sub hypot3($$$ );
sub topyh($$ );
sub topyh1($ );
sub cnv_dbl2si16($ );
sub k2tempc($ );
sub tempc2k($ );
sub k2tempf($ );
sub tempf2k($ );
sub k2tempr($ );
sub tempr2k($ );
sub tempf2tempc($ );
sub tempc2tempf($ );
sub iszero($ );
sub iseven($ );
sub isodd($ );
sub ismult($$ );
sub ismultl($$ );
sub isgt($$ );
sub islt($$ );
sub isge($$ );
sub isle($$ );
sub ispos($ );
sub isneg($ );
sub iseq($$ );
sub isneq($$ );
sub isint($ );
sub isnegint($ );
sub isposint($ );
sub ifzero($$$ );
sub isalmostequal($$$ );
sub iswithin($$$ );
sub isbetweenx($$$ );
sub isbetween($$$ );
sub isleapyear($ );
sub isss($$ );
sub issignsame($$ );
sub isfloorsame($$$ );
sub magicset( );
sub magicnot( );
sub ismagic($ );
sub rtoz($ );
sub rtoi($ );
sub bankers($ );
sub round($ );
sub iround($ );
sub round2($$ );
sub roundy($$$ );
sub rtomsd($$ );
sub rto125($ );
sub floor2($$ );
sub ceil2($$ );
sub fmod2($$$ );
sub frac($ );
sub trunc($ );
sub fmul($$ );
sub dist($$ );
sub ddist($$ );
sub sinc($ );
sub sincinv($ );
sub sincc($ );
sub versin($ );
sub haversin($ );
sub tur2deg($ );
sub deg2tur($ );
sub tur2rad($ );
sub rad2tur($ );
sub tur2sec($ );
sub sec2tur($ );
sub rad2deg($ );
sub deg2rad($ );
sub rad2sec($ );
sub sec2rad($ );
sub deg2sec($ );
sub sec2deg($ );
sub rad2dms($ );
sub rad2dms2($ );
sub dms2rad($ );
sub deg2dms($ );
sub dms2deg($ );
sub cot($ );
sub sec($ );
sub csc($ );
sub sininv($ );
sub cosinv($ );
sub taninv($ );
sub cotinv($ );
sub secinv($ );
sub cscinv($ );
sub sinh($ );
sub cosh($ );
sub tanh($ );
sub coth($ );
sub sech($ );
sub csch($ );
sub gd($ );
sub gdinv($ );
sub sinhinv($ );
sub coshinv($ );
sub tanhinv($ );
sub cothinv($ );
sub sechinv($ );
sub cschinv($ );
sub atan2h($$ );
sub atan2u($$ );
sub sind($ );
sub sindinv($ );
sub cosd($ );
sub cosdinv($ );
sub tand($ );
sub tandinv($ );
sub cotd($ );
sub cotdinv($ );
sub secd($ );
sub secdinv($ );
sub cscd($ );
sub cscdinv($ );
sub atan2d($$ );
sub sint($ );
sub sintinv($ );
sub cost($ );
sub costinv($ );
sub tant($ );
sub tantinv($ );
sub cott($ );
sub cottinv($ );
sub sect($ );
sub sectinv($ );
sub csct($ );
sub csctinv($ );
sub atan2t($$ );
sub sqrtxp1m1($ );
sub ln1p($ );
sub expm1($ );
sub cosm1($ );
sub lns($ );
sub trip($ );
sub lf_cbrtx_gt_zero($ );
sub cbrt($ );
sub cuberoot($ );
sub squareroot($ );
sub print_array($\@ );
sub lf_continued_fraction($$ );
sub contfra_print($ );
sub contfrac_print($ );
sub contfracd_print($ );
sub num2char_print($ );
sub base_out_print($$ );
sub base_out_fix_print($$$ );
sub base_outf_print($$ );
sub fvoa($$$ );
sub fvad($$$ );
sub pvoa($$$ );
sub pvad($$$ );
sub loanvalue($$$ );
sub loanpayment($$$ );
sub loanrate($$$ );
sub f21($$$$ );
sub f11($$$ );
sub lf_lambert_iter($$ );
sub wp($ );
sub wm($ );
sub wpinv($ );
sub wminv($ );
sub sinintegral($ );
sub cosintegral($ );
sub Ein($ );
sub expintegrali($ );
sub expintegral1($ );
sub expintegraln($$ );
sub logintegral($ );
sub carlsonRF($$$ );
sub carlsonRC($$ );
sub carlsonRJ($$$$ );
sub carlsonRD($$$ );
sub powi($$ );
sub atothenmodp($$$ );
sub atothenmodx($$$ );
sub ctz($ );
sub gcd($$ );
sub gcda($\@ );
sub lcm($$ );
sub lcam($$ );
sub lcams($$ );
sub lcantim($$ );
sub factor($\@ );
sub modulo($$ );
sub mods($$ );
sub pfl($ );
sub pfg($ );
sub isprime($ );
sub lf_primeprev($ );
sub lf_primenext($ );
sub primeprev($ );
sub primenext($ );
sub primecount($ );
sub pcf($ );
sub primecountx($ );
sub eta($ );
sub zeta($ );
sub fibo3($$$ );
sub fibo($ );
sub fibox($ );
sub fiboxinv($ );
sub lucas($ );
sub lucasx($ );
sub fusc($ );
sub Tn($$ );
sub Un($$ );
sub tri($ );
sub triinv($ );
sub polynum($$ );
sub polycnum($$ );
sub tetranum($$ );
sub tetracnum($$ );
sub minkowski($ );
sub cantorxx($$$ );
sub cantor($ );
sub cantorul($$$ );
sub cantorll($$$ );
sub dlogx($$$ );
sub dlog($$$ );
sub dlog1($$ );
sub mertens($ );
sub has_primitiveroot_f($\@ );
sub sigma0_f($\@ );
sub sigma1_f($\@ );
sub sigma_f($$\@ );
sub ispractical_f($\@ );
sub issquarefree_f($\@ );
sub totient_f($\@ );
sub mobius_f($\@ );
sub prime0_f($\@ );
sub factor_print($ );
sub mobius($ );
sub isprimitiveroot($$ );
sub prime0($ );
sub prime1($ );
sub sigma0($ );
sub sigma1($ );
sub sigma($$ );
sub totient($ );
sub has_primitiveroot($ );
sub issquarefree($ );
sub ispractical($ );
sub primitiveroot($ );
sub carmichael($ );
sub znorder($$ );
sub repetendlen($$ );
sub kevy_print($$$ );
sub eulerphi($ );
sub znorder__1($$ );
sub bkn($$ );
sub bkbn($$$ );
sub lix($ );
sub lixinv($ );
sub lf_n2primish($ );
sub n2primish($ );
sub primenth__1($ );
sub reimann($ );
sub primenth($ );
sub bessJv($$ );
sub bessYv($$ );
sub bessI0($ );
sub bessI1($ );
sub bessK0($ );
sub bessK1($ );
sub bessJn_ps($$ );
sub bessIn_ps($$ );
sub lf_besucjy0_xge5($$ );
sub lf_besucjy1_xge5($$ );
sub bessJ0($ );
sub bessJ1($ );
sub bessY0($ );
sub bessY1($ );
sub lf_bess_ucrecur($$$$ );
sub lf_limi($ );
sub lf_bess_ucrecur2($$ );
sub bessIn($$ );
sub bessJn($$ );
sub bessYn($$ );
sub bessKn($$ );
sub bessYn_ps($$ );
sub bessY1__1($ );
sub lf_bess_lcrecur($$$$ );
sub bess_jn($$ );
sub bess_yn($$ );
sub partition($ );
sub partitionq($ );
sub bitwisenot($ );
sub bitwiseand($$ );
sub bitwiseor($$ );
sub bitwisexor($$ );
sub bitshiftl($$ );
sub bitshiftr($$ );
sub bits_count($ );
sub bits_ls1b($ );
sub bits_ms1b($ );
sub bits_ls1bpos($ );
sub bits_ms1bpos($ );
sub bits_assign($$$ );
sub bits_get($$ );
sub bits_set($$ );
sub lf_calerf($$ );
sub erf($ );
sub erfc($ );
sub erfcx($ );
sub erfcinv($ );
sub erfcxinv($ );
sub erfinv($ );
sub erf__1($ );
sub erf__2($ );
sub erf__3($ );
sub erf__4($ );
sub lgamma__1($ );
sub lgammainv($ );
sub lf_lgamma_gt_zero($ );
sub lgamma($ );
sub lf_eval_cont($$\@ );
sub lgamma__2($ );
sub lpermx($$ );
sub permx($$ );
sub lcombx($$ );
sub combx($$ );
sub birthdayx($$ );
sub tgamma__1($ );
sub tgamma($ );
sub tgammainv($ );
sub lf_gamma_shift($$ );
sub lf_tgamma_gt_half($ );
sub tgamma__2($ );
sub tgamma__3($ );
sub tgamma__stirling($ );
sub tgammadouble($ );
sub lf_ligamma_xxleaa($$ );
sub lf_uigamma_aalexx($$ );
sub ligamma($$ );
sub uigamma($$ );
sub rligamma($$ );
sub ruigamma($$ );
sub uigamma__1($$ );
sub uigammainv($$ );
sub ligammainv($$ );
sub lbeta($$ );
sub beta($$ );
sub betainc($$$ );
sub betainc__1($$$ );
sub lf_digamma_gt_zero($ );
sub digamma($ );
sub digammainv($ );
sub lf_digamma_gt_zero__1($ );
sub digamma__1($ );
sub factorialinv($ );
sub facinv($ );
sub hn($ );
sub hn__1($ );
sub hnm($$ );
sub factorial($ );
sub factorialdouble($ );
sub fac($ );
sub factorialt($$ );
sub comb($$ );
sub perm($$ );
sub combination($$ );
sub permutation($$ );
sub catalan($ );
sub supercatalan($ );
sub bell($ );
sub bellx($ );
sub fubini($ );
sub d2lt_d1($$ );
sub d1lt_d2($\@ );
sub d2ur_d1($$ );
sub d1ur_d2($\@ );
sub d2diamond_d1($$ );
sub d1diamond_d2($\@ );
sub d2spiral_d1($$ );
sub d1spiral_d2($\@ );
sub d2hypot_d1($$ );
sub binomialx($$ );
sub binomial($$ );
sub eulerian($$ );
sub entringer($$ );
sub zigzag($ );
sub zig($ );
sub zag($ );
sub eulerx($ );
sub ballot($$ );
sub ballots($$ );
sub stirling1($$ );
sub stirling2($$ );
sub bernoulli($ );
sub bernoullin($ );
sub bernoullid($ );
sub birthday($$ );
sub birthdayinv($$ );
sub n2perm($$\@ );
sub n2comb($$$\@ );
sub n2perm_print($$ );
sub n2comb_print($$$ );
sub pochhammer($$ );
sub days_in_month($$ );
sub sec2dhms($ );
sub day2dhms($ );
sub day2dhmsinv($ );
sub hms2day($$$ );
sub hour2day($ );
sub day2hour($ );
sub jd2kwt($ );
sub jd2j2k($ );
sub jd2uet($ );
sub kwt2jd($ );
sub uet2jd($ );
sub j2k2jd($ );
sub j2k2kwt($ );
sub j2k2uet($ );
sub kwt2j2k($ );
sub kwt2uet($ );
sub uet2kwt($ );
sub uet2j2k($ );
sub jd2dow($ );
sub j2k2dow($ );
sub ymd2doy($$$ );
sub ymd2j2k__1($$$ );
sub ymd2j2k($$$ );
sub ymd2jd($$$ );
sub ymd2dow($$$ );
sub doomsday($ );
sub jd2ymdhms($ );
sub j2k2ymdhms($ );
sub ymdhms_get($ );
sub jd2ymdhmsinv( );
sub jd264_print($ );
sub ymdhms2jd($ );
sub ymdhms2j2k($ );
sub clocksec($ );
sub clockmin($ );
sub clockhour($ );
sub clocksum($ );
sub clockstdev($ );
sub date_easter($ );
sub date_rosh_hashanah($ );
sub jewish2jdx($ );
sub isjewishleap($ );
sub date_pesach($ );
sub g2jewish($ );
sub jewish2g($ );
sub jewish_months_in_year($ );
sub jewish_yearlength($ );
sub jewish2jd($ );
sub isjewish8short($ );
sub isjewish9short($ );
sub jewish_monthlength($$ );
sub jewish_monthbegin($$ );
sub jewishymd2jd($$$ );
sub amean($$ );
sub amean1($ );
sub lmean($$ );
sub lmean1($ );
sub pmean($$$ );
sub gmean($$ );
sub gmean1($ );
sub hmean($$ );
sub hmean1($ );
sub qmean($$ );
sub qmean1($ );
sub heronianmean($$ );
sub heronianmean1($ );
sub agmean($$ );
sub agmean1($ );
sub ahmean($$ );
sub ahmean1($ );
sub almean($$ );
sub almean1($ );
sub aqmean($$ );
sub aqmean1($ );
sub ghmean($$ );
sub ghmean1($ );
sub glmean($$ );
sub glmean1($ );
sub gqmean($$ );
sub gqmean1($ );
sub hlmean($$ );
sub hlmean1($ );
sub hqmean($$ );
sub hqmean1($ );
sub lqmean($$ );
sub lqmean1($ );
sub agmean__1($$ );
sub agcmean(\@\@\@ );
sub aghmean($$$ );
sub rms($$ );
sub agmeaninva($$ );
sub agmeaninvg($$ );
sub agmean1inv($ );
sub ghmean1inv($ );
sub contraharmonic($\@ );
sub lf_ran_cycle($ );
sub lf_fill_ranz( );
sub lf_next_ranz( );
sub rand_init_array($\@ );
sub rand_init($ );
sub randl($ );
sub randd( );
sub int_pdf($$ );
sub int_cdf($$ );
sub int_quantile($$ );
sub int_rand($ );
sub normal_pdf($ );
sub normal_cdf($ );
sub normal_cdf__1($ );
sub normal_quantile($ );
sub normal_rand( );
sub gau_pdf($ );
sub gau_cdf($ );
sub gau_quantile($ );
sub gau_rand( );
sub normal_quantile__1($ );
sub uni_pdf($$ );
sub uni_cdf($$ );
sub uni_quantile($$ );
sub uni_rand($ );
sub exp_pdf($$ );
sub exp_cdf($$ );
sub exp_quantile($$ );
sub exp_rand($ );
sub poi_pdf($$ );
sub poi_cdf($$ );
sub poi_quantile($$ );
sub poi_rand($ );
sub geo_pdf($$ );
sub geo_cdf($$ );
sub geo_quantile($$ );
sub geo_rand($ );
sub cauchy_pdf($$ );
sub cauchy_cdf($$ );
sub cauchy_quantile($$ );
sub cauchy_rand($ );
sub logistic_pdf($$ );
sub logistic_cdf($$ );
sub logistic_quantile($$ );
sub logistic_rand($ );
sub tri_pdf($$ );
sub tri_cdf($$ );
sub tri_quantile($$ );
sub tri_rand($ );
sub trap_pdf($$$ );
sub trap_cdf($$$ );
sub trap_quantile($$$ );
sub trap_rand($$ );
sub pareto_pdf($$$ );
sub pareto_cdf($$$ );
sub pareto_quantile($$$ );
sub pareto_rand($$ );
sub gompertz_pdf($$$ );
sub gompertz_cdf($$$ );
sub gompertz_quantile($$$ );
sub gompertz_rand($$ );
sub zipf_pdf($$$ );
sub zipf_cdf($$$ );
sub zipf_quantile($$$ );
sub zipf_rand($$ );
sub beta_pdf($$$ );
sub beta_cdf($$$ );
sub beta_quantile($$$ );
sub beta_rand($$ );
sub gamma_pdf($$ );
sub gamma_cdf($$ );
sub gamma_rand($ );
sub chisqr_pdf($$ );
sub chisqr_cdf($$ );
sub chisqr_rand($ );
sub binomial_pdf($$$ );
sub binomial_cdf($$$ );
sub binomial_rand($$ );
sub benford_pdf($$ );
sub benford_cdf($$ );
sub benford_rand($ );
sub nbd_pdf($$$ );
sub nbd_cdf($$$ );
sub nbd_rand($$ );
sub polya_pdf($$$ );
sub polya_cdf($$$ );
sub polya_rand($$ );
sub zeta_pdf($$ );
sub zeta_cdf($$ );
sub ks_cdf($$ );
sub ks_a_cdf($ );
sub ks_b_cdf($$ );
sub ks_quantile($$ );
sub t_pdf($$ );
sub lf_subtprob($$ );
sub t_cdf($$ );
sub lf_t_quantile($$ );
sub t_quantile($$ );
sub t_cdf__1($$ );
sub t_quantile__1($$ );
sub f_cdf($$$ );
sub lf_subfprob($$$ );
sub lf_subf_two($$$ );
sub lf_subfx($$$ );
sub f_quantile($$$ );
sub f_quantile__1($$$ );
sub mb_pdf($$ );
sub mb_cdf($$ );
sub maxwell_boltzmann_pdf($$$ );
sub maxwell_boltzmann_cdf($$$ );
sub maxwell_juttner_pdf($$$ );
sub blackbodyl_pdf($ );
sub blackbodyf_pdf($ );
sub ints_rand($\@ );
sub lf_num2norm($ );
sub stdev2spread($$ );
sub spread2stdev($$ );
sub maxabs($\@ );
sub minabs($\@ );
sub maxabsoffset($$\@ );
sub minabsoffset($$\@ );
sub mini($\@ );
sub maxi($\@ );
sub maxmin($\@\@ );
sub min2($$ );
sub max2($$ );
sub minabs2($$ );
sub maxabs2($$ );
sub variance($\@ );
sub mean($\@ );
sub lf_stts_is_inited($ );
sub lf_stts_find_empty( );
sub stts_init($$$$$$ );
sub stts_initx($$$$$$ );
sub stts_reset($ );
sub stts_new( );
sub stts_delete($ );
sub sttscount($ );
sub sttsmean($ );
sub sttsmsq($ );
sub sttsmax($ );
sub sttsmin($ );
sub sttsmagic($ );
sub sttssum($ );
sub sttsvar($ );
sub sttsstdev($ );
sub sttsstdevmean($ );
sub sttsspread($ );
sub stts_update($$ );
sub stts_downdate($$ );
sub stts_updatex($$\@ );
sub stts_newx($\@ );
sub stts_shift($$ );
sub stts_scale($$ );
sub stts_copy($$ );
sub stts_update2($$ );
sub lf_corr_is_init($ );
sub lf_corr_find_empty( );
sub corr_new( );
sub corr_delete($ );
sub corr_handlex($ );
sub corr_handley($ );
sub corr_update($$$ );
sub corrslope($ );
sub corry0($ );
sub corrcorr($ );
sub corrstderr($ );
sub fit_poly($\@\@ );
sub parabola_solve($$$$$$ );
sub parabola_get($ );
sub parabola_roots($ );
sub parabola_yextrema( );
sub parabola_xaxis( );
sub parabola_realroots( );
sub circle_solve($$$$$$ );
sub circle_get($ );
sub fit_minmax($\@\@ );
sub lf_signcrossproduct($$$$$$ );
sub fitx_minmax($\@\@ );
sub fit_minmax0($\@\@ );
sub fit_ls($\@\@ );
sub fit_ls0($\@\@ );
sub sqrt__1($ );
sub sqrt__2($ );
sub sqrt__3($ );
sub nthroot__1($$ );
sub cossin_ev($$$ );
sub cos__1($ );
sub cosm1__1($ );
sub sin__1($ );
sub sinc__1($ );
sub exp__1($ );
sub exp__2($ );
sub ln__1($ );
sub ln__2($ );
sub euler__1( );
sub sphere_d($$$$ );
sub great_circle_distance($$$$ );
sub sphere_distance($$$$\@ );
sub lf_ka($ );
sub lf_cap_a($ );
sub lf_cap_b($ );
sub ellipsoid_distance($$$$$\@ );
sub ellipsoid_destination($$$$$\@ );
sub ellipsoid_surface($$$ );
sub ellipsoid_volume($$$ );
sub shc_shftpoles2steps($$ );
sub shc_steps2shft($ );
sub shc_steps2shftinv($ );
sub shc_shft2steps($ );
sub m2k($ );
sub k2m($ );
sub a2k($ );
sub k2a($ );
sub a2m($ );
sub m2a($ );
sub m2b($ );
sub b2m($ );
sub elliptic1m($ );
sub ellipticK($ );
sub elliptic1m__1($ );
sub elliptic1m__2($ );
sub elliptic1im($$ );
sub elliptic1k($ );
sub elliptic1ik($$ );
sub elliptic1a($ );
sub elliptic1ia($$ );
sub ellipticF($$ );
sub elliptic1im__1($$ );
sub elliptic2m($ );
sub ellipticE($ );
sub elliptic2m__1($ );
sub elliptic2im($$ );
sub ellipticEi($$ );
sub elliptic2im__1($$ );
sub elliptic2k($ );
sub elliptic2ik($$ );
sub elliptic2a($ );
sub elliptic2ia($$ );
sub elliptic3m($$ );
sub elliptic3k($$ );
sub elliptic3ik($$$ );
sub elliptic3a($$ );
sub elliptic3ia($$$ );
sub ellipticP($$ );
sub elliptic3im($$$ );
sub ellipticPi($$$ );
sub elliptic3m__1($$ );
sub elliptic3im__1($$$ );
sub lf_jacobiphi_0_1($$ );
sub lf_cn_0_1($$ );
sub lf_sn_0_1($$ );
sub lf_dn_0_1($$ );
sub lf_cn_gt1($$ );
sub lf_sn_gt1($$ );
sub lf_dn_gt1($$ );
sub lf_ellpj_0_1($$\@ );
sub lf_ellpj($$\@ );
sub jacobiphi($$ );
sub sn__1($$ );
sub cn__1($$ );
sub dn__1($$ );
sub dn($$ );
sub cn($$ );
sub sn($$ );
sub cd($$ );
sub sd($$ );
sub nd($$ );
sub dc($$ );
sub nc($$ );
sub sc($$ );
sub ds($$ );
sub cs($$ );
sub ns($$ );
sub ell2cir($$ );
sub cir2ell($$ );
sub jacobicir($ );
sub nom($ );
sub theta1($$ );
sub theta2($$ );
sub theta3($$ );
sub theta4($$ );
sub nevillethetac($$ );
sub nevillethetad($$ );
sub nevillethetan($$ );
sub nevillethetas($$ );
sub ellipsearea($$ );
sub ellipseecc($$ );
sub ellipsem($$ );
sub ellipseflatness($$ );
sub ellipsen($$ );
sub flat2ecc($ );
sub ecc2flat($ );
sub ellipsecir($$ );
sub ellipsecir__1($$ );
sub epdf($$$\@$\@ );
sub ecdf($$$\@$\@ );
sub epdf2cdf($\@\@ );
sub search_check($ );
sub search_search($ );
sub blackbodyl($$ );
sub blackbodyf($$ );
sub blackbodymode($ );
sub blackbodypower($ );
sub bhmass_to_tempk($ );
sub bhtempk_to_mass($ );
sub bhmass_to_radius($ );
sub bhradius_to_mass($ );
sub bhmass_to_entropy($ );
sub bhentropy_to_mass($ );
sub bhmass_to_power($ );
sub bhpower_to_mass($ );
sub bhmass_to_area($ );
sub bharea_to_mass($ );
sub bhlifetime_to_mass($ );
sub bhmass_to_lifetime($ );
sub bhmass_to_density($ );
sub bhdensity_to_mass($ );
sub pendulum($$$ );
sub sr_mass($ );
sub sr_time($ );
sub gr_massgm($$ );
sub gr_mass($$ );
sub gr_timegm($$ );
sub gr_time($$ );
sub gr_timegm_dr($$ );
sub cent2ratio($ );
sub ratio2cent($ );
sub KILOGRAM() { 1.0; }
sub METER() { 1.0; }
sub SECOND() { 1.0; }
sub KELVIN() { 1.0; }
sub AMPERE() { 1.0; }
sub MOLE() { 1.0; }
sub CANDELA() { 1.0; }
sub BIT() { 1.0; }
sub RADIAN() { 1.0; }
sub MASS() { KILOGRAM; }
sub LENGTH() { METER; }
sub DISTANCE() { LENGTH; }
sub TEMPERATURE() { KELVIN; }
sub TIME() { SECOND; }
sub ANGLE() { RADIAN; }
sub AMOUNT() { MOLE; }
sub CURRENT() { AMPERE; }
sub CHARGE() { AMPERE * SECOND; }
sub COULOMB() { AMPERE * SECOND; }
sub STERADIAN() { (RADIAN * RADIAN); }
sub METRE() { METER; }
sub KG() { KILOGRAM; }
sub RAD() { RADIAN; }
sub E() { exp(1.0); }
sub TAU() { 8.0 * atan2(1.0, 1.0) / RAD; }
sub PHI() { 0.5 + sqrt(5.0) / 2.0; }
sub TWOLN() { log(2.0); }
sub TENLN() { log(10.0); }
sub TWOSQRT() { sqrt(2.0); }
sub EULER() { 0.577215664901532860606512090082402431042159335939924; }
sub FEIGENBAUM() { 4.669201609102990671853203820466201617258185577475769; }
sub APERY() { 1.202056903159594285399738161511449990764986292340499; }
sub GAMMAMIN() { 1.461632144968362341262659542325721328468196204006446; }
sub PI() { TAU / 2.0; }
sub YOTTA() { 1.0E+24; }
sub ZETTA() { 1.0E+21; }
sub EXA() { 1.0E+18; }
sub PETA() { 1.0E+15; }
sub TERA() { 1.0E+12; }
sub GIGA() { 1.0E+9; }
sub MEGA() { 1.0E+6; }
sub KILO() { 1.0E+3; }
sub HECTO() { 1.0E+2; }
sub DECA() { 1.0E+1; }
sub DECI() { 1.0E-1; }
sub CENTI() { 1.0E-2; }
sub MILLI() { 1.0E-3; }
sub MICRO() { 1.0E-6; }
sub NANO() { 1.0E-9; }
sub PICO() { 1.0E-12; }
sub FEMTO() { 1.0E-15; }
sub ATTO() { 1.0E-18; }
sub ZEPTO() { 1.0E-21; }
sub YOCTO() { 1.0E-24; }
sub KIBI() { 1024.0; }
sub MEBI() { KIBI * KIBI; }
sub GIBI() { MEBI * KIBI; }
sub TEBI() { GIBI * KIBI; }
sub PEBI() { TEBI * KIBI; }
sub EXBI() { PEBI * KIBI; }
sub ZEBI() { EXBI * KIBI; }
sub YOBI() { ZEBI * KIBI; }
sub MPS() { METER / SECOND; }
sub MPSS() { METER / (SECOND * (SECOND)); }
sub UNITGM() { METER * (MPS * (MPS)); }
sub NEWTON() { KILOGRAM * MPSS; }
sub JOULE() { NEWTON * METER; }
sub PA() { NEWTON / (METER * (METER)); }
sub WATT() { JOULE / SECOND; }
sub HERTZ() { 1.0 / SECOND; }
sub Hz() { HERTZ; }
sub AMP() { AMPERE; }
sub VOLT() { WATT / AMPERE; }
sub OHM() { VOLT / AMPERE; }
sub HENRY() { OHM * SECOND; }
sub FARAD() { COULOMB / VOLT; }
sub SIEMENS() { 1.0 / OHM; }
sub WEBER() { VOLT * SECOND; }
sub TESLA() { WEBER / (METER * (METER)); }
sub LUMEN() { CANDELA * STERADIAN; }
sub LUX() { LUMEN / (METER * (METER)); }
sub BOLTZMANN() { 1.380649E-23 * JOULE / KELVIN; }
sub BOLTZMANN_ERR() { 0.0; }
sub BOLTZMANN_REC() { 1.0 / BOLTZMANN; }
sub BOLTZMANN_REC_ERR() { 0.0; }
sub ELEMENTARYCHARGE() { 1.602176634E-19 * COULOMB; }
sub ELEMENTARYCHARGE_ERR() { 0.0; }
sub LIGHT() { 2.99792458E+8 * METER / SECOND; }
sub LIGHT_ERR() { 0.0; }
sub LIGHT_REC() { 1.0 / LIGHT; }
sub LIGHT_REC_ERR() { 0.0; }
sub AVOGADRO() { 6.02214076E+23 / MOLE; }
sub AVOGADRO_ERR() { 0.0; }
sub AVOGADRO_REC() { 1.0 / AVOGADRO; }
sub AVOGADRO_REC_ERR() { 0.0; }
sub PLANCK() { 6.62607015E-34 * JOULE * SECOND; }
sub PLANCK_ERR() { 0.0; }
sub PLANCK_REC() { 1.0 / PLANCK; }
sub PLANCK_REC_ERR() { 0.0; }
sub KCD() { 6.83E+2 * LUMEN / WATT; }
sub KCD_ERR() { 0.0; }
sub dvCs_Hz() { 9.19263177E+9 / SECOND; }
sub dvCs_WAVELENGTH() { LIGHT / dvCs_Hz; }
sub dvCs_ENERGY() { dvCs_Hz * PLANCK; }
sub dvCs_ERR() { 0.0; }
sub kB() { BOLTZMANN; }
sub kB_ERR() { BOLTZMANN_ERR; }
sub kB_REC() { 1.0 / kB; }
sub kB_REC_ERR() { BOLTZMANN_ERR; }
sub ELECTRON_CHARGE() { - ELEMENTARYCHARGE; }
sub ELECTRON_CHARGE_ERR() { ELEMENTARYCHARGE_ERR; }
sub PLANCKBAR() { PLANCK / TAU; }
sub PLANCKBAR_ERR() { PLANCK_ERR; }
sub h() { PLANCK; }
sub h_ERR() { PLANCK_ERR; }
sub h_REC() { 1.0 / PLANCK; }
sub h_REC_ERR() { PLANCK_ERR; }
sub c() { LIGHT; }
sub c_ERR() { LIGHT_ERR; }
sub c_REC() { 1.0 / LIGHT; }
sub c_REC_ERR() { LIGHT_ERR; }
sub HBAR() { PLANCKBAR; }
sub HBAR_ERR() { PLANCKBAR_ERR; }
sub GRAVITY() { 9.80665 * MPSS; }
sub GRAVITY_ERR() { 0.0; }
sub ATMOSPHERE() { 1.01325E+5 * PA; }
sub ATMOSPHERE_ERR() { 0.0; }
sub AU() { 1.495978707E+11 * METER; }
sub AU_ERR() { 0.0; }
sub JOSEPHSON() { 2.0 * ELEMENTARYCHARGE / PLANCK; }
sub JOSEPHSON_ERR() { 0.0; }
sub VONKLITZING() { PLANCK / (ELEMENTARYCHARGE * (ELEMENTARYCHARGE)); }
sub VONKLITZING_ERR() { 0.0; }
sub FARADAY() { ELEMENTARYCHARGE * AVOGADRO; }
sub FARADAY_ERR() { 0.0; }
sub FARADAY_REC() { 1.0 / FARADAY; }
sub FARADAY_REC_ERR() { 0.0; }
sub GAS() { BOLTZMANN * AVOGADRO; }
sub GAS_ERR() { 0.0; }
sub GAS_REC() { 1.0 / GAS; }
sub GAS_REC_ERR() { 0.0; }
sub FARADAYCONST() { FARADAY; }
sub FARADAYCONST_ERR() { FARADAY_ERR; }
sub FARADAYCONST_REC() { 1.0 / FARADAYCONST; }
sub FARADAYCONST_REC_ERR() { FARADAY_ERR; }
sub GASCONST() { GAS; }
sub GASCONST_ERR() { GAS_ERR; }
sub GASCONST_REC() { 1.0 / GASCONST; }
sub GASCONST_REC_ERR() { GAS_ERR; }
sub GRAVITATION() { 6.67430E-11 * UNITGM / KILOGRAM; }
sub GRAVITATION_ERR() { 2.2E-5; }
sub GRAVITATION_REC() { 1.0 / GRAVITATION; }
sub GRAVITATION_REC_ERR() { 2.2E-5; }
sub RYDBERG() { 1.0973731568160E+7 * LIGHT / METER; }
sub RYDBERG_ERR() { 1.9E-12; }
sub RYDBERG_REC() { 1.0 / RYDBERG; }
sub RYDBERG_REC_ERR() { 1.9E-12; }
sub G() { GRAVITATION; }
sub G_ERR() { GRAVITATION_ERR; }
sub ALPHA() { 1.0 / 137.035999206; }
sub ALPHA_ERR() { 8.1E-11; }
sub ALPHA_REC() { 1.0 / ALPHA; }
sub ALPHA_REC_ERR() { 8.1E-11; }
sub ALPHASQRT() { sqrt(ALPHA); }
sub FLTSIG() { 23; }
sub FLTMAN() { 8; }
sub FLTEPS() { 1.1920928955078125E-7; }
sub FLTMAX() { 3.402823466385288598E+38; }
sub DBLMAXLN() { Kw::TWOLN * 1024.0; }
sub DBLSIG() { 52; }
sub DBLMAN() { 11; }
sub DBLEPS() { 2.220446049250313E-16; }
sub DBLMAX() { 1.79769313486227E+308; }
sub SI16MAX() { 32767; }
sub SI16MIN() { - 32768; }
sub UI16MAX() { 65535; }
sub SI32MAX() { 2147483647; }
sub SI32MIN() { - 2147483648; }
sub UI32MAX() { 4294967295; }
sub INTMAX() { SI32MAX; }
sub JEWISH_FIRST_MONTH() { 7; }
sub MONTHS_IN_YEAR() { 12; }
sub UVPV() { MICRO; }
sub MINUTE() { 60.0 * SECOND; }
sub HOUR() { 60.0 * MINUTE; }
sub DAY() { 24.0 * HOUR; }
sub WEEK() { 7.0 * DAY; }
sub FLICK() { SECOND / 705600000.0; }
sub JDAY() { DAY; }
sub JYEAR() { 365.25 * JDAY; }
sub JCENTURY() { 100.0 * JYEAR; }
sub GYEAR() { 365.2425 * DAY; }
sub GYEAR_AT_0J2K() { 2000.0; }
sub KWT() { 0.1875 * SECOND; }
sub UET() { SECOND; }
sub J2K() { DAY; }
sub J2KDAY() { DAY; }
sub JDSEC_AT_0GREGORIAN() { 1721058.5 * JDAY; }
sub JDSEC_AT_0KWT() { 2437240.66125 * JDAY; }
sub JDSEC_AT_0J2K() { 2451545.0 * JDAY; }
sub JDSEC_AT_0UET() { 2440587.5 * JDAY; }
sub TT_AT_0TAI() { 32.184 * Kw::SECOND; }
sub TT_AT_0UT1() { 68.97 * Kw::SECOND; }
sub GRAM() { 0.001 * KILOGRAM; }
sub CARAT() { 0.2 * GRAM; }
sub TONNE() { 1000.0 * KILOGRAM; }
sub POUND() { 0.45359237 * KILOGRAM; }
sub LB() { POUND; }
sub GRAIN() { POUND / 7000.0; }
sub OUNCE() { 0.0625 * POUND; }
sub OZ() { OUNCE; }
sub STONE() { 14.0 * POUND; }
sub TON() { 2000.0 * POUND; }
sub MM() { MILLI * METER; }
sub INCH() { 0.0254 * METER; }
sub HAND() { 4.0 * INCH; }
sub FOOT() { 12.0 * INCH; }
sub SURVEYFOOT() { 1200.0 * METER / 3937.0; }
sub FEET() { FOOT; }
sub FT() { FOOT; }
sub YARD() { 3.0 * FEET; }
sub HORSE() { 8.0 * FEET; }
sub LINK() { 66.0 * SURVEYFOOT / 100.0; }
sub CHAIN() { 100 * LINK; }
sub FURLONG() { 10 * CHAIN; }
sub MILE() { 5280.0 * FEET; }
sub POINT() { INCH / 72.0; }
sub STANDARDGRAVITY() { GRAVITY; }
sub GRAVITATIONNASA() { 6.67259E-11 * UNITGM / KILOGRAM; }
sub GRAVITATIONIERS() { 6.67428E-11 * UNITGM / KILOGRAM; }
sub KGF() { KILOGRAM * GRAVITY; }
sub LBF() { POUND * GRAVITY; }
sub ATM() { ATMOSPHERE; }
sub STANDARDATMOSPHERE() { ATMOSPHERE; }
sub TORR() { ATMOSPHERE / 760.0; }
sub BAR() { 1.0E+5 * PA; }
sub MMHG() { 13595.1 * KILOGRAM * GRAVITY * MM / (METER * (METER) *
         (METER)); }
sub INHG() { MMHG * INCH / MM; }
sub PSI() { POUND * GRAVITY / (INCH * (INCH)); }
sub DEGC() { KELVIN; }
sub DEGF() { KELVIN / 1.8; }
sub DEGR() { DEGF; }
sub K_AT_0TEMPC() { 273.15 * DEGC; }
sub K_AT_0TEMPF() { 459.67 * DEGF; }
sub K_AT_0TEMPR() { 0.0 * DEGR; }
sub TEMPF_AT_0TEMPC() { 32.0 * KELVIN; }
sub MACH() { 331.46 * MPS; }
sub MPH() { MILE / HOUR; }
sub HECTARE() { 10000.0 * (METER * (METER)); }
sub ARE() { 100.0 * (METER * (METER)); }
sub ACRE() { (MILE * (MILE)) / 640.0; }
sub BARN() { 1.0E-28 * (METER * (METER)); }
sub LITER() { (METER * (METER) * (METER)) / 1000.0; }
sub LITRE() { LITER; }
sub GALLON() { 231.0 * (INCH * (INCH) * (INCH)); }
sub QUART() { GALLON / 4.0; }
sub PINT() { QUART / 2.0; }
sub CUP() { PINT / 2.0; }
sub FLOZ() { CUP / 8.0; }
sub TBLSP() { FLOZ / 2.0; }
sub TSP() { TBLSP / 3.0; }
sub BARREL() { 42.0 * GALLON; }
sub DRYGALLON() { 9.25 * 9.25 * PI * (INCH * (INCH) * (INCH)); }
sub PECK() { 2.0 * DRYGALLON; }
sub BUSHEL() { 8.0 * DRYGALLON; }
sub AH() { AMPERE * HOUR; }
sub CALORIE() { 4.184 * JOULE; }
sub CAL_IT() { 4.1868 * JOULE; }
sub CAL_TH() { CALORIE; }
sub CAL() { CALORIE; }
sub BTU_TH() { CAL_TH * POUND * DEGF / (GRAM * DEGC); }
sub BTU_IT() { CAL_IT * POUND * DEGF / (GRAM * DEGC); }
sub BTU() { CALORIE * POUND * DEGF / (GRAM * DEGC); }
sub HP() { 550.0 * FOOT * POUND * GRAVITY / SECOND; }
sub HORSEPOWER() { HP; }
sub HPMETRIC() { 75.0 * KILOGRAM * GRAVITY * MPS; }
sub ELECTRONVOLT() { ELEMENTARYCHARGE * VOLT; }
sub eV() { ELECTRONVOLT; }
sub ERG() { 1.0E-7 * JOULE; }
sub FOE() { 1.0E+44 * JOULE; }
sub AAABATTERY_CHARGE() { 2.1 * AH; }
sub AAABATTERY_VOLTAGE() { 1.5 * VOLT; }
sub AAABATTERY() { AAABATTERY_CHARGE * AAABATTERY_VOLTAGE; }
sub AAABATTERY_ENERGY() { AAABATTERY; }
sub AABATTERY_CHARGE() { 2.7 * AH; }
sub AABATTERY_VOLTAGE() { 1.5 * VOLT; }
sub AABATTERY() { AABATTERY_CHARGE * AABATTERY_VOLTAGE; }
sub AABATTERY_ENERGY() { AABATTERY; }
sub CBATTERY_CHARGE() { 8.0 * AH; }
sub CBATTERY_VOLTAGE() { 1.5 * VOLT; }
sub CBATTERY() { CBATTERY_CHARGE * CBATTERY_VOLTAGE; }
sub CBATTERY_ENERGY() { CBATTERY; }
sub DBATTERY_CHARGE() { 12.0 * AH; }
sub DBATTERY_VOLTAGE() { 1.5 * VOLT; }
sub DBATTERY() { DBATTERY_CHARGE * DBATTERY_VOLTAGE; }
sub DBATTERY_ENERGY() { DBATTERY; }
sub NINEVOLT_CHARGE() { 0.565 * AH; }
sub NINEVOLT_VOLTAGE() { 9.0 * VOLT; }
sub NINEVOLT() { NINEVOLT_CHARGE * NINEVOLT_VOLTAGE; }
sub NINEVOLT_ENERGY() { NINEVOLT; }
sub NINEVOLTBATTERY_CHARGE() { NINEVOLT_CHARGE; }
sub NINEVOLTBATTERY_VOLTAGE() { NINEVOLT_VOLTAGE; }
sub NINEVOLTBATTERY() { NINEVOLTBATTERY_CHARGE * NINEVOLTBATTERY_VOLTAGE; }
sub NINEVOLTBATTERY_ENERGY() { NINEVOLTBATTERY; }
sub PHONEBATTERY_CHARGE() { 3.0 * AH; }
sub PHONEBATTERY_VOLTAGE() { 3.8 * VOLT; }
sub PHONEBATTERY() { PHONEBATTERY_CHARGE * PHONEBATTERY_VOLTAGE; }
sub PHONEBATTERY_ENERGY() { PHONEBATTERY; }
sub CARBATTERY_CHARGE() { 45.0 * AH; }
sub CARBATTERY_VOLTAGE() { 12.0 * VOLT; }
sub CARBATTERY() { CARBATTERY_CHARGE * CARBATTERY_VOLTAGE; }
sub CARBATTERY_ENERGY() { CARBATTERY; }
sub MICROWAVE_Hz() { 2.45E+9 * HERTZ; }
sub MICROWAVE_WAVELENGTH() { LIGHT / MICROWAVE_Hz; }
sub MICROWAVE_ENERGY() { MICROWAVE_Hz * PLANCK; }
sub LF_Hz() { 1.0E+5 * HERTZ; }
sub LF_WAVELENGTH() { LIGHT / LF_Hz; }
sub LF_ENERGY() { LF_Hz * PLANCK; }
sub MF_Hz() { 1.0E+6 * HERTZ; }
sub MF_WAVELENGTH() { LIGHT / MF_Hz; }
sub MF_ENERGY() { MF_Hz * PLANCK; }
sub HF_Hz() { 1.0E+7 * HERTZ; }
sub HF_WAVELENGTH() { LIGHT / HF_Hz; }
sub HF_ENERGY() { HF_Hz * PLANCK; }
sub VHF_Hz() { 1.0E+8 * HERTZ; }
sub VHF_WAVELENGTH() { LIGHT / VHF_Hz; }
sub VHF_ENERGY() { VHF_Hz * PLANCK; }
sub UHF_Hz() { 1.0E+9 * HERTZ; }
sub UHF_WAVELENGTH() { LIGHT / UHF_Hz; }
sub UHF_ENERGY() { UHF_Hz * PLANCK; }
sub SHF_Hz() { 1.0E+10 * HERTZ; }
sub SHF_WAVELENGTH() { LIGHT / SHF_Hz; }
sub SHF_ENERGY() { SHF_Hz * PLANCK; }
sub EHF_Hz() { 1.0E+11 * HERTZ; }
sub EHF_WAVELENGTH() { LIGHT / EHF_Hz; }
sub EHF_ENERGY() { EHF_Hz * PLANCK; }
sub THF_Hz() { 1.0E+12 * HERTZ; }
sub THF_WAVELENGTH() { LIGHT / THF_Hz; }
sub THF_ENERGY() { THF_Hz * PLANCK; }
sub FIR_Hz() { 1.0E+12 * HERTZ; }
sub FIR_WAVELENGTH() { LIGHT / FIR_Hz; }
sub FIR_ENERGY() { FIR_Hz * PLANCK; }
sub MIR_Hz() { 1.0E+13 * HERTZ; }
sub MIR_WAVELENGTH() { LIGHT / MIR_Hz; }
sub MIR_ENERGY() { MIR_Hz * PLANCK; }
sub NIR_Hz() { 1.0E+14 * HERTZ; }
sub NIR_WAVELENGTH() { LIGHT / NIR_Hz; }
sub NIR_ENERGY() { NIR_Hz * PLANCK; }
sub RED_WAVELENGTH() { 7.0E-7 * METER; }
sub RED_Hz() { LIGHT / RED_WAVELENGTH; }
sub RED_ENERGY() { RED_Hz * PLANCK; }
sub ORANGE_WAVELENGTH() { 6.2E-7 * METER; }
sub ORANGE_Hz() { LIGHT / ORANGE_WAVELENGTH; }
sub ORANGE_ENERGY() { ORANGE_Hz * PLANCK; }
sub YELLOW_WAVELENGTH() { 5.8E-7 * METER; }
sub YELLOW_Hz() { LIGHT / YELLOW_WAVELENGTH; }
sub YELLOW_ENERGY() { YELLOW_Hz * PLANCK; }
sub YELLOWGREEN_Hz() { 5.4E+14 * HERTZ; }
sub YELLOWGREEN_WAVELENGTH() { LIGHT / YELLOWGREEN_Hz; }
sub YELLOWGREEN_ENERGY() { YELLOWGREEN_Hz * PLANCK; }
sub GREEN_WAVELENGTH() { 5.3E-7 * METER; }
sub GREEN_Hz() { LIGHT / GREEN_WAVELENGTH; }
sub GREEN_ENERGY() { GREEN_Hz * PLANCK; }
sub BLUE_WAVELENGTH() { 5.0E-7 * METER; }
sub BLUE_Hz() { LIGHT / BLUE_WAVELENGTH; }
sub BLUE_ENERGY() { BLUE_Hz * PLANCK; }
sub VIOLET_WAVELENGTH() { 4.2E-7 * METER; }
sub VIOLET_Hz() { LIGHT / VIOLET_WAVELENGTH; }
sub VIOLET_ENERGY() { VIOLET_Hz * PLANCK; }
sub NUV_Hz() { 1.0E+15 * HERTZ; }
sub NUV_WAVELENGTH() { LIGHT / NUV_Hz; }
sub NUV_ENERGY() { NUV_Hz * PLANCK; }
sub EUV_Hz() { 1.0E+16 * HERTZ; }
sub EUV_WAVELENGTH() { LIGHT / EUV_Hz; }
sub EUV_ENERGY() { EUV_Hz * PLANCK; }
sub UVA_WAVELENGTH() { 3.6E-7 * METER; }
sub UVA_Hz() { LIGHT / UVA_WAVELENGTH; }
sub UVA_ENERGY() { UVA_Hz * PLANCK; }
sub UVB_WAVELENGTH() { 3.0E-7 * METER; }
sub UVB_Hz() { LIGHT / UVB_WAVELENGTH; }
sub UVB_ENERGY() { UVB_Hz * PLANCK; }
sub UVC_WAVELENGTH() { 1.9E-7 * METER; }
sub UVC_Hz() { LIGHT / UVC_WAVELENGTH; }
sub UVC_ENERGY() { UVC_Hz * PLANCK; }
sub SX_Hz() { 3.0E+17 * HERTZ; }
sub SX_WAVELENGTH() { LIGHT / SX_Hz; }
sub SX_ENERGY() { SX_Hz * PLANCK; }
sub SXX_WAVELENGTH() { 1.0E-9 * METER; }
sub SXX_Hz() { LIGHT / SXX_WAVELENGTH; }
sub SXX_ENERGY() { SXX_Hz * PLANCK; }
sub HX_Hz() { 1.0E+19 * HERTZ; }
sub HX_WAVELENGTH() { LIGHT / HX_Hz; }
sub HX_ENERGY() { HX_Hz * PLANCK; }
sub GAMMA_Hz() { 1.0E+20 * HERTZ; }
sub GAMMA_WAVELENGTH() { LIGHT / GAMMA_Hz; }
sub GAMMA_ENERGY() { GAMMA_Hz * PLANCK; }
sub TURN() { TAU * RADIAN; }
sub ARCTURN() { TURN; }
sub ARCRADIAN() { RADIAN; }
sub ARCDEGREE() { TURN / 360.0; }
sub ARCMINUTE() { ARCDEGREE / 60.0; }
sub ARCSECOND() { ARCMINUTE / 60.0; }
sub ARCGRAD() { TURN / 400.0; }
sub ARCDEG() { ARCDEGREE; }
sub ARCMIN() { ARCMINUTE; }
sub ARCSEC() { ARCSECOND; }
sub GRAD() { ARCGRAD; }
sub SQUAREDEGREE() { (ARCDEGREE * (ARCDEGREE)); }
sub SQDEG() { SQUAREDEGREE; }
sub SPHERESURFACE() { 2.0 * Kw::TAU * STERADIAN; }
sub SHANNON() { BIT; }
sub NAT() { BIT / Kw::TWOLN; }
sub HARTLEY() { Kw::TENLN / Kw::TWOLN * BIT; }
sub HART() { HARTLEY; }
sub DIT() { HARTLEY; }
sub BAN() { HARTLEY; }
sub RPM() { TURN / MINUTE; }
sub RPS() { TURN / SECOND; }
sub RPH() { TURN / HOUR; }
sub OZFIN() { OUNCE * GRAVITY * INCH; }
sub LBFIN() { POUND * GRAVITY * INCH; }
sub LBFFT() { POUND * GRAVITY * FOOT; }
sub KGFM() { KG * GRAVITY * METER; }
sub Nm_PER_lbfin() { LBFIN / (NEWTON * METER); }
sub kgfm_PER_lbfin() { LBFIN / (KG * GRAVITY * METER); }
sub lbfinrpm_PER_Hp() { HORSEPOWER / (LBFIN * RPM); }
sub ozfin_PER_lbfin() { POUND / OUNCE; }
sub lbfft_PER_lbfin() { INCH / FOOT; }
sub W_PER_Hp() { HORSEPOWER / WATT; }
sub FINESTRUCTURE() { ALPHA; }
sub FINESTRUCTURE_ERR() { ALPHA_ERR; }
sub FINESTRUCTURE_REC() { 1.0 / FINESTRUCTURE; }
sub FINESTRUCTURE_REC_ERR() { ALPHA_ERR; }
sub MAGNETIC() { 2.0 * VONKLITZING * ALPHA / LIGHT; }
sub MAGNETIC_ERR() { ALPHA_ERR; }
sub MU0() { MAGNETIC; }
sub MU0_ERR() { ALPHA_ERR; }
sub ELECTRIC() { 1.0 / ((LIGHT * (LIGHT)) * MU0); }
sub ELECTRIC_ERR() { ALPHA_ERR; }
sub EPSILON0() { ELECTRIC; }
sub EPSILON0_ERR() { ALPHA_ERR; }
sub COULOMBCONST() { 1.0 / (2.0 * TAU * ELECTRIC); }
sub COULOMBCONST_ERR() { ALPHA_ERR; }
sub PROTON_RADIUS() { 8.414E-16 * METER; }
sub PROTON_RADIUS_ERR() { 2.2E-3; }
sub MOLARMASS() { (1.0 - 3.5E-10) * GRAM / MOLE; }
sub MOLARMASS_ERR() { 3.0E-10; }
sub DALTON() { MOLARMASS / AVOGADRO; }
sub DALTON_ERR() { MOLARMASS_ERR; }
sub AMU() { DALTON; }
sub AMU_ERR() { DALTON_ERR; }
sub ATOMICMASSUNIT() { DALTON; }
sub ATOMICMASSUNIT_ERR() { DALTON_ERR; }
sub UAMU() { DALTON; }
sub UAMU_ERR() { DALTON_ERR; }
sub RYDBERG_Hz() { RYDBERG; }
sub RYDBERG_WAVELENGTH() { LIGHT / RYDBERG_Hz; }
sub RYDBERG_ENERGY() { RYDBERG_Hz * PLANCK; }
sub ELECTRON_MASSA() { 2.0 * RYDBERG_Hz * PLANCK / ((LIGHT * ALPHA) *
         (LIGHT * ALPHA)); }
sub ELECTRON_MASSA_ERR() { 2.0 * ALPHA_ERR; }
sub HI_Hz() { 1.4204057517667E+9 * HERTZ; }
sub HI_WAVELENGTH() { LIGHT / HI_Hz; }
sub HI_ENERGY() { HI_Hz * PLANCK; }
sub HYDROGENLINE() { HI_WAVELENGTH; }
sub HYDROGENLINE_ERR() { 6.3E-13; }
sub HI() { LIGHT / HI_Hz; }
sub HI_ERR() { HYDROGENLINE_ERR; }
sub PLANCKMASS() { sqrt(HBAR * LIGHT / GRAVITATION); }
sub PLANCKCHARGE() { ELEMENTARYCHARGE / ALPHASQRT; }
sub PLANCKENERGY() { PLANCKMASS * (LIGHT * (LIGHT)); }
sub PLANCKTEMP() { PLANCKENERGY / BOLTZMANN; }
sub PLANCKLENGTH() { HBAR / (PLANCKMASS * LIGHT); }
sub PLANCKTIME() { PLANCKLENGTH / LIGHT; }
sub PLANCKFREQUENCY() { 1.0 / PLANCKTIME; }
sub STEFAN() { (TAU * (TAU) * (TAU) * (TAU) * (TAU)) * (BOLTZMANN *
         (BOLTZMANN) * (BOLTZMANN) * (BOLTZMANN)) / (240.0 * (LIGHT *
         (LIGHT)) * (PLANCK * (PLANCK) * (PLANCK))); }
sub STEFAN_ERR() { 0.0; }
sub PINGPONGBALL_RADIUS() { 0.02 * METER; }
sub GOLFBALL_RADIUS() { 0.02135 * METER; }
sub TENNISBALL_RADIUS() { 0.03325 * METER; }
sub BASEBALL_RADIUS() { 9.125 * INCH / TAU; }
sub SOFTBALL_RADIUS() { 12.0 * INCH / TAU; }
sub SOCCERBALL_RADIUS() { 0.69 * METER / TAU; }
sub BASKETBALL_RADIUS() { 0.75 * METER / TAU; }
sub PINGPONGBALL_MASS() { 0.0027 * KG; }
sub GOLFBALL_MASS() { 0.04593 * KG; }
sub TENNISBALL_MASS() { 0.0577 * KG; }
sub BASEBALL_MASS() { 0.1465 * KG; }
sub SOFTBALL_MASS() { 0.187 * KG; }
sub BASKETBALL_MASS() { 0.620 * KG; }
sub SOCCERBALL_MASS() { 0.430 * KG; }
sub MARATHON() { 42195.0 * METER; }
sub PENNY_HEIGHT() { 1.52E-3 * METER; }
sub NICKEL_HEIGHT() { 1.95E-3 * METER; }
sub DIME_HEIGHT() { 1.35E-3 * METER; }
sub QUARTER_HEIGHT() { 1.75E-3 * METER; }
sub PENNY_DIAMETER() { 0.75 * INCH; }
sub NICKEL_DIAMETER() { 2.121E-2 * METER; }
sub DIME_DIAMETER() { 1.791E-2 * METER; }
sub QUARTER_DIAMETER() { 2.426E-2 * METER; }
sub PENNY_MASS() { 2.5 * GRAM; }
sub NICKEL_MASS() { 5.0 * GRAM; }
sub DIME_MASS() { 0.005 * POUND; }
sub QUARTER_MASS() { 0.0125 * POUND; }
sub MOON_MONTH() { 29.530587981 * DAY; }
sub MILKYWAY_AGE() { 8.3E+9 * JYEAR; }
sub ASTRONOMICALUNIT() { AU; }
sub LIGHTYEAR() { LIGHT * JYEAR; }
sub PARSEC() { 1296000.0 * ASTRONOMICALUNIT / TAU; }
sub PROXIMACENTAURI() { 39.9E+15 * METER; }
sub MILKYWAY_RADIUS() { 6.0E+4 * LIGHTYEAR; }
sub GALACTICCENTER() { 2.64E+4 * LIGHTYEAR; }
sub MILKYWAY_MASS() { 1.4E+42 * KILOGRAM; }
sub SOLARCONSTANT() { 1361.0 * WATT / (METER * (METER)); }
sub UNIVERSE_AGE() { 13.799E+9 * JYEAR; }
sub UNIVERSE_RADIUS() { 14.26E+9 * PARSEC; }
sub UNIVERSE_MASS() { 1.46E+53 * KILOGRAM; }
sub EINSTEIN() { 4.0 * TAU * GRAVITATION / (LIGHT * (LIGHT) * (LIGHT) *
         (LIGHT)); }
sub EINSTEIN_ERR() { GRAVITATION_ERR; }
sub HUBBLE() { 67.66E-3 * METER / (SECOND * PARSEC); }
sub HUBBLE_ERR() { 6.0E-3; }
sub HUBBLERADIUS() { LIGHT / HUBBLE; }
sub BHMASSTEMP() { ((LIGHT * (LIGHT) * (LIGHT)) * HBAR / (4.0 * TAU *
         GRAVITATION * BOLTZMANN)); }
sub BHMASS_RADIUS() { 0.5 * (LIGHT * (LIGHT)) / GRAVITATION; }
sub BHMASS3_LIFETIME() { (PLANCK * (LIGHT * (LIGHT) * (LIGHT) * (LIGHT)))
         / (2560.0 * (TAU * (TAU)) * (GRAVITATION * (GRAVITATION))); }
sub BHRADIUS2DENSITY() { 1.5 * BHMASS_RADIUS / TAU; }
sub BHMASS2_ENTROPY() { (PLANCK * LIGHT) / (2.0 * TAU * TAU * GRAVITATION
         * BOLTZMANN); }
sub BHENTROPY_AREA() { (TAU * (LIGHT * (LIGHT) * (LIGHT)) * BOLTZMANN) /
         (4.0 * PLANCK * GRAVITATION); }
sub BHMASS2POWER() { (LIGHT * (LIGHT) * (LIGHT) * (LIGHT) * (LIGHT) *
         (LIGHT)) * PLANCK / (7680.0 * (TAU * (TAU)) * (GRAVITATION *
         (GRAVITATION))); }
sub BHMASS2_AREA() { BHMASS2_ENTROPY * BHENTROPY_AREA; }
sub BHMASS2_DENSITY() { (BHMASS_RADIUS * (BHMASS_RADIUS)) *
         BHRADIUS2DENSITY; }
sub BEKENSTEININFORMATION() { ((TAU * (TAU)) * NAT) / (PLANCK * LIGHT); }
sub BEKENSTEINENTROPY() { ((TAU * (TAU)) * BOLTZMANN) / (PLANCK * LIGHT); }
sub ELEVATIONMAX() { 8848.0 * METER; }
sub ELEVATIONMIN() { - 10994.0 * METER; }
sub KPGBOUNDARY() { 65.5E+6 * JYEAR; }
sub TRJBOUNDARY() { 199.6E+6 * JYEAR; }
sub MILKYWAY_DAY() { 250.0E+6 * JYEAR; }
sub PTRBOUNDARY() { 251.4E+6 * JYEAR; }
sub NPBOUNDARY() { 542.0E+6 * JYEAR; }
sub LIFE_AGE() { 3.85E+9 * JYEAR; }
sub GIANTIMPACT() { 4.533E+9 * JYEAR; }
sub EARTH_AGE() { 4.56717E+9 * JYEAR; }
sub PPQ() { 1.0E-15; }
sub PPT() { 1.0E-12; }
sub PPB() { 1.0E-9; }
sub PPM() { 1.0E-6; }
sub PERMILLE() { 1.0E-3; }
sub PERCENT() { 1.0E-2; }
sub SOLID_ANGLE() { STERADIAN; }
sub SPEED() { LENGTH / TIME; }
sub ACCELERATION() { SPEED / TIME; }
sub FORCE() { MASS * ACCELERATION; }
sub ENERGY() { FORCE * LENGTH; }
sub ACTION() { ENERGY * TIME; }
sub POWER() { ENERGY / TIME; }
sub AREA() { (LENGTH * (LENGTH)); }
sub VOLUME() { (LENGTH * (LENGTH) * (LENGTH)); }
sub DENSITY() { MASS / VOLUME; }
sub SPECIFICHEAT() { ENERGY / (MASS * TEMPERATURE); }
sub PRESSURE() { FORCE / AREA; }
sub VISCOSITY() { FORCE * TIME / AREA; }
sub FREQUENCY() { 1 / TIME; }
sub VOLTAGE() { POWER / CURRENT; }
sub RESISTANCE() { VOLTAGE / CURRENT; }
sub INDUCTANCE() { RESISTANCE * TIME; }
sub CAPACITANCE() { CHARGE / VOLTAGE; }
sub CONDUCTANCE() { 1.0 / RESISTANCE; }
sub MAGNETICFLUX() { VOLTAGE * TIME; }
sub MAGNETICINDUCTION() { MAGNETICFLUX / AREA; }
sub true ()     { 1; }
sub false ()    { 0; }
#   IIIIIIIIIIMPORT_MASTER-Function ################################# floor #
sub floor($ )  { POSIX::floor($_[0]); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################## ceil #
sub ceil($ )   { POSIX::ceil($_[0]); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################ floorl #
sub floorl($ ) { int(POSIX::floor($_[0])); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################# ceill #
sub ceill($ )  { int(POSIX::ceil($_[0])); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################### tan #
sub tan($ )    { sin($_[0]) / cos($_[0]); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################### pow #
sub pow($$ )  { exp($_[1] * log($_[0])); }
#   IIIIIIIIIIMPORT_MASTER-Function ################################# timee #
sub timee() { my @aa = (Time::HiRes::gettimeofday());
   $aa[0] + $aa[1] / 1000000.0; }
sub id($ ) {
   my ($xx) = @_;
   return ($xx);
}
sub reci($ ) {
   my ($xx) = @_;
   return (1.0 / $xx);
}
sub neg($ ) {
   my ($xx) = @_;
   return (- $xx);
}
sub square($ ) {
   my ($xx) = @_;
   return ($xx * $xx);
}
sub sq($ ) {
   my ($xx) = @_;
   return ($xx * $xx);
}
sub sqinv($ ) {
   my ($xx) = @_;
   return (sqrt($xx));
}
sub cube($ ) {
   my ($xx) = @_;
   return ($xx * $xx * $xx);
}
sub cu($ ) {
   my ($xx) = @_;
   return ($xx * $xx * $xx);
}
sub sign($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = -1.0;
   } elsif (0.0 < $xx) {
      $retvalu = 1.0;
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub stair($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0;
   }
   return ($retvalu);
}
sub heaviside($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = 0.0;
   } elsif (0.0 < $xx) {
      $retvalu = 1.0;
   } else {
      $retvalu = 0.5;
   }
   return ($retvalu);
}
sub divi($$$ ) {
   my ($numer, $denom, $def_val) = @_;
   my $retvalu;
   if ($denom < 0.0 or 0.0 < $denom) {
      $retvalu = $numer / $denom;
   } else {
      $retvalu = $def_val;
   }
   return ($retvalu);
}
sub clip($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = $xx;
   }
   return ($retvalu);
}
sub clip2($$$ ) {
   my ($xx, $xlow, $xhigh) = @_;
   my $retvalu;
   if ($xx <= $xlow) {
      $retvalu = $xlow;
   } elsif ($xx <= $xhigh) {
      $retvalu = $xx;
   } else {
      $retvalu = $xhigh;
   }
   return ($retvalu);
}
sub clip2x($$$ ) {
   my ($xx, $xa, $xb) = @_;
   my $retvalu;
   if ($xb < $xa) {
      if ($xx <= $xb or $xa <= $xx) {
         $retvalu = $xx;
      } elsif (2.0 * $xx < $xa + $xb) {
         $retvalu = $xb;
      } else {
         $retvalu = $xa;
      }
   } else {
      if ($xx <= $xa) {
         $retvalu = $xa;
      } elsif ($xx <= $xb) {
         $retvalu = $xx;
      } else {
         $retvalu = $xb;
      }
   }
   return ($retvalu);
}
sub sba($ ) {
   my ($xx) = @_;
   my $retvalu;
   if (- 1.0 < $xx and $xx < 1.0) {
      $retvalu = $xx;
   } else {
      $retvalu = 1.0 / $xx;
   }
   return ($retvalu);
}
sub ratio($$ ) {
   my ($aa, $bb) = @_;
   my $rati;
   if (abs($aa) < abs($bb)) {
      $rati = $aa / $bb;
   } else {
      $rati = $bb / $aa;
   }
   return ($rati);
}
sub horner($$\@ ) {
   my ($xx, $deg, $coefh_arr_pc) = @_;
   my $jj;
   my $sum_curr;
   $sum_curr = $$coefh_arr_pc[$deg];
   for ($jj = $deg - 1; 0 <= $jj; $jj -= 1) {
      $sum_curr *= $xx;
      $sum_curr += $$coefh_arr_pc[$jj];
   }
   return ($sum_curr);
}
sub chebeval($$\@ ) {
   my ($xx, $deg, $cheb_arr_pc) = @_;
   my $ba;
   my $bb;
   my $bc;
   my $ii;
   $xx *= 2.0;
   $ba = $$cheb_arr_pc[$deg];
   $bb = 0.0;
   $bc = 0.0;
   for ($ii = $deg - 1; 0 <= $ii; $ii -= 1) {
      $bc = $bb;
      $bb = $ba;
      $ba = $xx * $bb - $bc + $$cheb_arr_pc[$ii];
   }
   return (($ba - $bc) / 2.0);
}
sub ln($ ) {
   my ($xx) = @_;
   return (log($xx));
}
sub lg($ ) {
   my ($xx) = @_;
   return (log($xx) / TWOLN);
}
sub log10($ ) {
   my ($xx) = @_;
   return (log($xx) / log(10.0));
}
sub logx($$ ) {
   my ($xx, $bb) = @_;
   return (log($xx) / log($bb));
}
sub l10($ ) {
   my ($xx) = @_;
   return (log($xx) / log(10.0));
}
sub log2($ ) {
   my ($xx) = @_;
   return (log($xx) / Kw::TWOLN);
}
sub fmod($$ ) {
   my ($xx, $yymodulus) = @_;
   my $retvalu;
   my $qu;
   if ($yymodulus < 0.0 or 0.0 < $yymodulus) {
      $qu = $xx / $yymodulus;
      if ($qu < 0.0) {
         $retvalu = $xx - ceil($qu) * $yymodulus;
      } else {
         $retvalu = $xx - floor($qu) * $yymodulus;
      }
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub modf($\@ ) {
   my ($xx, $ret_int_arr_p) = @_;
   my $retvalu;
   my $int_part;
   if ($xx < 0.0) {
      $int_part = ceil($xx);
   } elsif (0.0 < $xx) {
      $int_part = floor($xx);
   } else {
      $int_part = 0;
   }
   $$ret_int_arr_p[0] = $xx - $int_part;
   return ($retvalu);
}
sub fmody($$ ) {
   my ($xx, $yymodulus) = @_;
   my $retvalu;
   if ($yymodulus < 0.0 or 0.0 < $yymodulus) {
      $retvalu = $xx - floor($xx / $yymodulus) * $yymodulus;
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub fmodu($$ ) {
   my ($xx, $yymodulus) = @_;
   my $retvalu;
   if ($yymodulus < 0.0 or 0.0 < $yymodulus) {
      $retvalu = fmod($xx, $yymodulus);
      if ($retvalu < 0.0) {
         $retvalu += abs($yymodulus);
      }
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub remquou($$\@ ) {
   my ($xx, $yymodulus, $ret_int_arr_p) = @_;
   my $retvalu;
   my $qu;
   my $fl;
   if ($yymodulus < 0.0 or 0.0 < $yymodulus) {
      $qu = $xx / $yymodulus;
      $fl = floor($qu);
      $retvalu = $qu - $fl;
   } else {
      $fl = 0.0;
      $retvalu = $xx;
   }
   $$ret_int_arr_p[0] = $fl;
   return ($retvalu);
}
sub fmods($$ ) {
   my ($xx, $yymodulus) = @_;
   my $retvalu;
   my $ayy;
   my $lim;
   if ($yymodulus < 0.0 or 0.0 < $yymodulus) {
      $retvalu = fmod($xx, $yymodulus);
      $ayy = abs($yymodulus);
      $lim = $ayy / 2.0;
      if ($retvalu < - $lim) {
         $retvalu += $ayy;
      } elsif ($lim <= $retvalu) {
         $retvalu -= $ayy;
      }
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub pow2($ ) {
   my ($expo) = @_;
   return (Kw::pow(2.0, $expo));
}
sub pow10($ ) {
   my ($expo) = @_;
   return (Kw::pow(10.0, $expo));
}
sub sigmoid($ ) {
   my ($xx) = @_;
   return (1.0 / (1.0 + exp(-$xx)));
}
sub sigmoidinv($ ) {
   my ($xx) = @_;
   return (- log(((1.0 / $xx - 0.5) - 0.5)));
}
sub sigmoid3($$$ ) {
   my ($aa, $bb, $xx) = @_;
   my $retvalu;
   my $alfa;
   my $xzero;
   my $taa;
   if ($aa <= 0.0 or 1.0 <= $aa or $bb <= 0.0 or 1.0 <= $bb) {
      $retvalu = 0.0;
   } else {
      $taa = log((1.0 - $aa) / $aa);
      $alfa = log((1.0 - $bb) / $bb) - $taa;
      $xzero = -$taa / $alfa;
      $retvalu = 1.0 / (1.0 + exp($alfa * ($xx - $xzero)));
   }
   return ($retvalu);
}
sub taninv3($$$ ) {
   my ($aa, $bb, $xx) = @_;
   my $retvalu;
   my $alfa;
   my $taa;
   if ($aa <= 0.0 or 1.0 <= $aa or $bb <= 0.0 or 1.0 <= $bb) {
      $retvalu = 0.0;
   } else {
      $taa = Kw::tan(($aa - 0.5) * Kw::PI);
      $alfa = Kw::tan(($bb - 0.5) * Kw::PI) - $taa;
      $retvalu = taninv($alfa * $xx + $taa) / Kw::PI + 0.5;
   }
   return ($retvalu);
}
sub sigmoid3d($$$ ) {
   my ($aa, $bb, $xx) = @_;
   my $retvalu;
   my $alfa;
   my $xzero;
   my $taa;
   my $expa;
   if ($aa <= 0.0 or 1.0 <= $aa or $bb <= 0.0 or 1.0 <= $bb) {
      $retvalu = 0.0;
   } else {
      $taa = log((1.0 - $aa) / $aa);
      $alfa = log((1.0 - $bb) / $bb) - $taa;
      $xzero = -$taa / $alfa;
      $expa = exp($alfa * ($xx - $xzero));
      $retvalu = -$alfa * $expa / Kw::square(1.0 + $expa);
   }
   return ($retvalu);
}
sub sqrtx($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = -sqrt(-$xx);
   } else {
      $retvalu = sqrt($xx);
   }
   return ($retvalu);
}
sub smooth($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx <= -1.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $xx) {
      $retvalu = 1.0;
   } else {
      $retvalu = sigmoid(4.0 * $xx / (1.0 - $xx * $xx));
   }
   return ($retvalu);
}
sub hypot($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   my $axx;
   my $ayy;
   $axx = abs($xx);
   $ayy = abs($yy);
   if ($axx < $ayy) {
      $retvalu = $ayy;
      $ayy = $axx;
      $axx = $retvalu;
   }
   if (0.0 < $axx) {
      if ($ayy < Kw::DBLEPS * $axx) {
         $retvalu = $axx;
      } else {
         $ayy /= $axx;
         $retvalu = $axx * sqrt(1.0 + $ayy * $ayy);
      }
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub hypot1($ ) {
   my ($xx) = @_;
   return (hypot(1.0, $xx));
}
sub hypot1inv($ ) {
   my ($xx) = @_;
   return (sqrt($xx * $xx - 1.0));
}
sub hypot3($$$ ) {
   my ($xx, $yy, $zz) = @_;
   return (sqrt($xx * $xx + $yy * $yy + $zz * $zz));
}
sub topyh($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   my $xsq;
   my $ysq;
   $xsq = $xx * $xx;
   $ysq = $yy * $yy;
   if ($ysq <= 0.0) {
      $retvalu = $xx;
   } elsif ($xsq <= 0.0) {
      $retvalu = $yy;
   } elsif ($xsq < $ysq) {
      $xsq /= $ysq;
      $retvalu = -sign($xx) * sqrt(1.0 - $xsq) * abs($yy);
   } else {
      $ysq /= $xsq;
      $retvalu = sqrt(1.0 - $ysq) * $xx;
   }
   return ($retvalu);
}
sub topyh1($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < - 1.0 or 1.0 < $xx) {
      $retvalu = -sqrt($xx * $xx - 1.0);
   } else {
      $retvalu = sqrt(1.0 - $xx * $xx);
   }
   return ($retvalu);
}
sub cnv_dbl2si16($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx <= Kw::SI16MIN) {
      $retvalu = Kw::SI16MIN;
   } elsif ($xx <= Kw::SI16MAX) {
      $retvalu = floorl($xx + 0.5);
   } else {
      $retvalu = Kw::SI16MAX;
   }
   return ($retvalu);
}
sub k2tempc($ ) {
   my ($temp_k) = @_;
   return (($temp_k - Kw::K_AT_0TEMPC) * Kw::KELVIN / Kw::DEGC);
}
sub tempc2k($ ) {
   my ($temp_c) = @_;
   return ($temp_c * Kw::DEGC / Kw::KELVIN + Kw::K_AT_0TEMPC);
}
sub k2tempf($ ) {
   my ($temp_k) = @_;
   return (($temp_k - Kw::K_AT_0TEMPF) * Kw::KELVIN / Kw::DEGF);
}
sub tempf2k($ ) {
   my ($temp_f) = @_;
   return ($temp_f * Kw::DEGF / Kw::KELVIN + Kw::K_AT_0TEMPF);
}
sub k2tempr($ ) {
   my ($temp_k) = @_;
   return (($temp_k - Kw::K_AT_0TEMPR) * Kw::KELVIN / Kw::DEGR);
}
sub tempr2k($ ) {
   my ($temp_r) = @_;
   return ($temp_r * Kw::DEGR / Kw::KELVIN + Kw::K_AT_0TEMPR);
}
sub tempf2tempc($ ) {
   my ($temp_f) = @_;
   return (($temp_f - TEMPF_AT_0TEMPC) * DEGF);
}
sub tempc2tempf($ ) {
   my ($temp_c) = @_;
   return ($temp_c / DEGF + TEMPF_AT_0TEMPC);
}
sub iszero($ ) {
   my ($xx) = @_;
   return (0.0 <= $xx and $xx <= 0.0);
}
sub iseven($ ) {
   my ($xx) = @_;
   return (Kw::fmodu($xx, 2.0) < 1.0);
}
sub isodd($ ) {
   my ($xx) = @_;
   return (1.0 <= Kw::fmodu($xx, 2.0));
}
sub ismult($$ ) {
   my ($xx, $mult) = @_;
   return (Kw::fmodu($xx, $mult) < 1.0);
}
sub ismultl($$ ) {
   my ($xx, $mult) = @_;
   my $retvalu_bol;
   use integer;
   if ($xx % $mult == 0) {
      $retvalu_bol = Kw::true;
   } else {
      $retvalu_bol = Kw::false;
   }
   no integer;
   return ($retvalu_bol);
}
sub isgt($$ ) {
   my ($xx, $yy) = @_;
   return ($yy < $xx);
}
sub islt($$ ) {
   my ($xx, $yy) = @_;
   return ($xx < $yy);
}
sub isge($$ ) {
   my ($xx, $yy) = @_;
   return ($yy <= $xx);
}
sub isle($$ ) {
   my ($xx, $yy) = @_;
   return ($xx <= $yy);
}
sub ispos($ ) {
   my ($xx) = @_;
   return (0.0 < $xx);
}
sub isneg($ ) {
   my ($xx) = @_;
   return ($xx < 0.0);
}
sub iseq($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu_bol;
   my $epsx;
   my $diffxy;
   $retvalu_bol = Kw::false;
   if (Kw::iszero($xx)) {
      if (abs($yy) <= Kw::DBLEPS) {
         $retvalu_bol = Kw::true;
      }
   } else {
      $epsx = 2.0 * $xx * Kw::DBLEPS;
      $diffxy = $xx - $yy;
      if ($epsx < 0.0) {
         $epsx = -$epsx;
      }
      if (- $epsx <= $diffxy and $diffxy <= $epsx) {
         $retvalu_bol = Kw::true;
      }
   }
   return ($retvalu_bol);
}
sub isneq($$ ) {
   my ($xx, $yy) = @_;
   return ($xx < $yy or $yy < $xx);
}
sub isint($ ) {
   my ($xx) = @_;
   return (Kw::iseq($xx, floor($xx)));
}
sub isnegint($ ) {
   my ($xx) = @_;
   return ($xx < 0.0 and Kw::iseq($xx, floor($xx)));
}
sub isposint($ ) {
   my ($xx) = @_;
   return (0.0 < $xx and Kw::iseq($xx, floor($xx)));
}
sub ifzero($$$ ) {
   my ($cond, $tru_val, $fal_val) = @_;
   my $retvalu;
   if ($cond < 0.0 or 0.0 < $cond) {
      $retvalu = $fal_val;
   } else {
      $retvalu = $tru_val;
   }
   return ($retvalu);
}
sub isalmostequal($$$ ) {
   my ($xx, $yy, $epsratio) = @_;
   return (abs($xx - $yy) <= abs($epsratio * $xx));
}
sub iswithin($$$ ) {
   my ($xx, $yy, $delta) = @_;
   return ($xx - $delta <= $yy and $yy <= $xx + $delta);
}
sub isbetweenx($$$ ) {
   my ($xx, $min_xx, $max_xx) = @_;
   return ($min_xx < $xx and $xx < $max_xx);
}
sub isbetween($$$ ) {
   my ($xx, $min_xx, $max_xx) = @_;
   return ($min_xx <= $xx and $xx <= $max_xx);
}
sub isleapyear($ ) {
   my ($gregyear) = @_;
   my $retvalu_bol;
   my $rema;
   $retvalu_bol = Kw::false;
   if (($gregyear % 4) == 0) {
      $rema = ($gregyear % 400);
      if ($rema != 100 and $rema != 200 and $rema != 300) {
         $retvalu_bol = Kw::true;
      }
   }
   return ($retvalu_bol);
}
sub isss($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu_bol;
   if (0.0 < $xx) {
      if (0.0 < $yy) {
         $retvalu_bol = Kw::true;
      } else {
         $retvalu_bol = Kw::false;
      }
   } elsif ($xx < 0.0) {
      if ($yy < 0.0) {
         $retvalu_bol = Kw::true;
      } else {
         $retvalu_bol = Kw::false;
      }
   } else {
      if (0.0 < $yy or $yy < 0.0) {
         $retvalu_bol = Kw::false;
      } else {
         $retvalu_bol = Kw::true;
      }
   }
   return ($retvalu_bol);
}
sub issignsame($$ ) {
   my ($xx, $yy) = @_;
   return (Kw::isss($xx, $yy));
}
sub isfloorsame($$$ ) {
   my ($xx, $yy, $multy) = @_;
   return (Kw::iseq(floor($xx * $multy), floor($yy * $multy)));
}
{
sub LC_MAGIC_INT() { 2070108020; }
   sub LC_MAGIC_INT_NOT() { 301040105; }
   sub magicset() {
      return (LC_MAGIC_INT);
   }
   sub magicnot() {
      return (LC_MAGIC_INT_NOT);
   }
}
sub ismagic($ ) {
   my ($xx) = @_;
   return (iseq($xx, magicset()));
}
sub rtoz($ ) {
   my ($xx) = @_;
   my $retvalu;
   if ($xx < 0.0) {
      $retvalu = ceil($xx);
   } else {
      $retvalu = floor($xx);
   }
   return ($retvalu);
}
sub rtoi($ ) {
   my ($xx) = @_;
   my $retvalu;
   if (0.0 <= $xx) {
      $retvalu = ceil($xx);
   } else {
      $retvalu = floor($xx);
   }
   return ($retvalu);
}
sub bankers($ ) {
   my ($xx) = @_;
   my $retvalu;
   $retvalu = floor($xx + 0.5);
   if (Kw::isint($xx + 0.5) and Kw::isodd($retvalu)) {
      $retvalu -= 1.0;
   }
   return ($retvalu);
}
sub round($ ) {
   my ($xx) = @_;
   my $retvalu;
   $retvalu = floor($xx + 0.5);
   return ($retvalu);
}
sub iround($ ) {
   my ($xx) = @_;
   my $retvalu;
   $retvalu = floor($xx + 0.5);
   return ($retvalu);
}
sub round2($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if (Kw::iszero($yy)) {
      $retvalu = $xx;
   } else {
      $retvalu = Kw::round($xx / $yy) * $yy;
   }
   return ($retvalu);
}
sub roundy($$$ ) {
   my ($xx, $yy, $shf) = @_;
   my $retvalu;
   if ($yy < 0.0 or 0.0 < $yy) {
      $retvalu = (Kw::round(($xx - $shf) / $yy) * $yy + $shf);
   } else {
      $retvalu = $xx;
   }
   return ($retvalu);
}
sub rtomsd($$ ) {
   my ($fs, $msds) = @_;
   my $retvalu;
   my $signs;
   my $logi;
   if (Kw::iszero($fs)) {
      $retvalu = 0.0;
   } else {
      if ($fs < 0.0) {
         $signs = -1.0;
         $fs = -$fs;
      } else {
         $signs = 1.0;
      }
      $logi = floor(Kw::log10($fs) - $msds + 1.0);
      $retvalu = $signs * Kw::round2($fs, Kw::pow(10.0, $logi));
   }
   return ($retvalu);
}
sub rto125($ ) {
   my ($fs) = @_;
   my $signs;
   my $tmpf;
   my $valu;
   my $pow_ten;
   my $retvalu;
   if (Kw::iszero($fs)) {
      $retvalu = 0.0;
   } else {
      if ($fs < 0.0) {
         $signs = -1.0;
         $fs = -$fs;
      } else {
         $signs = 1.0;
      }
      $pow_ten = Kw::pow(10.0, floor(Kw::log10($fs)));
      $tmpf = $fs / $pow_ten;
      if ($tmpf < sqrt(2.0)) {
         $valu = 1.0;
      } elsif ($tmpf < sqrt(10.0)) {
         $valu = 2.0;
      } elsif ($tmpf < sqrt(50.0)) {
         $valu = 5.0;
      } else {
         $valu = 10.0;
      }
      $retvalu = $signs * $pow_ten * $valu;
   }
   return ($retvalu);
}
sub floor2($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if (Kw::iszero($yy)) {
      $retvalu = 0.0;
   } else {
      $retvalu = floor($xx / abs($yy)) * abs($yy);
   }
   return ($retvalu);
}
sub ceil2($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if (Kw::iszero($yy)) {
      $retvalu = 0.0;
   } else {
      $retvalu = ceil($xx / abs($yy)) * abs($yy);
   }
   return ($retvalu);
}
sub fmod2($$$ ) {
   my ($xx, $minn, $maxx) = @_;
   my $retvalu;
   if (Kw::iseq($maxx, $minn)) {
      $retvalu = 0.0;
   } else {
      $retvalu = Kw::fmodu($xx - $minn, $maxx - $minn) + $minn;
   }
   return ($retvalu);
}
sub frac($ ) {
   my ($xx) = @_;
   return ($xx - floor($xx));
}
sub trunc($ ) {
   my ($xx) = @_;
   my $retvalu;
   if (0.0 <= $xx) {
      $retvalu = $xx - floor($xx);
   } else {
      $retvalu = $xx - ceil($xx);
   }
   return ($retvalu);
}
sub fmul($$ ) {
   my ($xx, $pp) = @_;
   my $lpp;
   $lpp = log($pp);
   return (exp($lpp * Kw::frac(log($xx) / $lpp)));
}
sub dist($$ ) {
   my ($xx, $xmoduli) = @_;
   my $retvalu;
   my $axx;
   my $axmoduli;
   $axx = abs($xx);
   $axmoduli = abs($xmoduli);
   $retvalu = Kw::fmod($axx, $axmoduli);
   if ($axmoduli < 2.0 * $retvalu) {
      $retvalu = $axmoduli - $retvalu;
   }
   return ($retvalu);
}
sub ddist($$ ) {
   my ($xx, $xmoduli) = @_;
   my $retvalu;
   my $rema;
   my $axmoduli;
   if (Kw::iszero($xmoduli)) {
      $retvalu = 0.0;
   } else {
      $axmoduli = abs($xmoduli);
      $rema = $xx - floor($xx / $axmoduli) * $axmoduli;
      if ($axmoduli < 2.0 * $rema) {
         $rema -= $axmoduli;
      }
      $retvalu = $rema;
   }
   return ($retvalu);
}
sub sinc($ ) {
   my ($xx_rad) = @_;
   my $retvalu;
   if ($xx_rad < 0.0 or 0.0 < $xx_rad) {
      $retvalu = sin($xx_rad) / $xx_rad;
   } else {
      $retvalu = 1.0;
   }
   return ($retvalu);
}
sub sincinv($ ) {
   my ($yy) = @_;
   my $min_yy;
   my $min_xx;
   my $start_xx;
   my $aa;
   my $bb;
   my $nrvx_ii;
   my $nrvx_yy;
   my $nrvx_xx;
   my $nrvx_dy;
   my $nrvx_xp;
   $min_xx = 4.4934094579090641753079882808139693729311345;
   $min_yy = sinc($min_xx);
   if ($yy <= $min_yy) {
      $nrvx_xx = $min_xx;
   } elsif ($yy < 1.0) {
      $aa = $yy - $min_yy;
      $bb = 1.0 - $yy;
      $start_xx = ($aa * sqrt(5.0 * $bb) + $bb * ($min_xx - sqrt(6.0 *
               $aa))) / (1.0 - $min_yy);
      $nrvx_xx = $start_xx;
      for ($nrvx_ii = 0; $nrvx_ii <= 20; $nrvx_ii += 1) {
         $nrvx_xp = $nrvx_xx;
         $nrvx_dy = cos($nrvx_xx) - $yy;
         if (Kw::iszero($nrvx_dy)) {
            last;
         }
         $nrvx_yy = sin($nrvx_xx) - $yy * $nrvx_xx;
         $nrvx_xx -= $nrvx_yy / $nrvx_dy;
         if (Kw::iseq($nrvx_xp, $nrvx_xx)) {
            last;
         }
      }
   } else {
      $nrvx_xx = 0.0;
   }
   return ($nrvx_xx);
}
sub sincc($ ) {
   my ($xx_rad) = @_;
   my $trigsign;
   my $xr_rad;
   my $sum_curr;
   my $sum_prev;
   my $nxr_sqr;
   my $ii;
   my $term;
   my $retvalu;
   if (Kw::iszero($xx_rad)) {
      $retvalu = 1.0;
   } else {
      $xr_rad = Kw::fmod($xx_rad, Kw::TAU);
      if (Kw::TAU / 2.0 < $xr_rad) {
         $xr_rad = Kw::TAU - $xr_rad;
         $trigsign = -1.0;
      } else {
         $trigsign = 1.0;
      }
      if (Kw::TAU / 4.0 < $xr_rad) {
         $xr_rad = Kw::TAU / 2.0 - $xr_rad;
      }
      $nxr_sqr = -$xr_rad * $xr_rad;
      $sum_curr = $xr_rad;
      $term = $xr_rad;
      $ii = 2;
      for (;;) {
         $term *= $nxr_sqr / ($ii * ($ii - 1.0));
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
         $ii += 2;
      }
      $retvalu = $trigsign * $sum_curr * $xr_rad / $xx_rad;
   }
   return ($retvalu);
}
sub versin($ ) {
   my ($circ_rad) = @_;
   my $trigsign;
   my $xr_rad;
   my $xr_sqr;
   my $ii;
   my $sum_curr;
   my $term;
   my $sum_prev;
   $xr_rad = Kw::fmod($circ_rad, Kw::TAU);
   if (Kw::TAU / 2.0 < $xr_rad) {
      $xr_rad = Kw::TAU - $xr_rad;
   }
   if (Kw::TAU / 4.0 < $xr_rad) {
      $xr_rad = Kw::TAU / 2.0 - $xr_rad;
      $trigsign = -1.0;
   } else {
      $trigsign = 1.0;
   }
   $xr_sqr = -$xr_rad * $xr_rad;
   $sum_curr = 1.0 / 2.0;
   $term = 1.0 / 2.0;
   $ii = 4;
   for (;;) {
      $term *= $xr_sqr / ($ii * ($ii - 1.0));
      $sum_prev = $sum_curr;
      $sum_curr += $term;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $ii += 2;
   }
   $sum_curr *= - $xr_sqr;
   if ($trigsign < 0.0) {
      $sum_curr = 2.0 - $sum_curr;
   }
   return ($sum_curr);
}
sub haversin($ ) {
   my ($circ_rad) = @_;
   return (versin($circ_rad) / 2.0);
}
sub tur2deg($ ) {
   my ($circ_tur) = @_;
   return ($circ_tur * Kw::TURN / Kw::ARCDEG);
}
sub deg2tur($ ) {
   my ($circ_deg) = @_;
   return ($circ_deg * Kw::ARCDEG / Kw::TURN);
}
sub tur2rad($ ) {
   my ($circ_tur) = @_;
   return ($circ_tur * Kw::TURN / Kw::RADIAN);
}
sub rad2tur($ ) {
   my ($circ_rad) = @_;
   return ($circ_rad * Kw::RADIAN / Kw::TURN);
}
sub tur2sec($ ) {
   my ($circ_tur) = @_;
   return ($circ_tur * Kw::TURN / Kw::ARCSEC);
}
sub sec2tur($ ) {
   my ($circ_sec) = @_;
   return ($circ_sec * Kw::ARCSEC / Kw::TURN);
}
sub rad2deg($ ) {
   my ($circ_rad) = @_;
   return ($circ_rad * Kw::RADIAN / Kw::ARCDEG);
}
sub deg2rad($ ) {
   my ($circ_deg) = @_;
   return ($circ_deg * Kw::ARCDEG / Kw::RADIAN);
}
sub rad2sec($ ) {
   my ($circ_rad) = @_;
   return ($circ_rad * Kw::RADIAN / Kw::ARCSEC);
}
sub sec2rad($ ) {
   my ($circ_sec) = @_;
   return ($circ_sec * Kw::ARCSEC / Kw::RADIAN);
}
sub deg2sec($ ) {
   my ($circ_deg) = @_;
   return ($circ_deg * Kw::ARCDEG / Kw::ARCSEC);
}
sub sec2deg($ ) {
   my ($circ_sec) = @_;
   return ($circ_sec * Kw::ARCSEC / Kw::ARCDEG);
}
sub rad2dms($ ) {
   my ($xx_rads) = @_;
   my $dd_deg;
   my $mm_min;
   my $dg;
   $dg = rad2deg($xx_rads);
   $dd_deg = floor($dg);
   $dg = ($dg - $dd_deg) * Kw::ARCDEG / Kw::ARCMIN;
   $mm_min = floor($dg);
   $dg = ($dg - $mm_min) * Kw::ARCMIN / Kw::ARCSEC;
   return ($dd_deg + ($mm_min + $dg / 100.0) / 100.0);
}
sub rad2dms2($ ) {
   my ($circ_rads) = @_;
   my $dg;
   my @dd_deg_arr;
   my @mm_min_arr;
   $dg = rad2deg($circ_rads);
   $dg = Kw::modf($dg, @dd_deg_arr) * Kw::ARCDEG / Kw::ARCMIN;
   $dg = Kw::modf($dg, @mm_min_arr) * Kw::ARCMIN / Kw::ARCSEC;
   return ($dd_deg_arr[0] + ($mm_min_arr[0] + $dg / 100.0) / 100.0);
}
sub dms2rad($ ) {
   my ($circ_dms) = @_;
   my $dd_deg;
   my $mm_min;
   my $dg;
   $dd_deg = floor($circ_dms);
   $dg = ($circ_dms - $dd_deg) * 100.0;
   $mm_min = floor($dg);
   $dg = ($dg - $mm_min) * 100.0;
   return (($dg * Kw::ARCSEC + $mm_min * Kw::ARCMIN + $dd_deg *
            Kw::ARCDEG) / Kw::RADIAN);
}
sub deg2dms($ ) {
   my ($circ_deg) = @_;
   return (rad2dms(deg2rad($circ_deg)));
}
sub dms2deg($ ) {
   my ($circ_dms) = @_;
   return (rad2deg(dms2rad($circ_dms)));
}
sub cot($ ) {
   my ($circ_rad) = @_;
   return (cos($circ_rad) / sin($circ_rad));
}
sub sec($ ) {
   my ($circ_rad) = @_;
   return (1.0 / cos($circ_rad));
}
sub csc($ ) {
   my ($circ_rad) = @_;
   return (1.0 / sin($circ_rad));
}
sub sininv($ ) {
   my ($xx) = @_;
   return (atan2($xx, Kw::topyh1($xx)));
}
sub cosinv($ ) {
   my ($xx) = @_;
   return (atan2(Kw::topyh1($xx), $xx));
}
sub taninv($ ) {
   my ($xx) = @_;
   return (atan2($xx, 1.0));
}
sub cotinv($ ) {
   my ($xx) = @_;
   return (atan2(1.0, $xx));
}
sub secinv($ ) {
   my ($xx) = @_;
   return (atan2(sqrt($xx * $xx - 1.0), Kw::sign($xx)));
}
sub cscinv($ ) {
   my ($xx) = @_;
   return (atan2(Kw::sign($xx), sqrt($xx * $xx - 1.0)));
}
sub sinh($ ) {
   my ($hyp_rad) = @_;
   return ((exp($hyp_rad) - exp(-$hyp_rad)) / 2.0);
}
sub cosh($ ) {
   my ($hyp_rad) = @_;
   return ((exp($hyp_rad) + exp(-$hyp_rad)) / 2.0);
}
sub tanh($ ) {
   my ($hyp_rad) = @_;
   return (sinh($hyp_rad) / cosh($hyp_rad));
}
sub coth($ ) {
   my ($hyp_rad) = @_;
   return (cosh($hyp_rad) / sinh($hyp_rad));
}
sub sech($ ) {
   my ($hyp_rad) = @_;
   return (1.0 / cosh($hyp_rad));
}
sub csch($ ) {
   my ($hyp_rad) = @_;
   return (1.0 / sinh($hyp_rad));
}
sub gd($ ) {
   my ($hyp_rad) = @_;
   return (2.0 * atan2(exp($hyp_rad), 1.0) - Kw::PI / 2.0);
}
sub gdinv($ ) {
   my ($xx) = @_;
   my $xxn;
   $xxn = Kw::fmods($xx, Kw::PI);
   return (log(abs((1.0 + sin($xxn)) / cos($xxn))));
}
sub sinhinv($ ) {
   my ($xx) = @_;
   return (log($xx + sqrt($xx * $xx + 1.0)));
}
sub coshinv($ ) {
   my ($xx) = @_;
   return (log($xx + sqrt($xx * $xx - 1.0)));
}
sub tanhinv($ ) {
   my ($xx) = @_;
   return (log((1.0 + $xx) / (1.0 - $xx)) / 2.0);
}
sub cothinv($ ) {
   my ($xx) = @_;
   return (log(($xx + 1.0) / ($xx - 1.0)) / 2.0);
}
sub sechinv($ ) {
   my ($xx) = @_;
   return (log((1.0 + Kw::topyh1($xx)) / $xx));
}
sub cschinv($ ) {
   my ($xx) = @_;
   return (log((1.0 + sqrt(1.0 + $xx * $xx)) / $xx));
}
sub atan2h($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if (abs($yy) <= abs($xx)) {
      $retvalu = 0.0;
   } else {
      $retvalu = log(($yy + $xx) / ($yy - $xx)) / 2.0;
   }
   return ($retvalu);
}
sub atan2u($$ ) {
   my ($xx, $yy) = @_;
   return (Kw::fmodu(atan2($xx, $yy), Kw::tur2rad(1.0)));
}
sub sind($ ) {
   my ($circ_deg) = @_;
   return (sin(deg2rad($circ_deg)));
}
sub sindinv($ ) {
   my ($xx) = @_;
   return (rad2deg(sininv($xx)));
}
sub cosd($ ) {
   my ($circ_deg) = @_;
   return (cos(deg2rad($circ_deg)));
}
sub cosdinv($ ) {
   my ($xx) = @_;
   return (rad2deg(cosinv($xx)));
}
sub tand($ ) {
   my ($circ_deg) = @_;
   return (Kw::tan(deg2rad($circ_deg)));
}
sub tandinv($ ) {
   my ($xx) = @_;
   return (rad2deg(taninv($xx)));
}
sub cotd($ ) {
   my ($circ_deg) = @_;
   return (cot(deg2rad($circ_deg)));
}
sub cotdinv($ ) {
   my ($xx) = @_;
   return (rad2deg(cotinv($xx)));
}
sub secd($ ) {
   my ($circ_deg) = @_;
   return (sec(deg2rad($circ_deg)));
}
sub secdinv($ ) {
   my ($xx) = @_;
   return (rad2deg(secinv($xx)));
}
sub cscd($ ) {
   my ($circ_deg) = @_;
   return (csc(deg2rad($circ_deg)));
}
sub cscdinv($ ) {
   my ($xx) = @_;
   return (rad2deg(cscinv($xx)));
}
sub atan2d($$ ) {
   my ($xx, $yy) = @_;
   return (rad2deg(atan2($xx, $yy)));
}
sub sint($ ) {
   my ($circ_tur) = @_;
   return (sin(tur2rad($circ_tur)));
}
sub sintinv($ ) {
   my ($xx) = @_;
   return (rad2tur(sininv($xx)));
}
sub cost($ ) {
   my ($circ_tur) = @_;
   return (cos(tur2rad($circ_tur)));
}
sub costinv($ ) {
   my ($xx) = @_;
   return (rad2tur(cosinv($xx)));
}
sub tant($ ) {
   my ($circ_tur) = @_;
   return (Kw::tan(tur2rad($circ_tur)));
}
sub tantinv($ ) {
   my ($xx) = @_;
   return (rad2tur(taninv($xx)));
}
sub cott($ ) {
   my ($circ_tur) = @_;
   return (cot(tur2rad($circ_tur)));
}
sub cottinv($ ) {
   my ($xx) = @_;
   return (rad2tur(cotinv($xx)));
}
sub sect($ ) {
   my ($circ_tur) = @_;
   return (sec(tur2rad($circ_tur)));
}
sub sectinv($ ) {
   my ($xx) = @_;
   return (rad2tur(secinv($xx)));
}
sub csct($ ) {
   my ($circ_tur) = @_;
   return (csc(tur2rad($circ_tur)));
}
sub csctinv($ ) {
   my ($xx) = @_;
   return (rad2tur(cscinv($xx)));
}
sub atan2t($$ ) {
   my ($xx, $yy) = @_;
   return (rad2tur(atan2($xx, $yy)));
}
sub sqrtxp1m1($ ) {
   my ($xx) = @_;
   my $retvalu;
   if (abs($xx) < 0.01) {
      $retvalu = ((((((((-429.0 / 32768.0) * $xx + 33.0 / 2048.0) * $xx -
               21.0 / 1024.0) * $xx + 7.0 / 256.0) * $xx - 5.0 / 128.0) *
               $xx + 1.0 / 16.0) * $xx - 1.0 / 8.0) * $xx + 1.0 / 2.0) * $xx;
   } else {
      $retvalu = sqrt(1.0 + $xx) - 1.0;
   }
   return ($retvalu);
}
sub ln1p($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $sum_curr;
   my $jj;
   my $start;
   if (0.1 < abs($xx)) {
      $retvalu = log(1.0 + $xx);
   } elsif (Kw::iszero($xx)) {
      $retvalu = 0.0;
   } else {
      $start = ceil(abs(log(Kw::DBLEPS) / log(abs($xx))));
      if ($start < 2) {
         $start = 2;
      }
      $sum_curr = 0.0;
      for ($jj = $start; 1 <= $jj; $jj -= 1) {
         $sum_curr = 1.0 / $jj - $sum_curr * $xx;
      }
      $retvalu = $sum_curr * $xx;
   }
   return ($retvalu);
}
sub expm1($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $sum_curr;
   my $jj;
   my $start;
   if (0.1 < abs($xx)) {
      $retvalu = exp($xx) - 1.0;
   } elsif (Kw::iszero($xx)) {
      $retvalu = 0.0;
   } else {
      $start = ceil(abs(log(Kw::DBLEPS) / log(abs($xx))));
      if ($start < 2) {
         $start = 2;
      }
      $sum_curr = 0.0;
      for ($jj = $start; 1 <= $jj; $jj -= 1) {
         $sum_curr = $xx * (1.0 + $sum_curr) / $jj;
      }
      $retvalu = $sum_curr;
   }
   return ($retvalu);
}
sub cosm1($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $sum_curr;
   my $jj;
   my $start;
   my $xr_sqr;
   if (0.1 < abs($xx)) {
      $retvalu = cos($xx) - 1.0;
   } elsif (Kw::iszero($xx)) {
      $retvalu = 0.0;
   } else {
      $start = ceil(abs(log(Kw::DBLEPS) / log(abs($xx))));
      if ($start < 6) {
         $start = 6;
      } elsif (Kw::isodd($start)) {
         $start += 1;
      }
      $xr_sqr = -$xx * $xx;
      $sum_curr = 1.0 / ($start * ($start + 1.0));
      for ($jj = $start; 2 <= $jj; $jj -= 2) {
         $sum_curr += 1.0;
         $sum_curr *= $xr_sqr / ($jj * ($jj - 1.0));
      }
      $retvalu = $sum_curr;
   }
   return ($retvalu);
}
sub lns($ ) {
   my ($xx) = @_;
   my $aa;
   my $retvalu;
   $aa = abs($xx);
   if ($aa < 1.0 / Kw::DBLMAX) {
      $retvalu = -Kw::DBLMAXLN - 1.0;
   } else {
      $retvalu = log($aa);
   }
   return ($retvalu);
}
sub trip($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $fx;
   $fx = 4.0 * frac($xx);
   if ($fx < 2.0) {
      $retvalu = 1.0 - $fx;
   } else {
      $retvalu = $fx - 3.0;
   }
   return ($retvalu);
}
{
sub lf_cbrtx_gt_zero($ ) {
   my ($xx) = @_;
      my $yy;
      my $zz;
      $zz = 64.0 * $xx / 27.0;
      $yy = 1.0;
      while ($zz <= 1.0) {
         $zz *= 8.0;
         $yy /= 2.0;
      }
      while (8.0 < $zz) {
         $zz /= 8.0;
         $yy *= 2.0;
      }
      return ($yy);
   }
   sub cbrt($ ) {
      my ($yy) = @_;
      my $ayy;
      my $init_xx;
      my $nrvx_ii;
      my $nrvx_yy;
      my $nrvx_xx;
      my $nrvx_dy;
      my $nrvx_xp;
      $ayy = abs($yy);
      if (0.0 < $ayy) {
         $init_xx = lf_cbrtx_gt_zero($ayy);
         if ($yy < 0.0) {
            $init_xx = -$init_xx;
         }
         $nrvx_xx = $init_xx;
         for ($nrvx_ii = 0; $nrvx_ii <= 20; $nrvx_ii += 1) {
            $nrvx_xp = $nrvx_xx;
            $nrvx_dy = 3.0 * $nrvx_xx * $nrvx_xx;
            if (Kw::iszero($nrvx_dy)) {
               last;
            }
            $nrvx_yy = $nrvx_xx * $nrvx_xx * $nrvx_xx - $yy;
            $nrvx_xx -= $nrvx_yy / $nrvx_dy;
            if (Kw::iseq($nrvx_xp, $nrvx_xx)) {
               last;
            }
         }
      } else {
         $nrvx_xx = 0.0;
      }
      return ($nrvx_xx);
   }
}
sub cuberoot($ ) {
   my ($xx) = @_;
   return (cbrt($xx));
}
sub squareroot($ ) {
   my ($xx) = @_;
   return (sqrt($xx));
}
sub print_array($\@ ) {
   my ($arr_size, $data_arr_pc) = @_;
   my $ii;
   for ($ii = 0; $ii <= $arr_size - 1; $ii += 1) {
      print($$data_arr_pc[$ii]);
      print(" ");
   }
   return ($arr_size);
}
{
sub lf_continued_fraction($$ ) {
   my ($orig, $show_diff) = @_;
      my $whole;
      my $xx;
      my $epsilon;
      my $den_a;
      my $den_b;
      my $den_c;
      my $num_a;
      my $num_b;
      my $num_c;
      my $diff;
      my $steps;
      my $appr;
      $steps = 0;
      $xx = $orig;
      $den_b = 0;
      $num_b = 1;
      $den_a = 1;
      $num_a = 0;
      $epsilon = Kw::DBLEPS / 2.0;
      for (;;) {
         $whole = floorl($xx);
         $den_c = $den_b * $whole + $den_a;
         $num_c = $num_b * $whole + $num_a;
         $den_a = $den_b;
         $num_a = $num_b;
         $den_b = $den_c;
         $num_b = $num_c;
         $steps += 1;
         $appr = (1.0 * $num_b / $den_b);
         $diff = $orig - $appr;
         print("");
         print($whole);
         if (0 <= $show_diff) {
            print("\t");
            print($num_b);
            print(" / ");
            print($den_b);
            print("\t");
            print($appr);
            if (0 < $show_diff) {
               print("\t");
               print($diff);
            }
            print("\n");
         } else {
            print(" ");
         }
         if (Kw::iseq($xx, $whole)) {
            last;
         }
         $xx = 1.0 / ($xx - $whole);
         $epsilon *= 2.0;
         if (abs($diff) < $epsilon) {
            last; # loop AWAIT
         }
      }
      return ($steps);
   }
   sub contfra_print($ ) {
      my ($orig) = @_;
      return (lf_continued_fraction($orig, -1));
   }
   sub contfrac_print($ ) {
      my ($orig) = @_;
      return (lf_continued_fraction($orig, 0));
   }
   sub contfracd_print($ ) {
      my ($orig) = @_;
      return (lf_continued_fraction($orig, 1));
   }
}
sub num2char_print($ ) {
   my ($num) = @_;
   if ($num < 32) {
      if ($num < 16) {
         if ($num < 8) {
            if ($num < 4) {
               if ($num < 2) {
                  if ($num < 1) {
                     print("0");
                  } else {
                     print("1");
                  }
               } elsif ($num < 3) {
                  print("2");
               } else {
                  print("3");
               }
            } elsif ($num < 6) {
               if ($num < 5) {
                  print("4");
               } else {
                  print("5");
               }
            } elsif ($num < 7) {
               print("6");
            } else {
               print("7");
            }
         } elsif ($num < 12) {
            if ($num < 10) {
               if ($num < 9) {
                  print("8");
               } else {
                  print("9");
               }
            } elsif ($num < 11) {
               print("a");
            } else {
               print("b");
            }
         } elsif ($num < 14) {
            if ($num < 13) {
               print("c");
            } else {
               print("d");
            }
         } elsif ($num < 15) {
            print("e");
         } else {
            print("f");
         }
      } elsif ($num < 24) {
         if ($num < 20) {
            if ($num < 18) {
               if ($num < 17) {
                  print("g");
               } else {
                  print("h");
               }
            } elsif ($num < 19) {
               print("i");
            } else {
               print("j");
            }
         } elsif ($num < 22) {
            if ($num < 21) {
               print("k");
            } else {
               print("l");
            }
         } elsif ($num < 23) {
            print("m");
         } else {
            print("n");
         }
      } elsif ($num < 28) {
         if ($num < 26) {
            if ($num < 25) {
               print("o");
            } else {
               print("p");
            }
         } elsif ($num < 27) {
            print("q");
         } else {
            print("r");
         }
      } elsif ($num < 30) {
         if ($num < 29) {
            print("s");
         } else {
            print("t");
         }
      } elsif ($num < 31) {
         print("u");
      } else {
         print("v");
      }
   } elsif ($num < 48) {
      if ($num < 40) {
         if ($num < 36) {
            if ($num < 34) {
               if ($num < 33) {
                  print("w");
               } else {
                  print("x");
               }
            } elsif ($num < 35) {
               print("y");
            } else {
               print("z");
            }
         } elsif ($num < 38) {
            if ($num < 37) {
               print("A");
            } else {
               print("B");
            }
         } elsif ($num < 39) {
            print("C");
         } else {
            print("D");
         }
      } elsif ($num < 44) {
         if ($num < 42) {
            if ($num < 41) {
               print("E");
            } else {
               print("F");
            }
         } elsif ($num < 43) {
            print("G");
         } else {
            print("H");
         }
      } elsif ($num < 46) {
         if ($num < 45) {
            print("I");
         } else {
            print("J");
         }
      } elsif ($num < 47) {
         print("K");
      } else {
         print("L");
      }
   } elsif ($num < 56) {
      if ($num < 52) {
         if ($num < 50) {
            if ($num < 49) {
               print("M");
            } else {
               print("N");
            }
         } elsif ($num < 51) {
            print("O");
         } else {
            print("P");
         }
      } elsif ($num < 54) {
         if ($num < 53) {
            print("Q");
         } else {
            print("R");
         }
      } elsif ($num < 55) {
         print("S");
      } else {
         print("T");
      }
   } elsif ($num < 60) {
      if ($num < 58) {
         if ($num < 57) {
            print("U");
         } else {
            print("V");
         }
      } elsif ($num < 59) {
         print("W");
      } else {
         print("X");
      }
   } elsif ($num < 62) {
      if ($num < 61) {
         print("Y");
      } else {
         print("Z");
      }
   } elsif ($num < 63) {
      print("_");
   } elsif ($num < 64) {
      print("?");
   } else {
      print("(");
      print($num);
      print(")");
   }
   return ($num);
}
sub base_out_print($$ ) {
   my ($num, $baset) = @_;
   my @digits_arr;
   my $dig_count;
   my $ii;
   use integer;
   if ($num < 0) {
      print("-");
      $num = -$num;
   }
   $dig_count = 0;
   for (;;) {
      $digits_arr[$dig_count] = $num % $baset;
      $dig_count += 1;
      $num = floorl($num / $baset);
      if ($num == 0) {
         last; # loop AWAIT
      }
   }
   for ($ii = $dig_count - 1; 0 <= $ii; $ii -= 1) {
      num2char_print($digits_arr[$ii]);
   }
   no integer;
   return ($dig_count);
}
sub base_out_fix_print($$$ ) {
   my ($num, $baset, $min_sz) = @_;
   my @digits_arr;
   my $dig_count;
   my $ii;
   use integer;
   if ($num < 0) {
      $num = -$num;
   }
   $dig_count = 0;
   for (;;) {
      $digits_arr[$dig_count] = $num % $baset;
      $dig_count += 1;
      $num = floorl($num / $baset);
      if ($num == 0) {
         last; # loop AWAIT
      }
   }
   for ($ii = $dig_count; $ii <= $min_sz - 1; $ii += 1) {
      num2char_print(0);
   }
   for ($ii = $dig_count - 1; 0 <= $ii; $ii -= 1) {
      num2char_print($digits_arr[$ii]);
   }
   no integer;
   return ($min_sz);
}
sub base_outf_print($$ ) {
   my ($num, $baset) = @_;
   my $dig_count;
   my $ii;
   my $frc;
   my $dig;
   my $lim;
   $dig_count = 0;
   if ($num < 0.0) {
      print("-");
      $num = -$num;
      $dig_count += 1;
   }
   $dig_count += base_out_print(floorl($num), $baset) + 1;
   print(".");
   $lim = ceill(-lg(DBLEPS) / lg($baset));
   $frc = frac($num) * $baset;
   $ii = 1;
   while ($ii <= $lim and not Kw::iszero($frc)) {
      $dig = floorl($frc);
      num2char_print($dig);
      $frc -= $dig;
      $frc *= $baset;
      $ii += 1;
   }
   return ($dig_count + $lim);
}
sub fvoa($$$ ) {
   my ($payment, $rate_per_paymt, $num_pays) = @_;
   my $ttp;
   $ttp = Kw::pow(1.0 + $rate_per_paymt, $num_pays);
   return ($payment * ($ttp - 1.0) / $rate_per_paymt);
}
sub fvad($$$ ) {
   my ($payment, $rate_per_paymt, $num_pays) = @_;
   return (fvoa($payment, $rate_per_paymt, $num_pays) * (1.0 +
            $rate_per_paymt));
}
sub pvoa($$$ ) {
   my ($payment, $rate_per_paymt, $num_pays) = @_;
   my $ntp;
   $ntp = Kw::pow(1.0 + $rate_per_paymt, - $num_pays);
   return ($payment * (1.0 - $ntp) / $rate_per_paymt);
}
sub pvad($$$ ) {
   my ($payment, $rate_per_paymt, $num_pays) = @_;
   my $ntp;
   $ntp = Kw::pow(1.0 + $rate_per_paymt, - $num_pays);
   return ($payment * (1.0 - $ntp) / $rate_per_paymt * (1.0 +
            $rate_per_paymt));
}
sub loanvalue($$$ ) {
   my ($payment, $rate_per_paymt, $num_pays) = @_;
   return (fvad($payment, $rate_per_paymt, $num_pays));
}
sub loanpayment($$$ ) {
   my ($loan_amt, $rate_per_paymt, $num_pays) = @_;
   my $ttp;
   $ttp = Kw::pow(1.0 + $rate_per_paymt, $num_pays);
   return ($loan_amt * $rate_per_paymt * $ttp / ($ttp - 1.0));
}
sub loanrate($$$ ) {
   my ($loan_amt, $payment, $num_pays) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   $scvx_dx = 0.01;
   $scvx_xx = 0.05;
   $scvx_yy = $payment - loanpayment($loan_amt, $scvx_xx, $num_pays);
   for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
      $scvx_xp = $scvx_xx;
      $scvx_yp = $scvx_yy;
      $scvx_xx += $scvx_dx;
      if (Kw::iseq($scvx_xp, $scvx_xx)) {
         last;
      }
      $scvx_yy = $payment - loanpayment($loan_amt, $scvx_xx, $num_pays);
      if (Kw::iseq($scvx_yy, $scvx_yp)) {
         last;
      }
      $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
   }
   return ($scvx_xx);
}
sub f21($$$$ ) {
   my ($aa, $bb, $cc, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $term;
   my $nn;
   if (1 < abs($zz)) {
      $sum_curr = 0.0;
   } else {
      $sum_curr = 1.0;
      $term = 1.0;
      $nn = 0;
      for (;;) {
         $term *= (($aa + $nn) * ($bb + $nn) * $zz / (($cc + $nn) * (1 +
                  $nn)));
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
         $nn += 1;
      }
   }
   return ($sum_curr);
}
sub f11($$$ ) {
   my ($aa, $bb, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $term;
   my $nn;
   if (1 < abs($zz)) {
      $sum_curr = 0.0;
   } else {
      $sum_curr = 1.0;
      $term = 1.0;
      $nn = 0;
      for (;;) {
         $term *= (($aa + $nn) * $zz / (($bb + $nn) * (1 + $nn)));
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
         $nn += 1;
      }
   }
   return ($sum_curr);
}
{
sub lf_lambert_iter($$ ) {
   my ($xx, $nearw_zero) = @_;
      my $ii;
      my $eww;
      my $tnn;
      my $snn;
      my $unn;
      my $delta;
      my $wjj;
      my $wjj_prev;
      $wjj = $nearw_zero;
      $ii = 0;
      for (;;) {
         $eww = exp($wjj);
         $tnn = $wjj * $eww - $xx;
         $snn = ($wjj + 2.0) / (2.0 * ($wjj + 1.0));
         $unn = ($wjj + 1.0) * $eww;
         $delta = $tnn / ($tnn * $snn - $unn);
         $wjj_prev = $wjj;
         $wjj += $delta;
         if (Kw::iseq($wjj, $wjj_prev)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      return ($wjj);
   }
   sub wp($ ) {
      my ($xx) = @_;
      my $tnn;
      my $snn;
      my $near_w;
      my $retvalu;
      if ($xx <= - exp(-1.0)) {
         $retvalu = -1.0;
      } else {
         if ($xx < 3.0) {
            $snn = Kw::E * $xx + 1.0;
            $near_w = Kw::cbrt($snn) - 1.0 + 0.025 * ($snn / Kw::E);
         } else {
            $snn = log($xx);
            $tnn = log(log($xx));
            $near_w = $snn - $tnn + $tnn / $snn;
         }
         $retvalu = lf_lambert_iter($xx, $near_w);
      }
      return ($retvalu);
   }
   sub wm($ ) {
      my ($xx) = @_;
      my $ii;
      my $near_w;
      my $retvalu;
      my $tnn;
      my $numer;
      my $denom;
      if ($xx <= - exp(-1.0)) {
         $retvalu = -1.0;
      } else {
         if ($xx < - 0.303) {
            $tnn = -sqrt(2.0 * (1.0 + Kw::E * $xx));
            $near_w = ((((((((((226287557.0 / 37623398400.0) * $tnn -
                     1963.0 / 204120.0) * $tnn + 680863.0 / 43545600.0) *
                     $tnn - 221.0 / 8505.0) * $tnn + 769.0 / 17280.0) *
                     $tnn - 43.0 / 540.0) * $tnn + 11.0 / 72.0) * $tnn -
                     1.0 / 3.0) * $tnn + 1.0) * $tnn - 1.0);
         } elsif ($xx < - 0.0510129) {
            $numer = (((6.5794931769023040E+2) * $xx +
                     2.5388810188892484E+2) * $xx - 7.8141767239074400);
            $denom = ((((((1.4779341280760887E+3) * $xx +
                     9.6217849696986600E+2) * $xx +
                     6.8260739999094280E+2) * $xx +
                     9.9985670831076100E+1) * $xx -
                     6.0439587136908080E+1) * $xx + 1.0);
            $near_w = $numer / $denom;
         } elsif ($xx < 0.0) {
            $near_w = log(-$xx);
            for ($ii = 0; $ii <= 8; $ii += 1) {
               $near_w = log($xx / $near_w);
            }
         } else {
            $near_w = Kw::DBLMAX;
         }
         $retvalu = lf_lambert_iter($xx, $near_w);
      }
      return ($retvalu);
   }
}
sub wpinv($ ) {
   my ($zz) = @_;
   return ($zz * exp($zz));
}
sub wminv($ ) {
   my ($zz) = @_;
   return ($zz * exp($zz));
}
sub sinintegral($ ) {
   my ($xx) = @_;
   my $sum_curr;
   my $sum_prev;
   my $term;
   my $kk;
   my $xsq;
   if (Kw::iszero($xx)) {
      $sum_curr = 0.0;
   } else {
      $sum_curr = $xx;
      $term = $xx;
      $xsq = $xx * $xx;
      $kk = 3;
      for (;;) {
         $term *= - $xsq / ($kk * ($kk - 1.0));
         $sum_prev = $sum_curr;
         $sum_curr += $term / $kk;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
         $kk += 2;
      }
   }
   return ($sum_curr);
}
sub cosintegral($ ) {
   my ($xx) = @_;
   my $sum_curr;
   my $sum_prev;
   my $term;
   my $kk;
   my $xsq;
   if (Kw::iszero($xx)) {
      $sum_curr = -Kw::DBLMAX;
   } else {
      $sum_curr = Kw::EULER + log(abs($xx));
      $term = 1.0;
      $xsq = $xx * $xx;
      $kk = 2;
      for (;;) {
         $term *= - $xsq / ($kk * ($kk - 1.0));
         $sum_prev = $sum_curr;
         $sum_curr += $term / $kk;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
         $kk += 2;
      }
   }
   return ($sum_curr);
}
sub Ein($ ) {
   my ($xx) = @_;
   my $sum_curr;
   my $sum_prev;
   my $term;
   my $kk;
   $sum_curr = 0;
   $term = -1;
   $kk = 1;
   for (;;) {
      $term *= - $xx / $kk;
      $sum_prev = $sum_curr;
      $sum_curr += $term / $kk;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $kk += 1;
   }
   return ($sum_curr);
}
sub expintegrali($ ) {
   my ($xx) = @_;
   my $retvalu;
   $retvalu = Kw::EULER + log(abs($xx)) - Kw::Ein(-$xx);
   return ($retvalu);
}
sub expintegral1($ ) {
   my ($xx) = @_;
   my $retvalu;
   $retvalu = Kw::Ein($xx) - Kw::EULER - log(abs($xx));
   return ($retvalu);
}
sub expintegraln($$ ) {
   my ($nn, $xx) = @_;
   return (Kw::pow($xx, $nn - 1) * Kw::uigamma(1 - $nn, $xx));
}
sub logintegral($ ) {
   my ($xx) = @_;
   my $sum;
   my $lnx;
   my $yy;
   my $nn;
   my $sum_prev;
   my $limit;
   my $retvalu;
   if ($xx <= 1.0) {
      $retvalu = 0.0;
   } else {
      $lnx = log($xx);
      $sum = 0.0;
      $yy = 1.0;
      $limit = 1.6 * log($xx) + 40;
      $nn = 1;
      for (;;) {
         $yy *= $lnx / $nn;
         $sum_prev = $sum;
         $sum += $yy / $nn;
         if (Kw::iseq($sum, $sum_prev)) {
            last; # loop AWAIT
         }
         $nn += 1;
         if ($limit <= $nn) {
            last; # loop AWAIT
         }
      }
      $retvalu = Kw::EULER + log($lnx) + $sum;
   }
   return ($retvalu);
}
sub carlsonRF($$$ ) {
   my ($xx, $yy, $zz) = @_;
   my $sqx;
   my $sqy;
   my $sqz;
   my $lmbd;
   for (;;) {
      $sqx = sqrt($xx);
      $sqy = sqrt($yy);
      $sqz = sqrt($zz);
      $lmbd = $sqx * $sqy + $sqx * $sqz + $sqy * $sqz;
      $xx = ($xx + $lmbd) / 4.0;
      $yy = ($yy + $lmbd) / 4.0;
      $zz = ($zz + $lmbd) / 4.0;
      if (Kw::iseq($xx, $yy) and Kw::iseq($yy, $zz)) {
         last; # loop AWAIT
      }
   }
   return (1.0 / sqrt($xx));
}
sub carlsonRC($$ ) {
   my ($xx, $yy) = @_;
   my $lmbd;
   for (;;) {
      $lmbd = 2 * sqrt($xx * $yy) + $yy;
      $xx = ($xx + $lmbd) / 4.0;
      $yy = ($yy + $lmbd) / 4.0;
      if (Kw::iseq($xx, $yy)) {
         last; # loop AWAIT
      }
   }
   return (1.0 / sqrt($xx));
}
sub carlsonRJ($$$$ ) {
   my ($xx, $yy, $zz, $pp) = @_;
   my $sqx;
   my $sqy;
   my $sqz;
   my $lmbd;
   my $pfour;
   my $alfa;
   my $beta;
   my $sigm;
   $pfour = 1.0;
   $sigm = 0.0;
   for (;;) {
      $sqx = sqrt($xx);
      $sqy = sqrt($yy);
      $sqz = sqrt($zz);
      $lmbd = $sqx * $sqy + $sqx * $sqz + $sqy * $sqz;
      $alfa = $pp * ($sqx + $sqy + $sqz) + $sqx * $sqy * $sqz;
      $alfa *= $alfa;
      $beta = $pp * ($pp + $lmbd) * ($pp + $lmbd);
      $sigm += $pfour * Kw::carlsonRC($alfa, $beta);
      $pfour /= 4.0;
      $xx = ($xx + $lmbd) / 4.0;
      $yy = ($yy + $lmbd) / 4.0;
      $zz = ($zz + $lmbd) / 4.0;
      $pp = ($pp + $lmbd) / 4.0;
      if (Kw::iseq($xx, $yy) and Kw::iseq($yy, $zz) and Kw::iseq($zz, $pp)) {
         last; # loop AWAIT
      }
   }
   return (3.0 * $sigm);
}
sub carlsonRD($$$ ) {
   my ($xx, $yy, $zz) = @_;
   my $sqx;
   my $sqy;
   my $sqz;
   my $lmbd;
   my $pfour;
   my $alfa;
   my $beta;
   my $sigm;
   $pfour = 1.0;
   $sigm = 0.0;
   for (;;) {
      $sqx = sqrt($xx);
      $sqy = sqrt($yy);
      $sqz = sqrt($zz);
      $lmbd = $sqx * $sqy + $sqx * $sqz + $sqy * $sqz;
      $alfa = $zz * ($sqx + $sqy + $sqz) + $sqx * $sqy * $sqz;
      $alfa *= $alfa;
      $beta = $zz * ($zz + $lmbd) * ($zz + $lmbd);
      $sigm += $pfour * Kw::carlsonRC($alfa, $beta);
      $pfour /= 4.0;
      $xx = ($xx + $lmbd) / 4.0;
      $yy = ($yy + $lmbd) / 4.0;
      $zz = ($zz + $lmbd) / 4.0;
      if (Kw::iseq($xx, $yy) and Kw::iseq($yy, $zz)) {
         last; # loop AWAIT
      }
   }
   return (3.0 * $sigm);
}
sub powi($$ ) {
   my ($xx, $nn) = @_;
   my $pp;
   my $xsq;
   $pp = 1;
   $xsq = $xx;
   while (0 < $nn) {
      if (Kw::isodd($nn)) {
         $pp *= $xsq;
      }
      $xsq *= $xsq;
      $nn = ($nn >> 1);
   }
   return ($pp);
}
sub atothenmodp($$$ ) {
   my ($naa, $nn, $pp) = @_;
   my $retvalu;
   my $cc;
   use integer;
   if ($pp == 0) {
      $retvalu = 0;
   } else {
      if ($pp < 0) {
         $pp = -$pp;
      }
      if ($nn < 0) {
         $nn = $nn % $pp;
         if ($nn < 0) {
            $nn += $pp;
         }
      }
      $retvalu = 1;
      $cc = $naa % $pp;
      while (0 < $nn) {
         if (Kw::isodd($nn)) {
            $retvalu = ($retvalu * $cc) % $pp;
            $nn = ($nn - 1) / 2;
         } else {
            $nn /= 2;
         }
         $cc = ($cc * $cc) % $pp;
      }
   }
   no integer;
   return ($retvalu);
}
sub atothenmodx($$$ ) {
   my ($xaa, $xnn, $xpp) = @_;
   return (Kw::frac(exp($xnn * log($xaa) - log($xpp))) * $xpp);
}
sub ctz($ ) {
   my ($nn) = @_;
   my $zero_count;
   $zero_count = 0;
   while (0 == ($nn & 1)) {
      $zero_count += 1;
      $nn = ($nn >> 1);
   }
   return ($zero_count);
}
sub gcd($$ ) {
   my ($naa, $nbb) = @_;
   my $cc;
   use integer;
   $naa = abs($naa);
   $nbb = abs($nbb);
   if ($nbb <= 0) {
      $nbb = $naa;
   } else {
      while (0 < $naa) {
         $cc = $naa;
         $naa = $nbb % $naa;
         $nbb = $cc;
      }
   }
   no integer;
   return ($nbb);
}
sub gcda($\@ ) {
   my ($array_count, $num_arr_pc) = @_;
   my $ind;
   my $gc;
   $gc = $$num_arr_pc[0];
   for ($ind = 1; $ind <= $array_count - 1; $ind += 1) {
      $gc = gcd($gc, $$num_arr_pc[$ind]);
   }
   return ($gc);
}
sub lcm($$ ) {
   my ($naa, $nbb) = @_;
   return ($naa * $nbb / gcd($naa, $nbb));
}
sub lcam($$ ) {
   my ($naa, $nbb) = @_;
   my $ii;
   my $jj;
   if ($nbb < $naa) {
      $ii = $naa;
      $naa = $nbb;
      $nbb = $ii;
   }
   $ii = $nbb;
   for (;;) {
      $jj = mods($ii, $naa);
      if (- 2 <= $jj and $jj <= 2) {
         last; # loop AWAIT
      }
      $ii += $nbb;
   }
   if ($jj == -2) {
      $ii += 1;
   } elsif (0 <= $jj) {
      $ii -= 1;
   }
   return ($ii);
}
sub lcams($$ ) {
   my ($naa, $nbb) = @_;
   my $ii;
   my $jj;
   if ($nbb < $naa) {
      $ii = $naa;
      $naa = $nbb;
      $nbb = $ii;
   }
   $ii = 2 * $nbb;
   for (;;) {
      $jj = mods($ii, $naa);
      if (- 2 <= $jj and $jj <= 2) {
         last; # loop AWAIT
      }
      $ii += $nbb;
   }
   if ($jj == -2) {
      $ii += 1;
   } elsif (0 <= $jj) {
      $ii -= 1;
   }
   return ($ii);
}
sub lcantim($$ ) {
   my ($naa, $nbb) = @_;
   my $hnaa;
   my $hnbb;
   my $ii;
   my $rema;
   my $odd_mask;
   if (Kw::isposint($naa) and Kw::isposint($nbb)) {
      $odd_mask = 0;
      if (Kw::isodd($naa)) {
         $odd_mask = 1;
      }
      if (Kw::isodd($nbb)) {
         $odd_mask += 2;
      }
      if (2 == $odd_mask or ($nbb < $naa and $odd_mask != 1)) {
         $ii = $nbb;
         $nbb = $naa;
         $naa = $ii;
      }
      $hnaa = floorl($naa / 2);
      $hnbb = floorl($nbb / 2);
      $ii = $hnbb;
      for (;;) {
         $rema = Kw::dist($ii, $naa);
         if ($rema == $hnaa) {
            last;
         } elsif ($odd_mask == 3 and $rema == $hnaa + 1) {
            last;
         }
         $ii += $nbb;
         if ($naa * $nbb <= $ii) {
            last; # loop AWAIT
         }
      }
      if ($naa * $nbb <= $ii) {
         $ii = 0;
      }
   } else {
      $ii = 0;
   }
   return ($ii);
}
sub factor($\@ ) {
   my ($number_to_factor, $ret_fctr_arr_p) = @_;
   my $pp;
   my $fctr_ind;
   my $inc;
   use integer;
   $fctr_ind = 0;
   $number_to_factor = abs($number_to_factor);
   if ($number_to_factor <= 3) {
      $$ret_fctr_arr_p[$fctr_ind] = $number_to_factor;
      $fctr_ind = 1;
   } else {
      for ($pp = 2; $pp <= 3; $pp += 1) {
         while (0 == $number_to_factor % $pp) {
            $$ret_fctr_arr_p[$fctr_ind] = $pp;
            $fctr_ind += 1;
            $number_to_factor /= $pp;
         }
      }
      $pp = 1;
      $inc = 4;
      for (;;) {
         $pp += $inc;
         $inc = 6 - $inc;
         while (0 == $number_to_factor % $pp) {
            $$ret_fctr_arr_p[$fctr_ind] = $pp;
            $fctr_ind += 1;
            $number_to_factor /= $pp;
         }
         if ($number_to_factor < $pp * $pp) {
            last; # loop AWAIT
         }
      }
      if (1 < $number_to_factor) {
         $$ret_fctr_arr_p[$fctr_ind] = $number_to_factor;
         $fctr_ind += 1;
      }
   }
   no integer;
   $$ret_fctr_arr_p[$fctr_ind] = 0;
   return ($fctr_ind);
}
sub modulo($$ ) {
   my ($nxx, $modyy) = @_;
   my $retvalu;
   use integer;
   $retvalu = $nxx % $modyy;
   if ($retvalu < 0) {
      $retvalu += abs($modyy);
   }
   no integer;
   return ($retvalu);
}
sub mods($$ ) {
   my ($nxx, $modyy) = @_;
   my $retvalu;
   my $amodyy;
   my $anxx;
   use integer;
   $amodyy = floorl(abs($modyy));
   $anxx = abs($nxx);
   $retvalu = $anxx % $amodyy;
   if (0 < $retvalu) {
      while ($amodyy < 2 * $retvalu) {
         $retvalu -= $amodyy;
      }
   } elsif ($retvalu < 0) {
      while (2 * $retvalu < - $amodyy) {
         $retvalu += $amodyy;
      }
   }
   no integer;
   return ($retvalu);
}
sub pfl($ ) {
   my ($nn) = @_;
   my $small_factor;
   my $lim;
   my $divid;
   use integer;
   if ($nn < 2) {
      $small_factor = 1;
   } elsif ($nn % 2 == 0) {
      $small_factor = 2;
   } elsif ($nn % 3 == 0) {
      $small_factor = 3;
   } elsif ($nn % 5 == 0) {
      $small_factor = 5;
   } elsif ($nn % 7 == 0) {
      $small_factor = 7;
   } else {
      $lim = floorl(sqrt($nn));
      $divid = 11;
      $small_factor = $nn;
      while ($divid <= $lim) {
         if ($nn % $divid == 0) {
            $small_factor = $divid;
            last;
         }
         $divid += 2;
         if ($nn % $divid == 0) {
            $small_factor = $divid;
            last;
         }
         $divid += 4;
      }
   }
   no integer;
   return ($small_factor);
}
sub pfg($ ) {
   my ($nn) = @_;
   my $jj;
   my $ii;
   $jj = $nn;
   for (;;) {
      $ii = pfl($jj);
      $jj /= $ii;
      if ($jj == 1) {
         last; # loop AWAIT
      }
   }
   return ($ii);
}
sub isprime($ ) {
   my ($nn) = @_;
   my $retvalu_bol;
   my $ann;
   $ann = abs($nn);
   if ($ann == 2 or $ann == 3 or $ann == 5 or $ann == 7) {
      $retvalu_bol = Kw::true;
   } elsif ($ann < 11) {
      $retvalu_bol = Kw::false;
   } elsif (pfl($ann) == $ann) {
      $retvalu_bol = Kw::true;
   } else {
      $retvalu_bol = Kw::false;
   }
   return ($retvalu_bol);
}
{
sub lf_primeprev($ ) {
   my ($pp) = @_;
      my $retvalu;
      my $rema;
      my $inc;
      my $qq;
      use integer;
      if ($pp <= 7) {
         if (5 < $pp) {
            $retvalu = 5;
         } elsif (3 < $pp) {
            $retvalu = 3;
         } elsif (2 < $pp) {
            $retvalu = 2;
         } else {
            $retvalu = -2;
         }
      } else {
         $rema = $pp % 6;
         $qq = $pp - $rema;
         if ($rema <= 1) {
            $qq -= 1;
            $inc = 4;
         } else {
            $qq += 1;
            $inc = 2;
         }
         while (not Kw::isprime($qq)) {
            $qq -= $inc;
            $inc = 6 - $inc;
         }
         $retvalu = $qq;
      }
      no integer;
      return ($retvalu);
   }
   sub lf_primenext($ ) {
      my ($pp) = @_;
      my $retvalu;
      my $rema;
      my $inc;
      my $qq;
      use integer;
      if ($pp < 7) {
         if ($pp < 2) {
            $retvalu = 2;
         } elsif ($pp < 3) {
            $retvalu = 3;
         } elsif ($pp < 5) {
            $retvalu = 5;
         } else {
            $retvalu = 7;
         }
      } else {
         $rema = ($pp + 1) % 6;
         $qq = ($pp + 1) - $rema;
         if ($rema <= 1) {
            $qq += 1;
            $inc = 4;
         } else {
            $qq += 5;
            $inc = 2;
         }
         while (not Kw::isprime($qq)) {
            $qq += $inc;
            $inc = 6 - $inc;
         }
         $retvalu = $qq;
      }
      no integer;
      return ($retvalu);
   }
   sub primeprev($ ) {
      my ($pp) = @_;
      my $retvalu;
      if (0 <= $pp) {
         $retvalu = lf_primeprev($pp);
      } else {
         $retvalu = -lf_primenext(-$pp);
      }
      return ($retvalu);
   }
   sub primenext($ ) {
      my ($pp) = @_;
      my $retvalu;
      if (0 <= $pp) {
         $retvalu = lf_primenext($pp);
      } else {
         $retvalu = -lf_primeprev(-$pp);
      }
      return ($retvalu);
   }
}
{
my $lv_pcf_end = 0;
   my @lv_pcf_arr;
   sub primecount($ ) {
      my ($xx) = @_;
      # local-use Perl @lv_pcf_arr;
      # local-use Perl $lv_pcf_end;
      my $retvalu;
      my $poss_prime;
      my $s_ind;
      my $ps_ind;
      my $pcf_val;
      use integer;
      if ($xx < 7) {
         if ($xx < 3) {
            if ($xx < 2) {
               $retvalu = 0;
            } else {
               $retvalu = 1;
            }
         } else {
            if ($xx < 5) {
               $retvalu = 2;
            } else {
               $retvalu = 3;
            }
         }
      } else {
         $s_ind = floorl(($xx - 5) / 2) - floorl(($xx - 3) / 6);
         if ($lv_pcf_end <= $s_ind) {
            $ps_ind = $lv_pcf_end;
            if ($lv_pcf_end <= 0) {
               $pcf_val = 2;
            } else {
               $pcf_val = $lv_pcf_arr[$lv_pcf_end - 1];
            }
            $lv_pcf_end = Kw::ceil2($s_ind + 1, 2);
            $poss_prime = 3 * $ps_ind - ($ps_ind % 2) + 5;
            while ($ps_ind <= $s_ind) {
               if (Kw::isprime($poss_prime)) {
                  $pcf_val += 1;
               }
               $lv_pcf_arr[$ps_ind] = $pcf_val;
               $poss_prime += 2;
               $ps_ind += 1;
               if (Kw::isprime($poss_prime)) {
                  $pcf_val += 1;
               }
               $lv_pcf_arr[$ps_ind] = $pcf_val;
               $poss_prime += 4;
               $ps_ind += 1;
            }
         }
         $retvalu = $lv_pcf_arr[$s_ind];
      }
      no integer;
      return ($retvalu);
   }
}
sub pcf($ ) {
   my ($xx) = @_;
   return (primecount($xx));
}
sub primecountx($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $poss_prime;
   my $inc;
   my $pcf_val;
   if ($xx < 7) {
      if ($xx < 3) {
         if ($xx < 2) {
            $retvalu = 0;
         } else {
            $retvalu = 1;
         }
      } else {
         if ($xx < 5) {
            $retvalu = 2;
         } else {
            $retvalu = 3;
         }
      }
   } else {
      $pcf_val = 4;
      $poss_prime = 11;
      $inc = 2;
      while ($poss_prime <= $xx) {
         if (Kw::isprime($poss_prime)) {
            $pcf_val += 1;
         }
         $poss_prime += $inc;
         $inc = 6 - $inc;
      }
      $retvalu = $pcf_val;
   }
   return ($retvalu);
}
sub eta($ ) {
   my ($xx) = @_;
   my $sum;
   my $sump;
   my $tt;
   my $nn;
   my $kk;
   my $s_ind;
   my $retvalu;
   my $pm_one;
   my @ps_arr;
   my @temp_arr;
   my $term;
   if (0 < $xx) {
      $tt = 0;
      $term = -log(Kw::DBLEPS) / $xx;
      if ($term < log(4000)) {
         $kk = ceill(exp($term));
         $sum = 0;
         $pm_one = -1.0;
         $nn = 1;
         for (;;) {
            $pm_one = -$pm_one;
            $term = $pm_one * Kw::pow($nn, - $xx);
            $tt += 1;
            $sump = $sum;
            $sum += $term;
            if (Kw::iseq($sump, $sum)) {
               last; # loop AWAIT
            }
            $nn += 1;
            if ($kk <= $nn) {
               last; # loop AWAIT
            }
         }
         $retvalu = $sum - 0.5 * $term;
      } else {
         $sum = 0;
         $pm_one = -1.0;
         $ps_arr[0] = -Kw::pow(2, - $xx);
         $tt += 1;
         $temp_arr[0] = $ps_arr[0];
         $nn = 1;
         for (;;) {
            $pm_one = -$pm_one;
            $ps_arr[$nn] = $ps_arr[$nn - 1] + $pm_one * Kw::pow($nn + 2,
                     - $xx);
            $tt += 1;
            $temp_arr[$nn] = $ps_arr[$nn];
            for ($kk = $nn - 1; 0 <= $kk; $kk -= 1) {
               $temp_arr[$kk] = ($temp_arr[$kk] + $temp_arr[$kk + 1]) / 2.0;
            }
            $sump = $sum;
            $sum = $temp_arr[0];
            if (Kw::iseq($sump, $sum)) {
               last; # loop AWAIT
            }
            $nn += 1;
            if (400 <= $nn) {
               last; # loop AWAIT
            }
         }
         $s_ind = floorl($nn / 3);
         $sum = (4 * $temp_arr[$s_ind] + 3 * $temp_arr[$s_ind + 1]) / 7;
         $retvalu = $sum + 1.0;
      }
   } elsif ($xx < 0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 0.5;
   }
   return ($retvalu);
}
sub zeta($ ) {
   my ($xx) = @_;
   my $retvalu;
   if (1 < $xx) {
      $retvalu = eta($xx) / (1.0 - Kw::pow(2.0, 1.0 - $xx));
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub fibo3($$$ ) {
   my ($nn, $fib_a, $fib_b) = @_;
   my $ii;
   my $tt;
   my $retvalu;
   if ($nn == 0) {
      $retvalu = $fib_a;
   } else {
      for ($ii = 2; $ii <= $nn; $ii += 1) {
         $tt = $fib_b;
         $fib_b += $fib_a;
         $fib_a = $tt;
      }
      $retvalu = $fib_b;
   }
   return ($retvalu);
}
sub fibo($ ) {
   my ($nn) = @_;
   return (fibo3($nn, 0, 1));
}
sub fibox($ ) {
   my ($xx) = @_;
   my $zz;
   my $retvalu;
   if (log(Kw::DBLMAX) / log(Kw::PHI) < abs($xx)) {
      $retvalu = 0.0;
   } else {
      $zz = Kw::pow(Kw::PHI, $xx);
      $retvalu = ($zz - cos(Kw::PI * $xx) / $zz) / sqrt(5.0);
   }
   return ($retvalu);
}
sub fiboxinv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $x_init;
   if ($yy <= 0) {
      $scvx_xx = 0.0;
   } else {
      if ($yy <= 0.2) {
         $x_init = 0.075;
      } elsif ($yy <= 0.896946387424606) {
         $x_init = 0.8 * $yy - 0.15;
      } elsif ($yy <= 1.009824331847821) {
         $x_init = 0.92;
      } else {
         $x_init = log($yy * sqrt(5.0)) / log(Kw::PHI);
      }
      $scvx_dx = 0.05;
      $scvx_xx = $x_init;
      $scvx_yy = $yy - fibox($scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $yy - fibox($scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub lucas($ ) {
   my ($nn) = @_;
   return (fibo3($nn, 2, 1));
}
sub lucasx($ ) {
   my ($xx) = @_;
   my $zz;
   my $retvalu;
   if (log(Kw::DBLMAX) / log(Kw::PHI) < abs($xx)) {
      $retvalu = 0.0;
   } else {
      $zz = Kw::pow(Kw::PHI, $xx);
      $retvalu = ($zz + cos(Kw::PI * $xx) / $zz);
   }
   return ($retvalu);
}
sub fusc($ ) {
   my ($nn) = @_;
   my $naa;
   my $nbb;
   $naa = 1;
   $nbb = 0;
   while (0 < $nn) {
      if (Kw::isodd($nn)) {
         $nbb += $naa;
      } else {
         $naa += $nbb;
      }
      $nn = ($nn >> 1);
   }
   return ($nbb);
}
sub Tn($$ ) {
   my ($nn, $xx) = @_;
   my $retvalu;
   my $tnm_a;
   my $tnm_b;
   my $tnn;
   my $kk;
   if ($nn == 0) {
      $retvalu = 1.0;
   } elsif ($nn == 1) {
      $retvalu = $xx;
   } elsif ($nn == 2) {
      $retvalu = 2.0 * $xx * $xx - 1.0;
   } else {
      $tnm_a = 2.0 * $xx * $xx - 1.0;
      $tnm_b = $xx;
      $tnn = $tnm_a;
      for ($kk = 3; $kk <= $nn; $kk += 1) {
         $tnn = (2.0 * $xx * $tnm_a) - $tnm_b;
         $tnm_b = $tnm_a;
         $tnm_a = $tnn;
      }
      $retvalu = $tnn;
   }
   return ($retvalu);
}
sub Un($$ ) {
   my ($nn, $xx) = @_;
   my $retvalu;
   my $tnm_a;
   my $tnm_b;
   my $tnn;
   my $kk;
   if ($nn == 0) {
      $retvalu = 1.0;
   } elsif ($nn == 1) {
      $retvalu = 2.0 * $xx;
   } else {
      $tnm_a = 2.0 * $xx;
      $tnm_b = 1.0;
      $tnn = $tnm_a;
      for ($kk = 2; $kk <= $nn; $kk += 1) {
         $tnn = (2.0 * $xx * $tnm_a) - $tnm_b;
         $tnm_b = $tnm_a;
         $tnm_a = $tnn;
      }
      $retvalu = $tnn;
   }
   return ($retvalu);
}
sub tri($ ) {
   my ($nn) = @_;
   return ($nn * ($nn + 1) / 2);
}
sub triinv($ ) {
   my ($nn) = @_;
   my $retvalu;
   if (- 0.125 < $nn) {
      $retvalu = (sqrt(8.0 * $nn + 1.0) - 1.0) / 2.0;
   } else {
      $retvalu = -0.5;
   }
   return ($retvalu);
}
sub polynum($$ ) {
   my ($ss, $nn) = @_;
   return (($ss - 2) * $nn * ($nn - 1) / 2 + $nn);
}
sub polycnum($$ ) {
   my ($ss, $nn) = @_;
   return ($ss * $nn * ($nn - 1) / 2 + 1);
}
sub tetranum($$ ) {
   my ($ss, $nn) = @_;
   return ($nn * ($nn + 1) * (($ss - 2) * $nn + 5 - $ss) / 6);
}
sub tetracnum($$ ) {
   my ($ss, $nn) = @_;
   return ($nn * ($ss * $nn * $nn + 6 - $ss) / 6);
}
sub minkowski($ ) {
   my ($xx) = @_;
   my $pp;
   my $qq;
   my $rr;
   my $ss;
   my $ff;
   my $gg;
   my $dd;
   my $yy;
   $pp = floor($xx);
   $qq = 1;
   $rr = $pp + 1;
   $ss = 1;
   $dd = 1.0;
   $yy = $pp;
   for (;;) {
      $dd /= 2.0;
      $ff = $pp + $rr;
      $gg = $qq + $ss;
      if ($xx < $ff / $gg) {
         $rr = $ff;
         $ss = $gg;
      } else {
         $yy += $dd;
         $pp = $ff;
         $qq = $gg;
      }
      if (Kw::iseq($yy + $dd, $yy)) {
         last; # loop AWAIT
      }
   }
   return ($yy);
}
sub cantorxx($$$ ) {
   my ($nbb, $ee, $xx) = @_;
   my $yy;
   my $rest;
   my $dd;
   my $ulmt;
   if ($ee < 0.0 or $nbb < 0.0 or 1.0 < $ee + $nbb) {
      $yy = $xx;
   } else {
      $ulmt = 1.0 - $ee;
      $yy = floor($xx);
      $rest = ($xx - $yy);
      $dd = 0.5;
      for (;;) {
         if ($ulmt <= $rest) {
            $yy += $dd;
            $rest = Kw::frac(($rest - $ulmt) / $ee);
         } elsif ($nbb <= $rest) {
            $yy += $dd;
            last;
         } else {
            $rest = Kw::frac($rest / $nbb);
         }
         $dd /= 2.0;
         if (Kw::iseq($yy + $dd, $yy) or Kw::iszero($rest)) {
            last; # loop AWAIT
         }
      }
   }
   return ($yy);
}
sub cantor($ ) {
   my ($xx) = @_;
   return (cantorxx(1.0 / 3.0, 1.0 / 3.0, $xx));
}
sub cantorul($$$ ) {
   my ($bb, $ee, $xx) = @_;
   return (Kw::pow(0.5, log($xx) / log($bb) + 0.0 * $ee));
}
sub cantorll($$$ ) {
   my ($bb, $ee, $xx) = @_;
   return (Kw::pow(0.5, log($xx / (1.0 - $ee)) / log($bb) + 1.0));
}
sub dlogx($$$ ) {
   my ($naa, $nbb, $nn) = @_;
   my $ii;
   my $pp;
   my $retvalu;
   use integer;
   $pp = $naa;
   $retvalu = -1;
   for ($ii = 1; $ii <= $nn; $ii += 1) {
      if ($pp == $nbb) {
         $retvalu = $ii;
         last;
      }
      $pp = ($pp * $naa) % $nn;
   }
   no integer;
   return ($retvalu);
}
sub dlog($$$ ) {
   my ($naa, $nbb, $nn) = @_;
   my $sqnn;
   my $cur;
   my $atothesqnn;
   my $atothens;
   my $ii;
   my @log_arr;
   my $retvalu;
   use integer;
   if ($naa == $nbb) {
      $retvalu = 1;
   } elsif ($naa <= 0 or $nbb <= 0 or $nn <= 0) {
      $retvalu = -1;
   } elsif (1 < gcd($naa, $nn)) {
      $retvalu = dlogx($naa, $nbb, $nn);
   } elsif (not isprimitiveroot($naa, $nn)) {
      $retvalu = dlogx($naa, $nbb, $nn);
   } else {
      $sqnn = ceill(sqrt($nn));
      for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
         $log_arr[$ii] = 0;
      }
      $atothesqnn = atothenmodp($naa, $sqnn, $nn);
      $cur = $atothesqnn;
      for ($ii = 1; $ii <= $sqnn; $ii += 1) {
         if ($log_arr[$cur] == 0) {
            $log_arr[$cur] = $ii;
         }
         $cur = ($cur * $atothesqnn) % $nn;
      }
      $cur = $nbb % $nn;
      $retvalu = -1;
      for ($ii = 0; $ii <= $sqnn; $ii += 1) {
         if (0 < $log_arr[$cur]) {
            $atothens = $log_arr[$cur] * $sqnn - $ii;
            if ($atothens < $nn) {
               $retvalu = $atothens;
               last;
            }
         }
         $cur = ($cur * $naa) % $nn;
      }
   }
   no integer;
   return ($retvalu);
}
sub dlog1($$ ) {
   my ($naa, $nn) = @_;
   return (dlog($naa, 1, $nn));
}
{
my $lv_mertens_end = 0;
   my @lv_mertens_arr;
   sub mertens($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_mertens_arr;
      # local-use Perl $lv_mertens_end;
      my $retvalu;
      my $kk;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_mertens_end <= 0) {
            $lv_mertens_end = 4;
            $lv_mertens_arr[0] = 0;
            $lv_mertens_arr[1] = 1;
            $lv_mertens_arr[2] = 0;
            $lv_mertens_arr[3] = -1;
         }
         if ($lv_mertens_end <= $nn) {
            $kk = $lv_mertens_end;
            $lv_mertens_end = $nn + 1;
            while ($kk < $lv_mertens_end) {
               $lv_mertens_arr[$kk] = $lv_mertens_arr[$kk - 1] + mobius($kk);
               $kk += 1;
            }
         }
         $retvalu = $lv_mertens_arr[$nn];
      }
      return ($retvalu);
   }
}
sub has_primitiveroot_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   $ind = 0;
   if (1 < $array_size) {
      if ($$fac_arr_pc[0] == 2) {
         $ind += 1;
      }
      if (2 < $$fac_arr_pc[$ind]) {
         while ($ind < $array_size - 1) {
            if ($$fac_arr_pc[$ind] < $$fac_arr_pc[$ind + 1]) {
               last;
            }
            $ind += 1;
         }
      }
   }
   return ($ind == ($array_size - 1));
}
sub sigma0_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $retvalu;
   my $exp_i;
   $retvalu = 1;
   $exp_i = 2;
   for ($ind = 0; $ind <= $array_size - 2; $ind += 1) {
      if ($$fac_arr_pc[$ind] == $$fac_arr_pc[$ind + 1]) {
         $exp_i += 1;
      } else {
         $retvalu *= $exp_i;
         $exp_i = 2;
      }
   }
   return ($retvalu * $exp_i);
}
sub sigma1_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $retvalu;
   my $exp_i;
   my $prm_prev;
   my $prm_curr;
   $retvalu = 1;
   $exp_i = 2;
   $prm_prev = $$fac_arr_pc[0];
   for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
      $prm_curr = $$fac_arr_pc[$ind];
      if ($prm_prev == $prm_curr) {
         $exp_i += 1;
      } else {
         $retvalu *= (powi($prm_prev, $exp_i) - 1) / ($prm_prev - 1);
         $exp_i = 2;
         $prm_prev = $prm_curr;
      }
   }
   return ($retvalu * (powi($prm_prev, $exp_i) - 1) / ($prm_prev - 1));
}
sub sigma_f($$\@ ) {
   my ($powy, $array_size, $fac_arr_pc) = @_;
   my $ind;
   my $retvalu;
   my $exp_i;
   my $prm_curr;
   my $prm_prev;
   my $pw;
   if ($powy == 0) {
      $retvalu = sigma0_f($array_size, @$fac_arr_pc);
   } elsif ($powy == 1) {
      $retvalu = sigma1_f($array_size, @$fac_arr_pc);
   } else {
      $retvalu = 1;
      $exp_i = 2;
      $prm_prev = $$fac_arr_pc[0];
      for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
         $prm_curr = $$fac_arr_pc[$ind];
         if ($prm_prev == $prm_curr) {
            $exp_i += 1;
         } else {
            $pw = powi($prm_prev, $powy);
            $retvalu *= ((powi($pw, $exp_i) - 1) / ($pw - 1));
            $exp_i = 2;
            $prm_prev = $prm_curr;
         }
      }
      $pw = powi($prm_prev, $powy);
      $retvalu *= ((powi($pw, $exp_i) - 1) / ($pw - 1));
   }
   return ($retvalu);
}
sub ispractical_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $sgma;
   my $exp_i;
   my $prm_curr;
   my $prm_prev;
   my $retvalu_bol;
   if (2 < $$fac_arr_pc[0]) {
      $retvalu_bol = Kw::false;
   } else {
      $retvalu_bol = Kw::true;
      $sgma = 1;
      $exp_i = 2;
      $prm_prev = $$fac_arr_pc[0];
      for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
         $prm_curr = $$fac_arr_pc[$ind];
         if ($prm_prev == $prm_curr) {
            $exp_i += 1;
         } else {
            $sgma *= (powi($prm_prev, $exp_i) - 1) / ($prm_prev - 1);
            if (1 + $sgma < $prm_curr) {
               $retvalu_bol = Kw::false;
               last;
            }
            $exp_i = 2;
            $prm_prev = $prm_curr;
         }
      }
   }
   return ($retvalu_bol);
}
sub issquarefree_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $retvalu_bol;
   $retvalu_bol = Kw::true;
   for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
      if ($$fac_arr_pc[$ind - 1] == $$fac_arr_pc[$ind]) {
         $retvalu_bol = Kw::false;
         last;
      }
   }
   return ($retvalu_bol);
}
sub totient_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $retvalu;
   use integer;
   $retvalu = 1;
   for ($ind = 0; $ind <= $array_size - 2; $ind += 1) {
      if ($$fac_arr_pc[$ind] == $$fac_arr_pc[$ind + 1]) {
         $retvalu *= $$fac_arr_pc[$ind];
      } else {
         $retvalu *= ($$fac_arr_pc[$ind] - 1);
      }
   }
   $retvalu *= ($$fac_arr_pc[$array_size - 1] - 1);
   no integer;
   return ($retvalu);
}
sub mobius_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $retvalu;
   my $ind;
   if (Kw::iseven($array_size)) {
      $retvalu = 1;
   } else {
      $retvalu = -1;
   }
   for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
      if ($$fac_arr_pc[$ind - 1] == $$fac_arr_pc[$ind]) {
         $retvalu = 0;
         last;
      }
   }
   return ($retvalu);
}
sub prime0_f($\@ ) {
   my ($array_size, $fac_arr_pc) = @_;
   my $ind;
   my $prm_curr;
   my $prm_prev;
   my $retvalu;
   $retvalu = 1;
   $prm_prev = $$fac_arr_pc[0];
   for ($ind = 1; $ind <= $array_size - 1; $ind += 1) {
      $prm_curr = $$fac_arr_pc[$ind];
      if ($prm_prev < $prm_curr) {
         $retvalu += 1;
      }
      $prm_prev = $prm_curr;
   }
   return ($retvalu);
}
{
sub LC_FACTORS_CNT() { 65; }
   sub factor_print($ ) {
      my ($nn) = @_;
      my $ind;
      my @fac_arr;
      my $array_size;
      $array_size = factor($nn, @fac_arr);
      print($nn);
      print(":");
      for ($ind = 0; $ind <= $array_size - 1; $ind += 1) {
         print(" ");
         print($fac_arr[$ind]);
      }
      print("\n");
      return ($array_size);
   }
   sub mobius($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      $array_size = factor($nn, @fac_arr);
      return (mobius_f($array_size, @fac_arr));
   }
   sub isprimitiveroot($$ ) {
      my ($naa, $nn) = @_;
      my $toti;
      my $array_size_toti;
      my $ind;
      my $prm;
      my $retvalu_bol;
      my @fac_arr;
      if ($naa <= 1 or 1 < gcd($naa, $nn)) {
         $retvalu_bol = Kw::false;
      } elsif ($naa == 2) {
         $retvalu_bol = Kw::isodd($nn);
      } else {
         $toti = totient($nn);
         $array_size_toti = factor($toti, @fac_arr);
         if (atothenmodp($naa, $toti / $fac_arr[0], $nn) == 1) {
            $retvalu_bol = Kw::false;
         } else {
            $retvalu_bol = Kw::true;
            for ($ind = 1; $ind <= $array_size_toti - 1; $ind += 1) {
               if ($fac_arr[$ind - 1] != $fac_arr[$ind]) {
                  $prm = $fac_arr[$ind];
                  if (atothenmodp($naa, $toti / $prm, $nn) == 1) {
                     $retvalu_bol = Kw::false;
                     last;
                  }
               }
            }
         }
      }
      return ($retvalu_bol);
   }
   sub prime0($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      $array_size = factor($nn, @fac_arr);
      return (prime0_f($array_size, @fac_arr));
   }
   sub prime1($ ) {
      my ($nn) = @_;
      my @fac_arr;
      return (factor($nn, @fac_arr));
   }
   sub sigma0($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      $array_size = factor($nn, @fac_arr);
      return (sigma0_f($array_size, @fac_arr));
   }
   sub sigma1($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      $array_size = factor($nn, @fac_arr);
      return (sigma1_f($array_size, @fac_arr));
   }
   sub sigma($$ ) {
      my ($powy, $nn) = @_;
      my $array_size;
      my @fac_arr;
      my $retvalu;
      if ($nn <= 1) {
         $retvalu = $nn;
      } elsif ($powy == 0) {
         $retvalu = sigma0($nn);
      } elsif ($powy == 1) {
         $retvalu = sigma1($nn);
      } else {
         $array_size = factor($nn, @fac_arr);
         $retvalu = sigma_f($powy, $array_size, @fac_arr);
      }
      return ($retvalu);
   }
   sub totient($ ) {
      my ($nn) = @_;
      my @fac_arr;
      my $array_size;
      $array_size = factor($nn, @fac_arr);
      return (totient_f($array_size, @fac_arr));
   }
   sub has_primitiveroot($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      my $retvalu_bol;
      if ($nn < 2) {
         $retvalu_bol = Kw::false;
      } else {
         $array_size = factor($nn, @fac_arr);
         $retvalu_bol = has_primitiveroot_f($array_size, @fac_arr);
      }
      return ($retvalu_bol);
   }
   sub issquarefree($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      my $retvalu_bol;
      if ($nn < 1) {
         $retvalu_bol = Kw::false;
      } elsif ($nn < 3) {
         $retvalu_bol = Kw::true;
      } else {
         $array_size = factor($nn, @fac_arr);
         $retvalu_bol = issquarefree_f($array_size, @fac_arr);
      }
      return ($retvalu_bol);
   }
   sub ispractical($ ) {
      my ($nn) = @_;
      my $array_size;
      my @fac_arr;
      my $retvalu_bol;
      if ($nn < 1) {
         $retvalu_bol = Kw::false;
      } elsif ($nn < 3) {
         $retvalu_bol = Kw::true;
      } else {
         $array_size = factor($nn, @fac_arr);
         $retvalu_bol = ispractical_f($array_size, @fac_arr);
      }
      return ($retvalu_bol);
   }
   sub primitiveroot($ ) {
      my ($nn) = @_;
      my $ind;
      my $array_size_toti;
      my $toti;
      my $ii;
      my @fac_arr;
      my $prm;
      my $retvalu;
      use integer;
      if ($nn < 2) {
         $retvalu = 0;
      } elsif ($nn < 5) {
         $retvalu = $nn - 1;
      } elsif (not has_primitiveroot($nn)) {
         $retvalu = 0;
      } else {
         $toti = totient($nn);
         $array_size_toti = factor($toti, @fac_arr);
         $ii = 2;
         $retvalu = 0;
         while ($ii < $nn and $retvalu <= 0) {
            if (gcd($ii, $nn) == 1) {
               $retvalu = $ii;
               $prm = 0;
               for ($ind = 0; $ind <= $array_size_toti - 1; $ind += 1) {
                  if ($prm != $fac_arr[$ind]) {
                     $prm = $fac_arr[$ind];
                     if (atothenmodp($ii, $toti / $prm, $nn) == 1) {
                        $retvalu = 0;
                        last;
                     }
                  }
               }
            }
            $ii += 1;
         }
      }
      no integer;
      return ($retvalu);
   }
   sub carmichael($ ) {
      my ($nn) = @_;
      my $ind;
      my $array_size;
      my $lmbd;
      my $prm;
      my $pk;
      my @fac_arr;
      use integer;
      if ($nn < 8) {
         $lmbd = totient($nn);
      } else {
         $array_size = factor($nn, @fac_arr);
         $ind = 0;
         while ($ind < $array_size and $fac_arr[$ind] == 2) {
            $ind += 1;
         }
         if (2 < $ind) {
            $lmbd = (1 << ($ind - 2));
         } else {
            $lmbd = 1;
         }
         while ($ind < $array_size) {
            $prm = $fac_arr[$ind];
            $pk = $prm - 1;
            while ($ind < $array_size - 1 and $prm == $fac_arr[$ind + 1]) {
               $ind += 1;
               $pk *= $prm;
            }
            $lmbd = lcm($lmbd, $pk);
            $ind += 1;
         }
      }
      no integer;
      return ($lmbd);
   }
   sub znorder($$ ) {
      my ($naa, $nn) = @_;
      my $ind;
      my @fac_arr;
      my $array_sizekk;
      my $kk;
      my $ab;
      my $ek;
      my $prm_i;
      my $exp_i;
      use integer;
      if ($nn == 0 or $naa == 0) {
         $kk = 0;
      } else {
         if ($nn < 0) {
            $nn = -$nn;
         }
         while ($naa < 0) {
            $naa += $nn;
         }
         if ($nn <= 1) {
            $kk = $nn;
         } elsif ($naa <= 1) {
            $kk = $naa;
         } elsif (1 < gcd($naa, $nn)) {
            $kk = 0;
         } else {
            $kk = carmichael($nn);
            $array_sizekk = factor($kk, @fac_arr);
            $exp_i = 1;
            for ($ind = 0; $ind <= $array_sizekk - 1; $ind += 1) {
               $prm_i = $fac_arr[$ind];
               $kk /= $prm_i;
               if ($ind + 1 < $array_sizekk and $prm_i == $fac_arr[$ind +
                        1]) {
                  $exp_i += 1;
               } else {
                  $ab = atothenmodp($naa, $kk, $nn);
                  for ($ek = 0; $ek <= $exp_i; $ek += 1) {
                     if ($ab == 1) {
                        last;
                     }
                     $kk *= $prm_i;
                     $ab = atothenmodp($ab, $prm_i, $nn);
                  }
                  if ($exp_i < $ek) {
                     $kk = 0;
                     last;
                  }
                  $exp_i = 1;
               }
            }
         }
      }
      no integer;
      return ($kk);
   }
}
sub repetendlen($$ ) {
   my ($denm, $basee) = @_;
   my $gdn;
   my $retvalu;
   for (;;) {
      $gdn = gcd($denm, $basee);
      $denm /= $gdn;
      if (1 == $gdn) {
         last; # loop AWAIT
      }
   }
   if ($denm == 1) {
      $retvalu = 0;
   } else {
      $retvalu = znorder($basee, $denm);
   }
   return ($retvalu);
}
sub kevy_print($$$ ) {
   my ($den, $start, $basee) = @_;
   my $numer;
   my $valu;
   my $leny;
   my $rema;
   my $overall_len;
   my $baseek;
   my $log_start;
   $log_start = floorl(log($start) / log($basee) + 1);
   $baseek = Kw::pow($basee, $log_start);
   $overall_len = (Kw::dlog($basee, $den, $den * $baseek - 1) + 3) *
            $log_start;
   use integer;
   $leny = 0;
   $numer = $start;
   $valu = $start;
   for (;;) {
      base_out_fix_print($valu, $basee, $log_start);
      $leny += $log_start;
      $valu = floorl($numer / $den);
      $rema = $numer % $den;
      $numer = $rema * $baseek + $valu;
      if ($numer == $start) {
         last;
      }
      if (2 * $overall_len < $leny) {
         last; # loop AWAIT
      }
   }
   no integer;
   return ($leny);
}
sub eulerphi($ ) {
   my ($nn) = @_;
   return (totient($nn));
}
sub znorder__1($$ ) {
   my ($nbb, $mdls) = @_;
   my $nn;
   my $pp;
   use integer;
   if (1 < gcd($nbb, $mdls)) {
      $nn = 0;
   } else {
      $pp = 1;
      $nn = 1;
      for (;;) {
         $pp = ($pp * $nbb) % $mdls;
         if ($pp == 1) {
            last; # loop AWAIT
         }
         $nn += 1;
         if ($mdls <= $nn) {
            last; # loop AWAIT
         }
      }
   }
   no integer;
   return ($nn);
}
sub bkn($$ ) {
   my ($nbb, $kk) = @_;
   return (znorder($nbb, $kk * $nbb - 1));
}
sub bkbn($$$ ) {
   my ($nbb, $kk, $cc) = @_;
   my $mdls;
   use integer;
   $mdls = $kk * $nbb - 1;
   if ($mdls % $cc == 0) {
      $mdls /= $cc;
   }
   no integer;
   return (znorder($nbb, $mdls));
}
{
my $lv_li_two = 0;
   sub lix($ ) {
      my ($xx) = @_;
      # local-use Perl $lv_li_two;
      if ($lv_li_two <= 0) {
         $lv_li_two = Kw::logintegral(2.0);
      }
      return (Kw::logintegral($xx) - $lv_li_two);
   }
   sub lixinv($ ) {
      my ($yy) = @_;
      my $scvx_xp;
      my $scvx_xx;
      my $scvx_yp;
      my $scvx_yy;
      my $scvx_dx;
      my $scvx_ii;
      my $x_init;
      $x_init = $yy / log($yy);
      $scvx_dx = 0.05;
      $scvx_xx = $x_init;
      $scvx_yy = $yy - lix($scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $yy - lix($scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
      return ($scvx_xx);
   }
}
{
sub lf_n2primish($ ) {
   my ($nn) = @_;
      my $retvalu;
      if ($nn == 0) {
         $retvalu = 0;
      } elsif ($nn < 3) {
         $retvalu = $nn + 1;
      } elsif (Kw::isodd($nn)) {
         $retvalu = 3 * $nn - 4;
      } else {
         $retvalu = 3 * $nn - 5;
      }
      return ($retvalu);
   }
   sub n2primish($ ) {
      my ($nn) = @_;
      my $retvalu;
      if (0 < $nn) {
         $retvalu = lf_n2primish($nn);
      } else {
         $retvalu = -lf_n2primish(-$nn);
      }
      return ($retvalu);
   }
}
sub primenth__1($ ) {
   my ($nn) = @_;
   my $logn;
   my $loglogn;
   my $retvalu;
   if ($nn < 0) {
      $retvalu = 0;
   } elsif ($nn < 4.25) {
      $retvalu = 1.6 * $nn + 0.1;
   } else {
      $logn = log($nn);
      $loglogn = log($logn);
      $retvalu = $nn * ($logn + $loglogn - 1.0 + ($loglogn - 2.0) / $logn
               - (($loglogn - 6.0) * $loglogn + 11.0) / (2.0 * $logn *
               $logn)) + 3.5 * sqrt($nn) + 10;
   }
   return ($retvalu);
}
sub reimann($ ) {
   my ($nn) = @_;
   my $retvalu;
   my $sum;
   my $sum_prev;
   my $ii;
   my $lim;
   if ($nn < 2) {
      $retvalu = 0;
   } else {
      $sum = lix($nn);
      $lim = 10 * Kw::lg($nn);
      $ii = 2;
      for (;;) {
         $sum_prev = $sum;
         $sum += mobius($ii) * lix(Kw::pow($nn, 1.0 / $ii)) / $ii;
         if (Kw::iseq($sum, $sum_prev)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if ($lim <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $sum;
   }
   return ($retvalu);
}
sub primenth($ ) {
   my ($nn) = @_;
   my $ii;
   my $pp;
   my $rmndr;
   my $inc;
   my @prime_arr;
   if ($nn < 5) {
      if ($nn < 1) {
         $pp = 0;
      } elsif ($nn < 2) {
         $pp = 2;
      } elsif ($nn < 3) {
         $pp = 3;
      } elsif ($nn < 4) {
         $pp = 5;
      } else {
         $pp = 7;
      }
   } else {
      if (1024 <= $nn) {
         $prime_arr[0] = 8161;
         $prime_arr[1] = 17863;
         $prime_arr[2] = 38873;
         $prime_arr[3] = 84017;
         $prime_arr[4] = 180503;
         $prime_arr[5] = 386093;
         $prime_arr[6] = 821641;
         $prime_arr[7] = 1742537;
         $prime_arr[8] = 3681131;
         $prime_arr[9] = 7754077;
         $prime_arr[10] = 16290047;
         $prime_arr[11] = 34136029;
         $prime_arr[12] = 71378569;
         $prime_arr[13] = 148948139;
         $prime_arr[14] = 310248241;
         $prime_arr[15] = 645155197;
         $prime_arr[16] = 1339484197;
         $prime_arr[17] = 2777105129;
         $prime_arr[18] = 5750079047;
         $prime_arr[19] = 11891268401;
         $prime_arr[20] = 24563311309;
         $prime_arr[21] = 50685770167;
         $prime_arr[22] = 104484802057;
         $ii = floorl(Kw::lg($nn + 1) - 10);
         if (22 <= $ii) {
            $ii = 22;
         }
         $pp = $prime_arr[$ii];
         $ii = Kw::round(Kw::pow(2, $ii + 10));
         $rmndr = Kw::fmodu($pp, 6);
         if (Kw::iseq($rmndr, 5)) {
            $inc = 2;
         } elsif (Kw::iseq($rmndr, 1)) {
            $inc = 4;
         } else {
            die "primenth:" . "PRIME_ISNT_PM_1_MOD_6";
         }
      } else {
         $pp = 11;
         $ii = 5;
         $inc = 2;
      }
      while ($ii < $nn) {
         for (;;) {
            $pp += $inc;
            $inc = 6 - $inc;
            if (Kw::isprime($pp)) {
               last; # loop AWAIT
            }
         }
         $ii += 1;
      }
   }
   return ($pp);
}
sub bessJv($$ ) {
   my ($vv, $xx) = @_;
   my $sum;
   my $sum_prev;
   my $term;
   my $ff;
   my $xxsqr_div_four;
   my $avv;
   if ($xx < 0.0) {
      $sum = 0.0;
   } else {
      $avv = $vv;
      if (Kw::isposint(-$vv)) {
         $avv = abs($vv);
      }
      $xxsqr_div_four = ($xx * $xx / 4.0);
      $term = Kw::pow($xx / 2.0, $avv) / Kw::tgamma($avv + 1.0);
      $sum = $term;
      $ff = 1;
      for (;;) {
         $term *= - $xxsqr_div_four / ($ff * ($avv + $ff));
         $sum_prev = $sum;
         $sum += $term;
         if (Kw::iseq($sum, $sum_prev)) {
            last; # loop AWAIT
         }
         $ff += 1;
      }
      if (Kw::isposint(-$vv) and Kw::isodd($vv)) {
         $sum = -$sum;
      }
   }
   return ($sum);
}
sub bessYv($$ ) {
   my ($vv, $xx) = @_;
   my $retvalu;
   my $vvpi;
   if (Kw::isint($vv)) {
      $retvalu = bessYn($vv, $xx);
   } else {
      $vvpi = Kw::PI * $vv;
      $retvalu = (cos($vvpi) * bessJv($vv, $xx) - bessJv(-$vv, $xx)) /
               sin($vvpi);
   }
   return ($retvalu);
}
sub bessI0($ ) {
   my ($xx) = @_;
   my $yy;
   my $retvalu;
   if ($xx < 7.75) {
      $yy = $xx * $xx / 4.0;
      $retvalu = (((((((((((((((((1.1497640034400735733456400E-29) * $yy
               + 2.0732014503197852176921968E-27) * $yy +
               5.9203280572170548134753422E-25) * $yy +
               1.3141332422663039834197910E-22) * $yy +
               2.5791926805873898803749321E-20) * $yy +
               4.3583591008893599099577755E-18) * $yy +
               6.2760839879536225394314453E-16) * $yy +
               7.5940582595094190098755663E-14) * $yy +
               7.5940584360755226536109511E-12) * $yy +
               6.1511873265092916275099070E-10) * $yy +
               3.9367598891475388547279760E-8) * $yy +
               1.9290123456788994104574754E-6) * $yy +
               6.9444444444444568581891535E-5) * $yy +
               1.7361111111111110294015271E-3) * $yy +
               2.7777777777777777805664954E-2) * $yy +
               2.4999999999999999999629693E-1) * $yy +
               1.0000000000000000000000801) * $yy + 1.0;
   } else {
      $yy = 1.0 / $xx;
      $retvalu = (((((((((((((((((((((((1.6069467093441596329340754E+16)
               * $yy - 2.1363029690365351606041265E+16) * $yy +
               1.3012646806421079076251950E+16) * $yy -
               4.8049082153027457378879746E+15) * $yy +
               1.1989242681178569338129044E+15) * $yy -
               2.1323049786724612220362154E+14) * $yy +
               2.7752144774934763122129261E+13) * $yy -
               2.6632742974569782078420204E+12) * $yy +
               1.8592340458074104721496236E+11) * $yy -
               8.9270060370015930749184222E+9) * $yy +
               2.3518420447411254516178388E+8) * $yy +
               2.6092888649549172879282592E+6) * $yy -
               5.9355022509673600842060002E+5) * $yy +
               3.1275740782277570164423916E+4) * $yy -
               1.0026890180180668595066918E+3) * $yy +
               2.2725199603010833194037016E+1) * $yy -
               1.0699095472110916094973951E-1) * $yy +
               9.4085204199017869159183831E-2) * $yy +
               4.4718622769244715693031735E-2) * $yy +
               2.9219501690198775910219311E-2) * $yy +
               2.8050628884163787533196746E-2) * $yy +
               4.9867785050353992900698488E-2) * $yy +
               3.9894228040143265335649948E-1);
      $retvalu *= exp($xx) / sqrt($xx);
   }
   return ($retvalu);
}
sub bessI1($ ) {
   my ($xx) = @_;
   my $yy;
   my $aa;
   my $retvalu;
   if ($xx < 7.75) {
      $yy = $xx * $xx / 4.0;
      $aa = (((((((((((((1.332898928162290861E-23) * $yy +
               1.625212890947171108E-21) * $yy +
               3.410720494727771276E-19) * $yy +
               5.220157095351373194E-17) * $yy +
               6.904822652741917551E-15) * $yy +
               7.593969849687574339E-13) * $yy +
               6.834657311305621830E-11) * $yy + 4.920949692800671435E-9)
               * $yy + 2.755731926254790268E-7) * $yy +
               1.157407407354987232E-5) * $yy + 3.472222222225921045E-4)
               * $yy + 6.944444444444341983E-3) * $yy +
               8.333333333333333803E-2);
      $retvalu = ((($aa) * $yy + 0.5) * $yy + 1.0) * $xx / 2.0;
   } elsif ($xx < 500.0) {
      $yy = 1.0 / $xx;
      $retvalu = ((((((((((((((((((((((-2.213318202179221945E+15) * $yy +
               3.146401654361325073E+15) * $yy -
               2.067285045778906105E+15) * $yy +
               8.325554073334618015E+14) * $yy -
               2.298849639457172489E+14) * $yy +
               4.614040809616582764E+13) * $yy -
               6.967602516005787001E+12) * $yy +
               8.087824484994859552E+11) * $yy -
               7.313784438967834057E+10) * $yy + 5.192386898222206474E+9)
               * $yy - 2.903390398236656519E+8) * $yy +
               1.277677779341446497E+7) * $yy - 4.404655582443487334E+5)
               * $yy + 1.178785865993440669E+4) * $yy -
               2.426181371595021021E+2) * $yy + 3.458284470977172076) *
               $yy - 1.528189554374492735E-1) * $yy -
               5.719036414430205390E-2) * $yy - 4.090895951581637791E-2)
               * $yy - 4.675104253598537322E-2) * $yy -
               1.496033551613111533E-1) * $yy + 3.989422804014406054E-1)
               * exp($xx) / sqrt($xx);
   } else {
      $yy = 1.0 / $xx;
      $aa = exp($xx / 2.0);
      $retvalu = (((((-5.843630344778927582E-2) * $yy -
               4.090421597376992892E-2) * $yy - 4.675105322571775911E-2)
               * $yy - 1.496033551467584157E-1) * $yy +
               3.989422804014314820E-1) * $aa / sqrt($xx);
      $retvalu *= $aa;
   }
   return ($retvalu);
}
sub bessK0($ ) {
   my ($arg) = @_;
   my $retvalu;
   my $sumf;
   my $sumg;
   my $sump;
   my $sumq;
   my $xx;
   my $xz;
   $xx = $arg;
   if ($xx <= 0.0) {
      $retvalu = Kw::DBLMAX;
   } elsif ($xx < Kw::DBLEPS) {
      $retvalu = 0.11593151565841244858684731328185 - log($xx);
   } elsif ($xx <= 1.0) {
      $xz = $xx * $xx;
      $sump = (((((5.8599221412826100000E-4) * $xz +
               1.3166052564989571850E-1) * $xz +
               1.1999463724910714109E+1) * $xz +
               4.6850901201934832188E+2) * $xz +
               5.9169059852270512312E+3) * $xz + 2.4708152720399552679E+3;
      $sumq = ((1.0) * $xz - 2.4994418972832303646E+2) * $xz +
               2.1312714303849120380E+4;
      $sumf = (((-1.6414452837299064100) * $xz -
               2.9601657892958843866E+2) * $xz -
               1.7733784684952985886E+4) * $xz - 4.0320340761145482298E+5;
      $sumg = ((1.0 * $xz - 2.5064972445877992730E+2) * $xz +
               2.9865713163054025489E+4) * $xz - 1.6128136304458193998E+6;
      $retvalu = $sump / $sumq - log($xx) * ($xz * $sumf / $sumg + 1.0);
   } elsif ($xx < Kw::DBLMAXLN) {
      $xz = 1.0 / $xx;
      $sump = (((((((((1.1394980557384778174E+2) * $xz +
               3.6832589957340267940E+3) * $xz +
               3.1075408980684392399E+4) * $xz +
               1.0577068948034021957E+5) * $xz +
               1.7398867902565686251E+5) * $xz +
               1.5097646353289914539E+5) * $xz +
               7.1557062783764037541E+4) * $xz +
               1.8321525870183537725E+4) * $xz +
               2.3444738764199315021E+3) * $xz + 1.1600249425076035558E+2;
      $sumq = ((((((((((1.0) * $xz + 2.0013443064949242491E+2) * $xz +
               4.4329628889746408858E+3) * $xz +
               3.1474655750295278825E+4) * $xz +
               9.7418829762268075784E+4) * $xz +
               1.5144644673520157801E+5) * $xz +
               1.2689839587977598727E+5) * $xz +
               5.8824616785857027752E+4) * $xz +
               1.4847228371802360957E+4) * $xz +
               1.8821890840982713696E+3) * $xz + 9.2556599177304839811E+1;
      $retvalu = $sump / $sumq / sqrt($xx) * exp(-$xx);
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub bessK1($ ) {
   my ($arg) = @_;
   my $retvalu;
   my $sumf;
   my $sumg;
   my $sump;
   my $sumq;
   my $xx;
   my $xz;
   $xx = $arg;
   if ($xx < Kw::DBLEPS) {
      $retvalu = Kw::DBLMAX;
   } elsif ($xx < Kw::DBLEPS) {
      $retvalu = 1.0 / $xx;
   } elsif ($xx <= 1.0) {
      $xz = $xx * $xx;
      $sump = (((((4.8127070456878442310E-1) * $xz +
               9.9991373567429309922E+1) * $xz +
               7.1885382604084798576E+3) * $xz +
               1.7733324035147015630E+5) * $xz +
               7.1938920065420586101E+5) * $xz - 2.2149374878243304548E+6;
      $sumq = (((1.0) * $xz - 2.8143915754538725829E+2) * $xz +
               3.7264298672067697862E+4) * $xz - 2.2149374878243304548E+6;
      $sumf = ((((-2.2795590826955002390E-1) * $xz -
               5.3103913335180275253E+1) * $xz -
               4.5051623763436087023E+3) * $xz -
               1.4758069205414222471E+5) * $xz - 1.3531161492785421328E+6;
      $sumg = (((1.0) * $xz - 3.0507151578787595807E+2) * $xz +
               4.3117653211351080007E+4) * $xz - 2.7062322985570842656E+6;
      $retvalu = ($xz * log($xx) * $sumf / $sumg + $sump / $sumq) / $xx;
   } elsif ($xx < Kw::DBLMAXLN) {
      $xz = 1.0 / $xx;
      $sump = ((((((((((6.4257745859173138767E-2) * $xz +
               7.5584584631176030810) * $xz + 1.3182609918569941308E+2) *
               $xz + 8.1094256146537402173E+2) * $xz +
               2.3123742209168871550E+3) * $xz +
               3.4540675585544584407E+3) * $xz +
               2.8590657697910288226E+3) * $xz +
               1.3319486433183221990E+3) * $xz +
               3.4122953486801312910E+2) * $xz +
               4.4137176114230414036E+1) * $xz + 2.2196792496874548962;
      $sumq = (((((((((1.0) * $xz + 3.6001069306861518855E+1) * $xz +
               3.3031020088765390854E+2) * $xz +
               1.2082692316002348638E+3) * $xz +
               2.1181000487171943810E+3) * $xz +
               1.9448440788918006154E+3) * $xz +
               9.6929165726802648634E+2) * $xz +
               2.5951223655579051357E+2) * $xz +
               3.4552228452758912848E+1) * $xz + 1.7710478032601086579;
      $retvalu = $sump / $sumq / sqrt($xx);
      $retvalu = $retvalu * exp(-$xx);
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub bessJn_ps($$ ) {
   my ($nn, $xx) = @_;
   my $sum;
   my $sum_prev;
   my $term;
   my $ff;
   my $xxsqr_div_four;
   my $ann;
   if ($nn < 0) {
      $ann = -$nn;
   } else {
      $ann = $nn;
   }
   $term = Kw::pow($xx / 2.0, $ann) / Kw::factorial($ann);
   $xxsqr_div_four = -($xx * $xx / 4.0);
   $sum = $term;
   $ff = 1;
   for (;;) {
      $term *= $xxsqr_div_four / ($ff * ($ann + $ff));
      $sum_prev = $sum;
      $sum += $term;
      if (Kw::iseq($sum, $sum_prev)) {
         last; # loop AWAIT
      }
      $ff += 1;
   }
   if ($nn < 0 and Kw::isodd($nn)) {
      $sum = -$sum;
   }
   return ($sum);
}
sub bessIn_ps($$ ) {
   my ($nn, $xx) = @_;
   my $sum;
   my $sum_prev;
   my $term;
   my $ff;
   my $xxsqr_div_four;
   my $ann;
   if ($nn < 0) {
      $ann = -$nn;
   } else {
      $ann = $nn;
   }
   $term = Kw::pow($xx / 2.0, $ann) / Kw::factorial($ann);
   $xxsqr_div_four = $xx * $xx / 4.0;
   $sum = $term;
   $ff = 1;
   for (;;) {
      $term *= $xxsqr_div_four / ($ff * ($ann + $ff));
      $sum_prev = $sum;
      $sum += $term;
      if (Kw::iseq($sum, $sum_prev)) {
         last; # loop AWAIT
      }
      $ff += 1;
   }
   return ($sum);
}
{
sub lf_besucjy0_xge5($$ ) {
   my ($xx, $jfunc) = @_;
      my $ww;
      my $pp;
      my $qq;
      my $zz;
      my $xn;
      my $denom;
      my $numer;
      $ww = 5.0 / $xx;
      $zz = 25.0 / ($xx * $xx);
      $numer = (((((((7.96936729297347051624E-4) * $zz +
               8.28352392107440799803E-2) * $zz + 1.23953371646414299388)
               * $zz + 5.44725003058768775090) * $zz +
               8.74716500199817011941) * $zz + 5.30324038235394892183) *
               $zz + 9.99999999999999997821E-1);
      $denom = (((((((9.24408810558863637013E-4) * $zz +
               8.56288474354474431428E-2) * $zz + 1.25352743901058953537)
               * $zz + 5.47097740330417105182) * $zz +
               8.76190883237069594232) * $zz + 5.30605288235394617618) *
               $zz + 1.00000000000000000218);
      $pp = $numer / $denom;
      $numer = ((((((((-1.13663838898469149931E-2) * $zz -
               1.28252718670509318512) * $zz - 1.95539544257735972385E+1)
               * $zz - 9.32060152123768231369E+1) * $zz -
               1.77681167980488050595E+2) * $zz -
               1.47077505154951170175E+2) * $zz -
               5.14105326766599330220E+1) * $zz - 6.05014350600728481186);
      $denom = ((((((((1.0) * $zz + 6.43178256118178023184E+1) * $zz +
               8.56430025976980587198E+2) * $zz +
               3.88240183605401609683E+3) * $zz +
               7.24046774195652478189E+3) * $zz +
               5.93072701187316984827E+3) * $zz +
               2.06209331660327847417E+3) * $zz + 2.42005740240291393179E+2);
      $qq = $numer / $denom;
      $xn = $xx - Kw::PI / 4.0;
      if ($jfunc < 1) {
         $pp = $pp * cos($xn) - $ww * $qq * sin($xn);
      } else {
         $pp = $pp * sin($xn) + $ww * $qq * cos($xn);
      }
      return ($pp * Kw::TWOSQRT / sqrt(Kw::PI * $xx));
   }
   sub lf_besucjy1_xge5($$ ) {
      my ($xx, $jfunc) = @_;
      my $ww;
      my $pp;
      my $qq;
      my $zz;
      my $xn;
      my $denom;
      my $numer;
      $ww = 5.0 / $xx;
      $zz = 25.0 / ($xx * $xx);
      $numer = (((((((7.62125616208173112003E-4) * $zz +
               7.31397056940917570436E-2) * $zz + 1.12719608129684925192)
               * $zz + 5.11207951146807644818) * $zz +
               8.42404590141772420927) * $zz + 5.21451598682361504063) *
               $zz + 1.00000000000000000254);
      $denom = (((((((5.71323128072548699714E-4) * $zz +
               6.88455908754495404082E-2) * $zz + 1.10514232634061696926)
               * $zz + 5.07386386128601488557) * $zz +
               8.39985554327604159757) * $zz + 5.20982848682361821619) *
               $zz + 9.99999999999999997461E-1);
      $pp = $numer / $denom;
      $numer = ((((((((5.10862594750176621635E-2) * $zz +
               4.98213872951233449420) * $zz + 7.58238284132545283818E+1)
               * $zz + 3.66779609360150777800E+2) * $zz +
               7.10856304998926107277E+2) * $zz +
               5.97489612400613639965E+2) * $zz +
               2.11688757100572135698E+2) * $zz + 2.52070205858023719784E+1);
      $denom = ((((((((1.0) * $zz + 7.42373277035675149943E+1) * $zz +
               1.05644886038262816351E+3) * $zz +
               4.98641058337653607651E+3) * $zz +
               9.56231892404756170795E+3) * $zz +
               7.99704160447350683650E+3) * $zz +
               2.82619278517639096600E+3) * $zz + 3.36093607810698293419E+2);
      $qq = $numer / $denom;
      $xn = $xx - 3.0 * Kw::PI / 4.0;
      if ($jfunc < 1) {
         $pp = $pp * cos($xn) - $ww * $qq * sin($xn);
      } else {
         $pp = $pp * sin($xn) + $ww * $qq * cos($xn);
      }
      return ($pp * Kw::TWOSQRT / sqrt(Kw::PI * $xx));
   }
   sub bessJ0($ ) {
      my ($xx) = @_;
      my $zz;
      my $denom;
      my $numer;
      my $retvalu;
      if ($xx < 0.0) {
         $xx = -$xx;
      }
      $zz = $xx * $xx;
      if ($xx < 1.0E-5) {
         $retvalu = 1.0 - $zz / 4.0;
      } elsif ($xx < 5.0) {
         $numer = ((((-4.79443220978201773821E+9) * $zz +
                  1.95617491946556577543E+12) * $zz -
                  2.49248344360967716204E+14) * $zz +
                  9.70862251047306323952E+15);
         $denom = (((((((((1.0) * $zz + 4.99563147152651017219E+2) * $zz
                  + 1.73785401676374683123E+5) * $zz +
                  4.84409658339962045305E+7) * $zz +
                  1.11855537045356834862E+10) * $zz +
                  2.11277520115489217587E+12) * $zz +
                  3.10518229857422583814E+14) * $zz +
                  3.18121955943204943306E+16) * $zz +
                  1.71086294081043136091E+18);
         $retvalu = ($zz - 5.783185962946784521175) * ($zz -
                  30.4712623436620863991) * $numer / $denom;
      } else {
         $retvalu = lf_besucjy0_xge5($xx, 0);
      }
      return ($retvalu);
   }
   sub bessJ1($ ) {
      my ($xx) = @_;
      my $ww;
      my $zz;
      my $denom;
      my $numer;
      my $retvalu;
      $ww = $xx;
      if ($ww < 0.0) {
         $ww = -$ww;
      }
      if ($ww < 5.0) {
         $zz = $ww * $ww;
         $numer = ((((-8.99971225705559398224E+8) * $zz +
                  4.52228297998194034323E+11) * $zz -
                  7.27494245221818276015E+13) * $zz +
                  3.68295732863852883286E+15);
         $denom = (((((((((1.0) * $zz + 6.20836478118054335476E+2) * $zz
                  + 2.56987256757748830383E+5) * $zz +
                  8.35146791431949253037E+7) * $zz +
                  2.21511595479792499675E+10) * $zz +
                  4.74914122079991414898E+12) * $zz +
                  7.84369607876235854894E+14) * $zz +
                  8.95222336184627338078E+16) * $zz +
                  5.32278620332680085395E+18);
         $retvalu = $numer / $denom * $xx * ($zz -
                  14.6819706421238932572) * ($zz - 49.2184563216946036703);
      } else {
         $retvalu = lf_besucjy1_xge5($xx, 0);
      }
      return ($retvalu);
   }
   sub bessY0($ ) {
      my ($xx) = @_;
      my $zz;
      my $denom;
      my $numer;
      my $retvalu;
      if ($xx <= 0.0) {
         $retvalu = Kw::DBLMAX;
      } else {
         $zz = $xx * $xx;
         if ($xx < 1.0E-5) {
            $retvalu = 1.0 - $zz / 4.0;
         } elsif ($xx < 5.0) {
            $numer = ((((((((1.55924367855235737965E+4) * $zz -
                     1.46639295903971606143E+7) * $zz +
                     5.43526477051876500413E+9) * $zz -
                     9.82136065717911466409E+11) * $zz +
                     8.75906394395366999549E+13) * $zz -
                     3.46628303384729719441E+15) * $zz +
                     4.42733268572569800351E+16) * $zz -
                     1.84950800436986690637E+16);
            $denom = ((((((((1.0) * $zz + 1.04128353664259848412E+3) *
                     $zz + 6.26107330137134956842E+5) * $zz +
                     2.68919633393814121987E+8) * $zz +
                     8.64002487103935000337E+10) * $zz +
                     2.02979612750105546709E+13) * $zz +
                     3.17157752842975028269E+15) * $zz +
                     2.50596256172653059228E+17);
            $retvalu = $numer / $denom + 2.0 * log($xx) * bessJ0($xx) /
                     Kw::PI;
         } else {
            $retvalu = lf_besucjy0_xge5($xx, 1);
         }
      }
      return ($retvalu);
   }
   sub bessY1($ ) {
      my ($xx) = @_;
      my $ww;
      my $zz;
      my $denom;
      my $numer;
      my $retvalu;
      $ww = $xx;
      if ($xx <= 0.0) {
         $retvalu = -Kw::DBLMAX;
      } elsif ($ww <= 5.0) {
         $zz = $ww * $ww;
         $numer = ((((((1.2632047479017802640E+9) * $zz -
                  6.47355876379160291031E+11) * $zz +
                  1.14509511541823727583E+14) * $zz -
                  8.12770255501325109621E+15) * $zz +
                  2.02439475713594898196E+17) * $zz -
                  7.78877196265950026825E+17);
         $denom = (((((((((1.0) * $zz + 5.94301592346128195359E+2) * $zz
                  + 2.35564092943068577943E+5) * $zz +
                  7.34811944459721705660E+7) * $zz +
                  1.87601316108706159478E+10) * $zz +
                  3.88231277496238566008E+12) * $zz +
                  6.20557727146953693363E+14) * $zz +
                  6.87141087355300489866E+16) * $zz +
                  3.97270608116560655612E+18);
         $retvalu = $xx * $numer / $denom + 2.0 * (bessJ1($xx) * log($xx)
                  - 1.0 / $xx) / Kw::PI;
      } else {
         $retvalu = lf_besucjy1_xge5($xx, 1);
      }
      return ($retvalu);
   }
}
{
sub lf_bess_ucrecur($$$$ ) {
   my ($nn, $xx, $fzero, $fone) = @_;
      my $av;
      my $bv;
      my $cv;
      my $tox;
      my $ii;
      if ($nn <= 0) {
         $cv = $fzero;
      } elsif ($nn == 1) {
         $cv = $fone;
      } else {
         $tox = 2.0 / $xx;
         $av = $fzero;
         $bv = $fone;
         for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
            $cv = $tox * $ii * $bv - $av;
            $av = $bv;
            $bv = $cv;
         }
      }
      return ($cv);
   }
   sub lf_limi($ ) {
      my ($nn) = @_;
      return ($nn + floor(sqrt(40.0 * $nn)));
   }
   sub lf_bess_ucrecur2($$ ) {
      my ($nn, $xx) = @_;
      my $tox;
      my $bzp;
      my $bzc;
      my $bzm;
      my $sjm;
      my $jj;
      my $flipflop;
      my $limi;
      my $retvalu;
      $flipflop = 0;
      $sjm = 0.0;
      $tox = 2.0 / abs($xx);
      $retvalu = 0.0;
      $bzp = 0.0;
      $bzc = 1.0;
      $limi = lf_limi($nn);
      if (Kw::isodd($limi)) {
         $limi -= 1;
      }
      for ($jj = $limi; 1 <= $jj; $jj -= 1) {
         $bzm = $jj * $tox * $bzc - $bzp;
         $bzp = $bzc;
         $bzc = $bzm;
         if ($flipflop == 0) {
            $flipflop = 1;
         } else {
            $sjm += $bzc;
            $flipflop = 0;
         }
         if ($jj == $nn) {
            $retvalu = $bzp;
         }
      }
      $sjm = 2.0 * $sjm - $bzc;
      $retvalu /= $sjm;
      return ($retvalu);
   }
   sub bessIn($$ ) {
      my ($nn, $xx) = @_;
      my $jj;
      my $limi;
      my $bzc;
      my $bzm;
      my $bzp;
      my $tox;
      my $retvalu;
      my $axx;
      if ($nn < 0 or Kw::iszero($xx)) {
         $retvalu = 0.0;
      } elsif ($nn == 0) {
         $axx = abs($xx);
         $retvalu = bessI0($axx);
      } elsif ($nn == 1) {
         $axx = abs($xx);
         $retvalu = bessI1($axx);
      } else {
         $tox = 2.0 / abs($xx);
         $retvalu = 0.0;
         $bzp = 0.0;
         $bzc = 1.0;
         $limi = 2 * lf_limi($nn);
         for ($jj = $limi; 1 <= $jj; $jj -= 1) {
            $bzm = $bzp + $jj * $tox * $bzc;
            $bzp = $bzc;
            $bzc = $bzm;
            if ($jj == $nn) {
               $retvalu = $bzp;
            }
         }
         $retvalu *= bessI0($xx) / $bzc;
      }
      if ($xx < 0.0 and Kw::isodd($nn)) {
         $retvalu = -$retvalu;
      }
      return ($retvalu);
   }
   sub bessJn($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      if ($nn == 0) {
         $retvalu = bessJ0($xx);
      } elsif ($nn == 1) {
         $retvalu = bessJ1($xx);
      } elsif ($nn < abs($xx)) {
         $retvalu = lf_bess_ucrecur($nn, $xx, bessJ0($xx), bessJ1($xx));
      } else {
         $retvalu = lf_bess_ucrecur2($nn, $xx);
      }
      return ($retvalu);
   }
   sub bessYn($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      if ($nn == 0) {
         $retvalu = bessY0($xx);
      } elsif ($nn == 1) {
         $retvalu = bessY1($xx);
      } else {
         $retvalu = lf_bess_ucrecur($nn, $xx, bessY0($xx), bessY1($xx));
      }
      return ($retvalu);
   }
   sub bessKn($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      if ($nn < 0 or Kw::iszero($xx)) {
         $retvalu = 0.0;
      } elsif ($nn == 0) {
         $retvalu = bessK0($xx);
      } elsif ($nn == 1) {
         $retvalu = bessK1($xx);
      } else {
         $retvalu = lf_bess_ucrecur($nn, $xx, bessK0($xx), bessK1($xx));
      }
      return ($retvalu);
   }
   sub bessYn_ps($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      my $sum;
      my $sum_prev;
      my $term;
      my $hn;
      my $kk;
      my $xxsqr_div_four;
      if ($nn < 0 or Kw::iszero($xx)) {
         $retvalu = 0.0;
      } elsif ($nn == 0) {
         $xxsqr_div_four = $xx * $xx / 4.0;
         $sum = (log($xx / 2.0) + Kw::EULER) * bessJn(0, $xx);
         $term = -1;
         $hn = 0.0;
         $kk = 1;
         for (;;) {
            $hn += 1.0 / $kk;
            $term *= - $xxsqr_div_four / ($kk * $kk);
            $sum_prev = $sum;
            $sum += $term * $hn;
            if (Kw::iseq($sum, $sum_prev)) {
               last; # loop AWAIT
            }
            $kk += 1;
         }
         $retvalu = 2.0 * $sum / Kw::PI;
      } elsif ($nn == 1) {
         $retvalu = bessY1($xx);
      } else {
         $retvalu = lf_bess_ucrecur($nn, $xx, bessY0($xx), bessY1($xx));
      }
      return ($retvalu);
   }
}
sub bessY1__1($ ) {
   my ($xx) = @_;
   my $numer;
   my $denom;
   my $zz;
   my $ww;
   my $yy;
   my $retvalu;
   if (Kw::iszero($xx)) {
      $retvalu = -Kw::DBLMAX;
   } elsif ($xx < 8.0) {
      $yy = $xx * $xx;
      $numer = ((((((8.511937935E+3) * $yy - 4.237922726E+6) * $yy +
               7.349264551E+8) * $yy - 5.153438139E+10) * $yy +
               1.275274390E+12) * $yy - 4.900604943E+12);
      $denom = (((((((1.0) * $yy + 3.549632885E+2) * $yy +
               1.020426050E+5) * $yy + 2.245904002E+7) * $yy +
               3.733650367E+9) * $yy + 4.244419664E+11) * $yy +
               2.499580570E+13);
      $retvalu = 2.0 * (bessJn(1, $xx) * log($xx) - 1.0 / $xx) / Kw::PI +
               $xx * ($numer / $denom);
   } else {
      $zz = 8.0 / $xx;
      $yy = $zz * $zz;
      $numer = (((((-2.403370190E-7) * $yy + 2.457520174E-6) * $yy -
               3.516396496E-5) * $yy + 1.831050000E-3) * $yy + 1.0);
      $denom = (((((1.057874120E-7) * $yy - 8.822898700E-7) * $yy +
               8.449199096E-6) * $yy - 2.002690873E-4) * $yy +
               4.687499995E-2);
      $ww = $xx - 0.75 * Kw::PI;
      $retvalu = Kw::TWOSQRT / sqrt(Kw::PI * $xx) * (sin($ww) * $numer +
               $zz * cos($ww) * $denom);
   }
   return ($retvalu);
}
{
sub lf_bess_lcrecur($$$$ ) {
   my ($nn, $xx, $fzero, $fone) = @_;
      my $av;
      my $bv;
      my $cv;
      my $ii;
      if ($nn <= 0) {
         $cv = $fzero;
      } elsif ($nn == 1) {
         $cv = $fone;
      } else {
         $av = $fzero;
         $bv = $fone;
         for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
            $cv = (2.0 * $ii + 1.0) * $bv / $xx - $av;
            $av = $bv;
            $bv = $cv;
         }
      }
      return ($cv);
   }
   sub bess_jn($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      my $jk_a;
      my $jk_b;
      if (Kw::iszero($xx)) {
         if ($nn == 0) {
            $retvalu = 1.0;
         } else {
            $retvalu = 0.0;
         }
      } else {
         $jk_a = sin($xx) / $xx;
         $jk_b = (sin($xx) - $xx * cos($xx)) / ($xx * $xx);
         if ($nn <= 0) {
            $retvalu = $jk_a;
         } elsif ($nn <= 1) {
            $retvalu = $jk_b;
         } else {
            $retvalu = lf_bess_lcrecur($nn, $xx, $jk_a, $jk_b);
         }
      }
      return ($retvalu);
   }
   sub bess_yn($$ ) {
      my ($nn, $xx) = @_;
      my $retvalu;
      my $yk_a;
      my $yk_b;
      if (Kw::iszero($xx)) {
         if ($nn == 0) {
            $retvalu = 1.0;
         } else {
            $retvalu = 0.0;
         }
      } else {
         $yk_a = -cos($xx) / $xx;
         $yk_b = (-cos($xx) - $xx * sin($xx)) / ($xx * $xx);
         if ($nn <= 0) {
            $retvalu = $yk_a;
         } elsif ($nn <= 1) {
            $retvalu = $yk_b;
         } else {
            $retvalu = lf_bess_lcrecur($nn, $xx, $yk_a, $yk_b);
         }
      }
      return ($retvalu);
   }
}
{
my @lv_partitionr_arr;
   my $lv_partitionr_end = 0;
   sub partition($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_partitionr_arr;
      # local-use Perl $lv_partitionr_end;
      my $retvalu;
      my $jj;
      my $ii;
      my $kk;
      my $sum;
      my $ssign;
      if ($nn < 0) {
         $retvalu = 0.0;
      } else {
         if ($lv_partitionr_end <= 0) {
            $lv_partitionr_end = 6;
            $lv_partitionr_arr[0] = 1.0;
            $lv_partitionr_arr[1] = 1.0;
            $lv_partitionr_arr[2] = 2.0;
            $lv_partitionr_arr[3] = 3.0;
            $lv_partitionr_arr[4] = 5.0;
            $lv_partitionr_arr[5] = 7.0;
         }
         if ($lv_partitionr_end <= $nn) {
            $ii = $lv_partitionr_end;
            $lv_partitionr_end = $nn + 1;
            while ($ii < $lv_partitionr_end) {
               $sum = 0.0;
               $ssign = 1.0;
               $kk = 1;
               $jj = $ii - 1;
               while (0 <= $jj) {
                  $sum += $ssign * $lv_partitionr_arr[$jj];
                  $jj -= $kk;
                  if ($jj < 0) {
                     last;
                  }
                  $sum += $ssign * $lv_partitionr_arr[$jj];
                  $ssign = -$ssign;
                  $kk += 1;
                  $jj -= (2 * $kk - 1);
               }
               $lv_partitionr_arr[$ii] = $sum;
               $ii += 1;
            }
         }
         $retvalu = $lv_partitionr_arr[$nn];
      }
      return ($retvalu);
   }
}
{
my @lv_partitionq_arr;
   my $lv_partitionq_end = 0;
   sub partitionq($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_partitionq_arr;
      # local-use Perl $lv_partitionq_end;
      my $retvalu;
      my $jj;
      my $ii;
      my $kk;
      my $sum;
      my $ssign;
      my $ee;
      if ($nn < 0) {
         $retvalu = 0.0;
      } else {
         if ($lv_partitionq_end <= 0) {
            $lv_partitionq_end = 6;
            $lv_partitionq_arr[0] = 1.0;
            $lv_partitionq_arr[1] = 1.0;
            $lv_partitionq_arr[2] = 1.0;
            $lv_partitionq_arr[3] = 2.0;
            $lv_partitionq_arr[4] = 2.0;
            $lv_partitionq_arr[5] = 3.0;
         }
         if ($lv_partitionq_end <= $nn) {
            $ii = $lv_partitionq_end;
            $lv_partitionq_end = $nn + 1;
            while ($ii < $lv_partitionq_end) {
               $sum = 0.0;
               $ssign = 1.0;
               $kk = 1;
               $jj = $ii - 1;
               while (0 <= $jj) {
                  $sum += $ssign * $lv_partitionq_arr[$jj];
                  $jj -= $kk;
                  if ($jj < 0) {
                     last;
                  }
                  $sum += $ssign * $lv_partitionq_arr[$jj];
                  $ssign = -$ssign;
                  $kk += 1;
                  $jj -= (2 * $kk - 1);
               }
               $ee = Kw::round(sqrt(1.0 + 12.0 * $ii) / 6.0);
               if ($ii == (3 * $ee * $ee - $ee) or $ii == (3 * $ee * $ee
                        + $ee)) {
                  if (Kw::isodd($ee)) {
                     $sum -= 1.0;
                  } else {
                     $sum += 1.0;
                  }
               }
               $lv_partitionq_arr[$ii] = $sum;
               $ii += 1;
            }
         }
         $retvalu = $lv_partitionq_arr[$nn];
      }
      return ($retvalu);
   }
}
sub bitwisenot($ ) {
   my ($xx) = @_;
   my $retvalu;
   use integer;
   $retvalu = ~($xx);
   no integer;
   return ($retvalu);
}
sub bitwiseand($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   use integer;
   $retvalu = ($xx & $yy);
   no integer;
   return ($retvalu);
}
sub bitwiseor($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   use integer;
   $retvalu = ($xx | $yy);
   no integer;
   return ($retvalu);
}
sub bitwisexor($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   use integer;
   $retvalu = ($xx ^ $yy);
   no integer;
   return ($retvalu);
}
sub bitshiftl($$ ) {
   my ($hexnumber, $shift_count) = @_;
   my $retvalu;
   if ($shift_count < 0) {
      $retvalu = ($hexnumber >> (- $shift_count));
   } elsif (0 < $shift_count) {
      $retvalu = ($hexnumber << $shift_count);
   } else {
      $retvalu = $hexnumber;
   }
   return ($retvalu);
}
sub bitshiftr($$ ) {
   my ($hexnumber, $shift_count) = @_;
   my $retvalu;
   if ($shift_count < 0) {
      $retvalu = ($hexnumber << (- $shift_count));
   } elsif (0 < $shift_count) {
      $retvalu = ($hexnumber >> $shift_count);
   } else {
      $retvalu = $hexnumber;
   }
   return ($retvalu);
}
sub bits_count($ ) {
   my ($hexnumber) = @_;
   my $bit_counter;
   my $bitmask;
   $bitmask = 1;
   $bit_counter = 0;
   while ($bitmask <= $hexnumber) {
      if (bitwiseand($bitmask, $hexnumber) != 0) {
         $bit_counter += 1;
      }
      $bitmask = ($bitmask << 1);
   }
   return ($bit_counter);
}
sub bits_ls1b($ ) {
   my ($orig) = @_;
   my $divisor;
   my $retvalu;
   if ($orig == 0) {
      $retvalu = 0;
   } else {
      $divisor = 1;
      while (0 == ($divisor & $orig)) {
         $divisor *= 2;
      }
      $retvalu = $divisor;
   }
   return ($retvalu);
}
sub bits_ms1b($ ) {
   my ($orig) = @_;
   my $divisor;
   my $retvalu;
   if ($orig == 0) {
      $retvalu = 0;
   } else {
      $divisor = -2;
      while (($divisor & $orig) != 0) {
         $divisor *= 2;
      }
      $retvalu = -$divisor / 2;
   }
   return ($retvalu);
}
sub bits_ls1bpos($ ) {
   my ($orig) = @_;
   my $divisor;
   my $retvalu;
   my $bit_count;
   if ($orig == 0) {
      $retvalu = -1;
   } else {
      $divisor = 1;
      $bit_count = 0;
      while (0 == ($divisor & $orig)) {
         $divisor *= 2;
         $bit_count += 1;
      }
      $retvalu = $bit_count;
   }
   return ($retvalu);
}
sub bits_ms1bpos($ ) {
   my ($orig) = @_;
   my $divisor;
   my $retvalu;
   my $bit_count;
   if ($orig == 0) {
      $retvalu = 0;
   } else {
      $divisor = -2;
      $bit_count = 0;
      while (($divisor & $orig) != 0) {
         $divisor *= 2;
         $bit_count += 1;
      }
      $retvalu = $bit_count;
   }
   return ($retvalu);
}
sub bits_assign($$$ ) {
   my ($orig, $value_to_set, $which_mask) = @_;
   my $divisor;
   my $retvalu;
   my $tempo;
   my $tempv;
   if ($which_mask == 0) {
      $retvalu = $orig;
   } else {
      $divisor = bits_ls1bpos($which_mask);
      $tempo = ($orig & (~($which_mask)));
      $tempv = ($value_to_set << $divisor);
      $retvalu = ($tempo | ($tempv & $which_mask));
   }
   return ($retvalu);
}
sub bits_get($$ ) {
   my ($vall, $mask) = @_;
   return (($vall & $mask) / bits_ls1b($mask));
}
sub bits_set($$ ) {
   my ($vall, $mask) = @_;
   return ((($vall * bits_ls1b($mask)) & $mask));
}
{
sub lf_calerf($$ ) {
   my ($xx, $jint) = @_;
      my $result;
      my $retvalu;
      my $absx;
      my $numer;
      my $denom;
      my $rsqrpi;
      my $rxsq;
      my $xsq;
      my $flag;
      $absx = abs($xx);
      $xsq = $xx * $xx;
      $flag = 0;
      if ($absx <= 0.46875) {
         $numer = (((((1.85777706184603153E-1) * $xsq +
                  3.16112374387056560) * $xsq + 1.13864154151050156E+2) *
                  $xsq + 3.77485237685302021E+2) * $xsq +
                  3.20937758913846947E+3);
         $denom = (((((1.00000000000000000) * $xsq +
                  2.36012909523441209E+1) * $xsq +
                  2.44024637934444173E+2) * $xsq +
                  1.28261652607737228E+3) * $xsq + 2.84423683343917062E+3);
         $retvalu = $xx * $numer / $denom;
         if ($jint == 1) {
            $retvalu = 1.0 - $retvalu;
         } elsif ($jint == 2) {
            $retvalu = exp($xsq) * (1.0 - $retvalu);
         }
         $flag = 1;
      } elsif ($absx <= 4.0) {
         $numer = (((((((((2.15311535474403846E-8) * $absx +
                  5.64188496988670089E-1) * $absx + 8.88314979438837594)
                  * $absx + 6.61191906371416295E+1) * $absx +
                  2.98635138197400131E+2) * $absx +
                  8.81952221241769090E+2) * $absx +
                  1.71204761263407058E+3) * $absx +
                  2.05107837782607147E+3) * $absx + 1.23033935479799725E+3);
         $denom = (((((((((1.00000000000000000) * $absx +
                  1.57449261107098347E+1) * $absx +
                  1.17693950891312499E+2) * $absx +
                  5.37181101862009858E+2) * $absx +
                  1.62138957456669019E+3) * $absx +
                  3.29079923573345963E+3) * $absx +
                  4.36261909014324716E+3) * $absx +
                  3.43936767414372164E+3) * $absx + 1.23033935480374942E+3);
         $result = $numer / $denom;
      } else {
         $rsqrpi = sqrt(1.0 / Kw::PI);
         if ($jint != 2 and sqrt(log(Kw::DBLMAX)) <= $absx) {
            $result = 0.0;
         } elsif ($jint == 2 and 6.71E+7 <= $absx) {
            if (Kw::DBLMAX / 8.0 <= $absx) {
               $result = 0.0;
            } else {
               $result = $rsqrpi / $absx;
            }
         } else {
            $rxsq = 1.0 / ($absx * $absx);
            $numer = ((((((-1.63153871373020978E+2) * $rxsq -
                     3.05326634961232344E+3) * $rxsq -
                     3.60344899949804439E+3) * $rxsq -
                     1.25781726111229246E+3) * $rxsq -
                     1.60837851487422766E+2) * $rxsq - 6.58749161529837803);
            $denom = ((((((1.00000000000000000E+4) * $rxsq +
                     2.56852019228982242E+4) * $rxsq +
                     1.87295284992346047E+4) * $rxsq +
                     5.27905102951428412E+3) * $rxsq +
                     6.05183413124413191E+2) * $rxsq +
                     2.33520497626869185E+1);
            $result = ($rsqrpi + $rxsq * $numer / $denom) / $absx;
         }
      }
      if ($flag == 0) {
         if ($jint == 2) {
            if ($xx < - sqrt(log(Kw::DBLMAX))) {
               $retvalu = Kw::DBLMAX;
            } elsif ($xx < 0.0) {
               $retvalu = 2.0 * exp($xsq) - $result;
            } else {
               $retvalu = $result;
            }
         } else {
            $result *= exp(-$xsq);
            if ($jint == 0) {
               if (0.0 <= $xx) {
                  $retvalu = (0.5 - $result) + 0.5;
               } else {
                  $retvalu = -((0.5 - $result) + 0.5);
               }
            } elsif ($jint == 1) {
               if ($xx < 0.0) {
                  $retvalu = 2.0 - $result;
               } else {
                  $retvalu = $result;
               }
            } else {
               $retvalu = 0.0;
            }
         }
      }
      return ($retvalu);
   }
   sub erf($ ) {
      my ($xx) = @_;
      return (lf_calerf($xx, 0));
   }
   sub erfc($ ) {
      my ($xx) = @_;
      return (lf_calerf($xx, 1));
   }
   sub erfcx($ ) {
      my ($xx) = @_;
      return (lf_calerf($xx, 2));
   }
}
sub erfcinv($ ) {
   my ($yy_orig) = @_;
   my $retvalu;
   my $xx;
   my $yy;
   my $xx_pr;
   my $dx;
   my $cc;
   my $uu;
   my $ii;
   if ($yy_orig <= 0.0) {
      $retvalu = Kw::DBLMAX / 2.0;
   } elsif (2.0 <= $yy_orig) {
      $retvalu = -(Kw::DBLMAX / 2.0);
   } elsif (Kw::iszero($yy_orig - 1.0)) {
      $retvalu = 0.0;
   } else {
      if (1.0 < $yy_orig) {
         $yy = 2.0 - $yy_orig;
      } else {
         $yy = $yy_orig;
      }
      $dx = 1.0;
      $xx = 0.0;
      $cc = -sqrt(Kw::TAU / 8.0);
      $ii = 0;
      for (;;) {
         $uu = $cc * (erfcx($xx) - $yy * exp($xx * $xx));
         $dx = -$uu / (1.0 + $uu * $xx);
         $xx_pr = $xx;
         $xx += $dx;
         if (Kw::iseq($xx_pr, $xx)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      if (1.0 < $yy_orig) {
         $retvalu = -$xx;
      } else {
         $retvalu = $xx;
      }
   }
   return ($retvalu);
}
sub erfcxinv($ ) {
   my ($yy) = @_;
   my $xx;
   my $xx_pr;
   my $dx;
   my $cc;
   my $ex;
   my $df;
   my $uu;
   my $ii;
   $xx = 0.0;
   if (not Kw::iszero($yy - 1.0)) {
      $dx = 1.0;
      $cc = sqrt(8.0 / Kw::TAU);
      $ii = 0;
      for (;;) {
         $ex = erfcx($xx);
         $df = 2.0 * $xx * $ex - $cc;
         $uu = ($ex - $yy) / $df;
         $dx = -$uu / (1.0 - $uu * ($xx + $ex / $df));
         $xx_pr = $xx;
         $xx += $dx;
         if (Kw::iseq($xx_pr, $xx)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
   }
   return ($xx);
}
sub erfinv($ ) {
   my ($yy) = @_;
   my $retvalu;
   my $xx;
   my $xx_pr;
   my $dx;
   my $cc;
   my $uu;
   my $ii;
   if (Kw::iszero($yy)) {
      $retvalu = 0.0;
   } elsif (0.5 < $yy) {
      $retvalu = erfcinv(1.0 - $yy);
   } elsif ($yy < - 0.5) {
      $retvalu = -erfcinv(1.0 + $yy);
   } else {
      $dx = 1.0;
      $xx = 0.0;
      $cc = sqrt(Kw::TAU / 8.0);
      $ii = 0;
      for (;;) {
         $uu = $cc * (erf($xx) - $yy) * exp($xx * $xx);
         $dx = -$uu / (1.0 + $uu * $xx);
         $xx_pr = $xx;
         $xx += $dx;
         if (Kw::iseq($xx_pr, $xx)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xx;
   }
   return ($retvalu);
}
sub erf__1($ ) {
   my ($xx) = @_;
   my $tt;
   my $ans;
   my $ply;
   $tt = (1.0 / (1.0 + (0.5 * abs($xx))));
   $ply = ((((((((((1.70872770E-1) * $tt - 8.22152230E-1) * $tt +
            1.48851587) * $tt - 1.13520398) * $tt + 2.78868070E-1) * $tt
            - 1.86288060E-1) * $tt + 9.67841800E-2) * $tt +
            3.74091960E-1) * $tt + 1.00002368) * $tt - 1.26551223);
   $ans = 1.0 - $tt * exp((-$xx * $xx) + $ply);
   if ($xx < 0.0) {
      $ans = -$ans;
   }
   return ($ans);
}
sub erf__2($ ) {
   my ($xx) = @_;
   my $tt;
   my $ans;
   my $ply;
   $tt = 1.0 / (1.0 + 0.3275911 * abs($xx));
   $ply = ((((((1.061405429) * $tt - 1.453152027) * $tt + 1.421413741) *
            $tt - 2.844967360E-1) * $tt + 2.548295920E-1) * $tt +
            0.000000000);
   $ans = 1.0 - exp(-$xx * $xx) * $ply;
   if ($xx < 0.0) {
      $ans = -$ans;
   }
   return ($ans);
}
sub erf__3($ ) {
   my ($xx) = @_;
   my $axx;
   my $xxsq;
   my $sum_curr;
   my $factx;
   my $nn;
   my @add_arr;
   my $kk;
   $axx = abs($xx);
   $xxsq = $xx * $xx;
   if ($axx < 4.4) {
      $factx = 1.0;
      $add_arr[0] = 1;
      $nn = 1;
      for (;;) {
         $factx *= - $xxsq / $nn;
         $add_arr[$nn] = $factx / (2.0 * $nn + 1.0);
         if (abs($add_arr[$nn]) < Kw::DBLEPS) {
            last; # loop AWAIT
         }
         $nn += 1;
         if (79 <= $nn) {
            last; # loop AWAIT
         }
      }
      $sum_curr = 0.0;
      for ($kk = $nn; 0 <= $kk; $kk -= 1) {
         $sum_curr += $add_arr[$kk];
      }
      $sum_curr *= (2.0 * $xx / sqrt(Kw::PI));
   } else {
      $factx = -exp(-$xxsq) / sqrt(Kw::PI);
      $sum_curr = 0.0;
      $kk = Kw::round($xxsq);
      for ($nn = 1; $nn <= $kk - 1; $nn += 1) {
         $factx *= - (2.0 * $nn - 1.0) / (2.0 * $xxsq);
         $sum_curr += $factx;
      }
      $sum_curr += 1.0 - exp(-$xxsq) / sqrt(Kw::PI) / $axx;
      if ($xx < 0.0) {
         $sum_curr = -$sum_curr;
      }
   }
   return ($sum_curr);
}
sub erf__4($ ) {
   my ($xx) = @_;
   my $xxsq;
   my $axx;
   my $sum_prev;
   my $sum_curr;
   my $nn;
   my $kk;
   my $twonnpone;
   my $factx;
   my $factz;
   my $twoxxsq;
   my $term;
   my $denom;
   $axx = abs($xx);
   $xxsq = $xx * $xx;
   $twoxxsq = 2.0 * $xxsq;
   $sum_curr = 0.0;
   if ($axx < 4.4) {
      $factz = (2.0 * $xx / sqrt(Kw::PI));
      $factx = $factz;
      $nn = 3;
      for (;;) {
         $twonnpone = 2 * $nn + 1;
         $factx *= $xxsq * $xxsq / (($nn - 1.0) * $nn);
         $denom = 4.0 * $nn * $nn - 1.0;
         $term = $factx * ($twonnpone * ($nn - $xxsq) + $twoxxsq) / $denom;
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_prev, $sum_curr)) {
            last; # loop AWAIT
         }
         $nn += 2;
      }
      $sum_curr += (1.0 - $xxsq / 3.0) * $factz;
   } else {
      $factx = -exp(-$xxsq) / ($xx * sqrt(Kw::PI));
      $kk = Kw::round($xxsq);
      for ($nn = 1; $nn <= $kk - 5; $nn += 2) {
         $factx *= $nn * ($nn + 1.0) / ($twoxxsq * $twoxxsq);
         $term = $factx * (1.0 - (2.0 * $nn + 1.0) / $twoxxsq);
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_prev, $sum_curr)) {
            last;
         }
      }
      $sum_curr += 1.0 - exp(-$xxsq) / sqrt(Kw::PI) / $axx;
      if ($xx < 0.0) {
         $sum_curr = -$sum_curr;
      }
   }
   return ($sum_curr);
}
sub lgamma__1($ ) {
   my ($xx) = @_;
   my @aa_arr;
   my $sum;
   my $ii;
   my $tt;
   my $retvalu;
   my $qq;
   if ($xx <= 0.0 and Kw::isint($xx)) {
      $retvalu = log(Kw::DBLMAX);
   } else {
      if ($xx < 0.0) {
         $qq = 1.0 - $xx;
      } else {
         $qq = $xx;
      }
      $aa_arr[0] = +5.7156235665862923517E+1;
      $aa_arr[1] = -5.9597960355475491248E+1;
      $aa_arr[2] = +1.4136097974741747174E+1;
      $aa_arr[3] = -4.9191381609762019978E-1;
      $aa_arr[4] = +3.3994649984811888699E-5;
      $aa_arr[5] = +4.6523628927048575665E-5;
      $aa_arr[6] = -9.8374475304879564677E-5;
      $aa_arr[7] = +1.5808870322491248884E-4;
      $aa_arr[8] = -2.1026444172410488319E-4;
      $aa_arr[9] = +2.1743961811521264320E-4;
      $aa_arr[10] = -1.6431810653676389022E-4;
      $aa_arr[11] = +8.4418223983852743293E-5;
      $aa_arr[12] = -2.6190838401581408670E-5;
      $aa_arr[13] = +3.6899182659531622704E-6;
      $sum = 0.99999999999999709182;
      for ($ii = 0; $ii <= 13; $ii += 1) {
         $sum += $aa_arr[$ii] / ($qq + $ii);
      }
      $tt = $qq + 607.0 / 128.0 - 0.5;
      $qq = log(Kw::TAU) / 2.0 + ($qq - 0.5) * log($tt) + log($sum) - $tt;
      if ($xx < 0.0) {
         $retvalu = log(Kw::PI / abs(sin(2.0 * Kw::TAU * $xx))) - $qq;
      } else {
         $retvalu = $qq;
      }
   }
   return ($retvalu);
}
sub lgammainv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $yy_fixed;
   my $xx_init;
   $yy_fixed = $yy / Kw::PI + log($yy + 0.5);
   $xx_init = $yy_fixed + Kw::PI - 0.5;
   $scvx_dx = 0.01;
   $scvx_xx = $xx_init;
   $scvx_yy = $yy - lgamma($scvx_xx);
   for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
      $scvx_xp = $scvx_xx;
      $scvx_yp = $scvx_yy;
      $scvx_xx += $scvx_dx;
      if (Kw::iseq($scvx_xp, $scvx_xx)) {
         last;
      }
      $scvx_yy = $yy - lgamma($scvx_xx);
      if (Kw::iseq($scvx_yy, $scvx_yp)) {
         last;
      }
      $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
   }
   return ($scvx_xx);
}
{
sub lf_lgamma_gt_zero($ ) {
   my ($xx) = @_;
      my $retvalu;
      my $zz;
      my $pp;
      my $uu;
      my $denom;
      my $numer;
      if ($xx < 13.0) {
         $zz = 1.0;
         $pp = 0.0;
         $uu = $xx;
         while (3.0 <= $uu) {
            $pp -= 1.0;
            $uu = $xx + $pp;
            $zz *= $uu;
         }
         while ($uu < 2.0) {
            $zz /= $uu;
            $pp += 1.0;
            $uu = $xx + $pp;
         }
         if ($zz < 0.0) {
            $zz = -$zz;
         }
         if (Kw::iseq($uu, 2.0)) {
            $retvalu = log($zz);
         } else {
            $pp -= 2.0;
            $xx += $pp;
            $numer = ((((((-1.37825152569120859100E+3) * $xx -
                     3.88016315134637840924E+4) * $xx -
                     3.31612992738871184744E+5) * $xx -
                     1.16237097492762307383E+6) * $xx -
                     1.72173700820839662146E+6) * $xx -
                     8.53555664245765465627E+5);
            $denom = (((((((1.0) * $xx - 3.51815701436523470549E+2) * $xx
                     - 1.70642106651881159223E+4) * $xx -
                     2.20528590553854454839E+5) * $xx -
                     1.13933444367982507207E+6) * $xx -
                     2.53252307177582951285E+6) * $xx -
                     2.01889141433532773231E+6);
            $retvalu = log($zz) + $xx * $numer / $denom;
         }
      } else {
         $uu = ($xx - 0.5) * log($xx) - $xx + log(sqrt(Kw::TAU));
         if (1.0E+8 < $xx) {
            $retvalu = $uu;
         } else {
            $pp = 1.0 / ($xx * $xx);
            if (1000.0 < $xx) {
               $zz = (((7.9365079365079365079365E-4) * $pp -
                        2.7777777777777777777778E-3) * $pp +
                        8.3333333333333333333333E-2);
            } else {
               $zz = (((((8.11614167470508450300E-4) * $pp -
                        5.95061904284301438324E-4) * $pp +
                        7.93650340457716943945E-4) * $pp -
                        2.77777777300996872050E-3) * $pp +
                        8.33333333333331927722E-2);
            }
            $retvalu = $uu + $zz / $xx;
         }
      }
      return ($retvalu);
   }
   sub lgamma($ ) {
      my ($zz) = @_;
      my $retvalu;
      if ($zz <= 0.0) {
         if (Kw::isint($zz)) {
            $retvalu = log(Kw::DBLMAX);
         } else {
            $retvalu = (log(Kw::PI / abs(sin(2.0 * Kw::TAU * $zz))) -
                     lf_lgamma_gt_zero(1.0 - $zz));
         }
      } else {
         $retvalu = lf_lgamma_gt_zero($zz);
      }
      return ($retvalu);
   }
}
{
sub lf_eval_cont($$\@ ) {
   my ($xx, $deg, $coeff_arr_pc) = @_;
      my $sum;
      my $ii;
      $sum = $xx;
      for ($ii = $deg; 0 <= $ii; $ii -= 1) {
         $sum = $xx + $$coeff_arr_pc[$ii] / $sum;
      }
      return ($sum);
   }
   sub lgamma__2($ ) {
      my ($zz) = @_;
      my $retvalu;
      my @aa_arr;
      my $sum;
      if ($zz <= 0.0) {
         if (Kw::isint($zz)) {
            $retvalu = log(Kw::DBLMAX);
         } else {
            $retvalu = (log(Kw::PI / abs(sin(2.0 * Kw::TAU * $zz))) -
                     lgamma(1.0 - $zz));
         }
      } else {
         $aa_arr[0] = +1.0 / 12.0;
         $aa_arr[1] = +1.0 / 30.0;
         $aa_arr[2] = +53.0 / 210.0;
         $aa_arr[3] = +195.0 / 371.0;
         $aa_arr[4] = +229999.0 / 22737.0;
         $aa_arr[5] = +29944523.0 / 19733142.0;
         $aa_arr[6] = +109535241009.0 / 48264275462.0;
         $aa_arr[7] = +29404527905795295658.0 / 9769214287853155785.0;
         $aa_arr[8] = +455377030420113432210116914702.0 /
                  113084128923675014537885725485.0;
         $sum = 0.0;
         while ($zz <= 6.0) {
            $sum += log($zz);
            $zz += 1.0;
         }
         $sum -= lf_eval_cont($zz, 8, @aa_arr);
         $retvalu = (log(Kw::TAU) / 2.0 + ($zz - 0.5) * log($zz) - 2.0 *
                  $zz - $sum);
      }
      return ($retvalu);
   }
}
sub lpermx($$ ) {
   my ($nn, $rr) = @_;
   return (lgamma($nn + 1.0) - lgamma($nn - $rr + 1.0));
}
sub permx($$ ) {
   my ($nn, $rr) = @_;
   return (exp(lpermx($nn, $rr)));
}
sub lcombx($$ ) {
   my ($nn, $rr) = @_;
   return (lpermx($nn, $rr) - lgamma($rr + 1.0));
}
sub combx($$ ) {
   my ($nn, $rr) = @_;
   return (exp(lcombx($nn, $rr)));
}
sub birthdayx($$ ) {
   my ($nn, $rr) = @_;
   return (exp(lpermx($nn, $rr) - log($nn) * $rr));
}
sub tgamma__1($ ) {
   my ($xx) = @_;
   my $zz;
   my $rslt;
   my $denom;
   my $numer;
   if (Kw::isposint(1.0 - $xx)) {
      $rslt = Kw::DBLMAX;
   } else {
      $zz = 1.0;
      while (3.0 <= $xx) {
         $xx -= 1.0;
         $zz *= $xx;
      }
      while ($xx < 2.0) {
         if (abs($xx) < 1.0E-9) {
            last;
         }
         $zz /= $xx;
         $xx += 1.0;
      }
      if (Kw::iseq($xx, 0.0)) {
         $rslt = Kw::DBLMAX;
      } elsif ($xx < 2.0) {
         $rslt = $zz / ((1.0 + Kw::EULER * $xx) * $xx);
      } elsif (Kw::iseq($xx, 2.0)) {
         $rslt = $zz;
      } else {
         $xx -= 2.0;
         $numer = (((((((1.60119522476751861407E-4) * $xx +
                  1.19135147006586384913E-3) * $xx +
                  1.04213797561761569935E-2) * $xx +
                  4.76367800457137231464E-2) * $xx +
                  2.07448227648435975150E-1) * $xx +
                  4.94214826801497100753E-1) * $xx +
                  9.99999999999999996796E-1);
         $denom = ((((((((-2.31581873324120129819E-5) * $xx +
                  5.39605580493303397842E-4) * $xx -
                  4.45641913851797240494E-3) * $xx +
                  1.18139785222060435552E-2) * $xx +
                  3.58236398605498653373E-2) * $xx -
                  2.34591795718243348568E-1) * $xx +
                  7.14304917030273074085E-2) * $xx + 1.00000000000000000320);
         $rslt = $zz * $numer / $denom;
      }
   }
   return ($rslt);
}
sub tgamma($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $tmp;
   if ($xx < 0.0) {
      if (Kw::isint($xx)) {
         $retvalu = Kw::DBLMAX;
      } else {
         $tmp = exp(lgamma(1.0 - $xx));
         $retvalu = Kw::PI / (sin(Kw::PI * $xx) * $tmp);
      }
   } else {
      $retvalu = exp(lgamma($xx));
   }
   return ($retvalu);
}
sub tgammainv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $kk;
   my $cc;
   my $pp;
   my $xx_init;
   $kk = Kw::GAMMAMIN;
   $cc = sqrt(Kw::TAU) / Kw::E - tgamma($kk);
   $pp = log(($yy + $cc) / sqrt(Kw::TAU));
   $xx_init = $pp / wp($pp / Kw::E) + 0.5;
   $scvx_dx = 0.01;
   $scvx_xx = $xx_init;
   $scvx_yy = $yy - tgamma($scvx_xx);
   for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
      $scvx_xp = $scvx_xx;
      $scvx_yp = $scvx_yy;
      $scvx_xx += $scvx_dx;
      if (Kw::iseq($scvx_xp, $scvx_xx)) {
         last;
      }
      $scvx_yy = $yy - tgamma($scvx_xx);
      if (Kw::iseq($scvx_yy, $scvx_yp)) {
         last;
      }
      $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
   }
   return ($scvx_xx);
}
{
sub lf_gamma_shift($$ ) {
   my ($xx, $yy) = @_;
      my $prod;
      if (Kw::isposint(1.0 - $yy)) {
         $prod = Kw::DBLMAX;
      } else {
         $prod = 1.0;
         while ($yy < $xx - 0.0001) {
            $prod *= $yy;
            $yy += 1.0;
         }
         while ($xx + 0.0001 < $yy) {
            $yy -= 1.0;
            $prod /= $yy;
         }
      }
      return ($prod);
   }
   sub lf_tgamma_gt_half($ ) {
      my ($xx) = @_;
      my $ii;
      my $sum;
      my $yy;
      my @pp_arr;
      my $ex;
      $yy = $xx - floor($xx) + 1.0;
      $pp_arr[0] = +5.716400188274341379136E+3;
      $pp_arr[1] = -1.481530426768413909044E+4;
      $pp_arr[2] = +1.429149277657478554025E+4;
      $pp_arr[3] = -6.348160217641458813289E+3;
      $pp_arr[4] = +1.301608286058321874105E+3;
      $pp_arr[5] = -1.081767053514369634679E+2;
      $pp_arr[6] = +2.605696505611755827729;
      $pp_arr[7] = -7.423452510201416151527E-3;
      $pp_arr[8] = +5.384136432509564062961E-8;
      $pp_arr[9] = -4.023533141268236372067E-9;
      $sum = 1.000000000000000174663;
      for ($ii = 0; $ii <= 9; $ii += 1) {
         $sum += $pp_arr[$ii] / ($yy + $ii);
      }
      $ex = log($yy + 8.5) * ($yy - 0.5) - $yy - 8.5;
      return (sqrt(Kw::TAU) * $sum * lf_gamma_shift($xx, $yy) * exp($ex));
   }
   sub tgamma__2($ ) {
      my ($xx) = @_;
      my $ii;
      my $sum;
      my @pp_arr;
      my $yy;
      my $rslt;
      my $ex;
      if (Kw::isposint(1.0 - $xx)) {
         $rslt = Kw::DBLMAX;
      } else {
         $yy = $xx - floor($xx) + 2.0;
         $pp_arr[0] = +7.61800917294715E+1;
         $pp_arr[1] = -8.65053203294168E+1;
         $pp_arr[2] = +2.40140982408309E+1;
         $pp_arr[3] = -1.23173957245015;
         $pp_arr[4] = +1.20865097386618E-3;
         $pp_arr[5] = -5.395239384953E-6;
         $sum = 1.00000000019001;
         for ($ii = 0; $ii <= 5; $ii += 1) {
            $sum += $pp_arr[$ii] / ($yy + $ii);
         }
         $ex = log($yy + 4.5) * ($yy - 0.5) - $yy - 4.5;
         $rslt = sqrt(Kw::TAU) * $sum * lf_gamma_shift($xx, $yy) * exp($ex);
      }
      return ($rslt);
   }
   sub tgamma__3($ ) {
      my ($xx) = @_;
      my $retvalu;
      if (Kw::isposint(1.0 - $xx)) {
         $retvalu = Kw::DBLMAX;
      } elsif ($xx < 0.5) {
         $retvalu = Kw::PI / (sin(Kw::PI * $xx) * lf_tgamma_gt_half(1.0 -
                  $xx));
      } else {
         $retvalu = lf_tgamma_gt_half($xx);
      }
      return ($retvalu);
   }
}
sub tgamma__stirling($ ) {
   my ($xx) = @_;
   my $yy;
   my $ryy;
   my $sc;
   my $ply;
   $sc = 1.0;
   while ($xx < 10.0) {
      $sc /= $xx;
      $xx += 1.0;
   }
   $yy = $xx - 1.0;
   $ryy = 1.0 / $yy;
   $ply = (((((((-5246819.0 / 75246796800.0) * $ryy + 163879.0 /
            209018880.0) * $ryy - 571.0 / 2488320.0) * $ryy - 139.0 /
            51840) * $ryy + 1.0 / 288.0) * $ryy + 1.0 / 12.0) * $ryy + 1.0);
   return ($sc * Kw::pow($yy / Kw::E, $yy) * sqrt(Kw::TAU * $yy) * $ply);
}
sub tgammadouble($ ) {
   my ($xx) = @_;
   my $xxh;
   $xxh = ($xx - 1.0) / 2.0;
   return (Kw::pow(2.0, $xxh) * tgamma($xxh + 1.0) * Kw::pow(2.0 / Kw::PI
            , (1.0 - cos(Kw::TAU * $xxh)) / 4.0));
}
{
sub lf_ligamma_xxleaa($$ ) {
   my ($aa, $xx) = @_;
      my $kk;
      my $rr;
      my $sum_curr;
      my $sum_prev;
      $sum_curr = exp($aa * log($xx) - $xx) / $aa;
      $rr = $sum_curr;
      for ($kk = 1; $kk <= 100; $kk += 1) {
         $rr *= $xx / ($aa + $kk);
         $sum_prev = $sum_curr;
         $sum_curr += $rr;
         if (Kw::iseq($sum_prev, $sum_curr)) {
            last;
         }
      }
      return ($sum_curr);
   }
   sub lf_uigamma_aalexx($$ ) {
      my ($aa, $xx) = @_;
      my $jj;
      my $pp;
      my $ipp;
      my $sum_curr;
      my $tt;
      $sum_curr = 0.0;
      $pp = 47.0 / sqrt($xx - 0.75);
      $ipp = floor($pp);
      for ($jj = $ipp; 1 <= $jj; $jj -= 1) {
         $tt = $xx + $sum_curr;
         $sum_curr = ($jj - $aa) * $tt / ($tt + $jj);
      }
      return (exp($aa * log($xx) - $xx) / ($xx + $sum_curr));
   }
   sub ligamma($$ ) {
      my ($aa, $xx) = @_;
      my $retvalu;
      if ($xx <= 0.0) {
         $retvalu = 0.0;
      } elsif ($aa <= 0.0) {
         $retvalu = Kw::DBLMAX;
      } elsif ($xx <= 1.1 or $xx <= $aa) {
         $retvalu = lf_ligamma_xxleaa($aa, $xx);
      } else {
         $retvalu = tgamma($aa) - lf_uigamma_aalexx($aa, $xx);
      }
      return ($retvalu);
   }
   sub uigamma($$ ) {
      my ($aa, $xx) = @_;
      my $retvalu;
      if ($aa <= 0.0) {
         $retvalu = Kw::DBLMAX;
      } elsif ($xx <= 0.0) {
         $retvalu = tgamma($aa);
      } elsif ($xx <= 1.1 or $xx <= $aa) {
         $retvalu = tgamma($aa) - lf_ligamma_xxleaa($aa, $xx);
      } else {
         $retvalu = lf_uigamma_aalexx($aa, $xx);
      }
      return ($retvalu);
   }
}
sub rligamma($$ ) {
   my ($aa, $xx) = @_;
   my $retvalu;
   if ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif ($aa <= 0.0) {
      $retvalu = Kw::DBLMAX;
   } else {
      $retvalu = ligamma($aa, $xx) / tgamma($aa);
   }
   return ($retvalu);
}
sub ruigamma($$ ) {
   my ($aa, $xx) = @_;
   my $retvalu;
   if ($aa <= 0.0) {
      $retvalu = Kw::DBLMAX;
   } elsif ($xx <= 0.0) {
      $retvalu = 1.0;
   } else {
      $retvalu = uigamma($aa, $xx) / tgamma($aa);
   }
   return ($retvalu);
}
sub uigamma__1($$ ) {
   my ($aa, $xx) = @_;
   my $ans;
   my $ax;
   my $cc;
   my $yc;
   my $rr;
   my $tt;
   my $yy;
   my $zz;
   my $pk;
   my $pkma;
   my $pkmb;
   my $qk;
   my $qkma;
   my $qkmb;
   my $retvalu;
   if ($xx <= 0.0 or $aa <= 0.0) {
      $retvalu = 1.0;
   } else {
      $ax = $aa * log($xx) - $xx - lgamma($aa);
      if ($ax < - Kw::DBLMAXLN) {
         $retvalu = 0.0;
      } else {
         $ax = exp($ax);
         if ($xx < 1.0 or $xx < $aa) {
            $rr = $aa;
            $cc = 1.0;
            $ans = 1.0;
            for (;;) {
               $rr += 1.0;
               $cc *= $xx / $rr;
               $ans += $cc;
               if ($cc / $ans < Kw::DBLEPS) {
                  last; # loop AWAIT
               }
            }
            $retvalu = 1.0 - $ans * $ax / $aa;
         } else {
            $yy = 1.0 - $aa;
            $zz = $xx + $yy + 1.0;
            $cc = 0.0;
            $pkmb = 1.0;
            $qkmb = $xx;
            $pkma = $xx + 1.0;
            $qkma = $zz * $xx;
            $ans = $pkma / $qkma;
            for (;;) {
               $cc += 1.0;
               $yy += 1.0;
               $zz += 2.0;
               $yc = $yy * $cc;
               $pk = $pkma * $zz - $pkmb * $yc;
               $qk = $qkma * $zz - $qkmb * $yc;
               if (not Kw::iszero($qk)) {
                  $rr = $pk / $qk;
                  $tt = abs(($ans - $rr) / $rr);
                  $ans = $rr;
               } else {
                  $tt = 1.0;
               }
               $pkmb = $pkma;
               $pkma = $pk;
               $qkmb = $qkma;
               $qkma = $qk;
               if (1.0 / Kw::DBLEPS < abs($pk)) {
                  $pkmb *= Kw::DBLEPS;
                  $pkma *= Kw::DBLEPS;
                  $qkmb *= Kw::DBLEPS;
                  $qkma *= Kw::DBLEPS;
               }
               if ($tt <= Kw::DBLEPS) {
                  last; # loop AWAIT
               }
            }
            $retvalu = $ans * $ax;
         }
      }
   }
   return ($retvalu);
}
sub uigammainv($$ ) {
   my ($aa, $yy) = @_;
   my $dd;
   my $tt;
   my $xx;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   $dd = 1.0 / (9.0 * $aa);
   $tt = 1.0 - $dd - gau_quantile($yy) * sqrt($dd);
   $xx = $aa * Kw::pow($tt, 3);
   $scvx_dx = 0.1;
   $scvx_xx = $xx;
   $scvx_yy = $yy - uigamma($aa, $scvx_xx);
   for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
      $scvx_xp = $scvx_xx;
      $scvx_yp = $scvx_yy;
      $scvx_xx += $scvx_dx;
      if (Kw::iseq($scvx_xp, $scvx_xx)) {
         last;
      }
      $scvx_yy = $yy - uigamma($aa, $scvx_xx);
      if (Kw::iseq($scvx_yy, $scvx_yp)) {
         last;
      }
      $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
   }
   return ($scvx_xx);
}
sub ligammainv($$ ) {
   my ($aa, $yy) = @_;
   return (uigammainv($aa, 1.0 - $yy));
}
sub lbeta($$ ) {
   my ($aa, $bb) = @_;
   return (lgamma($aa) + lgamma($bb) - lgamma($aa + $bb));
}
sub beta($$ ) {
   my ($aa, $bb) = @_;
   my $retvalu;
   my $lbe;
   $lbe = lbeta($aa, $bb);
   if (Kw::DBLMAXLN < $lbe) {
      $retvalu = Kw::DBLMAX;
   } elsif (- Kw::DBLMAXLN < $lbe) {
      $retvalu = exp($lbe);
   } else {
      $retvalu = -Kw::DBLMAX;
   }
   return ($retvalu);
}
sub betainc($$$ ) {
   my ($aa, $bb, $xx) = @_;
   my $sum_curr;
   my $sum_prev;
   my $compx;
   my $new_xx;
   my $pp;
   my $qq;
   my $term;
   my $ai;
   my $rx;
   my $temp;
   my $log_beta;
   my $retvalu;
   my $indx;
   my $ns;
   my $psq;
   if ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif ($aa <= 0.0 or $bb <= 0.0 or 1.0 <= $xx) {
      $retvalu = 1.0;
   } else {
      $psq = $aa + $bb;
      if ($aa < $psq * $xx) {
         $new_xx = 1.0 - $xx;
         $compx = $xx;
         $pp = $bb;
         $qq = $aa;
         $indx = 0;
      } else {
         $new_xx = $xx;
         $compx = 1.0 - $xx;
         $pp = $aa;
         $qq = $bb;
         $indx = 1;
      }
      $term = 1.0;
      $sum_curr = 1.0;
      $ai = 1.0;
      $ns = floor($qq + $compx * $psq);
      $rx = $new_xx / $compx;
      $temp = $qq - $ai;
      if ($ns == 0) {
         $rx = $new_xx;
      }
      for (;;) {
         $term *= $temp * $rx / ($pp + $ai);
         $ai += 1.0;
         $ns -= 1;
         if (0 <= $ns) {
            $temp = $qq - $ai;
            if ($ns == 0) {
               $rx = $new_xx;
            }
         } else {
            $temp = $psq;
            $psq += 1.0;
         }
         $sum_prev = $sum_curr;
         $sum_curr += $term;
         if (Kw::iseq($sum_curr, $sum_prev)) {
            last; # loop AWAIT
         }
      }
      $log_beta = lgamma($aa) + lgamma($bb) - lgamma($aa + $bb);
      $retvalu = $sum_curr * exp($pp * log($new_xx) + ($qq - 1.0) *
               log($compx) - $log_beta) / $pp;
      if ($indx == 0) {
         $retvalu = 1.0 - $retvalu;
      }
   }
   return ($retvalu);
}
sub betainc__1($$$ ) {
   my ($aa, $bb, $xx) = @_;
   my $retvalu;
   my $lbeta_ab;
   my $front;
   my $ff;
   my $cc;
   my $dd;
   my $ii;
   my $jj;
   my $kk;
   my $numerator;
   my $den;
   my $cd;
   if ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif ($aa <= 0.0 or $bb <= 0.0 or 1.0 <= $xx) {
      $retvalu = 1.0;
   } elsif (($aa + 1.0) / ($aa + $bb + 2.0) < $xx) {
      $retvalu = 1.0 - betainc__1($bb, $aa, 1.0 - $xx);
   } elsif ($aa <= 0) {
      $retvalu = 0.0;
   } else {
      $lbeta_ab = lbeta($aa, $bb);
      $front = exp(log($xx) * $aa + log(1.0 - $xx) * $bb - $lbeta_ab) / $aa;
      $ff = 1.0;
      $cc = 1.0;
      $dd = 0.0;
      $jj = 0;
      $ii = 0;
      for (;;) {
         if ($ii == 0) {
            $numerator = 1.0;
         } elsif ($jj == 0) {
            $kk = $ii / 2;
            $den = ($aa + 2.0 * $kk - 1.0) * ($aa + 2.0 * $kk);
            $numerator = ($kk * ($bb - $kk) * $xx) / $den;
         } else {
            $kk = ($ii - 1) / 2;
            $den = ($aa + 2.0 * $kk) * ($aa + 2.0 * $kk + 1.0);
            $numerator = -(($aa + $kk) * ($aa + $bb + $kk) * $xx) / $den;
         }
         $dd = 1.0 + $numerator * $dd;
         if (abs($dd) < Kw::DBLEPS * Kw::DBLEPS) {
            $dd = Kw::DBLEPS * Kw::DBLEPS;
         }
         $dd = 1.0 / $dd;
         $cc = 1.0 + $numerator / $cc;
         if (abs($cc) < Kw::DBLEPS * Kw::DBLEPS) {
            $cc = Kw::DBLEPS * Kw::DBLEPS;
         }
         $cd = $cc * $dd;
         $ff *= $cd;
         $jj = 1 - $ii;
         if (abs(1.0 - $cd) < Kw::DBLEPS) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (200 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $front * ($ff - 1.0);
   }
   return ($retvalu);
}
{
sub lf_digamma_gt_zero($ ) {
   my ($xx) = @_;
      my $rec_xx_sqr;
      my $shift;
      my $sxx;
      my $ii;
      my $sumy;
      $shift = 0.0;
      $sxx = $xx;
      while ($sxx < 8.0) {
         $shift -= 1.0 / $sxx;
         $sxx += 1.0;
      }
      $rec_xx_sqr = 1.0 / ($sxx * $sxx);
      $sumy = 0.0;
      for ($ii = 14; 2 <= $ii; $ii -= 2) {
         $sumy *= $rec_xx_sqr;
         $sumy += - bernoulli($ii) / $ii;
      }
      return (($shift + log($sxx) - 1.0 / (2.0 * $sxx) + $rec_xx_sqr *
               $sumy));
   }
   sub digamma($ ) {
      my ($xx) = @_;
      my $sxx;
      my $retvalu;
      if ($xx <= 0.0) {
         if (Kw::isint($xx)) {
            $retvalu = Kw::DBLMAX;
         } else {
            $sxx = 2.0 * $xx;
            $retvalu = lf_digamma_gt_zero(1.0 - $xx) - Kw::PI /
                     Kw::tan($sxx);
         }
      } else {
         $retvalu = lf_digamma_gt_zero($xx);
      }
      return ($retvalu);
   }
}
sub digammainv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   $scvx_dx = 0.1;
   $scvx_xx = exp($yy);
   $scvx_yy = $yy - digamma($scvx_xx);
   for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
      $scvx_xp = $scvx_xx;
      $scvx_yp = $scvx_yy;
      $scvx_xx += $scvx_dx;
      if (Kw::iseq($scvx_xp, $scvx_xx)) {
         last;
      }
      $scvx_yy = $yy - digamma($scvx_xx);
      if (Kw::iseq($scvx_yy, $scvx_yp)) {
         last;
      }
      $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
   }
   return ($scvx_xx);
}
{
sub lf_digamma_gt_zero__1($ ) {
   my ($xx) = @_;
      my $gg;
      my @aa_arr;
      my $sxx;
      my $term;
      my $lnarg;
      my $numer;
      my $denom;
      my $ii;
      $gg = 9.6565781537733158945718737389;
      $aa_arr[0] = +1.144005294538510956673085217E+4;
      $aa_arr[1] = -3.239880201523183350535979104E+4;
      $aa_arr[2] = +3.505145235055716665660834611E+4;
      $aa_arr[3] = -1.816413095412607026106469185E+4;
      $aa_arr[4] = +4.632329905366668184091382704E+3;
      $aa_arr[5] = -5.369767777033567805557478696E+2;
      $aa_arr[6] = +2.287544733951810076451548089E+1;
      $aa_arr[7] = -2.179257487388651155600822204E-1;
      $aa_arr[8] = +1.083148362725893688606893534E-4;
      $numer = 0.0;
      $denom = 1.0;
      for ($ii = 8; 0 <= $ii; $ii -= 1) {
         $sxx = $xx + $ii;
         $term = $aa_arr[$ii] / $sxx;
         $denom += $term;
         $numer += $term / $sxx;
      }
      $lnarg = ($gg + $xx - 0.5);
      return (log($lnarg) - ($gg / $lnarg) - $numer / $denom);
   }
   sub digamma__1($ ) {
      my ($xx) = @_;
      my $sxx;
      my $retvalu;
      if ($xx <= 0.0) {
         if (Kw::isint($xx)) {
            $retvalu = Kw::DBLMAX;
         } else {
            $sxx = 2.0 * $xx;
            $retvalu = lf_digamma_gt_zero__1(1.0 - $xx) - Kw::PI /
                     Kw::tan($sxx);
         }
      } else {
         $retvalu = lf_digamma_gt_zero__1($xx);
      }
      return ($retvalu);
   }
}
sub factorialinv($ ) {
   my ($yy) = @_;
   return (tgammainv($yy) - 1.0);
}
sub facinv($ ) {
   my ($yy) = @_;
   return (tgammainv($yy) - 1.0);
}
sub hn($ ) {
   my ($xx) = @_;
   my $sum;
   my $kk;
   my $fxx;
   if (0.0 < $xx) {
      $fxx = floor($xx);
      $sum = 0.0;
      for ($kk = $fxx; 1 <= $kk; $kk -= 1) {
         $sum += 1.0 / $kk;
      }
   } else {
      $sum = 0.0;
   }
   return ($sum);
}
sub hn__1($ ) {
   my ($xx) = @_;
   my $yy;
   my $retvalu;
   if (0.0 < $xx) {
      $yy = 1.0 / ($xx * $xx);
      $retvalu = ((((((-5.0 / (66.0 * 10.0)) * $yy + 1.0 / (30.0 * 8.0))
               * $yy - 1.0 / (42.0 * 6.0)) * $yy + 1.0 / (30.0 * 4.0)) *
               $yy - 1.0 / (6.0 * 2.0)) * $yy + Kw::EULER) + log($xx) +
               0.5 / $xx;
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
sub hnm($$ ) {
   my ($xx, $vv) = @_;
   my $sum;
   my $kk;
   my $fxx;
   $fxx = floor($xx);
   $sum = 0.0;
   for ($kk = $fxx; 1 <= $kk; $kk -= 1) {
      $sum += 1.0 / Kw::pow($kk, $vv);
   }
   return ($sum);
}
{
my @lv_factorial_arr;
   my $lv_factorial_end = 0;
   sub factorial($ ) {
      my ($nn) = @_;
      # local-use Perl $lv_factorial_end;
      # local-use Perl @lv_factorial_arr;
      my $ii;
      my $retvalu;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_factorial_end <= 0) {
            $lv_factorial_end = 6;
            $lv_factorial_arr[0] = 1;
            $lv_factorial_arr[1] = 1;
            $lv_factorial_arr[2] = 2;
            $lv_factorial_arr[3] = 6;
            $lv_factorial_arr[4] = 24;
            $lv_factorial_arr[5] = 120;
         }
         if ($lv_factorial_end <= $nn) {
            $ii = $lv_factorial_end;
            $lv_factorial_end = $nn + 1;
            while ($ii < $lv_factorial_end) {
               $lv_factorial_arr[$ii] = ($ii * $lv_factorial_arr[$ii - 1]);
               $ii += 1;
            }
         }
         $retvalu = $lv_factorial_arr[$nn];
      }
      return ($retvalu);
   }
}
{
my @lv_factorial_b_arr;
   my $lv_factorial_b_end = 0;
   sub factorialdouble($ ) {
      my ($nn) = @_;
      # local-use Perl $lv_factorial_b_end;
      # local-use Perl @lv_factorial_b_arr;
      my $retvalu;
      my $ii;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_factorial_b_end <= 0) {
            $lv_factorial_b_end = 6;
            $lv_factorial_b_arr[0] = 1;
            $lv_factorial_b_arr[1] = 1;
            $lv_factorial_b_arr[2] = 2;
            $lv_factorial_b_arr[3] = 3;
            $lv_factorial_b_arr[4] = 8;
            $lv_factorial_b_arr[5] = 15;
         }
         if ($lv_factorial_b_end <= $nn) {
            $ii = $lv_factorial_b_end;
            $lv_factorial_b_end = $nn + 1;
            while ($ii < $lv_factorial_b_end) {
               $lv_factorial_b_arr[$ii] = $ii * $lv_factorial_b_arr[$ii - 2];
               $ii += 1;
            }
         }
         $retvalu = $lv_factorial_b_arr[$nn];
      }
      return ($retvalu);
   }
}
sub fac($ ) {
   my ($nn) = @_;
   return (Kw::factorial($nn));
}
sub factorialt($$ ) {
   my ($n_things, $r_each) = @_;
   my $ii;
   my $retvalu;
   $retvalu = 1.0;
   for ($ii = $r_each + 1; $ii <= $n_things; $ii += 1) {
      $retvalu *= $ii;
   }
   return ($retvalu);
}
sub comb($$ ) {
   my ($n_things, $r_each) = @_;
   my $ii;
   my $retvalu;
   if ($r_each < 0 or $n_things < $r_each) {
      $retvalu = 0.0;
   } else {
      if (2 * $r_each < $n_things) {
         $r_each = $n_things - $r_each;
      }
      $retvalu = 1.0;
      for ($ii = $r_each + 1; $ii <= $n_things; $ii += 1) {
         $retvalu *= $ii;
         $retvalu /= ($ii - $r_each);
      }
   }
   return ($retvalu);
}
sub perm($$ ) {
   my ($n_things, $r_each) = @_;
   return (factorialt($n_things, $n_things - $r_each));
}
sub combination($$ ) {
   my ($n_things, $r_each) = @_;
   return (Kw::comb($n_things, $r_each));
}
sub permutation($$ ) {
   my ($n_things, $r_each) = @_;
   return (Kw::perm($n_things, $r_each));
}
{
my @lv_catalan_arr;
   my $lv_catalan_end = 0;
   sub catalan($ ) {
      my ($nn) = @_;
      # local-use Perl $lv_catalan_end;
      # local-use Perl @lv_catalan_arr;
      my $kk;
      my $retvalu;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_catalan_end <= 0) {
            $lv_catalan_end = 1;
            $lv_catalan_arr[0] = 1;
         }
         if ($lv_catalan_end <= $nn) {
            $kk = $lv_catalan_end;
            $lv_catalan_end = $nn + 1;
            while ($kk < $lv_catalan_end) {
               $lv_catalan_arr[$kk] = (2.0 * (2.0 * $kk - 1.0) *
                        $lv_catalan_arr[$kk - 1] / ($kk + 1.0));
               $kk += 1;
            }
         }
         $retvalu = $lv_catalan_arr[$nn];
      }
      return ($retvalu);
   }
}
{
my @lv_supercatalan_arr;
   my $lv_supercatalan_end = 0;
   sub supercatalan($ ) {
      my ($nn) = @_;
      # local-use Perl $lv_supercatalan_end;
      # local-use Perl @lv_supercatalan_arr;
      my $kk;
      my $retvalu;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_supercatalan_end <= 0) {
            $lv_supercatalan_end = 3;
            $lv_supercatalan_arr[0] = 1;
            $lv_supercatalan_arr[1] = 1;
            $lv_supercatalan_arr[2] = 1;
         }
         if ($lv_supercatalan_end <= $nn) {
            $kk = $lv_supercatalan_end;
            $lv_supercatalan_end = $nn + 1;
            while ($kk < $lv_supercatalan_end) {
               $lv_supercatalan_arr[$kk] = (((6 * $kk - 9) *
                        $lv_supercatalan_arr[$kk - 1] - ($kk - 3) *
                        $lv_supercatalan_arr[$kk - 2]) / $kk);
               $kk += 1;
            }
         }
         $retvalu = $lv_supercatalan_arr[$nn];
      }
      return ($retvalu);
   }
}
{
my @lv_bell_arr;
   my @lv_bell_x_arr;
   my $lv_bell_end = 0;
   sub bell($ ) {
      my ($nn) = @_;
      # local-use Perl $lv_bell_end;
      # local-use Perl @lv_bell_arr;
      # local-use Perl @lv_bell_x_arr;
      my $jj;
      my $kk;
      my $retvalu;
      if ($nn < 0) {
         $retvalu = 0;
      } else {
         if ($lv_bell_end <= 0) {
            $lv_bell_end = 3;
            $lv_bell_arr[0] = 1;
            $lv_bell_arr[1] = 1;
            $lv_bell_arr[2] = 2;
            $lv_bell_x_arr[0] = 2;
            $lv_bell_x_arr[1] = 1;
         }
         if ($lv_bell_end <= $nn) {
            $kk = $lv_bell_end;
            $lv_bell_end = $nn + 1;
            while ($kk < $lv_bell_end) {
               $lv_bell_x_arr[$kk - 1] = $lv_bell_x_arr[0];
               for ($jj = $kk - 2; 0 <= $jj; $jj -= 1) {
                  $lv_bell_x_arr[$jj] += $lv_bell_x_arr[$jj + 1];
               }
               $lv_bell_arr[$kk] = $lv_bell_x_arr[0];
               $kk += 1;
            }
         }
         $retvalu = $lv_bell_arr[$nn];
      }
      return ($retvalu);
   }
}
sub bellx($ ) {
   my ($xxn) = @_;
   my $sum;
   my $kk;
   my $sum_prev;
   my $den;
   $kk = 0;
   $sum = 0.0;
   $den = 1.0;
   for (;;) {
      $kk += 1;
      $den *= $kk;
      $sum_prev = $sum;
      $sum += Kw::pow($kk, $xxn) / $den;
      if (Kw::iseq($sum_prev, $sum)) {
         last; # loop AWAIT
      }
   }
   return ($sum / Kw::E);
}
sub fubini($ ) {
   my ($nn) = @_;
   my $ii;
   my $sum;
   my $retvalu;
   if ($nn < 0) {
      $retvalu = 0;
   } elsif ($nn == 0) {
      $retvalu = 1;
   } else {
      $sum = 1.0 / (2.0 * Kw::TWOLN * Kw::TWOLN);
      for ($ii = 2; $ii <= $nn; $ii += 1) {
         $sum *= $ii / Kw::TWOLN;
      }
      $retvalu = Kw::round($sum);
   }
   return ($retvalu);
}
sub d2lt_d1($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if (0 <= $yy and $yy <= $xx) {
      $retvalu = $yy + ($xx * ($xx + 1)) / 2;
   } else {
      $retvalu = -1;
   }
   return ($retvalu);
}
sub d1lt_d2($\@ ) {
   my ($nn, $ret_arr_p) = @_;
   my $basee;
   if ($nn <= 0) {
      $$ret_arr_p[0] = 0;
      $$ret_arr_p[1] = 0;
   } else {
      $basee = floorl((sqrt(1 + 8.0 * $nn) - 1) / 2);
      $$ret_arr_p[1] = $nn - $basee * ($basee + 1) / 2;
      $$ret_arr_p[0] = $basee;
   }
   return ($$ret_arr_p[0]);
}
sub d2ur_d1($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   my $suma;
   if (0 <= $xx and 0 <= $yy) {
      $suma = ($yy + $xx);
      $retvalu = $suma * ($suma + 1) / 2 + $yy;
   } else {
      $retvalu = -1;
   }
   return ($retvalu);
}
sub d1ur_d2($\@ ) {
   my ($nn, $ret_arr_p) = @_;
   my $basee;
   my $y_coord;
   if ($nn <= 0) {
      $$ret_arr_p[0] = 0;
      $$ret_arr_p[1] = 0;
   } else {
      $basee = floorl((sqrt(1 + 8.0 * $nn) - 1) / 2);
      $y_coord = $nn - $basee * ($basee + 1) / 2;
      $$ret_arr_p[1] = $y_coord;
      $$ret_arr_p[0] = $basee - $y_coord;
   }
   return ($$ret_arr_p[0]);
}
sub d2diamond_d1($$ ) {
   my ($xx, $yy) = @_;
   my $ss;
   my $tt;
   my $retvalu;
   if (0 == $yy and $xx == 0) {
      $retvalu = 0;
   } else {
      $ss = abs($xx) + abs($yy);
      $tt = 2 * $ss * ($ss - 1) + 1;
      if (0 < $xx) {
         $retvalu = $tt + $ss + $yy - 1;
      } else {
         $retvalu = $tt + 3 * $ss - $yy - 1;
      }
   }
   return ($retvalu);
}
sub d1diamond_d2($\@ ) {
   my ($nn, $ret_arr_p) = @_;
   my $ss;
   my $ssq;
   my $x_coord;
   if ($nn <= 0) {
      $x_coord = 0;
      $$ret_arr_p[1] = 0;
   } else {
      $ss = floorl(sqrt($nn) / Kw::TWOSQRT);
      $ssq = 2 * $ss * $ss;
      if ($nn <= $ssq + 2 * $ss) {
         $$ret_arr_p[1] = $ssq - $nn + $ss;
         $x_coord = $ssq - $nn;
         if ($ss < - $x_coord) {
            $x_coord = -$x_coord - 2 * $ss;
         }
      } else {
         $$ret_arr_p[1] = $nn - $ssq - 3 * $ss - 1;
         $x_coord = $nn - $ssq - 2 * $ss;
         if ($ss < $x_coord) {
            $x_coord = -$x_coord + 2 * $ss + 2;
         }
      }
   }
   $$ret_arr_p[0] = $x_coord;
   return ($x_coord);
}
sub d2spiral_d1($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   if ($xx == 0 and $yy == 0) {
      $retvalu = 0;
   } elsif (abs($xx) <= abs($yy)) {
      $retvalu = (4 * $yy - 1) * $yy - $xx;
      if ($yy < 0) {
         $retvalu -= 2 * ($yy - $xx);
      }
   } else {
      $retvalu = (4 * $xx - 1) * $xx - $yy;
      if (0 < $xx) {
         $retvalu -= 2 * ($xx - $yy);
      }
   }
   return ($retvalu);
}
sub d1spiral_d2($\@ ) {
   my ($nn, $ret_arr_p) = @_;
   my $sqrtnn;
   my $newdd;
   my $fxd;
   if ($nn <= 0) {
      $$ret_arr_p[0] = 0;
      $$ret_arr_p[1] = 0;
   } else {
      $sqrtnn = floorl(sqrt($nn));
      if (Kw::iseven($sqrtnn)) {
         $fxd = -$sqrtnn / 2;
      } else {
         $fxd = ($sqrtnn + 1) / 2;
      }
      $newdd = $nn - $sqrtnn * $sqrtnn;
      if ($newdd <= $sqrtnn) {
         $$ret_arr_p[0] = $fxd;
         if ($fxd < 0) {
            $$ret_arr_p[1] = -$fxd - $newdd;
         } else {
            $$ret_arr_p[1] = -$fxd + $newdd + 1;
         }
      } else {
         $$ret_arr_p[1] = $fxd;
         $newdd -= $sqrtnn;
         if ($fxd < 0) {
            $$ret_arr_p[0] = $fxd + $newdd;
         } else {
            $$ret_arr_p[0] = $fxd - $newdd;
         }
      }
   }
   return ($$ret_arr_p[0]);
}
sub d2hypot_d1($$ ) {
   my ($xx, $yy) = @_;
   my $retvalu;
   my $xlim;
   my $dist;
   my $distsq;
   my $count;
   my $ixx;
   my $nyy;
   my $nyysq;
   my $xmax;
   if (0 <= $yy and $yy <= $xx) {
      $distsq = $xx * $xx + $yy * $yy;
      $dist = sqrt($distsq);
      $xlim = floorl($dist / Kw::TWOSQRT);
      $xmax = floorl($dist);
      $count = 0;
      for ($ixx = $xlim; $ixx <= $xmax; $ixx += 1) {
         $nyysq = $distsq - $ixx * $ixx;
         $nyy = ceill(sqrt($nyysq));
         if ($ixx < $nyy) {
            $count += $ixx + 1;
         } else {
            $count += $nyy;
            if ($ixx < $xx and $nyy * $nyy == $nyysq) {
               $count += 1;
            }
         }
      }
      $retvalu = $count + ($xlim) * ($xlim + 1) / 2;
   } else {
      $retvalu = -1;
   }
   return ($retvalu);
}
sub binomialx($$ ) {
   my ($xnn, $xkk) = @_;
   return (Kw::tgamma($xnn + 1) / (Kw::tgamma($xkk + 1) * Kw::tgamma($xnn
            + 1 - $xkk)));
}
{
my @lv_binom_arr;
   my $lv_binom_end = 0;
   my $lv_binom_max = 0;
   sub binomial($$ ) {
      my ($nn, $kk) = @_;
      # local-use Perl @lv_binom_arr;
      # local-use Perl $lv_binom_end;
      # local-use Perl $lv_binom_max;
      my $rz_ind;
      my $lz_ind;
      my $rr;
      my $ul_ind;
      my $retvalu;
      if ($nn < $kk or $nn < 0 or $kk < 0) {
         $retvalu = 0;
      } else {
         if ($lv_binom_end <= 0) {
            $lv_binom_max = 2;
            $lv_binom_end = d2lt_d1($lv_binom_max, 0);
            $lv_binom_arr[0] = 1;
            $lv_binom_arr[1] = 1;
            $lv_binom_arr[2] = 1;
         }
         $rr = $lv_binom_max;
         if ($rr < $nn + 1) {
            $lv_binom_end = d2lt_d1($nn + 1, 0);
            while ($rr <= $nn) {
               $ul_ind = d2lt_d1($rr - 1, 0);
               $lz_ind = $ul_ind + $rr;
               $lv_binom_arr[$lz_ind] = 1;
               $rz_ind = $lz_ind + $rr;
               while ($lz_ind < $rz_ind) {
                  $lv_binom_arr[$rz_ind] = $lv_binom_arr[$lz_ind];
                  $rz_ind -= 1;
                  $lz_ind += 1;
                  $lv_binom_arr[$lz_ind] = ($lv_binom_arr[$ul_ind] +
                           $lv_binom_arr[$ul_ind + 1]);
                  $ul_ind += 1;
               }
               $rr += 1;
            }
            $lv_binom_max = $rr;
         }
         $retvalu = $lv_binom_arr[d2lt_d1($nn, $kk)];
      }
      return ($retvalu);
   }
}
{
my @lv_euler_arr;
   my $lv_euler_end = 0;
   my $lv_euler_max = 0;
   sub eulerian($$ ) {
      my ($nn, $kk) = @_;
      # local-use Perl @lv_euler_arr;
      # local-use Perl $lv_euler_end;
      # local-use Perl $lv_euler_max;
      my $jj;
      my $ii;
      my $lz_ind;
      my $rz_ind;
      my $ul_ind;
      my $retvalu;
      if ($nn < $kk or $nn < 0 or $kk < 0) {
         $retvalu = 0;
      } else {
         if ($lv_euler_end <= 0) {
            $lv_euler_max = 3;
            $lv_euler_end = d2lt_d1($lv_euler_max, 0);
            $lv_euler_arr[0] = 0;
            $lv_euler_arr[1] = 1;
            $lv_euler_arr[2] = 0;
            $lv_euler_arr[3] = 1;
            $lv_euler_arr[4] = 1;
            $lv_euler_arr[5] = 0;
         }
         $ii = $lv_euler_max;
         if ($ii < $nn + 1) {
            $lv_euler_end = d2lt_d1($nn + 1, 0);
            while ($ii <= $nn) {
               $lz_ind = d2lt_d1($ii, 0);
               $lv_euler_arr[$lz_ind] = 1;
               $lv_euler_arr[$lz_ind + $ii] = 0;
               $rz_ind = $lz_ind + $ii - 1;
               $ul_ind = d2lt_d1($ii - 1, 0);
               $jj = 1;
               while ($lz_ind < $rz_ind) {
                  $lv_euler_arr[$rz_ind] = $lv_euler_arr[$lz_ind];
                  $lz_ind += 1;
                  $lv_euler_arr[$lz_ind] = (($ii - $jj) *
                           $lv_euler_arr[$ul_ind] + ($jj + 1) *
                           $lv_euler_arr[$ul_ind + 1]);
                  $ul_ind += 1;
                  $rz_ind -= 1;
                  $jj += 1;
               }
               $ii += 1;
               $lv_euler_max = $ii;
            }
         }
         $retvalu = $lv_euler_arr[d2lt_d1($nn, $kk)];
      }
      return ($retvalu);
   }
}
{
my @lv_entringer_arr;
   my $lv_entringer_end = 0;
   my $lv_entringer_max = 0;
   sub entringer($$ ) {
      my ($nn, $kk) = @_;
      # local-use Perl @lv_entringer_arr;
      # local-use Perl $lv_entringer_max;
      # local-use Perl $lv_entringer_end;
      my $ii;
      my $inda;
      my $jj;
      my $retvalu;
      if ($nn <= 0 or $kk < 0 or $nn < $kk) {
         $retvalu = 0;
      } else {
         if ($lv_entringer_end <= 0) {
            $lv_entringer_max = 1;
            $lv_entringer_end = d2lt_d1($lv_entringer_max, 0);
            $lv_entringer_arr[0] = 1;
         }
         $jj = $lv_entringer_max;
         if ($jj < $nn + 1) {
            $lv_entringer_end = d2lt_d1($nn + 1, 0);
            while ($jj <= $nn) {
               $inda = d2lt_d1($jj, 0);
               $lv_entringer_arr[$inda] = 0;
               for ($ii = 1; $ii <= $jj; $ii += 1) {
                  $lv_entringer_arr[$inda + $ii] =
                           $lv_entringer_arr[$inda - $ii] +
                           $lv_entringer_arr[$inda + $ii - 1];
               }
               $jj += 1;
               $lv_entringer_max = $jj;
            }
         }
         $retvalu = $lv_entringer_arr[d2lt_d1($nn, $kk)];
      }
      return ($retvalu);
   }
}
sub zigzag($ ) {
   my ($nn) = @_;
   return (Kw::entringer($nn, $nn));
}
sub zig($ ) {
   my ($nn) = @_;
   return (Kw::zigzag(2 * $nn));
}
sub zag($ ) {
   my ($nn) = @_;
   return (Kw::zigzag(2 * $nn - 1));
}
sub eulerx($ ) {
   my ($nn) = @_;
   my $retvalu;
   if ($nn <= 0 or Kw::isodd($nn)) {
      $retvalu = 0;
   } else {
      $retvalu = Kw::entringer($nn, $nn);
   }
   return ($retvalu);
}
sub ballot($$ ) {
   my ($xmm, $xnn) = @_;
   return (abs($xnn - $xmm) / ($xmm + $xnn));
}
sub ballots($$ ) {
   my ($xmm, $xnn) = @_;
   my $retvalu;
   if ($xmm < $xnn) {
      $retvalu = ($xnn - $xmm + 1.0) / ($xnn + 1.0);
   } else {
      $retvalu = ($xmm - $xnn + 1.0) / ($xmm + 1.0);
   }
   return ($retvalu);
}
{
my @lv_stir_a_arr;
   my $lv_stir_a_end = 0;
   my $lv_stir_a_max = 0;
   sub stirling1($$ ) {
      my ($nn, $kk) = @_;
      # local-use Perl @lv_stir_a_arr;
      # local-use Perl $lv_stir_a_end;
      # local-use Perl $lv_stir_a_max;
      my $col_k;
      my $ul_ind;
      my $cz_ind;
      my $ii;
      my $retvalu;
      if ($nn < 0 or $kk < 0 or $nn < $kk) {
         $retvalu = 0;
      } else {
         if ($lv_stir_a_max <= 0) {
            $lv_stir_a_max = 2;
            $lv_stir_a_end = d2lt_d1($lv_stir_a_max, 0);
            $lv_stir_a_arr[0] = 1;
            $lv_stir_a_arr[1] = 0;
            $lv_stir_a_arr[2] = 1;
         }
         $ii = $lv_stir_a_max;
         if ($ii < $nn + 1) {
            $lv_stir_a_end = d2lt_d1($nn + 1, 0);
            while ($ii <= $nn) {
               $cz_ind = d2lt_d1($ii, 0);
               $lv_stir_a_arr[$cz_ind] = 0;
               $cz_ind += 1;
               $ul_ind = d2lt_d1($ii - 1, 0);
               for ($col_k = 1; $col_k <= $ii - 1; $col_k += 1) {
                  $lv_stir_a_arr[$cz_ind] = ($lv_stir_a_arr[$ul_ind] -
                           ($ii - 1) * $lv_stir_a_arr[$ul_ind + 1]);
                  $ul_ind += 1;
                  $cz_ind += 1;
               }
               $lv_stir_a_arr[$cz_ind] = 1;
               $ii += 1;
               $lv_stir_a_max = $ii;
            }
         }
         $retvalu = $lv_stir_a_arr[d2lt_d1($nn, $kk)];
      }
      return ($retvalu);
   }
}
{
my @lv_stir_b_arr;
   my $lv_stir_b_end = 0;
   my $lv_stir_b_max = 0;
   sub stirling2($$ ) {
      my ($nn, $kk) = @_;
      # local-use Perl @lv_stir_b_arr;
      # local-use Perl $lv_stir_b_end;
      # local-use Perl $lv_stir_b_max;
      my $col_k;
      my $ul_ind;
      my $cz_ind;
      my $ii;
      my $retvalu;
      if ($nn < $kk or $nn < 0 or $kk < 0) {
         $retvalu = 0;
      } else {
         if ($lv_stir_b_end <= 0) {
            $lv_stir_b_max = 2;
            $lv_stir_b_end = d2lt_d1($lv_stir_b_max, 0);
            $lv_stir_b_arr[0] = 1;
            $lv_stir_b_arr[1] = 0;
            $lv_stir_b_arr[2] = 1;
         }
         $ii = $lv_stir_b_max;
         if ($ii < $nn + 1) {
            $lv_stir_b_end = d2lt_d1($nn + 1, 0);
            while ($ii <= $nn) {
               $cz_ind = d2lt_d1($ii, 0);
               $lv_stir_b_arr[$cz_ind] = 0;
               $cz_ind += 1;
               $ul_ind = d2lt_d1($ii - 1, 0);
               for ($col_k = 1; $col_k <= $ii - 1; $col_k += 1) {
                  $lv_stir_b_arr[$cz_ind] = ($lv_stir_b_arr[$ul_ind] +
                           $col_k * $lv_stir_b_arr[$ul_ind + 1]);
                  $ul_ind += 1;
                  $cz_ind += 1;
               }
               $lv_stir_b_arr[$cz_ind] = 1;
               $ii += 1;
               $lv_stir_b_max = $ii;
            }
         }
         $retvalu = $lv_stir_b_arr[d2lt_d1($nn, $kk)];
      }
      return ($retvalu);
   }
}
{
my @lv_bern_n_arr;
   my @lv_bern_d_arr;
   my $lv_bern_end = 0;
   sub bernoulli($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_bern_n_arr;
      # local-use Perl @lv_bern_d_arr;
      # local-use Perl $lv_bern_end;
      my $retvalu;
      my $sz_ind;
      my $coeff;
      my $sumn;
      my $sumd;
      my $jj;
      my $ii;
      my $gdn;
      my $nsumn;
      my $nsumd;
      my $xkk;
      my $nnhalf;
      if ($nn == 1) {
         $retvalu = -0.5;
      } elsif ($nn < 0 or Kw::isodd($nn)) {
         $retvalu = 0.0;
      } else {
         if ($lv_bern_end <= 0) {
            $lv_bern_end = 3;
            $lv_bern_n_arr[0] = 1;
            $lv_bern_n_arr[1] = 1;
            $lv_bern_n_arr[2] = -1;
            $lv_bern_d_arr[0] = 1;
            $lv_bern_d_arr[1] = 6;
            $lv_bern_d_arr[2] = 30;
         }
         $nnhalf = floorl($nn / 2);
         if ($lv_bern_end <= $nnhalf) {
            $ii = $lv_bern_end;
            $lv_bern_end = $nnhalf + 1;
            while ($ii < $lv_bern_end) {
               $sz_ind = 2 * $ii;
               $coeff = (($sz_ind + 1) * $sz_ind) / 2;
               $sumn = 1.0 - $sz_ind;
               $sumd = 2.0;
               for ($jj = 1; $jj <= $ii - 1; $jj += 1) {
                  $nsumn = Kw::round($sumn * $lv_bern_d_arr[$jj] + $sumd
                           * $coeff * $lv_bern_n_arr[$jj]);
                  $nsumd = Kw::round($sumd * $lv_bern_d_arr[$jj]);
                  $gdn = gcd($nsumn, $nsumd);
                  $sumn = $nsumn / $gdn;
                  $sumd = $nsumd / $gdn;
                  $xkk = 2 * $jj;
                  $coeff *= ($sz_ind - $xkk + 1.0) / ($xkk + 1.0);
                  $coeff *= ($sz_ind - $xkk) / ($xkk + 2.0);
                  $coeff = Kw::round($coeff);
               }
               $sumd *= ($sz_ind + 1);
               $gdn = Kw::gcd($sumn, $sumd);
               $lv_bern_n_arr[$ii] = -$sumn / $gdn;
               $lv_bern_d_arr[$ii] = $sumd / $gdn;
               $ii += 1;
            }
         }
         $retvalu = $lv_bern_n_arr[$nnhalf] / $lv_bern_d_arr[$nnhalf];
      }
      return ($retvalu);
   }
   sub bernoullin($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_bern_n_arr;
      # local-use Perl @lv_bern_d_arr;
      my $retvalu;
      if ($nn == 1) {
         $retvalu = -1;
      } elsif (Kw::isodd($nn) or $nn < 0) {
         $retvalu = 0;
      } else {
         $retvalu = Kw::bernoulli($nn);
         $retvalu = $lv_bern_n_arr[$nn / 2];
      }
      return ($retvalu);
   }
   sub bernoullid($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_bern_n_arr;
      # local-use Perl @lv_bern_d_arr;
      my $retvalu;
      if ($nn == 1) {
         $retvalu = 2;
      } elsif (Kw::isodd($nn) or $nn < 0) {
         $retvalu = 1;
      } else {
         $retvalu = Kw::bernoulli($nn);
         $retvalu = $lv_bern_d_arr[$nn / 2];
      }
      return ($retvalu);
   }
}
sub birthday($$ ) {
   my ($xnn, $xrr) = @_;
   my $prob;
   my $ii;
   $prob = 1.0;
   for ($ii = 1; $ii <= $xrr - 1; $ii += 1) {
      $prob *= ($xnn - $ii) / $xnn;
   }
   return ($prob);
}
sub birthdayinv($$ ) {
   my ($xnn, $xprob) = @_;
   my $xrr;
   my $cprob;
   $cprob = 1.0;
   $xrr = 1.0;
   while ($xprob < $cprob) {
      $cprob *= ($xnn - $xrr) / $xnn;
      $xrr += 1;
   }
   return ($xrr);
}
sub n2perm($$\@ ) {
   my ($nth, $nn, $ret_perm_arr_p) = @_;
   my $ii;
   my $jj;
   my $kk;
   my $nthmod;
   my @pat_arr;
   my @source_arr;
   my $sz_ind;
   use integer;
   $nthmod = Kw::modulo($nth, factorial($nn));
   $kk = $nthmod;
   for ($ii = 1; $ii <= $nn; $ii += 1) {
      $pat_arr[$nn - $ii] = $kk % $ii;
      $kk = floor($kk / $ii);
      $source_arr[$ii - 1] = $ii - 1;
   }
   for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
      $sz_ind = $pat_arr[$ii];
      $$ret_perm_arr_p[$ii] = $source_arr[$sz_ind];
      for ($jj = $sz_ind; $jj <= $nn - $ii - 2; $jj += 1) {
         $source_arr[$jj] = $source_arr[$jj + 1];
      }
   }
   no integer;
   return ($nthmod);
}
sub n2comb($$$\@ ) {
   my ($nth, $nn, $rr, $ret_comb_arr_p) = @_;
   my $kk;
   my $cc;
   my $qq;
   my $ss;
   my $pp;
   my $nthmod;
   use integer;
   $nthmod = Kw::modulo($nth, Kw::comb($nn, $rr));
   $kk = Kw::comb($nn, $rr) - $nthmod;
   for ($ss = 0; $ss <= $rr - 1; $ss += 1) {
      $pp = $rr - $ss;
      $cc = 1;
      $qq = 1;
      while ($cc < $kk) {
         $kk -= $cc;
         $cc = ($cc * $pp) / $qq;
         $qq += 1;
         $pp += 1;
      }
      $$ret_comb_arr_p[$ss] = $nn - $pp;
   }
   no integer;
   return ($nthmod);
}
sub n2perm_print($$ ) {
   my ($nth, $nn) = @_;
   my @perm_arr;
   my $jj;
   $jj = n2perm($nth, $nn, @perm_arr);
   print_array($nn, @perm_arr);
   return ($jj);
}
sub n2comb_print($$$ ) {
   my ($nth, $nn, $rr) = @_;
   my @comb_arr;
   my $jj;
   $jj = n2comb($nth, $nn, $rr, @comb_arr);
   print_array($rr, @comb_arr);
   return ($jj);
}
sub pochhammer($$ ) {
   my ($nn, $xx) = @_;
   my $retvalu;
   my $ii;
   if (0 < $nn) {
      $retvalu = $xx;
      for ($ii = 1; $ii <= $nn; $ii += 1) {
         $retvalu *= ($xx + $ii);
      }
   } elsif ($nn < 0) {
      $retvalu = $xx;
      for ($ii = -1; $nn <= $ii; $ii -= 1) {
         $retvalu *= ($xx + $ii);
      }
   } else {
      $retvalu = 1.0;
   }
   return ($retvalu);
}
sub days_in_month($$ ) {
   my ($g_year, $g_month) = @_;
   my $retvalu;
   use integer;
   if ($g_month == 2) {
      if (Kw::isleapyear($g_year)) {
         $retvalu = 29;
      } else {
         $retvalu = 28;
      }
   } elsif ((6 * $g_month + 1) % 11 < 5) {
      $retvalu = 30;
   } else {
      $retvalu = 31;
   }
   no integer;
   return ($retvalu);
}
sub sec2dhms($ ) {
   my ($seconds) = @_;
   my $dy;
   my $hr;
   my $mn;
   my $tm;
   my $sg;
   if ($seconds < 0.0) {
      $sg = -1.0;
   } else {
      $sg = 1.0;
   }
   $dy = floor($seconds * Kw::SECOND / Kw::DAY);
   $tm = ($seconds * Kw::SECOND / Kw::DAY - $dy) * Kw::DAY / Kw::HOUR;
   $hr = floor($tm);
   $tm = ($tm - $hr) * Kw::HOUR / Kw::MINUTE;
   $mn = floor($tm);
   $tm = ($tm - $mn) * Kw::MINUTE / Kw::SECOND;
   return ($dy + $sg * ($hr + ($mn + $tm / 100.0) / 100.0) / 100.0);
}
sub day2dhms($ ) {
   my ($dayfrac) = @_;
   my $dy;
   my $hr;
   my $mn;
   my $tm;
   my $sg;
   if ($dayfrac < 0.0) {
      $sg = -1.0;
   } else {
      $sg = 1.0;
   }
   $dy = floor($dayfrac);
   $tm = ($dayfrac - $dy) * Kw::DAY / Kw::HOUR;
   $hr = floor($tm);
   $tm = ($tm - $hr) * Kw::HOUR / Kw::MINUTE;
   $mn = floor($tm);
   $tm = ($tm - $mn) * Kw::MINUTE / Kw::SECOND;
   return ($dy + $sg * ($hr + ($mn + $tm / 100.0) / 100.0) / 100.0);
}
sub day2dhmsinv($ ) {
   my ($xx_hms) = @_;
   my $dy;
   my $hr;
   my $mn;
   my $tm;
   $dy = floor($xx_hms);
   $tm = ($xx_hms - $dy) * 100.0;
   $hr = floor($tm);
   $tm = ($tm - $hr) * 100.0;
   $mn = floor($tm);
   $tm = ($tm - $mn) * 100.0;
   return ($dy + ($hr * Kw::HOUR + $mn * Kw::MINUTE + $tm * Kw::SECOND) /
            Kw::DAY);
}
sub hms2day($$$ ) {
   my ($hourx, $minutex, $secondx) = @_;
   return (($secondx * Kw::SECOND + $minutex * Kw::MINUTE + $hourx *
            Kw::HOUR) / Kw::DAY);
}
sub hour2day($ ) {
   my ($hourx) = @_;
   return ($hourx * Kw::HOUR / Kw::DAY);
}
sub day2hour($ ) {
   my ($dayx) = @_;
   return ($dayx * Kw::DAY / Kw::HOUR);
}
sub jd2kwt($ ) {
   my ($jjdtime) = @_;
   return (($jjdtime * Kw::JDAY - Kw::JDSEC_AT_0KWT) / Kw::KWT);
}
sub jd2j2k($ ) {
   my ($jjdtime) = @_;
   return (($jjdtime * Kw::JDAY - Kw::JDSEC_AT_0J2K) / Kw::J2KDAY);
}
sub jd2uet($ ) {
   my ($jjdtime) = @_;
   return (($jjdtime * Kw::JDAY - Kw::JDSEC_AT_0UET) / Kw::UET);
}
sub kwt2jd($ ) {
   my ($kwttime) = @_;
   return (($kwttime * Kw::KWT + Kw::JDSEC_AT_0KWT) / Kw::JDAY);
}
sub uet2jd($ ) {
   my ($uettime) = @_;
   return (($uettime * Kw::UET + Kw::JDSEC_AT_0UET) / Kw::JDAY);
}
sub j2k2jd($ ) {
   my ($jtwoktm) = @_;
   return (($jtwoktm * Kw::J2KDAY + Kw::JDSEC_AT_0J2K) / Kw::JDAY);
}
sub j2k2kwt($ ) {
   my ($jtwoktm) = @_;
   return (jd2kwt(j2k2jd($jtwoktm)));
}
sub j2k2uet($ ) {
   my ($jtwoktm) = @_;
   return (jd2uet(j2k2jd($jtwoktm)));
}
sub kwt2j2k($ ) {
   my ($kwttime) = @_;
   return (jd2j2k(kwt2jd($kwttime)));
}
sub kwt2uet($ ) {
   my ($kwttime) = @_;
   return (jd2uet(kwt2jd($kwttime)));
}
sub uet2kwt($ ) {
   my ($uettime) = @_;
   return (jd2kwt(uet2jd($uettime)));
}
sub uet2j2k($ ) {
   my ($uettime) = @_;
   return (jd2j2k(uet2jd($uettime)));
}
sub jd2dow($ ) {
   my ($jjd) = @_;
   my $jjtemp;
   $jjtemp = floor($jjd + 1.5);
   return ($jjtemp % 7);
}
sub j2k2dow($ ) {
   my ($jtwok) = @_;
   my $jjtemp;
   $jjtemp = floor($jtwok + 6.5);
   return ($jjtemp % 7);
}
sub ymd2doy($$$ ) {
   my ($g_year, $g_month, $g_daymon) = @_;
   my $delta;
   if (2 < $g_month) {
      $delta = floor(30.6001 * $g_month - 32.3);
      if (Kw::isleapyear($g_year)) {
         $delta += 1;
      }
   } elsif ($g_month == 2) {
      $delta = 31;
   } else {
      $delta = 0;
   }
   return ($delta + $g_daymon);
}
sub ymd2j2k__1($$$ ) {
   my ($g_year, $g_month, $g_day) = @_;
   my $yr;
   my $mn;
   my $jtwok;
   my $jcen;
   my $dayoffset;
   $yr = $g_year - Kw::GYEAR_AT_0J2K;
   $mn = $g_month;
   if ($mn < 3) {
      $mn += Kw::MONTHS_IN_YEAR;
      $yr -= 1;
   }
   $jcen = floor($yr / 100);
   $dayoffset = $jcen - floor($jcen / 4.0) + 31.3;
   $jtwok = (floor($yr * Kw::JYEAR / Kw::JDAY) + floor(30.6001 * $mn -
            $dayoffset) + $g_day - 1.5);
   return ($jtwok);
}
sub ymd2j2k($$$ ) {
   my ($g_year, $g_month, $g_day) = @_;
   my $yr;
   my $mn;
   my $jtwok;
   my $jcen;
   $yr = $g_year - Kw::GYEAR_AT_0J2K;
   $mn = $g_month;
   $jcen = floor(($yr - 1) / 100);
   $jtwok = (floor($yr * Kw::JYEAR / Kw::JDAY - 0.001) + floor($jcen /
            4.0) - $jcen + ymd2doy($yr, $mn, $g_day) - 0.5);
   return ($jtwok);
}
sub ymd2jd($$$ ) {
   my ($g_year, $g_month, $g_day) = @_;
   return (j2k2jd(ymd2j2k($g_year, $g_month, $g_day)));
}
sub ymd2dow($$$ ) {
   my ($g_year, $g_month, $g_daymon) = @_;
   return (jd2dow(ymd2jd($g_year, $g_month, $g_daymon)));
}
sub doomsday($ ) {
   my ($g_year) = @_;
   my $cc;
   my $yy;
   my $lps;
   my $anchor;
   my $retvalu;
   use integer;
   $cc = floor($g_year / 100);
   $anchor = ($cc % 4) * 5 + 2;
   $yy = $g_year % 100;
   $lps = floor($yy / 4);
   $retvalu = ($anchor + $yy + $lps) % 7;
   no integer;
   return ($retvalu);
}
{
sub LC_GD_YEAR() { 0; }
   sub LC_GD_MONTH() { 1; }
   sub LC_GD_DAY() { 2; }
   sub LC_GD_HOUR() { 3; }
   sub LC_GD_MIN() { 4; }
   sub LC_GD_SEC() { 5; }
   sub LC_GD_DOW() { 6; }
   sub LC_GD_NUM() { 7; }
   sub LC_GD_JD() { 8; }
   sub LC_GD_CNT() { 9; }
   my @lv_ymdhms_arr;
   sub jd2ymdhms($ ) {
      my ($jjulid) = @_;
      # local-use Perl @lv_ymdhms_arr;
      my $jcent;
      my $bbdays;
      my $bdiff;
      my $g_years;
      my $month_next;
      my $ftime_frac;
      my $dtime_rem;
      my $ijulian;
      $lv_ymdhms_arr[LC_GD_JD] = $jjulid;
      $ftime_frac = Kw::frac($jjulid + 0.5);
      $ijulian = floor($jjulid + 0.5);
      $jcent = floor((($ijulian - 60.5) * Kw::JDAY -
               Kw::JDSEC_AT_0GREGORIAN) / (100.0 * Kw::GYEAR));
      $bbdays = $ijulian + $jcent - floor($jcent / 4.0);
      $g_years = floor(($bbdays + 1399.9) * Kw::JDAY / Kw::JYEAR);
      $bdiff = $bbdays - floor($g_years * Kw::JYEAR / Kw::JDAY) + 1522;
      $month_next = floor($bdiff / 30.6001);
      $dtime_rem = $bdiff - floor(30.6001 * $month_next) + $ftime_frac;
      $lv_ymdhms_arr[LC_GD_YEAR] = $g_years - 4716.0;
      if (13 < $month_next) {
         $lv_ymdhms_arr[LC_GD_MONTH] = $month_next - 13;
      } else {
         $lv_ymdhms_arr[LC_GD_MONTH] = $month_next - 1;
      }
      if ($lv_ymdhms_arr[LC_GD_MONTH] < 3) {
         $lv_ymdhms_arr[LC_GD_YEAR] += 1;
      }
      $lv_ymdhms_arr[LC_GD_DAY] = floor($dtime_rem);
      $dtime_rem = Kw::DAY / Kw::HOUR * Kw::frac($dtime_rem);
      $lv_ymdhms_arr[LC_GD_HOUR] = floor($dtime_rem);
      $dtime_rem = Kw::HOUR / Kw::MINUTE * Kw::frac($dtime_rem);
      $lv_ymdhms_arr[LC_GD_MIN] = floor($dtime_rem);
      $dtime_rem = Kw::MINUTE / Kw::SECOND * Kw::frac($dtime_rem);
      $lv_ymdhms_arr[LC_GD_SEC] = $dtime_rem;
      $lv_ymdhms_arr[LC_GD_DOW] = floor(Kw::fmod($ijulian + 1.0, 7.0));
      $dtime_rem = ($lv_ymdhms_arr[LC_GD_MONTH] * 100.0 +
               $lv_ymdhms_arr[LC_GD_DAY] + $lv_ymdhms_arr[LC_GD_HOUR] /
               100.0 + $lv_ymdhms_arr[LC_GD_MIN] / 10000.0 +
               $lv_ymdhms_arr[LC_GD_SEC] / 1000000.0);
      $ftime_frac = $lv_ymdhms_arr[LC_GD_YEAR] * 10000.0;
      if ($ftime_frac < 0.0) {
         $lv_ymdhms_arr[LC_GD_NUM] = $ftime_frac - $dtime_rem;
      } else {
         $lv_ymdhms_arr[LC_GD_NUM] = $ftime_frac + $dtime_rem;
      }
      return ($lv_ymdhms_arr[LC_GD_NUM]);
   }
   sub j2k2ymdhms($ ) {
      my ($jtwokd) = @_;
      return (jd2ymdhms(j2k2jd($jtwokd)));
   }
   sub ymdhms_get($ ) {
      my ($indexp) = @_;
      # local-use Perl @lv_ymdhms_arr;
      my $retvalu;
      if (LC_GD_YEAR <= $indexp and $indexp < LC_GD_CNT) {
         $retvalu = $lv_ymdhms_arr[$indexp];
      } else {
         $retvalu = -1;
      }
      return ($retvalu);
   }
   sub jd2ymdhmsinv() {
      # local-use Perl @lv_ymdhms_arr;
      return (ymd2jd($lv_ymdhms_arr[LC_GD_YEAR],
               $lv_ymdhms_arr[LC_GD_MONTH], $lv_ymdhms_arr[LC_GD_DAY]) +
               hms2day($lv_ymdhms_arr[LC_GD_HOUR],
               $lv_ymdhms_arr[LC_GD_MIN], $lv_ymdhms_arr[LC_GD_SEC]) *
               Kw::DAY / Kw::JDAY);
   }
}
sub jd264_print($ ) {
   my ($jjulid) = @_;
   jd2ymdhms($jjulid);
   base_out_print(ymdhms_get(LC_GD_YEAR), 64);
   base_out_print(ymdhms_get(LC_GD_MONTH), 64);
   base_out_print(ymdhms_get(LC_GD_DAY), 64);
   base_out_print(ymdhms_get(LC_GD_HOUR), 64);
   base_out_print(ymdhms_get(LC_GD_MIN), 64);
   base_outf_print(ymdhms_get(LC_GD_SEC), 64);
   return ($jjulid);
}
sub ymdhms2jd($ ) {
   my ($ymdhmsx) = @_;
   my @xx_arr;
   my $ys;
   $ys = $ymdhmsx * (1.0 + Kw::DBLEPS);
   $xx_arr[LC_GD_YEAR] = floor($ys / 10000.0);
   if ($ys < 0) {
      $ys = -$ys;
   }
   $xx_arr[LC_GD_MONTH] = Kw::fmodu(floor($ys / 100.0), 100.0);
   $xx_arr[LC_GD_DAY] = Kw::fmodu(floor($ys), 100.0);
   $xx_arr[LC_GD_HOUR] = Kw::fmodu(floor($ys * 100.0), 100.0);
   $xx_arr[LC_GD_MIN] = Kw::fmodu(floor($ys * 10000.0), 100.0);
   $xx_arr[LC_GD_SEC] = Kw::frac($ys * 10000.0) * 100.0;
   return (ymd2jd($xx_arr[LC_GD_YEAR], $xx_arr[LC_GD_MONTH],
            $xx_arr[LC_GD_DAY]) + hms2day($xx_arr[LC_GD_HOUR],
            $xx_arr[LC_GD_MIN], $xx_arr[LC_GD_SEC]) * Kw::DAY / Kw::JDAY);
}
sub ymdhms2j2k($ ) {
   my ($ymdhmsx) = @_;
   return (jd2j2k(ymdhms2jd($ymdhmsx)));
}
sub clocksec($ ) {
   my ($secnds) = @_;
   return (Kw::frac($secnds / Kw::MINUTE) * Kw::TAU);
}
sub clockmin($ ) {
   my ($secnds) = @_;
   return (Kw::frac($secnds / Kw::HOUR) * Kw::TAU);
}
sub clockhour($ ) {
   my ($secnds) = @_;
   return (Kw::frac($secnds / (Kw::DAY / 2)) * Kw::TAU);
}
sub clocksum($ ) {
   my ($secnds) = @_;
   my $sc;
   my $mn;
   my $hr;
   $sc = clocksec($secnds);
   $mn = clockmin($secnds);
   $hr = clockhour($secnds);
   return (Kw::dist($sc - $mn, Kw::TAU) + Kw::dist($hr - $mn, Kw::TAU) +
            Kw::dist($sc - $hr, Kw::TAU));
}
sub clockstdev($ ) {
   my ($secnds) = @_;
   my $sc;
   my $mn;
   my $hr;
   my $da;
   my $db;
   my $dc;
   $sc = clocksec($secnds);
   $mn = clockmin($secnds);
   $hr = clockhour($secnds);
   $da = Kw::dist($sc - $mn, Kw::TAU);
   $db = Kw::dist($hr - $mn, Kw::TAU);
   $dc = Kw::dist($sc - $hr, Kw::TAU);
   return (sqrt(($da * $da + $db * $db + $dc * $dc - Kw::square($da + $db
            + $dc) / 3.0) / 2.0));
}
{
sub LC_HALAQIM_PER_HOUR() { 1080; }
   sub LX_HALAQIM() { Kw::HOUR / LC_HALAQIM_PER_HOUR; }
   sub LC_YEAR_PER_METONIC() { 19; }
   sub date_easter($ ) {
      my ($g_year) = @_;
      my $century;
      my $ii;
      my $dow;
      my $kk;
      my $jj;
      my $skipped_leap;
      my $modmet;
      my $leap_years;
      use integer;
      $century = floor($g_year / 100);
      $modmet = $g_year % LC_YEAR_PER_METONIC;
      $skipped_leap = $century - floor($century / 4);
      $leap_years = floor($g_year / 4);
      $kk = floor(($century + 8) / 25 - 1);
      $jj = floor(($century - $kk) / 3);
      $ii = ($skipped_leap - $jj + LC_YEAR_PER_METONIC * $modmet + 15) % 30;
      if (28 < $ii or ($ii == 28 and 10 < $modmet)) {
         $ii -= 1;
      }
      $dow = ($g_year + $leap_years + $ii + 2 - $skipped_leap) % 7;
      no integer;
      return ($ii - $dow + 28);
   }
   sub date_rosh_hashanah($ ) {
      my ($g_year) = @_;
      my $aa;
      my $dos;
      my $day_of_september;
      my $parts;
      my $doww;
      my $am;
      $aa = (12 * $g_year + 12) % LC_YEAR_PER_METONIC;
      $am = round(Kw::MOON_MONTH / Kw::LX_HALAQIM) * $aa - 1565.0 * $g_year;
      $dos = floor($g_year / 100) - floor($g_year / 400) - 2 + ($g_year %
               4) / 4.0 + ($am - 445405) / (LC_YEAR_PER_METONIC * Kw::DAY
               / LX_HALAQIM);
      $day_of_september = floor($dos);
      $parts = ($dos - $day_of_september) * Kw::DAY / LX_HALAQIM;
      $doww = ymd2dow($g_year, 9, $day_of_september);
      if ($doww == 0 or $doww == 3 or $doww == 5) {
         $day_of_september += 1;
      } elsif ($doww == 1 and 11 < $aa and 23269 <= $parts) {
         $day_of_september += 1;
      } elsif ($doww == 2 and 6 < $aa and 16404 <= $parts) {
         $day_of_september += 2;
      }
      return ($day_of_september - 0.25);
   }
   sub jewish2jdx($ ) {
      my ($hebyear) = @_;
      my $months_el;
      my $halaqims_el;
      my $hour_el;
      my $hq_left;
      my $days_left;
      my $alt_days;
      my $alt_dow;
      my $hymod;
      use integer;
      $hymod = ($hebyear - 1) % LC_YEAR_PER_METONIC;
      $months_el = (235 * floor(($hebyear - 1) / LC_YEAR_PER_METONIC) +
               12 * $hymod + floor((7 * $hymod + 1) / LC_YEAR_PER_METONIC));
      $halaqims_el = 204 + (793 * ($months_el % LC_HALAQIM_PER_HOUR));
      $hour_el = (5 + (12 * $months_el) + 793 * floor($months_el /
               LC_HALAQIM_PER_HOUR) + floor($halaqims_el /
               LC_HALAQIM_PER_HOUR));
      $days_left = floor($hour_el / (Kw::DAY / Kw::HOUR)) + 1 + 29 *
               $months_el;
      $alt_days = $days_left + 347996;
      $alt_dow = ($alt_days % Kw::iround(Kw::WEEK / Kw::DAY));
      $hq_left = ($halaqims_el % LC_HALAQIM_PER_HOUR);
      no integer;
      $hq_left += Kw::DAY * Kw::frac($hour_el * Kw::HOUR / Kw::DAY) /
               LX_HALAQIM;
      if (19440 <= $hq_left) {
         if (0 == $alt_dow or 2 == $alt_dow or 4 == $alt_dow) {
            $alt_days += 2;
         } else {
            $alt_days += 1;
         }
      } elsif (0 == $alt_dow) {
         if (9924 <= $hq_left) {
            if (not isjewishleap($hebyear)) {
               $alt_days += 2;
            }
         }
      } elsif (6 == $alt_dow) {
         if (16789 <= $hq_left and isjewishleap($hebyear - 1)) {
            $alt_days += 1;
         }
      } elsif (1 == $alt_dow or 3 == $alt_dow or 5 == $alt_dow) {
         $alt_days += 1;
      }
      return ($alt_days + 0.25);
   }
   sub isjewishleap($ ) {
      my ($hebyear) = @_;
      return ((7 * $hebyear + 1) % LC_YEAR_PER_METONIC < 7);
   }
}
sub date_pesach($ ) {
   my ($g_year) = @_;
   my $rh;
   $rh = date_rosh_hashanah($g_year);
   return ($rh + 21);
}
sub g2jewish($ ) {
   my ($g_year) = @_;
   return ($g_year + 3761);
}
sub jewish2g($ ) {
   my ($hebyear) = @_;
   return ($hebyear - 3760);
}
sub jewish_months_in_year($ ) {
   my ($hebyear) = @_;
   my $miy;
   if (isjewishleap($hebyear)) {
      $miy = 13;
   } else {
      $miy = 12;
   }
   return ($miy);
}
sub jewish_yearlength($ ) {
   my ($hebyear) = @_;
   my $g_year;
   my $retvalu;
   $g_year = jewish2g($hebyear - 1);
   $retvalu = (floor(Kw::JYEAR / Kw::JDAY) + (date_rosh_hashanah($g_year
            + 1) - date_rosh_hashanah($g_year)));
   if (Kw::isleapyear($g_year + 1)) {
      $retvalu += 1;
   }
   return ($retvalu);
}
sub jewish2jd($ ) {
   my ($hebyear) = @_;
   my $gregyear;
   $gregyear = jewish2g($hebyear - 1);
   return (ymd2jd($gregyear, 9, date_rosh_hashanah($gregyear)));
}
sub isjewish8short($ ) {
   my ($hebyear) = @_;
   my $remten;
   use integer;
   $remten = jewish_yearlength($hebyear) % 10;
   no integer;
   return ($remten != 5);
}
sub isjewish9short($ ) {
   my ($hebyear) = @_;
   my $remten;
   use integer;
   $remten = jewish_yearlength($hebyear) % 10;
   no integer;
   return ($remten == 3);
}
sub jewish_monthlength($$ ) {
   my ($hebyear, $hebmonth) = @_;
   my $retvalu;
   $retvalu = 30;
   if ($hebmonth < 1 or 13 < $hebmonth) {
      $retvalu = 0;
   } elsif ($hebmonth < 8) {
      if (Kw::iseven($hebmonth)) {
         $retvalu = 29;
      }
   } elsif ($hebmonth == 8) {
      if (isjewish8short($hebyear)) {
         $retvalu = 29;
      }
   } elsif ($hebmonth == 9) {
      if (isjewish9short($hebyear)) {
         $retvalu = 29;
      }
   } elsif ($hebmonth == 10) {
      $retvalu = 29;
   } elsif ($hebmonth == 11) {
      $retvalu = 30;
   } elsif ($hebmonth == 12) {
      if (not isjewishleap($hebyear)) {
         $retvalu = 29;
      }
   } elsif ($hebmonth == 13 and isjewishleap($hebyear)) {
      $retvalu = 29;
   } else {
      $retvalu = 0;
   }
   return ($retvalu);
}
sub jewish_monthbegin($$ ) {
   my ($hebyear, $hmonth) = @_;
   my $g_year;
   my $g_month;
   my $hm;
   my $gdate;
   $g_year = jewish2g($hebyear - 1);
   $g_month = 9;
   if ($hmonth < Kw::JEWISH_FIRST_MONTH) {
      $g_year += 1;
      $gdate = date_rosh_hashanah($g_year);
      for ($hm = Kw::JEWISH_FIRST_MONTH - 1; $hmonth <= $hm; $hm -= 1) {
         $g_month -= 1;
         $gdate += (days_in_month($g_year, $g_month) -
                  jewish_monthlength($hebyear, $hm));
      }
   } else {
      $gdate = date_rosh_hashanah($g_year);
      for ($hm = Kw::JEWISH_FIRST_MONTH; $hm <= $hmonth - 1; $hm += 1) {
         $gdate -= (days_in_month($g_year, $g_month) -
                  jewish_monthlength($hebyear, $hm));
         $g_month += 1;
         if (Kw::MONTHS_IN_YEAR < $g_month) {
            $g_month = 1;
            $g_year += 1;
         }
      }
   }
   return ($gdate);
}
sub jewishymd2jd($$$ ) {
   my ($hebyear, $hebmonth, $hebday) = @_;
   my $jds;
   my $hfirst;
   my $hmon;
   my $moninyear;
   $moninyear = jewish_months_in_year($hebyear);
   if (1 <= $hebmonth and $hebmonth <= $moninyear) {
      $jds = jewish2jd($hebyear);
      $hfirst = Kw::JEWISH_FIRST_MONTH;
      $hmon = Kw::JEWISH_FIRST_MONTH;
      while ($hmon != $hebmonth) {
         $jds += jewish_monthlength($hebyear, $hmon);
         $hmon += 1;
         if ($moninyear < $hmon) {
            $hmon = 1;
         } elsif ($hmon == $hfirst) {
            $hebyear += 1;
            $moninyear = jewish_months_in_year($hebyear);
         }
      }
   } else {
      $jds = 0;
   }
   return ($jds + $hebday - 1.0);
}
sub amean($$ ) {
   my ($xa, $xb) = @_;
   return (($xa + $xb) / 2.0);
}
sub amean1($ ) {
   my ($xa) = @_;
   return (($xa + 1.0) / 2.0);
}
sub lmean($$ ) {
   my ($xa, $xb) = @_;
   my $retvalu;
   my $diffy;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $diffy = $xa - $xb;
      if (0.0001 < abs($diffy)) {
         $retvalu = $diffy / log($xa / $xb);
      } else {
         $retvalu = $diffy / Kw::ln1p($diffy / $xb);
      }
   }
   return ($retvalu);
}
sub lmean1($ ) {
   my ($xa) = @_;
   return (lmean(1.0, $xa));
}
sub pmean($$$ ) {
   my ($pp, $xa, $xb) = @_;
   my $retvalu;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } elsif (Kw::iszero($pp)) {
      $retvalu = sqrt($xa * $xb);
   } else {
      $retvalu = Kw::pow((Kw::pow($xa, $pp) + Kw::pow($xb, $pp)) / 2.0,
               1.0 / $pp);
   }
   return ($retvalu);
}
sub gmean($$ ) {
   my ($xa, $xb) = @_;
   my $retvalu;
   if ($xa < 0.0 or $xb < 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $retvalu = sqrt($xa * $xb);
   }
   return ($retvalu);
}
sub gmean1($ ) {
   my ($xa) = @_;
   return (gmean(1.0, $xa));
}
sub hmean($$ ) {
   my ($xa, $xb) = @_;
   my $retvalu;
   if ($xa < 0.0 or $xb < 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $retvalu = 2.0 * $xa * $xb / ($xa + $xb);
   }
   return ($retvalu);
}
sub hmean1($ ) {
   my ($xa) = @_;
   return (hmean(1.0, $xa));
}
sub qmean($$ ) {
   my ($xa, $xb) = @_;
   my $retvalu;
   if ($xa < 0.0 or $xb < 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $retvalu = sqrt(($xa * $xa + $xb * $xb) / 2.0);
   }
   return ($retvalu);
}
sub qmean1($ ) {
   my ($xa) = @_;
   return (qmean(1.0, $xa));
}
sub heronianmean($$ ) {
   my ($xa, $xb) = @_;
   my $retvalu;
   if ($xa < 0.0 or $xb < 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $retvalu = ($xa + $xb + sqrt($xa * $xb)) / 3.0;
   }
   return ($retvalu);
}
sub heronianmean1($ ) {
   my ($xa) = @_;
   return (heronianmean(1.0, $xa));
}
sub agmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = sqrt($xa * $xb);
         $xa = ($xa + $xb) / 2.0;
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub agmean1($ ) {
   my ($xa) = @_;
   return (agmean(1.0, $xa));
}
sub ahmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = 2.0 * $xa * $xb / ($xa + $xb);
         $xa = ($xa + $xb) / 2.0;
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub ahmean1($ ) {
   my ($xa) = @_;
   return (ahmean(1.0, $xa));
}
sub almean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = lmean($xa, $xb);
         $xa = ($xa + $xb) / 2.0;
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub almean1($ ) {
   my ($xa) = @_;
   return (almean(1.0, $xa));
}
sub aqmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = ($xa + $xb) / 2.0;
         $xa = qmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub aqmean1($ ) {
   my ($xa) = @_;
   return (aqmean(1.0, $xa));
}
sub ghmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = 2.0 * $xa * $xb / ($xa + $xb);
         $xa = sqrt($xa * $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub ghmean1($ ) {
   my ($xa) = @_;
   return (ghmean(1.0, $xa));
}
sub glmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = sqrt($xa * $xb);
         $xa = lmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub glmean1($ ) {
   my ($xa) = @_;
   return (glmean(1.0, $xa));
}
sub gqmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = sqrt($xa * $xb);
         $xa = qmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub gqmean1($ ) {
   my ($xa) = @_;
   return (gqmean(1.0, $xa));
}
sub hlmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = 2.0 * $xa * $xb / ($xa + $xb);
         $xa = lmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub hlmean1($ ) {
   my ($xa) = @_;
   return (hlmean(1.0, $xa));
}
sub hqmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = 2.0 * $xa * $xb / ($xa + $xb);
         $xa = qmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub hqmean1($ ) {
   my ($xa) = @_;
   return (hqmean(1.0, $xa));
}
sub lqmean($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $pdifff;
   my $cdifff;
   if ($xa <= 0.0 or $xb <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb)) {
      $retvalu = $xa;
   } else {
      $cdifff = abs($xa - $xb);
      $ii = 0;
      for (;;) {
         $pdifff = $cdifff;
         $xtmp = lmean($xa, $xb);
         $xa = qmean($xa, $xb);
         $xb = $xtmp;
         $cdifff = $xa - $xb;
         if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS) or $pdifff <
                  $cdifff) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xtmp;
   }
   return ($retvalu);
}
sub lqmean1($ ) {
   my ($xa) = @_;
   return (lqmean(1.0, $xa));
}
sub agmean__1($$ ) {
   my ($xa, $xb) = @_;
   my $ii;
   my $retvalu;
   my $xtmp;
   my $xsgn;
   $xsgn = 1.0;
   $ii = 0;
   for (;;) {
      $xtmp = $xa;
      $xa = ($xa + $xb) / 2.0;
      $xb = sqrt(abs($xtmp * $xb)) * Kw::sign($xa);
      if (Kw::iswithin($xa, $xb, 10.0 * Kw::DBLEPS)) {
         last; # loop AWAIT
      }
      $ii += 1;
      if (20 <= $ii) {
         last; # loop AWAIT
      }
   }
   $retvalu = $xsgn * $xtmp;
   return ($retvalu);
}
sub agcmean(\@\@\@ ) {
   my ($xa_arr_pc, $xb_arr_pc, $ret_arr_p) = @_;
   my @gg_arr;
   my @aa_arr;
   my @tt_arr;
   my @pr_arr;
   my $pr_len;
   my $pr_theta;
   $gg_arr[0] = $$xa_arr_pc[0];
   $gg_arr[1] = $$xa_arr_pc[1];
   $aa_arr[0] = $$xb_arr_pc[0];
   $aa_arr[1] = $$xb_arr_pc[1];
   for (;;) {
      $tt_arr[0] = ($aa_arr[0] + $gg_arr[0]) / 2;
      $tt_arr[1] = ($aa_arr[1] + $gg_arr[1]) / 2;
      $pr_arr[0] = $aa_arr[0] * $gg_arr[0] - $aa_arr[1] * $gg_arr[1];
      $pr_arr[1] = $aa_arr[1] * $gg_arr[0] + $aa_arr[0] * $gg_arr[1];
      $pr_len = sqrt(Kw::hypot($pr_arr[0], $pr_arr[1]));
      $pr_theta = atan2($pr_arr[1], $pr_arr[0]) / 2.0;
      $gg_arr[0] = $pr_len * cos($pr_theta);
      $gg_arr[1] = $pr_len * sin($pr_theta);
      $aa_arr[0] = $tt_arr[0];
      $aa_arr[1] = $tt_arr[1];
      if ($aa_arr[0] * $gg_arr[0] + $aa_arr[1] * $gg_arr[1] < 0.0) {
         $gg_arr[0] = -$gg_arr[0];
         $gg_arr[1] = -$gg_arr[1];
      }
      if (Kw::iseq($gg_arr[0], $aa_arr[0]) and Kw::iseq($gg_arr[1],
               $aa_arr[1])) {
         last; # loop AWAIT
      }
   }
   $$ret_arr_p[0] = $gg_arr[0];
   $$ret_arr_p[1] = $gg_arr[1];
   return (Kw::hypot($gg_arr[0], $gg_arr[1]));
}
sub aghmean($$$ ) {
   my ($xa, $xb, $xc) = @_;
   my $ii;
   my $ta;
   my $tb;
   my $tc;
   my $retvalu;
   if ($xa <= 0.0 or $xb <= 0.0 or $xc <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::iseq($xa, $xb) and Kw::iseq($xa, $xc)) {
      $retvalu = $xa;
   } else {
      $ii = 0;
      for (;;) {
         $ta = $xa;
         $tb = $xb;
         $tc = $xc;
         $xa = ($ta + $tb + $tc) / 3.0;
         $xb = Kw::cuberoot($ta * $tb * $tc);
         $xc = 3.0 / (1.0 / $ta + 1.0 / $tb + 1.0 / $tc);
         if (Kw::iswithin($xa, $xc, 10.0 * Kw::DBLEPS)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = $xb;
   }
   return ($retvalu);
}
sub rms($$ ) {
   my ($xa, $xb) = @_;
   return (sqrt(($xa * $xa + $xb * $xb) / 2.0));
}
sub agmeaninva($$ ) {
   my ($aa, $gg) = @_;
   my $new_aa;
   if ($gg < $aa) {
      $new_aa = $aa + sqrt($aa * $aa - $gg * $gg);
   } else {
      $new_aa = $gg + sqrt($gg * $gg - $aa * $aa);
   }
   return ($new_aa);
}
sub agmeaninvg($$ ) {
   my ($aa, $gg) = @_;
   my $new_gg;
   if ($gg < $aa) {
      $new_gg = $gg * $gg / $aa;
   } else {
      $new_gg = $aa * $aa / $gg;
   }
   return ($new_gg);
}
sub agmean1inv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $x_init;
   my $dx;
   my $cc;
   if ($yy <= 0.0) {
      $scvx_xx = 0.0;
   } elsif ($yy < 0.0022) {
      $scvx_xx = 1.0 / Kw::DBLMAX;
   } else {
      if ($yy <= 0.5) {
         $x_init = 4.0 * exp(Kw::PI / (-2.0 * $yy));
      } elsif ($yy < 2.1) {
         $cc = $yy - 1.0;
         $x_init = ((((((((-0.09765625) * $cc + 0.12890625) * $cc +
                  0.1875) * $cc + 0.1875) * $cc - 0.25) * $cc + 0.5) *
                  $cc + 2.0) * $cc + 1.0);
      } else {
         $cc = -(Kw::PI / 2.0);
         $x_init = $yy * Kw::wm($cc / (4.0 * $yy)) / $cc;
      }
      if ($yy < 0.06) {
         $dx = $x_init * 0.1;
      } else {
         $dx = $x_init * 0.5;
      }
      $scvx_dx = $dx;
      $scvx_xx = $x_init;
      $scvx_yy = $yy - agmean1($scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $yy - agmean1($scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub ghmean1inv($ ) {
   my ($yy) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $x_init;
   if ($yy <= 0.0) {
      $scvx_xx = 0.0;
   } else {
      if ($yy < 0.073) {
         $x_init = 0.352 * $yy;
      } else {
         $x_init = (exp(Kw::PI * $yy / 2.0) - exp(-$yy * $yy * 0.2)) / 4.0;
      }
      $scvx_dx = 0.3;
      $scvx_xx = $x_init;
      $scvx_yy = $yy - ghmean1($scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $yy - ghmean1($scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub contraharmonic($\@ ) {
   my ($nn, $val_arr_pc) = @_;
   my $denom;
   my $numer;
   my $ii;
   $numer = 0.0;
   $denom = 0.0;
   for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
      $denom += $$val_arr_pc[$ii] * $$val_arr_pc[$ii];
      $numer += $$val_arr_pc[$ii];
   }
   return ($denom / $numer);
}
{
sub LC_KNUTH_MAX() { 1073741823; }
   sub LC_KNUTH_QUALITY_CNT() { 1009; }
   sub LC_KNUTH_KK_CNT() { 100; }
   sub LC_KNUTH_LL() { 37; }
   sub LC_KNUTH_TT() { 70; }
   sub LC_KNUTH_ARRAY_CNT() { 1100; }
   my $lv_ranz_ind = -3;
   my $lv_ranz_magic = 0.0;
   my @lv_ranz_arr;
   my @lv_ran_a_arr;
   my @lv_ran_x_arr;
   sub lf_ran_cycle($ ) {
      my ($nn) = @_;
      # local-use Perl @lv_ran_x_arr;
      # local-use Perl @lv_ran_a_arr;
      my $aa;
      my $bb;
      my $cc;
      my $mody;
      use integer;
      $aa = 0;
      while ($aa < LC_KNUTH_KK_CNT) {
         $lv_ran_a_arr[$aa] = $lv_ran_x_arr[$aa];
         $aa += 1;
      }
      $bb = 0;
      $cc = (LC_KNUTH_KK_CNT - LC_KNUTH_LL);
      while ($aa < $nn) {
         $mody = $lv_ran_a_arr[$bb] - $lv_ran_a_arr[$cc];
         $lv_ran_a_arr[$aa] = (LC_KNUTH_MAX & $mody);
         $aa += 1;
         $bb += 1;
         $cc += 1;
      }
      $aa = 0;
      while ($aa < LC_KNUTH_LL) {
         $mody = $lv_ran_a_arr[$bb] - $lv_ran_a_arr[$cc];
         $lv_ran_x_arr[$aa] = (LC_KNUTH_MAX & $mody);
         $aa += 1;
         $bb += 1;
         $cc += 1;
      }
      $cc = 0;
      while ($aa < LC_KNUTH_KK_CNT) {
         $mody = $lv_ran_a_arr[$bb] - $lv_ran_x_arr[$cc];
         $lv_ran_x_arr[$aa] = (LC_KNUTH_MAX & $mody);
         $aa += 1;
         $bb += 1;
         $cc += 1;
      }
      no integer;
      return ($bb);
   }
   sub lf_fill_ranz() {
      # local-use Perl $lv_ranz_magic;
      # local-use Perl $lv_ranz_ind;
      # local-use Perl @lv_ranz_arr;
      # local-use Perl @lv_ran_a_arr;
      my $jj;
      lf_ran_cycle(LC_KNUTH_QUALITY_CNT);
      for ($jj = 0; $jj <= LC_KNUTH_QUALITY_CNT - 1; $jj += 1) {
         $lv_ranz_arr[$jj] = $lv_ran_a_arr[$jj];
      }
      $lv_ranz_arr[LC_KNUTH_KK_CNT] = -1;
      $lv_ranz_ind = 0;
      $lv_ranz_magic = Kw::magicset();
      return ($lv_ranz_arr[0]);
   }
   sub lf_next_ranz() {
      # local-use Perl $lv_ranz_magic;
      # local-use Perl $lv_ranz_ind;
      # local-use Perl @lv_ranz_arr;
      if (not Kw::ismagic($lv_ranz_magic)) {
         rand_init(Kw::timee());
      } elsif ($lv_ranz_arr[$lv_ranz_ind] < 0) {
         lf_fill_ranz();
      }
      $lv_ranz_ind += 1;
      return ($lv_ranz_arr[$lv_ranz_ind - 1]);
   }
   sub rand_init_array($\@ ) {
      my ($seed_size, $seed_arr_pc) = @_;
      # local-use Perl @lv_ran_x_arr;
      my $tt;
      my $jj;
      my $kk;
      my $dd;
      my @rnd_arr;
      my $rndss;
      my $rndx;
      my $rndff;
      my $seed_ind;
      my $bitmask;
      use integer;
      $rndss = (($$seed_arr_pc[0] + 2) & (LC_KNUTH_MAX - 1));
      for ($jj = 0; $jj <= LC_KNUTH_KK_CNT - 1; $jj += 1) {
         $rnd_arr[$jj] = $rndss;
         $rndss = ($rndss << 1);
         if (LC_KNUTH_MAX < $rndss) {
            $rndss -= (LC_KNUTH_MAX - 1);
         }
      }
      $rndff = 0;
      $seed_ind = 0;
      $bitmask = 0;
      for ($jj = 0; $jj <= LC_KNUTH_KK_CNT - 1; $jj += 1) {
         if ($bitmask <= 1) {
            $seed_ind += 1;
            if ($seed_size <= $seed_ind) {
               last;
            }
            $rndff = $$seed_arr_pc[$seed_ind];
            $bitmask = (1 << 30);
         }
         if (($rndff & $bitmask) != 0) {
            $rnd_arr[$jj] = ($bitmask ^ ($rnd_arr[$jj]));
         }
         $bitmask = ($bitmask >> 1);
      }
      $rnd_arr[1] += 1;
      $rndss = ($$seed_arr_pc[0] & LC_KNUTH_MAX);
      $tt = LC_KNUTH_TT - 1;
      while (0 < $tt) {
         for ($jj = LC_KNUTH_KK_CNT - 1; 1 <= $jj; $jj -= 1) {
            $rnd_arr[$jj + $jj] = $rnd_arr[$jj];
            $rnd_arr[$jj + $jj - 1] = 0;
         }
         $jj = LC_KNUTH_KK_CNT + LC_KNUTH_KK_CNT - 2;
         $dd = LC_KNUTH_KK_CNT + LC_KNUTH_LL - 2;
         $kk = LC_KNUTH_KK_CNT - 2;
         while (0 <= $kk) {
            $rndx = $rnd_arr[$dd] - $rnd_arr[$jj];
            $rnd_arr[$dd] = ($rndx & LC_KNUTH_MAX);
            $rndx = $rnd_arr[$kk] - $rnd_arr[$jj];
            $rnd_arr[$kk] = ($rndx & LC_KNUTH_MAX);
            $dd -= 1;
            $kk -= 1;
            $jj -= 1;
         }
         if (Kw::isodd($rndss)) {
            for ($jj = LC_KNUTH_KK_CNT; 1 <= $jj; $jj -= 1) {
               $rnd_arr[$jj] = $rnd_arr[$jj - 1];
            }
            $rnd_arr[0] = $rnd_arr[LC_KNUTH_KK_CNT];
            $jj = $rnd_arr[LC_KNUTH_LL] - $rnd_arr[0];
            $rnd_arr[LC_KNUTH_LL] = (LC_KNUTH_MAX & $jj);
            $rndss = ($rndss >> 1);
         } elsif ($rndss == 0) {
            $tt -= 1;
         } else {
            $rndss = ($rndss >> 1);
         }
      }
      $kk = (LC_KNUTH_KK_CNT - LC_KNUTH_LL);
      $jj = 0;
      while ($jj < LC_KNUTH_LL) {
         $lv_ran_x_arr[$kk] = $rnd_arr[$jj];
         $kk += 1;
         $jj += 1;
      }
      $kk = 0;
      while ($jj < LC_KNUTH_KK_CNT) {
         $lv_ran_x_arr[$kk] = $rnd_arr[$jj];
         $kk += 1;
         $jj += 1;
      }
      for ($jj = 0; $jj <= 9; $jj += 1) {
         lf_ran_cycle(2 * LC_KNUTH_KK_CNT - 1);
      }
      no integer;
      lf_fill_ranz();
      return 0;
   }
   sub rand_init($ ) {
      my ($seed) = @_;
      my @sd_arr;
      $sd_arr[0] = floor($seed);
      $sd_arr[1] = floor(frac($seed) * Kw::INTMAX);
      rand_init_array(2, @sd_arr);
      return ($seed);
   }
   sub randl($ ) {
      my ($nn) = @_;
      my $max_allowed;
      my $rndm;
      my $retvalu;
      use integer;
      $max_allowed = LC_KNUTH_MAX - (LC_KNUTH_MAX % $nn);
      for (;;) {
         $rndm = lf_next_ranz();
         if ($rndm < $max_allowed) {
            last; # loop AWAIT
         }
      }
      $retvalu = $rndm % $nn;
      no integer;
      return ($retvalu);
   }
   sub randd() {
      return ((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX + 1.0)) /
               (LC_KNUTH_MAX + 1.0));
   }
}
sub int_pdf($$ ) {
   my ($para_nn, $xx) = @_;
   my $retvalu;
   my $ff;
   if ($xx < 0.0 or $para_nn < $xx or (not Kw::isint($xx))) {
      $retvalu = 0.0;
   } else {
      $ff = floor($para_nn);
      if (Kw::isint($para_nn)) {
         if ($xx < $para_nn) {
            $retvalu = 1.0 / $para_nn;
         } else {
            $retvalu = 0.0;
         }
      } else {
         if ($xx < $ff) {
            $retvalu = 1.0 / $para_nn;
         } else {
            $retvalu = 1.0 - $ff / $para_nn;
         }
      }
   }
   return ($retvalu);
}
sub int_cdf($$ ) {
   my ($para_nn, $xx) = @_;
   my $retvalu;
   my $ff;
   if ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif ($para_nn <= $xx) {
      $retvalu = 1.0;
   } else {
      $ff = floor($para_nn);
      if ($xx < $ff) {
         $retvalu = (floor($xx) + 1) / $para_nn;
      } else {
         $retvalu = 1;
      }
   }
   return ($retvalu);
}
sub int_quantile($$ ) {
   my ($para_nn, $probx) = @_;
   my $retvalu;
   if ($probx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 - frac($para_nn) / $para_nn <= $probx) {
      $retvalu = ceil($para_nn - 1);
   } else {
      $retvalu = floor($para_nn * $probx + 1);
   }
   return ($retvalu);
}
sub int_rand($ ) {
   my ($para_nn) = @_;
   my $retvalu;
   if ($para_nn <= 1) {
      $retvalu = 0;
   } else {
      $retvalu = floorl(randd() * $para_nn);
   }
   return ($retvalu);
}
sub normal_pdf($ ) {
   my ($xx) = @_;
   return (exp(-$xx * $xx / 2.0) / (sqrt(Kw::TAU)));
}
sub normal_cdf($ ) {
   my ($xx) = @_;
   return (Kw::erf($xx / Kw::TWOSQRT) / 2.0 + 0.5);
}
sub normal_cdf__1($ ) {
   my ($xx) = @_;
   my $retvalu;
   my $sum_curr;
   my $sum_prev;
   my $bb;
   my $xx_sqr;
   my $ii;
   if ($xx <= -10.0) {
      $retvalu = 0.0;
   } elsif (10.0 <= $xx) {
      $retvalu = 1.0;
   } elsif (Kw::iszero($xx)) {
      $retvalu = 0.5;
   } else {
      $sum_curr = 0.0;
      $bb = 1.0 / $xx;
      $xx_sqr = $xx * $xx;
      $ii = 0;
      for (;;) {
         $bb *= $xx_sqr / (2.0 * $ii + 1.0);
         $sum_prev = $sum_curr;
         $sum_curr += $bb;
         if (Kw::iseq($sum_prev, $sum_curr)) {
            last; # loop AWAIT
         }
         $ii += 1;
      }
      $retvalu = ($sum_curr * exp(-0.5 * ($xx_sqr + log(Kw::TAU))) + 0.5);
   }
   return ($retvalu);
}
sub normal_quantile($ ) {
   my ($probx) = @_;
   return (Kw::TWOSQRT * Kw::erfinv(2.0 * $probx - 1.0));
}
{
my $lv_rand_gau_magic = 0.0;
   my $lv_rand_gau_prev = 0.0;
   sub normal_rand() {
      # local-use Perl $lv_rand_gau_magic;
      # local-use Perl $lv_rand_gau_prev;
      my $retvalu;
      my $uua;
      my $uub;
      my $ww;
      if (Kw::ismagic($lv_rand_gau_magic)) {
         $lv_rand_gau_magic = Kw::magicnot();
         $retvalu = $lv_rand_gau_prev;
      } else {
         for (;;) {
            $uua = randd() - 0.5;
            $uub = randd() - 0.5;
            $ww = $uua * $uua + $uub * $uub;
            if (Kw::isbetweenx($ww, 0.0, 0.25)) {
               last; # loop AWAIT
            }
         }
         $ww = sqrt(-2.0 * log(4.0 * $ww) / $ww);
         $lv_rand_gau_prev = $uub * $ww;
         $lv_rand_gau_magic = Kw::magicset();
         $retvalu = $uua * $ww;
      }
      return ($retvalu);
   }
}
sub gau_pdf($ ) {
   my ($xx) = @_;
   return (normal_pdf($xx));
}
sub gau_cdf($ ) {
   my ($xx) = @_;
   return (normal_cdf($xx));
}
sub gau_quantile($ ) {
   my ($probx) = @_;
   return (normal_quantile($probx));
}
sub gau_rand() {
   return (normal_rand());
}
sub normal_quantile__1($ ) {
   my ($probx) = @_;
   my $retvalu;
   my $p_low;
   my $qq;
   my $rr;
   my $denom;
   my $numer;
   $p_low = 0.02425;
   if ($probx <= 0.0) {
      $retvalu = -(Kw::DBLMAX);
   } elsif (1.0 <= $probx) {
      $retvalu = Kw::DBLMAX;
   } elsif ($p_low <= $probx and $probx <= 1.0 - $p_low) {
      $qq = $probx - 0.5;
      $rr = $qq * $qq;
      $numer = ((((((-3.96968302866538E+1) * $rr + 2.20946098424521E+2) *
               $rr - 2.75928510446969E+2) * $rr + 1.38357751867269E+2) *
               $rr - 3.06647980661472E+1) * $rr + 2.50662827745924);
      $denom = ((((((-5.44760987982241E+1) * $rr + 1.61585836858041E+2) *
               $rr - 1.55698979859887E+2) * $rr + 6.68013118877197E+1) *
               $rr - 1.32806815528857E+1) * $rr + 1.00000000000000);
      $retvalu = ($qq * $numer / $denom);
   } else {
      if ($probx < $p_low) {
         $rr = sqrt(-2.0 * log($probx));
         $qq = 1.0;
      } else {
         $rr = sqrt(-2.0 * log(1 - $probx));
         $qq = -1.0;
      }
      $numer = ((((((-7.78489400243029E-3) * $rr - 3.22396458041136E-1) *
               $rr - 2.40075827716184) * $rr - 2.54973253934373) * $rr +
               4.37466414146497) * $rr + 2.93816398269878);
      $denom = (((((7.78469570904146E-3) * $rr + 3.22467129070040E-1) *
               $rr + 2.44513413714300) * $rr + 3.75440866190742) * $rr +
               1.00000000000000);
      $retvalu = $qq * $numer / $denom;
   }
   return ($retvalu);
}
sub uni_pdf($$ ) {
   my ($max_x, $xxp) = @_;
   my $retvalu;
   if ($max_x <= 0.0 or $xxp <= 0.0 or $max_x <= $xxp) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0 / $max_x;
   }
   return ($retvalu);
}
sub uni_cdf($$ ) {
   my ($max_x, $xxp) = @_;
   my $retvalu;
   if ($max_x <= 0.0 or $xxp < 0.0) {
      $retvalu = 0.0;
   } elsif ($max_x < $xxp) {
      $retvalu = 1.0;
   } else {
      $retvalu = $xxp / $max_x;
   }
   return ($retvalu);
}
sub uni_quantile($$ ) {
   my ($max_x, $probx) = @_;
   my $retvalu;
   if ($probx < 0.0 or $max_x <= 0.0) {
      $retvalu = 0.0;
   } elsif ($max_x < $probx) {
      $retvalu = 1.0;
   } else {
      $retvalu = $probx * $max_x;
   }
   return ($retvalu);
}
sub uni_rand($ ) {
   my ($max_x) = @_;
   return (uni_quantile($max_x, randd()));
}
sub exp_pdf($$ ) {
   my ($para_scaling, $xxp) = @_;
   my $retvalu;
   if ($xxp < 0.0 or $para_scaling <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = $para_scaling * exp(-$para_scaling * $xxp);
   }
   return ($retvalu);
}
sub exp_cdf($$ ) {
   my ($para_scaling, $xxp) = @_;
   my $retvalu;
   if ($xxp < 0.0 or $para_scaling <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0 - exp(-$para_scaling * $xxp);
   }
   return ($retvalu);
}
sub exp_quantile($$ ) {
   my ($para_scaling, $probx) = @_;
   my $retvalu;
   if ($probx <= 0.0 or $para_scaling <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $probx) {
      $retvalu = Kw::DBLMAX;
   } else {
      $retvalu = -log(1.0 - $probx) / $para_scaling;
   }
   return ($retvalu);
}
sub exp_rand($ ) {
   my ($para_scaling) = @_;
   return (- log(randd()) / $para_scaling);
}
sub poi_pdf($$ ) {
   my ($meanx, $xxp) = @_;
   my $kk;
   my $retvalu;
   if ($xxp < 0.0 or $meanx <= 0.0) {
      $retvalu = 0.0;
   } else {
      $kk = floor($xxp);
      $retvalu = Kw::pow($meanx, $kk) * exp(-$meanx) / factorial($kk);
   }
   return ($retvalu);
}
sub poi_cdf($$ ) {
   my ($meanx, $xxp) = @_;
   my $ii;
   my $kk;
   my $sum;
   my $term;
   my $retvalu;
   if ($xxp <= 0.0 or $meanx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1000.0 < $xxp / $meanx) {
      $retvalu = 1;
   } else {
      $term = exp(-$meanx);
      $sum = $term;
      $kk = floorl($xxp);
      for ($ii = 1; $ii <= $kk; $ii += 1) {
         $term *= $meanx / $ii;
         $sum += $term;
      }
      $retvalu = $sum;
   }
   return ($retvalu);
}
sub poi_quantile($$ ) {
   my ($meanx, $probx) = @_;
   my $ii;
   my $sum;
   my $prevsum;
   my $term;
   my $retvalu;
   if ($probx <= 0.0 or $meanx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $probx) {
      $retvalu = Kw::DBLMAX;
   } else {
      $prevsum = 0.0;
      $term = exp(-$meanx);
      $sum = $term;
      $ii = 0;
      while ($sum <= $probx) {
         $ii += 1;
         $term *= $meanx / $ii;
         $prevsum = $sum;
         $sum += $term;
      }
      if ($sum - $probx < $probx - $prevsum) {
         $retvalu = $ii;
      } else {
         $retvalu = $ii - 1;
      }
   }
   return ($retvalu);
}
sub poi_rand($ ) {
   my ($meanx) = @_;
   my $prob;
   my $poi;
   my $sum;
   my $nn;
   $prob = randd();
   $poi = exp(-$meanx);
   $sum = $poi;
   $nn = 0;
   while ($sum < $prob) {
      $nn += 1;
      $poi *= $meanx / $nn;
      $sum += $poi;
   }
   return ($nn);
}
sub geo_pdf($$ ) {
   my ($prob, $kk) = @_;
   my $retvalu;
   if ($kk < 0 or $prob < 0.0 or 1.0 <= $prob) {
      $retvalu = 0.0;
   } else {
      $retvalu = Kw::pow(1.0 - $prob, $kk) * $prob;
   }
   return ($retvalu);
}
sub geo_cdf($$ ) {
   my ($prob, $kk) = @_;
   my $retvalu;
   if ($kk <= -1 or $prob < 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $prob) {
      $retvalu = 1.0;
   } else {
      $retvalu = 1.0 - Kw::pow(1.0 - $prob, $kk + 1);
   }
   return ($retvalu);
}
sub geo_quantile($$ ) {
   my ($prob, $probx) = @_;
   my $retvalu;
   if ($probx <= 0.0 or 1.0 <= $probx or $prob <= 0.0 or 1.0 <= $prob) {
      $retvalu = 0.0;
   } else {
      $retvalu = log(1.0 - $probx) / log(1.0 - $prob) - 1.0;
   }
   return ($retvalu);
}
sub geo_rand($ ) {
   my ($prob) = @_;
   return (floorl(log(randd()) / log(1.0 - $prob)));
}
sub cauchy_pdf($$ ) {
   my ($para_scaling, $xx) = @_;
   return (1.0 / (Kw::PI * $para_scaling * (1.0 + (Kw::square($xx /
            $para_scaling)))));
}
sub cauchy_cdf($$ ) {
   my ($para_scaling, $xx) = @_;
   return (taninv($xx / $para_scaling) / Kw::PI + 0.5);
}
sub cauchy_quantile($$ ) {
   my ($para_scaling, $probx) = @_;
   return ($para_scaling * Kw::tan(($probx - 0.5) * Kw::PI));
}
sub cauchy_rand($ ) {
   my ($para_scaling) = @_;
   return (cauchy_quantile($para_scaling, randd()));
}
sub logistic_pdf($$ ) {
   my ($ss, $xx) = @_;
   my $exs;
   my $retvalu;
   if ($ss <= 0.0) {
      $retvalu = 0.0;
   } else {
      $exs = exp(-$xx / $ss);
      $retvalu = $exs / ($ss * Kw::pow(1.0 + $exs, 2.0));
   }
   return ($retvalu);
}
sub logistic_cdf($$ ) {
   my ($ss, $xx) = @_;
   my $retvalu;
   if ($ss <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0 / (1.0 + exp(-$xx / $ss));
   }
   return ($retvalu);
}
sub logistic_quantile($$ ) {
   my ($ss, $probx) = @_;
   my $retvalu;
   if ($probx <= 0.0 or $ss <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $probx) {
      $retvalu = 1.0;
   } else {
      $retvalu = -$ss * log(1.0 / $probx - 1.0);
   }
   return ($retvalu);
}
sub logistic_rand($ ) {
   my ($ss) = @_;
   return (- $ss * log(1.0 / randd() - 1.0));
}
sub tri_pdf($$ ) {
   my ($pp, $xxp) = @_;
   my $retvalu;
   if ($pp < 0.0 or 1.0 < $pp) {
      $retvalu = 0.0;
   } else {
      if ($xxp < 0.0 or 1.0 < $xxp) {
         $retvalu = 0.0;
      } elsif ($xxp < $pp) {
         $retvalu = Kw::divi(2.0 * $xxp, $pp, 2.0);
      } else {
         $retvalu = Kw::divi(2.0 * (1.0 - $xxp), 1.0 - $pp, 2.0);
      }
   }
   return ($retvalu);
}
sub tri_cdf($$ ) {
   my ($pp, $xxp) = @_;
   my $retvalu;
   if ($pp < 0.0 or 1.0 < $pp) {
      $retvalu = 0.0;
   } else {
      if ($xxp <= 0.0) {
         $retvalu = 0.0;
      } elsif ($xxp < $pp) {
         $retvalu = $xxp * $xxp / $pp;
      } elsif ($xxp < 1.0) {
         $retvalu = 1.0 - Kw::square(1.0 - $xxp) / (1.0 - $pp);
      } else {
         $retvalu = 1.0;
      }
   }
   return ($retvalu);
}
sub tri_quantile($$ ) {
   my ($pp, $probx) = @_;
   my $retvalu;
   if ($pp < 0.0 or 1.0 < $pp) {
      $retvalu = 0.0;
   } else {
      if ($probx <= 0.0) {
         $retvalu = 0.0;
      } elsif ($probx < $pp) {
         $retvalu = sqrt($probx * $pp);
      } elsif ($probx < 1.0) {
         $retvalu = 1.0 - sqrt((1.0 - $probx) * (1.0 - $pp));
      } else {
         $retvalu = 1.0;
      }
   }
   return ($retvalu);
}
sub tri_rand($ ) {
   my ($pp) = @_;
   my $xxp;
   my $yy;
   $xxp = randd();
   $yy = randd();
   if ($xxp < $pp) {
      if (2.0 * $xxp < $pp * $yy) {
         $xxp = $pp - $xxp;
      }
   } else {
      if (($pp - 1.0) * $yy < 2.0 * ($xxp - 1.0)) {
         $xxp = ($pp + 1.0) - $xxp;
      }
   }
   return ($xxp);
}
sub trap_pdf($$$ ) {
   my ($prob_a, $prob_b, $xx) = @_;
   my $retvalu;
   if ($xx < 0.0 or 1.0 < $xx or $prob_a < 0.0 or $prob_b < $prob_a or
            1.0 < $prob_b) {
      $retvalu = 0.0;
   } else {
      if ($xx < $prob_a) {
         $retvalu = $xx / $prob_a;
      } elsif ($xx <= $prob_b) {
         $retvalu = 1.0;
      } else {
         $retvalu = (1.0 - $xx) / (1.0 - $prob_b);
      }
   }
   return ($retvalu * 2.0 / (1.0 + $prob_b - $prob_a));
}
sub trap_cdf($$$ ) {
   my ($prob_a, $prob_b, $xx) = @_;
   my $ff;
   my $retvalu;
   if ($prob_a < 0.0 or $prob_b < $prob_a or 1.0 < $prob_b) {
      $retvalu = 0.0;
   } elsif ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $xx) {
      $retvalu = 1.0;
   } else {
      $ff = 2.0 / (1.0 + $prob_b - $prob_a);
      if ($xx < $prob_a) {
         $retvalu = $ff * $xx * $xx / (2.0 * $prob_a);
      } elsif ($xx < $prob_b) {
         $retvalu = $ff * ($xx - $prob_a / 2.0);
      } else {
         $retvalu = 1.0 - $ff * Kw::square(1.0 - $xx) / (2.0 * (1.0 -
                  $prob_b));
      }
   }
   return ($retvalu);
}
sub trap_quantile($$$ ) {
   my ($prob_a, $prob_b, $xx) = @_;
   my $ff;
   my $retvalu;
   if ($prob_a < 0.0 or $prob_b < $prob_a or 1.0 < $prob_b) {
      $retvalu = 0.0;
   } elsif ($xx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $xx) {
      $retvalu = 1.0;
   } else {
      $ff = 2.0 / (1.0 + $prob_b - $prob_a);
      if ($xx < $prob_a * $ff / 2.0) {
         $retvalu = sqrt((2.0 * $prob_a * $xx) / $ff);
      } elsif ($xx < 1.0 - $ff * (1.0 - $prob_b) / 2.0) {
         $retvalu = $xx / $ff + $prob_a / 2.0;
      } else {
         $retvalu = 1.0 - sqrt(2.0 * (1.0 - $prob_b) * (1.0 - $xx) / $ff);
      }
   }
   return ($retvalu);
}
sub trap_rand($$ ) {
   my ($prob_a, $prob_b) = @_;
   my $xx;
   my $retvalu;
   $retvalu = -1;
   for (;;) {
      $xx = randd();
      if ($xx < $prob_a) {
         if (randd() * $prob_a < $xx) {
            $retvalu = $xx;
         }
      } elsif ($xx <= $prob_b) {
         $retvalu = $xx;
      } else {
         if (randd() * (1.0 - $prob_b) < (1.0 - $xx)) {
            $retvalu = $xx;
         }
      }
      if (0.0 <= $retvalu) {
         last; # loop AWAIT
      }
   }
   return ($retvalu);
}
sub pareto_pdf($$$ ) {
   my ($para_shape, $para_scaling, $xx) = @_;
   return ($para_shape * Kw::pow($para_scaling / $xx, $para_shape) / $xx);
}
sub pareto_cdf($$$ ) {
   my ($para_shape, $para_scaling, $xx) = @_;
   return (1.0 - Kw::pow($para_scaling / $xx, $para_shape));
}
sub pareto_quantile($$$ ) {
   my ($para_shape, $para_scaling, $probx) = @_;
   return ($para_scaling / Kw::pow(1.0 - $probx, 1.0 / $para_shape));
}
sub pareto_rand($$ ) {
   my ($para_shape, $para_scaling) = @_;
   return ($para_scaling / Kw::pow(randd(), 1.0 / $para_shape));
}
sub gompertz_pdf($$$ ) {
   my ($para_shape, $para_scaling, $xx) = @_;
   return (exp($para_scaling * $xx + $para_shape * (1 - exp($para_scaling
            * $xx))) * $para_scaling * $para_shape);
}
sub gompertz_cdf($$$ ) {
   my ($para_shape, $para_scaling, $xx) = @_;
   return (1.0 - exp($para_shape * (1.0 - exp($para_scaling * $xx))));
}
sub gompertz_quantile($$$ ) {
   my ($para_shape, $para_scaling, $probx) = @_;
   return (log(1 - log(1.0 - $probx) / $para_shape) / $para_scaling);
}
sub gompertz_rand($$ ) {
   my ($para_shape, $para_scaling) = @_;
   return (gompertz_quantile($para_shape, $para_scaling, randd()));
}
sub zipf_pdf($$$ ) {
   my ($ss, $max_kk, $kk) = @_;
   my $retvalu;
   if ($kk <= 0.0 or $max_kk < $kk) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0 / (Kw::pow($kk, $ss) * Kw::hnm($max_kk, $ss));
   }
   return ($retvalu);
}
sub zipf_cdf($$$ ) {
   my ($ss, $max_kk, $kk) = @_;
   my $retvalu;
   if ($kk <= 0.0) {
      $retvalu = 0.0;
   } elsif ($max_kk < $kk) {
      $retvalu = 1.0;
   } else {
      $retvalu = Kw::hnm($kk, $ss) / Kw::hnm($max_kk, $ss);
   }
   return ($retvalu);
}
sub zipf_quantile($$$ ) {
   my ($ss, $max_kk, $probx) = @_;
   my $ii;
   my $summ;
   my $target;
   $target = $probx * Kw::hnm($max_kk, $ss);
   $summ = 0.0;
   $ii = 1;
   for (;;) {
      $summ += 1.0 / Kw::pow($ii, $ss);
      if ($target <= $summ) {
         last; # loop AWAIT
      }
      $ii += 1;
   }
   return ($ii);
}
sub zipf_rand($$ ) {
   my ($ss, $max_kk) = @_;
   return (zipf_quantile($ss, $max_kk, randd()));
}
sub beta_pdf($$$ ) {
   my ($para_shape_a, $para_shape_b, $xx) = @_;
   return (Kw::pow($xx, $para_shape_a - 1.0) * Kw::pow((1.0 - $xx),
            $para_shape_b - 1.0) / beta($para_shape_a, $para_shape_b));
}
sub beta_cdf($$$ ) {
   my ($para_shape_a, $para_shape_b, $xx) = @_;
   return (betainc($para_shape_a, $para_shape_b, $xx));
}
sub beta_quantile($$$ ) {
   my ($para_shape_a, $para_shape_b, $probx) = @_;
   my $retvalu;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   if ($probx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $probx) {
      $retvalu = 1.0;
   } else {
      $scvx_dx = 0.50;
      $scvx_xx = 0.25;
      $scvx_yy = $probx - beta_cdf($para_shape_a, $para_shape_b, $scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $probx - beta_cdf($para_shape_a, $para_shape_b,
                  $scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
      $retvalu = $scvx_xx;
   }
   return ($retvalu);
}
sub beta_rand($$ ) {
   my ($para_shape_a, $para_shape_b) = @_;
   return (beta_quantile($para_shape_a, $para_shape_b, randd()));
}
sub gamma_pdf($$ ) {
   my ($para_shape, $xxp) = @_;
   my $retvalu;
   if ($xxp <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = exp(log($xxp) * ($para_shape - 1.0) - $xxp) /
               Kw::tgamma($para_shape);
   }
   return ($retvalu);
}
sub gamma_cdf($$ ) {
   my ($para_shape, $xxp) = @_;
   my $retvalu;
   my $rr;
   my $ii;
   my $sum;
   if ($xxp <= 0.0 or $para_shape <= 0.0) {
      $retvalu = 0.0;
   } elsif (Kw::isint($para_shape)) {
      $sum = 1.0;
      $rr = 1.0;
      for ($ii = 1; $ii <= $para_shape - 1; $ii += 1) {
         $rr *= $xxp / $ii;
         $sum += $rr;
      }
      $retvalu = 1.0 - exp(-$xxp) * $sum;
   } else {
      $retvalu = Kw::rligamma($para_shape, $xxp);
   }
   return ($retvalu);
}
sub gamma_rand($ ) {
   my ($para_shape) = @_;
   my $i_shape;
   my $f_shape;
   my $rval;
   my $jj;
   my $ee;
   my $gg;
   my $yy;
   my $ff;
   my $xx;
   my $vv;
   my $qq;
   my $pp;
   $i_shape = floor($para_shape);
   $rval = 1.0;
   if ($para_shape < 5) {
      for ($jj = 1; $jj <= $i_shape; $jj += 1) {
         $rval *= randd();
      }
      $rval = -log($rval);
      $f_shape = $para_shape - $i_shape;
      if (0.00001 < $f_shape) {
         $pp = Kw::E / ($f_shape + Kw::E);
         for (;;) {
            $vv = log(randd());
            if (randd() < $pp) {
               $xx = exp($vv / $f_shape);
               $qq = exp(-$xx);
            } else {
               $xx = 1.0 - $vv;
               $qq = exp(log($xx) * ($f_shape - 1));
            }
            if (randd() < $qq) {
               last; # loop AWAIT
            }
         }
         $rval += $xx;
      }
   } else {
      $ee = $para_shape - 1.0;
      $gg = sqrt($para_shape + $ee);
      $yy = 0.0;
      $ff = 0.0;
      while ($rval <= 0.0 or (1.0 + $yy * $yy) * exp($ee * log($rval /
               $ee) - $ff) < randd()) {
         $xx = Kw::PI * randd();
         $yy = sin($xx) / cos($xx);
         $ff = $gg * $yy;
         $rval = $ff + $ee;
      }
   }
   return ($rval);
}
sub chisqr_pdf($$ ) {
   my ($df, $xxp) = @_;
   my $retvalu;
   if ($xxp <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = exp((log($xxp / 2.0) * $df - $xxp) / 2.0) / ($xxp *
               Kw::tgamma($df / 2.0));
   }
   return ($retvalu);
}
sub chisqr_cdf($$ ) {
   my ($df, $xxp) = @_;
   my $retvalu;
   if ($xxp <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = (1.0 - Kw::ruigamma($df / 2.0, $xxp / 2.0));
   }
   return ($retvalu);
}
sub chisqr_rand($ ) {
   my ($df) = @_;
   my $sum;
   my $vv;
   my $jj;
   $sum = 0.0;
   for ($jj = 1; $jj <= $df; $jj += 1) {
      $vv = gau_rand();
      $sum += $vv * $vv;
   }
   if (not Kw::isint($df)) {
      $sum += gamma_rand(frac($df) / 2.0) * 2.0;
   }
   return ($sum);
}
sub binomial_pdf($$$ ) {
   my ($prob_a, $success, $trial) = @_;
   my $retvalu;
   if ($success < 0 or $trial < $success) {
      $retvalu = 0.0;
   } else {
      $retvalu = comb($trial, $success) * Kw::pow($prob_a, $success) *
               Kw::pow(1.0 - $prob_a, $trial - $success);
   }
   return ($retvalu);
}
sub binomial_cdf($$$ ) {
   my ($prob_a, $success, $trial) = @_;
   my $lsum;
   my $sfactor;
   my $ss;
   my $mu;
   my $kk;
   if ($prob_a <= 0.0 or $success < 0) {
      $lsum = 0.0;
   } elsif (1.0 <= $prob_a or $trial <= $success) {
      $lsum = 1.0;
   } else {
      if ($trial <= 2 * $success) {
         $ss = $trial - $success - 1;
         $prob_a = 1.0 - $prob_a;
      } else {
         $ss = $success;
      }
      $sfactor = Kw::pow(1.0 - $prob_a, $trial);
      $mu = $prob_a / (1.0 - $prob_a);
      $lsum = 0.0;
      for ($kk = 0; $kk <= $ss; $kk += 1) {
         $lsum += $sfactor;
         $sfactor *= ($mu * ($trial - $kk)) / ($kk + 1.0);
      }
      if ($ss != $success) {
         $lsum = 1.0 - $lsum;
      }
   }
   return ($lsum);
}
sub binomial_rand($$ ) {
   my ($prob_a, $rr) = @_;
   my $successes;
   $successes = 0.0;
   while (0 < $rr) {
      if (randd() < $prob_a) {
         $successes += 1;
      }
      $rr -= 1;
   }
   return ($successes);
}
sub benford_pdf($$ ) {
   my ($max_kk, $kk) = @_;
   my $retvalu;
   if ($kk <= 0.0 or $max_kk <= $kk) {
      $retvalu = 0.0;
   } else {
      $retvalu = log(1.0 + 1.0 / $kk) / log($max_kk);
   }
   return ($retvalu);
}
sub benford_cdf($$ ) {
   my ($max_kk, $kk) = @_;
   my $retvalu;
   if ($kk <= 0.0) {
      $retvalu = 0.0;
   } elsif ($max_kk <= $kk) {
      $retvalu = 1.0;
   } else {
      $retvalu = log($kk + 1.0) / log($max_kk);
   }
   return ($retvalu);
}
sub benford_rand($ ) {
   my ($max_kk) = @_;
   my $ii;
   my $summ;
   my $target;
   $target = randd();
   $summ = 0.0;
   $ii = 1;
   for (;;) {
      $summ += log(1.0 + 1.0 / $ii) / log($max_kk);
      if ($target <= $summ) {
         last; # loop AWAIT
      }
      $ii += 1;
   }
   return ($ii);
}
sub nbd_pdf($$$ ) {
   my ($prob_a, $rsuccesses, $kfailures) = @_;
   return (comb($rsuccesses + $kfailures - 1, $kfailures) *
            Kw::pow($prob_a, $rsuccesses) * Kw::pow(1.0 - $prob_a,
            $kfailures));
}
sub nbd_cdf($$$ ) {
   my ($prob_a, $rsuccesses, $kfailures) = @_;
   return (1.0 - betainc($kfailures + 1, $rsuccesses, 1.0 - $prob_a));
}
sub nbd_rand($$ ) {
   my ($prob_a, $rsuccesses) = @_;
   my $failures;
   my $rr;
   $rr = $rsuccesses;
   $failures = 0;
   while (0 < $rr) {
      if (randd() <= $prob_a) {
         $rr -= 1;
      } else {
         $failures += 1;
      }
   }
   return ($failures);
}
sub polya_pdf($$$ ) {
   my ($prob_a, $rsuccesses, $kfailures) = @_;
   return (combx($rsuccesses + $kfailures - 1, $kfailures) * Kw::pow(1.0
            - $prob_a, $kfailures) * Kw::pow($prob_a, $rsuccesses));
}
sub polya_cdf($$$ ) {
   my ($prob_a, $rsuccesses, $kfailures) = @_;
   return (1.0 - betainc($kfailures + 1, $rsuccesses, 1.0 - $prob_a));
}
sub polya_rand($$ ) {
   my ($tt, $probx) = @_;
   my $nn;
   my $ff;
   my $rr;
   my $uu;
   my $qq;
   $nn = 0;
   $ff = $tt - 1;
   $qq = exp($tt * log($probx));
   $rr = $qq;
   $uu = randd();
   while ($rr <= $uu) {
      $nn += 1;
      $ff += 1;
      $qq *= (1.0 - $probx) * $ff / $nn;
      $rr += $qq;
   }
   return ($nn);
}
sub zeta_pdf($$ ) {
   my ($ss, $ixxp) = @_;
   my $retvalu;
   if ($ixxp <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 1.0 / (Kw::zeta($ss) * Kw::pow($ixxp, $ss));
   }
   return ($retvalu);
}
sub zeta_cdf($$ ) {
   my ($ss, $ixxp) = @_;
   my $retvalu;
   if ($ixxp <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = Kw::hnm($ixxp, $ss) / Kw::zeta($ss);
   }
   return ($retvalu);
}
sub ks_cdf($$ ) {
   my ($para_nn, $xx) = @_;
   my $retvalu;
   my $two_tt_sqr;
   my $kk;
   my $sum;
   my $tt;
   if ($para_nn <= 0 or $xx <= 0.0) {
      $retvalu = 0.0;
   } else {
      if (30 < $para_nn) {
         $tt = $xx;
         $two_tt_sqr = 2.0 * $tt * $tt;
         $sum = exp(-$two_tt_sqr) * (1.0 - 2.0 * $tt / (3.0 *
                  sqrt($para_nn)) - $two_tt_sqr * ($two_tt_sqr / 9.0 -
                  1.0 / 3.0) / $para_nn);
         $retvalu = 1.0 - $sum;
      } else {
         $tt = $xx * sqrt($para_nn);
         $sum = 0.0;
         $kk = $para_nn;
         while ($tt < $kk) {
            $sum += Kw::comb($para_nn, $kk) * Kw::pow($kk - $tt, $kk) *
                     Kw::pow($tt + $para_nn - $kk, $para_nn - $kk - 1);
            $kk -= 1;
         }
         $retvalu = 1.0 - $sum * $tt / Kw::pow($para_nn, $para_nn);
      }
   }
   return ($retvalu);
}
sub ks_a_cdf($ ) {
   my ($xx) = @_;
   my $sum;
   my $sum_prev;
   my $vv;
   my $kk;
   my $retvalu;
   if ($xx < 0.0001) {
      $retvalu = 0.0;
   } else {
      $sum = 0.0;
      $vv = -Kw::square(Kw::PI / $xx) / 8.0;
      $kk = 1;
      for (;;) {
         $sum_prev = $sum;
         $sum += exp($vv * $kk * $kk);
         if (Kw::iseq($sum, $sum_prev)) {
            last; # loop AWAIT
         }
         $kk += 2;
      }
      $retvalu = $sum * sqrt(Kw::TAU) / $xx;
   }
   return ($retvalu);
}
sub ks_b_cdf($$ ) {
   my ($para_nn, $xx) = @_;
   my $retvalu;
   my $nxx;
   if ($xx < 0.0001 or $para_nn <= 0) {
      $retvalu = 0.0;
   } else {
      $nxx = $xx + (2.0 * sqrt($para_nn) + 3.0 * $xx - 3.0) / (12.0 *
               $para_nn);
      $retvalu = ks_a_cdf($nxx);
   }
   return ($retvalu);
}
sub ks_quantile($$ ) {
   my ($para_nn, $probx) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   if (not Kw::isbetween($probx, 0.0, 1.0)) {
      $scvx_xx = 0.0;
   } else {
      $scvx_dx = 0.5;
      $scvx_xx = 0.25;
      $scvx_yy = $probx - ks_cdf($para_nn, $scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $probx - ks_cdf($para_nn, $scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub t_pdf($$ ) {
   my ($dfn, $xx) = @_;
   return (Kw::tgamma(($dfn + 1.0) / 2.0) * Kw::pow((1.0 +
            Kw::square($xx) / $dfn), (-($dfn + 1.0) / 2.0)) / (sqrt($dfn
            * Kw::PI) * Kw::tgamma($dfn / 2.0)));
}
{
sub lf_subtprob($$ ) {
   my ($para_nnx, $xx) = @_;
      my $aa;
      my $bb;
      my $ww;
      my $zz;
      my $yy;
      my $ii;
      my $para_nn;
      my $retvalu;
      $para_nn = floorl(abs($para_nnx));
      $ww = atan2($xx, sqrt($para_nn));
      $zz = Kw::square(cos($ww));
      $yy = 1.0;
      $ii = $para_nn - 2.0;
      while (2.0 <= $ii) {
         $yy = 1.0 + ($ii - 1.0) / $ii * $zz * $yy;
         $ii -= 2.0;
      }
      if (Kw::iseven($para_nn)) {
         $aa = sin($ww) / 2.0;
         $bb = 0.5;
      } else {
         if ($para_nn == 1) {
            $aa = 0.0;
         } else {
            $aa = sin($ww) * cos($ww) / Kw::PI;
         }
         $bb = 0.5 + $ww / Kw::PI;
      }
      $retvalu = $bb + $aa * $yy;
      if (1.0 < $retvalu) {
         $retvalu = 1.0;
      }
      return ($retvalu);
   }
   sub t_cdf($$ ) {
      my ($dfx, $xx) = @_;
      return (lf_subtprob($dfx, $xx));
   }
}
{
sub lf_t_quantile($$ ) {
   my ($ndfx, $probx) = @_;
      my $ux;
      my $uxsq;
      my $aa_x;
      my $bb_x;
      my $cc_x;
      my $dd_x;
      my $ee_x;
      my $retvalu;
      my $delta;
      my $pp_a;
      my $nn_a;
      my $out_sign;
      if ($probx < 0.5) {
         $probx = 1.0 - $probx;
         $out_sign = -1;
      } else {
         $out_sign = 1;
      }
      $ux = normal_quantile($probx);
      $uxsq = Kw::square($ux);
      $aa_x = ((1.0) * $uxsq + 1.0) / 4.0;
      $bb_x = (((5.0) * $uxsq + 16.0) * $uxsq + 3.0) / 96.0;
      $cc_x = ((((3.0) * $uxsq + 19.0) * $uxsq + 17.0) * $uxsq - 15.0) /
               384.0;
      $dd_x = (((((79.0) * $uxsq + 776.0) * $uxsq + 1482.0) * $uxsq -
               1920.0) * $uxsq - 945.0) / 92160.0;
      $ee_x = ((((((27.0) * $uxsq + 339.0) * $uxsq + 930.0) * $uxsq -
               1782.0) * $uxsq - 765.0) * $uxsq - 17955.0) / 368640.0;
      $retvalu = $ux * (1.0 + ($aa_x + ($bb_x + ($cc_x + ($dd_x + $ee_x /
               $ndfx) / $ndfx) / $ndfx) / $ndfx) / $ndfx);
      if ($ndfx <= Kw::square(Kw::log10($probx)) + 3.0) {
         $nn_a = $ndfx + 1.0;
         for (;;) {
            $pp_a = lf_subtprob($ndfx, $retvalu);
            $ee_x = ($nn_a * log($nn_a / ($ndfx + Kw::square($retvalu)))
                     + log($ndfx / $nn_a / Kw::TAU) - 1.0 + (1.0 / $nn_a
                     - 1.0 / $ndfx) / 6.0) / 2.0;
            if (Kw::DBLMAXLN / 2.0 < $ee_x) {
               $delta = 0.0;
            } else {
               $delta = ($pp_a - $probx) / exp($ee_x);
            }
            $retvalu -= $delta;
            $aa_x = abs($delta) * 10000.0;
            if (Kw::iszero($retvalu) or $aa_x < $retvalu) {
               last; # loop AWAIT
            }
         }
      }
      return ($out_sign * $retvalu);
   }
   sub t_quantile($$ ) {
      my ($dfx, $probx) = @_;
      my $ndfx;
      my $retvalu;
      $ndfx = floor(abs($dfx));
      if (Kw::iszero($probx - 0.5)) {
         $retvalu = 0.0;
      } elsif ($probx <= 0.0) {
         $retvalu = -Kw::DBLMAX;
      } elsif (1.0 <= $probx) {
         $retvalu = Kw::DBLMAX;
      } else {
         $retvalu = lf_t_quantile($ndfx, $probx);
      }
      return ($retvalu);
   }
}
sub t_cdf__1($$ ) {
   my ($dfx, $xx) = @_;
   my $zz;
   my $yy;
   $yy = sqrt($dfx + $xx * $xx);
   $zz = ($xx + $yy) / (2.0 * $yy);
   return (Kw::betainc__1($dfx / 2.0, $dfx / 2.0, $zz));
}
sub t_quantile__1($$ ) {
   my ($dfx, $probx) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   if (not Kw::isbetween($probx, 0.0, 1.0)) {
      $scvx_xx = 0.0;
   } else {
      $scvx_dx = 0.5;
      $scvx_xx = 0.25;
      $scvx_yy = $probx - t_cdf($dfx, $scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $probx - t_cdf($dfx, $scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub f_cdf($$$ ) {
   my ($dfn_a, $dfn_b, $xx) = @_;
   my $aa;
   my $bb;
   my $gg;
   $aa = $dfn_a / 2.0;
   $bb = $dfn_b / 2.0;
   $gg = $aa * $xx;
   return (beta_cdf($aa, $bb, $gg / ($bb + $gg)));
}
{
sub lf_subfprob($$$ ) {
   my ($dfn_a, $dfn_b, $xx) = @_;
      my $retvalu;
      my $zx;
      my $ax;
      my $bx;
      my $yx;
      my $ix;
      my $pp_a;
      if ($xx <= 0.0) {
         $retvalu = 1.0;
      } elsif (Kw::iseven($dfn_b)) {
         $zx = $dfn_b / ($dfn_b + $dfn_a * $xx);
         $ax = 1.0;
         for ($ix = $dfn_b - 2; 2 <= $ix; $ix -= 2) {
            $ax = 1.0 + ($dfn_a + $ix - 2.0) / $ix * $zx * $ax;
         }
         $retvalu = 1.0 - (Kw::pow(1.0 - $zx, $dfn_a / 2.0) * $ax);
      } elsif (Kw::iseven($dfn_a)) {
         $zx = $dfn_a * $xx / ($dfn_b + $dfn_a * $xx);
         $ax = 1.0;
         for ($ix = $dfn_a - 2; 2 <= $ix; $ix -= 2) {
            $ax = 1.0 + ($dfn_b + $ix - 2.0) / $ix * $zx * $ax;
         }
         $retvalu = Kw::pow(1.0 - $zx, $dfn_b / 2.0) * $ax;
      } else {
         $yx = atan2(sqrt($dfn_a * $xx / $dfn_b), 1.0);
         $zx = Kw::square(sin($yx));
         if ($dfn_a == 1) {
            $ax = 0.0;
         } else {
            $ax = 1.0;
         }
         for ($ix = $dfn_a - 2; 3 <= $ix; $ix -= 2) {
            $ax = 1.0 + ($dfn_b + $ix - 2.0) / $ix * $zx * $ax;
         }
         $bx = Kw::PI;
         for ($ix = 2; $ix <= $dfn_b - 1; $ix += 2) {
            $bx *= ($ix - 1.0) / $ix;
         }
         $pp_a = 2.0 / $bx * sin($yx) * Kw::pow(cos($yx), $dfn_b) * $ax;
         $zx = Kw::square(cos($yx));
         if ($dfn_b == 1) {
            $ax = 0.0;
         } else {
            $ax = 1.0;
         }
         for ($ix = $dfn_b - 2; 3 <= $ix; $ix -= 2) {
            $ax = 1.0 + ($ix - 1.0) / $ix * $zx * $ax;
         }
         $retvalu = $pp_a + 1.0 - 4.0 * ($yx + sin($yx) * cos($yx) * $ax)
                  / Kw::TAU;
         if ($retvalu < 0.0) {
            $retvalu = 0.0;
         }
      }
      return ($retvalu);
   }
   sub lf_subf_two($$$ ) {
      my ($nx, $qq, $pp) = @_;
      my $uu;
      my $nxs;
      my $xx_prev;
      my $xx;
      my $zz;
      $uu = chisqr_cdf($nx, $pp);
      $nxs = $nx - 2.0;
      $xx = ($uu / $nx * (1.0 + (($uu - $nxs) / 2.0 + (((4.0 * $uu - 11.0
               * $nxs) * $uu + $nxs * (7.0 * $nx - 10.0)) / 24.0 + (((2.0
               * $uu - 10.0 * $nxs) * $uu + $nxs * (17.0 * $nx - 26.0)) *
               $uu - $nxs * $nxs * (9.0 * $nx - 6.0)) / 48.0 / $qq) /
               $qq) / $qq));
      for (;;) {
         if ($xx <= 0.0) {
            last;
         }
         $zz = exp((($nx + $qq) * log(($nx + $qq) / ($nx * $xx + $qq)) +
                  ($nx - 2.0) * log($xx) + log($nx * $qq / ($nx + $qq)) -
                  Kw::TWOLN - log(Kw::TAU) - (1.0 / $nx + 1.0 / $qq - 1.0
                  / ($nx + $qq)) / 6.0) / 2.0);
         $xx_prev = $xx;
         $xx += (lf_subfprob($nx, $qq, $xx) - $pp) / $zz;
         if (Kw::iswithin($xx, $xx_prev, 0.00001)) {
            last; # loop AWAIT
         }
      }
      return ($xx);
   }
   sub lf_subfx($$$ ) {
      my ($nx, $jj, $pp) = @_;
      my $retvalu;
      my $uu;
      my $aa;
      if (Kw::iseq($pp, 1.0)) {
         $retvalu = 0.0;
      } elsif ($jj == 0) {
         $retvalu = 1.0 / Kw::square(t_quantile($nx, 0.5 - $pp / 2.0));
      } elsif ($nx == 1) {
         $retvalu = Kw::square(t_quantile($jj, $pp / 2.0));
      } elsif ($jj == 2) {
         $uu = chisqr_cdf($jj, 1.0 - $pp);
         $aa = $jj - 2.0;
         $retvalu = 1.0 / ($uu / $jj * (1.0 + (($uu - $aa) / 2.0 + (((4.0
                  * $uu - 11.0 * $aa) * $uu + $aa * (7.0 * $jj - 10)) /
                  24.0 + (((2.0 * $uu - 10.0 * $aa) * $uu + $aa * (17.0 *
                  $jj - 26)) * $uu - $aa * $aa * (9.0 * $jj - 6.0)) /
                  48.0 / $nx) / $nx) / $nx));
      } elsif ($jj < $nx) {
         $retvalu = 1.0 / lf_subf_two($jj, $nx, 1.0 - $pp);
      } else {
         $retvalu = lf_subf_two($nx, $jj, $pp);
      }
      return ($retvalu);
   }
   sub f_quantile($$$ ) {
      my ($dfn_a, $dfn_b, $probx) = @_;
      return (lf_subfx($dfn_a, $dfn_b, 1.0 - $probx));
   }
}
sub f_quantile__1($$$ ) {
   my ($dfn_a, $dfn_b, $probx) = @_;
   my $retvalu;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   if ($probx <= 0.0) {
      $retvalu = 0.0;
   } elsif (1.0 <= $probx) {
      $retvalu = 1.0;
   } else {
      $scvx_dx = 0.50;
      $scvx_xx = 0.25;
      $scvx_yy = $probx - f_cdf($dfn_a, $dfn_b, $scvx_xx);
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $probx - f_cdf($dfn_a, $dfn_b, $scvx_xx);
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
      $retvalu = $scvx_xx;
   }
   return ($retvalu);
}
sub mb_pdf($$ ) {
   my ($aa, $xx) = @_;
   return (sqrt(4 / Kw::TAU) * $xx * $xx * exp(-$xx * $xx / (2 * $aa *
            $aa)) / ($aa * $aa * $aa));
}
sub mb_cdf($$ ) {
   my ($aa, $xx) = @_;
   return (Kw::erf($xx / (Kw::TWOSQRT * $aa)) - sqrt(4 / Kw::TAU) * $xx *
            exp(-$xx * $xx / (2 * $aa * $aa)) / $aa);
}
sub maxwell_boltzmann_pdf($$$ ) {
   my ($temperature, $molecular_mass, $velocity) = @_;
   my $aa;
   $aa = sqrt(Kw::BOLTZMANN * $temperature / $molecular_mass);
   return (mb_pdf($aa, $velocity));
}
sub maxwell_boltzmann_cdf($$$ ) {
   my ($temperature, $molecular_mass, $velocity) = @_;
   my $aa;
   $aa = sqrt(Kw::BOLTZMANN * $temperature / $molecular_mass);
   return (mb_cdf($aa, $velocity));
}
sub maxwell_juttner_pdf($$$ ) {
   my ($temperature, $molecular_mass, $velocity) = @_;
   my $gmm;
   my $bt;
   my $rtht;
   my $dn;
   my $retvalu;
   if ($temperature <= 0.0 or $velocity <= 0.0 or Kw::LIGHT <= $velocity
            or $molecular_mass <= 0.0) {
      $retvalu = 0.0;
   } else {
      $rtht = ($molecular_mass * Kw::LIGHT * Kw::LIGHT) / (Kw::BOLTZMANN
               * $temperature);
      $bt = $velocity / Kw::LIGHT;
      $gmm = 1.0 / Kw::topyh1($bt);
      $dn = Kw::bessKn(2, $rtht);
      if (Kw::iszero($dn)) {
         $retvalu = 0.0;
      } else {
         $retvalu = $gmm * $gmm * $bt * $rtht * exp(-$gmm * $rtht) / $dn;
      }
   }
   return ($retvalu);
}
sub blackbodyl_pdf($ ) {
   my ($wavelen) = @_;
   my $retvalu;
   if ($wavelen <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = Kw::pow($wavelen, -5.0) / (exp(1.0 / $wavelen) - 1.0);
   }
   return ($retvalu * 15.0 / Kw::pow(Kw::PI, 4.0));
}
sub blackbodyf_pdf($ ) {
   my ($freq) = @_;
   my $retvalu;
   if ($freq <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = Kw::pow($freq, 3.0) / (exp($freq) - 1.0);
   }
   return ($retvalu * 15.0 / Kw::pow(Kw::PI, 4.0));
}
sub ints_rand($\@ ) {
   my ($para_nn, $prob_arr_pc) = @_;
   my $sum;
   my $p_ind;
   my $rndm;
   my $hh;
   $sum = 0.0;
   for ($p_ind = 0; $p_ind <= $para_nn - 1; $p_ind += 1) {
      $sum += $$prob_arr_pc[$p_ind];
   }
   $rndm = randd();
   $hh = 0.0;
   for ($p_ind = 0; $p_ind <= $para_nn - 1; $p_ind += 1) {
      $hh += $$prob_arr_pc[$p_ind] / $sum;
      if ($rndm < $hh) {
         last;
      }
   }
   return ($p_ind);
}
{
sub lf_num2norm($ ) {
   my ($numm) = @_;
      my $retvalu;
      if ($numm <= 1) {
         $retvalu = 0.0;
      } else {
         $retvalu = 3.0 * sqrt(log($numm)) - 1.4 - (0.5 * log($numm) -
                  0.39) / $numm;
      }
      return ($retvalu);
   }
   sub stdev2spread($$ ) {
      my ($numm, $stdevx) = @_;
      my $retvalu;
      if ($numm <= 1 or Kw::iszero($stdevx)) {
         $retvalu = 0.0;
      } else {
         $retvalu = ($stdevx * lf_num2norm($numm));
      }
      return ($retvalu);
   }
   sub spread2stdev($$ ) {
      my ($numm, $spread) = @_;
      my $retvalu;
      if ($numm <= 1 or Kw::iszero($spread)) {
         $retvalu = 0.0;
      } else {
         $retvalu = ($spread / lf_num2norm($numm));
      }
      return ($retvalu);
   }
}
sub maxabs($\@ ) {
   my ($nn, $data_arr_pc) = @_;
   my $ii;
   my $maxaby;
   my $amaxaby;
   my $atemp;
   $maxaby = $$data_arr_pc[0];
   $amaxaby = abs($maxaby);
   for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
      $atemp = abs($$data_arr_pc[$ii]);
      if ($amaxaby < $atemp) {
         $maxaby = $$data_arr_pc[$ii];
         $amaxaby = $atemp;
      }
   }
   return ($maxaby);
}
sub minabs($\@ ) {
   my ($nn, $data_arr_pc) = @_;
   my $ii;
   my $minaby;
   my $aminaby;
   my $atemp;
   $minaby = $$data_arr_pc[0];
   $aminaby = abs($minaby);
   for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
      $atemp = abs($$data_arr_pc[$ii]);
      if ($atemp < $aminaby) {
         $minaby = $$data_arr_pc[$ii];
         $aminaby = $atemp;
      }
   }
   return ($minaby);
}
sub maxabsoffset($$\@ ) {
   my ($offset, $nn, $data_arr_pc) = @_;
   my $ii;
   my $maxaby;
   my $delta;
   $maxaby = $$data_arr_pc[0] - $offset;
   for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
      $delta = $$data_arr_pc[$ii] - $offset;
      if (abs($maxaby) < abs($delta)) {
         $maxaby = $delta;
      }
   }
   return ($maxaby + $offset);
}
sub minabsoffset($$\@ ) {
   my ($offset, $nn, $data_arr_pc) = @_;
   my $ii;
   my $minaby;
   my $delta;
   $minaby = $$data_arr_pc[0] - $offset;
   for ($ii = 1; $ii <= $nn - 1; $ii += 1) {
      $delta = $$data_arr_pc[$ii] - $offset;
      if (abs($delta) < abs($minaby)) {
         $minaby = $delta;
      }
   }
   return ($minaby + $offset);
}
sub mini($\@ ) {
   my ($num, $data_arr_pc) = @_;
   my $curr;
   my $tmp;
   my $ii;
   $curr = $$data_arr_pc[0];
   for ($ii = 1; $ii <= $num - 1; $ii += 1) {
      $tmp = $$data_arr_pc[$ii];
      if ($tmp < $curr) {
         $curr = $tmp;
      }
   }
   return ($curr);
}
sub maxi($\@ ) {
   my ($num, $data_arr_pc) = @_;
   my $curr;
   my $tmp;
   my $ii;
   $curr = $$data_arr_pc[0];
   for ($ii = 1; $ii <= $num - 1; $ii += 1) {
      $tmp = $$data_arr_pc[$ii];
      if ($curr < $tmp) {
         $curr = $tmp;
      }
   }
   return ($curr);
}
sub maxmin($\@\@ ) {
   my ($num, $data_arr_pc, $ret_maxmin_arr_p) = @_;
   my $tmp;
   my $ii;
   my $maxx;
   my $minn;
   $minn = $$data_arr_pc[0];
   $maxx = $$data_arr_pc[0];
   for ($ii = 1; $ii <= $num - 1; $ii += 1) {
      $tmp = $$data_arr_pc[$ii];
      if ($minn < $tmp) {
         $minn = $tmp;
      }
      if ($tmp < $maxx) {
         $maxx = $tmp;
      }
   }
   $$ret_maxmin_arr_p[0] = $maxx;
   $$ret_maxmin_arr_p[1] = $minn;
   return ($maxx - $minn);
}
sub min2($$ ) {
   my ($value_a, $value_b) = @_;
   my $retvalu;
   if ($value_a < $value_b) {
      $retvalu = $value_a;
   } else {
      $retvalu = $value_b;
   }
   return ($retvalu);
}
sub max2($$ ) {
   my ($value_a, $value_b) = @_;
   my $retvalu;
   if ($value_b < $value_a) {
      $retvalu = $value_a;
   } else {
      $retvalu = $value_b;
   }
   return ($retvalu);
}
sub minabs2($$ ) {
   my ($value_a, $value_b) = @_;
   my $retvalu;
   if (abs($value_a) < abs($value_b)) {
      $retvalu = $value_a;
   } else {
      $retvalu = $value_b;
   }
   return ($retvalu);
}
sub maxabs2($$ ) {
   my ($value_a, $value_b) = @_;
   my $retvalu;
   if (abs($value_b) < abs($value_a)) {
      $retvalu = $value_a;
   } else {
      $retvalu = $value_b;
   }
   return ($retvalu);
}
sub variance($\@ ) {
   my ($nn, $xx_arr_pc) = @_;
   my $ii;
   my $delta;
   my $meanx;
   my $variancex;
   $meanx = 0.0;
   $variancex = 0.0;
   for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
      $delta = $$xx_arr_pc[$ii] - $meanx;
      $meanx += $delta / ($ii + 1.0);
      $variancex += $delta * ($$xx_arr_pc[$ii] - $meanx);
   }
   if (2 <= $nn) {
      $variancex /= ($nn - 1.0);
   } else {
      $variancex = 0.0;
   }
   return ($variancex);
}
sub mean($\@ ) {
   my ($nn, $xx_arr_pc) = @_;
   my $ii;
   my $delta;
   my $meanx;
   $meanx = 0.0;
   for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
      $delta = $$xx_arr_pc[$ii] - $meanx;
      $meanx += $delta / ($ii + 1.0);
   }
   return ($meanx);
}
{
sub LC_STTS_NUM() { 0; }
   sub LC_STTS_MEAN() { 1; }
   sub LC_STTS_MSQ() { 2; }
   sub LC_STTS_MAX() { 3; }
   sub LC_STTS_MIN() { 4; }
   sub LC_STTS_MAGIC() { 5; }
   sub LC_STTS_CNT() { 6; }
   sub LC_STTS_KEY_CNT() { 100; }
   my @lv_sttx_mtrx;
   sub lf_stts_is_inited($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      my $vll;
      my $ii;
      my $jj;
      my $retvalu_bol;
      $vll = $lv_sttx_mtrx[0][LC_STTS_MAGIC];
      if ($vll != Kw::magicset() and $vll != Kw::magicnot()) {
         for ($ii = 0; $ii <= LC_STTS_KEY_CNT - 1; $ii += 1) {
            for ($jj = 0; $jj <= LC_STTS_MAGIC - 1; $jj += 1) {
               $lv_sttx_mtrx[$ii][$jj] = 0.0;
            }
            $lv_sttx_mtrx[0][LC_STTS_MAGIC] = Kw::magicnot();
         }
      }
      if (LC_STTS_KEY_CNT <= $ix_hndl) {
         $retvalu_bol = Kw::false;
      } else {
         $vll = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAGIC];
         $retvalu_bol = Kw::ismagic($vll);
      }
      return ($retvalu_bol);
   }
   sub lf_stts_find_empty() {
      my $ix_hndl;
      $ix_hndl = 0;
      while (lf_stts_is_inited($ix_hndl)) {
         $ix_hndl += 1;
      }
      if (LC_STTS_KEY_CNT <= $ix_hndl) {
         die "lf_stts_find_empty:" . "STTS-Bad-$handle";
      }
      return ($ix_hndl);
   }
   sub stts_init($$$$$$ ) {
      my ($ix_hndl, $n_count, $meanx, $var, $minim, $maxim) = @_;
      # local-use Perl @lv_sttx_mtrx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM] = $n_count;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] = $meanx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] = $var * ($n_count - 1.0);
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] = $minim;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] = $maxim;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAGIC] = Kw::magicset();
      return ($ix_hndl);
   }
   sub stts_initx($$$$$$ ) {
      my ($ix_hndl, $num_count, $meanx, $msq, $minim, $maxim) = @_;
      # local-use Perl @lv_sttx_mtrx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM] = $num_count;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] = $meanx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] = $msq;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] = $minim;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] = $maxim;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAGIC] = Kw::magicset();
      return ($ix_hndl);
   }
   sub stts_reset($ ) {
      my ($ix_hndl) = @_;
      return (stts_init($ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0));
   }
   sub stts_new() {
      my $ix_hndl;
      $ix_hndl = lf_stts_find_empty();
      return (stts_reset($ix_hndl));
   }
   sub stts_delete($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAGIC] = Kw::magicnot();
      return ($ix_hndl);
   }
   sub sttscount($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM]);
   }
   sub sttsmean($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN]);
   }
   sub sttsmsq($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ]);
   }
   sub sttsmax($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX]);
   }
   sub sttsmin($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN]);
   }
   sub sttsmagic($ ) {
      my ($ix_hndl) = @_;
      # local-use Perl @lv_sttx_mtrx;
      return ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MAGIC]);
   }
   sub sttssum($ ) {
      my ($ix_hndl) = @_;
      return (sttsmean($ix_hndl) * sttscount($ix_hndl));
   }
   sub sttsvar($ ) {
      my ($ix_hndl) = @_;
      my $retvalu;
      if (abs(sttscount($ix_hndl)) <= 1.0) {
         $retvalu = 0.0;
      } else {
         $retvalu = (sttsmsq($ix_hndl) / (abs(sttscount($ix_hndl) - 1.0)));
      }
      return ($retvalu);
   }
   sub sttsstdev($ ) {
      my ($ix_hndl) = @_;
      my $retvalu;
      if (sttscount($ix_hndl) <= 1.0) {
         $retvalu = 0.0;
      } else {
         $retvalu = (sqrt(sttsmsq($ix_hndl) / (sttscount($ix_hndl) - 1.0)));
      }
      return ($retvalu);
   }
   sub sttsstdevmean($ ) {
      my ($ix_hndl) = @_;
      my $retvalu;
      if (sttscount($ix_hndl) <= 1.0 or sttsmsq($ix_hndl) <= 0.0) {
         $retvalu = 0.0;
      } else {
         $retvalu = (sqrt(sttsmsq($ix_hndl)) / (sttscount($ix_hndl) - 1.0));
      }
      return ($retvalu);
   }
   sub sttsspread($ ) {
      my ($ix_hndl) = @_;
      return (sttsmax($ix_hndl) - sttsmin($ix_hndl));
   }
   sub stts_update($$ ) {
      my ($ix_hndl, $new_data) = @_;
      # local-use Perl @lv_sttx_mtrx;
      my $delta;
      my $numy;
      if (not lf_stts_is_inited($ix_hndl)) {
         die "stts_update:" . "STTS-Bad-$handle";
      }
      $delta = $new_data - $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN];
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM] += 1.0;
      $numy = $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM];
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] += ($delta / $numy);
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] += ($delta * ($new_data -
               $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN]));
      if (($numy < 2.0 or sttsspread($ix_hndl) < 0.0)) {
         $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] = $new_data;
         $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] = $new_data;
      } else {
         if ($new_data < $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN]) {
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] = $new_data;
         }
         if ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] < $new_data) {
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] = $new_data;
         }
      }
      return ($delta);
   }
   sub stts_downdate($$ ) {
      my ($ix_hndl, $old_data) = @_;
      my $delt;
      my $men;
      if (not lf_stts_is_inited($ix_hndl)) {
         die "stts_downdate:" . "STTS-Bad-$handle";
      }
      $men = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN];
      $delt = $old_data - $men;
      if (0.0 < $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM]) {
         $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM] -= 1;
         if (0.0 < $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM]) {
            $men -= $delt / $lv_sttx_mtrx[$ix_hndl][LC_STTS_NUM];
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] = $men;
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] -= $delt * ($old_data -
                     $men);
            if ($lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] < 0.0) {
               $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] = 0.0;
            }
         } else {
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] = 0.0;
            $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] = 0.0;
         }
      }
      return ($delt);
   }
   sub stts_updatex($$\@ ) {
      my ($ix_hndl, $nn, $data_arr_pc) = @_;
      my $ii;
      my $retvalu;
      $retvalu = 0.0;
      for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
         $retvalu += stts_update($ix_hndl, $$data_arr_pc[$ii]);
      }
      return ($retvalu);
   }
   sub stts_newx($\@ ) {
      my ($nn, $data_arr_pc) = @_;
      my $ihndl;
      my $ii;
      $ihndl = stts_new();
      for ($ii = 0; $ii <= $nn - 1; $ii += 1) {
         stts_update($ihndl, $$data_arr_pc[$ii]);
      }
      return ($ihndl);
   }
   sub stts_shift($$ ) {
      my ($ix_hndl, $data_shift) = @_;
      # local-use Perl @lv_sttx_mtrx;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] += $data_shift;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] += $data_shift;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] += $data_shift;
      return ($ix_hndl);
   }
   sub stts_scale($$ ) {
      my ($ix_hndl, $xfactor) = @_;
      # local-use Perl @lv_sttx_mtrx;
      my $newmax;
      my $newmin;
      if (0 < $xfactor) {
         $newmax = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] * $xfactor;
         $newmin = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] * $xfactor;
      } else {
         $newmax = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] * $xfactor;
         $newmin = $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] * $xfactor;
      }
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MIN] = $newmin;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MAX] = $newmax;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MEAN] *= $xfactor;
      $lv_sttx_mtrx[$ix_hndl][LC_STTS_MSQ] *= $xfactor * $xfactor;
      return ($ix_hndl);
   }
   sub stts_copy($$ ) {
      my ($hto, $hfrom) = @_;
      # local-use Perl @lv_sttx_mtrx;
      my $ii;
      for ($ii = 0; $ii <= LC_STTS_CNT - 1; $ii += 1) {
         $lv_sttx_mtrx[$hto][$ii] = $lv_sttx_mtrx[$hfrom][$ii];
      }
      return ($hto);
   }
   sub stts_update2($$ ) {
      my ($ix_hnda, $ix_hndb) = @_;
      my $delta;
      my $ncount;
      my $nb;
      my $nmean;
      my $nmsqr;
      my $bmin;
      my $bmax;
      my $amin;
      my $amax;
      if (not lf_stts_is_inited($ix_hndb)) {
         die "stts_update2:" . "STTS-Bad-$hndb";
      }
      $nb = sttscount($ix_hndb);
      if (not Kw::iszero($nb)) {
         if (not lf_stts_is_inited($ix_hnda)) {
            die "stts_update2:" . "STTS-Bad-$hnda";
         }
         if (Kw::iszero(sttscount($ix_hnda))) {
            stts_copy($ix_hnda, $ix_hndb);
         } else {
            $delta = sttsmean($ix_hndb) - sttsmean($ix_hnda);
            $ncount = $nb + sttscount($ix_hnda);
            $nmean = sttsmean($ix_hnda) + $delta * $nb / $ncount;
            $nmsqr = (sttsmsq($ix_hnda) + sttsmsq($ix_hndb) + $delta *
                     $delta * sttscount($ix_hnda) * $nb / $ncount);
            $amin = sttsmin($ix_hnda);
            $amax = sttsmax($ix_hnda);
            $bmin = sttsmin($ix_hndb);
            $bmax = sttsmax($ix_hndb);
            if ($amax < $amin) {
               $amin = $bmin;
               $amax = $bmax;
            } else {
               if ($bmin < $amin) {
                  $amin = $bmin;
               }
               if ($amax < $bmax) {
                  $amax = $bmax;
               }
            }
            stts_init($ix_hnda, $ncount, $nmean, $nmsqr / ($ncount - 1.0)
                     , $amin, $amax);
         }
      }
      return ($ix_hnda);
   }
{
   sub LC_STTSC_XX() { 0; }
      sub LC_STTSC_YY() { 1; }
      sub LC_STTSC_COVAR() { 2; }
      sub LC_STTSC_MAGIC() { 3; }
      sub LC_STTSC_CNT() { 4; }
      my @lv_crx_mtrx;
      sub lf_corr_is_init($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $retvalu_bol;
         my $vll;
         if (LC_STTS_KEY_CNT <= $ix_chnd) {
            $retvalu_bol = Kw::false;
         } else {
            $vll = $lv_crx_mtrx[$ix_chnd][LC_STTSC_MAGIC];
            $retvalu_bol = Kw::ismagic($vll);
         }
         return ($retvalu_bol);
      }
      sub lf_corr_find_empty() {
         my $ix_chnd;
         $ix_chnd = 0;
         while (lf_corr_is_init($ix_chnd)) {
            $ix_chnd += 1;
         }
         if (LC_STTS_KEY_CNT <= $ix_chnd) {
            die "lf_corr_find_empty:" . "STTS-No-$empty-$handle";
         }
         return ($ix_chnd);
      }
      sub corr_new() {
         # local-use Perl @lv_crx_mtrx;
         my $ix_chnd;
         $ix_chnd = lf_corr_find_empty();
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_XX] = stts_new();
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_YY] = stts_new();
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR] = 0.0;
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_MAGIC] = Kw::magicset();
         return ($ix_chnd);
      }
      sub corr_delete($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_MAGIC] = Kw::magicnot();
         stts_delete($lv_crx_mtrx[$ix_chnd][LC_STTSC_XX]);
         stts_delete($lv_crx_mtrx[$ix_chnd][LC_STTSC_YY]);
         return ($ix_chnd);
      }
      sub corr_handlex($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         return ($lv_crx_mtrx[$ix_chnd][LC_STTSC_XX]);
      }
      sub corr_handley($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         return ($lv_crx_mtrx[$ix_chnd][LC_STTSC_YY]);
      }
      sub corr_update($$$ ) {
         my ($ix_chnd, $xx, $yy) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $num;
         my $ddxx;
         my $ddyy;
         my $yyhnd;
         my $xxhnd;
         $yyhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_YY];
         $xxhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_XX];
         $num = sttscount($xxhnd);
         $ddxx = stts_update($xxhnd, $xx);
         $ddyy = stts_update($yyhnd, $yy);
         $lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR] += ($ddxx * $ddyy * $num
                  / ($num + 1.0));
         return ($lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR]);
      }
      sub corrslope($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $den;
         my $retvalu;
         my $xxhnd;
         $xxhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_XX];
         $den = sttsmsq($xxhnd);
         if (Kw::iszero($den)) {
            $retvalu = 0.0;
         } else {
            $retvalu = $lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR] / $den;
         }
         return ($retvalu);
      }
      sub corry0($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $retvalu;
         my $yyhnd;
         my $xxhnd;
         $yyhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_YY];
         $xxhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_XX];
         $retvalu = (sttsmean($yyhnd) - corrslope($ix_chnd) *
                  sttsmean($xxhnd));
         return ($retvalu);
      }
      sub corrcorr($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $retvalu;
         my $xxmsq;
         my $yymsq;
         my $den;
         $xxmsq = sttsmsq($lv_crx_mtrx[$ix_chnd][LC_STTSC_XX]);
         $yymsq = sttsmsq($lv_crx_mtrx[$ix_chnd][LC_STTSC_YY]);
         $den = $xxmsq * $yymsq;
         if (Kw::iszero($den)) {
            $retvalu = 0.0;
         } else {
            $retvalu = ($lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR] / sqrt($den));
         }
         return ($retvalu);
      }
      sub corrstderr($ ) {
         my ($ix_chnd) = @_;
         # local-use Perl @lv_crx_mtrx;
         my $yyhnd;
         my $diff;
         my $retvalu;
         $yyhnd = $lv_crx_mtrx[$ix_chnd][LC_STTSC_YY];
         $diff = sttsmsq($yyhnd) - (corrslope($ix_chnd) *
                  $lv_crx_mtrx[$ix_chnd][LC_STTSC_COVAR]);
         if ($diff < 0.0) {
            $retvalu = 0.0;
         } else {
            $retvalu = sqrt($diff / (sttscount($yyhnd) - 2.0));
         }
         return ($retvalu);
      }
}
}
sub fit_poly($\@\@ ) {
   my ($num_points, $pts_arr_pc, $ret_coeff_arr_p) = @_;
   my $i_ind;
   my $j_ind;
   my $k_ind;
   my $prod;
   my @cc_arr;
   for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
      $cc_arr[$j_ind] = $$pts_arr_pc[2 * $j_ind + 1];
   }
   for ($j_ind = 1; $j_ind <= $num_points - 1; $j_ind += 1) {
      $k_ind = $num_points - 1 - $j_ind;
      for ($i_ind = $num_points - 1; $j_ind <= $i_ind; $i_ind -= 1) {
         $cc_arr[$i_ind] = (($cc_arr[$i_ind - 1] - $cc_arr[$i_ind]) /
                  ($$pts_arr_pc[2 * $k_ind] - $$pts_arr_pc[2 * $i_ind]));
         $k_ind -= 1;
      }
   }
   for ($j_ind = 0; $j_ind <= $num_points - 2; $j_ind += 1) {
      for ($i_ind = $num_points - 2; $j_ind <= $i_ind; $i_ind -= 1) {
         $prod = $cc_arr[$i_ind + 1] * $$pts_arr_pc[2 * ($i_ind - $j_ind)];
         $cc_arr[$i_ind] -= $prod;
      }
   }
   for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
      $$ret_coeff_arr_p[$j_ind] = $cc_arr[$j_ind];
   }
   return ($num_points);
}
{
sub LC_PARABOLA_X_AXIS() { 0; }
   sub LC_PARABOLA_Y_EXTREMA() { 1; }
   sub LC_PARABOLA_REAL_ROOTS() { 2; }
   sub LC_PARABOLA_ROOT_A() { 3; }
   sub LC_PARABOLA_ROOT_B() { 4; }
   sub LC_PARABOLA_COEFF_C() { 5; }
   sub LC_PARABOLA_COEFF_B() { 6; }
   sub LC_PARABOLA_COEFF_A() { 7; }
   my @lv_parabola_arr;
   sub parabola_solve($$$$$$ ) {
      my ($xx_a, $yy_a, $xx_b, $yy_b, $xx_c, $yy_c) = @_;
      # local-use Perl @lv_parabola_arr;
      my @pts_arr;
      my @cc_arr;
      my $disc;
      my $axis;
      my $yyextrema;
      my $real_roots;
      my @roots_arr;
      $pts_arr[0] = $xx_a;
      $pts_arr[1] = $yy_a;
      $pts_arr[2] = $xx_b;
      $pts_arr[3] = $yy_b;
      $pts_arr[4] = $xx_c;
      $pts_arr[5] = $yy_c;
      fit_poly(3, @pts_arr, @cc_arr);
      $roots_arr[0] = Kw::DBLMAX;
      $roots_arr[1] = Kw::DBLMAX;
      if (Kw::iszero($cc_arr[2])) {
         $axis = Kw::DBLMAX;
         if (Kw::iszero($cc_arr[1])) {
            $yyextrema = $cc_arr[0];
            $real_roots = 0;
         } else {
            $yyextrema = Kw::DBLMAX;
            $real_roots = 1;
            $roots_arr[0] = (-$cc_arr[0] / $cc_arr[1]);
         }
      } else {
         $axis = (-$cc_arr[1] / (2.0 * $cc_arr[2]));
         $yyextrema = ($cc_arr[0] + $xx_a * ($cc_arr[1] + $xx_a *
                  $cc_arr[2]));
         $disc = ($cc_arr[1] * $cc_arr[1] - 4.0 * $cc_arr[2] * $cc_arr[0]);
         if (Kw::iszero($disc)) {
            $real_roots = 1;
            $roots_arr[0] = $axis;
         } elsif (0 < $disc) {
            $disc = sqrt($disc) / (2.0 * $cc_arr[2]);
            $real_roots = 2;
            $roots_arr[0] = $axis - $disc;
            $roots_arr[1] = $axis + $disc;
         } else {
            $real_roots = 0;
         }
      }
      $lv_parabola_arr[LC_PARABOLA_X_AXIS] = $axis;
      $lv_parabola_arr[LC_PARABOLA_Y_EXTREMA] = $yyextrema;
      $lv_parabola_arr[LC_PARABOLA_REAL_ROOTS] = $real_roots;
      $lv_parabola_arr[LC_PARABOLA_ROOT_A] = $roots_arr[0];
      $lv_parabola_arr[LC_PARABOLA_ROOT_B] = $roots_arr[1];
      $lv_parabola_arr[LC_PARABOLA_COEFF_C] = $cc_arr[0];
      $lv_parabola_arr[LC_PARABOLA_COEFF_B] = $cc_arr[1];
      $lv_parabola_arr[LC_PARABOLA_COEFF_A] = $cc_arr[2];
      return ($axis);
   }
   sub parabola_get($ ) {
      my ($ii_ind) = @_;
      # local-use Perl @lv_parabola_arr;
      my $retvalu;
      if (0 <= $ii_ind and $ii_ind <= 7) {
         $retvalu = $lv_parabola_arr[$ii_ind];
      } else {
         $retvalu = 0;
      }
      return ($retvalu);
   }
   sub parabola_roots($ ) {
      my ($ii_ind) = @_;
      my $retvalu;
      if (0 <= $ii_ind and $ii_ind <= 1) {
         $retvalu = parabola_get($ii_ind + LC_PARABOLA_ROOT_A);
      } else {
         $retvalu = Kw::DBLMAX;
      }
      return ($retvalu);
   }
   sub parabola_yextrema() {
      return (parabola_get(LC_PARABOLA_Y_EXTREMA));
   }
   sub parabola_xaxis() {
      return (parabola_get(LC_PARABOLA_X_AXIS));
   }
   sub parabola_realroots() {
      return (parabola_get(LC_PARABOLA_REAL_ROOTS));
   }
}
{
sub LC_CIRCLE_X() { 0; }
   sub LC_CIRCLE_Y() { 1; }
   sub LC_CIRCLE_RADIUS() { 2; }
   my @lv_circle_arr;
   sub circle_solve($$$$$$ ) {
      my ($x_a, $y_a, $x_b, $y_b, $x_c, $y_c) = @_;
      # local-use Perl @lv_circle_arr;
      my $y_ba;
      my $x_ba;
      my $y_ca;
      my $x_ca;
      my $det;
      my $xy_ba;
      my $xy_ca;
      my $center_x;
      my $center_y;
      my $radius;
      $y_ba = $y_b - $y_a;
      $x_ba = $x_b - $x_a;
      $y_ca = $y_c - $y_a;
      $x_ca = $x_c - $x_a;
      $det = 2.0 * ($y_ba * $x_ca - $y_ca * $x_ba);
      if (not Kw::iszero($det)) {
         $xy_ba = $y_ba * ($y_a + $y_b) + $x_ba * ($x_a + $x_b);
         $xy_ca = $y_ca * ($y_a + $y_c) + $x_ca * ($x_a + $x_c);
         $center_x = ($y_ba * $xy_ca - $y_ca * $xy_ba) / $det;
         $center_y = ($x_ca * $xy_ba - $x_ba * $xy_ca) / $det;
         $radius = Kw::hypot($center_x - $x_a, $center_y - $y_a);
      } else {
         $center_x = Kw::DBLMAX;
         $center_y = Kw::DBLMAX;
         $radius = Kw::DBLMAX;
      }
      $lv_circle_arr[LC_CIRCLE_X] = $center_x;
      $lv_circle_arr[LC_CIRCLE_Y] = $center_y;
      $lv_circle_arr[LC_CIRCLE_RADIUS] = $radius;
      return ($radius);
   }
   sub circle_get($ ) {
      my ($ii_ind) = @_;
      # local-use Perl @lv_circle_arr;
      my $retvalu;
      if (0 <= $ii_ind and $ii_ind <= 2) {
         $retvalu = $lv_circle_arr[$ii_ind];
      } else {
         $retvalu = 0;
      }
      return ($retvalu);
   }
}
sub fit_minmax($\@\@ ) {
   my ($num_points, $pt_arr_pc, $ret_coeff_arr_p) = @_;
   my @xxp_arr;
   my @yyp_arr;
   my $i_ind;
   my $j_ind;
   my $k_ind;
   my $this_spr;
   my $nx_spr;
   my $nx_a;
   my $nx_b;
   my $dxx;
   my $dyy;
   my $pty;
   my $epsxx;
   my $epsyy;
   my $slope_t;
   my $intercept_t;
   my $max_dyy;
   my $min_dyy;
   $epsxx = 0.0;
   $epsyy = 0.0;
   for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
      $xxp_arr[$j_ind] = $$pt_arr_pc[2 * $j_ind];
      $yyp_arr[$j_ind] = $$pt_arr_pc[2 * $j_ind + 1];
      if ($epsxx < abs($xxp_arr[$j_ind])) {
         $epsxx = abs($xxp_arr[$j_ind]);
      }
      if ($epsyy < abs($yyp_arr[$j_ind])) {
         $epsyy = abs($yyp_arr[$j_ind]);
      }
   }
   $nx_spr = -1;
   $nx_a = 0;
   $nx_b = 0;
   $epsxx *= 16 * Kw::DBLEPS;
   $epsyy *= 16 * Kw::DBLEPS;
   for ($i_ind = 1; $i_ind <= $num_points - 1; $i_ind += 1) {
      for ($j_ind = 0; $j_ind <= $i_ind - 1; $j_ind += 1) {
         $dxx = $xxp_arr[$i_ind] - $xxp_arr[$j_ind];
         if ($epsxx < abs($dxx)) {
            $slope_t = ($yyp_arr[$i_ind] - $yyp_arr[$j_ind]) / $dxx;
            $intercept_t = $yyp_arr[$i_ind] - $slope_t * $xxp_arr[$i_ind];
            $pty = $slope_t * $xxp_arr[0] + $intercept_t;
            $dyy = $yyp_arr[0] - $pty;
            $min_dyy = $dyy;
            $max_dyy = $dyy;
            $k_ind = 1;
            while ($k_ind < $num_points) {
               $pty = $slope_t * $xxp_arr[$k_ind] + $intercept_t;
               $dyy = $yyp_arr[$k_ind] - $pty;
               if ($dyy < $min_dyy) {
                  $min_dyy = $dyy;
               }
               if ($max_dyy < $dyy) {
                  $max_dyy = $dyy;
               }
               $this_spr = $max_dyy - $min_dyy;
               if ((0 < $nx_spr and $nx_spr + $epsyy < $this_spr) or
                        ($min_dyy < - $epsyy and $epsyy < $max_dyy)) {
                  last;
               }
               $k_ind += 1;
            }
            if ($num_points <= $k_ind) {
               if (($this_spr <= $nx_spr + $epsyy and abs($nx_a) <
                        abs($slope_t)) or $nx_spr < 0 or $this_spr <
                        $nx_spr - $epsyy) {
                  $nx_spr = $this_spr;
                  $nx_a = $slope_t;
                  $nx_b = $intercept_t + ($min_dyy + $max_dyy) / 2.0;
               }
            }
         }
      }
   }
   $$ret_coeff_arr_p[1] = $nx_a;
   $$ret_coeff_arr_p[0] = $nx_b;
   $$ret_coeff_arr_p[2] = $nx_spr / 2.0;
   return ($nx_spr / 2.0);
}
{
sub lf_signcrossproduct($$$$$$ ) {
   my ($x_a, $y_a, $x_b, $y_b, $x_c, $y_c) = @_;
      my $cr;
      my $bbx_a;
      my $bby_a;
      my $ccx_a;
      my $ccy_a;
      $bbx_a = $x_b - $x_a;
      $bby_a = $y_b - $y_a;
      $ccx_a = $x_c - $x_a;
      $ccy_a = $y_c - $y_a;
      $cr = $bbx_a * $ccy_a - $ccx_a * $bby_a;
      return ($cr);
   }
   sub fitx_minmax($\@\@ ) {
      my ($num_points, $pt_arr_pc, $ret_arr_p) = @_;
      my @xxp_arr;
      my @yyp_arr;
      my @chi_arr;
      my $chisize;
      my $hh;
      my $i_ind;
      my $j_ind;
      my $k_ind;
      my $this_spr;
      my $nx_spr;
      my $nx_a;
      my $nx_b;
      my $dxx;
      my $pty;
      my $dyy;
      my $epsxx;
      my $epsyy;
      my $slope_t;
      my $intercept_t;
      my $max_dyy;
      my $min_dyy;
      my $e_ind;
      my $t_ind;
      my $poh_ind;
      my $crx;
      my $lmbm_ind;
      $epsxx = 0.0;
      $epsyy = 0.0;
      $lmbm_ind = 0;
      for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
         $xxp_arr[$j_ind] = $$pt_arr_pc[2 * $j_ind];
         $yyp_arr[$j_ind] = $$pt_arr_pc[2 * $j_ind + 1];
         if ($epsxx < abs($xxp_arr[$j_ind])) {
            $epsxx = abs($xxp_arr[$j_ind]);
         }
         if ($epsyy < abs($yyp_arr[$j_ind])) {
            $epsyy = abs($yyp_arr[$j_ind]);
         }
         if ($xxp_arr[$j_ind] <= $xxp_arr[$lmbm_ind]) {
            if ($xxp_arr[$j_ind] < $xxp_arr[$lmbm_ind] or
                     $yyp_arr[$j_ind] <= $yyp_arr[$lmbm_ind]) {
               $lmbm_ind = $j_ind;
            }
         }
      }
      $nx_spr = -1;
      $nx_a = 0;
      $nx_b = 0;
      $epsxx *= 16 * Kw::DBLEPS;
      $epsyy *= 16 * Kw::DBLEPS;
      $poh_ind = $lmbm_ind;
      $chisize = 0;
      for (;;) {
         $chi_arr[$chisize] = $poh_ind;
         $e_ind = 0;
         for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
            if ($e_ind == $poh_ind) {
               $e_ind = $j_ind;
            } else {
               $t_ind = $chi_arr[$chisize];
               $crx = lf_signcrossproduct($xxp_arr[$j_ind],
                        $yyp_arr[$j_ind], $xxp_arr[$t_ind],
                        $yyp_arr[$t_ind], $xxp_arr[$e_ind],
                        $yyp_arr[$e_ind]);
               if ($crx < 0) {
                  $e_ind = $j_ind;
               }
            }
         }
         $chisize += 1;
         if ($num_points < $chisize) {
            die "fitx_minmax:" . "OOPS";
         }
         $poh_ind = $e_ind;
         if ($e_ind == $chi_arr[0]) {
            last; # loop AWAIT
         }
      }
      $chi_arr[$chisize] = $chi_arr[0];
      $chisize += 1;
      for ($hh = 0; $hh <= $chisize - 2; $hh += 1) {
         $i_ind = $chi_arr[$hh];
         $j_ind = $chi_arr[$hh + 1];
         $dxx = $xxp_arr[$i_ind] - $xxp_arr[$j_ind];
         if ($epsxx < abs($dxx)) {
            $slope_t = ($yyp_arr[$i_ind] - $yyp_arr[$j_ind]) / $dxx;
            $intercept_t = $yyp_arr[$i_ind] - $slope_t * $xxp_arr[$i_ind];
            $dyy = $yyp_arr[0] - ($slope_t * $xxp_arr[0] + $intercept_t);
            $min_dyy = $dyy;
            $max_dyy = $dyy;
            $this_spr = 0;
            $k_ind = 1;
            while ($k_ind < $num_points) {
               $pty = ($slope_t * $xxp_arr[$k_ind] + $intercept_t);
               $dyy = $yyp_arr[$k_ind] - $pty;
               if ($dyy < $min_dyy) {
                  $min_dyy = $dyy;
               }
               if ($max_dyy < $dyy) {
                  $max_dyy = $dyy;
               }
               $this_spr = $max_dyy - $min_dyy;
               if ((0 < $nx_spr and $nx_spr + $epsyy < $this_spr) or
                        ($min_dyy < - $epsyy and $epsyy < $max_dyy)) {
                  last;
               }
               $k_ind += 1;
            }
            if ($num_points <= $k_ind) {
               if (($this_spr <= $nx_spr + $epsyy and abs($nx_a) <
                        abs($slope_t)) or $nx_spr < 0 or $this_spr <
                        $nx_spr - $epsyy) {
                  $nx_a = $slope_t;
                  $nx_b = $intercept_t + ($min_dyy + $max_dyy) / 2.0;
                  $nx_spr = $this_spr;
               }
            }
         }
      }
      $$ret_arr_p[0] = $nx_b;
      $$ret_arr_p[1] = $nx_a;
      $$ret_arr_p[2] = $nx_spr / 2.0;
      return ($$ret_arr_p[2]);
   }
}
sub fit_minmax0($\@\@ ) {
   my ($num_points, $pts_arr_pc, $ret_arr_p) = @_;
   my @xxp_arr;
   my @yyp_arr;
   my $i_ind;
   my $j_ind;
   my $k_ind;
   my $this_spr;
   my $mnmxz_spread;
   my $mnmxz_slope;
   my $mnmxz_intercept;
   my $dxx;
   my $dyy;
   my $pty;
   my $epsxx;
   my $epsyy;
   my $slope_t;
   my $intercept_t;
   my $midxx;
   my $midyy;
   my $max_dyy;
   my $min_dyy;
   $epsxx = 0.0;
   $epsyy = 0.0;
   for ($j_ind = 0; $j_ind <= $num_points - 1; $j_ind += 1) {
      $xxp_arr[$j_ind] = $$pts_arr_pc[2 * $j_ind];
      $yyp_arr[$j_ind] = $$pts_arr_pc[2 * $j_ind + 1];
      if ($epsxx < abs($xxp_arr[$j_ind])) {
         $epsxx = abs($xxp_arr[$j_ind]);
      }
      if ($epsyy < abs($yyp_arr[$j_ind])) {
         $epsyy = abs($yyp_arr[$j_ind]);
      }
   }
   $mnmxz_spread = -1;
   $mnmxz_slope = 0;
   $mnmxz_intercept = $yyp_arr[0];
   $epsxx *= 8 * Kw::DBLEPS;
   $epsyy *= 8 * Kw::DBLEPS;
   for ($i_ind = 2; $i_ind <= $num_points - 1; $i_ind += 1) {
      for ($j_ind = 2; $j_ind <= $i_ind - 1; $j_ind += 1) {
         $midxx = ($xxp_arr[$i_ind] + $xxp_arr[$j_ind]) / 2.0;
         $midyy = ($yyp_arr[$i_ind] + $yyp_arr[$j_ind]) / 2.0;
         $dxx = $xxp_arr[0] - $midxx;
         if ($epsxx < abs($dxx)) {
            $slope_t = ($yyp_arr[0] - $midyy) / $dxx;
            $intercept_t = $yyp_arr[0] - $slope_t * $xxp_arr[0];
            $min_dyy = 0;
            $max_dyy = 0;
            for ($k_ind = 0; $k_ind <= $num_points - 1; $k_ind += 1) {
               $pty = $slope_t * $xxp_arr[$k_ind] + $intercept_t;
               $dyy = $yyp_arr[$k_ind] - $pty;
               if ($dyy < $min_dyy) {
                  $min_dyy = $dyy;
               }
               if ($max_dyy < $dyy) {
                  $max_dyy = $dyy;
               }
               $this_spr = $max_dyy - $min_dyy;
               if (0 < $mnmxz_spread and $mnmxz_spread + $epsyy <
                        $this_spr) {
                  last;
               }
            }
            if ($mnmxz_spread < 0 or $this_spr < $mnmxz_spread - $epsyy) {
               $mnmxz_slope = $slope_t;
               $mnmxz_intercept = $intercept_t;
               $mnmxz_spread = $this_spr;
            }
         }
      }
   }
   if (0 <= $mnmxz_spread) {
      $$ret_arr_p[1] = $mnmxz_slope;
      $$ret_arr_p[0] = $mnmxz_intercept;
      $$ret_arr_p[2] = $mnmxz_spread / 2.0;
   }
   return ($mnmxz_spread / 2.0);
}
sub fit_ls($\@\@ ) {
   my ($num_points, $pts_arr_pc, $ret_arr_p) = @_;
   my $i_ind;
   my $dxx;
   my $dyy;
   my $xx;
   my $yy;
   my $slope;
   my $mean_yy;
   my $ssq_yy;
   my $mean_xx;
   my $ssq_xx;
   my $covariance_xy;
   $mean_xx = 0.0;
   $ssq_xx = 0.0;
   $mean_yy = 0.0;
   $ssq_yy = 0.0;
   $covariance_xy = 0.0;
   for ($i_ind = 0; $i_ind <= $num_points - 1; $i_ind += 1) {
      $xx = $$pts_arr_pc[2 * $i_ind];
      $dxx = $xx - $mean_xx;
      $mean_xx += $dxx / ($i_ind + 1);
      $ssq_xx += $dxx * ($xx - $mean_xx);
      $yy = $$pts_arr_pc[2 * $i_ind + 1];
      $dyy = $yy - $mean_yy;
      $mean_yy += $dyy / ($i_ind + 1);
      $ssq_yy += $dyy * ($yy - $mean_yy);
      $covariance_xy += $dxx * $dyy * $i_ind / ($i_ind + 1.0);
   }
   $slope = $covariance_xy / $ssq_xx;
   $$ret_arr_p[1] = $slope;
   $$ret_arr_p[0] = $mean_yy - $slope * $mean_xx;
   $$ret_arr_p[2] = $covariance_xy / sqrt($ssq_xx * $ssq_yy);
   $$ret_arr_p[3] = sqrt(($ssq_yy - $slope * $covariance_xy) /
            ($num_points - 2));
   return ($$ret_arr_p[2]);
}
sub fit_ls0($\@\@ ) {
   my ($num_points, $pts_arr_pc, $ret_lsz_arr_p) = @_;
   my $xxsum;
   my $xysum;
   my $dxx;
   my $slope;
   my $j_ind;
   my $i_ind;
   $xxsum = 0.0;
   $xysum = 0.0;
   for ($i_ind = 1; $i_ind <= $num_points - 1; $i_ind += 1) {
      $j_ind = 2 * $i_ind;
      $dxx = ($$pts_arr_pc[$j_ind] - $$pts_arr_pc[0]);
      $xxsum += $dxx * $dxx;
      $xysum += $dxx * ($$pts_arr_pc[$j_ind + 1] - $$pts_arr_pc[1]);
   }
   $slope = $xysum / $xxsum;
   $$ret_lsz_arr_p[1] = $slope;
   $$ret_lsz_arr_p[0] = ($$pts_arr_pc[1] - $slope * $$pts_arr_pc[0]);
   return ($slope);
}
sub sqrt__1($ ) {
   my ($xx) = @_;
   my $yy_curr;
   my $yy_prev;
   my $zz;
   my $power_of_two;
   if ($xx <= 0.0) {
      $yy_curr = 0.0;
   } else {
      $power_of_two = 1.0;
      $zz = $xx;
      while (4.0 <= $zz) {
         $zz /= 4.0;
         $power_of_two *= 2.0;
      }
      while ($zz < 1.0) {
         $zz *= 4.0;
         $power_of_two /= 2.0;
      }
      $yy_curr = (((-0.0353026277858345) * $zz + 0.502513025246083) * $zz
               + 0.546382637992462);
      for (;;) {
         $yy_prev = $yy_curr;
         $yy_curr = ($yy_curr + $zz / $yy_curr) / 2.0;
         if (Kw::iseq($yy_prev, $yy_curr)) {
            last; # loop AWAIT
         }
      }
      $yy_curr *= $power_of_two;
   }
   return ($yy_curr);
}
sub sqrt__2($ ) {
   my ($xx) = @_;
   my $scvx_xp;
   my $scvx_xx;
   my $scvx_yp;
   my $scvx_yy;
   my $scvx_dx;
   my $scvx_ii;
   my $ini;
   if ($xx <= 0.0) {
      $scvx_xx = 0.0;
   } else {
      if (1.0 < $xx) {
         $ini = $xx / 2.0;
      } else {
         $ini = 2.0 * $xx;
      }
      $scvx_dx = $ini / 10.0;
      $scvx_xx = $ini;
      $scvx_yy = $xx - $scvx_xx * $scvx_xx;
      for ($scvx_ii = 0; $scvx_ii <= 20; $scvx_ii += 1) {
         $scvx_xp = $scvx_xx;
         $scvx_yp = $scvx_yy;
         $scvx_xx += $scvx_dx;
         if (Kw::iseq($scvx_xp, $scvx_xx)) {
            last;
         }
         $scvx_yy = $xx - $scvx_xx * $scvx_xx;
         if (Kw::iseq($scvx_yy, $scvx_yp)) {
            last;
         }
         $scvx_dx *= - $scvx_yy / ($scvx_yy - $scvx_yp);
      }
   }
   return ($scvx_xx);
}
sub sqrt__3($ ) {
   my ($yy) = @_;
   my $nrvx_ii;
   my $nrvx_yy;
   my $nrvx_xx;
   my $nrvx_dy;
   my $nrvx_xp;
   my $ini;
   if ($yy <= 0.0) {
      $nrvx_xx = 0.0;
   } else {
      if (1.0 < $yy) {
         $ini = $yy / 2.0;
      } else {
         $ini = 2.0 * $yy;
      }
      $nrvx_xx = $ini;
      for ($nrvx_ii = 0; $nrvx_ii <= 20; $nrvx_ii += 1) {
         $nrvx_xp = $nrvx_xx;
         $nrvx_dy = 2.0 * $nrvx_xx;
         if (Kw::iszero($nrvx_dy)) {
            last;
         }
         $nrvx_yy = $nrvx_xx * $nrvx_xx - $yy;
         $nrvx_xx -= $nrvx_yy / $nrvx_dy;
         if (Kw::iseq($nrvx_xp, $nrvx_xx)) {
            last;
         }
      }
   }
   return ($nrvx_xx);
}
sub nthroot__1($$ ) {
   my ($xx, $kk) = @_;
   my $yy_curr;
   my $yy_prev;
   my $pp;
   my $ii;
   if ($xx <= 0.0) {
      $yy_curr = 0.0;
   } else {
      $yy_curr = $xx / 2.0;
      for (;;) {
         $yy_prev = $yy_curr;
         $pp = $yy_curr;
         for ($ii = 2; $ii <= $kk - 1; $ii += 1) {
            $pp *= $yy_curr;
         }
         $yy_curr = ($yy_curr * ($kk - 1.0) + $xx / $pp) / $kk;
         if (Kw::iseq($yy_prev, $yy_curr)) {
            last; # loop AWAIT
         }
      }
   }
   return ($yy_curr);
}
sub cossin_ev($$$ ) {
   my ($init_ii, $xx_rad, $addone_mult) = @_;
   my $cval;
   my $ii;
   my $trig_sum;
   my $xr_rad;
   my $xr_sqr;
   if (Kw::iszero($xx_rad)) {
      $trig_sum = 0.0;
   } else {
      $xr_rad = Kw::fmods($xx_rad, Kw::TAU);
      $xr_sqr = -$xr_rad * $xr_rad;
      $cval = 1.0;
      $ii = $init_ii;
      while (Kw::DBLEPS / 16.0 < abs($cval)) {
         $ii += 2;
         $cval *= $xr_sqr / ($ii * ($ii - 1.0));
      }
      $trig_sum = 1.0 / ($ii * ($ii + 1.0));
      while (1 < $ii) {
         $trig_sum += 1.0;
         $trig_sum *= $xr_sqr / ($ii * ($ii - 1.0));
         $ii -= 2;
      }
      if ($addone_mult) {
         $trig_sum += 1.0;
         $trig_sum *= $xr_rad;
      }
   }
   return ($trig_sum);
}
sub cos__1($ ) {
   my ($xx_rad) = @_;
   return (cossin_ev(0, $xx_rad, Kw::false) + 1.0);
}
sub cosm1__1($ ) {
   my ($xx_rad) = @_;
   return (cossin_ev(0, $xx_rad, Kw::false));
}
sub sin__1($ ) {
   my ($xx_rad) = @_;
   return (cossin_ev(1, $xx_rad, Kw::true));
}
sub sinc__1($ ) {
   my ($xx_rad) = @_;
   my $retvalu;
   if (Kw::iszero($xx_rad)) {
      $retvalu = 1.0;
   } else {
      if (Kw::TAU / 2.0 < abs($xx_rad)) {
         $retvalu = cossin_ev(1, $xx_rad, Kw::true) / $xx_rad;
      } else {
         $retvalu = cossin_ev(1, $xx_rad, Kw::false) + 1.0;
      }
   }
   return ($retvalu);
}
sub exp__1($ ) {
   my ($xx) = @_;
   my $ii;
   my $term_count;
   my $vale;
   my $axx;
   my $exp_sum;
   my $retvalu;
   my $squaring_count;
   if ($xx < 0.0) {
      $axx = -$xx;
   } else {
      $axx = $xx;
   }
   $squaring_count = 0;
   while (1.0 < $axx) {
      $axx /= 2.0;
      $squaring_count += 1;
   }
   $vale = 1.0;
   $term_count = 1;
   while (Kw::DBLEPS / 10.0 < $vale) {
      $term_count += 1;
      $vale *= $axx / $term_count;
   }
   $exp_sum = 1.0 / ($term_count + 1.0);
   for ($ii = $term_count; 1 <= $ii; $ii -= 1) {
      $exp_sum = 1.0 + $axx * ($exp_sum / $ii);
   }
   if ($xx < 0.0) {
      $retvalu = 1.0 / $exp_sum;
   } else {
      $retvalu = $exp_sum;
   }
   for ($ii = 1; $ii <= $squaring_count; $ii += 1) {
      $retvalu *= $retvalu;
   }
   return ($retvalu);
}
sub exp__2($ ) {
   my ($xx) = @_;
   my $ii;
   my $term_count;
   my $axx;
   my $expmo_sum;
   my $retvalu;
   my $squaring_count;
   my $vale;
   if ($xx < 0.0) {
      $axx = -$xx;
   } else {
      $axx = $xx;
   }
   $squaring_count = 0;
   while (1.0 < $axx) {
      $axx /= 2.0;
      $squaring_count += 1;
   }
   $vale = 1.0;
   $term_count = 1;
   while (Kw::DBLEPS / 4.0 < $vale) {
      $term_count += 1;
      $vale *= $axx / $term_count;
   }
   $expmo_sum = 0.0;
   for ($ii = $term_count; 1 <= $ii; $ii -= 1) {
      $expmo_sum = $axx * ($expmo_sum + 1.0) / $ii;
   }
   for ($ii = 1; $ii <= $squaring_count; $ii += 1) {
      $expmo_sum *= (2.0 + $expmo_sum);
   }
   if ($xx < 0.0) {
      $retvalu = 1.0 / ($expmo_sum + 1.0);
   } else {
      $retvalu = $expmo_sum + 1.0;
   }
   return ($retvalu);
}
sub ln__1($ ) {
   my ($xx) = @_;
   my $yy_curr;
   my $logshift;
   my $retvalu;
   my $tmp;
   $logshift = 0.0;
   $yy_curr = 8.0 / $xx;
   $tmp = (Kw::DBLEPS);
   while ($tmp < $yy_curr) {
      $logshift -= 16.0 * Kw::TWOLN;
      $yy_curr /= 65536.0;
   }
   $retvalu = (Kw::PI / Kw::agmean(2.0, $yy_curr) + $logshift);
   return ($retvalu);
}
sub ln__2($ ) {
   my ($xx) = @_;
   my $yy_curr;
   my $ptwo;
   my $term;
   my $nn;
   my $sum_curr;
   my $sum_prev;
   my $mant;
   $yy_curr = $xx;
   $ptwo = 0.0;
   while (Kw::TWOSQRT < $yy_curr) {
      $ptwo += 1.0;
      $yy_curr /= 2.0;
   }
   while ($yy_curr < 1.0 / Kw::TWOSQRT) {
      $ptwo -= 1.0;
      $yy_curr *= 2.0;
   }
   $mant = ($yy_curr - 1.0) / ($yy_curr + 1.0);
   $sum_curr = 2.0 * $mant;
   $term = $sum_curr;
   $mant *= $mant;
   $nn = 3;
   for (;;) {
      $term *= $mant;
      $sum_prev = $sum_curr;
      $sum_curr += $term / $nn;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $nn += 2;
   }
   return ($ptwo * Kw::TWOLN + $sum_curr);
}
sub euler__1() {
   my $twon;
   my $exptwon;
   my $ii;
   my $jj;
   my $term;
   my $subsum;
   my $sum_curr;
   my $sum_prev;
   $twon = 1.0;
   $exptwon = Kw::E;
   $ii = 0;
   for (;;) {
      $twon *= 2.0;
      $exptwon *= $exptwon;
      if (0.1 < Kw::DBLEPS * $exptwon) {
         last; # loop AWAIT
      }
      $ii += 1;
   }
   $term = 1.0 / $twon;
   $subsum = 0.0;
   $sum_curr = 0.0;
   $jj = 1;
   for (;;) {
      $subsum += 1.0 / $jj;
      $term *= $twon / $jj;
      $sum_prev = $sum_curr;
      $sum_curr += $term * $subsum;
      if (Kw::iseq($sum_prev, $sum_curr)) {
         last; # loop AWAIT
      }
      $jj += 1;
   }
   return ($twon * $sum_curr / $exptwon - ($ii + 1.0) * Kw::TWOLN);
}
sub sphere_d($$$$ ) {
   my ($lata_rad, $lona_rad, $latb_rad, $lonb_rad) = @_;
   my $xc;
   my $xd;
   my $xe;
   my $c_lond;
   my $s_lond;
   my $c_lata;
   my $c_latb;
   my $s_lata;
   my $s_latb;
   my $retvalu;
   $c_lata = cos($lata_rad);
   $c_latb = cos($latb_rad);
   $s_lata = sin($lata_rad);
   $s_latb = sin($latb_rad);
   $s_lond = sin($lonb_rad - $lona_rad);
   $c_lond = cos($lonb_rad - $lona_rad);
   $xc = $c_lata * $s_latb - $s_lata * $c_latb * $c_lond;
   $xd = $c_latb * $s_lond;
   $xe = $s_lata * $s_latb + $c_lata * $c_latb * $c_lond;
   $retvalu = atan2(Kw::hypot($xd, $xc), $xe);
   return ($retvalu);
}
sub great_circle_distance($$$$ ) {
   my ($lata_rad, $lona_rad, $latb_rad, $lonb_rad) = @_;
   return (sphere_d($lata_rad, $lona_rad, $latb_rad, $lonb_rad));
}
sub sphere_distance($$$$\@ ) {
   my ($lata_rad, $lona_rad, $latb_rad, $lonb_rad, $ret_dirs_arr_p) = @_;
   my $xc;
   my $xd;
   my $xe;
   my $s_lond;
   my $c_lond;
   my $c_lata;
   my $c_latb;
   my $s_lata;
   my $s_latb;
   my $dist;
   $c_lata = cos($lata_rad);
   $c_latb = cos($latb_rad);
   $s_lata = sin($lata_rad);
   $s_latb = sin($latb_rad);
   $s_lond = sin($lonb_rad - $lona_rad);
   $c_lond = cos($lonb_rad - $lona_rad);
   $xc = $c_lata * $s_latb - $s_lata * $c_latb * $c_lond;
   $xd = $c_latb * $s_lond;
   $$ret_dirs_arr_p[0] = atan2($xd, $xc);
   $xe = $s_lata * $s_latb + $c_lata * $c_latb * $c_lond;
   $dist = atan2(Kw::hypot($xd, $xc), $xe);
   $xc = $c_latb * $s_lata - $s_latb * $c_lata * $c_lond;
   $xd = $c_lata * $s_lond;
   $$ret_dirs_arr_p[1] = -atan2($xd, $xc);
   return ($dist);
}
{
sub lf_ka($ ) {
   my ($usq) = @_;
      my $hyp;
      $hyp = sqrt(1.0 + $usq);
      return (($hyp - 1.0) / ($hyp + 1.0));
   }
   sub lf_cap_a($ ) {
      my ($usq) = @_;
      my $ka;
      $ka = lf_ka($usq);
      return ((1.0 + Kw::square($ka / 2.0)) / (1.0 - $ka));
   }
   sub lf_cap_b($ ) {
      my ($usq) = @_;
      my $ka;
      $ka = lf_ka($usq);
      return ($ka * (1.0 - 3.0 * Kw::square($ka) / 8.0));
   }
   sub ellipsoid_distance($$$$$\@ ) {
      my ($flat, $lata_rad, $lona_rad, $latb_rad, $lonb_rad,
               $ret_dirs_arr_p) = @_;
      my $iflat;
      my $cap_ua;
      my $cap_ub;
      my $lon_diff;
      my $c_cap_ua;
      my $s_cap_ua;
      my $c_cap_ub;
      my $s_cap_ub;
      my $xx_curr;
      my $xx_prev;
      my $xc;
      my $xd;
      my $s_xx;
      my $c_xx;
      my $c_sig;
      my $s_sig;
      my $sig;
      my $s_a;
      my $c_asq;
      my $cbsigm;
      my $cap_c;
      my $usq;
      my $cap_a;
      my $cap_b;
      my $deltasig;
      my $ii;
      my $dist;
      $iflat = 1.0 - $flat;
      $cap_ua = atan2($iflat * sin($lata_rad), cos($lata_rad));
      $cap_ub = atan2($iflat * sin($latb_rad), cos($latb_rad));
      $lon_diff = $lonb_rad - $lona_rad;
      $xx_curr = $lon_diff;
      $c_cap_ua = cos($cap_ua);
      $c_cap_ub = cos($cap_ub);
      $s_cap_ua = sin($cap_ua);
      $s_cap_ub = sin($cap_ub);
      $ii = 0;
      for (;;) {
         $s_xx = sin($xx_curr);
         $c_xx = cos($xx_curr);
         $s_sig = Kw::hypot($c_cap_ub * $s_xx, $c_cap_ua * $s_cap_ub -
                  $s_cap_ua * $c_cap_ub * $c_xx);
         $c_sig = $s_cap_ua * $s_cap_ub + $c_cap_ua * $c_cap_ub * $c_xx;
         $sig = atan2($s_sig, $c_sig);
         $s_a = $c_cap_ua * $c_cap_ub * $s_xx / $s_sig;
         $c_asq = 1.0 - Kw::square($s_a);
         $cbsigm = $c_sig - Kw::divi(2 * $s_cap_ua * $s_cap_ub, $c_asq, 0.0);
         $cap_c = (($flat / 16) * $c_asq * (4.0 + $flat * (4.0 - 3.0 *
                  $c_asq)));
         $xx_prev = $xx_curr;
         $xx_curr = ($lon_diff + (1.0 - $cap_c) * $flat * $s_a * ($sig +
                  $cap_c * $s_sig * ($cbsigm + $cap_c * $c_sig * (2.0 *
                  Kw::square($cbsigm) - 1.0))));
         if (10 < $ii and Kw::iseq(abs($xx_prev + $xx_curr), Kw::TAU)) {
            $xx_curr = Kw::TAU / 2.0;
            last;
         }
         if (abs($xx_curr - $xx_prev) < 1.0E-12) {
            last; # loop AWAIT
         }
         $ii += 1;
      }
      $usq = $c_asq * (1.0 / Kw::square($iflat) - 1.0);
      $cap_a = $iflat * lf_cap_a($usq);
      $cap_b = lf_cap_b($usq);
      $deltasig = $cap_b * $s_sig * ($cbsigm + 0.25 * $cap_b * ($c_sig *
               (-1.0 + 2.0 * Kw::square($cbsigm)) - (1.0 / 6.0) * $cap_b
               * $cbsigm * (3.0 + 4.0 * Kw::square($s_sig)) * (-3.0 + 4.0
               * Kw::square($cbsigm))));
      $dist = $cap_a * ($sig - $deltasig);
      $xc = $c_cap_ua * $s_cap_ub - $s_cap_ua * $c_cap_ub * $c_xx;
      $xd = $c_cap_ub * $s_xx;
      $$ret_dirs_arr_p[0] = atan2($xd, $xc);
      $xc = $c_cap_ub * $s_cap_ua - $s_cap_ub * $c_cap_ua * $c_xx;
      $xd = $c_cap_ua * $s_xx;
      $$ret_dirs_arr_p[1] = -atan2($xd, $xc);
      return ($dist);
   }
   sub ellipsoid_destination($$$$$\@ ) {
      my ($flat, $lata_rad, $lona_rad, $heading_rad, $distance,
               $ret_loc_arr_p) = @_;
      my $iflat;
      my $cap_ua;
      my $c_cap_ua;
      my $s_cap_ua;
      my $sig_rad;
      my $sig_rad_prev;
      my $sig_rad_delta;
      my $c_sig;
      my $s_sig;
      my $aa;
      my $bb;
      my $sig_b_rad;
      my $s_a;
      my $c_asq;
      my $twosigm_rad;
      my $c_twosigm;
      my $c_twosigmsq;
      my $cap_c;
      my $usq;
      my $cap_a;
      my $cap_b;
      my $cap_l;
      my $alpha_rad;
      my $c_heading;
      my $s_heading;
      my $lamda;
      my $xd;
      my $xc;
      $iflat = 1.0 - $flat;
      $aa = 1.0;
      $bb = $iflat * $aa;
      $cap_ua = atan2($iflat * sin($lata_rad), cos($lata_rad));
      $c_cap_ua = cos($cap_ua);
      $s_cap_ua = sin($cap_ua);
      $c_heading = cos($heading_rad);
      $s_heading = sin($heading_rad);
      $sig_b_rad = atan2($s_cap_ua, $c_cap_ua * $c_heading);
      $s_a = cos($cap_ua) * sin($heading_rad);
      $c_asq = 1.0 - Kw::square($s_a);
      $usq = $c_asq * (Kw::square($aa / $bb) - 1.0);
      $cap_a = lf_cap_a($usq);
      $cap_b = lf_cap_b($usq);
      $sig_rad_delta = 0.0;
      $sig_rad = -10.0;
      for (;;) {
         $sig_rad_prev = $sig_rad;
         $sig_rad = $distance / ($bb * $cap_a) + $sig_rad_delta;
         $s_sig = sin($sig_rad);
         $c_sig = cos($sig_rad);
         $twosigm_rad = 2.0 * $sig_b_rad + $sig_rad;
         $c_twosigm = cos($twosigm_rad);
         $c_twosigmsq = Kw::square($c_twosigm);
         $sig_rad_delta = $cap_b * $s_sig * ($c_twosigm + 0.25 * $cap_b *
                  ($c_sig * (2.0 * $c_twosigmsq - 1.0) - ($cap_b / 6.0) *
                  $c_twosigm * (4.0 * $s_sig * $s_sig - 3.0) * (4.0 *
                  $c_twosigmsq - 3.0)));
         if (Kw::iseq($sig_rad, $sig_rad_prev)) {
            last; # loop AWAIT
         }
      }
      $xd = $s_cap_ua * $c_sig + $c_cap_ua * $s_sig * $c_heading;
      $xc = $iflat * Kw::hypot($s_a, $s_cap_ua * $s_sig - $c_cap_ua *
               $c_sig * $c_heading);
      $$ret_loc_arr_p[0] = atan2($xd, $xc);
      $xd = $s_sig * $s_heading;
      $xc = $c_cap_ua * $c_sig - $s_cap_ua * $s_sig * $c_heading;
      $lamda = atan2($xd, $xc);
      $cap_c = (($flat / 16.0) * $c_asq * (4.0 + $flat * (4.0 - 3.0 *
               $c_asq)));
      $cap_l = $lamda - (1.0 - $cap_c) * $flat * $s_a * ($sig_rad +
               $cap_c * $s_sig * ($c_twosigm + $cap_c * $c_sig * (2 *
               $c_twosigmsq - 1.0)));
      $$ret_loc_arr_p[1] = $cap_l + $lona_rad;
      $alpha_rad = Kw::fmodu(Kw::PI + atan2($s_a, $c_cap_ua * $c_sig *
               $c_heading - $s_cap_ua * $s_sig), Kw::TAU);
      return ($alpha_rad);
   }
}
sub ellipsoid_surface($$$ ) {
   my ($axis_a, $axis_b, $axis_c) = @_;
   my $absaa;
   my $absbb;
   my $abscc;
   my $phi_rad;
   my $sinphi;
   my $cosphi;
   my $kk;
   my $retvalu;
   $absaa = abs($axis_a);
   $absbb = abs($axis_b);
   $abscc = abs($axis_c);
   if ($absaa < $absbb) {
      $kk = $absaa;
      $absaa = $absbb;
      $absbb = $kk;
   }
   if ($absbb < $abscc) {
      $kk = $abscc;
      $abscc = $absbb;
      $absbb = $kk;
      if ($absaa < $absbb) {
         $kk = $absaa;
         $absaa = $absbb;
         $absbb = $kk;
      }
   }
   if ($abscc < $absaa) {
      $cosphi = ($abscc / $absaa);
      $phi_rad = Kw::cosinv($cosphi);
      $sinphi = sin($phi_rad);
      $kk = sqrt((1.0 - $abscc * $abscc / ($absbb * $absbb)) / (1.0 -
               $abscc * $abscc / ($absaa * $absaa)));
      $retvalu = Kw::TAU * ($abscc * $abscc + $absaa * $absbb / $sinphi *
               ($sinphi * $sinphi * Kw::elliptic2ik($kk, $phi_rad) +
               $cosphi * $cosphi * Kw::elliptic1ik($kk, $phi_rad)));
   } else {
      $retvalu = 2.0 * Kw::TAU * $absaa * $absaa;
   }
   return ($retvalu);
}
sub ellipsoid_volume($$$ ) {
   my ($axis_a, $axis_b, $axis_c) = @_;
   return (2.0 * Kw::TAU * $axis_a * $axis_b * $axis_c / 3.0);
}
sub shc_shftpoles2steps($$ ) {
   my ($shft, $poles) = @_;
   my @step_arr;
   my $retvalu;
   if ($poles <= 0) {
      $retvalu = 0.0;
   } elsif ($shft < 0) {
      $retvalu = 0.0;
   } elsif (16 < $shft) {
      $retvalu = 1.0E+9;
   } elsif ($poles == 1) {
      $step_arr[0] = +1.0;
      $step_arr[1] = +8.75664018;
      $step_arr[2] = +2.174418277E+1;
      $step_arr[3] = +4.709615109E+1;
      $step_arr[4] = +9.755325605E+1;
      $step_arr[5] = +1.983575685E+2;
      $step_arr[6] = +3.9991425188E+2;
      $step_arr[7] = +8.0300236937E+2;
      $step_arr[8] = +1.60916613901E+3;
      $step_arr[9] = +3.22148750069E+3;
      $step_arr[10] = +6.44612712926E+3;
      $step_arr[11] = +1.289540487229E+4;
      $step_arr[12] = +2.579395961911E+4;
      $step_arr[13] = +5.159106828928E+4;
      $step_arr[14] = +1.0318528839545E+5;
      $step_arr[15] = +2.0637372529029E+5;
      $step_arr[16] = +4.1275053067337E+5;
      $retvalu = $step_arr[$shft];
   } elsif ($poles == 2) {
      $step_arr[0] = +1.0;
      $step_arr[1] = +1.372295755E+1;
      $step_arr[2] = +3.383938971E+1;
      $step_arr[3] = +7.318281398E+1;
      $step_arr[4] = +1.5153838699E+2;
      $step_arr[5] = +3.0810336456E+2;
      $step_arr[6] = +6.2116437416E+2;
      $step_arr[7] = +1.24725288016E+3;
      $step_arr[8] = +2.49941335432E+3;
      $step_arr[9] = +5.00372613671E+3;
      $step_arr[10] = +1.001234749878E+4;
      $step_arr[11] = +2.002958840334E+4;
      $step_arr[12] = +4.006406905172E+4;
      $step_arr[13] = +8.013303000155E+4;
      $step_arr[14] = +1.6027095510986E+5;
      $step_arr[15] = +3.2054680443102E+5;
      $step_arr[16] = +6.4109851712798E+5;
      $retvalu = $step_arr[$shft];
   } elsif ($poles == 3) {
      $step_arr[0] = +1.0;
      $step_arr[1] = +1.737173781E+1;
      $step_arr[2] = +4.273609545E+1;
      $step_arr[3] = +9.238532150E+1;
      $step_arr[4] = +1.9128399554E+2;
      $step_arr[5] = +3.8890510497E+2;
      $step_arr[6] = +7.8406421045E+2;
      $step_arr[7] = +1.57434201644E+3;
      $step_arr[8] = +3.15487771808E+3;
      $step_arr[9] = +6.31593923478E+3;
      $step_arr[10] = +1.263805730898E+4;
      $step_arr[11] = +2.528229097067E+4;
      $step_arr[12] = +5.057075779500E+4;
      $step_arr[13] = +1.0114768912723E+5;
      $step_arr[14] = +2.0230154729287E+5;
      $step_arr[15] = +4.0460928016924E+5;
      $step_arr[16] = +8.0922476138170E+5;
      $retvalu = $step_arr[$shft];
   } elsif ($poles == 4) {
      $step_arr[0] = +1.0;
      $step_arr[1] = +2.03878236E+1;
      $step_arr[2] = +5.009900279E+1;
      $step_arr[3] = +1.0828162825E+2;
      $step_arr[4] = +2.2418834788E+2;
      $step_arr[5] = +4.5579968748E+2;
      $step_arr[6] = +9.189270663E+2;
      $step_arr[7] = +1.84513549236E+3;
      $step_arr[8] = +3.69752950942E+3;
      $step_arr[9] = +7.40230620593E+3;
      $step_arr[10] = +1.48118537839E+4;
      $step_arr[11] = +2.963094667636E+4;
      $step_arr[12] = +5.926913086318E+4;
      $step_arr[13] = +1.1854549900613E+5;
      $step_arr[14] = +2.3709822433702E+5;
      $step_arr[15] = +4.7420371217077E+5;
      $step_arr[16] = +9.4841452431326E+5;
      $retvalu = $step_arr[$shft];
   } elsif ($poles == 5) {
      $step_arr[0] = +1.0;
      $step_arr[1] = +2.301559338E+1;
      $step_arr[2] = +5.651862690E+1;
      $step_arr[3] = +1.2214337218E+2;
      $step_arr[4] = +2.5288215751E+2;
      $step_arr[5] = +5.1413464355E+2;
      $step_arr[6] = +1.03653347249E+3;
      $step_arr[7] = +2.08127953713E+3;
      $step_arr[8] = +4.17074621528E+3;
      $step_arr[9] = +8.34966697295E+3;
      $step_arr[10] = +1.670750214140E+4;
      $step_arr[11] = +3.342316957219E+4;
      $step_arr[12] = +6.685449836446E+4;
      $step_arr[13] = +1.3371716646729E+5;
      $step_arr[14] = +2.6744248565129E+5;
      $step_arr[15] = +5.3489319815476E+5;
      $step_arr[16] = +1.06979462735136E+6;
      $retvalu = $step_arr[$shft];
   } else {
      $retvalu = 0.0;
   }
   return ($retvalu);
}
{
sub LX_SHC_SHIFTSHIFT() { 3.85514; }
   sub LX_SHC_STEPSHIFT() { 8.5; }
   sub shc_steps2shft($ ) {
      my ($steps) = @_;
      return (Kw::lg($steps + LX_SHC_STEPSHIFT) - LX_SHC_SHIFTSHIFT);
   }
   sub shc_steps2shftinv($ ) {
      my ($shft) = @_;
      return (Kw::pow(2.0, $shft + LX_SHC_SHIFTSHIFT) - LX_SHC_STEPSHIFT);
   }
}
sub shc_shft2steps($ ) {
   my ($shft) = @_;
   return (shc_shftpoles2steps($shft, 4));
}
sub m2k($ ) {
   my ($emm) = @_;
   return (sqrt($emm));
}
sub k2m($ ) {
   my ($ekk) = @_;
   return ($ekk * $ekk);
}
sub a2k($ ) {
   my ($eaa) = @_;
   return (sin($eaa));
}
sub k2a($ ) {
   my ($ekk) = @_;
   return (Kw::sininv($ekk));
}
sub a2m($ ) {
   my ($eaa) = @_;
   return (Kw::square(sin($eaa)));
}
sub m2a($ ) {
   my ($emm) = @_;
   return (Kw::sininv(sqrt($emm)));
}
sub m2b($ ) {
   my ($emm) = @_;
   return (1.0 / sqrt(1.0 - $emm));
}
sub b2m($ ) {
   my ($ebb) = @_;
   return (1.0 - 1.0 / ($ebb * $ebb));
}
sub elliptic1m($ ) {
   my ($emm) = @_;
   my $retvalu;
   my @aa_arr;
   my @bb_arr;
   my @cc_arr;
   my $dd;
   if ($emm < 1.0) {
      $retvalu = Kw::PI / (2.0 * Kw::agmean(1.0, sqrt(1.0 - $emm)));
   } elsif (1.0 < $emm) {
      $aa_arr[0] = 1.0;
      $aa_arr[1] = 0.0;
      $bb_arr[0] = 0.0;
      $bb_arr[1] = sqrt($emm - 1.0);
      $dd = Kw::agcmean(@aa_arr, @bb_arr, @cc_arr);
      $retvalu = Kw::PI / (2.0 * $dd);
   } else {
      $retvalu = 20.0;
   }
   return ($retvalu);
}
sub ellipticK($ ) {
   my ($ekk) = @_;
   return (elliptic1m(k2m($ekk)));
}
sub elliptic1m__1($ ) {
   my ($emm) = @_;
   return (Kw::carlsonRF(0.0, 1.0 - $emm, 1.0));
}
sub elliptic1m__2($ ) {
   my ($emm) = @_;
   my $term;
   my $sum_curr;
   my $sum_prev;
   my $ii;
   $term = Kw::TAU / 4.0;
   $sum_curr = 0.0;
   $ii = 1;
   for (;;) {
      $term *= Kw::square($emm * $ii / ($ii + 1.0));
      $sum_prev = $sum_curr;
      $sum_curr += $term;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $ii += 2;
   }
   return ($sum_curr);
}
sub elliptic1im($$ ) {
   my ($emm, $circ_rad) = @_;
   my $aan;
   my $ggn;
   my $cc;
   my $skip_flag;
   my $temp;
   my $retvalu;
   my $tt;
   my $kresult;
   my $lcirc_rad;
   my $emmc;
   my $ii;
   my $modd;
   my $signof;
   my $npihlfs;
   my $ee;
   $emmc = 1.0 - $emm;
   if (Kw::iszero($emm)) {
      $retvalu = $circ_rad;
   } elsif (Kw::iszero($emmc)) {
      if (Kw::PI / 2.0 <= abs($circ_rad)) {
         $retvalu = Kw::DBLMAX;
      } else {
         $retvalu = log(Kw::tan((Kw::PI / 2.0 + $circ_rad) / 2.0));
      }
   } else {
      $npihlfs = floor($circ_rad / (Kw::PI / 2.0));
      if (Kw::isodd($npihlfs)) {
         $npihlfs += 1;
      }
      $lcirc_rad = $circ_rad;
      if ($npihlfs == 0) {
         $kresult = 0.0;
      } else {
         $kresult = Kw::elliptic1m($emm);
         $lcirc_rad -= $npihlfs * Kw::PI / 2.0;
      }
      if ($lcirc_rad < 0.0) {
         $lcirc_rad = -$lcirc_rad;
         $signof = -1;
      } else {
         $signof = 1;
      }
      $tt = Kw::tan($lcirc_rad);
      $ggn = sqrt($emmc);
      $skip_flag = Kw::false;
      if (10.0 < abs($tt)) {
         $ee = 1.0 / ($ggn * $tt);
         if (abs($ee) < 10.0) {
            if ($npihlfs == 0) {
               $kresult = Kw::elliptic1m($emm);
            }
            $temp = $kresult - Kw::elliptic1im($emm, atan2($ee, 1.0));
            $skip_flag = Kw::true;
         }
      }
      if (not $skip_flag) {
         $aan = 1.0;
         $ii = 1;
         $modd = 0;
         for (;;) {
            $temp = $ggn / $aan;
            $lcirc_rad += atan2($tt * $temp, 1.0) + $modd * Kw::PI;
            $modd = floor($lcirc_rad / Kw::PI + 0.5);
            $tt *= (1.0 + $temp) / (1.0 - $temp * $tt * $tt);
            $cc = ($aan - $ggn) / 2.0;
            $temp = sqrt($aan * $ggn);
            $aan = ($aan + $ggn) / 2.0;
            $ggn = $temp;
            $ii += $ii;
            if (abs($cc / $aan) <= Kw::DBLEPS) {
               last; # loop AWAIT
            }
         }
         $temp = (atan2($tt, 1.0) + $modd * Kw::PI) / ($ii * $aan);
      }
      if ($signof < 0) {
         $temp = -$temp;
      }
      $retvalu = $temp + $npihlfs * $kresult;
   }
   return ($retvalu);
}
sub elliptic1k($ ) {
   my ($kk) = @_;
   return (elliptic1m(k2m($kk)));
}
sub elliptic1ik($$ ) {
   my ($kk, $circ_rad) = @_;
   return (elliptic1im(k2m($kk), $circ_rad));
}
sub elliptic1a($ ) {
   my ($aa) = @_;
   return (elliptic1m(a2m($aa)));
}
sub elliptic1ia($$ ) {
   my ($aa, $circ_rad) = @_;
   return (elliptic1im(a2m($aa), $circ_rad));
}
sub ellipticF($$ ) {
   my ($ekk, $circ_rad) = @_;
   return (elliptic1im(k2m($ekk), $circ_rad));
}
sub elliptic1im__1($$ ) {
   my ($emm, $circ_rad) = @_;
   my $sinphi;
   my $npihlfs;
   my $lcirc_rad;
   my $kresult;
   $npihlfs = floor($circ_rad / (Kw::PI / 2.0));
   if (Kw::isodd($npihlfs)) {
      $npihlfs += 1;
   }
   $lcirc_rad = $circ_rad;
   if ($npihlfs == 0) {
      $kresult = 0.0;
   } else {
      $kresult = Kw::elliptic1m($emm) * $npihlfs;
      $lcirc_rad -= $npihlfs * Kw::PI / 2.0;
   }
   $sinphi = sin($lcirc_rad);
   return ($sinphi * Kw::carlsonRF(Kw::square(cos($lcirc_rad)), 1.0 -
            $emm * Kw::square($sinphi), 1.0) + $kresult);
}
sub elliptic2m($ ) {
   my ($emm) = @_;
   my $aan;
   my $ggn;
   my $tn;
   my $twon;
   my $sum;
   my $sum_prev;
   my $ii;
   my $aemm;
   my $retvalu;
   $aemm = abs($emm);
   if ($aemm < 1.0) {
      $twon = 0.5;
      $aan = 1.0;
      $ggn = sqrt(1.0 - $emm);
      $sum = 1.0 - $emm / 2.0;
      $ii = 0;
      for (;;) {
         $twon *= 2.0;
         $tn = $aan;
         $aan = ($aan + $ggn) / 2.0;
         $ggn = sqrt($tn * $ggn);
         $sum_prev = $sum;
         $sum -= $twon * ($aan * $aan - $ggn * $ggn);
         if (Kw::iseq($sum, $sum_prev)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = Kw::PI * $sum / (2.0 * $aan);
   } else {
      $retvalu = 1.0;
   }
   return ($retvalu);
}
sub ellipticE($ ) {
   my ($ekk) = @_;
   return (elliptic2m(k2m($ekk)));
}
sub elliptic2m__1($ ) {
   my ($emm) = @_;
   return (Kw::carlsonRF(0.0, 1.0 - $emm, 1.0) - $emm * Kw::carlsonRD(0.0
            , 1.0 - $emm, 1.0) / 3.0);
}
sub elliptic2im($$ ) {
   my ($emm, $circ_rad) = @_;
   my $aan;
   my $ggn;
   my $cc;
   my $errsum;
   my $temp;
   my $tt;
   my $eliptwoemm;
   my $emmc;
   my $ii;
   my $modd;
   my $npihalfs;
   my $signof;
   my $lcirc_rad;
   my $retvalu;
   if (Kw::iszero($emm)) {
      $retvalu = $circ_rad;
   } else {
      $emmc = 1.0 - $emm;
      $eliptwoemm = elliptic2m($emm);
      $npihalfs = floor($circ_rad / (Kw::PI / 2.0));
      if (Kw::isodd($npihalfs)) {
         $npihalfs += 1;
      }
      $lcirc_rad = $circ_rad - $npihalfs * Kw::PI / 2.0;
      if (Kw::iszero($emmc)) {
         $retvalu = sin($lcirc_rad) + $npihalfs * $eliptwoemm;
      } else {
         if ($lcirc_rad < 0.0) {
            $lcirc_rad = -$lcirc_rad;
            $signof = -1;
         } else {
            $signof = 1;
         }
         $tt = Kw::tan($lcirc_rad);
         $ggn = sqrt($emmc);
         if (abs($tt) < - 1) {
            $errsum = 1.0 / ($ggn * $tt);
         } else {
            $errsum = 0.0;
         }
         if (0.0 < abs($errsum) and abs($errsum) < 1000.0) {
            $errsum = atan2(1.0, $ggn * $tt);
            $temp = $eliptwoemm - elliptic2im($emm, $errsum) + $emm *
                     sin($circ_rad) * sin($errsum);
         } else {
            $cc = sqrt($emm);
            $aan = 1.0;
            $ii = 1;
            $modd = 0;
            while (Kw::DBLEPS < abs($cc / $aan)) {
               $temp = $ggn / $aan;
               $lcirc_rad += atan2($tt * $temp, 1.0) + $modd * Kw::PI;
               $modd = floor($lcirc_rad / Kw::PI + 0.5);
               $tt *= (1.0 + $temp) / (1.0 - $temp * $tt * $tt);
               $cc = ($aan - $ggn) / 2.0;
               $temp = sqrt($aan * $ggn);
               $aan = ($aan + $ggn) / 2.0;
               $ggn = $temp;
               $ii += $ii;
               $errsum += $cc * sin($lcirc_rad);
            }
            $temp = $errsum + $eliptwoemm * (atan2($tt, 1.0) + $modd *
                     Kw::PI) / ($ii * $aan * elliptic1m($emm));
         }
         if ($signof < 0) {
            $temp = -$temp;
         }
         $retvalu = $temp + $npihalfs * $eliptwoemm;
      }
   }
   return ($retvalu);
}
sub ellipticEi($$ ) {
   my ($ekk, $circ_rad) = @_;
   return (elliptic2im(k2m($ekk), $circ_rad));
}
sub elliptic2im__1($$ ) {
   my ($emm, $circ_rad) = @_;
   my $sinphi;
   my $sinphisq;
   my $sinphicu;
   my $cosphisq;
   my $argb;
   my $npihlfs;
   my $lcirc_rad;
   my $kresult;
   $npihlfs = floor($circ_rad / (Kw::PI / 2.0));
   if (Kw::isodd($npihlfs)) {
      $npihlfs += 1;
   }
   $lcirc_rad = $circ_rad;
   if ($npihlfs == 0) {
      $kresult = 0.0;
   } else {
      $kresult = Kw::elliptic2m($emm) * $npihlfs;
      $lcirc_rad -= $npihlfs * Kw::PI / 2.0;
   }
   $sinphi = sin($lcirc_rad);
   $sinphisq = $sinphi * $sinphi;
   $sinphicu = $sinphi * $sinphisq;
   $cosphisq = Kw::square(cos($lcirc_rad));
   $argb = 1.0 - $emm * $sinphisq;
   return ($sinphi * carlsonRF($cosphisq, $argb, 1.0) - $emm * $sinphicu
            * carlsonRD($cosphisq, $argb, 1.0) / 3.0 + $kresult);
}
sub elliptic2k($ ) {
   my ($kk) = @_;
   return (elliptic2m(k2m($kk)));
}
sub elliptic2ik($$ ) {
   my ($kk, $circ_rad) = @_;
   return (elliptic2im(k2m($kk), $circ_rad));
}
sub elliptic2a($ ) {
   my ($aa) = @_;
   return (elliptic2m(a2m($aa)));
}
sub elliptic2ia($$ ) {
   my ($aa, $circ_rad) = @_;
   return (elliptic2im(a2m($aa), $circ_rad));
}
sub elliptic3m($$ ) {
   my ($enn, $emm) = @_;
   my $aan;
   my $ggn;
   my $ppn;
   my $een;
   my $qqn;
   my $tpp;
   my $tag;
   my $tn;
   my $sum;
   my $sum_prev;
   my $ii;
   my $aemm;
   my $retvalu;
   $aemm = abs($emm);
   if ($aemm < 1.0) {
      $aan = 1.0;
      $ggn = sqrt(1.0 - $emm);
      if (1.0 <= abs($enn)) {
         $ppn = sqrt(1.0 - $emm / $enn);
      } else {
         $ppn = sqrt(1.0 - $enn);
      }
      $qqn = 1.0;
      $sum = $qqn;
      $ii = 0;
      for (;;) {
         $tpp = $ppn * $ppn;
         $tag = $aan * $ggn;
         $een = ($tpp - $tag) / ($tpp + $tag);
         $ppn = ($tpp + $tag) / (2.0 * $ppn);
         $qqn = $qqn * $een / 2.0;
         $aan = ($aan + $ggn) / 2.0;
         $ggn = sqrt($tag);
         $sum_prev = $sum;
         $sum += $qqn;
         if (Kw::iseq($sum, $sum_prev) and Kw::iseq($aan, $ggn)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (20 <= $ii) {
            last; # loop AWAIT
         }
      }
      if (1.0 <= abs($enn)) {
         $tn = $emm * $sum / ($emm - $enn);
      } else {
         $tn = 2.0 + $sum * $enn / (1.0 - $enn);
      }
      $retvalu = Kw::PI * $tn / (4.0 * $aan);
   } else {
      $retvalu = 1.0;
   }
   return ($retvalu);
}
sub elliptic3k($$ ) {
   my ($enn, $kk) = @_;
   return (elliptic3m($enn, k2m($kk)));
}
sub elliptic3ik($$$ ) {
   my ($enn, $kk, $circ_rad) = @_;
   return (elliptic3im($enn, k2m($kk), $circ_rad));
}
sub elliptic3a($$ ) {
   my ($enn, $aa) = @_;
   return (elliptic3m($enn, a2m($aa)));
}
sub elliptic3ia($$$ ) {
   my ($enn, $aa, $circ_rad) = @_;
   return (elliptic3im($enn, a2m($aa), $circ_rad));
}
sub ellipticP($$ ) {
   my ($ekk, $circ_rad) = @_;
   return (elliptic3m($ekk, $circ_rad));
}
sub elliptic3im($$$ ) {
   my ($enn, $emm, $circ_rad) = @_;
   my $sp;
   my $cp;
   my $spq;
   my $cpq;
   my $spm;
   my $spn;
   $sp = sin($circ_rad);
   $cp = cos($circ_rad);
   $spq = $sp * $sp;
   $cpq = $cp * $cp;
   $spm = 1.0 - $emm * $spq;
   $spn = 1.0 - $enn * $spq;
   return ($sp * (Kw::carlsonRF($cpq, $spm, 1.0) + $spq * $enn *
            Kw::carlsonRJ($cpq, $spm, 1.0, $spn) / 3.0));
}
sub ellipticPi($$$ ) {
   my ($enn, $ekk, $circ_rad) = @_;
   return (elliptic3im($enn, k2m($ekk), $circ_rad));
}
sub elliptic3m__1($$ ) {
   my ($enn, $emm) = @_;
   return (Kw::carlsonRF(0.0, 1.0 - $emm, 1.0) + $enn * Kw::carlsonRJ(0.0
            , 1.0 - $emm, 1.0, 1.0 - $enn) / 3.0);
}
sub elliptic3im__1($$$ ) {
   my ($enn, $emm, $circ_rad) = @_;
   my $sinphi;
   my $sinphisq;
   my $sinphicu;
   my $cosphisq;
   my $argb;
   my $npihlfs;
   my $lcirc_rad;
   my $kresult;
   $npihlfs = floor($circ_rad / (Kw::PI / 2.0));
   if (Kw::isodd($npihlfs)) {
      $npihlfs += 1;
   }
   $lcirc_rad = $circ_rad;
   if ($npihlfs == 0) {
      $kresult = 0.0;
   } else {
      $kresult = Kw::elliptic3m($enn, $emm) * $npihlfs;
      $lcirc_rad -= $npihlfs * Kw::PI / 2.0;
   }
   $sinphi = sin($lcirc_rad);
   $sinphisq = $sinphi * $sinphi;
   $sinphicu = $sinphi * $sinphisq;
   $cosphisq = Kw::square(cos($lcirc_rad));
   $argb = 1.0 - $emm * $sinphisq;
   return ($kresult + $sinphi * carlsonRF($cosphisq, $argb, 1.0) +
            $sinphicu * carlsonRJ($cosphisq, $argb, 1.0, 1.0 - $enn *
            $sinphisq) * $enn / 3.0);
}
{
sub LX_ELLIPTIC_EPS() { 1.0E-9; }
   my $lv_emm = -10.0;
   my $lv_elli_rad = -10.0;
   my @lv_arr_arr;
   sub lf_jacobiphi_0_1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $ebb;
      my $circ_rad;
      my $geo_mean;
      my $twon;
      my @aa_arr;
      my @cc_arr;
      my $ii;
      $ebb = sqrt(1.0 - $emm);
      $aa_arr[0] = 1.0;
      $cc_arr[0] = sqrt($emm);
      $twon = 1.0;
      $ii = 0;
      while (Kw::DBLEPS < abs($cc_arr[$ii] / $aa_arr[$ii])) {
         if (19 - 1 < $ii) {
            last;
         }
         $ai = $aa_arr[$ii];
         $ii += 1;
         $cc_arr[$ii] = ($ai - $ebb) / 2.0;
         $geo_mean = sqrt($ai * $ebb);
         $aa_arr[$ii] = ($ai + $ebb) / 2.0;
         $ebb = $geo_mean;
         $twon *= 2.0;
      }
      $circ_rad = $twon * $aa_arr[$ii] * $elli_rad;
      while (0 < $ii) {
         $ebb = $cc_arr[$ii] * sin($circ_rad) / $aa_arr[$ii];
         $circ_rad = (Kw::sininv($ebb) + $circ_rad) / 2.0;
         $ii -= 1;
      }
      return ($circ_rad);
   }
   sub lf_cn_0_1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $csx;
      my $snx;
      my $retvalu;
      if ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $csx = cos($elli_rad);
         $ai = $emm * ($elli_rad - $snx * $csx) / 4.0;
         $retvalu = $csx + $ai * $snx;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $retvalu = cos(lf_jacobiphi_0_1($emm, $elli_rad));
      } else {
         $csx = Kw::cosh($elli_rad);
         if ($emm < 1.0) {
            $snx = Kw::sinh($elli_rad);
            $ai = (1.0 - $emm) / 4.0;
            $retvalu = 1.0 / $csx - $ai * ($csx * $snx + $elli_rad);
         } else {
            $retvalu = 1.0 / $csx;
         }
      }
      return ($retvalu);
   }
   sub lf_sn_0_1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $csx;
      my $snx;
      my $retvalu;
      if ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $csx = cos($elli_rad);
         $ai = $emm * ($elli_rad - $snx * $csx) / 4.0;
         $retvalu = $snx - $ai * $csx;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $retvalu = sin(lf_jacobiphi_0_1($emm, $elli_rad));
      } else {
         $csx = Kw::cosh($elli_rad);
         $snx = Kw::sinh($elli_rad);
         if ($emm < 1.0) {
            $ai = (1.0 - $emm) / 4.0;
            $retvalu = ($snx + $snx * $ai - $ai * $elli_rad / $csx) / $csx;
         } else {
            $retvalu = $snx / $csx;
         }
      }
      return ($retvalu);
   }
   sub lf_dn_0_1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $csx;
      my $snx;
      my $retvalu;
      if ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $retvalu = 1.0 - $emm * $snx * $snx / 2.0;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $snx = sin(lf_jacobiphi_0_1($emm, $elli_rad));
         $retvalu = Kw::sqrtx(1.0 - $emm * $snx * $snx);
      } else {
         $csx = Kw::cosh($elli_rad);
         if ($emm < 1.0) {
            $ai = (1.0 - $emm) / 4.0;
            $snx = Kw::sinh($elli_rad);
            $retvalu = 1.0 / $csx + $ai * ($csx * $snx + $elli_rad);
         } else {
            $retvalu = 1.0 / $csx;
         }
      }
      return ($retvalu);
   }
   sub lf_cn_gt1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ekk;
      my $retvalu;
      $ekk = m2k($emm);
      $retvalu = lf_dn_0_1(1.0 / $emm, $elli_rad * $ekk);
      return ($retvalu);
   }
   sub lf_sn_gt1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ekk;
      my $retvalu;
      $ekk = m2k($emm);
      $retvalu = lf_sn_0_1(1.0 / $emm, $elli_rad * $ekk) / $ekk;
      return ($retvalu);
   }
   sub lf_dn_gt1($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ekk;
      my $retvalu;
      $ekk = m2k($emm);
      $retvalu = lf_cn_0_1(1.0 / $emm, $elli_rad * $ekk);
      return ($retvalu);
   }
   sub lf_ellpj_0_1($$\@ ) {
      my ($emm, $elli_rad, $ret_arr_p) = @_;
      # local-use Perl $lv_emm;
      # local-use Perl $lv_elli_rad;
      my $ai;
      my $csx;
      my $snx;
      my $circ_rad;
      my $twon;
      if ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $csx = cos($elli_rad);
         $ai = $emm * ($elli_rad - $snx * $csx) / 4.0;
         $$ret_arr_p[0] = $snx - $ai * $csx;
         $$ret_arr_p[1] = $csx + $ai * $snx;
         $$ret_arr_p[2] = 1.0 - $emm * $snx * $snx / 2.0;
         $$ret_arr_p[3] = $elli_rad - $ai;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $circ_rad = lf_jacobiphi_0_1($emm, $elli_rad);
         $snx = sin($circ_rad);
         $$ret_arr_p[0] = $snx;
         $$ret_arr_p[1] = cos($circ_rad);
         $$ret_arr_p[2] = Kw::sqrtx(1.0 - $emm * $snx * $snx);
         $$ret_arr_p[3] = $circ_rad;
      } else {
         $ai = (1.0 - $emm) / 4.0;
         $csx = Kw::cosh($elli_rad);
         $snx = Kw::tanh($elli_rad);
         $twon = $csx * Kw::sinh($elli_rad);
         $$ret_arr_p[0] = $snx + $ai * ($twon - $elli_rad) / ($csx * $csx);
         $$ret_arr_p[3] = 2.0 * atan2(exp($elli_rad), 1.0) - Kw::PI / 2.0
                  + $ai * ($twon - $elli_rad) / $csx;
         $ai *= $snx / $csx;
         $$ret_arr_p[1] = 1.0 / $csx - $ai * ($twon - $elli_rad);
         $$ret_arr_p[2] = 1.0 / $csx + $ai * ($twon + $elli_rad);
      }
      $lv_emm = $emm;
      $lv_elli_rad = $elli_rad;
      return 0;
   }
   sub lf_ellpj($$\@ ) {
      my ($emm, $elli_rad, $ret_arr_p) = @_;
      # local-use Perl $lv_emm;
      # local-use Perl $lv_elli_rad;
      my $ai;
      my $csx;
      my $snx;
      my @junk_arr;
      if ($emm < 0.0) {
         if ($emm < - 2.0) {
            $snx = sin($elli_rad) + Kw::tanh($elli_rad) - lf_sn_gt1(1.0 -
                     $emm, $elli_rad);
         } else {
            $snx = sin($elli_rad) + Kw::tanh($elli_rad) - lf_sn_0_1(1.0 -
                     $emm, $elli_rad);
         }
         if ($emm < - 1.0) {
            $csx = 2.0 * cos($elli_rad) - lf_cn_gt1(-$emm, $elli_rad);
         } else {
            $csx = 2.0 * cos($elli_rad) - lf_cn_0_1(-$emm, $elli_rad);
         }
         $$ret_arr_p[0] = $snx;
         $$ret_arr_p[1] = $csx;
         $$ret_arr_p[2] = -dn(-$emm, $elli_rad) + 2.0;
         $$ret_arr_p[3] = atan2($snx, $csx);
      } elsif ($emm <= 1.0) {
         lf_ellpj_0_1($emm, $elli_rad, @junk_arr);
         $$ret_arr_p[0] = $junk_arr[0];
         $$ret_arr_p[1] = $junk_arr[1];
         $$ret_arr_p[2] = $junk_arr[2];
         $$ret_arr_p[3] = $junk_arr[3];
      } else {
         $ai = m2k($emm);
         lf_ellpj_0_1(1.0 / $emm, $elli_rad * $ai, @junk_arr);
         $$ret_arr_p[0] = $junk_arr[0] / $ai;
         $$ret_arr_p[1] = $junk_arr[2];
         $$ret_arr_p[2] = $junk_arr[1];
         $$ret_arr_p[3] = $junk_arr[3];
      }
      $lv_emm = $emm;
      $lv_elli_rad = $elli_rad;
      return 0;
   }
   sub jacobiphi($$ ) {
      my ($emm, $elli_rad) = @_;
      my $circ_rad;
      if (0.0 < $emm and $emm < 1.0) {
         $circ_rad = lf_jacobiphi_0_1($emm, $elli_rad);
      } else {
         $circ_rad = Kw::taninv(sn($emm, $elli_rad) / cn($emm, $elli_rad));
      }
      return ($circ_rad);
   }
   sub sn__1($$ ) {
      my ($emm, $elli_rad) = @_;
      # local-use Perl $lv_emm;
      # local-use Perl $lv_elli_rad;
      # local-use Perl @lv_arr_arr;
      if (Kw::isneq($emm, $lv_emm) or Kw::isneq($elli_rad, $lv_elli_rad)) {
         lf_ellpj($emm, $elli_rad, @lv_arr_arr);
      }
      return ($lv_arr_arr[0]);
   }
   sub cn__1($$ ) {
      my ($emm, $elli_rad) = @_;
      # local-use Perl $lv_emm;
      # local-use Perl $lv_elli_rad;
      # local-use Perl @lv_arr_arr;
      if (Kw::isneq($emm, $lv_emm) or Kw::isneq($elli_rad, $lv_elli_rad)) {
         lf_ellpj($emm, $elli_rad, @lv_arr_arr);
      }
      return ($lv_arr_arr[1]);
   }
   sub dn__1($$ ) {
      my ($emm, $elli_rad) = @_;
      # local-use Perl $lv_emm;
      # local-use Perl $lv_elli_rad;
      # local-use Perl @lv_arr_arr;
      if (Kw::isneq($emm, $lv_emm) or Kw::isneq($elli_rad, $lv_elli_rad)) {
         lf_ellpj($emm, $elli_rad, @lv_arr_arr);
      }
      return ($lv_arr_arr[2]);
   }
   sub dn($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ekk;
      my $retvalu;
      if ($emm < - 1.0) {
         $retvalu = -lf_dn_gt1(-$emm, $elli_rad) + 2.0;
      } elsif ($emm < 0.0) {
         $retvalu = -lf_dn_0_1(-$emm, $elli_rad) + 2.0;
      } elsif ($emm <= 1.0) {
         $retvalu = lf_dn_0_1($emm, $elli_rad);
      } else {
         $ekk = m2k($emm);
         $retvalu = lf_cn_0_1(1.0 / $emm, $elli_rad * $ekk);
      }
      return ($retvalu);
   }
   sub cn($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $csx;
      my $snx;
      my $ekk;
      my $retvalu;
      if ($emm < - 1.0) {
         $retvalu = -lf_cn_gt1(-$emm, $elli_rad) + 2.0 * cos($elli_rad);
      } elsif ($emm < 0.0) {
         $retvalu = -lf_cn_0_1(-$emm, $elli_rad) + 2.0 * cos($elli_rad);
      } elsif ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $csx = cos($elli_rad);
         $ai = $emm * ($elli_rad - $snx * $csx) / 4.0;
         $retvalu = $csx + $ai * $snx;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $retvalu = cos(lf_jacobiphi_0_1($emm, $elli_rad));
      } elsif ($emm <= 1.0) {
         $ai = (1.0 - $emm) / 4.0;
         $csx = Kw::cosh($elli_rad);
         $snx = Kw::sinh($elli_rad);
         $retvalu = 1.0 / $csx - $ai * ($csx * $snx + $elli_rad);
      } else {
         $ekk = m2k($emm);
         $retvalu = lf_dn_0_1(1.0 / $emm, $elli_rad * $ekk);
      }
      return ($retvalu);
   }
   sub sn($$ ) {
      my ($emm, $elli_rad) = @_;
      my $ai;
      my $csx;
      my $snx;
      my $ekk;
      my $retvalu;
      if ($emm < - 1.0) {
         $retvalu = sin($elli_rad) + Kw::tanh($elli_rad) - lf_sn_gt1(1.0
                  - $emm, $elli_rad);
      } elsif ($emm < 0.0) {
         $retvalu = sin($elli_rad) + Kw::tanh($elli_rad) - lf_sn_0_1(1.0
                  - $emm, $elli_rad);
      } elsif ($emm < LX_ELLIPTIC_EPS) {
         $snx = sin($elli_rad);
         $csx = cos($elli_rad);
         $ai = $emm * ($elli_rad - $snx * $csx) / 4.0;
         $retvalu = $snx - $ai * $csx;
      } elsif ($emm < 1.0 - LX_ELLIPTIC_EPS) {
         $retvalu = sin(lf_jacobiphi_0_1($emm, $elli_rad));
      } elsif ($emm <= 1.0) {
         $ai = (1.0 - $emm) / 4.0;
         $csx = Kw::cosh($elli_rad);
         $snx = Kw::sinh($elli_rad);
         $retvalu = ($snx + $snx * $ai - $ai * $elli_rad / $csx) / $csx;
      } else {
         $ekk = m2k($emm);
         $retvalu = lf_sn_0_1(1.0 / $emm, $elli_rad * $ekk) / $ekk;
      }
      return ($retvalu);
   }
}
sub cd($$ ) {
   my ($emm, $elli_rad) = @_;
   return (cn($emm, $elli_rad) / dn($emm, $elli_rad));
}
sub sd($$ ) {
   my ($emm, $elli_rad) = @_;
   return (sn($emm, $elli_rad) / dn($emm, $elli_rad));
}
sub nd($$ ) {
   my ($emm, $elli_rad) = @_;
   return (1.0 / dn($emm, $elli_rad));
}
sub dc($$ ) {
   my ($emm, $elli_rad) = @_;
   return (dn($emm, $elli_rad) / cn($emm, $elli_rad));
}
sub nc($$ ) {
   my ($emm, $elli_rad) = @_;
   return (1.0 / cn($emm, $elli_rad));
}
sub sc($$ ) {
   my ($emm, $elli_rad) = @_;
   return (sn($emm, $elli_rad) / cn($emm, $elli_rad));
}
sub ds($$ ) {
   my ($emm, $elli_rad) = @_;
   return (dn($emm, $elli_rad) / sn($emm, $elli_rad));
}
sub cs($$ ) {
   my ($emm, $elli_rad) = @_;
   return (cn($emm, $elli_rad) / sn($emm, $elli_rad));
}
sub ns($$ ) {
   my ($emm, $elli_rad) = @_;
   return (1.0 / sn($emm, $elli_rad));
}
sub ell2cir($$ ) {
   my ($emm, $elli_rad) = @_;
   return (jacobiphi($emm, $elli_rad));
}
sub cir2ell($$ ) {
   my ($emm, $circ_rad) = @_;
   return (elliptic1im($emm, $circ_rad));
}
sub jacobicir($ ) {
   my ($emm) = @_;
   return (4.0 * elliptic2m($emm) / sqrt(1.0 - $emm));
}
sub nom($ ) {
   my ($emm) = @_;
   return (exp(-Kw::PI * Kw::elliptic1m(1.0 - $emm) / Kw::elliptic1m($emm)));
}
sub theta1($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $sig;
   my $ang;
   my $ang_inc;
   my $qq;
   $sig = 1.0;
   $qq = nom($emm);
   $sum_curr = 0.0;
   $ang = $zz;
   $ang_inc = 2.0 * $zz;
   $enn = 0;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += $sig * Kw::pow($qq, Kw::square($enn + 0.5)) * sin($ang);
      $ang += $ang_inc;
      $sig = -$sig;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return (2.0 * $sum_curr);
}
sub theta2($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $ang;
   my $ang_inc;
   my $qq;
   $qq = nom($emm);
   $sum_curr = 0.0;
   $ang = $zz;
   $ang_inc = 2.0 * $zz;
   $enn = 0;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += Kw::pow($qq, Kw::square($enn + 0.5)) * cos($ang);
      $ang += $ang_inc;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return (2.0 * $sum_curr);
}
sub theta3($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $ang;
   my $ang_inc;
   my $qq;
   $qq = nom($emm);
   $sum_curr = 0.0;
   $ang = 2.0 * $zz;
   $ang_inc = $ang;
   $enn = 1;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += Kw::pow($qq, $enn * $enn) * cos($ang);
      $ang += $ang_inc;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return (1.0 + 2.0 * $sum_curr);
}
sub theta4($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $ang;
   my $ang_inc;
   my $qq;
   my $sig;
   $sig = 1.0;
   $qq = nom($emm);
   $sum_curr = 0.0;
   $ang = 2.0 * $zz;
   $ang_inc = $ang;
   $enn = 1;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += $sig * Kw::pow($qq, $enn * $enn) * cos($ang);
      $ang += $ang_inc;
      $sig = -$sig;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return (1.0 + 2.0 * $sum_curr);
}
sub nevillethetac($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $qq;
   my $km;
   my $cos_of;
   my $cos_inc;
   $km = Kw::elliptic1m($emm);
   $qq = exp(-Kw::PI * Kw::elliptic1m(1.0 - $emm) / $km);
   $sum_curr = 0.0;
   $cos_inc = Kw::PI * $zz / $km;
   $cos_of = Kw::PI * $zz / (2.0 * $km);
   $enn = 0;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += Kw::pow($qq, $enn * $enn + $enn) * cos($cos_of);
      $cos_of += $cos_inc;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return ($sum_curr * sqrt(Kw::TAU * sqrt($qq / $emm) / $km));
}
sub nevillethetad($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $qq;
   my $km;
   my $cos_of;
   my $cos_inc;
   $km = Kw::elliptic1m($emm);
   $qq = exp(-Kw::PI * Kw::elliptic1m(1.0 - $emm) / $km);
   $sum_curr = 0.0;
   $cos_inc = Kw::PI * $zz / $km;
   $cos_of = Kw::PI * $zz / $km;
   $enn = 1;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += Kw::pow($qq, $enn * $enn) * cos($cos_of);
      $cos_of += $cos_inc;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return ((1.0 + 2.0 * $sum_curr) * sqrt(Kw::TAU / $km) / 2.0);
}
sub nevillethetan($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $qq;
   my $km;
   my $sig;
   my $cos_of;
   my $cos_inc;
   $km = Kw::elliptic1m($emm);
   $qq = exp(-Kw::PI * Kw::elliptic1m(1.0 - $emm) / $km);
   $sum_curr = 0.5;
   $sig = -1.0;
   $cos_inc = Kw::PI * $zz / $km;
   $cos_of = Kw::PI * $zz / $km;
   $enn = 1;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += $sig * Kw::pow($qq, $enn * $enn) * cos($cos_of);
      $cos_of += $cos_inc;
      $sig = -$sig;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return (2.0 * $sum_curr * sqrt(Kw::TAU / ($km * sqrt(1.0 - $emm))) / 2.0);
}
sub nevillethetas($$ ) {
   my ($emm, $zz) = @_;
   my $sum_curr;
   my $sum_prev;
   my $enn;
   my $qq;
   my $km;
   my $sig;
   my $cos_of;
   my $cos_inc;
   $km = Kw::elliptic1m($emm);
   $qq = exp(-Kw::PI * Kw::elliptic1m(1.0 - $emm) / $km);
   $sum_curr = 0.0;
   $sig = 1.0;
   $cos_inc = Kw::PI * $zz / $km;
   $cos_of = Kw::PI * $zz / (2.0 * $km);
   $enn = 0;
   for (;;) {
      $sum_prev = $sum_curr;
      $sum_curr += $sig * Kw::pow($qq, $enn * $enn + $enn) * sin($cos_of);
      $sig = -$sig;
      $cos_of += $cos_inc;
      if (Kw::iseq($sum_curr, $sum_prev)) {
         last; # loop AWAIT
      }
      $enn += 1;
   }
   return ($sum_curr * sqrt(Kw::TAU * sqrt($qq / ($emm * (1.0 - $emm))) /
            $km));
}
sub ellipsearea($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   return (Kw::PI * $semi_axis_a * $semi_axis_b);
}
sub ellipseecc($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   return (Kw::topyh1(Kw::ratio($semi_axis_a, $semi_axis_b)));
}
sub ellipsem($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   my $rati;
   $rati = Kw::ratio($semi_axis_a, $semi_axis_b);
   return (1.0 - $rati * $rati);
}
sub ellipseflatness($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   return (1.0 - Kw::ratio($semi_axis_a, $semi_axis_b));
}
sub ellipsen($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   return (abs($semi_axis_a - $semi_axis_b) / ($semi_axis_a + $semi_axis_b));
}
sub flat2ecc($ ) {
   my ($flt) = @_;
   return (sqrt($flt * (2.0 - $flt)));
}
sub ecc2flat($ ) {
   my ($ecc) = @_;
   return (1.0 - sqrt(1.0 - $ecc * $ecc));
}
sub ellipsecir($$ ) {
   my ($semi_axes_a, $semi_axes_b) = @_;
   my $aaa;
   my $bbb;
   my $pows_two;
   my $suma;
   my $temp;
   my $ii;
   my $retvalu;
   my $axes_sum;
   if ($semi_axes_a < $semi_axes_b) {
      $aaa = $semi_axes_b;
      $bbb = $semi_axes_a;
   } else {
      $aaa = $semi_axes_a;
      $bbb = $semi_axes_b;
   }
   if ($bbb <= sqrt(Kw::DBLEPS) * $aaa) {
      $retvalu = 4.0 * $aaa;
   } else {
      $suma = 0.0;
      $axes_sum = $aaa + $bbb;
      $pows_two = 1.0;
      $ii = 0;
      for (;;) {
         $temp = ($aaa + $bbb) / 2.0;
         $bbb = sqrt($aaa * $bbb);
         $aaa = $temp;
         $pows_two += $pows_two;
         $suma += $pows_two * Kw::square($aaa - $bbb);
         if (Kw::iseq($aaa, $bbb)) {
            last; # loop AWAIT
         }
         $ii += 1;
         if (30 <= $ii) {
            last; # loop AWAIT
         }
      }
      $retvalu = Kw::PI * (Kw::square($axes_sum) - $suma) / ($aaa + $bbb);
   }
   return ($retvalu);
}
sub ellipsecir__1($$ ) {
   my ($semi_axis_a, $semi_axis_b) = @_;
   my $major_axis;
   my $minor_axis;
   my $rati;
   if ($semi_axis_a < $semi_axis_b) {
      $major_axis = $semi_axis_b;
      $minor_axis = $semi_axis_a;
   } else {
      $major_axis = $semi_axis_a;
      $minor_axis = $semi_axis_b;
   }
   $rati = $minor_axis / $major_axis;
   return (4.0 * $major_axis * Kw::elliptic2m(1.0 - $rati * $rati));
}
sub epdf($$$\@$\@ ) {
   my ($minvalx, $maxvalx, $data_num, $data_arr_pc, $pdf_num,
            $ret_pdf_arr_p) = @_;
   my $ii;
   my $indi;
   my $gap_size;
   my $retvalu;
   my $inc;
   for ($ii = 0; $ii <= $pdf_num - 1; $ii += 1) {
      $$ret_pdf_arr_p[$ii] = 0.0;
   }
   $inc = 1.0 / $data_num;
   $gap_size = ($maxvalx - $minvalx) / ($pdf_num - 1.0);
   $retvalu = 0.0;
   for ($ii = 0; $ii <= $data_num - 1; $ii += 1) {
      if ($$data_arr_pc[$ii] < $minvalx) {
         $$ret_pdf_arr_p[0] += $inc;
      } elsif ($$data_arr_pc[$ii] < $maxvalx) {
         $indi = ceil(($$data_arr_pc[$ii] - $minvalx) / $gap_size);
         $$ret_pdf_arr_p[$indi] += $inc;
      } else {
         $retvalu += $inc;
      }
   }
   return ($retvalu);
}
sub ecdf($$$\@$\@ ) {
   my ($minvalx, $maxvalx, $data_num, $data_arr_pc, $pdf_num,
            $ret_cdf_arr_p) = @_;
   my $ii;
   my $sumcurr;
   epdf($minvalx, $maxvalx, $data_num, @$data_arr_pc, $pdf_num,
            @$ret_cdf_arr_p);
   $sumcurr = $$ret_cdf_arr_p[0];
   for ($ii = 1; $ii <= $pdf_num - 1; $ii += 1) {
      $sumcurr += $$ret_cdf_arr_p[$ii];
      $$ret_cdf_arr_p[$ii] = $sumcurr;
   }
   return ($sumcurr);
}
sub epdf2cdf($\@\@ ) {
   my ($data_num, $pdf_arr_pc, $ret_cdf_arr_p) = @_;
   my $ii;
   my $sumcurr;
   $sumcurr = 0.0;
   for ($ii = 0; $ii <= $data_num - 1; $ii += 1) {
      $sumcurr += $$pdf_arr_pc[$ii];
      $$ret_cdf_arr_p[$ii] = $sumcurr;
   }
   return ($sumcurr);
}
{
my $lv_search_target = 0;
   sub search_check($ ) {
      my ($gg) = @_;
      # local-use Perl $lv_search_target;
      my $retvalu;
      if ($gg < $lv_search_target) {
         $retvalu = -1;
      } elsif ($lv_search_target < $gg) {
         $retvalu = 1;
      } else {
         $retvalu = 0;
      }
      return ($retvalu);
   }
   sub search_search($ ) {
      my ($gg) = @_;
      # local-use Perl $lv_search_target;
      my $curr;
      my $delta;
      my $result;
      $lv_search_target = $gg;
      $curr = 1;
      for ($delta = 0; $delta <= INTMAX; $delta += 1) {
         $result = search_check($curr);
         if (0 <= $result) {
            last;
         }
         $curr += $curr;
      }
      if (4 <= $curr) {
         $delta = $curr / 4;
         while (1 <= $delta) {
            if (0 < $result) {
               $curr -= $delta;
            } elsif ($result < 0) {
               $curr += $delta;
            } else {
               last;
            }
            $result = search_check($curr);
            if ($delta < 2) {
               if (0 < $result and 1 < $curr) {
                  $curr -= 1;
               }
               last;
            }
            $delta /= 2;
         }
      }
      return ($curr);
   }
}
sub blackbodyl($$ ) {
   my ($wavelen, $temp_k) = @_;
   my $hc;
   my $hc_kt;
   my $retvalu;
   if ($wavelen <= 0.0 or $temp_k <= 0.0) {
      $retvalu = 0.0;
   } else {
      $hc = Kw::PLANCK * Kw::LIGHT;
      $hc_kt = $hc / (Kw::BOLTZMANN * $temp_k);
      $retvalu = 2.0 * $hc * Kw::LIGHT / (Kw::pow($wavelen, 5) *
               (exp($hc_kt / $wavelen) - 1.0));
   }
   return ($retvalu);
}
sub blackbodyf($$ ) {
   my ($wavefreq, $temp_k) = @_;
   my $h_kt;
   my $retvalu;
   if ($wavefreq <= 0.0 or $temp_k <= 0.0) {
      $retvalu = 0.0;
   } else {
      $h_kt = Kw::PLANCK / (Kw::BOLTZMANN * $temp_k);
      $retvalu = 2.0 * Kw::PLANCK * Kw::pow($wavefreq, 3) /
               (Kw::pow(Kw::LIGHT, 2) * (exp($h_kt * $wavefreq) - 1.0));
   }
   return ($retvalu);
}
sub blackbodymode($ ) {
   my ($temp_k) = @_;
   my $hc_kt;
   my $retvalu;
   if ($temp_k <= 0.0) {
      $retvalu = 0.0;
   } else {
      $hc_kt = Kw::PLANCK * Kw::LIGHT / (Kw::BOLTZMANN * $temp_k);
      $retvalu = $hc_kt / (5.0 + Kw::wp(-5.0 * exp(-5.0)));
   }
   return ($retvalu);
}
sub blackbodypower($ ) {
   my ($temp_k) = @_;
   return (Kw::STEFAN * Kw::pow($temp_k, 4.0));
}
sub bhmass_to_tempk($ ) {
   my ($bhmass_kg) = @_;
   return (BHMASSTEMP / $bhmass_kg);
}
sub bhtempk_to_mass($ ) {
   my ($bhtemp_k) = @_;
   return (BHMASSTEMP / $bhtemp_k);
}
sub bhmass_to_radius($ ) {
   my ($bhmass_kg) = @_;
   return ($bhmass_kg / BHMASS_RADIUS);
}
sub bhradius_to_mass($ ) {
   my ($bhradius_m) = @_;
   return (BHMASS_RADIUS * $bhradius_m);
}
sub bhmass_to_entropy($ ) {
   my ($bhmass_kg) = @_;
   return ($bhmass_kg * $bhmass_kg / BHMASS2_ENTROPY);
}
sub bhentropy_to_mass($ ) {
   my ($bhentropy) = @_;
   return (sqrt($bhentropy * BHMASS2_ENTROPY));
}
sub bhmass_to_power($ ) {
   my ($bhmass_kg) = @_;
   return (BHMASS2POWER / ($bhmass_kg * $bhmass_kg));
}
sub bhpower_to_mass($ ) {
   my ($bhpower_w) = @_;
   return (sqrt(BHMASS2POWER / $bhpower_w));
}
sub bhmass_to_area($ ) {
   my ($bhmass_kg) = @_;
   return ($bhmass_kg * $bhmass_kg / BHMASS2_AREA);
}
sub bharea_to_mass($ ) {
   my ($bharea) = @_;
   return (sqrt(BHMASS2_AREA * $bharea));
}
sub bhlifetime_to_mass($ ) {
   my ($bhlifetime_s) = @_;
   return (cbrt(BHMASS3_LIFETIME * $bhlifetime_s));
}
sub bhmass_to_lifetime($ ) {
   my ($bhmass_kg) = @_;
   return ($bhmass_kg * $bhmass_kg * $bhmass_kg / BHMASS3_LIFETIME);
}
sub bhmass_to_density($ ) {
   my ($bhmass_kg) = @_;
   return ($bhmass_kg * $bhmass_kg / BHMASS2_DENSITY);
}
sub bhdensity_to_mass($ ) {
   my ($bhdensity) = @_;
   return (sqrt($bhdensity * BHMASS2_DENSITY));
}
sub pendulum($$$ ) {
   my ($len_m, $ang_offset_rad, $grav) = @_;
   return (Kw::TAU * sqrt($len_m / $grav) / Kw::agmean(1.0,
            cos($ang_offset_rad / 2.0)));
}
sub sr_mass($ ) {
   my ($velo_mps) = @_;
   return (1.0 / Kw::sqrtxp1m1(-Kw::square($velo_mps / Kw::LIGHT)));
}
sub sr_time($ ) {
   my ($velo_mps) = @_;
   return (Kw::sqrtxp1m1(-Kw::square($velo_mps / Kw::LIGHT)));
}
sub gr_massgm($$ ) {
   my ($gm_gm, $radius_m) = @_;
   return ($gm_gm / ($radius_m * Kw::LIGHT * Kw::LIGHT));
}
sub gr_mass($$ ) {
   my ($mass_kg, $radius_m) = @_;
   return (gr_massgm(Kw::GRAVITATION * $mass_kg, $radius_m));
}
sub gr_timegm($$ ) {
   my ($gm_gm, $radius_m) = @_;
   my $con;
   $con = 2 * $gm_gm / (Kw::LIGHT * Kw::LIGHT);
   return (Kw::sqrtxp1m1(-$con / $radius_m));
}
sub gr_time($$ ) {
   my ($mass_kg, $radius_m) = @_;
   return (gr_timegm(Kw::GRAVITATION * $mass_kg, $radius_m));
}
sub gr_timegm_dr($$ ) {
   my ($gm_gm, $radius_m) = @_;
   my $con;
   $con = 2 * $gm_gm / (Kw::LIGHT * Kw::LIGHT);
   return ($con / (2 * $radius_m * $radius_m * sqrt(1.0 - $con /
            $radius_m)));
}
sub cent2ratio($ ) {
   my ($cnt) = @_;
   return (pow2($cnt / 1200.0));
}
sub ratio2cent($ ) {
   my ($rat) = @_;
   return (lg($rat) * 1200.0);
}
#   DDDDDDDDDDescription ################################### kw_description #
sub kw_description() {
   "   Kw Constants: AAABATTERY AAABATTERY_CHARGE AAABATTERY_ENERGY AAABAT" .
   "TERY_VOLTAGE AABATTERY AABATTERY_CHARGE AABATTERY_ENERGY AABATTERY_VOL" .
   "TAGE ACCELERATION ACRE ACTION AH ALPHA ALPHA_ERR ALPHA_REC ALPHA_REC_E" .
   "RR ALPHASQRT AMOUNT AMP AMPERE AMU AMU_ERR ANGLE APERY ARCDEG ARCDEGRE" .
   "E ARCGRAD ARCMIN ARCMINUTE ARCRADIAN ARCSEC ARCSECOND ARCTURN ARE AREA" .
   " ASTRONOMICALUNIT ATM ATMOSPHERE ATMOSPHERE_ERR ATOMICMASSUNIT ATOMICM" .
   "ASSUNIT_ERR ATTO AU AU_ERR AVOGADRO AVOGADRO_ERR AVOGADRO_REC AVOGADRO" .
   "_REC_ERR BAN BAR BARN BARREL BASEBALL_MASS BASEBALL_RADIUS BASKETBALL_" .
   "MASS BASKETBALL_RADIUS BEKENSTEINENTROPY BEKENSTEININFORMATION BHENTRO" .
   "PY_AREA BHMASS2_AREA BHMASS2_DENSITY BHMASS2_ENTROPY BHMASS2POWER BHMA" .
   "SS3_LIFETIME BHMASS_RADIUS BHMASSTEMP BHRADIUS2DENSITY BIT BLUE_ENERGY" .
   " BLUE_Hz BLUE_WAVELENGTH BOLTZMANN BOLTZMANN_ERR BOLTZMANN_REC BOLTZMA" .
   "NN_REC_ERR BTU BTU_IT BTU_TH BUSHEL c c_ERR c_REC c_REC_ERR CAL CAL_IT" .
   " CAL_TH CALORIE CANDELA CAPACITANCE CARAT CARBATTERY CARBATTERY_CHARGE" .
   " CARBATTERY_ENERGY CARBATTERY_VOLTAGE CBATTERY CBATTERY_CHARGE CBATTER" .
   "Y_ENERGY CBATTERY_VOLTAGE CENTI CHAIN CHARGE CONDUCTANCE COULOMB COULO" .
   "MBCONST COULOMBCONST_ERR CUP CURRENT DALTON DALTON_ERR DAY DBATTERY DB" .
   "ATTERY_CHARGE DBATTERY_ENERGY DBATTERY_VOLTAGE DBLEPS DBLMAN DBLMAX DB" .
   "LMAXLN DBLSIG DECA DECI DEGC DEGF DEGR DENSITY DIME_DIAMETER DIME_HEIG" .
   "HT DIME_MASS DISTANCE DIT DRYGALLON dvCs_ENERGY dvCs_ERR dvCs_Hz dvCs_" .
   "WAVELENGTH E EARTH_AGE EHF_ENERGY EHF_Hz EHF_WAVELENGTH EINSTEIN EINST" .
   "EIN_ERR ELECTRIC ELECTRIC_ERR ELECTRON_CHARGE ELECTRON_CHARGE_ERR ELEC" .
   "TRON_MASSA ELECTRON_MASSA_ERR ELECTRONVOLT ELEMENTARYCHARGE ELEMENTARY" .
   "CHARGE_ERR ELEVATIONMAX ELEVATIONMIN ENERGY EPSILON0 EPSILON0_ERR ERG " .
   "EULER EUV_ENERGY EUV_Hz EUV_WAVELENGTH eV EXA EXBI FARAD FARADAY FARAD" .
   "AY_ERR FARADAY_REC FARADAY_REC_ERR FARADAYCONST FARADAYCONST_ERR FARAD" .
   "AYCONST_REC FARADAYCONST_REC_ERR FEET FEIGENBAUM FEMTO FINESTRUCTURE F" .
   "INESTRUCTURE_ERR FINESTRUCTURE_REC FINESTRUCTURE_REC_ERR FIR_ENERGY FI" .
   "R_Hz FIR_WAVELENGTH FLICK FLOZ FLTEPS FLTMAN FLTMAX FLTSIG FOE FOOT FO" .
   "RCE FREQUENCY FT FURLONG G G_ERR GALACTICCENTER GALLON GAMMA_ENERGY GA" .
   "MMA_Hz GAMMA_WAVELENGTH GAMMAMIN GAS GAS_ERR GAS_REC GAS_REC_ERR GASCO" .
   "NST GASCONST_ERR GASCONST_REC GASCONST_REC_ERR GIANTIMPACT GIBI GIGA G" .
   "OLFBALL_MASS GOLFBALL_RADIUS GRAD GRAIN GRAM GRAVITATION GRAVITATION_E" .
   "RR GRAVITATION_REC GRAVITATION_REC_ERR GRAVITATIONIERS GRAVITATIONNASA" .
   " GRAVITY GRAVITY_ERR GREEN_ENERGY GREEN_Hz GREEN_WAVELENGTH GYEAR GYEA" .
   "R_AT_0J2K h h_ERR h_REC h_REC_ERR HAND HART HARTLEY HBAR HBAR_ERR HECT" .
   "ARE HECTO HENRY HERTZ HF_ENERGY HF_Hz HF_WAVELENGTH HI HI_ENERGY HI_ER" .
   "R HI_Hz HI_WAVELENGTH HORSE HORSEPOWER HOUR HP HPMETRIC HUBBLE HUBBLE_" .
   "ERR HUBBLERADIUS HX_ENERGY HX_Hz HX_WAVELENGTH HYDROGENLINE HYDROGENLI" .
   "NE_ERR Hz INCH INDUCTANCE INHG INTMAX J2K J2KDAY JCENTURY JDAY JDSEC_A" .
   "T_0GREGORIAN JDSEC_AT_0J2K JDSEC_AT_0KWT JDSEC_AT_0UET JEWISH_FIRST_MO" .
   "NTH JOSEPHSON JOSEPHSON_ERR JOULE JYEAR K_AT_0TEMPC K_AT_0TEMPF K_AT_0" .
   "TEMPR kB kB_ERR kB_REC kB_REC_ERR KCD KCD_ERR KELVIN KG KGF KGFM kgfm_" .
   "PER_lbfin KIBI KILO KILOGRAM KPGBOUNDARY KWT LB LBF LBFFT lbfft_PER_lb" .
   "fin LBFIN lbfinrpm_PER_Hp LC_CIRCLE_RADIUS LC_CIRCLE_X LC_CIRCLE_Y LC_" .
   "FACTORS_CNT LC_GD_CNT LC_GD_DAY LC_GD_DOW LC_GD_HOUR LC_GD_JD LC_GD_MI" .
   "N LC_GD_MONTH LC_GD_NUM LC_GD_SEC LC_GD_YEAR LC_HALAQIM_PER_HOUR LC_KN" .
   "UTH_ARRAY_CNT LC_KNUTH_KK_CNT LC_KNUTH_LL LC_KNUTH_MAX LC_KNUTH_QUALIT" .
   "Y_CNT LC_KNUTH_TT LC_MAGIC_INT LC_MAGIC_INT_NOT LC_PARABOLA_COEFF_A LC" .
   "_PARABOLA_COEFF_B LC_PARABOLA_COEFF_C LC_PARABOLA_REAL_ROOTS LC_PARABO" .
   "LA_ROOT_A LC_PARABOLA_ROOT_B LC_PARABOLA_X_AXIS LC_PARABOLA_Y_EXTREMA " .
   "LC_STTS_CNT LC_STTS_KEY_CNT LC_STTS_MAGIC LC_STTS_MAX LC_STTS_MEAN LC_" .
   "STTS_MIN LC_STTS_MSQ LC_STTS_NUM LC_STTSC_CNT LC_STTSC_COVAR LC_STTSC_" .
   "MAGIC LC_STTSC_XX LC_STTSC_YY LC_YEAR_PER_METONIC LENGTH LF_ENERGY LF_" .
   "Hz LF_WAVELENGTH LIFE_AGE LIGHT LIGHT_ERR LIGHT_REC LIGHT_REC_ERR LIGH" .
   "TYEAR LINK LITER LITRE LUMEN LUX LX_ELLIPTIC_EPS LX_HALAQIM LX_SHC_SHI" .
   "FTSHIFT LX_SHC_STEPSHIFT MACH MAGNETIC MAGNETIC_ERR MAGNETICFLUX MAGNE" .
   "TICINDUCTION MARATHON MASS MEBI MEGA METER METRE MF_ENERGY MF_Hz MF_WA" .
   "VELENGTH MICRO MICROWAVE_ENERGY MICROWAVE_Hz MICROWAVE_WAVELENGTH MILE" .
   " MILKYWAY_AGE MILKYWAY_DAY MILKYWAY_MASS MILKYWAY_RADIUS MILLI MINUTE " .
   "MIR_ENERGY MIR_Hz MIR_WAVELENGTH MM MMHG MOLARMASS MOLARMASS_ERR MOLE " .
   "MONTHS_IN_YEAR MOON_MONTH MPH MPS MPSS MU0 MU0_ERR NANO NAT NEWTON NIC" .
   "KEL_DIAMETER NICKEL_HEIGHT NICKEL_MASS NINEVOLT NINEVOLT_CHARGE NINEVO" .
   "LT_ENERGY NINEVOLT_VOLTAGE NINEVOLTBATTERY NINEVOLTBATTERY_CHARGE NINE" .
   "VOLTBATTERY_ENERGY NINEVOLTBATTERY_VOLTAGE NIR_ENERGY NIR_Hz NIR_WAVEL" .
   "ENGTH Nm_PER_lbfin NPBOUNDARY NUV_ENERGY NUV_Hz NUV_WAVELENGTH OHM ORA" .
   "NGE_ENERGY ORANGE_Hz ORANGE_WAVELENGTH OUNCE OZ OZFIN ozfin_PER_lbfin " .
   "PA PARSEC PEBI PECK PENNY_DIAMETER PENNY_HEIGHT PENNY_MASS PERCENT PER" .
   "MILLE PETA PHI PHONEBATTERY PHONEBATTERY_CHARGE PHONEBATTERY_ENERGY PH" .
   "ONEBATTERY_VOLTAGE PI PICO PINGPONGBALL_MASS PINGPONGBALL_RADIUS PINT " .
   "PLANCK PLANCK_ERR PLANCK_REC PLANCK_REC_ERR PLANCKBAR PLANCKBAR_ERR PL" .
   "ANCKCHARGE PLANCKENERGY PLANCKFREQUENCY PLANCKLENGTH PLANCKMASS PLANCK" .
   "TEMP PLANCKTIME POINT POUND POWER PPB PPM PPQ PPT PRESSURE PROTON_RADI" .
   "US PROTON_RADIUS_ERR PROXIMACENTAURI PSI PTRBOUNDARY QUART QUARTER_DIA" .
   "METER QUARTER_HEIGHT QUARTER_MASS RAD RADIAN RED_ENERGY RED_Hz RED_WAV" .
   "ELENGTH RESISTANCE RPH RPM RPS RYDBERG RYDBERG_ENERGY RYDBERG_ERR RYDB" .
   "ERG_Hz RYDBERG_REC RYDBERG_REC_ERR RYDBERG_WAVELENGTH SECOND SHANNON S" .
   "HF_ENERGY SHF_Hz SHF_WAVELENGTH SI16MAX SI16MIN SI32MAX SI32MIN SIEMEN" .
   "S SOCCERBALL_MASS SOCCERBALL_RADIUS SOFTBALL_MASS SOFTBALL_RADIUS SOLA" .
   "RCONSTANT SOLID_ANGLE SPECIFICHEAT SPEED SPHERESURFACE SQDEG SQUAREDEG" .
   "REE STANDARDATMOSPHERE STANDARDGRAVITY STEFAN STEFAN_ERR STERADIAN STO" .
   "NE SURVEYFOOT SX_ENERGY SX_Hz SX_WAVELENGTH SXX_ENERGY SXX_Hz SXX_WAVE" .
   "LENGTH TAU TBLSP TEBI TEMPERATURE TEMPF_AT_0TEMPC TENLN TENNISBALL_MAS" .
   "S TENNISBALL_RADIUS TERA TESLA THF_ENERGY THF_Hz THF_WAVELENGTH TIME T" .
   "ON TONNE TORR TRJBOUNDARY TSP TT_AT_0TAI TT_AT_0UT1 TURN TWOLN TWOSQRT" .
   " UAMU UAMU_ERR UET UHF_ENERGY UHF_Hz UHF_WAVELENGTH UI16MAX UI32MAX UN" .
   "ITGM UNIVERSE_AGE UNIVERSE_MASS UNIVERSE_RADIUS UVA_ENERGY UVA_Hz UVA_" .
   "WAVELENGTH UVB_ENERGY UVB_Hz UVB_WAVELENGTH UVC_ENERGY UVC_Hz UVC_WAVE" .
   "LENGTH UVPV VHF_ENERGY VHF_Hz VHF_WAVELENGTH VIOLET_ENERGY VIOLET_Hz V" .
   "IOLET_WAVELENGTH VISCOSITY VOLT VOLTAGE VOLUME VONKLITZING VONKLITZING" .
   "_ERR W_PER_Hp WATT WEBER WEEK YARD YELLOW_ENERGY YELLOW_Hz YELLOW_WAVE" .
   "LENGTH YELLOWGREEN_ENERGY YELLOWGREEN_Hz YELLOWGREEN_WAVELENGTH YOBI Y" .
   "OCTO YOTTA ZEBI ZEPTO ZETTA" .
   "\n" .
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magicno" .
   "t magicset normal_rand parabola_realroots parabola_xaxis parabola_yext" .
   "rema randd stts_new timee" .
   "\n" .
   "   Kw 1-ary Functions: a2k a2m abs agmean1 agmean1inv ahmean1 almean1 " .
   "amean1 aqmean1 b2m bankers bell bellx benford_rand bernoulli bernoulli" .
   "d bernoullin bessI0 bessI1 bessJ0 bessJ1 bessK0 bessK1 bessY0 bessY1 b" .
   "essY1__1 bharea_to_mass bhdensity_to_mass bhentropy_to_mass bhlifetime" .
   "_to_mass bhmass_to_area bhmass_to_density bhmass_to_entropy bhmass_to_" .
   "lifetime bhmass_to_power bhmass_to_radius bhmass_to_tempk bhpower_to_m" .
   "ass bhradius_to_mass bhtempk_to_mass bits_count bits_ls1b bits_ls1bpos" .
   " bits_ms1b bits_ms1bpos bitwisenot blackbodyf_pdf blackbodyl_pdf black" .
   "bodymode blackbodypower cantor carmichael catalan cauchy_rand cbrt cei" .
   "l cent2ratio chisqr_rand circle_get clip clockhour clockmin clocksec c" .
   "lockstdev clocksum cnv_dbl2si16 contfra_print contfrac_print contfracd" .
   "_print corr_delete corr_handlex corr_handley corrcorr corrslope corrst" .
   "derr corry0 cos cos__1 cosd cosdinv cosh coshinv cosintegral cosinv co" .
   "sm1 cosm1__1 cost costinv cot cotd cotdinv coth cothinv cotinv cott co" .
   "ttinv csc cscd cscdinv csch cschinv cscinv csct csctinv ctz cu cube cu" .
   "beroot date_easter date_pesach date_rosh_hashanah day2dhms day2dhmsinv" .
   " day2hour defined deg2dms deg2rad deg2sec deg2tur digamma digamma__1 d" .
   "igammainv dms2deg dms2rad doomsday ecc2flat Ein elliptic1a elliptic1k " .
   "elliptic1m elliptic1m__1 elliptic1m__2 elliptic2a elliptic2k elliptic2" .
   "m elliptic2m__1 ellipticE ellipticK erf erf__1 erf__2 erf__3 erf__4 er" .
   "fc erfcinv erfcx erfcxinv erfinv eta eulerphi eulerx exp exp__1 exp__2" .
   " exp_rand expintegral1 expintegrali expm1 fac facinv factor_print fact" .
   "orial factorialdouble factorialinv fibo fibox fiboxinv flat2ecc floor " .
   "frac fubini fusc g2jewish gamma_rand gau_cdf gau_pdf gau_quantile gd g" .
   "dinv geo_rand ghmean1 ghmean1inv glmean1 gmean1 gqmean1 has_primitiver" .
   "oot haversin heaviside heronianmean1 hlmean1 hmean1 hn hn__1 hour2day " .
   "hqmean1 hypot1 hypot1inv id int_rand iround iseven isint isjewish8shor" .
   "t isjewish9short isjewishleap isleapyear ismagic isneg isnegint isodd " .
   "ispos isposint ispractical isprime issquarefree iszero j2k2dow j2k2jd " .
   "j2k2kwt j2k2uet j2k2ymdhms jacobicir jd264_print jd2dow jd2j2k jd2kwt " .
   "jd2uet jd2ymdhms jewish2g jewish2jd jewish2jdx jewish_months_in_year j" .
   "ewish_yearlength k2a k2m k2tempc k2tempf k2tempr ks_a_cdf kwt2j2k kwt2" .
   "jd kwt2uet l10 lg lgamma lgamma__1 lgamma__2 lgammainv lix lixinv lmea" .
   "n1 ln ln1p ln__1 ln__2 lns log log10 log2 logintegral logistic_rand lq" .
   "mean1 lucas lucasx m2a m2b m2k mertens minkowski mobius n2primish neg " .
   "nom normal_cdf normal_cdf__1 normal_pdf normal_quantile normal_quantil" .
   "e__1 num2char_print parabola_get parabola_roots partition partitionq p" .
   "cf pfg pfl poi_rand pow10 pow2 prime0 prime1 primecount primecountx pr" .
   "imenext primenth primenth__1 primeprev primitiveroot qmean1 rad2deg ra" .
   "d2dms rad2dms2 rad2sec rad2tur rand_init randl ratio2cent reci reimann" .
   " round rto125 rtoi rtoz sba search_check search_search sec sec2deg sec" .
   "2dhms sec2rad sec2tur secd secdinv sech sechinv secinv sect sectinv sh" .
   "c_shft2steps shc_steps2shft shc_steps2shftinv sigma0 sigma1 sigmoid si" .
   "gmoidinv sign sin sin__1 sinc sinc__1 sincc sincinv sind sindinv sinh " .
   "sinhinv sinintegral sininv sint sintinv smooth sq sqinv sqrt sqrt__1 s" .
   "qrt__2 sqrt__3 sqrtx sqrtxp1m1 square squareroot sr_mass sr_time stair" .
   " stts_delete stts_reset sttscount sttsmagic sttsmax sttsmean sttsmin s" .
   "ttsmsq sttsspread sttsstdev sttsstdevmean sttssum sttsvar supercatalan" .
   " tan tand tandinv tanh tanhinv taninv tant tantinv tempc2k tempc2tempf" .
   " tempf2k tempf2tempc tempr2k tgamma tgamma__1 tgamma__2 tgamma__3 tgam" .
   "ma__stirling tgammadouble tgammainv topyh1 totient tri tri_rand triinv" .
   " trip trunc tur2deg tur2rad tur2sec uet2j2k uet2jd uet2kwt uni_rand ve" .
   "rsin wm wminv wp wpinv ymdhms2j2k ymdhms2jd ymdhms_get zag zeta zig zi" .
   "gzag" .
   "\n" .
   "   Kw 2-ary Functions: agmean agmean__1 agmeaninva agmeaninvg ahmean a" .
   "lmean amean aqmean atan2 atan2d atan2h atan2t atan2u ballot ballots ba" .
   "se_out_print base_outf_print benford_cdf benford_pdf bess_jn bess_yn b" .
   "essIn bessIn_ps bessJn bessJn_ps bessJv bessKn bessYn bessYn_ps bessYv" .
   " beta beta_rand binomial binomial_rand binomialx birthday birthdayinv " .
   "birthdayx bits_get bits_set bitshiftl bitshiftr bitwiseand bitwiseor b" .
   "itwisexor bkn blackbodyf blackbodyl carlsonRC cauchy_cdf cauchy_pdf ca" .
   "uchy_quantile cd ceil2 chisqr_cdf chisqr_pdf cir2ell cn cn__1 comb com" .
   "bination combx contraharmonic cs d1diamond_d2 d1lt_d2 d1spiral_d2 d1ur" .
   "_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1 d2ur_d1 days_in_month " .
   "dc ddist dist dlog1 dn dn__1 ds ell2cir ellipsearea ellipsecir ellipse" .
   "cir__1 ellipseecc ellipseflatness ellipsem ellipsen elliptic1ia ellipt" .
   "ic1ik elliptic1im elliptic1im__1 elliptic2ia elliptic2ik elliptic2im e" .
   "lliptic2im__1 elliptic3a elliptic3k elliptic3m elliptic3m__1 ellipticE" .
   "i ellipticF ellipticP entringer eulerian exp_cdf exp_pdf exp_quantile " .
   "expintegraln factor factorialt floor2 fmod fmod fmods fmodu fmody fmul" .
   " gamma_cdf gamma_pdf gcd gcda geo_cdf geo_pdf geo_quantile ghmean glme" .
   "an gmean gompertz_rand gqmean gr_mass gr_massgm gr_time gr_timegm gr_t" .
   "imegm_dr has_primitiveroot_f heronianmean hlmean hmean hnm hqmean hypo" .
   "t int_cdf int_pdf int_quantile ints_rand iseq isge isgt isle islt ismu" .
   "lt ismultl isneq ispractical_f isprimitiveroot issignsame issquarefree" .
   "_f isss jacobiphi jewish_monthbegin jewish_monthlength ks_b_cdf ks_cdf" .
   " ks_quantile lbeta lcam lcams lcantim lcm lcombx ligamma ligammainv lm" .
   "ean logistic_cdf logistic_pdf logistic_quantile logx lpermx lqmean max" .
   "2 maxabs maxabs2 maxi mb_cdf mb_pdf mean min2 minabs minabs2 mini mobi" .
   "us_f modf mods modulo n2perm_print nbd_rand nc nd nevillethetac nevill" .
   "ethetad nevillethetan nevillethetas ns nthroot__1 pareto_rand perm per" .
   "mutation permx pochhammer poi_cdf poi_pdf poi_quantile polya_rand poly" .
   "cnum polynum pow powi prime0_f print_array qmean rand_init_array ratio" .
   " repetendlen rligamma rms round2 rtomsd ruigamma sc sd shc_shftpoles2s" .
   "teps sigma sigma0_f sigma1_f sn sn__1 spread2stdev stdev2spread stirli" .
   "ng1 stirling2 stts_copy stts_downdate stts_newx stts_scale stts_shift " .
   "stts_update stts_update2 t_cdf t_cdf__1 t_pdf t_quantile t_quantile__1" .
   " tetracnum tetranum theta1 theta2 theta3 theta4 Tn topyh totient_f tra" .
   "p_rand tri_cdf tri_pdf tri_quantile uigamma uigamma__1 uigammainv Un u" .
   "ni_cdf uni_pdf uni_quantile variance zeta_cdf zeta_pdf zipf_rand znord" .
   "er znorder__1" .
   "\n" .
   "   Kw 3-ary Functions: agcmean aghmean atothenmodp atothenmodx base_ou" .
   "t_fix_print beta_cdf beta_pdf beta_quantile betainc betainc__1 binomia" .
   "l_cdf binomial_pdf bits_assign bkbn cantorll cantorul cantorxx carlson" .
   "RD carlsonRF chebeval clip2 clip2x corr_update cossin_ev divi dlog dlo" .
   "gx ellipsoid_surface ellipsoid_volume elliptic3ia elliptic3ik elliptic" .
   "3im elliptic3im__1 ellipticPi epdf2cdf f11 f_cdf f_quantile f_quantile" .
   "__1 fibo3 fit_ls fit_ls0 fit_minmax fit_minmax0 fit_poly fitx_minmax f" .
   "mod2 fvad fvoa gompertz_cdf gompertz_pdf gompertz_quantile hms2day hor" .
   "ner hypot3 ifzero isalmostequal isbetween isbetweenx isfloorsame iswit" .
   "hin jewishymd2jd kevy_print loanpayment loanrate loanvalue maxabsoffse" .
   "t maxmin maxwell_boltzmann_cdf maxwell_boltzmann_pdf maxwell_juttner_p" .
   "df minabsoffset n2comb_print n2perm nbd_cdf nbd_pdf pareto_cdf pareto_" .
   "pdf pareto_quantile pendulum pmean polya_cdf polya_pdf pvad pvoa remqu" .
   "ou roundy sigma_f sigmoid3 sigmoid3d stts_updatex taninv3 trap_cdf tra" .
   "p_pdf trap_quantile ymd2dow ymd2doy ymd2j2k ymd2j2k__1 ymd2jd zipf_cdf" .
   " zipf_pdf zipf_quantile" .
   "\n" .
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb sphe" .
   "re_d" .
   "\n" .
   "   Kw 5-ary Functions: sphere_distance" .
   "\n" .
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_destination ellipso" .
   "id_distance epdf parabola_solve stts_init stts_initx" .
   "\n";
}
sub kw_desc() {
   "   Kw Constants: AAABATTERY(_(CHARGE|ENERGY|VOLTAGE))? AABATTERY(_(CHA" .
   "RGE|ENERGY|VOLTAGE))? ACCELERATION ACRE ACTION AH ALPHA(|_(ERR|REC(_ER" .
   "R)?)|SQRT) AMOUNT AMP(ERE)? AMU(_ERR)? ANGLE APERY ARC(DEG(REE)?|GRAD|" .
   "MIN(UTE)?|RADIAN|SEC(OND)?|TURN) AREA? ASTRONOMICALUNIT ATM(OSPHERE(_E" .
   "RR)?)? ATOMICMASSUNIT(_ERR)? ATTO AU AU_ERR AVOGADRO(|_(ERR|REC(_ERR)?" .
   ")) BAN BAR(N|REL)? BAS(EBALL_(MASS|RADIUS)|KETBALL_(MASS|RADIUS)) BEKE" .
   "NSTEIN(ENTROPY|INFORMATION) BHENTROPY_AREA BHMASS(2(_(AREA|DENSITY|ENT" .
   "ROPY)|POWER)|3_LIFETIME|_RADIUS|TEMP) BHRADIUS2DENSITY BIT BLUE_(ENERG" .
   "Y|Hz|WAVELENGTH) BOLTZMANN(|_(ERR|REC(_ERR)?)) BTU(_(IT|TH))? BUSHEL c" .
   " c_ERR c_REC(_ERR)? CAL(_(IT|TH)|ORIE)? CANDELA CAPACITANCE CAR(AT|BAT" .
   "TERY(_(CHARGE|ENERGY|VOLTAGE))?) CBATTERY(_(CHARGE|ENERGY|VOLTAGE))? C" .
   "ENTI CHA(IN|RGE) CONDUCTANCE COULOMB(CONST(_ERR)?)? CUP CURRENT DALTON" .
   "(_ERR)? DAY DBATTERY(_(CHARGE|ENERGY|VOLTAGE))? DBL(EPS|MA(N|X(LN)?)|S" .
   "IG) DEC[AI] DEG[CFR] DENSITY DIME_(DIAMETER|HEIGHT|MASS) DISTANCE DIT " .
   "DRYGALLON dvCs_(E(NERGY|RR)|Hz|WAVELENGTH) E EARTH_AGE EHF_(ENERGY|Hz|" .
   "WAVELENGTH) EINSTEIN(_ERR)? ELE(CTR(IC(_ERR)?|ON(_(CHARGE(_ERR)?|MASSA" .
   "(_ERR)?)|VOLT))|MENTARYCHARGE(_ERR)?|VATIONM(AX|IN)) ENERGY EPSILON0(_" .
   "ERR)? ERG EULER EUV_(ENERGY|Hz|WAVELENGTH) eV EXA EXBI FARAD(|AY(|_(ER" .
   "R|REC(_ERR)?)|CONST(|_(ERR|REC(_ERR)?)))) FEET FEIGENBAUM FEMTO FINEST" .
   "RUCTURE(|_(ERR|REC(_ERR)?)) FIR_(ENERGY|Hz|WAVELENGTH) FLICK FLOZ FLT(" .
   "EPS|MA[NX]|SIG) FOE FOOT FORCE FREQUENCY FT FURLONG G G_ERR GAL(ACTICC" .
   "ENTER|LON) GAMMA(_(ENERGY|Hz|WAVELENGTH)|MIN) GAS(|_(ERR|REC(_ERR)?)|C" .
   "ONST(|_(ERR|REC(_ERR)?))) GIANTIMPACT GIBI GIGA GOLFBALL_(MASS|RADIUS)" .
   " GRA(D|IN|M|VIT(ATION(|_(ERR|REC(_ERR)?)|IERS|NASA)|Y(_ERR)?)) GREEN_(" .
   "ENERGY|Hz|WAVELENGTH) GYEAR(_AT_0J2K)? h h_ERR h_REC(_ERR)? HAND HART(" .
   "LEY)? HBAR(_ERR)? HECT(ARE|O) HENRY HERTZ HF_(ENERGY|Hz|WAVELENGTH) HI" .
   " HI_(E(NERGY|RR)|Hz|WAVELENGTH) HORSE(POWER)? HOUR HP HPMETRIC HUBBLE(" .
   "_ERR|RADIUS)? HX_(ENERGY|Hz|WAVELENGTH) HYDROGENLINE(_ERR)? Hz INCH IN" .
   "DUCTANCE INHG INTMAX J2K(DAY)? JCENTURY JDAY JDSEC_AT_0(GREGORIAN|J2K|" .
   "KWT|UET) JEWISH_FIRST_MONTH JOSEPHSON(_ERR)? JOULE JYEAR K_AT_0TEMP[CF" .
   "R] kB kB_(ERR|REC(_ERR)?) KCD(_ERR)? KELVIN KG KGFM? kgfm_PER_lbfin KI" .
   "BI KILO(GRAM)? KPGBOUNDARY KWT LB LBF(FT)? lbfft_PER_lbfin LBFIN lbfin" .
   "rpm_PER_Hp LC_(CIRCLE_(RADIUS|[XY])|FACTORS_CNT|GD_(CNT|D(AY|OW)|HOUR|" .
   "JD|M(IN|ONTH)|NUM|SEC|YEAR)|HALAQIM_PER_HOUR|KNUTH_(ARRAY_CNT|KK_CNT|L" .
   "L|MAX|QUALITY_CNT|TT)|MAGIC_INT(_NOT)?|PARABOLA_(COEFF_[ABC]|R(EAL_ROO" .
   "TS|OOT_[AB])|X_AXIS|Y_EXTREMA)|STTS(_(CNT|KEY_CNT|M(A(GIC|X)|EAN|IN|SQ" .
   ")|NUM)|C_(C(NT|OVAR)|MAGIC|XX|YY))|YEAR_PER_METONIC) LENGTH LF_(ENERGY" .
   "|Hz|WAVELENGTH) LIFE_AGE LIGHT(|_(ERR|REC(_ERR)?)|YEAR) LINK LIT(ER|RE" .
   ") LUMEN LUX LX_(ELLIPTIC_EPS|HALAQIM|SHC_S(HIFTSHIFT|TEPSHIFT)) MACH M" .
   "AGNETIC(_ERR|FLUX|INDUCTION)? MARATHON MASS MEBI MEGA MET(ER|RE) MF_(E" .
   "NERGY|Hz|WAVELENGTH) MICRO(WAVE_(ENERGY|Hz|WAVELENGTH))? MIL(E|KYWAY_(" .
   "AGE|DAY|MASS|RADIUS)|LI) MINUTE MIR_(ENERGY|Hz|WAVELENGTH) MM MMHG MOL" .
   "(ARMASS(_ERR)?|E) MONTHS_IN_YEAR MOON_MONTH MPH MPSS? MU0(_ERR)? NANO " .
   "NAT NEWTON NICKEL_(DIAMETER|HEIGHT|MASS) NINEVOLT(|_(CHARGE|ENERGY|VOL" .
   "TAGE)|BATTERY(_CHARGE|_ENERGY|_VOLTAGE)?) NIR_(ENERGY|Hz|WAVELENGTH) N" .
   "m_PER_lbfin NPBOUNDARY NUV_(ENERGY|Hz|WAVELENGTH) OHM ORANGE_(ENERGY|H" .
   "z|WAVELENGTH) OUNCE OZ OZFIN ozfin_PER_lbfin PA PARSEC PEBI PECK PENNY" .
   "_(DIAMETER|HEIGHT|MASS) PER(CENT|MILLE) PETA PHI PHONEBATTERY(_(CHARGE" .
   "|ENERGY|VOLTAGE))? PI PICO PIN(GPONGBALL_(MASS|RADIUS)|T) PLANCK(|_(ER" .
   "R|REC(_ERR)?)|BAR(_ERR)?|CHARGE|ENERGY|FREQUENCY|LENGTH|MASS|T(EMP|IME" .
   ")) POINT POUND POWER PPB PPM PPQ PPT PRESSURE PRO(TON_RADIUS(_ERR)?|XI" .
   "MACENTAURI) PSI PTRBOUNDARY QUART(ER_(DIAMETER|HEIGHT|MASS))? RAD(IAN)" .
   "? RED_(ENERGY|Hz|WAVELENGTH) RESISTANCE RPH RPM RPS RYDBERG(|_(E(NERGY" .
   "|RR)|Hz|REC(_ERR)?|WAVELENGTH)) SECOND SHANNON SHF_(ENERGY|Hz|WAVELENG" .
   "TH) SI16M(AX|IN) SI32M(AX|IN) SIEMENS SOCCERBALL_(MASS|RADIUS) SOFTBAL" .
   "L_(MASS|RADIUS) SOL(ARCONSTANT|ID_ANGLE) SPE(CIFICHEAT|ED) SPHERESURFA" .
   "CE SQDEG SQUAREDEGREE STANDARD(ATMOSPHERE|GRAVITY) STE(FAN(_ERR)?|RADI" .
   "AN) STONE SURVEYFOOT SX_(ENERGY|Hz|WAVELENGTH) SXX_(ENERGY|Hz|WAVELENG" .
   "TH) TAU TBLSP TEBI TEMP(ERATURE|F_AT_0TEMPC) TEN(LN|NISBALL_(MASS|RADI" .
   "US)) TERA TESLA THF_(ENERGY|Hz|WAVELENGTH) TIME TON(NE)? TORR TRJBOUND" .
   "ARY TSP TT_AT_0(TAI|UT1) TURN TWO(LN|SQRT) UAMU(_ERR)? UET UHF_(ENERGY" .
   "|Hz|WAVELENGTH) UI16MAX UI32MAX UNI(TGM|VERSE_(AGE|MASS|RADIUS)) UVA_(" .
   "ENERGY|Hz|WAVELENGTH) UVB_(ENERGY|Hz|WAVELENGTH) UVC_(ENERGY|Hz|WAVELE" .
   "NGTH) UVPV VHF_(ENERGY|Hz|WAVELENGTH) VIOLET_(ENERGY|Hz|WAVELENGTH) VI" .
   "SCOSITY VOL(T(AGE)?|UME) VONKLITZING(_ERR)? W_PER_Hp WATT WEBER WEEK Y" .
   "ARD YELLOW(_(ENERGY|Hz|WAVELENGTH)|GREEN_(ENERGY|Hz|WAVELENGTH)) YOBI " .
   "YOCTO YOTTA ZEBI ZEPTO ZETTA" .
   "\n" .
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magic(n" .
   "ot|set) normal_rand parabola_(realroots|xaxis|yextrema) randd stts_new" .
   " timee" .
   "\n" .
   "   Kw 1-ary Functions: a2k a2m abs agmean1(inv)? ahmean1 almean1 amean" .
   "1 aqmean1 b2m bankers bellx? benford_rand bernoulli[dn]? bess(I[01]|J[" .
   "01]|K[01]|Y(0|1(__1)?)) bharea_to_mass bhdensity_to_mass bhentropy_to_" .
   "mass bhlifetime_to_mass bhmass_to_(area|density|entropy|lifetime|power" .
   "|radius|tempk) bhpower_to_mass bhradius_to_mass bhtempk_to_mass bit(s_" .
   "(count|ls1b(pos)?|ms1b(pos)?)|wisenot) blackbody(f_pdf|l_pdf|mode|powe" .
   "r) cantor carmichael catalan cauchy_rand cbrt ceil cent2ratio chisqr_r" .
   "and circle_get clip clock(hour|min|s(ec|tdev|um)) cnv_dbl2si16 contfra" .
   "(_print|c(_print|d_print)) corr(_(delete|handle[xy])|corr|s(lope|tderr" .
   ")|y0) cos(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1)?|t(inv)?) cot([dht" .
   "]?(inv)?)? csc([dht]?(inv)?)? ctz cu cube(root)? date_(easter|pesach|r" .
   "osh_hashanah) day2(dhms(inv)?|hour) defined deg2(dms|rad|sec|tur) diga" .
   "mma(__1|inv)? dms2(deg|rad) doomsday ecc2flat Ein elliptic(1([ak]|m(__" .
   "[12])?)|2([ak]|m(__1)?)|[EK]) erf(|__([12]|[34])|c(inv|x(inv)?)?|inv) " .
   "eta euler(phi|x) exp(_(_[12]|rand)|integral[1i]|m1)? fac(|inv|tor(_pri" .
   "nt|ial(double|inv)?)) fibo(x(inv)?)? flat2ecc floor frac fubini fusc g" .
   "2jewish gamma_rand gau_(cdf|pdf|quantile) gd gdinv geo_rand ghmean1(in" .
   "v)? glmean1 gmean1 gqmean1 has_primitiveroot haversin heaviside heroni" .
   "anmean1 hlmean1 hmean1 hn hn__1 hour2day hqmean1 hypot1(inv)? id int_r" .
   "and iround is(even|int|jewish8short|jewish9short|jewishleap|leapyear|m" .
   "agic|neg|negint|odd|pos|posint|practical|prime|squarefree|zero) j2k2(d" .
   "ow|jd|kwt|uet|ymdhms) jacobicir jd2(64_print|dow|j2k|kwt|uet|ymdhms) j" .
   "ewish(2(g|jdx?)|_(months_in_year|yearlength)) k2a k2m k2temp[cfr] ks_a" .
   "_cdf kwt2(j(2k|d)|uet) l10 lg lgamma(__[12]|inv)? lix(inv)? lmean1 ln " .
   "ln1p ln__[12] lns log(10|2|i(ntegral|stic_rand))? lqmean1 lucasx? m2a " .
   "m2b m2k mertens minkowski mobius n2primish neg nom normal_(cdf(__1)?|p" .
   "df|quantile(__1)?) num2char_print par(abola_(get|roots)|titionq?) pcf " .
   "pfg pfl poi_rand pow(10|2) prim(e([01]|countx?|n(ext|th(__1)?)|prev)|i" .
   "tiveroot) qmean1 rad2(d(eg|ms2?)|sec|tur) rand(_init|l) ratio2cent rec" .
   "i reimann round rto(125|[iz]) sba search_(check|search) sec(|2(d(eg|hm" .
   "s)|rad|tur)|[dht]?(inv)?) shc_s(hft2steps|teps2shft(inv)?) sig(m(a[01]" .
   "|oid(inv)?)|n) sin(|__1|c(__1|c|inv)?|d(inv)?|h(inv)?|in(tegral|v)|t(i" .
   "nv)?) smooth sq sqinv sqrt(__[123]|x(p1m1)?)? square(root)? sr_(mass|t" .
   "ime) stair stts(_(delete|reset)|count|m(a(gic|x)|ean|in|sq)|s(pread|td" .
   "ev(mean)?|um)|var) supercatalan tan([dht]?(inv)?)? temp(c2(k|tempf)|f2" .
   "(k|tempc)|r2k) tgamma(__([123]|stirling)|double|inv)? topyh1 totient t" .
   "ri(_rand|inv|p)? trunc tur2(deg|rad|sec) uet2(j(2k|d)|kwt) uni_rand ve" .
   "rsin wm(inv)? wp(inv)? ymdhms(2j(2k|d)|_get) zag zeta zig(zag)?" .
   "\n" .
   "   Kw 2-ary Functions: agmean(__1|inv[ag])? ahmean almean amean aqmean" .
   " atan2([dh]|[tu])? ballots? base_out(_print|f_print) benford_(cdf|pdf)" .
   " bess(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n(_ps)?|v)) beta(_rand)? bin" .
   "omial(_rand|x)? birthday(inv|x)? bit(s(_(get|set)|hift[lr])|wise(and|o" .
   "r|xor)) bkn blackbody[fl] carlsonRC cauchy_(cdf|pdf|quantile) cd ceil2" .
   " chisqr_(cdf|pdf) cir2ell cn cn__1 comb(ination|x)? contraharmonic cs " .
   "d1diamond_d2 d1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_" .
   "d1 d2spiral_d1 d2ur_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds e" .
   "ll(2cir|ip(se(area|cir(__1)?|ecc|flatness|[mn])|tic(1i([ak]|m(__1)?)|2" .
   "i([ak]|m(__1)?)|3([ak]|m(__1)?)|Ei|[FP]))) entringer eulerian exp(_(cd" .
   "f|pdf|quantile)|integraln) factor(ialt)? floor2 fmod([suy]?)? fmul gam" .
   "ma_(cdf|pdf) gcda? geo_(cdf|pdf|quantile) ghmean glmean gmean gompertz" .
   "_rand gqmean gr_(mass(gm)?|time(gm(_dr)?)?) has_primitiveroot_f heroni" .
   "anmean hlmean hmean hnm hqmean hypot int(_(cdf|pdf|quantile)|s_rand) i" .
   "s(eq|ge|gt|le|lt|mult|multl|neq|practical_f|primitiveroot|signsame|squ" .
   "arefree_f|ss) jacobiphi jewish_month(begin|length) ks_(b_cdf|cdf|quant" .
   "ile) lbeta lca(ms?|ntim) lcm lcombx ligamma(inv)? lmean log(istic_(cdf" .
   "|pdf|quantile)|x) lpermx lqmean max(2|abs2?|i) mb_(cdf|pdf) mean min(2" .
   "|abs2?|i) mobius_f mod([fs]|ulo) n2perm_print nbd_rand nc nd nevilleth" .
   "eta([cd]|[ns]) ns nthroot__1 pareto_rand perm(utation|x)? pochhammer p" .
   "oi_(cdf|pdf|quantile) poly(a_rand|cnum|num) powi? pri(me0_f|nt_array) " .
   "qmean rand_init_array ratio repetendlen rligamma rms round2 rtomsd rui" .
   "gamma sc sd shc_shftpoles2steps sigma(0_f|1_f)? sn sn__1 spread2stdev " .
   "stdev2spread stirling[12] stts_(copy|downdate|newx|s(cale|hift)|update" .
   "2?) t_cdf(__1)? t_pdf t_quantile(__1)? tetra(cnum|num) theta([12]|[34]" .
   ") Tn topyh totient_f trap_rand tri_(cdf|pdf|quantile) uigamma(__1|inv)" .
   "? Un uni_(cdf|pdf|quantile) variance zeta_(cdf|pdf) zipf_rand znorder(" .
   "__1)?" .
   "\n" .
   "   Kw 3-ary Functions: agcmean aghmean atothenmod[px] base_out_fix_pri" .
   "nt beta(_(cdf|pdf|quantile)|inc(__1)?) binomial_(cdf|pdf) bits_assign " .
   "bkbn cantor(ll|ul|xx) carlsonR[DF] chebeval clip2x? corr_update cossin" .
   "_ev divi dlogx? ellip(soid_(surface|volume)|tic(3i([ak]|m(__1)?)|Pi)) " .
   "epdf2cdf f11 f_cdf f_quantile(__1)? fibo3 fit(_(ls0?|minmax0?|poly)|x_" .
   "minmax) fmod2 fvad fvoa gompertz_(cdf|pdf|quantile) hms2day horner hyp" .
   "ot3 ifzero is(almostequal|between|betweenx|floorsame|within) jewishymd" .
   "2jd kevy_print loan(payment|rate|value) max(absoffset|min|well_(boltzm" .
   "ann_(cdf|pdf)|juttner_pdf)) minabsoffset n2comb_print n2perm nbd_(cdf|" .
   "pdf) pareto_(cdf|pdf|quantile) pendulum pmean polya_(cdf|pdf) pvad pvo" .
   "a remquou roundy sigm(a_f|oid3d?) stts_updatex taninv3 trap_(cdf|pdf|q" .
   "uantile) ymd2(do[wy]|j(2k(__1)?|d)) zipf_(cdf|pdf|quantile)" .
   "\n" .
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb sphe" .
   "re_d" .
   "\n" .
   "   Kw 5-ary Functions: sphere_distance" .
   "\n" .
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_d(estination|istanc" .
   "e) epdf parabola_solve stts_initx?" .
   "\n";
}
1; # Final return value
