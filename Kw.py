#    Copyright (C) 2021 by Kevin D. Woerner
##-# =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
##-# =KDW= ############# SOURCE $KWROOT/codekdw/kw-lib/Kw.fwipp #############
##-# =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
##-# =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
# 2021-05-14 kdw  For Changelog, See File varylog
import sys
import math
import time
KILOGRAM = 1.0
METER = 1.0
SECOND = 1.0
KELVIN = 1.0
AMPERE = 1.0
MOLE = 1.0
CANDELA = 1.0
BIT = 1.0
RADIAN = 1.0
MASS = KILOGRAM
LENGTH = METER
DISTANCE = LENGTH
TEMPERATURE = KELVIN
TIME = SECOND
ANGLE = RADIAN
AMOUNT = MOLE
CURRENT = AMPERE
CHARGE = AMPERE * SECOND
COULOMB = AMPERE * SECOND
STERADIAN = (RADIAN * RADIAN)
METRE = METER
KG = KILOGRAM
RAD = RADIAN
E = math.exp(1.0)
TAU = 8.0 * math.atan2(1.0, 1.0) / RAD
PHI = 0.5 + math.sqrt(5.0) / 2.0
TWOLN = math.log(2.0)
TENLN = math.log(10.0)
TWOSQRT = math.sqrt(2.0)
EULER = 0.577215664901532860606512090082402431042159335939924
FEIGENBAUM = 4.669201609102990671853203820466201617258185577475769
APERY = 1.202056903159594285399738161511449990764986292340499
GAMMAMIN = 1.461632144968362341262659542325721328468196204006446
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
MPSS = METER / (SECOND * (SECOND))
UNITGM = METER * (MPS * (MPS))
NEWTON = KILOGRAM * MPSS
JOULE = NEWTON * METER
PA = NEWTON / (METER * (METER))
WATT = JOULE / SECOND
HERTZ = 1.0 / SECOND
Hz = HERTZ
AMP = AMPERE
VOLT = WATT / AMPERE
OHM = VOLT / AMPERE
HENRY = OHM * SECOND
FARAD = COULOMB / VOLT
SIEMENS = 1.0 / OHM
WEBER = VOLT * SECOND
TESLA = WEBER / (METER * (METER))
LUMEN = CANDELA * STERADIAN
LUX = LUMEN / (METER * (METER))
BOLTZMANN = 1.380649E-23 * JOULE / KELVIN
BOLTZMANN_ERR = 0.0
BOLTZMANN_REC = 1.0 / BOLTZMANN
BOLTZMANN_REC_ERR = 0.0
ELEMENTARYCHARGE = 1.602176634E-19 * COULOMB
ELEMENTARYCHARGE_ERR = 0.0
LIGHT = 2.99792458E+8 * METER / SECOND
LIGHT_ERR = 0.0
LIGHT_REC = 1.0 / LIGHT
LIGHT_REC_ERR = 0.0
AVOGADRO = 6.02214076E+23 / MOLE
AVOGADRO_ERR = 0.0
AVOGADRO_REC = 1.0 / AVOGADRO
AVOGADRO_REC_ERR = 0.0
PLANCK = 6.62607015E-34 * JOULE * SECOND
PLANCK_ERR = 0.0
PLANCK_REC = 1.0 / PLANCK
PLANCK_REC_ERR = 0.0
KCD = 6.83E+2 * LUMEN / WATT
KCD_ERR = 0.0
dvCs_Hz = 9.19263177E+9 / SECOND
dvCs_WAVELENGTH = LIGHT / dvCs_Hz
dvCs_ENERGY = dvCs_Hz * PLANCK
dvCs_ERR = 0.0
kB = BOLTZMANN
kB_ERR = BOLTZMANN_ERR
kB_REC = 1.0 / kB
kB_REC_ERR = BOLTZMANN_ERR
ELECTRON_CHARGE = - ELEMENTARYCHARGE
ELECTRON_CHARGE_ERR = ELEMENTARYCHARGE_ERR
PLANCKBAR = PLANCK / TAU
PLANCKBAR_ERR = PLANCK_ERR
h = PLANCK
h_ERR = PLANCK_ERR
h_REC = 1.0 / PLANCK
h_REC_ERR = PLANCK_ERR
c = LIGHT
c_ERR = LIGHT_ERR
c_REC = 1.0 / LIGHT
c_REC_ERR = LIGHT_ERR
HBAR = PLANCKBAR
HBAR_ERR = PLANCKBAR_ERR
GRAVITY = 9.80665 * MPSS
GRAVITY_ERR = 0.0
ATMOSPHERE = 1.01325E+5 * PA
ATMOSPHERE_ERR = 0.0
AU = 1.495978707E+11 * METER
AU_ERR = 0.0
JOSEPHSON = 2.0 * ELEMENTARYCHARGE / PLANCK
JOSEPHSON_ERR = 0.0
VONKLITZING = PLANCK / (ELEMENTARYCHARGE * (ELEMENTARYCHARGE))
VONKLITZING_ERR = 0.0
FARADAY = ELEMENTARYCHARGE * AVOGADRO
FARADAY_ERR = 0.0
FARADAY_REC = 1.0 / FARADAY
FARADAY_REC_ERR = 0.0
GAS = BOLTZMANN * AVOGADRO
GAS_ERR = 0.0
GAS_REC = 1.0 / GAS
GAS_REC_ERR = 0.0
FARADAYCONST = FARADAY
FARADAYCONST_ERR = FARADAY_ERR
FARADAYCONST_REC = 1.0 / FARADAYCONST
FARADAYCONST_REC_ERR = FARADAY_ERR
GASCONST = GAS
GASCONST_ERR = GAS_ERR
GASCONST_REC = 1.0 / GASCONST
GASCONST_REC_ERR = GAS_ERR
GRAVITATION = 6.67430E-11 * UNITGM / KILOGRAM
GRAVITATION_ERR = 2.2E-5
GRAVITATION_REC = 1.0 / GRAVITATION
GRAVITATION_REC_ERR = 2.2E-5
RYDBERG = 1.0973731568160E+7 * LIGHT / METER
RYDBERG_ERR = 1.9E-12
RYDBERG_REC = 1.0 / RYDBERG
RYDBERG_REC_ERR = 1.9E-12
G = GRAVITATION
G_ERR = GRAVITATION_ERR
ALPHA = 1.0 / 137.035999206
ALPHA_ERR = 8.1E-11
ALPHA_REC = 1.0 / ALPHA
ALPHA_REC_ERR = 8.1E-11
ALPHASQRT = math.sqrt(ALPHA)
FLTSIG = 23
FLTMAN = 8
FLTEPS = 1.1920928955078125E-7
FLTMAX = 3.402823466385288598E+38
DBLMAXLN = TWOLN * 1024.0
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
JEWISH_FIRST_MONTH = 7
MONTHS_IN_YEAR = 12
UVPV = MICRO
MINUTE = 60.0 * SECOND
HOUR = 60.0 * MINUTE
DAY = 24.0 * HOUR
WEEK = 7.0 * DAY
FLICK = SECOND / 705600000.0
JDAY = DAY
JYEAR = 365.25 * JDAY
JCENTURY = 100.0 * JYEAR
GYEAR = 365.2425 * DAY
GYEAR_AT_0J2K = 2000.0
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
CARAT = 0.2 * GRAM
TONNE = 1000.0 * KILOGRAM
POUND = 0.45359237 * KILOGRAM
LB = POUND
GRAIN = POUND / 7000.0
OUNCE = 0.0625 * POUND
OZ = OUNCE
STONE = 14.0 * POUND
TON = 2000.0 * POUND
MM = MILLI * METER
INCH = 0.0254 * METER
HAND = 4.0 * INCH
FOOT = 12.0 * INCH
SURVEYFOOT = 1200.0 * METER / 3937.0
FEET = FOOT
FT = FOOT
YARD = 3.0 * FEET
HORSE = 8.0 * FEET
LINK = 66.0 * SURVEYFOOT / 100.0
CHAIN = 100 * LINK
FURLONG = 10 * CHAIN
MILE = 5280.0 * FEET
POINT = INCH / 72.0
STANDARDGRAVITY = GRAVITY
GRAVITATIONNASA = 6.67259E-11 * UNITGM / KILOGRAM
GRAVITATIONIERS = 6.67428E-11 * UNITGM / KILOGRAM
KGF = KILOGRAM * GRAVITY
LBF = POUND * GRAVITY
ATM = ATMOSPHERE
STANDARDATMOSPHERE = ATMOSPHERE
TORR = ATMOSPHERE / 760.0
BAR = 1.0E+5 * PA
MMHG = 13595.1 * KILOGRAM * GRAVITY * MM / (METER * (METER) * (METER))
INHG = MMHG * INCH / MM
PSI = POUND * GRAVITY / (INCH * (INCH))
DEGC = KELVIN
DEGF = KELVIN / 1.8
DEGR = DEGF
K_AT_0TEMPC = 273.15 * DEGC
K_AT_0TEMPF = 459.67 * DEGF
K_AT_0TEMPR = 0.0 * DEGR
TEMPF_AT_0TEMPC = 32.0 * KELVIN
MACH = 331.46 * MPS
MPH = MILE / HOUR
HECTARE = 10000.0 * (METER * (METER))
ARE = 100.0 * (METER * (METER))
ACRE = (MILE * (MILE)) / 640.0
BARN = 1.0E-28 * (METER * (METER))
LITER = (METER * (METER) * (METER)) / 1000.0
LITRE = LITER
GALLON = 231.0 * (INCH * (INCH) * (INCH))
QUART = GALLON / 4.0
PINT = QUART / 2.0
CUP = PINT / 2.0
FLOZ = CUP / 8.0
TBLSP = FLOZ / 2.0
TSP = TBLSP / 3.0
BARREL = 42.0 * GALLON
DRYGALLON = 9.25 * 9.25 * PI * (INCH * (INCH) * (INCH))
PECK = 2.0 * DRYGALLON
BUSHEL = 8.0 * DRYGALLON
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
HPMETRIC = 75.0 * KILOGRAM * GRAVITY * MPS
ELECTRONVOLT = ELEMENTARYCHARGE * VOLT
eV = ELECTRONVOLT
ERG = 1.0E-7 * JOULE
FOE = 1.0E+44 * JOULE
AAABATTERY_CHARGE = 2.1 * AH
AAABATTERY_VOLTAGE = 1.5 * VOLT
AAABATTERY = AAABATTERY_CHARGE * AAABATTERY_VOLTAGE
AAABATTERY_ENERGY = AAABATTERY
AABATTERY_CHARGE = 2.7 * AH
AABATTERY_VOLTAGE = 1.5 * VOLT
AABATTERY = AABATTERY_CHARGE * AABATTERY_VOLTAGE
AABATTERY_ENERGY = AABATTERY
CBATTERY_CHARGE = 8.0 * AH
CBATTERY_VOLTAGE = 1.5 * VOLT
CBATTERY = CBATTERY_CHARGE * CBATTERY_VOLTAGE
CBATTERY_ENERGY = CBATTERY
DBATTERY_CHARGE = 12.0 * AH
DBATTERY_VOLTAGE = 1.5 * VOLT
DBATTERY = DBATTERY_CHARGE * DBATTERY_VOLTAGE
DBATTERY_ENERGY = DBATTERY
NINEVOLT_CHARGE = 0.565 * AH
NINEVOLT_VOLTAGE = 9.0 * VOLT
NINEVOLT = NINEVOLT_CHARGE * NINEVOLT_VOLTAGE
NINEVOLT_ENERGY = NINEVOLT
NINEVOLTBATTERY_CHARGE = NINEVOLT_CHARGE
NINEVOLTBATTERY_VOLTAGE = NINEVOLT_VOLTAGE
NINEVOLTBATTERY = NINEVOLTBATTERY_CHARGE * NINEVOLTBATTERY_VOLTAGE
NINEVOLTBATTERY_ENERGY = NINEVOLTBATTERY
PHONEBATTERY_CHARGE = 3.0 * AH
PHONEBATTERY_VOLTAGE = 3.8 * VOLT
PHONEBATTERY = PHONEBATTERY_CHARGE * PHONEBATTERY_VOLTAGE
PHONEBATTERY_ENERGY = PHONEBATTERY
CARBATTERY_CHARGE = 45.0 * AH
CARBATTERY_VOLTAGE = 12.0 * VOLT
CARBATTERY = CARBATTERY_CHARGE * CARBATTERY_VOLTAGE
CARBATTERY_ENERGY = CARBATTERY
MICROWAVE_Hz = 2.45E+9 * HERTZ
MICROWAVE_WAVELENGTH = LIGHT / MICROWAVE_Hz
MICROWAVE_ENERGY = MICROWAVE_Hz * PLANCK
LF_Hz = 1.0E+5 * HERTZ
LF_WAVELENGTH = LIGHT / LF_Hz
LF_ENERGY = LF_Hz * PLANCK
MF_Hz = 1.0E+6 * HERTZ
MF_WAVELENGTH = LIGHT / MF_Hz
MF_ENERGY = MF_Hz * PLANCK
HF_Hz = 1.0E+7 * HERTZ
HF_WAVELENGTH = LIGHT / HF_Hz
HF_ENERGY = HF_Hz * PLANCK
VHF_Hz = 1.0E+8 * HERTZ
VHF_WAVELENGTH = LIGHT / VHF_Hz
VHF_ENERGY = VHF_Hz * PLANCK
UHF_Hz = 1.0E+9 * HERTZ
UHF_WAVELENGTH = LIGHT / UHF_Hz
UHF_ENERGY = UHF_Hz * PLANCK
SHF_Hz = 1.0E+10 * HERTZ
SHF_WAVELENGTH = LIGHT / SHF_Hz
SHF_ENERGY = SHF_Hz * PLANCK
EHF_Hz = 1.0E+11 * HERTZ
EHF_WAVELENGTH = LIGHT / EHF_Hz
EHF_ENERGY = EHF_Hz * PLANCK
THF_Hz = 1.0E+12 * HERTZ
THF_WAVELENGTH = LIGHT / THF_Hz
THF_ENERGY = THF_Hz * PLANCK
FIR_Hz = 1.0E+12 * HERTZ
FIR_WAVELENGTH = LIGHT / FIR_Hz
FIR_ENERGY = FIR_Hz * PLANCK
MIR_Hz = 1.0E+13 * HERTZ
MIR_WAVELENGTH = LIGHT / MIR_Hz
MIR_ENERGY = MIR_Hz * PLANCK
NIR_Hz = 1.0E+14 * HERTZ
NIR_WAVELENGTH = LIGHT / NIR_Hz
NIR_ENERGY = NIR_Hz * PLANCK
RED_WAVELENGTH = 7.0E-7 * METER
RED_Hz = LIGHT / RED_WAVELENGTH
RED_ENERGY = RED_Hz * PLANCK
ORANGE_WAVELENGTH = 6.2E-7 * METER
ORANGE_Hz = LIGHT / ORANGE_WAVELENGTH
ORANGE_ENERGY = ORANGE_Hz * PLANCK
YELLOW_WAVELENGTH = 5.8E-7 * METER
YELLOW_Hz = LIGHT / YELLOW_WAVELENGTH
YELLOW_ENERGY = YELLOW_Hz * PLANCK
YELLOWGREEN_Hz = 5.4E+14 * HERTZ
YELLOWGREEN_WAVELENGTH = LIGHT / YELLOWGREEN_Hz
YELLOWGREEN_ENERGY = YELLOWGREEN_Hz * PLANCK
GREEN_WAVELENGTH = 5.3E-7 * METER
GREEN_Hz = LIGHT / GREEN_WAVELENGTH
GREEN_ENERGY = GREEN_Hz * PLANCK
BLUE_WAVELENGTH = 5.0E-7 * METER
BLUE_Hz = LIGHT / BLUE_WAVELENGTH
BLUE_ENERGY = BLUE_Hz * PLANCK
VIOLET_WAVELENGTH = 4.2E-7 * METER
VIOLET_Hz = LIGHT / VIOLET_WAVELENGTH
VIOLET_ENERGY = VIOLET_Hz * PLANCK
NUV_Hz = 1.0E+15 * HERTZ
NUV_WAVELENGTH = LIGHT / NUV_Hz
NUV_ENERGY = NUV_Hz * PLANCK
EUV_Hz = 1.0E+16 * HERTZ
EUV_WAVELENGTH = LIGHT / EUV_Hz
EUV_ENERGY = EUV_Hz * PLANCK
UVA_WAVELENGTH = 3.6E-7 * METER
UVA_Hz = LIGHT / UVA_WAVELENGTH
UVA_ENERGY = UVA_Hz * PLANCK
UVB_WAVELENGTH = 3.0E-7 * METER
UVB_Hz = LIGHT / UVB_WAVELENGTH
UVB_ENERGY = UVB_Hz * PLANCK
UVC_WAVELENGTH = 1.9E-7 * METER
UVC_Hz = LIGHT / UVC_WAVELENGTH
UVC_ENERGY = UVC_Hz * PLANCK
SX_Hz = 3.0E+17 * HERTZ
SX_WAVELENGTH = LIGHT / SX_Hz
SX_ENERGY = SX_Hz * PLANCK
SXX_WAVELENGTH = 1.0E-9 * METER
SXX_Hz = LIGHT / SXX_WAVELENGTH
SXX_ENERGY = SXX_Hz * PLANCK
HX_Hz = 1.0E+19 * HERTZ
HX_WAVELENGTH = LIGHT / HX_Hz
HX_ENERGY = HX_Hz * PLANCK
GAMMA_Hz = 1.0E+20 * HERTZ
GAMMA_WAVELENGTH = LIGHT / GAMMA_Hz
GAMMA_ENERGY = GAMMA_Hz * PLANCK
TURN = TAU * RADIAN
ARCTURN = TURN
ARCRADIAN = RADIAN
ARCDEGREE = TURN / 360.0
ARCMINUTE = ARCDEGREE / 60.0
ARCSECOND = ARCMINUTE / 60.0
ARCGRAD = TURN / 400.0
ARCDEG = ARCDEGREE
ARCMIN = ARCMINUTE
ARCSEC = ARCSECOND
GRAD = ARCGRAD
SQUAREDEGREE = (ARCDEGREE * (ARCDEGREE))
SQDEG = SQUAREDEGREE
SPHERESURFACE = 2.0 * TAU * STERADIAN
SHANNON = BIT
NAT = BIT / TWOLN
HARTLEY = TENLN / TWOLN * BIT
HART = HARTLEY
DIT = HARTLEY
BAN = HARTLEY
RPM = TURN / MINUTE
RPS = TURN / SECOND
RPH = TURN / HOUR
OZFIN = OUNCE * GRAVITY * INCH
LBFIN = POUND * GRAVITY * INCH
LBFFT = POUND * GRAVITY * FOOT
KGFM = KG * GRAVITY * METER
Nm_PER_lbfin = LBFIN / (NEWTON * METER)
kgfm_PER_lbfin = LBFIN / (KG * GRAVITY * METER)
lbfinrpm_PER_Hp = HORSEPOWER / (LBFIN * RPM)
ozfin_PER_lbfin = POUND / OUNCE
lbfft_PER_lbfin = INCH / FOOT
W_PER_Hp = HORSEPOWER / WATT
FINESTRUCTURE = ALPHA
FINESTRUCTURE_ERR = ALPHA_ERR
FINESTRUCTURE_REC = 1.0 / FINESTRUCTURE
FINESTRUCTURE_REC_ERR = ALPHA_ERR
MAGNETIC = 2.0 * VONKLITZING * ALPHA / LIGHT
MAGNETIC_ERR = ALPHA_ERR
MU0 = MAGNETIC
MU0_ERR = ALPHA_ERR
ELECTRIC = 1.0 / ((LIGHT * (LIGHT)) * MU0)
ELECTRIC_ERR = ALPHA_ERR
EPSILON0 = ELECTRIC
EPSILON0_ERR = ALPHA_ERR
COULOMBCONST = 1.0 / (2.0 * TAU * ELECTRIC)
COULOMBCONST_ERR = ALPHA_ERR
PROTON_RADIUS = 8.414E-16 * METER
PROTON_RADIUS_ERR = 2.2E-3
MOLARMASS = (1.0 - 3.5E-10) * GRAM / MOLE
MOLARMASS_ERR = 3.0E-10
DALTON = MOLARMASS / AVOGADRO
DALTON_ERR = MOLARMASS_ERR
AMU = DALTON
AMU_ERR = DALTON_ERR
ATOMICMASSUNIT = DALTON
ATOMICMASSUNIT_ERR = DALTON_ERR
UAMU = DALTON
UAMU_ERR = DALTON_ERR
RYDBERG_Hz = RYDBERG
RYDBERG_WAVELENGTH = LIGHT / RYDBERG_Hz
RYDBERG_ENERGY = RYDBERG_Hz * PLANCK
ELECTRON_MASSA = 2.0 * RYDBERG_Hz * PLANCK / ((LIGHT * ALPHA) * (LIGHT *\
         ALPHA))
ELECTRON_MASSA_ERR = 2.0 * ALPHA_ERR
HI_Hz = 1.4204057517667E+9 * HERTZ
HI_WAVELENGTH = LIGHT / HI_Hz
HI_ENERGY = HI_Hz * PLANCK
HYDROGENLINE = HI_WAVELENGTH
HYDROGENLINE_ERR = 6.3E-13
HI = LIGHT / HI_Hz
HI_ERR = HYDROGENLINE_ERR
PLANCKMASS = math.sqrt(HBAR * LIGHT / GRAVITATION)
PLANCKCHARGE = ELEMENTARYCHARGE / ALPHASQRT
PLANCKENERGY = PLANCKMASS * (LIGHT * (LIGHT))
PLANCKTEMP = PLANCKENERGY / BOLTZMANN
PLANCKLENGTH = HBAR / (PLANCKMASS * LIGHT)
PLANCKTIME = PLANCKLENGTH / LIGHT
PLANCKFREQUENCY = 1.0 / PLANCKTIME
STEFAN = (TAU * (TAU) * (TAU) * (TAU) * (TAU)) * (BOLTZMANN * (BOLTZMANN)\
         * (BOLTZMANN) * (BOLTZMANN)) / (240.0 * (LIGHT * (LIGHT)) *\
         (PLANCK * (PLANCK) * (PLANCK)))
STEFAN_ERR = 0.0
PINGPONGBALL_RADIUS = 0.02 * METER
GOLFBALL_RADIUS = 0.02135 * METER
TENNISBALL_RADIUS = 0.03325 * METER
BASEBALL_RADIUS = 9.125 * INCH / TAU
SOFTBALL_RADIUS = 12.0 * INCH / TAU
SOCCERBALL_RADIUS = 0.69 * METER / TAU
BASKETBALL_RADIUS = 0.75 * METER / TAU
PINGPONGBALL_MASS = 0.0027 * KG
GOLFBALL_MASS = 0.04593 * KG
TENNISBALL_MASS = 0.0577 * KG
BASEBALL_MASS = 0.1465 * KG
SOFTBALL_MASS = 0.187 * KG
BASKETBALL_MASS = 0.620 * KG
SOCCERBALL_MASS = 0.430 * KG
MARATHON = 42195.0 * METER
PENNY_HEIGHT = 1.52E-3 * METER
NICKEL_HEIGHT = 1.95E-3 * METER
DIME_HEIGHT = 1.35E-3 * METER
QUARTER_HEIGHT = 1.75E-3 * METER
PENNY_DIAMETER = 0.75 * INCH
NICKEL_DIAMETER = 2.121E-2 * METER
DIME_DIAMETER = 1.791E-2 * METER
QUARTER_DIAMETER = 2.426E-2 * METER
PENNY_MASS = 2.5 * GRAM
NICKEL_MASS = 5.0 * GRAM
DIME_MASS = 0.005 * POUND
QUARTER_MASS = 0.0125 * POUND
MOON_MONTH = 29.530587981 * DAY
MILKYWAY_AGE = 8.3E+9 * JYEAR
ASTRONOMICALUNIT = AU
LIGHTYEAR = LIGHT * JYEAR
PARSEC = 1296000.0 * ASTRONOMICALUNIT / TAU
PROXIMACENTAURI = 39.9E+15 * METER
MILKYWAY_RADIUS = 6.0E+4 * LIGHTYEAR
GALACTICCENTER = 2.64E+4 * LIGHTYEAR
MILKYWAY_MASS = 1.4E+42 * KILOGRAM
SOLARCONSTANT = 1361.0 * WATT / (METER * (METER))
UNIVERSE_AGE = 13.799E+9 * JYEAR
UNIVERSE_RADIUS = 14.26E+9 * PARSEC
UNIVERSE_MASS = 1.46E+53 * KILOGRAM
EINSTEIN = 4.0 * TAU * GRAVITATION / (LIGHT * (LIGHT) * (LIGHT) * (LIGHT))
EINSTEIN_ERR = GRAVITATION_ERR
HUBBLE = 67.66E-3 * METER / (SECOND * PARSEC)
HUBBLE_ERR = 6.0E-3
HUBBLERADIUS = LIGHT / HUBBLE
BHMASSTEMP = ((LIGHT * (LIGHT) * (LIGHT)) * HBAR / (4.0 * TAU *\
         GRAVITATION * BOLTZMANN))
BHMASS_RADIUS = 0.5 * (LIGHT * (LIGHT)) / GRAVITATION
BHMASS3_LIFETIME = (PLANCK * (LIGHT * (LIGHT) * (LIGHT) * (LIGHT))) /\
         (2560.0 * (TAU * (TAU)) * (GRAVITATION * (GRAVITATION)))
BHRADIUS2DENSITY = 1.5 * BHMASS_RADIUS / TAU
BHMASS2_ENTROPY = (PLANCK * LIGHT) / (2.0 * TAU * TAU * GRAVITATION *\
         BOLTZMANN)
BHENTROPY_AREA = (TAU * (LIGHT * (LIGHT) * (LIGHT)) * BOLTZMANN) / (4.0 *\
         PLANCK * GRAVITATION)
BHMASS2POWER = (LIGHT * (LIGHT) * (LIGHT) * (LIGHT) * (LIGHT) * (LIGHT))\
         * PLANCK / (7680.0 * (TAU * (TAU)) * (GRAVITATION * (GRAVITATION)))
BHMASS2_AREA = BHMASS2_ENTROPY * BHENTROPY_AREA
BHMASS2_DENSITY = (BHMASS_RADIUS * (BHMASS_RADIUS)) * BHRADIUS2DENSITY
BEKENSTEININFORMATION = ((TAU * (TAU)) * NAT) / (PLANCK * LIGHT)
BEKENSTEINENTROPY = ((TAU * (TAU)) * BOLTZMANN) / (PLANCK * LIGHT)
ELEVATIONMAX = 8848.0 * METER
ELEVATIONMIN = -10994.0 * METER
KPGBOUNDARY = 65.5E+6 * JYEAR
TRJBOUNDARY = 199.6E+6 * JYEAR
MILKYWAY_DAY = 250.0E+6 * JYEAR
PTRBOUNDARY = 251.4E+6 * JYEAR
NPBOUNDARY = 542.0E+6 * JYEAR
LIFE_AGE = 3.85E+9 * JYEAR
GIANTIMPACT = 4.533E+9 * JYEAR
EARTH_AGE = 4.56717E+9 * JYEAR
PPQ = 1.0E-15
PPT = 1.0E-12
PPB = 1.0E-9
PPM = 1.0E-6
PERMILLE = 1.0E-3
PERCENT = 1.0E-2
SOLID_ANGLE = STERADIAN
SPEED = LENGTH / TIME
ACCELERATION = SPEED / TIME
FORCE = MASS * ACCELERATION
ENERGY = FORCE * LENGTH
ACTION = ENERGY * TIME
POWER = ENERGY / TIME
AREA = (LENGTH * (LENGTH))
VOLUME = (LENGTH * (LENGTH) * (LENGTH))
DENSITY = MASS / VOLUME
SPECIFICHEAT = ENERGY / (MASS * TEMPERATURE)
PRESSURE = FORCE / AREA
VISCOSITY = FORCE * TIME / AREA
FREQUENCY = 1 / TIME
VOLTAGE = POWER / CURRENT
RESISTANCE = VOLTAGE / CURRENT
INDUCTANCE = RESISTANCE * TIME
CAPACITANCE = CHARGE / VOLTAGE
CONDUCTANCE = 1.0 / RESISTANCE
MAGNETICFLUX = VOLTAGE * TIME
MAGNETICINDUCTION = MAGNETICFLUX / AREA
#   IIIIIIIIIIMPORT_MASTER-Function ############################# lf_mod_py #
def lf_mod_py(xx,yy):
   xx = int(xx)
   yy = int(yy)
   retvalu = xx % yy
   if retvalu < 0:
      retvalu += abs(yy)
   return(retvalu)
