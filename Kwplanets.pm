#    Copyright (C) 2020 by Kevin D. Woerner
##-# =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
##-# =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
##-# =KDW= ##### SRC $KWROOT/codekdw/kw-lib/Kwplanets.fwipp #####
# 2020-07-18 kdw  For Changelog, See File Kwplanets.varylog
package Kwplanets;
use Time::HiRes qw();
use POSIX       qw();
use vars qw(@EXPORT @EXPORT_OK %EXPORT_TAGS);
use Exporter    qw(import);
@EXPORT = ();
@EXPORT_OK = ( qw(
   ANOMALISTICYEAR CERESASCENDING CERESASCENDING_DT CERESDAY
   CERESDENSITY CERESECCENTRICITY CERESECCENTRICITY_DT
   CERESESCAPE CERESFLATNESS CERESGM CERESGRAVITY
   CERESINCLINATION CERESINCLINATION_DT CERESLONGITUDE
   CERESLONGITUDE_DT CERESMASS CERESOBLATENESS CERESORBIT
   CERESORBIT_DT CERESPERIAPSIS CERESPERIAPSIS_DT CERESRADIUS
   CERESVOLUME CERESYEAR CERES_A CERES_B CERES_C
   EARTHANOMALISTICYEAR EARTHASCENDING EARTHASCENDING_DT EARTHDAY
   EARTHDENSITY EARTHECCENTRICITY EARTHECCENTRICITY_DT
   EARTHESCAPE EARTHFLATNESS EARTHGM EARTHGRAVITY
   EARTHINCLINATION EARTHINCLINATION_DT EARTHLONGITUDE
   EARTHLONGITUDE_DT EARTHMASS EARTHOBLATENESS EARTHORBIT
   EARTHORBIT_DT EARTHPERIAPSIS EARTHPERIAPSIS_DT EARTHPRECESSION
   EARTHRADIUS EARTHSIDEREALDAY EARTHSIDEREALYEAR EARTHSTELLARDAY
   EARTHTHETA_0 EARTHTROPICALYEAR EARTHVOLUME EARTHYEAR EARTH_A
   EARTH_B EARTH_C ERISASCENDING ERISASCENDING_DT ERISDAY
   ERISDENSITY ERISECCENTRICITY ERISECCENTRICITY_DT ERISESCAPE
   ERISFLATNESS ERISGM ERISGRAVITY ERISINCLINATION
   ERISINCLINATION_DT ERISLONGITUDE ERISLONGITUDE_DT ERISMASS
   ERISOBLATENESS ERISORBIT ERISORBIT_DT ERISPERIAPSIS
   ERISPERIAPSIS_DT ERISRADIUS ERISVOLUME ERISYEAR ERIS_A ERIS_B
   ERIS_C HAUMEAASCENDING HAUMEAASCENDING_DT HAUMEADAY
   HAUMEADENSITY HAUMEAECCENTRICITY HAUMEAECCENTRICITY_DT
   HAUMEAESCAPE HAUMEAFLATNESS HAUMEAGM HAUMEAGRAVITY
   HAUMEAINCLINATION HAUMEAINCLINATION_DT HAUMEALONGITUDE
   HAUMEALONGITUDE_DT HAUMEAMASS HAUMEAOBLATENESS HAUMEAORBIT
   HAUMEAORBIT_DT HAUMEAPERIAPSIS HAUMEAPERIAPSIS_DT HAUMEARADIUS
   HAUMEAVOLUME HAUMEAYEAR HAUMEA_A HAUMEA_B HAUMEA_C
   JUPITERASCENDING JUPITERASCENDING_DT JUPITERDAY JUPITERDENSITY
   JUPITERECCENTRICITY JUPITERECCENTRICITY_DT JUPITERESCAPE
   JUPITERFLATNESS JUPITERGM JUPITERGRAVITY JUPITERINCLINATION
   JUPITERINCLINATION_DT JUPITERLONGITUDE JUPITERLONGITUDE_DT
   JUPITERMASS JUPITEROBLATENESS JUPITERORBIT JUPITERORBIT_DT
   JUPITERPERIAPSIS JUPITERPERIAPSIS_DT JUPITERRADIUS
   JUPITERVOLUME JUPITERYEAR JUPITER_A JUPITER_B JUPITER_C
   MAKEMAKEASCENDING MAKEMAKEASCENDING_DT MAKEMAKEDAY
   MAKEMAKEDENSITY MAKEMAKEECCENTRICITY MAKEMAKEECCENTRICITY_DT
   MAKEMAKEESCAPE MAKEMAKEFLATNESS MAKEMAKEGM MAKEMAKEGRAVITY
   MAKEMAKEINCLINATION MAKEMAKEINCLINATION_DT MAKEMAKELONGITUDE
   MAKEMAKELONGITUDE_DT MAKEMAKEMASS MAKEMAKEOBLATENESS
   MAKEMAKEORBIT MAKEMAKEORBIT_DT MAKEMAKEPERIAPSIS
   MAKEMAKEPERIAPSIS_DT MAKEMAKERADIUS MAKEMAKEVOLUME
   MAKEMAKEYEAR MAKEMAKE_A MAKEMAKE_B MAKEMAKE_C MARSASCENDING
   MARSASCENDING_DT MARSDAY MARSDENSITY MARSECCENTRICITY
   MARSECCENTRICITY_DT MARSESCAPE MARSFLATNESS MARSGM MARSGRAVITY
   MARSINCLINATION MARSINCLINATION_DT MARSLONGITUDE
   MARSLONGITUDE_DT MARSMASS MARSOBLATENESS MARSORBIT
   MARSORBIT_DT MARSPERIAPSIS MARSPERIAPSIS_DT MARSRADIUS
   MARSVOLUME MARSYEAR MARS_A MARS_B MARS_C MERCURYASCENDING
   MERCURYASCENDING_DT MERCURYDAY MERCURYDENSITY
   MERCURYECCENTRICITY MERCURYECCENTRICITY_DT MERCURYESCAPE
   MERCURYFLATNESS MERCURYGM MERCURYGRAVITY MERCURYINCLINATION
   MERCURYINCLINATION_DT MERCURYLONGITUDE MERCURYLONGITUDE_DT
   MERCURYMASS MERCURYOBLATENESS MERCURYORBIT MERCURYORBIT_DT
   MERCURYPERIAPSIS MERCURYPERIAPSIS_DT MERCURYRADIUS
   MERCURYVOLUME MERCURYYEAR MERCURY_A MERCURY_B MERCURY_C
   MOONDAY MOONDENSITY MOONECCENTRICITY MOONESCAPE MOONFLATNESS
   MOONGM MOONGRAVITY MOONINCLINATION MOONMASS MOONOBLATENESS
   MOONORBIT MOONRADIUS MOONVOLUME MOONYEAR MOON_A MOON_B MOON_C
   NEPTUNEASCENDING NEPTUNEASCENDING_DT NEPTUNEDAY NEPTUNEDENSITY
   NEPTUNEECCENTRICITY NEPTUNEECCENTRICITY_DT NEPTUNEESCAPE
   NEPTUNEFLATNESS NEPTUNEGM NEPTUNEGRAVITY NEPTUNEINCLINATION
   NEPTUNEINCLINATION_DT NEPTUNELONGITUDE NEPTUNELONGITUDE_DT
   NEPTUNEMASS NEPTUNEOBLATENESS NEPTUNEORBIT NEPTUNEORBIT_DT
   NEPTUNEPERIAPSIS NEPTUNEPERIAPSIS_DT NEPTUNERADIUS
   NEPTUNEVOLUME NEPTUNEYEAR NEPTUNE_A NEPTUNE_B NEPTUNE_C
   PLUTOASCENDING PLUTOASCENDING_DT PLUTODAY PLUTODENSITY
   PLUTOECCENTRICITY PLUTOECCENTRICITY_DT PLUTOESCAPE
   PLUTOFLATNESS PLUTOGM PLUTOGRAVITY PLUTOINCLINATION
   PLUTOINCLINATION_DT PLUTOLONGITUDE PLUTOLONGITUDE_DT PLUTOMASS
   PLUTOOBLATENESS PLUTOORBIT PLUTOORBIT_DT PLUTOPERIAPSIS
   PLUTOPERIAPSIS_DT PLUTORADIUS PLUTOVOLUME PLUTOYEAR PLUTO_A
   PLUTO_B PLUTO_C SATURNASCENDING SATURNASCENDING_DT SATURNDAY
   SATURNDENSITY SATURNECCENTRICITY SATURNECCENTRICITY_DT
   SATURNESCAPE SATURNFLATNESS SATURNGM SATURNGRAVITY
   SATURNINCLINATION SATURNINCLINATION_DT SATURNLONGITUDE
   SATURNLONGITUDE_DT SATURNMASS SATURNOBLATENESS SATURNORBIT
   SATURNORBIT_DT SATURNPERIAPSIS SATURNPERIAPSIS_DT SATURNRADIUS
   SATURNVOLUME SATURNYEAR SATURN_A SATURN_B SATURN_C SIDEREALDAY
   SIDEREALYEAR STELLARDAY SUNASCENDING SUNASCENDING_DT SUNDAY
   SUNDENSITY SUNECCENTRICITY SUNECCENTRICITY_DT SUNESCAPE
   SUNFLATNESS SUNGM SUNGMIERS SUNGMNASA SUNGRAVITY
   SUNINCLINATION SUNINCLINATION_DT SUNLONGITUDE SUNLONGITUDE_DT
   SUNMASS SUNOBLATENESS SUNORBIT SUNORBIT_DT SUNPERIAPSIS
   SUNPERIAPSIS_DT SUNRADIUS SUNVOLUME SUNYEAR SUN_A SUN_B SUN_C
   TROPICALYEAR URANUSASCENDING URANUSASCENDING_DT URANUSDAY
   URANUSDENSITY URANUSECCENTRICITY URANUSECCENTRICITY_DT
   URANUSESCAPE URANUSFLATNESS URANUSGM URANUSGRAVITY
   URANUSINCLINATION URANUSINCLINATION_DT URANUSLONGITUDE
   URANUSLONGITUDE_DT URANUSMASS URANUSOBLATENESS URANUSORBIT
   URANUSORBIT_DT URANUSPERIAPSIS URANUSPERIAPSIS_DT URANUSRADIUS
   URANUSVOLUME URANUSYEAR URANUS_A URANUS_B URANUS_C
   VENUSASCENDING VENUSASCENDING_DT VENUSDAY VENUSDENSITY
   VENUSECCENTRICITY VENUSECCENTRICITY_DT VENUSESCAPE
   VENUSFLATNESS VENUSGM VENUSGRAVITY VENUSINCLINATION
   VENUSINCLINATION_DT VENUSLONGITUDE VENUSLONGITUDE_DT VENUSMASS
   VENUSOBLATENESS VENUSORBIT VENUSORBIT_DT VENUSPERIAPSIS
   VENUSPERIAPSIS_DT VENUSRADIUS VENUSVOLUME VENUSYEAR VENUS_A
   VENUS_B VENUS_C cxanomalisticyear cxceres_a cxceres_b
   cxceres_c cxceresascending cxceresascending_dt cxceresday
   cxceresdensity cxcereseccentricity cxcereseccentricity_dt
   cxceresescape cxceresflatness cxceresgm cxceresgravity
   cxceresinclination cxceresinclination_dt cxcereslongitude
   cxcereslongitude_dt cxceresmass cxceresoblateness cxceresorbit
   cxceresorbit_dt cxceresperiapsis cxceresperiapsis_dt
   cxceresradius cxceresvolume cxceresyear cxearth_a cxearth_b
   cxearth_c cxearthanomalisticyear cxearthascending
   cxearthascending_dt cxearthday cxearthdensity
   cxeartheccentricity cxeartheccentricity_dt cxearthescape
   cxearthflatness cxearthgm cxearthgravity cxearthinclination
   cxearthinclination_dt cxearthlongitude cxearthlongitude_dt
   cxearthmass cxearthoblateness cxearthorbit cxearthorbit_dt
   cxearthperiapsis cxearthperiapsis_dt cxearthprecession
   cxearthradius cxearthsiderealday cxearthsiderealyear
   cxearthstellarday cxearththeta_0 cxearthtropicalyear
   cxearthvolume cxearthyear cxeris_a cxeris_b cxeris_c
   cxerisascending cxerisascending_dt cxerisday cxerisdensity
   cxeriseccentricity cxeriseccentricity_dt cxerisescape
   cxerisflatness cxerisgm cxerisgravity cxerisinclination
   cxerisinclination_dt cxerislongitude cxerislongitude_dt
   cxerismass cxerisoblateness cxerisorbit cxerisorbit_dt
   cxerisperiapsis cxerisperiapsis_dt cxerisradius cxerisvolume
   cxerisyear cxhaumea_a cxhaumea_b cxhaumea_c cxhaumeaascending
   cxhaumeaascending_dt cxhaumeaday cxhaumeadensity
   cxhaumeaeccentricity cxhaumeaeccentricity_dt cxhaumeaescape
   cxhaumeaflatness cxhaumeagm cxhaumeagravity
   cxhaumeainclination cxhaumeainclination_dt cxhaumealongitude
   cxhaumealongitude_dt cxhaumeamass cxhaumeaoblateness
   cxhaumeaorbit cxhaumeaorbit_dt cxhaumeaperiapsis
   cxhaumeaperiapsis_dt cxhaumearadius cxhaumeavolume
   cxhaumeayear cxjupiter_a cxjupiter_b cxjupiter_c
   cxjupiterascending cxjupiterascending_dt cxjupiterday
   cxjupiterdensity cxjupitereccentricity
   cxjupitereccentricity_dt cxjupiterescape cxjupiterflatness
   cxjupitergm cxjupitergravity cxjupiterinclination
   cxjupiterinclination_dt cxjupiterlongitude
   cxjupiterlongitude_dt cxjupitermass cxjupiteroblateness
   cxjupiterorbit cxjupiterorbit_dt cxjupiterperiapsis
   cxjupiterperiapsis_dt cxjupiterradius cxjupitervolume
   cxjupiteryear cxmakemake_a cxmakemake_b cxmakemake_c
   cxmakemakeascending cxmakemakeascending_dt cxmakemakeday
   cxmakemakedensity cxmakemakeeccentricity
   cxmakemakeeccentricity_dt cxmakemakeescape cxmakemakeflatness
   cxmakemakegm cxmakemakegravity cxmakemakeinclination
   cxmakemakeinclination_dt cxmakemakelongitude
   cxmakemakelongitude_dt cxmakemakemass cxmakemakeoblateness
   cxmakemakeorbit cxmakemakeorbit_dt cxmakemakeperiapsis
   cxmakemakeperiapsis_dt cxmakemakeradius cxmakemakevolume
   cxmakemakeyear cxmars_a cxmars_b cxmars_c cxmarsascending
   cxmarsascending_dt cxmarsday cxmarsdensity cxmarseccentricity
   cxmarseccentricity_dt cxmarsescape cxmarsflatness cxmarsgm
   cxmarsgravity cxmarsinclination cxmarsinclination_dt
   cxmarslongitude cxmarslongitude_dt cxmarsmass cxmarsoblateness
   cxmarsorbit cxmarsorbit_dt cxmarsperiapsis cxmarsperiapsis_dt
   cxmarsradius cxmarsvolume cxmarsyear cxmercury_a cxmercury_b
   cxmercury_c cxmercuryascending cxmercuryascending_dt
   cxmercuryday cxmercurydensity cxmercuryeccentricity
   cxmercuryeccentricity_dt cxmercuryescape cxmercuryflatness
   cxmercurygm cxmercurygravity cxmercuryinclination
   cxmercuryinclination_dt cxmercurylongitude
   cxmercurylongitude_dt cxmercurymass cxmercuryoblateness
   cxmercuryorbit cxmercuryorbit_dt cxmercuryperiapsis
   cxmercuryperiapsis_dt cxmercuryradius cxmercuryvolume
   cxmercuryyear cxmoon_a cxmoon_b cxmoon_c cxmoonday
   cxmoondensity cxmooneccentricity cxmoonescape cxmoonflatness
   cxmoongm cxmoongravity cxmooninclination cxmoonmass
   cxmoonoblateness cxmoonorbit cxmoonradius cxmoonvolume
   cxmoonyear cxneptune_a cxneptune_b cxneptune_c
   cxneptuneascending cxneptuneascending_dt cxneptuneday
   cxneptunedensity cxneptuneeccentricity
   cxneptuneeccentricity_dt cxneptuneescape cxneptuneflatness
   cxneptunegm cxneptunegravity cxneptuneinclination
   cxneptuneinclination_dt cxneptunelongitude
   cxneptunelongitude_dt cxneptunemass cxneptuneoblateness
   cxneptuneorbit cxneptuneorbit_dt cxneptuneperiapsis
   cxneptuneperiapsis_dt cxneptuneradius cxneptunevolume
   cxneptuneyear cxpluto_a cxpluto_b cxpluto_c cxplutoascending
   cxplutoascending_dt cxplutoday cxplutodensity
   cxplutoeccentricity cxplutoeccentricity_dt cxplutoescape
   cxplutoflatness cxplutogm cxplutogravity cxplutoinclination
   cxplutoinclination_dt cxplutolongitude cxplutolongitude_dt
   cxplutomass cxplutooblateness cxplutoorbit cxplutoorbit_dt
   cxplutoperiapsis cxplutoperiapsis_dt cxplutoradius
   cxplutovolume cxplutoyear cxsaturn_a cxsaturn_b cxsaturn_c
   cxsaturnascending cxsaturnascending_dt cxsaturnday
   cxsaturndensity cxsaturneccentricity cxsaturneccentricity_dt
   cxsaturnescape cxsaturnflatness cxsaturngm cxsaturngravity
   cxsaturninclination cxsaturninclination_dt cxsaturnlongitude
   cxsaturnlongitude_dt cxsaturnmass cxsaturnoblateness
   cxsaturnorbit cxsaturnorbit_dt cxsaturnperiapsis
   cxsaturnperiapsis_dt cxsaturnradius cxsaturnvolume
   cxsaturnyear cxsiderealday cxsiderealyear cxstellarday cxsun_a
   cxsun_b cxsun_c cxsunascending cxsunascending_dt cxsunday
   cxsundensity cxsuneccentricity cxsuneccentricity_dt
   cxsunescape cxsunflatness cxsungm cxsungmiers cxsungmnasa
   cxsungravity cxsuninclination cxsuninclination_dt
   cxsunlongitude cxsunlongitude_dt cxsunmass cxsunoblateness
   cxsunorbit cxsunorbit_dt cxsunperiapsis cxsunperiapsis_dt
   cxsunradius cxsunvolume cxsunyear cxtropicalyear cxuranus_a
   cxuranus_b cxuranus_c cxuranusascending cxuranusascending_dt
   cxuranusday cxuranusdensity cxuranuseccentricity
   cxuranuseccentricity_dt cxuranusescape cxuranusflatness
   cxuranusgm cxuranusgravity cxuranusinclination
   cxuranusinclination_dt cxuranuslongitude cxuranuslongitude_dt
   cxuranusmass cxuranusoblateness cxuranusorbit cxuranusorbit_dt
   cxuranusperiapsis cxuranusperiapsis_dt cxuranusradius
   cxuranusvolume cxuranusyear cxvenus_a cxvenus_b cxvenus_c
   cxvenusascending cxvenusascending_dt cxvenusday cxvenusdensity
   cxvenuseccentricity cxvenuseccentricity_dt cxvenusescape
   cxvenusflatness cxvenusgm cxvenusgravity cxvenusinclination
   cxvenusinclination_dt cxvenuslongitude cxvenuslongitude_dt
   cxvenusmass cxvenusoblateness cxvenusorbit cxvenusorbit_dt
   cxvenusperiapsis cxvenusperiapsis_dt cxvenusradius
   cxvenusvolume cxvenusyear earth_distance earth_gravity
   earth_gravity_height earth_obliquity earth_radius
   earth_tropicalyear eccentric_anomaly isa_dens isa_pres
   isa_temp margot pl pl_a pl_aphelion pl_aradius pl_argument
   pl_ascending pl_b pl_c pl_day pl_density pl_eccentricanomaly
   pl_eccentricity pl_escape pl_flatness pl_gm pl_gravity
   pl_heliocentric pl_inclination pl_longitude pl_margot pl_mass
   pl_meananomaly pl_name pl_orbit pl_periapsis pl_perihelion
   pl_radius pl_sternlevison pl_synodic pl_volume pl_year pla
   plaphelion plaradius plargument plascending plb plc plday
   pldensity pleccentricanomaly pleccentricity plescape
   plflatness plgeo plgm plgravity plhelio plinclination
   pllongitude plmargot plmass plmeananomaly plname plorbit
   plperiapsis plperihelion plradius plsettime plsternlevison
   plsynodic plvolume plyear sternlevison vin_destination
   vin_distance
)); # End of EXPORT_OK
%EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );
sub margot($$ );
sub sternlevison($$ );
sub lf_pl_init($ );
sub lf_val($$$ );
sub pl($ );
sub plsettime($ );
sub pl_gm($ );
sub plgm( );
sub pl_year($ );
sub plyear( );
sub pl_day($ );
sub plday( );
sub pl_flatness($ );
sub plflatness( );
sub pl_a($ );
sub pla( );
sub pl_c($ );
sub plc( );
sub pl_orbit($ );
sub plorbit( );
sub pl_eccentricity($ );
sub pleccentricity( );
sub pl_inclination($ );
sub plinclination( );
sub pl_longitude($ );
sub pllongitude( );
sub pl_periapsis($ );
sub plperiapsis( );
sub pl_ascending($ );
sub plascending( );
sub pl_mass($ );
sub plmass( );
sub pl_b($ );
sub plb( );
sub pl_radius($ );
sub plradius( );
sub pl_gravity($ );
sub plgravity( );
sub pl_meananomaly($ );
sub plmeananomaly( );
sub pl_escape($ );
sub plescape( );
sub pl_synodic($ );
sub plsynodic( );
sub pl_volume($ );
sub plvolume( );
sub pl_density($ );
sub pldensity( );
sub pl_argument($ );
sub plargument( );
sub pl_margot($ );
sub plmargot( );
sub pl_sternlevison($ );
sub plsternlevison( );
sub pl_perihelion($ );
sub plperihelion( );
sub pl_aphelion($ );
sub plaphelion( );
sub eccentric_anomaly($$ );
sub pl_eccentricanomaly($ );
sub pleccentricanomaly( );
sub pl_heliocentric($$ );
sub plhelio($ );
sub plgeo($ );
sub pl_name($ );
sub plname( );
sub earth_radius($ );
sub earth_tropicalyear($ );
sub earth_distance($$$$ );
sub plaradius($ );
sub pl_aradius($$ );
sub earth_obliquity($ );
sub earth_gravity($ );
sub earth_gravity_height($$ );
sub lf_isa_calc($$ );
sub isa_temp($ );
sub isa_pres($ );
sub isa_dens($ );
sub vin_distance($$$$\@ );
sub vin_destination($$$$\@ );
use Kw qw();
use Kwelements qw();
sub EARTHSIDEREALDAY() { Kw::DAY / 1.002737909350795; }
sub EARTHSTELLARDAY() { Kw::DAY / 1.00273781191135448; }
sub EARTHTROPICALYEAR() { 365.242190402 * Kw::DAY; }
sub EARTHSIDEREALYEAR() { 365.256363004 * Kw::DAY; }
sub EARTHANOMALISTICYEAR() { 365.259636 * Kw::DAY; }
sub SIDEREALYEAR() { EARTHSIDEREALYEAR; }
sub ANOMALISTICYEAR() { EARTHANOMALISTICYEAR; }
sub TROPICALYEAR() { EARTHTROPICALYEAR; }
sub STELLARDAY() { EARTHSTELLARDAY; }
sub SIDEREALDAY() { EARTHSIDEREALDAY; }
sub SUNGMNASA() { 1.32712440018E+20 * Kw::UNITGM; }
sub SUNGMIERS() { 1.32712442099E+20 * Kw::UNITGM; }
sub SUNGM() { SUNGMNASA; }
sub SUNYEAR() { 0.0 * Kw::DAY; }
sub SUNDAY() { 24.47 * Kw::DAY; }
sub SUNFLATNESS() { 9.0E-6; }
sub SUN_A() { 6.957E+8 * Kw::METER; }
sub SUN_C() { SUN_A; }
sub SUN_B() { SUN_A * (1.0 - SUNFLATNESS); }
sub SUNRADIUS() { 0.333333333333333 * (SUN_A + SUN_B + SUN_C); }
sub SUNESCAPE() { sqrt(2 * SUNGM / SUNRADIUS); }
sub SUNOBLATENESS() { sqrt(SUNFLATNESS * (2.0 - SUNFLATNESS)); }
sub SUNGRAVITY() { SUNGM / (SUNRADIUS * SUNRADIUS); }
sub SUNMASS() { SUNGM / Kw::GRAVITATION; }
sub SUNVOLUME() { 2.0 * Kw::TAU / 3.0 * SUNRADIUS * SUNRADIUS
      * SUNRADIUS; }
