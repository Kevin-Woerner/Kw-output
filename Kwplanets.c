//   Copyright (C) 2020 by Kevin D. Woerner
//-/ =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
//-/ =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
//-/ =KDW= ##### SRC $KWROOT/codekdw/kw-lib/Kwplanets.fwipp #####
// 2020-07-20 kdw  For Changelog, See File Kwplanets.varylog
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include "Kwplanets.h"
//  CCCCCCCCCConstant ---------------------------------- LANG_C #
double cxearthsiderealday(void) { return (EARTHSIDEREALDAY); }
double cxearthstellarday(void) { return (EARTHSTELLARDAY); }
double cxearthtropicalyear(void) { return (EARTHTROPICALYEAR); }
double cxearthsiderealyear(void) { return (EARTHSIDEREALYEAR); }
double cxearthanomalisticyear(void) {
   return (EARTHANOMALISTICYEAR); }
double cxsiderealyear(void) { return (SIDEREALYEAR); }
double cxanomalisticyear(void) { return (ANOMALISTICYEAR); }
double cxtropicalyear(void) { return (TROPICALYEAR); }
double cxstellarday(void) { return (STELLARDAY); }
double cxsiderealday(void) { return (SIDEREALDAY); }
double cxsungmnasa(void) { return (SUNGMNASA); }
double cxsungmiers(void) { return (SUNGMIERS); }
double cxsungm(void) { return (SUNGM); }
double cxsunyear(void) { return (SUNYEAR); }
double cxsunday(void) { return (SUNDAY); }
double cxsunflatness(void) { return (SUNFLATNESS); }
double cxsun_a(void) { return (SUN_A); }
double cxsun_c(void) { return (SUN_C); }
double cxsun_b(void) { return (SUN_B); }
double cxsunradius(void) { return (SUNRADIUS); }
double cxsunescape(void) { return (SUNESCAPE); }
double cxsunoblateness(void) { return (SUNOBLATENESS); }
double cxsungravity(void) { return (SUNGRAVITY); }
double cxsunmass(void) { return (SUNMASS); }
double cxsunvolume(void) { return (SUNVOLUME); }
double cxsundensity(void) { return (SUNDENSITY); }
double cxmercurygm(void) { return (MERCURYGM); }
double cxmercuryyear(void) { return (MERCURYYEAR); }
double cxmercuryday(void) { return (MERCURYDAY); }
double cxmercuryflatness(void) { return (MERCURYFLATNESS); }
double cxmercury_a(void) { return (MERCURY_A); }
double cxmercury_c(void) { return (MERCURY_C); }
double cxmercury_b(void) { return (MERCURY_B); }
double cxmercuryradius(void) { return (MERCURYRADIUS); }
double cxmercuryescape(void) { return (MERCURYESCAPE); }
double cxmercuryoblateness(void) { return (MERCURYOBLATENESS); }
double cxmercurygravity(void) { return (MERCURYGRAVITY); }
double cxmercurymass(void) { return (MERCURYMASS); }
double cxmercuryvolume(void) { return (MERCURYVOLUME); }
double cxmercurydensity(void) { return (MERCURYDENSITY); }
double cxvenusgm(void) { return (VENUSGM); }
double cxvenusyear(void) { return (VENUSYEAR); }
double cxvenusday(void) { return (VENUSDAY); }
double cxvenusflatness(void) { return (VENUSFLATNESS); }
double cxvenus_a(void) { return (VENUS_A); }
double cxvenus_c(void) { return (VENUS_C); }
double cxvenus_b(void) { return (VENUS_B); }
double cxvenusradius(void) { return (VENUSRADIUS); }
double cxvenusescape(void) { return (VENUSESCAPE); }
double cxvenusoblateness(void) { return (VENUSOBLATENESS); }
double cxvenusgravity(void) { return (VENUSGRAVITY); }
double cxvenusmass(void) { return (VENUSMASS); }
double cxvenusvolume(void) { return (VENUSVOLUME); }
double cxvenusdensity(void) { return (VENUSDENSITY); }
double cxearthgm(void) { return (EARTHGM); }
double cxearthyear(void) { return (EARTHYEAR); }
double cxearthday(void) { return (EARTHDAY); }
double cxearthflatness(void) { return (EARTHFLATNESS); }
double cxearth_a(void) { return (EARTH_A); }
double cxearth_c(void) { return (EARTH_C); }
double cxearth_b(void) { return (EARTH_B); }
double cxearthradius(void) { return (EARTHRADIUS); }
double cxearthescape(void) { return (EARTHESCAPE); }
double cxearthoblateness(void) { return (EARTHOBLATENESS); }
double cxearthgravity(void) { return (EARTHGRAVITY); }
double cxearthmass(void) { return (EARTHMASS); }
double cxearthvolume(void) { return (EARTHVOLUME); }
double cxearthdensity(void) { return (EARTHDENSITY); }
double cxearthprecession(void) { return (EARTHPRECESSION); }
double cxearththeta_0(void) { return (EARTHTHETA_0); }
double cxmarsgm(void) { return (MARSGM); }
double cxmarsyear(void) { return (MARSYEAR); }
double cxmarsday(void) { return (MARSDAY); }
double cxmarsflatness(void) { return (MARSFLATNESS); }
double cxmars_a(void) { return (MARS_A); }
double cxmars_c(void) { return (MARS_C); }
double cxmars_b(void) { return (MARS_B); }
double cxmarsradius(void) { return (MARSRADIUS); }
double cxmarsescape(void) { return (MARSESCAPE); }
double cxmarsoblateness(void) { return (MARSOBLATENESS); }
double cxmarsgravity(void) { return (MARSGRAVITY); }
double cxmarsmass(void) { return (MARSMASS); }
double cxmarsvolume(void) { return (MARSVOLUME); }
double cxmarsdensity(void) { return (MARSDENSITY); }
double cxjupitergm(void) { return (JUPITERGM); }
double cxjupiteryear(void) { return (JUPITERYEAR); }
double cxjupiterday(void) { return (JUPITERDAY); }
double cxjupiterflatness(void) { return (JUPITERFLATNESS); }
double cxjupiter_a(void) { return (JUPITER_A); }
double cxjupiter_c(void) { return (JUPITER_C); }
double cxjupiter_b(void) { return (JUPITER_B); }
double cxjupiterradius(void) { return (JUPITERRADIUS); }
double cxjupiterescape(void) { return (JUPITERESCAPE); }
double cxjupiteroblateness(void) { return (JUPITEROBLATENESS); }
double cxjupitergravity(void) { return (JUPITERGRAVITY); }
double cxjupitermass(void) { return (JUPITERMASS); }
double cxjupitervolume(void) { return (JUPITERVOLUME); }
double cxjupiterdensity(void) { return (JUPITERDENSITY); }
double cxsaturngm(void) { return (SATURNGM); }
double cxsaturnyear(void) { return (SATURNYEAR); }
double cxsaturnday(void) { return (SATURNDAY); }
double cxsaturnflatness(void) { return (SATURNFLATNESS); }
double cxsaturn_a(void) { return (SATURN_A); }
double cxsaturn_c(void) { return (SATURN_C); }
double cxsaturn_b(void) { return (SATURN_B); }
double cxsaturnradius(void) { return (SATURNRADIUS); }
double cxsaturnescape(void) { return (SATURNESCAPE); }
double cxsaturnoblateness(void) { return (SATURNOBLATENESS); }
double cxsaturngravity(void) { return (SATURNGRAVITY); }
double cxsaturnmass(void) { return (SATURNMASS); }
double cxsaturnvolume(void) { return (SATURNVOLUME); }
double cxsaturndensity(void) { return (SATURNDENSITY); }
double cxuranusgm(void) { return (URANUSGM); }
double cxuranusyear(void) { return (URANUSYEAR); }
double cxuranusday(void) { return (URANUSDAY); }
double cxuranusflatness(void) { return (URANUSFLATNESS); }
double cxuranus_a(void) { return (URANUS_A); }
double cxuranus_c(void) { return (URANUS_C); }
double cxuranus_b(void) { return (URANUS_B); }
double cxuranusradius(void) { return (URANUSRADIUS); }
double cxuranusescape(void) { return (URANUSESCAPE); }
double cxuranusoblateness(void) { return (URANUSOBLATENESS); }
double cxuranusgravity(void) { return (URANUSGRAVITY); }
double cxuranusmass(void) { return (URANUSMASS); }
double cxuranusvolume(void) { return (URANUSVOLUME); }
double cxuranusdensity(void) { return (URANUSDENSITY); }
double cxneptunegm(void) { return (NEPTUNEGM); }
double cxneptuneyear(void) { return (NEPTUNEYEAR); }
double cxneptuneday(void) { return (NEPTUNEDAY); }
double cxneptuneflatness(void) { return (NEPTUNEFLATNESS); }
double cxneptune_a(void) { return (NEPTUNE_A); }
double cxneptune_c(void) { return (NEPTUNE_C); }
double cxneptune_b(void) { return (NEPTUNE_B); }
double cxneptuneradius(void) { return (NEPTUNERADIUS); }
double cxneptuneescape(void) { return (NEPTUNEESCAPE); }
double cxneptuneoblateness(void) { return (NEPTUNEOBLATENESS); }
double cxneptunegravity(void) { return (NEPTUNEGRAVITY); }
double cxneptunemass(void) { return (NEPTUNEMASS); }
double cxneptunevolume(void) { return (NEPTUNEVOLUME); }
double cxneptunedensity(void) { return (NEPTUNEDENSITY); }
double cxplutogm(void) { return (PLUTOGM); }
double cxplutoyear(void) { return (PLUTOYEAR); }
double cxplutoday(void) { return (PLUTODAY); }
double cxplutoflatness(void) { return (PLUTOFLATNESS); }
double cxpluto_a(void) { return (PLUTO_A); }
double cxpluto_c(void) { return (PLUTO_C); }
double cxpluto_b(void) { return (PLUTO_B); }
double cxplutoradius(void) { return (PLUTORADIUS); }
double cxplutoescape(void) { return (PLUTOESCAPE); }
double cxplutooblateness(void) { return (PLUTOOBLATENESS); }
double cxplutogravity(void) { return (PLUTOGRAVITY); }
double cxplutomass(void) { return (PLUTOMASS); }
double cxplutovolume(void) { return (PLUTOVOLUME); }
double cxplutodensity(void) { return (PLUTODENSITY); }
double cxmoongm(void) { return (MOONGM); }
double cxmoonyear(void) { return (MOONYEAR); }
double cxmoonday(void) { return (MOONDAY); }
double cxmoonflatness(void) { return (MOONFLATNESS); }
double cxmoon_a(void) { return (MOON_A); }
double cxmoon_c(void) { return (MOON_C); }
double cxmoon_b(void) { return (MOON_B); }
double cxmoonradius(void) { return (MOONRADIUS); }
double cxmoonescape(void) { return (MOONESCAPE); }
double cxmoonoblateness(void) { return (MOONOBLATENESS); }
double cxmoongravity(void) { return (MOONGRAVITY); }
double cxmoonmass(void) { return (MOONMASS); }
double cxmoonvolume(void) { return (MOONVOLUME); }
double cxmoondensity(void) { return (MOONDENSITY); }
double cxmoonorbit(void) { return (MOONORBIT); }
double cxmooneccentricity(void) { return (MOONECCENTRICITY); }
double cxmooninclination(void) { return (MOONINCLINATION); }
double cxceresgm(void) { return (CERESGM); }
double cxceresyear(void) { return (CERESYEAR); }
double cxceresday(void) { return (CERESDAY); }
double cxceresflatness(void) { return (CERESFLATNESS); }
double cxceres_a(void) { return (CERES_A); }
double cxceres_c(void) { return (CERES_C); }
double cxceres_b(void) { return (CERES_B); }
double cxceresradius(void) { return (CERESRADIUS); }
double cxceresescape(void) { return (CERESESCAPE); }
double cxceresoblateness(void) { return (CERESOBLATENESS); }
double cxceresgravity(void) { return (CERESGRAVITY); }
double cxceresmass(void) { return (CERESMASS); }
double cxceresvolume(void) { return (CERESVOLUME); }
double cxceresdensity(void) { return (CERESDENSITY); }
double cxerisgm(void) { return (ERISGM); }
double cxerisyear(void) { return (ERISYEAR); }
double cxerisday(void) { return (ERISDAY); }
double cxerisflatness(void) { return (ERISFLATNESS); }
double cxeris_a(void) { return (ERIS_A); }
double cxeris_c(void) { return (ERIS_C); }
double cxeris_b(void) { return (ERIS_B); }
double cxerisradius(void) { return (ERISRADIUS); }
double cxerisescape(void) { return (ERISESCAPE); }
double cxerisoblateness(void) { return (ERISOBLATENESS); }
double cxerisgravity(void) { return (ERISGRAVITY); }
double cxerismass(void) { return (ERISMASS); }
double cxerisvolume(void) { return (ERISVOLUME); }
double cxerisdensity(void) { return (ERISDENSITY); }
double cxmakemakegm(void) { return (MAKEMAKEGM); }
double cxmakemakeyear(void) { return (MAKEMAKEYEAR); }
double cxmakemakeday(void) { return (MAKEMAKEDAY); }
double cxmakemakeflatness(void) { return (MAKEMAKEFLATNESS); }
double cxmakemake_a(void) { return (MAKEMAKE_A); }
double cxmakemake_c(void) { return (MAKEMAKE_C); }
double cxmakemake_b(void) { return (MAKEMAKE_B); }
double cxmakemakeradius(void) { return (MAKEMAKERADIUS); }
double cxmakemakeescape(void) { return (MAKEMAKEESCAPE); }
double cxmakemakeoblateness(void) {
   return (MAKEMAKEOBLATENESS); }