#   IIIIIIIIIIMPORT_MASTER-Function ################################# atan2 #
def atan2(xx, yy):   return(math.atan2(xx, yy))
#   IIIIIIIIIIMPORT_MASTER-Function ################################## fmod #
def fmod(xx, yy):    return(math.fmod(xx, yy))
#   IIIIIIIIIIMPORT_MASTER-Function ################################# timee #
def timee():         return(time.time())
#   IIIIIIIIIIMPORT_MASTER-Function ################################### abs #
def abs(xx):         return(math.fabs(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################# floor #
def floor(xx):       return(math.floor(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################## ceil #
def ceil(xx):        return(math.ceil(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################ floorl #
def floorl(xx):      return(int(math.floor(xx)))
#   IIIIIIIIIIMPORT_MASTER-Function ################################# ceill #
def ceill(xx):       return(int(math.ceil(xx)))
#   IIIIIIIIIIMPORT_MASTER-Function ################################## sqrt #
def sqrt(xx):        return(math.sqrt(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### exp #
def exp(xx):         return(math.exp(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### log #
def log(xx):         return(math.log(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### pow #
def pow(xx, yy):     return(math.exp(yy * math.log(xx)))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### sin #
def sin(xx):         return(math.sin(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### cos #
def cos(xx):         return(math.cos(xx))
#   IIIIIIIIIIMPORT_MASTER-Function ################################### tan #
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
   xx *= 2.0
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
   return (math.log(xx) / TWOLN)
def log10(xx):
   return (math.log(xx) / math.log(10.0))
def logx(xx, bb):
   return (math.log(xx) / math.log(bb))
def l10(xx):
   return (math.log(xx) / math.log(10.0))
def log2(xx):
   return (math.log(xx) / TWOLN)
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
      lim = ayy / 2.0
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
   if (aa <= 0.0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.log((1.0 - aa) / aa)
      alfa = math.log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      retvalu = 1.0 / (1.0 + math.exp(alfa * (xx - xzero)))
   return (retvalu)
def taninv3(aa, bb, xx):
   if (aa <= 0.0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.tan((aa - 0.5) * PI)
      alfa = math.tan((bb - 0.5) * PI) - taa
      retvalu = taninv(alfa * xx + taa) / PI + 0.5
   return (retvalu)
def sigmoid3d(aa, bb, xx):
   if (aa <= 0.0 or 1.0 <= aa or bb <= 0.0 or 1.0 <= bb):
      retvalu = 0.0
   else:
      taa = math.log((1.0 - aa) / aa)
      alfa = math.log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      expa = math.exp(alfa * (xx - xzero))
      retvalu = -alfa * expa / square(1.0 + expa)
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
   elif (xsq <= 0.0):
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
def k2tempf(temp_k):
   return ((temp_k - K_AT_0TEMPF) * KELVIN / DEGF)
def tempf2k(temp_f):
   return (temp_f * DEGF / KELVIN + K_AT_0TEMPF)
def k2tempr(temp_k):
   return ((temp_k - K_AT_0TEMPR) * KELVIN / DEGR)
def tempr2k(temp_r):
   return (temp_r * DEGR / KELVIN + K_AT_0TEMPR)
def tempf2tempc(temp_f):
   return ((temp_f - TEMPF_AT_0TEMPC) * DEGF)
def tempc2tempf(temp_c):
   return (temp_c / DEGF + TEMPF_AT_0TEMPC)
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
def isneq(xx, yy):
   return (xx < yy or yy < xx)
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
def dist(xx, xmoduli):
   axx = math.fabs(xx)
   axmoduli = math.fabs(xmoduli)
   retvalu = fmod(axx, axmoduli)
   if (axmoduli < 2.0 * retvalu):
      retvalu = axmoduli - retvalu
   return (retvalu)
def ddist(xx, xmoduli):
   if (iszero(xmoduli)):
      retvalu = 0.0
   else:
      axmoduli = math.fabs(xmoduli)
      rema = xx - floor(xx / axmoduli) * axmoduli
      if (axmoduli < 2.0 * rema):
         rema -= axmoduli
      retvalu = rema
   return (retvalu)
def sinc(xx_rad):
   if (xx_rad < 0.0 or 0.0 < xx_rad):
      retvalu = math.sin(xx_rad) / xx_rad
   else:
      retvalu = 1.0
   return (retvalu)
def sincinv(yy):
   min_xx = 4.4934094579090641753079882808139693729311345
   min_yy = sinc(min_xx)
   if (yy <= min_yy):
      nrvx_xx = min_xx
   elif (yy < 1.0):
      aa = yy - min_yy
      bb = 1.0 - yy
      start_xx = (aa * math.sqrt(5.0 * bb) + bb * (min_xx - math.sqrt(6.0\
               * aa))) / (1.0 - min_yy)
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
         term *= nxr_sqr / (ii * (ii - 1.0))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         ii += 2
      retvalu = trigsign * sum_curr * xr_rad / xx_rad
   return (retvalu)
def versin(circ_rad):
   xr_rad = fmod(circ_rad, TAU)
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
      term *= xr_sqr / (ii * (ii - 1.0))
      sum_prev = sum_curr
      sum_curr += term
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      ii += 2
   sum_curr *= - xr_sqr
   if (trigsign < 0.0):
      sum_curr = 2.0 - sum_curr
   return (sum_curr)
def haversin(circ_rad):
   return (versin(circ_rad) / 2.0)
def tur2deg(circ_tur):
   return (circ_tur * TURN / ARCDEG)
def deg2tur(circ_deg):
   return (circ_deg * ARCDEG / TURN)
def tur2rad(circ_tur):
   return (circ_tur * TURN / RADIAN)
def rad2tur(circ_rad):
   return (circ_rad * RADIAN / TURN)
def tur2sec(circ_tur):
   return (circ_tur * TURN / ARCSEC)
def sec2tur(circ_sec):
   return (circ_sec * ARCSEC / TURN)
def rad2deg(circ_rad):
   return (circ_rad * RADIAN / ARCDEG)
def deg2rad(circ_deg):
   return (circ_deg * ARCDEG / RADIAN)
def rad2sec(circ_rad):
   return (circ_rad * RADIAN / ARCSEC)
def sec2rad(circ_sec):
   return (circ_sec * ARCSEC / RADIAN)
def deg2sec(circ_deg):
   return (circ_deg * ARCDEG / ARCSEC)
def sec2deg(circ_sec):
   return (circ_sec * ARCSEC / ARCDEG)
def rad2dms(xx_rads):
   dg = rad2deg(xx_rads)
   dd_deg = floor(dg)
   dg = (dg - dd_deg) * ARCDEG / ARCMIN
   mm_min = floor(dg)
   dg = (dg - mm_min) * ARCMIN / ARCSEC
   return (dd_deg + (mm_min + dg / 100.0) / 100.0)
def rad2dms2(circ_rads):
   dd_deg_arr = [0 for ii in range(2)]
   mm_min_arr = [0 for ii in range(2)]
   dg = rad2deg(circ_rads)
   dg = modf(dg, dd_deg_arr) * ARCDEG / ARCMIN
   dg = modf(dg, mm_min_arr) * ARCMIN / ARCSEC
   return (dd_deg_arr[0] + (mm_min_arr[0] + dg / 100.0) / 100.0)
def dms2rad(circ_dms):
   dd_deg = floor(circ_dms)
   dg = (circ_dms - dd_deg) * 100.0
   mm_min = floor(dg)
   dg = (dg - mm_min) * 100.0
   return ((dg * ARCSEC + mm_min * ARCMIN + dd_deg * ARCDEG) / RADIAN)
def deg2dms(circ_deg):
   return (rad2dms(deg2rad(circ_deg)))
def dms2deg(circ_dms):
   return (rad2deg(dms2rad(circ_dms)))
def cot(circ_rad):
   return (math.cos(circ_rad) / math.sin(circ_rad))
def sec(circ_rad):
   return (1.0 / math.cos(circ_rad))
def csc(circ_rad):
   return (1.0 / math.sin(circ_rad))
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
def sinh(hyp_rad):
   return ((math.exp(hyp_rad) - math.exp(-hyp_rad)) / 2.0)
def cosh(hyp_rad):
   return ((math.exp(hyp_rad) + math.exp(-hyp_rad)) / 2.0)
def tanh(hyp_rad):
   return (sinh(hyp_rad) / cosh(hyp_rad))
def coth(hyp_rad):
   return (cosh(hyp_rad) / sinh(hyp_rad))
def sech(hyp_rad):
   return (1.0 / cosh(hyp_rad))
def csch(hyp_rad):
   return (1.0 / sinh(hyp_rad))
def gd(hyp_rad):
   return (2.0 * math.atan2(math.exp(hyp_rad), 1.0) - PI / 2.0)
def gdinv(xx):
   xxn = fmods(xx, PI)
   return (math.log(math.fabs((1.0 + math.sin(xxn)) / math.cos(xxn))))
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
def sind(circ_deg):
   return (math.sin(deg2rad(circ_deg)))
def sindinv(xx):
   return (rad2deg(sininv(xx)))
def cosd(circ_deg):
   return (math.cos(deg2rad(circ_deg)))
def cosdinv(xx):
   return (rad2deg(cosinv(xx)))
def tand(circ_deg):
   return (math.tan(deg2rad(circ_deg)))
def tandinv(xx):
   return (rad2deg(taninv(xx)))
def cotd(circ_deg):
   return (cot(deg2rad(circ_deg)))
def cotdinv(xx):
   return (rad2deg(cotinv(xx)))
def secd(circ_deg):
   return (sec(deg2rad(circ_deg)))
def secdinv(xx):
   return (rad2deg(secinv(xx)))
def cscd(circ_deg):
   return (csc(deg2rad(circ_deg)))
def cscdinv(xx):
   return (rad2deg(cscinv(xx)))
def atan2d(xx, yy):
   return (rad2deg(math.atan2(xx, yy)))
def sint(circ_tur):
   return (math.sin(tur2rad(circ_tur)))
def sintinv(xx):
   return (rad2tur(sininv(xx)))
def cost(circ_tur):
   return (math.cos(tur2rad(circ_tur)))
def costinv(xx):
   return (rad2tur(cosinv(xx)))
def tant(circ_tur):
   return (math.tan(tur2rad(circ_tur)))
def tantinv(xx):
   return (rad2tur(taninv(xx)))
def cott(circ_tur):
   return (cot(tur2rad(circ_tur)))
def cottinv(xx):
   return (rad2tur(cotinv(xx)))
def sect(circ_tur):
   return (sec(tur2rad(circ_tur)))
def sectinv(xx):
   return (rad2tur(secinv(xx)))
def csct(circ_tur):
   return (csc(tur2rad(circ_tur)))
def csctinv(xx):
   return (rad2tur(cscinv(xx)))
def atan2t(xx, yy):
   return (rad2tur(math.atan2(xx, yy)))
def sqrtxp1m1(xx):
   if (math.fabs(xx) < 0.01):
      retvalu = ((((((((-429.0 / 32768.0) * xx + 33.0 / 2048.0) * xx -\
               21.0 / 1024.0) * xx + 7.0 / 256.0) * xx - 5.0 / 128.0) *\
               xx + 1.0 / 16.0) * xx - 1.0 / 8.0) * xx + 1.0 / 2.0) * xx
   else:
      retvalu = math.sqrt(1.0 + xx) - 1.0
   return (retvalu)
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
      sum_curr = 1.0 / (start * (start + 1.0))
      for jj in range(start, 0, -2):
         sum_curr += 1.0
         sum_curr *= xr_sqr / (jj * (jj - 1.0))
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
      if (yy < 0.0):
         init_xx = -init_xx
      nrvx_xx = init_xx
      for nrvx_ii in range(0, 21, 1):
         nrvx_xp = nrvx_xx
         nrvx_dy = 3.0 * nrvx_xx * nrvx_xx
         if (iszero(nrvx_dy)):
            break
         nrvx_yy = nrvx_xx * nrvx_xx * nrvx_xx - yy
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
def print_array(arr_size, data_arr_pc):
   for ii in range(0, arr_size + 0, 1):
      print(str(data_arr_pc[ii]), end='')
      print(" ", end='')
   return int(arr_size)
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
def contfra_print(orig):
   return int((lf_continued_fraction(orig, -1)))
def contfrac_print(orig):
   return int((lf_continued_fraction(orig, 0)))
def contfracd_print(orig):
   return int((lf_continued_fraction(orig, 1)))
def num2char_print(num):
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
def base_out_print(num, baset):
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
      num2char_print(digits_arr[ii])
   return int(dig_count)
def base_out_fix_print(num, baset, min_sz):
   digits_arr = [0 for ii in range(65)]
   if (num < 0):
      num = -num
   dig_count = 0
   while True:
      digits_arr[dig_count] = num % baset
      dig_count += 1
      num = floorl(num / baset)
      if (num == 0):
         break# loop AWAIT
   for ii in range(dig_count, min_sz + 0, 1):
      num2char_print(0)
   for ii in range(dig_count - 1, -1, -1):
      num2char_print(digits_arr[ii])
   return int(min_sz)
def base_outf_print(num, baset):
   dig_count = 0
   if (num < 0.0):
      print("-", end='')
      num = -num
      dig_count += 1
   dig_count += base_out_print(floorl(num), baset) + 1
   print(".", end='')
   lim = ceill(-lg(DBLEPS) / lg(baset))
   frc = frac(num) * baset
   ii = 1
   while (ii <= lim and not iszero(frc)):
      dig = floorl(frc)
      num2char_print(dig)
      frc -= dig
      frc *= baset
      ii += 1
   return int(dig_count + lim)
def fvoa(payment, rate_per_paymt, num_pays):
   ttp = math.pow(1.0 + rate_per_paymt, num_pays)
   return (payment * (ttp - 1.0) / rate_per_paymt)
def fvad(payment, rate_per_paymt, num_pays):
   return (fvoa(payment, rate_per_paymt, num_pays) * (1.0 + rate_per_paymt))
def pvoa(payment, rate_per_paymt, num_pays):
   ntp = math.pow(1.0 + rate_per_paymt, - num_pays)
   return (payment * (1.0 - ntp) / rate_per_paymt)
def pvad(payment, rate_per_paymt, num_pays):
   ntp = math.pow(1.0 + rate_per_paymt, - num_pays)
   return (payment * (1.0 - ntp) / rate_per_paymt * (1.0 + rate_per_paymt))
def loanvalue(payment, rate_per_paymt, num_pays):
   return (fvad(payment, rate_per_paymt, num_pays))
def loanpayment(loan_amt, rate_per_paymt, num_pays):
   ttp = math.pow(1.0 + rate_per_paymt, num_pays)
   return (loan_amt * rate_per_paymt * ttp / (ttp - 1.0))
def loanrate(loan_amt, payment, num_pays):
   scvx_dx = 0.01
   scvx_xx = 0.05
   scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays)
   for scvx_ii in range(0, 21, 1):
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx += scvx_dx
      if (iseq(scvx_xp, scvx_xx)):
         break
      scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays)
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def f21(aa, bb, cc, zz):
   if (1 < math.fabs(zz)):
      sum_curr = 0.0
   else:
      sum_curr = 1.0
      term = 1.0
      nn = 0
      while True:
         term *= ((aa + nn) * (bb + nn) * zz / ((cc + nn) * (1 + nn)))
         sum_prev = sum_curr
         sum_curr += term
         if (iseq(sum_curr, sum_prev)):
            break# loop AWAIT
         nn += 1
   return (sum_curr)
def f11(aa, bb, zz):
   if (1 < math.fabs(zz)):
      sum_curr = 0.0
   else:
      sum_curr = 1.0
      term = 1.0
      nn = 0
      while True:
         term *= ((aa + nn) * zz / ((bb + nn) * (1 + nn)))
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
      snn = (wjj + 2.0) / (2.0 * (wjj + 1.0))
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
         near_w = ((((((((((226287557.0 / 37623398400.0) * tnn - 1963.0 /\
                  204120.0) * tnn + 680863.0 / 43545600.0) * tnn - 221.0\
                  / 8505.0) * tnn + 769.0 / 17280.0) * tnn - 43.0 /\
                  540.0) * tnn + 11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn +\
                  1.0) * tnn - 1.0)
      elif (xx < - 0.0510129):
         numer = (((6.5794931769023040E+2) * xx + 2.5388810188892484E+2)\
                  * xx - 7.8141767239074400)
         denom = ((((((1.4779341280760887E+3) * xx +\
                  9.6217849696986600E+2) * xx + 6.8260739999094280E+2) *\
                  xx + 9.9985670831076100E+1) * xx -\
                  6.0439587136908080E+1) * xx + 1.0)
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
def expintegral1(xx):
   retvalu = Ein(xx) - EULER - math.log(math.fabs(xx))
   return (retvalu)
def expintegraln(nn, xx):
   return (math.pow(xx, nn - 1) * uigamma(1 - nn, xx))
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
   xsq = xx
   while (0 < nn):
      if (isodd(nn)):
         pp *= xsq
      xsq *= xsq
      nn = (nn >> 1)
   return int(pp)
def atothenmodp(naa, nn, pp):
   if (pp == 0):
      retvalu = 0
   else:
      if (pp < 0):
         pp = -pp
      if (nn < 0):
         nn = nn % pp
         if (nn < 0):
            nn += pp
      retvalu = 1
      cc = naa % pp
      while (0 < nn):
         if (isodd(nn)):
            retvalu = (retvalu * cc) % pp
            nn = (nn - 1) / 2
         else:
            nn /= 2
         cc = (cc * cc) % pp
   return int(retvalu)
def atothenmodx(xaa, xnn, xpp):
   return (frac(math.exp(xnn * math.log(xaa) - math.log(xpp))) * xpp)
def ctz(nn):
   zero_count = 0
   while (0 == (nn & 1)):
      zero_count += 1
      nn = (nn >> 1)
   return int(zero_count)
def gcd(naa, nbb):
   naa = math.fabs(naa)
   nbb = math.fabs(nbb)
   if (nbb <= 0):
      nbb = naa
   else:
      while (0 < naa):
         cc = naa
         naa = nbb % naa
         nbb = cc
   return int(nbb)
def gcda(array_count, num_arr_pc):
   gc = num_arr_pc[0]
   for ind in range(1, array_count + 0, 1):
      gc = gcd(gc, num_arr_pc[ind])
   return int(gc)
def lcm(naa, nbb):
   return int((naa * nbb / gcd(naa, nbb)))
def lcam(naa, nbb):
   if (nbb < naa):
      ii = naa
      naa = nbb
      nbb = ii
   ii = nbb
   while True:
      jj = mods(ii, naa)
      if (- 2 <= jj and jj <= 2):
         break# loop AWAIT
      ii += nbb
   if (jj == -2):
      ii += 1
   elif (0 <= jj):
      ii -= 1
   return int(ii)
def lcams(naa, nbb):
   if (nbb < naa):
      ii = naa
      naa = nbb
      nbb = ii
   ii = 2 * nbb
   while True:
      jj = mods(ii, naa)
      if (- 2 <= jj and jj <= 2):
         break# loop AWAIT
      ii += nbb
   if (jj == -2):
      ii += 1
   elif (0 <= jj):
      ii -= 1
   return int(ii)
def lcantim(naa, nbb):
   if (isposint(naa) and isposint(nbb)):
      odd_mask = 0
      if (isodd(naa)):
         odd_mask = 1
      if (isodd(nbb)):
         odd_mask += 2
      if (2 == odd_mask or (nbb < naa and odd_mask != 1)):
         ii = nbb
         nbb = naa
         naa = ii
      hnaa = floorl(naa / 2)
      hnbb = floorl(nbb / 2)
      ii = hnbb
      while True:
         rema = dist(ii, naa)
         if (rema == hnaa):
            break
         elif (odd_mask == 3 and rema == hnaa + 1):
            break
         ii += nbb
         if (naa * nbb <= ii):
            break# loop AWAIT
      if (naa * nbb <= ii):
         ii = 0
   else:
      ii = 0
   return int(ii)
def factor(number_to_factor, ret_fctr_arr_p):
   fctr_ind = 0
   number_to_factor = math.fabs(number_to_factor)
   if (number_to_factor <= 3):
      ret_fctr_arr_p[fctr_ind] = number_to_factor
      fctr_ind = 1
   else:
      for pp in range(2, 4, 1):
         while (0 == number_to_factor % pp):
            ret_fctr_arr_p[fctr_ind] = pp
            fctr_ind += 1
            number_to_factor /= pp
      pp = 1
      inc = 4
      while True:
         pp += inc
         inc = 6 - inc
         while (0 == number_to_factor % pp):
            ret_fctr_arr_p[fctr_ind] = pp
            fctr_ind += 1
            number_to_factor /= pp
         if (number_to_factor < pp * pp):
            break# loop AWAIT
      if (1 < number_to_factor):
         ret_fctr_arr_p[fctr_ind] = number_to_factor
         fctr_ind += 1
   ret_fctr_arr_p[fctr_ind] = 0
   return int(fctr_ind)
def modulo(nxx, modyy):
   retvalu = nxx % modyy
   if (retvalu < 0):
      retvalu += math.fabs(modyy)
   return int(retvalu)
def mods(nxx, modyy):
   amodyy = floorl(math.fabs(modyy))
   anxx = math.fabs(nxx)
   retvalu = anxx % amodyy
   if (0 < retvalu):
      while (amodyy < 2 * retvalu):
         retvalu -= amodyy
   elif (retvalu < 0):
      while (2 * retvalu < - amodyy):
         retvalu += amodyy
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
   jj = nn
   while True:
      ii = pfl(jj)
      jj /= ii
      if (jj == 1):
         break# loop AWAIT
   return int(ii)
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
def lf_primeprev(pp):
   if (pp <= 7):
      if (5 < pp):
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
def lf_primenext(pp):
   if (pp < 7):
      if (pp < 2):
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
def primeprev(pp):
   if (0 <= pp):
      retvalu = lf_primeprev(pp)
   else:
      retvalu = -lf_primenext(-pp)
   return int(retvalu)
def primenext(pp):
   if (0 <= pp):
      retvalu = lf_primenext(pp)
   else:
      retvalu = -lf_primeprev(-pp)
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
            ps_arr[nn] = ps_arr[nn - 1] + pm_one * math.pow(nn + 2, - xx)
            tt += 1
            temp_arr[nn] = ps_arr[nn]
            for kk in range(nn - 1, -1, -1):
               temp_arr[kk] = (temp_arr[kk] + temp_arr[kk + 1]) / 2.0
            sump = sum
            sum = temp_arr[0]
            if (iseq(sump, sum)):
               break# loop AWAIT
            nn += 1
            if (400 <= nn):
               break# loop AWAIT
         s_ind = floorl(nn / 3)
         sum = (4 * temp_arr[s_ind] + 3 * temp_arr[s_ind + 1]) / 7
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
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
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
   naa = 1
   nbb = 0
   while (0 < nn):
      if (isodd(nn)):
         nbb += naa
      else:
         naa += nbb
      nn = (nn >> 1)
   return int(nbb)
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
      ff = pp + rr
      gg = qq + ss
      if (xx < ff / gg):
         rr = ff
         ss = gg
      else:
         yy += dd
         pp = ff
         qq = gg
      if (iseq(yy + dd, yy)):
         break# loop AWAIT
   return (yy)
def cantorxx(nbb, ee, xx):
   if (ee < 0.0 or nbb < 0.0 or 1.0 < ee + nbb):
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
         elif (nbb <= rest):
            yy += dd
            break
         else:
            rest = frac(rest / nbb)
         dd /= 2.0
         if (iseq(yy + dd, yy) or iszero(rest)):
            break# loop AWAIT
   return (yy)
def cantor(xx):
   return (cantorxx(1.0 / 3.0, 1.0 / 3.0, xx))
def cantorul(bb, ee, xx):
   return (math.pow(0.5, math.log(xx) / math.log(bb) + 0.0 * ee))
def cantorll(bb, ee, xx):
   return (math.pow(0.5, math.log(xx / (1.0 - ee)) / math.log(bb) + 1.0))
def dlogx(naa, nbb, nn):
   pp = naa
   retvalu = -1
   for ii in range(1, nn + 1, 1):
      if (pp == nbb):
         retvalu = ii
         break
      pp = (pp * naa) % nn
   return int(retvalu)
def dlog(naa, nbb, nn):
   log_arr = []
   if (naa == nbb):
      retvalu = 1
   elif (naa <= 0 or nbb <= 0 or nn <= 0):
      retvalu = -1
   elif (1 < gcd(naa, nn)):
      retvalu = dlogx(naa, nbb, nn)
   elif (not isprimitiveroot(naa, nn)):
      retvalu = dlogx(naa, nbb, nn)
   else:
      sqnn = ceill(math.sqrt(nn))
      for nzzn in range(len(log_arr), int(nn)):
         log_arr.append(0)
      for ii in range(0, nn + 0, 1):
         log_arr[ii] = 0
      atothesqnn = atothenmodp(naa, sqnn, nn)
      cur = atothesqnn
      for ii in range(1, sqnn + 1, 1):
         if (log_arr[cur] == 0):
            log_arr[cur] = ii
         cur = (cur * atothesqnn) % nn
      cur = nbb % nn
      retvalu = -1
      for ii in range(0, sqnn + 1, 1):
         if (0 < log_arr[cur]):
            atothens = log_arr[cur] * sqnn - ii
            if (atothens < nn):
               retvalu = atothens
               break
         cur = (cur * naa) % nn
   return int(retvalu)
def dlog1(naa, nn):
   return int((dlog(naa, 1, nn)))
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
         for nzzn in range(len(lv_mertens_arr), int(lv_mertens_end)):
            lv_mertens_arr.append(0)
         lv_mertens_arr[0] = 0
         lv_mertens_arr[1] = 1
         lv_mertens_arr[2] = 0
         lv_mertens_arr[3] = -1
      if (lv_mertens_end <= nn):
         kk = lv_mertens_end
         lv_mertens_end = nn + 1
         for nzzn in range(len(lv_mertens_arr), int(lv_mertens_end)):
            lv_mertens_arr.append(0)
         while (kk < lv_mertens_end):
            lv_mertens_arr[kk] = lv_mertens_arr[kk - 1] + mobius(kk)
            kk += 1
      retvalu = lv_mertens_arr[nn]
   return int(retvalu)
def has_primitiveroot_f(array_size, fac_arr_pc):
   ind = 0
   if (1 < array_size):
      if (fac_arr_pc[0] == 2):
         ind += 1
      if (2 < fac_arr_pc[ind]):
         while (ind < array_size - 1):
            if (fac_arr_pc[ind] < fac_arr_pc[ind + 1]):
               break
            ind += 1
   return (ind == (array_size - 1))
def sigma0_f(array_size, fac_arr_pc):
   retvalu = 1
   exp_i = 2
   for ind in range(0, array_size - 1, 1):
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]):
         exp_i += 1
      else:
         retvalu *= exp_i
         exp_i = 2
   return int(retvalu * exp_i)
def sigma1_f(array_size, fac_arr_pc):
   retvalu = 1
   exp_i = 2
   prm_prev = fac_arr_pc[0]
   for ind in range(1, array_size + 0, 1):
      prm_curr = fac_arr_pc[ind]
      if (prm_prev == prm_curr):
         exp_i += 1
      else:
         retvalu *= (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
         exp_i = 2
         prm_prev = prm_curr
   return int((retvalu * (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)))
def sigma_f(powy, array_size, fac_arr_pc):
   if (powy == 0):
      retvalu = sigma0_f(array_size, fac_arr_pc)
   elif (powy == 1):
      retvalu = sigma1_f(array_size, fac_arr_pc)
   else:
      retvalu = 1
      exp_i = 2
      prm_prev = fac_arr_pc[0]
      for ind in range(1, array_size + 0, 1):
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
def ispractical_f(array_size, fac_arr_pc):
   if (2 < fac_arr_pc[0]):
      retvalu_bol = False
   else:
      retvalu_bol = True
      sgma = 1
      exp_i = 2
      prm_prev = fac_arr_pc[0]
      for ind in range(1, array_size + 0, 1):
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
def issquarefree_f(array_size, fac_arr_pc):
   retvalu_bol = True
   for ind in range(1, array_size + 0, 1):
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]):
         retvalu_bol = False
         break
   return (retvalu_bol)
def totient_f(array_size, fac_arr_pc):
   retvalu = 1
   for ind in range(0, array_size - 1, 1):
      if (fac_arr_pc[ind] == fac_arr_pc[ind + 1]):
         retvalu *= fac_arr_pc[ind]
      else:
         retvalu *= (fac_arr_pc[ind] - 1)
   retvalu *= (fac_arr_pc[array_size - 1] - 1)
   return int(retvalu)
def mobius_f(array_size, fac_arr_pc):
   if (iseven(array_size)):
      retvalu = 1
   else:
      retvalu = -1
   for ind in range(1, array_size + 0, 1):
      if (fac_arr_pc[ind - 1] == fac_arr_pc[ind]):
         retvalu = 0
         break
   return int(retvalu)
def prime0_f(array_size, fac_arr_pc):
   retvalu = 1
   prm_prev = fac_arr_pc[0]
   for ind in range(1, array_size + 0, 1):
      prm_curr = fac_arr_pc[ind]
      if (prm_prev < prm_curr):
         retvalu += 1
      prm_prev = prm_curr
   return int(retvalu)
LC_FACTORS_CNT = 65
def factor_print(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   print(str(nn), end='')
   print(":", end='')
   for ind in range(0, array_size + 0, 1):
      print(" ", end='')
      print(str(fac_arr[ind]), end='')
   print("\n", end='')
   return int(array_size)
def mobius(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   return int((mobius_f(array_size, fac_arr)))
def isprimitiveroot(naa, nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (naa <= 1 or 1 < gcd(naa, nn)):
      retvalu_bol = False
   elif (naa == 2):
      retvalu_bol = isodd(nn)
   else:
      toti = totient(nn)
      array_size_toti = factor(toti, fac_arr)
      if (atothenmodp(naa, toti / fac_arr[0], nn) == 1):
         retvalu_bol = False
      else:
         retvalu_bol = True
         for ind in range(1, array_size_toti + 0, 1):
            if (fac_arr[ind - 1] != fac_arr[ind]):
               prm = fac_arr[ind]
               if (atothenmodp(naa, toti / prm, nn) == 1):
                  retvalu_bol = False
                  break
   return (retvalu_bol)
def prime0(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   return int((prime0_f(array_size, fac_arr)))
def prime1(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   return int((factor(nn, fac_arr)))
def sigma0(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   return int((sigma0_f(array_size, fac_arr)))
def sigma1(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   return int((sigma1_f(array_size, fac_arr)))
def sigma(powy, nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn <= 1):
      retvalu = nn
   elif (powy == 0):
      retvalu = sigma0(nn)
   elif (powy == 1):
      retvalu = sigma1(nn)
   else:
      array_size = factor(nn, fac_arr)
      retvalu = sigma_f(powy, array_size, fac_arr)
   return int(retvalu)
def totient(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   array_size = factor(nn, fac_arr)
   return int((totient_f(array_size, fac_arr)))
def has_primitiveroot(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn < 2):
      retvalu_bol = False
   else:
      array_size = factor(nn, fac_arr)
      retvalu_bol = has_primitiveroot_f(array_size, fac_arr)
   return (retvalu_bol)
def issquarefree(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn < 1):
      retvalu_bol = False
   elif (nn < 3):
      retvalu_bol = True
   else:
      array_size = factor(nn, fac_arr)
      retvalu_bol = issquarefree_f(array_size, fac_arr)
   return (retvalu_bol)
def ispractical(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn < 1):
      retvalu_bol = False
   elif (nn < 3):
      retvalu_bol = True
   else:
      array_size = factor(nn, fac_arr)
      retvalu_bol = ispractical_f(array_size, fac_arr)
   return (retvalu_bol)
def primitiveroot(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn < 2):
      retvalu = 0
   elif (nn < 5):
      retvalu = nn - 1
   elif (not has_primitiveroot(nn)):
      retvalu = 0
   else:
      toti = totient(nn)
      array_size_toti = factor(toti, fac_arr)
      ii = 2
      retvalu = 0
      while (ii < nn and retvalu <= 0):
         if (gcd(ii, nn) == 1):
            retvalu = ii
            prm = 0
            for ind in range(0, array_size_toti + 0, 1):
               if (prm != fac_arr[ind]):
                  prm = fac_arr[ind]
                  if (atothenmodp(ii, toti / prm, nn) == 1):
                     retvalu = 0
                     break
         ii += 1
   return int(retvalu)
def carmichael(nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn < 8):
      lmbd = totient(nn)
   else:
      array_size = factor(nn, fac_arr)
      ind = 0
      while (ind < array_size and fac_arr[ind] == 2):
         ind += 1
      if (2 < ind):
         lmbd = (1 << (ind - 2))
      else:
         lmbd = 1
      while (ind < array_size):
         prm = fac_arr[ind]
         pk = prm - 1
         while (ind < array_size - 1 and prm == fac_arr[ind + 1]):
            ind += 1
            pk *= prm
         lmbd = lcm(lmbd, pk)
         ind += 1
   return int(lmbd)
def znorder(naa, nn):
   fac_arr = [0 for ii in range(LC_FACTORS_CNT)]
   if (nn == 0 or naa == 0):
      kk = 0
   else:
      if (nn < 0):
         nn = -nn
      while (naa < 0):
         naa += nn
      if (nn <= 1):
         kk = nn
      elif (naa <= 1):
         kk = naa
      elif (1 < gcd(naa, nn)):
         kk = 0
      else:
         kk = carmichael(nn)
         array_sizekk = factor(kk, fac_arr)
         exp_i = 1
         for ind in range(0, array_sizekk + 0, 1):
            prm_i = fac_arr[ind]
            kk /= prm_i
            if (ind + 1 < array_sizekk and prm_i == fac_arr[ind + 1]):
               exp_i += 1
            else:
               ab = atothenmodp(naa, kk, nn)
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
      gdn = gcd(denm, basee)
      denm /= gdn
      if (1 == gdn):
         break# loop AWAIT
   if (denm == 1):
      retvalu = 0
   else:
      retvalu = znorder(basee, denm)
   return int(retvalu)
def kevy_print(den, start, basee):
   log_start = floorl(math.log(start) / math.log(basee) + 1)
   baseek = math.pow(basee, log_start)
   overall_len = (dlog(basee, den, den * baseek - 1) + 3) * log_start
   leny = 0
   numer = start
   valu = start
   while True:
      base_out_fix_print(valu, basee, log_start)
      leny += log_start
      valu = floorl(numer / den)
      rema = numer % den
      numer = rema * baseek + valu
      if (numer == start):
         break
      if (2 * overall_len < leny):
         break# loop AWAIT
   return int(leny)
def eulerphi(nn):
   return int((totient(nn)))
def znorder__1(nbb, mdls):
   if (1 < gcd(nbb, mdls)):
      nn = 0
   else:
      pp = 1
      nn = 1
      while True:
         pp = (pp * nbb) % mdls
         if (pp == 1):
            break# loop AWAIT
         nn += 1
         if (mdls <= nn):
            break# loop AWAIT
   return int(nn)
def bkn(nbb, kk):
   return int((znorder(nbb, kk * nbb - 1)))
def bkbn(nbb, kk, cc):
   mdls = kk * nbb - 1
   if (mdls % cc == 0):
      mdls /= cc
   return int((znorder(nbb, mdls)))
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
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def lf_n2primish(nn):
   if (nn == 0):
      retvalu = 0
   elif (nn < 3):
      retvalu = nn + 1
   elif (isodd(nn)):
      retvalu = 3 * nn - 4
   else:
      retvalu = 3 * nn - 5
   return int(retvalu)
def n2primish(nn):
   if (0 < nn):
      retvalu = lf_n2primish(nn)
   else:
      retvalu = -lf_n2primish(-nn)
   return int(retvalu)
def primenth__1(nn):
   if (nn < 0):
      retvalu = 0
   elif (nn < 4.25):
      retvalu = 1.6 * nn + 0.1
   else:
      logn = math.log(nn)
      loglogn = math.log(logn)
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0) / logn -\
               ((loglogn - 6.0) * loglogn + 11.0) / (2.0 * logn * logn))\
               + 3.5 * math.sqrt(nn) + 10
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
            sys.stderr.write("primenth:" + "PRIME_ISNT_PM_1_MOD_6")
            sys.exit(1)
      else:
         pp = 11
         ii = 5
         inc = 2
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
      ff = 1
      while True:
         term *= - xxsqr_div_four / (ff * (avv + ff))
         sum_prev = sum
         sum += term
         if (iseq(sum, sum_prev)):
            break# loop AWAIT
         ff += 1
      if (isposint(-vv) and isodd(vv)):
         sum = -sum
   return (sum)
def bessYv(vv, xx):
   if (isint(vv)):
      retvalu = bessYn(vv, xx)
   else:
      vvpi = PI * vv
      retvalu = (math.cos(vvpi) * bessJv(vv, xx) - bessJv(-vv, xx)) /\
               math.sin(vvpi)
   return (retvalu)
def bessI0(xx):
   if (xx < 7.75):
      yy = xx * xx / 4.0
      retvalu = (((((((((((((((((1.1497640034400735733456400E-29) * yy +\
               2.0732014503197852176921968E-27) * yy +\
               5.9203280572170548134753422E-25) * yy +\
               1.3141332422663039834197910E-22) * yy +\
               2.5791926805873898803749321E-20) * yy +\
               4.3583591008893599099577755E-18) * yy +\
               6.2760839879536225394314453E-16) * yy +\
               7.5940582595094190098755663E-14) * yy +\
               7.5940584360755226536109511E-12) * yy +\
               6.1511873265092916275099070E-10) * yy +\
               3.9367598891475388547279760E-8) * yy +\
               1.9290123456788994104574754E-6) * yy +\
               6.9444444444444568581891535E-5) * yy +\
               1.7361111111111110294015271E-3) * yy +\
               2.7777777777777777805664954E-2) * yy +\
               2.4999999999999999999629693E-1) * yy +\
               1.0000000000000000000000801) * yy + 1.0
   else:
      yy = 1.0 / xx
      retvalu = (((((((((((((((((((((((1.6069467093441596329340754E+16) *\
               yy - 2.1363029690365351606041265E+16) * yy +\
               1.3012646806421079076251950E+16) * yy -\
               4.8049082153027457378879746E+15) * yy +\
               1.1989242681178569338129044E+15) * yy -\
               2.1323049786724612220362154E+14) * yy +\
               2.7752144774934763122129261E+13) * yy -\
               2.6632742974569782078420204E+12) * yy +\
               1.8592340458074104721496236E+11) * yy -\
               8.9270060370015930749184222E+9) * yy +\
               2.3518420447411254516178388E+8) * yy +\
               2.6092888649549172879282592E+6) * yy -\
               5.9355022509673600842060002E+5) * yy +\
               3.1275740782277570164423916E+4) * yy -\
               1.0026890180180668595066918E+3) * yy +\
               2.2725199603010833194037016E+1) * yy -\
               1.0699095472110916094973951E-1) * yy +\
               9.4085204199017869159183831E-2) * yy +\
               4.4718622769244715693031735E-2) * yy +\
               2.9219501690198775910219311E-2) * yy +\
               2.8050628884163787533196746E-2) * yy +\
               4.9867785050353992900698488E-2) * yy +\
               3.9894228040143265335649948E-1)
      retvalu *= math.exp(xx) / math.sqrt(xx)
   return (retvalu)
def bessI1(xx):
   if (xx < 7.75):
      yy = xx * xx / 4.0
      aa = (((((((((((((1.332898928162290861E-23) * yy +\
               1.625212890947171108E-21) * yy + 3.410720494727771276E-19)\
               * yy + 5.220157095351373194E-17) * yy +\
               6.904822652741917551E-15) * yy + 7.593969849687574339E-13)\
               * yy + 6.834657311305621830E-11) * yy +\
               4.920949692800671435E-9) * yy + 2.755731926254790268E-7) *\
               yy + 1.157407407354987232E-5) * yy +\
               3.472222222225921045E-4) * yy + 6.944444444444341983E-3) *\
               yy + 8.333333333333333803E-2)
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0
   elif (xx < 500.0):
      yy = 1.0 / xx
      retvalu = ((((((((((((((((((((((-2.213318202179221945E+15) * yy +\
               3.146401654361325073E+15) * yy - 2.067285045778906105E+15)\
               * yy + 8.325554073334618015E+14) * yy -\
               2.298849639457172489E+14) * yy + 4.614040809616582764E+13)\
               * yy - 6.967602516005787001E+12) * yy +\
               8.087824484994859552E+11) * yy - 7.313784438967834057E+10)\
               * yy + 5.192386898222206474E+9) * yy -\
               2.903390398236656519E+8) * yy + 1.277677779341446497E+7) *\
               yy - 4.404655582443487334E+5) * yy +\
               1.178785865993440669E+4) * yy - 2.426181371595021021E+2) *\
               yy + 3.458284470977172076) * yy - 1.528189554374492735E-1)\
               * yy - 5.719036414430205390E-2) * yy -\
               4.090895951581637791E-2) * yy - 4.675104253598537322E-2) *\
               yy - 1.496033551613111533E-1) * yy +\
               3.989422804014406054E-1) * math.exp(xx) / math.sqrt(xx)
   else:
      yy = 1.0 / xx
      aa = math.exp(xx / 2.0)
      retvalu = (((((-5.843630344778927582E-2) * yy -\
               4.090421597376992892E-2) * yy - 4.675105322571775911E-2) *\
               yy - 1.496033551467584157E-1) * yy +\
               3.989422804014314820E-1) * aa / math.sqrt(xx)
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
      sump = (((((5.8599221412826100000E-4) * xz +\
               1.3166052564989571850E-1) * xz + 1.1999463724910714109E+1)\
               * xz + 4.6850901201934832188E+2) * xz +\
               5.9169059852270512312E+3) * xz + 2.4708152720399552679E+3
      sumq = ((1.0) * xz - 2.4994418972832303646E+2) * xz +\
               2.1312714303849120380E+4
      sumf = (((-1.6414452837299064100) * xz - 2.9601657892958843866E+2)\
               * xz - 1.7733784684952985886E+4) * xz -\
               4.0320340761145482298E+5
      sumg = ((1.0 * xz - 2.5064972445877992730E+2) * xz +\
               2.9865713163054025489E+4) * xz - 1.6128136304458193998E+6
      retvalu = sump / sumq - math.log(xx) * (xz * sumf / sumg + 1.0)
   elif (xx < DBLMAXLN):
      xz = 1.0 / xx
      sump = (((((((((1.1394980557384778174E+2) * xz +\
               3.6832589957340267940E+3) * xz + 3.1075408980684392399E+4)\
               * xz + 1.0577068948034021957E+5) * xz +\
               1.7398867902565686251E+5) * xz + 1.5097646353289914539E+5)\
               * xz + 7.1557062783764037541E+4) * xz +\
               1.8321525870183537725E+4) * xz + 2.3444738764199315021E+3)\
               * xz + 1.1600249425076035558E+2
      sumq = ((((((((((1.0) * xz + 2.0013443064949242491E+2) * xz +\
               4.4329628889746408858E+3) * xz + 3.1474655750295278825E+4)\
               * xz + 9.7418829762268075784E+4) * xz +\
               1.5144644673520157801E+5) * xz + 1.2689839587977598727E+5)\
               * xz + 5.8824616785857027752E+4) * xz +\
               1.4847228371802360957E+4) * xz + 1.8821890840982713696E+3)\
               * xz + 9.2556599177304839811E+1
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
               9.9991373567429309922E+1) * xz + 7.1885382604084798576E+3)\
               * xz + 1.7733324035147015630E+5) * xz +\
               7.1938920065420586101E+5) * xz - 2.2149374878243304548E+6
      sumq = (((1.0) * xz - 2.8143915754538725829E+2) * xz +\
               3.7264298672067697862E+4) * xz - 2.2149374878243304548E+6
      sumf = ((((-2.2795590826955002390E-1) * xz -\
               5.3103913335180275253E+1) * xz - 4.5051623763436087023E+3)\
               * xz - 1.4758069205414222471E+5) * xz -\
               1.3531161492785421328E+6
      sumg = (((1.0) * xz - 3.0507151578787595807E+2) * xz +\
               4.3117653211351080007E+4) * xz - 2.7062322985570842656E+6
      retvalu = (xz * math.log(xx) * sumf / sumg + sump / sumq) / xx
   elif (xx < DBLMAXLN):
      xz = 1.0 / xx
      sump = ((((((((((6.4257745859173138767E-2) * xz +\
               7.5584584631176030810) * xz + 1.3182609918569941308E+2) *\
               xz + 8.1094256146537402173E+2) * xz +\
               2.3123742209168871550E+3) * xz + 3.4540675585544584407E+3)\
               * xz + 2.8590657697910288226E+3) * xz +\
               1.3319486433183221990E+3) * xz + 3.4122953486801312910E+2)\
               * xz + 4.4137176114230414036E+1) * xz + 2.2196792496874548962
      sumq = (((((((((1.0) * xz + 3.6001069306861518855E+1) * xz +\
               3.3031020088765390854E+2) * xz + 1.2082692316002348638E+3)\
               * xz + 2.1181000487171943810E+3) * xz +\
               1.9448440788918006154E+3) * xz + 9.6929165726802648634E+2)\
               * xz + 2.5951223655579051357E+2) * xz +\
               3.4552228452758912848E+1) * xz + 1.7710478032601086579
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
   ff = 1
   while True:
      term *= xxsqr_div_four / (ff * (ann + ff))
      sum_prev = sum
      sum += term
      if (iseq(sum, sum_prev)):
         break# loop AWAIT
      ff += 1
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
   ff = 1
   while True:
      term *= xxsqr_div_four / (ff * (ann + ff))
      sum_prev = sum
      sum += term
      if (iseq(sum, sum_prev)):
         break# loop AWAIT
      ff += 1
   return (sum)
def lf_besucjy0_xge5(xx, jfunc):
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.96936729297347051624E-4) * zz +\
            8.28352392107440799803E-2) * zz + 1.23953371646414299388) *\
            zz + 5.44725003058768775090) * zz + 8.74716500199817011941) *\
            zz + 5.30324038235394892183) * zz + 9.99999999999999997821E-1)
   denom = (((((((9.24408810558863637013E-4) * zz +\
            8.56288474354474431428E-2) * zz + 1.25352743901058953537) *\
            zz + 5.47097740330417105182) * zz + 8.76190883237069594232) *\
            zz + 5.30605288235394617618) * zz + 1.00000000000000000218)
   pp = numer / denom
   numer = ((((((((-1.13663838898469149931E-2) * zz -\
            1.28252718670509318512) * zz - 1.95539544257735972385E+1) *\
            zz - 9.32060152123768231369E+1) * zz -\
            1.77681167980488050595E+2) * zz - 1.47077505154951170175E+2)\
            * zz - 5.14105326766599330220E+1) * zz - 6.05014350600728481186)
   denom = ((((((((1.0) * zz + 6.43178256118178023184E+1) * zz +\
            8.56430025976980587198E+2) * zz + 3.88240183605401609683E+3)\
            * zz + 7.24046774195652478189E+3) * zz +\
            5.93072701187316984827E+3) * zz + 2.06209331660327847417E+3)\
            * zz + 2.42005740240291393179E+2)
   qq = numer / denom
   xn = xx - PI / 4.0
   if (jfunc < 1):
      pp = pp * math.cos(xn) - ww * qq * math.sin(xn)
   else:
      pp = pp * math.sin(xn) + ww * qq * math.cos(xn)
   return (pp * TWOSQRT / math.sqrt(PI * xx))
def lf_besucjy1_xge5(xx, jfunc):
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.62125616208173112003E-4) * zz +\
            7.31397056940917570436E-2) * zz + 1.12719608129684925192) *\
            zz + 5.11207951146807644818) * zz + 8.42404590141772420927) *\
            zz + 5.21451598682361504063) * zz + 1.00000000000000000254)
   denom = (((((((5.71323128072548699714E-4) * zz +\
            6.88455908754495404082E-2) * zz + 1.10514232634061696926) *\
            zz + 5.07386386128601488557) * zz + 8.39985554327604159757) *\
            zz + 5.20982848682361821619) * zz + 9.99999999999999997461E-1)
   pp = numer / denom
   numer = ((((((((5.10862594750176621635E-2) * zz +\
            4.98213872951233449420) * zz + 7.58238284132545283818E+1) *\
            zz + 3.66779609360150777800E+2) * zz +\
            7.10856304998926107277E+2) * zz + 5.97489612400613639965E+2)\
            * zz + 2.11688757100572135698E+2) * zz +\
            2.52070205858023719784E+1)
   denom = ((((((((1.0) * zz + 7.42373277035675149943E+1) * zz +\
            1.05644886038262816351E+3) * zz + 4.98641058337653607651E+3)\
            * zz + 9.56231892404756170795E+3) * zz +\
            7.99704160447350683650E+3) * zz + 2.82619278517639096600E+3)\
            * zz + 3.36093607810698293419E+2)
   qq = numer / denom
   xn = xx - 3.0 * PI / 4.0
   if (jfunc < 1):
      pp = pp * math.cos(xn) - ww * qq * math.sin(xn)
   else:
      pp = pp * math.sin(xn) + ww * qq * math.cos(xn)
   return (pp * TWOSQRT / math.sqrt(PI * xx))
def bessJ0(xx):
   if (xx < 0.0):
      xx = -xx
   zz = xx * xx
   if (xx < 1.0E-5):
      retvalu = 1.0 - zz / 4.0
   elif (xx < 5.0):
      numer = ((((-4.79443220978201773821E+9) * zz +\
               1.95617491946556577543E+12) * zz -\
               2.49248344360967716204E+14) * zz + 9.70862251047306323952E+15)
      denom = (((((((((1.0) * zz + 4.99563147152651017219E+2) * zz +\
               1.73785401676374683123E+5) * zz +\
               4.84409658339962045305E+7) * zz +\
               1.11855537045356834862E+10) * zz +\
               2.11277520115489217587E+12) * zz +\
               3.10518229857422583814E+14) * zz +\
               3.18121955943204943306E+16) * zz + 1.71086294081043136091E+18)
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
      numer = ((((-8.99971225705559398224E+8) * zz +\
               4.52228297998194034323E+11) * zz -\
               7.27494245221818276015E+13) * zz + 3.68295732863852883286E+15)
      denom = (((((((((1.0) * zz + 6.20836478118054335476E+2) * zz +\
               2.56987256757748830383E+5) * zz +\
               8.35146791431949253037E+7) * zz +\
               2.21511595479792499675E+10) * zz +\
               4.74914122079991414898E+12) * zz +\
               7.84369607876235854894E+14) * zz +\
               8.95222336184627338078E+16) * zz + 5.32278620332680085395E+18)
      retvalu = numer / denom * xx * (zz - 14.6819706421238932572) * (zz\
               - 49.2184563216946036703)
   else:
      retvalu = lf_besucjy1_xge5(xx, 0)
   return (retvalu)
def bessY0(xx):
   if (xx <= 0.0):
      retvalu = DBLMAX
   else:
      zz = xx * xx
      if (xx < 1.0E-5):
         retvalu = 1.0 - zz / 4.0
      elif (xx < 5.0):
         numer = ((((((((1.55924367855235737965E+4) * zz -\
                  1.46639295903971606143E+7) * zz +\
                  5.43526477051876500413E+9) * zz -\
                  9.82136065717911466409E+11) * zz +\
                  8.75906394395366999549E+13) * zz -\
                  3.46628303384729719441E+15) * zz +\
                  4.42733268572569800351E+16) * zz -\
                  1.84950800436986690637E+16)
         denom = ((((((((1.0) * zz + 1.04128353664259848412E+3) * zz +\
                  6.26107330137134956842E+5) * zz +\
                  2.68919633393814121987E+8) * zz +\
                  8.64002487103935000337E+10) * zz +\
                  2.02979612750105546709E+13) * zz +\
                  3.17157752842975028269E+15) * zz +\
                  2.50596256172653059228E+17)
         retvalu = numer / denom + 2.0 * math.log(xx) * bessJ0(xx) / PI
      else:
         retvalu = lf_besucjy0_xge5(xx, 1)
   return (retvalu)
def bessY1(xx):
   ww = xx
   if (xx <= 0.0):
      retvalu = -DBLMAX
   elif (ww <= 5.0):
      zz = ww * ww
      numer = ((((((1.2632047479017802640E+9) * zz -\
               6.47355876379160291031E+11) * zz +\
               1.14509511541823727583E+14) * zz -\
               8.12770255501325109621E+15) * zz +\
               2.02439475713594898196E+17) * zz - 7.78877196265950026825E+17)
      denom = (((((((((1.0) * zz + 5.94301592346128195359E+2) * zz +\
               2.35564092943068577943E+5) * zz +\
               7.34811944459721705660E+7) * zz +\
               1.87601316108706159478E+10) * zz +\
               3.88231277496238566008E+12) * zz +\
               6.20557727146953693363E+14) * zz +\
               6.87141087355300489866E+16) * zz + 3.97270608116560655612E+18)
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) * math.log(xx) -\
               1.0 / xx) / PI
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
      hn = 0.0
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
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) * yy +\
               7.349264551E+8) * yy - 5.153438139E+10) * yy +\
               1.275274390E+12) * yy - 4.900604943E+12)
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy + 1.020426050E+5) *\
               yy + 2.245904002E+7) * yy + 3.733650367E+9) * yy +\
               4.244419664E+11) * yy + 2.499580570E+13)
      retvalu = 2.0 * (bessJn(1, xx) * math.log(xx) - 1.0 / xx) / PI + xx\
               * (numer / denom)
   else:
      zz = 8.0 / xx
      yy = zz * zz
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) * yy -\
               3.516396496E-5) * yy + 1.831050000E-3) * yy + 1.0)
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) * yy +\
               8.449199096E-6) * yy - 2.002690873E-4) * yy + 4.687499995E-2)
      ww = xx - 0.75 * PI
      retvalu = TWOSQRT / math.sqrt(PI * xx) * (math.sin(ww) * numer + zz\
               * math.cos(ww) * denom)
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
      retvalu = 0.0
   else:
      if (lv_partitionr_end <= 0):
         lv_partitionr_end = 6
         for nzzn in range(len(lv_partitionr_arr), int(lv_partitionr_end)):
            lv_partitionr_arr.append(0)
         lv_partitionr_arr[0] = 1.0
         lv_partitionr_arr[1] = 1.0
         lv_partitionr_arr[2] = 2.0
         lv_partitionr_arr[3] = 3.0
         lv_partitionr_arr[4] = 5.0
         lv_partitionr_arr[5] = 7.0
      if (lv_partitionr_end <= nn):
         ii = lv_partitionr_end
         lv_partitionr_end = nn + 1
         for nzzn in range(len(lv_partitionr_arr), int(lv_partitionr_end)):
            lv_partitionr_arr.append(0)
         while (ii < lv_partitionr_end):
            sum = 0.0
            ssign = 1.0
            kk = 1
            jj = ii - 1
            while (0 <= jj):
               sum += ssign * lv_partitionr_arr[jj]
               jj -= kk
               if (jj < 0):
                  break
               sum += ssign * lv_partitionr_arr[jj]
               ssign = -ssign
               kk += 1
               jj -= (2 * kk - 1)
            lv_partitionr_arr[ii] = sum
            ii += 1
      retvalu = lv_partitionr_arr[nn]
   return (retvalu)