sub SUNDENSITY() { SUNMASS / SUNVOLUME; }
sub MERCURYGM() { 2.2032E+13 * Kw::UNITGM; }
sub MERCURYYEAR() { 87.9691 * Kw::DAY; }
sub MERCURYDAY() { 58.6462 * Kw::DAY; }
sub MERCURYFLATNESS() { 0.0; }
sub MERCURY_A() { 2.4397E+6 * Kw::METER; }
sub MERCURY_C() { MERCURY_A; }
sub MERCURY_B() { MERCURY_A * (1.0 - MERCURYFLATNESS); }
sub MERCURYRADIUS() { 0.333333333333333 * (MERCURY_A +
      MERCURY_B + MERCURY_C); }
sub MERCURYESCAPE() { sqrt(2 * MERCURYGM / MERCURYRADIUS); }
sub MERCURYOBLATENESS() { sqrt(MERCURYFLATNESS * (2.0 -
      MERCURYFLATNESS)); }
sub MERCURYGRAVITY() { MERCURYGM / (MERCURYRADIUS *
      MERCURYRADIUS); }
sub MERCURYMASS() { MERCURYGM / Kw::GRAVITATION; }
sub MERCURYVOLUME() { 2.0 * Kw::TAU / 3.0 * MERCURYRADIUS *
      MERCURYRADIUS * MERCURYRADIUS; }
sub MERCURYDENSITY() { MERCURYMASS / MERCURYVOLUME; }
sub VENUSGM() { 3.24859E+14 * Kw::UNITGM; }
sub VENUSYEAR() { 224.701 * Kw::DAY; }
sub VENUSDAY() { - 243.018 * Kw::DAY; }
sub VENUSFLATNESS() { 0.0; }
sub VENUS_A() { 6.0518E+6 * Kw::METER; }
sub VENUS_C() { VENUS_A; }
sub VENUS_B() { VENUS_A * (1.0 - VENUSFLATNESS); }
sub VENUSRADIUS() { 0.333333333333333 * (VENUS_A + VENUS_B +
      VENUS_C); }
sub VENUSESCAPE() { sqrt(2 * VENUSGM / VENUSRADIUS); }
sub VENUSOBLATENESS() { sqrt(VENUSFLATNESS * (2.0 -
      VENUSFLATNESS)); }
sub VENUSGRAVITY() { VENUSGM / (VENUSRADIUS * VENUSRADIUS); }
sub VENUSMASS() { VENUSGM / Kw::GRAVITATION; }
sub VENUSVOLUME() { 2.0 * Kw::TAU / 3.0 * VENUSRADIUS *
      VENUSRADIUS * VENUSRADIUS; }
sub VENUSDENSITY() { VENUSMASS / VENUSVOLUME; }
sub EARTHGM() { 3.986004418E+14 * Kw::UNITGM; }
sub EARTHYEAR() { EARTHSIDEREALYEAR; }
sub EARTHDAY() { EARTHSTELLARDAY; }
sub EARTHFLATNESS() { 1.0 / 298.257223563; }
sub EARTH_A() { 6.378137E+6 * Kw::METER; }
sub EARTH_C() { EARTH_A; }
sub EARTH_B() { EARTH_A * (1.0 - EARTHFLATNESS); }
sub EARTHRADIUS() { 0.333333333333333 * (EARTH_A + EARTH_B +
      EARTH_C); }
sub EARTHESCAPE() { sqrt(2 * EARTHGM / EARTHRADIUS); }
sub EARTHOBLATENESS() { sqrt(EARTHFLATNESS * (2.0 -
      EARTHFLATNESS)); }
sub EARTHGRAVITY() { EARTHGM / (EARTHRADIUS * EARTHRADIUS); }
sub EARTHMASS() { EARTHGM / Kw::GRAVITATION; }
sub EARTHVOLUME() { 2.0 * Kw::TAU / 3.0 * EARTHRADIUS *
      EARTHRADIUS * EARTHRADIUS; }
sub EARTHDENSITY() { EARTHMASS / EARTHVOLUME; }
sub EARTHPRECESSION() { 50.28792 * Kw::ARCSEC / Kw::JYEAR; }
sub EARTHTHETA_0() { 0.7790572732640 * Kw::TURN; }
sub MARSGM() { 4.282837E+13 * Kw::UNITGM; }
sub MARSYEAR() { 686.971 * Kw::DAY; }
sub MARSDAY() { 1.02595676 * Kw::DAY; }
sub MARSFLATNESS() { 1.0 / 169.81; }
sub MARS_A() { 3.3962E+6 * Kw::METER; }
sub MARS_C() { MARS_A; }
sub MARS_B() { MARS_A * (1.0 - MARSFLATNESS); }
sub MARSRADIUS() { 0.333333333333333 * (MARS_A + MARS_B +
      MARS_C); }
sub MARSESCAPE() { sqrt(2 * MARSGM / MARSRADIUS); }
sub MARSOBLATENESS() { sqrt(MARSFLATNESS * (2.0 -
      MARSFLATNESS)); }
sub MARSGRAVITY() { MARSGM / (MARSRADIUS * MARSRADIUS); }
sub MARSMASS() { MARSGM / Kw::GRAVITATION; }
sub MARSVOLUME() { 2.0 * Kw::TAU / 3.0 * MARSRADIUS *
      MARSRADIUS * MARSRADIUS; }
sub MARSDENSITY() { MARSMASS / MARSVOLUME; }
sub JUPITERGM() { 1.26686534E+17 * Kw::UNITGM; }
sub JUPITERYEAR() { 4332.59 * Kw::DAY; }
sub JUPITERDAY() { 0.41354 * Kw::DAY; }
sub JUPITERFLATNESS() { 1.0 / 15.4144028; }
sub JUPITER_A() { 7.1492E+7 * Kw::METER; }
sub JUPITER_C() { JUPITER_A; }
sub JUPITER_B() { JUPITER_A * (1.0 - JUPITERFLATNESS); }
sub JUPITERRADIUS() { 0.333333333333333 * (JUPITER_A +
      JUPITER_B + JUPITER_C); }
sub JUPITERESCAPE() { sqrt(2 * JUPITERGM / JUPITERRADIUS); }
sub JUPITEROBLATENESS() { sqrt(JUPITERFLATNESS * (2.0 -
      JUPITERFLATNESS)); }
sub JUPITERGRAVITY() { JUPITERGM / (JUPITERRADIUS *
      JUPITERRADIUS); }
sub JUPITERMASS() { JUPITERGM / Kw::GRAVITATION; }
sub JUPITERVOLUME() { 2.0 * Kw::TAU / 3.0 * JUPITERRADIUS *
      JUPITERRADIUS * JUPITERRADIUS; }
sub JUPITERDENSITY() { JUPITERMASS / JUPITERVOLUME; }
sub SATURNGM() { 3.7931187E+16 * Kw::UNITGM; }
sub SATURNYEAR() { 10759.22 * Kw::DAY; }
sub SATURNDAY() { 0.44401 * Kw::DAY; }
sub SATURNFLATNESS() { 1.0 / 10.208; }
sub SATURN_A() { 6.0268E+7 * Kw::METER; }
sub SATURN_C() { SATURN_A; }
sub SATURN_B() { SATURN_A * (1.0 - SATURNFLATNESS); }
sub SATURNRADIUS() { 0.333333333333333 * (SATURN_A + SATURN_B
      + SATURN_C); }
sub SATURNESCAPE() { sqrt(2 * SATURNGM / SATURNRADIUS); }
sub SATURNOBLATENESS() { sqrt(SATURNFLATNESS * (2.0 -
      SATURNFLATNESS)); }
sub SATURNGRAVITY() { SATURNGM / (SATURNRADIUS * SATURNRADIUS); }
sub SATURNMASS() { SATURNGM / Kw::GRAVITATION; }
sub SATURNVOLUME() { 2.0 * Kw::TAU / 3.0 * SATURNRADIUS *
      SATURNRADIUS * SATURNRADIUS; }
sub SATURNDENSITY() { SATURNMASS / SATURNVOLUME; }
sub URANUSGM() { 5.793939E+15 * Kw::UNITGM; }
sub URANUSYEAR() { 30688.5 * Kw::DAY; }
sub URANUSDAY() { - 0.71833 * Kw::DAY; }
sub URANUSFLATNESS() { 1.0 / 43.61604; }
sub URANUS_A() { 2.5559E+7 * Kw::METER; }
sub URANUS_C() { URANUS_A; }
sub URANUS_B() { URANUS_A * (1.0 - URANUSFLATNESS); }
sub URANUSRADIUS() { 0.333333333333333 * (URANUS_A + URANUS_B
      + URANUS_C); }
sub URANUSESCAPE() { sqrt(2 * URANUSGM / URANUSRADIUS); }
sub URANUSOBLATENESS() { sqrt(URANUSFLATNESS * (2.0 -
      URANUSFLATNESS)); }
sub URANUSGRAVITY() { URANUSGM / (URANUSRADIUS * URANUSRADIUS); }
sub URANUSMASS() { URANUSGM / Kw::GRAVITATION; }
sub URANUSVOLUME() { 2.0 * Kw::TAU / 3.0 * URANUSRADIUS *
      URANUSRADIUS * URANUSRADIUS; }
sub URANUSDENSITY() { URANUSMASS / URANUSVOLUME; }
sub NEPTUNEGM() { 6.836529E+15 * Kw::UNITGM; }
sub NEPTUNEYEAR() { 6.0182E+4 * Kw::DAY; }
sub NEPTUNEDAY() { 0.67125 * Kw::DAY; }
sub NEPTUNEFLATNESS() { 1.0 / 58.54373; }
sub NEPTUNE_A() { 2.4764E+7 * Kw::METER; }
sub NEPTUNE_C() { NEPTUNE_A; }
sub NEPTUNE_B() { NEPTUNE_A * (1.0 - NEPTUNEFLATNESS); }
sub NEPTUNERADIUS() { 0.333333333333333 * (NEPTUNE_A +
      NEPTUNE_B + NEPTUNE_C); }
sub NEPTUNEESCAPE() { sqrt(2 * NEPTUNEGM / NEPTUNERADIUS); }
sub NEPTUNEOBLATENESS() { sqrt(NEPTUNEFLATNESS * (2.0 -
      NEPTUNEFLATNESS)); }