double cxmakemakegravity(void) { return (MAKEMAKEGRAVITY); }
double cxmakemakemass(void) { return (MAKEMAKEMASS); }
double cxmakemakevolume(void) { return (MAKEMAKEVOLUME); }
double cxmakemakedensity(void) { return (MAKEMAKEDENSITY); }
double cxhaumeagm(void) { return (HAUMEAGM); }
double cxhaumeayear(void) { return (HAUMEAYEAR); }
double cxhaumeaday(void) { return (HAUMEADAY); }
double cxhaumeaflatness(void) { return (HAUMEAFLATNESS); }
double cxhaumea_a(void) { return (HAUMEA_A); }
double cxhaumea_c(void) { return (HAUMEA_C); }
double cxhaumea_b(void) { return (HAUMEA_B); }
double cxhaumearadius(void) { return (HAUMEARADIUS); }
double cxhaumeaescape(void) { return (HAUMEAESCAPE); }
double cxhaumeaoblateness(void) { return (HAUMEAOBLATENESS); }
double cxhaumeagravity(void) { return (HAUMEAGRAVITY); }
double cxhaumeamass(void) { return (HAUMEAMASS); }
double cxhaumeavolume(void) { return (HAUMEAVOLUME); }
double cxhaumeadensity(void) { return (HAUMEADENSITY); }
double cxsunorbit(void) { return (SUNORBIT); }
double cxsuneccentricity(void) { return (SUNECCENTRICITY); }
double cxsuninclination(void) { return (SUNINCLINATION); }
double cxsunlongitude(void) { return (SUNLONGITUDE); }
double cxsunperiapsis(void) { return (SUNPERIAPSIS); }
double cxsunascending(void) { return (SUNASCENDING); }
double cxsunorbit_dt(void) { return (SUNORBIT_DT); }
double cxsuneccentricity_dt(void) {
   return (SUNECCENTRICITY_DT); }