lv_partitionq_arr = [0 for ii in range(0)]
lv_partitionq_end = 0
def partitionq(nn):
   global lv_partitionq_arr
   global lv_partitionq_end
   if (nn < 0):
      retvalu = 0.0
   else:
      if (lv_partitionq_end <= 0):
         lv_partitionq_end = 6
         for nzzn in range(len(lv_partitionq_arr), int(lv_partitionq_end)):
            lv_partitionq_arr.append(0)
         lv_partitionq_arr[0] = 1.0
         lv_partitionq_arr[1] = 1.0
         lv_partitionq_arr[2] = 1.0
         lv_partitionq_arr[3] = 2.0
         lv_partitionq_arr[4] = 2.0
         lv_partitionq_arr[5] = 3.0
      if (lv_partitionq_end <= nn):
         ii = lv_partitionq_end
         lv_partitionq_end = nn + 1
         for nzzn in range(len(lv_partitionq_arr), int(lv_partitionq_end)):
            lv_partitionq_arr.append(0)
         while (ii < lv_partitionq_end):
            sum = 0.0
            ssign = 1.0
            kk = 1
            jj = ii - 1
            while (0 <= jj):
               sum += ssign * lv_partitionq_arr[jj]
               jj -= kk
               if (jj < 0):
                  break
               sum += ssign * lv_partitionq_arr[jj]
               ssign = -ssign
               kk += 1
               jj -= (2 * kk - 1)
            ee = round(math.sqrt(1.0 + 12.0 * ii) / 6.0)
            if (ii == (3 * ee * ee - ee) or ii == (3 * ee * ee + ee)):
               if (isodd(ee)):
                  sum -= 1.0
               else:
                  sum += 1.0
            lv_partitionq_arr[ii] = sum
            ii += 1
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
      while ((divisor & orig) != 0):
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
      while ((divisor & orig) != 0):
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
      numer = (((((1.85777706184603153E-1) * xsq + 3.16112374387056560) *\
               xsq + 1.13864154151050156E+2) * xsq +\
               3.77485237685302021E+2) * xsq + 3.20937758913846947E+3)
      denom = (((((1.00000000000000000) * xsq + 2.36012909523441209E+1) *\
               xsq + 2.44024637934444173E+2) * xsq +\
               1.28261652607737228E+3) * xsq + 2.84423683343917062E+3)
      retvalu = xx * numer / denom
      if (jint == 1):
         retvalu = 1.0 - retvalu
      elif (jint == 2):
         retvalu = math.exp(xsq) * (1.0 - retvalu)
      flag = 1
   elif (absx <= 4.0):
      numer = (((((((((2.15311535474403846E-8) * absx +\
               5.64188496988670089E-1) * absx + 8.88314979438837594) *\
               absx + 6.61191906371416295E+1) * absx +\
               2.98635138197400131E+2) * absx + 8.81952221241769090E+2) *\
               absx + 1.71204761263407058E+3) * absx +\
               2.05107837782607147E+3) * absx + 1.23033935479799725E+3)
      denom = (((((((((1.00000000000000000) * absx +\
               1.57449261107098347E+1) * absx + 1.17693950891312499E+2) *\
               absx + 5.37181101862009858E+2) * absx +\
               1.62138957456669019E+3) * absx + 3.29079923573345963E+3) *\
               absx + 4.36261909014324716E+3) * absx +\
               3.43936767414372164E+3) * absx + 1.23033935480374942E+3)
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
                  1.60837851487422766E+2) * rxsq - 6.58749161529837803)
         denom = ((((((1.00000000000000000E+4) * rxsq +\
                  2.56852019228982242E+4) * rxsq +\
                  1.87295284992346047E+4) * rxsq +\
                  5.27905102951428412E+3) * rxsq +\
                  6.05183413124413191E+2) * rxsq + 2.33520497626869185E+1)
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
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt +\
            1.48851587) * tt - 1.13520398) * tt + 2.78868070E-1) * tt -\
            1.86288060E-1) * tt + 9.67841800E-2) * tt + 3.74091960E-1) *\
            tt + 1.00002368) * tt - 1.26551223)
   ans = 1.0 - tt * math.exp((-xx * xx) + ply)
   if (xx < 0.0):
      ans = -ans
   return (ans)
def erf__2(xx):
   tt = 1.0 / (1.0 + 0.3275911 * math.fabs(xx))
   ply = ((((((1.061405429) * tt - 1.453152027) * tt + 1.421413741) * tt\
            - 2.844967360E-1) * tt + 2.548295920E-1) * tt + 0.000000000)
   ans = 1.0 - math.exp(-xx * xx) * ply
   if (xx < 0.0):
      ans = -ans
   return (ans)
def erf__3(xx):
   add_arr = [0 for ii in range(80)]
   axx = math.fabs(xx)
   xxsq = xx * xx
   if (axx < 4.4):
      factx = 1.0
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
      sum_curr = 0.0
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
      if (xx < 0.0):
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
         factx *= xxsq * xxsq / ((nn - 1.0) * nn)
         denom = 4.0 * nn * nn - 1.0
         term = factx * (twonnpone * (nn - xxsq) + twoxxsq) / denom
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
         factx *= nn * (nn + 1.0) / (twoxxsq * twoxxsq)
         term = factx * (1.0 - (2.0 * nn + 1.0) / twoxxsq)
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
      if (xx < 0.0):
         qq = 1.0 - xx
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
      if (xx < 0.0):
         retvalu = math.log(PI / math.fabs(math.sin(2.0 * TAU * xx))) - qq
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
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
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
         denom = (((((((1.0) * xx - 3.51815701436523470549E+2) * xx -\
                  1.70642106651881159223E+4) * xx -\
                  2.20528590553854454839E+5) * xx -\
                  1.13933444367982507207E+6) * xx -\
                  2.53252307177582951285E+6) * xx -\
                  2.01889141433532773231E+6)
         retvalu = math.log(zz) + xx * numer / denom
   else:
      uu = (xx - 0.5) * math.log(xx) - xx + math.log(math.sqrt(TAU))
      if (1.0E+8 < xx):
         retvalu = uu
      else:
         pp = 1.0 / (xx * xx)
         if (1000.0 < xx):
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
         retvalu = (math.log(PI / math.fabs(math.sin(2.0 * TAU * zz))) -\
                  lf_lgamma_gt_zero(1.0 - zz))
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
         retvalu = (math.log(PI / math.fabs(math.sin(2.0 * TAU * zz))) -\
                  lgamma(1.0 - zz))
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
      retvalu = (math.log(TAU) / 2.0 + (zz - 0.5) * math.log(zz) - 2.0 *\
               zz - sum)
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
   if (isposint(1.0 - xx)):
      rslt = DBLMAX
   else:
      zz = 1.0
      while (3.0 <= xx):
         xx -= 1.0
         zz *= xx
      while (xx < 2.0):
         if (math.fabs(xx) < 1.0E-9):
            break
         zz /= xx
         xx += 1.0
      if (iseq(xx, 0.0)):
         rslt = DBLMAX
      elif (xx < 2.0):
         rslt = zz / ((1.0 + EULER * xx) * xx)
      elif (iseq(xx, 2.0)):
         rslt = zz
      else:
         xx -= 2.0
         numer = (((((((1.60119522476751861407E-4) * xx +\
                  1.19135147006586384913E-3) * xx +\
                  1.04213797561761569935E-2) * xx +\
                  4.76367800457137231464E-2) * xx +\
                  2.07448227648435975150E-1) * xx +\
                  4.94214826801497100753E-1) * xx +\
                  9.99999999999999996796E-1)
         denom = ((((((((-2.31581873324120129819E-5) * xx +\
                  5.39605580493303397842E-4) * xx -\
                  4.45641913851797240494E-3) * xx +\
                  1.18139785222060435552E-2) * xx +\
                  3.58236398605498653373E-2) * xx -\
                  2.34591795718243348568E-1) * xx +\
                  7.14304917030273074085E-2) * xx + 1.00000000000000000320)
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
   kk = GAMMAMIN
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
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def lf_gamma_shift(xx, yy):
   if (isposint(1.0 - yy)):
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
   pp_arr[6] = +2.605696505611755827729
   pp_arr[7] = -7.423452510201416151527E-3
   pp_arr[8] = +5.384136432509564062961E-8
   pp_arr[9] = -4.023533141268236372067E-9
   sum = 1.000000000000000174663
   for ii in range(0, 10, 1):
      sum += pp_arr[ii] / (yy + ii)
   ex = math.log(yy + 8.5) * (yy - 0.5) - yy - 8.5
   return (math.sqrt(TAU) * sum * lf_gamma_shift(xx, yy) * math.exp(ex))
def tgamma__2(xx):
   pp_arr = [0 for ii in range(10)]
   if (isposint(1.0 - xx)):
      rslt = DBLMAX
   else:
      yy = xx - floor(xx) + 2.0
      pp_arr[0] = +7.61800917294715E+1
      pp_arr[1] = -8.65053203294168E+1
      pp_arr[2] = +2.40140982408309E+1
      pp_arr[3] = -1.23173957245015
      pp_arr[4] = +1.20865097386618E-3
      pp_arr[5] = -5.395239384953E-6
      sum = 1.00000000019001
      for ii in range(0, 6, 1):
         sum += pp_arr[ii] / (yy + ii)
      ex = math.log(yy + 4.5) * (yy - 0.5) - yy - 4.5
      rslt = math.sqrt(TAU) * sum * lf_gamma_shift(xx, yy) * math.exp(ex)
   return (rslt)
def tgamma__3(xx):
   if (isposint(1.0 - xx)):
      retvalu = DBLMAX
   elif (xx < 0.5):
      retvalu = PI / (math.sin(PI * xx) * lf_tgamma_gt_half(1.0 - xx))
   else:
      retvalu = lf_tgamma_gt_half(xx)
   return (retvalu)
def tgamma__stirling(xx):
   sc = 1.0
   while (xx < 10.0):
      sc /= xx
      xx += 1.0
   yy = xx - 1.0
   ryy = 1.0 / yy
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0 /\
            209018880.0) * ryy - 571.0 / 2488320.0) * ryy - 139.0 /\
            51840) * ryy + 1.0 / 288.0) * ryy + 1.0 / 12.0) * ryy + 1.0)
   return (sc * math.pow(yy / E, yy) * math.sqrt(TAU * yy) * ply)
def tgammadouble(xx):
   xxh = (xx - 1.0) / 2.0
   return (math.pow(2.0, xxh) * tgamma(xxh + 1.0) * math.pow(2.0 / PI,\
            (1.0 - math.cos(TAU * xxh)) / 4.0))
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
      retvalu = 1.0
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
               rr += 1.0
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
               if (1.0 / DBLEPS < math.fabs(pk)):
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
   tt = 1.0 - dd - gau_quantile(yy) * math.sqrt(dd)
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
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def ligammainv(aa, yy):
   return (uigammainv(aa, 1.0 - yy))
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
   if (xx <= 0.0):
      retvalu = 0.0
   elif (aa <= 0.0 or bb <= 0.0 or 1.0 <= xx):
      retvalu = 1.0
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
      retvalu = sum_curr * math.exp(pp * math.log(new_xx) + (qq - 1.0) *\
               math.log(compx) - log_beta) / pp
      if (indx == 0):
         retvalu = 1.0 - retvalu
   return (retvalu)
def betainc__1(aa, bb, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (aa <= 0.0 or bb <= 0.0 or 1.0 <= xx):
      retvalu = 1.0
   elif ((aa + 1.0) / (aa + bb + 2.0) < xx):
      retvalu = 1.0 - betainc__1(bb, aa, 1.0 - xx)
   elif (aa <= 0):
      retvalu = 0.0
   else:
      lbeta_ab = lbeta(aa, bb)
      front = math.exp(math.log(xx) * aa + math.log(1.0 - xx) * bb -\
               lbeta_ab) / aa
      ff = 1.0
      cc = 1.0
      dd = 0.0
      jj = 0
      ii = 0
      while True:
         if (ii == 0):
            numerator = 1.0
         elif (jj == 0):
            kk = ii / 2
            den = (aa + 2.0 * kk - 1.0) * (aa + 2.0 * kk)
            numerator = (kk * (bb - kk) * xx) / den
         else:
            kk = (ii - 1) / 2
            den = (aa + 2.0 * kk) * (aa + 2.0 * kk + 1.0)
            numerator = -((aa + kk) * (aa + bb + kk) * xx) / den
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
   return ((shift + math.log(sxx) - 1.0 / (2.0 * sxx) + rec_xx_sqr * sumy))
def digamma(xx):
   if (xx <= 0.0):
      if (isint(xx)):
         retvalu = DBLMAX
      else:
         sxx = 2.0 * xx
         retvalu = lf_digamma_gt_zero(1.0 - xx) - PI / math.tan(sxx)
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
      if (iseq(scvx_yy, scvx_yp)):
         break
      scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
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
         retvalu = lf_digamma_gt_zero__1(1.0 - xx) - PI / math.tan(sxx)
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
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 / (30.0 * 8.0)) *\
               yy - 1.0 / (42.0 * 6.0)) * yy + 1.0 / (30.0 * 4.0)) * yy -\
               1.0 / (6.0 * 2.0)) * yy + EULER) + math.log(xx) + 0.5 / xx
   else:
      retvalu = 0.0
   return (retvalu)