sub NEPTUNEGRAVITY() { NEPTUNEGM / (NEPTUNERADIUS *
      NEPTUNERADIUS); }
sub NEPTUNEMASS() { NEPTUNEGM / Kw::GRAVITATION; }
sub NEPTUNEVOLUME() { 2.0 * Kw::TAU / 3.0 * NEPTUNERADIUS *
      NEPTUNERADIUS * NEPTUNERADIUS; }
sub NEPTUNEDENSITY() { NEPTUNEMASS / NEPTUNEVOLUME; }
sub PLUTOGM() { 8.71E+11 * Kw::UNITGM; }
sub PLUTOYEAR() { 9.056E+4 * Kw::DAY; }
sub PLUTODAY() { 6.38723 * Kw::DAY; }
sub PLUTOFLATNESS() { 0.0; }
sub PLUTO_A() { 1.1899E+6 * Kw::METER; }
sub PLUTO_C() { PLUTO_A; }
sub PLUTO_B() { PLUTO_A * (1.0 - PLUTOFLATNESS); }
sub PLUTORADIUS() { 0.333333333333333 * (PLUTO_A + PLUTO_B +
      PLUTO_C); }
sub PLUTOESCAPE() { sqrt(2 * PLUTOGM / PLUTORADIUS); }
sub PLUTOOBLATENESS() { sqrt(PLUTOFLATNESS * (2.0 -
      PLUTOFLATNESS)); }
sub PLUTOGRAVITY() { PLUTOGM / (PLUTORADIUS * PLUTORADIUS); }
sub PLUTOMASS() { PLUTOGM / Kw::GRAVITATION; }
sub PLUTOVOLUME() { 2.0 * Kw::TAU / 3.0 * PLUTORADIUS *
      PLUTORADIUS * PLUTORADIUS; }
sub PLUTODENSITY() { PLUTOMASS / PLUTOVOLUME; }
sub MOONGM() { 4.9048695E+12 * Kw::UNITGM; }
sub MOONYEAR() { 27.32166155 * Kw::DAY; }
sub MOONDAY() { 27.321661 * Kw::DAY; }
sub MOONFLATNESS() { 1.0 / 827.667; }
sub MOON_A() { 1.7381E+6 * Kw::METER; }
sub MOON_C() { MOON_A; }
sub MOON_B() { MOON_A * (1.0 - MOONFLATNESS); }
sub MOONRADIUS() { 0.333333333333333 * (MOON_A + MOON_B +
      MOON_C); }
sub MOONESCAPE() { sqrt(2 * MOONGM / MOONRADIUS); }
sub MOONOBLATENESS() { sqrt(MOONFLATNESS * (2.0 -
      MOONFLATNESS)); }
sub MOONGRAVITY() { MOONGM / (MOONRADIUS * MOONRADIUS); }
sub MOONMASS() { MOONGM / Kw::GRAVITATION; }
sub MOONVOLUME() { 2.0 * Kw::TAU / 3.0 * MOONRADIUS *
      MOONRADIUS * MOONRADIUS; }
sub MOONDENSITY() { MOONMASS / MOONVOLUME; }
sub MOONORBIT() { 3.843999E+8 * Kw::METER; }
sub MOONECCENTRICITY() { 0.0549; }
sub MOONINCLINATION() { 5.415 * Kw::ARCDEG; }
sub CERESGM() { 6.26325E+10 * Kw::UNITGM; }
sub CERESYEAR() { 1681.63 * Kw::DAY; }
sub CERESDAY() { 9.074170 * Kw::HOUR; }
sub CERESFLATNESS() { 1.0 / 13.0432; }
sub CERES_A() { 4.826E+5 * Kw::METER; }
sub CERES_C() { 4.806E+5 * Kw::METER; }
sub CERES_B() { CERES_A * (1.0 - CERESFLATNESS); }
sub CERESRADIUS() { 0.333333333333333 * (CERES_A + CERES_B +
      CERES_C); }
sub CERESESCAPE() { sqrt(2 * CERESGM / CERESRADIUS); }
sub CERESOBLATENESS() { sqrt(CERESFLATNESS * (2.0 -
      CERESFLATNESS)); }
sub CERESGRAVITY() { CERESGM / (CERESRADIUS * CERESRADIUS); }
sub CERESMASS() { CERESGM / Kw::GRAVITATION; }
sub CERESVOLUME() { 2.0 * Kw::TAU / 3.0 * CERESRADIUS *
      CERESRADIUS * CERESRADIUS; }
sub CERESDENSITY() { CERESMASS / CERESVOLUME; }
sub ERISGM() { 1.108E+12 * Kw::UNITGM; }
sub ERISYEAR() { 2.0383E+5 * Kw::DAY; }
sub ERISDAY() { 25.9 * Kw::HOUR; }
sub ERISFLATNESS() { 0.0; }
sub ERIS_A() { 1.163E+6 * Kw::METER; }
sub ERIS_C() { ERIS_A; }
sub ERIS_B() { ERIS_A * (1.0 - ERISFLATNESS); }
sub ERISRADIUS() { 0.333333333333333 * (ERIS_A + ERIS_B +
      ERIS_C); }
sub ERISESCAPE() { sqrt(2 * ERISGM / ERISRADIUS); }
sub ERISOBLATENESS() { sqrt(ERISFLATNESS * (2.0 -
      ERISFLATNESS)); }
sub ERISGRAVITY() { ERISGM / (ERISRADIUS * ERISRADIUS); }
sub ERISMASS() { ERISGM / Kw::GRAVITATION; }
sub ERISVOLUME() { 2.0 * Kw::TAU / 3.0 * ERISRADIUS *
      ERISRADIUS * ERISRADIUS; }
sub ERISDENSITY() { ERISMASS / ERISVOLUME; }
sub MAKEMAKEGM() { 2.9366E+11 * Kw::UNITGM; }
sub MAKEMAKEYEAR() { 1.12897E+5 * Kw::DAY; }
sub MAKEMAKEDAY() { 7.771 * Kw::HOUR; }
sub MAKEMAKEFLATNESS() { 1.0 / 30.7917; }
sub MAKEMAKE_A() { 7.39E+5 * Kw::METER; }
sub MAKEMAKE_C() { MAKEMAKE_A; }
sub MAKEMAKE_B() { MAKEMAKE_A * (1.0 - MAKEMAKEFLATNESS); }
sub MAKEMAKERADIUS() { 0.333333333333333 * (MAKEMAKE_A +
      MAKEMAKE_B + MAKEMAKE_C); }
sub MAKEMAKEESCAPE() { sqrt(2 * MAKEMAKEGM / MAKEMAKERADIUS); }
sub MAKEMAKEOBLATENESS() { sqrt(MAKEMAKEFLATNESS * (2.0 -
      MAKEMAKEFLATNESS)); }
sub MAKEMAKEGRAVITY() { MAKEMAKEGM / (MAKEMAKERADIUS *
      MAKEMAKERADIUS); }
sub MAKEMAKEMASS() { MAKEMAKEGM / Kw::GRAVITATION; }
sub MAKEMAKEVOLUME() { 2.0 * Kw::TAU / 3.0 * MAKEMAKERADIUS *
      MAKEMAKERADIUS * MAKEMAKERADIUS; }
sub MAKEMAKEDENSITY() { MAKEMAKEMASS / MAKEMAKEVOLUME; }
sub HAUMEAGM() { 2.674E+11 * Kw::UNITGM; }
sub HAUMEAYEAR() { 1.03774E+5 * Kw::DAY; }
sub HAUMEADAY() { 3.9155 * Kw::HOUR; }
sub HAUMEAFLATNESS() { 1.0 / 1.96115; }
sub HAUMEA_A() { 1.161E+6 * Kw::METER; }
sub HAUMEA_C() { 8.52E+5 * Kw::METER; }
sub HAUMEA_B() { HAUMEA_A * (1.0 - HAUMEAFLATNESS); }
sub HAUMEARADIUS() { 0.333333333333333 * (HAUMEA_A + HAUMEA_B
      + HAUMEA_C); }
sub HAUMEAESCAPE() { sqrt(2 * HAUMEAGM / HAUMEARADIUS); }
sub HAUMEAOBLATENESS() { sqrt(HAUMEAFLATNESS * (2.0 -
      HAUMEAFLATNESS)); }
sub HAUMEAGRAVITY() { HAUMEAGM / (HAUMEARADIUS * HAUMEARADIUS); }
sub HAUMEAMASS() { HAUMEAGM / Kw::GRAVITATION; }
sub HAUMEAVOLUME() { 2.0 * Kw::TAU / 3.0 * HAUMEARADIUS *
      HAUMEARADIUS * HAUMEARADIUS; }
sub HAUMEADENSITY() { HAUMEAMASS / HAUMEAVOLUME; }
sub SUNORBIT() { 0.0 * Kw::AU; }
sub SUNECCENTRICITY() { 0.0; }
sub SUNINCLINATION() { 0.0 * Kw::ARCDEG; }
sub SUNLONGITUDE() { 0.0 * Kw::ARCDEG; }
sub SUNPERIAPSIS() { 0.0 * Kw::ARCDEG; }
sub SUNASCENDING() { 0.0 * Kw::ARCDEG; }
sub SUNORBIT_DT() { 0.0 * Kw::AU / Kw::JC; }
sub SUNECCENTRICITY_DT() { 0.0 / Kw::JC; }
sub SUNINCLINATION_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub SUNLONGITUDE_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub SUNPERIAPSIS_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub SUNASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub EARTHORBIT() { 1.00000261 * Kw::AU; }
sub EARTHECCENTRICITY() { 0.01671123; }
sub EARTHINCLINATION() { 359.99998469 * Kw::ARCDEG; }
sub EARTHLONGITUDE() { 100.46457166 * Kw::ARCDEG; }
sub EARTHPERIAPSIS() { 102.93768193 * Kw::ARCDEG; }
sub EARTHASCENDING() { 0.0 * Kw::ARCDEG; }
sub EARTHORBIT_DT() { 0.00000562 * Kw::AU / Kw::JC; }
sub EARTHECCENTRICITY_DT() { - 0.00004392 / Kw::JC; }
sub EARTHINCLINATION_DT() { - 0.01294668 * Kw::ARCDEG / Kw::JC; }
sub EARTHLONGITUDE_DT() { 35999.37244981 * Kw::ARCDEG / Kw::JC; }
sub EARTHPERIAPSIS_DT() { 0.32327364 * Kw::ARCDEG / Kw::JC; }
sub EARTHASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub MERCURYORBIT() { 0.38709927 * Kw::AU; }
sub MERCURYECCENTRICITY() { 0.20563593; }
sub MERCURYINCLINATION() { 7.00497902 * Kw::ARCDEG; }
sub MERCURYLONGITUDE() { 252.25032350 * Kw::ARCDEG; }
sub MERCURYPERIAPSIS() { 77.45779628 * Kw::ARCDEG; }
sub MERCURYASCENDING() { 48.33076593 * Kw::ARCDEG; }
sub MERCURYORBIT_DT() { 0.00000037 * Kw::AU / Kw::JC; }
sub MERCURYECCENTRICITY_DT() { 0.00001906 / Kw::JC; }
sub MERCURYINCLINATION_DT() { - 0.00594749 * Kw::ARCDEG /
      Kw::JC; }
sub MERCURYLONGITUDE_DT() { 149472.67411175 * Kw::ARCDEG /
      Kw::JC; }
sub MERCURYPERIAPSIS_DT() { 0.16047689 * Kw::ARCDEG / Kw::JC; }
sub MERCURYASCENDING_DT() { - 0.12534081 * Kw::ARCDEG / Kw::JC; }
sub VENUSORBIT() { 0.72333566 * Kw::AU; }
sub VENUSECCENTRICITY() { 0.00677672; }
sub VENUSINCLINATION() { 3.39467605 * Kw::ARCDEG; }
sub VENUSLONGITUDE() { 181.97909950 * Kw::ARCDEG; }
sub VENUSPERIAPSIS() { 131.60246718 * Kw::ARCDEG; }
sub VENUSASCENDING() { 76.67984255 * Kw::ARCDEG; }
sub VENUSORBIT_DT() { 0.00000390 * Kw::AU / Kw::JC; }
sub VENUSECCENTRICITY_DT() { - 0.00004107 / Kw::JC; }
sub VENUSINCLINATION_DT() { - 0.00078890 * Kw::ARCDEG / Kw::JC; }
sub VENUSLONGITUDE_DT() { 58517.81538729 * Kw::ARCDEG / Kw::JC; }
sub VENUSPERIAPSIS_DT() { 0.00268329 * Kw::ARCDEG / Kw::JC; }
sub VENUSASCENDING_DT() { - 0.27769418 * Kw::ARCDEG / Kw::JC; }
sub MARSORBIT() { 1.52371034 * Kw::AU; }
sub MARSECCENTRICITY() { 0.09339410; }
sub MARSINCLINATION() { 1.84969142 * Kw::ARCDEG; }
sub MARSLONGITUDE() { 355.44656795 * Kw::ARCDEG; }
sub MARSPERIAPSIS() { 336.05637041 * Kw::ARCDEG; }
sub MARSASCENDING() { 49.55953891 * Kw::ARCDEG; }
sub MARSORBIT_DT() { 0.00001847 * Kw::AU / Kw::JC; }
sub MARSECCENTRICITY_DT() { 0.00007882 / Kw::JC; }
sub MARSINCLINATION_DT() { - 0.00813131 * Kw::ARCDEG / Kw::JC; }
sub MARSLONGITUDE_DT() { 19140.30268499 * Kw::ARCDEG / Kw::JC; }
sub MARSPERIAPSIS_DT() { 0.44441088 * Kw::ARCDEG / Kw::JC; }
sub MARSASCENDING_DT() { - 0.29257343 * Kw::ARCDEG / Kw::JC; }
sub JUPITERORBIT() { 5.20288700 * Kw::AU; }
sub JUPITERECCENTRICITY() { 0.04838624; }
sub JUPITERINCLINATION() { 1.30439695 * Kw::ARCDEG; }
sub JUPITERLONGITUDE() { 34.39644051 * Kw::ARCDEG; }
sub JUPITERPERIAPSIS() { 14.72847983 * Kw::ARCDEG; }
sub JUPITERASCENDING() { 100.47390909 * Kw::ARCDEG; }
sub JUPITERORBIT_DT() { - 0.00011607 * Kw::AU / Kw::JC; }
sub JUPITERECCENTRICITY_DT() { - 0.00013253 / Kw::JC; }
sub JUPITERINCLINATION_DT() { - 0.00183714 * Kw::ARCDEG /
      Kw::JC; }
sub JUPITERLONGITUDE_DT() { 3034.74612775 * Kw::ARCDEG /
      Kw::JC; }
sub JUPITERPERIAPSIS_DT() { 0.21252668 * Kw::ARCDEG / Kw::JC; }
sub JUPITERASCENDING_DT() { 0.20469106 * Kw::ARCDEG / Kw::JC; }
sub SATURNORBIT() { 9.53667594 * Kw::AU; }
sub SATURNECCENTRICITY() { 0.05386179; }
sub SATURNINCLINATION() { 2.48599187 * Kw::ARCDEG; }
sub SATURNLONGITUDE() { 49.95424423 * Kw::ARCDEG; }
sub SATURNPERIAPSIS() { 92.59887831 * Kw::ARCDEG; }
sub SATURNASCENDING() { 113.66242448 * Kw::ARCDEG; }
sub SATURNORBIT_DT() { - 0.00125060 * Kw::AU / Kw::JC; }
sub SATURNECCENTRICITY_DT() { - 0.00050991 / Kw::JC; }
sub SATURNINCLINATION_DT() { 0.00193609 * Kw::ARCDEG / Kw::JC; }
sub SATURNLONGITUDE_DT() { 1222.49362201 * Kw::ARCDEG / Kw::JC; }
sub SATURNPERIAPSIS_DT() { - 0.41897216 * Kw::ARCDEG / Kw::JC; }
sub SATURNASCENDING_DT() { - 0.28867794 * Kw::ARCDEG / Kw::JC; }
sub URANUSORBIT() { 19.18916464 * Kw::AU; }
sub URANUSECCENTRICITY() { 0.04725744; }
sub URANUSINCLINATION() { 0.77263783 * Kw::ARCDEG; }
sub URANUSLONGITUDE() { 313.23810451 * Kw::ARCDEG; }
sub URANUSPERIAPSIS() { 170.95427630 * Kw::ARCDEG; }
sub URANUSASCENDING() { 74.01692503 * Kw::ARCDEG; }
sub URANUSORBIT_DT() { - 0.00196176 * Kw::AU / Kw::JC; }
sub URANUSECCENTRICITY_DT() { - 0.00004397 / Kw::JC; }
sub URANUSINCLINATION_DT() { - 0.00242939 * Kw::ARCDEG /
      Kw::JC; }