double cxsuninclination_dt(void) { return (SUNINCLINATION_DT); }
double cxsunlongitude_dt(void) { return (SUNLONGITUDE_DT); }
double cxsunperiapsis_dt(void) { return (SUNPERIAPSIS_DT); }
double cxsunascending_dt(void) { return (SUNASCENDING_DT); }
double cxearthorbit(void) { return (EARTHORBIT); }
double cxeartheccentricity(void) { return (EARTHECCENTRICITY); }
double cxearthinclination(void) { return (EARTHINCLINATION); }
double cxearthlongitude(void) { return (EARTHLONGITUDE); }
double cxearthperiapsis(void) { return (EARTHPERIAPSIS); }
double cxearthascending(void) { return (EARTHASCENDING); }
double cxearthorbit_dt(void) { return (EARTHORBIT_DT); }
double cxeartheccentricity_dt(void) {
   return (EARTHECCENTRICITY_DT); }
double cxearthinclination_dt(void) {
   return (EARTHINCLINATION_DT); }
double cxearthlongitude_dt(void) { return (EARTHLONGITUDE_DT); }
double cxearthperiapsis_dt(void) { return (EARTHPERIAPSIS_DT); }
double cxearthascending_dt(void) { return (EARTHASCENDING_DT); }
double cxmercuryorbit(void) { return (MERCURYORBIT); }
double cxmercuryeccentricity(void) {
   return (MERCURYECCENTRICITY); }
double cxmercuryinclination(void) {
   return (MERCURYINCLINATION); }
double cxmercurylongitude(void) { return (MERCURYLONGITUDE); }
double cxmercuryperiapsis(void) { return (MERCURYPERIAPSIS); }
double cxmercuryascending(void) { return (MERCURYASCENDING); }
double cxmercuryorbit_dt(void) { return (MERCURYORBIT_DT); }
double cxmercuryeccentricity_dt(void) {
   return (MERCURYECCENTRICITY_DT); }
double cxmercuryinclination_dt(void) {
   return (MERCURYINCLINATION_DT); }
double cxmercurylongitude_dt(void) {
   return (MERCURYLONGITUDE_DT); }
double cxmercuryperiapsis_dt(void) {
   return (MERCURYPERIAPSIS_DT); }
double cxmercuryascending_dt(void) {
   return (MERCURYASCENDING_DT); }
double cxvenusorbit(void) { return (VENUSORBIT); }
double cxvenuseccentricity(void) { return (VENUSECCENTRICITY); }
double cxvenusinclination(void) { return (VENUSINCLINATION); }
double cxvenuslongitude(void) { return (VENUSLONGITUDE); }
double cxvenusperiapsis(void) { return (VENUSPERIAPSIS); }
double cxvenusascending(void) { return (VENUSASCENDING); }
double cxvenusorbit_dt(void) { return (VENUSORBIT_DT); }
double cxvenuseccentricity_dt(void) {
   return (VENUSECCENTRICITY_DT); }
double cxvenusinclination_dt(void) {
   return (VENUSINCLINATION_DT); }
double cxvenuslongitude_dt(void) { return (VENUSLONGITUDE_DT); }
double cxvenusperiapsis_dt(void) { return (VENUSPERIAPSIS_DT); }
double cxvenusascending_dt(void) { return (VENUSASCENDING_DT); }
double cxmarsorbit(void) { return (MARSORBIT); }
double cxmarseccentricity(void) { return (MARSECCENTRICITY); }
double cxmarsinclination(void) { return (MARSINCLINATION); }
double cxmarslongitude(void) { return (MARSLONGITUDE); }
double cxmarsperiapsis(void) { return (MARSPERIAPSIS); }
double cxmarsascending(void) { return (MARSASCENDING); }
double cxmarsorbit_dt(void) { return (MARSORBIT_DT); }
double cxmarseccentricity_dt(void) {
   return (MARSECCENTRICITY_DT); }
double cxmarsinclination_dt(void) {
   return (MARSINCLINATION_DT); }
double cxmarslongitude_dt(void) { return (MARSLONGITUDE_DT); }
double cxmarsperiapsis_dt(void) { return (MARSPERIAPSIS_DT); }
double cxmarsascending_dt(void) { return (MARSASCENDING_DT); }
double cxjupiterorbit(void) { return (JUPITERORBIT); }
double cxjupitereccentricity(void) {
   return (JUPITERECCENTRICITY); }
double cxjupiterinclination(void) {
   return (JUPITERINCLINATION); }
double cxjupiterlongitude(void) { return (JUPITERLONGITUDE); }
double cxjupiterperiapsis(void) { return (JUPITERPERIAPSIS); }
double cxjupiterascending(void) { return (JUPITERASCENDING); }
double cxjupiterorbit_dt(void) { return (JUPITERORBIT_DT); }
double cxjupitereccentricity_dt(void) {
   return (JUPITERECCENTRICITY_DT); }
double cxjupiterinclination_dt(void) {
   return (JUPITERINCLINATION_DT); }
double cxjupiterlongitude_dt(void) {
   return (JUPITERLONGITUDE_DT); }
double cxjupiterperiapsis_dt(void) {
   return (JUPITERPERIAPSIS_DT); }
double cxjupiterascending_dt(void) {
   return (JUPITERASCENDING_DT); }
double cxsaturnorbit(void) { return (SATURNORBIT); }
double cxsaturneccentricity(void) {
   return (SATURNECCENTRICITY); }
double cxsaturninclination(void) { return (SATURNINCLINATION); }
double cxsaturnlongitude(void) { return (SATURNLONGITUDE); }
double cxsaturnperiapsis(void) { return (SATURNPERIAPSIS); }
double cxsaturnascending(void) { return (SATURNASCENDING); }
double cxsaturnorbit_dt(void) { return (SATURNORBIT_DT); }
double cxsaturneccentricity_dt(void) {
   return (SATURNECCENTRICITY_DT); }
double cxsaturninclination_dt(void) {
   return (SATURNINCLINATION_DT); }
double cxsaturnlongitude_dt(void) {
   return (SATURNLONGITUDE_DT); }
double cxsaturnperiapsis_dt(void) {
   return (SATURNPERIAPSIS_DT); }
double cxsaturnascending_dt(void) {
   return (SATURNASCENDING_DT); }
double cxuranusorbit(void) { return (URANUSORBIT); }
double cxuranuseccentricity(void) {
   return (URANUSECCENTRICITY); }
double cxuranusinclination(void) { return (URANUSINCLINATION); }
double cxuranuslongitude(void) { return (URANUSLONGITUDE); }
double cxuranusperiapsis(void) { return (URANUSPERIAPSIS); }
double cxuranusascending(void) { return (URANUSASCENDING); }
double cxuranusorbit_dt(void) { return (URANUSORBIT_DT); }
double cxuranuseccentricity_dt(void) {
   return (URANUSECCENTRICITY_DT); }
double cxuranusinclination_dt(void) {
   return (URANUSINCLINATION_DT); }
double cxuranuslongitude_dt(void) {
   return (URANUSLONGITUDE_DT); }