def hnm(xx, vv):
   fxx = floor(xx)
   sum = 0.0
   for kk in range(fxx, 0, -1):
      sum += 1.0 / math.pow(kk, vv)
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
         for nzzn in range(len(lv_factorial_arr), int(lv_factorial_end)):
            lv_factorial_arr.append(0)
         lv_factorial_arr[0] = 1
         lv_factorial_arr[1] = 1
         lv_factorial_arr[2] = 2
         lv_factorial_arr[3] = 6
         lv_factorial_arr[4] = 24
         lv_factorial_arr[5] = 120
      if (lv_factorial_end <= nn):
         ii = lv_factorial_end
         lv_factorial_end = nn + 1
         for nzzn in range(len(lv_factorial_arr), int(lv_factorial_end)):
            lv_factorial_arr.append(0)
         while (ii < lv_factorial_end):
            lv_factorial_arr[ii] = (ii * lv_factorial_arr[ii - 1])
            ii += 1
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
         for nzzn in range(len(lv_factorial_b_arr), int(lv_factorial_b_end)):
            lv_factorial_b_arr.append(0)
         lv_factorial_b_arr[0] = 1
         lv_factorial_b_arr[1] = 1
         lv_factorial_b_arr[2] = 2
         lv_factorial_b_arr[3] = 3
         lv_factorial_b_arr[4] = 8
         lv_factorial_b_arr[5] = 15
      if (lv_factorial_b_end <= nn):
         ii = lv_factorial_b_end
         lv_factorial_b_end = nn + 1
         for nzzn in range(len(lv_factorial_b_arr), int(lv_factorial_b_end)):
            lv_factorial_b_arr.append(0)
         while (ii < lv_factorial_b_end):
            lv_factorial_b_arr[ii] = ii * lv_factorial_b_arr[ii - 2]
            ii += 1
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
         for nzzn in range(len(lv_catalan_arr), int(lv_catalan_end)):
            lv_catalan_arr.append(0)
         lv_catalan_arr[0] = 1
      if (lv_catalan_end <= nn):
         kk = lv_catalan_end
         lv_catalan_end = nn + 1
         for nzzn in range(len(lv_catalan_arr), int(lv_catalan_end)):
            lv_catalan_arr.append(0)
         while (kk < lv_catalan_end):
            lv_catalan_arr[kk] = (2.0 * (2.0 * kk - 1.0) *\
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
         for nzzn in range(len(lv_bell_x_arr), int(lv_bell_end - 1)):
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
         for nzzn in range(len(lv_bell_x_arr), int(lv_bell_end - 1)):
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
      sum = 1.0 / (2.0 * TWOLN * TWOLN)
      for ii in range(2, nn + 1, 1):
         sum *= ii / TWOLN
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
      ss = floorl(math.sqrt(nn) / TWOSQRT)
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
      xlim = floorl(dist / TWOSQRT)
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
      retvalu = count + (xlim) * (xlim + 1) / 2
   else:
      retvalu = -1
   return int(retvalu)
def binomialx(xnn, xkk):
   return (tgamma(xnn + 1) / (tgamma(xkk + 1) * tgamma(xnn + 1 - xkk)))
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
def eulerian(nn, kk):
   global lv_euler_arr
   global lv_euler_end
   global lv_euler_max
   if (nn < kk or nn < 0 or kk < 0):
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
      ii = lv_euler_max
      if (ii < nn + 1):
         lv_euler_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_euler_arr), int(lv_euler_end)):
            lv_euler_arr.append(0)
         while (ii <= nn):
            lz_ind = d2lt_d1(ii, 0)
            lv_euler_arr[lz_ind] = 1
            lv_euler_arr[lz_ind + ii] = 0
            rz_ind = lz_ind + ii - 1
            ul_ind = d2lt_d1(ii - 1, 0)
            jj = 1
            while (lz_ind < rz_ind):
               lv_euler_arr[rz_ind] = lv_euler_arr[lz_ind]
               lz_ind += 1
               lv_euler_arr[lz_ind] = ((ii - jj) * lv_euler_arr[ul_ind] +\
                        (jj + 1) * lv_euler_arr[ul_ind + 1])
               ul_ind += 1
               rz_ind -= 1
               jj += 1
            ii += 1
            lv_euler_max = ii
      retvalu = lv_euler_arr[d2lt_d1(nn, kk)]
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
         for nzzn in range(len(lv_entringer_arr), int(lv_entringer_end)):
            lv_entringer_arr.append(0)
         lv_entringer_arr[0] = 1
      jj = lv_entringer_max
      if (jj < nn + 1):
         lv_entringer_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_entringer_arr), int(lv_entringer_end)):
            lv_entringer_arr.append(0)
         while (jj <= nn):
            inda = d2lt_d1(jj, 0)
            lv_entringer_arr[inda] = 0
            for ii in range(1, jj + 1, 1):
               lv_entringer_arr[inda + ii] = lv_entringer_arr[inda - ii]\
                        + lv_entringer_arr[inda + ii - 1]
            jj += 1
            lv_entringer_max = jj
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
         for nzzn in range(len(lv_stir_a_arr), int(lv_stir_a_end)):
            lv_stir_a_arr.append(0)
         lv_stir_a_arr[0] = 1
         lv_stir_a_arr[1] = 0
         lv_stir_a_arr[2] = 1
      ii = lv_stir_a_max
      if (ii < nn + 1):
         lv_stir_a_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_stir_a_arr), int(lv_stir_a_end)):
            lv_stir_a_arr.append(0)
         while (ii <= nn):
            cz_ind = d2lt_d1(ii, 0)
            lv_stir_a_arr[cz_ind] = 0
            cz_ind += 1
            ul_ind = d2lt_d1(ii - 1, 0)
            for col_k in range(1, ii + 0, 1):
               lv_stir_a_arr[cz_ind] = (lv_stir_a_arr[ul_ind] - (ii - 1)\
                        * lv_stir_a_arr[ul_ind + 1])
               ul_ind += 1
               cz_ind += 1
            lv_stir_a_arr[cz_ind] = 1
            ii += 1
            lv_stir_a_max = ii
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
         for nzzn in range(len(lv_stir_b_arr), int(lv_stir_b_end)):
            lv_stir_b_arr.append(0)
         lv_stir_b_arr[0] = 1
         lv_stir_b_arr[1] = 0
         lv_stir_b_arr[2] = 1
      ii = lv_stir_b_max
      if (ii < nn + 1):
         lv_stir_b_end = d2lt_d1(nn + 1, 0)
         for nzzn in range(len(lv_stir_b_arr), int(lv_stir_b_end)):
            lv_stir_b_arr.append(0)
         while (ii <= nn):
            cz_ind = d2lt_d1(ii, 0)
            lv_stir_b_arr[cz_ind] = 0
            cz_ind += 1
            ul_ind = d2lt_d1(ii - 1, 0)
            for col_k in range(1, ii + 0, 1):
               lv_stir_b_arr[cz_ind] = (lv_stir_b_arr[ul_ind] + col_k *\
                        lv_stir_b_arr[ul_ind + 1])
               ul_ind += 1
               cz_ind += 1
            lv_stir_b_arr[cz_ind] = 1
            ii += 1
            lv_stir_b_max = ii
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
         ii = lv_bern_end
         lv_bern_end = nnhalf + 1
         for nzzn in range(len(lv_bern_n_arr), int(lv_bern_end)):
            lv_bern_n_arr.append(0)
         for nzzn in range(len(lv_bern_d_arr), int(lv_bern_end)):
            lv_bern_d_arr.append(0)
         while (ii < lv_bern_end):
            sz_ind = 2 * ii
            coeff = ((sz_ind + 1) * sz_ind) / 2
            sumn = 1.0 - sz_ind
            sumd = 2.0
            for jj in range(1, ii + 0, 1):
               nsumn = round(sumn * lv_bern_d_arr[jj] + sumd * coeff *\
                        lv_bern_n_arr[jj])
               nsumd = round(sumd * lv_bern_d_arr[jj])
               gdn = gcd(nsumn, nsumd)
               sumn = nsumn / gdn
               sumd = nsumd / gdn
               xkk = 2 * jj
               coeff *= (sz_ind - xkk + 1.0) / (xkk + 1.0)
               coeff *= (sz_ind - xkk) / (xkk + 2.0)
               coeff = round(coeff)
            sumd *= (sz_ind + 1)
            gdn = gcd(sumn, sumd)
            lv_bern_n_arr[ii] = -sumn / gdn
            lv_bern_d_arr[ii] = sumd / gdn
            ii += 1
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
def n2perm(nth, nn, ret_perm_arr_p):
   pat_arr = []
   source_arr = []
   for nzzn in range(len(pat_arr), int(nn)):
      pat_arr.append(0)
   for nzzn in range(len(source_arr), int(nn)):
      source_arr.append(0)
   nthmod = modulo(nth, factorial(nn))
   kk = nthmod
   for ii in range(1, nn + 1, 1):
      pat_arr[nn - ii] = kk % ii
      kk = floor(kk / ii)
      source_arr[ii - 1] = ii - 1
   for ii in range(0, nn + 0, 1):
      sz_ind = pat_arr[ii]
      ret_perm_arr_p[ii] = source_arr[sz_ind]
      for jj in range(sz_ind, nn - ii - 1, 1):
         source_arr[jj] = source_arr[jj + 1]
   return int(nthmod)
def n2comb(nth, nn, rr, ret_comb_arr_p):
   nthmod = modulo(nth, comb(nn, rr))
   kk = comb(nn, rr) - nthmod
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
   return int(nthmod)
def n2perm_print(nth, nn):
   perm_arr = []
   for nzzn in range(len(perm_arr), int(nn)):
      perm_arr.append(0)
   jj = n2perm(nth, nn, perm_arr)
   print_array(nn, perm_arr)
   return int(jj)
def n2comb_print(nth, nn, rr):
   comb_arr = []
   for nzzn in range(len(comb_arr), int(rr)):
      comb_arr.append(0)
   jj = n2comb(nth, nn, rr, comb_arr)
   print_array(rr, comb_arr)
   return int(jj)
def pochhammer(nn, xx):
   if (0 < nn):
      retvalu = xx
      for ii in range(1, nn + 1, 1):
         retvalu *= (xx + ii)
   elif (nn < 0):
      retvalu = xx
      for ii in range(- 1, nn - 1, -1):
         retvalu *= (xx + ii)
   else:
      retvalu = 1.0
   return (retvalu)
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
   return ((secondx * SECOND + minutex * MINUTE + hourx * HOUR) / DAY)
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
   if (2 < g_month):
      delta = floor(30.6001 * g_month - 32.3)
      if (isleapyear(g_year)):
         delta += 1
   elif (g_month == 2):
      delta = 31
   else:
      delta = 0
   return (delta + g_daymon)
def ymd2j2k__1(g_year, g_month, g_day):
   yr = g_year - GYEAR_AT_0J2K
   mn = g_month
   if (mn < 3):
      mn += MONTHS_IN_YEAR
      yr -= 1
   jcen = floor(yr / 100)
   dayoffset = jcen - floor(jcen / 4.0) + 31.3
   jtwok = (floor(yr * JYEAR / JDAY) + floor(30.6001 * mn - dayoffset) +\
            g_day - 1.5)
   return (jtwok)
def ymd2j2k(g_year, g_month, g_day):
   yr = g_year - GYEAR_AT_0J2K
   mn = g_month
   jcen = floor((yr - 1) / 100)
   jtwok = (floor(yr * JYEAR / JDAY - 0.001) + floor(jcen / 4.0) - jcen +\
            ymd2doy(yr, mn, g_day) - 0.5)
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
LC_GD_CNT = 9
lv_ymdhms_arr = [0 for ii in range(20)]
def jd2ymdhms(jjulid):
   global lv_ymdhms_arr
   lv_ymdhms_arr[LC_GD_JD] = jjulid
   ftime_frac = frac(jjulid + 0.5)
   ijulian = floor(jjulid + 0.5)
   jcent = floor(((ijulian - 60.5) * JDAY - JDSEC_AT_0GREGORIAN) / (100.0\
            * GYEAR))
   bbdays = ijulian + jcent - floor(jcent / 4.0)
   g_years = floor((bbdays + 1399.9) * JDAY / JYEAR)
   bdiff = bbdays - floor(g_years * JYEAR / JDAY) + 1522
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
            lv_ymdhms_arr[LC_GD_DAY] + lv_ymdhms_arr[LC_GD_HOUR] / 100.0\
            + lv_ymdhms_arr[LC_GD_MIN] / 10000.0 +\
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
   if (LC_GD_YEAR <= indexp and indexp < LC_GD_CNT):
      retvalu = lv_ymdhms_arr[indexp]
   else:
      retvalu = -1
   return (retvalu)
def jd2ymdhmsinv():
   global lv_ymdhms_arr
   return (ymd2jd(lv_ymdhms_arr[LC_GD_YEAR], lv_ymdhms_arr[LC_GD_MONTH],\
            lv_ymdhms_arr[LC_GD_DAY]) + hms2day(lv_ymdhms_arr[LC_GD_HOUR]\
            , lv_ymdhms_arr[LC_GD_MIN], lv_ymdhms_arr[LC_GD_SEC]) * DAY /\
            JDAY)
def jd264_print(jjulid):
   jd2ymdhms(jjulid)
   base_out_print(ymdhms_get(LC_GD_YEAR), 64)
   base_out_print(ymdhms_get(LC_GD_MONTH), 64)
   base_out_print(ymdhms_get(LC_GD_DAY), 64)
   base_out_print(ymdhms_get(LC_GD_HOUR), 64)
   base_out_print(ymdhms_get(LC_GD_MIN), 64)
   base_outf_print(ymdhms_get(LC_GD_SEC), 64)
   return (jjulid)
def ymdhms2jd(ymdhmsx):
   xx_arr = [0 for ii in range(LC_GD_CNT)]
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
   return (dist(sc - mn, TAU) + dist(hr - mn, TAU) + dist(sc - hr, TAU))
def clockstdev(secnds):
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   da = dist(sc - mn, TAU)
   db = dist(hr - mn, TAU)
   dc = dist(sc - hr, TAU)
   return (math.sqrt((da * da + db * db + dc * dc - square(da + db + dc)\
            / 3.0) / 2.0))
LC_HALAQIM_PER_HOUR = 1080
LX_HALAQIM = HOUR / LC_HALAQIM_PER_HOUR
LC_YEAR_PER_METONIC = 19
def date_easter(g_year):
   century = floor(g_year / 100)
   modmet = g_year % LC_YEAR_PER_METONIC
   skipped_leap = century - floor(century / 4)
   leap_years = floor(g_year / 4)
   kk = floor((century + 8) / 25 - 1)
   jj = floor((century - kk) / 3)
   ii = (skipped_leap - jj + LC_YEAR_PER_METONIC * modmet + 15) % 30
   if (28 < ii or (ii == 28 and 10 < modmet)):
      ii -= 1
   dow = (g_year + leap_years + ii + 2 - skipped_leap) % 7
   return int(ii - dow + 28)
def date_rosh_hashanah(g_year):
   aa = (12 * g_year + 12) % LC_YEAR_PER_METONIC
   am = round(MOON_MONTH / LX_HALAQIM) * aa - 1565.0 * g_year
   dos = floor(g_year / 100) - floor(g_year / 400) - 2 + (g_year % 4) /\
            4.0 + (am - 445405) / (LC_YEAR_PER_METONIC * DAY / LX_HALAQIM)
   day_of_september = floor(dos)
   parts = (dos - day_of_september) * DAY / LX_HALAQIM
   doww = ymd2dow(g_year, 9, day_of_september)
   if (doww == 0 or doww == 3 or doww == 5):
      day_of_september += 1
   elif (doww == 1 and 11 < aa and 23269 <= parts):
      day_of_september += 1
   elif (doww == 2 and 6 < aa and 16404 <= parts):
      day_of_september += 2
   return (day_of_september - 0.25)
def jewish2jdx(hebyear):
   hymod = (hebyear - 1) % LC_YEAR_PER_METONIC
   months_el = (235 * floor((hebyear - 1) / LC_YEAR_PER_METONIC) + 12 *\
            hymod + floor((7 * hymod + 1) / LC_YEAR_PER_METONIC))
   halaqims_el = 204 + (793 * (months_el % LC_HALAQIM_PER_HOUR))
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el /\
            LC_HALAQIM_PER_HOUR) + floor(halaqims_el / LC_HALAQIM_PER_HOUR))
   days_left = floor(hour_el / (DAY / HOUR)) + 1 + 29 * months_el
   alt_days = days_left + 347996
   alt_dow = (alt_days % iround(WEEK / DAY))
   hq_left = (halaqims_el % LC_HALAQIM_PER_HOUR)
   hq_left += DAY * frac(hour_el * HOUR / DAY) / LX_HALAQIM
   if (19440 <= hq_left):
      if (0 == alt_dow or 2 == alt_dow or 4 == alt_dow):
         alt_days += 2
      else:
         alt_days += 1
   elif (0 == alt_dow):
      if (9924 <= hq_left):
         if (not isjewishleap(hebyear)):
            alt_days += 2
   elif (6 == alt_dow):
      if (16789 <= hq_left and isjewishleap(hebyear - 1)):
         alt_days += 1
   elif (1 == alt_dow or 3 == alt_dow or 5 == alt_dow):
      alt_days += 1
   return (alt_days + 0.25)
def isjewishleap(hebyear):
   return ((7 * hebyear + 1) % LC_YEAR_PER_METONIC < 7)
def date_pesach(g_year):
   rh = date_rosh_hashanah(g_year)
   return (rh + 21)
def g2jewish(g_year):
   return int(g_year + 3761)
def jewish2g(hebyear):
   return int(hebyear - 3760)
def jewish_months_in_year(hebyear):
   if (isjewishleap(hebyear)):
      miy = 13
   else:
      miy = 12
   return int(miy)
def jewish_yearlength(hebyear):
   g_year = jewish2g(hebyear - 1)
   retvalu = (floor(JYEAR / JDAY) + (date_rosh_hashanah(g_year + 1) -\
            date_rosh_hashanah(g_year)))
   if (isleapyear(g_year + 1)):
      retvalu += 1
   return int(retvalu)
def jewish2jd(hebyear):
   gregyear = jewish2g(hebyear - 1)
   return (ymd2jd(gregyear, 9, date_rosh_hashanah(gregyear)))
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
   elif (hebmonth == 8):
      if (isjewish8short(hebyear)):
         retvalu = 29
   elif (hebmonth == 9):
      if (isjewish9short(hebyear)):
         retvalu = 29
   elif (hebmonth == 10):
      retvalu = 29
   elif (hebmonth == 11):
      retvalu = 30
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
   else:
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
      hfirst = JEWISH_FIRST_MONTH
      hmon = JEWISH_FIRST_MONTH
      while (hmon != hebmonth):
         jds += jewish_monthlength(hebyear, hmon)
         hmon += 1
         if (moninyear < hmon):
            hmon = 1
         elif (hmon == hfirst):
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
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
   elif (iseq(xa, xb)):
      retvalu = xa
   elif (iszero(pp)):
      retvalu = math.sqrt(xa * xb)
   else:
      retvalu = math.pow((math.pow(xa, pp) + math.pow(xb, pp)) / 2.0, 1.0\
               / pp)
   return (retvalu)
def gmean(xa, xb):
   if (xa < 0.0 or xb < 0.0):
      retvalu = 0.0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = math.sqrt(xa * xb)
   return (retvalu)
def gmean1(xa):
   return (gmean(1.0, xa))
def hmean(xa, xb):
   if (xa < 0.0 or xb < 0.0):
      retvalu = 0.0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = 2.0 * xa * xb / (xa + xb)
   return (retvalu)
def hmean1(xa):
   return (hmean(1.0, xa))
def qmean(xa, xb):
   if (xa < 0.0 or xb < 0.0):
      retvalu = 0.0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = math.sqrt((xa * xa + xb * xb) / 2.0)
   return (retvalu)
def qmean1(xa):
   return (qmean(1.0, xa))
def heronianmean(xa, xb):
   if (xa < 0.0 or xb < 0.0):
      retvalu = 0.0
   elif (iseq(xa, xb)):
      retvalu = xa
   else:
      retvalu = (xa + xb + math.sqrt(xa * xb)) / 3.0
   return (retvalu)
def heronianmean1(xa):
   return (heronianmean(1.0, xa))
def agmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def agmean1(xa):
   return (agmean(1.0, xa))
def ahmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def ahmean1(xa):
   return (ahmean(1.0, xa))
def almean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def almean1(xa):
   return (almean(1.0, xa))
def aqmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def aqmean1(xa):
   return (aqmean(1.0, xa))
def ghmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def ghmean1(xa):
   return (ghmean(1.0, xa))
def glmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def glmean1(xa):
   return (glmean(1.0, xa))
def gqmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def gqmean1(xa):
   return (gqmean(1.0, xa))
def hlmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def hlmean1(xa):
   return (hlmean(1.0, xa))
def hqmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def hqmean1(xa):
   return (hqmean(1.0, xa))
def lqmean(xa, xb):
   if (xa <= 0.0 or xb <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xb, 10.0 * DBLEPS) or pdifff < cdifff):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xtmp
   return (retvalu)
def lqmean1(xa):
   return (lqmean(1.0, xa))
def agmean__1(xa, xb):
   xsgn = 1.0
   ii = 0
   while True:
      xtmp = xa
      xa = (xa + xb) / 2.0
      xb = math.sqrt(math.fabs(xtmp * xb)) * sign(xa)
      if (iswithin(xa, xb, 10.0 * DBLEPS)):
         break# loop AWAIT
      ii += 1
      if (20 <= ii):
         break# loop AWAIT
   retvalu = xsgn * xtmp
   return (retvalu)
def agcmean(xa_arr_pc, xb_arr_pc, ret_arr_p):
   gg_arr = [0 for ii in range(2)]
   aa_arr = [0 for ii in range(2)]
   tt_arr = [0 for ii in range(2)]
   pr_arr = [0 for ii in range(2)]
   gg_arr[0] = xa_arr_pc[0]
   gg_arr[1] = xa_arr_pc[1]
   aa_arr[0] = xb_arr_pc[0]
   aa_arr[1] = xb_arr_pc[1]
   while True:
      tt_arr[0] = (aa_arr[0] + gg_arr[0]) / 2
      tt_arr[1] = (aa_arr[1] + gg_arr[1]) / 2
      pr_arr[0] = aa_arr[0] * gg_arr[0] - aa_arr[1] * gg_arr[1]
      pr_arr[1] = aa_arr[1] * gg_arr[0] + aa_arr[0] * gg_arr[1]
      pr_len = math.sqrt(hypot(pr_arr[0], pr_arr[1]))
      pr_theta = math.atan2(pr_arr[1], pr_arr[0]) / 2.0
      gg_arr[0] = pr_len * math.cos(pr_theta)
      gg_arr[1] = pr_len * math.sin(pr_theta)
      aa_arr[0] = tt_arr[0]
      aa_arr[1] = tt_arr[1]
      if (aa_arr[0] * gg_arr[0] + aa_arr[1] * gg_arr[1] < 0.0):
         gg_arr[0] = -gg_arr[0]
         gg_arr[1] = -gg_arr[1]
      if (iseq(gg_arr[0], aa_arr[0]) and iseq(gg_arr[1], aa_arr[1])):
         break# loop AWAIT
   ret_arr_p[0] = gg_arr[0]
   ret_arr_p[1] = gg_arr[1]
   return (hypot(gg_arr[0], gg_arr[1]))
def aghmean(xa, xb, xc):
   if (xa <= 0.0 or xb <= 0.0 or xc <= 0.0):
      retvalu = 0.0
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
         if (iswithin(xa, xc, 10.0 * DBLEPS)):
            break# loop AWAIT
         ii += 1
         if (20 <= ii):
            break# loop AWAIT
      retvalu = xb
   return (retvalu)
def rms(xa, xb):
   return (math.sqrt((xa * xa + xb * xb) / 2.0))
def agmeaninva(aa, gg):
   if (gg < aa):
      new_aa = aa + math.sqrt(aa * aa - gg * gg)
   else:
      new_aa = gg + math.sqrt(gg * gg - aa * aa)
   return (new_aa)
def agmeaninvg(aa, gg):
   if (gg < aa):
      new_gg = gg * gg / aa
   else:
      new_gg = aa * aa / gg
   return (new_gg)
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
         x_init = ((((((((-0.09765625) * cc + 0.12890625) * cc + 0.1875)\
                  * cc + 0.1875) * cc - 0.25) * cc + 0.5) * cc + 2.0) *\
                  cc + 1.0)
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
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def ghmean1inv(yy):
   if (yy <= 0.0):
      scvx_xx = 0.0
   else:
      if (yy < 0.073):
         x_init = 0.352 * yy
      else:
         x_init = (math.exp(PI * yy / 2.0) - math.exp(-yy * yy * 0.2)) / 4.0
      scvx_dx = 0.3
      scvx_xx = x_init
      scvx_yy = yy - ghmean1(scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = yy - ghmean1(scvx_xx)
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def contraharmonic(nn, val_arr_pc):
   numer = 0.0
   denom = 0.0
   for ii in range(0, nn + 0, 1):
      denom += val_arr_pc[ii] * val_arr_pc[ii]
      numer += val_arr_pc[ii]
   return (denom / numer)
LC_KNUTH_MAX = 1073741823
LC_KNUTH_QUALITY_CNT = 1009
LC_KNUTH_KK_CNT = 100
LC_KNUTH_LL = 37
LC_KNUTH_TT = 70
LC_KNUTH_ARRAY_CNT = 1100
lv_ranz_ind = -3
lv_ranz_magic = 0.0
lv_ranz_arr = [0 for ii in range(LC_KNUTH_QUALITY_CNT)]
lv_ran_a_arr = [0 for ii in range(LC_KNUTH_ARRAY_CNT)]
lv_ran_x_arr = [0 for ii in range(LC_KNUTH_KK_CNT)]
def lf_ran_cycle(nn):
   global lv_ran_x_arr
   global lv_ran_a_arr
   aa = 0
   while (aa < LC_KNUTH_KK_CNT):
      lv_ran_a_arr[aa] = lv_ran_x_arr[aa]
      aa += 1
   bb = 0
   cc = (LC_KNUTH_KK_CNT - LC_KNUTH_LL)
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
   while (aa < LC_KNUTH_KK_CNT):
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
   lf_ran_cycle(LC_KNUTH_QUALITY_CNT)
   for jj in range(0, LC_KNUTH_QUALITY_CNT + 0, 1):
      lv_ranz_arr[jj] = lv_ran_a_arr[jj]
   lv_ranz_arr[LC_KNUTH_KK_CNT] = -1
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
   rnd_arr = [0 for ii in range(2 * LC_KNUTH_KK_CNT)]
   rndss = ((seed_arr_pc[0] + 2) & (LC_KNUTH_MAX - 1))
   for jj in range(0, LC_KNUTH_KK_CNT + 0, 1):
      rnd_arr[jj] = rndss
      rndss = (rndss << 1)
      if (LC_KNUTH_MAX < rndss):
         rndss -= (LC_KNUTH_MAX - 1)
   rndff = 0
   seed_ind = 0
   bitmask = 0
   for jj in range(0, LC_KNUTH_KK_CNT + 0, 1):
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
      for jj in range(LC_KNUTH_KK_CNT - 1, 0, -1):
         rnd_arr[jj + jj] = rnd_arr[jj]
         rnd_arr[jj + jj - 1] = 0
      jj = LC_KNUTH_KK_CNT + LC_KNUTH_KK_CNT - 2
      dd = LC_KNUTH_KK_CNT + LC_KNUTH_LL - 2
      kk = LC_KNUTH_KK_CNT - 2
      while (0 <= kk):
         rndx = rnd_arr[dd] - rnd_arr[jj]
         rnd_arr[dd] = (rndx & LC_KNUTH_MAX)
         rndx = rnd_arr[kk] - rnd_arr[jj]
         rnd_arr[kk] = (rndx & LC_KNUTH_MAX)
         dd -= 1
         kk -= 1
         jj -= 1
      if (isodd(rndss)):
         for jj in range(LC_KNUTH_KK_CNT, 0, -1):
            rnd_arr[jj] = rnd_arr[jj - 1]
         rnd_arr[0] = rnd_arr[LC_KNUTH_KK_CNT]
         jj = rnd_arr[LC_KNUTH_LL] - rnd_arr[0]
         rnd_arr[LC_KNUTH_LL] = (LC_KNUTH_MAX & jj)
         rndss = (rndss >> 1)
      elif (rndss == 0):
         tt -= 1
      else:
         rndss = (rndss >> 1)
   kk = (LC_KNUTH_KK_CNT - LC_KNUTH_LL)
   jj = 0
   while (jj < LC_KNUTH_LL):
      lv_ran_x_arr[kk] = rnd_arr[jj]
      kk += 1
      jj += 1
   kk = 0
   while (jj < LC_KNUTH_KK_CNT):
      lv_ran_x_arr[kk] = rnd_arr[jj]
      kk += 1
      jj += 1
   for jj in range(0, 10, 1):
      lf_ran_cycle(2 * LC_KNUTH_KK_CNT - 1)
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
   return ((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX + 1.0)) /\
            (LC_KNUTH_MAX + 1.0))
def int_pdf(para_nn, xx):
   if (xx < 0.0 or para_nn < xx or (not isint(xx))):
      retvalu = 0.0
   else:
      ff = floor(para_nn)
      if (isint(para_nn)):
         if (xx < para_nn):
            retvalu = 1.0 / para_nn
         else:
            retvalu = 0.0
      else:
         if (xx < ff):
            retvalu = 1.0 / para_nn
         else:
            retvalu = 1.0 - ff / para_nn
   return (retvalu)
def int_cdf(para_nn, xx):
   if (xx <= 0.0):
      retvalu = 0.0
   elif (para_nn <= xx):
      retvalu = 1.0
   else:
      ff = floor(para_nn)
      if (xx < ff):
         retvalu = (floor(xx) + 1) / para_nn
      else:
         retvalu = 1
   return (retvalu)
def int_quantile(para_nn, probx):
   if (probx <= 0.0):
      retvalu = 0.0
   elif (1.0 - frac(para_nn) / para_nn <= probx):
      retvalu = math.ceil(para_nn - 1)
   else:
      retvalu = floor(para_nn * probx + 1)
   return (retvalu)
def int_rand(para_nn):
   if (para_nn <= 1):
      retvalu = 0
   else:
      retvalu = floorl(randd() * para_nn)
   return int(retvalu)
def normal_pdf(xx):
   return (math.exp(-xx * xx / 2.0) / (math.sqrt(TAU)))
def normal_cdf(xx):
   return (erf(xx / TWOSQRT) / 2.0 + 0.5)
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
      retvalu = (sum_curr * math.exp(-0.5 * (xx_sqr + math.log(TAU))) + 0.5)
   return (retvalu)
def normal_quantile(probx):
   return (TWOSQRT * erfinv(2.0 * probx - 1.0))
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
def gau_quantile(probx):
   return (normal_quantile(probx))
def gau_rand():
   return (normal_rand())
def normal_quantile__1(probx):
   p_low = 0.02425
   if (probx <= 0.0):
      retvalu = -(DBLMAX)
   elif (1.0 <= probx):
      retvalu = DBLMAX
   elif (p_low <= probx and probx <= 1.0 - p_low):
      qq = probx - 0.5
      rr = qq * qq
      numer = ((((((-3.96968302866538E+1) * rr + 2.20946098424521E+2) *\
               rr - 2.75928510446969E+2) * rr + 1.38357751867269E+2) * rr\
               - 3.06647980661472E+1) * rr + 2.50662827745924)
      denom = ((((((-5.44760987982241E+1) * rr + 1.61585836858041E+2) *\
               rr - 1.55698979859887E+2) * rr + 6.68013118877197E+1) * rr\
               - 1.32806815528857E+1) * rr + 1.00000000000000)
      retvalu = (qq * numer / denom)
   else:
      if (probx < p_low):
         rr = math.sqrt(-2.0 * math.log(probx))
         qq = 1.0
      else:
         rr = math.sqrt(-2.0 * math.log(1 - probx))
         qq = -1.0
      numer = ((((((-7.78489400243029E-3) * rr - 3.22396458041136E-1) *\
               rr - 2.40075827716184) * rr - 2.54973253934373) * rr +\
               4.37466414146497) * rr + 2.93816398269878)
      denom = (((((7.78469570904146E-3) * rr + 3.22467129070040E-1) * rr\
               + 2.44513413714300) * rr + 3.75440866190742) * rr +\
               1.00000000000000)
      retvalu = qq * numer / denom
   return (retvalu)