sub URANUSLONGITUDE_DT() { 428.48202785 * Kw::ARCDEG / Kw::JC; }
sub URANUSPERIAPSIS_DT() { 0.40805281 * Kw::ARCDEG / Kw::JC; }
sub URANUSASCENDING_DT() { 0.04240589 * Kw::ARCDEG / Kw::JC; }
sub NEPTUNEORBIT() { 30.06992276 * Kw::AU; }
sub NEPTUNEECCENTRICITY() { 0.00859048; }
sub NEPTUNEINCLINATION() { 1.77004347 * Kw::ARCDEG; }
sub NEPTUNELONGITUDE() { 304.87997031 * Kw::ARCDEG; }
sub NEPTUNEPERIAPSIS() { 44.96476227 * Kw::ARCDEG; }
sub NEPTUNEASCENDING() { 131.78422574 * Kw::ARCDEG; }
sub NEPTUNEORBIT_DT() { 0.00026291 * Kw::AU / Kw::JC; }
sub NEPTUNEECCENTRICITY_DT() { 0.00005105 / Kw::JC; }
sub NEPTUNEINCLINATION_DT() { 0.00035372 * Kw::ARCDEG / Kw::JC; }
sub NEPTUNELONGITUDE_DT() { 218.45945325 * Kw::ARCDEG / Kw::JC; }
sub NEPTUNEPERIAPSIS_DT() { - 0.32241464 * Kw::ARCDEG / Kw::JC; }
sub NEPTUNEASCENDING_DT() { - 0.00508664 * Kw::ARCDEG / Kw::JC; }
sub PLUTOORBIT() { 39.48211675 * Kw::AU; }
sub PLUTOECCENTRICITY() { 0.24882730; }
sub PLUTOINCLINATION() { 17.14001206 * Kw::ARCDEG; }
sub PLUTOLONGITUDE() { 238.92903833 * Kw::ARCDEG; }
sub PLUTOPERIAPSIS() { 224.06891629 * Kw::ARCDEG; }
sub PLUTOASCENDING() { 110.30393684 * Kw::ARCDEG; }
sub PLUTOORBIT_DT() { - 0.00031596 * Kw::AU / Kw::JC; }
sub PLUTOECCENTRICITY_DT() { 0.00005170 / Kw::JC; }
sub PLUTOINCLINATION_DT() { 0.00004818 * Kw::ARCDEG / Kw::JC; }
sub PLUTOLONGITUDE_DT() { 145.20780515 * Kw::ARCDEG / Kw::JC; }
sub PLUTOPERIAPSIS_DT() { - 0.04062942 * Kw::ARCDEG / Kw::JC; }
sub PLUTOASCENDING_DT() { - 0.01183482 * Kw::ARCDEG / Kw::JC; }
sub CERESORBIT() { 2.76740933 * Kw::AU; }
sub CERESECCENTRICITY() { 0.07560729; }
sub CERESINCLINATION() { 10.59321706 * Kw::ARCDEG; }
sub CERESLONGITUDE() { 102.82668 * Kw::ARCDEG; }
sub CERESPERIAPSIS() { 73.023742647 * Kw::ARCDEG; }
sub CERESASCENDING() { 80.308882612359 * Kw::ARCDEG; }
sub CERESORBIT_DT() { 0.0 * Kw::AU / Kw::JC; }
sub CERESECCENTRICITY_DT() { 0.0 / Kw::JC; }
sub CERESINCLINATION_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub CERESLONGITUDE_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub CERESPERIAPSIS_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub CERESASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub ERISORBIT() { 67.781 * Kw::AU; }
sub ERISECCENTRICITY() { 0.44068; }
sub ERISINCLINATION() { 44.0445 * Kw::ARCDEG; }
sub ERISLONGITUDE() { 32.4926663 * Kw::ARCDEG; }
sub ERISPERIAPSIS() { 151.60371236817 * Kw::ARCDEG; }
sub ERISASCENDING() { 35.87992471211 * Kw::ARCDEG; }
sub ERISORBIT_DT() { 0.0 * Kw::AU / Kw::JC; }
sub ERISECCENTRICITY_DT() { 0.0 / Kw::JC; }
sub ERISINCLINATION_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub ERISLONGITUDE_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub ERISPERIAPSIS_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub ERISASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub MAKEMAKEORBIT() { 45.715 * Kw::AU; }
sub MAKEMAKEECCENTRICITY() { 0.15586; }
sub MAKEMAKEINCLINATION() { 29.00685 * Kw::ARCDEG; }
sub MAKEMAKELONGITUDE() { 177.2966805 * Kw::ARCDEG; }
sub MAKEMAKEPERIAPSIS() { 295.642772002 * Kw::ARCDEG; }
sub MAKEMAKEASCENDING() { 79.616805978978 * Kw::ARCDEG; }
sub MAKEMAKEORBIT_DT() { 0.0 * Kw::AU / Kw::JC; }
sub MAKEMAKEECCENTRICITY_DT() { 0.0 / Kw::JC; }
sub MAKEMAKEINCLINATION_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub MAKEMAKELONGITUDE_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub MAKEMAKEPERIAPSIS_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub MAKEMAKEASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub HAUMEAORBIT() { 43.218 * Kw::AU; }
sub HAUMEAECCENTRICITY() { 0.19126; }
sub HAUMEAINCLINATION() { 28.19 * Kw::ARCDEG; }
sub HAUMEALONGITUDE() { 215.687315 * Kw::ARCDEG; }
sub HAUMEAPERIAPSIS() { 238.69440821915 * Kw::ARCDEG; }
sub HAUMEAASCENDING() { 122.01840302632 * Kw::ARCDEG; }
sub HAUMEAORBIT_DT() { 0.0 * Kw::AU / Kw::JC; }
sub HAUMEAECCENTRICITY_DT() { 0.0 / Kw::JC; }
sub HAUMEAINCLINATION_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub HAUMEALONGITUDE_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub HAUMEAPERIAPSIS_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub HAUMEAASCENDING_DT() { 0.0 * Kw::ARCDEG / Kw::JC; }
sub cxearthsiderealday() { EARTHSIDEREALDAY }
sub cxearthstellarday() { EARTHSTELLARDAY }
sub cxearthtropicalyear() { EARTHTROPICALYEAR }
sub cxearthsiderealyear() { EARTHSIDEREALYEAR }
sub cxearthanomalisticyear() { EARTHANOMALISTICYEAR }
sub cxsiderealyear() { SIDEREALYEAR }
sub cxanomalisticyear() { ANOMALISTICYEAR }
sub cxtropicalyear() { TROPICALYEAR }
sub cxstellarday() { STELLARDAY }
sub cxsiderealday() { SIDEREALDAY }
sub cxsungmnasa() { SUNGMNASA }
sub cxsungmiers() { SUNGMIERS }
sub cxsungm() { SUNGM }
sub cxsunyear() { SUNYEAR }
sub cxsunday() { SUNDAY }
sub cxsunflatness() { SUNFLATNESS }
sub cxsun_a() { SUN_A }
sub cxsun_c() { SUN_C }
sub cxsun_b() { SUN_B }
sub cxsunradius() { SUNRADIUS }
sub cxsunescape() { SUNESCAPE }
sub cxsunoblateness() { SUNOBLATENESS }
sub cxsungravity() { SUNGRAVITY }
sub cxsunmass() { SUNMASS }
sub cxsunvolume() { SUNVOLUME }
sub cxsundensity() { SUNDENSITY }
sub cxmercurygm() { MERCURYGM }
sub cxmercuryyear() { MERCURYYEAR }
sub cxmercuryday() { MERCURYDAY }
sub cxmercuryflatness() { MERCURYFLATNESS }
sub cxmercury_a() { MERCURY_A }
sub cxmercury_c() { MERCURY_C }
sub cxmercury_b() { MERCURY_B }
sub cxmercuryradius() { MERCURYRADIUS }
sub cxmercuryescape() { MERCURYESCAPE }
sub cxmercuryoblateness() { MERCURYOBLATENESS }
sub cxmercurygravity() { MERCURYGRAVITY }
sub cxmercurymass() { MERCURYMASS }
sub cxmercuryvolume() { MERCURYVOLUME }
sub cxmercurydensity() { MERCURYDENSITY }
sub cxvenusgm() { VENUSGM }
sub cxvenusyear() { VENUSYEAR }
sub cxvenusday() { VENUSDAY }
sub cxvenusflatness() { VENUSFLATNESS }
sub cxvenus_a() { VENUS_A }
sub cxvenus_c() { VENUS_C }
sub cxvenus_b() { VENUS_B }
sub cxvenusradius() { VENUSRADIUS }
sub cxvenusescape() { VENUSESCAPE }
sub cxvenusoblateness() { VENUSOBLATENESS }
sub cxvenusgravity() { VENUSGRAVITY }
sub cxvenusmass() { VENUSMASS }
sub cxvenusvolume() { VENUSVOLUME }
sub cxvenusdensity() { VENUSDENSITY }
sub cxearthgm() { EARTHGM }
sub cxearthyear() { EARTHYEAR }
sub cxearthday() { EARTHDAY }
sub cxearthflatness() { EARTHFLATNESS }
sub cxearth_a() { EARTH_A }
sub cxearth_c() { EARTH_C }
sub cxearth_b() { EARTH_B }
sub cxearthradius() { EARTHRADIUS }
sub cxearthescape() { EARTHESCAPE }
sub cxearthoblateness() { EARTHOBLATENESS }
sub cxearthgravity() { EARTHGRAVITY }
sub cxearthmass() { EARTHMASS }
sub cxearthvolume() { EARTHVOLUME }
sub cxearthdensity() { EARTHDENSITY }
sub cxearthprecession() { EARTHPRECESSION }
sub cxearththeta_0() { EARTHTHETA_0 }
sub cxmarsgm() { MARSGM }
sub cxmarsyear() { MARSYEAR }
sub cxmarsday() { MARSDAY }
sub cxmarsflatness() { MARSFLATNESS }
sub cxmars_a() { MARS_A }
sub cxmars_c() { MARS_C }
sub cxmars_b() { MARS_B }
sub cxmarsradius() { MARSRADIUS }
sub cxmarsescape() { MARSESCAPE }
sub cxmarsoblateness() { MARSOBLATENESS }
sub cxmarsgravity() { MARSGRAVITY }
sub cxmarsmass() { MARSMASS }
sub cxmarsvolume() { MARSVOLUME }
sub cxmarsdensity() { MARSDENSITY }
sub cxjupitergm() { JUPITERGM }
sub cxjupiteryear() { JUPITERYEAR }
sub cxjupiterday() { JUPITERDAY }
sub cxjupiterflatness() { JUPITERFLATNESS }
sub cxjupiter_a() { JUPITER_A }
sub cxjupiter_c() { JUPITER_C }
sub cxjupiter_b() { JUPITER_B }
sub cxjupiterradius() { JUPITERRADIUS }
sub cxjupiterescape() { JUPITERESCAPE }
sub cxjupiteroblateness() { JUPITEROBLATENESS }
sub cxjupitergravity() { JUPITERGRAVITY }
sub cxjupitermass() { JUPITERMASS }
sub cxjupitervolume() { JUPITERVOLUME }
sub cxjupiterdensity() { JUPITERDENSITY }
sub cxsaturngm() { SATURNGM }
sub cxsaturnyear() { SATURNYEAR }
sub cxsaturnday() { SATURNDAY }
sub cxsaturnflatness() { SATURNFLATNESS }
sub cxsaturn_a() { SATURN_A }
sub cxsaturn_c() { SATURN_C }
sub cxsaturn_b() { SATURN_B }
sub cxsaturnradius() { SATURNRADIUS }
sub cxsaturnescape() { SATURNESCAPE }
sub cxsaturnoblateness() { SATURNOBLATENESS }
sub cxsaturngravity() { SATURNGRAVITY }
sub cxsaturnmass() { SATURNMASS }
sub cxsaturnvolume() { SATURNVOLUME }
sub cxsaturndensity() { SATURNDENSITY }
sub cxuranusgm() { URANUSGM }
sub cxuranusyear() { URANUSYEAR }
sub cxuranusday() { URANUSDAY }
sub cxuranusflatness() { URANUSFLATNESS }
sub cxuranus_a() { URANUS_A }
sub cxuranus_c() { URANUS_C }
sub cxuranus_b() { URANUS_B }
sub cxuranusradius() { URANUSRADIUS }
sub cxuranusescape() { URANUSESCAPE }
sub cxuranusoblateness() { URANUSOBLATENESS }
sub cxuranusgravity() { URANUSGRAVITY }
sub cxuranusmass() { URANUSMASS }
sub cxuranusvolume() { URANUSVOLUME }
sub cxuranusdensity() { URANUSDENSITY }
sub cxneptunegm() { NEPTUNEGM }
sub cxneptuneyear() { NEPTUNEYEAR }
sub cxneptuneday() { NEPTUNEDAY }
sub cxneptuneflatness() { NEPTUNEFLATNESS }
sub cxneptune_a() { NEPTUNE_A }
sub cxneptune_c() { NEPTUNE_C }
sub cxneptune_b() { NEPTUNE_B }
sub cxneptuneradius() { NEPTUNERADIUS }
sub cxneptuneescape() { NEPTUNEESCAPE }
sub cxneptuneoblateness() { NEPTUNEOBLATENESS }
sub cxneptunegravity() { NEPTUNEGRAVITY }
sub cxneptunemass() { NEPTUNEMASS }
sub cxneptunevolume() { NEPTUNEVOLUME }
sub cxneptunedensity() { NEPTUNEDENSITY }
sub cxplutogm() { PLUTOGM }
sub cxplutoyear() { PLUTOYEAR }
sub cxplutoday() { PLUTODAY }
sub cxplutoflatness() { PLUTOFLATNESS }
sub cxpluto_a() { PLUTO_A }
sub cxpluto_c() { PLUTO_C }
sub cxpluto_b() { PLUTO_B }
sub cxplutoradius() { PLUTORADIUS }
sub cxplutoescape() { PLUTOESCAPE }
sub cxplutooblateness() { PLUTOOBLATENESS }
sub cxplutogravity() { PLUTOGRAVITY }
sub cxplutomass() { PLUTOMASS }
sub cxplutovolume() { PLUTOVOLUME }
sub cxplutodensity() { PLUTODENSITY }
sub cxmoongm() { MOONGM }
sub cxmoonyear() { MOONYEAR }
sub cxmoonday() { MOONDAY }
sub cxmoonflatness() { MOONFLATNESS }
sub cxmoon_a() { MOON_A }
sub cxmoon_c() { MOON_C }
sub cxmoon_b() { MOON_B }
sub cxmoonradius() { MOONRADIUS }
sub cxmoonescape() { MOONESCAPE }
sub cxmoonoblateness() { MOONOBLATENESS }
sub cxmoongravity() { MOONGRAVITY }
sub cxmoonmass() { MOONMASS }
sub cxmoonvolume() { MOONVOLUME }
sub cxmoondensity() { MOONDENSITY }
sub cxmoonorbit() { MOONORBIT }
sub cxmooneccentricity() { MOONECCENTRICITY }
sub cxmooninclination() { MOONINCLINATION }
sub cxceresgm() { CERESGM }
sub cxceresyear() { CERESYEAR }
sub cxceresday() { CERESDAY }
sub cxceresflatness() { CERESFLATNESS }
sub cxceres_a() { CERES_A }
sub cxceres_c() { CERES_C }
sub cxceres_b() { CERES_B }
sub cxceresradius() { CERESRADIUS }
sub cxceresescape() { CERESESCAPE }
sub cxceresoblateness() { CERESOBLATENESS }
sub cxceresgravity() { CERESGRAVITY }
sub cxceresmass() { CERESMASS }
sub cxceresvolume() { CERESVOLUME }
sub cxceresdensity() { CERESDENSITY }
sub cxerisgm() { ERISGM }
sub cxerisyear() { ERISYEAR }
sub cxerisday() { ERISDAY }
sub cxerisflatness() { ERISFLATNESS }
sub cxeris_a() { ERIS_A }
sub cxeris_c() { ERIS_C }
sub cxeris_b() { ERIS_B }
sub cxerisradius() { ERISRADIUS }
sub cxerisescape() { ERISESCAPE }
sub cxerisoblateness() { ERISOBLATENESS }
sub cxerisgravity() { ERISGRAVITY }
sub cxerismass() { ERISMASS }
sub cxerisvolume() { ERISVOLUME }
sub cxerisdensity() { ERISDENSITY }
sub cxmakemakegm() { MAKEMAKEGM }
sub cxmakemakeyear() { MAKEMAKEYEAR }
sub cxmakemakeday() { MAKEMAKEDAY }
sub cxmakemakeflatness() { MAKEMAKEFLATNESS }
sub cxmakemake_a() { MAKEMAKE_A }
sub cxmakemake_c() { MAKEMAKE_C }
sub cxmakemake_b() { MAKEMAKE_B }
sub cxmakemakeradius() { MAKEMAKERADIUS }
sub cxmakemakeescape() { MAKEMAKEESCAPE }
sub cxmakemakeoblateness() { MAKEMAKEOBLATENESS }
sub cxmakemakegravity() { MAKEMAKEGRAVITY }
sub cxmakemakemass() { MAKEMAKEMASS }
sub cxmakemakevolume() { MAKEMAKEVOLUME }
sub cxmakemakedensity() { MAKEMAKEDENSITY }
sub cxhaumeagm() { HAUMEAGM }
sub cxhaumeayear() { HAUMEAYEAR }
sub cxhaumeaday() { HAUMEADAY }
sub cxhaumeaflatness() { HAUMEAFLATNESS }
sub cxhaumea_a() { HAUMEA_A }
sub cxhaumea_c() { HAUMEA_C }
sub cxhaumea_b() { HAUMEA_B }
sub cxhaumearadius() { HAUMEARADIUS }
sub cxhaumeaescape() { HAUMEAESCAPE }
sub cxhaumeaoblateness() { HAUMEAOBLATENESS }
sub cxhaumeagravity() { HAUMEAGRAVITY }
sub cxhaumeamass() { HAUMEAMASS }
sub cxhaumeavolume() { HAUMEAVOLUME }
sub cxhaumeadensity() { HAUMEADENSITY }
sub cxsunorbit() { SUNORBIT }
sub cxsuneccentricity() { SUNECCENTRICITY }
sub cxsuninclination() { SUNINCLINATION }
sub cxsunlongitude() { SUNLONGITUDE }
sub cxsunperiapsis() { SUNPERIAPSIS }
sub cxsunascending() { SUNASCENDING }
sub cxsunorbit_dt() { SUNORBIT_DT }
sub cxsuneccentricity_dt() { SUNECCENTRICITY_DT }
sub cxsuninclination_dt() { SUNINCLINATION_DT }
sub cxsunlongitude_dt() { SUNLONGITUDE_DT }
sub cxsunperiapsis_dt() { SUNPERIAPSIS_DT }
sub cxsunascending_dt() { SUNASCENDING_DT }
sub cxearthorbit() { EARTHORBIT }
sub cxeartheccentricity() { EARTHECCENTRICITY }
sub cxearthinclination() { EARTHINCLINATION }
sub cxearthlongitude() { EARTHLONGITUDE }
sub cxearthperiapsis() { EARTHPERIAPSIS }
sub cxearthascending() { EARTHASCENDING }
sub cxearthorbit_dt() { EARTHORBIT_DT }
sub cxeartheccentricity_dt() { EARTHECCENTRICITY_DT }
sub cxearthinclination_dt() { EARTHINCLINATION_DT }
sub cxearthlongitude_dt() { EARTHLONGITUDE_DT }
sub cxearthperiapsis_dt() { EARTHPERIAPSIS_DT }
sub cxearthascending_dt() { EARTHASCENDING_DT }
sub cxmercuryorbit() { MERCURYORBIT }
sub cxmercuryeccentricity() { MERCURYECCENTRICITY }
sub cxmercuryinclination() { MERCURYINCLINATION }
sub cxmercurylongitude() { MERCURYLONGITUDE }
sub cxmercuryperiapsis() { MERCURYPERIAPSIS }
sub cxmercuryascending() { MERCURYASCENDING }
sub cxmercuryorbit_dt() { MERCURYORBIT_DT }
sub cxmercuryeccentricity_dt() { MERCURYECCENTRICITY_DT }
sub cxmercuryinclination_dt() { MERCURYINCLINATION_DT }
sub cxmercurylongitude_dt() { MERCURYLONGITUDE_DT }
sub cxmercuryperiapsis_dt() { MERCURYPERIAPSIS_DT }
sub cxmercuryascending_dt() { MERCURYASCENDING_DT }
sub cxvenusorbit() { VENUSORBIT }
sub cxvenuseccentricity() { VENUSECCENTRICITY }
sub cxvenusinclination() { VENUSINCLINATION }
sub cxvenuslongitude() { VENUSLONGITUDE }
sub cxvenusperiapsis() { VENUSPERIAPSIS }
sub cxvenusascending() { VENUSASCENDING }
sub cxvenusorbit_dt() { VENUSORBIT_DT }
sub cxvenuseccentricity_dt() { VENUSECCENTRICITY_DT }
sub cxvenusinclination_dt() { VENUSINCLINATION_DT }
sub cxvenuslongitude_dt() { VENUSLONGITUDE_DT }
sub cxvenusperiapsis_dt() { VENUSPERIAPSIS_DT }
sub cxvenusascending_dt() { VENUSASCENDING_DT }
sub cxmarsorbit() { MARSORBIT }
sub cxmarseccentricity() { MARSECCENTRICITY }
sub cxmarsinclination() { MARSINCLINATION }
sub cxmarslongitude() { MARSLONGITUDE }
sub cxmarsperiapsis() { MARSPERIAPSIS }
sub cxmarsascending() { MARSASCENDING }
sub cxmarsorbit_dt() { MARSORBIT_DT }
sub cxmarseccentricity_dt() { MARSECCENTRICITY_DT }
sub cxmarsinclination_dt() { MARSINCLINATION_DT }
sub cxmarslongitude_dt() { MARSLONGITUDE_DT }
sub cxmarsperiapsis_dt() { MARSPERIAPSIS_DT }
sub cxmarsascending_dt() { MARSASCENDING_DT }
sub cxjupiterorbit() { JUPITERORBIT }
sub cxjupitereccentricity() { JUPITERECCENTRICITY }
sub cxjupiterinclination() { JUPITERINCLINATION }
sub cxjupiterlongitude() { JUPITERLONGITUDE }
sub cxjupiterperiapsis() { JUPITERPERIAPSIS }
sub cxjupiterascending() { JUPITERASCENDING }
sub cxjupiterorbit_dt() { JUPITERORBIT_DT }
sub cxjupitereccentricity_dt() { JUPITERECCENTRICITY_DT }
sub cxjupiterinclination_dt() { JUPITERINCLINATION_DT }
sub cxjupiterlongitude_dt() { JUPITERLONGITUDE_DT }
sub cxjupiterperiapsis_dt() { JUPITERPERIAPSIS_DT }
sub cxjupiterascending_dt() { JUPITERASCENDING_DT }
sub cxsaturnorbit() { SATURNORBIT }
sub cxsaturneccentricity() { SATURNECCENTRICITY }
sub cxsaturninclination() { SATURNINCLINATION }
sub cxsaturnlongitude() { SATURNLONGITUDE }
sub cxsaturnperiapsis() { SATURNPERIAPSIS }
sub cxsaturnascending() { SATURNASCENDING }
sub cxsaturnorbit_dt() { SATURNORBIT_DT }
sub cxsaturneccentricity_dt() { SATURNECCENTRICITY_DT }
sub cxsaturninclination_dt() { SATURNINCLINATION_DT }
sub cxsaturnlongitude_dt() { SATURNLONGITUDE_DT }
sub cxsaturnperiapsis_dt() { SATURNPERIAPSIS_DT }
sub cxsaturnascending_dt() { SATURNASCENDING_DT }
sub cxuranusorbit() { URANUSORBIT }
sub cxuranuseccentricity() { URANUSECCENTRICITY }
sub cxuranusinclination() { URANUSINCLINATION }
sub cxuranuslongitude() { URANUSLONGITUDE }
sub cxuranusperiapsis() { URANUSPERIAPSIS }
sub cxuranusascending() { URANUSASCENDING }
sub cxuranusorbit_dt() { URANUSORBIT_DT }
sub cxuranuseccentricity_dt() { URANUSECCENTRICITY_DT }
sub cxuranusinclination_dt() { URANUSINCLINATION_DT }
sub cxuranuslongitude_dt() { URANUSLONGITUDE_DT }
sub cxuranusperiapsis_dt() { URANUSPERIAPSIS_DT }
sub cxuranusascending_dt() { URANUSASCENDING_DT }
sub cxneptuneorbit() { NEPTUNEORBIT }
sub cxneptuneeccentricity() { NEPTUNEECCENTRICITY }
sub cxneptuneinclination() { NEPTUNEINCLINATION }
sub cxneptunelongitude() { NEPTUNELONGITUDE }
sub cxneptuneperiapsis() { NEPTUNEPERIAPSIS }
sub cxneptuneascending() { NEPTUNEASCENDING }
sub cxneptuneorbit_dt() { NEPTUNEORBIT_DT }
sub cxneptuneeccentricity_dt() { NEPTUNEECCENTRICITY_DT }
sub cxneptuneinclination_dt() { NEPTUNEINCLINATION_DT }
sub cxneptunelongitude_dt() { NEPTUNELONGITUDE_DT }
sub cxneptuneperiapsis_dt() { NEPTUNEPERIAPSIS_DT }
sub cxneptuneascending_dt() { NEPTUNEASCENDING_DT }
sub cxplutoorbit() { PLUTOORBIT }
sub cxplutoeccentricity() { PLUTOECCENTRICITY }
sub cxplutoinclination() { PLUTOINCLINATION }
sub cxplutolongitude() { PLUTOLONGITUDE }
sub cxplutoperiapsis() { PLUTOPERIAPSIS }
sub cxplutoascending() { PLUTOASCENDING }
sub cxplutoorbit_dt() { PLUTOORBIT_DT }
sub cxplutoeccentricity_dt() { PLUTOECCENTRICITY_DT }
sub cxplutoinclination_dt() { PLUTOINCLINATION_DT }
sub cxplutolongitude_dt() { PLUTOLONGITUDE_DT }
sub cxplutoperiapsis_dt() { PLUTOPERIAPSIS_DT }
sub cxplutoascending_dt() { PLUTOASCENDING_DT }
sub cxceresorbit() { CERESORBIT }
sub cxcereseccentricity() { CERESECCENTRICITY }
sub cxceresinclination() { CERESINCLINATION }
sub cxcereslongitude() { CERESLONGITUDE }
sub cxceresperiapsis() { CERESPERIAPSIS }
sub cxceresascending() { CERESASCENDING }
sub cxceresorbit_dt() { CERESORBIT_DT }
sub cxcereseccentricity_dt() { CERESECCENTRICITY_DT }
sub cxceresinclination_dt() { CERESINCLINATION_DT }
sub cxcereslongitude_dt() { CERESLONGITUDE_DT }
sub cxceresperiapsis_dt() { CERESPERIAPSIS_DT }
sub cxceresascending_dt() { CERESASCENDING_DT }
sub cxerisorbit() { ERISORBIT }
sub cxeriseccentricity() { ERISECCENTRICITY }
sub cxerisinclination() { ERISINCLINATION }
sub cxerislongitude() { ERISLONGITUDE }
sub cxerisperiapsis() { ERISPERIAPSIS }
sub cxerisascending() { ERISASCENDING }
sub cxerisorbit_dt() { ERISORBIT_DT }
sub cxeriseccentricity_dt() { ERISECCENTRICITY_DT }
sub cxerisinclination_dt() { ERISINCLINATION_DT }
sub cxerislongitude_dt() { ERISLONGITUDE_DT }
sub cxerisperiapsis_dt() { ERISPERIAPSIS_DT }
sub cxerisascending_dt() { ERISASCENDING_DT }
sub cxmakemakeorbit() { MAKEMAKEORBIT }
sub cxmakemakeeccentricity() { MAKEMAKEECCENTRICITY }
sub cxmakemakeinclination() { MAKEMAKEINCLINATION }
sub cxmakemakelongitude() { MAKEMAKELONGITUDE }
sub cxmakemakeperiapsis() { MAKEMAKEPERIAPSIS }
sub cxmakemakeascending() { MAKEMAKEASCENDING }
sub cxmakemakeorbit_dt() { MAKEMAKEORBIT_DT }
sub cxmakemakeeccentricity_dt() { MAKEMAKEECCENTRICITY_DT }
sub cxmakemakeinclination_dt() { MAKEMAKEINCLINATION_DT }
sub cxmakemakelongitude_dt() { MAKEMAKELONGITUDE_DT }
sub cxmakemakeperiapsis_dt() { MAKEMAKEPERIAPSIS_DT }
sub cxmakemakeascending_dt() { MAKEMAKEASCENDING_DT }
sub cxhaumeaorbit() { HAUMEAORBIT }
sub cxhaumeaeccentricity() { HAUMEAECCENTRICITY }
sub cxhaumeainclination() { HAUMEAINCLINATION }
sub cxhaumealongitude() { HAUMEALONGITUDE }
sub cxhaumeaperiapsis() { HAUMEAPERIAPSIS }
sub cxhaumeaascending() { HAUMEAASCENDING }
sub cxhaumeaorbit_dt() { HAUMEAORBIT_DT }
sub cxhaumeaeccentricity_dt() { HAUMEAECCENTRICITY_DT }
sub cxhaumeainclination_dt() { HAUMEAINCLINATION_DT }
sub cxhaumealongitude_dt() { HAUMEALONGITUDE_DT }
sub cxhaumeaperiapsis_dt() { HAUMEAPERIAPSIS_DT }
sub cxhaumeaascending_dt() { HAUMEAASCENDING_DT }
sub margot($$ ) {
   my ($pmass, $porbit) = @_;
   my $retvalu;
   if ($pmass <= 0.0 or $porbit <= 0.0) {
      $retvalu = 0.0;
   } else {
      $retvalu = 5.0401742E-10 * $pmass / exp(log($porbit) *
            1.125);
   }
   return ($retvalu);
}
sub sternlevison($$ ) {
   my ($pmass, $porbit) = @_;
   my $retvalu;
   my $xx;
   if ($pmass <= 0.0 or $porbit <= 0.0) {
      $retvalu = 0.0;
   } else {
      $xx = 2.0 * log($pmass) - 1.5 * log($porbit);
      $retvalu = 2.482E-28 * exp($xx);
   }
   return ($retvalu);
}
{
sub LC_P1_PREV_PL() { - 1; }
   sub LC_P1_SUN() { 0; }
   sub LC_P1_MERCURY() { 1; }
   sub LC_P1_VENUS() { 2; }
   sub LC_P1_EARTH() { 3; }
   sub LC_P1_MARS() { 4; }
   sub LC_P1_JUPITER() { 5; }
   sub LC_P1_SATURN() { 6; }
   sub LC_P1_URANUS() { 7; }
   sub LC_P1_NEPTUNE() { 8; }
   sub LC_P1_PLUTO() { 9; }
   sub LC_P1_CERES() { 10; }
   sub LC_P1_ERIS() { 11; }
   sub LC_P1_MAKEMAKE() { 12; }
   sub LC_P1_HAUMEA() { 13; }
   sub LC_P1_COUNT() { LC_P1_HAUMEA + 1; }
   sub LC_P1_ERR() { - 1; }
   sub LC_P2_GM() { 0; }
   sub LC_P2_YEAR() { 1; }
   sub LC_P2_DAY() { 2; }
   sub LC_P2_FLATNESS() { 3; }
   sub LC_P2_A() { 4; }
   sub LC_P2_C() { 5; }
   sub LC_P2_ORB() { 6; }
   sub LC_P2_ECC() { 7; }
   sub LC_P2_INC() { 8; }
   sub LC_P2_LON() { 9; }
   sub LC_P2_PER() { 10; }
   sub LC_P2_ASC() { 11; }
   sub LC_P2_ORB_DT() { 12; }
   sub LC_P2_ECC_DT() { 13; }
   sub LC_P2_INC_DT() { 14; }
   sub LC_P2_LON_DT() { 15; }
   sub LC_P2_PER_DT() { 16; }
   sub LC_P2_ASC_DT() { 17; }
   sub LC_P2_COUNT() { 18; }
   my $lv_pl_ind = LC_P1_PREV_PL;
   my @lv_pl_arr;
   my $lv_pl_earth_year = EARTHYEAR;
   my @lv_pl_helio_arr;
   my @lv_pl_geo_arr;
   my $lv_pl_jtwoktime = 1.0 / 64.0;
   sub lf_pl_init($ ) {
      my ($plnt) = @_;
      # local-use Perl $lv_pl_ind;
      # local-use Perl @lv_pl_arr;
      if ($lv_pl_ind < 0) {
         $lv_pl_arr[LC_P1_SUN][LC_P2_GM] = SUNGM;
         $lv_pl_arr[LC_P1_SUN][LC_P2_YEAR] = SUNYEAR;
         $lv_pl_arr[LC_P1_SUN][LC_P2_DAY] = SUNDAY;
         $lv_pl_arr[LC_P1_SUN][LC_P2_FLATNESS] = SUNFLATNESS;
         $lv_pl_arr[LC_P1_SUN][LC_P2_A] = SUN_A;
         $lv_pl_arr[LC_P1_SUN][LC_P2_C] = SUN_C;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ORB] = SUNORBIT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ECC] = SUNECCENTRICITY;
         $lv_pl_arr[LC_P1_SUN][LC_P2_INC] = SUNINCLINATION;
         $lv_pl_arr[LC_P1_SUN][LC_P2_LON] = SUNLONGITUDE;
         $lv_pl_arr[LC_P1_SUN][LC_P2_PER] = SUNPERIAPSIS;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ASC] = SUNASCENDING;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ORB_DT] = SUNORBIT_DT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ECC_DT] =
               SUNECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_INC_DT] = SUNINCLINATION_DT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_LON_DT] = SUNLONGITUDE_DT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_PER_DT] = SUNPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_SUN][LC_P2_ASC_DT] = SUNASCENDING_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_GM] = MERCURYGM;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_YEAR] = MERCURYYEAR;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_DAY] = MERCURYDAY;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_FLATNESS] =
               MERCURYFLATNESS;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_A] = MERCURY_A;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_C] = MERCURY_C;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ORB] = MERCURYORBIT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ECC] =
               MERCURYECCENTRICITY;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_INC] =
               MERCURYINCLINATION;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_LON] = MERCURYLONGITUDE;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_PER] = MERCURYPERIAPSIS;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ASC] = MERCURYASCENDING;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ORB_DT] =
               MERCURYORBIT_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ECC_DT] =
               MERCURYECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_INC_DT] =
               MERCURYINCLINATION_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_LON_DT] =
               MERCURYLONGITUDE_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_PER_DT] =
               MERCURYPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_MERCURY][LC_P2_ASC_DT] =
               MERCURYASCENDING_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_GM] = VENUSGM;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_YEAR] = VENUSYEAR;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_DAY] = VENUSDAY;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_FLATNESS] = VENUSFLATNESS;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_A] = VENUS_A;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_C] = VENUS_C;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ORB] = VENUSORBIT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ECC] = VENUSECCENTRICITY;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_INC] = VENUSINCLINATION;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_LON] = VENUSLONGITUDE;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_PER] = VENUSPERIAPSIS;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ASC] = VENUSASCENDING;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ORB_DT] = VENUSORBIT_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ECC_DT] =
               VENUSECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_INC_DT] =
               VENUSINCLINATION_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_LON_DT] =
               VENUSLONGITUDE_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_PER_DT] =
               VENUSPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_VENUS][LC_P2_ASC_DT] =
               VENUSASCENDING_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_GM] = EARTHGM;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_YEAR] = EARTHYEAR;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_DAY] = EARTHDAY;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_FLATNESS] = EARTHFLATNESS;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_A] = EARTH_A;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_C] = EARTH_C;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ORB] = EARTHORBIT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ECC] = EARTHECCENTRICITY;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_INC] = EARTHINCLINATION;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_LON] = EARTHLONGITUDE;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_PER] = EARTHPERIAPSIS;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ASC] = EARTHASCENDING;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ORB_DT] = EARTHORBIT_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ECC_DT] =
               EARTHECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_INC_DT] =
               EARTHINCLINATION_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_LON_DT] =
               EARTHLONGITUDE_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_PER_DT] =
               EARTHPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_EARTH][LC_P2_ASC_DT] =
               EARTHASCENDING_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_GM] = MARSGM;
         $lv_pl_arr[LC_P1_MARS][LC_P2_YEAR] = MARSYEAR;
         $lv_pl_arr[LC_P1_MARS][LC_P2_DAY] = MARSDAY;
         $lv_pl_arr[LC_P1_MARS][LC_P2_FLATNESS] = MARSFLATNESS;
         $lv_pl_arr[LC_P1_MARS][LC_P2_A] = MARS_A;
         $lv_pl_arr[LC_P1_MARS][LC_P2_C] = MARS_C;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ORB] = MARSORBIT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ECC] = MARSECCENTRICITY;
         $lv_pl_arr[LC_P1_MARS][LC_P2_INC] = MARSINCLINATION;
         $lv_pl_arr[LC_P1_MARS][LC_P2_LON] = MARSLONGITUDE;
         $lv_pl_arr[LC_P1_MARS][LC_P2_PER] = MARSPERIAPSIS;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ASC] = MARSASCENDING;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ORB_DT] = MARSORBIT_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ECC_DT] =
               MARSECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_INC_DT] =
               MARSINCLINATION_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_LON_DT] = MARSLONGITUDE_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_PER_DT] = MARSPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_MARS][LC_P2_ASC_DT] = MARSASCENDING_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_GM] = JUPITERGM;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_YEAR] = JUPITERYEAR;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_DAY] = JUPITERDAY;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_FLATNESS] =
               JUPITERFLATNESS;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_A] = JUPITER_A;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_C] = JUPITER_C;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ORB] = JUPITERORBIT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ECC] =
               JUPITERECCENTRICITY;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_INC] =
               JUPITERINCLINATION;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_LON] = JUPITERLONGITUDE;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_PER] = JUPITERPERIAPSIS;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ASC] = JUPITERASCENDING;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ORB_DT] =
               JUPITERORBIT_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ECC_DT] =
               JUPITERECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_INC_DT] =
               JUPITERINCLINATION_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_LON_DT] =
               JUPITERLONGITUDE_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_PER_DT] =
               JUPITERPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_JUPITER][LC_P2_ASC_DT] =
               JUPITERASCENDING_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_GM] = SATURNGM;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_YEAR] = SATURNYEAR;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_DAY] = SATURNDAY;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_FLATNESS] =
               SATURNFLATNESS;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_A] = SATURN_A;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_C] = SATURN_C;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ORB] = SATURNORBIT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ECC] =
               SATURNECCENTRICITY;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_INC] = SATURNINCLINATION;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_LON] = SATURNLONGITUDE;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_PER] = SATURNPERIAPSIS;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ASC] = SATURNASCENDING;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ORB_DT] = SATURNORBIT_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ECC_DT] =
               SATURNECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_INC_DT] =
               SATURNINCLINATION_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_LON_DT] =
               SATURNLONGITUDE_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_PER_DT] =
               SATURNPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_SATURN][LC_P2_ASC_DT] =
               SATURNASCENDING_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_GM] = URANUSGM;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_YEAR] = URANUSYEAR;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_DAY] = URANUSDAY;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_FLATNESS] =
               URANUSFLATNESS;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_A] = URANUS_A;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_C] = URANUS_C;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ORB] = URANUSORBIT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ECC] =
               URANUSECCENTRICITY;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_INC] = URANUSINCLINATION;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_LON] = URANUSLONGITUDE;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_PER] = URANUSPERIAPSIS;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ASC] = URANUSASCENDING;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ORB_DT] = URANUSORBIT_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ECC_DT] =
               URANUSECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_INC_DT] =
               URANUSINCLINATION_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_LON_DT] =
               URANUSLONGITUDE_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_PER_DT] =
               URANUSPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_URANUS][LC_P2_ASC_DT] =
               URANUSASCENDING_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_GM] = NEPTUNEGM;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_YEAR] = NEPTUNEYEAR;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_DAY] = NEPTUNEDAY;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_FLATNESS] =
               NEPTUNEFLATNESS;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_A] = NEPTUNE_A;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_C] = NEPTUNE_C;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ORB] = NEPTUNEORBIT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ECC] =
               NEPTUNEECCENTRICITY;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_INC] =
               NEPTUNEINCLINATION;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_LON] = NEPTUNELONGITUDE;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_PER] = NEPTUNEPERIAPSIS;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ASC] = NEPTUNEASCENDING;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ORB_DT] =
               NEPTUNEORBIT_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ECC_DT] =
               NEPTUNEECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_INC_DT] =
               NEPTUNEINCLINATION_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_LON_DT] =
               NEPTUNELONGITUDE_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_PER_DT] =
               NEPTUNEPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ASC_DT] =
               NEPTUNEASCENDING_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_GM] = PLUTOGM;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_YEAR] = PLUTOYEAR;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_DAY] = PLUTODAY;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_FLATNESS] = PLUTOFLATNESS;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_A] = PLUTO_A;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_C] = PLUTO_C;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ORB] = PLUTOORBIT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ECC] = PLUTOECCENTRICITY;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_INC] = PLUTOINCLINATION;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_LON] = PLUTOLONGITUDE;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_PER] = PLUTOPERIAPSIS;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ASC] = PLUTOASCENDING;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ORB_DT] = PLUTOORBIT_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ECC_DT] =
               PLUTOECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_INC_DT] =
               PLUTOINCLINATION_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_LON_DT] =
               PLUTOLONGITUDE_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_PER_DT] =
               PLUTOPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_PLUTO][LC_P2_ASC_DT] =
               PLUTOASCENDING_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_GM] = CERESGM;
         $lv_pl_arr[LC_P1_CERES][LC_P2_YEAR] = CERESYEAR;
         $lv_pl_arr[LC_P1_CERES][LC_P2_DAY] = CERESDAY;
         $lv_pl_arr[LC_P1_CERES][LC_P2_FLATNESS] = CERESFLATNESS;
         $lv_pl_arr[LC_P1_CERES][LC_P2_A] = CERES_A;
         $lv_pl_arr[LC_P1_CERES][LC_P2_C] = CERES_C;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ORB] = CERESORBIT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ECC] = CERESECCENTRICITY;
         $lv_pl_arr[LC_P1_CERES][LC_P2_INC] = CERESINCLINATION;
         $lv_pl_arr[LC_P1_CERES][LC_P2_LON] = CERESLONGITUDE;
         $lv_pl_arr[LC_P1_CERES][LC_P2_PER] = CERESPERIAPSIS;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ASC] = CERESASCENDING;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ORB_DT] = CERESORBIT_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ECC_DT] =
               CERESECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_INC_DT] =
               CERESINCLINATION_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_LON_DT] =
               CERESLONGITUDE_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_PER_DT] =
               CERESPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_CERES][LC_P2_ASC_DT] =
               CERESASCENDING_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_GM] = ERISGM;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_YEAR] = ERISYEAR;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_DAY] = ERISDAY;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_FLATNESS] = ERISFLATNESS;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_A] = ERIS_A;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_C] = ERIS_C;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ORB] = ERISORBIT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ECC] = ERISECCENTRICITY;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_INC] = ERISINCLINATION;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_LON] = ERISLONGITUDE;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_PER] = ERISPERIAPSIS;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ASC] = ERISASCENDING;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ORB_DT] = ERISORBIT_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ECC_DT] =
               ERISECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_INC_DT] =
               ERISINCLINATION_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_LON_DT] = ERISLONGITUDE_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_PER_DT] = ERISPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_ERIS][LC_P2_ASC_DT] = ERISASCENDING_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_GM] = MAKEMAKEGM;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_YEAR] = MAKEMAKEYEAR;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_DAY] = MAKEMAKEDAY;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_FLATNESS] =
               MAKEMAKEFLATNESS;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_A] = MAKEMAKE_A;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_C] = MAKEMAKE_C;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ORB] = MAKEMAKEORBIT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ECC] =
               MAKEMAKEECCENTRICITY;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_INC] =
               MAKEMAKEINCLINATION;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_LON] =
               MAKEMAKELONGITUDE;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_PER] =
               MAKEMAKEPERIAPSIS;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ASC] =
               MAKEMAKEASCENDING;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ORB_DT] =
               MAKEMAKEORBIT_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ECC_DT] =
               MAKEMAKEECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_INC_DT] =
               MAKEMAKEINCLINATION_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_LON_DT] =
               MAKEMAKELONGITUDE_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_PER_DT] =
               MAKEMAKEPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ASC_DT] =
               MAKEMAKEASCENDING_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_GM] = HAUMEAGM;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_YEAR] = HAUMEAYEAR;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_DAY] = HAUMEADAY;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_FLATNESS] =
               HAUMEAFLATNESS;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_A] = HAUMEA_A;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_C] = HAUMEA_C;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ORB] = HAUMEAORBIT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ECC] =
               HAUMEAECCENTRICITY;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_INC] = HAUMEAINCLINATION;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_LON] = HAUMEALONGITUDE;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_PER] = HAUMEAPERIAPSIS;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ASC] = HAUMEAASCENDING;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ORB_DT] = HAUMEAORBIT_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ECC_DT] =
               HAUMEAECCENTRICITY_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_INC_DT] =
               HAUMEAINCLINATION_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_LON_DT] =
               HAUMEALONGITUDE_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_PER_DT] =
               HAUMEAPERIAPSIS_DT;
         $lv_pl_arr[LC_P1_HAUMEA][LC_P2_ASC_DT] =
               HAUMEAASCENDING_DT;
         if (0 < $lv_pl_jtwoktime and $lv_pl_jtwoktime < 1.0
               / 32.0) {
            plsettime(Kw::uet2j2k(Kw::timee()));
         }
         $lv_pl_earth_year = EARTHYEAR;
      }
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $lv_pl_ind = $plnt;
      } elsif ($plnt == LC_P1_PREV_PL) {
         if ($lv_pl_ind < 0) {
            $lv_pl_ind = LC_P1_EARTH;
         }
      } else {
         $lv_pl_ind = LC_P1_PREV_PL;
      }
      return ($lv_pl_ind);
   }
   sub lf_val($$$ ) {
      my ($pa_ind, $pb_bb, $pb_bbd) = @_;
      my $pl_ind;
      my $retvalu;
      if ($pa_ind < LC_P1_PREV_PL or LC_P1_COUNT <= $pa_ind) {
         $retvalu = LC_P1_ERR;
      } else {
         $pl_ind = pl($pa_ind);
         $retvalu = ($lv_pl_arr[$pl_ind][$pb_bb] +
               $lv_pl_jtwoktime * $lv_pl_arr[$pl_ind][$pb_bbd]);
      }
      return ($retvalu);
   }
   sub pl($ ) {
      my ($plnt) = @_;
      return (lf_pl_init($plnt));
   }
   sub plsettime($ ) {
      my ($jtwokdate) = @_;
      $lv_pl_jtwoktime = $jtwokdate * Kw::JD;
      return ($lv_pl_jtwoktime);
   }
   sub pl_gm($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_GM];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_GM];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub plgm() {
      # local-use Perl $lv_pl_ind;
      return (pl_gm(LC_P1_PREV_PL));
   }
   sub pl_year($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_YEAR];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_YEAR];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub plyear() {
      # local-use Perl $lv_pl_ind;
      return (pl_year(LC_P1_PREV_PL));
   }
   sub pl_day($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_DAY];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_DAY];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub plday() {
      # local-use Perl $lv_pl_ind;
      return (pl_day(LC_P1_PREV_PL));
   }
   sub pl_flatness($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_FLATNESS];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_FLATNESS];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub plflatness() {
      # local-use Perl $lv_pl_ind;
      return (pl_flatness(LC_P1_PREV_PL));
   }
   sub pl_a($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_A];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_A];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub pla() {
      # local-use Perl $lv_pl_ind;
      return (pl_a(LC_P1_PREV_PL));
   }
   sub pl_c($ ) {
      my ($plnt) = @_;
      # local-use Perl @lv_pl_arr;
      # local-use Perl $lv_pl_ind;
      my $retvalu;
      lf_pl_init($plnt);
      if (LC_P1_SUN <= $plnt and $plnt < LC_P1_COUNT) {
         $retvalu = $lv_pl_arr[$plnt][LC_P2_C];
      } elsif ($plnt == LC_P1_PREV_PL) {
         $retvalu = $lv_pl_arr[$lv_pl_ind][LC_P2_C];
      } else {
         $retvalu = LC_P1_ERR;
      }
      return ($retvalu);
   }
   sub plc() {
      # local-use Perl $lv_pl_ind;
      return (pl_c(LC_P1_PREV_PL));
   }
   sub pl_orbit($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_ORB, LC_P2_ORB_DT));
   }
   sub plorbit() {
      # local-use Perl $lv_pl_ind;
      return (pl_orbit(LC_P1_PREV_PL));
   }
   sub pl_eccentricity($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_ECC, LC_P2_ECC_DT));
   }
   sub pleccentricity() {
      # local-use Perl $lv_pl_ind;
      return (pl_eccentricity(LC_P1_PREV_PL));
   }
   sub pl_inclination($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_INC, LC_P2_INC_DT));
   }
   sub plinclination() {
      # local-use Perl $lv_pl_ind;
      return (pl_inclination(LC_P1_PREV_PL));
   }
   sub pl_longitude($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_LON, LC_P2_LON_DT));
   }
   sub pllongitude() {
      # local-use Perl $lv_pl_ind;
      return (pl_longitude(LC_P1_PREV_PL));
   }
   sub pl_periapsis($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_PER, LC_P2_PER_DT));
   }
   sub plperiapsis() {
      # local-use Perl $lv_pl_ind;
      return (pl_periapsis(LC_P1_PREV_PL));
   }
   sub pl_ascending($ ) {
      my ($plnt) = @_;
      return (lf_val($plnt, LC_P2_ASC, LC_P2_ASC_DT));
   }
   sub plascending() {
      # local-use Perl $lv_pl_ind;
      return (pl_ascending(LC_P1_PREV_PL));
   }
   sub pl_mass($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_gm($plnt) / Kw::GRAVITATION;
      }
      return ($retvalu);
   }
   sub plmass() {
      # local-use Perl $lv_pl_ind;
      return (pl_mass(LC_P1_PREV_PL));
   }
   sub pl_b($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = (1.0 - pl_flatness($plnt)) * pl_a($plnt);
      }
      return ($retvalu);
   }
   sub plb() {
      # local-use Perl $lv_pl_ind;
      return (pl_b(LC_P1_PREV_PL));
   }
   sub pl_radius($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = (pl_a($plnt) + pl_b($plnt) + pl_c($plnt))
               / 3.0;
      }
      return ($retvalu);
   }
   sub plradius() {
      # local-use Perl $lv_pl_ind;
      return (pl_radius(LC_P1_PREV_PL));
   }
   sub pl_gravity($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_gm($plnt) / Kw::square(pl_radius($plnt));
      }
      return ($retvalu);
   }
   sub plgravity() {
      # local-use Perl $lv_pl_ind;
      return (pl_gravity(LC_P1_PREV_PL));
   }
   sub pl_meananomaly($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = Kw::fmodu(pl_longitude($plnt) -
               pl_periapsis($plnt), Kw::TAU);
      }
      return ($retvalu);
   }
   sub plmeananomaly() {
      # local-use Perl $lv_pl_ind;
      return (pl_meananomaly(LC_P1_PREV_PL));
   }
   sub pl_escape($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = sqrt(2.0 * pl_gm($plnt) / pl_radius($plnt));
      }
      return ($retvalu);
   }
   sub plescape() {
      # local-use Perl $lv_pl_ind;
      return (pl_escape(LC_P1_PREV_PL));
   }
   sub pl_synodic($ ) {
      my ($plnt) = @_;
      # local-use Perl $lv_pl_earth_year;
      my $yra;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $yra = pl_year($plnt);
         $retvalu = Kw::divi($yra * $lv_pl_earth_year,
               abs($yra - $lv_pl_earth_year), 0.0);
      }
      return ($retvalu);
   }
   sub plsynodic() {
      # local-use Perl $lv_pl_ind;
      return (pl_synodic(LC_P1_PREV_PL));
   }
   sub pl_volume($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = 2.0 * Kw::TAU * pl_a($plnt) * pl_b($plnt)
               * pl_c($plnt) / 3.0;
      }
      return ($retvalu);
   }
   sub plvolume() {
      # local-use Perl $lv_pl_ind;
      return (pl_volume(LC_P1_PREV_PL));
   }
   sub pl_density($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_mass($plnt) / pl_volume($plnt);
      }
      return ($retvalu);
   }
   sub pldensity() {
      # local-use Perl $lv_pl_ind;
      return (pl_density(LC_P1_PREV_PL));
   }
   sub pl_argument($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_periapsis($plnt) - pl_ascending($plnt);
      }
      return ($retvalu);
   }
   sub plargument() {
      # local-use Perl $lv_pl_ind;
      return (pl_argument(LC_P1_PREV_PL));
   }
   sub pl_margot($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = margot(pl_mass($plnt), pl_orbit($plnt));
      }
      return ($retvalu);
   }
   sub plmargot() {
      # local-use Perl $lv_pl_ind;
      return (pl_margot(LC_P1_PREV_PL));
   }
   sub pl_sternlevison($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = sternlevison(pl_mass($plnt),
               pl_orbit($plnt));
      }
      return ($retvalu);
   }
   sub plsternlevison() {
      # local-use Perl $lv_pl_ind;
      return (pl_sternlevison(LC_P1_PREV_PL));
   }
   sub pl_perihelion($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_orbit($plnt) * (1.0 -
               pl_eccentricity($plnt));
      }
      return ($retvalu);
   }
   sub plperihelion() {
      # local-use Perl $lv_pl_ind;
      return (pl_perihelion(LC_P1_PREV_PL));
   }
   sub pl_aphelion($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = pl_orbit($plnt) * (1.0 +
               pl_eccentricity($plnt));
      }
      return ($retvalu);
   }
   sub plaphelion() {
      # local-use Perl $lv_pl_ind;
      return (pl_aphelion(LC_P1_PREV_PL));
   }
   sub eccentric_anomaly($$ ) {
      my ($mean_ano_rad, $eccen) = @_;
      my $mrad;
      my $xrad;
      my $nrvx_ii;
      my $nrvx_yy;
      my $nrvx_xx;
      my $nrvx_dy;
      my $nrvx_xp;
      $mrad = Kw::fmodu($mean_ano_rad, Kw::tur2rad(1.0));
      $xrad = $mrad + $eccen * sin($mrad);
      $nrvx_xx = $xrad;
      for ($nrvx_ii = 0; $nrvx_ii <= 20; $nrvx_ii += 1) {
         $nrvx_xp = $nrvx_xx;
         $nrvx_dy = 1.0 - $eccen * cos($nrvx_xx);
         if (Kw::iszero($nrvx_dy)) {
            last;
         }
         $nrvx_yy = $nrvx_xx - $eccen * sin($nrvx_xx) -
               $mean_ano_rad;
         $nrvx_xx -= $nrvx_yy / $nrvx_dy;
         if (Kw::iseq($nrvx_xp, $nrvx_xx)) {
            last;
         }
      }
      return ($nrvx_xx);
   }
   sub pl_eccentricanomaly($ ) {
      my ($plnt) = @_;
      my $retvalu;
      if ($plnt < LC_P1_PREV_PL or LC_P1_COUNT <= $plnt) {
         $retvalu = LC_P1_ERR;
      } else {
         $retvalu = eccentric_anomaly(pl_meananomaly($plnt),
               pl_eccentricity($plnt));
      }
      return ($retvalu);
   }
   sub pleccentricanomaly() {
      # local-use Perl $lv_pl_ind;
      return (pl_eccentricanomaly(LC_P1_PREV_PL));
   }
   sub pl_heliocentric($$ ) {
      my ($plnt, $jtwok) = @_;
      # local-use Perl @lv_pl_helio_arr;
      # local-use Perl @lv_pl_geo_arr;
      my $orb_m;
      my $eccen;
      my $inc_rad;
      my $lon_rad;
      my $per_rad;
      my $asc_rad;
      my $arg_rad;
      my $mean_anomaly_rad;
      my $eano_rad;
      my $dxx_m;
      my $dyy_m;
      my $ci;
      my $co;
      my $cw;
      my $si;
      my $so;
      my $sw;
      my $swci;
      my $cwci;
      my $obl_rad;
      my $retvalu;
      if (lf_pl_init($plnt) < 0) {
         $retvalu = LC_P1_ERR;
      } else {
         plsettime($jtwok);
         $orb_m = plorbit();
         $eccen = pleccentricity();
         $inc_rad = plinclination();
         $lon_rad = pllongitude();
         $per_rad = plperiapsis();
         $asc_rad = plascending();
         $arg_rad = $per_rad - $asc_rad;
         $mean_anomaly_rad = Kw::fmod($lon_rad - $per_rad,
               Kw::tur2rad(1.0));
         $eano_rad = eccentric_anomaly($mean_anomaly_rad,
               $eccen);
         $dxx_m = $orb_m * (cos($eano_rad) - $eccen);
         $dyy_m = $orb_m * Kw::topyh1($eccen) * sin($eano_rad);
         $cw = cos($arg_rad);
         $sw = sin($arg_rad);
         $co = cos($asc_rad);
         $so = sin($asc_rad);
         $ci = cos($inc_rad);
         $si = sin($inc_rad);
         $swci = $sw * $ci;
         $cwci = $cw * $ci;
         $lv_pl_helio_arr[0] = ($dxx_m * ($cw * $co - $swci *
               $so) - $dyy_m * ($sw * $co + $cwci * $so));
         $lv_pl_helio_arr[1] = ($dxx_m * ($cw * $so + $swci *
               $co) - $dyy_m * ($sw * $so - $cwci * $co));
         $lv_pl_helio_arr[2] = ($dxx_m * ($sw * $si) + $dyy_m
               * ($cw * $si));
         $obl_rad = earth_obliquity($jtwok);
         $co = cos($obl_rad);
         $so = sin($obl_rad);
         $lv_pl_geo_arr[0] = $lv_pl_helio_arr[0];
         $lv_pl_geo_arr[1] = $co * $lv_pl_helio_arr[1] - $so
               * $lv_pl_helio_arr[2];
         $lv_pl_geo_arr[2] = $so * $lv_pl_helio_arr[1] + $co
               * $lv_pl_helio_arr[2];
         $retvalu = Kw::hypot3($lv_pl_helio_arr[0],
               $lv_pl_helio_arr[1], $lv_pl_helio_arr[2]);
      }
      return ($retvalu);
   }
   sub plhelio($ ) {
      my ($indd) = @_;
      # local-use Perl @lv_pl_helio_arr;
      my $ret_val;
      if (0 <= $indd and $indd < 3) {
         $ret_val = $lv_pl_helio_arr[$indd];
      } else {
         $ret_val = 0;
      }
      return ($ret_val);
   }
   sub plgeo($ ) {
      my ($indd) = @_;
      # local-use Perl @lv_pl_geo_arr;
      my $ret_val;
      if (0 <= $indd and $indd < 3) {
         $ret_val = $lv_pl_geo_arr[$indd];
      } else {
         $ret_val = 0;
      }
      return ($ret_val);
   }
   sub pl_name($ ) {
      my ($plnt) = @_;
      my $plnt_ind;
      $plnt_ind = lf_pl_init($plnt);
      if ($plnt_ind == LC_P1_SUN) {
         print("SUN      ");
      } elsif ($plnt_ind == LC_P1_MERCURY) {
         print("MERCURY  ");
      } elsif ($plnt_ind == LC_P1_VENUS) {
         print("VENUS    ");
      } elsif ($plnt_ind == LC_P1_EARTH) {
         print("EARTH    ");
      } elsif ($plnt_ind == LC_P1_MARS) {
         print("MARS     ");
      } elsif ($plnt_ind == LC_P1_JUPITER) {
         print("JUPITER  ");
      } elsif ($plnt_ind == LC_P1_SATURN) {
         print("SATURN   ");
      } elsif ($plnt_ind == LC_P1_URANUS) {
         print("URANUS   ");
      } elsif ($plnt_ind == LC_P1_NEPTUNE) {
         print("NEPTUNE  ");
      } elsif ($plnt_ind == LC_P1_PLUTO) {
         print("PLUTO    ");
      } elsif ($plnt_ind == LC_P1_CERES) {
         print("CERES    ");
      } elsif ($plnt_ind == LC_P1_ERIS) {
         print("ERIS     ");
      } elsif ($plnt_ind == LC_P1_MAKEMAKE) {
         print("MAKEMAKE ");
      } elsif ($plnt_ind == LC_P1_HAUMEA) {
         print("HAUMEA   ");
      } else {
         print("UNKNOWN");
         print($plnt_ind);
      }
      return ($plnt_ind);
   }
   sub plname() {
      # local-use Perl $lv_pl_ind;
      return (pl_name(LC_P1_PREV_PL));
   }
   sub earth_radius($ ) {
      my ($lat_deg) = @_;
      return (pl_aradius(LC_P1_EARTH, $lat_deg));
   }
}
sub earth_tropicalyear($ ) {
   my ($jtwokdate) = @_;
   my $jy;
   $jy = $jtwokdate * Kw::DAY / Kw::JYEAR;
   return (((((2.64E-16) * $jy - 7.29E-14) * $jy -
         6.15359E-8) * $jy + 365.2421896698));
}
sub earth_distance($$$$ ) {
   my ($lata_deg, $lona_deg, $latb_deg, $lonb_deg) = @_;
   return ((Kw::great_circle_distance(Kw::deg2rad($lata_deg),
         Kw::deg2rad($lona_deg), Kw::deg2rad($latb_deg),
         Kw::deg2rad($lonb_deg)) * EARTH_A));
}
sub plaradius($ ) {
   my ($lat_deg) = @_;
   my $calat;
   my $sblat;
   my $aa;
   my $bb;
   $aa = Kw::square(pla());
   $bb = Kw::square(plb());
   $calat = Kw::square(pla() * Kw::cosd($lat_deg));
   $sblat = Kw::square(plb() * Kw::sind($lat_deg));
   return (sqrt(($aa * $calat + $bb * $sblat) / ($calat +
         $sblat)));
}
sub pl_aradius($$ ) {
   my ($plnt, $lat_deg) = @_;
   pl($plnt);
   return (plaradius($lat_deg));
}
sub earth_obliquity($ ) {
   my ($jtwok) = @_;
   my $obl_rad;
   $obl_rad = (((-1.24828E-16) * $jtwok - 3.56226633E-7) *
         $jtwok + 23.4392889);
   return (Kw::deg2rad($obl_rad));
}
sub earth_gravity($ ) {
   my ($lat_deg) = @_;
   my $slatsq;
   my $obltsq;
   my $kk;
   $slatsq = Kw::square(Kw::sind($lat_deg));
   $obltsq = EARTHFLATNESS * (2.0 - EARTHFLATNESS);
   $kk = (((1.0 - EARTHFLATNESS) * Kw::EARTHGRAVITYB) -
         Kw::EARTHGRAVITYA);
   return ((Kw::EARTHGRAVITYA + $kk * $slatsq) / sqrt(1.0 -
         $obltsq * $slatsq));
}
sub earth_gravity_height($$ ) {
   my ($lat_deg, $height_m) = @_;
   return ((earth_gravity($lat_deg) - $height_m * 2.0 *
         EARTHGM / Kw::cube(EARTH_A)));
}
{
sub LC_ISA_TEMPERATURE() { 0; }
   sub LC_ISA_PRESSURE() { 1; }
   sub LC_ISA_DENSITY() { 2; }
   sub LC_ISA_XHEIGHT() { 0; }
   sub LC_ISA_XTEMPERATURE() { 1; }
   sub LC_ISA_XLAPSERATE() { 2; }
   sub LC_ISA_XPRESSURE() { 3; }
   sub LC_ISA_XDENSITY() { 4; }
   my @lv_isa_arr;
   my $lv_isa_magic = 0.0;
   sub lf_isa_calc($$ ) {
      my ($height_m, $state_x) = @_;
      # local-use Perl @lv_isa_arr;
      # local-use Perl $lv_isa_magic;
      my $h_ind;
      my $air_k_per_m;
      my $expon;
      my $this_temp;
      my $delta_h;
      my $ret_val;
      if (not Kw::ismagic($lv_isa_magic)) {
         $lv_isa_arr[0][LC_ISA_XHEIGHT] = 0;
         $lv_isa_arr[0][LC_ISA_XTEMPERATURE] = 288.15;
         $lv_isa_arr[0][LC_ISA_XLAPSERATE] = -0.0065;
         $lv_isa_arr[0][LC_ISA_XPRESSURE] = Kw::ATM;
         $lv_isa_arr[0][LC_ISA_XDENSITY] = 1.2250;
         $lv_isa_arr[1][LC_ISA_XHEIGHT] = 11000;
         $lv_isa_arr[1][LC_ISA_XTEMPERATURE] = 216.65;
         $lv_isa_arr[1][LC_ISA_XLAPSERATE] = +0.0;
         $lv_isa_arr[1][LC_ISA_XPRESSURE] = 22632.10;
         $lv_isa_arr[1][LC_ISA_XDENSITY] = 0.36391;
         $lv_isa_arr[2][LC_ISA_XHEIGHT] = 20000;
         $lv_isa_arr[2][LC_ISA_XTEMPERATURE] = 216.65;
         $lv_isa_arr[2][LC_ISA_XLAPSERATE] = +0.001;
         $lv_isa_arr[2][LC_ISA_XPRESSURE] = 5474.89;
         $lv_isa_arr[2][LC_ISA_XDENSITY] = 0.08803;
         $lv_isa_arr[3][LC_ISA_XHEIGHT] = 32000;
         $lv_isa_arr[3][LC_ISA_XTEMPERATURE] = 228.65;
         $lv_isa_arr[3][LC_ISA_XLAPSERATE] = +0.0028;
         $lv_isa_arr[3][LC_ISA_XPRESSURE] = 868.02;
         $lv_isa_arr[3][LC_ISA_XDENSITY] = 0.01322;
         $lv_isa_arr[4][LC_ISA_XHEIGHT] = 47000;
         $lv_isa_arr[4][LC_ISA_XTEMPERATURE] = 270.65;
         $lv_isa_arr[4][LC_ISA_XLAPSERATE] = +0.0;
         $lv_isa_arr[4][LC_ISA_XPRESSURE] = 110.91;
         $lv_isa_arr[4][LC_ISA_XDENSITY] = 0.00143;
         $lv_isa_arr[5][LC_ISA_XHEIGHT] = 51000;
         $lv_isa_arr[5][LC_ISA_XTEMPERATURE] = 270.65;
         $lv_isa_arr[5][LC_ISA_XLAPSERATE] = -0.0028;
         $lv_isa_arr[5][LC_ISA_XPRESSURE] = 66.94;
         $lv_isa_arr[5][LC_ISA_XDENSITY] = 8.6E-4;
         $lv_isa_arr[6][LC_ISA_XHEIGHT] = 71000;
         $lv_isa_arr[6][LC_ISA_XTEMPERATURE] = 214.65;
         $lv_isa_arr[6][LC_ISA_XLAPSERATE] = -0.002;
         $lv_isa_arr[6][LC_ISA_XPRESSURE] = 3.96;
         $lv_isa_arr[6][LC_ISA_XDENSITY] = 6.4E-5;
         $lv_isa_magic = Kw::magicset();
      }
      $h_ind = 6;
      while ($height_m < $lv_isa_arr[$h_ind][0] and 0 < $h_ind) {
         $h_ind -= 1;
      }
      $delta_h = $height_m - $lv_isa_arr[$h_ind][LC_ISA_XHEIGHT];
      $this_temp = $lv_isa_arr[$h_ind][LC_ISA_XTEMPERATURE] +
            $lv_isa_arr[$h_ind][LC_ISA_XLAPSERATE] * $delta_h;
      if ($state_x == LC_ISA_TEMPERATURE) {
         $ret_val = $this_temp;
      } else {
         $air_k_per_m = Kw::GRAVITY * Kwelements::AIR_MASS /
               Kw::GAS;
         if
               (Kw::iszero(
               $lv_isa_arr[$h_ind][LC_ISA_XLAPSERATE])) {
            $ret_val = exp(-$air_k_per_m * $delta_h /
                  $lv_isa_arr[$h_ind][LC_ISA_XTEMPERATURE]);
         } else {
            $expon = $air_k_per_m /
                  $lv_isa_arr[$h_ind][LC_ISA_XLAPSERATE];
            if ($state_x == LC_ISA_DENSITY) {
               $expon += 1;
            }
            $ret_val =
                  Kw::pow(
                  $lv_isa_arr[$h_ind][LC_ISA_XTEMPERATURE] /
                  $this_temp, $expon);
         }
         if ($state_x == LC_ISA_PRESSURE) {
            $ret_val *= $lv_isa_arr[$h_ind][LC_ISA_XPRESSURE];
         } else {
            $ret_val *= $lv_isa_arr[$h_ind][LC_ISA_XDENSITY];
         }
      }
      return ($ret_val);
   }
   sub isa_temp($ ) {
      my ($height_m) = @_;
      return (lf_isa_calc($height_m, LC_ISA_TEMPERATURE));
   }
   sub isa_pres($ ) {
      my ($height_m) = @_;
      return (lf_isa_calc($height_m, LC_ISA_PRESSURE));
   }
   sub isa_dens($ ) {
      my ($height_m) = @_;
      return (lf_isa_calc($height_m, LC_ISA_DENSITY));
   }
}
sub vin_distance($$$$\@ ) {
   my ($lata_deg, $lona_deg, $latb_deg, $lonb_deg,
         $ret_bearings_arr_p) = @_;
   my $retvalu;
   my @rad_arr;
   $retvalu = EARTH_A * Kw::ellipsoid_distance(EARTHFLATNESS,
         Kw::deg2rad($lata_deg), Kw::deg2rad($lona_deg),
         Kw::deg2rad($latb_deg), Kw::deg2rad($lonb_deg),
         @rad_arr) / Kw::METER;
   $$ret_bearings_arr_p[0] = Kw::rad2deg($rad_arr[0]);
   $$ret_bearings_arr_p[1] = Kw::rad2deg($rad_arr[1]);
   return ($retvalu);
}
sub vin_destination($$$$\@ ) {
   my ($lata_deg, $lona_deg, $heading_deg, $dist_m,
         $ret_dest_arr_p) = @_;
   my $fltnss;
   my $retvalu;
   my @rad_arr;
   $fltnss = EARTHFLATNESS;
   $retvalu = Kw::rad2deg(Kw::ellipsoid_destination($fltnss,
         Kw::deg2rad($lata_deg), Kw::deg2rad($lona_deg),
         Kw::deg2rad($heading_deg), $dist_m * Kw::METER /
         EARTH_A, @rad_arr));
   $$ret_dest_arr_p[0] = Kw::rad2deg($rad_arr[0]);
   $$ret_dest_arr_p[1] = Kw::rad2deg($rad_arr[1]);
   return ($retvalu);
}
#   DDDDDDDDDDescription ---------------- kwplanets_description #
sub kwplanets_description() {
   "   Kwplanets Constants: ANOMALISTICYEAR CERES_A CERES_B CE" .
   "RES_C CERESASCENDING CERESASCENDING_DT CERESDAY CERESDENSI" .
   "TY CERESECCENTRICITY CERESECCENTRICITY_DT CERESESCAPE CERE" .
   "SFLATNESS CERESGM CERESGRAVITY CERESINCLINATION CERESINCLI" .
   "NATION_DT CERESLONGITUDE CERESLONGITUDE_DT CERESMASS CERES" .
   "OBLATENESS CERESORBIT CERESORBIT_DT CERESPERIAPSIS CERESPE" .
   "RIAPSIS_DT CERESRADIUS CERESVOLUME CERESYEAR EARTH_A EARTH" .
   "_B EARTH_C EARTHANOMALISTICYEAR EARTHASCENDING EARTHASCEND" .
   "ING_DT EARTHDAY EARTHDENSITY EARTHECCENTRICITY EARTHECCENT" .
   "RICITY_DT EARTHESCAPE EARTHFLATNESS EARTHGM EARTHGRAVITY E" .
   "ARTHINCLINATION EARTHINCLINATION_DT EARTHLONGITUDE EARTHLO" .
   "NGITUDE_DT EARTHMASS EARTHOBLATENESS EARTHORBIT EARTHORBIT" .
   "_DT EARTHPERIAPSIS EARTHPERIAPSIS_DT EARTHPRECESSION EARTH" .
   "RADIUS EARTHSIDEREALDAY EARTHSIDEREALYEAR EARTHSTELLARDAY " .
   "EARTHTHETA_0 EARTHTROPICALYEAR EARTHVOLUME EARTHYEAR ERIS_" .
   "A ERIS_B ERIS_C ERISASCENDING ERISASCENDING_DT ERISDAY ERI" .
   "SDENSITY ERISECCENTRICITY ERISECCENTRICITY_DT ERISESCAPE E" .
   "RISFLATNESS ERISGM ERISGRAVITY ERISINCLINATION ERISINCLINA" .
   "TION_DT ERISLONGITUDE ERISLONGITUDE_DT ERISMASS ERISOBLATE" .
   "NESS ERISORBIT ERISORBIT_DT ERISPERIAPSIS ERISPERIAPSIS_DT" .
   " ERISRADIUS ERISVOLUME ERISYEAR HAUMEA_A HAUMEA_B HAUMEA_C" .
   " HAUMEAASCENDING HAUMEAASCENDING_DT HAUMEADAY HAUMEADENSIT" .
   "Y HAUMEAECCENTRICITY HAUMEAECCENTRICITY_DT HAUMEAESCAPE HA" .
   "UMEAFLATNESS HAUMEAGM HAUMEAGRAVITY HAUMEAINCLINATION HAUM" .
   "EAINCLINATION_DT HAUMEALONGITUDE HAUMEALONGITUDE_DT HAUMEA" .
   "MASS HAUMEAOBLATENESS HAUMEAORBIT HAUMEAORBIT_DT HAUMEAPER" .
   "IAPSIS HAUMEAPERIAPSIS_DT HAUMEARADIUS HAUMEAVOLUME HAUMEA" .
   "YEAR JUPITER_A JUPITER_B JUPITER_C JUPITERASCENDING JUPITE" .
   "RASCENDING_DT JUPITERDAY JUPITERDENSITY JUPITERECCENTRICIT" .
   "Y JUPITERECCENTRICITY_DT JUPITERESCAPE JUPITERFLATNESS JUP" .
   "ITERGM JUPITERGRAVITY JUPITERINCLINATION JUPITERINCLINATIO" .
   "N_DT JUPITERLONGITUDE JUPITERLONGITUDE_DT JUPITERMASS JUPI" .
   "TEROBLATENESS JUPITERORBIT JUPITERORBIT_DT JUPITERPERIAPSI" .
   "S JUPITERPERIAPSIS_DT JUPITERRADIUS JUPITERVOLUME JUPITERY" .
   "EAR MAKEMAKE_A MAKEMAKE_B MAKEMAKE_C MAKEMAKEASCENDING MAK" .
   "EMAKEASCENDING_DT MAKEMAKEDAY MAKEMAKEDENSITY MAKEMAKEECCE" .
   "NTRICITY MAKEMAKEECCENTRICITY_DT MAKEMAKEESCAPE MAKEMAKEFL" .
   "ATNESS MAKEMAKEGM MAKEMAKEGRAVITY MAKEMAKEINCLINATION MAKE" .
   "MAKEINCLINATION_DT MAKEMAKELONGITUDE MAKEMAKELONGITUDE_DT " .
   "MAKEMAKEMASS MAKEMAKEOBLATENESS MAKEMAKEORBIT MAKEMAKEORBI" .
   "T_DT MAKEMAKEPERIAPSIS MAKEMAKEPERIAPSIS_DT MAKEMAKERADIUS" .
   " MAKEMAKEVOLUME MAKEMAKEYEAR MARS_A MARS_B MARS_C MARSASCE" .
   "NDING MARSASCENDING_DT MARSDAY MARSDENSITY MARSECCENTRICIT" .
   "Y MARSECCENTRICITY_DT MARSESCAPE MARSFLATNESS MARSGM MARSG" .
   "RAVITY MARSINCLINATION MARSINCLINATION_DT MARSLONGITUDE MA" .
   "RSLONGITUDE_DT MARSMASS MARSOBLATENESS MARSORBIT MARSORBIT" .
   "_DT MARSPERIAPSIS MARSPERIAPSIS_DT MARSRADIUS MARSVOLUME M" .
   "ARSYEAR MERCURY_A MERCURY_B MERCURY_C MERCURYASCENDING MER" .
   "CURYASCENDING_DT MERCURYDAY MERCURYDENSITY MERCURYECCENTRI" .
   "CITY MERCURYECCENTRICITY_DT MERCURYESCAPE MERCURYFLATNESS " .
   "MERCURYGM MERCURYGRAVITY MERCURYINCLINATION MERCURYINCLINA" .
   "TION_DT MERCURYLONGITUDE MERCURYLONGITUDE_DT MERCURYMASS M" .
   "ERCURYOBLATENESS MERCURYORBIT MERCURYORBIT_DT MERCURYPERIA" .
   "PSIS MERCURYPERIAPSIS_DT MERCURYRADIUS MERCURYVOLUME MERCU" .
   "RYYEAR MOON_A MOON_B MOON_C MOONDAY MOONDENSITY MOONECCENT" .
   "RICITY MOONESCAPE MOONFLATNESS MOONGM MOONGRAVITY MOONINCL" .
   "INATION MOONMASS MOONOBLATENESS MOONORBIT MOONRADIUS MOONV" .
   "OLUME MOONYEAR NEPTUNE_A NEPTUNE_B NEPTUNE_C NEPTUNEASCEND" .
   "ING NEPTUNEASCENDING_DT NEPTUNEDAY NEPTUNEDENSITY NEPTUNEE" .
   "CCENTRICITY NEPTUNEECCENTRICITY_DT NEPTUNEESCAPE NEPTUNEFL" .
   "ATNESS NEPTUNEGM NEPTUNEGRAVITY NEPTUNEINCLINATION NEPTUNE" .
   "INCLINATION_DT NEPTUNELONGITUDE NEPTUNELONGITUDE_DT NEPTUN" .
   "EMASS NEPTUNEOBLATENESS NEPTUNEORBIT NEPTUNEORBIT_DT NEPTU" .
   "NEPERIAPSIS NEPTUNEPERIAPSIS_DT NEPTUNERADIUS NEPTUNEVOLUM" .
   "E NEPTUNEYEAR PLUTO_A PLUTO_B PLUTO_C PLUTOASCENDING PLUTO" .
   "ASCENDING_DT PLUTODAY PLUTODENSITY PLUTOECCENTRICITY PLUTO" .
   "ECCENTRICITY_DT PLUTOESCAPE PLUTOFLATNESS PLUTOGM PLUTOGRA" .
   "VITY PLUTOINCLINATION PLUTOINCLINATION_DT PLUTOLONGITUDE P" .
   "LUTOLONGITUDE_DT PLUTOMASS PLUTOOBLATENESS PLUTOORBIT PLUT" .
   "OORBIT_DT PLUTOPERIAPSIS PLUTOPERIAPSIS_DT PLUTORADIUS PLU" .
   "TOVOLUME PLUTOYEAR SATURN_A SATURN_B SATURN_C SATURNASCEND" .
   "ING SATURNASCENDING_DT SATURNDAY SATURNDENSITY SATURNECCEN" .
   "TRICITY SATURNECCENTRICITY_DT SATURNESCAPE SATURNFLATNESS " .
   "SATURNGM SATURNGRAVITY SATURNINCLINATION SATURNINCLINATION" .
   "_DT SATURNLONGITUDE SATURNLONGITUDE_DT SATURNMASS SATURNOB" .
   "LATENESS SATURNORBIT SATURNORBIT_DT SATURNPERIAPSIS SATURN" .
   "PERIAPSIS_DT SATURNRADIUS SATURNVOLUME SATURNYEAR SIDEREAL" .
   "DAY SIDEREALYEAR STELLARDAY SUN_A SUN_B SUN_C SUNASCENDING" .
   " SUNASCENDING_DT SUNDAY SUNDENSITY SUNECCENTRICITY SUNECCE" .
   "NTRICITY_DT SUNESCAPE SUNFLATNESS SUNGM SUNGMIERS SUNGMNAS" .
   "A SUNGRAVITY SUNINCLINATION SUNINCLINATION_DT SUNLONGITUDE" .
   " SUNLONGITUDE_DT SUNMASS SUNOBLATENESS SUNORBIT SUNORBIT_D" .
   "T SUNPERIAPSIS SUNPERIAPSIS_DT SUNRADIUS SUNVOLUME SUNYEAR" .
   " TROPICALYEAR URANUS_A URANUS_B URANUS_C URANUSASCENDING U" .
   "RANUSASCENDING_DT URANUSDAY URANUSDENSITY URANUSECCENTRICI" .
   "TY URANUSECCENTRICITY_DT URANUSESCAPE URANUSFLATNESS URANU" .
   "SGM URANUSGRAVITY URANUSINCLINATION URANUSINCLINATION_DT U" .
   "RANUSLONGITUDE URANUSLONGITUDE_DT URANUSMASS URANUSOBLATEN" .
   "ESS URANUSORBIT URANUSORBIT_DT URANUSPERIAPSIS URANUSPERIA" .
   "PSIS_DT URANUSRADIUS URANUSVOLUME URANUSYEAR VENUS_A VENUS" .
   "_B VENUS_C VENUSASCENDING VENUSASCENDING_DT VENUSDAY VENUS" .
   "DENSITY VENUSECCENTRICITY VENUSECCENTRICITY_DT VENUSESCAPE" .
   " VENUSFLATNESS VENUSGM VENUSGRAVITY VENUSINCLINATION VENUS" .
   "INCLINATION_DT VENUSLONGITUDE VENUSLONGITUDE_DT VENUSMASS " .
   "VENUSOBLATENESS VENUSORBIT VENUSORBIT_DT VENUSPERIAPSIS VE" .
   "NUSPERIAPSIS_DT VENUSRADIUS VENUSVOLUME VENUSYEAR" .
   "\n" .
   "   Kwplanets 0-ary Functions: pla plaphelion plargument pl" .
   "ascending plb plc plday pldensity pleccentricanomaly plecc" .
   "entricity plescape plflatness plgm plgravity plinclination" .
   " pllongitude plmargot plmass plmeananomaly plname plorbit " .
   "plperiapsis plperihelion plradius plsternlevison plsynodic" .
   " plvolume plyear" .
   "\n" .
   "   Kwplanets 1-ary Functions: earth_gravity earth_obliquit" .
   "y earth_radius earth_tropicalyear isa_dens isa_pres isa_te" .
   "mp pl pl_a pl_aphelion pl_argument pl_ascending pl_b pl_c " .
   "pl_day pl_density pl_eccentricanomaly pl_eccentricity pl_e" .
   "scape pl_flatness pl_gm pl_gravity pl_inclination pl_longi" .
   "tude pl_margot pl_mass pl_meananomaly pl_name pl_orbit pl_" .
   "periapsis pl_perihelion pl_radius pl_sternlevison pl_synod" .
   "ic pl_volume pl_year plaradius plgeo plhelio plsettime" .
   "\n" .
   "   Kwplanets 2-ary Functions: earth_gravity_height eccentr" .
   "ic_anomaly margot pl_aradius pl_heliocentric sternlevison" .
   "\n" .
   "   Kwplanets 4-ary Functions: earth_distance" .
   "\n" .
   "   Kwplanets 5-ary Functions: vin_destination vin_distance" .
   "\n";
}
sub kwplanets_desc() {
   "   Kwplanets Constants: ANOMALISTICYEAR CERES(_[ABC]|ASCEN" .
   "DING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNES" .
   "S|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLA" .
   "TENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) EAR" .
   "TH(_[ABC]|A(NOMALISTICYEAR|SCENDING(_DT)?)|D(AY|ENSITY)|E(" .
   "CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(" .
   "_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|P(ERIAP" .
   "SIS(_DT)?|RECESSION)|RADIUS|S(IDEREAL(DAY|YEAR)|TELLARDAY)" .
   "|T(HETA_0|ROPICALYEAR)|VOLUME|YEAR) ERIS(_[ABC]|ASCENDING(" .
   "_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M" .
   "|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENES" .
   "S|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) HAUMEA(_" .
   "[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCA" .
   "PE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?" .
   "|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUM" .
   "E|YEAR) JUPITER(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|E(CCEN" .
   "TRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)" .
   "?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_" .
   "DT)?|RADIUS|VOLUME|YEAR) MAKEMAKE(_[ABC]|ASCENDING(_DT)?|D" .
   "(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY" .
   ")|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(" .
   "_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) MARS(_[ABC]|ASC" .
   "ENDING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATN" .
   "ESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(B" .
   "LATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) M" .
   "ERCURY(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_" .
   "DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITU" .
   "DE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADI" .
   "US|VOLUME|YEAR) MOON(_[ABC]|D(AY|ENSITY)|E(CCENTRICITY|SCA" .
   "PE)|FLATNESS|G(M|RAVITY)|INCLINATION|MASS|O(BLATENESS|RBIT" .
   ")|RADIUS|VOLUME|YEAR) NEPTUNE(_[ABC]|ASCENDING(_DT)?|D(AY|" .
   "ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|IN" .
   "CLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)" .
   "?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) PLUTO(_[ABC]|ASCEND" .
   "ING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS" .
   "|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLAT" .
   "ENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) SATU" .
   "RN(_[ABC]|ASCENDING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?" .
   "|SCAPE)|FLATNESS|G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_" .
   "DT)?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|V" .
   "OLUME|YEAR) SIDEREAL(DAY|YEAR) STELLARDAY SUN(_[ABC]|ASCEN" .
   "DING(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNES" .
   "S|G(M(IERS|NASA)?|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)" .
   "?|MASS|O(BLATENESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLU" .
   "ME|YEAR) TROPICALYEAR URANUS(_[ABC]|ASCENDING(_DT)?|D(AY|E" .
   "NSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|G(M|RAVITY)|INC" .
   "LINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATENESS|RBIT(_DT)?" .
   ")|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR) VENUS(_[ABC]|ASCENDI" .
   "NG(_DT)?|D(AY|ENSITY)|E(CCENTRICITY(_DT)?|SCAPE)|FLATNESS|" .
   "G(M|RAVITY)|INCLINATION(_DT)?|LONGITUDE(_DT)?|MASS|O(BLATE" .
   "NESS|RBIT(_DT)?)|PERIAPSIS(_DT)?|RADIUS|VOLUME|YEAR)" .
   "\n" .
   "   Kwplanets 0-ary Functions: pla(phelion|rgument|scending" .
   ")? plb plc pld(ay|ensity) ple(ccentric(anomaly|ity)|scape)" .
   " plflatness plg(m|ravity) plinclination pllongitude plm(a(" .
   "rgot|ss)|eananomaly) plname plorbit plperi(apsis|helion) p" .
   "lradius pls(ternlevison|ynodic) plvolume plyear" .
   "\n" .
   "   Kwplanets 1-ary Functions: earth_(gravity|obliquity|rad" .
   "ius|tropicalyear) isa_(dens|pres|temp) pl pl_(a(phelion|rg" .
   "ument|scending)?|b|c|d(ay|ensity)|e(ccentric(anomaly|ity)|" .
   "scape)|flatness|g(m|ravity)|inclination|longitude|m(a(rgot" .
   "|ss)|eananomaly)|name|orbit|peri(apsis|helion)|radius|s(te" .
   "rnlevison|ynodic)|volume|year) plaradius plgeo plhelio pls" .
   "ettime" .
   "\n" .
   "   Kwplanets 2-ary Functions: earth_gravity_height eccentr" .
   "ic_anomaly margot pl_(aradius|heliocentric) sternlevison" .
   "\n" .
   "   Kwplanets 4-ary Functions: earth_distance" .
   "\n" .
   "   Kwplanets 5-ary Functions: vin_d(estination|istance)" .
   "\n";
}
1; # Final return value