double cxuranusperiapsis_dt(void) {
   return (URANUSPERIAPSIS_DT); }
double cxuranusascending_dt(void) {
   return (URANUSASCENDING_DT); }
double cxneptuneorbit(void) { return (NEPTUNEORBIT); }
double cxneptuneeccentricity(void) {
   return (NEPTUNEECCENTRICITY); }
double cxneptuneinclination(void) {
   return (NEPTUNEINCLINATION); }
double cxneptunelongitude(void) { return (NEPTUNELONGITUDE); }
double cxneptuneperiapsis(void) { return (NEPTUNEPERIAPSIS); }
double cxneptuneascending(void) { return (NEPTUNEASCENDING); }
double cxneptuneorbit_dt(void) { return (NEPTUNEORBIT_DT); }
double cxneptuneeccentricity_dt(void) {
   return (NEPTUNEECCENTRICITY_DT); }
double cxneptuneinclination_dt(void) {
   return (NEPTUNEINCLINATION_DT); }
double cxneptunelongitude_dt(void) {
   return (NEPTUNELONGITUDE_DT); }
double cxneptuneperiapsis_dt(void) {
   return (NEPTUNEPERIAPSIS_DT); }
double cxneptuneascending_dt(void) {
   return (NEPTUNEASCENDING_DT); }
double cxplutoorbit(void) { return (PLUTOORBIT); }
double cxplutoeccentricity(void) { return (PLUTOECCENTRICITY); }
double cxplutoinclination(void) { return (PLUTOINCLINATION); }
double cxplutolongitude(void) { return (PLUTOLONGITUDE); }
double cxplutoperiapsis(void) { return (PLUTOPERIAPSIS); }
double cxplutoascending(void) { return (PLUTOASCENDING); }
double cxplutoorbit_dt(void) { return (PLUTOORBIT_DT); }
double cxplutoeccentricity_dt(void) {
   return (PLUTOECCENTRICITY_DT); }
double cxplutoinclination_dt(void) {
   return (PLUTOINCLINATION_DT); }
double cxplutolongitude_dt(void) { return (PLUTOLONGITUDE_DT); }
double cxplutoperiapsis_dt(void) { return (PLUTOPERIAPSIS_DT); }
double cxplutoascending_dt(void) { return (PLUTOASCENDING_DT); }
double cxceresorbit(void) { return (CERESORBIT); }
double cxcereseccentricity(void) { return (CERESECCENTRICITY); }
double cxceresinclination(void) { return (CERESINCLINATION); }
double cxcereslongitude(void) { return (CERESLONGITUDE); }
double cxceresperiapsis(void) { return (CERESPERIAPSIS); }
double cxceresascending(void) { return (CERESASCENDING); }
double cxceresorbit_dt(void) { return (CERESORBIT_DT); }
double cxcereseccentricity_dt(void) {
   return (CERESECCENTRICITY_DT); }
double cxceresinclination_dt(void) {
   return (CERESINCLINATION_DT); }
double cxcereslongitude_dt(void) { return (CERESLONGITUDE_DT); }
double cxceresperiapsis_dt(void) { return (CERESPERIAPSIS_DT); }
double cxceresascending_dt(void) { return (CERESASCENDING_DT); }
double cxerisorbit(void) { return (ERISORBIT); }
double cxeriseccentricity(void) { return (ERISECCENTRICITY); }
double cxerisinclination(void) { return (ERISINCLINATION); }
double cxerislongitude(void) { return (ERISLONGITUDE); }
double cxerisperiapsis(void) { return (ERISPERIAPSIS); }
double cxerisascending(void) { return (ERISASCENDING); }
double cxerisorbit_dt(void) { return (ERISORBIT_DT); }
double cxeriseccentricity_dt(void) {
   return (ERISECCENTRICITY_DT); }
double cxerisinclination_dt(void) {
   return (ERISINCLINATION_DT); }
double cxerislongitude_dt(void) { return (ERISLONGITUDE_DT); }
double cxerisperiapsis_dt(void) { return (ERISPERIAPSIS_DT); }
double cxerisascending_dt(void) { return (ERISASCENDING_DT); }
double cxmakemakeorbit(void) { return (MAKEMAKEORBIT); }
double cxmakemakeeccentricity(void) {
   return (MAKEMAKEECCENTRICITY); }
double cxmakemakeinclination(void) {
   return (MAKEMAKEINCLINATION); }
double cxmakemakelongitude(void) { return (MAKEMAKELONGITUDE); }
double cxmakemakeperiapsis(void) { return (MAKEMAKEPERIAPSIS); }
double cxmakemakeascending(void) { return (MAKEMAKEASCENDING); }
double cxmakemakeorbit_dt(void) { return (MAKEMAKEORBIT_DT); }
double cxmakemakeeccentricity_dt(void) {
   return (MAKEMAKEECCENTRICITY_DT); }
double cxmakemakeinclination_dt(void) {
   return (MAKEMAKEINCLINATION_DT); }
double cxmakemakelongitude_dt(void) {
   return (MAKEMAKELONGITUDE_DT); }
double cxmakemakeperiapsis_dt(void) {
   return (MAKEMAKEPERIAPSIS_DT); }
double cxmakemakeascending_dt(void) {
   return (MAKEMAKEASCENDING_DT); }
double cxhaumeaorbit(void) { return (HAUMEAORBIT); }
double cxhaumeaeccentricity(void) {
   return (HAUMEAECCENTRICITY); }
double cxhaumeainclination(void) { return (HAUMEAINCLINATION); }
double cxhaumealongitude(void) { return (HAUMEALONGITUDE); }
double cxhaumeaperiapsis(void) { return (HAUMEAPERIAPSIS); }
double cxhaumeaascending(void) { return (HAUMEAASCENDING); }
double cxhaumeaorbit_dt(void) { return (HAUMEAORBIT_DT); }
double cxhaumeaeccentricity_dt(void) {
   return (HAUMEAECCENTRICITY_DT); }
double cxhaumeainclination_dt(void) {
   return (HAUMEAINCLINATION_DT); }
double cxhaumealongitude_dt(void) {
   return (HAUMEALONGITUDE_DT); }
double cxhaumeaperiapsis_dt(void) {
   return (HAUMEAPERIAPSIS_DT); }