def uni_pdf(max_x, xxp):
   if (max_x <= 0.0 or xxp <= 0.0 or max_x <= xxp):
      retvalu = 0.0
   else:
      retvalu = 1.0 / max_x
   return (retvalu)
def uni_cdf(max_x, xxp):
   if (max_x <= 0.0 or xxp < 0.0):
      retvalu = 0.0
   elif (max_x < xxp):
      retvalu = 1.0
   else:
      retvalu = xxp / max_x
   return (retvalu)
def uni_quantile(max_x, probx):
   if (probx < 0.0 or max_x <= 0.0):
      retvalu = 0.0
   elif (max_x < probx):
      retvalu = 1.0
   else:
      retvalu = probx * max_x
   return (retvalu)
def uni_rand(max_x):
   return (uni_quantile(max_x, randd()))
def exp_pdf(para_scaling, xxp):
   if (xxp < 0.0 or para_scaling <= 0.0):
      retvalu = 0.0
   else:
      retvalu = para_scaling * math.exp(-para_scaling * xxp)
   return (retvalu)
def exp_cdf(para_scaling, xxp):
   if (xxp < 0.0 or para_scaling <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 - math.exp(-para_scaling * xxp)
   return (retvalu)
def exp_quantile(para_scaling, probx):
   if (probx <= 0.0 or para_scaling <= 0.0):
      retvalu = 0.0
   elif (1.0 <= probx):
      retvalu = DBLMAX
   else:
      retvalu = -math.log(1.0 - probx) / para_scaling
   return (retvalu)
def exp_rand(para_scaling):
   return (- math.log(randd()) / para_scaling)
def poi_pdf(meanx, xxp):
   if (xxp < 0.0 or meanx <= 0.0):
      retvalu = 0.0
   else:
      kk = floor(xxp)
      retvalu = math.pow(meanx, kk) * math.exp(-meanx) / factorial(kk)
   return (retvalu)
def poi_cdf(meanx, xxp):
   if (xxp <= 0.0 or meanx <= 0.0):
      retvalu = 0.0
   elif (1000.0 < xxp / meanx):
      retvalu = 1
   else:
      term = math.exp(-meanx)
      sum = term
      kk = floorl(xxp)
      for ii in range(1, kk + 1, 1):
         term *= meanx / ii
         sum += term
      retvalu = sum
   return (retvalu)
def poi_quantile(meanx, probx):
   if (probx <= 0.0 or meanx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= probx):
      retvalu = DBLMAX
   else:
      prevsum = 0.0
      term = math.exp(-meanx)
      sum = term
      ii = 0
      while (sum <= probx):
         ii += 1
         term *= meanx / ii
         prevsum = sum
         sum += term
      if (sum - probx < probx - prevsum):
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
      poi *= meanx / nn
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
def geo_quantile(prob, probx):
   if (probx <= 0.0 or 1.0 <= probx or prob <= 0.0 or 1.0 <= prob):
      retvalu = 0.0
   else:
      retvalu = math.log(1.0 - probx) / math.log(1.0 - prob) - 1.0
   return (retvalu)
def geo_rand(prob):
   return int((floorl(math.log(randd()) / math.log(1.0 - prob))))
def cauchy_pdf(para_scaling, xx):
   return (1.0 / (PI * para_scaling * (1.0 + (square(xx / para_scaling)))))
def cauchy_cdf(para_scaling, xx):
   return (taninv(xx / para_scaling) / PI + 0.5)
def cauchy_quantile(para_scaling, probx):
   return (para_scaling * math.tan((probx - 0.5) * PI))
def cauchy_rand(para_scaling):
   return (cauchy_quantile(para_scaling, randd()))
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
def logistic_quantile(ss, probx):
   if (probx <= 0.0 or ss <= 0.0):
      retvalu = 0.0
   elif (1.0 <= probx):
      retvalu = 1.0
   else:
      retvalu = -ss * math.log(1.0 / probx - 1.0)
   return (retvalu)
def logistic_rand(ss):
   return (- ss * math.log(1.0 / randd() - 1.0))
def tri_pdf(pp, xxp):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0.0
   else:
      if (xxp < 0.0 or 1.0 < xxp):
         retvalu = 0.0
      elif (xxp < pp):
         retvalu = divi(2.0 * xxp, pp, 2.0)
      else:
         retvalu = divi(2.0 * (1.0 - xxp), 1.0 - pp, 2.0)
   return (retvalu)
def tri_cdf(pp, xxp):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0.0
   else:
      if (xxp <= 0.0):
         retvalu = 0.0
      elif (xxp < pp):
         retvalu = xxp * xxp / pp
      elif (xxp < 1.0):
         retvalu = 1.0 - square(1.0 - xxp) / (1.0 - pp)
      else:
         retvalu = 1.0
   return (retvalu)
def tri_quantile(pp, probx):
   if (pp < 0.0 or 1.0 < pp):
      retvalu = 0.0
   else:
      if (probx <= 0.0):
         retvalu = 0.0
      elif (probx < pp):
         retvalu = math.sqrt(probx * pp)
      elif (probx < 1.0):
         retvalu = 1.0 - math.sqrt((1.0 - probx) * (1.0 - pp))
      else:
         retvalu = 1.0
   return (retvalu)
def tri_rand(pp):
   xxp = randd()
   yy = randd()
   if (xxp < pp):
      if (2.0 * xxp < pp * yy):
         xxp = pp - xxp
   else:
      if ((pp - 1.0) * yy < 2.0 * (xxp - 1.0)):
         xxp = (pp + 1.0) - xxp
   return (xxp)
def trap_pdf(prob_a, prob_b, xx):
   if (xx < 0.0 or 1.0 < xx or prob_a < 0.0 or prob_b < prob_a or 1.0 <\
            prob_b):
      retvalu = 0.0
   else:
      if (xx < prob_a):
         retvalu = xx / prob_a
      elif (xx <= prob_b):
         retvalu = 1.0
      else:
         retvalu = (1.0 - xx) / (1.0 - prob_b)
   return (retvalu * 2.0 / (1.0 + prob_b - prob_a))
def trap_cdf(prob_a, prob_b, xx):
   if (prob_a < 0.0 or prob_b < prob_a or 1.0 < prob_b):
      retvalu = 0.0
   elif (xx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= xx):
      retvalu = 1.0
   else:
      ff = 2.0 / (1.0 + prob_b - prob_a)
      if (xx < prob_a):
         retvalu = ff * xx * xx / (2.0 * prob_a)
      elif (xx < prob_b):
         retvalu = ff * (xx - prob_a / 2.0)
      else:
         retvalu = 1.0 - ff * square(1.0 - xx) / (2.0 * (1.0 - prob_b))
   return (retvalu)
def trap_quantile(prob_a, prob_b, xx):
   if (prob_a < 0.0 or prob_b < prob_a or 1.0 < prob_b):
      retvalu = 0.0
   elif (xx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= xx):
      retvalu = 1.0
   else:
      ff = 2.0 / (1.0 + prob_b - prob_a)
      if (xx < prob_a * ff / 2.0):
         retvalu = math.sqrt((2.0 * prob_a * xx) / ff)
      elif (xx < 1.0 - ff * (1.0 - prob_b) / 2.0):
         retvalu = xx / ff + prob_a / 2.0
      else:
         retvalu = 1.0 - math.sqrt(2.0 * (1.0 - prob_b) * (1.0 - xx) / ff)
   return (retvalu)
def trap_rand(prob_a, prob_b):
   retvalu = -1
   while True:
      xx = randd()
      if (xx < prob_a):
         if (randd() * prob_a < xx):
            retvalu = xx
      elif (xx <= prob_b):
         retvalu = xx
      else:
         if (randd() * (1.0 - prob_b) < (1.0 - xx)):
            retvalu = xx
      if (0.0 <= retvalu):
         break# loop AWAIT
   return (retvalu)
def pareto_pdf(para_shape, para_scaling, xx):
   return (para_shape * math.pow(para_scaling / xx, para_shape) / xx)
def pareto_cdf(para_shape, para_scaling, xx):
   return (1.0 - math.pow(para_scaling / xx, para_shape))
def pareto_quantile(para_shape, para_scaling, probx):
   return (para_scaling / math.pow(1.0 - probx, 1.0 / para_shape))
def pareto_rand(para_shape, para_scaling):
   return (para_scaling / math.pow(randd(), 1.0 / para_shape))
def gompertz_pdf(para_shape, para_scaling, xx):
   return (math.exp(para_scaling * xx + para_shape * (1 -\
            math.exp(para_scaling * xx))) * para_scaling * para_shape)
def gompertz_cdf(para_shape, para_scaling, xx):
   return (1.0 - math.exp(para_shape * (1.0 - math.exp(para_scaling * xx))))
def gompertz_quantile(para_shape, para_scaling, probx):
   return (math.log(1 - math.log(1.0 - probx) / para_shape) / para_scaling)
def gompertz_rand(para_shape, para_scaling):
   return (gompertz_quantile(para_shape, para_scaling, randd()))
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
def zipf_quantile(ss, max_kk, probx):
   target = probx * hnm(max_kk, ss)
   summ = 0.0
   ii = 1
   while True:
      summ += 1.0 / math.pow(ii, ss)
      if (target <= summ):
         break# loop AWAIT
      ii += 1
   return int(ii)
def zipf_rand(ss, max_kk):
   return int((zipf_quantile(ss, max_kk, randd())))
def beta_pdf(para_shape_a, para_shape_b, xx):
   return (math.pow(xx, para_shape_a - 1.0) * math.pow((1.0 - xx),\
            para_shape_b - 1.0) / beta(para_shape_a, para_shape_b))
def beta_cdf(para_shape_a, para_shape_b, xx):
   return (betainc(para_shape_a, para_shape_b, xx))
def beta_quantile(para_shape_a, para_shape_b, probx):
   if (probx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= probx):
      retvalu = 1.0
   else:
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx)
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
      retvalu = scvx_xx
   return (retvalu)
def beta_rand(para_shape_a, para_shape_b):
   return (beta_quantile(para_shape_a, para_shape_b, randd()))
def gamma_pdf(para_shape, xxp):
   if (xxp <= 0.0):
      retvalu = 0.0
   else:
      retvalu = math.exp(math.log(xxp) * (para_shape - 1.0) - xxp) /\
               tgamma(para_shape)
   return (retvalu)
def gamma_cdf(para_shape, xxp):
   if (xxp <= 0.0 or para_shape <= 0.0):
      retvalu = 0.0
   elif (isint(para_shape)):
      sum = 1.0
      rr = 1.0
      for ii in range(1, para_shape + 0, 1):
         rr *= xxp / ii
         sum += rr
      retvalu = 1.0 - math.exp(-xxp) * sum
   else:
      retvalu = rligamma(para_shape, xxp)
   return (retvalu)
def gamma_rand(para_shape):
   i_shape = floor(para_shape)
   rval = 1.0
   if (para_shape < 5):
      for jj in range(1, i_shape + 1, 1):
         rval *= randd()
      rval = -math.log(rval)
      f_shape = para_shape - i_shape
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
         rval += xx
   else:
      ee = para_shape - 1.0
      gg = math.sqrt(para_shape + ee)
      yy = 0.0
      ff = 0.0
      while (rval <= 0.0 or (1.0 + yy * yy) * math.exp(ee * math.log(rval\
               / ee) - ff) < randd()):
         xx = PI * randd()
         yy = math.sin(xx) / math.cos(xx)
         ff = gg * yy
         rval = ff + ee
   return (rval)
def chisqr_pdf(df, xxp):
   if (xxp <= 0.0):
      retvalu = 0.0
   else:
      retvalu = math.exp((math.log(xxp / 2.0) * df - xxp) / 2.0) / (xxp *\
               tgamma(df / 2.0))
   return (retvalu)
def chisqr_cdf(df, xxp):
   if (xxp <= 0.0):
      retvalu = 0.0
   else:
      retvalu = (1.0 - ruigamma(df / 2.0, xxp / 2.0))
   return (retvalu)
def chisqr_rand(df):
   sum = 0.0
   for jj in range(1, df + 1, 1):
      vv = gau_rand()
      sum += vv * vv
   if (not isint(df)):
      sum += gamma_rand(frac(df) / 2.0) * 2.0
   return (sum)
def binomial_pdf(prob_a, success, trial):
   if (success < 0 or trial < success):
      retvalu = 0.0
   else:
      retvalu = comb(trial, success) * math.pow(prob_a, success) *\
               math.pow(1.0 - prob_a, trial - success)
   return (retvalu)
def binomial_cdf(prob_a, success, trial):
   if (prob_a <= 0.0 or success < 0):
      lsum = 0.0
   elif (1.0 <= prob_a or trial <= success):
      lsum = 1.0
   else:
      if (trial <= 2 * success):
         ss = trial - success - 1
         prob_a = 1.0 - prob_a
      else:
         ss = success
      sfactor = math.pow(1.0 - prob_a, trial)
      mu = prob_a / (1.0 - prob_a)
      lsum = 0.0
      for kk in range(0, ss + 1, 1):
         lsum += sfactor
         sfactor *= (mu * (trial - kk)) / (kk + 1.0)
      if (ss != success):
         lsum = 1.0 - lsum
   return (lsum)
def binomial_rand(prob_a, rr):
   successes = 0.0
   while (0 < rr):
      if (randd() < prob_a):
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
   summ = 0.0
   ii = 1
   while True:
      summ += math.log(1.0 + 1.0 / ii) / math.log(max_kk)
      if (target <= summ):
         break# loop AWAIT
      ii += 1
   return int(ii)
def nbd_pdf(prob_a, rsuccesses, kfailures):
   return (comb(rsuccesses + kfailures - 1, kfailures) * math.pow(prob_a,\
            rsuccesses) * math.pow(1.0 - prob_a, kfailures))
def nbd_cdf(prob_a, rsuccesses, kfailures):
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a))
def nbd_rand(prob_a, rsuccesses):
   rr = rsuccesses
   failures = 0
   while (0 < rr):
      if (randd() <= prob_a):
         rr -= 1
      else:
         failures += 1
   return int(failures)
def polya_pdf(prob_a, rsuccesses, kfailures):
   return (combx(rsuccesses + kfailures - 1, kfailures) * math.pow(1.0 -\
            prob_a, kfailures) * math.pow(prob_a, rsuccesses))
def polya_cdf(prob_a, rsuccesses, kfailures):
   return (1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a))
def polya_rand(tt, probx):
   nn = 0
   ff = tt - 1
   qq = math.exp(tt * math.log(probx))
   rr = qq
   uu = randd()
   while (rr <= uu):
      nn += 1
      ff += 1
      qq *= (1.0 - probx) * ff / nn
      rr += qq
   return (nn)
def zeta_pdf(ss, ixxp):
   if (ixxp <= 0.0):
      retvalu = 0.0
   else:
      retvalu = 1.0 / (zeta(ss) * math.pow(ixxp, ss))
   return (retvalu)
def zeta_cdf(ss, ixxp):
   if (ixxp <= 0.0):
      retvalu = 0.0
   else:
      retvalu = hnm(ixxp, ss) / zeta(ss)
   return (retvalu)
def ks_cdf(para_nn, xx):
   if (para_nn <= 0 or xx <= 0.0):
      retvalu = 0.0
   else:
      if (30 < para_nn):
         tt = xx
         two_tt_sqr = 2.0 * tt * tt
         sum = math.exp(-two_tt_sqr) * (1.0 - 2.0 * tt / (3.0 *\
                  math.sqrt(para_nn)) - two_tt_sqr * (two_tt_sqr / 9.0 -\
                  1.0 / 3.0) / para_nn)
         retvalu = 1.0 - sum
      else:
         tt = xx * math.sqrt(para_nn)
         sum = 0.0
         kk = para_nn
         while (tt < kk):
            sum += comb(para_nn, kk) * math.pow(kk - tt, kk) *\
                     math.pow(tt + para_nn - kk, para_nn - kk - 1)
            kk -= 1
         retvalu = 1.0 - sum * tt / math.pow(para_nn, para_nn)
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
def ks_b_cdf(para_nn, xx):
   if (xx < 0.0001 or para_nn <= 0):
      retvalu = 0.0
   else:
      nxx = xx + (2.0 * math.sqrt(para_nn) + 3.0 * xx - 3.0) / (12.0 *\
               para_nn)
      retvalu = ks_a_cdf(nxx)
   return (retvalu)
def ks_quantile(para_nn, probx):
   if (not isbetween(probx, 0.0, 1.0)):
      scvx_xx = 0.0
   else:
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = probx - ks_cdf(para_nn, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = probx - ks_cdf(para_nn, scvx_xx)
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def t_pdf(dfn, xx):
   return (tgamma((dfn + 1.0) / 2.0) * math.pow((1.0 + square(xx) / dfn),\
            (-(dfn + 1.0) / 2.0)) / (math.sqrt(dfn * PI) * tgamma(dfn /\
            2.0)))
def lf_subtprob(para_nnx, xx):
   para_nn = floorl(math.fabs(para_nnx))
   ww = math.atan2(xx, math.sqrt(para_nn))
   zz = square(math.cos(ww))
   yy = 1.0
   ii = para_nn - 2.0
   while (2.0 <= ii):
      yy = 1.0 + (ii - 1.0) / ii * zz * yy
      ii -= 2.0
   if (iseven(para_nn)):
      aa = math.sin(ww) / 2.0
      bb = 0.5
   else:
      if (para_nn == 1):
         aa = 0.0
      else:
         aa = math.sin(ww) * math.cos(ww) / PI
      bb = 0.5 + ww / PI
   retvalu = bb + aa * yy
   if (1.0 < retvalu):
      retvalu = 1.0
   return (retvalu)
def t_cdf(dfx, xx):
   return (lf_subtprob(dfx, xx))
def lf_t_quantile(ndfx, probx):
   if (probx < 0.5):
      probx = 1.0 - probx
      out_sign = -1
   else:
      out_sign = 1
   ux = normal_quantile(probx)
   uxsq = square(ux)
   aa_x = ((1.0) * uxsq + 1.0) / 4.0
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq - 15.0) / 384.0
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq - 1920.0) *\
            uxsq - 945.0) / 92160.0
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq - 1782.0) *\
            uxsq - 765.0) * uxsq - 17955.0) / 368640.0
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x / ndfx) /\
            ndfx) / ndfx) / ndfx) / ndfx)
   if (ndfx <= square(log10(probx)) + 3.0):
      nn_a = ndfx + 1.0
      while True:
         pp_a = lf_subtprob(ndfx, retvalu)
         ee_x = (nn_a * math.log(nn_a / (ndfx + square(retvalu))) +\
                  math.log(ndfx / nn_a / TAU) - 1.0 + (1.0 / nn_a - 1.0 /\
                  ndfx) / 6.0) / 2.0
         if (DBLMAXLN / 2.0 < ee_x):
            delta = 0.0
         else:
            delta = (pp_a - probx) / math.exp(ee_x)
         retvalu -= delta
         aa_x = math.fabs(delta) * 10000.0
         if (iszero(retvalu) or aa_x < retvalu):
            break# loop AWAIT
   return (out_sign * retvalu)
def t_quantile(dfx, probx):
   ndfx = floor(math.fabs(dfx))
   if (iszero(probx - 0.5)):
      retvalu = 0.0
   elif (probx <= 0.0):
      retvalu = -DBLMAX
   elif (1.0 <= probx):
      retvalu = DBLMAX
   else:
      retvalu = lf_t_quantile(ndfx, probx)
   return (retvalu)
def t_cdf__1(dfx, xx):
   yy = math.sqrt(dfx + xx * xx)
   zz = (xx + yy) / (2.0 * yy)
   return (betainc__1(dfx / 2.0, dfx / 2.0, zz))
def t_quantile__1(dfx, probx):
   if (not isbetween(probx, 0.0, 1.0)):
      scvx_xx = 0.0
   else:
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = probx - t_cdf(dfx, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = probx - t_cdf(dfx, scvx_xx)
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
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
      pp_a = 2.0 / bx * math.sin(yx) * math.pow(math.cos(yx), dfn_b) * ax
      zx = square(math.cos(yx))
      if (dfn_b == 1):
         ax = 0.0
      else:
         ax = 1.0
      for ix in range(dfn_b - 2, 1, -2):
         ax = 1.0 + (ix - 1.0) / ix * zx * ax
      retvalu = pp_a + 1.0 - 4.0 * (yx + math.sin(yx) * math.cos(yx) *\
               ax) / TAU
      if (retvalu < 0.0):
         retvalu = 0.0
   return (retvalu)
def lf_subf_two(nx, qq, pp):
   uu = chisqr_cdf(nx, pp)
   nxs = nx - 2.0
   xx = (uu / nx * (1.0 + ((uu - nxs) / 2.0 + (((4.0 * uu - 11.0 * nxs) *\
            uu + nxs * (7.0 * nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 *\
            nxs) * uu + nxs * (17.0 * nx - 26.0)) * uu - nxs * nxs * (9.0\
            * nx - 6.0)) / 48.0 / qq) / qq) / qq))
   while True:
      if (xx <= 0.0):
         break
      zz = math.exp(((nx + qq) * math.log((nx + qq) / (nx * xx + qq)) +\
               (nx - 2.0) * math.log(xx) + math.log(nx * qq / (nx + qq))\
               - TWOLN - math.log(TAU) - (1.0 / nx + 1.0 / qq - 1.0 / (nx\
               + qq)) / 6.0) / 2.0)
      xx_prev = xx
      xx += (lf_subfprob(nx, qq, xx) - pp) / zz
      if (iswithin(xx, xx_prev, 0.00001)):
         break# loop AWAIT
   return (xx)
def lf_subfx(nx, jj, pp):
   if (iseq(pp, 1.0)):
      retvalu = 0.0
   elif (jj == 0):
      retvalu = 1.0 / square(t_quantile(nx, 0.5 - pp / 2.0))
   elif (nx == 1):
      retvalu = square(t_quantile(jj, pp / 2.0))
   elif (jj == 2):
      uu = chisqr_cdf(jj, 1.0 - pp)
      aa = jj - 2.0
      retvalu = 1.0 / (uu / jj * (1.0 + ((uu - aa) / 2.0 + (((4.0 * uu -\
               11.0 * aa) * uu + aa * (7.0 * jj - 10)) / 24.0 + (((2.0 *\
               uu - 10.0 * aa) * uu + aa * (17.0 * jj - 26)) * uu - aa *\
               aa * (9.0 * jj - 6.0)) / 48.0 / nx) / nx) / nx))
   elif (jj < nx):
      retvalu = 1.0 / lf_subf_two(jj, nx, 1.0 - pp)
   else:
      retvalu = lf_subf_two(nx, jj, pp)
   return (retvalu)
def f_quantile(dfn_a, dfn_b, probx):
   return (lf_subfx(dfn_a, dfn_b, 1.0 - probx))
def f_quantile__1(dfn_a, dfn_b, probx):
   if (probx <= 0.0):
      retvalu = 0.0
   elif (1.0 <= probx):
      retvalu = 1.0
   else:
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx)
      for scvx_ii in range(0, 21, 1):
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx += scvx_dx
         if (iseq(scvx_xp, scvx_xx)):
            break
         scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx)
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
      retvalu = scvx_xx
   return (retvalu)
def mb_pdf(aa, xx):
   return (math.sqrt(4 / TAU) * xx * xx * math.exp(-xx * xx / (2 * aa *\
            aa)) / (aa * aa * aa))
def mb_cdf(aa, xx):
   return (erf(xx / (TWOSQRT * aa)) - math.sqrt(4 / TAU) * xx *\
            math.exp(-xx * xx / (2 * aa * aa)) / aa)
def maxwell_boltzmann_pdf(temperature, molecular_mass, velocity):
   aa = math.sqrt(BOLTZMANN * temperature / molecular_mass)
   return (mb_pdf(aa, velocity))
def maxwell_boltzmann_cdf(temperature, molecular_mass, velocity):
   aa = math.sqrt(BOLTZMANN * temperature / molecular_mass)
   return (mb_cdf(aa, velocity))
def maxwell_juttner_pdf(temperature, molecular_mass, velocity):
   if (temperature <= 0.0 or velocity <= 0.0 or LIGHT <= velocity or\
            molecular_mass <= 0.0):
      retvalu = 0.0
   else:
      rtht = (molecular_mass * LIGHT * LIGHT) / (BOLTZMANN * temperature)
      bt = velocity / LIGHT
      gmm = 1.0 / topyh1(bt)
      dn = bessKn(2, rtht)
      if (iszero(dn)):
         retvalu = 0.0
      else:
         retvalu = gmm * gmm * bt * rtht * math.exp(-gmm * rtht) / dn
   return (retvalu)
def blackbodyl_pdf(wavelen):
   if (wavelen <= 0.0):
      retvalu = 0.0
   else:
      retvalu = math.pow(wavelen, -5.0) / (math.exp(1.0 / wavelen) - 1.0)
   return (retvalu * 15.0 / math.pow(PI, 4.0))
def blackbodyf_pdf(freq):
   if (freq <= 0.0):
      retvalu = 0.0
   else:
      retvalu = math.pow(freq, 3.0) / (math.exp(freq) - 1.0)
   return (retvalu * 15.0 / math.pow(PI, 4.0))
def ints_rand(para_nn, prob_arr_pc):
   sum = 0.0
   for p_ind in range(0, para_nn + 0, 1):
      sum += prob_arr_pc[p_ind]
   rndm = randd()
   hh = 0.0
   for p_ind in range(0, para_nn + 0, 1):
      hh += prob_arr_pc[p_ind] / sum
      if (rndm < hh):
         break
   return int(p_ind)
def lf_num2norm(numm):
   if (numm <= 1):
      retvalu = 0.0
   else:
      retvalu = 3.0 * math.sqrt(math.log(numm)) - 1.4 - (0.5 *\
               math.log(numm) - 0.39) / numm
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
      variancex = 0.0
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
LC_STTS_CNT = 6
LC_STTS_KEY_CNT = 100
lv_sttx_mtrx = [[0 for ii in range(LC_STTS_CNT)] for ii in\
         range(LC_STTS_KEY_CNT)]
def lf_stts_is_inited(ix_hndl):
   global lv_sttx_mtrx
   vll = lv_sttx_mtrx[0][LC_STTS_MAGIC]
   if (vll != magicset() and vll != magicnot()):
      for ii in range(0, LC_STTS_KEY_CNT + 0, 1):
         for jj in range(0, LC_STTS_MAGIC + 0, 1):
            lv_sttx_mtrx[ii][jj] = 0.0
         lv_sttx_mtrx[0][LC_STTS_MAGIC] = magicnot()
   if (LC_STTS_KEY_CNT <= ix_hndl):
      retvalu_bol = False
   else:
      vll = lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC]
      retvalu_bol = ismagic(vll)
   return (retvalu_bol)
def lf_stts_find_empty():
   ix_hndl = 0
   while (lf_stts_is_inited(ix_hndl)):
      ix_hndl += 1
   if (LC_STTS_KEY_CNT <= ix_hndl):
      sys.stderr.write("lf_stts_find_empty:" + "STTS-Bad-handle")
      sys.exit(1)
   return int(ix_hndl)
def stts_init(ix_hndl, n_count, meanx, var, minim, maxim):
   global lv_sttx_mtrx
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] = n_count
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = meanx
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = var * (n_count - 1.0)
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = minim
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = maxim
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicset()
   return int(ix_hndl)
def stts_initx(ix_hndl, num_count, meanx, msq, minim, maxim):
   global lv_sttx_mtrx
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] = num_count
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = meanx
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = msq
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = minim
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = maxim
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicset()
   return int(ix_hndl)
def stts_reset(ix_hndl):
   return int((stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0)))
def stts_new():
   ix_hndl = lf_stts_find_empty()
   return int((stts_reset(ix_hndl)))
def stts_delete(ix_hndl):
   global lv_sttx_mtrx
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC] = magicnot()
   return int(ix_hndl)
def sttscount(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_NUM])
def sttsmean(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN])
def sttsmsq(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ])
def sttsmax(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MAX])
def sttsmin(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MIN])
def sttsmagic(ix_hndl):
   global lv_sttx_mtrx
   return (lv_sttx_mtrx[ix_hndl][LC_STTS_MAGIC])
def sttssum(ix_hndl):
   return (sttsmean(ix_hndl) * sttscount(ix_hndl))
def sttsvar(ix_hndl):
   if (math.fabs(sttscount(ix_hndl)) <= 1.0):
      retvalu = 0.0
   else:
      retvalu = (sttsmsq(ix_hndl) / (math.fabs(sttscount(ix_hndl) - 1.0)))
   return (retvalu)
def sttsstdev(ix_hndl):
   if (sttscount(ix_hndl) <= 1.0):
      retvalu = 0.0
   else:
      retvalu = (math.sqrt(sttsmsq(ix_hndl) / (sttscount(ix_hndl) - 1.0)))
   return (retvalu)
def sttsstdevmean(ix_hndl):
   if (sttscount(ix_hndl) <= 1.0 or sttsmsq(ix_hndl) <= 0.0):
      retvalu = 0.0
   else:
      retvalu = (math.sqrt(sttsmsq(ix_hndl)) / (sttscount(ix_hndl) - 1.0))
   return (retvalu)
def sttsspread(ix_hndl):
   return (sttsmax(ix_hndl) - sttsmin(ix_hndl))
def stts_update(ix_hndl, new_data):
   global lv_sttx_mtrx
   if (not lf_stts_is_inited(ix_hndl)):
      sys.stderr.write("stts_update:" + "STTS-Bad-handle")
      sys.exit(1)
   delta = new_data - lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN]
   lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] += 1.0
   numy = lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] += (delta / numy)
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] += (delta * (new_data -\
            lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN]))
   if ((numy < 2.0 or sttsspread(ix_hndl) < 0.0)):
      lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = new_data
      lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = new_data
   else:
      if (new_data < lv_sttx_mtrx[ix_hndl][LC_STTS_MIN]):
         lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = new_data
      if (lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] < new_data):
         lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = new_data
   return (delta)
def stts_downdate(ix_hndl, old_data):
   if (not lf_stts_is_inited(ix_hndl)):
      sys.stderr.write("stts_downdate:" + "STTS-Bad-handle")
      sys.exit(1)
   men = lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN]
   delt = old_data - men
   if (0.0 < lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]):
      lv_sttx_mtrx[ix_hndl][LC_STTS_NUM] -= 1
      if (0.0 < lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]):
         men -= delt / lv_sttx_mtrx[ix_hndl][LC_STTS_NUM]
         lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = men
         lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] -= delt * (old_data - men)
         if (lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] < 0.0):
            lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = 0.0
      else:
         lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] = 0.0
         lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] = 0.0
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
   global lv_sttx_mtrx
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] += data_shift
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] += data_shift
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] += data_shift
   return int(ix_hndl)
def stts_scale(ix_hndl, xfactor):
   global lv_sttx_mtrx
   if (0 < xfactor):
      newmax = lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] * xfactor
      newmin = lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] * xfactor
   else:
      newmax = lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] * xfactor
      newmin = lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] * xfactor
   lv_sttx_mtrx[ix_hndl][LC_STTS_MIN] = newmin
   lv_sttx_mtrx[ix_hndl][LC_STTS_MAX] = newmax
   lv_sttx_mtrx[ix_hndl][LC_STTS_MEAN] *= xfactor
   lv_sttx_mtrx[ix_hndl][LC_STTS_MSQ] *= xfactor * xfactor
   return int(ix_hndl)
def stts_copy(hto, hfrom):
   global lv_sttx_mtrx
   for ii in range(0, LC_STTS_CNT + 0, 1):
      lv_sttx_mtrx[hto][ii] = lv_sttx_mtrx[hfrom][ii]
   return int(hto)
