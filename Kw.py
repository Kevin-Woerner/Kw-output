#    Copyright (C) 2020 by Kevin D. Woerner
##-# =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
##-# =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
##-# =KDW= ######### SRC $KWROOT/codekdw/kw-lib/Kw.fwipp ########
# 2020-07-20 kdw  For Changelog, See File varylog
import sys
import math
import time
KILOGRAM = 1.0
METER = 1.0
SECOND = 1.0
KELVIN = 1.0
AMPERE = 1.0
COULOMB = AMPERE * SECOND
MOLE = 1.0
CANDELA = 1.0
BIT = 1.0
RADIAN = 1.0
STERADIAN = RADIAN * RADIAN
METRE = METER
KG = KILOGRAM
RAD = RADIAN
E = math.exp(1.0)
TAU = 8.0 * math.atan2(1.0, 1.0) / RAD
PHI = 0.5 + math.sqrt(5.0) / 2.0
LNTWO = math.log(2.0)
LNTEN = math.log(10.0)
SQRTTWO = math.sqrt(2.0)
EULER = 0.57721566490153286060651209008240243104215934
FEIGENBAUM = 4.669201609102990671853203820466201617258
APERY = 1.20205690315959428539973816151144999076498629
PI = TAU / 2.0
YOTTA = 1.0E+24
ZETTA = 1.0E+21
EXA = 1.0E+18
PETA = 1.0E+15
TERA = 1.0E+12
GIGA = 1.0E+9
MEGA = 1.0E+6
KILO = 1.0E+3
HECTO = 1.0E+2
DECA = 1.0E+1
DECI = 1.0E-1
CENTI = 1.0E-2
MILLI = 1.0E-3
MICRO = 1.0E-6
NANO = 1.0E-9
PICO = 1.0E-12
FEMTO = 1.0E-15
ATTO = 1.0E-18
ZEPTO = 1.0E-21
YOCTO = 1.0E-24
KIBI = 1024.0
MEBI = KIBI * KIBI
GIBI = MEBI * KIBI
TEBI = GIBI * KIBI
PEBI = TEBI * KIBI
EXBI = PEBI * KIBI
ZEBI = EXBI * KIBI
YOBI = ZEBI * KIBI
MPS = METER / SECOND
MPSS = METER / (SECOND * SECOND)
UNITGM = METER * MPS * MPS
NEWTON = KILOGRAM * MPSS
JOULE = NEWTON * METER
PA = NEWTON / (METER * METER)
WATT = JOULE / SECOND
HERTZ = 1.0 / SECOND
AMP = AMPERE
VOLT = WATT / AMPERE
OHM = VOLT / AMPERE
HENRY = OHM * SECOND
FARAD = COULOMB / VOLT
SIEMENS = 1.0 / OHM
WEBER = VOLT * SECOND
TESLA = WEBER / (METER * METER)
LUMEN = CANDELA * STERADIAN
LUX = LUMEN / (METER * METER)
BOLTZMANN = 1.380649E-23 * JOULE / KELVIN
BOLTZMANN_ERR = 0
ELECTRONCHARGE = 1.602176634E-19 * COULOMB
ELECTRONCHARGE_ERR = 0
LIGHT = 2.99792458E+8 * METER / SECOND
LIGHT_ERR = 0
AVOGADRO = 6.02214076E+23 / MOLE
AVOGADRO_ERR = 0
PLANCK = 6.62607015E-34 * JOULE * SECOND
PLANCK_ERR = 0
KCD = 6.83E+2 * LUMEN / WATT
KCD_ERR = 0
dvCsHz = 9.19263177E+9 / SECOND
dvCsWAVELENGTH = LIGHT / dvCsHz
dvCsWAVENUMBER = 1.0 / dvCsWAVELENGTH
dvCsENERGY = PLANCK * dvCsHz
dvCs_ERR = 0
kB = BOLTZMANN
kB_ERR = BOLTZMANN_ERR
ELEMENTARYCHARGE = ELECTRONCHARGE
ELEMENTARYCHARGE_ERR = ELECTRONCHARGE_ERR
PLANCKBAR = PLANCK / TAU
PLANCKBAR_ERR = PLANCK_ERR
h = PLANCK
h_ERR = PLANCK_ERR
HBAR = PLANCKBAR
HBAR_ERR = PLANCKBAR_ERR
BOLTZMANN_REC = 1.0 / BOLTZMANN
ELECTRONCHARGE_REC = 1.0 / ELECTRONCHARGE
LIGHT_REC = 1.0 / LIGHT
AVOGADRO_REC = 1.0 / AVOGADRO
dvCsHz_REC = 1.0 / dvCsHz
PLANCK_REC = 1.0 / PLANCK
h_REC = PLANCK_REC
kB_REC = BOLTZMANN_REC
KGHz = KG * LIGHT * LIGHT / PLANCK
KGWAVELENGTH = LIGHT / KGHz
KGWAVENUMBER = 1.0 / KGWAVELENGTH
KGENERGY = PLANCK * KGHz
GRAVITY = 9.80665 * MPSS
GRAVITY_ERR = 0
ATMOSPHERE = 1.01325E+5 * PA
ATMOSPHERE_ERR = 0
AU = 1.495978707E+11 * METER
AU_ERR = 0
JOSEPHSON = 2.0 * ELECTRONCHARGE / PLANCK
JOSEPHSON_ERR = 0
VONKLITZING = PLANCK / (ELECTRONCHARGE * ELECTRONCHARGE)
VONKLITZING_ERR = 0
FARADAY = ELECTRONCHARGE * AVOGADRO
FARADAY_ERR = 0
GAS = BOLTZMANN * AVOGADRO
GAS_ERR = 0
GRAVITATION = 6.67430E-11 * UNITGM / KILOGRAM
GRAVITATION_ERR = 2.2E-5
RYDBERG = 1.0973731568160E+7 * LIGHT / METER
RYDBERG_ERR = 1.9E-12
G = GRAVITATION
G_ERR = GRAVITATION_ERR
ALPHA = 7.2973525664E-3
ALPHA_ERR = 2.3E-10
ALPHA_REC = 1.0 / ALPHA
ALPHA_REC_ERR = ALPHA_ERR
FLTSIG = 23
FLTMAN = 8
FLTEPS = 1.1920928955078125E-7
FLTMAX = 3.402823466385288598E+38
DBLMAXLN = LNTWO * 1024
DBLSIG = 52
DBLMAN = 11
DBLEPS = 2.220446049250313E-16
DBLMAX = 1.79769313486227E+308
SI16MAX = 32767
SI16MIN = -32768
UI16MAX = 65535
SI32MAX = 2147483647
SI32MIN = -2147483648
UI32MAX = 4294967295
INTMAX = SI32MAX
MONTHS_IN_YEAR = 12
MINUTE = 60.0 * SECOND
HOUR = 60.0 * MINUTE
DAY = 24.0 * HOUR
EARTHSOLARDAY = DAY
WEEK = 7.0 * DAY
FLICK = SECOND / 705600000.0
JULIANDAY = DAY
JULIANYEAR = 365.25 * JULIANDAY
JULIANCENTURY = 100 * JULIANYEAR
JULIANMILLENNIUM = 1000 * JULIANYEAR
JDAY = JULIANDAY
JYEAR = JULIANYEAR
JCENTURY = JULIANCENTURY
JMILLENNIUM = JULIANMILLENNIUM
JD = JULIANDAY
JY = JULIANYEAR
JC = JULIANCENTURY
JM = JULIANMILLENNIUM
JEWISH_FIRST_MONTH = 7
GYEAR = 365.2425 * DAY
GREGORIANYEAR = GYEAR
KWT = 0.1875 * SECOND
UET = SECOND
J2K = DAY
J2KDAY = DAY
JDSEC_AT_0GREGORIAN = 1721058.5 * JDAY
JDSEC_AT_0KWT = 2437240.66125 * JDAY
JDSEC_AT_0J2K = 2451545.0 * JDAY
JDSEC_AT_0UET = 2440587.5 * JDAY
TT_AT_0TAI = 32.184 * SECOND
TT_AT_0UT1 = 68.97 * SECOND
GRAM = 0.001 * KILOGRAM
POUND = 0.45359237 * KILOGRAM
LB = POUND
OUNCE = 0.0625 * POUND
TON = 2000.0 * POUND
TONNE = 1000.0 * KILOGRAM
GRAIN = POUND / 7000
CARAT = 0.2 * GRAM
MM = MILLI * METER
INCH = 0.0254 * METER
FOOT = 12.0 * INCH
FT = FOOT
YARD = 3.0 * FOOT
MILE = 5280.0 * FOOT
POINT = INCH / 72.0
STANDARDGRAVITY = GRAVITY
EARTHGRAVITYA = 9.7803253359 * MPSS
EARTHGRAVITYB = 9.8321849378 * MPSS
GRAVITATIONNASA = 6.67259E-11 * UNITGM / KILOGRAM
GRAVITATIONIERS = 6.67428E-11 * UNITGM / KILOGRAM
KGF = KILOGRAM * GRAVITY
LBF = POUND * GRAVITY
ATM = ATMOSPHERE
STANDARDATMOSPHERE = ATMOSPHERE
TORR = ATMOSPHERE / 760
BAR = 1E+5 * PA
MMHG = 13595.1 * KILOGRAM * GRAVITY * MM / (METER * METER *\
      METER)
INHG = MMHG * INCH / MM
PSI = POUND * GRAVITY / (INCH * INCH)
DEGC = KELVIN
DEGF = KELVIN / 1.8
DEGR = DEGF
K_AT_0TEMPC = 273.15 * DEGC
K_AT_0TEMPF = 459.67 * DEGF
K_AT_0TEMPR = 0.0 * DEGR
MACH = 331.46 * MPS
MPH = MILE / HOUR
HECTARE = 10000 * METER * METER
ARE = 100 * METER * METER
ACRE = MILE * MILE / 640.0
BARN = 1E-28 * METER * METER
LITER = METER * METER * METER / 1000.0
LITRE = LITER
GALLON = 231.0 * INCH * INCH * INCH
QUART = GALLON / 4.0
PINT = QUART / 2.0
CUP = PINT / 2.0
FLOZ = CUP / 8.0
TBLSP = FLOZ / 2.0
TSP = TBLSP / 3.0
BARREL = 42.0 * GALLON
AH = AMPERE * HOUR
CALORIE = 4.184 * JOULE
CAL_IT = 4.1868 * JOULE
CAL_TH = CALORIE
CAL = CALORIE
BTU_TH = CAL_TH * POUND * DEGF / (GRAM * DEGC)
BTU_IT = CAL_IT * POUND * DEGF / (GRAM * DEGC)
BTU = CALORIE * POUND * DEGF / (GRAM * DEGC)
HP = 550.0 * FOOT * POUND * GRAVITY / SECOND
HORSEPOWER = HP
HPMETRIC = 75 * KILOGRAM * GRAVITY * MPS
ELECTRONVOLT = ELECTRONCHARGE * VOLT
ERG = 1E-7 * JOULE
FOE = 1E+44 * JOULE
AAABATTERYCHARGE = 2.1 * AH
AAABATTERYVOLTAGE = 1.5 * VOLT
AAABATTERY = AAABATTERYCHARGE * AAABATTERYVOLTAGE
AAABATTERYENERGY = AAABATTERY
AABATTERYCHARGE = 2.7 * AH
AABATTERYVOLTAGE = 1.5 * VOLT
AABATTERY = AABATTERYCHARGE * AABATTERYVOLTAGE
AABATTERYENERGY = AABATTERY
CBATTERYCHARGE = 8.0 * AH
CBATTERYVOLTAGE = 1.5 * VOLT
CBATTERY = CBATTERYCHARGE * CBATTERYVOLTAGE
CBATTERYENERGY = CBATTERY
DBATTERYCHARGE = 12 * AH
DBATTERYVOLTAGE = 1.5 * VOLT
DBATTERY = DBATTERYCHARGE * DBATTERYVOLTAGE
DBATTERYENERGY = DBATTERY
NINEVOLTCHARGE = 0.565 * AH
NINEVOLTVOLTAGE = 9.0 * VOLT
NINEVOLT = NINEVOLTCHARGE * NINEVOLTVOLTAGE
NINEVOLTENERGY = NINEVOLT
NINEVOLTBATTERYCHARGE = NINEVOLTCHARGE
NINEVOLTBATTERYVOLTAGE = NINEVOLTVOLTAGE
NINEVOLTBATTERY = NINEVOLTBATTERYCHARGE * NINEVOLTBATTERYVOLTAGE
NINEVOLTBATTERYENERGY = NINEVOLTBATTERY
PHONEBATTERYCHARGE = 3.0 * AH
PHONEBATTERYVOLTAGE = 3.8 * VOLT
PHONEBATTERY = PHONEBATTERYCHARGE * PHONEBATTERYVOLTAGE
PHONEBATTERYENERGY = PHONEBATTERY
CARBATTERYCHARGE = 45.0 * AH
CARBATTERYVOLTAGE = 12.0 * VOLT
CARBATTERY = CARBATTERYCHARGE * CARBATTERYVOLTAGE
CARBATTERYENERGY = CARBATTERY
MICROWAVEHz = 2.45E+9 / SECOND
MICROWAVEWAVELENGTH = LIGHT / MICROWAVEHz
MICROWAVEWAVENUMBER = 1.0 / MICROWAVEWAVELENGTH
MICROWAVEENERGY = PLANCK * MICROWAVEHz
LFHz = 1.00E+5 / SECOND
LFWAVELENGTH = LIGHT / LFHz
LFWAVENUMBER = 1.0 / LFWAVELENGTH
LFENERGY = PLANCK * LFHz
MFHz = 1.00E+6 / SECOND
MFWAVELENGTH = LIGHT / MFHz
MFWAVENUMBER = 1.0 / MFWAVELENGTH
MFENERGY = PLANCK * MFHz
HFHz = 1.00E+7 / SECOND
HFWAVELENGTH = LIGHT / HFHz
HFWAVENUMBER = 1.0 / HFWAVELENGTH
HFENERGY = PLANCK * HFHz
VHFHz = 1.00E+8 / SECOND
VHFWAVELENGTH = LIGHT / VHFHz
VHFWAVENUMBER = 1.0 / VHFWAVELENGTH
VHFENERGY = PLANCK * VHFHz
UHFHz = 1.00E+9 / SECOND
UHFWAVELENGTH = LIGHT / UHFHz
UHFWAVENUMBER = 1.0 / UHFWAVELENGTH
UHFENERGY = PLANCK * UHFHz
SHFHz = 1.00E+10 / SECOND
SHFWAVELENGTH = LIGHT / SHFHz
SHFWAVENUMBER = 1.0 / SHFWAVELENGTH
SHFENERGY = PLANCK * SHFHz
EHFHz = 1.00E+11 / SECOND
EHFWAVELENGTH = LIGHT / EHFHz
EHFWAVENUMBER = 1.0 / EHFWAVELENGTH
EHFENERGY = PLANCK * EHFHz
THFHz = 1.00E+12 / SECOND
THFWAVELENGTH = LIGHT / THFHz
THFWAVENUMBER = 1.0 / THFWAVELENGTH
THFENERGY = PLANCK * THFHz
FIRHz = 1.00E+12 / SECOND
FIRWAVELENGTH = LIGHT / FIRHz
FIRWAVENUMBER = 1.0 / FIRWAVELENGTH
FIRENERGY = PLANCK * FIRHz
MIRHz = 1.00E+13 / SECOND
MIRWAVELENGTH = LIGHT / MIRHz
MIRWAVENUMBER = 1.0 / MIRWAVELENGTH
MIRENERGY = PLANCK * MIRHz
NIRHz = 1.00E+14 / SECOND
NIRWAVELENGTH = LIGHT / NIRHz
NIRWAVENUMBER = 1.0 / NIRWAVELENGTH
NIRENERGY = PLANCK * NIRHz
REDWAVELENGTH = 7.00E-7 * METER
REDHz = LIGHT / REDWAVELENGTH
REDWAVENUMBER = 1.0 / REDWAVELENGTH
REDENERGY = PLANCK * REDHz
ORANGEWAVELENGTH = 6.20E-7 * METER
ORANGEHz = LIGHT / ORANGEWAVELENGTH
ORANGEWAVENUMBER = 1.0 / ORANGEWAVELENGTH
ORANGEENERGY = PLANCK * ORANGEHz
YELLOWWAVELENGTH = 5.80E-7 * METER
YELLOWHz = LIGHT / YELLOWWAVELENGTH
YELLOWWAVENUMBER = 1.0 / YELLOWWAVELENGTH
YELLOWENERGY = PLANCK * YELLOWHz
YELLOWGREENHz = 540E+12 / SECOND
YELLOWGREENWAVELENGTH = LIGHT / YELLOWGREENHz
YELLOWGREENWAVENUMBER = 1.0 / YELLOWGREENWAVELENGTH
YELLOWGREENENERGY = PLANCK * YELLOWGREENHz
GREENWAVELENGTH = 5.30E-7 * METER
GREENHz = LIGHT / GREENWAVELENGTH
GREENWAVENUMBER = 1.0 / GREENWAVELENGTH
GREENENERGY = PLANCK * GREENHz
BLUEWAVELENGTH = 5.00E-7 * METER
BLUEHz = LIGHT / BLUEWAVELENGTH
BLUEWAVENUMBER = 1.0 / BLUEWAVELENGTH
BLUEENERGY = PLANCK * BLUEHz
VIOLETWAVELENGTH = 4.20E-7 * METER
VIOLETHz = LIGHT / VIOLETWAVELENGTH
VIOLETWAVENUMBER = 1.0 / VIOLETWAVELENGTH
VIOLETENERGY = PLANCK * VIOLETHz
NUVHz = 1.00E+15 / SECOND
NUVWAVELENGTH = LIGHT / NUVHz
NUVWAVENUMBER = 1.0 / NUVWAVELENGTH
NUVENERGY = PLANCK * NUVHz
EUVHz = 1.00E+16 / SECOND
EUVWAVELENGTH = LIGHT / EUVHz
EUVWAVENUMBER = 1.0 / EUVWAVELENGTH
EUVENERGY = PLANCK * EUVHz
UVAWAVELENGTH = 3.60E-7 * METER
UVAHz = LIGHT / UVAWAVELENGTH
UVAWAVENUMBER = 1.0 / UVAWAVELENGTH
UVAENERGY = PLANCK * UVAHz
UVBWAVELENGTH = 3.00E-7 * METER
UVBHz = LIGHT / UVBWAVELENGTH
UVBWAVENUMBER = 1.0 / UVBWAVELENGTH
UVBENERGY = PLANCK * UVBHz
UVCWAVELENGTH = 1.90E-7 * METER
UVCHz = LIGHT / UVCWAVELENGTH
UVCWAVENUMBER = 1.0 / UVCWAVELENGTH
UVCENERGY = PLANCK * UVCHz
SXHz = 3.00E+17 / SECOND
SXWAVELENGTH = LIGHT / SXHz
SXWAVENUMBER = 1.0 / SXWAVELENGTH
SXENERGY = PLANCK * SXHz
SXXWAVELENGTH = 1.00E-9 * METER
SXXHz = LIGHT / SXXWAVELENGTH
SXXWAVENUMBER = 1.0 / SXXWAVELENGTH
SXXENERGY = PLANCK * SXXHz
HXHz = 1.00E+19 / SECOND
HXWAVELENGTH = LIGHT / HXHz
HXWAVENUMBER = 1.0 / HXWAVELENGTH
HXENERGY = PLANCK * HXHz
GAMMAHz = 1.00E+20 / SECOND
GAMMAWAVELENGTH = LIGHT / GAMMAHz
GAMMAWAVENUMBER = 1.0 / GAMMAWAVELENGTH
GAMMAENERGY = PLANCK * GAMMAHz
TURN = TAU * RADIAN
ARCDEGREE = TURN / 360.0
ARCMINUTE = ARCDEGREE / 60.0
ARCSECOND = ARCMINUTE / 60.0
GRAD = TURN / 400.0
ARCDEG = ARCDEGREE
ARCMIN = ARCMINUTE
ARCSEC = ARCSECOND
SQUAREDEGREE = ARCDEGREE * ARCDEGREE
SQDEG = SQUAREDEGREE
SPHERESURFACE = 2 * TAU * STERADIAN
SHANNON = BIT
NAT = BIT / LNTWO
HARTLEY = LNTEN / LNTWO * BIT
HART = HARTLEY
DIT = HARTLEY
BAN = HARTLEY
RPM = TURN / MINUTE
RPS = TURN / SECOND
FINESTRUCTURE = ALPHA
FINESTRUCTURE_ERR = ALPHA_ERR
FINESTRUCTURE_REC = ALPHA_REC
FINESTRUCTURE_REC_ERR = ALPHA_ERR
MAGNETIC = 2.0 * VONKLITZING * ALPHA / LIGHT
MAGNETIC_ERR = ALPHA_ERR
MU0 = MAGNETIC
MU0_ERR = ALPHA_ERR
ELECTRIC = 1.0 / (LIGHT * LIGHT * MU0)
ELECTRIC_ERR = ALPHA_ERR
EPSILON0 = ELECTRIC
EPSILON0_ERR = ALPHA_ERR
COULOMBCONST = 1.0 / (2.0 * TAU * ELECTRIC)
COULOMBCONST_ERR = ALPHA_ERR
PROTONRADIUS = 8.414E-16 * METER
PROTONRADIUS_ERR = 2.2E-3
MOLARMASS = 0.99999999965 * GRAM / MOLE
MOLARMASS_ERR = 2.0E-10
MOLARMASSX = (1.0 - 3.5E-10) * GRAM / MOLE
MOLARMASSX_ERR = 2.0E-10
DALTON = MOLARMASS / AVOGADRO
DALTON_ERR = MOLARMASS_ERR
AMU = DALTON
AMU_ERR = DALTON_ERR
ATOMICMASSUNIT = DALTON
ATOMICMASSUNIT_ERR = DALTON_ERR
UAMU = DALTON
UAMU_ERR = DALTON_ERR
RYDBERGHz = RYDBERG
RYDBERGWAVELENGTH = LIGHT / RYDBERGHz
RYDBERGWAVENUMBER = 1.0 / RYDBERGWAVELENGTH
RYDBERGENERGY = PLANCK * RYDBERGHz
ELECTRONMASSA = 2.0 * RYDBERGHz * PLANCK / (LIGHT * LIGHT *\
      ALPHA * ALPHA)
ELECTRONMASSA_ERR = 2.0 * ALPHA_ERR
ELECTRONMASS = 5.48579909065E-4 * AMU
ELECTRONMASS_ERR = 2.9E-11
ELECTRON_MASS = ELECTRONMASS * AVOGADRO
ELECTRONENERGY = ELECTRONMASS * LIGHT * LIGHT
ELECTRONHz = ELECTRONENERGY / PLANCK
ELECTRONWAVELENGTH = LIGHT / ELECTRONHz
UPQUARKMASS = 0.00216 * AMU
UPQUARKMASS_ERR = 0.2
UPQUARK_MASS = UPQUARKMASS * AVOGADRO
UPQUARKENERGY = UPQUARKMASS * LIGHT * LIGHT
UPQUARKHz = UPQUARKENERGY / PLANCK
UPQUARKWAVELENGTH = LIGHT / UPQUARKHz
DOWNQUARKMASS = 0.00514 * AMU
DOWNQUARKMASS_ERR = 0.1
DOWNQUARK_MASS = DOWNQUARKMASS * AVOGADRO
DOWNQUARKENERGY = DOWNQUARKMASS * LIGHT * LIGHT
DOWNQUARKHz = DOWNQUARKENERGY / PLANCK
DOWNQUARKWAVELENGTH = LIGHT / DOWNQUARKHz
MUONMASS = 0.1134289259 * AMU
MUONMASS_ERR = 2.2E-8
MUON_MASS = MUONMASS * AVOGADRO
MUONENERGY = MUONMASS * LIGHT * LIGHT
MUONHz = MUONENERGY / PLANCK
MUONWAVELENGTH = LIGHT / MUONHz
PROTONMASS = 1.007276466812 * AMU
PROTONMASS_ERR = 8.9E-11
PROTON_MASS = PROTONMASS * AVOGADRO
PROTONENERGY = PROTONMASS * LIGHT * LIGHT
PROTONHz = PROTONENERGY / PLANCK
PROTONWAVELENGTH = LIGHT / PROTONHz
NEUTRONMASS = 1.00866491595 * AMU
NEUTRONMASS_ERR = 4.8E-10
NEUTRON_MASS = NEUTRONMASS * AVOGADRO
NEUTRONENERGY = NEUTRONMASS * LIGHT * LIGHT
NEUTRONHz = NEUTRONENERGY / PLANCK
NEUTRONWAVELENGTH = LIGHT / NEUTRONHz
TAUMASS = 1.90754 * AMU
TAUMASS_ERR = 6.8E-5
TAU_MASS = TAUMASS * AVOGADRO
TAUENERGY = TAUMASS * LIGHT * LIGHT
TAUHz = TAUENERGY / PLANCK
TAUWAVELENGTH = LIGHT / TAUHz
DEUTERONMASS = 2.013553212745 * AMU
DEUTERONMASS_ERR = 2.0E-11
DEUTERON_MASS = DEUTERONMASS * AVOGADRO
HELIONMASS = 3.0149322467175 * AMU
HELIONMASS_ERR = 3.2E-11
HELION_MASS = HELIONMASS * AVOGADRO
TRITONMASS = 3.01550071621 * AMU
TRITONMASS_ERR = 4.0E-11
TRITON_MASS = TRITONMASS * AVOGADRO
ALPHAMASS = 4.001506179127 * AMU
ALPHAMASS_ERR = 1.6E-11
ALPHA_MASS = ALPHAMASS * AVOGADRO
HYDROGENRADIUS = (HBAR / (ELECTRONMASS * LIGHT * ALPHA))
HYDROGENRADIUS_ERR = ALPHA_ERR
BOHRRADIUS = HYDROGENRADIUS
BOHRRADIUS_ERR = ALPHA_ERR
HIHz = 1420405751.7667 * HERTZ
HIWAVELENGTH = LIGHT / HIHz
HIWAVENUMBER = 1.0 / HIWAVELENGTH
HIENERGY = PLANCK * HIHz
HYDROGENLINE = HIWAVELENGTH
HYDROGENLINE_ERR = 6.3E-13
HI = LIGHT / HIHz
HI_ERR = HYDROGENLINE_ERR
PLANCKMASS = math.sqrt(HBAR * LIGHT / GRAVITATION)
PLANCKCHARGE = ELECTRONCHARGE / math.sqrt(ALPHA)
PLANCKENERGY = PLANCKMASS * LIGHT * LIGHT
PLANCKTEMP = PLANCKENERGY / BOLTZMANN
PLANCKLENGTH = HBAR / PLANCKMASS / LIGHT
PLANCKTIME = PLANCKLENGTH / LIGHT
STEFAN = (TAU * TAU * LIGHT * BOLTZMANN) * ((BOLTZMANN /\
      (LIGHT * HBAR)) * (BOLTZMANN / (LIGHT * HBAR)) *\
      (BOLTZMANN / (LIGHT * HBAR))) / 240.0
STEFAN_ERR = 0
PINGPONGBALLRADIUS = 0.02 * METER
GOLFBALLRADIUS = 0.02135 * METER
TENNISBALLRADIUS = 0.03325 * METER
BASEBALLRADIUS = 9.125 * INCH / TAU
SOFTBALLRADIUS = 12 * INCH / TAU
SOCCERBALLRADIUS = 0.69 * METER / TAU
BASKETBALLRADIUS = 0.75 * METER / TAU
PINGPONGBALLMASS = 2.7 * GRAM
GOLFBALLMASS = 45.93 * GRAM
TENNISBALLMASS = 57.7 * GRAM
BASEBALLMASS = 146.5 * GRAM
SOFTBALLMASS = 187 * GRAM
BASKETBALLMASS = 620 * GRAM
SOCCERBALLMASS = 430 * GRAM
MARATHON = 42195 * METER
PENNYTHICKNESS = 1.55E-3 * METER
NICKELTHICKNESS = 1.95E-3 * METER
DIMETHICKNESS = 1.35E-3 * METER
QUARTERTHICKNESS = 1.75E-3 * METER
PENNYRADIUS = 9.525E-3 * METER
NICKELRADIUS = 1.061E-2 * METER
DIMERADIUS = 8.955E-3 * METER
QUARTERRADIUS = 1.213E-2 * METER
PENNYMASS = 2.5 * GRAM
NICKELMASS = 5.0 * GRAM
DIMEMASS = 0.005 * POUND
QUARTERMASS = 0.0125 * POUND
MOONMONTH = 29.530587981 * DAY
MILKYWAYAGE = 8.3E+9 * JYEAR
UNIVERSEAGE = 13.799E+9 * JYEAR
LIGHTYEAR = LIGHT * JYEAR
ASTRONOMICALUNIT = AU
PARSEC = 1296000.0 * AU / TAU
PROXIMACENTAURI = 39.9E+15 * METER
MILKYWAYRADIUS = 6.0E+4 * LIGHTYEAR
GALACTICCENTER = 2.64E+4 * LIGHTYEAR
UNIVERSERADIUS = UNIVERSEAGE * LIGHT
MILKYWAYMASS = 1.4E+42 * KILOGRAM
UNIVERSEMASS = 1.46E+53 * KILOGRAM
SOLARCONSTANT = 1361.0 * WATT / (METER * METER)
EINSTEIN = 4 * TAU * GRAVITATION / (LIGHT * LIGHT * LIGHT *\
      LIGHT)
EINSTEIN_ERR = GRAVITATION_ERR
HUBBLE = 67.66E-3 * METER / (SECOND * PARSEC)
HUBBLE_ERR = 6E-3
BHMASSTEMP = (HBAR * (LIGHT * LIGHT * LIGHT) / (4.0 * TAU *\
      GRAVITATION * BOLTZMANN))
BHMASS_RADIUS = 0.5 * LIGHT * LIGHT / GRAVITATION
BHMASS3_LIFETIME = (PLANCK * (LIGHT * LIGHT * LIGHT * LIGHT))\
      / (2560 * TAU * TAU * GRAVITATION * GRAVITATION)
BHRADIUS2DENSITY = 1.5 * BHMASS_RADIUS / TAU
BHENTROPY_AREA = (TAU * (LIGHT * LIGHT * LIGHT) * BOLTZMANN)\
      / (4 * PLANCK * GRAVITATION)
BEKENSTEININFORMATION = (TAU * TAU * NAT) / (PLANCK * LIGHT)
BEKENSTEINENTROPY = (TAU * TAU * BOLTZMANN) / (PLANCK * LIGHT)
ELEVATIONMAX = 8848.0 * METER
ELEVATIONMIN = -10994.0 * METER
KPGBOUNDARY = 65.5E+6 * JYEAR
TRJBOUNDARY = 199.6E+6 * JYEAR
MILKYWAYDAY = 250.0E+6 * JYEAR
PTRBOUNDARY = 251.4E+6 * JYEAR
NPBOUNDARY = 542.0E+6 * JYEAR
LIFEAGE = 3.85E+9 * JYEAR
GIANTIMPACT = 4.533E+9 * JYEAR
EARTHAGE = 4.56717E+9 * JYEAR
PPQ = 1E-15
PPT = 1E-12
PPB = 1E-9
PPM = 1E-6
MASS = KILOGRAM
LENGTH = METER
DISTANCE = LENGTH
TEMPERATURE = KELVIN
TIME = SECOND
ANGLE = RADIAN
SOLID_ANGLE = STERADIAN
SPEED = LENGTH / TIME
ACCELERATION = SPEED / TIME
FORCE = MASS * ACCELERATION
ENERGY = FORCE * LENGTH
ACTION = ENERGY * TIME
POWER = ENERGY / TIME
AREA = LENGTH * LENGTH
VOLUME = LENGTH * LENGTH * LENGTH
DENSITY = MASS / VOLUME
SPECIFICHEAT = ENERGY / (MASS * TEMPERATURE)
PRESSURE = FORCE / AREA
VISCOSITY = FORCE * TIME / AREA
FREQUENCY = 1 / TIME
CHARGE = AMPERE * SECOND
CURRENT = CHARGE / TIME
VOLTAGE = POWER / CURRENT
RESISTANCE = VOLTAGE / CURRENT
INDUCTANCE = RESISTANCE * TIME
CAPACITANCE = CHARGE / VOLTAGE
CONDUCTANCE = 1.0 / RESISTANCE
MAGNETICFLUX = VOLTAGE * TIME
MAGNETICINDUCTION = MAGNETICFLUX / AREA
cxkilogram = (KILOGRAM)
cxmeter = (METER)
cxsecond = (SECOND)
cxkelvin = (KELVIN)
cxampere = (AMPERE)
cxcoulomb = (COULOMB)
cxmole = (MOLE)
cxcandela = (CANDELA)
cxbit = (BIT)
cxradian = (RADIAN)
cxsteradian = (STERADIAN)
cxmetre = (METRE)
cxkg = (KG)
cxrad = (RAD)
cxe = (E)
cxtau = (TAU)
cxphi = (PHI)
cxlntwo = (LNTWO)
cxlnten = (LNTEN)
cxsqrttwo = (SQRTTWO)
cxeuler = (EULER)
cxfeigenbaum = (FEIGENBAUM)
cxapery = (APERY)
cxpi = (PI)
cxyotta = (YOTTA)
cxzetta = (ZETTA)
cxexa = (EXA)
cxpeta = (PETA)
cxtera = (TERA)
cxgiga = (GIGA)
cxmega = (MEGA)
cxkilo = (KILO)
cxhecto = (HECTO)
cxdeca = (DECA)
cxdeci = (DECI)
cxcenti = (CENTI)
cxmilli = (MILLI)
cxmicro = (MICRO)
cxnano = (NANO)
cxpico = (PICO)
cxfemto = (FEMTO)
cxatto = (ATTO)
cxzepto = (ZEPTO)
cxyocto = (YOCTO)
cxkibi = (KIBI)
cxmebi = (MEBI)
cxgibi = (GIBI)
cxtebi = (TEBI)
cxpebi = (PEBI)
cxexbi = (EXBI)
cxzebi = (ZEBI)
cxyobi = (YOBI)
cxmps = (MPS)
cxmpss = (MPSS)
cxunitgm = (UNITGM)
cxnewton = (NEWTON)
cxjoule = (JOULE)
cxpa = (PA)
cxwatt = (WATT)
cxhertz = (HERTZ)
cxamp = (AMP)
cxvolt = (VOLT)
cxohm = (OHM)
cxhenry = (HENRY)
cxfarad = (FARAD)
cxsiemens = (SIEMENS)
cxweber = (WEBER)
cxtesla = (TESLA)
cxlumen = (LUMEN)
cxlux = (LUX)
cxboltzmann = (BOLTZMANN)
cxboltzmann_err = (BOLTZMANN_ERR)
cxelectroncharge = (ELECTRONCHARGE)
cxelectroncharge_err = (ELECTRONCHARGE_ERR)
cxlight = (LIGHT)
cxlight_err = (LIGHT_ERR)
cxavogadro = (AVOGADRO)
cxavogadro_err = (AVOGADRO_ERR)
cxplanck = (PLANCK)
cxplanck_err = (PLANCK_ERR)
cxkcd = (KCD)
cxkcd_err = (KCD_ERR)
cxdvcshz = (dvCsHz)
cxdvcswavelength = (dvCsWAVELENGTH)
cxdvcswavenumber = (dvCsWAVENUMBER)
cxdvcsenergy = (dvCsENERGY)
cxdvcs_err = (dvCs_ERR)
cxkb = (kB)
cxkb_err = (kB_ERR)
cxelementarycharge = (ELEMENTARYCHARGE)
cxelementarycharge_err = (ELEMENTARYCHARGE_ERR)
cxplanckbar = (PLANCKBAR)
cxplanckbar_err = (PLANCKBAR_ERR)
cxh = (h)
cxh_err = (h_ERR)
cxhbar = (HBAR)
cxhbar_err = (HBAR_ERR)
cxboltzmann_rec = (BOLTZMANN_REC)
cxelectroncharge_rec = (ELECTRONCHARGE_REC)
cxlight_rec = (LIGHT_REC)
cxavogadro_rec = (AVOGADRO_REC)
cxdvcshz_rec = (dvCsHz_REC)
cxplanck_rec = (PLANCK_REC)
cxh_rec = (h_REC)
cxkb_rec = (kB_REC)
cxkghz = (KGHz)
cxkgwavelength = (KGWAVELENGTH)
cxkgwavenumber = (KGWAVENUMBER)
cxkgenergy = (KGENERGY)
cxgravity = (GRAVITY)
cxgravity_err = (GRAVITY_ERR)
cxatmosphere = (ATMOSPHERE)
cxatmosphere_err = (ATMOSPHERE_ERR)
cxau = (AU)
cxau_err = (AU_ERR)
cxjosephson = (JOSEPHSON)
cxjosephson_err = (JOSEPHSON_ERR)
cxvonklitzing = (VONKLITZING)
cxvonklitzing_err = (VONKLITZING_ERR)
cxfaraday = (FARADAY)
cxfaraday_err = (FARADAY_ERR)
cxgas = (GAS)
cxgas_err = (GAS_ERR)
cxgravitation = (GRAVITATION)
cxgravitation_err = (GRAVITATION_ERR)
cxrydberg = (RYDBERG)
cxrydberg_err = (RYDBERG_ERR)
cxg = (G)
cxg_err = (G_ERR)
cxalpha = (ALPHA)
cxalpha_err = (ALPHA_ERR)
cxalpha_rec = (ALPHA_REC)
cxalpha_rec_err = (ALPHA_REC_ERR)
cxfltsig = (FLTSIG)
cxfltman = (FLTMAN)
cxflteps = (FLTEPS)
cxfltmax = (FLTMAX)
cxdblmaxln = (DBLMAXLN)
cxdblsig = (DBLSIG)
cxdblman = (DBLMAN)
cxdbleps = (DBLEPS)
cxdblmax = (DBLMAX)
cxsi16max = (SI16MAX)
cxsi16min = (SI16MIN)
cxui16max = (UI16MAX)
cxsi32max = (SI32MAX)
cxsi32min = (SI32MIN)
cxui32max = (UI32MAX)
cxintmax = (INTMAX)
cxmonths_in_year = (MONTHS_IN_YEAR)
cxminute = (MINUTE)
cxhour = (HOUR)
cxday = (DAY)
cxearthsolarday = (EARTHSOLARDAY)
cxweek = (WEEK)
cxflick = (FLICK)
cxjulianday = (JULIANDAY)
cxjulianyear = (JULIANYEAR)
cxjuliancentury = (JULIANCENTURY)
cxjulianmillennium = (JULIANMILLENNIUM)
cxjday = (JDAY)
cxjyear = (JYEAR)
cxjcentury = (JCENTURY)
cxjmillennium = (JMILLENNIUM)
cxjd = (JD)
cxjy = (JY)
cxjc = (JC)
cxjm = (JM)
cxjewish_first_month = (JEWISH_FIRST_MONTH)
cxgyear = (GYEAR)
cxgregorianyear = (GREGORIANYEAR)
cxkwt = (KWT)
cxuet = (UET)
cxj2k = (J2K)
cxj2kday = (J2KDAY)
cxjdsec_at_0gregorian = (JDSEC_AT_0GREGORIAN)
cxjdsec_at_0kwt = (JDSEC_AT_0KWT)
cxjdsec_at_0j2k = (JDSEC_AT_0J2K)
cxjdsec_at_0uet = (JDSEC_AT_0UET)
cxtt_at_0tai = (TT_AT_0TAI)
cxtt_at_0ut1 = (TT_AT_0UT1)
cxgram = (GRAM)
cxpound = (POUND)
cxlb = (LB)
cxounce = (OUNCE)
cxton = (TON)
cxtonne = (TONNE)
cxgrain = (GRAIN)
cxcarat = (CARAT)
cxmm = (MM)
cxinch = (INCH)
cxfoot = (FOOT)
cxft = (FT)
cxyard = (YARD)
cxmile = (MILE)
cxpoint = (POINT)
cxstandardgravity = (STANDARDGRAVITY)
cxearthgravitya = (EARTHGRAVITYA)
cxearthgravityb = (EARTHGRAVITYB)
cxgravitationnasa = (GRAVITATIONNASA)
cxgravitationiers = (GRAVITATIONIERS)
cxkgf = (KGF)
cxlbf = (LBF)
cxatm = (ATM)
cxstandardatmosphere = (STANDARDATMOSPHERE)
cxtorr = (TORR)
cxbar = (BAR)
cxmmhg = (MMHG)
cxinhg = (INHG)
cxpsi = (PSI)
cxdegc = (DEGC)
cxdegf = (DEGF)
cxdegr = (DEGR)
cxk_at_0tempc = (K_AT_0TEMPC)
cxk_at_0tempf = (K_AT_0TEMPF)
cxk_at_0tempr = (K_AT_0TEMPR)
cxmach = (MACH)
cxmph = (MPH)
cxhectare = (HECTARE)
cxare = (ARE)
cxacre = (ACRE)
cxbarn = (BARN)
cxliter = (LITER)
cxlitre = (LITRE)
cxgallon = (GALLON)
cxquart = (QUART)
cxpint = (PINT)
cxcup = (CUP)
cxfloz = (FLOZ)
cxtblsp = (TBLSP)
cxtsp = (TSP)
cxbarrel = (BARREL)
cxah = (AH)
cxcalorie = (CALORIE)
cxcal_it = (CAL_IT)
cxcal_th = (CAL_TH)
cxcal = (CAL)
cxbtu_th = (BTU_TH)
cxbtu_it = (BTU_IT)
cxbtu = (BTU)
cxhp = (HP)
cxhorsepower = (HORSEPOWER)
cxhpmetric = (HPMETRIC)
cxelectronvolt = (ELECTRONVOLT)
cxerg = (ERG)
cxfoe = (FOE)
cxaaabatterycharge = (AAABATTERYCHARGE)
cxaaabatteryvoltage = (AAABATTERYVOLTAGE)
cxaaabattery = (AAABATTERY)
cxaaabatteryenergy = (AAABATTERYENERGY)
cxaabatterycharge = (AABATTERYCHARGE)
cxaabatteryvoltage = (AABATTERYVOLTAGE)
cxaabattery = (AABATTERY)
cxaabatteryenergy = (AABATTERYENERGY)
cxcbatterycharge = (CBATTERYCHARGE)
cxcbatteryvoltage = (CBATTERYVOLTAGE)
cxcbattery = (CBATTERY)
cxcbatteryenergy = (CBATTERYENERGY)
cxdbatterycharge = (DBATTERYCHARGE)
cxdbatteryvoltage = (DBATTERYVOLTAGE)
cxdbattery = (DBATTERY)
cxdbatteryenergy = (DBATTERYENERGY)
cxninevoltcharge = (NINEVOLTCHARGE)
cxninevoltvoltage = (NINEVOLTVOLTAGE)
cxninevolt = (NINEVOLT)
cxninevoltenergy = (NINEVOLTENERGY)
cxninevoltbatterycharge = (NINEVOLTBATTERYCHARGE)
cxninevoltbatteryvoltage = (NINEVOLTBATTERYVOLTAGE)
cxninevoltbattery = (NINEVOLTBATTERY)
cxninevoltbatteryenergy = (NINEVOLTBATTERYENERGY)
cxphonebatterycharge = (PHONEBATTERYCHARGE)
cxphonebatteryvoltage = (PHONEBATTERYVOLTAGE)
cxphonebattery = (PHONEBATTERY)
cxphonebatteryenergy = (PHONEBATTERYENERGY)
cxcarbatterycharge = (CARBATTERYCHARGE)
cxcarbatteryvoltage = (CARBATTERYVOLTAGE)
cxcarbattery = (CARBATTERY)
cxcarbatteryenergy = (CARBATTERYENERGY)
cxmicrowavehz = (MICROWAVEHz)
cxmicrowavewavelength = (MICROWAVEWAVELENGTH)
cxmicrowavewavenumber = (MICROWAVEWAVENUMBER)
cxmicrowaveenergy = (MICROWAVEENERGY)
cxlfhz = (LFHz)
cxlfwavelength = (LFWAVELENGTH)
cxlfwavenumber = (LFWAVENUMBER)
cxlfenergy = (LFENERGY)
cxmfhz = (MFHz)
cxmfwavelength = (MFWAVELENGTH)
cxmfwavenumber = (MFWAVENUMBER)
cxmfenergy = (MFENERGY)
cxhfhz = (HFHz)
cxhfwavelength = (HFWAVELENGTH)
cxhfwavenumber = (HFWAVENUMBER)
cxhfenergy = (HFENERGY)
cxvhfhz = (VHFHz)
cxvhfwavelength = (VHFWAVELENGTH)
cxvhfwavenumber = (VHFWAVENUMBER)
cxvhfenergy = (VHFENERGY)
cxuhfhz = (UHFHz)
cxuhfwavelength = (UHFWAVELENGTH)
cxuhfwavenumber = (UHFWAVENUMBER)
cxuhfenergy = (UHFENERGY)
cxshfhz = (SHFHz)
cxshfwavelength = (SHFWAVELENGTH)
cxshfwavenumber = (SHFWAVENUMBER)
cxshfenergy = (SHFENERGY)
cxehfhz = (EHFHz)
cxehfwavelength = (EHFWAVELENGTH)
cxehfwavenumber = (EHFWAVENUMBER)
cxehfenergy = (EHFENERGY)
cxthfhz = (THFHz)
cxthfwavelength = (THFWAVELENGTH)
cxthfwavenumber = (THFWAVENUMBER)
cxthfenergy = (THFENERGY)
cxfirhz = (FIRHz)
cxfirwavelength = (FIRWAVELENGTH)
cxfirwavenumber = (FIRWAVENUMBER)
cxfirenergy = (FIRENERGY)
cxmirhz = (MIRHz)
cxmirwavelength = (MIRWAVELENGTH)
cxmirwavenumber = (MIRWAVENUMBER)
cxmirenergy = (MIRENERGY)
cxnirhz = (NIRHz)
cxnirwavelength = (NIRWAVELENGTH)
cxnirwavenumber = (NIRWAVENUMBER)
cxnirenergy = (NIRENERGY)
cxredwavelength = (REDWAVELENGTH)
cxredhz = (REDHz)
cxredwavenumber = (REDWAVENUMBER)
cxredenergy = (REDENERGY)
cxorangewavelength = (ORANGEWAVELENGTH)
cxorangehz = (ORANGEHz)
cxorangewavenumber = (ORANGEWAVENUMBER)
cxorangeenergy = (ORANGEENERGY)
cxyellowwavelength = (YELLOWWAVELENGTH)
cxyellowhz = (YELLOWHz)
cxyellowwavenumber = (YELLOWWAVENUMBER)
cxyellowenergy = (YELLOWENERGY)
cxyellowgreenhz = (YELLOWGREENHz)
cxyellowgreenwavelength = (YELLOWGREENWAVELENGTH)
cxyellowgreenwavenumber = (YELLOWGREENWAVENUMBER)
cxyellowgreenenergy = (YELLOWGREENENERGY)
cxgreenwavelength = (GREENWAVELENGTH)
cxgreenhz = (GREENHz)
cxgreenwavenumber = (GREENWAVENUMBER)
cxgreenenergy = (GREENENERGY)
cxbluewavelength = (BLUEWAVELENGTH)
cxbluehz = (BLUEHz)
cxbluewavenumber = (BLUEWAVENUMBER)
cxblueenergy = (BLUEENERGY)
cxvioletwavelength = (VIOLETWAVELENGTH)
cxviolethz = (VIOLETHz)
cxvioletwavenumber = (VIOLETWAVENUMBER)
cxvioletenergy = (VIOLETENERGY)
cxnuvhz = (NUVHz)
cxnuvwavelength = (NUVWAVELENGTH)
cxnuvwavenumber = (NUVWAVENUMBER)
cxnuvenergy = (NUVENERGY)
cxeuvhz = (EUVHz)
cxeuvwavelength = (EUVWAVELENGTH)
cxeuvwavenumber = (EUVWAVENUMBER)
cxeuvenergy = (EUVENERGY)
cxuvawavelength = (UVAWAVELENGTH)
cxuvahz = (UVAHz)
cxuvawavenumber = (UVAWAVENUMBER)
cxuvaenergy = (UVAENERGY)
cxuvbwavelength = (UVBWAVELENGTH)
cxuvbhz = (UVBHz)
cxuvbwavenumber = (UVBWAVENUMBER)
cxuvbenergy = (UVBENERGY)
cxuvcwavelength = (UVCWAVELENGTH)
cxuvchz = (UVCHz)
cxuvcwavenumber = (UVCWAVENUMBER)
cxuvcenergy = (UVCENERGY)
cxsxhz = (SXHz)
cxsxwavelength = (SXWAVELENGTH)
cxsxwavenumber = (SXWAVENUMBER)
cxsxenergy = (SXENERGY)
cxsxxwavelength = (SXXWAVELENGTH)
cxsxxhz = (SXXHz)
cxsxxwavenumber = (SXXWAVENUMBER)
cxsxxenergy = (SXXENERGY)
cxhxhz = (HXHz)
cxhxwavelength = (HXWAVELENGTH)
cxhxwavenumber = (HXWAVENUMBER)
cxhxenergy = (HXENERGY)
cxgammahz = (GAMMAHz)
cxgammawavelength = (GAMMAWAVELENGTH)
cxgammawavenumber = (GAMMAWAVENUMBER)
cxgammaenergy = (GAMMAENERGY)
cxturn = (TURN)
cxarcdegree = (ARCDEGREE)
cxarcminute = (ARCMINUTE)
cxarcsecond = (ARCSECOND)
cxgrad = (GRAD)
cxarcdeg = (ARCDEG)
cxarcmin = (ARCMIN)
cxarcsec = (ARCSEC)
cxsquaredegree = (SQUAREDEGREE)
cxsqdeg = (SQDEG)
cxspheresurface = (SPHERESURFACE)
cxshannon = (SHANNON)
cxnat = (NAT)
cxhartley = (HARTLEY)
cxhart = (HART)
cxdit = (DIT)
cxban = (BAN)
cxrpm = (RPM)
cxrps = (RPS)
cxfinestructure = (FINESTRUCTURE)
cxfinestructure_err = (FINESTRUCTURE_ERR)
cxfinestructure_rec = (FINESTRUCTURE_REC)
cxfinestructure_rec_err = (FINESTRUCTURE_REC_ERR)
cxmagnetic = (MAGNETIC)
cxmagnetic_err = (MAGNETIC_ERR)
cxmu0 = (MU0)
cxmu0_err = (MU0_ERR)
cxelectric = (ELECTRIC)
cxelectric_err = (ELECTRIC_ERR)
cxepsilon0 = (EPSILON0)
cxepsilon0_err = (EPSILON0_ERR)
cxcoulombconst = (COULOMBCONST)
cxcoulombconst_err = (COULOMBCONST_ERR)
cxprotonradius = (PROTONRADIUS)
cxprotonradius_err = (PROTONRADIUS_ERR)
cxmolarmass = (MOLARMASS)
cxmolarmass_err = (MOLARMASS_ERR)
cxmolarmassx = (MOLARMASSX)
cxmolarmassx_err = (MOLARMASSX_ERR)
cxdalton = (DALTON)
cxdalton_err = (DALTON_ERR)
cxamu = (AMU)
cxamu_err = (AMU_ERR)
cxatomicmassunit = (ATOMICMASSUNIT)
cxatomicmassunit_err = (ATOMICMASSUNIT_ERR)
cxuamu = (UAMU)
cxuamu_err = (UAMU_ERR)
cxrydberghz = (RYDBERGHz)
cxrydbergwavelength = (RYDBERGWAVELENGTH)
cxrydbergwavenumber = (RYDBERGWAVENUMBER)
cxrydbergenergy = (RYDBERGENERGY)
cxelectronmassa = (ELECTRONMASSA)
cxelectronmassa_err = (ELECTRONMASSA_ERR)
cxelectronmass = (ELECTRONMASS)
cxelectronmass_err = (ELECTRONMASS_ERR)
cxelectron_mass = (ELECTRON_MASS)
cxelectronenergy = (ELECTRONENERGY)
cxelectronhz = (ELECTRONHz)
cxelectronwavelength = (ELECTRONWAVELENGTH)
cxupquarkmass = (UPQUARKMASS)
cxupquarkmass_err = (UPQUARKMASS_ERR)
cxupquark_mass = (UPQUARK_MASS)
cxupquarkenergy = (UPQUARKENERGY)
cxupquarkhz = (UPQUARKHz)
cxupquarkwavelength = (UPQUARKWAVELENGTH)
cxdownquarkmass = (DOWNQUARKMASS)
cxdownquarkmass_err = (DOWNQUARKMASS_ERR)
cxdownquark_mass = (DOWNQUARK_MASS)
cxdownquarkenergy = (DOWNQUARKENERGY)
cxdownquarkhz = (DOWNQUARKHz)
cxdownquarkwavelength = (DOWNQUARKWAVELENGTH)
cxmuonmass = (MUONMASS)
cxmuonmass_err = (MUONMASS_ERR)
cxmuon_mass = (MUON_MASS)
cxmuonenergy = (MUONENERGY)
cxmuonhz = (MUONHz)
cxmuonwavelength = (MUONWAVELENGTH)
cxprotonmass = (PROTONMASS)
cxprotonmass_err = (PROTONMASS_ERR)
cxproton_mass = (PROTON_MASS)
cxprotonenergy = (PROTONENERGY)
cxprotonhz = (PROTONHz)
cxprotonwavelength = (PROTONWAVELENGTH)
cxneutronmass = (NEUTRONMASS)
cxneutronmass_err = (NEUTRONMASS_ERR)
cxneutron_mass = (NEUTRON_MASS)
cxneutronenergy = (NEUTRONENERGY)
cxneutronhz = (NEUTRONHz)
cxneutronwavelength = (NEUTRONWAVELENGTH)
cxtaumass = (TAUMASS)
cxtaumass_err = (TAUMASS_ERR)
cxtau_mass = (TAU_MASS)
cxtauenergy = (TAUENERGY)
cxtauhz = (TAUHz)
cxtauwavelength = (TAUWAVELENGTH)
cxdeuteronmass = (DEUTERONMASS)
cxdeuteronmass_err = (DEUTERONMASS_ERR)
cxdeuteron_mass = (DEUTERON_MASS)
cxhelionmass = (HELIONMASS)
cxhelionmass_err = (HELIONMASS_ERR)
cxhelion_mass = (HELION_MASS)
cxtritonmass = (TRITONMASS)
cxtritonmass_err = (TRITONMASS_ERR)
cxtriton_mass = (TRITON_MASS)
cxalphamass = (ALPHAMASS)
cxalphamass_err = (ALPHAMASS_ERR)
cxalpha_mass = (ALPHA_MASS)
cxhydrogenradius = (HYDROGENRADIUS)
cxhydrogenradius_err = (HYDROGENRADIUS_ERR)
cxbohrradius = (BOHRRADIUS)
cxbohrradius_err = (BOHRRADIUS_ERR)
cxhihz = (HIHz)
cxhiwavelength = (HIWAVELENGTH)
cxhiwavenumber = (HIWAVENUMBER)
cxhienergy = (HIENERGY)
cxhydrogenline = (HYDROGENLINE)
cxhydrogenline_err = (HYDROGENLINE_ERR)
cxhi = (HI)
cxhi_err = (HI_ERR)
cxplanckmass = (PLANCKMASS)
cxplanckcharge = (PLANCKCHARGE)
cxplanckenergy = (PLANCKENERGY)
cxplancktemp = (PLANCKTEMP)
cxplancklength = (PLANCKLENGTH)
cxplancktime = (PLANCKTIME)
cxstefan = (STEFAN)
cxstefan_err = (STEFAN_ERR)
cxpingpongballradius = (PINGPONGBALLRADIUS)
cxgolfballradius = (GOLFBALLRADIUS)
cxtennisballradius = (TENNISBALLRADIUS)
cxbaseballradius = (BASEBALLRADIUS)
cxsoftballradius = (SOFTBALLRADIUS)
cxsoccerballradius = (SOCCERBALLRADIUS)
cxbasketballradius = (BASKETBALLRADIUS)
cxpingpongballmass = (PINGPONGBALLMASS)
cxgolfballmass = (GOLFBALLMASS)
cxtennisballmass = (TENNISBALLMASS)
cxbaseballmass = (BASEBALLMASS)
cxsoftballmass = (SOFTBALLMASS)
cxbasketballmass = (BASKETBALLMASS)
cxsoccerballmass = (SOCCERBALLMASS)
cxmarathon = (MARATHON)
cxpennythickness = (PENNYTHICKNESS)
cxnickelthickness = (NICKELTHICKNESS)
cxdimethickness = (DIMETHICKNESS)
cxquarterthickness = (QUARTERTHICKNESS)
cxpennyradius = (PENNYRADIUS)
cxnickelradius = (NICKELRADIUS)
cxdimeradius = (DIMERADIUS)
cxquarterradius = (QUARTERRADIUS)
cxpennymass = (PENNYMASS)
cxnickelmass = (NICKELMASS)
cxdimemass = (DIMEMASS)
cxquartermass = (QUARTERMASS)
cxmoonmonth = (MOONMONTH)
cxmilkywayage = (MILKYWAYAGE)
cxuniverseage = (UNIVERSEAGE)
cxlightyear = (LIGHTYEAR)
cxastronomicalunit = (ASTRONOMICALUNIT)
cxparsec = (PARSEC)
cxproximacentauri = (PROXIMACENTAURI)
cxmilkywayradius = (MILKYWAYRADIUS)
cxgalacticcenter = (GALACTICCENTER)
cxuniverseradius = (UNIVERSERADIUS)
cxmilkywaymass = (MILKYWAYMASS)
cxuniversemass = (UNIVERSEMASS)
cxsolarconstant = (SOLARCONSTANT)
cxeinstein = (EINSTEIN)
cxeinstein_err = (EINSTEIN_ERR)
cxhubble = (HUBBLE)
cxhubble_err = (HUBBLE_ERR)
cxbhmasstemp = (BHMASSTEMP)
cxbhmass_radius = (BHMASS_RADIUS)
cxbhmass3_lifetime = (BHMASS3_LIFETIME)
cxbhradius2density = (BHRADIUS2DENSITY)
cxbhentropy_area = (BHENTROPY_AREA)
cxbekensteininformation = (BEKENSTEININFORMATION)
cxbekensteinentropy = (BEKENSTEINENTROPY)
cxelevationmax = (ELEVATIONMAX)
cxelevationmin = (ELEVATIONMIN)
cxkpgboundary = (KPGBOUNDARY)
cxtrjboundary = (TRJBOUNDARY)
cxmilkywayday = (MILKYWAYDAY)
cxptrboundary = (PTRBOUNDARY)
cxnpboundary = (NPBOUNDARY)
cxlifeage = (LIFEAGE)
cxgiantimpact = (GIANTIMPACT)
cxearthage = (EARTHAGE)
cxppq = (PPQ)
cxppt = (PPT)
cxppb = (PPB)
cxppm = (PPM)
cxmass = (MASS)
cxlength = (LENGTH)
cxdistance = (DISTANCE)
cxtemperature = (TEMPERATURE)
cxtime = (TIME)
cxangle = (ANGLE)
cxsolid_angle = (SOLID_ANGLE)
cxspeed = (SPEED)
cxacceleration = (ACCELERATION)
cxforce = (FORCE)
cxenergy = (ENERGY)
cxaction = (ACTION)
cxpower = (POWER)
cxarea = (AREA)
cxvolume = (VOLUME)
cxdensity = (DENSITY)
cxspecificheat = (SPECIFICHEAT)
cxpressure = (PRESSURE)
cxviscosity = (VISCOSITY)
cxfrequency = (FREQUENCY)
cxcharge = (CHARGE)
cxcurrent = (CURRENT)
cxvoltage = (VOLTAGE)
cxresistance = (RESISTANCE)
cxinductance = (INDUCTANCE)
cxcapacitance = (CAPACITANCE)
cxconductance = (CONDUCTANCE)
cxmagneticflux = (MAGNETICFLUX)
cxmagneticinduction = (MAGNETICINDUCTION)
#   MMMMMMMMMMASTER-Function ------------------------ lf_mod_py #
def lf_mod_py(xx,yy):
   xx = int(xx)
   yy = int(yy)
   retvalu = xx % yy
   if retvalu < 0:
      retvalu += abs(yy)
   return(retvalu)
#   MMMMMMMMMMASTER-Function ---------------------------- atan2 #
def atan2(xx, yy):   return(math.atan2(xx, yy))
#   MMMMMMMMMMASTER-Function ----------------------------- fmod #
def fmod(xx, yy):    return(math.fmod(xx, yy))
#   MMMMMMMMMMASTER-Function ---------------------------- timee #
def timee():         return(time.time())
#   MMMMMMMMMMASTER-Function ------------------------------ abs #
def abs(xx):         return(math.fabs(xx))
#   MMMMMMMMMMASTER-Function ---------------------------- floor #
def floor(xx):       return(math.floor(xx))
#   MMMMMMMMMMASTER-Function ----------------------------- ceil #
def ceil(xx):        return(math.ceil(xx))
#   MMMMMMMMMMASTER-Function --------------------------- floorl #
def floorl(xx):      return(int(math.floor(xx)))
#   MMMMMMMMMMASTER-Function ---------------------------- ceill #
def ceill(xx):       return(int(math.ceil(xx)))
#   MMMMMMMMMMASTER-Function ----------------------------- sqrt #
def sqrt(xx):        return(math.sqrt(xx))
#   MMMMMMMMMMASTER-Function ------------------------------ exp #
def exp(xx):         return(math.exp(xx))
#   MMMMMMMMMMASTER-Function ------------------------------ log #
def log(xx):         return(math.log(xx))
#   MMMMMMMMMMASTER-Function ------------------------------ pow #
def pow(xx, yy):     return(math.exp(yy * math.log(xx)))
#   MMMMMMMMMMASTER-Function ------------------------------ sin #
def sin(xx):         return(math.sin(xx))
#   MMMMMMMMMMASTER-Function ------------------------------ cos #
def cos(xx):         return(math.cos(xx))
#   MMMMMMMMMMASTER-Function ------------------------------ tan #
def tan(xx):         return(math.sin(xx) / math.cos(xx))
def id(xx):
   return (xx)
def reci(xx):
   return (1.0 / xx)
def neg(xx):
   return (- xx)
def square(xx):
   return (xx * xx)
def sq(xx):
   return (xx * xx)
def sqinv(xx):
   return (math.sqrt(xx))
def cube(xx):
   return (xx * xx * xx)
def cu(xx):
   return (xx * xx * xx)
def sign(xx):
   if (xx < 0.0):
      retvalu = -1.0
   elif (0.0 < xx):
      retvalu = 1.0
   else:
      retvalu = 0.0
   return (retvalu)
def stair(xx):
   if (xx < 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0
   return (retvalu)
def heaviside(xx):
   if (xx < 0.0):
      retvalu = 0.0
   elif (0.0 < xx):
      retvalu = 1.0
   else:
      retvalu = 0.5
   return (retvalu)
def divi(numer, denom, def_val):
   if (denom < 0.0 or 0.0 < denom):
      retvalu = numer / denom
   else:
      retvalu = def_val
   return (retvalu)
def clip(xx):
   if (xx < 0.0):
      retvalu = 0.0
   else:
      retvalu = xx
   return (retvalu)
def clip2(xx, xlow, xhigh):
   if (xx <= xlow):
      retvalu = xlow
   elif (xx <= xhigh):
      retvalu = xx
   else:
      retvalu = xhigh
   return (retvalu)
def clip2x(xx, xa, xb):
   if (xb < xa):
      if (xx <= xb or xa <= xx):
         retvalu = xx
      elif (2.0 * xx < xa + xb):
         retvalu = xb
      else:
         retvalu = xa
   else:
      if (xx <= xa):
         retvalu = xa
      elif (xx <= xb):
         retvalu = xx
      else:
         retvalu = xb
   return (retvalu)
def sba(xx):
   if (- 1.0 < xx and xx < 1.0):
      retvalu = xx
   else:
      retvalu = 1.0 / xx
   return (retvalu)
def ratio(aa, bb):
   if (math.fabs(aa) < math.fabs(bb)):
      rati = aa / bb
   else:
      rati = bb / aa
   return (rati)
def horner(xx, deg, coefh_arr_pc):
   sum_curr = coefh_arr_pc[deg]
   for jj in range(deg - 1, -1, -1):
      sum_curr *= xx
      sum_curr += coefh_arr_pc[jj]
   return (sum_curr)
def chebeval(xx, deg, cheb_arr_pc):
   xx *= 2
   ba = cheb_arr_pc[deg]
   bb = 0.0
   bc = 0.0
   for ii in range(deg - 1, -1, -1):
      bc = bb
      bb = ba
      ba = xx * bb - bc + cheb_arr_pc[ii]
   return ((ba - bc) / 2.0)
def ln(xx):
   return (math.log(xx))
def lg(xx):
   return (math.log(xx) / LNTWO)
def log10(xx):
   return (math.log(xx) / math.log(10.0))
def l10(xx):
   return (math.log(xx) / math.log(10.0))
def log2(xx):
   return (math.log(xx) / LNTWO)
def fmody(xx, yymodulus):
   if (yymodulus < 0.0 or 0.0 < yymodulus):
      retvalu = xx - floor(xx / yymodulus) * yymodulus
   else:
      retvalu = 0.0
   return (retvalu)
def fmodu(xx, yymodulus):
   if (yymodulus < 0.0 or 0.0 < yymodulus):
      retvalu = fmod(xx, yymodulus)
      if (retvalu < 0.0):
         retvalu += math.fabs(yymodulus)
   else:
      retvalu = 0.0
   return (retvalu)
def remquou(xx, yymodulus, ret_int_arr_p):
   if (yymodulus < 0.0 or 0.0 < yymodulus):
      qu = xx / yymodulus
      fl = floor(qu)
      retvalu = qu - fl
   else:
      fl = 0.0
      retvalu = xx
   ret_int_arr_p[0] = fl
   return (retvalu)
def fmods(xx, yymodulus):
   if (yymodulus < 0.0 or 0.0 < yymodulus):
      retvalu = fmod(xx, yymodulus)
      ayy = math.fabs(yymodulus)
      lim = ayy / 2
      if (retvalu < - lim):
         retvalu += ayy
      elif (lim <= retvalu):
         retvalu -= ayy
   else:
      retvalu = 0.0
   return (retvalu)
def pow2(expo):
   return (math.pow(2.0, expo))
def pow10(expo):
   return (math.pow(10.0, expo))
def sigmoid(xx):
   return (1.0 / (1.0 + math.exp(-xx)))
def sigmoidinv(xx):
   return (- math.log(((1.0 / xx - 0.5) - 0.5)))
def sigmoid3(aa, bb, xx):
   if (aa <= 0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.log((1.0 - aa) / aa)
      alfa = math.log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      retvalu = 1.0 / (1.0 + math.exp(alfa * (xx - xzero)))
   return (retvalu)
def taninv3(aa, bb, xx):
   if (aa <= 0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.tan((aa - 0.5) * PI)
      alfa = math.tan((bb - 0.5) * PI) - taa
      retvalu = taninv(alfa * xx + taa) / PI + 0.5
   return (retvalu)
def sigmoid3d(aa, bb, xx):
   if (aa <= 0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.log((1.0 - aa) / aa)
      alfa = math.log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      expa = math.exp(alfa * (xx - xzero))
      retvalu = -alfa * expa / square(1 + expa)
   return (retvalu)
def sqrtx(xx):
   if (xx < 0.0):
      retvalu = -math.sqrt(-xx)
   else:
      retvalu = math.sqrt(xx)
   return (retvalu)
def smooth(xx):
   if (xx <= -1.0):
      retvalu = 0.0
   elif (1.0 <= xx):
      retvalu = 1.0
   else:
      retvalu = sigmoid(4.0 * xx / (1.0 - xx * xx))
   return (retvalu)
def hypot(xx, yy):
   axx = math.fabs(xx)
   ayy = math.fabs(yy)
   if (axx < ayy):
      retvalu = ayy
      ayy = axx
      axx = retvalu
   if (0.0 < axx):
      if (ayy < DBLEPS * axx):
         retvalu = axx
      else:
         ayy /= axx
         retvalu = axx * math.sqrt(1.0 + ayy * ayy)
   else:
      retvalu = 0.0
   return (retvalu)
def hypot1(xx):
   return (hypot(1.0, xx))
def hypot1inv(xx):
   return (math.sqrt(xx * xx - 1.0))
def hypot3(xx, yy, zz):
   return (math.sqrt(xx * xx + yy * yy + zz * zz))
def topyh(xx, yy):
   xsq = xx * xx
   ysq = yy * yy
   if (ysq <= 0.0):
      retvalu = xx
   elif (xsq <= 0):
      retvalu = yy
   elif (xsq < ysq):
      xsq /= ysq
      retvalu = -sign(xx) * math.sqrt(1.0 - xsq) * math.fabs(yy)
   else:
      ysq /= xsq
      retvalu = math.sqrt(1.0 - ysq) * xx
   return (retvalu)
def topyh1(xx):
   if (xx < - 1.0 or 1.0 < xx):
      retvalu = -math.sqrt(xx * xx - 1.0)
   else:
      retvalu = math.sqrt(1.0 - xx * xx)
   return (retvalu)
def cnv_dbl2si16(xx):
   if (xx <= SI16MIN):
      retvalu = SI16MIN
   elif (xx <= SI16MAX):
      retvalu = floorl(xx + 0.5)
   else:
      retvalu = SI16MAX
   return int(retvalu)
def k2tempc(temp_k):
   return ((temp_k - K_AT_0TEMPC) * KELVIN / DEGC)
def tempc2k(temp_c):
   return (temp_c * DEGC / KELVIN + K_AT_0TEMPC)
def tempc(temp_c):
   return (tempc2k(temp_c))
def k2tempf(temp_k):
   return ((temp_k - K_AT_0TEMPF) * KELVIN / DEGF)
def tempf2k(temp_f):
   return (temp_f * DEGF / KELVIN + K_AT_0TEMPF)
def tempf(temp_f):
   return (tempf2k(temp_f))
def k2tempr(temp_k):
   return ((temp_k - K_AT_0TEMPR) * KELVIN / DEGR)
def tempr2k(temp_r):
   return (temp_r * DEGR / KELVIN + K_AT_0TEMPR)
def tempr(temp_r):
   return (tempr2k(temp_r))
def tempf2tempc(temp_f):
   return (k2tempc(tempf2k(temp_f)))
def tempc2tempf(temp_c):
   return (k2tempf(tempc2k(temp_c)))
def iszero(xx):
   return (0.0 <= xx and xx <= 0.0)
def iseven(xx):
   return (fmodu(xx, 2.0) < 1.0)
def isodd(xx):
   return (1.0 <= fmodu(xx, 2.0))
def ismult(xx, mult):
   return (fmodu(xx, mult) < 1.0)
def ismultl(xx, mult):
   if (xx % mult == 0):
      retvalu_bol = True
   else:
      retvalu_bol = False
   return (retvalu_bol)
def isgt(xx, yy):
   return (yy < xx)
def islt(xx, yy):
   return (xx < yy)
def isge(xx, yy):
   return (yy <= xx)
def isle(xx, yy):
   return (xx <= yy)
def ispos(xx):
   return (0.0 < xx)
def isneg(xx):
   return (xx < 0.0)
def iseq(xx, yy):
   retvalu_bol = False
   if (iszero(xx)):
      if (math.fabs(yy) <= DBLEPS):
         retvalu_bol = True
   else:
      epsx = 2.0 * xx * DBLEPS
      diffxy = xx - yy
      if (epsx < 0.0):
         epsx = -epsx
      if (- epsx <= diffxy and diffxy <= epsx):
         retvalu_bol = True
   return (retvalu_bol)
def isint(xx):
   return (iseq(xx, floor(xx)))
def isnegint(xx):
   return (xx < 0.0 and iseq(xx, floor(xx)))
def isposint(xx):
   return (0.0 < xx and iseq(xx, floor(xx)))
def ifzero(cond, tru_val, fal_val):
   if (cond < 0.0 or 0.0 < cond):
      retvalu = fal_val
   else:
      retvalu = tru_val
   return (retvalu)
def isalmostequal(xx, yy, epsratio):
   return (math.fabs(xx - yy) <= math.fabs(epsratio * xx))
def iswithin(xx, yy, delta):
   return (xx - delta <= yy and yy <= xx + delta)
def isbetweenx(xx, min_xx, max_xx):
   return (min_xx < xx and xx < max_xx)
def isbetween(xx, min_xx, max_xx):
   return (min_xx <= xx and xx <= max_xx)
def isleapyear(gregyear):
   retvalu_bol = False
   if ((gregyear % 4) == 0):
      rema = (gregyear % 400)
      if (rema != 100 and rema != 200 and rema != 300):
         retvalu_bol = True
   return (retvalu_bol)
def isss(xx, yy):
   if (0.0 < xx):
      if (0.0 < yy):
         retvalu_bol = True
      else:
         retvalu_bol = False
   elif (xx < 0.0):
      if (yy < 0.0):
         retvalu_bol = True
      else:
         retvalu_bol = False
   else:
      if (0.0 < yy or yy < 0.0):
         retvalu_bol = False
      else:
         retvalu_bol = True
   return (retvalu_bol)
def issignsame(xx, yy):
   return (isss(xx, yy))
def isfloorsame(xx, yy, multy):
   return (iseq(floor(xx * multy), floor(yy * multy)))
LC_MAGIC_INT = 2070108020
LC_MAGIC_INT_NOT = 301040105
def magicset():
   return int(LC_MAGIC_INT)
def magicnot():
   return int(LC_MAGIC_INT_NOT)
def ismagic(xx):
   return (iseq(xx, magicset()))
def rtoz(xx):
   if (xx < 0.0):
      retvalu = math.ceil(xx)
   else:
      retvalu = floor(xx)
   return (retvalu)
def rtoi(xx):
   if (0.0 <= xx):
      retvalu = math.ceil(xx)
   else:
      retvalu = floor(xx)
   return (retvalu)
def bankers(xx):
   retvalu = floor(xx + 0.5)
   if (isint(xx + 0.5) and isodd(retvalu)):
      retvalu -= 1.0
   return (retvalu)
def round(xx):
   retvalu = floor(xx + 0.5)
   return (retvalu)
def iround(xx):
   retvalu = floor(xx + 0.5)
   return int(retvalu)
def round2(xx, yy):
   if (iszero(yy)):
      retvalu = xx
   else:
      retvalu = round(xx / yy) * yy
   return (retvalu)
def roundy(xx, yy, shf):
   if (yy < 0.0 or 0.0 < yy):
      retvalu = (round((xx - shf) / yy) * yy + shf)
   else:
      retvalu = xx
   return (retvalu)
def rtomsd(fs, msds):
   if (iszero(fs)):
      retvalu = 0.0
   else:
      if (fs < 0.0):
         signs = -1.0
         fs = -fs
      else:
         signs = 1.0
      logi = floor(log10(fs) - msds + 1.0)
      retvalu = signs * round2(fs, math.pow(10.0, logi))
   return (retvalu)
def rto125(fs):
   if (iszero(fs)):
      retvalu = 0.0
   else:
      if (fs < 0.0):
         signs = -1.0
         fs = -fs
      else:
         signs = 1.0
      pow_ten = math.pow(10.0, floor(log10(fs)))
      tmpf = fs / pow_ten
      if (tmpf < math.sqrt(2.0)):
         valu = 1.0
      elif (tmpf < math.sqrt(10.0)):
         valu = 2.0
      elif (tmpf < math.sqrt(50.0)):
         valu = 5.0
      else:
         valu = 10.0
      retvalu = signs * pow_ten * valu
   return (retvalu)
def floor2(xx, yy):
   if (iszero(yy)):
      retvalu = 0.0
   else:
      retvalu = floor(xx / math.fabs(yy)) * math.fabs(yy)
   return (retvalu)
def ceil2(xx, yy):
   if (iszero(yy)):
      retvalu = 0.0
   else:
      retvalu = math.ceil(xx / math.fabs(yy)) * math.fabs(yy)
   return (retvalu)
def fmod2(xx, minn, maxx):
   if (iseq(maxx, minn)):
      retvalu = 0.0
   else:
      retvalu = fmodu(xx - minn, maxx - minn) + minn
   return (retvalu)
def frac(xx):
   return (xx - floor(xx))
def trunc(xx):
   if (0.0 <= xx):
      retvalu = xx - floor(xx)
   else:
      retvalu = xx - math.ceil(xx)
   return (retvalu)
def fmul(xx, pp):
   lpp = math.log(pp)
   return (math.exp(lpp * frac(math.log(xx) / lpp)))
def dist(xx, mm):
   axx = math.fabs(xx)
   amm = math.fabs(mm)
   retvalu = fmod(axx, amm)
   if (amm < 2.0 * retvalu):
      retvalu = amm - retvalu
   return (retvalu)
def ddist(xx, mm):
   if (iszero(mm)):
      retvalu = 0.0
   else:
      amm = math.fabs(mm)
      rema = xx - floor(xx / amm) * amm
      if (amm < 2.0 * rema):
         rema -= amm
      retvalu = rema
   return (retvalu)
def sinc(xx_rad):
   if (xx_rad < 0.0 or 0.0 < xx_rad):
      retvalu = math.sin(xx_rad) / xx_rad
   else:
      retvalu = 1
   return (retvalu)
LC_SINC_MIN_X = 4.4934094579090641753079882808139693729311345
def sincinv(yy):
   min_yy = sinc(LC_SINC_MIN_X)
   if (yy <= min_yy):
      nrvx_xx = LC_SINC_MIN_X
   elif (yy < 1.0):
      aa = yy - min_yy
      bb = 1.0 - yy
      start_xx = (aa * math.sqrt(5.0 * bb) + bb *\
            (LC_SINC_MIN_X - math.sqrt(6 * aa))) / (aa + bb)
      nrvx_xx = start_xx
      for nrvx_ii in range(0, 21, 1):
         nrvx_xp = nrvx_xx
         nrvx_dy = math.cos(nrvx_xx) - yy
         if (iszero(nrvx_dy)):
            break
         nrvx_yy = math.sin(nrvx_xx) - yy * nrvx_xx
         nrvx_xx -= nrvx_yy / nrvx_dy
         if (iseq(nrvx_xp, nrvx_xx)):
            break
   else:
      nrvx_xx = 0.0
   return (nrvx_xx)
def sincc(xx_rad):
   if (iszero(xx_rad)):
      retvalu = 1.0
   else:
      xr_rad = fmod(xx_rad, TAU)
      if (TAU / 2.0 < xr_rad):
         xr_rad = TAU - xr_rad
         trigsign = -1.0
      else:
         trigsign = 1.0
      if (TAU / 4.0 < xr_rad):
         xr_rad = TAU / 2.0 - xr_rad
      nxr_sqr = -xr_rad * xr_rad
      sum_curr = xr_rad
      term = xr_rad
      ii = 2
      while True:
         term *= nxr_sqr / (ii * (ii - 1))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         ii += 2
      retvalu = trigsign * sum_curr * xr_rad / xx_rad
   return (retvalu)
def versin(xx_rad):
   xr_rad = fmod(xx_rad, TAU)
   if (TAU / 2.0 < xr_rad):
      xr_rad = TAU - xr_rad
   if (TAU / 4.0 < xr_rad):
      xr_rad = TAU / 2.0 - xr_rad
      trigsign = -1.0
   else:
      trigsign = 1.0
   xr_sqr = -xr_rad * xr_rad
   sum_curr = 1.0 / 2.0
   term = 1.0 / 2.0
   ii = 4
   while True:
      term *= xr_sqr / (ii * (ii - 1))
      sum_prev = sum_curr
      sum_curr += term
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      ii += 2
   sum_curr *= - xr_sqr
   if (trigsign < 0):
      sum_curr = 2.0 - sum_curr
   return (sum_curr)
def haversin(xx_rad):
   return (versin(xx_rad) / 2.0)
def tur2deg(xx_tur):
   return (xx_tur * TURN / ARCDEG)
def deg2tur(xx_deg):
   return (xx_deg * ARCDEG / TURN)
def tur2rad(xx_tur):
   return (xx_tur * TURN / RADIAN)
def rad2tur(xx_rad):
   return (xx_rad * RADIAN / TURN)
def tur2sec(xx_tur):
   return (xx_tur * TURN / ARCSEC)
def sec2tur(xx_sec):
   return (xx_sec * ARCSEC / TURN)
def rad2deg(xx_rad):
   return (xx_rad * RADIAN / ARCDEG)
def deg2rad(xx_deg):
   return (xx_deg * ARCDEG / RADIAN)
def rad2sec(xx_rad):
   return (xx_rad * RADIAN / ARCSEC)
def sec2rad(xx_sec):
   return (xx_sec * ARCSEC / RADIAN)
def deg2sec(xx_deg):
   return (xx_deg * ARCDEG / ARCSEC)
def sec2deg(xx_sec):
   return (xx_sec * ARCSEC / ARCDEG)
def rad2dms(xx_rads):
   dg = rad2deg(xx_rads)
   dd_deg = floor(dg)
   dg = (dg - dd_deg) * ARCDEG / ARCMIN
   mm_min = floor(dg)
   dg = (dg - mm_min) * ARCMIN / ARCSEC
   return (dd_deg + (mm_min + dg / 100.0) / 100.0)
def rad2dms2(xx_rads):
   dd_deg_arr = [0 for ii in range(2)]
   mm_min_arr = [0 for ii in range(2)]
   dg = rad2deg(xx_rads)
   dg = modf(dg, dd_deg_arr) * ARCDEG / ARCMIN
   dg = modf(dg, mm_min_arr) * ARCMIN / ARCSEC
   return (dd_deg_arr[0] + (mm_min_arr[0] + dg / 100.0) / 100.0)
def dms2rad(xx_dms):
   dd_deg = floor(xx_dms)
   dg = (xx_dms - dd_deg) * 100.0
   mm_min = floor(dg)
   dg = (dg - mm_min) * 100.0
   return ((dg * ARCSEC + mm_min * ARCMIN + dd_deg * ARCDEG)\
         / RADIAN)
def deg2dms(xx_deg):
   return (rad2dms(deg2rad(xx_deg)))
def dms2deg(xx_dms):
   return (rad2deg(dms2rad(xx_dms)))
def cot(xx_rad):
   return (math.cos(xx_rad) / math.sin(xx_rad))
def sec(xx_rad):
   return (1.0 / math.cos(xx_rad))
def csc(xx_rad):
   return (1.0 / math.sin(xx_rad))
def sininv(xx):
   return (math.atan2(xx, topyh1(xx)))
def cosinv(xx):
   return (math.atan2(topyh1(xx), xx))
def taninv(xx):
   return (math.atan2(xx, 1.0))
def cotinv(xx):
   return (math.atan2(1.0, xx))
def secinv(xx):
   return (math.atan2(math.sqrt(xx * xx - 1.0), sign(xx)))
def cscinv(xx):
   return (math.atan2(sign(xx), math.sqrt(xx * xx - 1.0)))
def sinh(xx):
   return ((math.exp(xx) - math.exp(-xx)) / 2.0)
def cosh(xx):
   return ((math.exp(xx) + math.exp(-xx)) / 2.0)
def tanh(xx):
   return (sinh(xx) / cosh(xx))
def coth(xx):
   return (cosh(xx) / sinh(xx))
def sech(xx):
   return (1.0 / cosh(xx))
def csch(xx):
   return (1.0 / sinh(xx))
def sinhinv(xx):
   return (math.log(xx + math.sqrt(xx * xx + 1.0)))
def coshinv(xx):
   return (math.log(xx + math.sqrt(xx * xx - 1.0)))
def tanhinv(xx):
   return (math.log((1.0 + xx) / (1.0 - xx)) / 2.0)
def cothinv(xx):
   return (math.log((xx + 1.0) / (xx - 1.0)) / 2.0)
def sechinv(xx):
   return (math.log((1.0 + topyh1(xx)) / xx))
def cschinv(xx):
   return (math.log((1.0 + math.sqrt(1.0 + xx * xx)) / xx))
def atan2h(xx, yy):
   if (math.fabs(yy) <= math.fabs(xx)):
      retvalu = 0.0
   else:
      retvalu = math.log((yy + xx) / (yy - xx)) / 2.0
   return (retvalu)
def atan2u(xx, yy):
   return (fmodu(math.atan2(xx, yy), tur2rad(1.0)))
def sind(xx):
   return (math.sin(deg2rad(xx)))
def sindinv(xx):
   return (rad2deg(sininv(xx)))
def cosd(xx):
   return (math.cos(deg2rad(xx)))
def cosdinv(xx):
   return (rad2deg(cosinv(xx)))
def tand(xx):
   return (math.tan(deg2rad(xx)))
def tandinv(xx):
   return (rad2deg(taninv(xx)))
def cotd(xx):
   return (cot(deg2rad(xx)))
def cotdinv(xx):
   return (rad2deg(cotinv(xx)))
def secd(xx):
   return (sec(deg2rad(xx)))
def secdinv(xx):
   return (rad2deg(secinv(xx)))
def cscd(xx):
   return (csc(deg2rad(xx)))
def cscdinv(xx):
   return (rad2deg(cscinv(xx)))
def atan2d(xx, yy):
   return (rad2deg(math.atan2(xx, yy)))
def sint(xx):
   return (math.sin(tur2rad(xx)))
def sintinv(xx):
   return (rad2tur(sininv(xx)))
def cost(xx):
   return (math.cos(tur2rad(xx)))
def costinv(xx):
   return (rad2tur(cosinv(xx)))
def tant(xx):
   return (math.tan(tur2rad(xx)))
def tantinv(xx):
   return (rad2tur(taninv(xx)))
def cott(xx):
   return (cot(tur2rad(xx)))
def cottinv(xx):
   return (rad2tur(cotinv(xx)))
def sect(xx):
   return (sec(tur2rad(xx)))
def sectinv(xx):
   return (rad2tur(secinv(xx)))
def csct(xx):
   return (csc(tur2rad(xx)))
def csctinv(xx):
   return (rad2tur(cscinv(xx)))
def atan2t(xx, yy):
   return (rad2tur(math.atan2(xx, yy)))
def ln1p(xx):
   if (0.1 < math.fabs(xx)):
      retvalu = math.log(1.0 + xx)
   elif (iszero(xx)):
      retvalu = 0.0
   else:
      start = math.ceil(math.fabs(math.log(DBLEPS) /\
            math.log(math.fabs(xx))))
      if (start < 2):
         start = 2
      sum_curr = 0.0
      for jj in range(start, 0, -1):
         sum_curr = 1.0 / jj - sum_curr * xx
      retvalu = sum_curr * xx
   return (retvalu)
def expm1(xx):
   if (0.1 < math.fabs(xx)):
      retvalu = math.exp(xx) - 1.0
   elif (iszero(xx)):
      retvalu = 0.0
   else:
      start = math.ceil(math.fabs(math.log(DBLEPS) /\
            math.log(math.fabs(xx))))
      if (start < 2):
         start = 2
      sum_curr = 0.0
      for jj in range(start, 0, -1):
         sum_curr = xx * (1.0 + sum_curr) / jj
      retvalu = sum_curr
   return (retvalu)
def cosm1(xx):
   if (0.1 < math.fabs(xx)):
      retvalu = math.cos(xx) - 1.0
   elif (iszero(xx)):
      retvalu = 0.0
   else:
      start = math.ceil(math.fabs(math.log(DBLEPS) /\
            math.log(math.fabs(xx))))
      if (start < 6):
         start = 6
      elif (isodd(start)):
         start += 1
      xr_sqr = -xx * xx
      sum_curr = 1.0 / (start * (start + 1))
      for jj in range(start, 0, -2):
         sum_curr += 1
         sum_curr *= xr_sqr / (jj * (jj - 1))
      retvalu = sum_curr
   return (retvalu)
def lns(xx):
   aa = math.fabs(xx)
   if (aa < 1.0 / DBLMAX):
      retvalu = -DBLMAXLN - 1.0
   else:
      retvalu = math.log(aa)
   return (retvalu)
def trip(xx):
   fx = 4.0 * frac(xx)
   if (fx < 2.0):
      retvalu = 1.0 - fx
   else:
      retvalu = fx - 3.0
   return (retvalu)
def lf_cbrtx_gt_zero(xx):
   zz = 64.0 * xx / 27.0
   yy = 1.0
   while (zz <= 1.0):
      zz *= 8.0
      yy /= 2.0
   while (8.0 < zz):
      zz /= 8.0
      yy *= 2.0
   return (yy)
def cbrt(yy):
   ayy = math.fabs(yy)
   if (0.0 < ayy):
      init_xx = lf_cbrtx_gt_zero(ayy)
      if (yy < 0):
         init_xx = -init_xx
      nrvx_xx = init_xx
      for nrvx_ii in range(0, 21, 1):
         nrvx_xp = nrvx_xx
         nrvx_dy = 3 * nrvx_xx
         if (iszero(nrvx_dy)):
            break
         nrvx_yy = nrvx_xx * nrvx_xx - yy / nrvx_xx
         nrvx_xx -= nrvx_yy / nrvx_dy
         if (iseq(nrvx_xp, nrvx_xx)):
            break
   else:
      nrvx_xx = 0.0
   return (nrvx_xx)
def cuberoot(xx):
   return (cbrt(xx))
def squareroot(xx):
   return (math.sqrt(xx))
def lf_continued_fraction(orig, show_diff):
   steps = 0
   xx = orig
   den_b = 0
   num_b = 1
   den_a = 1
   num_a = 0
   epsilon = DBLEPS / 2.0
   while True:
      whole = floorl(xx)
      den_c = den_b * whole + den_a
      num_c = num_b * whole + num_a
      den_a = den_b
      num_a = num_b
      den_b = den_c
      num_b = num_c
      steps += 1
      appr = (1.0 * num_b / den_b)
      diff = orig - appr
      print("", end='')
      print(str(whole), end='')
      if (0 <= show_diff):
         print("\t", end='')
         print(str(num_b), end='')
         print(" / ", end='')
         print(str(den_b), end='')
         print("\t", end='')
         print(str(appr), end='')
         if (0 < show_diff):
            print("\t", end='')
            print(str(diff), end='')
         print("\n", end='')
      else:
         print(" ", end='')
      if (iseq(xx, whole)):
         break
      xx = 1.0 / (xx - whole)
      epsilon *= 2.0
      if (math.fabs(diff) < epsilon):
         break# loop AWAIT
   return int(steps)
def print_contfra(orig):
   return int((lf_continued_fraction(orig, -1)))
def print_contfrac(orig):
   return int((lf_continued_fraction(orig, 0)))
def print_contfracd(orig):
   return int((lf_continued_fraction(orig, 1)))
def print_num2char(num):
   if (num < 32):
      if (num < 16):
         if (num < 8):
            if (num < 4):
               if (num < 2):
                  if (num < 1):
                     print("0", end='')
                  else:
                     print("1", end='')
               elif (num < 3):
                  print("2", end='')
               else:
                  print("3", end='')
            elif (num < 6):
               if (num < 5):
                  print("4", end='')
               else:
                  print("5", end='')
            elif (num < 7):
               print("6", end='')
            else:
               print("7", end='')
         elif (num < 12):
            if (num < 10):
               if (num < 9):
                  print("8", end='')
               else:
                  print("9", end='')
            elif (num < 11):
               print("a", end='')
            else:
               print("b", end='')
         elif (num < 14):
            if (num < 13):
               print("c", end='')
            else:
               print("d", end='')
         elif (num < 15):
            print("e", end='')
         else:
            print("f", end='')
      elif (num < 24):
         if (num < 20):
            if (num < 18):
               if (num < 17):
                  print("g", end='')
               else:
                  print("h", end='')
            elif (num < 19):
               print("i", end='')
            else:
               print("j", end='')
         elif (num < 22):
            if (num < 21):
               print("k", end='')
            else:
               print("l", end='')
         elif (num < 23):
            print("m", end='')
         else:
            print("n", end='')
      elif (num < 28):
         if (num < 26):
            if (num < 25):
               print("o", end='')
            else:
               print("p", end='')
         elif (num < 27):
            print("q", end='')
         else:
            print("r", end='')
      elif (num < 30):
         if (num < 29):
            print("s", end='')
         else:
            print("t", end='')
      elif (num < 31):
         print("u", end='')
      else:
         print("v", end='')
   elif (num < 48):
      if (num < 40):
         if (num < 36):
            if (num < 34):
               if (num < 33):
                  print("w", end='')
               else:
                  print("x", end='')
            elif (num < 35):
               print("y", end='')
            else:
               print("z", end='')
         elif (num < 38):
            if (num < 37):
               print("A", end='')
            else:
               print("B", end='')
         elif (num < 39):
            print("C", end='')
         else:
            print("D", end='')
      elif (num < 44):
         if (num < 42):
            if (num < 41):
               print("E", end='')
            else:
               print("F", end='')
         elif (num < 43):
            print("G", end='')
         else:
            print("H", end='')
      elif (num < 46):
         if (num < 45):
            print("I", end='')
         else:
            print("J", end='')
      elif (num < 47):
         print("K", end='')
      else:
         print("L", end='')
   elif (num < 56):
      if (num < 52):
         if (num < 50):
            if (num < 49):
               print("M", end='')
            else:
               print("N", end='')
         elif (num < 51):
            print("O", end='')
         else:
            print("P", end='')
      elif (num < 54):
         if (num < 53):
            print("Q", end='')
         else:
            print("R", end='')
      elif (num < 55):
         print("S", end='')
      else:
         print("T", end='')
   elif (num < 60):
      if (num < 58):
         if (num < 57):
            print("U", end='')
         else:
            print("V", end='')
      elif (num < 59):
         print("W", end='')
      else:
         print("X", end='')
   elif (num < 62):
      if (num < 61):
         print("Y", end='')
      else:
         print("Z", end='')
   elif (num < 63):
      print("_", end='')
   elif (num < 64):
      print("?", end='')
   else:
      print("(", end='')
      print(str(num), end='')
      print(")", end='')
   return int(num)
def print_base_out(num, baset):
   digits_arr = [0 for ii in range(65)]
   if (num < 0):
      print("-", end='')
      num = -num
   dig_count = 0
   while True:
      digits_arr[dig_count] = num % baset
      dig_count += 1
      num = floorl(num / baset)
      if (num == 0):
         break# loop AWAIT
   for ii in range(dig_count - 1, -1, -1):
      print_num2char(digits_arr[ii])
   return int(dig_count)
def print_base_outf(num, baset):
   dig_count = 0
   if (num < 0.0):
      print("-", end='')
      num = -num
      dig_count += 1
   dig_count += print_base_out(floorl(num), baset) + 1
   print(".", end='')
   lim = ceill(-lg(DBLEPS) / lg(baset))
   frc = frac(num) * baset
   ii = 1
   while (not iszero(frc) and ii <= lim):
      dig = floorl(frc)
      print_num2char(dig)
      frc -= dig
      frc *= baset
      ii += 1
   return int(dig_count + lim)
def f21(aa, bb, cc, zz):
   if (1 <= math.fabs(zz)):
      sum_curr = 0.0
   else:
      sum_curr = 1.0
      term = 1.0
      nn = 0
      while True:
         term *= ((aa + nn) * (bb + nn) * zz / ((cc + nn) *\
               (nn + 1)))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         nn += 1
   return (sum_curr)
def f11(aa, bb, zz):
   if (1 <= math.fabs(zz)):
      sum_curr = 0.0
   else:
      sum_curr = 1.0
      term = 1.0
      nn = 0
      while True:
         term *= ((aa + nn) * zz / ((bb + nn) * (nn + 1)))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         nn += 1
   return (sum_curr)
def lf_lambert_iter(xx, nearw_zero):
   wjj = nearw_zero
   ii = 0
   while True:
      eww = math.exp(wjj)
      tnn = wjj * eww - xx
      snn = (wjj + 2.0) / (2.0 * (wjj + 1))
      unn = (wjj + 1.0) * eww
      delta = tnn / (tnn * snn - unn)
      wjj_prev = wjj
      wjj += delta
      if (iseq(wjj, wjj_prev)):
         break# loop AWAIT
      ii += 1
      if (20 <= ii):
         break# loop AWAIT
   return (wjj)
def wp(xx):
   if (xx <= - math.exp(-1.0)):
      retvalu = -1.0
   else:
      if (xx < 3.0):
         snn = E * xx + 1.0
         near_w = cbrt(snn) - 1.0 + 0.025 * (snn / E)
      else:
         snn = math.log(xx)
         tnn = math.log(math.log(xx))
         near_w = snn - tnn + tnn / snn
      retvalu = lf_lambert_iter(xx, near_w)
   return (retvalu)
def wm(xx):
   if (xx <= - math.exp(-1.0)):
      retvalu = -1.0
   else:
      if (xx < - 0.303):
         tnn = -math.sqrt(2.0 * (1.0 + E * xx))
         near_w = ((((((((((226287557.0 / 37623398400.0) *\
               tnn - 1963.0 / 204120.0) * tnn + 680863.0 /\
               43545600.0) * tnn - 221.0 / 8505.0) * tnn +\
               769.0 / 17280.0) * tnn - 43.0 / 540.0) * tnn +\
               11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn + 1.0) *\
               tnn - 1.0)
      elif (xx < - 0.0510129):
         numer = (((6.5794931769023040E+2) * xx +\
               2.5388810188892484E+2) * xx -\
               7.8141767239074400E+0)
         denom = ((((((1.4779341280760887E+3) * xx +\
               9.6217849696986600E+2) * xx +\
               6.8260739999094280E+2) * xx +\
               9.9985670831076100E+1) * xx -\
               6.0439587136908080E+1) * xx +\
               1.0000000000000000E+0)
         near_w = numer / denom
      elif (xx < 0.0):
         near_w = math.log(-xx)
         for ii in range(0, 9, 1):
            near_w = math.log(xx / near_w)
      else:
         near_w = DBLMAX
      retvalu = lf_lambert_iter(xx, near_w)
   return (retvalu)
def wpinv(zz):
   return (zz * math.exp(zz))
def wminv(zz):
   return (zz * math.exp(zz))
def sinintegral(xx):
   if (iszero(xx)):
      sum_curr = 0.0
   else:
      sum_curr = xx
      term = xx
      xsq = xx * xx
      kk = 3
      while True:
         term *= - xsq / (kk * (kk - 1.0))
         sum_prev = sum_curr
         sum_curr += term / kk
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         kk += 2
   return (sum_curr)
def cosintegral(xx):
   if (iszero(xx)):
      sum_curr = -DBLMAX
   else:
      sum_curr = EULER + math.log(math.fabs(xx))
      term = 1.0
      xsq = xx * xx
      kk = 2
      while True:
         term *= - xsq / (kk * (kk - 1.0))
         sum_prev = sum_curr
         sum_curr += term / kk
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         kk += 2
   return (sum_curr)
def Ein(xx):
   sum_curr = 0
   term = -1
   kk = 1
   while True:
      term *= - xx / kk
      sum_prev = sum_curr
      sum_curr += term / kk
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      kk += 1
   return (sum_curr)
def expintegrali(xx):
   retvalu = EULER + math.log(math.fabs(xx)) - Ein(-xx)
   return (retvalu)
def expintegraln(nn, xx):
   return (math.pow(xx, nn - 1) * uigamma(1 - nn, xx))
def expintegral1(xx):
   retvalu = -EULER - math.log(math.fabs(xx)) + Ein(xx)
   return (retvalu)
def logintegral(xx):
   if (xx <= 1.0):
      retvalu = 0.0
   else:
      lnx = math.log(xx)
      sum = 0.0
      yy = 1.0
      limit = 1.6 * math.log(xx) + 40
      nn = 1
      while True:
         yy *= lnx / nn
         sum_prev = sum
         sum += yy / nn
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         nn += 1
         if (limit <= nn):
            break# loop AWAIT
      retvalu = EULER + math.log(lnx) + sum
   return (retvalu)
def carlsonRF(xx, yy, zz):
   while True:
      sqx = math.sqrt(xx)
      sqy = math.sqrt(yy)
      sqz = math.sqrt(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      if (iseq(xx, yy) and iseq(yy, zz)):
         break# loop AWAIT
   return (1.0 / math.sqrt(xx))
def carlsonRC(xx, yy):
   while True:
      lmbd = 2 * math.sqrt(xx * yy) + yy
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      if (iseq(xx, yy)):
         break# loop AWAIT
   return (1.0 / math.sqrt(xx))
def carlsonRJ(xx, yy, zz, pp):
   pfour = 1.0
   sigm = 0.0
   while True:
      sqx = math.sqrt(xx)
      sqy = math.sqrt(yy)
      sqz = math.sqrt(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      alfa = pp * (sqx + sqy + sqz) + sqx * sqy * sqz
      alfa *= alfa
      beta = pp * (pp + lmbd) * (pp + lmbd)
      sigm += pfour * carlsonRC(alfa, beta)
      pfour /= 4.0
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      pp = (pp + lmbd) / 4.0
      if (iseq(xx, yy) and iseq(yy, zz) and iseq(zz, pp)):
         break# loop AWAIT
   return (3.0 * sigm)
def carlsonRD(xx, yy, zz):
   pfour = 1.0
   sigm = 0.0
   while True:
      sqx = math.sqrt(xx)
      sqy = math.sqrt(yy)
      sqz = math.sqrt(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      alfa = zz * (sqx + sqy + sqz) + sqx * sqy * sqz
      alfa *= alfa
      beta = zz * (zz + lmbd) * (zz + lmbd)
      sigm += pfour * carlsonRC(alfa, beta)
      pfour /= 4.0
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      if (iseq(xx, yy) and iseq(yy, zz)):
         break# loop AWAIT
   return (3.0 * sigm)
def powi(xx, nn):
   pp = 1
   sqx = xx
   while (0 < nn):
      if (isodd(nn)):
         pp *= sqx
      sqx *= sqx
      nn = (nn >> 1)
   return int(pp)
def atothenmodp(aa, nn, pp):
   retvalu = 1
   cc = aa % pp
   while (0 < nn):
      if (isodd(nn)):
         retvalu = (retvalu * cc) % pp
         nn = (nn - 1) / 2
      else:
         nn /= 2
      cc = (cc * cc) % pp
   return int(retvalu)
def atothenmodx(aa, nn, pp):
   return (frac(math.exp(nn * math.log(aa) - math.log(pp))) * pp)
def ctz(nn):
   ii = 0
   while (0 == (nn & 1)):
      ii += 1
      nn = (nn >> 1)
   return int(ii)
def gcd(aa, bb):
   aa = math.fabs(aa)
   bb = math.fabs(bb)
   if (bb <= 0):
      bb = aa
   else:
      while (0 < aa):
         cc = aa
         aa = bb % aa
         bb = cc
   return int(bb)
def gcda(nn, num_arr_pc):
   gc = num_arr_pc[0]
   for ind in range(1, nn + 0, 1):
      gc = gcd(gc, num_arr_pc[ind])
   return int(gc)
def lcm(aa, bb):
   return int((aa * bb / gcd(aa, bb)))
def lcam(aa, bb):
   if (bb < aa):
      ii = aa
      aa = bb
      bb = ii
   ii = bb
   while True:
      mm = mods(ii, aa)
      if (- 2 <= mm and mm <= 2):
         break# loop AWAIT
      ii += bb
   if (mm == -2):
      ii += 1
   elif (0 <= mm):
      ii -= 1
   return int(ii)
def lcams(aa, bb):
   if (bb < aa):
      ii = aa
      aa = bb
      bb = ii
   ii = 2 * bb
   while True:
      mm = mods(ii, aa)
      if (- 2 <= mm and mm <= 2):
         break# loop AWAIT
      ii += bb
   if (mm == -2):
      ii += 1
   elif (0 <= mm):
      ii -= 1
   return int(ii)
def lcantim(aa, bb):
   if (isposint(aa) and isposint(bb)):
      odd_mask = 0
      if (isodd(aa)):
         odd_mask = 1
      if (isodd(bb)):
         odd_mask += 2
      if (2 == odd_mask or (bb < aa and odd_mask != 1)):
         ii = bb
         bb = aa
         aa = ii
      haa = floorl(aa / 2)
      hbb = floorl(bb / 2)
      ii = hbb
      while True:
         rema = dist(ii, aa)
         if (rema == haa):
            break
         elif (odd_mask == 3 and rema == haa + 1):
            break
         ii += bb
         if (aa * bb <= ii):
            break# loop AWAIT
      if (aa * bb <= ii):
         ii = 0
   else:
      ii = 0
   return int(ii)
def factor(nn, ret_fctr_arr_p):
   fctr_ind = 0
   nn = math.fabs(nn)
   if (nn <= 3):
      ret_fctr_arr_p[fctr_ind] = nn
      fctr_ind = 1
   else:
      for pp in range(2, 4, 1):
         while (0 == nn % pp):
            ret_fctr_arr_p[fctr_ind] = pp
            fctr_ind += 1
            nn /= pp
      pp = 1
      inc = 4
      while True:
         pp += inc
         inc = 6 - inc
         while (0 == nn % pp):
            ret_fctr_arr_p[fctr_ind] = pp
            fctr_ind += 1
            nn /= pp
         if (nn < pp * pp):
            break# loop AWAIT
      if (1 < nn):
         ret_fctr_arr_p[fctr_ind] = nn
         fctr_ind += 1
   ret_fctr_arr_p[fctr_ind] = 0
   return int(fctr_ind)
def modulo(xxn, yymod):
   retvalu = xxn % yymod
   if (retvalu < 0):
      retvalu += math.fabs(yymod)
   return int(retvalu)
def mods(xxn, yymod):
   ayy = floorl(math.fabs(yymod))
   axx = math.fabs(xxn)
   retvalu = axx % ayy
   if (0 < retvalu):
      while (ayy < 2 * retvalu):
         retvalu -= ayy
   elif (retvalu < 0):
      while (2 * retvalu < - ayy):
         retvalu += ayy
   return int(retvalu)
def pfl(nn):
   if (nn < 2):
      small_factor = 1
   elif (nn % 2 == 0):
      small_factor = 2
   elif (nn % 3 == 0):
      small_factor = 3
   elif (nn % 5 == 0):
      small_factor = 5
   elif (nn % 7 == 0):
      small_factor = 7
   else:
      lim = floorl(math.sqrt(nn))
      divid = 11
      small_factor = nn
      while (divid <= lim):
         if (nn % divid == 0):
            small_factor = divid
            break
         divid += 2
         if (nn % divid == 0):
            small_factor = divid
            break
         divid += 4
   return int(small_factor)
def pfg(nn):
   mm = nn
   while True:
      ff = pfl(mm)
      mm /= ff
      if (mm == 1):
         break# loop AWAIT
   return int(ff)
def isprime(nn):
   ann = math.fabs(nn)
   if (ann == 2 or ann == 3 or ann == 5 or ann == 7):
      retvalu_bol = True
   elif (ann < 11):
      retvalu_bol = False
   elif (pfl(ann) == ann):
      retvalu_bol = True
   else:
      retvalu_bol = False
   return (retvalu_bol)
def primeprev(pp):
   if (pp <= 7):
      if (pp < 0):
         retvalu = -primenext(-pp)
      elif (5 < pp):
         retvalu = 5
      elif (3 < pp):
         retvalu = 3
      elif (2 < pp):
         retvalu = 2
      else:
         retvalu = -2
   else:
      rema = pp % 6
      qq = pp - rema
      if (rema <= 1):
         qq -= 1
         inc = 4
      else:
         qq += 1
         inc = 2
      while (not isprime(qq)):
         qq -= inc
         inc = 6 - inc
      retvalu = qq
   return int(retvalu)
def primenext(pp):
   if (pp < 7):
      if (pp < 0):
         retvalu = -primeprev(-pp)
      elif (pp < 2):
         retvalu = 2
      elif (pp < 3):
         retvalu = 3
      elif (pp < 5):
         retvalu = 5
      else:
         retvalu = 7
   else:
      rema = (pp + 1) % 6
      qq = (pp + 1) - rema
      if (rema <= 1):
         qq += 1
         inc = 4
      else:
         qq += 5
         inc = 2
      while (not isprime(qq)):
         qq += inc
         inc = 6 - inc
      retvalu = qq
   return int(retvalu)
lv_pcf_end = 0
lv_pcf_arr = [0 for ii in range(0)]
def primecount(xx):
   global lv_pcf_arr
   global lv_pcf_end
   if (xx < 7):
      if (xx < 3):
         if (xx < 2):
            retvalu = 0
         else:
            retvalu = 1
      else:
         if (xx < 5):
            retvalu = 2
         else:
            retvalu = 3
   else:
      s_ind = floorl((xx - 5) / 2) - floorl((xx - 3) / 6)
      if (lv_pcf_end <= s_ind):
         ps_ind = lv_pcf_end
         if (lv_pcf_end <= 0):
            pcf_val = 2
         else:
            pcf_val = lv_pcf_arr[lv_pcf_end - 1]
         lv_pcf_end = ceil2(s_ind + 1, 2)
         for nzzn in range(len(lv_pcf_arr), int(lv_pcf_end)):
            lv_pcf_arr.append(0)
         poss_prime = 3 * ps_ind - (ps_ind % 2) + 5
         while (ps_ind <= s_ind):
            if (isprime(poss_prime)):
               pcf_val += 1
            lv_pcf_arr[ps_ind] = pcf_val
            poss_prime += 2
            ps_ind += 1
            if (isprime(poss_prime)):
               pcf_val += 1
            lv_pcf_arr[ps_ind] = pcf_val
            poss_prime += 4
            ps_ind += 1
      retvalu = lv_pcf_arr[s_ind]
   return int(retvalu)
def pcf(xx):
   return int((primecount(xx)))
def primecountx(xx):
   if (xx < 7):
      if (xx < 3):
         if (xx < 2):
            retvalu = 0
         else:
            retvalu = 1
      else:
         if (xx < 5):
            retvalu = 2
         else:
            retvalu = 3
   else:
      pcf_val = 4
      poss_prime = 11
      inc = 2
      while (poss_prime <= xx):
         if (isprime(poss_prime)):
            pcf_val += 1
         poss_prime += inc
         inc = 6 - inc
      retvalu = pcf_val
   return int(retvalu)
def eta(xx):
   ps_arr = []
   temp_arr = []
   if (0 < xx):
      tt = 0
      term = -math.log(DBLEPS) / xx
      if (term < math.log(4000)):
         kk = ceill(math.exp(term))
         sum = 0
         pm_one = -1.0
         nn = 1
         while True:
            pm_one = -pm_one
            term = pm_one * math.pow(nn, - xx)
            tt += 1
            sump = sum
            sum += term
            if (iseq(sump, sum)):
               break# loop AWAIT
            nn += 1
            if (kk <= nn):
               break# loop AWAIT
         retvalu = sum - 0.5 * term
      else:
         sum = 0
         pm_one = -1.0
         for nzzn in range(len(ps_arr), int(402)):
            ps_arr.append(0)
         for nzzn in range(len(temp_arr), int(402)):
            temp_arr.append(0)
         ps_arr[0] = -math.pow(2, - xx)
         tt += 1
         temp_arr[0] = ps_arr[0]
         nn = 1
         while True:
            pm_one = -pm_one
            ps_arr[nn] = ps_arr[nn - 1] + pm_one *\
                  math.pow(nn + 2, - xx)
            tt += 1
            temp_arr[nn] = ps_arr[nn]
            for kk in range(nn - 1, -1, -1):
               temp_arr[kk] = (temp_arr[kk] + temp_arr[kk +\
                     1]) / 2.0
            sump = sum
            sum = temp_arr[0]
            if (iseq(sump, sum)):
               break# loop AWAIT
            nn += 1
            if (400 <= nn):
               break# loop AWAIT
         s_ind = floorl(nn / 3)
         sum = (4 * temp_arr[s_ind] + 3 * temp_arr[s_ind +\
               1]) / 7
         retvalu = sum + 1.0
   elif (xx < 0):
      retvalu = 0.0
   else:
      retvalu = 0.5
   return (retvalu)
def zeta(xx):
   if (1 < xx):
      retvalu = eta(xx) / (1.0 - math.pow(2.0, 1.0 - xx))
   else:
      retvalu = 0.0
   return (retvalu)
def fibo3(nn, fib_a, fib_b):
   if (nn == 0):
      retvalu = fib_a
   else:
      for ii in range(2, nn + 1, 1):
         tt = fib_b
         fib_b += fib_a
         fib_a = tt
      retvalu = fib_b
   return (retvalu)
def fibo(nn):
   return (fibo3(nn, 0, 1))
def fibox(xx):
   if (math.log(DBLMAX) / math.log(PHI) < math.fabs(xx)):
      retvalu = 0.0
   else:
      zz = math.pow(PHI, xx)
      retvalu = (zz - math.cos(PI * xx) / zz) / math.sqrt(5.0)
   return (retvalu)
def fiboxinv(yy):
   if (yy <= 0):
      scvx_xx = 0.0
   else:
      if (yy <= 0.2):
         x_init = 0.075
      elif (yy <= 0.896946387424606):
         x_init = 0.8 * yy - 0.15
      elif (yy <= 1.009824331847821):
         x_init = 0.92
      else:
         x_init = math.log(yy * math.sqrt(5.0)) / math.log(PHI)
      scvx_dx = 0.05
      scvx_xx = x_init
      scvx_yy = yy - fibox(scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = yy - fibox(scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def lucas(nn):
   return (fibo3(nn, 2, 1))
def lucasx(xx):
   if (math.log(DBLMAX) / math.log(PHI) < math.fabs(xx)):
      retvalu = 0.0
   else:
      zz = math.pow(PHI, xx)
      retvalu = (zz + math.cos(PI * xx) / zz)
   return (retvalu)
def fusc(nn):
   aa = 1
   bb = 0
   while (0 < nn):
      if (isodd(nn)):
         bb += aa
      else:
         aa += bb
      nn = (nn >> 1)
   return int(bb)
def Tn(nn, xx):
   if (nn == 0):
      retvalu = 1.0
   elif (nn == 1):
      retvalu = xx
   elif (nn == 2):
      retvalu = 2.0 * xx * xx - 1.0
   else:
      tnm_a = 2.0 * xx * xx - 1.0
      tnm_b = xx
      tnn = tnm_a
      for kk in range(3, nn + 1, 1):
         tnn = (2.0 * xx * tnm_a) - tnm_b
         tnm_b = tnm_a
         tnm_a = tnn
      retvalu = tnn
   return (retvalu)
def Un(nn, xx):
   if (nn == 0):
      retvalu = 1.0
   elif (nn == 1):
      retvalu = 2.0 * xx
   else:
      tnm_a = 2.0 * xx
      tnm_b = 1.0
      tnn = tnm_a
      for kk in range(2, nn + 1, 1):
         tnn = (2.0 * xx * tnm_a) - tnm_b
         tnm_b = tnm_a
         tnm_a = tnn
      retvalu = tnn
   return (retvalu)
def tri(nn):
   return (nn * (nn + 1) / 2)
def triinv(nn):
   if (- 0.125 < nn):
      retvalu = (math.sqrt(8.0 * nn + 1.0) - 1.0) / 2.0
   else:
      retvalu = -0.5
   return (retvalu)
def polynum(ss, nn):
   return ((ss - 2) * nn * (nn - 1) / 2 + nn)
def polycnum(ss, nn):
   return (ss * nn * (nn - 1) / 2 + 1)
def tetranum(ss, nn):
   return (nn * (nn + 1) * ((ss - 2) * nn + 5 - ss) / 6)
def tetracnum(ss, nn):
   return (nn * (ss * nn * nn + 6 - ss) / 6)
def minkowski(xx):
   pp = floor(xx)
   qq = 1
   rr = pp + 1
   ss = 1
   dd = 1.0
   yy = pp
   while True:
      dd /= 2.0
      mm = pp + rr
      nn = qq + ss
      if (xx < mm / nn):
         rr = mm
         ss = nn
      else:
         yy += dd
         pp = mm
         qq = nn
      if (iseq(yy + dd, yy)):
         break# loop AWAIT
   return (yy)
def cantorxx(bb, ee, xx):
   if (ee < 0.0 or bb < 0.0 or 1.0 < ee + bb):
      yy = xx
   else:
      ulmt = 1.0 - ee
      yy = floor(xx)
      rest = (xx - yy)
      dd = 0.5
      while True:
         if (ulmt <= rest):
            yy += dd
            rest = frac((rest - ulmt) / ee)
         elif (bb <= rest):
            yy += dd
            break
         else:
            rest = frac(rest / bb)
         dd /= 2.0
         if (iseq(yy + dd, yy) or iszero(rest)):
            break# loop AWAIT
   return (yy)
def cantor(xx):
   return (cantorxx(1.0 / 3.0, 1.0 / 3.0, xx))
def cantorul(bb, ee, xx):
   return (math.pow(0.5, math.log(xx) / math.log(bb) + 0.0 * ee))
def cantorll(bb, ee, xx):
   return (math.pow(0.5, math.log(xx / (1.0 - ee)) /\
         math.log(bb) + 1.0))
def dlogx(aa, bb, nn):
   pp = aa
   retvalu = -1
   for ii in range(1, nn + 1, 1):
      if (pp == bb):
         retvalu = ii
         break
      pp = (pp * aa) % nn
   return int(retvalu)
def dlog(aa, bb, nn):
   log_arr = []
   if (aa == bb):
      retvalu = 1
   elif (aa <= 0 or bb <= 0 or nn <= 0):
      retvalu = -1
   elif (1 < gcd(aa, nn) or not isprimitiveroot(aa, nn)):
      retvalu = dlogx(aa, bb, nn)
   else:
      sqnn = ceill(math.sqrt(nn))
      for nzzn in range(len(log_arr), int(nn)):
         log_arr.append(0)
      for ii in range(0, nn + 0, 1):
         log_arr[ii] = 0
      atothesqnn = atothenmodp(aa, sqnn, nn)
      cur = atothesqnn
      for ii in range(1, sqnn + 1, 1):
         if (log_arr[cur] == 0):
            log_arr[cur] = ii
         cur = (cur * atothesqnn) % nn
      cur = bb % nn
      retvalu = -1
      for ii in range(0, sqnn + 1, 1):
         if (0 < log_arr[cur]):
            atothens = log_arr[cur] * sqnn - ii
            if (atothens < nn):
               retvalu = atothens
               break
         cur = (cur * aa) % nn
   return int(retvalu)
def dlog1(aa, nn):
   return int((dlog(aa, 1, nn)))
lv_mertens_end = 0
lv_mertens_arr = [0 for ii in range(0)]
def mertens(nn):
   global lv_mertens_arr
   global lv_mertens_end
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_mertens_end <= 0):
         lv_mertens_end = 4
         for nzzn in range(len(lv_mertens_arr),\
               int(lv_mertens_end)):
            lv_mertens_arr.append(0)
         lv_mertens_arr[0] = 0
         lv_mertens_arr[1] = 1
         lv_mertens_arr[2] = 0
         lv_mertens_arr[3] = -1
      if (lv_mertens_end <= nn):
         kk = lv_mertens_end
         lv_mertens_end = nn + 1
         for nzzn in range(len(lv_mertens_arr),\
               int(lv_mertens_end)):
            lv_mertens_arr.append(0)
         while (kk < lv_mertens_end):
            lv_mertens_arr[kk] = lv_mertens_arr[kk - 1] +\
                  mobius(kk)
            kk += 1
      retvalu = lv_mertens_arr[nn]
   return int(retvalu)
def has_primitiveroot_f(nf, fac_arr_pc):
   ind = 0
   if (1 < nf):
      if (fac_arr_pc[0] == 2):
         ind += 1
      if (2 < fac_arr_pc[ind]):
         while (ind < nf - 1):
            if (fac_arr_pc[ind] < fac_arr_pc[ind + 1]):
               break
            ind += 1
   return (ind == (nf - 1))
def sigma0_f(nf, fac_arr_pc):
   retvalu = 1
   exp_i = 2
   for ind in range(0, nf - 1, 1):
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]):
         exp_i += 1
      else:
         retvalu *= exp_i
         exp_i = 2
   return int(retvalu * exp_i)
def sigma1_f(nf, fac_arr_pc):
   retvalu = 1
   exp_i = 2
   prm_prev = fac_arr_pc[0]
   for ind in range(1, nf + 0, 1):
      prm_curr = fac_arr_pc[ind]
      if (prm_prev == prm_curr):
         exp_i += 1
      else:
         retvalu *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
         exp_i = 2
         prm_prev = prm_curr
   return int((retvalu * (powi(prm_prev, exp_i) - 1) /\
         (prm_prev - 1)))
def sigma_f(powy, nf, fac_arr_pc):
   if (powy == 0):
      retvalu = sigma0_f(nf, fac_arr_pc)
   elif (powy == 1):
      retvalu = sigma1_f(nf, fac_arr_pc)
   else:
      retvalu = 1
      exp_i = 2
      prm_prev = fac_arr_pc[0]
      for ind in range(1, nf + 0, 1):
         prm_curr = fac_arr_pc[ind]
         if (prm_prev == prm_curr):
            exp_i += 1
         else:
            pw = powi(prm_prev, powy)
            retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1))
            exp_i = 2
            prm_prev = prm_curr
      pw = powi(prm_prev, powy)
      retvalu *= ((powi(pw, exp_i) - 1) / (pw - 1))
   return int(retvalu)
def ispractical_f(nf, fac_arr_pc):
   if (2 < fac_arr_pc[0]):
      retvalu_bol = False
   else:
      retvalu_bol = True
      sgma = 1
      exp_i = 2
      prm_prev = fac_arr_pc[0]
      for ind in range(1, nf + 0, 1):
         prm_curr = fac_arr_pc[ind]
         if (prm_prev == prm_curr):
            exp_i += 1
         else:
            sgma *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
            if (1 + sgma < prm_curr):
               retvalu_bol = False
               break
            exp_i = 2
            prm_prev = prm_curr
   return (retvalu_bol)
def issquarefree_f(nf, fac_arr_pc):
   retvalu_bol = True
   for ind in range(1, nf + 0, 1):
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]):
         retvalu_bol = False
         break
   return (retvalu_bol)
def totient_f(nf, fac_arr_pc):
   retvalu = 1
   for ind in range(0, nf - 1, 1):
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]):
         retvalu *= fac_arr_pc[ind]
      else:
         retvalu *= (fac_arr_pc[ind] - 1)
   retvalu *= (fac_arr_pc[nf - 1] - 1)
   return int(retvalu)
def mobius_f(nf, fac_arr_pc):
   if (iseven(nf)):
      retvalu = 1
   else:
      retvalu = -1
   for ind in range(1, nf + 0, 1):
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]):
         retvalu = 0
         break
   return int(retvalu)
def prime0_f(nf, fac_arr_pc):
   retvalu = 1
   prm_prev = fac_arr_pc[0]
   for ind in range(1, nf + 0, 1):
      prm_curr = fac_arr_pc[ind]
      if (prm_prev < prm_curr):
         retvalu += 1
      prm_prev = prm_curr
   return int(retvalu)
LC_MAX_FACTORS = 65
def print_factor(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   print(str(nn), end='')
   print(":", end='')
   for ind in range(0, nf + 0, 1):
      print(" ", end='')
      print(str(fac_arr[ind]), end='')
   print("\n", end='')
   return int(nf)
def mobius(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   return int((mobius_f(nf, fac_arr)))
def isprimitiveroot(aa, nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (aa <= 1 or 1 < gcd(aa, nn)):
      retvalu_bol = False
   elif (aa == 2):
      retvalu_bol = isodd(nn)
   else:
      toti = totient(nn)
      nf_toti = factor(toti, fac_arr)
      if (atothenmodp(aa, toti / fac_arr[0], nn) == 1):
         retvalu_bol = False
      else:
         retvalu_bol = True
         for ind in range(1, nf_toti + 0, 1):
            if (fac_arr[ind - 1] != fac_arr[ind]):
               prm = fac_arr[ind]
               if (atothenmodp(aa, toti / prm, nn) == 1):
                  retvalu_bol = False
                  break
   return (retvalu_bol)
def prime0(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   return int((prime0_f(nf, fac_arr)))
def prime1(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   return int((factor(nn, fac_arr)))
def sigma0(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   return int((sigma0_f(nf, fac_arr)))
def sigma1(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   return int((sigma1_f(nf, fac_arr)))
def sigma(powy, nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn <= 1):
      retvalu = nn
   elif (powy == 0):
      retvalu = sigma0(nn)
   elif (powy == 1):
      retvalu = sigma1(nn)
   else:
      nf = factor(nn, fac_arr)
      retvalu = sigma_f(powy, nf, fac_arr)
   return int(retvalu)
def totient(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   nf = factor(nn, fac_arr)
   return int((totient_f(nf, fac_arr)))
def has_primitiveroot(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn < 2):
      retvalu_bol = False
   else:
      nf = factor(nn, fac_arr)
      retvalu_bol = has_primitiveroot_f(nf, fac_arr)
   return (retvalu_bol)
def issquarefree(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn < 1):
      retvalu_bol = False
   elif (nn < 3):
      retvalu_bol = True
   else:
      nf = factor(nn, fac_arr)
      retvalu_bol = issquarefree_f(nf, fac_arr)
   return (retvalu_bol)
def ispractical(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn < 1):
      retvalu_bol = False
   elif (nn < 3):
      retvalu_bol = True
   else:
      nf = factor(nn, fac_arr)
      retvalu_bol = ispractical_f(nf, fac_arr)
   return (retvalu_bol)
def primitiveroot(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn < 2):
      retvalu = 0
   elif (nn < 5):
      retvalu = nn - 1
   elif (not has_primitiveroot(nn)):
      retvalu = 0
   else:
      toti = totient(nn)
      nf_toti = factor(toti, fac_arr)
      mm = 2
      retvalu = 0
      while (mm < nn and retvalu <= 0):
         if (gcd(mm, nn) == 1):
            retvalu = mm
            prm = 0
            for ind in range(0, nf_toti + 0, 1):
               if (prm != fac_arr[ind]):
                  prm = fac_arr[ind]
                  if (atothenmodp(mm, toti / prm, nn) == 1):
                     retvalu = 0
                     break
         mm += 1
   return int(retvalu)
def carmichael(nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn < 8):
      lmbd = totient(nn)
   else:
      nf = factor(nn, fac_arr)
      ind = 0
      while (ind < nf and fac_arr[ind] == 2):
         ind += 1
      if (2 < ind):
         lmbd = (1 << (ind - 2))
      else:
         lmbd = 1
      while (ind < nf):
         prm = fac_arr[ind]
         pk = prm - 1
         while (ind < nf - 1 and prm == fac_arr[ind + 1]):
            ind += 1
            pk *= prm
         lmbd = lcm(lmbd, pk)
         ind += 1
   return int(lmbd)
def znorder(aa, nn):
   fac_arr = [0 for ii in range(LC_MAX_FACTORS)]
   if (nn <= 1):
      kk = nn
   elif (aa <= 1):
      kk = aa
   elif (1 < gcd(aa, nn)):
      kk = 0
   else:
      kk = carmichael(nn)
      nfkk = factor(kk, fac_arr)
      exp_i = 1
      for ind in range(0, nfkk + 0, 1):
         prm_i = fac_arr[ind]
         kk /= prm_i
         if (ind + 1 < nfkk and prm_i == fac_arr[ind + 1]):
            exp_i += 1
         else:
            ab = atothenmodp(aa, kk, nn)
            for ek in range(0, exp_i + 1, 1):
               if (ab == 1):
                  break
               kk *= prm_i
               ab = atothenmodp(ab, prm_i, nn)
            if (exp_i < ek):
               kk = 0
               break
            exp_i = 1
   return int(kk)
def repetendlen(denm, basee):
   while True:
      gd = gcd(denm, basee)
      denm /= gd
      if (1 == gd):
         break# loop AWAIT
   if (denm == 1):
      retvalu = 0
   else:
      retvalu = znorder(basee, denm)
   return int(retvalu)
def print_kevy(den, start, basee):
   leny = 0
   if (start < basee * den):
      numer = start
      valu = start
      while True:
         print_num2char(valu)
         leny += 1
         valu = floorl(numer / den)
         numer = (numer % den) * basee + valu
         if (numer == start or den * basee < leny):
            break# loop AWAIT
      if (basee <= start):
         print("-", end='')
         print(str(floorl(start / basee)), end='')
   return int(leny)
def eulerphi(nn):
   return int((totient(nn)))
def znorder__1(bb, mdls):
   if (1 < gcd(bb, mdls)):
      nn = 0
   else:
      pp = 1
      nn = 1
      while True:
         pp = (pp * bb) % mdls
         if (pp == 1):
            break# loop AWAIT
         nn += 1
         if (mdls <= nn):
            break# loop AWAIT
   return int(nn)
def bkn(bb, kk):
   return int((znorder(bb, kk * bb - 1)))
def bkbn(bb, kk, bbb):
   mdls = kk * bb - 1
   if (mdls % bbb == 0):
      mdls /= bbb
   return int((znorder(bb, mdls)))
lv_li_two = 0
def lix(xx):
   global lv_li_two
   if (lv_li_two <= 0):
      lv_li_two = logintegral(2.0)
   return (logintegral(xx) - lv_li_two)
def lixinv(yy):
   x_init = yy / math.log(yy)
   scvx_dx = 0.05
   scvx_xx = x_init
   scvx_yy = yy - lix(scvx_xx)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = yy - lix(scvx_xx)
      scvx_dy = (scvx_yy - scvx_yp)
      if (iszero(scvx_dy)):
         break
      scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def primenth__1(nn):
   if (nn < 0):
      retvalu = 0
   elif (nn < 4.25):
      retvalu = 1.6 * nn + 0.1
   else:
      logn = math.log(nn)
      loglogn = math.log(logn)
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0)\
            / logn - ((loglogn - 6.0) * loglogn + 11.0) /\
            (2.0 * logn * logn)) + 3.5 * math.sqrt(nn) + 10
   return (retvalu)
def reimann(nn):
   if (nn < 2):
      retvalu = 0
   else:
      sum = lix(nn)
      lim = 10 * lg(nn)
      ii = 2
      while True:
         sum_prev = sum
         sum += mobius(ii) * lix(math.pow(nn, 1.0 / ii)) / ii
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         ii += 1
         if (lim <= ii):
            break# loop AWAIT
      retvalu = sum
   return (retvalu)
def primenth(nn):
   prime_arr = [0 for ii in range(30)]
   if (nn < 5):
      if (nn < 1):
         pp = 0
      elif (nn < 2):
         pp = 2
      elif (nn < 3):
         pp = 3
      elif (nn < 4):
         pp = 5
      else:
         pp = 7
   else:
      if (1024 <= nn):
         prime_arr[0] = 8161
         prime_arr[1] = 17863
         prime_arr[2] = 38873
         prime_arr[3] = 84017
         prime_arr[4] = 180503
         prime_arr[5] = 386093
         prime_arr[6] = 821641
         prime_arr[7] = 1742537
         prime_arr[8] = 3681131
         prime_arr[9] = 7754077
         prime_arr[10] = 16290047
         prime_arr[11] = 34136029
         prime_arr[12] = 71378569
         prime_arr[13] = 148948139
         prime_arr[14] = 310248241
         prime_arr[15] = 645155197
         prime_arr[16] = 1339484197
         prime_arr[17] = 2777105129
         prime_arr[18] = 5750079047
         prime_arr[19] = 11891268401
         prime_arr[20] = 24563311309
         prime_arr[21] = 50685770167
         prime_arr[22] = 104484802057
         ii = floorl(lg(nn + 1) - 10)
         if (22 <= ii):
            ii = 22
         pp = prime_arr[ii]
         ii = round(math.pow(2, ii + 10))
         rmndr = fmodu(pp, 6)
         if (iseq(rmndr, 5)):
            inc = 2
         elif (iseq(rmndr, 1)):
            inc = 4
         else:
            sys.stderr.write("primenth:" +\
                  "PRIME_ISNT_PM_1_MOD_6")
            sys.exit(1)
      else:
         pp = 11
         ii = 5
         inc = 2
      if (nn < ii):
         print("II=", end='')
         print(str(ii), end='')
         print(" NN=", end='')
         print(str(nn), end='')
         sys.stderr.write("primenth:" + "PRIMENTH_failed")
         sys.exit(1)
      while (ii < nn):
         while True:
            pp += inc
            inc = 6 - inc
            if (isprime(pp)):
               break# loop AWAIT
         ii += 1
   return int(pp)
def bessJv(vv, xx):
   if (xx < 0.0):
      sum = 0.0
   else:
      avv = vv
      if (isposint(-vv)):
         avv = math.fabs(vv)
      xxsqr_div_four = (xx * xx / 4.0)
      term = math.pow(xx / 2.0, avv) / tgamma(avv + 1.0)
      sum = term
      mm = 1
      while True:
         term *= - xxsqr_div_four / (mm * (avv + mm))
         sum_prev = sum
         sum += term
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         mm += 1
      if (isposint(-vv) and isodd(vv)):
         sum = -sum
   return (sum)
def bessYv(vv, xx):
   if (isint(vv)):
      retvalu = bessYn(vv, xx)
   else:
      vvpi = PI * vv
      retvalu = ((math.cos(vvpi) * bessJv(vv, xx) -\
            bessJv(-vv, xx)) / math.sin(vvpi))
   return (retvalu)
def bessI0(xx):
   if (xx < 7.75):
      yy = xx * xx / 4
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
            1.0000000000000000000000801E+00) * yy + 1
   else:
      yy = 1.0 / xx
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
            3.9894228040143265335649948E-01)
      retvalu *= math.exp(xx) / math.sqrt(xx)
   return (retvalu)
def bessI1(xx):
   if (xx < 7.75):
      yy = xx * xx / 4
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
            8.333333333333333803E-02)
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0
   elif (xx < 500):
      yy = 1.0 / xx
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
            3.989422804014406054E-01) * math.exp(xx) /\
            math.sqrt(xx)
   else:
      yy = 1.0 / xx
      aa = math.exp(xx / 2.0)
      retvalu = (((((-5.843630344778927582E-02) * yy -\
            4.090421597376992892E-02) * yy -\
            4.675105322571775911E-02) * yy -\
            1.496033551467584157E-01) * yy +\
            3.989422804014314820E-01) * aa / math.sqrt(xx)
      retvalu *= aa
   return (retvalu)
def bessK0(arg):
   xx = arg
   if (xx <= 0.0):
      retvalu = DBLMAX
   elif (xx < DBLEPS):
      retvalu = 0.11593151565841244858684731328185 - math.log(xx)
   elif (xx <= 1.0):
      xz = xx * xx
      sump = (((((5.8599221412826100000E-04) * xz +\
            1.3166052564989571850E-01) * xz +\
            1.1999463724910714109E+01) * xz +\
            4.6850901201934832188E+02) * xz +\
            5.9169059852270512312E+03) * xz +\
            2.4708152720399552679E+03
      sumq = ((1.0000000000000000000E+00) * xz -\
            2.4994418972832303646E+02) * xz +\
            2.1312714303849120380E+04
      sumf = (((-1.6414452837299064100E+00) * xz -\
            2.9601657892958843866E+02) * xz -\
            1.7733784684952985886E+04) * xz -\
            4.0320340761145482298E+05
      sumg = ((1.0 * xz - 2.5064972445877992730E+02) * xz +\
            2.9865713163054025489E+04) * xz -\
            1.6128136304458193998E+06
      retvalu = sump / sumq - math.log(xx) * (xz * sumf /\
            sumg + 1.0)
   elif (xx < DBLMAXLN):
      xz = 1.0 / xx
      sump = (((((((((1.1394980557384778174E+02) * xz +\
            3.6832589957340267940E+03) * xz +\
            3.1075408980684392399E+04) * xz +\
            1.0577068948034021957E+05) * xz +\
            1.7398867902565686251E+05) * xz +\
            1.5097646353289914539E+05) * xz +\
            7.1557062783764037541E+04) * xz +\
            1.8321525870183537725E+04) * xz +\
            2.3444738764199315021E+03) * xz +\
            1.1600249425076035558E+02
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
            9.2556599177304839811E+01
      retvalu = sump / sumq / math.sqrt(xx) * math.exp(-xx)
   else:
      retvalu = 0.0
   return (retvalu)
def bessK1(arg):
   xx = arg
   if (xx < DBLEPS):
      retvalu = DBLMAX
   elif (xx < DBLEPS):
      retvalu = 1.0 / xx
   elif (xx <= 1.0):
      xz = xx * xx
      sump = (((((4.8127070456878442310E-1) * xz +\
            9.9991373567429309922E+1) * xz +\
            7.1885382604084798576E+3) * xz +\
            1.7733324035147015630E+5) * xz +\
            7.1938920065420586101E+5) * xz -\
            2.2149374878243304548E+6
      sumq = (((1.0000000000000000000E+0) * xz -\
            2.8143915754538725829E+2) * xz +\
            3.7264298672067697862E+4) * xz -\
            2.2149374878243304548E+6
      sumf = ((((-2.2795590826955002390E-1) * xz -\
            5.3103913335180275253E+1) * xz -\
            4.5051623763436087023E+3) * xz -\
            1.4758069205414222471E+5) * xz -\
            1.3531161492785421328E+6
      sumg = (((1.0000000000000000000E+0) * xz -\
            3.0507151578787595807E+2) * xz +\
            4.3117653211351080007E+4) * xz -\
            2.7062322985570842656E+6
      retvalu = (xz * math.log(xx) * sumf / sumg + sump /\
            sumq) / xx
   elif (xx < DBLMAXLN):
      xz = 1.0 / xx
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
            2.2196792496874548962E+0
      sumq = (((((((((1.0000000000000000000E+0) * xz +\
            3.6001069306861518855E+1) * xz +\
            3.3031020088765390854E+2) * xz +\
            1.2082692316002348638E+3) * xz +\
            2.1181000487171943810E+3) * xz +\
            1.9448440788918006154E+3) * xz +\
            9.6929165726802648634E+2) * xz +\
            2.5951223655579051357E+2) * xz +\
            3.4552228452758912848E+1) * xz +\
            1.7710478032601086579E+0
      retvalu = sump / sumq / math.sqrt(xx)
      retvalu = retvalu * math.exp(-xx)
   else:
      retvalu = 0.0
   return (retvalu)
def bessJn_ps(nn, xx):
   if (nn < 0):
      ann = -nn
   else:
      ann = nn
   term = math.pow(xx / 2.0, ann) / factorial(ann)
   xxsqr_div_four = -(xx * xx / 4.0)
   sum = term
   mm = 1
   while True:
      term *= xxsqr_div_four / (mm * (ann + mm))
      sum_prev = sum
      sum += term
      if (iseq(sum, sum_prev)):
         break# loop AWAIT
      mm += 1
   if (nn < 0 and isodd(nn)):
      sum = -sum
   return (sum)
def bessIn_ps(nn, xx):
   if (nn < 0):
      ann = -nn
   else:
      ann = nn
   term = math.pow(xx / 2.0, ann) / factorial(ann)
   xxsqr_div_four = xx * xx / 4.0
   sum = term
   mm = 1
   while True:
      term *= xxsqr_div_four / (mm * (ann + mm))
      sum_prev = sum
      sum += term
      if (iseq(sum, sum_prev)):
         break# loop AWAIT
      mm += 1
   return (sum)
def lf_besucjy0_xge5(xx, jfunc):
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.96936729297347051624E-4) * zz +\
         8.28352392107440799803E-2) * zz +\
         1.23953371646414299388E0) * zz +\
         5.44725003058768775090E0) * zz +\
         8.74716500199817011941E0) * zz +\
         5.30324038235394892183E0) * zz +\
         9.99999999999999997821E-1)
   denom = (((((((9.24408810558863637013E-4) * zz +\
         8.56288474354474431428E-2) * zz +\
         1.25352743901058953537E0) * zz +\
         5.47097740330417105182E0) * zz +\
         8.76190883237069594232E0) * zz +\
         5.30605288235394617618E0) * zz +\
         1.00000000000000000218E0)
   pp = numer / denom
   numer = ((((((((-1.13663838898469149931E-2) * zz -\
         1.28252718670509318512E0) * zz -\
         1.95539544257735972385E1) * zz -\
         9.32060152123768231369E1) * zz -\
         1.77681167980488050595E2) * zz -\
         1.47077505154951170175E2) * zz -\
         5.14105326766599330220E1) * zz -\
         6.05014350600728481186E0)
   denom = ((((((((1.00000000000000000000E0) * zz +\
         6.43178256118178023184E1) * zz +\
         8.56430025976980587198E2) * zz +\
         3.88240183605401609683E3) * zz +\
         7.24046774195652478189E3) * zz +\
         5.93072701187316984827E3) * zz +\
         2.06209331660327847417E3) * zz +\
         2.42005740240291393179E2)
   qq = numer / denom
   xn = xx - PI / 4
   if (jfunc < 1):
      pp = pp * math.cos(xn) - ww * qq * math.sin(xn)
   else:
      pp = pp * math.sin(xn) + ww * qq * math.cos(xn)
   return (pp * SQRTTWO / math.sqrt(PI * xx))
def lf_besucjy1_xge5(xx, jfunc):
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.62125616208173112003E-4) * zz +\
         7.31397056940917570436E-2) * zz +\
         1.12719608129684925192E0) * zz +\
         5.11207951146807644818E0) * zz +\
         8.42404590141772420927E0) * zz +\
         5.21451598682361504063E0) * zz +\
         1.00000000000000000254E0)
   denom = (((((((5.71323128072548699714E-4) * zz +\
         6.88455908754495404082E-2) * zz +\
         1.10514232634061696926E0) * zz +\
         5.07386386128601488557E0) * zz +\
         8.39985554327604159757E0) * zz +\
         5.20982848682361821619E0) * zz +\
         9.99999999999999997461E-1)
   pp = numer / denom
   numer = ((((((((5.10862594750176621635E-2) * zz +\
         4.98213872951233449420E0) * zz +\
         7.58238284132545283818E1) * zz +\
         3.66779609360150777800E2) * zz +\
         7.10856304998926107277E2) * zz +\
         5.97489612400613639965E2) * zz +\
         2.11688757100572135698E2) * zz +\
         2.52070205858023719784E1)
   denom = ((((((((1.00000000000000000000E0) * zz +\
         7.42373277035675149943E1) * zz +\
         1.05644886038262816351E3) * zz +\
         4.98641058337653607651E3) * zz +\
         9.56231892404756170795E3) * zz +\
         7.99704160447350683650E3) * zz +\
         2.82619278517639096600E3) * zz +\
         3.36093607810698293419E2)
   qq = numer / denom
   xn = xx - 3 * PI / 4
   if (jfunc < 1):
      pp = pp * math.cos(xn) - ww * qq * math.sin(xn)
   else:
      pp = pp * math.sin(xn) + ww * qq * math.cos(xn)
   return (pp * SQRTTWO / math.sqrt(PI * xx))
def bessJ0(xx):
   if (xx < 0.0):
      xx = -xx
   zz = xx * xx
   if (xx < 1E-5):
      retvalu = 1.0 - zz / 4.0
   elif (xx < 5.0):
      numer = ((((-4.79443220978201773821E9) * zz +\
            1.95617491946556577543E12) * zz -\
            2.49248344360967716204E14) * zz +\
            9.70862251047306323952E15)
      denom = (((((((((1.00000000000000000000E0) * zz +\
            4.99563147152651017219E2) * zz +\
            1.73785401676374683123E5) * zz +\
            4.84409658339962045305E7) * zz +\
            1.11855537045356834862E10) * zz +\
            2.11277520115489217587E12) * zz +\
            3.10518229857422583814E14) * zz +\
            3.18121955943204943306E16) * zz +\
            1.71086294081043136091E18)
      retvalu = (zz - 5.783185962946784521175) * (zz -\
            30.4712623436620863991) * numer / denom
   else:
      retvalu = lf_besucjy0_xge5(xx, 0)
   return (retvalu)
def bessJ1(xx):
   ww = xx
   if (ww < 0.0):
      ww = -ww
   if (ww < 5.0):
      zz = ww * ww
      numer = ((((-8.99971225705559398224E8) * zz +\
            4.52228297998194034323E11) * zz -\
            7.27494245221818276015E13) * zz +\
            3.68295732863852883286E15)
      denom = (((((((((1.00000000000000000000E0) * zz +\
            6.20836478118054335476E2) * zz +\
            2.56987256757748830383E5) * zz +\
            8.35146791431949253037E7) * zz +\
            2.21511595479792499675E10) * zz +\
            4.74914122079991414898E12) * zz +\
            7.84369607876235854894E14) * zz +\
            8.95222336184627338078E16) * zz +\
            5.32278620332680085395E18)
      retvalu = numer / denom * xx * (zz -\
            14.6819706421238932572) * (zz -\
            49.2184563216946036703)
   else:
      retvalu = lf_besucjy1_xge5(xx, 0)
   return (retvalu)
def bessY0(xx):
   if (xx <= 0.0):
      retvalu = DBLMAX
   else:
      zz = xx * xx
      if (xx < 1E-5):
         retvalu = 1.0 - zz / 4.0
      elif (xx < 5.0):
         numer = ((((((((1.55924367855235737965E4) * zz -\
               1.46639295903971606143E7) * zz +\
               5.43526477051876500413E9) * zz -\
               9.82136065717911466409E11) * zz +\
               8.75906394395366999549E13) * zz -\
               3.46628303384729719441E15) * zz +\
               4.42733268572569800351E16) * zz -\
               1.84950800436986690637E16)
         denom = ((((((((1.00000000000000000000E0) * zz +\
               1.04128353664259848412E3) * zz +\
               6.26107330137134956842E5) * zz +\
               2.68919633393814121987E8) * zz +\
               8.64002487103935000337E10) * zz +\
               2.02979612750105546709E13) * zz +\
               3.17157752842975028269E15) * zz +\
               2.50596256172653059228E17)
         retvalu = numer / denom + 2.0 * math.log(xx) *\
               bessJ0(xx) / PI
      else:
         retvalu = lf_besucjy0_xge5(xx, 1)
   return (retvalu)
def bessY1(xx):
   ww = xx
   if (xx <= 0.0):
      retvalu = -DBLMAX
   elif (ww <= 5.0):
      zz = ww * ww
      numer = ((((((1.2632047479017802640E9) * zz -\
            6.47355876379160291031E11) * zz +\
            1.14509511541823727583E14) * zz -\
            8.12770255501325109621E15) * zz +\
            2.02439475713594898196E17) * zz -\
            7.78877196265950026825E17)
      denom = (((((((((1.00000000000000000000E0) * zz +\
            5.94301592346128195359E2) * zz +\
            2.35564092943068577943E5) * zz +\
            7.34811944459721705660E7) * zz +\
            1.87601316108706159478E10) * zz +\
            3.88231277496238566008E12) * zz +\
            6.20557727146953693363E14) * zz +\
            6.87141087355300489866E16) * zz +\
            3.97270608116560655612E18)
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) *\
            math.log(xx) - 1.0 / xx) / PI
   else:
      retvalu = lf_besucjy1_xge5(xx, 1)
   return (retvalu)
def lf_bess_ucrecur(nn, xx, fzero, fone):
   if (nn <= 0):
      cv = fzero
   elif (nn == 1):
      cv = fone
   else:
      tox = 2.0 / xx
      av = fzero
      bv = fone
      for ii in range(1, nn + 0, 1):
         cv = tox * ii * bv - av
         av = bv
         bv = cv
   return (cv)
def lf_limi(nn):
   return int((nn + floor(math.sqrt(40.0 * nn))))
def lf_bess_ucrecur2(nn, xx):
   flipflop = 0
   sjm = 0.0
   tox = 2.0 / math.fabs(xx)
   retvalu = 0.0
   bzp = 0.0
   bzc = 1.0
   limi = lf_limi(nn)
   if (isodd(limi)):
      limi -= 1
   for jj in range(limi, 0, -1):
      bzm = jj * tox * bzc - bzp
      bzp = bzc
      bzc = bzm
      if (flipflop == 0):
         flipflop = 1
      else:
         sjm += bzc
         flipflop = 0
      if (jj == nn):
         retvalu = bzp
   sjm = 2.0 * sjm - bzc
   retvalu /= sjm
   return (retvalu)
def bessIn(nn, xx):
   if (nn < 0 or iszero(xx)):
      retvalu = 0.0
   elif (nn == 0):
      axx = math.fabs(xx)
      retvalu = bessI0(axx)
   elif (nn == 1):
      axx = math.fabs(xx)
      retvalu = bessI1(axx)
   else:
      tox = 2.0 / math.fabs(xx)
      retvalu = 0.0
      bzp = 0.0
      bzc = 1.0
      limi = 2 * lf_limi(nn)
      for jj in range(limi, 0, -1):
         bzm = bzp + jj * tox * bzc
         bzp = bzc
         bzc = bzm
         if (jj == nn):
            retvalu = bzp
      retvalu *= bessI0(xx) / bzc
   if (xx < 0.0 and isodd(nn)):
      retvalu = -retvalu
   return (retvalu)
def bessJn(nn, xx):
   if (nn == 0):
      retvalu = bessJ0(xx)
   elif (nn == 1):
      retvalu = bessJ1(xx)
   elif (nn < math.fabs(xx)):
      retvalu = lf_bess_ucrecur(nn, xx, bessJ0(xx), bessJ1(xx))
   else:
      retvalu = lf_bess_ucrecur2(nn, xx)
   return (retvalu)
def bessYn(nn, xx):
   if (nn == 0):
      retvalu = bessY0(xx)
   elif (nn == 1):
      retvalu = bessY1(xx)
   else:
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx))
   return (retvalu)
def bessKn(nn, xx):
   if (nn < 0 or iszero(xx)):
      retvalu = 0.0
   elif (nn == 0):
      retvalu = bessK0(xx)
   elif (nn == 1):
      retvalu = bessK1(xx)
   else:
      retvalu = lf_bess_ucrecur(nn, xx, bessK0(xx), bessK1(xx))
   return (retvalu)
def bessYn_ps(nn, xx):
   if (nn < 0 or iszero(xx)):
      retvalu = 0.0
   elif (nn == 0):
      xxsqr_div_four = xx * xx / 4.0
      sum = (math.log(xx / 2.0) + EULER) * bessJn(0, xx)
      term = -1
      hn = 0
      kk = 1
      while True:
         hn += 1.0 / kk
         term *= - xxsqr_div_four / (kk * kk)
         sum_prev = sum
         sum += term * hn
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         kk += 1
      retvalu = 2.0 * sum / PI
   elif (nn == 1):
      retvalu = bessY1(xx)
   else:
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx))
   return (retvalu)
def bessY1__1(xx):
   if (iszero(xx)):
      retvalu = -DBLMAX
   elif (xx < 8.0):
      yy = xx * xx
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) *\
            yy + 7.349264551E+8) * yy - 5.153438139E+10) * yy\
            + 1.275274390E+12) * yy - 4.900604943E+12)
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy +\
            1.020426050E+5) * yy + 2.245904002E+7) * yy +\
            3.733650367E+9) * yy + 4.244419664E+11) * yy +\
            2.499580570E+13)
      retvalu = (xx * (numer / denom) + 2.0 * (bessJn(1, xx)\
            * math.log(xx) - 1.0 / xx) / PI)
   else:
      zz = 8.0 / xx
      yy = zz * zz
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) *\
            yy - 3.516396496E-5) * yy + 1.831050000E-3) * yy\
            + 1.000000000E+0)
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) *\
            yy + 8.449199096E-6) * yy - 2.002690873E-4) * yy\
            + 4.687499995E-2)
      ww = xx - 0.75 * PI
      retvalu = SQRTTWO / math.sqrt(PI * xx) * (math.sin(ww)\
            * numer + zz * math.cos(ww) * denom)
   return (retvalu)
def lf_bess_lcrecur(nn, xx, fzero, fone):
   if (nn <= 0):
      cv = fzero
   elif (nn == 1):
      cv = fone
   else:
      av = fzero
      bv = fone
      for ii in range(1, nn + 0, 1):
         cv = (2.0 * ii + 1.0) * bv / xx - av
         av = bv
         bv = cv
   return (cv)
def bess_jn(nn, xx):
   if (iszero(xx)):
      if (nn == 0):
         retvalu = 1.0
      else:
         retvalu = 0.0
   else:
      jk_a = math.sin(xx) / xx
      jk_b = (math.sin(xx) - xx * math.cos(xx)) / (xx * xx)
      if (nn <= 0):
         retvalu = jk_a
      elif (nn <= 1):
         retvalu = jk_b
      else:
         retvalu = lf_bess_lcrecur(nn, xx, jk_a, jk_b)
   return (retvalu)
def bess_yn(nn, xx):
   if (iszero(xx)):
      if (nn == 0):
         retvalu = 1.0
      else:
         retvalu = 0.0
   else:
      yk_a = -math.cos(xx) / xx
      yk_b = (-math.cos(xx) - xx * math.sin(xx)) / (xx * xx)
      if (nn <= 0):
         retvalu = yk_a
      elif (nn <= 1):
         retvalu = yk_b
      else:
         retvalu = lf_bess_lcrecur(nn, xx, yk_a, yk_b)
   return (retvalu)
lv_partitionr_arr = [0 for ii in range(0)]
lv_partitionr_end = 0
def partition(nn):
   global lv_partitionr_arr
   global lv_partitionr_end
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_partitionr_end <= 0):
         lv_partitionr_end = 6
         for nzzn in range(len(lv_partitionr_arr),\
               int(lv_partitionr_end)):
            lv_partitionr_arr.append(0)
         lv_partitionr_arr[0] = 1
         lv_partitionr_arr[1] = 1
         lv_partitionr_arr[2] = 2
         lv_partitionr_arr[3] = 3
         lv_partitionr_arr[4] = 5
         lv_partitionr_arr[5] = 7
      if (lv_partitionr_end <= nn):
         mm = lv_partitionr_end
         lv_partitionr_end = nn + 1
         for nzzn in range(len(lv_partitionr_arr),\
               int(lv_partitionr_end)):
            lv_partitionr_arr.append(0)
         while (mm < lv_partitionr_end):
            sum = 0
            ssign = 1
            kk = 1
            jj = mm - 1
            while (0 <= jj):
               sum += ssign * lv_partitionr_arr[jj]
               jj -= kk
               if (jj < 0):
                  break
               sum += ssign * lv_partitionr_arr[jj]
               ssign = -ssign
               kk += 1
               jj -= (2 * kk - 1)
            lv_partitionr_arr[mm] = sum
            mm += 1
      retvalu = lv_partitionr_arr[nn]
   return (retvalu)
lv_partitionq_arr = [0 for ii in range(0)]
lv_partitionq_end = 0
def partitionq(nn):
   global lv_partitionq_arr
   global lv_partitionq_end
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_partitionq_end <= 0):
         lv_partitionq_end = 6
         for nzzn in range(len(lv_partitionq_arr),\
               int(lv_partitionq_end)):
            lv_partitionq_arr.append(0)
         lv_partitionq_arr[0] = 1
         lv_partitionq_arr[1] = 1
         lv_partitionq_arr[2] = 1
         lv_partitionq_arr[3] = 2
         lv_partitionq_arr[4] = 2
         lv_partitionq_arr[5] = 3
      if (lv_partitionq_end <= nn):
         mm = lv_partitionq_end
         lv_partitionq_end = nn + 1
         for nzzn in range(len(lv_partitionq_arr),\
               int(lv_partitionq_end)):
            lv_partitionq_arr.append(0)
         while (mm < lv_partitionq_end):
            sum = 0
            ssign = 1
            kk = 1
            jj = mm - 1
            while (0 <= jj):
               sum += ssign * lv_partitionq_arr[jj]
               jj -= kk
               if (jj < 0):
                  break
               sum += ssign * lv_partitionq_arr[jj]
               ssign = -ssign
               kk += 1
               jj -= (2 * kk - 1)
            ee = round(math.sqrt(1.0 + 12.0 * mm) / 6.0)
            if (mm == (3 * ee * ee - ee) or mm == (3 * ee *\
                  ee + ee)):
               if (isodd(ee)):
                  sum -= 1
               else:
                  sum += 1
            lv_partitionq_arr[mm] = sum
            mm += 1
      retvalu = lv_partitionq_arr[nn]
   return (retvalu)
def bitwisenot(xx):
   retvalu = ~xx
   return int(retvalu)
def bitwiseand(xx, yy):
   retvalu = (xx & yy)
   return int(retvalu)
def bitwiseor(xx, yy):
   retvalu = (xx | yy)
   return int(retvalu)
def bitwisexor(xx, yy):
   retvalu = (xx ^ yy)
   return int(retvalu)
def bitshiftl(hexnumber, shift_count):
   if (shift_count < 0):
      retvalu = (hexnumber >> (- shift_count))
   elif (0 < shift_count):
      retvalu = (hexnumber << shift_count)
   else:
      retvalu = hexnumber
   return int(retvalu)
def bitshiftr(hexnumber, shift_count):
   if (shift_count < 0):
      retvalu = (hexnumber << (- shift_count))
   elif (0 < shift_count):
      retvalu = (hexnumber >> shift_count)
   else:
      retvalu = hexnumber
   return int(retvalu)
def bits_count(hexnumber):
   bitmask = 1
   bit_counter = 0
   while (bitmask <= hexnumber):
      if (bitwiseand(bitmask, hexnumber) != 0):
         bit_counter += 1
      bitmask = (bitmask << 1)
   return int(bit_counter)
def bits_ls1b(orig):
   if (orig == 0):
      retvalu = 0
   else:
      divisor = 1
      while (0 == (divisor & orig)):
         divisor *= 2
      retvalu = divisor
   return int(retvalu)
def bits_ms1b(orig):
   if (orig == 0):
      retvalu = 0
   else:
      divisor = -2
      while (0 != (divisor & orig)):
         divisor *= 2
      retvalu = -divisor / 2
   return int(retvalu)
def bits_ls1bpos(orig):
   if (orig == 0):
      retvalu = -1
   else:
      divisor = 1
      bit_count = 0
      while (0 == (divisor & orig)):
         divisor *= 2
         bit_count += 1
      retvalu = bit_count
   return int(retvalu)
def bits_ms1bpos(orig):
   if (orig == 0):
      retvalu = 0
   else:
      divisor = -2
      bit_count = 0
      while (0 != (divisor & orig)):
         divisor *= 2
         bit_count += 1
      retvalu = bit_count
   return int(retvalu)
def bits_assign(orig, value_to_set, which_mask):
   if (which_mask == 0):
      retvalu = orig
   else:
      divisor = bits_ls1bpos(which_mask)
      tempo = (orig & (~which_mask))
      tempv = (value_to_set << divisor)
      retvalu = (tempo | (tempv & which_mask))
   return int(retvalu)
def bits_get(vall, mask):
   return int(((vall & mask) / bits_ls1b(mask)))
def bits_set(vall, mask):
   return int((((vall * bits_ls1b(mask)) & mask)))
def lf_calerf(xx, jint):
   absx = math.fabs(xx)
   xsq = xx * xx
   flag = 0
   if (absx <= 0.46875):
      numer = (((((1.85777706184603153E-1) * xsq +\
            3.16112374387056560E+0) * xsq +\
            1.13864154151050156E+2) * xsq +\
            3.77485237685302021E+2) * xsq +\
            3.20937758913846947E+3)
      denom = (((((1.00000000000000000E+0) * xsq +\
            2.36012909523441209E+1) * xsq +\
            2.44024637934444173E+2) * xsq +\
            1.28261652607737228E+3) * xsq +\
            2.84423683343917062E+3)
      retvalu = xx * numer / denom
      if (jint == 1):
         retvalu = 1.0 - retvalu
      elif (jint == 2):
         retvalu = math.exp(xsq) * (1.0 - retvalu)
      flag = 1
   elif (absx <= 4.0):
      numer = (((((((((2.15311535474403846E-8) * absx +\
            5.64188496988670089E-1) * absx +\
            8.88314979438837594E+0) * absx +\
            6.61191906371416295E+1) * absx +\
            2.98635138197400131E+2) * absx +\
            8.81952221241769090E+2) * absx +\
            1.71204761263407058E+3) * absx +\
            2.05107837782607147E+3) * absx +\
            1.23033935479799725E+3)
      denom = (((((((((1.00000000000000000E+0) * absx +\
            1.57449261107098347E+1) * absx +\
            1.17693950891312499E+2) * absx +\
            5.37181101862009858E+2) * absx +\
            1.62138957456669019E+3) * absx +\
            3.29079923573345963E+3) * absx +\
            4.36261909014324716E+3) * absx +\
            3.43936767414372164E+3) * absx +\
            1.23033935480374942E+3)
      result = numer / denom
   else:
      rsqrpi = math.sqrt(1.0 / PI)
      if (jint != 2 and math.sqrt(math.log(DBLMAX)) <= absx):
         result = 0.0
      elif (jint == 2 and 6.71E+7 <= absx):
         if (DBLMAX / 8.0 <= absx):
            result = 0.0
         else:
            result = rsqrpi / absx
      else:
         rxsq = 1.0 / (absx * absx)
         numer = ((((((-1.63153871373020978E+2) * rxsq -\
               3.05326634961232344E+3) * rxsq -\
               3.60344899949804439E+3) * rxsq -\
               1.25781726111229246E+3) * rxsq -\
               1.60837851487422766E+2) * rxsq -\
               6.58749161529837803E+0)
         denom = ((((((1.00000000000000000E+4) * rxsq +\
               2.56852019228982242E+4) * rxsq +\
               1.87295284992346047E+4) * rxsq +\
               5.27905102951428412E+3) * rxsq +\
               6.05183413124413191E+2) * rxsq +\
               2.33520497626869185E+1)
         result = (rsqrpi + rxsq * numer / denom) / absx
   if (flag == 0):
      if (jint == 2):
         if (xx < - math.sqrt(math.log(DBLMAX))):
            retvalu = DBLMAX
         elif (xx < 0.0):
            retvalu = 2.0 * math.exp(xsq) - result
         else:
            retvalu = result
      else:
         result *= math.exp(-xsq)
         if (jint == 0):
            if (0.0 <= xx):
               retvalu = (0.5 - result) + 0.5
            else:
               retvalu = -((0.5 - result) + 0.5)
         elif (jint == 1):
            if (xx < 0.0):
               retvalu = 2.0 - result
            else:
               retvalu = result
         else:
            retvalu = 0.0
   return (retvalu)
def erf(xx):
   return (lf_calerf(xx, 0))
def erfc(xx):
   return (lf_calerf(xx, 1))
def erfcx(xx):
   return (lf_calerf(xx, 2))
def erfcinv(yy_orig):
   if (yy_orig <= 0.0):
      retvalu = DBLMAX / 2.0
   elif (2.0 <= yy_orig):
      retvalu = -(DBLMAX / 2.0)
   elif (iszero(yy_orig - 1.0)):
      retvalu = 0.0
   else:
      if (1.0 < yy_orig):
         yy = 2.0 - yy_orig
      else:
         yy = yy_orig
      dx = 1.0
      xx = 0.0
      cc = -math.sqrt(TAU / 8.0)
      ii = 0
      while True:
         uu = cc * (erfcx(xx) - yy * math.exp(xx * xx))
         dx = -uu / (1.0 + uu * xx)
         xx_pr = xx
         xx += dx
         if (iseq(xx_pr, xx)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      if (1.0 < yy_orig):
         retvalu = -xx
      else:
         retvalu = xx
   return (retvalu)
def erfcxinv(yy):
   xx = 0.0
   if (not iszero(yy - 1.0)):
      dx = 1.0
      cc = math.sqrt(8.0 / TAU)
      ii = 0
      while True:
         ex = erfcx(xx)
         df = 2.0 * xx * ex - cc
         uu = (ex - yy) / df
         dx = -uu / (1.0 - uu * (xx + ex / df))
         xx_pr = xx
         xx += dx
         if (iseq(xx_pr, xx)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
   return (xx)
def erfinv(yy):
   if (iszero(yy)):
      retvalu = 0.0
   elif (0.5 < yy):
      retvalu = erfcinv(1.0 - yy)
   elif (yy < - 0.5):
      retvalu = -erfcinv(1.0 + yy)
   else:
      dx = 1.0
      xx = 0.0
      cc = math.sqrt(TAU / 8.0)
      ii = 0
      while True:
         uu = cc * (erf(xx) - yy) * math.exp(xx * xx)
         dx = -uu / (1.0 + uu * xx)
         xx_pr = xx
         xx += dx
         if (iseq(xx_pr, xx)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xx
   return (retvalu)
def erf__1(xx):
   tt = (1.0 / (1.0 + (0.5 * math.fabs(xx))))
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt\
         + 1.48851587E+0) * tt - 1.13520398E+0) * tt +\
         2.78868070E-1) * tt - 1.86288060E-1) * tt +\
         9.67841800E-2) * tt + 3.74091960E-1) * tt +\
         1.00002368E+0) * tt - 1.26551223E+0)
   ans = 1.0 - tt * math.exp((-xx * xx) + ply)
   if (xx < 0.0):
      ans = -ans
   return (ans)
def erf__2(xx):
   tt = 1.0 / (1.0 + 0.3275911 * math.fabs(xx))
   ply = ((((((1.061405429E+0) * tt - 1.453152027E+0) * tt +\
         1.421413741E+0) * tt - 2.844967360E-1) * tt +\
         2.548295920E-1) * tt + 0.000000000E+0)
   ans = 1.0 - math.exp(-xx * xx) * ply
   if (xx < 0.0):
      ans = -ans
   return (ans)
def erf__3(xx):
   add_arr = [0 for ii in range(80)]
   axx = math.fabs(xx)
   xxsq = xx * xx
   if (axx < 4.4):
      factx = 1
      add_arr[0] = 1
      nn = 1
      while True:
         factx *= - xxsq / nn
         add_arr[nn] = factx / (2.0 * nn + 1.0)
         if (math.fabs(add_arr[nn]) < DBLEPS):
            break# loop AWAIT
         nn += 1
         if (79 <= nn):
            break# loop AWAIT
      sum_curr = 0
      for kk in range(nn, -1, -1):
         sum_curr += add_arr[kk]
      sum_curr *= (2.0 * xx / math.sqrt(PI))
   else:
      factx = -math.exp(-xxsq) / math.sqrt(PI)
      sum_curr = 0.0
      kk = round(xxsq)
      for nn in range(1, kk + 0, 1):
         factx *= - (2.0 * nn - 1.0) / (2.0 * xxsq)
         sum_curr += factx
      sum_curr += 1.0 - math.exp(-xxsq) / math.sqrt(PI) / axx
      if (xx < 0):
         sum_curr = -sum_curr
   return (sum_curr)
def erf__4(xx):
   axx = math.fabs(xx)
   xxsq = xx * xx
   twoxxsq = 2.0 * xxsq
   sum_curr = 0.0
   if (axx < 4.4):
      factz = (2.0 * xx / math.sqrt(PI))
      factx = factz
      nn = 3
      while True:
         twonnpone = 2 * nn + 1
         factx *= xxsq * xxsq / ((nn - 1) * nn)
         term = (factx * (twonnpone * (nn - xxsq) + twoxxsq)\
               / (4.0 * nn * nn - 1.0))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_prev, sum_curr)):
            break# loop AWAIT
         nn += 2
      sum_curr += (1.0 - xxsq / 3.0) * factz
   else:
      factx = -math.exp(-xxsq) / (xx * math.sqrt(PI))
      kk = round(xxsq)
      for nn in range(1, kk - 3, 2):
         factx *= nn * (nn + 1) / (twoxxsq * twoxxsq)
         term = factx * (1.0 - (2.0 * nn + 1) / twoxxsq)
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_prev, sum_curr)):
            break
      sum_curr += 1.0 - math.exp(-xxsq) / math.sqrt(PI) / axx
      if (xx < 0.0):
         sum_curr = -sum_curr
   return (sum_curr)
def lgamma__1(xx):
   aa_arr = [0 for ii in range(15)]
   if (xx <= 0.0 and isint(xx)):
      retvalu = math.log(DBLMAX)
   else:
      if (xx < 0):
         qq = 1 - xx
      else:
         qq = xx
      aa_arr[0] = +5.7156235665862923517E+1
      aa_arr[1] = -5.9597960355475491248E+1
      aa_arr[2] = +1.4136097974741747174E+1
      aa_arr[3] = -4.9191381609762019978E-1
      aa_arr[4] = +3.3994649984811888699E-5
      aa_arr[5] = +4.6523628927048575665E-5
      aa_arr[6] = -9.8374475304879564677E-5
      aa_arr[7] = +1.5808870322491248884E-4
      aa_arr[8] = -2.1026444172410488319E-4
      aa_arr[9] = +2.1743961811521264320E-4
      aa_arr[10] = -1.6431810653676389022E-4
      aa_arr[11] = +8.4418223983852743293E-5
      aa_arr[12] = -2.6190838401581408670E-5
      aa_arr[13] = +3.6899182659531622704E-6
      sum = 0.99999999999999709182
      for ii in range(0, 14, 1):
         sum += aa_arr[ii] / (qq + ii)
      tt = qq + 607.0 / 128.0 - 0.5
      qq = math.log(TAU) / 2.0 + (qq - 0.5) * math.log(tt) +\
            math.log(sum) - tt
      if (xx < 0):
         retvalu = math.log(PI / math.fabs(math.sin(2.0 * TAU\
               * xx))) - qq
      else:
         retvalu = qq
   return (retvalu)
def lgammainv(yy):
   yy_fixed = yy / PI + math.log(yy + 0.5)
   xx_init = yy_fixed + PI - 0.5
   scvx_dx = 0.01
   scvx_xx = xx_init
   scvx_yy = yy - lgamma(scvx_xx)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = yy - lgamma(scvx_xx)
      scvx_dy = (scvx_yy - scvx_yp)
      if (iszero(scvx_dy)):
         break
      scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def lf_lgamma_gt_zero(xx):
   if (xx < 13.0):
      zz = 1.0
      pp = 0.0
      uu = xx
      while (3.0 <= uu):
         pp -= 1.0
         uu = xx + pp
         zz *= uu
      while (uu < 2.0):
         zz /= uu
         pp += 1.0
         uu = xx + pp
      if (zz < 0.0):
         zz = -zz
      if (iseq(uu, 2.0)):
         retvalu = math.log(zz)
      else:
         pp -= 2.0
         xx += pp
         numer = ((((((-1.37825152569120859100E+3) * xx -\
               3.88016315134637840924E+4) * xx -\
               3.31612992738871184744E+5) * xx -\
               1.16237097492762307383E+6) * xx -\
               1.72173700820839662146E+6) * xx -\
               8.53555664245765465627E+5)
         denom = (((((((1.00000000000000000000E+0) * xx -\
               3.51815701436523470549E+2) * xx -\
               1.70642106651881159223E+4) * xx -\
               2.20528590553854454839E+5) * xx -\
               1.13933444367982507207E+6) * xx -\
               2.53252307177582951285E+6) * xx -\
               2.01889141433532773231E+6)
         retvalu = math.log(zz) + xx * numer / denom
   else:
      uu = (xx - 0.5) * math.log(xx) - xx +\
            math.log(math.sqrt(TAU))
      if (1E+8 < xx):
         retvalu = uu
      else:
         pp = 1.0 / (xx * xx)
         if (1000 < xx):
            zz = (((7.9365079365079365079365E-4) * pp -\
                  2.7777777777777777777778E-3) * pp +\
                  8.3333333333333333333333E-2)
         else:
            zz = (((((8.11614167470508450300E-4) * pp -\
                  5.95061904284301438324E-4) * pp +\
                  7.93650340457716943945E-4) * pp -\
                  2.77777777300996872050E-3) * pp +\
                  8.33333333333331927722E-2)
         retvalu = uu + zz / xx
   return (retvalu)
def lgamma(zz):
   if (zz <= 0.0):
      if (isint(zz)):
         retvalu = math.log(DBLMAX)
      else:
         retvalu = (math.log(PI / math.fabs(math.sin(2.0 *\
               TAU * zz))) - lf_lgamma_gt_zero(1.0 - zz))
   else:
      retvalu = lf_lgamma_gt_zero(zz)
   return (retvalu)
def lf_eval_cont(xx, deg, coeff_arr_pc):
   sum = xx
   for ii in range(deg, -1, -1):
      sum = xx + coeff_arr_pc[ii] / sum
   return (sum)
def lgamma__2(zz):
   aa_arr = [0 for ii in range(10)]
   if (zz <= 0.0):
      if (isint(zz)):
         retvalu = math.log(DBLMAX)
      else:
         retvalu = (math.log(PI / math.fabs(math.sin(2.0 *\
               TAU * zz))) - lgamma(1.0 - zz))
   else:
      aa_arr[0] = +1.0 / 12.0
      aa_arr[1] = +1.0 / 30.0
      aa_arr[2] = +53.0 / 210.0
      aa_arr[3] = +195.0 / 371.0
      aa_arr[4] = +229999.0 / 22737.0
      aa_arr[5] = +29944523.0 / 19733142.0
      aa_arr[6] = +109535241009.0 / 48264275462.0
      aa_arr[7] = +29404527905795295658.0 / 9769214287853155785.0
      aa_arr[8] = +455377030420113432210116914702.0 /\
            113084128923675014537885725485.0
      sum = 0.0
      while (zz <= 6.0):
         sum += math.log(zz)
         zz += 1.0
      sum -= lf_eval_cont(zz, 8, aa_arr)
      retvalu = (math.log(TAU) / 2.0 + (zz - 0.5) *\
            math.log(zz) - 2.0 * zz - sum)
   return (retvalu)
def lpermx(nn, rr):
   return (lgamma(nn + 1.0) - lgamma(nn - rr + 1.0))
def permx(nn, rr):
   return (math.exp(lpermx(nn, rr)))
def lcombx(nn, rr):
   return (lpermx(nn, rr) - lgamma(rr + 1.0))
def combx(nn, rr):
   return (math.exp(lcombx(nn, rr)))
def birthdayx(nn, rr):
   return (math.exp(lpermx(nn, rr) - math.log(nn) * rr))
def tgamma__1(xx):
   if (isposint(1 - xx)):
      rslt = DBLMAX
   else:
      zz = 1.0
      while (3.0 <= xx):
         xx -= 1
         zz *= xx
      while (xx < 2.0):
         if (math.fabs(xx) < 1E-9):
            break
         zz /= xx
         xx += 1.0
      if (iseq(xx, 0.0)):
         rslt = DBLMAX
      elif (xx < 2.0):
         rslt = zz / ((1 + EULER * xx) * xx)
      elif (iseq(xx, 2.0)):
         rslt = zz
      else:
         xx -= 2.0
         numer = (((((((1.60119522476751861407E-04) * xx +\
               1.19135147006586384913E-03) * xx +\
               1.04213797561761569935E-02) * xx +\
               4.76367800457137231464E-02) * xx +\
               2.07448227648435975150E-01) * xx +\
               4.94214826801497100753E-01) * xx +\
               9.99999999999999996796E-01)
         denom = ((((((((-2.31581873324120129819E-05) * xx +\
               5.39605580493303397842E-04) * xx -\
               4.45641913851797240494E-03) * xx +\
               1.18139785222060435552E-02) * xx +\
               3.58236398605498653373E-02) * xx -\
               2.34591795718243348568E-01) * xx +\
               7.14304917030273074085E-02) * xx +\
               1.00000000000000000320E+00)
         rslt = zz * numer / denom
   return (rslt)
def tgamma(xx):
   if (xx < 0.0):
      if (isint(xx)):
         retvalu = DBLMAX
      else:
         tmp = math.exp(lgamma(1.0 - xx))
         retvalu = PI / (math.sin(PI * xx) * tmp)
   else:
      retvalu = math.exp(lgamma(xx))
   return (retvalu)
def tgammainv(yy):
   kk = 1.46163214496836234126265954
   cc = math.sqrt(TAU) / E - tgamma(kk)
   pp = math.log((yy + cc) / math.sqrt(TAU))
   xx_init = pp / wp(pp / E) + 0.5
   scvx_dx = 0.01
   scvx_xx = xx_init
   scvx_yy = yy - tgamma(scvx_xx)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = yy - tgamma(scvx_xx)
      scvx_dy = (scvx_yy - scvx_yp)
      if (iszero(scvx_dy)):
         break
      scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def lf_gamma_shift(xx, yy):
   if (isposint(1 - yy)):
      prod = DBLMAX
   else:
      prod = 1.0
      while (yy < xx - 0.0001):
         prod *= yy
         yy += 1.0
      while (xx + 0.0001 < yy):
         yy -= 1.0
         prod /= yy
   return (prod)
def lf_tgamma_gt_half(xx):
   pp_arr = [0 for ii in range(11)]
   yy = xx - floor(xx) + 1.0
   pp_arr[0] = +5.716400188274341379136E+3
   pp_arr[1] = -1.481530426768413909044E+4
   pp_arr[2] = +1.429149277657478554025E+4
   pp_arr[3] = -6.348160217641458813289E+3
   pp_arr[4] = +1.301608286058321874105E+3
   pp_arr[5] = -1.081767053514369634679E+2
   pp_arr[6] = +2.605696505611755827729E+0
   pp_arr[7] = -7.423452510201416151527E-3
   pp_arr[8] = +5.384136432509564062961E-8
   pp_arr[9] = -4.023533141268236372067E-9
   sum = 1.000000000000000174663
   for ii in range(0, 10, 1):
      sum += pp_arr[ii] / (yy + ii)
   return ((math.sqrt(TAU) * sum * math.exp(math.log(yy +\
         8.5) * (yy - 0.5) - yy - 8.5) * lf_gamma_shift(xx, yy)))
def tgamma__2(xx):
   pp_arr = [0 for ii in range(10)]
   if (isposint(1 - xx)):
      rslt = DBLMAX
   else:
      yy = xx - floor(xx) + 2.0
      pp_arr[0] = +7.61800917294715E+1
      pp_arr[1] = -8.65053203294168E+1
      pp_arr[2] = +2.40140982408309E+1
      pp_arr[3] = -1.23173957245015E+0
      pp_arr[4] = +1.20865097386618E-3
      pp_arr[5] = -5.395239384953E-6
      sum = 1.00000000019001E+0
      for ii in range(0, 6, 1):
         sum += pp_arr[ii] / (yy + ii)
      rslt = (math.sqrt(TAU) * sum * math.exp(math.log(yy +\
            4.5) * (yy - 0.5) - yy - 4.5) * lf_gamma_shift(xx\
            , yy))
   return (rslt)
def tgamma__3(xx):
   if (isposint(1 - xx)):
      retvalu = DBLMAX
   elif (xx < 0.5):
      retvalu = (PI / math.sin(PI * xx) /\
            lf_tgamma_gt_half(1.0 - xx))
   else:
      retvalu = lf_tgamma_gt_half(xx)
   return (retvalu)
def tgamma__stirling(xx):
   sc = 1.0
   while (xx < 10.0):
      sc /= xx
      xx += 1
   yy = xx - 1.0
   ryy = 1.0 / yy
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0\
         / 209018880.0) * ryy - 571.0 / 2488320.0) * ryy -\
         139.0 / 51840) * ryy + 1.0 / 288.0) * ryy + 1.0 /\
         12.0) * ryy + 1.0)
   return (sc * math.pow(yy / E, yy) * math.sqrt(TAU * yy) * ply)
def tgammadouble(xx):
   xxh = (xx - 1.0) / 2.0
   return (math.pow(2.0, xxh) * math.pow(2.0 / PI, (1.0 -\
         math.cos(TAU * xxh)) / 4.0) * tgamma(xxh + 1.0))
def lf_ligamma_xxleaa(aa, xx):
   sum_curr = math.exp(aa * math.log(xx) - xx) / aa
   rr = sum_curr
   for kk in range(1, 101, 1):
      rr *= xx / (aa + kk)
      sum_prev = sum_curr
      sum_curr += rr
      if (iseq(sum_prev, sum_curr)):
         break
   return (sum_curr)
def lf_uigamma_aalexx(aa, xx):
   sum_curr = 0.0
   pp = 47.0 / math.sqrt(xx - 0.75)
   ipp = floor(pp)
   for jj in range(ipp, 0, -1):
      tt = xx + sum_curr
      sum_curr = (jj - aa) * tt / (tt + jj)
   return (math.exp(aa * math.log(xx) - xx) / (xx + sum_curr))
def ligamma(aa, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (aa <= 0.0):
      retvalu = DBLMAX
   elif (xx <= 1.1 or xx <= aa):
      retvalu = lf_ligamma_xxleaa(aa, xx)
   else:
      retvalu = tgamma(aa) - lf_uigamma_aalexx(aa, xx)
   return (retvalu)
def uigamma(aa, xx):
   if (aa <= 0.0):
      retvalu = DBLMAX
   elif (xx <= 0.0):
      retvalu = tgamma(aa)
   elif (xx <= 1.1 or xx <= aa):
      retvalu = tgamma(aa) - lf_ligamma_xxleaa(aa, xx)
   else:
      retvalu = lf_uigamma_aalexx(aa, xx)
   return (retvalu)
def rligamma(aa, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (aa <= 0.0):
      retvalu = DBLMAX
   else:
      retvalu = ligamma(aa, xx) / tgamma(aa)
   return (retvalu)
def ruigamma(aa, xx):
   if (aa <= 0.0):
      retvalu = DBLMAX
   elif (xx <= 0.0):
      retvalu = 1
   else:
      retvalu = uigamma(aa, xx) / tgamma(aa)
   return (retvalu)
def uigamma__1(aa, xx):
   if (xx <= 0.0 or aa <= 0.0):
      retvalu = 1.0
   else:
      ax = aa * math.log(xx) - xx - lgamma(aa)
      if (ax < - DBLMAXLN):
         retvalu = 0.0
      else:
         ax = math.exp(ax)
         if (xx < 1.0 or xx < aa):
            rr = aa
            cc = 1.0
            ans = 1.0
            while True:
               rr += 1
               cc *= xx / rr
               ans += cc
               if (cc / ans < DBLEPS):
                  break# loop AWAIT
            retvalu = 1.0 - ans * ax / aa
         else:
            yy = 1.0 - aa
            zz = xx + yy + 1.0
            cc = 0.0
            pkmb = 1.0
            qkmb = xx
            pkma = xx + 1.0
            qkma = zz * xx
            ans = pkma / qkma
            while True:
               cc += 1.0
               yy += 1.0
               zz += 2.0
               yc = yy * cc
               pk = pkma * zz - pkmb * yc
               qk = qkma * zz - qkmb * yc
               if (not iszero(qk)):
                  rr = pk / qk
                  tt = math.fabs((ans - rr) / rr)
                  ans = rr
               else:
                  tt = 1.0
               pkmb = pkma
               pkma = pk
               qkmb = qkma
               qkma = qk
               if (1 / DBLEPS < math.fabs(pk)):
                  pkmb *= DBLEPS
                  pkma *= DBLEPS
                  qkmb *= DBLEPS
                  qkma *= DBLEPS
               if (tt <= DBLEPS):
                  break# loop AWAIT
            retvalu = ans * ax
   return (retvalu)
def uigammainv(aa, yy):
   dd = 1.0 / (9.0 * aa)
   tt = 1 - dd - gau_quantile(yy) * math.sqrt(dd)
   xx = aa * math.pow(tt, 3)
   scvx_dx = 0.1
   scvx_xx = xx
   scvx_yy = yy - uigamma(aa, scvx_xx)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = yy - uigamma(aa, scvx_xx)
      scvx_dy = (scvx_yy - scvx_yp)
      if (iszero(scvx_dy)):
         break
      scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def ligammainv(aa, yy):
   return (uigammainv(aa, 1 - yy))
def lbeta(aa, bb):
   return (lgamma(aa) + lgamma(bb) - lgamma(aa + bb))
def beta(aa, bb):
   lbe = lbeta(aa, bb)
   if (DBLMAXLN < lbe):
      retvalu = DBLMAX
   elif (- DBLMAXLN < lbe):
      retvalu = math.exp(lbe)
   else:
      retvalu = -DBLMAX
   return (retvalu)
def betainc(aa, bb, xx):
   if (aa <= 0.0 or bb <= 0.0 or 1.0 <= xx):
      retvalu = 1.0
   elif (xx <= 0.0):
      retvalu = 0.0
   else:
      psq = aa + bb
      if (aa < psq * xx):
         new_xx = 1.0 - xx
         compx = xx
         pp = bb
         qq = aa
         indx = 0
      else:
         new_xx = xx
         compx = 1.0 - xx
         pp = aa
         qq = bb
         indx = 1
      term = 1.0
      sum_curr = 1.0
      ai = 1.0
      ns = floor(qq + compx * psq)
      rx = new_xx / compx
      temp = qq - ai
      if (ns == 0):
         rx = new_xx
      while True:
         term *= temp * rx / (pp + ai)
         ai += 1.0
         ns -= 1
         if (0 <= ns):
            temp = qq - ai
            if (ns == 0):
               rx = new_xx
         else:
            temp = psq
            psq += 1.0
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
      log_beta = lgamma(aa) + lgamma(bb) - lgamma(aa + bb)
      retvalu = sum_curr * math.exp(pp * math.log(new_xx) +\
            (qq - 1.0) * math.log(compx) - log_beta) / pp
      if (indx == 0):
         retvalu = 1.0 - retvalu
   return (retvalu)
def betainc__1(aa, bb, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= xx):
      retvalu = 1.0
   elif ((aa + 1.0) / (aa + bb + 2.0) < xx):
      retvalu = (1.0 - betainc__1(bb, aa, 1.0 - xx))
   else:
      lbeta_ab = lbeta(aa, bb)
      front = math.exp(math.log(xx) * aa + math.log(1.0 - xx)\
            * bb - lbeta_ab) / aa
      ff = 1.0
      cc = 1.0
      dd = 0.0
      jj = 0
      ii = 0
      while True:
         if (ii == 0):
            numerator = 1.0
         elif (jj == 0):
            mm = ii / 2
            numerator = (mm * (bb - mm) * xx) / ((aa + 2.0 *\
                  mm - 1.0) * (aa + 2.0 * mm))
         else:
            mm = (ii - 1) / 2
            numerator = -((aa + mm) * (aa + bb + mm) * xx) /\
                  ((aa + 2.0 * mm) * (aa + 2.0 * mm + 1))
         dd = 1.0 + numerator * dd
         if (math.fabs(dd) < DBLEPS * DBLEPS):
            dd = DBLEPS * DBLEPS
         dd = 1.0 / dd
         cc = 1.0 + numerator / cc
         if (math.fabs(cc) < DBLEPS * DBLEPS):
            cc = DBLEPS * DBLEPS
         cd = cc * dd
         ff *= cd
         jj = 1 - ii
         if (math.fabs(1.0 - cd) < DBLEPS):
            break# loop AWAIT
         ii += 1
         if (200 <= ii):
            break# loop AWAIT
      retvalu = front * (ff - 1.0)
   return (retvalu)
def lf_digamma_gt_zero(xx):
   shift = 0.0
   sxx = xx
   while (sxx < 8.0):
      shift -= 1.0 / sxx
      sxx += 1.0
   rec_xx_sqr = 1.0 / (sxx * sxx)
   sumy = 0.0
   for ii in range(14, 0, -2):
      sumy *= rec_xx_sqr
      sumy += - bernoulli(ii) / ii
   return ((shift + math.log(sxx) - 1.0 / (2.0 * sxx) +\
         rec_xx_sqr * sumy))
def digamma(xx):
   if (xx <= 0.0):
      if (isint(xx)):
         retvalu = DBLMAX
      else:
         sxx = 2.0 * xx
         retvalu = (lf_digamma_gt_zero(1.0 - xx) - PI *\
               math.cos(sxx) / math.sin(sxx))
   else:
      retvalu = lf_digamma_gt_zero(xx)
   return (retvalu)
def digammainv(yy):
   scvx_dx = 0.1
   scvx_xx = math.exp(yy)
   scvx_yy = yy - digamma(scvx_xx)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = yy - digamma(scvx_xx)
      scvx_dy = (scvx_yy - scvx_yp)
      if (iszero(scvx_dy)):
         break
      scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def lf_digamma_gt_zero__1(xx):
   aa_arr = [0 for ii in range(10)]
   gg = 9.6565781537733158945718737389
   aa_arr[0] = +1.144005294538510956673085217E+4
   aa_arr[1] = -3.239880201523183350535979104E+4
   aa_arr[2] = +3.505145235055716665660834611E+4
   aa_arr[3] = -1.816413095412607026106469185E+4
   aa_arr[4] = +4.632329905366668184091382704E+3
   aa_arr[5] = -5.369767777033567805557478696E+2
   aa_arr[6] = +2.287544733951810076451548089E+1
   aa_arr[7] = -2.179257487388651155600822204E-1
   aa_arr[8] = +1.083148362725893688606893534E-4
   numer = 0.0
   denom = 1.0
   for ii in range(8, -1, -1):
      sxx = xx + ii
      term = aa_arr[ii] / sxx
      denom += term
      numer += term / sxx
   lnarg = (gg + xx - 0.5)
   return (math.log(lnarg) - (gg / lnarg) - numer / denom)
def digamma__1(xx):
   if (xx <= 0.0):
      if (isint(xx)):
         retvalu = DBLMAX
      else:
         sxx = 2.0 * xx
         retvalu = (lf_digamma_gt_zero__1(1.0 - xx) - PI *\
               math.cos(sxx) / math.sin(sxx))
   else:
      retvalu = lf_digamma_gt_zero__1(xx)
   return (retvalu)
def factorialinv(yy):
   return (tgammainv(yy) - 1.0)
def facinv(yy):
   return (tgammainv(yy) - 1.0)
def hn(xx):
   if (0.0 < xx):
      fxx = floor(xx)
      sum = 0.0
      for kk in range(fxx, 0, -1):
         sum += 1.0 / kk
   else:
      sum = 0.0
   return (sum)
def hn__1(xx):
   if (0.0 < xx):
      yy = 1.0 / (xx * xx)
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 /\
            (30.0 * 8.0)) * yy - 1.0 / (42.0 * 6.0)) * yy +\
            1.0 / (30.0 * 4.0)) * yy - 1.0 / (6.0 * 2.0)) *\
            yy + EULER) + math.log(xx) + 0.5 / xx
   else:
      retvalu = 0.0
   return (retvalu)
def hnm(xx, mm):
   fxx = floor(xx)
   sum = 0.0
   for kk in range(fxx, 0, -1):
      sum += 1.0 / math.pow(kk, mm)
   return (sum)
lv_factorial_arr = [0 for ii in range(0)]
lv_factorial_end = 0
def factorial(nn):
   global lv_factorial_end
   global lv_factorial_arr
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_factorial_end <= 0):
         lv_factorial_end = 6
         for nzzn in range(len(lv_factorial_arr),\
               int(lv_factorial_end)):
            lv_factorial_arr.append(0)
         lv_factorial_arr[0] = 1
         lv_factorial_arr[1] = 1
         lv_factorial_arr[2] = 2
         lv_factorial_arr[3] = 6
         lv_factorial_arr[4] = 24
         lv_factorial_arr[5] = 120
      if (lv_factorial_end <= nn):
         mm = lv_factorial_end
         lv_factorial_end = nn + 1
         for nzzn in range(len(lv_factorial_arr),\
               int(lv_factorial_end)):
            lv_factorial_arr.append(0)
         while (mm < lv_factorial_end):
            lv_factorial_arr[mm] = (mm * lv_factorial_arr[mm\
                  - 1])
            mm += 1
      retvalu = lv_factorial_arr[nn]
   return (retvalu)
lv_factorial_b_arr = [0 for ii in range(0)]
lv_factorial_b_end = 0
def factorialdouble(nn):
   global lv_factorial_b_end
   global lv_factorial_b_arr
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_factorial_b_end <= 0):
         lv_factorial_b_end = 6
         for nzzn in range(len(lv_factorial_b_arr),\
               int(lv_factorial_b_end)):
            lv_factorial_b_arr.append(0)
         lv_factorial_b_arr[0] = 1
         lv_factorial_b_arr[1] = 1
         lv_factorial_b_arr[2] = 2
         lv_factorial_b_arr[3] = 3
         lv_factorial_b_arr[4] = 8
         lv_factorial_b_arr[5] = 15
      if (lv_factorial_b_end <= nn):
         mm = lv_factorial_b_end
         lv_factorial_b_end = nn + 1
         for nzzn in range(len(lv_factorial_b_arr),\
               int(lv_factorial_b_end)):
            lv_factorial_b_arr.append(0)
         while (mm < lv_factorial_b_end):
            lv_factorial_b_arr[mm] = mm *\
                  lv_factorial_b_arr[mm - 2]
            mm += 1
      retvalu = lv_factorial_b_arr[nn]
   return (retvalu)
def fac(nn):
   return (factorial(nn))
def factorialt(n_things, r_each):
   retvalu = 1.0
   for ii in range(r_each + 1, n_things + 1, 1):
      retvalu *= ii
   return (retvalu)
def comb(n_things, r_each):
   if (r_each < 0 or n_things < r_each):
      retvalu = 0.0
   else:
      if (2 * r_each < n_things):
         r_each = n_things - r_each
      retvalu = 1.0
      for ii in range(r_each + 1, n_things + 1, 1):
         retvalu *= ii
         retvalu /= (ii - r_each)
   return (retvalu)
def perm(n_things, r_each):
   return (factorialt(n_things, n_things - r_each))
def combination(n_things, r_each):
   return (comb(n_things, r_each))
def permutation(n_things, r_each):
   return (perm(n_things, r_each))
lv_catalan_arr = [0 for ii in range(0)]
lv_catalan_end = 0
def catalan(nn):
   global lv_catalan_end
   global lv_catalan_arr
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_catalan_end <= 0):
         lv_catalan_end = 1
         for nzzn in range(len(lv_catalan_arr),\
               int(lv_catalan_end)):
            lv_catalan_arr.append(0)
         lv_catalan_arr[0] = 1
      if (lv_catalan_end <= nn):
         kk = lv_catalan_end
         lv_catalan_end = nn + 1
         for nzzn in range(len(lv_catalan_arr),\
               int(lv_catalan_end)):
            lv_catalan_arr.append(0)
         while (kk < lv_catalan_end):
            lv_catalan_arr[kk] = (2 * (2.0 * kk - 1) *\
                  lv_catalan_arr[kk - 1] / (kk + 1.0))
            kk += 1
      retvalu = lv_catalan_arr[nn]
   return (retvalu)
lv_supercatalan_arr = [0 for ii in range(0)]
lv_supercatalan_end = 0
def supercatalan(nn):
   global lv_supercatalan_end
   global lv_supercatalan_arr
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_supercatalan_end <= 0):
         lv_supercatalan_end = 3
         for nzzn in range(len(lv_supercatalan_arr),\
               int(lv_supercatalan_end)):
            lv_supercatalan_arr.append(0)
         lv_supercatalan_arr[0] = 1
         lv_supercatalan_arr[1] = 1
         lv_supercatalan_arr[2] = 1
      if (lv_supercatalan_end <= nn):
         kk = lv_supercatalan_end
         lv_supercatalan_end = nn + 1
         for nzzn in range(len(lv_supercatalan_arr),\
               int(lv_supercatalan_end)):
            lv_supercatalan_arr.append(0)
         while (kk < lv_supercatalan_end):
            lv_supercatalan_arr[kk] = (((6 * kk - 9) *\
                  lv_supercatalan_arr[kk - 1] - (kk - 3) *\
                  lv_supercatalan_arr[kk - 2]) / kk)
            kk += 1
      retvalu = lv_supercatalan_arr[nn]
   return (retvalu)
lv_bell_arr = [0 for ii in range(0)]
lv_bell_x_arr = [0 for ii in range(0)]
lv_bell_end = 0
def bell(nn):
   global lv_bell_end
   global lv_bell_arr
   global lv_bell_x_arr
   if (nn < 0):
      retvalu = 0
   else:
      if (lv_bell_end <= 0):
         lv_bell_end = 3
         for nzzn in range(len(lv_bell_arr), int(lv_bell_end)):
            lv_bell_arr.append(0)
         for nzzn in range(len(lv_bell_x_arr),\
               int(lv_bell_end - 1)):
            lv_bell_x_arr.append(0)
         lv_bell_arr[0] = 1
         lv_bell_arr[1] = 1
         lv_bell_arr[2] = 2
         lv_bell_x_arr[0] = 2
         lv_bell_x_arr[1] = 1
      if (lv_bell_end <= nn):
         kk = lv_bell_end
         lv_bell_end = nn + 1
         for nzzn in range(len(lv_bell_arr), int(lv_bell_end)):
            lv_bell_arr.append(0)
         for nzzn in range(len(lv_bell_x_arr),\
               int(lv_bell_end - 1)):
            lv_bell_x_arr.append(0)
         while (kk < lv_bell_end):
            lv_bell_x_arr[kk - 1] = lv_bell_x_arr[0]
            for jj in range(kk - 2, -1, -1):
               lv_bell_x_arr[jj] += lv_bell_x_arr[jj + 1]
            lv_bell_arr[kk] = lv_bell_x_arr[0]
            kk += 1
      retvalu = lv_bell_arr[nn]
   return (retvalu)
def bellx(xxn):
   kk = 0
   sum = 0.0
   den = 1.0
   while True:
      kk += 1
      den *= kk
      sum_prev = sum
      sum += math.pow(kk, xxn) / den
      if (iseq(sum_prev, sum)):
         break# loop AWAIT
   return (sum / E)
def fubini(nn):
   if (nn < 0):
      retvalu = 0
   elif (nn == 0):
      retvalu = 1
   else:
      sum = 1.0 / (2.0 * LNTWO * LNTWO)
      for mm in range(2, nn + 1, 1):
         sum *= mm / LNTWO
      retvalu = round(sum)
   return (retvalu)
def d2lt_d1(xx, yy):
   if (0 <= yy and yy <= xx):
      retvalu = yy + (xx * (xx + 1)) / 2
   else:
      retvalu = -1
   return int(retvalu)
def d1lt_d2(nn, ret_arr_p):
   if (nn <= 0):
      ret_arr_p[0] = 0
      ret_arr_p[1] = 0
   else:
      basee = floorl((math.sqrt(1 + 8.0 * nn) - 1) / 2)
      ret_arr_p[1] = nn - basee * (basee + 1) / 2
      ret_arr_p[0] = basee
   return int(ret_arr_p[0])
def d2ur_d1(xx, yy):
   if (0 <= xx and 0 <= yy):
      suma = (yy + xx)
      retvalu = suma * (suma + 1) / 2 + yy
   else:
      retvalu = -1
   return int(retvalu)
def d1ur_d2(nn, ret_arr_p):
   if (nn <= 0):
      ret_arr_p[0] = 0
      ret_arr_p[1] = 0
   else:
      basee = floorl((math.sqrt(1 + 8.0 * nn) - 1) / 2)
      y_coord = nn - basee * (basee + 1) / 2
      ret_arr_p[1] = y_coord
      ret_arr_p[0] = basee - y_coord
   return int(ret_arr_p[0])
def d2diamond_d1(xx, yy):
   if (0 == yy and xx == 0):
      retvalu = 0
   else:
      ss = math.fabs(xx) + math.fabs(yy)
      tt = 2 * ss * (ss - 1) + 1
      if (0 < xx):
         retvalu = tt + ss + yy - 1
      else:
         retvalu = tt + 3 * ss - yy - 1
   return int(retvalu)
def d1diamond_d2(nn, ret_arr_p):
   if (nn <= 0):
      x_coord = 0
      ret_arr_p[1] = 0
   else:
      ss = floorl(math.sqrt(nn) / SQRTTWO)
      ssq = 2 * ss * ss
      if (nn <= ssq + 2 * ss):
         ret_arr_p[1] = ssq - nn + ss
         x_coord = ssq - nn
         if (ss < - x_coord):
            x_coord = -x_coord - 2 * ss
      else:
         ret_arr_p[1] = nn - ssq - 3 * ss - 1
         x_coord = nn - ssq - 2 * ss
         if (ss < x_coord):
            x_coord = -x_coord + 2 * ss + 2
   ret_arr_p[0] = x_coord
   return int(x_coord)
def d2spiral_d1(xx, yy):
   if (xx == 0 and yy == 0):
      retvalu = 0
   elif (math.fabs(xx) <= math.fabs(yy)):
      retvalu = (4 * yy - 1) * yy - xx
      if (yy < 0):
         retvalu -= 2 * (yy - xx)
   else:
      retvalu = (4 * xx - 1) * xx - yy
      if (0 < xx):
         retvalu -= 2 * (xx - yy)
   return int(retvalu)
def d1spiral_d2(nn, ret_arr_p):
   if (nn <= 0):
      ret_arr_p[0] = 0
      ret_arr_p[1] = 0
   else:
      sqrtnn = floorl(math.sqrt(nn))
      if (iseven(sqrtnn)):
         fxd = -sqrtnn / 2
      else:
         fxd = (sqrtnn + 1) / 2
      newdd = nn - sqrtnn * sqrtnn
      if (newdd <= sqrtnn):
         ret_arr_p[0] = fxd
         if (fxd < 0):
            ret_arr_p[1] = -fxd - newdd
         else:
            ret_arr_p[1] = -fxd + newdd + 1
      else:
         ret_arr_p[1] = fxd
         newdd -= sqrtnn
         if (fxd < 0):
            ret_arr_p[0] = fxd + newdd
         else:
            ret_arr_p[0] = fxd - newdd
   return int(ret_arr_p[0])
def d2hypot_d1(xx, yy):
   if (0 <= yy and yy <= xx):
      distsq = xx * xx + yy * yy
      dist = math.sqrt(distsq)
      xlim = floorl(dist / SQRTTWO)
      xmax = floorl(dist)
      count = 0
      for ixx in range(xlim, xmax + 1, 1):
         nyysq = distsq - ixx * ixx
         nyy = ceill(math.sqrt(nyysq))
         if (ixx < nyy):
            count += ixx + 1
         else:
            count += nyy
            if (ixx < xx and nyy * nyy == nyysq):
               count += 1
      retvalu = count + xlim * (xlim + 1) / 2
   else:
      retvalu = -1
   return int(retvalu)
def binomialx(xnn, xkk):
   return (tgamma(xnn + 1) / (tgamma(xkk + 1) * tgamma(xnn +\
         1 - xkk)))
lv_binom_arr = [0 for ii in range(0)]
lv_binom_end = 0
lv_binom_max = 0
def binomial(nn, kk):
   global lv_binom_arr
   global lv_binom_end
   global lv_binom_max
   if (nn < kk or nn < 0 or kk < 0):
      retvalu = 0
   else:
      if (lv_binom_end <= 0):
         lv_binom_max = 2
         lv_binom_end = d2lt_d1(lv_binom_max, 0)
         for nzzn in range(len(lv_binom_arr), int(lv_binom_end)):
            lv_binom_arr.append(0)
         lv_binom_arr[0] = 1
         lv_binom_arr[1] = 1
         lv_binom_arr[2] = 1
      rr = lv_binom_max
      if (rr < nn + 1):
         lv_binom_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_binom_arr), int(lv_binom_end)):
            lv_binom_arr.append(0)
         while (rr <= nn):
            ul_ind = d2lt_d1(rr - 1, 0)
            lz_ind = ul_ind + rr
            lv_binom_arr[lz_ind] = 1
            rz_ind = lz_ind + rr
            while (lz_ind < rz_ind):
               lv_binom_arr[rz_ind] = lv_binom_arr[lz_ind]
               rz_ind -= 1
               lz_ind += 1
               lv_binom_arr[lz_ind] = (lv_binom_arr[ul_ind] +\
                     lv_binom_arr[ul_ind + 1])
               ul_ind += 1
            rr += 1
         lv_binom_max = rr
      retvalu = lv_binom_arr[d2lt_d1(nn, kk)]
   return int(retvalu)
lv_euler_arr = [0 for ii in range(0)]
lv_euler_end = 0
lv_euler_max = 0
def eulerian(nn, mm):
   global lv_euler_arr
   global lv_euler_end
   global lv_euler_max
   if (nn < mm or nn < 0 or mm < 0):
      retvalu = 0
   else:
      if (lv_euler_end <= 0):
         lv_euler_max = 3
         lv_euler_end = d2lt_d1(lv_euler_max, 0)
         for nzzn in range(len(lv_euler_arr), int(lv_euler_end)):
            lv_euler_arr.append(0)
         lv_euler_arr[0] = 0
         lv_euler_arr[1] = 1
         lv_euler_arr[2] = 0
         lv_euler_arr[3] = 1
         lv_euler_arr[4] = 1
         lv_euler_arr[5] = 0
      rr = lv_euler_max
      if (rr < nn + 1):
         lv_euler_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_euler_arr), int(lv_euler_end)):
            lv_euler_arr.append(0)
         while (rr <= nn):
            lz_ind = d2lt_d1(rr, 0)
            lv_euler_arr[lz_ind] = 1
            lv_euler_arr[lz_ind + rr] = 0
            rz_ind = lz_ind + rr - 1
            ul_ind = d2lt_d1(rr - 1, 0)
            cr = 1
            while (lz_ind < rz_ind):
               lv_euler_arr[rz_ind] = lv_euler_arr[lz_ind]
               lz_ind += 1
               lv_euler_arr[lz_ind] = ((rr - cr) *\
                     lv_euler_arr[ul_ind] + (cr + 1) *\
                     lv_euler_arr[ul_ind + 1])
               ul_ind += 1
               rz_ind -= 1
               cr += 1
            rr += 1
            lv_euler_max = rr
      retvalu = lv_euler_arr[d2lt_d1(nn, mm)]
   return (retvalu)
lv_entringer_arr = [0 for ii in range(0)]
lv_entringer_end = 0
lv_entringer_max = 0
def entringer(nn, kk):
   global lv_entringer_arr
   global lv_entringer_max
   global lv_entringer_end
   if (nn <= 0 or kk < 0 or nn < kk):
      retvalu = 0
   else:
      if (lv_entringer_end <= 0):
         lv_entringer_max = 1
         lv_entringer_end = d2lt_d1(lv_entringer_max, 0)
         for nzzn in range(len(lv_entringer_arr),\
               int(lv_entringer_end)):
            lv_entringer_arr.append(0)
         lv_entringer_arr[0] = 1
      rr = lv_entringer_max
      if (rr < nn + 1):
         lv_entringer_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_entringer_arr),\
               int(lv_entringer_end)):
            lv_entringer_arr.append(0)
         while (rr <= nn):
            inda = d2lt_d1(rr, 0)
            lv_entringer_arr[inda] = 0
            for cz in range(1, rr + 1, 1):
               lv_entringer_arr[inda + cz] =\
                     lv_entringer_arr[inda + cz - 1] +\
                     lv_entringer_arr[inda - cz]
            rr += 1
            lv_entringer_max = rr
      retvalu = lv_entringer_arr[d2lt_d1(nn, kk)]
   return (retvalu)
def zigzag(nn):
   return (entringer(nn, nn))
def zig(nn):
   return (zigzag(2 * nn))
def zag(nn):
   return (zigzag(2 * nn - 1))
def eulerx(nn):
   if (nn <= 0 or isodd(nn)):
      retvalu = 0
   else:
      retvalu = entringer(nn, nn)
   return (retvalu)
def ballot(xmm, xnn):
   return (math.fabs(xnn - xmm) / (xmm + xnn))
def ballots(xmm, xnn):
   if (xmm < xnn):
      retvalu = (xnn - xmm + 1.0) / (xnn + 1.0)
   else:
      retvalu = (xmm - xnn + 1.0) / (xmm + 1.0)
   return (retvalu)
lv_stir_a_arr = [0 for ii in range(0)]
lv_stir_a_end = 0
lv_stir_a_max = 0
def stirling1(nn, kk):
   global lv_stir_a_arr
   global lv_stir_a_end
   global lv_stir_a_max
   if (nn < 0 or kk < 0 or nn < kk):
      retvalu = 0
   else:
      if (lv_stir_a_max <= 0):
         lv_stir_a_max = 2
         lv_stir_a_end = d2lt_d1(lv_stir_a_max, 0)
         for nzzn in range(len(lv_stir_a_arr),\
               int(lv_stir_a_end)):
            lv_stir_a_arr.append(0)
         lv_stir_a_arr[0] = 1
         lv_stir_a_arr[1] = 0
         lv_stir_a_arr[2] = 1
      rr = lv_stir_a_max
      if (rr < nn + 1):
         lv_stir_a_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_stir_a_arr),\
               int(lv_stir_a_end)):
            lv_stir_a_arr.append(0)
         while (rr <= nn):
            cz_ind = d2lt_d1(rr, 0)
            lv_stir_a_arr[cz_ind] = 0
            cz_ind += 1
            ul_ind = d2lt_d1(rr - 1, 0)
            for col_k in range(1, rr + 0, 1):
               lv_stir_a_arr[cz_ind] = (lv_stir_a_arr[ul_ind]\
                     - (rr - 1) * lv_stir_a_arr[ul_ind + 1])
               ul_ind += 1
               cz_ind += 1
            lv_stir_a_arr[cz_ind] = 1
            rr += 1
            lv_stir_a_max = rr
      retvalu = lv_stir_a_arr[d2lt_d1(nn, kk)]
   return (retvalu)
lv_stir_b_arr = [0 for ii in range(0)]
lv_stir_b_end = 0
lv_stir_b_max = 0
def stirling2(nn, kk):
   global lv_stir_b_arr
   global lv_stir_b_end
   global lv_stir_b_max
   if (nn < kk or nn < 0 or kk < 0):
      retvalu = 0
   else:
      if (lv_stir_b_end <= 0):
         lv_stir_b_max = 2
         lv_stir_b_end = d2lt_d1(lv_stir_b_max, 0)
         for nzzn in range(len(lv_stir_b_arr),\
               int(lv_stir_b_end)):
            lv_stir_b_arr.append(0)
         lv_stir_b_arr[0] = 1
         lv_stir_b_arr[1] = 0
         lv_stir_b_arr[2] = 1
      rr = lv_stir_b_max
      if (rr < nn + 1):
         lv_stir_b_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_stir_b_arr),\
               int(lv_stir_b_end)):
            lv_stir_b_arr.append(0)
         while (rr <= nn):
            cz_ind = d2lt_d1(rr, 0)
            lv_stir_b_arr[cz_ind] = 0
            cz_ind += 1
            ul_ind = d2lt_d1(rr - 1, 0)
            for col_k in range(1, rr + 0, 1):
               lv_stir_b_arr[cz_ind] = (lv_stir_b_arr[ul_ind]\
                     + col_k * lv_stir_b_arr[ul_ind + 1])
               ul_ind += 1
               cz_ind += 1
            lv_stir_b_arr[cz_ind] = 1
            rr += 1
            lv_stir_b_max = rr
      retvalu = lv_stir_b_arr[d2lt_d1(nn, kk)]
   return (retvalu)
lv_bern_n_arr = [0 for ii in range(0)]
lv_bern_d_arr = [0 for ii in range(0)]
lv_bern_end = 0
def bernoulli(nn):
   global lv_bern_n_arr
   global lv_bern_d_arr
   global lv_bern_end
   if (nn == 1):
      retvalu = -0.5
   elif (nn < 0 or isodd(nn)):
      retvalu = 0.0
   else:
      if (lv_bern_end <= 0):
         lv_bern_end = 3
         for nzzn in range(len(lv_bern_n_arr), int(lv_bern_end)):
            lv_bern_n_arr.append(0)
         for nzzn in range(len(lv_bern_d_arr), int(lv_bern_end)):
            lv_bern_d_arr.append(0)
         lv_bern_n_arr[0] = 1
         lv_bern_n_arr[1] = 1
         lv_bern_n_arr[2] = -1
         lv_bern_d_arr[0] = 1
         lv_bern_d_arr[1] = 6
         lv_bern_d_arr[2] = 30
      nnhalf = floorl(nn / 2)
      if (lv_bern_end <= nnhalf):
         mm = lv_bern_end
         lv_bern_end = nnhalf + 1
         for nzzn in range(len(lv_bern_n_arr), int(lv_bern_end)):
            lv_bern_n_arr.append(0)
         for nzzn in range(len(lv_bern_d_arr), int(lv_bern_end)):
            lv_bern_d_arr.append(0)
         while (mm < lv_bern_end):
            sz_ind = 2 * mm
            coeff = ((sz_ind + 1) * sz_ind) / 2
            sumn = 1.0 - sz_ind
            sumd = 2.0
            for jj in range(1, mm + 0, 1):
               nsumn = round(sumn * lv_bern_d_arr[jj] + sumd\
                     * coeff * lv_bern_n_arr[jj])
               nsumd = round(sumd * lv_bern_d_arr[jj])
               gd = gcd(nsumn, nsumd)
               sumn = nsumn / gd
               sumd = nsumd / gd
               xkk = 2 * jj
               coeff *= (sz_ind - xkk + 1.0) / (xkk + 1.0)
               coeff *= (sz_ind - xkk) / (xkk + 2.0)
               coeff = round(coeff)
            sumd *= (sz_ind + 1)
            gd = gcd(sumn, sumd)
            lv_bern_n_arr[mm] = -sumn / gd
            lv_bern_d_arr[mm] = sumd / gd
            mm += 1
      retvalu = lv_bern_n_arr[nnhalf] / lv_bern_d_arr[nnhalf]
   return (retvalu)
def bernoullin(nn):
   global lv_bern_n_arr
   global lv_bern_d_arr
   if (nn == 1):
      retvalu = -1
   elif (isodd(nn) or nn < 0):
      retvalu = 0
   else:
      retvalu = bernoulli(nn)
      retvalu = lv_bern_n_arr[nn / 2]
   return int(retvalu)
def bernoullid(nn):
   global lv_bern_n_arr
   global lv_bern_d_arr
   if (nn == 1):
      retvalu = 2
   elif (isodd(nn) or nn < 0):
      retvalu = 1
   else:
      retvalu = bernoulli(nn)
      retvalu = lv_bern_d_arr[nn / 2]
   return int(retvalu)
def birthday(xnn, xrr):
   prob = 1.0
   for ii in range(1, xrr + 0, 1):
      prob *= (xnn - ii) / xnn
   return (prob)
def birthdayinv(xnn, xprob):
   cprob = 1.0
   xrr = 1.0
   while (xprob < cprob):
      cprob *= (xnn - xrr) / xnn
      xrr += 1
   return (xrr)
def n2perm(mm, nn, ret_perm_arr_p):
   pat_arr = []
   source_arr = []
   for nzzn in range(len(pat_arr), int(nn)):
      pat_arr.append(0)
   for nzzn in range(len(source_arr), int(nn)):
      source_arr.append(0)
   kk = mm
   for ii in range(1, nn + 1, 1):
      pat_arr[nn - ii] = kk % ii
      kk = floor(kk / ii)
      source_arr[ii - 1] = ii - 1
   for ii in range(0, nn + 0, 1):
      sz_ind = pat_arr[ii]
      ret_perm_arr_p[ii] = source_arr[sz_ind]
      for jj in range(sz_ind, nn - ii - 1, 1):
         source_arr[jj] = source_arr[jj + 1]
   return int(mm)
def n2comb(mm, nn, rr, ret_comb_arr_p):
   kk = comb(nn, rr) - mm
   for ss in range(0, rr + 0, 1):
      pp = rr - ss
      cc = 1
      qq = 1
      while (cc < kk):
         kk -= cc
         cc = (cc * pp) / qq
         qq += 1
         pp += 1
      ret_comb_arr_p[ss] = nn - pp
   return int(mm)
def days_in_month(g_year, g_month):
   if (g_month == 2):
      if (isleapyear(g_year)):
         retvalu = 29
      else:
         retvalu = 28
   elif ((6 * g_month + 1) % 11 < 5):
      retvalu = 30
   else:
      retvalu = 31
   return int(retvalu)
def sec2dhms(seconds):
   if (seconds < 0.0):
      sg = -1.0
   else:
      sg = 1.0
   dy = floor(seconds * SECOND / DAY)
   tm = (seconds * SECOND / DAY - dy) * DAY / HOUR
   hr = floor(tm)
   tm = (tm - hr) * HOUR / MINUTE
   mn = floor(tm)
   tm = (tm - mn) * MINUTE / SECOND
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0)
def day2dhms(dayfrac):
   if (dayfrac < 0.0):
      sg = -1.0
   else:
      sg = 1.0
   dy = floor(dayfrac)
   tm = (dayfrac - dy) * DAY / HOUR
   hr = floor(tm)
   tm = (tm - hr) * HOUR / MINUTE
   mn = floor(tm)
   tm = (tm - mn) * MINUTE / SECOND
   return (dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0)
def day2dhmsinv(xx_hms):
   dy = floor(xx_hms)
   tm = (xx_hms - dy) * 100.0
   hr = floor(tm)
   tm = (tm - hr) * 100.0
   mn = floor(tm)
   tm = (tm - mn) * 100.0
   return (dy + (hr * HOUR + mn * MINUTE + tm * SECOND) / DAY)
def hms2day(hourx, minutex, secondx):
   return ((secondx * SECOND + minutex * MINUTE + hourx *\
         HOUR) / DAY)
def hour2day(hourx):
   return (hourx * HOUR / DAY)
def day2hour(dayx):
   return (dayx * DAY / HOUR)
def jd2kwt(jjdtime):
   return ((jjdtime * JDAY - JDSEC_AT_0KWT) / KWT)
def jd2j2k(jjdtime):
   return ((jjdtime * JDAY - JDSEC_AT_0J2K) / J2KDAY)
def jd2uet(jjdtime):
   return ((jjdtime * JDAY - JDSEC_AT_0UET) / UET)
def kwt2jd(kwttime):
   return ((kwttime * KWT + JDSEC_AT_0KWT) / JDAY)
def uet2jd(uettime):
   return ((uettime * UET + JDSEC_AT_0UET) / JDAY)
def j2k2jd(jtwoktm):
   return ((jtwoktm * J2KDAY + JDSEC_AT_0J2K) / JDAY)
def j2k2kwt(jtwoktm):
   return (jd2kwt(j2k2jd(jtwoktm)))
def j2k2uet(jtwoktm):
   return (jd2uet(j2k2jd(jtwoktm)))
def kwt2j2k(kwttime):
   return (jd2j2k(kwt2jd(kwttime)))
def kwt2uet(kwttime):
   return (jd2uet(kwt2jd(kwttime)))
def uet2kwt(uettime):
   return (jd2kwt(uet2jd(uettime)))
def uet2j2k(uettime):
   return (jd2j2k(uet2jd(uettime)))
def jd2dow(jjd):
   jjtemp = floor(jjd + 1.5)
   return int(jjtemp % 7)
def j2k2dow(jtwok):
   jjtemp = floor(jtwok + 6.5)
   return int(jjtemp % 7)
def ymd2doy(g_year, g_month, g_daymon):
   while (g_month < 1):
      g_month += MONTHS_IN_YEAR
      g_year -= 1
   while (MONTHS_IN_YEAR < g_month):
      g_month -= MONTHS_IN_YEAR
      g_year += 1
   delta = 0
   if (2 < g_month):
      if (isleapyear(g_year)):
         delta = 1
      delta += floor(30.6001 * g_month - 0.3) - 32.0
   elif (g_month == 2):
      delta = 31
   return (delta + g_daymon)
def ymd2j2k(g_year, g_month, g_day):
   g_year -= 2000
   while (g_month < 1):
      g_month += MONTHS_IN_YEAR
      g_year -= 1
   while (MONTHS_IN_YEAR < g_month):
      g_month -= MONTHS_IN_YEAR
      g_year += 1
   mn = g_month + 1
   yr = g_year
   if (g_month < 3):
      mn += MONTHS_IN_YEAR
      yr -= 1
   jcen = floor(yr / 100)
   dayoffset = jcen - floor(jcen / 4.0) + 62
   jtwok = (floor(yr * JYEAR / DAY) + floor(30.6001 * mn -\
         dayoffset) + g_day - 1.5)
   return (jtwok)
def ymd2jd(g_year, g_month, g_day):
   return (j2k2jd(ymd2j2k(g_year, g_month, g_day)))
def ymd2dow(g_year, g_month, g_daymon):
   return int((jd2dow(ymd2jd(g_year, g_month, g_daymon))))
def doomsday(g_year):
   cc = floor(g_year / 100)
   anchor = (cc % 4) * 5 + 2
   yy = g_year % 100
   lps = floor(yy / 4)
   retvalu = (anchor + yy + lps) % 7
   return int(retvalu)
LC_GD_YEAR = 0
LC_GD_MONTH = 1
LC_GD_DAY = 2
LC_GD_HOUR = 3
LC_GD_MIN = 4
LC_GD_SEC = 5
LC_GD_DOW = 6
LC_GD_NUM = 7
LC_GD_JD = 8
LC_GD_COUNT = 9
lv_ymdhms_arr = [0 for ii in range(20)]
def jd2ymdhms(jjulid):
   global lv_ymdhms_arr
   lv_ymdhms_arr[LC_GD_JD] = jjulid
   ftime_frac = frac(jjulid + 0.5)
   ijulian = floor(jjulid + 0.5)
   jcent = floor(((ijulian - 60.5) * JDAY -\
         JDSEC_AT_0GREGORIAN) / (100.0 * GYEAR))
   bbdays = ijulian + jcent - floor(jcent / 4.0)
   g_years = floor((bbdays + 1399.9) * DAY / JYEAR)
   bdiff = bbdays - floor(g_years * JYEAR / DAY) + 1522
   month_next = floor(bdiff / 30.6001)
   dtime_rem = bdiff - floor(30.6001 * month_next) + ftime_frac
   lv_ymdhms_arr[LC_GD_YEAR] = g_years - 4716.0
   if (13 < month_next):
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 13
   else:
      lv_ymdhms_arr[LC_GD_MONTH] = month_next - 1
   if (lv_ymdhms_arr[LC_GD_MONTH] < 3):
      lv_ymdhms_arr[LC_GD_YEAR] += 1
   lv_ymdhms_arr[LC_GD_DAY] = floor(dtime_rem)
   dtime_rem = DAY / HOUR * frac(dtime_rem)
   lv_ymdhms_arr[LC_GD_HOUR] = floor(dtime_rem)
   dtime_rem = HOUR / MINUTE * frac(dtime_rem)
   lv_ymdhms_arr[LC_GD_MIN] = floor(dtime_rem)
   dtime_rem = MINUTE / SECOND * frac(dtime_rem)
   lv_ymdhms_arr[LC_GD_SEC] = dtime_rem
   lv_ymdhms_arr[LC_GD_DOW] = floor(fmod(ijulian + 1.0, 7.0))
   dtime_rem = (lv_ymdhms_arr[LC_GD_MONTH] * 100.0 +\
         lv_ymdhms_arr[LC_GD_DAY] + lv_ymdhms_arr[LC_GD_HOUR]\
         / 100.0 + lv_ymdhms_arr[LC_GD_MIN] / 10000.0 +\
         lv_ymdhms_arr[LC_GD_SEC] / 1000000.0)
   ftime_frac = lv_ymdhms_arr[LC_GD_YEAR] * 10000.0
   if (ftime_frac < 0.0):
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac - dtime_rem
   else:
      lv_ymdhms_arr[LC_GD_NUM] = ftime_frac + dtime_rem
   return (lv_ymdhms_arr[LC_GD_NUM])
def j2k2ymdhms(jtwokd):
   return (jd2ymdhms(j2k2jd(jtwokd)))
def ymdhms_get(indexp):
   global lv_ymdhms_arr
   if (LC_GD_YEAR <= indexp and indexp < LC_GD_COUNT):
      retvalu = lv_ymdhms_arr[indexp]
   else:
      retvalu = -1
   return (retvalu)
def jd2ymdhmsinv():
   global lv_ymdhms_arr
   return (ymd2jd(lv_ymdhms_arr[LC_GD_YEAR],\
         lv_ymdhms_arr[LC_GD_MONTH],\
         lv_ymdhms_arr[LC_GD_DAY]) +\
         hms2day(lv_ymdhms_arr[LC_GD_HOUR],\
         lv_ymdhms_arr[LC_GD_MIN], lv_ymdhms_arr[LC_GD_SEC])\
         * DAY / JDAY)
def print_jd264(jjulid):
   jd2ymdhms(jjulid)
   print_base_out(ymdhms_get(LC_GD_YEAR), 64)
   print_base_out(ymdhms_get(LC_GD_MONTH), 64)
   print_base_out(ymdhms_get(LC_GD_DAY), 64)
   print_base_out(ymdhms_get(LC_GD_HOUR), 64)
   print_base_out(ymdhms_get(LC_GD_MIN), 64)
   print_base_outf(ymdhms_get(LC_GD_SEC), 64)
   return (jjulid)
def ymdhms2jd(ymdhmsx):
   xx_arr = [0 for ii in range(LC_GD_COUNT)]
   ys = ymdhmsx * (1.0 + DBLEPS)
   xx_arr[LC_GD_YEAR] = floor(ys / 10000.0)
   if (ys < 0):
      ys = -ys
   xx_arr[LC_GD_MONTH] = fmodu(floor(ys / 100.0), 100.0)
   xx_arr[LC_GD_DAY] = fmodu(floor(ys), 100.0)
   xx_arr[LC_GD_HOUR] = fmodu(floor(ys * 100.0), 100.0)
   xx_arr[LC_GD_MIN] = fmodu(floor(ys * 10000.0), 100.0)
   xx_arr[LC_GD_SEC] = frac(ys * 10000.0) * 100.0
   return (ymd2jd(xx_arr[LC_GD_YEAR], xx_arr[LC_GD_MONTH],\
         xx_arr[LC_GD_DAY]) + hms2day(xx_arr[LC_GD_HOUR],\
         xx_arr[LC_GD_MIN], xx_arr[LC_GD_SEC]) * DAY / JDAY)
def ymdhms2j2k(ymdhmsx):
   return (jd2j2k(ymdhms2jd(ymdhmsx)))
def clocksec(secnds):
   return (frac(secnds / MINUTE) * TAU)
def clockmin(secnds):
   return (frac(secnds / HOUR) * TAU)
def clockhour(secnds):
   return (frac(secnds / (DAY / 2)) * TAU)
def clocksum(secnds):
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   return (dist(sc - mn, TAU) + dist(hr - mn, TAU) + dist(sc\
         - hr, TAU))
def clockstdev(secnds):
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   da = dist(sc - mn, TAU)
   db = dist(hr - mn, TAU)
   dc = dist(sc - hr, TAU)
   return (math.sqrt((da * da + db * db + dc * dc - square(da\
         + db + dc) / 3) / 2))
def date_easter(g_year):
   cc = floor(g_year / 100)
   nn = g_year % 19
   lps = floor(g_year / 4)
   kk = floor((cc + 8) / 25 - 1)
   ff = floor((cc - kk) / 3)
   mm = cc - floor(cc / 4)
   ii = (mm - ff + 19 * nn + 15) % 30
   if (28 < ii or (ii == 28 and 10 < nn)):
      ii -= 1
   jj = (g_year + lps + ii + 2 - mm) % 7
   return int(ii - jj + 28)
HQPHR = 1080
HALAQIM = HOUR / HQPHR
def date_rosh_hashanah(g_year):
   aa = (12 * g_year + 12) % 19
   dos = (floor(g_year / 100) - floor(g_year / 400) - 2 +\
         (g_year % 4) / 4.0 + (round(MOONMONTH / HALAQIM) *\
         aa - 1565.0 * g_year - 445405) / (19.0 * DAY / HALAQIM))
   day_of_september = floor(dos)
   parts = frac(dos) * DAY / HALAQIM
   doww = ymd2dow(g_year, 9, day_of_september)
   if (doww == 0 or doww == 3 or doww == 5):
      day_of_september += 1
   elif (doww == 1 and 11 < aa and 23269 <= parts):
      day_of_september += 1
   elif (doww == 2 and 6 < aa and 16404 <= parts):
      day_of_september += 2
   return (day_of_september - 0.25)
def jewish2jdx(hebyear):
   hebyear_mone = hebyear - 1
   months_el = (235 * floor(hebyear_mone / 19) + 12 *\
         (hebyear_mone % 19) + floor((7 * (hebyear_mone % 19)\
         + 1) / 19))
   halaqims_el = 204 + (793 * (months_el % HQPHR))
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el /\
         HQPHR) + floor(halaqims_el / HQPHR))
   days_left = 1 + 29 * months_el + floor(hour_el / (DAY / HOUR))
   alt_days = days_left + 347996
   alt_dow = (alt_days % iround(WEEK / DAY))
   hq_left = (halaqims_el % HQPHR)
   hq_left += DAY * frac(hour_el * HOUR / DAY) / HALAQIM
   if (19440 <= hq_left):
      if (0 == alt_dow or 2 == alt_dow or 4 == alt_dow):
         alt_days += 2
      else:
         alt_days += 1
   elif (0 == alt_dow):
      if (9924 <= hq_left and not isjewishleap(hebyear)):
         alt_days += 2
   elif (6 == alt_dow):
      if (16789 <= hq_left and isjewishleap(hebyear - 1)):
         alt_days += 1
   elif (1 == alt_dow or 3 == alt_dow or 5 == alt_dow):
      alt_days += 1
   return (alt_days + 0.25)
def date_pesach(g_year):
   rh = date_rosh_hashanah(g_year)
   return (rh + 21)
def g2jewish(g_year):
   return int(g_year + 3761)
def jewish2g(hebyear):
   return int(hebyear - 3760)
def isjewishleap(hebyear):
   return ((7 * hebyear + 1) % 19 < 7)
def jewish_months_in_year(hebyear):
   if (isjewishleap(hebyear)):
      miy = 13
   else:
      miy = 12
   return int(miy)
def jewish_yearlength(hebyear):
   g_year = jewish2g(hebyear - 1)
   retvalu = (floor(JYEAR / DAY) + (date_rosh_hashanah(g_year\
         + 1) - date_rosh_hashanah(g_year)))
   if (isleapyear(g_year + 1)):
      retvalu += 1
   return int(retvalu)
def jewish2jd(hebyear):
   gyear = jewish2g(hebyear - 1)
   return (ymd2jd(gyear, 9, date_rosh_hashanah(gyear)))
def isjewish8short(hebyear):
   remten = jewish_yearlength(hebyear) % 10
   return (remten != 5)
def isjewish9short(hebyear):
   remten = jewish_yearlength(hebyear) % 10
   return (remten == 3)
def jewish_monthlength(hebyear, hebmonth):
   retvalu = 30
   if (hebmonth < 1 or 13 < hebmonth):
      retvalu = 0
   elif (hebmonth < 8):
      if (iseven(hebmonth)):
         retvalu = 29
   elif (hebmonth == 10):
      retvalu = 29
   elif (hebmonth == 11):
      retvalu = 30
   elif (hebmonth == 8):
      if (isjewish8short(hebyear)):
         retvalu = 29
   elif (hebmonth == 9):
      if (isjewish9short(hebyear)):
         retvalu = 29
   elif (hebmonth == 12):
      if (not isjewishleap(hebyear)):
         retvalu = 29
   elif (hebmonth == 13 and isjewishleap(hebyear)):
      retvalu = 29
   else:
      retvalu = 0
   return int(retvalu)
def jewish_monthbegin(hebyear, hmonth):
   g_year = jewish2g(hebyear - 1)
   g_month = 9
   if (hmonth < JEWISH_FIRST_MONTH):
      g_year += 1
      gdate = date_rosh_hashanah(g_year)
      for hm in range(JEWISH_FIRST_MONTH - 1, hmonth - 1, -1):
         g_month -= 1
         gdate += (days_in_month(g_year, g_month) -\
               jewish_monthlength(hebyear, hm))
   elif (JEWISH_FIRST_MONTH <= hmonth):
      gdate = date_rosh_hashanah(g_year)
      for hm in range(JEWISH_FIRST_MONTH, hmonth + 0, 1):
         gdate -= (days_in_month(g_year, g_month) -\
               jewish_monthlength(hebyear, hm))
         g_month += 1
         if (MONTHS_IN_YEAR < g_month):
            g_month = 1
            g_year += 1
   return int(gdate)
def jewishymd2jd(hebyear, hebmonth, hebday):
   moninyear = jewish_months_in_year(hebyear)
   if (1 <= hebmonth and hebmonth <= moninyear):
      jds = jewish2jd(hebyear)
      hmon = JEWISH_FIRST_MONTH
      while (hmon != hebmonth):
         jds += jewish_monthlength(hebyear, hmon)
         hmon += 1
         if (moninyear < hmon):
            hmon = 1
         elif (hmon == JEWISH_FIRST_MONTH):
            hebyear += 1
            moninyear = jewish_months_in_year(hebyear)
   else:
      jds = 0
   return (jds + hebday - 1.0)
def amean(xa, xb):
   return ((xa + xb) / 2.0)
def amean1(xa):
   return ((xa + 1.0) / 2.0)
def lmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      diffy = xa - xb
      if (0.0001 < math.fabs(diffy)):
         retvalu = diffy / math.log(xa / xb)
      else:
         retvalu = diffy / ln1p(diffy / xb)
   return (retvalu)
def lmean1(xa):
   return (lmean(1.0, xa))
def pmean(pp, xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   elif (iszero(pp)):
      retvalu = math.sqrt(xa * xb)
   else:
      retvalu = math.pow((math.pow(xa, pp) + math.pow(xb,\
            pp)) / 2.0, 1.0 / pp)
   return (retvalu)
def gmean(xa, xb):
   if (xa < 0 or xb < 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = math.sqrt(xa * xb)
   return (retvalu)
def gmean1(xa):
   return (gmean(1.0, xa))
def hmean(xa, xb):
   if (xa < 0 or xb < 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = 2.0 * xa * xb / (xa + xb)
   return (retvalu)
def hmean1(xa):
   return (hmean(1.0, xa))
def qmean(xa, xb):
   if (xa < 0 or xb < 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = math.sqrt((xa * xa + xb * xb) / 2.0)
   return (retvalu)
def qmean1(xa):
   return (qmean(1.0, xa))
def heronianmean(xa, xb):
   if (xa < 0 or xb < 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = (xa + xb + math.sqrt(xa * xb)) / 3.0
   return (retvalu)
def heronianmean1(xa):
   return (heronianmean(1.0, xa))
def agmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = math.sqrt(xa * xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def agmean1(xa):
   return (agmean(1.0, xa))
def ahmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def ahmean1(xa):
   return (ahmean(1.0, xa))
def almean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = lmean(xa, xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def almean1(xa):
   return (almean(1.0, xa))
def aqmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = (xa + xb) / 2.0
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def aqmean1(xa):
   return (aqmean(1.0, xa))
def ghmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = math.sqrt(xa * xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def ghmean1(xa):
   return (ghmean(1.0, xa))
def glmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = math.sqrt(xa * xb)
         xa = lmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def glmean1(xa):
   return (glmean(1.0, xa))
def gqmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = math.sqrt(xa * xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def gqmean1(xa):
   return (gqmean(1.0, xa))
def hlmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = lmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def hlmean1(xa):
   return (hlmean(1.0, xa))
def hqmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def hqmean1(xa):
   return (hqmean(1.0, xa))
def lqmean(xa, xb):
   if (xa <= 0 or xb <= 0):
      retvalu = 0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      cdifff = math.fabs(xa - xb)
      ii = 0
      while True:
         pdifff = cdifff
         xtmp = lmean(xa, xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         if (iswithin(xa, xb, 10 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def lqmean1(xa):
   return (lqmean(1.0, xa))
def agmean__1(xa, xb):
   xsgn = 1
   ii = 0
   while True:
      xtmp = xa
      xa = (xa + xb) / 2.0
      xb = math.sqrt(math.fabs(xtmp * xb)) * sign(xa)
      if (iswithin(xa, xb, 10 * DBLEPS)):
         break# loop AWAIT
      ii += 1
      if (20 <= ii):
         break# loop AWAIT
   retvalu = xsgn * xtmp
   return (retvalu)
def aghmean(xa, xb, xc):
   if (xa <= 0 or xb <= 0 or xc <= 0):
      retvalu = 0
   elif (iseq(xa, xb) and iseq(xa, xc)):
      retvalu = xa
   else:
      ii = 0
      while True:
         ta = xa
         tb = xb
         tc = xc
         xa = (ta + tb + tc) / 3.0
         xb = cuberoot(ta * tb * tc)
         xc = 3.0 / (1.0 / ta + 1.0 / tb + 1.0 / tc)
         if (iswithin(xa, xc, 10 * DBLEPS)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xb
   return (retvalu)
def rms(xa, xb):
   return (math.sqrt((xa * xa + xb * xb) / 2.0))
def agmean1inv(yy):
   if (yy <= 0.0):
      scvx_xx = 0.0
   elif (yy < 0.0022):
      scvx_xx = 1.0 / DBLMAX
   else:
      if (yy <= 0.5):
         x_init = 4.0 * math.exp(PI / (-2.0 * yy))
      elif (yy < 2.1):
         cc = yy - 1.0
         x_init = ((((((((-0.09765625) * cc + 0.12890625) *\
               cc + 0.18750000) * cc + 0.18750000) * cc -\
               0.25000000) * cc + 0.50000000) * cc +\
               2.00000000) * cc + 1.00000000)
      else:
         cc = -(PI / 2.0)
         x_init = yy * wm(cc / (4.0 * yy)) / cc
      if (yy < 0.06):
         dx = x_init * 0.1
      else:
         dx = x_init * 0.5
      scvx_dx = dx
      scvx_xx = x_init
      scvx_yy = yy - agmean1(scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = yy - agmean1(scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def ghmean1inv(yy):
   if (yy <= 0.0):
      scvx_xx = 0.0
   else:
      x_init = math.exp(PI * yy / 2.0 - 1.385) - 0.22
      scvx_dx = 0.2
      scvx_xx = x_init
      scvx_yy = yy - ghmean1(scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = yy - ghmean1(scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def contraharmonic(nn, val_arr_pc):
   numer = 0.0
   denom = 0.0
   for ii in range(0, nn + 0, 1):
      denom += val_arr_pc[ii] * val_arr_pc[ii]
      numer += val_arr_pc[ii]
   return (denom / numer)
LC_KNUTH_MAX = 1073741823
LC_KNUTH_QUALITY_COUNT = 1009
LC_KNUTH_KK_COUNT = 100
LC_KNUTH_LL = 37
LC_KNUTH_TT = 70
LC_KNUTH_ARRAY_COUNT = 1100
lv_ranz_ind = -3
lv_ranz_magic = 0.0
lv_ranz_arr = [0 for ii in range(LC_KNUTH_QUALITY_COUNT)]
lv_ran_a_arr = [0 for ii in range(LC_KNUTH_ARRAY_COUNT)]
lv_ran_x_arr = [0 for ii in range(LC_KNUTH_KK_COUNT)]
def lf_ran_cycle(nn):
   global lv_ran_x_arr
   global lv_ran_a_arr
   aa = 0
   while (aa < LC_KNUTH_KK_COUNT):
      lv_ran_a_arr[aa] = lv_ran_x_arr[aa]
      aa += 1
   bb = 0
   cc = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL)
   while (aa < nn):
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc]
      lv_ran_a_arr[aa] = (LC_KNUTH_MAX & mody)
      aa += 1
      bb += 1
      cc += 1
   aa = 0
   while (aa < LC_KNUTH_LL):
      mody = lv_ran_a_arr[bb] - lv_ran_a_arr[cc]
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody)
      aa += 1
      bb += 1
      cc += 1
   cc = 0
   while (aa < LC_KNUTH_KK_COUNT):
      mody = lv_ran_a_arr[bb] - lv_ran_x_arr[cc]
      lv_ran_x_arr[aa] = (LC_KNUTH_MAX & mody)
      aa += 1
      bb += 1
      cc += 1
   return int(bb)
def lf_fill_ranz():
   global lv_ranz_magic
   global lv_ranz_ind
   global lv_ranz_arr
   global lv_ran_a_arr
   lf_ran_cycle(LC_KNUTH_QUALITY_COUNT)
   for jj in range(0, LC_KNUTH_QUALITY_COUNT + 0, 1):
      lv_ranz_arr[jj] = lv_ran_a_arr[jj]
   lv_ranz_arr[LC_KNUTH_KK_COUNT] = -1
   lv_ranz_ind = 0
   lv_ranz_magic = magicset()
   return int(lv_ranz_arr[0])
def lf_next_ranz():
   global lv_ranz_magic
   global lv_ranz_ind
   global lv_ranz_arr
   if (not ismagic(lv_ranz_magic)):
      rand_init(timee())
   elif (lv_ranz_arr[lv_ranz_ind] < 0):
      lf_fill_ranz()
   lv_ranz_ind += 1
   return int(lv_ranz_arr[lv_ranz_ind - 1])
def rand_init_array(seed_size, seed_arr_pc):
   global lv_ran_x_arr
   rnd_arr = [0 for ii in range(2 * LC_KNUTH_KK_COUNT)]
   rndss = ((seed_arr_pc[0] + 2) & (LC_KNUTH_MAX - 1))
   for jj in range(0, LC_KNUTH_KK_COUNT + 0, 1):
      rnd_arr[jj] = rndss
      rndss = (rndss << 1)
      if (LC_KNUTH_MAX < rndss):
         rndss -= (LC_KNUTH_MAX - 1)
   rndff = 0
   seed_ind = 0
   bitmask = 0
   for jj in range(0, LC_KNUTH_KK_COUNT + 0, 1):
      if (bitmask <= 1):
         seed_ind += 1
         if (seed_size <= seed_ind):
            break
         rndff = seed_arr_pc[seed_ind]
         bitmask = (1 << 30)
      if ((rndff & bitmask) != 0):
         rnd_arr[jj] = (bitmask ^ (rnd_arr[jj]))
      bitmask = (bitmask >> 1)
   rnd_arr[1] += 1
   rndss = (seed_arr_pc[0] & LC_KNUTH_MAX)
   tt = LC_KNUTH_TT - 1
   while (0 < tt):
      for jj in range(LC_KNUTH_KK_COUNT - 1, 0, -1):
         rnd_arr[jj + jj] = rnd_arr[jj]
         rnd_arr[jj + jj - 1] = 0
      jj = LC_KNUTH_KK_COUNT + LC_KNUTH_KK_COUNT - 2
      dd = LC_KNUTH_KK_COUNT + LC_KNUTH_LL - 2
      kk = LC_KNUTH_KK_COUNT - 2
      while (0 <= kk):
         rndx = rnd_arr[dd] - rnd_arr[jj]
         rnd_arr[dd] = (rndx & LC_KNUTH_MAX)
         rndx = rnd_arr[kk] - rnd_arr[jj]
         rnd_arr[kk] = (rndx & LC_KNUTH_MAX)
         dd -= 1
         kk -= 1
         jj -= 1
      if (isodd(rndss)):
         for jj in range(LC_KNUTH_KK_COUNT, 0, -1):
            rnd_arr[jj] = rnd_arr[jj - 1]
         rnd_arr[0] = rnd_arr[LC_KNUTH_KK_COUNT]
         jj = rnd_arr[LC_KNUTH_LL] - rnd_arr[0]
         rnd_arr[LC_KNUTH_LL] = (LC_KNUTH_MAX & jj)
         rndss = (rndss >> 1)
      elif (rndss == 0):
         tt -= 1
      else:
         rndss = (rndss >> 1)
   kk = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL)
   jj = 0
   while (jj < LC_KNUTH_LL):
      lv_ran_x_arr[kk] = rnd_arr[jj]
      kk += 1
      jj += 1
   kk = 0
   while (jj < LC_KNUTH_KK_COUNT):
      lv_ran_x_arr[kk] = rnd_arr[jj]
      kk += 1
      jj += 1
   for jj in range(0, 10, 1):
      lf_ran_cycle(2 * LC_KNUTH_KK_COUNT - 1)
   lf_fill_ranz()
   return 0
def rand_init(seed):
   sd_arr = [0 for ii in range(2)]
   sd_arr[0] = floor(seed)
   sd_arr[1] = floor(frac(seed) * INTMAX)
   rand_init_array(2, sd_arr)
   return (seed)
def randl(nn):
   max_allowed = LC_KNUTH_MAX - (LC_KNUTH_MAX % nn)
   while True:
      rndm = lf_next_ranz()
      if (rndm < max_allowed):
         break# loop AWAIT
   retvalu = rndm % nn
   return int(retvalu)
def randd():
   return ((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX +\
         1.0)) / (LC_KNUTH_MAX + 1.0))
def int_pdf(nn, xx):
   if (xx < 0.0 or nn < xx or not isint(xx)):
      retvalu = 0.0
   else:
      mm = floor(nn)
      if (isint(nn)):
         if (xx < nn):
            retvalu = 1.0 / nn
         else:
            retvalu = 0
      else:
         if (xx < mm):
            retvalu = 1.0 / nn
         else:
            retvalu = 1.0 - mm / nn
   return (retvalu)
def int_cdf(nn, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (nn <= xx):
      retvalu = 1.0
   else:
      mm = floor(nn)
      if (xx < mm):
         retvalu = (floor(xx) + 1) / nn
      else:
         retvalu = 1
   return (retvalu)
def int_quantile(nn, prbx):
   if (prbx <= 0.0):
      retvalu = 0.0
   elif (1.0 - frac(nn) / nn <= prbx):
      retvalu = math.ceil(nn - 1)
   else:
      retvalu = floor(nn * prbx + 1)
   return (retvalu)
def int_rand(nn):
   if (nn <= 1):
      retvalu = 0
   else:
      retvalu = floorl(randd() * nn)
   return int(retvalu)
def normal_pdf(xx):
   return (math.exp(-xx * xx / 2.0) / (math.sqrt(TAU)))
def normal_cdf(xx):
   return (erf(xx / SQRTTWO) / 2.0 + 0.5)
def normal_cdf__1(xx):
   if (xx <= -10.0):
      retvalu = 0.0
   elif (10.0 <= xx):
      retvalu = 1.0
   elif (iszero(xx)):
      retvalu = 0.5
   else:
      sum_curr = 0.0
      bb = 1.0 / xx
      xx_sqr = xx * xx
      ii = 0
      while True:
         bb *= xx_sqr / (2.0 * ii + 1.0)
         sum_prev = sum_curr
         sum_curr += bb
         if (iseq(sum_prev, sum_curr)):
            break# loop AWAIT
         ii += 1
      retvalu = (sum_curr * math.exp(-0.5 * (xx_sqr +\
            math.log(TAU))) + 0.5)
   return (retvalu)
def normal_quantile(prbx):
   return (SQRTTWO * erfinv(2.0 * prbx - 1.0))
lv_rand_gau_magic = 0.0
lv_rand_gau_prev = 0.0
def normal_rand():
   global lv_rand_gau_magic
   global lv_rand_gau_prev
   if (ismagic(lv_rand_gau_magic)):
      lv_rand_gau_magic = magicnot()
      retvalu = lv_rand_gau_prev
   else:
      while True:
         uua = randd() - 0.5
         uub = randd() - 0.5
         ww = uua * uua + uub * uub
         if (isbetweenx(ww, 0.0, 0.25)):
            break# loop AWAIT
      ww = math.sqrt(-2.0 * math.log(4.0 * ww) / ww)
      lv_rand_gau_prev = uub * ww
      lv_rand_gau_magic = magicset()
      retvalu = uua * ww
   return (retvalu)
def gau_pdf(xx):
   return (normal_pdf(xx))
def gau_cdf(xx):
   return (normal_cdf(xx))
def gau_quantile(prbx):
   return (normal_quantile(prbx))
def gau_rand():
   return (normal_rand())
def normal_quantile__1(prbx):
   p_low = 0.02425
   if (prbx <= 0.0):
      retvalu = -(DBLMAX)
   elif (1.0 <= prbx):
      retvalu = DBLMAX
   elif (p_low <= prbx and prbx <= 1.0 - p_low):
      qq = prbx - 0.5
      rr = qq * qq
      numer = ((((((-3.96968302866538E+1) * rr +\
            2.20946098424521E+2) * rr - 2.75928510446969E+2)\
            * rr + 1.38357751867269E+2) * rr -\
            3.06647980661472E+1) * rr + 2.50662827745924E+0)
      denom = ((((((-5.44760987982241E+1) * rr +\
            1.61585836858041E+2) * rr - 1.55698979859887E+2)\
            * rr + 6.68013118877197E+1) * rr -\
            1.32806815528857E+1) * rr + 1.00000000000000E+0)
      retvalu = (qq * numer / denom)
   else:
      if (prbx < p_low):
         rr = math.sqrt(-2.0 * math.log(prbx))
         qq = 1.0
      else:
         rr = math.sqrt(-2.0 * math.log(1 - prbx))
         qq = -1.0
      numer = ((((((-7.78489400243029E-3) * rr -\
            3.22396458041136E-1) * rr - 2.40075827716184E+0)\
            * rr - 2.54973253934373E+0) * rr +\
            4.37466414146497E+0) * rr + 2.93816398269878E+0)
      denom = (((((7.78469570904146E-3) * rr +\
            3.22467129070040E-1) * rr + 2.44513413714300E+0)\
            * rr + 3.75440866190742E+0) * rr +\
            1.00000000000000E+0)
      retvalu = qq * numer / denom
   return (retvalu)
def uni_pdf(max_x, xx):
   if (max_x <= 0.0 or xx <= 0.0 or max_x <= xx):
      retvalu = 0.0
   else:
      retvalu = 1.0 / max_x
   return (retvalu)
def uni_cdf(max_x, xx):
   if (max_x <= 0.0 or xx < 0.0):
      retvalu = 0.0
   elif (max_x < xx):
      retvalu = 1.0
   else:
      retvalu = xx / max_x
   return (retvalu)
def uni_quantile(max_x, prbx):
   if (prbx < 0.0 or max_x <= 0.0):
      retvalu = 0.0
   elif (max_x < prbx):
      retvalu = 1.0
   else:
      retvalu = prbx * max_x
   return (retvalu)
def uni_rand(max_x):
   return (uni_quantile(max_x, randd()))
def exp_pdf(scal, xx):
   if (xx < 0.0 or scal <= 0.0):
      retvalu = 0.0
   else:
      retvalu = scal * math.exp(-scal * xx)
   return (retvalu)
def exp_cdf(scal, xx):
   if (xx < 0.0 or scal <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 - math.exp(-scal * xx)
   return (retvalu)
def exp_quantile(scal, prbx):
   if (prbx <= 0.0 or scal <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = DBLMAX
   else:
      retvalu = -math.log(1.0 - prbx) / scal
   return (retvalu)
def exp_rand(scal):
   return (- math.log(randd()) / scal)
def poi_pdf(meanx, xx):
   if (xx < 0.0 or meanx <= 0.0):
      retvalu = 0.0
   else:
      kk = floor(xx)
      retvalu = math.pow(meanx, kk) * math.exp(-meanx) /\
            factorial(kk)
   return (retvalu)
def poi_cdf(meanx, xx):
   if (xx <= 0.0 or meanx <= 0.0):
      retvalu = 0.0
   elif (1000 < xx / meanx):
      retvalu = 1
   else:
      term = math.exp(-meanx)
      sum = term
      kk = floorl(xx)
      for ii in range(1, kk + 1, 1):
         term *= meanx / ii
         sum += term
      retvalu = sum
   return (retvalu)
def poi_quantile(meanx, prbx):
   if (prbx <= 0.0 or meanx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = DBLMAX
   else:
      prevsum = 0.0
      term = math.exp(-meanx)
      sum = term
      ii = 0
      while (sum <= prbx):
         ii += 1
         term *= meanx / ii
         prevsum = sum
         sum += term
      if (sum - prbx < prbx - prevsum):
         retvalu = ii
      else:
         retvalu = ii - 1
   return (retvalu)
def poi_rand(meanx):
   prob = randd()
   poi = math.exp(-meanx)
   sum = poi
   nn = 0
   while (sum < prob):
      nn += 1
      poi *= 1.0 * meanx / nn
      sum += poi
   return int(nn)
def geo_pdf(prob, kk):
   if (kk < 0 or prob < 0.0 or 1.0 <= prob):
      retvalu = 0.0
   else:
      retvalu = math.pow(1.0 - prob, kk) * prob
   return (retvalu)
def geo_cdf(prob, kk):
   if (kk <= -1 or prob < 0.0):
      retvalu = 0.0
   elif (1.0 <= prob):
      retvalu = 1.0
   else:
      retvalu = 1.0 - math.pow(1.0 - prob, kk + 1)
   return (retvalu)
def geo_quantile(prob, prbx):
   if (prbx <= 0.0 or 1.0 <= prbx or prob <= 0.0 or 1.0 <= prob):
      retvalu = 0.0
   else:
      retvalu = math.log(1.0 - prbx) / math.log(1.0 - prob) - 1.0
   return (retvalu)
def geo_rand(prob):
   return int((floorl(math.log(randd()) / math.log(1.0 - prob))))
def cauchy_pdf(scal, xx):
   return (1.0 / (PI * scal * (1 + (square(xx / scal)))))
def cauchy_cdf(scal, xx):
   return (taninv(xx / scal) / PI + 0.5)
def cauchy_quantile(scal, prbx):
   return (scal * math.tan((prbx - 0.5) * PI))
def cauchy_rand(scal):
   return (cauchy_quantile(scal, randd()))
def logistic_pdf(ss, xx):
   if (ss <= 0.0):
      retvalu = 0.0
   else:
      exs = math.exp(-xx / ss)
      retvalu = exs / (ss * math.pow(1.0 + exs, 2.0))
   return (retvalu)
def logistic_cdf(ss, xx):
   if (ss <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 / (1.0 + math.exp(-xx / ss))
   return (retvalu)
def logistic_quantile(ss, prbx):
   if (prbx <= 0.0 or ss <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = 1.0
   else:
      retvalu = -ss * math.log(1.0 / prbx - 1.0)
   return (retvalu)
def logistic_rand(ss):
   return (- ss * math.log(1.0 / randd() - 1.0))
def tri_pdf(pp, xx):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0
   else:
      if (xx < 0.0 or 1.0 < xx):
         retvalu = 0.0
      elif (xx < pp):
         retvalu = divi(2.0 * xx, pp, 2.0)
      else:
         retvalu = divi(2.0 * (1.0 - xx), 1.0 - pp, 2.0)
   return (retvalu)
def tri_cdf(pp, xx):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0
   else:
      if (xx <= 0):
         retvalu = 0
      elif (xx < pp):
         retvalu = xx * xx / pp
      elif (xx < 1.0):
         retvalu = 1.0 - square(1.0 - xx) / (1.0 - pp)
      else:
         retvalu = 1.0
   return (retvalu)
def tri_quantile(pp, prbx):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0
   else:
      if (prbx <= 0):
         retvalu = 0
      elif (prbx < pp):
         retvalu = math.sqrt(prbx * pp)
      elif (prbx < 1.0):
         retvalu = 1.0 - math.sqrt((1.0 - prbx) * (1.0 - pp))
      else:
         retvalu = 1.0
   return (retvalu)
def tri_rand(pp):
   xx = randd()
   yy = randd()
   if (xx < pp):
      if (2 * xx < pp * yy):
         xx = pp - xx
   else:
      if ((pp - 1.0) * yy < 2.0 * (xx - 1.0)):
         xx = (pp + 1.0) - xx
   return (xx)
def trap_pdf(para, parb, xx):
   if (xx < 0.0 or 1.0 < xx or para < 0.0 or parb < para or\
         1.0 < parb):
      retvalu = 0.0
   else:
      if (xx < para):
         retvalu = xx / para
      elif (xx <= parb):
         retvalu = 1.0
      else:
         retvalu = (1.0 - xx) / (1.0 - parb)
   return (retvalu * 2.0 / (1.0 + parb - para))
def trap_cdf(para, parb, xx):
   if (para < 0.0 or parb < para or 1.0 < parb):
      retvalu = 0.0
   elif (xx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= xx):
      retvalu = 1.0
   else:
      mm = 2.0 / (1.0 + parb - para)
      if (xx < para):
         retvalu = mm * xx * xx / (2.0 * para)
      elif (xx < parb):
         retvalu = mm * (xx - para / 2.0)
      else:
         retvalu = 1.0 - mm * square(1.0 - xx) / (2.0 * (1.0\
               - parb))
   return (retvalu)
def trap_quantile(para, parb, prbx):
   if (para < 0.0 or parb < para or 1.0 < parb):
      retvalu = 0.0
   elif (prbx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = 1.0
   else:
      mm = 2.0 / (1.0 + parb - para)
      if (prbx < para * mm / 2.0):
         retvalu = math.sqrt((2.0 * para * prbx) / mm)
      elif (prbx < 1.0 - mm * (1.0 - parb) / 2.0):
         retvalu = prbx / mm + para / 2.0
      else:
         retvalu = 1.0 - SQRTTWO * math.sqrt((1.0 - parb) *\
               (1.0 - prbx) / mm)
   return (retvalu)
def trap_rand(para, parb):
   retvalu = -1
   while True:
      xx = randd()
      if (xx < para):
         if (randd() * para < xx):
            retvalu = xx
      elif (xx <= parb):
         retvalu = xx
      else:
         if (randd() * (1.0 - parb) < (1.0 - xx)):
            retvalu = xx
      if (0.0 <= retvalu):
         break# loop AWAIT
   return (retvalu)
def pareto_pdf(shap, scal, xx):
   return (shap * math.pow(scal / xx, shap) / xx)
def pareto_cdf(shap, scal, xx):
   return (1.0 - math.pow(scal / xx, shap))
def pareto_quantile(shap, scal, prbx):
   return (scal / math.pow(1.0 - prbx, 1.0 / shap))
def pareto_rand(shap, scal):
   return (scal / math.pow(randd(), 1.0 / shap))
def gompertz_pdf(shap, scal, xx):
   return (scal * shap * math.exp(shap + scal * xx - shap *\
         math.exp(scal * xx)))
def gompertz_cdf(shap, scal, xx):
   return (1.0 - math.exp(-shap * (math.exp(scal * xx) - 1)))
def gompertz_quantile(shap, scal, prbx):
   return (math.log(1 - math.log(1.0 - prbx) / shap) / scal)
def gompertz_rand(shap, scal):
   return (gompertz_quantile(shap, scal, randd()))
def zipf_pdf(ss, max_kk, kk):
   if (kk <= 0.0 or max_kk < kk):
      retvalu = 0.0
   else:
      retvalu = 1.0 / (math.pow(kk, ss) * hnm(max_kk, ss))
   return (retvalu)
def zipf_cdf(ss, max_kk, kk):
   if (kk <= 0.0):
      retvalu = 0.0
   elif (max_kk < kk):
      retvalu = 1.0
   else:
      retvalu = hnm(kk, ss) / hnm(max_kk, ss)
   return (retvalu)
def zipf_quantile(ss, max_kk, prbx):
   target = prbx * hnm(max_kk, ss)
   summ = 0
   ii = 1
   while True:
      summ += 1.0 / math.pow(ii, ss)
      if (target <= summ):
         break# loop AWAIT
      ii += 1
   return int(ii)
def zipf_rand(ss, max_kk):
   return int((zipf_quantile(ss, max_kk, randd())))
def beta_pdf(shap_a, shap_b, xx):
   return (math.pow(xx, shap_a - 1.0) * math.pow((1.0 - xx),\
         shap_b - 1.0) / beta(shap_a, shap_b))
def beta_cdf(shap_a, shap_b, xx):
   return (betainc(shap_a, shap_b, xx))
def beta_quantile(shap_a, shap_b, prbx):
   if (prbx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = 1.0
   else:
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
      retvalu = scvx_xx
   return (retvalu)
def beta_rand(shap_a, shap_b):
   return (beta_quantile(shap_a, shap_b, randd()))
def gamma_pdf(shap, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   else:
      retvalu = math.exp(math.log(xx) * (shap - 1.0) - xx) /\
            tgamma(shap)
   return (retvalu)
def gamma_cdf(shap, xx):
   if (xx <= 0.0 or shap <= 0.0):
      retvalu = 0.0
   elif (isint(shap)):
      sum = 1.0
      rr = 1.0
      for ii in range(1, shap + 0, 1):
         rr *= xx / ii
         sum += rr
      retvalu = 1.0 - math.exp(-xx) * sum
   else:
      retvalu = rligamma(shap, xx)
   return (retvalu)
def gamma_rand(shap):
   i_shape = floor(shap)
   val = 1.0
   if (shap < 5):
      for jj in range(1, i_shape + 1, 1):
         val *= randd()
      val = -math.log(val)
      f_shape = shap - i_shape
      if (0.00001 < f_shape):
         pp = E / (f_shape + E)
         while True:
            vv = math.log(randd())
            if (randd() < pp):
               xx = math.exp(vv / f_shape)
               qq = math.exp(-xx)
            else:
               xx = 1.0 - vv
               qq = math.exp(math.log(xx) * (f_shape - 1))
            if (randd() < qq):
               break# loop AWAIT
         val += xx
   else:
      ee = shap - 1.0
      gg = math.sqrt(shap + ee)
      yy = 0.0
      ff = 0.0
      while (val <= 0.0 or (1.0 + yy * yy) * math.exp(ee *\
            math.log(val / ee) - ff) < randd()):
         xx = PI * randd()
         yy = math.sin(xx) / math.cos(xx)
         ff = gg * yy
         val = ff + ee
   return (val)
def chisqr_pdf(df, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   else:
      retvalu = (math.exp((math.log(xx / 2.0) * df - xx) /\
            2.0) / (xx * tgamma(df / 2.0)))
   return (retvalu)
def chisqr_cdf(df, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   else:
      retvalu = (1.0 - ruigamma(df / 2.0, xx / 2.0))
   return (retvalu)
def chisqr_rand(df):
   sum = 0
   for jj in range(1, df + 1, 1):
      vv = gau_rand()
      sum += vv * vv
   if (not isint(df)):
      sum += gamma_rand(frac(df) / 2.0) * 2.0
   return (sum)
def binomial_pdf(prob, success, trial):
   if (success < 0 or trial < success):
      retvalu = 0.0
   else:
      retvalu = comb(trial, success) * math.pow(prob,\
            success) * math.pow(1.0 - prob, trial - success)
   return (retvalu)
def binomial_cdf(prob, success, trial):
   if (prob <= 0.0 or success < 0):
      lsum = 0.0
   elif (1.0 <= prob or trial <= success):
      lsum = 1.0
   else:
      if (trial <= 2 * success):
         ss = trial - success - 1
         prob = 1.0 - prob
      else:
         ss = success
      sfactor = math.pow(1.0 - prob, trial)
      mu = prob / (1.0 - prob)
      lsum = 0.0
      for kk in range(0, ss + 1, 1):
         lsum += sfactor
         sfactor *= (mu * (trial - kk)) / (kk + 1.0)
      if (ss != success):
         lsum = 1.0 - lsum
   return (lsum)
def binomial_rand(prob, rr):
   successes = 0
   while (0 < rr):
      if (randd() < prob):
         successes += 1
      rr -= 1
   return (successes)
def benford_pdf(max_kk, kk):
   if (kk <= 0.0 or max_kk <= kk):
      retvalu = 0.0
   else:
      retvalu = math.log(1.0 + 1.0 / kk) / math.log(max_kk)
   return (retvalu)
def benford_cdf(max_kk, kk):
   if (kk <= 0.0):
      retvalu = 0.0
   elif (max_kk <= kk):
      retvalu = 1.0
   else:
      retvalu = math.log(kk + 1.0) / math.log(max_kk)
   return (retvalu)
def benford_rand(max_kk):
   target = randd()
   summ = 0
   ii = 1
   while True:
      summ += math.log(1.0 + 1.0 / ii) / math.log(max_kk)
      if (target <= summ):
         break# loop AWAIT
      ii += 1
   return int(ii)
def nbd_pdf(prob, rsuccesses, kfailures):
   return (comb(rsuccesses + kfailures - 1, kfailures) *\
         math.pow(1.0 - prob, kfailures) * math.pow(prob,\
         rsuccesses))
def nbd_cdf(prob, rsuccesses, kfailures):
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob))
def nbd_rand(prob, rsuccesses):
   rr = rsuccesses
   failures = 0
   while (0 < rr):
      if (randd() <= prob):
         rr -= 1
      else:
         failures += 1
   return int(failures)
def polya_pdf(prob, rsuccesses, kfailures):
   return (combx(rsuccesses + kfailures - 1, kfailures) *\
         math.pow(1.0 - prob, kfailures) * math.pow(prob,\
         rsuccesses))
def polya_cdf(prob, rsuccesses, kfailures):
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob))
def polya_rand(tt, prob):
   nn = 0
   mm = tt - 1
   qq = math.exp(tt * math.log(prob))
   rr = qq
   uu = randd()
   while (rr <= uu):
      nn += 1
      mm += 1
      qq *= (1.0 - prob) * mm / nn
      rr += qq
   return (nn)
def zeta_pdf(ss, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 / (zeta(ss) * math.pow(xx, ss))
   return (retvalu)
def zeta_cdf(ss, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   else:
      retvalu = hnm(xx, ss) / zeta(ss)
   return (retvalu)
def ks_cdf(nn, xx):
   if (nn <= 0 or xx <= 0.0):
      retvalu = 0.0
   else:
      if (30 < nn):
         tt = xx
         two_tt_sqr = 2.0 * tt * tt
         retvalu = 1.0 - math.exp(-two_tt_sqr) * (1.0 - 2.0 *\
               tt / (3.0 * math.sqrt(nn)) - two_tt_sqr *\
               (two_tt_sqr / 9.0 - 1.0 / 3.0) / nn)
      else:
         tt = xx * math.sqrt(nn)
         sum = 0.0
         kk = nn
         while (tt < kk):
            sum += comb(nn, kk) * math.pow(kk - tt, kk) *\
                  math.pow(tt + nn - kk, nn - kk - 1)
            kk -= 1
         retvalu = 1.0 - sum * tt / math.pow(nn, nn)
   return (retvalu)
def ks_a_cdf(xx):
   if (xx < 0.0001):
      retvalu = 0.0
   else:
      sum = 0.0
      vv = -square(PI / xx) / 8.0
      kk = 1
      while True:
         sum_prev = sum
         sum += math.exp(vv * kk * kk)
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         kk += 2
      retvalu = sum * math.sqrt(TAU) / xx
   return (retvalu)
def ks_b_cdf(nn, xx):
   if (xx < 0.0001 or nn <= 0):
      retvalu = 0.0
   else:
      nxx = xx + (2.0 * math.sqrt(nn) + 3.0 * xx - 3.0) /\
            (12.0 * nn)
      retvalu = ks_a_cdf(nxx)
   return (retvalu)
def ks_quantile(nn, prbx):
   if (not isbetween(prbx, 0.0, 1.0)):
      scvx_xx = 0.0
   else:
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = prbx - ks_cdf(nn, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = prbx - ks_cdf(nn, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def t_pdf(dfn, xx):
   return (tgamma((dfn + 1.0) / 2.0) * math.pow((1.0 +\
         square(xx) / dfn), (-(dfn + 1.0) / 2.0)) /\
         (math.sqrt(dfn * PI) * tgamma(dfn / 2.0)))
def lf_subtprob(nnx, xx):
   nn = floorl(math.fabs(nnx))
   ww = math.atan2(xx, math.sqrt(nn))
   zz = square(math.cos(ww))
   yy = 1.0
   ii = nn - 2.0
   while (2.0 <= ii):
      yy = 1.0 + (ii - 1.0) / ii * zz * yy
      ii -= 2.0
   if (iseven(nn)):
      aa = math.sin(ww) / 2.0
      bb = 0.5
   else:
      if (nn == 1):
         aa = 0
      else:
         aa = math.sin(ww) * math.cos(ww) / PI
      bb = 0.5 + ww / PI
   retvalu = bb + aa * yy
   if (1.0 < retvalu):
      retvalu = 1.0
   return (retvalu)
def t_cdf(dfx, xx):
   return (lf_subtprob(dfx, xx))
def lf_t_quantile(ndfx, prbx):
   if (prbx < 0.5):
      prbx = 1.0 - prbx
      out_sign = -1
   else:
      out_sign = 1
   ux = normal_quantile(prbx)
   uxsq = square(ux)
   aa_x = ((1.0) * uxsq + 1.0) / 4.0
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq -\
         15.0) / 384.0
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq\
         - 1920.0) * uxsq - 945.0) / 92160.0
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq\
         - 1782.0) * uxsq - 765.0) * uxsq - 17955.0) / 368640.0
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x\
         / ndfx) / ndfx) / ndfx) / ndfx) / ndfx)
   if (ndfx <= square(log10(prbx)) + 3.0):
      nn_a = ndfx + 1.0
      while True:
         pp_a = lf_subtprob(ndfx, retvalu)
         ee_x = (nn_a * math.log(nn_a / (ndfx +\
               square(retvalu))) + math.log(ndfx / nn_a /\
               TAU) - 1.0 + (1.0 / nn_a - 1.0 / ndfx) / 6.0)\
               / 2.0
         if (100 < ee_x):
            delta = 0
         else:
            delta = (pp_a - prbx) / math.exp(ee_x)
         retvalu -= delta
         aa_x = math.fabs(delta) * 10000.0
         if (iszero(retvalu) or aa_x < retvalu):
            break# loop AWAIT
   return (out_sign * retvalu)
def t_quantile(dfx, prbx):
   ndfx = floor(math.fabs(dfx))
   if (iszero(prbx - 0.5)):
      retvalu = 0.0
   elif (prbx <= 0.0):
      retvalu = -DBLMAX
   elif (1.0 <= prbx):
      retvalu = DBLMAX
   else:
      retvalu = lf_t_quantile(ndfx, prbx)
   return (retvalu)
def t_cdf__1(dfx, xx):
   yy = math.sqrt(dfx + xx * xx)
   zz = (xx + yy) / (2.0 * yy)
   return (betainc__1(dfx / 2.0, dfx / 2.0, zz))
def t_quantile__1(dfx, prbx):
   if (not isbetween(prbx, 0.0, 1.0)):
      scvx_xx = 0.0
   else:
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = prbx - t_cdf(dfx, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = prbx - t_cdf(dfx, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def f_cdf(dfn_a, dfn_b, xx):
   aa = dfn_a / 2.0
   bb = dfn_b / 2.0
   gg = aa * xx
   return (beta_cdf(aa, bb, gg / (bb + gg)))
def lf_subfprob(dfn_a, dfn_b, xx):
   if (xx <= 0.0):
      retvalu = 1.0
   elif (iseven(dfn_b)):
      zx = dfn_b / (dfn_b + dfn_a * xx)
      ax = 1.0
      for ix in range(dfn_b - 2, 0, -2):
         ax = 1.0 + (dfn_a + ix - 2.0) / ix * zx * ax
      retvalu = 1.0 - (math.pow(1.0 - zx, dfn_a / 2.0) * ax)
   elif (iseven(dfn_a)):
      zx = dfn_a * xx / (dfn_b + dfn_a * xx)
      ax = 1.0
      for ix in range(dfn_a - 2, 0, -2):
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax
      retvalu = math.pow(1.0 - zx, dfn_b / 2.0) * ax
   else:
      yx = math.atan2(math.sqrt(dfn_a * xx / dfn_b), 1.0)
      zx = square(math.sin(yx))
      if (dfn_a == 1):
         ax = 0.0
      else:
         ax = 1.0
      for ix in range(dfn_a - 2, 1, -2):
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax
      bx = PI
      for ix in range(2, dfn_b + 1, 2):
         bx *= (ix - 1.0) / ix
      pp_a = 2.0 / bx * math.sin(yx) * math.pow(math.cos(yx),\
            dfn_b) * ax
      zx = square(math.cos(yx))
      if (dfn_b == 1):
         ax = 0.0
      else:
         ax = 1.0
      for ix in range(dfn_b - 2, 1, -2):
         ax = 1.0 + (ix - 1.0) / ix * zx * ax
      retvalu = (pp_a + 1.0 - (4.0 / TAU) * (yx +\
            math.sin(yx) * math.cos(yx) * ax))
      if (retvalu < 0.0):
         retvalu = 0.0
   return (retvalu)
def lf_subf_two(nx, mm, pp):
   uu = chisqr_cdf(nx, pp)
   nx_sub_two = nx - 2.0
   xx = (uu / nx * (1.0 + ((uu - nx_sub_two) / 2.0 + (((4.0 *\
         uu - 11.0 * nx_sub_two) * uu + nx_sub_two * (7.0 *\
         nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 *\
         nx_sub_two) * uu + nx_sub_two * (17.0 * nx - 26.0))\
         * uu - nx_sub_two * nx_sub_two * (9.0 * nx - 6.0)) /\
         48.0 / mm) / mm) / mm))
   while True:
      if (xx <= 0.0):
         break
      zz = math.exp(((nx + mm) * math.log((nx + mm) / (nx *\
            xx + mm)) + (nx - 2.0) * math.log(xx) +\
            math.log(nx * mm / (nx + mm)) - LNTWO -\
            math.log(TAU) - (1.0 / nx + 1.0 / mm - 1.0 / (nx\
            + mm)) / 6.0) / 2.0)
      xx_prev = xx
      xx += (lf_subfprob(nx, mm, xx) - pp) / zz
      if (iswithin(xx, xx_prev, 0.00001)):
         break# loop AWAIT
   return (xx)
def lf_subfx(nx, mm, pp):
   if (iseq(pp, 1.0)):
      retvalu = 0.0
   elif (mm == 0):
      retvalu = 1.0 / square(t_quantile(nx, 0.5 - pp / 2.0))
   elif (nx == 1):
      retvalu = square(t_quantile(mm, pp / 2.0))
   elif (mm == 2):
      uu = chisqr_cdf(mm, 1.0 - pp)
      aa = mm - 2.0
      retvalu = 1.0 / (uu / mm * (1.0 + ((uu - aa) / 2.0 +\
            (((4.0 * uu - 11.0 * aa) * uu + aa * (7.0 * mm -\
            10.0)) / 24.0 + (((2.0 * uu - 10.0 * aa) * uu +\
            aa * (17.0 * mm - 26.0)) * uu - aa * aa * (9.0 *\
            mm - 6.0)) / 48.0 / nx) / nx) / nx))
   elif (mm < nx):
      retvalu = 1.0 / lf_subf_two(mm, nx, 1.0 - pp)
   else:
      retvalu = lf_subf_two(nx, mm, pp)
   return (retvalu)
def f_quantile(dfn_a, dfn_b, prbx):
   return (lf_subfx(dfn_a, dfn_b, 1.0 - prbx))
def f_quantile__1(dfn_a, dfn_b, prbx):
   if (prbx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= prbx):
      retvalu = 1.0
   else:
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
      retvalu = scvx_xx
   return (retvalu)
def mb_pdf(aa, xx):
   return (math.sqrt(4 / TAU) * xx * xx * math.exp(-xx * xx /\
         (2 * aa * aa)) / (aa * aa * aa))
def mb_cdf(aa, xx):
   return (erf(xx / (SQRTTWO * aa)) - math.sqrt(4 / TAU) * xx\
         * math.exp(-xx * xx / (2 * aa * aa)) / aa)
def maxwell_boltzmann_pdf(temperature, molecular_mass, velocity):
   aa = math.sqrt(BOLTZMANN * temperature / molecular_mass)
   return (mb_pdf(aa, velocity))
def maxwell_boltzmann_cdf(temperature, molecular_mass, velocity):
   aa = math.sqrt(BOLTZMANN * temperature / molecular_mass)
   return (mb_cdf(aa, velocity))
def maxwell_juttner_pdf(temperature, molecular_mass, velocity):
   if (temperature <= 0.0 or velocity <= 0.0 or LIGHT <=\
         velocity or molecular_mass <= 0.0):
      retvalu = 0.0
   else:
      rtht = (molecular_mass * LIGHT * LIGHT) / (BOLTZMANN *\
            temperature)
      bt = velocity / LIGHT
      gmm = 1.0 / topyh1(bt)
      dn = bessKn(2, rtht)
      if (iszero(dn)):
         retvalu = 0.0
      else:
         retvalu = gmm * gmm * bt * rtht * math.exp(-gmm *\
               rtht) / dn
   return (retvalu)
def bb_pdf(wavelen):
   if (wavelen <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 / (math.pow(wavelen, 5.0) * (math.exp(1.0\
            / wavelen) - 1.0))
   return (retvalu * 15.0 / math.pow(PI, 4.0))
def blackbody_pdf(wavelen):
   return (bb_pdf(wavelen))
def ints_rand(nn, prob_arr_pc):
   sum = 0
   for p_ind in range(0, nn + 0, 1):
      sum += prob_arr_pc[p_ind]
   rndm = randd()
   hh = 0
   for p_ind in range(0, nn + 0, 1):
      hh += prob_arr_pc[p_ind] / sum
      if (rndm < hh):
         break
   return int(p_ind)
def lf_num2norm(numm):
   if (numm <= 1):
      retvalu = 0.0
   else:
      retvalu = (3.0 * math.sqrt(math.log(numm)) - 1.4 - (0.5\
            * math.log(numm) - 0.39) / numm)
   return (retvalu)
def stdev2spread(numm, stdevx):
   if (numm <= 1 or iszero(stdevx)):
      retvalu = 0.0
   else:
      retvalu = (stdevx * lf_num2norm(numm))
   return (retvalu)
def spread2stdev(numm, spread):
   if (numm <= 1 or iszero(spread)):
      retvalu = 0.0
   else:
      retvalu = (spread / lf_num2norm(numm))
   return (retvalu)
def maxabs(nn, data_arr_pc):
   maxaby = data_arr_pc[0]
   amaxaby = math.fabs(maxaby)
   for ii in range(1, nn + 0, 1):
      atemp = math.fabs(data_arr_pc[ii])
      if (amaxaby < atemp):
         maxaby = data_arr_pc[ii]
         amaxaby = atemp
   return (maxaby)
def minabs(nn, data_arr_pc):
   minaby = data_arr_pc[0]
   aminaby = math.fabs(minaby)
   for ii in range(1, nn + 0, 1):
      atemp = math.fabs(data_arr_pc[ii])
      if (atemp < aminaby):
         minaby = data_arr_pc[ii]
         aminaby = atemp
   return (minaby)
def maxabsoffset(offset, nn, data_arr_pc):
   maxaby = data_arr_pc[0] - offset
   for ii in range(1, nn + 0, 1):
      delta = data_arr_pc[ii] - offset
      if (math.fabs(maxaby) < math.fabs(delta)):
         maxaby = delta
   return (maxaby + offset)
def minabsoffset(offset, nn, data_arr_pc):
   minaby = data_arr_pc[0] - offset
   for ii in range(1, nn + 0, 1):
      delta = data_arr_pc[ii] - offset
      if (math.fabs(delta) < math.fabs(minaby)):
         minaby = delta
   return (minaby + offset)
def mini(num, data_arr_pc):
   curr = data_arr_pc[0]
   for ii in range(1, num + 0, 1):
      tmp = data_arr_pc[ii]
      if (tmp < curr):
         curr = tmp
   return (curr)
def maxi(num, data_arr_pc):
   curr = data_arr_pc[0]
   for ii in range(1, num + 0, 1):
      tmp = data_arr_pc[ii]
      if (curr < tmp):
         curr = tmp
   return (curr)
def maxmin(num, data_arr_pc, ret_maxmin_arr_p):
   minn = data_arr_pc[0]
   maxx = data_arr_pc[0]
   for ii in range(1, num + 0, 1):
      tmp = data_arr_pc[ii]
      if (minn < tmp):
         minn = tmp
      if (tmp < maxx):
         maxx = tmp
   ret_maxmin_arr_p[0] = maxx
   ret_maxmin_arr_p[1] = minn
   return (maxx - minn)
def min2(value_a, value_b):
   if (value_a < value_b):
      retvalu = value_a
   else:
      retvalu = value_b
   return (retvalu)
def max2(value_a, value_b):
   if (value_b < value_a):
      retvalu = value_a
   else:
      retvalu = value_b
   return (retvalu)
def minabs2(value_a, value_b):
   if (math.fabs(value_a) < math.fabs(value_b)):
      retvalu = value_a
   else:
      retvalu = value_b
   return (retvalu)
def maxabs2(value_a, value_b):
   if (math.fabs(value_b) < math.fabs(value_a)):
      retvalu = value_a
   else:
      retvalu = value_b
   return (retvalu)
def variance(nn, xx_arr_pc):
   meanx = 0.0
   variancex = 0.0
   for ii in range(0, nn + 0, 1):
      delta = xx_arr_pc[ii] - meanx
      meanx += delta / (ii + 1.0)
      variancex += delta * (xx_arr_pc[ii] - meanx)
   if (2 <= nn):
      variancex /= (nn - 1.0)
   else:
      variancex = 0
   return (variancex)
def mean(nn, xx_arr_pc):
   meanx = 0.0
   for ii in range(0, nn + 0, 1):
      delta = xx_arr_pc[ii] - meanx
      meanx += delta / (ii + 1.0)
   return (meanx)
LC_STTS_NUM = 0
LC_STTS_MEAN = 1
LC_STTS_MSQ = 2
LC_STTS_MAX = 3
LC_STTS_MIN = 4
LC_STTS_MAGIC = 5
LC_STTS_COUNT = 6
LC_STTS_MAX_KEY = 100
lv_sttx_arr = [[0 for ii in range(LC_STTS_COUNT)] for ii in\
      range(LC_STTS_MAX_KEY)]
def lf_stts_is_inited(ix_hndl):
   global lv_sttx_arr
   vll = lv_sttx_arr[0][LC_STTS_MAGIC]
   if (vll != magicset() and vll != magicnot()):
      for ii in range(0, LC_STTS_MAX_KEY + 0, 1):
         for jj in range(0, LC_STTS_MAGIC + 0, 1):
            lv_sttx_arr[ii][jj] = 0
         lv_sttx_arr[0][LC_STTS_MAGIC] = magicnot()
   if (LC_STTS_MAX_KEY <= ix_hndl):
      retvalu_bol = False
   else:
      vll = lv_sttx_arr[ix_hndl][LC_STTS_MAGIC]
      retvalu_bol = ismagic(vll)
   return (retvalu_bol)
def lf_stts_find_empty():
   ix_hndl = 0
   while (lf_stts_is_inited(ix_hndl)):
      ix_hndl += 1
   if (LC_STTS_MAX_KEY <= ix_hndl):
      sys.stderr.write("lf_stts_find_empty:" + "STTS-Bad-handle")
      sys.exit(1)
   return int(ix_hndl)
def stts_init(ix_hndl, n_count, meanx, var, minim, maxim):
   global lv_sttx_arr
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] = n_count
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = meanx
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = var * (n_count - 1.0)
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = minim
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = maxim
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicset()
   return int(ix_hndl)
def stts_initx(ix_hndl, num_count, meanx, msq, minim, maxim):
   global lv_sttx_arr
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] = num_count
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = meanx
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = msq
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = minim
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = maxim
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicset()
   return int(ix_hndl)
def stts_reset(ix_hndl):
   return int((stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0)))
def stts_new():
   ix_hndl = lf_stts_find_empty()
   return int((stts_reset(ix_hndl)))
def stts_delete(ix_hndl):
   global lv_sttx_arr
   lv_sttx_arr[ix_hndl][LC_STTS_MAGIC] = magicnot()
   return int(ix_hndl)
def sttscount(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_NUM])
def sttsmean(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_MEAN])
def sttsmsq(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_MSQ])
def sttsmax(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_MAX])
def sttsmin(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_MIN])
def sttsmagic(ix_hndl):
   global lv_sttx_arr
   return (lv_sttx_arr[ix_hndl][LC_STTS_MAGIC])
def sttssum(ix_hndl):
   return (sttsmean(ix_hndl) * sttscount(ix_hndl))
def sttsvar(ix_hndl):
   if (math.fabs(sttscount(ix_hndl)) <= 1.0):
      retvalu = 0.0
   else:
      retvalu = (sttsmsq(ix_hndl) /\
            (math.fabs(sttscount(ix_hndl) - 1.0)))
   return (retvalu)
def sttsstdev(ix_hndl):
   if (sttscount(ix_hndl) <= 1.0):
      retvalu = 0.0
   else:
      retvalu = (math.sqrt(sttsmsq(ix_hndl) /\
            (sttscount(ix_hndl) - 1.0)))
   return (retvalu)
def sttsstdevmean(ix_hndl):
   if (sttscount(ix_hndl) <= 1.0 or sttsmsq(ix_hndl) <= 0.0):
      retvalu = 0.0
   else:
      retvalu = (math.sqrt(sttsmsq(ix_hndl)) /\
            (sttscount(ix_hndl) - 1.0))
   return (retvalu)
def sttsspread(ix_hndl):
   return (sttsmax(ix_hndl) - sttsmin(ix_hndl))
def stts_update(ix_hndl, new_data):
   global lv_sttx_arr
   if (not lf_stts_is_inited(ix_hndl)):
      sys.stderr.write("stts_update:" + "STTS-Bad-handle")
      sys.exit(1)
   delta = new_data - lv_sttx_arr[ix_hndl][LC_STTS_MEAN]
   lv_sttx_arr[ix_hndl][LC_STTS_NUM] += 1.0
   numy = lv_sttx_arr[ix_hndl][LC_STTS_NUM]
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] += (delta / numy)
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] += (delta * (new_data -\
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN]))
   if ((numy < 2.0 or sttsspread(ix_hndl) < 0.0)):
      lv_sttx_arr[ix_hndl][LC_STTS_MIN] = new_data
      lv_sttx_arr[ix_hndl][LC_STTS_MAX] = new_data
   else:
      if (new_data < lv_sttx_arr[ix_hndl][LC_STTS_MIN]):
         lv_sttx_arr[ix_hndl][LC_STTS_MIN] = new_data
      if (lv_sttx_arr[ix_hndl][LC_STTS_MAX] < new_data):
         lv_sttx_arr[ix_hndl][LC_STTS_MAX] = new_data
   return (delta)
def stts_downdate(ix_hndl, old_data):
   if (not lf_stts_is_inited(ix_hndl)):
      sys.stderr.write("stts_downdate:" + "STTS-Bad-handle")
      sys.exit(1)
   men = lv_sttx_arr[ix_hndl][LC_STTS_MEAN]
   delt = old_data - men
   if (0 < lv_sttx_arr[ix_hndl][LC_STTS_NUM]):
      lv_sttx_arr[ix_hndl][LC_STTS_NUM] -= 1
      if (0 < lv_sttx_arr[ix_hndl][LC_STTS_NUM]):
         men -= delt / lv_sttx_arr[ix_hndl][LC_STTS_NUM]
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = men
         lv_sttx_arr[ix_hndl][LC_STTS_MSQ] -= delt *\
               (old_data - men)
         if (lv_sttx_arr[ix_hndl][LC_STTS_MSQ] < 0.0):
            lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = 0.0
      else:
         lv_sttx_arr[ix_hndl][LC_STTS_MSQ] = 0.0
         lv_sttx_arr[ix_hndl][LC_STTS_MEAN] = 0.0
   return (delt)
def stts_updatex(ix_hndl, nn, data_arr_pc):
   retvalu = 0.0
   for ii in range(0, nn + 0, 1):
      retvalu += stts_update(ix_hndl, data_arr_pc[ii])
   return (retvalu)
def stts_newx(nn, data_arr_pc):
   ihndl = stts_new()
   for ii in range(0, nn + 0, 1):
      stts_update(ihndl, data_arr_pc[ii])
   return int(ihndl)
def stts_shift(ix_hndl, data_shift):
   global lv_sttx_arr
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] += data_shift
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] += data_shift
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] += data_shift
   return int(ix_hndl)
def stts_scale(ix_hndl, xfactor):
   global lv_sttx_arr
   if (0 < xfactor):
      newmax = lv_sttx_arr[ix_hndl][LC_STTS_MAX] * xfactor
      newmin = lv_sttx_arr[ix_hndl][LC_STTS_MIN] * xfactor
   else:
      newmax = lv_sttx_arr[ix_hndl][LC_STTS_MIN] * xfactor
      newmin = lv_sttx_arr[ix_hndl][LC_STTS_MAX] * xfactor
   lv_sttx_arr[ix_hndl][LC_STTS_MIN] = newmin
   lv_sttx_arr[ix_hndl][LC_STTS_MAX] = newmax
   lv_sttx_arr[ix_hndl][LC_STTS_MEAN] *= xfactor
   lv_sttx_arr[ix_hndl][LC_STTS_MSQ] *= xfactor * xfactor
   return int(ix_hndl)
def stts_copy(hto, hfrom):
   global lv_sttx_arr
   for ii in range(0, LC_STTS_COUNT + 0, 1):
      lv_sttx_arr[hto][ii] = lv_sttx_arr[hfrom][ii]
   return int(hto)
def stts_update2(ix_hnda, ix_hndb):
   if (not lf_stts_is_inited(ix_hndb)):
      sys.stderr.write("stts_update2:" + "STTS-Bad-hndb")
      sys.exit(1)
   if (not iszero(sttscount(ix_hndb))):
      if (not lf_stts_is_inited(ix_hnda)):
         sys.stderr.write("stts_update2:" + "STTS-Bad-hnda")
         sys.exit(1)
      if (iszero(sttscount(ix_hnda))):
         stts_copy(ix_hnda, ix_hndb)
      else:
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda)
         ncount = sttscount(ix_hndb) + sttscount(ix_hnda)
         nmean = (sttsmean(ix_hnda) + delta *\
               (sttscount(ix_hndb) / ncount))
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta\
               * delta * (sttscount(ix_hnda) *\
               sttscount(ix_hndb)) / ncount)
         amin = sttsmin(ix_hnda)
         amax = sttsmax(ix_hnda)
         bmin = sttsmin(ix_hndb)
         bmax = sttsmax(ix_hndb)
         if (amax < amin):
            amin = bmin
            amax = bmax
         else:
            if (bmin < amin):
               amin = bmin
            if (amax < bmax):
               amax = bmax
         stts_init(ix_hnda, ncount, nmean, nmsqr / (ncount -\
               1.0), amin, amax)
   return int(ix_hnda)
LC_STTSC_XX = 0
LC_STTSC_YY = 1
LC_STTSC_COVAR = 2
LC_STTSC_MAGIC = 3
LC_STTSC_COUNT = 4
lv_corx_arr = [[0 for ii in range(LC_STTSC_COUNT)] for ii in\
      range(LC_STTS_MAX_KEY)]
def lf_corr_is_init(ix_chnd):
   global lv_corx_arr
   if (LC_STTS_MAX_KEY <= ix_chnd):
      retvalu_bol = False
   else:
      vll = lv_corx_arr[ix_chnd][LC_STTSC_MAGIC]
      retvalu_bol = ismagic(vll)
   return (retvalu_bol)
def lf_corr_find_empty():
   ix_chnd = 0
   while (lf_corr_is_init(ix_chnd)):
      ix_chnd += 1
   if (LC_STTS_MAX_KEY <= ix_chnd):
      sys.stderr.write("lf_corr_find_empty:" +\
            "STTS-No-empty-handle")
      sys.exit(1)
   return int(ix_chnd)
def corr_new():
   global lv_corx_arr
   ix_chnd = lf_corr_find_empty()
   lv_corx_arr[ix_chnd][LC_STTSC_XX] = stts_new()
   lv_corx_arr[ix_chnd][LC_STTSC_YY] = stts_new()
   lv_corx_arr[ix_chnd][LC_STTSC_COVAR] = 0.0
   lv_corx_arr[ix_chnd][LC_STTSC_MAGIC] = magicset()
   return int(ix_chnd)
def corr_delete(ix_chnd):
   global lv_corx_arr
   lv_corx_arr[ix_chnd][LC_STTSC_MAGIC] = magicnot()
   stts_delete(lv_corx_arr[ix_chnd][LC_STTSC_XX])
   stts_delete(lv_corx_arr[ix_chnd][LC_STTSC_YY])
   return int(ix_chnd)
def corr_handlex(ix_chnd):
   global lv_corx_arr
   return int(lv_corx_arr[ix_chnd][LC_STTSC_XX])
def corr_handley(ix_chnd):
   global lv_corx_arr
   return int(lv_corx_arr[ix_chnd][LC_STTSC_YY])
def corr_update(ix_chnd, xx, yy):
   global lv_corx_arr
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY]
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX]
   num = sttscount(xxhnd)
   ddxx = stts_update(xxhnd, xx)
   ddyy = stts_update(yyhnd, yy)
   lv_corx_arr[ix_chnd][LC_STTSC_COVAR] += (ddxx * ddyy * num\
         / (num + 1.0))
   return (lv_corx_arr[ix_chnd][LC_STTSC_COVAR])
def corrslope(ix_chnd):
   global lv_corx_arr
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX]
   den = sttsmsq(xxhnd)
   if (iszero(den)):
      retvalu = 0.0
   else:
      retvalu = lv_corx_arr[ix_chnd][LC_STTSC_COVAR] / den
   return (retvalu)
def corry0(ix_chnd):
   global lv_corx_arr
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY]
   xxhnd = lv_corx_arr[ix_chnd][LC_STTSC_XX]
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) *\
         sttsmean(xxhnd))
   return (retvalu)
def corrcorr(ix_chnd):
   global lv_corx_arr
   xxmsq = sttsmsq(lv_corx_arr[ix_chnd][LC_STTSC_XX])
   yymsq = sttsmsq(lv_corx_arr[ix_chnd][LC_STTSC_YY])
   den = xxmsq * yymsq
   if (iszero(den)):
      retvalu = 0.0
   else:
      retvalu = (lv_corx_arr[ix_chnd][LC_STTSC_COVAR] /\
            math.sqrt(den))
   return (retvalu)
def corrstderr(ix_chnd):
   global lv_corx_arr
   yyhnd = lv_corx_arr[ix_chnd][LC_STTSC_YY]
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) *\
         lv_corx_arr[ix_chnd][LC_STTSC_COVAR])
   if (diff < 0):
      retvalu = 0
   else:
      retvalu = math.sqrt(diff / (sttscount(yyhnd) - 2))
   return (retvalu)
def fit_poly(num_points, pts_arr_pc, ret_coeff_arr_p):
   cc_arr = []
   for nzzn in range(len(cc_arr), int(num_points)):
      cc_arr.append(0)
   for j_ind in range(0, num_points + 0, 1):
      cc_arr[j_ind] = pts_arr_pc[2 * j_ind + 1]
   for j_ind in range(1, num_points + 0, 1):
      k_ind = num_points - 1 - j_ind
      for i_ind in range(num_points - 1, j_ind - 1, -1):
         cc_arr[i_ind] = ((cc_arr[i_ind - 1] - cc_arr[i_ind])\
               / (pts_arr_pc[2 * k_ind] - pts_arr_pc[2 * i_ind]))
         k_ind -= 1
   for j_ind in range(0, num_points - 1, 1):
      for i_ind in range(num_points - 2, j_ind - 1, -1):
         prod = cc_arr[i_ind + 1] * pts_arr_pc[2 * (i_ind -\
               j_ind)]
         cc_arr[i_ind] -= prod
   for j_ind in range(0, num_points + 0, 1):
      ret_coeff_arr_p[j_ind] = cc_arr[j_ind]
   return (num_points)
LC_PARABOLA_X_AXIS = 0
LC_PARABOLA_Y_EXTREMA = 1
LC_PARABOLA_REAL_ROOTS = 2
LC_PARABOLA_ROOT_A = 3
LC_PARABOLA_ROOT_B = 4
LC_PARABOLA_COEFF_C = 5
LC_PARABOLA_COEFF_B = 6
LC_PARABOLA_COEFF_A = 7
lv_parabola_arr = [0 for ii in range(8)]
def parabola_solve(xx_a, yy_a, xx_b, yy_b, xx_c, yy_c):
   global lv_parabola_arr
   pts_arr = [0 for ii in range(8)]
   cc_arr = [0 for ii in range(4)]
   roots_arr = [0 for ii in range(2)]
   pts_arr[0] = xx_a
   pts_arr[1] = yy_a
   pts_arr[2] = xx_b
   pts_arr[3] = yy_b
   pts_arr[4] = xx_c
   pts_arr[5] = yy_c
   fit_poly(3, pts_arr, cc_arr)
   roots_arr[0] = DBLMAX
   roots_arr[1] = DBLMAX
   if (iszero(cc_arr[2])):
      axis = DBLMAX
      if (iszero(cc_arr[1])):
         yyextrema = cc_arr[0]
         real_roots = 0
      else:
         yyextrema = DBLMAX
         real_roots = 1
         roots_arr[0] = (-cc_arr[0] / cc_arr[1])
   else:
      axis = (-cc_arr[1] / (2.0 * cc_arr[2]))
      yyextrema = (cc_arr[0] + xx_a * (cc_arr[1] + xx_a *\
            cc_arr[2]))
      disc = (cc_arr[1] * cc_arr[1] - 4.0 * cc_arr[2] *\
            cc_arr[0])
      if (iszero(disc)):
         real_roots = 1
         roots_arr[0] = axis
      elif (0 < disc):
         disc = math.sqrt(disc) / (2.0 * cc_arr[2])
         real_roots = 2
         roots_arr[0] = axis - disc
         roots_arr[1] = axis + disc
      else:
         real_roots = 0
   lv_parabola_arr[LC_PARABOLA_X_AXIS] = axis
   lv_parabola_arr[LC_PARABOLA_Y_EXTREMA] = yyextrema
   lv_parabola_arr[LC_PARABOLA_REAL_ROOTS] = real_roots
   lv_parabola_arr[LC_PARABOLA_ROOT_A] = roots_arr[0]
   lv_parabola_arr[LC_PARABOLA_ROOT_B] = roots_arr[1]
   lv_parabola_arr[LC_PARABOLA_COEFF_C] = cc_arr[0]
   lv_parabola_arr[LC_PARABOLA_COEFF_B] = cc_arr[1]
   lv_parabola_arr[LC_PARABOLA_COEFF_A] = cc_arr[2]
   return (axis)
def parabola_get(ii_ind):
   global lv_parabola_arr
   if (0 <= ii_ind and ii_ind <= 7):
      retvalu = lv_parabola_arr[ii_ind]
   else:
      retvalu = 0
   return (retvalu)
def parabola_roots(ii_ind):
   if (0 <= ii_ind and ii_ind <= 1):
      retvalu = parabola_get(ii_ind + LC_PARABOLA_ROOT_A)
   else:
      retvalu = DBLMAX
   return (retvalu)
def parabola_yextrema():
   return (parabola_get(LC_PARABOLA_Y_EXTREMA))
def parabola_xaxis():
   return (parabola_get(LC_PARABOLA_X_AXIS))
def parabola_realroots():
   return (parabola_get(LC_PARABOLA_REAL_ROOTS))
LC_CIRCLE_X = 0
LC_CIRCLE_Y = 1
LC_CIRCLE_RADIUS = 2
lv_circle_arr = [0 for ii in range(3)]
def circle_solve(aa_x, aa_y, bb_x, bb_y, cc_x, cc_y):
   global lv_circle_arr
   ca_a = bb_y - aa_y
   cb_a = bb_x - aa_x
   ca_b = cc_y - aa_y
   cb_b = cc_x - aa_x
   det = 2.0 * (ca_a * cb_b - ca_b * cb_a)
   if (not iszero(det)):
      cc_a = -ca_a * (aa_y + bb_y) - cb_a * (aa_x + bb_x)
      cc_b = -ca_b * (aa_y + cc_y) - cb_b * (aa_x + cc_x)
      center_x = (ca_b * cc_a - ca_a * cc_b) / det
      center_y = (cb_a * cc_b - cb_b * cc_a) / det
      radius = hypot(center_x - aa_x, center_y - aa_y)
   else:
      center_x = DBLMAX
      center_y = DBLMAX
      radius = DBLMAX
   lv_circle_arr[LC_CIRCLE_X] = center_x
   lv_circle_arr[LC_CIRCLE_Y] = center_y
   lv_circle_arr[LC_CIRCLE_RADIUS] = radius
   return (radius)
def circle_get(ii_ind):
   global lv_circle_arr
   if (0 <= ii_ind and ii_ind <= 2):
      retvalu = lv_circle_arr[ii_ind]
   else:
      retvalu = 0
   return (retvalu)
def fit_minmax(num_points, pt_arr_pc, ret_coeff_arr_p):
   xxp_arr = []
   yyp_arr = []
   for nzzn in range(len(xxp_arr), int(num_points)):
      xxp_arr.append(0)
   for nzzn in range(len(yyp_arr), int(num_points)):
      yyp_arr.append(0)
   epsxx = 0.0
   epsyy = 0.0
   for j_ind in range(0, num_points + 0, 1):
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind]
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1]
      if (epsxx < math.fabs(xxp_arr[j_ind])):
         epsxx = math.fabs(xxp_arr[j_ind])
      if (epsyy < math.fabs(yyp_arr[j_ind])):
         epsyy = math.fabs(yyp_arr[j_ind])
   nx_spr = -1
   nx_a = 0
   nx_b = 0
   epsxx *= 16 * DBLEPS
   epsyy *= 16 * DBLEPS
   for i_ind in range(1, num_points + 0, 1):
      for j_ind in range(0, i_ind + 0, 1):
         dxx = xxp_arr[i_ind] - xxp_arr[j_ind]
         if (epsxx < math.fabs(dxx)):
            slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx
            intercept_t = yyp_arr[i_ind] - slope_t *\
                  xxp_arr[i_ind]
            pty = slope_t * xxp_arr[0] + intercept_t
            dyy = yyp_arr[0] - pty
            min_dyy = dyy
            max_dyy = dyy
            k_ind = 1
            while (k_ind < num_points):
               pty = slope_t * xxp_arr[k_ind] + intercept_t
               dyy = yyp_arr[k_ind] - pty
               if (dyy < min_dyy):
                  min_dyy = dyy
               if (max_dyy < dyy):
                  max_dyy = dyy
               this_spread = max_dyy - min_dyy
               if ((0 < nx_spr and nx_spr + epsyy <\
                     this_spread) or (min_dyy < - epsyy and\
                     epsyy < max_dyy)):
                  break
               k_ind += 1
            if (num_points <= k_ind):
               if (nx_spr < 0 or this_spread < nx_spr - epsyy\
                     or (this_spread <= nx_spr + epsyy and\
                     math.fabs(nx_a) < math.fabs(slope_t))):
                  nx_a = slope_t
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
                  nx_spr = this_spread
   ret_coeff_arr_p[1] = nx_a
   ret_coeff_arr_p[0] = nx_b
   ret_coeff_arr_p[2] = nx_spr / 2.0
   return (nx_spr / 2.0)
def lf_signcrossproduct(aa_x, aa_y, bb_x, bb_y, cc_x, cc_y):
   bbaa_x = bb_x - aa_x
   bbaa_y = bb_y - aa_y
   ccaa_x = cc_x - aa_x
   ccaa_y = cc_y - aa_y
   cr = bbaa_x * ccaa_y - ccaa_x * bbaa_y
   return (cr)
def fitx_minmax(num_points, pt_arr_pc, ret_arr_p):
   xxp_arr = []
   yyp_arr = []
   chi_arr = []
   for nzzn in range(len(xxp_arr), int(num_points)):
      xxp_arr.append(0)
   for nzzn in range(len(yyp_arr), int(num_points)):
      yyp_arr.append(0)
   for nzzn in range(len(chi_arr), int(num_points)):
      chi_arr.append(0)
   epsxx = 0.0
   epsyy = 0.0
   lmbm_ind = 0
   for j_ind in range(0, num_points + 0, 1):
      xxp_arr[j_ind] = pt_arr_pc[2 * j_ind]
      yyp_arr[j_ind] = pt_arr_pc[2 * j_ind + 1]
      if (epsxx < math.fabs(xxp_arr[j_ind])):
         epsxx = math.fabs(xxp_arr[j_ind])
      if (epsyy < math.fabs(yyp_arr[j_ind])):
         epsyy = math.fabs(yyp_arr[j_ind])
      if (xxp_arr[j_ind] <= xxp_arr[lmbm_ind]):
         if (xxp_arr[j_ind] < xxp_arr[lmbm_ind] or\
               yyp_arr[j_ind] <= yyp_arr[lmbm_ind]):
            lmbm_ind = j_ind
   nx_spr = -1
   nx_a = 0
   nx_b = 0
   epsxx *= 16 * DBLEPS
   epsyy *= 16 * DBLEPS
   poh_ind = lmbm_ind
   chisize = 0
   while True:
      chi_arr[chisize] = poh_ind
      e_ind = 0
      for j_ind in range(0, num_points + 0, 1):
         if (e_ind == poh_ind):
            e_ind = j_ind
         else:
            t_ind = chi_arr[chisize]
            crx = lf_signcrossproduct(xxp_arr[j_ind],\
                  yyp_arr[j_ind], xxp_arr[t_ind],\
                  yyp_arr[t_ind], xxp_arr[e_ind], yyp_arr[e_ind])
            if (crx < 0):
               e_ind = j_ind
      chisize += 1
      if (num_points < chisize):
         sys.stderr.write("fitx_minmax:" + "OOPS")
         sys.exit(1)
      poh_ind = e_ind
      if (e_ind == chi_arr[0]):
         break# loop AWAIT
   chi_arr[chisize] = chi_arr[0]
   chisize += 1
   for hh in range(0, chisize - 1, 1):
      i_ind = chi_arr[hh]
      j_ind = chi_arr[hh + 1]
      dxx = xxp_arr[i_ind] - xxp_arr[j_ind]
      if (epsxx < math.fabs(dxx)):
         slope_t = (yyp_arr[i_ind] - yyp_arr[j_ind]) / dxx
         intercept_t = yyp_arr[i_ind] - slope_t * xxp_arr[i_ind]
         dyy = yyp_arr[0] - (slope_t * xxp_arr[0] + intercept_t)
         min_dyy = dyy
         max_dyy = dyy
         this_spread = 0
         k_ind = 1
         while (k_ind < num_points):
            pty = (slope_t * xxp_arr[k_ind] + intercept_t)
            dyy = yyp_arr[k_ind] - pty
            if (dyy < min_dyy):
               min_dyy = dyy
            if (max_dyy < dyy):
               max_dyy = dyy
            this_spread = max_dyy - min_dyy
            if ((0 < nx_spr and nx_spr + epsyy < this_spread)\
                  or (min_dyy < - epsyy and epsyy < max_dyy)):
               break
            k_ind += 1
         if (num_points <= k_ind):
            if (nx_spr < 0 or this_spread < nx_spr - epsyy or\
                  (this_spread <= nx_spr + epsyy and\
                  math.fabs(nx_a) < math.fabs(slope_t))):
               nx_a = slope_t
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
               nx_spr = this_spread
   ret_arr_p[0] = nx_b
   ret_arr_p[1] = nx_a
   ret_arr_p[2] = nx_spr / 2.0
   return (ret_arr_p[2])
def fit_minmax0(num_points, pts_arr_pc, ret_arr_p):
   xxp_arr = []
   yyp_arr = []
   for nzzn in range(len(xxp_arr), int(num_points)):
      xxp_arr.append(0)
   for nzzn in range(len(yyp_arr), int(num_points)):
      yyp_arr.append(0)
   epsxx = 0.0
   epsyy = 0.0
   for j_ind in range(0, num_points + 0, 1):
      xxp_arr[j_ind] = pts_arr_pc[2 * j_ind]
      yyp_arr[j_ind] = pts_arr_pc[2 * j_ind + 1]
      if (epsxx < math.fabs(xxp_arr[j_ind])):
         epsxx = math.fabs(xxp_arr[j_ind])
      if (epsyy < math.fabs(yyp_arr[j_ind])):
         epsyy = math.fabs(yyp_arr[j_ind])
   minmaxz_spread = -1
   minmaxz_slope = 0
   minmaxz_intercept = yyp_arr[0]
   epsxx *= 8 * DBLEPS
   epsyy *= 8 * DBLEPS
   for i_ind in range(2, num_points + 0, 1):
      for j_ind in range(2, i_ind + 0, 1):
         midxx = (xxp_arr[i_ind] + xxp_arr[j_ind]) / 2.0
         midyy = (yyp_arr[i_ind] + yyp_arr[j_ind]) / 2.0
         dxx = xxp_arr[0] - midxx
         if (epsxx < math.fabs(dxx)):
            slope_t = (yyp_arr[0] - midyy) / dxx
            intercept_t = yyp_arr[0] - slope_t * xxp_arr[0]
            min_dyy = 0
            max_dyy = 0
            for k_ind in range(0, num_points + 0, 1):
               pty = slope_t * xxp_arr[k_ind] + intercept_t
               dyy = yyp_arr[k_ind] - pty
               if (dyy < min_dyy):
                  min_dyy = dyy
               if (max_dyy < dyy):
                  max_dyy = dyy
               this_spread = max_dyy - min_dyy
               if (0 < minmaxz_spread and minmaxz_spread +\
                     epsyy < this_spread):
                  break
            if (minmaxz_spread < 0 or this_spread <\
                  minmaxz_spread - epsyy):
               minmaxz_slope = slope_t
               minmaxz_intercept = intercept_t
               minmaxz_spread = this_spread
   if (0 <= minmaxz_spread):
      ret_arr_p[1] = minmaxz_slope
      ret_arr_p[0] = minmaxz_intercept
      ret_arr_p[2] = minmaxz_spread / 2.0
   return (minmaxz_spread / 2.0)
def fit_ls(num_points, pts_arr_pc, ret_arr_p):
   mean_xx = 0.0
   ssq_xx = 0.0
   mean_yy = 0.0
   ssq_yy = 0.0
   covariance_xy = 0.0
   for i_ind in range(0, num_points + 0, 1):
      xx = pts_arr_pc[2 * i_ind]
      dxx = xx - mean_xx
      mean_xx += dxx / (i_ind + 1)
      ssq_xx += dxx * (xx - mean_xx)
      yy = pts_arr_pc[2 * i_ind + 1]
      dyy = yy - mean_yy
      mean_yy += dyy / (i_ind + 1)
      ssq_yy += dyy * (yy - mean_yy)
      covariance_xy += dxx * dyy * i_ind / (i_ind + 1.0)
   slope = covariance_xy / ssq_xx
   ret_arr_p[1] = slope
   ret_arr_p[0] = mean_yy - slope * mean_xx
   ret_arr_p[2] = covariance_xy / math.sqrt(ssq_xx * ssq_yy)
   ret_arr_p[3] = math.sqrt((ssq_yy - slope * covariance_xy)\
         / (num_points - 2))
   return (ret_arr_p[2])
def fit_ls0(num_points, pts_arr_pc, ret_lsz_arr_p):
   xxsum = 0.0
   xysum = 0.0
   for i_ind in range(1, num_points + 0, 1):
      j_ind = 2 * i_ind
      dxx = (pts_arr_pc[j_ind] - pts_arr_pc[0])
      xxsum += dxx * dxx
      xysum += dxx * (pts_arr_pc[j_ind + 1] - pts_arr_pc[1])
   slope = xysum / xxsum
   ret_lsz_arr_p[1] = slope
   ret_lsz_arr_p[0] = (pts_arr_pc[1] - slope * pts_arr_pc[0])
   return (slope)
def sqrt__1(xx):
   if (xx <= 0.0):
      yy_curr = 0
   else:
      power_of_two = 1.0
      zz = xx
      while (4.0 <= zz):
         zz /= 4
         power_of_two *= 2.0
      while (zz < 1.0):
         zz *= 4
         power_of_two /= 2.0
      yy_curr = (0.546382637992462 + zz * (0.502513025246083\
            + zz * (-0.0353026277858345)))
      while True:
         yy_prev = yy_curr
         yy_curr = (yy_curr + zz / yy_curr) / 2.0
         if (iseq(yy_prev, yy_curr)):
            break# loop AWAIT
      yy_curr *= power_of_two
   return (yy_curr)
def sqrt__2(xx):
   if (xx <= 0.0):
      scvx_xx = 0.0
   else:
      if (1 < xx):
         ini = xx / 2.0
      else:
         ini = 2.0 * xx
      scvx_dx = ini / 10.0
      scvx_xx = ini
      scvx_yy = xx - scvx_xx * scvx_xx
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = xx - scvx_xx * scvx_xx
         scvx_dy = (scvx_yy - scvx_yp)
         if (iszero(scvx_dy)):
            break
         scvx_dx *= - scvx_yy / scvx_dy
   return (scvx_xx)
def sqrt__3(yy):
   if (yy <= 0.0):
      nrvx_xx = 0.0
   else:
      if (1 < yy):
         ini = yy / 2.0
      else:
         ini = 2.0 * yy
      nrvx_xx = ini
      for nrvx_ii in range(0, 21, 1):
         nrvx_xp = nrvx_xx
         nrvx_dy = 2 * nrvx_xx
         if (iszero(nrvx_dy)):
            break
         nrvx_yy = nrvx_xx * nrvx_xx - yy
         nrvx_xx -= nrvx_yy / nrvx_dy
         if (iseq(nrvx_xp, nrvx_xx)):
            break
   return (nrvx_xx)
def nthroot__1(xx, kk):
   if (xx <= 0.0):
      yy_curr = 0
   else:
      yy_curr = xx / 2.0
      while True:
         yy_prev = yy_curr
         pp = yy_curr
         for ii in range(2, kk + 0, 1):
            pp *= yy_curr
         yy_curr = (yy_curr * (kk - 1) + xx / pp) / kk
         if (iseq(yy_prev, yy_curr)):
            break# loop AWAIT
   return (yy_curr)
LC_EPS = DBLEPS / 16.0
def cossin_ev(init_ii, xx_rad, addone_mult):
   if (iszero(xx_rad)):
      trig_sum = 0.0
   else:
      xr_rad = fmods(xx_rad, TAU)
      xr_sqr = -xr_rad * xr_rad
      val = 1
      ii = init_ii
      while (LC_EPS < math.fabs(val)):
         ii += 2
         val *= xr_sqr / (ii * (ii - 1))
      trig_sum = 1.0 / (ii * (ii + 1.0))
      while (1 < ii):
         trig_sum += 1.0
         trig_sum *= xr_sqr / (ii * (ii - 1))
         ii -= 2
      if (addone_mult):
         trig_sum += 1.0
         trig_sum *= xr_rad
   return (trig_sum)
def cos__1(xx_rad):
   return (cossin_ev(0, xx_rad, False) + 1.0)
def cosm1__1(xx_rad):
   return (cossin_ev(0, xx_rad, False))
def sin__1(xx_rad):
   return (cossin_ev(1, xx_rad, True))
def sinc__1(xx_rad):
   if (iszero(xx_rad)):
      retvalu = 1.0
   else:
      if (TAU / 2 < math.fabs(xx_rad)):
         retvalu = cossin_ev(1, xx_rad, True)
         retvalu /= xx_rad
      else:
         retvalu = cossin_ev(1, xx_rad, False) + 1.0
   return (retvalu)
def exp__1(xx):
   if (xx < 0):
      axx = -xx
   else:
      axx = xx
   squarings = 0
   while (1.0 < axx):
      axx /= 2.0
      squarings += 1
   val = 1.0
   ii = 1
   while (DBLEPS / 10.0 < val):
      ii += 1
      val *= axx / ii
   exp_sum = 1.0 / (ii + 1.0)
   while (0 < ii):
      exp_sum = 1.0 + axx * (exp_sum / ii)
      ii -= 1
   if (xx < 0.0):
      retvalu = 1.0 / exp_sum
   else:
      retvalu = exp_sum
   while (0 < squarings):
      retvalu *= retvalu
      squarings -= 1
   return (retvalu)
def exp__2(xx):
   if (xx < 0):
      axx = -xx
   else:
      axx = xx
   squarings = 0
   while (1 < axx):
      axx /= 2.0
      squarings += 1
   val = 1.0
   ii = 1
   while (DBLEPS / 4.0 < val):
      ii += 1
      val *= axx / ii
   expmo_sum = 0
   while (0 < ii):
      expmo_sum = axx * (expmo_sum + 1.0) / ii
      ii -= 1
   for ii in range(1, squarings + 1, 1):
      expmo_sum *= (2.0 + expmo_sum)
   if (xx < 0):
      retvalu = 1.0 / (expmo_sum + 1.0)
   else:
      retvalu = expmo_sum + 1.0
   return (retvalu)
def ln__1(xx):
   logstep = 0
   yy_curr = 8.0 / xx
   tmp = (DBLEPS)
   while (tmp < yy_curr):
      logstep -= 16
      yy_curr /= 65536.0
   retvalu = (PI / agmean(2.0, yy_curr) + logstep * LNTWO)
   return (retvalu)
def ln__2(xx):
   yy_curr = xx
   ptwo = 0.0
   while (SQRTTWO < yy_curr):
      ptwo += 1
      yy_curr /= 2.0
   while (yy_curr < 1.0 / SQRTTWO):
      ptwo -= 1
      yy_curr *= 2.0
   mant = (yy_curr - 1.0) / (yy_curr + 1.0)
   sum_curr = 2.0 * mant
   term = sum_curr
   mant *= mant
   nn = 3
   while True:
      term *= mant
      sum_prev = sum_curr
      sum_curr += term / nn
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 2
   return (ptwo * LNTWO + sum_curr)
def euler__1():
   twon = 1.0
   exptwon = E
   nn = 0
   while True:
      twon *= 2.0
      exptwon *= exptwon
      if (0.1 < DBLEPS * exptwon):
         break# loop AWAIT
      nn += 1
   term = 1.0 / twon
   subsum = 0.0
   sum_curr = 0.0
   mm = 1
   while True:
      subsum += 1.0 / mm
      term *= twon / mm
      sum_prev = sum_curr
      sum_curr += term * subsum
      if (iseq(sum_prev, sum_curr)):
         break# loop AWAIT
      mm += 1
   return (twon * sum_curr / exptwon - (nn + 1) * LNTWO)
def sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad):
   c_lata = math.cos(lata_rad)
   c_latb = math.cos(latb_rad)
   s_lata = math.sin(lata_rad)
   s_latb = math.sin(latb_rad)
   s_lond = math.sin(lonb_rad - lona_rad)
   c_lond = math.cos(lonb_rad - lona_rad)
   xc = c_lata * s_latb - s_lata * c_latb * c_lond
   xd = c_latb * s_lond
   xe = s_lata * s_latb + c_lata * c_latb * c_lond
   retvalu = math.atan2(hypot(xd, xc), xe)
   return (retvalu)
def great_circle_distance(lata_rad, lona_rad, latb_rad,\
      lonb_rad):
   return (sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad))
def sphere_distance(lata_rad, lona_rad, latb_rad, lonb_rad,\
      ret_dirs_arr_p):
   c_lata = math.cos(lata_rad)
   c_latb = math.cos(latb_rad)
   s_lata = math.sin(lata_rad)
   s_latb = math.sin(latb_rad)
   s_lond = math.sin(lonb_rad - lona_rad)
   c_lond = math.cos(lonb_rad - lona_rad)
   xc = c_lata * s_latb - s_lata * c_latb * c_lond
   xd = c_latb * s_lond
   ret_dirs_arr_p[0] = math.atan2(xd, xc)
   xe = s_lata * s_latb + c_lata * c_latb * c_lond
   dist = math.atan2(hypot(xd, xc), xe)
   xc = c_latb * s_lata - s_latb * c_lata * c_lond
   xd = c_lata * s_lond
   ret_dirs_arr_p[1] = -math.atan2(xd, xc)
   return (dist)
def lf_ka(usq):
   hyp = math.sqrt(1.0 + usq)
   return ((hyp - 1.0) / (hyp + 1.0))
def lf_cap_a(usq):
   ka = lf_ka(usq)
   return ((1.0 + square(ka / 2.0)) / (1.0 - ka))
def lf_cap_b(usq):
   ka = lf_ka(usq)
   return (ka * (1.0 - 3.0 * square(ka) / 8.0))
def ellipsoid_distance(flat, lata_rad, lona_rad, latb_rad,\
      lonb_rad, ret_dirs_arr_p):
   iflat = 1.0 - flat
   cap_ua = math.atan2(iflat * math.sin(lata_rad),\
         math.cos(lata_rad))
   cap_ub = math.atan2(iflat * math.sin(latb_rad),\
         math.cos(latb_rad))
   lon_diff = lonb_rad - lona_rad
   xx_curr = lon_diff
   c_cap_ua = math.cos(cap_ua)
   c_cap_ub = math.cos(cap_ub)
   s_cap_ua = math.sin(cap_ua)
   s_cap_ub = math.sin(cap_ub)
   ii = 0
   while True:
      s_xx = math.sin(xx_curr)
      c_xx = math.cos(xx_curr)
      s_sig = hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub -\
            s_cap_ua * c_cap_ub * c_xx)
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx
      sig = math.atan2(s_sig, c_sig)
      s_alpha = c_cap_ua * c_cap_ub * s_xx / s_sig
      c_alpha_sq = 1.0 - square(s_alpha)
      cbsigm = c_sig - divi(2.0 * s_cap_ua * s_cap_ub,\
            c_alpha_sq, 0)
      cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat *\
            (4.0 - 3.0 * c_alpha_sq)))
      xx_prev = xx_curr
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_alpha *\
            (sig + cap_c * s_sig * (cbsigm + cap_c * c_sig *\
            (2.0 * square(cbsigm) - 1.0))))
      if (10 < ii and iseq(math.fabs(xx_prev + xx_curr), TAU)):
         xx_curr = TAU / 2.0
         break
      if (math.fabs(xx_curr - xx_prev) < 1.0E-12):
         break# loop AWAIT
      ii += 1
   usq = c_alpha_sq * (1.0 / square(iflat) - 1.0)
   cap_a = iflat * lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig\
         * (-1.0 + 2.0 * square(cbsigm)) - (1.0 / 6.0) *\
         cap_b * cbsigm * (3.0 + 4.0 * square(s_sig)) * (-3.0\
         + 4.0 * square(cbsigm))))
   dist = cap_a * (sig - deltasig)
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx
   xd = c_cap_ub * s_xx
   ret_dirs_arr_p[0] = math.atan2(xd, xc)
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx
   xd = c_cap_ua * s_xx
   ret_dirs_arr_p[1] = -math.atan2(xd, xc)
   return (dist)
def ellipsoid_destination(flat, lata_rad, lona_rad,\
      heading_rad, distance, ret_loc_arr_p):
   iflat = 1.0 - flat
   aa = 1.0
   bb = iflat * aa
   cap_ua = math.atan2(iflat * math.sin(lata_rad),\
         math.cos(lata_rad))
   c_cap_ua = math.cos(cap_ua)
   s_cap_ua = math.sin(cap_ua)
   c_heading = math.cos(heading_rad)
   s_heading = math.sin(heading_rad)
   sig_b_rad = math.atan2(s_cap_ua, c_cap_ua * c_heading)
   s_alpha = math.cos(cap_ua) * math.sin(heading_rad)
   c_alpha_sq = 1.0 - square(s_alpha)
   usq = c_alpha_sq * (square(aa / bb) - 1.0)
   cap_a = lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   sig_rad_delta = 0.0
   sig_rad = -10.0
   while True:
      sig_rad_prev = sig_rad
      sig_rad = distance / (bb * cap_a) + sig_rad_delta
      s_sig = math.sin(sig_rad)
      c_sig = math.cos(sig_rad)
      twosigm_rad = 2.0 * sig_b_rad + sig_rad
      c_twosigm = math.cos(twosigm_rad)
      c_twosigm_sq = square(c_twosigm)
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 *\
            cap_b * (c_sig * (2.0 * c_twosigm_sq - 1.0) -\
            (cap_b / 6.0) * c_twosigm * (4.0 * square(s_sig)\
            - 3.0) * (4.0 * c_twosigm_sq - 3.0)))
      if (iseq(sig_rad, sig_rad_prev)):
         break# loop AWAIT
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading
   xc = iflat * hypot(s_alpha, s_cap_ua * s_sig - c_cap_ua *\
         c_sig * c_heading)
   ret_loc_arr_p[0] = math.atan2(xd, xc)
   xd = s_sig * s_heading
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading
   lamda = math.atan2(xd, xc)
   cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat * (4.0 -\
         3.0 * c_alpha_sq)))
   cap_l = lamda - (1.0 - cap_c) * flat * s_alpha * (sig_rad\
         + cap_c * s_sig * (c_twosigm + cap_c * c_sig * (2.0\
         * c_twosigm_sq - 1.0)))
   ret_loc_arr_p[1] = cap_l + lona_rad
   alpha_rad = fmodu(PI + math.atan2(s_alpha, c_cap_ua *\
         c_sig * c_heading - s_cap_ua * s_sig), TAU)
   return (alpha_rad)
def shc_shftpoles2steps(shft, poles):
   step_arr = [0 for ii in range(20)]
   if (poles <= 0):
      retvalu = 0.0
   elif (shft < 0):
      retvalu = 0.0
   elif (16 < shft):
      retvalu = 1000000000.0
   elif (poles == 1):
      step_arr[0] = +1.00000000E+0
      step_arr[1] = +8.75664018E+0
      step_arr[2] = +2.174418277E+1
      step_arr[3] = +4.709615109E+1
      step_arr[4] = +9.755325605E+1
      step_arr[5] = +1.983575685E+2
      step_arr[6] = +3.9991425188E+2
      step_arr[7] = +8.0300236937E+2
      step_arr[8] = +1.60916613901E+3
      step_arr[9] = +3.22148750069E+3
      step_arr[10] = +6.44612712926E+3
      step_arr[11] = +1.289540487229E+4
      step_arr[12] = +2.579395961911E+4
      step_arr[13] = +5.159106828928E+4
      step_arr[14] = +1.0318528839545E+5
      step_arr[15] = +2.0637372529029E+5
      step_arr[16] = +4.1275053067337E+5
      retvalu = step_arr[shft]
   elif (poles == 2):
      step_arr[0] = +1.000000000E+0
      step_arr[1] = +1.372295755E+1
      step_arr[2] = +3.383938971E+1
      step_arr[3] = +7.318281398E+1
      step_arr[4] = +1.5153838699E+2
      step_arr[5] = +3.0810336456E+2
      step_arr[6] = +6.2116437416E+2
      step_arr[7] = +1.24725288016E+3
      step_arr[8] = +2.49941335432E+3
      step_arr[9] = +5.00372613671E+3
      step_arr[10] = +1.001234749878E+4
      step_arr[11] = +2.002958840334E+4
      step_arr[12] = +4.006406905172E+4
      step_arr[13] = +8.013303000155E+4
      step_arr[14] = +1.6027095510986E+5
      step_arr[15] = +3.2054680443102E+5
      step_arr[16] = +6.4109851712798E+5
      retvalu = step_arr[shft]
   elif (poles == 3):
      step_arr[0] = +1.000000000E+0
      step_arr[1] = +1.737173781E+1
      step_arr[2] = +4.273609545E+1
      step_arr[3] = +9.238532150E+1
      step_arr[4] = +1.9128399554E+2
      step_arr[5] = +3.8890510497E+2
      step_arr[6] = +7.8406421045E+2
      step_arr[7] = +1.57434201644E+3
      step_arr[8] = +3.15487771808E+3
      step_arr[9] = +6.31593923478E+3
      step_arr[10] = +1.263805730898E+4
      step_arr[11] = +2.528229097067E+4
      step_arr[12] = +5.057075779500E+4
      step_arr[13] = +1.0114768912723E+5
      step_arr[14] = +2.0230154729287E+5
      step_arr[15] = +4.0460928016924E+5
      step_arr[16] = +8.0922476138170E+5
      retvalu = step_arr[shft]
   elif (poles == 4):
      step_arr[0] = +1.00000000E+0
      step_arr[1] = +2.03878236E+1
      step_arr[2] = +5.009900279E+1
      step_arr[3] = +1.0828162825E+2
      step_arr[4] = +2.2418834788E+2
      step_arr[5] = +4.5579968748E+2
      step_arr[6] = +9.189270663E+2
      step_arr[7] = +1.84513549236E+3
      step_arr[8] = +3.69752950942E+3
      step_arr[9] = +7.40230620593E+3
      step_arr[10] = +1.48118537839E+4
      step_arr[11] = +2.963094667636E+4
      step_arr[12] = +5.926913086318E+4
      step_arr[13] = +1.1854549900613E+5
      step_arr[14] = +2.3709822433702E+5
      step_arr[15] = +4.7420371217077E+5
      step_arr[16] = +9.4841452431326E+5
      retvalu = step_arr[shft]
   elif (poles == 5):
      step_arr[0] = +1.000000000E+0
      step_arr[1] = +2.301559338E+1
      step_arr[2] = +5.651862690E+1
      step_arr[3] = +1.2214337218E+2
      step_arr[4] = +2.5288215751E+2
      step_arr[5] = +5.1413464355E+2
      step_arr[6] = +1.03653347249E+3
      step_arr[7] = +2.08127953713E+3
      step_arr[8] = +4.17074621528E+3
      step_arr[9] = +8.34966697295E+3
      step_arr[10] = +1.670750214140E+4
      step_arr[11] = +3.342316957219E+4
      step_arr[12] = +6.685449836446E+4
      step_arr[13] = +1.3371716646729E+5
      step_arr[14] = +2.6744248565129E+5
      step_arr[15] = +5.3489319815476E+5
      step_arr[16] = +1.06979462735136E+6
      retvalu = step_arr[shft]
   else:
      retvalu = 0.0
   return (retvalu)
def shc_steps2shft(steps):
   return (lg(steps + 8.5) - 3.85514)
def shc_steps2shftinv(shft):
   return (math.pow(2.0, (shft + 3.85514)) - 8.5)
def shc_shft2steps(shft):
   return (shc_shftpoles2steps(shft, 4))
def m2k(mm):
   return (math.sqrt(mm))
def k2m(kk):
   return (kk * kk)
def m2b(mm):
   return (1.0 / math.sqrt(1 - mm))
def b2m(bb):
   return (1.0 - 1.0 / (bb * bb))
def elliptic1(mm):
   return (PI / (2.0 * agmean(1.0, math.sqrt(1.0 - mm))))
def ellipticK(kk):
   return (elliptic1(k2m(kk)))
def elliptic1__1(mm):
   return (carlsonRF(0.0, 1.0 - mm, 1.0))
def elliptic1i(mm, circ_rad):
   mc = 1.0 - mm
   if (iszero(mm)):
      retvalu = circ_rad
   elif (iszero(mc)):
      if (PI / 2 <= math.fabs(circ_rad)):
         retvalu = DBLMAX
      else:
         retvalu = math.log(math.tan((PI / 2 + circ_rad) / 2.0))
   else:
      npihlfs = floor(circ_rad / (PI / 2))
      if (isodd(npihlfs)):
         npihlfs += 1
      lcirc_rad = circ_rad
      if (npihlfs == 0):
         kresult = 0.0
      else:
         kresult = elliptic1(mm)
         lcirc_rad -= npihlfs * PI / 2
      if (lcirc_rad < 0.0):
         lcirc_rad = -lcirc_rad
         signof = -1
      else:
         signof = 1
      tt = math.tan(lcirc_rad)
      ggn = math.sqrt(mc)
      skip_flag = False
      if (10.0 < math.fabs(tt)):
         ee = 1.0 / (ggn * tt)
         if (math.fabs(ee) < 10.0):
            if (npihlfs == 0):
               kresult = elliptic1(mm)
            temp = kresult - elliptic1i(mm, math.atan2(ee, 1))
            skip_flag = True
      if (not skip_flag):
         aan = 1.0
         ii = 1
         modd = 0
         while True:
            temp = ggn / aan
            lcirc_rad += math.atan2(tt * temp, 1) + modd * PI
            modd = floor(lcirc_rad / PI + 0.5)
            tt *= (1.0 + temp) / (1.0 - temp * tt * tt)
            cc = (aan - ggn) / 2.0
            temp = math.sqrt(aan * ggn)
            aan = (aan + ggn) / 2.0
            ggn = temp
            ii += ii
            if (math.fabs(cc / aan) <= DBLEPS):
               break# loop AWAIT
         temp = (math.atan2(tt, 1.0) + modd * PI) / (ii * aan)
      if (signof < 0):
         temp = -temp
      retvalu = temp + npihlfs * kresult
   return (retvalu)
def ellipticF(kk, circ_rad):
   return (elliptic1i(k2m(kk), circ_rad))
def elliptic1i__1(mm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic1(mm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2
   sinphi = math.sin(lcirc_rad)
   return (sinphi * carlsonRF(square(math.cos(lcirc_rad)), 1\
         - mm * square(sinphi), 1) + kresult)
def elliptic2(mm):
   amm = math.fabs(mm)
   if (amm < 1.0):
      twon = 0.5
      aan = 1.0
      ggn = math.sqrt(1 - mm)
      sum = 1.0 - mm / 2.0
      ii = 0
      while True:
         twon *= 2.0
         tn = aan
         aan = (aan + ggn) / 2.0
         ggn = math.sqrt(tn * ggn)
         sum_prev = sum
         sum -= twon * (aan * aan - ggn * ggn)
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = PI * sum / (2.0 * aan)
   else:
      retvalu = 1.0
   return (retvalu)
def ellipticE(kk):
   return (elliptic2(k2m(kk)))
def elliptic2__1(mm):
   return (carlsonRF(0, 1 - mm, 1) - mm * carlsonRD(0, 1 - mm\
         , 1) / 3.0)
def elliptic2i(mm, circ_rad):
   if (iszero(mm)):
      retvalu = circ_rad
   else:
      mmc = 1.0 - mm
      eliptwomm = elliptic2(mm)
      npihalfs = floor(circ_rad / (PI / 2))
      if (isodd(npihalfs)):
         npihalfs += 1
      lcirc_rad = circ_rad - npihalfs * PI / 2
      if (iszero(mmc)):
         retvalu = math.sin(lcirc_rad) + npihalfs * eliptwomm
      else:
         if (lcirc_rad < 0.0):
            lcirc_rad = -lcirc_rad
            signof = -1
         else:
            signof = 1
         tt = math.tan(lcirc_rad)
         ggn = math.sqrt(mmc)
         if (math.fabs(tt) < - 1):
            errsum = 1.0 / (ggn * tt)
         else:
            errsum = 0.0
         if (0.0 < math.fabs(errsum) and math.fabs(errsum) <\
               1000.0):
            errsum = math.atan2(1.0, ggn * tt)
            temp = eliptwomm - elliptic2i(mm, errsum) + mm *\
                  math.sin(circ_rad) * math.sin(errsum)
         else:
            cc = math.sqrt(mm)
            aan = 1.0
            ii = 1
            modd = 0
            while (DBLEPS < math.fabs(cc / aan)):
               temp = ggn / aan
               lcirc_rad += math.atan2(tt * temp, 1) + modd * PI
               modd = floor(lcirc_rad / PI + 0.5)
               tt *= (1.0 + temp) / (1.0 - temp * tt * tt)
               cc = (aan - ggn) / 2.0
               temp = math.sqrt(aan * ggn)
               aan = (aan + ggn) / 2.0
               ggn = temp
               ii += ii
               errsum += cc * math.sin(lcirc_rad)
            temp = eliptwomm * (math.atan2(tt, 1) + modd *\
                  PI) / (ii * aan * elliptic1(mm)) + errsum
         if (signof < 0):
            temp = -temp
         retvalu = temp + npihalfs * eliptwomm
   return (retvalu)
def ellipticEi(kk, circ_rad):
   return (elliptic2i(k2m(kk), circ_rad))
def elliptic2i__1(mm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic2(mm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2
   sinphi = math.sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = square(math.cos(lcirc_rad))
   argb = 1 - mm * sinphisq
   return (sinphi * carlsonRF(cosphisq, argb, 1) - mm *\
         sinphicu * carlsonRD(cosphisq, argb, 1) / 3.0 + kresult)
def elliptic3(nn, mm):
   amm = math.fabs(mm)
   if (amm < 1.0):
      aan = 1.0
      ggn = math.sqrt(1.0 - mm)
      if (1.0 <= math.fabs(nn)):
         ppn = math.sqrt(1.0 - mm / nn)
      else:
         ppn = math.sqrt(1.0 - nn)
      qqn = 1.0
      sum = qqn
      ii = 0
      while True:
         tpp = ppn * ppn
         tag = aan * ggn
         een = (tpp - tag) / (tpp + tag)
         ppn = (tpp + tag) / (2.0 * ppn)
         qqn = qqn * een / 2.0
         aan = (aan + ggn) / 2.0
         ggn = math.sqrt(tag)
         sum_prev = sum
         sum += qqn
         if (iseq(sum, sum_prev) and iseq(aan, ggn)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      if (1.0 <= math.fabs(nn)):
         tn = mm * sum / (mm - nn)
      else:
         tn = 2.0 + sum * nn / (1.0 - nn)
      retvalu = PI * tn / (4.0 * aan)
   else:
      retvalu = 1.0
   return (retvalu)
def ellipticP(kk, circ_rad):
   return (elliptic3(kk, circ_rad))
def elliptic3i(nn, mm, circ_rad):
   sp = math.sin(circ_rad)
   cp = math.cos(circ_rad)
   spq = sp * sp
   cpq = cp * cp
   spm = 1 - mm * spq
   spn = 1 - nn * spq
   return (sp * (carlsonRF(cpq, spm, 1) + spq * nn *\
         carlsonRJ(cpq, spm, 1, spn) / 3))
def ellipticPi(nn, kk, circ_rad):
   return (elliptic3i(nn, k2m(kk), circ_rad))
def elliptic3__1(nn, mm):
   return (carlsonRF(0, 1 - mm, 1) + nn * carlsonRJ(0, 1 - mm\
         , 1, 1 - nn) / 3.0)
def elliptic3i__1(nn, mm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic3(nn, mm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2
   sinphi = math.sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = square(math.cos(lcirc_rad))
   argb = 1 - mm * sinphisq
   return (sinphi * carlsonRF(cosphisq, argb, 1) + (nn / 3.0)\
         * sinphicu * carlsonRJ(cosphisq, argb, 1, 1 - nn *\
         sinphisq) + kresult)
def jacobiphi(mm, elli_rad):
   aa_arr = [0 for ii in range(20)]
   cc_arr = [0 for ii in range(20)]
   if (mm <= 0.0):
      circ_rad = taninv(sn(mm, elli_rad) / cn(mm, elli_rad))
   elif (mm < 1.0):
      bb = math.sqrt(1.0 - mm)
      aa_arr[0] = 1.0
      cc_arr[0] = math.sqrt(mm)
      twon = 1.0
      ii = 0
      while (DBLEPS < math.fabs(cc_arr[ii] / aa_arr[ii])):
         if (19 - 1 < ii):
            break
         ai = aa_arr[ii]
         ii += 1
         cc_arr[ii] = (ai - bb) / 2.0
         geo_mean = math.sqrt(ai * bb)
         aa_arr[ii] = (ai + bb) / 2.0
         bb = geo_mean
         twon *= 2.0
      circ_rad = twon * aa_arr[ii] * elli_rad
      while (0 < ii):
         bb = cc_arr[ii] * math.sin(circ_rad) / aa_arr[ii]
         circ_rad = (sininv(bb) + circ_rad) / 2.0
         ii -= 1
   else:
      circ_rad = taninv(sn(mm, elli_rad) / cn(mm, elli_rad))
   return (circ_rad)
def ell2cir(mm, elli_rad):
   return (jacobiphi(mm, elli_rad))
def cir2ell(mm, circ_rad):
   return (elliptic1i(mm, circ_rad))
def jacobicir(mm):
   return (4.0 * elliptic2(mm) / math.sqrt(1.0 - mm))
def dn(mm, elli_rad):
   if (mm < 0.0):
      retvalu = -dn(-mm, elli_rad) + 2.0
   elif (mm < 1E-9):
      snx = math.sin(elli_rad)
      retvalu = 1.0 - mm * snx * snx / 2.0
   elif (mm < 1.0 - 1E-9):
      snx = math.sin(jacobiphi(mm, elli_rad))
      retvalu = sqrtx(1.0 - mm * snx * snx)
   elif (mm <= 1.0):
      ai = (1.0 - mm) / 4.0
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      retvalu = 1.0 / csx + ai * (csx * snx + elli_rad)
   else:
      kk = m2k(mm)
      retvalu = cn(1.0 / mm, elli_rad * kk)
   return (retvalu)
def cn(mm, elli_rad):
   if (mm < 0.0):
      retvalu = -cn(-mm, elli_rad) + 2 * math.cos(elli_rad)
   elif (mm < 1E-9):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   elif (mm < 1.0 - 1E-9):
      retvalu = math.cos(jacobiphi(mm, elli_rad))
   elif (mm <= 1.0):
      ai = (1.0 - mm) / 4.0
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
   else:
      kk = m2k(mm)
      retvalu = dn(1.0 / mm, elli_rad * kk)
   return (retvalu)
def sn(mm, elli_rad):
   if (mm < 0.0):
      retvalu = -sn(1.0 - mm, elli_rad) + math.sin(elli_rad)\
            + tanh(elli_rad)
   elif (mm < 1E-9):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   elif (mm < 1.0 - 1E-9):
      retvalu = math.sin(jacobiphi(mm, elli_rad))
   elif (mm <= 1.0):
      ai = (1.0 - mm) / 4.0
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
   else:
      kk = m2k(mm)
      retvalu = sn(1.0 / mm, elli_rad * kk) / kk
   return (retvalu)
def cd(mm, elli_rad):
   return (cn(mm, elli_rad) / dn(mm, elli_rad))
def sd(mm, elli_rad):
   return (sn(mm, elli_rad) / dn(mm, elli_rad))
def nd(mm, elli_rad):
   return (1.0 / dn(mm, elli_rad))
def dc(mm, elli_rad):
   return (dn(mm, elli_rad) / cn(mm, elli_rad))
def nc(mm, elli_rad):
   return (1.0 / cn(mm, elli_rad))
def sc(mm, elli_rad):
   return (sn(mm, elli_rad) / cn(mm, elli_rad))
def ds(mm, elli_rad):
   return (dn(mm, elli_rad) / sn(mm, elli_rad))
def cs(mm, elli_rad):
   return (cn(mm, elli_rad) / sn(mm, elli_rad))
def ns(mm, elli_rad):
   return (1.0 / sn(mm, elli_rad))
def lv_ellpj(mm, elli_rad, ret_arr_p):
   junk_arr = [0 for ii in range(4)]
   if (mm < 0.0):
      snx = -sn(1.0 - mm, elli_rad) + math.sin(elli_rad) +\
            tanh(elli_rad)
      csx = -cn(-mm, elli_rad) + 2 * math.cos(elli_rad)
      ret_arr_p[0] = snx
      ret_arr_p[1] = csx
      ret_arr_p[2] = -dn(-mm, elli_rad) + 2.0
      ret_arr_p[3] = math.atan2(snx, csx)
   elif (mm < 1E-9):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      ret_arr_p[0] = snx - ai * csx
      ret_arr_p[1] = csx + ai * snx
      ret_arr_p[2] = 1.0 - mm * snx * snx / 2.0
      ret_arr_p[3] = elli_rad - ai
   elif (mm < 1.0 - 1E-9):
      circ_rad = jacobiphi(mm, elli_rad)
      snx = math.sin(circ_rad)
      ret_arr_p[0] = snx
      ret_arr_p[1] = math.cos(circ_rad)
      ret_arr_p[2] = sqrtx(1.0 - mm * snx * snx)
      ret_arr_p[3] = circ_rad
   elif (mm <= 1.0):
      ai = (1.0 - mm) / 4.0
      csx = cosh(elli_rad)
      snx = tanh(elli_rad)
      twon = csx * sinh(elli_rad)
      ret_arr_p[0] = snx + ai * (twon - elli_rad) / (csx * csx)
      ret_arr_p[3] = 2.0 * math.atan2(math.exp(elli_rad),\
            1.0) - PI / 2.0 + ai * (twon - elli_rad) / csx
      ai *= snx / csx
      ret_arr_p[1] = 1.0 / csx - ai * (twon - elli_rad)
      ret_arr_p[2] = 1.0 / csx + ai * (twon + elli_rad)
   else:
      ai = m2k(mm)
      lv_ellpj(1.0 / mm, elli_rad * ai, junk_arr)
      ret_arr_p[0] = junk_arr[0] / ai
      ret_arr_p[1] = junk_arr[2]
      ret_arr_p[2] = junk_arr[1]
      ret_arr_p[3] = junk_arr[3]
   return int(0)
def sn__1(mm, elli_rad):
   arr_arr = [0 for ii in range(4)]
   lv_ellpj(mm, elli_rad, arr_arr)
   return (arr_arr[0])
def cn__1(mm, elli_rad):
   arr_arr = [0 for ii in range(4)]
   lv_ellpj(mm, elli_rad, arr_arr)
   return (arr_arr[1])
def dn__1(mm, elli_rad):
   arr_arr = [0 for ii in range(4)]
   lv_ellpj(mm, elli_rad, arr_arr)
   return (arr_arr[2])
def nom(mm):
   return (math.exp(-PI * elliptic1(1.0 - mm) / elliptic1(mm)))
def theta1(mm, zz):
   sig = 1
   qq = nom(mm)
   sum_curr = 0
   ang = zz
   ang_inc = 2 * zz
   nn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, square(nn + 0.5)) *\
            math.sin(ang)
      ang += ang_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (2 * sum_curr)
def theta2(mm, zz):
   qq = nom(mm)
   sum_curr = 0
   ang = zz
   ang_inc = 2 * zz
   nn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, square(nn + 0.5)) * math.cos(ang)
      ang += ang_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (2 * sum_curr)
def theta3(mm, zz):
   qq = nom(mm)
   sum_curr = 0
   ang = 2 * zz
   ang_inc = ang
   nn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, nn * nn) * math.cos(ang)
      ang += ang_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (1 + 2 * sum_curr)
def theta4(mm, zz):
   sig = 1
   qq = nom(mm)
   sum_curr = 0
   ang = 2 * zz
   ang_inc = ang
   nn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, nn * nn) * math.cos(ang)
      ang += ang_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (1 + 2 * sum_curr)
def nevillethetac(mm, zz):
   km = elliptic1(mm)
   qq = math.exp(-PI * elliptic1(1.0 - mm) / km)
   sum_curr = 0
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2 * km)
   nn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, nn * nn + nn) * math.cos(cos_of)
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (sum_curr * math.sqrt(TAU * math.sqrt(qq / mm) / km))
def nevillethetad(mm, zz):
   km = elliptic1(mm)
   qq = math.exp(-PI * elliptic1(1.0 - mm) / km)
   sum_curr = 0
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   nn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, nn * nn) * math.cos(cos_of)
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return ((1 + 2 * sum_curr) * math.sqrt(TAU / km) / 2.0)
def nevillethetan(mm, zz):
   km = elliptic1(mm)
   qq = math.exp(-PI * elliptic1(1.0 - mm) / km)
   sum_curr = 0
   sig = -1
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   nn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, nn * nn) * math.cos(cos_of)
      cos_of += cos_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return ((1 + 2 * sum_curr) * math.sqrt(TAU / (km *\
         math.sqrt(1.0 - mm))) / 2.0)
def nevillethetas(mm, zz):
   km = elliptic1(mm)
   qq = math.exp(-PI * elliptic1(1.0 - mm) / km)
   sum_curr = 0
   sig = 1
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2 * km)
   nn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, nn * nn + nn) *\
            math.sin(cos_of)
      sig = -sig
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      nn += 1
   return (sum_curr * math.sqrt(TAU * math.sqrt(qq / (mm * (1\
         - mm))) / km))
def ellipsearea(aa, bb):
   return (PI * aa * bb)
def ellipseecc(aa, bb):
   rati = ratio(aa, bb)
   return (math.sqrt(1.0 - rati * rati))
def ellipsem(aa, bb):
   rati = ratio(aa, bb)
   return (1.0 - rati * rati)
def ellipseflatness(aa, bb):
   return (1.0 - ratio(aa, bb))
def flat2ecc(flt):
   return (math.sqrt(flt * (2.0 - flt)))
def ecc2flat(ecc):
   return (1.0 - math.sqrt(1.0 - ecc * ecc))
def ellipsecir__1(aa, bb):
   if (aa < bb):
      major_axis = bb
      minor_axis = aa
   else:
      major_axis = aa
      minor_axis = bb
   rati = minor_axis / major_axis
   return (4.0 * major_axis * elliptic2(1.0 - rati * rati))
def ellipsecir(aa, bb):
   if (aa < bb):
      xx = bb
      yy = aa
   else:
      xx = aa
      yy = bb
   if (yy <= math.sqrt(DBLEPS) * xx):
      retvalu = 4.0 * xx
   else:
      suma = 0.0
      mm = 1.0
      ii = 0
      while True:
         temp = (xx + yy) / 2.0
         yy = math.sqrt(xx * yy)
         xx = temp
         mm += mm
         suma += mm * square(xx - yy)
         if (iseq(xx, yy)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = PI * (square(aa + bb) - suma) / (xx + yy)
   return (retvalu)
def epdf(minvalx, maxvalx, nn, data_arr_pc, mm, ret_pdf_arr_p):
   for ii in range(0, mm + 0, 1):
      ret_pdf_arr_p[ii] = 0
   inc = 1.0 / nn
   gap_size = (maxvalx - minvalx) / (mm - 1)
   retvalu = 0
   for ii in range(0, nn + 0, 1):
      if (data_arr_pc[ii] < minvalx):
         ret_pdf_arr_p[0] += inc
      elif (data_arr_pc[ii] < maxvalx):
         indi = math.ceil((data_arr_pc[ii] - minvalx) / gap_size)
         ret_pdf_arr_p[indi] += inc
      else:
         retvalu += inc
   return (retvalu)
def ecdf(minvalx, maxvalx, nn, data_arr_pc, mm, ret_cdf_arr_p):
   epdf(minvalx, maxvalx, nn, data_arr_pc, mm, ret_cdf_arr_p)
   for ii in range(1, mm + 0, 1):
      ret_cdf_arr_p[ii] += ret_cdf_arr_p[ii - 1]
   return (ret_cdf_arr_p[mm - 1])
def epdf2cdf(nn, pdf_arr_pc, ret_cdf_arr_p):
   sumcurr = 0.0
   for ii in range(0, nn + 0, 1):
      sumcurr += pdf_arr_pc[ii]
      ret_cdf_arr_p[ii] = sumcurr
   return (ret_cdf_arr_p[nn - 1])
lv_search_target = 0
def search_check(gg):
   global lv_search_target
   if (gg < lv_search_target):
      retvalu = -1
   elif (lv_search_target < gg):
      retvalu = 1
   else:
      retvalu = 0
   return int(retvalu)
def search_search(gg):
   global lv_search_target
   lv_search_target = gg
   curr = 1
   for delta in range(0, INTMAX + 1, 1):
      result = search_check(curr)
      if (0 <= result):
         break
      curr += curr
   if (4 <= curr):
      delta = curr / 4
      while (1 <= delta):
         if (0 < result):
            curr -= delta
         elif (result < 0):
            curr += delta
         else:
            break
         result = search_check(curr)
         if (delta < 2):
            if (0 < result and 1 < curr):
               curr -= 1
            break
         delta /= 2
   return int(curr)
def blackbody(wavelength, temperk):
   if (wavelength <= 0.0 or temperk <= 0.0):
      retvalu = 0.0
   else:
      hc = PLANCK * LIGHT
      hc_kt = hc / (BOLTZMANN * temperk)
      retvalu = 2.0 * hc * LIGHT / (math.pow(wavelength, 5) *\
            (math.exp(hc_kt / wavelength) - 1))
   return (retvalu)
def blackbodymode(temperk):
   if (temperk <= 0.0):
      retvalu = 0.0
   else:
      hc_kt = PLANCK * LIGHT / (BOLTZMANN * temperk)
      retvalu = hc_kt / (5 + wp(-5 * math.exp(-5)))
   return (retvalu)
def blackbodypower(temperk):
   return (STEFAN * math.pow(temperk, 4.0))
def pendulum(len_m, ang_offset_rad, grav):
   return (TAU * math.sqrt(len_m / grav) / agmean(1,\
         math.cos(ang_offset_rad / 2.0)))
#   DDDDDDDDDDescription ----------------------- kw_description #
def kw_description():
   return( \
   "   Kw Constants: AAABATTERY AAABATTERYCHARGE AAABATTERYE" + \
   "NERGY AAABATTERYVOLTAGE AABATTERY AABATTERYCHARGE AABATT" + \
   "ERYENERGY AABATTERYVOLTAGE ACCELERATION ACRE ACTION AH A" + \
   "LPHA ALPHA_ERR ALPHA_MASS ALPHA_REC ALPHA_REC_ERR ALPHAM" + \
   "ASS ALPHAMASS_ERR AMP AMPERE AMU AMU_ERR ANGLE APERY ARC" + \
   "DEG ARCDEGREE ARCMIN ARCMINUTE ARCSEC ARCSECOND ARE AREA" + \
   " ASTRONOMICALUNIT ATM ATMOSPHERE ATMOSPHERE_ERR ATOMICMA" + \
   "SSUNIT ATOMICMASSUNIT_ERR ATTO AU AU_ERR AVOGADRO AVOGAD" + \
   "RO_ERR AVOGADRO_REC BAN BAR BARN BARREL BASEBALLMASS BAS" + \
   "EBALLRADIUS BASKETBALLMASS BASKETBALLRADIUS BEKENSTEINEN" + \
   "TROPY BEKENSTEININFORMATION BHENTROPY_AREA BHMASS3_LIFET" + \
   "IME BHMASS_RADIUS BHMASSTEMP BHRADIUS2DENSITY BIT BLUEEN" + \
   "ERGY BLUEHz BLUEWAVELENGTH BLUEWAVENUMBER BOHRRADIUS BOH" + \
   "RRADIUS_ERR BOLTZMANN BOLTZMANN_ERR BOLTZMANN_REC BTU BT" + \
   "U_IT BTU_TH CAL CAL_IT CAL_TH CALORIE CANDELA CAPACITANC" + \
   "E CARAT CARBATTERY CARBATTERYCHARGE CARBATTERYENERGY CAR" + \
   "BATTERYVOLTAGE CBATTERY CBATTERYCHARGE CBATTERYENERGY CB" + \
   "ATTERYVOLTAGE CENTI CHARGE CONDUCTANCE COULOMB COULOMBCO" + \
   "NST COULOMBCONST_ERR CUP CURRENT DALTON DALTON_ERR DAY D" + \
   "BATTERY DBATTERYCHARGE DBATTERYENERGY DBATTERYVOLTAGE DB" + \
   "LEPS DBLMAN DBLMAX DBLMAXLN DBLSIG DECA DECI DEGC DEGF D" + \
   "EGR DENSITY DEUTERON_MASS DEUTERONMASS DEUTERONMASS_ERR " + \
   "DIMEMASS DIMERADIUS DIMETHICKNESS DISTANCE DIT DOWNQUARK" + \
   "_MASS DOWNQUARKENERGY DOWNQUARKHz DOWNQUARKMASS DOWNQUAR" + \
   "KMASS_ERR DOWNQUARKWAVELENGTH dvCs_ERR dvCsENERGY dvCsHz" + \
   " dvCsHz_REC dvCsWAVELENGTH dvCsWAVENUMBER E EARTHAGE EAR" + \
   "THGRAVITYA EARTHGRAVITYB EARTHSOLARDAY EHFENERGY EHFHz E" + \
   "HFWAVELENGTH EHFWAVENUMBER EINSTEIN EINSTEIN_ERR ELECTRI" + \
   "C ELECTRIC_ERR ELECTRON_MASS ELECTRONCHARGE ELECTRONCHAR" + \
   "GE_ERR ELECTRONCHARGE_REC ELECTRONENERGY ELECTRONHz ELEC" + \
   "TRONMASS ELECTRONMASS_ERR ELECTRONMASSA ELECTRONMASSA_ER" + \
   "R ELECTRONVOLT ELECTRONWAVELENGTH ELEMENTARYCHARGE ELEME" + \
   "NTARYCHARGE_ERR ELEVATIONMAX ELEVATIONMIN ENERGY EPSILON" + \
   "0 EPSILON0_ERR ERG EULER EUVENERGY EUVHz EUVWAVELENGTH E" + \
   "UVWAVENUMBER EXA EXBI FARAD FARADAY FARADAY_ERR FEIGENBA" + \
   "UM FEMTO FINESTRUCTURE FINESTRUCTURE_ERR FINESTRUCTURE_R" + \
   "EC FINESTRUCTURE_REC_ERR FIRENERGY FIRHz FIRWAVELENGTH F" + \
   "IRWAVENUMBER FLICK FLOZ FLTEPS FLTMAN FLTMAX FLTSIG FOE " + \
   "FOOT FORCE FREQUENCY FT G G_ERR GALACTICCENTER GALLON GA" + \
   "MMAENERGY GAMMAHz GAMMAWAVELENGTH GAMMAWAVENUMBER GAS GA" + \
   "S_ERR GIANTIMPACT GIBI GIGA GOLFBALLMASS GOLFBALLRADIUS " + \
   "GRAD GRAIN GRAM GRAVITATION GRAVITATION_ERR GRAVITATIONI" + \
   "ERS GRAVITATIONNASA GRAVITY GRAVITY_ERR GREENENERGY GREE" + \
   "NHz GREENWAVELENGTH GREENWAVENUMBER GREGORIANYEAR GYEAR " + \
   "h h_ERR h_REC HART HARTLEY HBAR HBAR_ERR HECTARE HECTO H" + \
   "ELION_MASS HELIONMASS HELIONMASS_ERR HENRY HERTZ HFENERG" + \
   "Y HFHz HFWAVELENGTH HFWAVENUMBER HI HI_ERR HIENERGY HIHz" + \
   " HIWAVELENGTH HIWAVENUMBER HORSEPOWER HOUR HP HPMETRIC H" + \
   "UBBLE HUBBLE_ERR HXENERGY HXHz HXWAVELENGTH HXWAVENUMBER" + \
   " HYDROGENLINE HYDROGENLINE_ERR HYDROGENRADIUS HYDROGENRA" + \
   "DIUS_ERR INCH INDUCTANCE INHG INTMAX J2K J2KDAY JC JCENT" + \
   "URY JD JDAY JDSEC_AT_0GREGORIAN JDSEC_AT_0J2K JDSEC_AT_0" + \
   "KWT JDSEC_AT_0UET JEWISH_FIRST_MONTH JM JMILLENNIUM JOSE" + \
   "PHSON JOSEPHSON_ERR JOULE JULIANCENTURY JULIANDAY JULIAN" + \
   "MILLENNIUM JULIANYEAR JY JYEAR K_AT_0TEMPC K_AT_0TEMPF K" + \
   "_AT_0TEMPR kB kB_ERR kB_REC KCD KCD_ERR KELVIN KG KGENER" + \
   "GY KGF KGHz KGWAVELENGTH KGWAVENUMBER KIBI KILO KILOGRAM" + \
   " KPGBOUNDARY KWT LB LBF LENGTH LFENERGY LFHz LFWAVELENGT" + \
   "H LFWAVENUMBER LIFEAGE LIGHT LIGHT_ERR LIGHT_REC LIGHTYE" + \
   "AR LITER LITRE LNTEN LNTWO LUMEN LUX MACH MAGNETIC MAGNE" + \
   "TIC_ERR MAGNETICFLUX MAGNETICINDUCTION MARATHON MASS MEB" + \
   "I MEGA METER METRE MFENERGY MFHz MFWAVELENGTH MFWAVENUMB" + \
   "ER MICRO MICROWAVEENERGY MICROWAVEHz MICROWAVEWAVELENGTH" + \
   " MICROWAVEWAVENUMBER MILE MILKYWAYAGE MILKYWAYDAY MILKYW" + \
   "AYMASS MILKYWAYRADIUS MILLI MINUTE MIRENERGY MIRHz MIRWA" + \
   "VELENGTH MIRWAVENUMBER MM MMHG MOLARMASS MOLARMASS_ERR M" + \
   "OLARMASSX MOLARMASSX_ERR MOLE MONTHS_IN_YEAR MOONMONTH M" + \
   "PH MPS MPSS MU0 MU0_ERR MUON_MASS MUONENERGY MUONHz MUON" + \
   "MASS MUONMASS_ERR MUONWAVELENGTH NANO NAT NEUTRON_MASS N" + \
   "EUTRONENERGY NEUTRONHz NEUTRONMASS NEUTRONMASS_ERR NEUTR" + \
   "ONWAVELENGTH NEWTON NICKELMASS NICKELRADIUS NICKELTHICKN" + \
   "ESS NINEVOLT NINEVOLTBATTERY NINEVOLTBATTERYCHARGE NINEV" + \
   "OLTBATTERYENERGY NINEVOLTBATTERYVOLTAGE NINEVOLTCHARGE N" + \
   "INEVOLTENERGY NINEVOLTVOLTAGE NIRENERGY NIRHz NIRWAVELEN" + \
   "GTH NIRWAVENUMBER NPBOUNDARY NUVENERGY NUVHz NUVWAVELENG" + \
   "TH NUVWAVENUMBER OHM ORANGEENERGY ORANGEHz ORANGEWAVELEN" + \
   "GTH ORANGEWAVENUMBER OUNCE PA PARSEC PEBI PENNYMASS PENN" + \
   "YRADIUS PENNYTHICKNESS PETA PHI PHONEBATTERY PHONEBATTER" + \
   "YCHARGE PHONEBATTERYENERGY PHONEBATTERYVOLTAGE PI PICO P" + \
   "INGPONGBALLMASS PINGPONGBALLRADIUS PINT PLANCK PLANCK_ER" + \
   "R PLANCK_REC PLANCKBAR PLANCKBAR_ERR PLANCKCHARGE PLANCK" + \
   "ENERGY PLANCKLENGTH PLANCKMASS PLANCKTEMP PLANCKTIME POI" + \
   "NT POUND POWER PPB PPM PPQ PPT PRESSURE PROTON_MASS PROT" + \
   "ONENERGY PROTONHz PROTONMASS PROTONMASS_ERR PROTONRADIUS" + \
   " PROTONRADIUS_ERR PROTONWAVELENGTH PROXIMACENTAURI PSI P" + \
   "TRBOUNDARY QUART QUARTERMASS QUARTERRADIUS QUARTERTHICKN" + \
   "ESS RAD RADIAN REDENERGY REDHz REDWAVELENGTH REDWAVENUMB" + \
   "ER RESISTANCE RPM RPS RYDBERG RYDBERG_ERR RYDBERGENERGY " + \
   "RYDBERGHz RYDBERGWAVELENGTH RYDBERGWAVENUMBER SECOND SHA" + \
   "NNON SHFENERGY SHFHz SHFWAVELENGTH SHFWAVENUMBER SI16MAX" + \
   " SI16MIN SI32MAX SI32MIN SIEMENS SOCCERBALLMASS SOCCERBA" + \
   "LLRADIUS SOFTBALLMASS SOFTBALLRADIUS SOLARCONSTANT SOLID" + \
   "_ANGLE SPECIFICHEAT SPEED SPHERESURFACE SQDEG SQRTTWO SQ" + \
   "UAREDEGREE STANDARDATMOSPHERE STANDARDGRAVITY STEFAN STE" + \
   "FAN_ERR STERADIAN SXENERGY SXHz SXWAVELENGTH SXWAVENUMBE" + \
   "R SXXENERGY SXXHz SXXWAVELENGTH SXXWAVENUMBER TAU TAU_MA" + \
   "SS TAUENERGY TAUHz TAUMASS TAUMASS_ERR TAUWAVELENGTH TBL" + \
   "SP TEBI TEMPERATURE TENNISBALLMASS TENNISBALLRADIUS TERA" + \
   " TESLA THFENERGY THFHz THFWAVELENGTH THFWAVENUMBER TIME " + \
   "TON TONNE TORR TRITON_MASS TRITONMASS TRITONMASS_ERR TRJ" + \
   "BOUNDARY TSP TT_AT_0TAI TT_AT_0UT1 TURN UAMU UAMU_ERR UE" + \
   "T UHFENERGY UHFHz UHFWAVELENGTH UHFWAVENUMBER UI16MAX UI" + \
   "32MAX UNITGM UNIVERSEAGE UNIVERSEMASS UNIVERSERADIUS UPQ" + \
   "UARK_MASS UPQUARKENERGY UPQUARKHz UPQUARKMASS UPQUARKMAS" + \
   "S_ERR UPQUARKWAVELENGTH UVAENERGY UVAHz UVAWAVELENGTH UV" + \
   "AWAVENUMBER UVBENERGY UVBHz UVBWAVELENGTH UVBWAVENUMBER " + \
   "UVCENERGY UVCHz UVCWAVELENGTH UVCWAVENUMBER VHFENERGY VH" + \
   "FHz VHFWAVELENGTH VHFWAVENUMBER VIOLETENERGY VIOLETHz VI" + \
   "OLETWAVELENGTH VIOLETWAVENUMBER VISCOSITY VOLT VOLTAGE V" + \
   "OLUME VONKLITZING VONKLITZING_ERR WATT WEBER WEEK YARD Y" + \
   "ELLOWENERGY YELLOWGREENENERGY YELLOWGREENHz YELLOWGREENW" + \
   "AVELENGTH YELLOWGREENWAVENUMBER YELLOWHz YELLOWWAVELENGT" + \
   "H YELLOWWAVENUMBER YOBI YOCTO YOTTA ZEBI ZEPTO ZETTA" + \
   "\n" + \
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymd" + \
   "hmsinv magicnot magicset normal_rand parabola_realroots " + \
   "parabola_xaxis parabola_yextrema randd stts_new timee" + \
   "\n" + \
   "   Kw 1-ary Functions: abs agmean1 agmean1inv ahmean1 al" + \
   "mean1 amean1 aqmean1 b2m bankers bb_pdf bell bellx benfo" + \
   "rd_rand bernoulli bernoullid bernoullin bessI0 bessI1 be" + \
   "ssJ0 bessJ1 bessK0 bessK1 bessY0 bessY1 bessY1__1 bits_c" + \
   "ount bits_ls1b bits_ls1bpos bits_ms1b bits_ms1bpos bitwi" + \
   "senot blackbody_pdf blackbodymode blackbodypower cantor " + \
   "carmichael catalan cauchy_rand cbrt ceil chisqr_rand cir" + \
   "cle_get clip clockhour clockmin clocksec clockstdev cloc" + \
   "ksum cnv_dbl2si16 corr_delete corr_handlex corr_handley " + \
   "corrcorr corrslope corrstderr corry0 cos cos__1 cosd cos" + \
   "dinv cosh coshinv cosintegral cosinv cosm1 cosm1__1 cost" + \
   " costinv cot cotd cotdinv coth cothinv cotinv cott cotti" + \
   "nv csc cscd cscdinv csch cschinv cscinv csct csctinv ctz" + \
   " cu cube cuberoot date_easter date_pesach date_rosh_hash" + \
   "anah day2dhms day2dhmsinv day2hour deg2dms deg2rad deg2s" + \
   "ec deg2tur digamma digamma__1 digammainv dms2deg dms2rad" + \
   " doomsday ecc2flat Ein elliptic1 elliptic1__1 elliptic2 " + \
   "elliptic2__1 ellipticE ellipticK erf erf__1 erf__2 erf__" + \
   "3 erf__4 erfc erfcinv erfcx erfcxinv erfinv eta eulerphi" + \
   " eulerx exp exp__1 exp__2 exp_rand expintegral1 expinteg" + \
   "rali expm1 fac facinv factorial factorialdouble factoria" + \
   "linv fibo fibox fiboxinv flat2ecc floor frac fubini fusc" + \
   " g2jewish gamma_rand gau_cdf gau_pdf gau_quantile geo_ra" + \
   "nd ghmean1 ghmean1inv glmean1 gmean1 gqmean1 has_primiti" + \
   "veroot haversin heaviside heronianmean1 hlmean1 hmean1 h" + \
   "n hn__1 hour2day hqmean1 hypot1 hypot1inv id int_rand ir" + \
   "ound iseven isint isjewish8short isjewish9short isjewish" + \
   "leap isleapyear ismagic isneg isnegint isodd ispos ispos" + \
   "int ispractical isprime issquarefree iszero j2k2dow j2k2" + \
   "jd j2k2kwt j2k2uet j2k2ymdhms jacobicir jd2dow jd2j2k jd" + \
   "2kwt jd2uet jd2ymdhms jewish2g jewish2jd jewish2jdx jewi" + \
   "sh_months_in_year jewish_yearlength k2m k2tempc k2tempf " + \
   "k2tempr ks_a_cdf kwt2j2k kwt2jd kwt2uet l10 lg lgamma lg" + \
   "amma__1 lgamma__2 lgammainv lix lixinv lmean1 ln ln1p ln" + \
   "__1 ln__2 lns log log10 log2 logintegral logistic_rand l" + \
   "qmean1 lucas lucasx m2b m2k mertens minkowski mobius neg" + \
   " nom normal_cdf normal_cdf__1 normal_pdf normal_quantile" + \
   " normal_quantile__1 parabola_get parabola_roots partitio" + \
   "n partitionq pcf pfg pfl poi_rand pow10 pow2 prime0 prim" + \
   "e1 primecount primecountx primenext primenth primenth__1" + \
   " primeprev primitiveroot print_contfra print_contfrac pr" + \
   "int_contfracd print_factor print_jd264 print_num2char qm" + \
   "ean1 rad2deg rad2dms rad2dms2 rad2sec rad2tur rand_init " + \
   "randl reci reimann round rto125 rtoi rtoz sba search_che" + \
   "ck search_search sec sec2deg sec2dhms sec2rad sec2tur se" + \
   "cd secdinv sech sechinv secinv sect sectinv shc_shft2ste" + \
   "ps shc_steps2shft shc_steps2shftinv sigma0 sigma1 sigmoi" + \
   "d sigmoidinv sign sin sin__1 sinc sinc__1 sincc sincinv " + \
   "sind sindinv sinh sinhinv sinintegral sininv sint sintin" + \
   "v smooth sq sqinv sqrt sqrt__1 sqrt__2 sqrt__3 sqrtx squ" + \
   "are squareroot stair stts_delete stts_reset sttscount st" + \
   "tsmagic sttsmax sttsmean sttsmin sttsmsq sttsspread stts" + \
   "stdev sttsstdevmean sttssum sttsvar supercatalan tan tan" + \
   "d tandinv tanh tanhinv taninv tant tantinv tempc tempc2k" + \
   " tempc2tempf tempf tempf2k tempf2tempc tempr tempr2k tga" + \
   "mma tgamma__1 tgamma__2 tgamma__3 tgamma__stirling tgamm" + \
   "adouble tgammainv topyh1 totient tri tri_rand triinv tri" + \
   "p trunc tur2deg tur2rad tur2sec uet2j2k uet2jd uet2kwt u" + \
   "ni_rand versin wm wminv wp wpinv ymdhms2j2k ymdhms2jd ym" + \
   "dhms_get zag zeta zig zigzag" + \
   "\n" + \
   "   Kw 2-ary Functions: agmean agmean__1 ahmean almean am" + \
   "ean aqmean atan2 atan2d atan2h atan2t atan2u ballot ball" + \
   "ots benford_cdf benford_pdf bess_jn bess_yn bessIn bessI" + \
   "n_ps bessJn bessJn_ps bessJv bessKn bessYn bessYn_ps bes" + \
   "sYv beta beta_rand binomial binomial_rand binomialx birt" + \
   "hday birthdayinv birthdayx bits_get bits_set bitshiftl b" + \
   "itshiftr bitwiseand bitwiseor bitwisexor bkn blackbody c" + \
   "arlsonRC cauchy_cdf cauchy_pdf cauchy_quantile cd ceil2 " + \
   "chisqr_cdf chisqr_pdf cir2ell cn cn__1 comb combination " + \
   "combx contraharmonic cs d1diamond_d2 d1lt_d2 d1spiral_d2" + \
   " d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1 d2u" + \
   "r_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds ell2c" + \
   "ir ellipsearea ellipsecir ellipsecir__1 ellipseecc ellip" + \
   "seflatness ellipsem elliptic1i elliptic1i__1 elliptic2i " + \
   "elliptic2i__1 elliptic3 elliptic3__1 ellipticEi elliptic" + \
   "F ellipticP entringer eulerian exp_cdf exp_pdf exp_quant" + \
   "ile expintegraln factor factorialt floor2 fmod fmods fmo" + \
   "du fmody fmul gamma_cdf gamma_pdf gcd gcda geo_cdf geo_p" + \
   "df geo_quantile ghmean glmean gmean gompertz_rand gqmean" + \
   " has_primitiveroot_f heronianmean hlmean hmean hnm hqmea" + \
   "n hypot int_cdf int_pdf int_quantile ints_rand iseq isge" + \
   " isgt isle islt ismult ismultl ispractical_f isprimitive" + \
   "root issignsame issquarefree_f isss jacobiphi jewish_mon" + \
   "thbegin jewish_monthlength ks_b_cdf ks_cdf ks_quantile l" + \
   "beta lcam lcams lcantim lcm lcombx ligamma ligammainv lm" + \
   "ean logistic_cdf logistic_pdf logistic_quantile lpermx l" + \
   "qmean max2 maxabs maxabs2 maxi mb_cdf mb_pdf mean min2 m" + \
   "inabs minabs2 mini mobius_f mods modulo nbd_rand nc nd n" + \
   "evillethetac nevillethetad nevillethetan nevillethetas n" + \
   "s nthroot__1 pareto_rand perm permutation permx poi_cdf " + \
   "poi_pdf poi_quantile polya_rand polycnum polynum pow pow" + \
   "i prime0_f print_base_out print_base_outf qmean rand_ini" + \
   "t_array ratio repetendlen rligamma rms round2 rtomsd rui" + \
   "gamma sc sd shc_shftpoles2steps sigma sigma0_f sigma1_f " + \
   "sn sn__1 spread2stdev stdev2spread stirling1 stirling2 s" + \
   "tts_copy stts_downdate stts_newx stts_scale stts_shift s" + \
   "tts_update stts_update2 t_cdf t_cdf__1 t_pdf t_quantile " + \
   "t_quantile__1 tetracnum tetranum theta1 theta2 theta3 th" + \
   "eta4 Tn topyh totient_f trap_rand tri_cdf tri_pdf tri_qu" + \
   "antile uigamma uigamma__1 uigammainv Un uni_cdf uni_pdf " + \
   "uni_quantile variance zeta_cdf zeta_pdf zipf_rand znorde" + \
   "r znorder__1" + \
   "\n" + \
   "   Kw 3-ary Functions: aghmean atothenmodp atothenmodx b" + \
   "eta_cdf beta_pdf beta_quantile betainc betainc__1 binomi" + \
   "al_cdf binomial_pdf bits_assign bkbn cantorll cantorul c" + \
   "antorxx carlsonRD carlsonRF chebeval clip2 clip2x corr_u" + \
   "pdate cossin_ev divi dlog dlogx elliptic3i elliptic3i__1" + \
   " ellipticPi epdf2cdf f11 f_cdf f_quantile f_quantile__1 " + \
   "fibo3 fit_ls fit_ls0 fit_minmax fit_minmax0 fit_poly fit" + \
   "x_minmax fmod2 gompertz_cdf gompertz_pdf gompertz_quanti" + \
   "le hms2day horner hypot3 ifzero isalmostequal isbetween " + \
   "isbetweenx isfloorsame iswithin jewishymd2jd lv_ellpj ma" + \
   "xabsoffset maxmin maxwell_boltzmann_cdf maxwell_boltzman" + \
   "n_pdf maxwell_juttner_pdf minabsoffset n2perm nbd_cdf nb" + \
   "d_pdf pareto_cdf pareto_pdf pareto_quantile pendulum pme" + \
   "an polya_cdf polya_pdf print_kevy remquou roundy sigma_f" + \
   " sigmoid3 sigmoid3d stts_updatex taninv3 trap_cdf trap_p" + \
   "df trap_quantile ymd2dow ymd2doy ymd2j2k ymd2jd zipf_cdf" + \
   " zipf_pdf zipf_quantile" + \
   "\n" + \
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distan" + \
   "ce n2comb sphere_d" + \
   "\n" + \
   "   Kw 5-ary Functions: sphere_distance" + \
   "\n" + \
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_desti" + \
   "nation ellipsoid_distance epdf parabola_solve stts_init " + \
   "stts_initx" + \
   "\n"
)
def kw_desc():
   return( \
   "   Kw Constants: AAABATTERY(CHARGE|ENERGY|VOLTAGE)? AABA" + \
   "TTERY(CHARGE|ENERGY|VOLTAGE)? ACCELERATION ACRE ACTION A" + \
   "H ALPHA(|_(ERR|MASS|REC(_ERR)?)|MASS(_ERR)?) AMP(ERE)? A" + \
   "MU(_ERR)? ANGLE APERY ARC(DEG(REE)?|MIN(UTE)?|SEC(OND)?)" + \
   " AREA? ASTRONOMICALUNIT ATM(OSPHERE(_ERR)?)? ATOMICMASSU" + \
   "NIT(_ERR)? ATTO AU AU_ERR AVOGADRO(_(ERR|REC))? BAN BAR(" + \
   "N|REL)? BAS(EBALL(MASS|RADIUS)|KETBALL(MASS|RADIUS)) BEK" + \
   "ENSTEIN(ENTROPY|INFORMATION) BHENTROPY_AREA BHMASS(3_LIF" + \
   "ETIME|_RADIUS|TEMP) BHRADIUS2DENSITY BIT BLUE(ENERGY|Hz|" + \
   "WAVE(LENGTH|NUMBER)) BOHRRADIUS(_ERR)? BOLTZMANN(_(ERR|R" + \
   "EC))? BTU(_(IT|TH))? CAL(_(IT|TH)|ORIE)? CANDELA CAPACIT" + \
   "ANCE CAR(AT|BATTERY(CHARGE|ENERGY|VOLTAGE)?) CBATTERY(CH" + \
   "ARGE|ENERGY|VOLTAGE)? CENTI CHARGE CONDUCTANCE COULOMB(C" + \
   "ONST(_ERR)?)? CUP CURRENT DALTON(_ERR)? DAY DBATTERY(CHA" + \
   "RGE|ENERGY|VOLTAGE)? DBL(EPS|MA(N|X(LN)?)|SIG) DEC[AI] D" + \
   "EG[CFR] DENSITY DEUTERON(_MASS|MASS(_ERR)?) DIME(MAS|RAD" + \
   "IU|THICKNES)S DISTANCE DIT DOWNQUARK(_MASS|ENERGY|Hz|MAS" + \
   "S(_ERR)?|WAVELENGTH) dvCs(_ERR|ENERGY|Hz(_REC)?|WAVE(LEN" + \
   "GTH|NUMBER)) E EARTH(AGE|GRAVITY[AB]|SOLARDAY) EHF(ENERG" + \
   "Y|Hz|WAVE(LENGTH|NUMBER)) EINSTEIN(_ERR)? ELE(CTR(IC(_ER" + \
   "R)?|ON(_MASS|CHARGE(_(ERR|REC))?|ENERGY|Hz|MASS(_ERR|A(_" + \
   "ERR)?)?|VOLT|WAVELENGTH))|MENTARYCHARGE(_ERR)?|VATIONM(A" + \
   "X|IN)) ENERGY EPSILON0(_ERR)? ERG EULER EUV(ENERGY|Hz|WA" + \
   "VE(LENGTH|NUMBER)) EXA EXBI FARAD(AY(_ERR)?)? FEIGENBAUM" + \
   " FEMTO FINESTRUCTURE(|_(ERR|REC(_ERR)?)) FIR(ENERGY|Hz|W" + \
   "AVE(LENGTH|NUMBER)) FLICK FLOZ FLT(EPS|MA[NX]|SIG) FOE F" + \
   "OOT FORCE FREQUENCY FT G G_ERR GAL(ACTICCENTER|LON) GAMM" + \
   "A(ENERGY|Hz|WAVE(LENGTH|NUMBER)) GAS(_ERR)? GIANTIMPACT " + \
   "GIBI GIGA GOLFBALL(MASS|RADIUS) GRA(D|IN|M|VIT(ATION(_ER" + \
   "R|IERS|NASA)?|Y(_ERR)?)) GRE(EN(ENERGY|Hz|WAVE(LENGTH|NU" + \
   "MBER))|GORIANYEAR) GYEAR h h_ERR h_REC HART(LEY)? HBAR(_" + \
   "ERR)? HECT(ARE|O) HELION(_MASS|MASS(_ERR)?) HENRY HERTZ " + \
   "HFENERGY HFHz HFWAVE(LENGTH|NUMBER) HI HI_ERR HIENERGY H" + \
   "IHz HIWAVE(LENGTH|NUMBER) HORSEPOWER HOUR HP HPMETRIC HU" + \
   "BBLE(_ERR)? HXENERGY HXHz HXWAVE(LENGTH|NUMBER) HYDROGEN" + \
   "(LINE(_ERR)?|RADIUS(_ERR)?) INCH INDUCTANCE INHG INTMAX " + \
   "J2K(DAY)? JC JCENTURY JD JDAY JDSEC_AT_0(GREGORIAN|J2K|K" + \
   "WT|UET) JEWISH_FIRST_MONTH JM JMILLENNIUM JOSEPHSON(_ERR" + \
   ")? JOULE JULIAN(CENTURY|DAY|MILLENNIUM|YEAR) JY JYEAR K_" + \
   "AT_0TEMP[CFR] kB kB_(ERR|REC) KCD(_ERR)? KELVIN KG KGENE" + \
   "RGY KGF KGHz KGWAVE(LENGTH|NUMBER) KIBI KILO(GRAM)? KPGB" + \
   "OUNDARY KWT LB LBF LENGTH LFENERGY LFHz LFWAVE(LENGTH|NU" + \
   "MBER) LIFEAGE LIGHT(_(ERR|REC)|YEAR)? LIT(ER|RE) LNT(EN|" + \
   "WO) LUMEN LUX MACH MAGNETIC(_ERR|FLUX|INDUCTION)? MARATH" + \
   "ON MASS MEBI MEGA MET(ER|RE) MFENERGY MFHz MFWAVE(LENGTH" + \
   "|NUMBER) MICRO(|WAVE(ENERGY|Hz|WAVE(LENGTH|NUMBER))) MIL" + \
   "(E|KYWAY(AGE|DAY|MASS|RADIUS)|LI) MINUTE MIR(ENERGY|Hz|W" + \
   "AVE(LENGTH|NUMBER)) MM MMHG MOL(ARMASS(_ERR|X(_ERR)?)?|E" + \
   ") MONTHS_IN_YEAR MOONMONTH MPH MPSS? MU0(_ERR)? MUON(_MA" + \
   "SS|ENERGY|Hz|MASS(_ERR)?|WAVELENGTH) NANO NAT NEUTRON(_M" + \
   "ASS|ENERGY|Hz|MASS(_ERR)?|WAVELENGTH) NEWTON NICKEL(MAS|" + \
   "RADIU|THICKNES)S NINEVOLT(BATTERY(CHARGE|ENERGY|VOLTAGE)" + \
   "?|CHARGE|ENERGY|VOLTAGE)? NIR(ENERGY|Hz|WAVE(LENGTH|NUMB" + \
   "ER)) NPBOUNDARY NUV(ENERGY|Hz|WAVE(LENGTH|NUMBER)) OHM O" + \
   "RANGE(ENERGY|Hz|WAVE(LENGTH|NUMBER)) OUNCE PA PARSEC PEB" + \
   "I PENNY(MAS|RADIU|THICKNES)S PETA PHI PHONEBATTERY(CHARG" + \
   "E|ENERGY|VOLTAGE)? PI PICO PIN(GPONGBALL(MASS|RADIUS)|T)" + \
   " PLANCK(|_(ERR|REC)|BAR(_ERR)?|CHARGE|ENERGY|LENGTH|MASS" + \
   "|T(EMP|IME)) POINT POUND POWER PPB PPM PPQ PPT PRESSURE " + \
   "PRO(TON(_MASS|ENERGY|Hz|MASS(_ERR)?|RADIUS(_ERR)?|WAVELE" + \
   "NGTH)|XIMACENTAURI) PSI PTRBOUNDARY QUART(ER(MAS|RADIU|T" + \
   "HICKNES)S)? RAD(IAN)? RED(ENERGY|Hz|WAVE(LENGTH|NUMBER))" + \
   " RESISTANCE RPM RPS RYDBERG(_ERR|ENERGY|Hz|WAVE(LENGTH|N" + \
   "UMBER))? SECOND SHANNON SHF(ENERGY|Hz|WAVE(LENGTH|NUMBER" + \
   ")) SI16M(AX|IN) SI32M(AX|IN) SIEMENS SOCCERBALL(MASS|RAD" + \
   "IUS) SOFTBALL(MASS|RADIUS) SOL(ARCONSTANT|ID_ANGLE) SPE(" + \
   "CIFICHEAT|ED) SPHERESURFACE SQDEG SQRTTWO SQUAREDEGREE S" + \
   "TANDARD(ATMOSPHERE|GRAVITY) STE(FAN(_ERR)?|RADIAN) SXENE" + \
   "RGY SXHz SXWAVE(LENGTH|NUMBER) SXX(ENERGY|Hz|WAVE(LENGTH" + \
   "|NUMBER)) TAU(_MASS|ENERGY|Hz|MASS(_ERR)?|WAVELENGTH)? T" + \
   "BLSP TEBI TEMPERATURE TENNISBALL(MASS|RADIUS) TERA TESLA" + \
   " THF(ENERGY|Hz|WAVE(LENGTH|NUMBER)) TIME TON(NE)? TORR T" + \
   "RITON(_MASS|MASS(_ERR)?) TRJBOUNDARY TSP TT_AT_0(TAI|UT1" + \
   ") TURN UAMU(_ERR)? UET UHF(ENERGY|Hz|WAVE(LENGTH|NUMBER)" + \
   ") UI16MAX UI32MAX UNI(TGM|VERSE(AGE|MASS|RADIUS)) UPQUAR" + \
   "K(_MASS|ENERGY|Hz|MASS(_ERR)?|WAVELENGTH) UVA(ENERGY|Hz|" + \
   "WAVE(LENGTH|NUMBER)) UVB(ENERGY|Hz|WAVE(LENGTH|NUMBER)) " + \
   "UVC(ENERGY|Hz|WAVE(LENGTH|NUMBER)) VHF(ENERGY|Hz|WAVE(LE" + \
   "NGTH|NUMBER)) VIOLET(ENERGY|Hz|WAVE(LENGTH|NUMBER)) VISC" + \
   "OSITY VOL(T(AGE)?|UME) VONKLITZING(_ERR)? WATT WEBER WEE" + \
   "K YARD YELLOW(ENERGY|GREEN(ENERGY|Hz|WAVE(LENGTH|NUMBER)" + \
   ")|Hz|WAVE(LENGTH|NUMBER)) YOBI YOCTO YOTTA ZEBI ZEPTO ZE" + \
   "TTA" + \
   "\n" + \
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymd" + \
   "hmsinv magic(not|set) normal_rand parabola_(realroots|xa" + \
   "xis|yextrema) randd stts_new timee" + \
   "\n" + \
   "   Kw 1-ary Functions: abs agmean1(inv)? ahmean1 almean1" + \
   " amean1 aqmean1 b2m bankers bb_pdf bellx? benford_rand b" + \
   "ernoulli[dn]? bess(I[01]|J[01]|K[01]|Y(0|1(__1)?)) bit(s" + \
   "_(count|ls1b(pos)?|ms1b(pos)?)|wisenot) blackbody(_pdf|m" + \
   "ode|power) cantor carmichael catalan cauchy_rand cbrt ce" + \
   "il chisqr_rand circle_get clip clock(hour|min|s(ec|tdev|" + \
   "um)) cnv_dbl2si16 corr(_(delete|handle[xy])|corr|s(lope|" + \
   "tderr)|y0) cos(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1)" + \
   "?|t(inv)?) cot([dht]?(inv)?)? csc([dht]?(inv)?)? ctz cu " + \
   "cube(root)? date_(easter|pesach|rosh_hashanah) day2(dhms" + \
   "(inv)?|hour) deg2(dms|rad|sec|tur) digamma(__1|inv)? dms" + \
   "2(deg|rad) doomsday ecc2flat Ein elliptic(1(__1)?|2(__1)" + \
   "?|[EK]) erf(|__([12]|[34])|c(inv|x(inv)?)?|inv) eta eule" + \
   "r(phi|x) exp(_(_[12]|rand)|integral[1i]|m1)? fac(inv|tor" + \
   "ial(double|inv)?)? fibo(x(inv)?)? flat2ecc floor frac fu" + \
   "bini fusc g2jewish gamma_rand gau_(cdf|pdf|quantile) geo" + \
   "_rand ghmean1(inv)? glmean1 gmean1 gqmean1 has_primitive" + \
   "root haversin heaviside heronianmean1 hlmean1 hmean1 hn " + \
   "hn__1 hour2day hqmean1 hypot1(inv)? id int_rand iround i" + \
   "s(even|int|jewish8short|jewish9short|jewishleap|leapyear" + \
   "|magic|neg|negint|odd|pos|posint|practical|prime|squaref" + \
   "ree|zero) j2k2(dow|jd|kwt|uet|ymdhms) jacobicir jd2(dow|" + \
   "j2k|kwt|uet|ymdhms) jewish(2(g|jdx?)|_(months_in_year|ye" + \
   "arlength)) k2m k2temp[cfr] ks_a_cdf kwt2(j(2k|d)|uet) l1" + \
   "0 lg lgamma(__[12]|inv)? lix(inv)? lmean1 ln ln1p ln__[1" + \
   "2] lns log(10|2|i(ntegral|stic_rand))? lqmean1 lucasx? m" + \
   "2b m2k mertens minkowski mobius neg nom normal_(cdf(__1)" + \
   "?|pdf|quantile(__1)?) par(abola_(get|roots)|titionq?) pc" + \
   "f pfg pfl poi_rand pow(10|2) pri(m(e([01]|countx?|n(ext|" + \
   "th(__1)?)|prev)|itiveroot)|nt_(contfra(cd?)?|factor|jd26" + \
   "4|num2char)) qmean1 rad2(d(eg|ms2?)|sec|tur) rand(_init|" + \
   "l) reci reimann round rto(125|[iz]) sba search_(check|se" + \
   "arch) sec(|2(d(eg|hms)|rad|tur)|[dht]?(inv)?) shc_s(hft2" + \
   "steps|teps2shft(inv)?) sig(m(a[01]|oid(inv)?)|n) sin(|__" + \
   "1|c(__1|c|inv)?|d(inv)?|h(inv)?|in(tegral|v)|t(inv)?) sm" + \
   "ooth sq sqinv sqrt(__[123]|x)? square(root)? stair stts(" + \
   "_(delete|reset)|count|m(a(gic|x)|ean|in|sq)|s(pread|tdev" + \
   "(mean)?|um)|var) supercatalan tan([dht]?(inv)?)? temp(c(" + \
   "2(k|tempf))?|f(2(k|tempc))?|r(2k)?) tgamma(__([123]|stir" + \
   "ling)|double|inv)? topyh1 totient tri(_rand|inv|p)? trun" + \
   "c tur2(deg|rad|sec) uet2(j(2k|d)|kwt) uni_rand versin wm" + \
   "(inv)? wp(inv)? ymdhms(2j(2k|d)|_get) zag zeta zig(zag)?" + \
   "\n" + \
   "   Kw 2-ary Functions: agmean(__1)? ahmean almean amean " + \
   "aqmean atan2([dh]|[tu])? ballots? benford_(cdf|pdf) bess" + \
   "(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n(_ps)?|v)) beta(_r" + \
   "and)? binomial(_rand|x)? birthday(inv|x)? bit(s(_(get|se" + \
   "t)|hift[lr])|wise(and|or|xor)) bkn blackbody carlsonRC c" + \
   "auchy_(cdf|pdf|quantile) cd ceil2 chisqr_(cdf|pdf) cir2e" + \
   "ll cn cn__1 comb(ination|x)? contraharmonic cs d1diamond" + \
   "_d2 d1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 " + \
   "d2lt_d1 d2spiral_d1 d2ur_d1 days_in_month dc ddist dist " + \
   "dlog1 dn dn__1 ds ell(2cir|ip(se(area|cir(__1)?|ecc|flat" + \
   "ness|m)|tic(1i(__1)?|2i(__1)?|3(__1)?|Ei|[FP]))) entring" + \
   "er eulerian exp(_(cdf|pdf|quantile)|integraln) factor(ia" + \
   "lt)? floor2 fmod[suy]? fmul gamma_(cdf|pdf) gcda? geo_(c" + \
   "df|pdf|quantile) ghmean glmean gmean gompertz_rand gqmea" + \
   "n has_primitiveroot_f heronianmean hlmean hmean hnm hqme" + \
   "an hypot int(_(cdf|pdf|quantile)|s_rand) is(eq|ge|gt|le|" + \
   "lt|mult|multl|practical_f|primitiveroot|signsame|squaref" + \
   "ree_f|ss) jacobiphi jewish_month(begin|length) ks_(b_cdf" + \
   "|cdf|quantile) lbeta lca(ms?|ntim) lcm lcombx ligamma(in" + \
   "v)? lmean logistic_(cdf|pdf|quantile) lpermx lqmean max(" + \
   "2|abs2?|i) mb_(cdf|pdf) mean min(2|abs2?|i) mobius_f mod" + \
   "(s|ulo) nbd_rand nc nd nevilletheta([cd]|[ns]) ns nthroo" + \
   "t__1 pareto_rand perm(utation|x)? poi_(cdf|pdf|quantile)" + \
   " poly(a_rand|cnum|num) powi? pri(me0_f|nt_base_outf?) qm" + \
   "ean rand_init_array ratio repetendlen rligamma rms round" + \
   "2 rtomsd ruigamma sc sd shc_shftpoles2steps sigma(0_f|1_" + \
   "f)? sn sn__1 spread2stdev stdev2spread stirling[12] stts" + \
   "_(copy|downdate|newx|s(cale|hift)|update2?) t_cdf(__1)? " + \
   "t_pdf t_quantile(__1)? tetra(cnum|num) theta([12]|[34]) " + \
   "Tn topyh totient_f trap_rand tri_(cdf|pdf|quantile) uiga" + \
   "mma(__1|inv)? Un uni_(cdf|pdf|quantile) variance zeta_(c" + \
   "df|pdf) zipf_rand znorder(__1)?" + \
   "\n" + \
   "   Kw 3-ary Functions: aghmean atothenmod[px] beta(_(cdf" + \
   "|pdf|quantile)|inc(__1)?) binomial_(cdf|pdf) bits_assign" + \
   " bkbn cantor(ll|ul|xx) carlsonR[DF] chebeval clip2x? cor" + \
   "r_update cossin_ev divi dlogx? elliptic(3i(__1)?|Pi) epd" + \
   "f2cdf f11 f_cdf f_quantile(__1)? fibo3 fit(_(ls0?|minmax" + \
   "0?|poly)|x_minmax) fmod2 gompertz_(cdf|pdf|quantile) hms" + \
   "2day horner hypot3 ifzero is(almostequal|between|between" + \
   "x|floorsame|within) jewishymd2jd lv_ellpj max(absoffset|" + \
   "min|well_(boltzmann_(cdf|pdf)|juttner_pdf)) minabsoffset" + \
   " n2perm nbd_(cdf|pdf) pareto_(cdf|pdf|quantile) pendulum" + \
   " pmean polya_(cdf|pdf) print_kevy remquou roundy sigm(a_" + \
   "f|oid3d?) stts_updatex taninv3 trap_(cdf|pdf|quantile) y" + \
   "md2(do[wy]|j(2k|d)) zipf_(cdf|pdf|quantile)" + \
   "\n" + \
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distan" + \
   "ce n2comb sphere_d" + \
   "\n" + \
   "   Kw 5-ary Functions: sphere_distance" + \
   "\n" + \
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_d(est" + \
   "ination|istance) epdf parabola_solve stts_initx?" + \
   "\n"
)