double cxhaumeaascending_dt(void) {
   return (HAUMEAASCENDING_DT); }
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
#define LC_P1_PREV_PL (- 1)
#define LC_P1_SUN 0
#define LC_P1_MERCURY 1
#define LC_P1_VENUS 2
#define LC_P1_EARTH 3
#define LC_P1_MARS 4
#define LC_P1_JUPITER 5
#define LC_P1_SATURN 6
#define LC_P1_URANUS 7
#define LC_P1_NEPTUNE 8
#define LC_P1_PLUTO 9
#define LC_P1_CERES 10
#define LC_P1_ERIS 11
#define LC_P1_MAKEMAKE 12
#define LC_P1_HAUMEA 13
#define LC_P1_COUNT (LC_P1_HAUMEA + 1)
#define LC_P1_ERR (- 1)
#define LC_P2_GM 0
#define LC_P2_YEAR 1
#define LC_P2_DAY 2
#define LC_P2_FLATNESS 3
#define LC_P2_A 4
#define LC_P2_C 5
#define LC_P2_ORB 6
#define LC_P2_ECC 7
#define LC_P2_INC 8
#define LC_P2_LON 9
#define LC_P2_PER 10
#define LC_P2_ASC 11
#define LC_P2_ORB_DT 12
#define LC_P2_ECC_DT 13
#define LC_P2_INC_DT 14
#define LC_P2_LON_DT 15
#define LC_P2_PER_DT 16
#define LC_P2_ASC_DT 17
#define LC_P2_COUNT 18
static long lv_pl_ind = LC_P1_PREV_PL;
static double lv_pl_arr[LC_P1_COUNT][LC_P2_COUNT];
static double lv_pl_earth_year = EARTHYEAR;
static double lv_pl_helio_arr[3];
static double lv_pl_geo_arr[3];
static double lv_pl_jtwoktime = 1.0 / 64.0;
static long lf_pl_init(long plnt)
{
   // local-use C lv_pl_ind;
   // local-use C lv_pl_arr;
   if (lv_pl_ind < 0) {
      lv_pl_arr[LC_P1_SUN][LC_P2_GM] = SUNGM;
      lv_pl_arr[LC_P1_SUN][LC_P2_YEAR] = SUNYEAR;
      lv_pl_arr[LC_P1_SUN][LC_P2_DAY] = SUNDAY;
      lv_pl_arr[LC_P1_SUN][LC_P2_FLATNESS] = SUNFLATNESS;
      lv_pl_arr[LC_P1_SUN][LC_P2_A] = SUN_A;
      lv_pl_arr[LC_P1_SUN][LC_P2_C] = SUN_C;
      lv_pl_arr[LC_P1_SUN][LC_P2_ORB] = SUNORBIT;
      lv_pl_arr[LC_P1_SUN][LC_P2_ECC] = SUNECCENTRICITY;
      lv_pl_arr[LC_P1_SUN][LC_P2_INC] = SUNINCLINATION;
      lv_pl_arr[LC_P1_SUN][LC_P2_LON] = SUNLONGITUDE;
      lv_pl_arr[LC_P1_SUN][LC_P2_PER] = SUNPERIAPSIS;
      lv_pl_arr[LC_P1_SUN][LC_P2_ASC] = SUNASCENDING;
      lv_pl_arr[LC_P1_SUN][LC_P2_ORB_DT] = SUNORBIT_DT;
      lv_pl_arr[LC_P1_SUN][LC_P2_ECC_DT] = SUNECCENTRICITY_DT;
      lv_pl_arr[LC_P1_SUN][LC_P2_INC_DT] = SUNINCLINATION_DT;
      lv_pl_arr[LC_P1_SUN][LC_P2_LON_DT] = SUNLONGITUDE_DT;
      lv_pl_arr[LC_P1_SUN][LC_P2_PER_DT] = SUNPERIAPSIS_DT;
      lv_pl_arr[LC_P1_SUN][LC_P2_ASC_DT] = SUNASCENDING_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_GM] = MERCURYGM;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_YEAR] = MERCURYYEAR;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_DAY] = MERCURYDAY;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_FLATNESS] = MERCURYFLATNESS;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_A] = MERCURY_A;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_C] = MERCURY_C;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ORB] = MERCURYORBIT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ECC] = MERCURYECCENTRICITY;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_INC] = MERCURYINCLINATION;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_LON] = MERCURYLONGITUDE;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_PER] = MERCURYPERIAPSIS;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ASC] = MERCURYASCENDING;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ORB_DT] = MERCURYORBIT_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ECC_DT] =\
            MERCURYECCENTRICITY_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_INC_DT] =\
            MERCURYINCLINATION_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_LON_DT] =\
            MERCURYLONGITUDE_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_PER_DT] =\
            MERCURYPERIAPSIS_DT;
      lv_pl_arr[LC_P1_MERCURY][LC_P2_ASC_DT] =\
            MERCURYASCENDING_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_GM] = VENUSGM;
      lv_pl_arr[LC_P1_VENUS][LC_P2_YEAR] = VENUSYEAR;
      lv_pl_arr[LC_P1_VENUS][LC_P2_DAY] = VENUSDAY;
      lv_pl_arr[LC_P1_VENUS][LC_P2_FLATNESS] = VENUSFLATNESS;
      lv_pl_arr[LC_P1_VENUS][LC_P2_A] = VENUS_A;
      lv_pl_arr[LC_P1_VENUS][LC_P2_C] = VENUS_C;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ORB] = VENUSORBIT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ECC] = VENUSECCENTRICITY;
      lv_pl_arr[LC_P1_VENUS][LC_P2_INC] = VENUSINCLINATION;
      lv_pl_arr[LC_P1_VENUS][LC_P2_LON] = VENUSLONGITUDE;
      lv_pl_arr[LC_P1_VENUS][LC_P2_PER] = VENUSPERIAPSIS;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ASC] = VENUSASCENDING;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ORB_DT] = VENUSORBIT_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ECC_DT] =\
            VENUSECCENTRICITY_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_INC_DT] = VENUSINCLINATION_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_LON_DT] = VENUSLONGITUDE_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_PER_DT] = VENUSPERIAPSIS_DT;
      lv_pl_arr[LC_P1_VENUS][LC_P2_ASC_DT] = VENUSASCENDING_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_GM] = EARTHGM;
      lv_pl_arr[LC_P1_EARTH][LC_P2_YEAR] = EARTHYEAR;
      lv_pl_arr[LC_P1_EARTH][LC_P2_DAY] = EARTHDAY;
      lv_pl_arr[LC_P1_EARTH][LC_P2_FLATNESS] = EARTHFLATNESS;
      lv_pl_arr[LC_P1_EARTH][LC_P2_A] = EARTH_A;
      lv_pl_arr[LC_P1_EARTH][LC_P2_C] = EARTH_C;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ORB] = EARTHORBIT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ECC] = EARTHECCENTRICITY;
      lv_pl_arr[LC_P1_EARTH][LC_P2_INC] = EARTHINCLINATION;
      lv_pl_arr[LC_P1_EARTH][LC_P2_LON] = EARTHLONGITUDE;
      lv_pl_arr[LC_P1_EARTH][LC_P2_PER] = EARTHPERIAPSIS;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ASC] = EARTHASCENDING;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ORB_DT] = EARTHORBIT_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ECC_DT] =\
            EARTHECCENTRICITY_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_INC_DT] = EARTHINCLINATION_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_LON_DT] = EARTHLONGITUDE_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_PER_DT] = EARTHPERIAPSIS_DT;
      lv_pl_arr[LC_P1_EARTH][LC_P2_ASC_DT] = EARTHASCENDING_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_GM] = MARSGM;
      lv_pl_arr[LC_P1_MARS][LC_P2_YEAR] = MARSYEAR;
      lv_pl_arr[LC_P1_MARS][LC_P2_DAY] = MARSDAY;
      lv_pl_arr[LC_P1_MARS][LC_P2_FLATNESS] = MARSFLATNESS;
      lv_pl_arr[LC_P1_MARS][LC_P2_A] = MARS_A;
      lv_pl_arr[LC_P1_MARS][LC_P2_C] = MARS_C;
      lv_pl_arr[LC_P1_MARS][LC_P2_ORB] = MARSORBIT;
      lv_pl_arr[LC_P1_MARS][LC_P2_ECC] = MARSECCENTRICITY;
      lv_pl_arr[LC_P1_MARS][LC_P2_INC] = MARSINCLINATION;
      lv_pl_arr[LC_P1_MARS][LC_P2_LON] = MARSLONGITUDE;
      lv_pl_arr[LC_P1_MARS][LC_P2_PER] = MARSPERIAPSIS;
      lv_pl_arr[LC_P1_MARS][LC_P2_ASC] = MARSASCENDING;
      lv_pl_arr[LC_P1_MARS][LC_P2_ORB_DT] = MARSORBIT_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_ECC_DT] = MARSECCENTRICITY_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_INC_DT] = MARSINCLINATION_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_LON_DT] = MARSLONGITUDE_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_PER_DT] = MARSPERIAPSIS_DT;
      lv_pl_arr[LC_P1_MARS][LC_P2_ASC_DT] = MARSASCENDING_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_GM] = JUPITERGM;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_YEAR] = JUPITERYEAR;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_DAY] = JUPITERDAY;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_FLATNESS] = JUPITERFLATNESS;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_A] = JUPITER_A;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_C] = JUPITER_C;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ORB] = JUPITERORBIT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ECC] = JUPITERECCENTRICITY;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_INC] = JUPITERINCLINATION;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_LON] = JUPITERLONGITUDE;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_PER] = JUPITERPERIAPSIS;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ASC] = JUPITERASCENDING;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ORB_DT] = JUPITERORBIT_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ECC_DT] =\
            JUPITERECCENTRICITY_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_INC_DT] =\
            JUPITERINCLINATION_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_LON_DT] =\
            JUPITERLONGITUDE_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_PER_DT] =\
            JUPITERPERIAPSIS_DT;
      lv_pl_arr[LC_P1_JUPITER][LC_P2_ASC_DT] =\
            JUPITERASCENDING_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_GM] = SATURNGM;
      lv_pl_arr[LC_P1_SATURN][LC_P2_YEAR] = SATURNYEAR;
      lv_pl_arr[LC_P1_SATURN][LC_P2_DAY] = SATURNDAY;
      lv_pl_arr[LC_P1_SATURN][LC_P2_FLATNESS] = SATURNFLATNESS;
      lv_pl_arr[LC_P1_SATURN][LC_P2_A] = SATURN_A;
      lv_pl_arr[LC_P1_SATURN][LC_P2_C] = SATURN_C;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ORB] = SATURNORBIT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ECC] = SATURNECCENTRICITY;
      lv_pl_arr[LC_P1_SATURN][LC_P2_INC] = SATURNINCLINATION;
      lv_pl_arr[LC_P1_SATURN][LC_P2_LON] = SATURNLONGITUDE;
      lv_pl_arr[LC_P1_SATURN][LC_P2_PER] = SATURNPERIAPSIS;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ASC] = SATURNASCENDING;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ORB_DT] = SATURNORBIT_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ECC_DT] =\
            SATURNECCENTRICITY_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_INC_DT] =\
            SATURNINCLINATION_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_LON_DT] = SATURNLONGITUDE_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_PER_DT] = SATURNPERIAPSIS_DT;
      lv_pl_arr[LC_P1_SATURN][LC_P2_ASC_DT] = SATURNASCENDING_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_GM] = URANUSGM;
      lv_pl_arr[LC_P1_URANUS][LC_P2_YEAR] = URANUSYEAR;
      lv_pl_arr[LC_P1_URANUS][LC_P2_DAY] = URANUSDAY;
      lv_pl_arr[LC_P1_URANUS][LC_P2_FLATNESS] = URANUSFLATNESS;
      lv_pl_arr[LC_P1_URANUS][LC_P2_A] = URANUS_A;
      lv_pl_arr[LC_P1_URANUS][LC_P2_C] = URANUS_C;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ORB] = URANUSORBIT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ECC] = URANUSECCENTRICITY;
      lv_pl_arr[LC_P1_URANUS][LC_P2_INC] = URANUSINCLINATION;
      lv_pl_arr[LC_P1_URANUS][LC_P2_LON] = URANUSLONGITUDE;
      lv_pl_arr[LC_P1_URANUS][LC_P2_PER] = URANUSPERIAPSIS;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ASC] = URANUSASCENDING;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ORB_DT] = URANUSORBIT_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ECC_DT] =\
            URANUSECCENTRICITY_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_INC_DT] =\
            URANUSINCLINATION_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_LON_DT] = URANUSLONGITUDE_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_PER_DT] = URANUSPERIAPSIS_DT;
      lv_pl_arr[LC_P1_URANUS][LC_P2_ASC_DT] = URANUSASCENDING_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_GM] = NEPTUNEGM;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_YEAR] = NEPTUNEYEAR;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_DAY] = NEPTUNEDAY;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_FLATNESS] = NEPTUNEFLATNESS;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_A] = NEPTUNE_A;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_C] = NEPTUNE_C;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ORB] = NEPTUNEORBIT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ECC] = NEPTUNEECCENTRICITY;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_INC] = NEPTUNEINCLINATION;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_LON] = NEPTUNELONGITUDE;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_PER] = NEPTUNEPERIAPSIS;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ASC] = NEPTUNEASCENDING;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ORB_DT] = NEPTUNEORBIT_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ECC_DT] =\
            NEPTUNEECCENTRICITY_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_INC_DT] =\
            NEPTUNEINCLINATION_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_LON_DT] =\
            NEPTUNELONGITUDE_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_PER_DT] =\
            NEPTUNEPERIAPSIS_DT;
      lv_pl_arr[LC_P1_NEPTUNE][LC_P2_ASC_DT] =\
            NEPTUNEASCENDING_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_GM] = PLUTOGM;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_YEAR] = PLUTOYEAR;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_DAY] = PLUTODAY;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_FLATNESS] = PLUTOFLATNESS;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_A] = PLUTO_A;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_C] = PLUTO_C;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ORB] = PLUTOORBIT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ECC] = PLUTOECCENTRICITY;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_INC] = PLUTOINCLINATION;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_LON] = PLUTOLONGITUDE;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_PER] = PLUTOPERIAPSIS;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ASC] = PLUTOASCENDING;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ORB_DT] = PLUTOORBIT_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ECC_DT] =\
            PLUTOECCENTRICITY_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_INC_DT] = PLUTOINCLINATION_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_LON_DT] = PLUTOLONGITUDE_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_PER_DT] = PLUTOPERIAPSIS_DT;
      lv_pl_arr[LC_P1_PLUTO][LC_P2_ASC_DT] = PLUTOASCENDING_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_GM] = CERESGM;
      lv_pl_arr[LC_P1_CERES][LC_P2_YEAR] = CERESYEAR;
      lv_pl_arr[LC_P1_CERES][LC_P2_DAY] = CERESDAY;
      lv_pl_arr[LC_P1_CERES][LC_P2_FLATNESS] = CERESFLATNESS;
      lv_pl_arr[LC_P1_CERES][LC_P2_A] = CERES_A;
      lv_pl_arr[LC_P1_CERES][LC_P2_C] = CERES_C;
      lv_pl_arr[LC_P1_CERES][LC_P2_ORB] = CERESORBIT;
      lv_pl_arr[LC_P1_CERES][LC_P2_ECC] = CERESECCENTRICITY;
      lv_pl_arr[LC_P1_CERES][LC_P2_INC] = CERESINCLINATION;
      lv_pl_arr[LC_P1_CERES][LC_P2_LON] = CERESLONGITUDE;
      lv_pl_arr[LC_P1_CERES][LC_P2_PER] = CERESPERIAPSIS;
      lv_pl_arr[LC_P1_CERES][LC_P2_ASC] = CERESASCENDING;
      lv_pl_arr[LC_P1_CERES][LC_P2_ORB_DT] = CERESORBIT_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_ECC_DT] =\
            CERESECCENTRICITY_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_INC_DT] = CERESINCLINATION_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_LON_DT] = CERESLONGITUDE_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_PER_DT] = CERESPERIAPSIS_DT;
      lv_pl_arr[LC_P1_CERES][LC_P2_ASC_DT] = CERESASCENDING_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_GM] = ERISGM;
      lv_pl_arr[LC_P1_ERIS][LC_P2_YEAR] = ERISYEAR;
      lv_pl_arr[LC_P1_ERIS][LC_P2_DAY] = ERISDAY;
      lv_pl_arr[LC_P1_ERIS][LC_P2_FLATNESS] = ERISFLATNESS;
      lv_pl_arr[LC_P1_ERIS][LC_P2_A] = ERIS_A;
      lv_pl_arr[LC_P1_ERIS][LC_P2_C] = ERIS_C;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ORB] = ERISORBIT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ECC] = ERISECCENTRICITY;
      lv_pl_arr[LC_P1_ERIS][LC_P2_INC] = ERISINCLINATION;
      lv_pl_arr[LC_P1_ERIS][LC_P2_LON] = ERISLONGITUDE;
      lv_pl_arr[LC_P1_ERIS][LC_P2_PER] = ERISPERIAPSIS;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ASC] = ERISASCENDING;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ORB_DT] = ERISORBIT_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ECC_DT] = ERISECCENTRICITY_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_INC_DT] = ERISINCLINATION_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_LON_DT] = ERISLONGITUDE_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_PER_DT] = ERISPERIAPSIS_DT;
      lv_pl_arr[LC_P1_ERIS][LC_P2_ASC_DT] = ERISASCENDING_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_GM] = MAKEMAKEGM;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_YEAR] = MAKEMAKEYEAR;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_DAY] = MAKEMAKEDAY;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_FLATNESS] =\
            MAKEMAKEFLATNESS;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_A] = MAKEMAKE_A;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_C] = MAKEMAKE_C;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ORB] = MAKEMAKEORBIT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ECC] =\
            MAKEMAKEECCENTRICITY;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_INC] = MAKEMAKEINCLINATION;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_LON] = MAKEMAKELONGITUDE;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_PER] = MAKEMAKEPERIAPSIS;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ASC] = MAKEMAKEASCENDING;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ORB_DT] = MAKEMAKEORBIT_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ECC_DT] =\
            MAKEMAKEECCENTRICITY_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_INC_DT] =\
            MAKEMAKEINCLINATION_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_LON_DT] =\
            MAKEMAKELONGITUDE_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_PER_DT] =\
            MAKEMAKEPERIAPSIS_DT;
      lv_pl_arr[LC_P1_MAKEMAKE][LC_P2_ASC_DT] =\
            MAKEMAKEASCENDING_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_GM] = HAUMEAGM;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_YEAR] = HAUMEAYEAR;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_DAY] = HAUMEADAY;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_FLATNESS] = HAUMEAFLATNESS;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_A] = HAUMEA_A;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_C] = HAUMEA_C;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ORB] = HAUMEAORBIT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ECC] = HAUMEAECCENTRICITY;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_INC] = HAUMEAINCLINATION;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_LON] = HAUMEALONGITUDE;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_PER] = HAUMEAPERIAPSIS;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ASC] = HAUMEAASCENDING;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ORB_DT] = HAUMEAORBIT_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ECC_DT] =\
            HAUMEAECCENTRICITY_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_INC_DT] =\
            HAUMEAINCLINATION_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_LON_DT] = HAUMEALONGITUDE_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_PER_DT] = HAUMEAPERIAPSIS_DT;
      lv_pl_arr[LC_P1_HAUMEA][LC_P2_ASC_DT] = HAUMEAASCENDING_DT;
      if (0 < lv_pl_jtwoktime && lv_pl_jtwoktime < 1.0 / 32.0) {
         (void) plsettime(uet2j2k(timee()));
      }
      lv_pl_earth_year = EARTHYEAR;
   }
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
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
   if (pa_ind < LC_P1_PREV_PL || LC_P1_COUNT <= pa_ind) {
      retvalu = LC_P1_ERR;
   } else {
      pl_ind = pl(pa_ind);
      retvalu = (lv_pl_arr[pl_ind][pb_bb] + lv_pl_jtwoktime *\
            lv_pl_arr[pl_ind][pb_bbd]);
   }
   return (retvalu);
}
long pl(long plnt)
{
   return (lf_pl_init(plnt));
}
double plsettime(double jtwokdate)
{
   lv_pl_jtwoktime = jtwokdate * JD;
   return (lv_pl_jtwoktime);
}
double pl_gm(long plnt)
{
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_GM];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_GM];
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
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_YEAR];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_YEAR];
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
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_DAY];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_DAY];
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
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_FLATNESS];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_FLATNESS];
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
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_A];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_A];
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
   // local-use C lv_pl_arr;
   // local-use C lv_pl_ind;
   double retvalu;
   (void) lf_pl_init(plnt);
   if (LC_P1_SUN <= plnt && plnt < LC_P1_COUNT) {
      retvalu = lv_pl_arr[plnt][LC_P2_C];
   } else if (plnt == LC_P1_PREV_PL) {
      retvalu = lv_pl_arr[lv_pl_ind][LC_P2_C];
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = fmodu(pl_longitude(plnt) - pl_periapsis(plnt)\
            , TAU);
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      yra = pl_year(plnt);
      retvalu = divi(yra * lv_pl_earth_year, fabs(yra -\
            lv_pl_earth_year), 0.0);
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
      retvalu = LC_P1_ERR;
   } else {
      retvalu = 2.0 * TAU * pl_a(plnt) * pl_b(plnt) *\
            pl_c(plnt) / 3.0;
   }
   return (retvalu);
}
double plvolume(void)
{
   // local-use C lv_pl_ind;
   return (pl_volume(LC_P1_PREV_PL));
}
double pl_density(long plnt)
{
   double retvalu;
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   if (plnt < LC_P1_PREV_PL || LC_P1_COUNT <= plnt) {
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
   // local-use C lv_pl_helio_arr;
   // local-use C lv_pl_geo_arr;
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
   if (lf_pl_init(plnt) < 0) {
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
      lv_pl_helio_arr[0] = (dxx_m * (cw * co - swci * so) -\
            dyy_m * (sw * co + cwci * so));
      lv_pl_helio_arr[1] = (dxx_m * (cw * so + swci * co) -\
            dyy_m * (sw * so - cwci * co));
      lv_pl_helio_arr[2] = (dxx_m * (sw * si) + dyy_m * (cw *\
            si));
      obl_rad = earth_obliquity(jtwok);
      co = cos(obl_rad);
      so = sin(obl_rad);
      lv_pl_geo_arr[0] = lv_pl_helio_arr[0];
      lv_pl_geo_arr[1] = co * lv_pl_helio_arr[1] - so *\
            lv_pl_helio_arr[2];
      lv_pl_geo_arr[2] = so * lv_pl_helio_arr[1] + co *\
            lv_pl_helio_arr[2];
      retvalu = hypot3(lv_pl_helio_arr[0], lv_pl_helio_arr[1]\
            , lv_pl_helio_arr[2]);
   }
   return (retvalu);
}
double plhelio(long indd)
{
   // local-use C lv_pl_helio_arr;
   double ret_val;
   if (0 <= indd && indd < 3) {
      ret_val = lv_pl_helio_arr[indd];
   } else {
      ret_val = 0;
   }
   return (ret_val);
}
double plgeo(long indd)
{
   // local-use C lv_pl_geo_arr;
   double ret_val;
   if (0 <= indd && indd < 3) {
      ret_val = lv_pl_geo_arr[indd];
   } else {
      ret_val = 0;
   }
   return (ret_val);
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
double earth_radius(double lat_deg)
{
   return (pl_aradius(LC_P1_EARTH, lat_deg));
}
double earth_tropicalyear(double jtwokdate)
{
   double jy;
   jy = jtwokdate * DAY / JYEAR;
   return (((((2.64E-16) * jy - 7.29E-14) * jy - 6.15359E-8)\
         * jy + 365.2421896698));
}
double earth_distance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg)
{
   return ((great_circle_distance(deg2rad(lata_deg),\
         deg2rad(lona_deg), deg2rad(latb_deg),\
         deg2rad(lonb_deg)) * EARTH_A));
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
double earth_obliquity(double jtwok)
{
   double obl_rad;
   obl_rad = (((-1.24828E-16) * jtwok - 3.56226633E-7) *\
         jtwok + 23.4392889);
   return (deg2rad(obl_rad));
}
double earth_gravity(double lat_deg)
{
   double slatsq;
   double obltsq;
   double kk;
   slatsq = square(sind(lat_deg));
   obltsq = EARTHFLATNESS * (2.0 - EARTHFLATNESS);
   kk = (((1.0 - EARTHFLATNESS) * EARTHGRAVITYB) -\
         EARTHGRAVITYA);
   return ((EARTHGRAVITYA + kk * slatsq) / sqrt(1.0 - obltsq\
         * slatsq));
}
double earth_gravity_height(double lat_deg
      , double height_m)
{
   return ((earth_gravity(lat_deg) - height_m * 2.0 * EARTHGM\
         / cube(EARTH_A)));
}
#define LC_ISA_TEMPERATURE 0
#define LC_ISA_PRESSURE 1
#define LC_ISA_DENSITY 2
#define LC_ISA_XHEIGHT 0
#define LC_ISA_XTEMPERATURE 1
#define LC_ISA_XLAPSERATE 2
#define LC_ISA_XPRESSURE 3
#define LC_ISA_XDENSITY 4
static double lv_isa_arr[7][5];
static double lv_isa_magic = 0.0;
static double lf_isa_calc(double height_m
      , long state_x)
{
   // local-use C lv_isa_arr;
   // local-use C lv_isa_magic;
   long h_ind;
   double air_k_per_m;
   double expon;
   double this_temp;
   double delta_h;
   double ret_val;
   if (! ismagic(lv_isa_magic)) {
      lv_isa_arr[0][LC_ISA_XHEIGHT] = 0;
      lv_isa_arr[0][LC_ISA_XTEMPERATURE] = 288.15;
      lv_isa_arr[0][LC_ISA_XLAPSERATE] = -0.0065;
      lv_isa_arr[0][LC_ISA_XPRESSURE] = ATM;
      lv_isa_arr[0][LC_ISA_XDENSITY] = 1.2250;
      lv_isa_arr[1][LC_ISA_XHEIGHT] = 11000;
      lv_isa_arr[1][LC_ISA_XTEMPERATURE] = 216.65;
      lv_isa_arr[1][LC_ISA_XLAPSERATE] = +0.0;
      lv_isa_arr[1][LC_ISA_XPRESSURE] = 22632.10;
      lv_isa_arr[1][LC_ISA_XDENSITY] = 0.36391;
      lv_isa_arr[2][LC_ISA_XHEIGHT] = 20000;
      lv_isa_arr[2][LC_ISA_XTEMPERATURE] = 216.65;
      lv_isa_arr[2][LC_ISA_XLAPSERATE] = +0.001;
      lv_isa_arr[2][LC_ISA_XPRESSURE] = 5474.89;
      lv_isa_arr[2][LC_ISA_XDENSITY] = 0.08803;
      lv_isa_arr[3][LC_ISA_XHEIGHT] = 32000;
      lv_isa_arr[3][LC_ISA_XTEMPERATURE] = 228.65;
      lv_isa_arr[3][LC_ISA_XLAPSERATE] = +0.0028;
      lv_isa_arr[3][LC_ISA_XPRESSURE] = 868.02;
      lv_isa_arr[3][LC_ISA_XDENSITY] = 0.01322;
      lv_isa_arr[4][LC_ISA_XHEIGHT] = 47000;
      lv_isa_arr[4][LC_ISA_XTEMPERATURE] = 270.65;
      lv_isa_arr[4][LC_ISA_XLAPSERATE] = +0.0;
      lv_isa_arr[4][LC_ISA_XPRESSURE] = 110.91;
      lv_isa_arr[4][LC_ISA_XDENSITY] = 0.00143;
      lv_isa_arr[5][LC_ISA_XHEIGHT] = 51000;
      lv_isa_arr[5][LC_ISA_XTEMPERATURE] = 270.65;
      lv_isa_arr[5][LC_ISA_XLAPSERATE] = -0.0028;
      lv_isa_arr[5][LC_ISA_XPRESSURE] = 66.94;
      lv_isa_arr[5][LC_ISA_XDENSITY] = 8.6E-4;
      lv_isa_arr[6][LC_ISA_XHEIGHT] = 71000;
      lv_isa_arr[6][LC_ISA_XTEMPERATURE] = 214.65;
      lv_isa_arr[6][LC_ISA_XLAPSERATE] = -0.002;
      lv_isa_arr[6][LC_ISA_XPRESSURE] = 3.96;
      lv_isa_arr[6][LC_ISA_XDENSITY] = 6.4E-5;
      lv_isa_magic = magicset();
   }
   h_ind = 6;
   while (height_m < lv_isa_arr[h_ind][0] && 0 < h_ind) {
      h_ind -= 1;
   }
   delta_h = height_m - lv_isa_arr[h_ind][LC_ISA_XHEIGHT];
   this_temp = lv_isa_arr[h_ind][LC_ISA_XTEMPERATURE] +\
         lv_isa_arr[h_ind][LC_ISA_XLAPSERATE] * delta_h;
   if (state_x == LC_ISA_TEMPERATURE) {
      ret_val = this_temp;
   } else {
      air_k_per_m = GRAVITY * AIR_MASS / GAS;
      if (iszero(lv_isa_arr[h_ind][LC_ISA_XLAPSERATE])) {
         ret_val = exp(-air_k_per_m * delta_h /\
               lv_isa_arr[h_ind][LC_ISA_XTEMPERATURE]);
      } else {
         expon = air_k_per_m /\
               lv_isa_arr[h_ind][LC_ISA_XLAPSERATE];
         if (state_x == LC_ISA_DENSITY) {
            expon += 1;
         }
         ret_val = pow(lv_isa_arr[h_ind][LC_ISA_XTEMPERATURE]\
               / this_temp, expon);
      }
      if (state_x == LC_ISA_PRESSURE) {
         ret_val *= lv_isa_arr[h_ind][LC_ISA_XPRESSURE];
      } else {
         ret_val *= lv_isa_arr[h_ind][LC_ISA_XDENSITY];
      }
   }
   return (ret_val);
}
double isa_temp(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_TEMPERATURE));
}
double isa_pres(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_PRESSURE));
}
double isa_dens(double height_m)
{
   return (lf_isa_calc(height_m, LC_ISA_DENSITY));
}
double vin_distance(double lata_deg
      , double lona_deg
      , double latb_deg
      , double lonb_deg
      , double *ret_bearings_arr_p)
{
   double retvalu;
   double rad_arr[2];
   retvalu = EARTH_A * ellipsoid_distance(EARTHFLATNESS,\
         deg2rad(lata_deg), deg2rad(lona_deg),\
         deg2rad(latb_deg), deg2rad(lonb_deg), rad_arr) / METER;
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
   fltnss = EARTHFLATNESS;
   retvalu = rad2deg(ellipsoid_destination(fltnss,\
         deg2rad(lata_deg), deg2rad(lona_deg),\
         deg2rad(heading_deg), dist_m * METER / EARTH_A,\
         rad_arr));
   ret_dest_arr_p[0] = rad2deg(rad_arr[0]);
   ret_dest_arr_p[1] = rad2deg(rad_arr[1]);
   return (retvalu);
}