def stts_update2(ix_hnda, ix_hndb):
   if (not lf_stts_is_inited(ix_hndb)):
      sys.stderr.write("stts_update2:" + "STTS-Bad-hndb")
      sys.exit(1)
   nb = sttscount(ix_hndb)
   if (not iszero(nb)):
      if (not lf_stts_is_inited(ix_hnda)):
         sys.stderr.write("stts_update2:" + "STTS-Bad-hnda")
         sys.exit(1)
      if (iszero(sttscount(ix_hnda))):
         stts_copy(ix_hnda, ix_hndb)
      else:
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda)
         ncount = nb + sttscount(ix_hnda)
         nmean = sttsmean(ix_hnda) + delta * nb / ncount
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta * delta *\
                  sttscount(ix_hnda) * nb / ncount)
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
         stts_init(ix_hnda, ncount, nmean, nmsqr / (ncount - 1.0), amin,\
                  amax)
   return int(ix_hnda)
LC_STTSC_XX = 0
LC_STTSC_YY = 1
LC_STTSC_COVAR = 2
LC_STTSC_MAGIC = 3
LC_STTSC_CNT = 4
lv_crx_mtrx = [[0 for ii in range(LC_STTSC_CNT)] for ii in\
         range(LC_STTS_KEY_CNT)]
def lf_corr_is_init(ix_chnd):
   global lv_crx_mtrx
   if (LC_STTS_KEY_CNT <= ix_chnd):
      retvalu_bol = False
   else:
      vll = lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC]
      retvalu_bol = ismagic(vll)
   return (retvalu_bol)
def lf_corr_find_empty():
   ix_chnd = 0
   while (lf_corr_is_init(ix_chnd)):
      ix_chnd += 1
   if (LC_STTS_KEY_CNT <= ix_chnd):
      sys.stderr.write("lf_corr_find_empty:" + "STTS-No-empty-handle")
      sys.exit(1)
   return int(ix_chnd)
def corr_new():
   global lv_crx_mtrx
   ix_chnd = lf_corr_find_empty()
   lv_crx_mtrx[ix_chnd][LC_STTSC_XX] = stts_new()
   lv_crx_mtrx[ix_chnd][LC_STTSC_YY] = stts_new()
   lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] = 0.0
   lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC] = magicset()
   return int(ix_chnd)
def corr_delete(ix_chnd):
   global lv_crx_mtrx
   lv_crx_mtrx[ix_chnd][LC_STTSC_MAGIC] = magicnot()
   stts_delete(lv_crx_mtrx[ix_chnd][LC_STTSC_XX])
   stts_delete(lv_crx_mtrx[ix_chnd][LC_STTSC_YY])
   return int(ix_chnd)
def corr_handlex(ix_chnd):
   global lv_crx_mtrx
   return int(lv_crx_mtrx[ix_chnd][LC_STTSC_XX])
def corr_handley(ix_chnd):
   global lv_crx_mtrx
   return int(lv_crx_mtrx[ix_chnd][LC_STTSC_YY])
def corr_update(ix_chnd, xx, yy):
   global lv_crx_mtrx
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY]
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX]
   num = sttscount(xxhnd)
   ddxx = stts_update(xxhnd, xx)
   ddyy = stts_update(yyhnd, yy)
   lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] += (ddxx * ddyy * num / (num + 1.0))
   return (lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR])
def corrslope(ix_chnd):
   global lv_crx_mtrx
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX]
   den = sttsmsq(xxhnd)
   if (iszero(den)):
      retvalu = 0.0
   else:
      retvalu = lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] / den
   return (retvalu)
def corry0(ix_chnd):
   global lv_crx_mtrx
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY]
   xxhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_XX]
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) * sttsmean(xxhnd))
   return (retvalu)
def corrcorr(ix_chnd):
   global lv_crx_mtrx
   xxmsq = sttsmsq(lv_crx_mtrx[ix_chnd][LC_STTSC_XX])
   yymsq = sttsmsq(lv_crx_mtrx[ix_chnd][LC_STTSC_YY])
   den = xxmsq * yymsq
   if (iszero(den)):
      retvalu = 0.0
   else:
      retvalu = (lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR] / math.sqrt(den))
   return (retvalu)
def corrstderr(ix_chnd):
   global lv_crx_mtrx
   yyhnd = lv_crx_mtrx[ix_chnd][LC_STTSC_YY]
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) *\
            lv_crx_mtrx[ix_chnd][LC_STTSC_COVAR])
   if (diff < 0.0):
      retvalu = 0.0
   else:
      retvalu = math.sqrt(diff / (sttscount(yyhnd) - 2.0))
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
         cc_arr[i_ind] = ((cc_arr[i_ind - 1] - cc_arr[i_ind]) /\
                  (pts_arr_pc[2 * k_ind] - pts_arr_pc[2 * i_ind]))
         k_ind -= 1
   for j_ind in range(0, num_points - 1, 1):
      for i_ind in range(num_points - 2, j_ind - 1, -1):
         prod = cc_arr[i_ind + 1] * pts_arr_pc[2 * (i_ind - j_ind)]
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
      yyextrema = (cc_arr[0] + xx_a * (cc_arr[1] + xx_a * cc_arr[2]))
      disc = (cc_arr[1] * cc_arr[1] - 4.0 * cc_arr[2] * cc_arr[0])
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
def circle_solve(x_a, y_a, x_b, y_b, x_c, y_c):
   global lv_circle_arr
   y_ba = y_b - y_a
   x_ba = x_b - x_a
   y_ca = y_c - y_a
   x_ca = x_c - x_a
   det = 2.0 * (y_ba * x_ca - y_ca * x_ba)
   if (not iszero(det)):
      xy_ba = y_ba * (y_a + y_b) + x_ba * (x_a + x_b)
      xy_ca = y_ca * (y_a + y_c) + x_ca * (x_a + x_c)
      center_x = (y_ba * xy_ca - y_ca * xy_ba) / det
      center_y = (x_ca * xy_ba - x_ba * xy_ca) / det
      radius = hypot(center_x - x_a, center_y - y_a)
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
            intercept_t = yyp_arr[i_ind] - slope_t * xxp_arr[i_ind]
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
               this_spr = max_dyy - min_dyy
               if ((0 < nx_spr and nx_spr + epsyy < this_spr) or (min_dyy\
                        < - epsyy and epsyy < max_dyy)):
                  break
               k_ind += 1
            if (num_points <= k_ind):
               if ((this_spr <= nx_spr + epsyy and math.fabs(nx_a) <\
                        math.fabs(slope_t)) or nx_spr < 0 or this_spr <\
                        nx_spr - epsyy):
                  nx_spr = this_spr
                  nx_a = slope_t
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
   ret_coeff_arr_p[1] = nx_a
   ret_coeff_arr_p[0] = nx_b
   ret_coeff_arr_p[2] = nx_spr / 2.0
   return (nx_spr / 2.0)
def lf_signcrossproduct(x_a, y_a, x_b, y_b, x_c, y_c):
   bbx_a = x_b - x_a
   bby_a = y_b - y_a
   ccx_a = x_c - x_a
   ccy_a = y_c - y_a
   cr = bbx_a * ccy_a - ccx_a * bby_a
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
         if (xxp_arr[j_ind] < xxp_arr[lmbm_ind] or yyp_arr[j_ind] <=\
                  yyp_arr[lmbm_ind]):
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
            crx = lf_signcrossproduct(xxp_arr[j_ind], yyp_arr[j_ind],\
                     xxp_arr[t_ind], yyp_arr[t_ind], xxp_arr[e_ind],\
                     yyp_arr[e_ind])
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
         this_spr = 0
         k_ind = 1
         while (k_ind < num_points):
            pty = (slope_t * xxp_arr[k_ind] + intercept_t)
            dyy = yyp_arr[k_ind] - pty
            if (dyy < min_dyy):
               min_dyy = dyy
            if (max_dyy < dyy):
               max_dyy = dyy
            this_spr = max_dyy - min_dyy
            if ((0 < nx_spr and nx_spr + epsyy < this_spr) or (min_dyy <\
                     - epsyy and epsyy < max_dyy)):
               break
            k_ind += 1
         if (num_points <= k_ind):
            if ((this_spr <= nx_spr + epsyy and math.fabs(nx_a) <\
                     math.fabs(slope_t)) or nx_spr < 0 or this_spr <\
                     nx_spr - epsyy):
               nx_a = slope_t
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
               nx_spr = this_spr
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
   mnmxz_spread = -1
   mnmxz_slope = 0
   mnmxz_intercept = yyp_arr[0]
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
               this_spr = max_dyy - min_dyy
               if (0 < mnmxz_spread and mnmxz_spread + epsyy < this_spr):
                  break
            if (mnmxz_spread < 0 or this_spr < mnmxz_spread - epsyy):
               mnmxz_slope = slope_t
               mnmxz_intercept = intercept_t
               mnmxz_spread = this_spr
   if (0 <= mnmxz_spread):
      ret_arr_p[1] = mnmxz_slope
      ret_arr_p[0] = mnmxz_intercept
      ret_arr_p[2] = mnmxz_spread / 2.0
   return (mnmxz_spread / 2.0)
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
   ret_arr_p[3] = math.sqrt((ssq_yy - slope * covariance_xy) /\
            (num_points - 2))
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
      yy_curr = 0.0
   else:
      power_of_two = 1.0
      zz = xx
      while (4.0 <= zz):
         zz /= 4.0
         power_of_two *= 2.0
      while (zz < 1.0):
         zz *= 4.0
         power_of_two /= 2.0
      yy_curr = (((-0.0353026277858345) * zz + 0.502513025246083) * zz +\
               0.546382637992462)
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
      if (1.0 < xx):
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
         if (iseq(scvx_yy, scvx_yp)):
            break
         scvx_dx *= - scvx_yy / (scvx_yy - scvx_yp)
   return (scvx_xx)
def sqrt__3(yy):
   if (yy <= 0.0):
      nrvx_xx = 0.0
   else:
      if (1.0 < yy):
         ini = yy / 2.0
      else:
         ini = 2.0 * yy
      nrvx_xx = ini
      for nrvx_ii in range(0, 21, 1):
         nrvx_xp = nrvx_xx
         nrvx_dy = 2.0 * nrvx_xx
         if (iszero(nrvx_dy)):
            break
         nrvx_yy = nrvx_xx * nrvx_xx - yy
         nrvx_xx -= nrvx_yy / nrvx_dy
         if (iseq(nrvx_xp, nrvx_xx)):
            break
   return (nrvx_xx)
def nthroot__1(xx, kk):
   if (xx <= 0.0):
      yy_curr = 0.0
   else:
      yy_curr = xx / 2.0
      while True:
         yy_prev = yy_curr
         pp = yy_curr
         for ii in range(2, kk + 0, 1):
            pp *= yy_curr
         yy_curr = (yy_curr * (kk - 1.0) + xx / pp) / kk
         if (iseq(yy_prev, yy_curr)):
            break# loop AWAIT
   return (yy_curr)
def cossin_ev(init_ii, xx_rad, addone_mult):
   if (iszero(xx_rad)):
      trig_sum = 0.0
   else:
      xr_rad = fmods(xx_rad, TAU)
      xr_sqr = -xr_rad * xr_rad
      cval = 1.0
      ii = init_ii
      while (DBLEPS / 16.0 < math.fabs(cval)):
         ii += 2
         cval *= xr_sqr / (ii * (ii - 1.0))
      trig_sum = 1.0 / (ii * (ii + 1.0))
      while (1 < ii):
         trig_sum += 1.0
         trig_sum *= xr_sqr / (ii * (ii - 1.0))
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
      if (TAU / 2.0 < math.fabs(xx_rad)):
         retvalu = cossin_ev(1, xx_rad, True) / xx_rad
      else:
         retvalu = cossin_ev(1, xx_rad, False) + 1.0
   return (retvalu)
def exp__1(xx):
   if (xx < 0.0):
      axx = -xx
   else:
      axx = xx
   squaring_count = 0
   while (1.0 < axx):
      axx /= 2.0
      squaring_count += 1
   vale = 1.0
   term_count = 1
   while (DBLEPS / 10.0 < vale):
      term_count += 1
      vale *= axx / term_count
   exp_sum = 1.0 / (term_count + 1.0)
   for ii in range(term_count, 0, -1):
      exp_sum = 1.0 + axx * (exp_sum / ii)
   if (xx < 0.0):
      retvalu = 1.0 / exp_sum
   else:
      retvalu = exp_sum
   for ii in range(1, squaring_count + 1, 1):
      retvalu *= retvalu
   return (retvalu)
def exp__2(xx):
   if (xx < 0.0):
      axx = -xx
   else:
      axx = xx
   squaring_count = 0
   while (1.0 < axx):
      axx /= 2.0
      squaring_count += 1
   vale = 1.0
   term_count = 1
   while (DBLEPS / 4.0 < vale):
      term_count += 1
      vale *= axx / term_count
   expmo_sum = 0.0
   for ii in range(term_count, 0, -1):
      expmo_sum = axx * (expmo_sum + 1.0) / ii
   for ii in range(1, squaring_count + 1, 1):
      expmo_sum *= (2.0 + expmo_sum)
   if (xx < 0.0):
      retvalu = 1.0 / (expmo_sum + 1.0)
   else:
      retvalu = expmo_sum + 1.0
   return (retvalu)
def ln__1(xx):
   logshift = 0.0
   yy_curr = 8.0 / xx
   tmp = (DBLEPS)
   while (tmp < yy_curr):
      logshift -= 16.0 * TWOLN
      yy_curr /= 65536.0
   retvalu = (PI / agmean(2.0, yy_curr) + logshift)
   return (retvalu)
def ln__2(xx):
   yy_curr = xx
   ptwo = 0.0
   while (TWOSQRT < yy_curr):
      ptwo += 1.0
      yy_curr /= 2.0
   while (yy_curr < 1.0 / TWOSQRT):
      ptwo -= 1.0
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
   return (ptwo * TWOLN + sum_curr)
def euler__1():
   twon = 1.0
   exptwon = E
   ii = 0
   while True:
      twon *= 2.0
      exptwon *= exptwon
      if (0.1 < DBLEPS * exptwon):
         break# loop AWAIT
      ii += 1
   term = 1.0 / twon
   subsum = 0.0
   sum_curr = 0.0
   jj = 1
   while True:
      subsum += 1.0 / jj
      term *= twon / jj
      sum_prev = sum_curr
      sum_curr += term * subsum
      if (iseq(sum_prev, sum_curr)):
         break# loop AWAIT
      jj += 1
   return (twon * sum_curr / exptwon - (ii + 1.0) * TWOLN)
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
def great_circle_distance(lata_rad, lona_rad, latb_rad, lonb_rad):
   return (sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad))
def sphere_distance(lata_rad, lona_rad, latb_rad, lonb_rad, ret_dirs_arr_p):
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
def ellipsoid_distance(flat, lata_rad, lona_rad, latb_rad, lonb_rad,\
         ret_dirs_arr_p):
   iflat = 1.0 - flat
   cap_ua = math.atan2(iflat * math.sin(lata_rad), math.cos(lata_rad))
   cap_ub = math.atan2(iflat * math.sin(latb_rad), math.cos(latb_rad))
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
      s_sig = hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub - s_cap_ua *\
               c_cap_ub * c_xx)
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx
      sig = math.atan2(s_sig, c_sig)
      s_a = c_cap_ua * c_cap_ub * s_xx / s_sig
      c_asq = 1.0 - square(s_a)
      cbsigm = c_sig - divi(2 * s_cap_ua * s_cap_ub, c_asq, 0.0)
      cap_c = ((flat / 16) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)))
      xx_prev = xx_curr
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_a * (sig + cap_c *\
               s_sig * (cbsigm + cap_c * c_sig * (2.0 * square(cbsigm) -\
               1.0))))
      if (10 < ii and iseq(math.fabs(xx_prev + xx_curr), TAU)):
         xx_curr = TAU / 2.0
         break
      if (math.fabs(xx_curr - xx_prev) < 1.0E-12):
         break# loop AWAIT
      ii += 1
   usq = c_asq * (1.0 / square(iflat) - 1.0)
   cap_a = iflat * lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig * (-1.0 +\
            2.0 * square(cbsigm)) - (1.0 / 6.0) * cap_b * cbsigm * (3.0 +\
            4.0 * square(s_sig)) * (-3.0 + 4.0 * square(cbsigm))))
   dist = cap_a * (sig - deltasig)
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx
   xd = c_cap_ub * s_xx
   ret_dirs_arr_p[0] = math.atan2(xd, xc)
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx
   xd = c_cap_ua * s_xx
   ret_dirs_arr_p[1] = -math.atan2(xd, xc)
   return (dist)
def ellipsoid_destination(flat, lata_rad, lona_rad, heading_rad, distance\
         , ret_loc_arr_p):
   iflat = 1.0 - flat
   aa = 1.0
   bb = iflat * aa
   cap_ua = math.atan2(iflat * math.sin(lata_rad), math.cos(lata_rad))
   c_cap_ua = math.cos(cap_ua)
   s_cap_ua = math.sin(cap_ua)
   c_heading = math.cos(heading_rad)
   s_heading = math.sin(heading_rad)
   sig_b_rad = math.atan2(s_cap_ua, c_cap_ua * c_heading)
   s_a = math.cos(cap_ua) * math.sin(heading_rad)
   c_asq = 1.0 - square(s_a)
   usq = c_asq * (square(aa / bb) - 1.0)
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
      c_twosigmsq = square(c_twosigm)
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 * cap_b * (c_sig\
               * (2.0 * c_twosigmsq - 1.0) - (cap_b / 6.0) * c_twosigm *\
               (4.0 * s_sig * s_sig - 3.0) * (4.0 * c_twosigmsq - 3.0)))
      if (iseq(sig_rad, sig_rad_prev)):
         break# loop AWAIT
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading
   xc = iflat * hypot(s_a, s_cap_ua * s_sig - c_cap_ua * c_sig * c_heading)
   ret_loc_arr_p[0] = math.atan2(xd, xc)
   xd = s_sig * s_heading
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading
   lamda = math.atan2(xd, xc)
   cap_c = ((flat / 16.0) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)))
   cap_l = lamda - (1.0 - cap_c) * flat * s_a * (sig_rad + cap_c * s_sig\
            * (c_twosigm + cap_c * c_sig * (2 * c_twosigmsq - 1.0)))
   ret_loc_arr_p[1] = cap_l + lona_rad
   alpha_rad = fmodu(PI + math.atan2(s_a, c_cap_ua * c_sig * c_heading -\
            s_cap_ua * s_sig), TAU)
   return (alpha_rad)
def ellipsoid_surface(axis_a, axis_b, axis_c):
   absaa = math.fabs(axis_a)
   absbb = math.fabs(axis_b)
   abscc = math.fabs(axis_c)
   if (absaa < absbb):
      kk = absaa
      absaa = absbb
      absbb = kk
   if (absbb < abscc):
      kk = abscc
      abscc = absbb
      absbb = kk
      if (absaa < absbb):
         kk = absaa
         absaa = absbb
         absbb = kk
   if (abscc < absaa):
      cosphi = (abscc / absaa)
      phi_rad = cosinv(cosphi)
      sinphi = math.sin(phi_rad)
      kk = math.sqrt((1.0 - abscc * abscc / (absbb * absbb)) / (1.0 -\
               abscc * abscc / (absaa * absaa)))
      retvalu = TAU * (abscc * abscc + absaa * absbb / sinphi * (sinphi *\
               sinphi * elliptic2ik(kk, phi_rad) + cosphi * cosphi *\
               elliptic1ik(kk, phi_rad)))
   else:
      retvalu = 2.0 * TAU * absaa * absaa
   return (retvalu)
def ellipsoid_volume(axis_a, axis_b, axis_c):
   return (2.0 * TAU * axis_a * axis_b * axis_c / 3.0)
def shc_shftpoles2steps(shft, poles):
   step_arr = [0 for ii in range(20)]
   if (poles <= 0):
      retvalu = 0.0
   elif (shft < 0):
      retvalu = 0.0
   elif (16 < shft):
      retvalu = 1.0E+9
   elif (poles == 1):
      step_arr[0] = +1.0
      step_arr[1] = +8.75664018
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
      step_arr[0] = +1.0
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
      step_arr[0] = +1.0
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
      step_arr[0] = +1.0
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
      step_arr[0] = +1.0
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
LX_SHC_SHIFTSHIFT = 3.85514
LX_SHC_STEPSHIFT = 8.5
def shc_steps2shft(steps):
   return (lg(steps + LX_SHC_STEPSHIFT) - LX_SHC_SHIFTSHIFT)
def shc_steps2shftinv(shft):
   return (math.pow(2.0, shft + LX_SHC_SHIFTSHIFT) - LX_SHC_STEPSHIFT)
def shc_shft2steps(shft):
   return (shc_shftpoles2steps(shft, 4))
def m2k(emm):
   return (math.sqrt(emm))
def k2m(ekk):
   return (ekk * ekk)
def a2k(eaa):
   return (math.sin(eaa))
def k2a(ekk):
   return (sininv(ekk))
def a2m(eaa):
   return (square(math.sin(eaa)))
def m2a(emm):
   return (sininv(math.sqrt(emm)))
def m2b(emm):
   return (1.0 / math.sqrt(1.0 - emm))
def b2m(ebb):
   return (1.0 - 1.0 / (ebb * ebb))
def elliptic1m(emm):
   aa_arr = [0 for ii in range(2)]
   bb_arr = [0 for ii in range(2)]
   cc_arr = [0 for ii in range(2)]
   if (emm < 1.0):
      retvalu = PI / (2.0 * agmean(1.0, math.sqrt(1.0 - emm)))
   elif (1.0 < emm):
      aa_arr[0] = 1.0
      aa_arr[1] = 0.0
      bb_arr[0] = 0.0
      bb_arr[1] = math.sqrt(emm - 1.0)
      dd = agcmean(aa_arr, bb_arr, cc_arr)
      retvalu = PI / (2.0 * dd)
   else:
      retvalu = 20.0
   return (retvalu)
def ellipticK(ekk):
   return (elliptic1m(k2m(ekk)))
def elliptic1m__1(emm):
   return (carlsonRF(0.0, 1.0 - emm, 1.0))
def elliptic1m__2(emm):
   term = TAU / 4.0
   sum_curr = 0.0
   ii = 1
   while True:
      term *= square(emm * ii / (ii + 1.0))
      sum_prev = sum_curr
      sum_curr += term
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      ii += 2
   return (sum_curr)
def elliptic1im(emm, circ_rad):
   emmc = 1.0 - emm
   if (iszero(emm)):
      retvalu = circ_rad
   elif (iszero(emmc)):
      if (PI / 2.0 <= math.fabs(circ_rad)):
         retvalu = DBLMAX
      else:
         retvalu = math.log(math.tan((PI / 2.0 + circ_rad) / 2.0))
   else:
      npihlfs = floor(circ_rad / (PI / 2.0))
      if (isodd(npihlfs)):
         npihlfs += 1
      lcirc_rad = circ_rad
      if (npihlfs == 0):
         kresult = 0.0
      else:
         kresult = elliptic1m(emm)
         lcirc_rad -= npihlfs * PI / 2.0
      if (lcirc_rad < 0.0):
         lcirc_rad = -lcirc_rad
         signof = -1
      else:
         signof = 1
      tt = math.tan(lcirc_rad)
      ggn = math.sqrt(emmc)
      skip_flag = False
      if (10.0 < math.fabs(tt)):
         ee = 1.0 / (ggn * tt)
         if (math.fabs(ee) < 10.0):
            if (npihlfs == 0):
               kresult = elliptic1m(emm)
            temp = kresult - elliptic1im(emm, math.atan2(ee, 1.0))
            skip_flag = True
      if (not skip_flag):
         aan = 1.0
         ii = 1
         modd = 0
         while True:
            temp = ggn / aan
            lcirc_rad += math.atan2(tt * temp, 1.0) + modd * PI
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
def elliptic1k(kk):
   return (elliptic1m(k2m(kk)))
def elliptic1ik(kk, circ_rad):
   return (elliptic1im(k2m(kk), circ_rad))
def elliptic1a(aa):
   return (elliptic1m(a2m(aa)))
def elliptic1ia(aa, circ_rad):
   return (elliptic1im(a2m(aa), circ_rad))
def ellipticF(ekk, circ_rad):
   return (elliptic1im(k2m(ekk), circ_rad))
def elliptic1im__1(emm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2.0))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic1m(emm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2.0
   sinphi = math.sin(lcirc_rad)
   return (sinphi * carlsonRF(square(math.cos(lcirc_rad)), 1.0 - emm *\
            square(sinphi), 1.0) + kresult)
def elliptic2m(emm):
   aemm = math.fabs(emm)
   if (aemm < 1.0):
      twon = 0.5
      aan = 1.0
      ggn = math.sqrt(1.0 - emm)
      sum = 1.0 - emm / 2.0
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
def ellipticE(ekk):
   return (elliptic2m(k2m(ekk)))
def elliptic2m__1(emm):
   return (carlsonRF(0.0, 1.0 - emm, 1.0) - emm * carlsonRD(0.0, 1.0 -\
            emm, 1.0) / 3.0)
def elliptic2im(emm, circ_rad):
   if (iszero(emm)):
      retvalu = circ_rad
   else:
      emmc = 1.0 - emm
      eliptwoemm = elliptic2m(emm)
      npihalfs = floor(circ_rad / (PI / 2.0))
      if (isodd(npihalfs)):
         npihalfs += 1
      lcirc_rad = circ_rad - npihalfs * PI / 2.0
      if (iszero(emmc)):
         retvalu = math.sin(lcirc_rad) + npihalfs * eliptwoemm
      else:
         if (lcirc_rad < 0.0):
            lcirc_rad = -lcirc_rad
            signof = -1
         else:
            signof = 1
         tt = math.tan(lcirc_rad)
         ggn = math.sqrt(emmc)
         if (math.fabs(tt) < - 1):
            errsum = 1.0 / (ggn * tt)
         else:
            errsum = 0.0
         if (0.0 < math.fabs(errsum) and math.fabs(errsum) < 1000.0):
            errsum = math.atan2(1.0, ggn * tt)
            temp = eliptwoemm - elliptic2im(emm, errsum) + emm *\
                     math.sin(circ_rad) * math.sin(errsum)
         else:
            cc = math.sqrt(emm)
            aan = 1.0
            ii = 1
            modd = 0
            while (DBLEPS < math.fabs(cc / aan)):
               temp = ggn / aan
               lcirc_rad += math.atan2(tt * temp, 1.0) + modd * PI
               modd = floor(lcirc_rad / PI + 0.5)
               tt *= (1.0 + temp) / (1.0 - temp * tt * tt)
               cc = (aan - ggn) / 2.0
               temp = math.sqrt(aan * ggn)
               aan = (aan + ggn) / 2.0
               ggn = temp
               ii += ii
               errsum += cc * math.sin(lcirc_rad)
            temp = errsum + eliptwoemm * (math.atan2(tt, 1.0) + modd *\
                     PI) / (ii * aan * elliptic1m(emm))
         if (signof < 0):
            temp = -temp
         retvalu = temp + npihalfs * eliptwoemm
   return (retvalu)
def ellipticEi(ekk, circ_rad):
   return (elliptic2im(k2m(ekk), circ_rad))
def elliptic2im__1(emm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2.0))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic2m(emm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2.0
   sinphi = math.sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = square(math.cos(lcirc_rad))
   argb = 1.0 - emm * sinphisq
   return (sinphi * carlsonRF(cosphisq, argb, 1.0) - emm * sinphicu *\
            carlsonRD(cosphisq, argb, 1.0) / 3.0 + kresult)
def elliptic2k(kk):
   return (elliptic2m(k2m(kk)))
def elliptic2ik(kk, circ_rad):
   return (elliptic2im(k2m(kk), circ_rad))
def elliptic2a(aa):
   return (elliptic2m(a2m(aa)))
def elliptic2ia(aa, circ_rad):
   return (elliptic2im(a2m(aa), circ_rad))
def elliptic3m(enn, emm):
   aemm = math.fabs(emm)
   if (aemm < 1.0):
      aan = 1.0
      ggn = math.sqrt(1.0 - emm)
      if (1.0 <= math.fabs(enn)):
         ppn = math.sqrt(1.0 - emm / enn)
      else:
         ppn = math.sqrt(1.0 - enn)
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
      if (1.0 <= math.fabs(enn)):
         tn = emm * sum / (emm - enn)
      else:
         tn = 2.0 + sum * enn / (1.0 - enn)
      retvalu = PI * tn / (4.0 * aan)
   else:
      retvalu = 1.0
   return (retvalu)
def elliptic3k(enn, kk):
   return (elliptic3m(enn, k2m(kk)))
def elliptic3ik(enn, kk, circ_rad):
   return (elliptic3im(enn, k2m(kk), circ_rad))
def elliptic3a(enn, aa):
   return (elliptic3m(enn, a2m(aa)))
def elliptic3ia(enn, aa, circ_rad):
   return (elliptic3im(enn, a2m(aa), circ_rad))
def ellipticP(ekk, circ_rad):
   return (elliptic3m(ekk, circ_rad))
def elliptic3im(enn, emm, circ_rad):
   sp = math.sin(circ_rad)
   cp = math.cos(circ_rad)
   spq = sp * sp
   cpq = cp * cp
   spm = 1.0 - emm * spq
   spn = 1.0 - enn * spq
   return (sp * (carlsonRF(cpq, spm, 1.0) + spq * enn * carlsonRJ(cpq,\
            spm, 1.0, spn) / 3.0))
def ellipticPi(enn, ekk, circ_rad):
   return (elliptic3im(enn, k2m(ekk), circ_rad))
def elliptic3m__1(enn, emm):
   return (carlsonRF(0.0, 1.0 - emm, 1.0) + enn * carlsonRJ(0.0, 1.0 -\
            emm, 1.0, 1.0 - enn) / 3.0)
def elliptic3im__1(enn, emm, circ_rad):
   npihlfs = floor(circ_rad / (PI / 2.0))
   if (isodd(npihlfs)):
      npihlfs += 1
   lcirc_rad = circ_rad
   if (npihlfs == 0):
      kresult = 0.0
   else:
      kresult = elliptic3m(enn, emm) * npihlfs
      lcirc_rad -= npihlfs * PI / 2.0
   sinphi = math.sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = square(math.cos(lcirc_rad))
   argb = 1.0 - emm * sinphisq
   return (kresult + sinphi * carlsonRF(cosphisq, argb, 1.0) + sinphicu *\
            carlsonRJ(cosphisq, argb, 1.0, 1.0 - enn * sinphisq) * enn / 3.0)
LX_ELLIPTIC_EPS = 1.0E-9
lv_emm = -10.0
lv_elli_rad = -10.0
lv_arr_arr = [0 for ii in range(4)]
def lf_jacobiphi_0_1(emm, elli_rad):
   aa_arr = [0 for ii in range(20)]
   cc_arr = [0 for ii in range(20)]
   ebb = math.sqrt(1.0 - emm)
   aa_arr[0] = 1.0
   cc_arr[0] = math.sqrt(emm)
   twon = 1.0
   ii = 0
   while (DBLEPS < math.fabs(cc_arr[ii] / aa_arr[ii])):
      if (19 - 1 < ii):
         break
      ai = aa_arr[ii]
      ii += 1
      cc_arr[ii] = (ai - ebb) / 2.0
      geo_mean = math.sqrt(ai * ebb)
      aa_arr[ii] = (ai + ebb) / 2.0
      ebb = geo_mean
      twon *= 2.0
   circ_rad = twon * aa_arr[ii] * elli_rad
   while (0 < ii):
      ebb = cc_arr[ii] * math.sin(circ_rad) / aa_arr[ii]
      circ_rad = (sininv(ebb) + circ_rad) / 2.0
      ii -= 1
   return (circ_rad)
def lf_cn_0_1(emm, elli_rad):
   if (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      retvalu = math.cos(lf_jacobiphi_0_1(emm, elli_rad))
   else:
      csx = cosh(elli_rad)
      if (emm < 1.0):
         snx = sinh(elli_rad)
         ai = (1.0 - emm) / 4.0
         retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
      else:
         retvalu = 1.0 / csx
   return (retvalu)
def lf_sn_0_1(emm, elli_rad):
   if (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      retvalu = math.sin(lf_jacobiphi_0_1(emm, elli_rad))
   else:
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      if (emm < 1.0):
         ai = (1.0 - emm) / 4.0
         retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
      else:
         retvalu = snx / csx
   return (retvalu)
def lf_dn_0_1(emm, elli_rad):
   if (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      retvalu = 1.0 - emm * snx * snx / 2.0
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      snx = math.sin(lf_jacobiphi_0_1(emm, elli_rad))
      retvalu = sqrtx(1.0 - emm * snx * snx)
   else:
      csx = cosh(elli_rad)
      if (emm < 1.0):
         ai = (1.0 - emm) / 4.0
         snx = sinh(elli_rad)
         retvalu = 1.0 / csx + ai * (csx * snx + elli_rad)
      else:
         retvalu = 1.0 / csx
   return (retvalu)
def lf_cn_gt1(emm, elli_rad):
   ekk = m2k(emm)
   retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk)
   return (retvalu)
def lf_sn_gt1(emm, elli_rad):
   ekk = m2k(emm)
   retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk
   return (retvalu)
def lf_dn_gt1(emm, elli_rad):
   ekk = m2k(emm)
   retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk)
   return (retvalu)
def lf_ellpj_0_1(emm, elli_rad, ret_arr_p):
   global lv_emm
   global lv_elli_rad
   if (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      ret_arr_p[0] = snx - ai * csx
      ret_arr_p[1] = csx + ai * snx
      ret_arr_p[2] = 1.0 - emm * snx * snx / 2.0
      ret_arr_p[3] = elli_rad - ai
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad)
      snx = math.sin(circ_rad)
      ret_arr_p[0] = snx
      ret_arr_p[1] = math.cos(circ_rad)
      ret_arr_p[2] = sqrtx(1.0 - emm * snx * snx)
      ret_arr_p[3] = circ_rad
   else:
      ai = (1.0 - emm) / 4.0
      csx = cosh(elli_rad)
      snx = tanh(elli_rad)
      twon = csx * sinh(elli_rad)
      ret_arr_p[0] = snx + ai * (twon - elli_rad) / (csx * csx)
      ret_arr_p[3] = 2.0 * math.atan2(math.exp(elli_rad), 1.0) - PI / 2.0\
               + ai * (twon - elli_rad) / csx
      ai *= snx / csx
      ret_arr_p[1] = 1.0 / csx - ai * (twon - elli_rad)
      ret_arr_p[2] = 1.0 / csx + ai * (twon + elli_rad)
   lv_emm = emm
   lv_elli_rad = elli_rad
   return int(0)
def lf_ellpj(emm, elli_rad, ret_arr_p):
   global lv_emm
   global lv_elli_rad
   junk_arr = [0 for ii in range(4)]
   if (emm < 0.0):
      if (emm < - 2.0):
         snx = math.sin(elli_rad) + tanh(elli_rad) - lf_sn_gt1(1.0 - emm,\
                  elli_rad)
      else:
         snx = math.sin(elli_rad) + tanh(elli_rad) - lf_sn_0_1(1.0 - emm,\
                  elli_rad)
      if (emm < - 1.0):
         csx = 2.0 * math.cos(elli_rad) - lf_cn_gt1(-emm, elli_rad)
      else:
         csx = 2.0 * math.cos(elli_rad) - lf_cn_0_1(-emm, elli_rad)
      ret_arr_p[0] = snx
      ret_arr_p[1] = csx
      ret_arr_p[2] = -dn(-emm, elli_rad) + 2.0
      ret_arr_p[3] = math.atan2(snx, csx)
   elif (emm <= 1.0):
      lf_ellpj_0_1(emm, elli_rad, junk_arr)
      ret_arr_p[0] = junk_arr[0]
      ret_arr_p[1] = junk_arr[1]
      ret_arr_p[2] = junk_arr[2]
      ret_arr_p[3] = junk_arr[3]
   else:
      ai = m2k(emm)
      lf_ellpj_0_1(1.0 / emm, elli_rad * ai, junk_arr)
      ret_arr_p[0] = junk_arr[0] / ai
      ret_arr_p[1] = junk_arr[2]
      ret_arr_p[2] = junk_arr[1]
      ret_arr_p[3] = junk_arr[3]
   lv_emm = emm
   lv_elli_rad = elli_rad
   return int(0)
def jacobiphi(emm, elli_rad):
   if (0.0 < emm and emm < 1.0):
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad)
   else:
      circ_rad = taninv(sn(emm, elli_rad) / cn(emm, elli_rad))
   return (circ_rad)
def sn__1(emm, elli_rad):
   global lv_emm
   global lv_elli_rad
   global lv_arr_arr
   if (isneq(emm, lv_emm) or isneq(elli_rad, lv_elli_rad)):
      lf_ellpj(emm, elli_rad, lv_arr_arr)
   return (lv_arr_arr[0])
def cn__1(emm, elli_rad):
   global lv_emm
   global lv_elli_rad
   global lv_arr_arr
   if (isneq(emm, lv_emm) or isneq(elli_rad, lv_elli_rad)):
      lf_ellpj(emm, elli_rad, lv_arr_arr)
   return (lv_arr_arr[1])
def dn__1(emm, elli_rad):
   global lv_emm
   global lv_elli_rad
   global lv_arr_arr
   if (isneq(emm, lv_emm) or isneq(elli_rad, lv_elli_rad)):
      lf_ellpj(emm, elli_rad, lv_arr_arr)
   return (lv_arr_arr[2])
def dn(emm, elli_rad):
   if (emm < - 1.0):
      retvalu = -lf_dn_gt1(-emm, elli_rad) + 2.0
   elif (emm < 0.0):
      retvalu = -lf_dn_0_1(-emm, elli_rad) + 2.0
   elif (emm <= 1.0):
      retvalu = lf_dn_0_1(emm, elli_rad)
   else:
      ekk = m2k(emm)
      retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk)
   return (retvalu)
def cn(emm, elli_rad):
   if (emm < - 1.0):
      retvalu = -lf_cn_gt1(-emm, elli_rad) + 2.0 * math.cos(elli_rad)
   elif (emm < 0.0):
      retvalu = -lf_cn_0_1(-emm, elli_rad) + 2.0 * math.cos(elli_rad)
   elif (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      retvalu = math.cos(lf_jacobiphi_0_1(emm, elli_rad))
   elif (emm <= 1.0):
      ai = (1.0 - emm) / 4.0
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
   else:
      ekk = m2k(emm)
      retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk)
   return (retvalu)
def sn(emm, elli_rad):
   if (emm < - 1.0):
      retvalu = math.sin(elli_rad) + tanh(elli_rad) - lf_sn_gt1(1.0 - emm\
               , elli_rad)
   elif (emm < 0.0):
      retvalu = math.sin(elli_rad) + tanh(elli_rad) - lf_sn_0_1(1.0 - emm\
               , elli_rad)
   elif (emm < LX_ELLIPTIC_EPS):
      snx = math.sin(elli_rad)
      csx = math.cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   elif (emm < 1.0 - LX_ELLIPTIC_EPS):
      retvalu = math.sin(lf_jacobiphi_0_1(emm, elli_rad))
   elif (emm <= 1.0):
      ai = (1.0 - emm) / 4.0
      csx = cosh(elli_rad)
      snx = sinh(elli_rad)
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
   else:
      ekk = m2k(emm)
      retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk
   return (retvalu)
def cd(emm, elli_rad):
   return (cn(emm, elli_rad) / dn(emm, elli_rad))
def sd(emm, elli_rad):
   return (sn(emm, elli_rad) / dn(emm, elli_rad))
def nd(emm, elli_rad):
   return (1.0 / dn(emm, elli_rad))
def dc(emm, elli_rad):
   return (dn(emm, elli_rad) / cn(emm, elli_rad))
def nc(emm, elli_rad):
   return (1.0 / cn(emm, elli_rad))
def sc(emm, elli_rad):
   return (sn(emm, elli_rad) / cn(emm, elli_rad))
def ds(emm, elli_rad):
   return (dn(emm, elli_rad) / sn(emm, elli_rad))
def cs(emm, elli_rad):
   return (cn(emm, elli_rad) / sn(emm, elli_rad))
def ns(emm, elli_rad):
   return (1.0 / sn(emm, elli_rad))
def ell2cir(emm, elli_rad):
   return (jacobiphi(emm, elli_rad))
def cir2ell(emm, circ_rad):
   return (elliptic1im(emm, circ_rad))
def jacobicir(emm):
   return (4.0 * elliptic2m(emm) / math.sqrt(1.0 - emm))
def nom(emm):
   return (math.exp(-PI * elliptic1m(1.0 - emm) / elliptic1m(emm)))
def theta1(emm, zz):
   sig = 1.0
   qq = nom(emm)
   sum_curr = 0.0
   ang = zz
   ang_inc = 2.0 * zz
   enn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, square(enn + 0.5)) * math.sin(ang)
      ang += ang_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (2.0 * sum_curr)
def theta2(emm, zz):
   qq = nom(emm)
   sum_curr = 0.0
   ang = zz
   ang_inc = 2.0 * zz
   enn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, square(enn + 0.5)) * math.cos(ang)
      ang += ang_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (2.0 * sum_curr)
def theta3(emm, zz):
   qq = nom(emm)
   sum_curr = 0.0
   ang = 2.0 * zz
   ang_inc = ang
   enn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, enn * enn) * math.cos(ang)
      ang += ang_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (1.0 + 2.0 * sum_curr)
def theta4(emm, zz):
   sig = 1.0
   qq = nom(emm)
   sum_curr = 0.0
   ang = 2.0 * zz
   ang_inc = ang
   enn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, enn * enn) * math.cos(ang)
      ang += ang_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (1.0 + 2.0 * sum_curr)
def nevillethetac(emm, zz):
   km = elliptic1m(emm)
   qq = math.exp(-PI * elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2.0 * km)
   enn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, enn * enn + enn) * math.cos(cos_of)
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (sum_curr * math.sqrt(TAU * math.sqrt(qq / emm) / km))
def nevillethetad(emm, zz):
   km = elliptic1m(emm)
   qq = math.exp(-PI * elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   enn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += math.pow(qq, enn * enn) * math.cos(cos_of)
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return ((1.0 + 2.0 * sum_curr) * math.sqrt(TAU / km) / 2.0)
def nevillethetan(emm, zz):
   km = elliptic1m(emm)
   qq = math.exp(-PI * elliptic1m(1.0 - emm) / km)
   sum_curr = 0.5
   sig = -1.0
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   enn = 1
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, enn * enn) * math.cos(cos_of)
      cos_of += cos_inc
      sig = -sig
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (2.0 * sum_curr * math.sqrt(TAU / (km * math.sqrt(1.0 - emm)))\
            / 2.0)
def nevillethetas(emm, zz):
   km = elliptic1m(emm)
   qq = math.exp(-PI * elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   sig = 1.0
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2.0 * km)
   enn = 0
   while True:
      sum_prev = sum_curr
      sum_curr += sig * math.pow(qq, enn * enn + enn) * math.sin(cos_of)
      sig = -sig
      cos_of += cos_inc
      if (iseq(sum_curr, sum_prev)):
         break# loop AWAIT
      enn += 1
   return (sum_curr * math.sqrt(TAU * math.sqrt(qq / (emm * (1.0 - emm)))\
            / km))
def ellipsearea(semi_axis_a, semi_axis_b):
   return (PI * semi_axis_a * semi_axis_b)
def ellipseecc(semi_axis_a, semi_axis_b):
   return (topyh1(ratio(semi_axis_a, semi_axis_b)))
def ellipsem(semi_axis_a, semi_axis_b):
   rati = ratio(semi_axis_a, semi_axis_b)
   return (1.0 - rati * rati)
def ellipseflatness(semi_axis_a, semi_axis_b):
   return (1.0 - ratio(semi_axis_a, semi_axis_b))
def ellipsen(semi_axis_a, semi_axis_b):
   return (math.fabs(semi_axis_a - semi_axis_b) / (semi_axis_a +\
            semi_axis_b))
def flat2ecc(flt):
   return (math.sqrt(flt * (2.0 - flt)))
def ecc2flat(ecc):
   return (1.0 - math.sqrt(1.0 - ecc * ecc))
def ellipsecir(semi_axes_a, semi_axes_b):
   if (semi_axes_a < semi_axes_b):
      aaa = semi_axes_b
      bbb = semi_axes_a
   else:
      aaa = semi_axes_a
      bbb = semi_axes_b
   if (bbb <= math.sqrt(DBLEPS) * aaa):
      retvalu = 4.0 * aaa
   else:
      suma = 0.0
      axes_sum = aaa + bbb
      pows_two = 1.0
      ii = 0
      while True:
         temp = (aaa + bbb) / 2.0
         bbb = math.sqrt(aaa * bbb)
         aaa = temp
         pows_two += pows_two
         suma += pows_two * square(aaa - bbb)
         if (iseq(aaa, bbb)):
            break# loop AWAIT
         ii += 1
         if (30 <= ii):
            break# loop AWAIT
      retvalu = PI * (square(axes_sum) - suma) / (aaa + bbb)
   return (retvalu)
def ellipsecir__1(semi_axis_a, semi_axis_b):
   if (semi_axis_a < semi_axis_b):
      major_axis = semi_axis_b
      minor_axis = semi_axis_a
   else:
      major_axis = semi_axis_a
      minor_axis = semi_axis_b
   rati = minor_axis / major_axis
   return (4.0 * major_axis * elliptic2m(1.0 - rati * rati))
def epdf(minvalx, maxvalx, data_num, data_arr_pc, pdf_num, ret_pdf_arr_p):
   for ii in range(0, pdf_num + 0, 1):
      ret_pdf_arr_p[ii] = 0.0
   inc = 1.0 / data_num
   gap_size = (maxvalx - minvalx) / (pdf_num - 1.0)
   retvalu = 0.0
   for ii in range(0, data_num + 0, 1):
      if (data_arr_pc[ii] < minvalx):
         ret_pdf_arr_p[0] += inc
      elif (data_arr_pc[ii] < maxvalx):
         indi = math.ceil((data_arr_pc[ii] - minvalx) / gap_size)
         ret_pdf_arr_p[indi] += inc
      else:
         retvalu += inc
   return (retvalu)
def ecdf(minvalx, maxvalx, data_num, data_arr_pc, pdf_num, ret_cdf_arr_p):
   epdf(minvalx, maxvalx, data_num, data_arr_pc, pdf_num, ret_cdf_arr_p)
   sumcurr = ret_cdf_arr_p[0]
   for ii in range(1, pdf_num + 0, 1):
      sumcurr += ret_cdf_arr_p[ii]
      ret_cdf_arr_p[ii] = sumcurr
   return (sumcurr)
def epdf2cdf(data_num, pdf_arr_pc, ret_cdf_arr_p):
   sumcurr = 0.0
   for ii in range(0, data_num + 0, 1):
      sumcurr += pdf_arr_pc[ii]
      ret_cdf_arr_p[ii] = sumcurr
   return (sumcurr)
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
def blackbodyl(wavelen, temp_k):
   if (wavelen <= 0.0 or temp_k <= 0.0):
      retvalu = 0.0
   else:
      hc = PLANCK * LIGHT
      hc_kt = hc / (BOLTZMANN * temp_k)
      retvalu = 2.0 * hc * LIGHT / (math.pow(wavelen, 5) *\
               (math.exp(hc_kt / wavelen) - 1.0))
   return (retvalu)
def blackbodyf(wavefreq, temp_k):
   if (wavefreq <= 0.0 or temp_k <= 0.0):
      retvalu = 0.0
   else:
      h_kt = PLANCK / (BOLTZMANN * temp_k)
      retvalu = 2.0 * PLANCK * math.pow(wavefreq, 3) / (math.pow(LIGHT,\
               2) * (math.exp(h_kt * wavefreq) - 1.0))
   return (retvalu)
def blackbodymode(temp_k):
   if (temp_k <= 0.0):
      retvalu = 0.0
   else:
      hc_kt = PLANCK * LIGHT / (BOLTZMANN * temp_k)
      retvalu = hc_kt / (5.0 + wp(-5.0 * math.exp(-5.0)))
   return (retvalu)
def blackbodypower(temp_k):
   return (STEFAN * math.pow(temp_k, 4.0))
def bhmass_to_tempk(bhmass_kg):
   return (BHMASSTEMP / bhmass_kg)
def bhtempk_to_mass(bhtemp_k):
   return (BHMASSTEMP / bhtemp_k)
def bhmass_to_radius(bhmass_kg):
   return (bhmass_kg / BHMASS_RADIUS)
def bhradius_to_mass(bhradius_m):
   return (BHMASS_RADIUS * bhradius_m)
def bhmass_to_entropy(bhmass_kg):
   return (bhmass_kg * bhmass_kg / BHMASS2_ENTROPY)
def bhentropy_to_mass(bhentropy):
   return (math.sqrt(bhentropy * BHMASS2_ENTROPY))
def bhmass_to_power(bhmass_kg):
   return (BHMASS2POWER / (bhmass_kg * bhmass_kg))
def bhpower_to_mass(bhpower_w):
   return (math.sqrt(BHMASS2POWER / bhpower_w))
def bhmass_to_area(bhmass_kg):
   return (bhmass_kg * bhmass_kg / BHMASS2_AREA)
def bharea_to_mass(bharea):
   return (math.sqrt(BHMASS2_AREA * bharea))
def bhlifetime_to_mass(bhlifetime_s):
   return (cbrt(BHMASS3_LIFETIME * bhlifetime_s))
def bhmass_to_lifetime(bhmass_kg):
   return (bhmass_kg * bhmass_kg * bhmass_kg / BHMASS3_LIFETIME)
def bhmass_to_density(bhmass_kg):
   return (bhmass_kg * bhmass_kg / BHMASS2_DENSITY)
def bhdensity_to_mass(bhdensity):
   return (math.sqrt(bhdensity * BHMASS2_DENSITY))
def pendulum(len_m, ang_offset_rad, grav):
   return (TAU * math.sqrt(len_m / grav) / agmean(1.0,\
            math.cos(ang_offset_rad / 2.0)))
def sr_mass(velo_mps):
   return (1.0 / sqrtxp1m1(-square(velo_mps / LIGHT)))
def sr_time(velo_mps):
   return (sqrtxp1m1(-square(velo_mps / LIGHT)))
def gr_massgm(gm_gm, radius_m):
   return (gm_gm / (radius_m * LIGHT * LIGHT))
def gr_mass(mass_kg, radius_m):
   return (gr_massgm(GRAVITATION * mass_kg, radius_m))
def gr_timegm(gm_gm, radius_m):
   con = 2 * gm_gm / (LIGHT * LIGHT)
   return (sqrtxp1m1(-con / radius_m))
def gr_time(mass_kg, radius_m):
   return (gr_timegm(GRAVITATION * mass_kg, radius_m))
def gr_timegm_dr(gm_gm, radius_m):
   con = 2 * gm_gm / (LIGHT * LIGHT)
   return (con / (2 * radius_m * radius_m * math.sqrt(1.0 - con / radius_m)))
def cent2ratio(cnt):
   return (pow2(cnt / 1200.0))
def ratio2cent(rat):
   return (lg(rat) * 1200.0)
#   DDDDDDDDDDescription ################################### kw_description #
def kw_description():
   return( \
   "   Kw Constants: AAABATTERY AAABATTERY_CHARGE AAABATTERY_ENERGY AAAB" + \
   "ATTERY_VOLTAGE AABATTERY AABATTERY_CHARGE AABATTERY_ENERGY AABATTERY" + \
   "_VOLTAGE ACCELERATION ACRE ACTION AH ALPHA ALPHA_ERR ALPHA_REC ALPHA" + \
   "_REC_ERR ALPHASQRT AMOUNT AMP AMPERE AMU AMU_ERR ANGLE APERY ARCDEG " + \
   "ARCDEGREE ARCGRAD ARCMIN ARCMINUTE ARCRADIAN ARCSEC ARCSECOND ARCTUR" + \
   "N ARE AREA ASTRONOMICALUNIT ATM ATMOSPHERE ATMOSPHERE_ERR ATOMICMASS" + \
   "UNIT ATOMICMASSUNIT_ERR ATTO AU AU_ERR AVOGADRO AVOGADRO_ERR AVOGADR" + \
   "O_REC AVOGADRO_REC_ERR BAN BAR BARN BARREL BASEBALL_MASS BASEBALL_RA" + \
   "DIUS BASKETBALL_MASS BASKETBALL_RADIUS BEKENSTEINENTROPY BEKENSTEINI" + \
   "NFORMATION BHENTROPY_AREA BHMASS2_AREA BHMASS2_DENSITY BHMASS2_ENTRO" + \
   "PY BHMASS2POWER BHMASS3_LIFETIME BHMASS_RADIUS BHMASSTEMP BHRADIUS2D" + \
   "ENSITY BIT BLUE_ENERGY BLUE_Hz BLUE_WAVELENGTH BOLTZMANN BOLTZMANN_E" + \
   "RR BOLTZMANN_REC BOLTZMANN_REC_ERR BTU BTU_IT BTU_TH BUSHEL c c_ERR " + \
   "c_REC c_REC_ERR CAL CAL_IT CAL_TH CALORIE CANDELA CAPACITANCE CARAT " + \
   "CARBATTERY CARBATTERY_CHARGE CARBATTERY_ENERGY CARBATTERY_VOLTAGE CB" + \
   "ATTERY CBATTERY_CHARGE CBATTERY_ENERGY CBATTERY_VOLTAGE CENTI CHAIN " + \
   "CHARGE CONDUCTANCE COULOMB COULOMBCONST COULOMBCONST_ERR CUP CURRENT" + \
   " DALTON DALTON_ERR DAY DBATTERY DBATTERY_CHARGE DBATTERY_ENERGY DBAT" + \
   "TERY_VOLTAGE DBLEPS DBLMAN DBLMAX DBLMAXLN DBLSIG DECA DECI DEGC DEG" + \
   "F DEGR DENSITY DIME_DIAMETER DIME_HEIGHT DIME_MASS DISTANCE DIT DRYG" + \
   "ALLON dvCs_ENERGY dvCs_ERR dvCs_Hz dvCs_WAVELENGTH E EARTH_AGE EHF_E" + \
   "NERGY EHF_Hz EHF_WAVELENGTH EINSTEIN EINSTEIN_ERR ELECTRIC ELECTRIC_" + \
   "ERR ELECTRON_CHARGE ELECTRON_CHARGE_ERR ELECTRON_MASSA ELECTRON_MASS" + \
   "A_ERR ELECTRONVOLT ELEMENTARYCHARGE ELEMENTARYCHARGE_ERR ELEVATIONMA" + \
   "X ELEVATIONMIN ENERGY EPSILON0 EPSILON0_ERR ERG EULER EUV_ENERGY EUV" + \
   "_Hz EUV_WAVELENGTH eV EXA EXBI FARAD FARADAY FARADAY_ERR FARADAY_REC" + \
   " FARADAY_REC_ERR FARADAYCONST FARADAYCONST_ERR FARADAYCONST_REC FARA" + \
   "DAYCONST_REC_ERR FEET FEIGENBAUM FEMTO FINESTRUCTURE FINESTRUCTURE_E" + \
   "RR FINESTRUCTURE_REC FINESTRUCTURE_REC_ERR FIR_ENERGY FIR_Hz FIR_WAV" + \
   "ELENGTH FLICK FLOZ FLTEPS FLTMAN FLTMAX FLTSIG FOE FOOT FORCE FREQUE" + \
   "NCY FT FURLONG G G_ERR GALACTICCENTER GALLON GAMMA_ENERGY GAMMA_Hz G" + \
   "AMMA_WAVELENGTH GAMMAMIN GAS GAS_ERR GAS_REC GAS_REC_ERR GASCONST GA" + \
   "SCONST_ERR GASCONST_REC GASCONST_REC_ERR GIANTIMPACT GIBI GIGA GOLFB" + \
   "ALL_MASS GOLFBALL_RADIUS GRAD GRAIN GRAM GRAVITATION GRAVITATION_ERR" + \
   " GRAVITATION_REC GRAVITATION_REC_ERR GRAVITATIONIERS GRAVITATIONNASA" + \
   " GRAVITY GRAVITY_ERR GREEN_ENERGY GREEN_Hz GREEN_WAVELENGTH GYEAR GY" + \
   "EAR_AT_0J2K h h_ERR h_REC h_REC_ERR HAND HART HARTLEY HBAR HBAR_ERR " + \
   "HECTARE HECTO HENRY HERTZ HF_ENERGY HF_Hz HF_WAVELENGTH HI HI_ENERGY" + \
   " HI_ERR HI_Hz HI_WAVELENGTH HORSE HORSEPOWER HOUR HP HPMETRIC HUBBLE" + \
   " HUBBLE_ERR HUBBLERADIUS HX_ENERGY HX_Hz HX_WAVELENGTH HYDROGENLINE " + \
   "HYDROGENLINE_ERR Hz INCH INDUCTANCE INHG INTMAX J2K J2KDAY JCENTURY " + \
   "JDAY JDSEC_AT_0GREGORIAN JDSEC_AT_0J2K JDSEC_AT_0KWT JDSEC_AT_0UET J" + \
   "EWISH_FIRST_MONTH JOSEPHSON JOSEPHSON_ERR JOULE JYEAR K_AT_0TEMPC K_" + \
   "AT_0TEMPF K_AT_0TEMPR kB kB_ERR kB_REC kB_REC_ERR KCD KCD_ERR KELVIN" + \
   " KG KGF KGFM kgfm_PER_lbfin KIBI KILO KILOGRAM KPGBOUNDARY KWT LB LB" + \
   "F LBFFT lbfft_PER_lbfin LBFIN lbfinrpm_PER_Hp LC_CIRCLE_RADIUS LC_CI" + \
   "RCLE_X LC_CIRCLE_Y LC_FACTORS_CNT LC_GD_CNT LC_GD_DAY LC_GD_DOW LC_G" + \
   "D_HOUR LC_GD_JD LC_GD_MIN LC_GD_MONTH LC_GD_NUM LC_GD_SEC LC_GD_YEAR" + \
   " LC_HALAQIM_PER_HOUR LC_KNUTH_ARRAY_CNT LC_KNUTH_KK_CNT LC_KNUTH_LL " + \
   "LC_KNUTH_MAX LC_KNUTH_QUALITY_CNT LC_KNUTH_TT LC_MAGIC_INT LC_MAGIC_" + \
   "INT_NOT LC_PARABOLA_COEFF_A LC_PARABOLA_COEFF_B LC_PARABOLA_COEFF_C " + \
   "LC_PARABOLA_REAL_ROOTS LC_PARABOLA_ROOT_A LC_PARABOLA_ROOT_B LC_PARA" + \
   "BOLA_X_AXIS LC_PARABOLA_Y_EXTREMA LC_STTS_CNT LC_STTS_KEY_CNT LC_STT" + \
   "S_MAGIC LC_STTS_MAX LC_STTS_MEAN LC_STTS_MIN LC_STTS_MSQ LC_STTS_NUM" + \
   " LC_STTSC_CNT LC_STTSC_COVAR LC_STTSC_MAGIC LC_STTSC_XX LC_STTSC_YY " + \
   "LC_YEAR_PER_METONIC LENGTH LF_ENERGY LF_Hz LF_WAVELENGTH LIFE_AGE LI" + \
   "GHT LIGHT_ERR LIGHT_REC LIGHT_REC_ERR LIGHTYEAR LINK LITER LITRE LUM" + \
   "EN LUX LX_ELLIPTIC_EPS LX_HALAQIM LX_SHC_SHIFTSHIFT LX_SHC_STEPSHIFT" + \
   " MACH MAGNETIC MAGNETIC_ERR MAGNETICFLUX MAGNETICINDUCTION MARATHON " + \
   "MASS MEBI MEGA METER METRE MF_ENERGY MF_Hz MF_WAVELENGTH MICRO MICRO" + \
   "WAVE_ENERGY MICROWAVE_Hz MICROWAVE_WAVELENGTH MILE MILKYWAY_AGE MILK" + \
   "YWAY_DAY MILKYWAY_MASS MILKYWAY_RADIUS MILLI MINUTE MIR_ENERGY MIR_H" + \
   "z MIR_WAVELENGTH MM MMHG MOLARMASS MOLARMASS_ERR MOLE MONTHS_IN_YEAR" + \
   " MOON_MONTH MPH MPS MPSS MU0 MU0_ERR NANO NAT NEWTON NICKEL_DIAMETER" + \
   " NICKEL_HEIGHT NICKEL_MASS NINEVOLT NINEVOLT_CHARGE NINEVOLT_ENERGY " + \
   "NINEVOLT_VOLTAGE NINEVOLTBATTERY NINEVOLTBATTERY_CHARGE NINEVOLTBATT" + \
   "ERY_ENERGY NINEVOLTBATTERY_VOLTAGE NIR_ENERGY NIR_Hz NIR_WAVELENGTH " + \
   "Nm_PER_lbfin NPBOUNDARY NUV_ENERGY NUV_Hz NUV_WAVELENGTH OHM ORANGE_" + \
   "ENERGY ORANGE_Hz ORANGE_WAVELENGTH OUNCE OZ OZFIN ozfin_PER_lbfin PA" + \
   " PARSEC PEBI PECK PENNY_DIAMETER PENNY_HEIGHT PENNY_MASS PERCENT PER" + \
   "MILLE PETA PHI PHONEBATTERY PHONEBATTERY_CHARGE PHONEBATTERY_ENERGY " + \
   "PHONEBATTERY_VOLTAGE PI PICO PINGPONGBALL_MASS PINGPONGBALL_RADIUS P" + \
   "INT PLANCK PLANCK_ERR PLANCK_REC PLANCK_REC_ERR PLANCKBAR PLANCKBAR_" + \
   "ERR PLANCKCHARGE PLANCKENERGY PLANCKFREQUENCY PLANCKLENGTH PLANCKMAS" + \
   "S PLANCKTEMP PLANCKTIME POINT POUND POWER PPB PPM PPQ PPT PRESSURE P" + \
   "ROTON_RADIUS PROTON_RADIUS_ERR PROXIMACENTAURI PSI PTRBOUNDARY QUART" + \
   " QUARTER_DIAMETER QUARTER_HEIGHT QUARTER_MASS RAD RADIAN RED_ENERGY " + \
   "RED_Hz RED_WAVELENGTH RESISTANCE RPH RPM RPS RYDBERG RYDBERG_ENERGY " + \
   "RYDBERG_ERR RYDBERG_Hz RYDBERG_REC RYDBERG_REC_ERR RYDBERG_WAVELENGT" + \
   "H SECOND SHANNON SHF_ENERGY SHF_Hz SHF_WAVELENGTH SI16MAX SI16MIN SI" + \
   "32MAX SI32MIN SIEMENS SOCCERBALL_MASS SOCCERBALL_RADIUS SOFTBALL_MAS" + \
   "S SOFTBALL_RADIUS SOLARCONSTANT SOLID_ANGLE SPECIFICHEAT SPEED SPHER" + \
   "ESURFACE SQDEG SQUAREDEGREE STANDARDATMOSPHERE STANDARDGRAVITY STEFA" + \
   "N STEFAN_ERR STERADIAN STONE SURVEYFOOT SX_ENERGY SX_Hz SX_WAVELENGT" + \
   "H SXX_ENERGY SXX_Hz SXX_WAVELENGTH TAU TBLSP TEBI TEMPERATURE TEMPF_" + \
   "AT_0TEMPC TENLN TENNISBALL_MASS TENNISBALL_RADIUS TERA TESLA THF_ENE" + \
   "RGY THF_Hz THF_WAVELENGTH TIME TON TONNE TORR TRJBOUNDARY TSP TT_AT_" + \
   "0TAI TT_AT_0UT1 TURN TWOLN TWOSQRT UAMU UAMU_ERR UET UHF_ENERGY UHF_" + \
   "Hz UHF_WAVELENGTH UI16MAX UI32MAX UNITGM UNIVERSE_AGE UNIVERSE_MASS " + \
   "UNIVERSE_RADIUS UVA_ENERGY UVA_Hz UVA_WAVELENGTH UVB_ENERGY UVB_Hz U" + \
   "VB_WAVELENGTH UVC_ENERGY UVC_Hz UVC_WAVELENGTH UVPV VHF_ENERGY VHF_H" + \
   "z VHF_WAVELENGTH VIOLET_ENERGY VIOLET_Hz VIOLET_WAVELENGTH VISCOSITY" + \
   " VOLT VOLTAGE VOLUME VONKLITZING VONKLITZING_ERR W_PER_Hp WATT WEBER" + \
   " WEEK YARD YELLOW_ENERGY YELLOW_Hz YELLOW_WAVELENGTH YELLOWGREEN_ENE" + \
   "RGY YELLOWGREEN_Hz YELLOWGREEN_WAVELENGTH YOBI YOCTO YOTTA ZEBI ZEPT" + \
   "O ZETTA" + \
   "\n" + \
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magic" + \
   "not magicset normal_rand parabola_realroots parabola_xaxis parabola_" + \
   "yextrema randd stts_new timee" + \
   "\n" + \
   "   Kw 1-ary Functions: a2k a2m abs agmean1 agmean1inv ahmean1 almean" + \
   "1 amean1 aqmean1 b2m bankers bell bellx benford_rand bernoulli berno" + \
   "ullid bernoullin bessI0 bessI1 bessJ0 bessJ1 bessK0 bessK1 bessY0 be" + \
   "ssY1 bessY1__1 bharea_to_mass bhdensity_to_mass bhentropy_to_mass bh" + \
   "lifetime_to_mass bhmass_to_area bhmass_to_density bhmass_to_entropy " + \
   "bhmass_to_lifetime bhmass_to_power bhmass_to_radius bhmass_to_tempk " + \
   "bhpower_to_mass bhradius_to_mass bhtempk_to_mass bits_count bits_ls1" + \
   "b bits_ls1bpos bits_ms1b bits_ms1bpos bitwisenot blackbodyf_pdf blac" + \
   "kbodyl_pdf blackbodymode blackbodypower cantor carmichael catalan ca" + \
   "uchy_rand cbrt ceil cent2ratio chisqr_rand circle_get clip clockhour" + \
   " clockmin clocksec clockstdev clocksum cnv_dbl2si16 contfra_print co" + \
   "ntfrac_print contfracd_print corr_delete corr_handlex corr_handley c" + \
   "orrcorr corrslope corrstderr corry0 cos cos__1 cosd cosdinv cosh cos" + \
   "hinv cosintegral cosinv cosm1 cosm1__1 cost costinv cot cotd cotdinv" + \
   " coth cothinv cotinv cott cottinv csc cscd cscdinv csch cschinv csci" + \
   "nv csct csctinv ctz cu cube cuberoot date_easter date_pesach date_ro" + \
   "sh_hashanah day2dhms day2dhmsinv day2hour deg2dms deg2rad deg2sec de" + \
   "g2tur digamma digamma__1 digammainv dms2deg dms2rad doomsday ecc2fla" + \
   "t Ein elliptic1a elliptic1k elliptic1m elliptic1m__1 elliptic1m__2 e" + \
   "lliptic2a elliptic2k elliptic2m elliptic2m__1 ellipticE ellipticK er" + \
   "f erf__1 erf__2 erf__3 erf__4 erfc erfcinv erfcx erfcxinv erfinv eta" + \
   " eulerphi eulerx exp exp__1 exp__2 exp_rand expintegral1 expintegral" + \
   "i expm1 fac facinv factor_print factorial factorialdouble factoriali" + \
   "nv fibo fibox fiboxinv flat2ecc floor frac fubini fusc g2jewish gamm" + \
   "a_rand gau_cdf gau_pdf gau_quantile gd gdinv geo_rand ghmean1 ghmean" + \
   "1inv glmean1 gmean1 gqmean1 has_primitiveroot haversin heaviside her" + \
   "onianmean1 hlmean1 hmean1 hn hn__1 hour2day hqmean1 hypot1 hypot1inv" + \
   " id int_rand iround iseven isint isjewish8short isjewish9short isjew" + \
   "ishleap isleapyear ismagic isneg isnegint isodd ispos isposint ispra" + \
   "ctical isprime issquarefree iszero j2k2dow j2k2jd j2k2kwt j2k2uet j2" + \
   "k2ymdhms jacobicir jd264_print jd2dow jd2j2k jd2kwt jd2uet jd2ymdhms" + \
   " jewish2g jewish2jd jewish2jdx jewish_months_in_year jewish_yearleng" + \
   "th k2a k2m k2tempc k2tempf k2tempr ks_a_cdf kwt2j2k kwt2jd kwt2uet l" + \
   "10 lg lgamma lgamma__1 lgamma__2 lgammainv lix lixinv lmean1 ln ln1p" + \
   " ln__1 ln__2 lns log log10 log2 logintegral logistic_rand lqmean1 lu" + \
   "cas lucasx m2a m2b m2k mertens minkowski mobius n2primish neg nom no" + \
   "rmal_cdf normal_cdf__1 normal_pdf normal_quantile normal_quantile__1" + \
   " num2char_print parabola_get parabola_roots partition partitionq pcf" + \
   " pfg pfl poi_rand pow10 pow2 prime0 prime1 primecount primecountx pr" + \
   "imenext primenth primenth__1 primeprev primitiveroot qmean1 rad2deg " + \
   "rad2dms rad2dms2 rad2sec rad2tur rand_init randl ratio2cent reci rei" + \
   "mann round rto125 rtoi rtoz sba search_check search_search sec sec2d" + \
   "eg sec2dhms sec2rad sec2tur secd secdinv sech sechinv secinv sect se" + \
   "ctinv shc_shft2steps shc_steps2shft shc_steps2shftinv sigma0 sigma1 " + \
   "sigmoid sigmoidinv sign sin sin__1 sinc sinc__1 sincc sincinv sind s" + \
   "indinv sinh sinhinv sinintegral sininv sint sintinv smooth sq sqinv " + \
   "sqrt sqrt__1 sqrt__2 sqrt__3 sqrtx sqrtxp1m1 square squareroot sr_ma" + \
   "ss sr_time stair stts_delete stts_reset sttscount sttsmagic sttsmax " + \
   "sttsmean sttsmin sttsmsq sttsspread sttsstdev sttsstdevmean sttssum " + \
   "sttsvar supercatalan tan tand tandinv tanh tanhinv taninv tant tanti" + \
   "nv tempc2k tempc2tempf tempf2k tempf2tempc tempr2k tgamma tgamma__1 " + \
   "tgamma__2 tgamma__3 tgamma__stirling tgammadouble tgammainv topyh1 t" + \
   "otient tri tri_rand triinv trip trunc tur2deg tur2rad tur2sec uet2j2" + \
   "k uet2jd uet2kwt uni_rand versin wm wminv wp wpinv ymdhms2j2k ymdhms" + \
   "2jd ymdhms_get zag zeta zig zigzag" + \
   "\n" + \
   "   Kw 2-ary Functions: agmean agmean__1 agmeaninva agmeaninvg ahmean" + \
   " almean amean aqmean atan2 atan2d atan2h atan2t atan2u ballot ballot" + \
   "s base_out_print base_outf_print benford_cdf benford_pdf bess_jn bes" + \
   "s_yn bessIn bessIn_ps bessJn bessJn_ps bessJv bessKn bessYn bessYn_p" + \
   "s bessYv beta beta_rand binomial binomial_rand binomialx birthday bi" + \
   "rthdayinv birthdayx bits_get bits_set bitshiftl bitshiftr bitwiseand" + \
   " bitwiseor bitwisexor bkn blackbodyf blackbodyl carlsonRC cauchy_cdf" + \
   " cauchy_pdf cauchy_quantile cd ceil2 chisqr_cdf chisqr_pdf cir2ell c" + \
   "n cn__1 comb combination combx contraharmonic cs d1diamond_d2 d1lt_d" + \
   "2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1 d2" + \
   "ur_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds ell2cir ellipsea" + \
   "rea ellipsecir ellipsecir__1 ellipseecc ellipseflatness ellipsem ell" + \
   "ipsen elliptic1ia elliptic1ik elliptic1im elliptic1im__1 elliptic2ia" + \
   " elliptic2ik elliptic2im elliptic2im__1 elliptic3a elliptic3k ellipt" + \
   "ic3m elliptic3m__1 ellipticEi ellipticF ellipticP entringer eulerian" + \
   " exp_cdf exp_pdf exp_quantile expintegraln factor factorialt floor2 " + \
   "fmod fmods fmodu fmody fmul gamma_cdf gamma_pdf gcd gcda geo_cdf geo" + \
   "_pdf geo_quantile ghmean glmean gmean gompertz_rand gqmean gr_mass g" + \
   "r_massgm gr_time gr_timegm gr_timegm_dr has_primitiveroot_f heronian" + \
   "mean hlmean hmean hnm hqmean hypot int_cdf int_pdf int_quantile ints" + \
   "_rand iseq isge isgt isle islt ismult ismultl isneq ispractical_f is" + \
   "primitiveroot issignsame issquarefree_f isss jacobiphi jewish_monthb" + \
   "egin jewish_monthlength ks_b_cdf ks_cdf ks_quantile lbeta lcam lcams" + \
   " lcantim lcm lcombx ligamma ligammainv lmean logistic_cdf logistic_p" + \
   "df logistic_quantile logx lpermx lqmean max2 maxabs maxabs2 maxi mb_" + \
   "cdf mb_pdf mean min2 minabs minabs2 mini mobius_f mods modulo n2perm" + \
   "_print nbd_rand nc nd nevillethetac nevillethetad nevillethetan nevi" + \
   "llethetas ns nthroot__1 pareto_rand perm permutation permx pochhamme" + \
   "r poi_cdf poi_pdf poi_quantile polya_rand polycnum polynum pow powi " + \
   "prime0_f print_array qmean rand_init_array ratio repetendlen rligamm" + \
   "a rms round2 rtomsd ruigamma sc sd shc_shftpoles2steps sigma sigma0_" + \
   "f sigma1_f sn sn__1 spread2stdev stdev2spread stirling1 stirling2 st" + \
   "ts_copy stts_downdate stts_newx stts_scale stts_shift stts_update st" + \
   "ts_update2 t_cdf t_cdf__1 t_pdf t_quantile t_quantile__1 tetracnum t" + \
   "etranum theta1 theta2 theta3 theta4 Tn topyh totient_f trap_rand tri" + \
   "_cdf tri_pdf tri_quantile uigamma uigamma__1 uigammainv Un uni_cdf u" + \
   "ni_pdf uni_quantile variance zeta_cdf zeta_pdf zipf_rand znorder zno" + \
   "rder__1" + \
   "\n" + \
   "   Kw 3-ary Functions: agcmean aghmean atothenmodp atothenmodx base_" + \
   "out_fix_print beta_cdf beta_pdf beta_quantile betainc betainc__1 bin" + \
   "omial_cdf binomial_pdf bits_assign bkbn cantorll cantorul cantorxx c" + \
   "arlsonRD carlsonRF chebeval clip2 clip2x corr_update cossin_ev divi " + \
   "dlog dlogx ellipsoid_surface ellipsoid_volume elliptic3ia elliptic3i" + \
   "k elliptic3im elliptic3im__1 ellipticPi epdf2cdf f11 f_cdf f_quantil" + \
   "e f_quantile__1 fibo3 fit_ls fit_ls0 fit_minmax fit_minmax0 fit_poly" + \
   " fitx_minmax fmod2 fvad fvoa gompertz_cdf gompertz_pdf gompertz_quan" + \
   "tile hms2day horner hypot3 ifzero isalmostequal isbetween isbetweenx" + \
   " isfloorsame iswithin jewishymd2jd kevy_print loanpayment loanrate l" + \
   "oanvalue maxabsoffset maxmin maxwell_boltzmann_cdf maxwell_boltzmann" + \
   "_pdf maxwell_juttner_pdf minabsoffset n2comb_print n2perm nbd_cdf nb" + \
   "d_pdf pareto_cdf pareto_pdf pareto_quantile pendulum pmean polya_cdf" + \
   " polya_pdf pvad pvoa remquou roundy sigma_f sigmoid3 sigmoid3d stts_" + \
   "updatex taninv3 trap_cdf trap_pdf trap_quantile ymd2dow ymd2doy ymd2" + \
   "j2k ymd2j2k__1 ymd2jd zipf_cdf zipf_pdf zipf_quantile" + \
   "\n" + \
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb sp" + \
   "here_d" + \
   "\n" + \
   "   Kw 5-ary Functions: sphere_distance" + \
   "\n" + \
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_destination ellip" + \
   "soid_distance epdf parabola_solve stts_init stts_initx" + \
   "\n"
)
def kw_desc():
   return( \
   "   Kw Constants: AAABATTERY(_(CHARGE|ENERGY|VOLTAGE))? AABATTERY(_(C" + \
   "HARGE|ENERGY|VOLTAGE))? ACCELERATION ACRE ACTION AH ALPHA(|_(ERR|REC" + \
   "(_ERR)?)|SQRT) AMOUNT AMP(ERE)? AMU(_ERR)? ANGLE APERY ARC(DEG(REE)?" + \
   "|GRAD|MIN(UTE)?|RADIAN|SEC(OND)?|TURN) AREA? ASTRONOMICALUNIT ATM(OS" + \
   "PHERE(_ERR)?)? ATOMICMASSUNIT(_ERR)? ATTO AU AU_ERR AVOGADRO(|_(ERR|" + \
   "REC(_ERR)?)) BAN BAR(N|REL)? BAS(EBALL_(MASS|RADIUS)|KETBALL_(MASS|R" + \
   "ADIUS)) BEKENSTEIN(ENTROPY|INFORMATION) BHENTROPY_AREA BHMASS(2(_(AR" + \
   "EA|DENSITY|ENTROPY)|POWER)|3_LIFETIME|_RADIUS|TEMP) BHRADIUS2DENSITY" + \
   " BIT BLUE_(ENERGY|Hz|WAVELENGTH) BOLTZMANN(|_(ERR|REC(_ERR)?)) BTU(_" + \
   "(IT|TH))? BUSHEL c c_ERR c_REC(_ERR)? CAL(_(IT|TH)|ORIE)? CANDELA CA" + \
   "PACITANCE CAR(AT|BATTERY(_(CHARGE|ENERGY|VOLTAGE))?) CBATTERY(_(CHAR" + \
   "GE|ENERGY|VOLTAGE))? CENTI CHA(IN|RGE) CONDUCTANCE COULOMB(CONST(_ER" + \
   "R)?)? CUP CURRENT DALTON(_ERR)? DAY DBATTERY(_(CHARGE|ENERGY|VOLTAGE" + \
   "))? DBL(EPS|MA(N|X(LN)?)|SIG) DEC[AI] DEG[CFR] DENSITY DIME_(DIAMETE" + \
   "R|HEIGHT|MASS) DISTANCE DIT DRYGALLON dvCs_(E(NERGY|RR)|Hz|WAVELENGT" + \
   "H) E EARTH_AGE EHF_(ENERGY|Hz|WAVELENGTH) EINSTEIN(_ERR)? ELE(CTR(IC" + \
   "(_ERR)?|ON(_(CHARGE(_ERR)?|MASSA(_ERR)?)|VOLT))|MENTARYCHARGE(_ERR)?" + \
   "|VATIONM(AX|IN)) ENERGY EPSILON0(_ERR)? ERG EULER EUV_(ENERGY|Hz|WAV" + \
   "ELENGTH) eV EXA EXBI FARAD(|AY(|_(ERR|REC(_ERR)?)|CONST(|_(ERR|REC(_" + \
   "ERR)?)))) FEET FEIGENBAUM FEMTO FINESTRUCTURE(|_(ERR|REC(_ERR)?)) FI" + \
   "R_(ENERGY|Hz|WAVELENGTH) FLICK FLOZ FLT(EPS|MA[NX]|SIG) FOE FOOT FOR" + \
   "CE FREQUENCY FT FURLONG G G_ERR GAL(ACTICCENTER|LON) GAMMA(_(ENERGY|" + \
   "Hz|WAVELENGTH)|MIN) GAS(|_(ERR|REC(_ERR)?)|CONST(|_(ERR|REC(_ERR)?))" + \
   ") GIANTIMPACT GIBI GIGA GOLFBALL_(MASS|RADIUS) GRA(D|IN|M|VIT(ATION(" + \
   "|_(ERR|REC(_ERR)?)|IERS|NASA)|Y(_ERR)?)) GREEN_(ENERGY|Hz|WAVELENGTH" + \
   ") GYEAR(_AT_0J2K)? h h_ERR h_REC(_ERR)? HAND HART(LEY)? HBAR(_ERR)? " + \
   "HECT(ARE|O) HENRY HERTZ HF_(ENERGY|Hz|WAVELENGTH) HI HI_(E(NERGY|RR)" + \
   "|Hz|WAVELENGTH) HORSE(POWER)? HOUR HP HPMETRIC HUBBLE(_ERR|RADIUS)? " + \
   "HX_(ENERGY|Hz|WAVELENGTH) HYDROGENLINE(_ERR)? Hz INCH INDUCTANCE INH" + \
   "G INTMAX J2K(DAY)? JCENTURY JDAY JDSEC_AT_0(GREGORIAN|J2K|KWT|UET) J" + \
   "EWISH_FIRST_MONTH JOSEPHSON(_ERR)? JOULE JYEAR K_AT_0TEMP[CFR] kB kB" + \
   "_(ERR|REC(_ERR)?) KCD(_ERR)? KELVIN KG KGFM? kgfm_PER_lbfin KIBI KIL" + \
   "O(GRAM)? KPGBOUNDARY KWT LB LBF(FT)? lbfft_PER_lbfin LBFIN lbfinrpm_" + \
   "PER_Hp LC_(CIRCLE_(RADIUS|[XY])|FACTORS_CNT|GD_(CNT|D(AY|OW)|HOUR|JD" + \
   "|M(IN|ONTH)|NUM|SEC|YEAR)|HALAQIM_PER_HOUR|KNUTH_(ARRAY_CNT|KK_CNT|L" + \
   "L|MAX|QUALITY_CNT|TT)|MAGIC_INT(_NOT)?|PARABOLA_(COEFF_[ABC]|R(EAL_R" + \
   "OOTS|OOT_[AB])|X_AXIS|Y_EXTREMA)|STTS(_(CNT|KEY_CNT|M(A(GIC|X)|EAN|I" + \
   "N|SQ)|NUM)|C_(C(NT|OVAR)|MAGIC|XX|YY))|YEAR_PER_METONIC) LENGTH LF_(" + \
   "ENERGY|Hz|WAVELENGTH) LIFE_AGE LIGHT(|_(ERR|REC(_ERR)?)|YEAR) LINK L" + \
   "IT(ER|RE) LUMEN LUX LX_(ELLIPTIC_EPS|HALAQIM|SHC_S(HIFTSHIFT|TEPSHIF" + \
   "T)) MACH MAGNETIC(_ERR|FLUX|INDUCTION)? MARATHON MASS MEBI MEGA MET(" + \
   "ER|RE) MF_(ENERGY|Hz|WAVELENGTH) MICRO(WAVE_(ENERGY|Hz|WAVELENGTH))?" + \
   " MIL(E|KYWAY_(AGE|DAY|MASS|RADIUS)|LI) MINUTE MIR_(ENERGY|Hz|WAVELEN" + \
   "GTH) MM MMHG MOL(ARMASS(_ERR)?|E) MONTHS_IN_YEAR MOON_MONTH MPH MPSS" + \
   "? MU0(_ERR)? NANO NAT NEWTON NICKEL_(DIAMETER|HEIGHT|MASS) NINEVOLT(" + \
   "|_(CHARGE|ENERGY|VOLTAGE)|BATTERY(_CHARGE|_ENERGY|_VOLTAGE)?) NIR_(E" + \
   "NERGY|Hz|WAVELENGTH) Nm_PER_lbfin NPBOUNDARY NUV_(ENERGY|Hz|WAVELENG" + \
   "TH) OHM ORANGE_(ENERGY|Hz|WAVELENGTH) OUNCE OZ OZFIN ozfin_PER_lbfin" + \
   " PA PARSEC PEBI PECK PENNY_(DIAMETER|HEIGHT|MASS) PER(CENT|MILLE) PE" + \
   "TA PHI PHONEBATTERY(_(CHARGE|ENERGY|VOLTAGE))? PI PICO PIN(GPONGBALL" + \
   "_(MASS|RADIUS)|T) PLANCK(|_(ERR|REC(_ERR)?)|BAR(_ERR)?|CHARGE|ENERGY" + \
   "|FREQUENCY|LENGTH|MASS|T(EMP|IME)) POINT POUND POWER PPB PPM PPQ PPT" + \
   " PRESSURE PRO(TON_RADIUS(_ERR)?|XIMACENTAURI) PSI PTRBOUNDARY QUART(" + \
   "ER_(DIAMETER|HEIGHT|MASS))? RAD(IAN)? RED_(ENERGY|Hz|WAVELENGTH) RES" + \
   "ISTANCE RPH RPM RPS RYDBERG(|_(E(NERGY|RR)|Hz|REC(_ERR)?|WAVELENGTH)" + \
   ") SECOND SHANNON SHF_(ENERGY|Hz|WAVELENGTH) SI16M(AX|IN) SI32M(AX|IN" + \
   ") SIEMENS SOCCERBALL_(MASS|RADIUS) SOFTBALL_(MASS|RADIUS) SOL(ARCONS" + \
   "TANT|ID_ANGLE) SPE(CIFICHEAT|ED) SPHERESURFACE SQDEG SQUAREDEGREE ST" + \
   "ANDARD(ATMOSPHERE|GRAVITY) STE(FAN(_ERR)?|RADIAN) STONE SURVEYFOOT S" + \
   "X_(ENERGY|Hz|WAVELENGTH) SXX_(ENERGY|Hz|WAVELENGTH) TAU TBLSP TEBI T" + \
   "EMP(ERATURE|F_AT_0TEMPC) TEN(LN|NISBALL_(MASS|RADIUS)) TERA TESLA TH" + \
   "F_(ENERGY|Hz|WAVELENGTH) TIME TON(NE)? TORR TRJBOUNDARY TSP TT_AT_0(" + \
   "TAI|UT1) TURN TWO(LN|SQRT) UAMU(_ERR)? UET UHF_(ENERGY|Hz|WAVELENGTH" + \
   ") UI16MAX UI32MAX UNI(TGM|VERSE_(AGE|MASS|RADIUS)) UVA_(ENERGY|Hz|WA" + \
   "VELENGTH) UVB_(ENERGY|Hz|WAVELENGTH) UVC_(ENERGY|Hz|WAVELENGTH) UVPV" + \
   " VHF_(ENERGY|Hz|WAVELENGTH) VIOLET_(ENERGY|Hz|WAVELENGTH) VISCOSITY " + \
   "VOL(T(AGE)?|UME) VONKLITZING(_ERR)? W_PER_Hp WATT WEBER WEEK YARD YE" + \
   "LLOW(_(ENERGY|Hz|WAVELENGTH)|GREEN_(ENERGY|Hz|WAVELENGTH)) YOBI YOCT" + \
   "O YOTTA ZEBI ZEPTO ZETTA" + \
   "\n" + \
   "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv magic" + \
   "(not|set) normal_rand parabola_(realroots|xaxis|yextrema) randd stts" + \
   "_new timee" + \
   "\n" + \
   "   Kw 1-ary Functions: a2k a2m abs agmean1(inv)? ahmean1 almean1 ame" + \
   "an1 aqmean1 b2m bankers bellx? benford_rand bernoulli[dn]? bess(I[01" + \
   "]|J[01]|K[01]|Y(0|1(__1)?)) bharea_to_mass bhdensity_to_mass bhentro" + \
   "py_to_mass bhlifetime_to_mass bhmass_to_(area|density|entropy|lifeti" + \
   "me|power|radius|tempk) bhpower_to_mass bhradius_to_mass bhtempk_to_m" + \
   "ass bit(s_(count|ls1b(pos)?|ms1b(pos)?)|wisenot) blackbody(f_pdf|l_p" + \
   "df|mode|power) cantor carmichael catalan cauchy_rand cbrt ceil cent2" + \
   "ratio chisqr_rand circle_get clip clock(hour|min|s(ec|tdev|um)) cnv_" + \
   "dbl2si16 contfra(_print|c(_print|d_print)) corr(_(delete|handle[xy])" + \
   "|corr|s(lope|tderr)|y0) cos(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1" + \
   ")?|t(inv)?) cot([dht]?(inv)?)? csc([dht]?(inv)?)? ctz cu cube(root)?" + \
   " date_(easter|pesach|rosh_hashanah) day2(dhms(inv)?|hour) deg2(dms|r" + \
   "ad|sec|tur) digamma(__1|inv)? dms2(deg|rad) doomsday ecc2flat Ein el" + \
   "liptic(1([ak]|m(__[12])?)|2([ak]|m(__1)?)|[EK]) erf(|__([12]|[34])|c" + \
   "(inv|x(inv)?)?|inv) eta euler(phi|x) exp(_(_[12]|rand)|integral[1i]|" + \
   "m1)? fac(|inv|tor(_print|ial(double|inv)?)) fibo(x(inv)?)? flat2ecc " + \
   "floor frac fubini fusc g2jewish gamma_rand gau_(cdf|pdf|quantile) gd" + \
   " gdinv geo_rand ghmean1(inv)? glmean1 gmean1 gqmean1 has_primitivero" + \
   "ot haversin heaviside heronianmean1 hlmean1 hmean1 hn hn__1 hour2day" + \
   " hqmean1 hypot1(inv)? id int_rand iround is(even|int|jewish8short|je" + \
   "wish9short|jewishleap|leapyear|magic|neg|negint|odd|pos|posint|pract" + \
   "ical|prime|squarefree|zero) j2k2(dow|jd|kwt|uet|ymdhms) jacobicir jd" + \
   "2(64_print|dow|j2k|kwt|uet|ymdhms) jewish(2(g|jdx?)|_(months_in_year" + \
   "|yearlength)) k2a k2m k2temp[cfr] ks_a_cdf kwt2(j(2k|d)|uet) l10 lg " + \
   "lgamma(__[12]|inv)? lix(inv)? lmean1 ln ln1p ln__[12] lns log(10|2|i" + \
   "(ntegral|stic_rand))? lqmean1 lucasx? m2a m2b m2k mertens minkowski " + \
   "mobius n2primish neg nom normal_(cdf(__1)?|pdf|quantile(__1)?) num2c" + \
   "har_print par(abola_(get|roots)|titionq?) pcf pfg pfl poi_rand pow(1" + \
   "0|2) prim(e([01]|countx?|n(ext|th(__1)?)|prev)|itiveroot) qmean1 rad" + \
   "2(d(eg|ms2?)|sec|tur) rand(_init|l) ratio2cent reci reimann round rt" + \
   "o(125|[iz]) sba search_(check|search) sec(|2(d(eg|hms)|rad|tur)|[dht" + \
   "]?(inv)?) shc_s(hft2steps|teps2shft(inv)?) sig(m(a[01]|oid(inv)?)|n)" + \
   " sin(|__1|c(__1|c|inv)?|d(inv)?|h(inv)?|in(tegral|v)|t(inv)?) smooth" + \
   " sq sqinv sqrt(__[123]|x(p1m1)?)? square(root)? sr_(mass|time) stair" + \
   " stts(_(delete|reset)|count|m(a(gic|x)|ean|in|sq)|s(pread|tdev(mean)" + \
   "?|um)|var) supercatalan tan([dht]?(inv)?)? temp(c2(k|tempf)|f2(k|tem" + \
   "pc)|r2k) tgamma(__([123]|stirling)|double|inv)? topyh1 totient tri(_" + \
   "rand|inv|p)? trunc tur2(deg|rad|sec) uet2(j(2k|d)|kwt) uni_rand vers" + \
   "in wm(inv)? wp(inv)? ymdhms(2j(2k|d)|_get) zag zeta zig(zag)?" + \
   "\n" + \
   "   Kw 2-ary Functions: agmean(__1|inv[ag])? ahmean almean amean aqme" + \
   "an atan2([dh]|[tu])? ballots? base_out(_print|f_print) benford_(cdf|" + \
   "pdf) bess(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n(_ps)?|v)) beta(_rand" + \
   ")? binomial(_rand|x)? birthday(inv|x)? bit(s(_(get|set)|hift[lr])|wi" + \
   "se(and|or|xor)) bkn blackbody[fl] carlsonRC cauchy_(cdf|pdf|quantile" + \
   ") cd ceil2 chisqr_(cdf|pdf) cir2ell cn cn__1 comb(ination|x)? contra" + \
   "harmonic cs d1diamond_d2 d1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2" + \
   "hypot_d1 d2lt_d1 d2spiral_d1 d2ur_d1 days_in_month dc ddist dist dlo" + \
   "g1 dn dn__1 ds ell(2cir|ip(se(area|cir(__1)?|ecc|flatness|[mn])|tic(" + \
   "1i([ak]|m(__1)?)|2i([ak]|m(__1)?)|3([ak]|m(__1)?)|Ei|[FP]))) entring" + \
   "er eulerian exp(_(cdf|pdf|quantile)|integraln) factor(ialt)? floor2 " + \
   "fmod[suy]? fmul gamma_(cdf|pdf) gcda? geo_(cdf|pdf|quantile) ghmean " + \
   "glmean gmean gompertz_rand gqmean gr_(mass(gm)?|time(gm(_dr)?)?) has" + \
   "_primitiveroot_f heronianmean hlmean hmean hnm hqmean hypot int(_(cd" + \
   "f|pdf|quantile)|s_rand) is(eq|ge|gt|le|lt|mult|multl|neq|practical_f" + \
   "|primitiveroot|signsame|squarefree_f|ss) jacobiphi jewish_month(begi" + \
   "n|length) ks_(b_cdf|cdf|quantile) lbeta lca(ms?|ntim) lcm lcombx lig" + \
   "amma(inv)? lmean log(istic_(cdf|pdf|quantile)|x) lpermx lqmean max(2" + \
   "|abs2?|i) mb_(cdf|pdf) mean min(2|abs2?|i) mobius_f mod(s|ulo) n2per" + \
   "m_print nbd_rand nc nd nevilletheta([cd]|[ns]) ns nthroot__1 pareto_" + \
   "rand perm(utation|x)? pochhammer poi_(cdf|pdf|quantile) poly(a_rand|" + \
   "cnum|num) powi? pri(me0_f|nt_array) qmean rand_init_array ratio repe" + \
   "tendlen rligamma rms round2 rtomsd ruigamma sc sd shc_shftpoles2step" + \
   "s sigma(0_f|1_f)? sn sn__1 spread2stdev stdev2spread stirling[12] st" + \
   "ts_(copy|downdate|newx|s(cale|hift)|update2?) t_cdf(__1)? t_pdf t_qu" + \
   "antile(__1)? tetra(cnum|num) theta([12]|[34]) Tn topyh totient_f tra" + \
   "p_rand tri_(cdf|pdf|quantile) uigamma(__1|inv)? Un uni_(cdf|pdf|quan" + \
   "tile) variance zeta_(cdf|pdf) zipf_rand znorder(__1)?" + \
   "\n" + \
   "   Kw 3-ary Functions: agcmean aghmean atothenmod[px] base_out_fix_p" + \
   "rint beta(_(cdf|pdf|quantile)|inc(__1)?) binomial_(cdf|pdf) bits_ass" + \
   "ign bkbn cantor(ll|ul|xx) carlsonR[DF] chebeval clip2x? corr_update " + \
   "cossin_ev divi dlogx? ellip(soid_(surface|volume)|tic(3i([ak]|m(__1)" + \
   "?)|Pi)) epdf2cdf f11 f_cdf f_quantile(__1)? fibo3 fit(_(ls0?|minmax0" + \
   "?|poly)|x_minmax) fmod2 fvad fvoa gompertz_(cdf|pdf|quantile) hms2da" + \
   "y horner hypot3 ifzero is(almostequal|between|betweenx|floorsame|wit" + \
   "hin) jewishymd2jd kevy_print loan(payment|rate|value) max(absoffset|" + \
   "min|well_(boltzmann_(cdf|pdf)|juttner_pdf)) minabsoffset n2comb_prin" + \
   "t n2perm nbd_(cdf|pdf) pareto_(cdf|pdf|quantile) pendulum pmean poly" + \
   "a_(cdf|pdf) pvad pvoa remquou roundy sigm(a_f|oid3d?) stts_updatex t" + \
   "aninv3 trap_(cdf|pdf|quantile) ymd2(do[wy]|j(2k(__1)?|d)) zipf_(cdf|" + \
   "pdf|quantile)" + \
   "\n" + \
   "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2comb sp" + \
   "here_d" + \
   "\n" + \
   "   Kw 5-ary Functions: sphere_distance" + \
   "\n" + \
   "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_d(estination|ista" + \
   "nce) epdf parabola_solve stts_initx?" + \
   "\n"
)
