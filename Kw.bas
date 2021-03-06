'    Copyright (C) 2021 by Kevin D. Woerner
''-' =KDW= ################# BUILDER $KWROOT/0lib/vkkcp.sh ##################
''-' =KDW= ############# SOURCE $KWROOT/codekdw/kw-lib/Kw.fwipp #############
''-' =KDW= #### THIS FILE CAN BE OVERWRITTEN BY KEVIN D. WOERNER OR HIS #####
''-' =KDW= ############ MINIONS AT *ANY* TIME. Caveat utilitor. #############
' 2021-05-14 kdw  For Changelog, See File Kw.varylog
Attribute VB_Name = "Kw"
Option Explicit
Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables #################################### LANG_VB6 #
Public Const KILOGRAM As Double = 1.0
Public Const METER As Double = 1.0
Public Const SECOND As Double = 1.0
Public Const KELVIN As Double = 1.0
Public Const AMPERE As Double = 1.0
Public Const MOLE As Double = 1.0
Public Const CANDELA As Double = 1.0
Public Const BIT As Double = 1.0
Public Const RADIAN As Double = 1.0
Public Const MASS As Double = KILOGRAM
Public Const LENGTH As Double = METER
Public Const DISTANCE As Double = LENGTH
Public Const TEMPERATURE As Double = KELVIN
Public Const TIME As Double = SECOND
Public Const ANGLE As Double = RADIAN
Public Const AMOUNT As Double = MOLE
Public Const CURRENT As Double = AMPERE
Public Const CHARGE As Double = AMPERE * SECOND
Public Const COULOMB As Double = AMPERE * SECOND
Public Const STERADIAN As Double = (RADIAN * RADIAN)
Public Const METRE As Double = METER
Public Const KG As Double = KILOGRAM
Public Const RAD As Double = RADIAN
Public Const E As Double = _
         2.718281828459045235360287471352662497757247093699960
Public Const TAU As Double = _
         6.283185307179586476925286766559005768394338798750212
Public Const PHI As Double = _
         1.618033988749894848204586834365638117720309179805763
Public Const TWOLN As Double = _
         0.693147180559945309417232121458176568075500134360255
Public Const TENLN As Double = _
         2.302585092994045684017991454684364207601101488628773
Public Const TWOSQRT As Double = _
         1.414213562373095048801688724209698078569671875376948
Public Const EULER As Double = _
         0.577215664901532860606512090082402431042159335939924
Public Const FEIGENBAUM As Double = _
         4.669201609102990671853203820466201617258185577475769
Public Const APERY As Double = _
         1.202056903159594285399738161511449990764986292340499
Public Const GAMMAMIN As Double = _
         1.461632144968362341262659542325721328468196204006446
Public Const PI As Double = TAU / 2.0
Public Const YOTTA As Double = 1.0E+24
Public Const ZETTA As Double = 1.0E+21
Public Const EXA As Double = 1.0E+18
Public Const PETA As Double = 1.0E+15
Public Const TERA As Double = 1.0E+12
Public Const GIGA As Double = 1.0E+9
Public Const MEGA As Double = 1.0E+6
Public Const KILO As Double = 1.0E+3
Public Const HECTO As Double = 1.0E+2
Public Const DECA As Double = 1.0E+1
Public Const DECI As Double = 1.0E-1
Public Const CENTI As Double = 1.0E-2
Public Const MILLI As Double = 1.0E-3
Public Const MICRO As Double = 1.0E-6
Public Const NANO As Double = 1.0E-9
Public Const PICO As Double = 1.0E-12
Public Const FEMTO As Double = 1.0E-15
Public Const ATTO As Double = 1.0E-18
Public Const ZEPTO As Double = 1.0E-21
Public Const YOCTO As Double = 1.0E-24
Public Const KIBI As Double = 1024.0
Public Const MEBI As Double = KIBI * KIBI
Public Const GIBI As Double = MEBI * KIBI
Public Const TEBI As Double = GIBI * KIBI
Public Const PEBI As Double = TEBI * KIBI
Public Const EXBI As Double = PEBI * KIBI
Public Const ZEBI As Double = EXBI * KIBI
Public Const YOBI As Double = ZEBI * KIBI
Public Const MPS As Double = METER / SECOND
Public Const MPSS As Double = METER / (SECOND * (SECOND))
Public Const UNITGM As Double = METER * (MPS * (MPS))
Public Const NEWTON As Double = KILOGRAM * MPSS
Public Const JOULE As Double = NEWTON * METER
Public Const PA As Double = NEWTON / (METER * (METER))
Public Const WATT As Double = JOULE / SECOND
Public Const HERTZ As Double = 1.0 / SECOND
Public Const Hz As Double = HERTZ
Public Const AMP As Double = AMPERE
Public Const VOLT As Double = WATT / AMPERE
Public Const OHM As Double = VOLT / AMPERE
Public Const HENRY As Double = OHM * SECOND
Public Const FARAD As Double = COULOMB / VOLT
Public Const SIEMENS As Double = 1.0 / OHM
Public Const WEBER As Double = VOLT * SECOND
Public Const TESLA As Double = WEBER / (METER * (METER))
Public Const LUMEN As Double = CANDELA * STERADIAN
Public Const LUX As Double = LUMEN / (METER * (METER))
Public Const BOLTZMANN As Double = 1.380649E-23 * JOULE / KELVIN
Public Const BOLTZMANN_ERR As Double = 0.0
Public Const BOLTZMANN_REC As Double = 1.0 / BOLTZMANN
Public Const BOLTZMANN_REC_ERR As Double = 0.0
Public Const ELEMENTARYCHARGE As Double = 1.602176634E-19 * COULOMB
Public Const ELEMENTARYCHARGE_ERR As Double = 0.0
Public Const LIGHT As Double = 2.99792458E+8 * METER / SECOND
Public Const LIGHT_ERR As Double = 0.0
Public Const LIGHT_REC As Double = 1.0 / LIGHT
Public Const LIGHT_REC_ERR As Double = 0.0
Public Const AVOGADRO As Double = 6.02214076E+23 / MOLE
Public Const AVOGADRO_ERR As Double = 0.0
Public Const AVOGADRO_REC As Double = 1.0 / AVOGADRO
Public Const AVOGADRO_REC_ERR As Double = 0.0
Public Const PLANCK As Double = 6.62607015E-34 * JOULE * SECOND
Public Const PLANCK_ERR As Double = 0.0
Public Const PLANCK_REC As Double = 1.0 / PLANCK
Public Const PLANCK_REC_ERR As Double = 0.0
Public Const KCD As Double = 6.83E+2 * LUMEN / WATT
Public Const KCD_ERR As Double = 0.0
Public Const dvCs_Hz As Double = 9.19263177E+9 / SECOND
Public Const dvCs_WAVELENGTH As Double = LIGHT / dvCs_Hz
Public Const dvCs_ENERGY As Double = dvCs_Hz * PLANCK
Public Const dvCs_ERR As Double = 0.0
Public Const kB As Double = BOLTZMANN
Public Const kB_ERR As Double = BOLTZMANN_ERR
Public Const kB_REC As Double = 1.0 / kB
Public Const kB_REC_ERR As Double = BOLTZMANN_ERR
Public Const ELECTRON_CHARGE As Double = - ELEMENTARYCHARGE
Public Const ELECTRON_CHARGE_ERR As Double = ELEMENTARYCHARGE_ERR
Public Const PLANCKBAR As Double = PLANCK / TAU
Public Const PLANCKBAR_ERR As Double = PLANCK_ERR
Public Const h As Double = PLANCK
Public Const h_ERR As Double = PLANCK_ERR
Public Const h_REC As Double = 1.0 / PLANCK
Public Const h_REC_ERR As Double = PLANCK_ERR
Public Const c As Double = LIGHT
Public Const c_ERR As Double = LIGHT_ERR
Public Const c_REC As Double = 1.0 / LIGHT
Public Const c_REC_ERR As Double = LIGHT_ERR
Public Const HBAR As Double = PLANCKBAR
Public Const HBAR_ERR As Double = PLANCKBAR_ERR
Public Const GRAVITY As Double = 9.80665 * MPSS
Public Const GRAVITY_ERR As Double = 0.0
Public Const ATMOSPHERE As Double = 1.01325E+5 * PA
Public Const ATMOSPHERE_ERR As Double = 0.0
Public Const AU As Double = 1.495978707E+11 * METER
Public Const AU_ERR As Double = 0.0
Public Const JOSEPHSON As Double = 2.0 * ELEMENTARYCHARGE / PLANCK
Public Const JOSEPHSON_ERR As Double = 0.0
Public Const VONKLITZING As Double = PLANCK / (ELEMENTARYCHARGE * _
         (ELEMENTARYCHARGE))
Public Const VONKLITZING_ERR As Double = 0.0
Public Const FARADAY As Double = ELEMENTARYCHARGE * AVOGADRO
Public Const FARADAY_ERR As Double = 0.0
Public Const FARADAY_REC As Double = 1.0 / FARADAY
Public Const FARADAY_REC_ERR As Double = 0.0
Public Const GAS As Double = BOLTZMANN * AVOGADRO
Public Const GAS_ERR As Double = 0.0
Public Const GAS_REC As Double = 1.0 / GAS
Public Const GAS_REC_ERR As Double = 0.0
Public Const FARADAYCONST As Double = FARADAY
Public Const FARADAYCONST_ERR As Double = FARADAY_ERR
Public Const FARADAYCONST_REC As Double = 1.0 / FARADAYCONST
Public Const FARADAYCONST_REC_ERR As Double = FARADAY_ERR
Public Const GASCONST As Double = GAS
Public Const GASCONST_ERR As Double = GAS_ERR
Public Const GASCONST_REC As Double = 1.0 / GASCONST
Public Const GASCONST_REC_ERR As Double = GAS_ERR
Public Const GRAVITATION As Double = 6.67430E-11 * UNITGM / KILOGRAM
Public Const GRAVITATION_ERR As Double = 2.2E-5
Public Const GRAVITATION_REC As Double = 1.0 / GRAVITATION
Public Const GRAVITATION_REC_ERR As Double = 2.2E-5
Public Const RYDBERG As Double = 1.0973731568160E+7 * LIGHT / METER
Public Const RYDBERG_ERR As Double = 1.9E-12
Public Const RYDBERG_REC As Double = 1.0 / RYDBERG
Public Const RYDBERG_REC_ERR As Double = 1.9E-12
Public Const G As Double = GRAVITATION
Public Const G_ERR As Double = GRAVITATION_ERR
Public Const ALPHA As Double = 1.0 / 137.035999206
Public Const ALPHA_ERR As Double = 8.1E-11
Public Const ALPHA_REC As Double = 1.0 / ALPHA
Public Const ALPHA_REC_ERR As Double = 8.1E-11
Public Const ALPHASQRT As Double = _
         8.54245430938154667258494003787357783877088051044776E-2
Public Const FLTSIG As Double = 23
Public Const FLTMAN As Double = 8
Public Const FLTEPS As Double = 1.1920928955078125E-7
Public Const FLTMAX As Double = 3.402823466385288598E+38
Public Const DBLMAXLN As Double = TWOLN * 1024.0
Public Const DBLSIG As Double = 52
Public Const DBLMAN As Double = 11
Public Const DBLEPS As Double = 2.220446049250313E-16
Public Const DBLMAX As Double = 1.79769313486227E+308
Public Const SI16MAX As Double = 32767
Public Const SI16MIN As Double = -32768
Public Const UI16MAX As Double = 65535
Public Const SI32MAX As Double = 2147483647
Public Const SI32MIN As Double = -2147483648
Public Const UI32MAX As Double = 4294967295
Public Const INTMAX As Double = SI32MAX
Public Const JEWISH_FIRST_MONTH As Double = 7
Public Const MONTHS_IN_YEAR As Double = 12
Public Const UVPV As Double = MICRO
Public Const MINUTE As Double = 60.0 * SECOND
Public Const HOUR As Double = 60.0 * MINUTE
Public Const EARTH_SOLARDAY As Double = 24.0 * HOUR
Public Const WEEK As Double = 7.0 * EARTH_SOLARDAY
Public Const FLICK As Double = SECOND / 705600000.0
Public Const JDAY As Double = EARTH_SOLARDAY
Public Const JYEAR As Double = 365.25 * JDAY
Public Const JCENTURY As Double = 100.0 * JYEAR
Public Const GYEAR As Double = 365.2425 * EARTH_SOLARDAY
Public Const GYEAR_AT_0J2K As Double = 2000.0
Public Const KWT As Double = 0.1875 * SECOND
Public Const UET As Double = SECOND
Public Const J2K As Double = EARTH_SOLARDAY
Public Const J2KDAY As Double = EARTH_SOLARDAY
Public Const JDSEC_AT_0GREGORIAN As Double = 1721058.5 * JDAY
Public Const JDSEC_AT_0KWT As Double = 2437240.66125 * JDAY
Public Const JDSEC_AT_0J2K As Double = 2451545.0 * JDAY
Public Const JDSEC_AT_0UET As Double = 2440587.5 * JDAY
Public Const TT_AT_0TAI As Double = 32.184 * SECOND
Public Const TT_AT_0UT1 As Double = 68.97 * SECOND
Public Const GRAM As Double = 0.001 * KILOGRAM
Public Const CARAT As Double = 0.2 * GRAM
Public Const TONNE As Double = 1000.0 * KILOGRAM
Public Const POUND As Double = 0.45359237 * KILOGRAM
Public Const LB As Double = POUND
Public Const GRAIN As Double = POUND / 7000.0
Public Const OUNCE As Double = 0.0625 * POUND
Public Const OZ As Double = OUNCE
Public Const STONE As Double = 14.0 * POUND
Public Const TON As Double = 2000.0 * POUND
Public Const MM As Double = MILLI * METER
Public Const INCH As Double = 0.0254 * METER
Public Const HAND As Double = 4.0 * INCH
Public Const FOOT As Double = 12.0 * INCH
Public Const SURVEYFOOT As Double = 1200.0 * METER / 3937.0
Public Const FEET As Double = FOOT
Public Const FT As Double = FOOT
Public Const YARD As Double = 3.0 * FEET
Public Const HORSE As Double = 8.0 * FEET
Public Const LINK As Double = 66.0 * SURVEYFOOT / 100.0
Public Const CHAIN As Double = 100 * LINK
Public Const FURLONG As Double = 10 * CHAIN
Public Const MILE As Double = 5280.0 * FEET
Public Const POINT As Double = INCH / 72.0
Public Const STANDARDGRAVITY As Double = GRAVITY
Public Const GRAVITATIONNASA As Double = 6.67259E-11 * UNITGM / KILOGRAM
Public Const GRAVITATIONIERS As Double = 6.67428E-11 * UNITGM / KILOGRAM
Public Const KGF As Double = KILOGRAM * GRAVITY
Public Const LBF As Double = POUND * GRAVITY
Public Const ATM As Double = ATMOSPHERE
Public Const STANDARDATMOSPHERE As Double = ATMOSPHERE
Public Const TORR As Double = ATMOSPHERE / 760.0
Public Const BAR As Double = 1.0E+5 * PA
Public Const MMHG As Double = 13595.1 * KILOGRAM * GRAVITY * MM / (METER _
         * (METER) * (METER))
Public Const INHG As Double = MMHG * INCH / MM
Public Const PSI As Double = POUND * GRAVITY / (INCH * (INCH))
Public Const DEGC As Double = KELVIN
Public Const DEGF As Double = KELVIN / 1.8
Public Const DEGR As Double = DEGF
Public Const K_AT_0TEMPC As Double = 273.15 * DEGC
Public Const K_AT_0TEMPF As Double = 459.67 * DEGF
Public Const K_AT_0TEMPR As Double = 0.0 * DEGR
Public Const TEMPF_AT_0TEMPC As Double = 32.0 * KELVIN
Public Const MACH As Double = 331.46 * MPS
Public Const MPH As Double = MILE / HOUR
Public Const HECTARE As Double = 10000.0 * (METER * (METER))
Public Const ARE As Double = 100.0 * (METER * (METER))
Public Const ACRE As Double = (MILE * (MILE)) / 640.0
Public Const BARN As Double = 1.0E-28 * (METER * (METER))
Public Const LITER As Double = (METER * (METER) * (METER)) / 1000.0
Public Const LITRE As Double = LITER
Public Const GALLON As Double = 231.0 * (INCH * (INCH) * (INCH))
Public Const QUART As Double = GALLON / 4.0
Public Const PINT As Double = QUART / 2.0
Public Const CUP As Double = PINT / 2.0
Public Const FLOZ As Double = CUP / 8.0
Public Const TBLSP As Double = FLOZ / 2.0
Public Const TSP As Double = TBLSP / 3.0
Public Const BARREL As Double = 42.0 * GALLON
Public Const DRYGALLON As Double = 9.25 * 9.25 * PI * (INCH * (INCH) * _
         (INCH))
Public Const PECK As Double = 2.0 * DRYGALLON
Public Const BUSHEL As Double = 8.0 * DRYGALLON
Public Const AH As Double = AMPERE * HOUR
Public Const CALORIE As Double = 4.184 * JOULE
Public Const CAL_IT As Double = 4.1868 * JOULE
Public Const CAL_TH As Double = CALORIE
Public Const CAL As Double = CALORIE
Public Const BTU_TH As Double = CAL_TH * POUND * DEGF / (GRAM * DEGC)
Public Const BTU_IT As Double = CAL_IT * POUND * DEGF / (GRAM * DEGC)
Public Const BTU As Double = CALORIE * POUND * DEGF / (GRAM * DEGC)
Public Const HP As Double = 550.0 * FOOT * POUND * GRAVITY / SECOND
Public Const HORSEPOWER As Double = HP
Public Const HPMETRIC As Double = 75.0 * KILOGRAM * GRAVITY * MPS
Public Const ELECTRONVOLT As Double = ELEMENTARYCHARGE * VOLT
Public Const eV As Double = ELECTRONVOLT
Public Const ERG As Double = 1.0E-7 * JOULE
Public Const FOE As Double = 1.0E+44 * JOULE
Public Const AAABATTERY_CHARGE As Double = 2.1 * AH
Public Const AAABATTERY_VOLTAGE As Double = 1.5 * VOLT
Public Const AAABATTERY As Double = AAABATTERY_CHARGE * AAABATTERY_VOLTAGE
Public Const AAABATTERY_ENERGY As Double = AAABATTERY
Public Const AABATTERY_CHARGE As Double = 2.7 * AH
Public Const AABATTERY_VOLTAGE As Double = 1.5 * VOLT
Public Const AABATTERY As Double = AABATTERY_CHARGE * AABATTERY_VOLTAGE
Public Const AABATTERY_ENERGY As Double = AABATTERY
Public Const CBATTERY_CHARGE As Double = 8.0 * AH
Public Const CBATTERY_VOLTAGE As Double = 1.5 * VOLT
Public Const CBATTERY As Double = CBATTERY_CHARGE * CBATTERY_VOLTAGE
Public Const CBATTERY_ENERGY As Double = CBATTERY
Public Const DBATTERY_CHARGE As Double = 12.0 * AH
Public Const DBATTERY_VOLTAGE As Double = 1.5 * VOLT
Public Const DBATTERY As Double = DBATTERY_CHARGE * DBATTERY_VOLTAGE
Public Const DBATTERY_ENERGY As Double = DBATTERY
Public Const NINEVOLT_CHARGE As Double = 0.565 * AH
Public Const NINEVOLT_VOLTAGE As Double = 9.0 * VOLT
Public Const NINEVOLT As Double = NINEVOLT_CHARGE * NINEVOLT_VOLTAGE
Public Const NINEVOLT_ENERGY As Double = NINEVOLT
Public Const NINEVOLTBATTERY_CHARGE As Double = NINEVOLT_CHARGE
Public Const NINEVOLTBATTERY_VOLTAGE As Double = NINEVOLT_VOLTAGE
Public Const NINEVOLTBATTERY As Double = NINEVOLTBATTERY_CHARGE * _
         NINEVOLTBATTERY_VOLTAGE
Public Const NINEVOLTBATTERY_ENERGY As Double = NINEVOLTBATTERY
Public Const PHONEBATTERY_CHARGE As Double = 3.0 * AH
Public Const PHONEBATTERY_VOLTAGE As Double = 3.8 * VOLT
Public Const PHONEBATTERY As Double = PHONEBATTERY_CHARGE * _
         PHONEBATTERY_VOLTAGE
Public Const PHONEBATTERY_ENERGY As Double = PHONEBATTERY
Public Const CARBATTERY_CHARGE As Double = 45.0 * AH
Public Const CARBATTERY_VOLTAGE As Double = 12.0 * VOLT
Public Const CARBATTERY As Double = CARBATTERY_CHARGE * CARBATTERY_VOLTAGE
Public Const CARBATTERY_ENERGY As Double = CARBATTERY
Public Const MICROWAVE_Hz As Double = 2.45E+9 * HERTZ
Public Const MICROWAVE_WAVELENGTH As Double = LIGHT / MICROWAVE_Hz
Public Const MICROWAVE_ENERGY As Double = MICROWAVE_Hz * PLANCK
Public Const LF_Hz As Double = 1.0E+5 * HERTZ
Public Const LF_WAVELENGTH As Double = LIGHT / LF_Hz
Public Const LF_ENERGY As Double = LF_Hz * PLANCK
Public Const MF_Hz As Double = 1.0E+6 * HERTZ
Public Const MF_WAVELENGTH As Double = LIGHT / MF_Hz
Public Const MF_ENERGY As Double = MF_Hz * PLANCK
Public Const HF_Hz As Double = 1.0E+7 * HERTZ
Public Const HF_WAVELENGTH As Double = LIGHT / HF_Hz
Public Const HF_ENERGY As Double = HF_Hz * PLANCK
Public Const VHF_Hz As Double = 1.0E+8 * HERTZ
Public Const VHF_WAVELENGTH As Double = LIGHT / VHF_Hz
Public Const VHF_ENERGY As Double = VHF_Hz * PLANCK
Public Const UHF_Hz As Double = 1.0E+9 * HERTZ
Public Const UHF_WAVELENGTH As Double = LIGHT / UHF_Hz
Public Const UHF_ENERGY As Double = UHF_Hz * PLANCK
Public Const SHF_Hz As Double = 1.0E+10 * HERTZ
Public Const SHF_WAVELENGTH As Double = LIGHT / SHF_Hz
Public Const SHF_ENERGY As Double = SHF_Hz * PLANCK
Public Const EHF_Hz As Double = 1.0E+11 * HERTZ
Public Const EHF_WAVELENGTH As Double = LIGHT / EHF_Hz
Public Const EHF_ENERGY As Double = EHF_Hz * PLANCK
Public Const THF_Hz As Double = 1.0E+12 * HERTZ
Public Const THF_WAVELENGTH As Double = LIGHT / THF_Hz
Public Const THF_ENERGY As Double = THF_Hz * PLANCK
Public Const FIR_Hz As Double = 1.0E+12 * HERTZ
Public Const FIR_WAVELENGTH As Double = LIGHT / FIR_Hz
Public Const FIR_ENERGY As Double = FIR_Hz * PLANCK
Public Const MIR_Hz As Double = 1.0E+13 * HERTZ
Public Const MIR_WAVELENGTH As Double = LIGHT / MIR_Hz
Public Const MIR_ENERGY As Double = MIR_Hz * PLANCK
Public Const NIR_Hz As Double = 1.0E+14 * HERTZ
Public Const NIR_WAVELENGTH As Double = LIGHT / NIR_Hz
Public Const NIR_ENERGY As Double = NIR_Hz * PLANCK
Public Const RED_WAVELENGTH As Double = 7.0E-7 * METER
Public Const RED_Hz As Double = LIGHT / RED_WAVELENGTH
Public Const RED_ENERGY As Double = RED_Hz * PLANCK
Public Const ORANGE_WAVELENGTH As Double = 6.2E-7 * METER
Public Const ORANGE_Hz As Double = LIGHT / ORANGE_WAVELENGTH
Public Const ORANGE_ENERGY As Double = ORANGE_Hz * PLANCK
Public Const YELLOW_WAVELENGTH As Double = 5.8E-7 * METER
Public Const YELLOW_Hz As Double = LIGHT / YELLOW_WAVELENGTH
Public Const YELLOW_ENERGY As Double = YELLOW_Hz * PLANCK
Public Const YELLOWGREEN_Hz As Double = 5.4E+14 * HERTZ
Public Const YELLOWGREEN_WAVELENGTH As Double = LIGHT / YELLOWGREEN_Hz
Public Const YELLOWGREEN_ENERGY As Double = YELLOWGREEN_Hz * PLANCK
Public Const GREEN_WAVELENGTH As Double = 5.3E-7 * METER
Public Const GREEN_Hz As Double = LIGHT / GREEN_WAVELENGTH
Public Const GREEN_ENERGY As Double = GREEN_Hz * PLANCK
Public Const BLUE_WAVELENGTH As Double = 5.0E-7 * METER
Public Const BLUE_Hz As Double = LIGHT / BLUE_WAVELENGTH
Public Const BLUE_ENERGY As Double = BLUE_Hz * PLANCK
Public Const VIOLET_WAVELENGTH As Double = 4.2E-7 * METER
Public Const VIOLET_Hz As Double = LIGHT / VIOLET_WAVELENGTH
Public Const VIOLET_ENERGY As Double = VIOLET_Hz * PLANCK
Public Const NUV_Hz As Double = 1.0E+15 * HERTZ
Public Const NUV_WAVELENGTH As Double = LIGHT / NUV_Hz
Public Const NUV_ENERGY As Double = NUV_Hz * PLANCK
Public Const EUV_Hz As Double = 1.0E+16 * HERTZ
Public Const EUV_WAVELENGTH As Double = LIGHT / EUV_Hz
Public Const EUV_ENERGY As Double = EUV_Hz * PLANCK
Public Const UVA_WAVELENGTH As Double = 3.6E-7 * METER
Public Const UVA_Hz As Double = LIGHT / UVA_WAVELENGTH
Public Const UVA_ENERGY As Double = UVA_Hz * PLANCK
Public Const UVB_WAVELENGTH As Double = 3.0E-7 * METER
Public Const UVB_Hz As Double = LIGHT / UVB_WAVELENGTH
Public Const UVB_ENERGY As Double = UVB_Hz * PLANCK
Public Const UVC_WAVELENGTH As Double = 1.9E-7 * METER
Public Const UVC_Hz As Double = LIGHT / UVC_WAVELENGTH
Public Const UVC_ENERGY As Double = UVC_Hz * PLANCK
Public Const SX_Hz As Double = 3.0E+17 * HERTZ
Public Const SX_WAVELENGTH As Double = LIGHT / SX_Hz
Public Const SX_ENERGY As Double = SX_Hz * PLANCK
Public Const SXX_WAVELENGTH As Double = 1.0E-9 * METER
Public Const SXX_Hz As Double = LIGHT / SXX_WAVELENGTH
Public Const SXX_ENERGY As Double = SXX_Hz * PLANCK
Public Const HX_Hz As Double = 1.0E+19 * HERTZ
Public Const HX_WAVELENGTH As Double = LIGHT / HX_Hz
Public Const HX_ENERGY As Double = HX_Hz * PLANCK
Public Const GAMMA_Hz As Double = 1.0E+20 * HERTZ
Public Const GAMMA_WAVELENGTH As Double = LIGHT / GAMMA_Hz
Public Const GAMMA_ENERGY As Double = GAMMA_Hz * PLANCK
Public Const TURN As Double = TAU * RADIAN
Public Const ARCTURN As Double = TURN
Public Const ARCRADIAN As Double = RADIAN
Public Const ARCDEGREE As Double = TURN / 360.0
Public Const ARCMINUTE As Double = ARCDEGREE / 60.0
Public Const ARCSECOND As Double = ARCMINUTE / 60.0
Public Const ARCGRAD As Double = TURN / 400.0
Public Const ARCDEG As Double = ARCDEGREE
Public Const ARCMIN As Double = ARCMINUTE
Public Const ARCSEC As Double = ARCSECOND
Public Const GRAD As Double = ARCGRAD
Public Const SQUAREDEGREE As Double = (ARCDEGREE * (ARCDEGREE))
Public Const SQDEG As Double = SQUAREDEGREE
Public Const SPHERESURFACE As Double = 2.0 * TAU * STERADIAN
Public Const SHANNON As Double = BIT
Public Const NAT As Double = BIT / TWOLN
Public Const HARTLEY As Double = TENLN / TWOLN * BIT
Public Const HART As Double = HARTLEY
Public Const DIT As Double = HARTLEY
Public Const BAN As Double = HARTLEY
Public Const RPM As Double = TURN / MINUTE
Public Const RPS As Double = TURN / SECOND
Public Const RPH As Double = TURN / HOUR
Public Const OZFIN As Double = OUNCE * GRAVITY * INCH
Public Const LBFIN As Double = POUND * GRAVITY * INCH
Public Const LBFFT As Double = POUND * GRAVITY * FOOT
Public Const KGFM As Double = KG * GRAVITY * METER
Public Const Nm_PER_lbfin As Double = LBFIN / (NEWTON * METER)
Public Const kgfm_PER_lbfin As Double = LBFIN / (KG * GRAVITY * METER)
Public Const lbfinrpm_PER_Hp As Double = HORSEPOWER / (LBFIN * RPM)
Public Const ozfin_PER_lbfin As Double = POUND / OUNCE
Public Const lbfft_PER_lbfin As Double = INCH / FOOT
Public Const W_PER_Hp As Double = HORSEPOWER / WATT
Public Const FINESTRUCTURE As Double = ALPHA
Public Const FINESTRUCTURE_ERR As Double = ALPHA_ERR
Public Const FINESTRUCTURE_REC As Double = 1.0 / FINESTRUCTURE
Public Const FINESTRUCTURE_REC_ERR As Double = ALPHA_ERR
Public Const MAGNETIC As Double = 2.0 * VONKLITZING * ALPHA / LIGHT
Public Const MAGNETIC_ERR As Double = ALPHA_ERR
Public Const MU0 As Double = MAGNETIC
Public Const MU0_ERR As Double = ALPHA_ERR
Public Const ELECTRIC As Double = 1.0 / ((LIGHT * (LIGHT)) * MU0)
Public Const ELECTRIC_ERR As Double = ALPHA_ERR
Public Const EPSILON0 As Double = ELECTRIC
Public Const EPSILON0_ERR As Double = ALPHA_ERR
Public Const COULOMBCONST As Double = 1.0 / (2.0 * TAU * ELECTRIC)
Public Const COULOMBCONST_ERR As Double = ALPHA_ERR
Public Const PROTON_RADIUS As Double = 8.414E-16 * METER
Public Const PROTON_RADIUS_ERR As Double = 2.2E-3
Public Const MOLARMASS As Double = (1.0 - 3.5E-10) * GRAM / MOLE
Public Const MOLARMASS_ERR As Double = 3.0E-10
Public Const DALTON As Double = MOLARMASS / AVOGADRO
Public Const DALTON_ERR As Double = MOLARMASS_ERR
Public Const AMU As Double = DALTON
Public Const AMU_ERR As Double = DALTON_ERR
Public Const ATOMICMASSUNIT As Double = DALTON
Public Const ATOMICMASSUNIT_ERR As Double = DALTON_ERR
Public Const UAMU As Double = DALTON
Public Const UAMU_ERR As Double = DALTON_ERR
Public Const RYDBERG_Hz As Double = RYDBERG
Public Const RYDBERG_WAVELENGTH As Double = LIGHT / RYDBERG_Hz
Public Const RYDBERG_ENERGY As Double = RYDBERG_Hz * PLANCK
Public Const ELECTRON_MASSA As Double = 2.0 * RYDBERG_Hz * PLANCK / _
         ((LIGHT * ALPHA) * (LIGHT * ALPHA))
Public Const ELECTRON_MASSA_ERR As Double = 2.0 * ALPHA_ERR
Public Const HI_Hz As Double = 1.4204057517667E+9 * HERTZ
Public Const HI_WAVELENGTH As Double = LIGHT / HI_Hz
Public Const HI_ENERGY As Double = HI_Hz * PLANCK
Public Const HYDROGENLINE As Double = HI_WAVELENGTH
Public Const HYDROGENLINE_ERR As Double = 6.3E-13
Public Const HI As Double = LIGHT / HI_Hz
Public Const HI_ERR As Double = HYDROGENLINE_ERR
Public Const PLANCKMASS As Double = 2.176434342718E-8 * KILOGRAM
Public Const PLANCKCHARGE As Double = ELEMENTARYCHARGE / ALPHASQRT
Public Const PLANCKENERGY As Double = PLANCKMASS * (LIGHT * (LIGHT))
Public Const PLANCKTEMP As Double = PLANCKENERGY / BOLTZMANN
Public Const PLANCKLENGTH As Double = HBAR / (PLANCKMASS * LIGHT)
Public Const PLANCKTIME As Double = PLANCKLENGTH / LIGHT
Public Const PLANCKFREQUENCY As Double = 1.0 / PLANCKTIME
Public Const STEFAN As Double = (TAU * (TAU) * (TAU) * (TAU) * (TAU)) * _
         (BOLTZMANN * (BOLTZMANN) * (BOLTZMANN) * (BOLTZMANN)) / (240.0 * _
         (LIGHT * (LIGHT)) * (PLANCK * (PLANCK) * (PLANCK)))
Public Const STEFAN_ERR As Double = 0.0
Public Const PINGPONGBALL_RADIUS As Double = 0.02 * METER
Public Const GOLFBALL_RADIUS As Double = 0.02135 * METER
Public Const TENNISBALL_RADIUS As Double = 0.03325 * METER
Public Const BASEBALL_RADIUS As Double = 9.125 * INCH / TAU
Public Const SOFTBALL_RADIUS As Double = 12.0 * INCH / TAU
Public Const SOCCERBALL_RADIUS As Double = 0.69 * METER / TAU
Public Const BASKETBALL_RADIUS As Double = 0.75 * METER / TAU
Public Const PINGPONGBALL_MASS As Double = 0.0027 * KG
Public Const GOLFBALL_MASS As Double = 0.04593 * KG
Public Const TENNISBALL_MASS As Double = 0.0577 * KG
Public Const BASEBALL_MASS As Double = 0.1465 * KG
Public Const SOFTBALL_MASS As Double = 0.187 * KG
Public Const BASKETBALL_MASS As Double = 0.620 * KG
Public Const SOCCERBALL_MASS As Double = 0.430 * KG
Public Const MARATHON As Double = 42195.0 * METER
Public Const PENNY_HEIGHT As Double = 1.52E-3 * METER
Public Const NICKEL_HEIGHT As Double = 1.95E-3 * METER
Public Const DIME_HEIGHT As Double = 1.35E-3 * METER
Public Const QUARTER_HEIGHT As Double = 1.75E-3 * METER
Public Const PENNY_DIAMETER As Double = 0.75 * INCH
Public Const NICKEL_DIAMETER As Double = 2.121E-2 * METER
Public Const DIME_DIAMETER As Double = 1.791E-2 * METER
Public Const QUARTER_DIAMETER As Double = 2.426E-2 * METER
Public Const PENNY_MASS As Double = 2.5 * GRAM
Public Const NICKEL_MASS As Double = 5.0 * GRAM
Public Const DIME_MASS As Double = 0.005 * POUND
Public Const QUARTER_MASS As Double = 0.0125 * POUND
Public Const MOON_MONTH As Double = 29.530587981 * EARTH_SOLARDAY
Public Const MILKYWAY_AGE As Double = 8.3E+9 * JYEAR
Public Const ASTRONOMICALUNIT As Double = AU
Public Const LIGHTYEAR As Double = LIGHT * JYEAR
Public Const PARSEC As Double = 1296000.0 * ASTRONOMICALUNIT / TAU
Public Const PROXIMACENTAURI As Double = 39.9E+15 * METER
Public Const MILKYWAY_RADIUS As Double = 6.0E+4 * LIGHTYEAR
Public Const GALACTICCENTER As Double = 2.64E+4 * LIGHTYEAR
Public Const MILKYWAY_MASS As Double = 1.4E+42 * KILOGRAM
Public Const SOLARCONSTANT As Double = 1361.0 * WATT / (METER * (METER))
Public Const UNIVERSE_AGE As Double = 13.799E+9 * JYEAR
Public Const UNIVERSE_RADIUS As Double = 14.26E+9 * PARSEC
Public Const UNIVERSE_MASS As Double = 1.46E+53 * KILOGRAM
Public Const EINSTEIN As Double = 4.0 * TAU * GRAVITATION / (LIGHT * _
         (LIGHT) * (LIGHT) * (LIGHT))
Public Const EINSTEIN_ERR As Double = GRAVITATION_ERR
Public Const HUBBLE As Double = 67.66E-3 * METER / (SECOND * PARSEC)
Public Const HUBBLE_ERR As Double = 6.0E-3
Public Const HUBBLERADIUS As Double = LIGHT / HUBBLE
Public Const BHMASSTEMP As Double = ((LIGHT * (LIGHT) * (LIGHT)) * HBAR / _
         (4.0 * TAU * GRAVITATION * BOLTZMANN))
Public Const BHMASS_RADIUS As Double = 0.5 * (LIGHT * (LIGHT)) / GRAVITATION
Public Const BHMASS3_LIFETIME As Double = (PLANCK * (LIGHT * (LIGHT) * _
         (LIGHT) * (LIGHT))) / (2560.0 * (TAU * (TAU)) * (GRAVITATION * _
         (GRAVITATION)))
Public Const BHRADIUS2DENSITY As Double = 1.5 * BHMASS_RADIUS / TAU
Public Const BHMASS2_ENTROPY As Double = (PLANCK * LIGHT) / (2.0 * TAU * _
         TAU * GRAVITATION * BOLTZMANN)
Public Const BHENTROPY_AREA As Double = (TAU * (LIGHT * (LIGHT) * _
         (LIGHT)) * BOLTZMANN) / (4.0 * PLANCK * GRAVITATION)
Public Const BHMASS2POWER As Double = (LIGHT * (LIGHT) * (LIGHT) * _
         (LIGHT) * (LIGHT) * (LIGHT)) * PLANCK / (7680.0 * (TAU * (TAU)) _
         * (GRAVITATION * (GRAVITATION)))
Public Const BHMASS2_AREA As Double = BHMASS2_ENTROPY * BHENTROPY_AREA
Public Const BHMASS2_DENSITY As Double = (BHMASS_RADIUS * _
         (BHMASS_RADIUS)) * BHRADIUS2DENSITY
Public Const BEKENSTEININFORMATION As Double = ((TAU * (TAU)) * NAT) / _
         (PLANCK * LIGHT)
Public Const BEKENSTEINENTROPY As Double = ((TAU * (TAU)) * BOLTZMANN) / _
         (PLANCK * LIGHT)
Public Const ELEVATIONMAX As Double = 8848.0 * METER
Public Const ELEVATIONMIN As Double = -10994.0 * METER
Public Const KPGBOUNDARY As Double = 65.5E+6 * JYEAR
Public Const TRJBOUNDARY As Double = 199.6E+6 * JYEAR
Public Const MILKYWAY_DAY As Double = 250.0E+6 * JYEAR
Public Const PTRBOUNDARY As Double = 251.4E+6 * JYEAR
Public Const NPBOUNDARY As Double = 542.0E+6 * JYEAR
Public Const LIFE_AGE As Double = 3.85E+9 * JYEAR
Public Const GIANTIMPACT As Double = 4.533E+9 * JYEAR
Public Const EARTH_AGE As Double = 4.56717E+9 * JYEAR
Public Const PPQ As Double = 1.0E-15
Public Const PPT As Double = 1.0E-12
Public Const PPB As Double = 1.0E-9
Public Const PPM As Double = 1.0E-6
Public Const PERMILLE As Double = 1.0E-3
Public Const PERCENT As Double = 1.0E-2
Public Const SOLID_ANGLE As Double = STERADIAN
Public Const SPEED As Double = LENGTH / TIME
Public Const ACCELERATION As Double = SPEED / TIME
Public Const FORCE As Double = MASS * ACCELERATION
Public Const ENERGY As Double = FORCE * LENGTH
Public Const ACTION As Double = ENERGY * TIME
Public Const POWER As Double = ENERGY / TIME
Public Const AREA As Double = (LENGTH * (LENGTH))
Public Const VOLUME As Double = (LENGTH * (LENGTH) * (LENGTH))
Public Const DENSITY As Double = MASS / VOLUME
Public Const SPECIFICHEAT As Double = ENERGY / (MASS * TEMPERATURE)
Public Const PRESSURE As Double = FORCE / AREA
Public Const VISCOSITY As Double = FORCE * TIME / AREA
Public Const FREQUENCY As Double = 1 / TIME
Public Const VOLTAGE As Double = POWER / CURRENT
Public Const RESISTANCE As Double = VOLTAGE / CURRENT
Public Const INDUCTANCE As Double = RESISTANCE * TIME
Public Const CAPACITANCE As Double = CHARGE / VOLTAGE
Public Const CONDUCTANCE As Double = 1.0 / RESISTANCE
Public Const MAGNETICFLUX As Double = VOLTAGE * TIME
Public Const MAGNETICINDUCTION As Double = MAGNETICFLUX / AREA
Private Const LC_MAGIC_INT As Double = 2070108020
Private Const LC_MAGIC_INT_NOT As Double = 301040105
Private lv_pcf_end As Long
Private lv_pcf_arr() As Double
Private lv_mertens_end As Long
Private lv_mertens_arr() As Long
Private Const LC_FACTORS_CNT As Double = 65
Private lv_li_two As Double
Private lv_partitionr_arr() As Double
Private lv_partitionr_end As Long
Private lv_partitionq_arr() As Double
Private lv_partitionq_end As Long
Private lv_factorial_arr() As Double
Private lv_factorial_end As Long
Private lv_factorial_b_arr() As Double
Private lv_factorial_b_end As Long
Private lv_catalan_arr() As Double
Private lv_catalan_end As Long
Private lv_supercatalan_arr() As Double
Private lv_supercatalan_end As Long
Private lv_bell_arr() As Double
Private lv_bell_x_arr() As Double
Private lv_bell_end As Long
Private lv_binom_arr() As Double
Private lv_binom_end As Long
Private lv_binom_max As Long
Private lv_euler_arr() As Double
Private lv_euler_end As Long
Private lv_euler_max As Long
Private lv_entringer_arr() As Double
Private lv_entringer_end As Long
Private lv_entringer_max As Long
Private lv_stir_a_arr() As Double
Private lv_stir_a_end As Long
Private lv_stir_a_max As Long
Private lv_stir_b_arr() As Double
Private lv_stir_b_end As Long
Private lv_stir_b_max As Long
Private lv_bern_n_arr() As Double
Private lv_bern_d_arr() As Double
Private lv_bern_end As Long
Private Const LC_GD_YEAR As Double = 0
Private Const LC_GD_MONTH As Double = 1
Private Const LC_GD_DAY As Double = 2
Private Const LC_GD_HOUR As Double = 3
Private Const LC_GD_MIN As Double = 4
Private Const LC_GD_SEC As Double = 5
Private Const LC_GD_DOW As Double = 6
Private Const LC_GD_NUM As Double = 7
Private Const LC_GD_JD As Double = 8
Private Const LC_GD_CNT As Double = 9
Private lv_ymdhms_arr(20) As Double
Private Const LC_HALAQIM_PER_HOUR As Double = 1080
Private Const LX_HALAQIM As Double = HOUR / LC_HALAQIM_PER_HOUR
Private Const LC_YEAR_PER_METONIC As Double = 19
Private Const LC_KNUTH_MAX As Double = 1073741823
Private Const LC_KNUTH_QUALITY_CNT As Double = 1009
Private Const LC_KNUTH_KK_CNT As Double = 100
Private Const LC_KNUTH_LL As Double = 37
Private Const LC_KNUTH_TT As Double = 70
Private Const LC_KNUTH_ARRAY_CNT As Double = 1100
Private lv_ranz_ind As Long
Private lv_ranz_magic As Double
Private lv_ranz_arr(LC_KNUTH_QUALITY_CNT) As Long
Private lv_ran_a_arr(LC_KNUTH_ARRAY_CNT) As Long
Private lv_ran_x_arr(LC_KNUTH_KK_CNT) As Long
Private lv_rand_gau_magic As Double
Private lv_rand_gau_prev As Double
Private Const LC_STTS_NUM As Double = 0
Private Const LC_STTS_MEAN As Double = 1
Private Const LC_STTS_MSQ As Double = 2
Private Const LC_STTS_MAX As Double = 3
Private Const LC_STTS_MIN As Double = 4
Private Const LC_STTS_MAGIC As Double = 5
Private Const LC_STTS_CNT As Double = 6
Private Const LC_STTS_KEY_CNT As Double = 100
Private lv_sttx_mtrx(LC_STTS_KEY_CNT, LC_STTS_CNT) As Double
Private Const LC_STTSC_XX As Double = 0
Private Const LC_STTSC_YY As Double = 1
Private Const LC_STTSC_COVAR As Double = 2
Private Const LC_STTSC_MAGIC As Double = 3
Private Const LC_STTSC_CNT As Double = 4
Private lv_crx_mtrx(LC_STTS_KEY_CNT, LC_STTSC_CNT) As Double
Private Const LC_PARABOLA_X_AXIS As Double = 0
Private Const LC_PARABOLA_Y_EXTREMA As Double = 1
Private Const LC_PARABOLA_REAL_ROOTS As Double = 2
Private Const LC_PARABOLA_ROOT_A As Double = 3
Private Const LC_PARABOLA_ROOT_B As Double = 4
Private Const LC_PARABOLA_COEFF_C As Double = 5
Private Const LC_PARABOLA_COEFF_B As Double = 6
Private Const LC_PARABOLA_COEFF_A As Double = 7
Private lv_parabola_arr(8) As Double
Private Const LC_CIRCLE_X As Double = 0
Private Const LC_CIRCLE_Y As Double = 1
Private Const LC_CIRCLE_RADIUS As Double = 2
Private lv_circle_arr(3) As Double
Private Const LX_SHC_SHIFTSHIFT As Double = 3.85514
Private Const LX_SHC_STEPSHIFT As Double = 8.5
Private Const LX_ELLIPTIC_EPS As Double = 1.0E-9
Private lv_emm As Double
Private lv_elli_rad As Double
Private lv_arr_arr(4) As Double
Private lv_search_target As Long
'   IIIIIIIIIIMPORT_MASTER
#If Not VBA7 Then
   Private Declare Function timeGetTime Lib "winmm.dll" () As Long
   Private Type System_Time_Type
      wYear         As Integer
      wMonth        As Integer
      wDayOfWeek    As Integer
      wDay          As Integer
      wHour         As Integer
      wMinute       As Integer
      wSecond       As Integer
      wMilliseconds As Integer
   End Type
   Private Type Time_Zone_Type
      Bias As Long
      StandardName(0 To 63) As Byte
      StandardDate As System_Time_Type
      StandardBias As Long
      DaylightName(0 To 63) As Byte
      DaylightDate As System_Time_Type
      DaylightBias As Long
   End Type
   Private Declare Function GetTimeZoneInformation Lib "kernel32" ( _
            lpTimeZoneInformation As Time_Zone_Type) As Long
#EndIf
Private lv_time_zone_offset As Double
'   IIIIIIIIIIMPORT_MASTER-Function ################################# timee #
Public Function timee() As Double
   Dim tms As Double
   Dim tzi As Time_Zone_Type
   Dim tmi_ret As Long
   If (lv_time_zone_offset = 0) then
      tmi_ret = GetTimeZoneInformation(tzi)
      If (tmi_ret = 1) Then
         lv_time_zone_offset = tzi.Bias + tzi.StandardBias
      Else
         lv_time_zone_offset = tzi.Bias + tzi.DaylightBias
      End If
      lv_time_zone_offset = lv_time_zone_offset * 60.0
   End If
   tms = timeGetTime()
   timee = (Now() - #1/1/1970#) * 86400.0 + (tms Mod 1000) / 1000.0 _
            + lv_time_zone_offset
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################# floor #
Public Function floor(ByVal xx As Double) As Double
   floor = Int(xx)
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################## ceil #
Public Function ceil(ByVal xx As Double) As Double
   ceil = -Int(-xx)
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################ floorl #
Public Function floorl(ByVal xx As Double) As Long
   floorl = CLng(Int(xx))
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################# ceill #
Public Function ceill(ByVal xx As Double) As Long
   ceill = CLng(-Int(-xx))
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################## sqrt #
Public Function sqrt(ByVal xx As Double) As Double
   sqrt = Sqr(xx)
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################## fabs #
Public Function fabs(ByVal xx As Double) As Double
   fabs = Abs(xx)
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################### pow #
Public Function pow(ByVal yy As Double _
         , ByVal xx As Double) As Double
   pow = Exp(xx * Log(yy))
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ################################# atan2 #
Public Function atan2(ByVal yy As Double _
         , ByVal xx As Double) As Double
   If 0.0 < xx Then
      atan2 = Atn(yy / xx)
   ElseIf xx < 0.0 Then
      If yy < 0.0 Then
         atan2 = Atn(yy / xx) - Kw.TAU / 2.0
      ElseIf 0.0 < yy Then
         atan2 = Atn(yy / xx) + Kw.TAU / 2.0
      Else
         atan2 = Kw.TAU / 2.0
      End If
   Else
      If yy < 0.0 Then
         atan2 = -Kw.TAU / 4.0
      ElseIf 0.0 < yy Then
         atan2 = Kw.TAU / 4.0
      Else
         atan2 = 0.0
      End If
   End If
End Function
'   IIIIIIIIIIMPORT_MASTER-Function ############################ lf_mod_vb6 #
Public Function lf_mod_vb6(ByVal xx As Double _
         , ByVal yy As Double) As Double
   Dim axx As Double
   Dim ayy As Double
   Dim retvalu as Double
   axx = floor(abs(xx))
   ayy = floor(abs(yy))
   retvalu = axx Mod ayy
   If (xx < 0 And retvalu <> 0) Then
      retvalu = ayy - retvalu
   End If
   lf_mod_vb6 = retvalu
End Function
Public Function id(ByVal xx As Double) As Double
   id = xx
End Function
Public Function reci(ByVal xx As Double) As Double
   reci = 1.0 / xx
End Function
Public Function neg(ByVal xx As Double) As Double
   neg = - xx
End Function
Public Function square(ByVal xx As Double) As Double
   square = xx * xx
End Function
Public Function sq(ByVal xx As Double) As Double
   sq = xx * xx
End Function
Public Function sqinv(ByVal xx As Double) As Double
   sqinv = Sqr(xx)
End Function
Public Function cube(ByVal xx As Double) As Double
   cube = xx * xx * xx
End Function
Public Function cu(ByVal xx As Double) As Double
   cu = xx * xx * xx
End Function
Public Function sign(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = -1.0
   ElseIf (0.0 < xx) Then
      retvalu = 1.0
   Else
      retvalu = 0.0
   End If
   sign = retvalu
End Function
Public Function stair(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0
   End If
   stair = retvalu
End Function
Public Function heaviside(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = 0.0
   ElseIf (0.0 < xx) Then
      retvalu = 1.0
   Else
      retvalu = 0.5
   End If
   heaviside = retvalu
End Function
Public Function divi(ByVal numer As Double, ByVal denom As Double, ByVal _
         def_val As Double) As Double
   Dim retvalu As Double
   If (denom < 0.0 Or 0.0 < denom) Then
      retvalu = numer / denom
   Else
      retvalu = def_val
   End If
   divi = retvalu
End Function
Public Function clip(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = 0.0
   Else
      retvalu = xx
   End If
   clip = retvalu
End Function
Public Function clip2(ByVal xx As Double, ByVal xlow As Double, ByVal _
         xhigh As Double) As Double
   Dim retvalu As Double
   If (xx <= xlow) Then
      retvalu = xlow
   ElseIf (xx <= xhigh) Then
      retvalu = xx
   Else
      retvalu = xhigh
   End If
   clip2 = retvalu
End Function
Public Function clip2x(ByVal xx As Double, ByVal xa As Double, ByVal xb _
         As Double) As Double
   Dim retvalu As Double
   If (xb < xa) Then
      If (xx <= xb Or xa <= xx) Then
         retvalu = xx
      ElseIf (2.0 * xx < xa + xb) Then
         retvalu = xb
      Else
         retvalu = xa
      End If
   Else
      If (xx <= xa) Then
         retvalu = xa
      ElseIf (xx <= xb) Then
         retvalu = xx
      Else
         retvalu = xb
      End If
   End If
   clip2x = retvalu
End Function
Public Function sba(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (- 1.0 < xx And xx < 1.0) Then
      retvalu = xx
   Else
      retvalu = 1.0 / xx
   End If
   sba = retvalu
End Function
Public Function ratio(ByVal aa As Double, ByVal bb As Double) As Double
   Dim rati As Double
   If (Math.Abs(aa) < Math.Abs(bb)) Then
      rati = aa / bb
   Else
      rati = bb / aa
   End If
   ratio = rati
End Function
Public Function horner(ByVal xx As Double, ByVal deg As Long, _
         coefh_arr_pc() As Double) As Double
   Dim jj As Long
   Dim sum_curr As Double
   sum_curr = coefh_arr_pc(deg)
   For jj = deg - 1 To 0 Step - 1
      sum_curr = sum_curr * xx
      sum_curr = sum_curr + coefh_arr_pc(jj)
   Next
   horner = sum_curr
End Function
Public Function chebeval(ByVal xx As Double, ByVal deg As Long, _
         cheb_arr_pc() As Double) As Double
   Dim ba As Double
   Dim bb As Double
   Dim bc As Double
   Dim ii As Long
   xx = xx * 2.0
   ba = cheb_arr_pc(deg)
   bb = 0.0
   bc = 0.0
   For ii = deg - 1 To 0 Step - 1
      bc = bb
      bb = ba
      ba = xx * bb - bc + cheb_arr_pc(ii)
   Next
   chebeval = (ba - bc) / 2.0
End Function
Public Function ln(ByVal xx As Double) As Double
   ln = Math.Log(xx)
End Function
Public Function lg(ByVal xx As Double) As Double
   lg = Math.Log(xx) / TWOLN
End Function
Public Function log10(ByVal xx As Double) As Double
   log10 = Math.Log(xx) / Math.Log(10.0)
End Function
Public Function logx(ByVal xx As Double, ByVal bb As Double) As Double
   logx = Math.Log(xx) / Math.Log(bb)
End Function
Public Function l10(ByVal xx As Double) As Double
   l10 = Math.Log(xx) / Math.Log(10.0)
End Function
Public Function log2(ByVal xx As Double) As Double
   log2 = Math.Log(xx) / Kw.TWOLN
End Function
Public Function fmod(ByVal xx As Double, ByVal yymodulus As Double) As Double
   Dim retvalu As Double
   Dim qu As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      qu = xx / yymodulus
      If (qu < 0.0) Then
         retvalu = xx - Ceil(qu) * yymodulus
      Else
         retvalu = xx - floor(qu) * yymodulus
      End If
   Else
      retvalu = 0.0
   End If
   fmod = retvalu
End Function
Public Function modf(ByVal xx As Double, ByRef ret_int_arr_p() As Double) _
         As Double
   Dim retvalu As Double
   Dim int_part As Double
   If (xx < 0.0) Then
      int_part = Ceil(xx)
   ElseIf (0.0 < xx) Then
      int_part = floor(xx)
   Else
      int_part = 0
   End If
   ret_int_arr_p(0) = xx - int_part
   modf = retvalu
End Function
Public Function fmody(ByVal xx As Double, ByVal yymodulus As Double) As _
         Double
   Dim retvalu As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = xx - floor(xx / yymodulus) * yymodulus
   Else
      retvalu = 0.0
   End If
   fmody = retvalu
End Function
Public Function fmodu(ByVal xx As Double, ByVal yymodulus As Double) As _
         Double
   Dim retvalu As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = fmod(xx, yymodulus)
      If (retvalu < 0.0) Then
         retvalu = retvalu + Math.Abs(yymodulus)
      End If
   Else
      retvalu = 0.0
   End If
   fmodu = retvalu
End Function
Public Function remquou(ByVal xx As Double, ByVal yymodulus As Double, _
         ByRef ret_int_arr_p() As Double) As Double
   Dim retvalu As Double
   Dim qu As Double
   Dim fl As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      qu = xx / yymodulus
      fl = floor(qu)
      retvalu = qu - fl
   Else
      fl = 0.0
      retvalu = xx
   End If
   ret_int_arr_p(0) = fl
   remquou = retvalu
End Function
Public Function fmods(ByVal xx As Double, ByVal yymodulus As Double) As _
         Double
   Dim retvalu As Double
   Dim ayy As Double
   Dim lim As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = fmod(xx, yymodulus)
      ayy = Math.Abs(yymodulus)
      lim = ayy / 2.0
      If (retvalu < - lim) Then
         retvalu = retvalu + ayy
      ElseIf (lim <= retvalu) Then
         retvalu = retvalu - ayy
      End If
   Else
      retvalu = 0.0
   End If
   fmods = retvalu
End Function
Public Function pow2(ByVal expo As Double) As Double
   pow2 = Pow(2.0, expo)
End Function
Public Function pow10(ByVal expo As Double) As Double
   pow10 = Pow(10.0, expo)
End Function
Public Function sigmoid(ByVal xx As Double) As Double
   sigmoid = 1.0 / (1.0 + Math.Exp(-xx))
End Function
Public Function sigmoidinv(ByVal xx As Double) As Double
   sigmoidinv = - Math.Log(((1.0 / xx - 0.5) - 0.5))
End Function
Public Function sigmoid3(ByVal aa As Double, ByVal bb As Double, ByVal xx _
         As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim xzero As Double
   Dim taa As Double
   If (aa <= 0.0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Log((1.0 - aa) / aa)
      alfa = Math.Log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      retvalu = 1.0 / (1.0 + Math.Exp(alfa * (xx - xzero)))
   End If
   sigmoid3 = retvalu
End Function
Public Function taninv3(ByVal aa As Double, ByVal bb As Double, ByVal xx _
         As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim taa As Double
   If (aa <= 0.0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Tan((aa - 0.5) * Kw.PI)
      alfa = Math.Tan((bb - 0.5) * Kw.PI) - taa
      retvalu = taninv(alfa * xx + taa) / Kw.PI + 0.5
   End If
   taninv3 = retvalu
End Function
Public Function sigmoid3d(ByVal aa As Double, ByVal bb As Double, ByVal _
         xx As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim xzero As Double
   Dim taa As Double
   Dim expa As Double
   If (aa <= 0.0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Log((1.0 - aa) / aa)
      alfa = Math.Log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      expa = Math.Exp(alfa * (xx - xzero))
      retvalu = -alfa * expa / Kw.square(1.0 + expa)
   End If
   sigmoid3d = retvalu
End Function
Public Function sqrtx(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = -Sqr(-xx)
   Else
      retvalu = Sqr(xx)
   End If
   sqrtx = retvalu
End Function
Public Function smooth(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx <= -1.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= xx) Then
      retvalu = 1.0
   Else
      retvalu = sigmoid(4.0 * xx / (1.0 - xx * xx))
   End If
   smooth = retvalu
End Function
Public Function hypot(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   Dim axx As Double
   Dim ayy As Double
   axx = Math.Abs(xx)
   ayy = Math.Abs(yy)
   If (axx < ayy) Then
      retvalu = ayy
      ayy = axx
      axx = retvalu
   End If
   If (0.0 < axx) Then
      If (ayy < Kw.DBLEPS * axx) Then
         retvalu = axx
      Else
         ayy = ayy / axx
         retvalu = axx * Sqr(1.0 + ayy * ayy)
      End If
   Else
      retvalu = 0.0
   End If
   hypot = retvalu
End Function
Public Function hypot1(ByVal xx As Double) As Double
   hypot1 = hypot(1.0, xx)
End Function
Public Function hypot1inv(ByVal xx As Double) As Double
   hypot1inv = Sqr(xx * xx - 1.0)
End Function
Public Function hypot3(ByVal xx As Double, ByVal yy As Double, ByVal zz _
         As Double) As Double
   hypot3 = Sqr(xx * xx + yy * yy + zz * zz)
End Function
Public Function topyh(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   Dim xsq As Double
   Dim ysq As Double
   xsq = xx * xx
   ysq = yy * yy
   If (ysq <= 0.0) Then
      retvalu = xx
   ElseIf (xsq <= 0.0) Then
      retvalu = yy
   ElseIf (xsq < ysq) Then
      xsq = xsq / ysq
      retvalu = -sign(xx) * Sqr(1.0 - xsq) * Math.Abs(yy)
   Else
      ysq = ysq / xsq
      retvalu = Sqr(1.0 - ysq) * xx
   End If
   topyh = retvalu
End Function
Public Function topyh1(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < - 1.0 Or 1.0 < xx) Then
      retvalu = -Sqr(xx * xx - 1.0)
   Else
      retvalu = Sqr(1.0 - xx * xx)
   End If
   topyh1 = retvalu
End Function
Public Function cnv_dbl2si16(ByVal xx As Double) As Long
   Dim retvalu As Double
   If (xx <= Kw.SI16MIN) Then
      retvalu = Kw.SI16MIN
   ElseIf (xx <= Kw.SI16MAX) Then
      retvalu = floorl(xx + 0.5)
   Else
      retvalu = Kw.SI16MAX
   End If
   cnv_dbl2si16 = retvalu
End Function
Public Function k2tempc(ByVal temp_k As Double) As Double
   k2tempc = (temp_k - Kw.K_AT_0TEMPC) * Kw.KELVIN / Kw.DEGC
End Function
Public Function tempc2k(ByVal temp_c As Double) As Double
   tempc2k = temp_c * Kw.DEGC / Kw.KELVIN + Kw.K_AT_0TEMPC
End Function
Public Function k2tempf(ByVal temp_k As Double) As Double
   k2tempf = (temp_k - Kw.K_AT_0TEMPF) * Kw.KELVIN / Kw.DEGF
End Function
Public Function tempf2k(ByVal temp_f As Double) As Double
   tempf2k = temp_f * Kw.DEGF / Kw.KELVIN + Kw.K_AT_0TEMPF
End Function
Public Function k2tempr(ByVal temp_k As Double) As Double
   k2tempr = (temp_k - Kw.K_AT_0TEMPR) * Kw.KELVIN / Kw.DEGR
End Function
Public Function tempr2k(ByVal temp_r As Double) As Double
   tempr2k = temp_r * Kw.DEGR / Kw.KELVIN + Kw.K_AT_0TEMPR
End Function
Public Function tempf2tempc(ByVal temp_f As Double) As Double
   tempf2tempc = (temp_f - TEMPF_AT_0TEMPC) * DEGF
End Function
Public Function tempc2tempf(ByVal temp_c As Double) As Double
   tempc2tempf = temp_c / DEGF + TEMPF_AT_0TEMPC
End Function
Public Function iszero(ByVal xx As Double) As Boolean
   iszero = 0.0 <= xx And xx <= 0.0
End Function
Public Function iseven(ByVal xx As Double) As Boolean
   iseven = Kw.fmodu(xx, 2.0) < 1.0
End Function
Public Function isodd(ByVal xx As Double) As Boolean
   isodd = 1.0 <= Kw.fmodu(xx, 2.0)
End Function
Public Function ismult(ByVal xx As Double, ByVal mult As Double) As Boolean
   ismult = Kw.fmodu(xx, mult) < 1.0
End Function
Public Function ismultl(ByVal xx As Long, ByVal mult As Long) As Boolean
   Dim retvalu_bol As Boolean
   If (xx Mod mult = 0) Then
      retvalu_bol = True
   Else
      retvalu_bol = False
   End If
   ismultl = retvalu_bol
End Function
Public Function isgt(ByVal xx As Double, ByVal yy As Double) As Boolean
   isgt = yy < xx
End Function
Public Function islt(ByVal xx As Double, ByVal yy As Double) As Boolean
   islt = xx < yy
End Function
Public Function isge(ByVal xx As Double, ByVal yy As Double) As Boolean
   isge = yy <= xx
End Function
Public Function isle(ByVal xx As Double, ByVal yy As Double) As Boolean
   isle = xx <= yy
End Function
Public Function ispos(ByVal xx As Double) As Boolean
   ispos = 0.0 < xx
End Function
Public Function isneg(ByVal xx As Double) As Boolean
   isneg = xx < 0.0
End Function
Public Function iseq(ByVal xx As Double, ByVal yy As Double) As Boolean
   Dim retvalu_bol As Boolean
   Dim epsx As Double
   Dim diffxy As Double
   retvalu_bol = False
   If (Kw.iszero(xx)) Then
      If (Math.Abs(yy) <= Kw.DBLEPS) Then
         retvalu_bol = True
      End If
   Else
      epsx = 2.0 * xx * Kw.DBLEPS
      diffxy = xx - yy
      If (epsx < 0.0) Then
         epsx = -epsx
      End If
      If (- epsx <= diffxy And diffxy <= epsx) Then
         retvalu_bol = True
      End If
   End If
   iseq = retvalu_bol
End Function
Public Function isneq(ByVal xx As Double, ByVal yy As Double) As Boolean
   isneq = xx < yy Or yy < xx
End Function
Public Function isint(ByVal xx As Double) As Boolean
   isint = Kw.iseq(xx, floor(xx))
End Function
Public Function isnegint(ByVal xx As Double) As Boolean
   isnegint = xx < 0.0 And Kw.iseq(xx, floor(xx))
End Function
Public Function isposint(ByVal xx As Double) As Boolean
   isposint = 0.0 < xx And Kw.iseq(xx, floor(xx))
End Function
Public Function ifzero(ByVal cond As Double, ByVal tru_val As Double, _
         ByVal fal_val As Double) As Double
   Dim retvalu As Double
   If (cond < 0.0 Or 0.0 < cond) Then
      retvalu = fal_val
   Else
      retvalu = tru_val
   End If
   ifzero = retvalu
End Function
Public Function isalmostequal(ByVal xx As Double, ByVal yy As Double, _
         ByVal epsratio As Double) As Boolean
   isalmostequal = Math.Abs(xx - yy) <= Math.Abs(epsratio * xx)
End Function
Public Function iswithin(ByVal xx As Double, ByVal yy As Double, ByVal _
         delta As Double) As Boolean
   iswithin = xx - delta <= yy And yy <= xx + delta
End Function
Public Function isbetweenx(ByVal xx As Double, ByVal min_xx As Double, _
         ByVal max_xx As Double) As Boolean
   isbetweenx = min_xx < xx And xx < max_xx
End Function
Public Function isbetween(ByVal xx As Double, ByVal min_xx As Double, _
         ByVal max_xx As Double) As Boolean
   isbetween = min_xx <= xx And xx <= max_xx
End Function
Public Function isleapyear(ByVal gregyear As Long) As Boolean
   Dim retvalu_bol As Boolean
   Dim rema As Long
   retvalu_bol = False
   If ((gregyear Mod 4) = 0) Then
      rema = (gregyear Mod 400)
      If (rema <> 100 And rema <> 200 And rema <> 300) Then
         retvalu_bol = True
      End If
   End If
   isleapyear = retvalu_bol
End Function
Public Function isss(ByVal xx As Double, ByVal yy As Double) As Boolean
   Dim retvalu_bol As Boolean
   If (0.0 < xx) Then
      If (0.0 < yy) Then
         retvalu_bol = True
      Else
         retvalu_bol = False
      End If
   ElseIf (xx < 0.0) Then
      If (yy < 0.0) Then
         retvalu_bol = True
      Else
         retvalu_bol = False
      End If
   Else
      If (0.0 < yy Or yy < 0.0) Then
         retvalu_bol = False
      Else
         retvalu_bol = True
      End If
   End If
   isss = retvalu_bol
End Function
Public Function issignsame(ByVal xx As Double, ByVal yy As Double) As Boolean
   issignsame = Kw.isss(xx, yy)
End Function
Public Function isfloorsame(ByVal xx As Double, ByVal yy As Double, ByVal _
         multy As Double) As Boolean
   isfloorsame = Kw.iseq(floor(xx * multy), floor(yy * multy))
End Function
Public Function magicset() As Long
   magicset = LC_MAGIC_INT
End Function
Public Function magicnot() As Long
   magicnot = LC_MAGIC_INT_NOT
End Function
Public Function ismagic(ByVal xx As Long) As Boolean
   ismagic = iseq(xx, magicset())
End Function
Public Function rtoz(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = Ceil(xx)
   Else
      retvalu = floor(xx)
   End If
   rtoz = retvalu
End Function
Public Function rtoi(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (0.0 <= xx) Then
      retvalu = Ceil(xx)
   Else
      retvalu = floor(xx)
   End If
   rtoi = retvalu
End Function
Public Function bankers(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = floor(xx + 0.5)
   If (Kw.isint(xx + 0.5) And Kw.isodd(retvalu)) Then
      retvalu = retvalu - 1.0
   End If
   bankers = retvalu
End Function
Public Function round(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = floor(xx + 0.5)
   round = retvalu
End Function
Public Function iround(ByVal xx As Double) As Long
   Dim retvalu As Long
   retvalu = floor(xx + 0.5)
   iround = retvalu
End Function
Public Function round2(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = xx
   Else
      retvalu = Kw.round(xx / yy) * yy
   End If
   round2 = retvalu
End Function
Public Function roundy(ByVal xx As Double, ByVal yy As Double, ByVal shf _
         As Double) As Double
   Dim retvalu As Double
   If (yy < 0.0 Or 0.0 < yy) Then
      retvalu = (Kw.round((xx - shf) / yy) * yy + shf)
   Else
      retvalu = xx
   End If
   roundy = retvalu
End Function
Public Function rtomsd(ByVal fs As Double, ByVal msds As Long) As Double
   Dim retvalu As Double
   Dim signs As Double
   Dim logi As Long
   If (Kw.iszero(fs)) Then
      retvalu = 0.0
   Else
      If (fs < 0.0) Then
         signs = -1.0
         fs = -fs
      Else
         signs = 1.0
      End If
      logi = floor(Kw.log10(fs) - msds + 1.0)
      retvalu = signs * Kw.round2(fs, Pow(10.0, logi))
   End If
   rtomsd = retvalu
End Function
Public Function rto125(ByVal fs As Double) As Double
   Dim signs As Double
   Dim tmpf As Double
   Dim valu As Double
   Dim pow_ten As Double
   Dim retvalu As Double
   If (Kw.iszero(fs)) Then
      retvalu = 0.0
   Else
      If (fs < 0.0) Then
         signs = -1.0
         fs = -fs
      Else
         signs = 1.0
      End If
      pow_ten = Pow(10.0, floor(Kw.log10(fs)))
      tmpf = fs / pow_ten
      If (tmpf < Sqr(2.0)) Then
         valu = 1.0
      ElseIf (tmpf < Sqr(10.0)) Then
         valu = 2.0
      ElseIf (tmpf < Sqr(50.0)) Then
         valu = 5.0
      Else
         valu = 10.0
      End If
      retvalu = signs * pow_ten * valu
   End If
   rto125 = retvalu
End Function
Public Function floor2(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = 0.0
   Else
      retvalu = floor(xx / Math.Abs(yy)) * Math.Abs(yy)
   End If
   floor2 = retvalu
End Function
Public Function ceil2(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = 0.0
   Else
      retvalu = Ceil(xx / Math.Abs(yy)) * Math.Abs(yy)
   End If
   ceil2 = retvalu
End Function
Public Function fmod2(ByVal xx As Double, ByVal minn As Double, ByVal _
         maxx As Double) As Double
   Dim retvalu As Double
   If (Kw.iseq(maxx, minn)) Then
      retvalu = 0.0
   Else
      retvalu = Kw.fmodu(xx - minn, maxx - minn) + minn
   End If
   fmod2 = retvalu
End Function
Public Function frac(ByVal xx As Double) As Double
   frac = xx - floor(xx)
End Function
Public Function trunc(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (0.0 <= xx) Then
      retvalu = xx - floor(xx)
   Else
      retvalu = xx - Ceil(xx)
   End If
   trunc = retvalu
End Function
Public Function fmul(ByVal xx As Double, ByVal pp As Double) As Double
   Dim lpp As Double
   lpp = Math.Log(pp)
   fmul = Math.Exp(lpp * Kw.frac(Math.Log(xx) / lpp))
End Function
Public Function dist(ByVal xx As Double, ByVal xmoduli As Double) As Double
   Dim retvalu As Double
   Dim axx As Double
   Dim axmoduli As Double
   axx = Math.Abs(xx)
   axmoduli = Math.Abs(xmoduli)
   retvalu = Kw.fmod(axx, axmoduli)
   If (axmoduli < 2.0 * retvalu) Then
      retvalu = axmoduli - retvalu
   End If
   dist = retvalu
End Function
Public Function ddist(ByVal xx As Double, ByVal xmoduli As Double) As Double
   Dim retvalu As Double
   Dim rema As Double
   Dim axmoduli As Double
   If (Kw.iszero(xmoduli)) Then
      retvalu = 0.0
   Else
      axmoduli = Math.Abs(xmoduli)
      rema = xx - floor(xx / axmoduli) * axmoduli
      If (axmoduli < 2.0 * rema) Then
         rema = rema - axmoduli
      End If
      retvalu = rema
   End If
   ddist = retvalu
End Function
Public Function sinc(ByVal xx_rad As Double) As Double
   Dim retvalu As Double
   If (xx_rad < 0.0 Or 0.0 < xx_rad) Then
      retvalu = Math.Sin(xx_rad) / xx_rad
   Else
      retvalu = 1.0
   End If
   sinc = retvalu
End Function
Public Function sincinv(ByVal yy As Double) As Double
   Dim min_yy As Double
   Dim min_xx As Double
   Dim start_xx As Double
   Dim aa As Double
   Dim bb As Double
   Dim nrvx_ii As Long
   Dim nrvx_yy As Double
   Dim nrvx_xx As Double
   Dim nrvx_dy As Double
   Dim nrvx_xp As Double
   min_xx = 4.4934094579090641753079882808139693729311345
   min_yy = sinc(min_xx)
   If (yy <= min_yy) Then
      nrvx_xx = min_xx
   ElseIf (yy < 1.0) Then
      aa = yy - min_yy
      bb = 1.0 - yy
      start_xx = (aa * Sqr(5.0 * bb) + bb * (min_xx - Sqr(6.0 * aa))) / _
               (1.0 - min_yy)
      nrvx_xx = start_xx
      For nrvx_ii = 0 To 20
         nrvx_xp = nrvx_xx
         nrvx_dy = Math.Cos(nrvx_xx) - yy
         If (Kw.iszero(nrvx_dy)) Then
            Exit For
         End If
         nrvx_yy = Math.Sin(nrvx_xx) - yy * nrvx_xx
         nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
         If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
            Exit For
         End If
      Next
   Else
      nrvx_xx = 0.0
   End If
   sincinv = nrvx_xx
End Function
Public Function sincc(ByVal xx_rad As Double) As Double
   Dim trigsign As Double
   Dim xr_rad As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nxr_sqr As Double
   Dim ii As Long
   Dim term As Double
   Dim retvalu As Double
   If (Kw.iszero(xx_rad)) Then
      retvalu = 1.0
   Else
      xr_rad = Kw.fmod(xx_rad, Kw.TAU)
      If (Kw.TAU / 2.0 < xr_rad) Then
         xr_rad = Kw.TAU - xr_rad
         trigsign = -1.0
      Else
         trigsign = 1.0
      End If
      If (Kw.TAU / 4.0 < xr_rad) Then
         xr_rad = Kw.TAU / 2.0 - xr_rad
      End If
      nxr_sqr = -xr_rad * xr_rad
      sum_curr = xr_rad
      term = xr_rad
      ii = 2
      Do While (True)
         term = term * nxr_sqr / (ii * (ii - 1.0))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 2
      Loop
      retvalu = trigsign * sum_curr * xr_rad / xx_rad
   End If
   sincc = retvalu
End Function
Public Function versin(ByVal circ_rad As Double) As Double
   Dim trigsign As Double
   Dim xr_rad As Double
   Dim xr_sqr As Double
   Dim ii As Long
   Dim sum_curr As Double
   Dim term As Double
   Dim sum_prev As Double
   xr_rad = Kw.fmod(circ_rad, Kw.TAU)
   If (Kw.TAU / 2.0 < xr_rad) Then
      xr_rad = Kw.TAU - xr_rad
   End If
   If (Kw.TAU / 4.0 < xr_rad) Then
      xr_rad = Kw.TAU / 2.0 - xr_rad
      trigsign = -1.0
   Else
      trigsign = 1.0
   End If
   xr_sqr = -xr_rad * xr_rad
   sum_curr = 1.0 / 2.0
   term = 1.0 / 2.0
   ii = 4
   Do While (True)
      term = term * xr_sqr / (ii * (ii - 1.0))
      sum_prev = sum_curr
      sum_curr = sum_curr + term
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 2
   Loop
   sum_curr = sum_curr * - xr_sqr
   If (trigsign < 0.0) Then
      sum_curr = 2.0 - sum_curr
   End If
   versin = sum_curr
End Function
Public Function haversin(ByVal circ_rad As Double) As Double
   haversin = versin(circ_rad) / 2.0
End Function
Public Function tur2deg(ByVal circ_tur As Double) As Double
   tur2deg = circ_tur * Kw.TURN / Kw.ARCDEG
End Function
Public Function deg2tur(ByVal circ_deg As Double) As Double
   deg2tur = circ_deg * Kw.ARCDEG / Kw.TURN
End Function
Public Function tur2rad(ByVal circ_tur As Double) As Double
   tur2rad = circ_tur * Kw.TURN / Kw.RADIAN
End Function
Public Function rad2tur(ByVal circ_rad As Double) As Double
   rad2tur = circ_rad * Kw.RADIAN / Kw.TURN
End Function
Public Function tur2sec(ByVal circ_tur As Double) As Double
   tur2sec = circ_tur * Kw.TURN / Kw.ARCSEC
End Function
Public Function sec2tur(ByVal circ_sec As Double) As Double
   sec2tur = circ_sec * Kw.ARCSEC / Kw.TURN
End Function
Public Function rad2deg(ByVal circ_rad As Double) As Double
   rad2deg = circ_rad * Kw.RADIAN / Kw.ARCDEG
End Function
Public Function deg2rad(ByVal circ_deg As Double) As Double
   deg2rad = circ_deg * Kw.ARCDEG / Kw.RADIAN
End Function
Public Function rad2sec(ByVal circ_rad As Double) As Double
   rad2sec = circ_rad * Kw.RADIAN / Kw.ARCSEC
End Function
Public Function sec2rad(ByVal circ_sec As Double) As Double
   sec2rad = circ_sec * Kw.ARCSEC / Kw.RADIAN
End Function
Public Function deg2sec(ByVal circ_deg As Double) As Double
   deg2sec = circ_deg * Kw.ARCDEG / Kw.ARCSEC
End Function
Public Function sec2deg(ByVal circ_sec As Double) As Double
   sec2deg = circ_sec * Kw.ARCSEC / Kw.ARCDEG
End Function
Public Function rad2dms(ByVal xx_rads As Double) As Double
   Dim dd_deg As Double
   Dim mm_min As Double
   Dim dg As Double
   dg = rad2deg(xx_rads)
   dd_deg = floor(dg)
   dg = (dg - dd_deg) * Kw.ARCDEG / Kw.ARCMIN
   mm_min = floor(dg)
   dg = (dg - mm_min) * Kw.ARCMIN / Kw.ARCSEC
   rad2dms = dd_deg + (mm_min + dg / 100.0) / 100.0
End Function
Public Function rad2dms2(ByVal circ_rads As Double) As Double
   Dim dg As Double
   Dim dd_deg_arr(2) As Double
   Dim mm_min_arr(2) As Double
   dg = rad2deg(circ_rads)
   dg = Kw.modf(dg, dd_deg_arr) * Kw.ARCDEG / Kw.ARCMIN
   dg = Kw.modf(dg, mm_min_arr) * Kw.ARCMIN / Kw.ARCSEC
   rad2dms2 = dd_deg_arr(0) + (mm_min_arr(0) + dg / 100.0) / 100.0
End Function
Public Function dms2rad(ByVal circ_dms As Double) As Double
   Dim dd_deg As Double
   Dim mm_min As Double
   Dim dg As Double
   dd_deg = floor(circ_dms)
   dg = (circ_dms - dd_deg) * 100.0
   mm_min = floor(dg)
   dg = (dg - mm_min) * 100.0
   dms2rad = (dg * Kw.ARCSEC + mm_min * Kw.ARCMIN + dd_deg * Kw.ARCDEG) / _
            Kw.RADIAN
End Function
Public Function deg2dms(ByVal circ_deg As Double) As Double
   deg2dms = rad2dms(deg2rad(circ_deg))
End Function
Public Function dms2deg(ByVal circ_dms As Double) As Double
   dms2deg = rad2deg(dms2rad(circ_dms))
End Function
Public Function cot(ByVal circ_rad As Double) As Double
   cot = Math.Cos(circ_rad) / Math.Sin(circ_rad)
End Function
Public Function sec(ByVal circ_rad As Double) As Double
   sec = 1.0 / Math.Cos(circ_rad)
End Function
Public Function csc(ByVal circ_rad As Double) As Double
   csc = 1.0 / Math.Sin(circ_rad)
End Function
Public Function sininv(ByVal xx As Double) As Double
   sininv = Atan2(xx, Kw.topyh1(xx))
End Function
Public Function cosinv(ByVal xx As Double) As Double
   cosinv = Atan2(Kw.topyh1(xx), xx)
End Function
Public Function taninv(ByVal xx As Double) As Double
   taninv = Atan2(xx, 1.0)
End Function
Public Function cotinv(ByVal xx As Double) As Double
   cotinv = Atan2(1.0, xx)
End Function
Public Function secinv(ByVal xx As Double) As Double
   secinv = Atan2(Sqr(xx * xx - 1.0), Kw.sign(xx))
End Function
Public Function cscinv(ByVal xx As Double) As Double
   cscinv = Atan2(Kw.sign(xx), Sqr(xx * xx - 1.0))
End Function
Public Function sinh(ByVal hyp_rad As Double) As Double
   sinh = (Math.Exp(hyp_rad) - Math.Exp(-hyp_rad)) / 2.0
End Function
Public Function cosh(ByVal hyp_rad As Double) As Double
   cosh = (Math.Exp(hyp_rad) + Math.Exp(-hyp_rad)) / 2.0
End Function
Public Function tanh(ByVal hyp_rad As Double) As Double
   tanh = sinh(hyp_rad) / cosh(hyp_rad)
End Function
Public Function coth(ByVal hyp_rad As Double) As Double
   coth = cosh(hyp_rad) / sinh(hyp_rad)
End Function
Public Function sech(ByVal hyp_rad As Double) As Double
   sech = 1.0 / cosh(hyp_rad)
End Function
Public Function csch(ByVal hyp_rad As Double) As Double
   csch = 1.0 / sinh(hyp_rad)
End Function
Public Function gd(ByVal hyp_rad As Double) As Double
   gd = 2.0 * Atan2(Math.Exp(hyp_rad), 1.0) - Kw.PI / 2.0
End Function
Public Function gdinv(ByVal xx As Double) As Double
   Dim xxn As Double
   xxn = Kw.fmods(xx, Kw.PI)
   gdinv = Math.Log(Math.Abs((1.0 + Math.Sin(xxn)) / Math.Cos(xxn)))
End Function
Public Function sinhinv(ByVal xx As Double) As Double
   sinhinv = Math.Log(xx + Sqr(xx * xx + 1.0))
End Function
Public Function coshinv(ByVal xx As Double) As Double
   coshinv = Math.Log(xx + Sqr(xx * xx - 1.0))
End Function
Public Function tanhinv(ByVal xx As Double) As Double
   tanhinv = Math.Log((1.0 + xx) / (1.0 - xx)) / 2.0
End Function
Public Function cothinv(ByVal xx As Double) As Double
   cothinv = Math.Log((xx + 1.0) / (xx - 1.0)) / 2.0
End Function
Public Function sechinv(ByVal xx As Double) As Double
   sechinv = Math.Log((1.0 + Kw.topyh1(xx)) / xx)
End Function
Public Function cschinv(ByVal xx As Double) As Double
   cschinv = Math.Log((1.0 + Sqr(1.0 + xx * xx)) / xx)
End Function
Public Function atan2h(ByVal xx As Double, ByVal yy As Double) As Double
   Dim retvalu As Double
   If (Math.Abs(yy) <= Math.Abs(xx)) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log((yy + xx) / (yy - xx)) / 2.0
   End If
   atan2h = retvalu
End Function
Public Function atan2u(ByVal xx As Double, ByVal yy As Double) As Double
   atan2u = Kw.fmodu(Atan2(xx, yy), Kw.tur2rad(1.0))
End Function
Public Function sind(ByVal circ_deg As Double) As Double
   sind = Math.Sin(deg2rad(circ_deg))
End Function
Public Function sindinv(ByVal xx As Double) As Double
   sindinv = rad2deg(sininv(xx))
End Function
Public Function cosd(ByVal circ_deg As Double) As Double
   cosd = Math.Cos(deg2rad(circ_deg))
End Function
Public Function cosdinv(ByVal xx As Double) As Double
   cosdinv = rad2deg(cosinv(xx))
End Function
Public Function tand(ByVal circ_deg As Double) As Double
   tand = Math.Tan(deg2rad(circ_deg))
End Function
Public Function tandinv(ByVal xx As Double) As Double
   tandinv = rad2deg(taninv(xx))
End Function
Public Function cotd(ByVal circ_deg As Double) As Double
   cotd = cot(deg2rad(circ_deg))
End Function
Public Function cotdinv(ByVal xx As Double) As Double
   cotdinv = rad2deg(cotinv(xx))
End Function
Public Function secd(ByVal circ_deg As Double) As Double
   secd = sec(deg2rad(circ_deg))
End Function
Public Function secdinv(ByVal xx As Double) As Double
   secdinv = rad2deg(secinv(xx))
End Function
Public Function cscd(ByVal circ_deg As Double) As Double
   cscd = csc(deg2rad(circ_deg))
End Function
Public Function cscdinv(ByVal xx As Double) As Double
   cscdinv = rad2deg(cscinv(xx))
End Function
Public Function atan2d(ByVal xx As Double, ByVal yy As Double) As Double
   atan2d = rad2deg(Atan2(xx, yy))
End Function
Public Function sint(ByVal circ_tur As Double) As Double
   sint = Math.Sin(tur2rad(circ_tur))
End Function
Public Function sintinv(ByVal xx As Double) As Double
   sintinv = rad2tur(sininv(xx))
End Function
Public Function cost(ByVal circ_tur As Double) As Double
   cost = Math.Cos(tur2rad(circ_tur))
End Function
Public Function costinv(ByVal xx As Double) As Double
   costinv = rad2tur(cosinv(xx))
End Function
Public Function tant(ByVal circ_tur As Double) As Double
   tant = Math.Tan(tur2rad(circ_tur))
End Function
Public Function tantinv(ByVal xx As Double) As Double
   tantinv = rad2tur(taninv(xx))
End Function
Public Function cott(ByVal circ_tur As Double) As Double
   cott = cot(tur2rad(circ_tur))
End Function
Public Function cottinv(ByVal xx As Double) As Double
   cottinv = rad2tur(cotinv(xx))
End Function
Public Function sect(ByVal circ_tur As Double) As Double
   sect = sec(tur2rad(circ_tur))
End Function
Public Function sectinv(ByVal xx As Double) As Double
   sectinv = rad2tur(secinv(xx))
End Function
Public Function csct(ByVal circ_tur As Double) As Double
   csct = csc(tur2rad(circ_tur))
End Function
Public Function csctinv(ByVal xx As Double) As Double
   csctinv = rad2tur(cscinv(xx))
End Function
Public Function atan2t(ByVal xx As Double, ByVal yy As Double) As Double
   atan2t = rad2tur(Atan2(xx, yy))
End Function
Public Function sqrtxp1m1(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (Math.Abs(xx) < 0.01) Then
      retvalu = ((((((((-429.0 / 32768.0) * xx + 33.0 / 2048.0) * xx - _
               21.0 / 1024.0) * xx + 7.0 / 256.0) * xx - 5.0 / 128.0) * _
               xx + 1.0 / 16.0) * xx - 1.0 / 8.0) * xx + 1.0 / 2.0) * xx
   Else
      retvalu = Sqr(1.0 + xx) - 1.0
   End If
   sqrtxp1m1 = retvalu
End Function
Public Function ln1p(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Long
   Dim start As Long
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Log(1.0 + xx)
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / Math.Log(Math.Abs(xx))))
      If (start < 2) Then
         start = 2
      End If
      sum_curr = 0.0
      For jj = start To 1 Step - 1
         sum_curr = 1.0 / jj - sum_curr * xx
      Next
      retvalu = sum_curr * xx
   End If
   ln1p = retvalu
End Function
Public Function expm1(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Long
   Dim start As Long
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Exp(xx) - 1.0
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / Math.Log(Math.Abs(xx))))
      If (start < 2) Then
         start = 2
      End If
      sum_curr = 0.0
      For jj = start To 1 Step - 1
         sum_curr = xx * (1.0 + sum_curr) / jj
      Next
      retvalu = sum_curr
   End If
   expm1 = retvalu
End Function
Public Function cosm1(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Long
   Dim start As Long
   Dim xr_sqr As Double
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Cos(xx) - 1.0
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / Math.Log(Math.Abs(xx))))
      If (start < 6) Then
         start = 6
      ElseIf (Kw.isodd(start)) Then
         start = start + 1
      End If
      xr_sqr = -xx * xx
      sum_curr = 1.0 / (start * (start + 1.0))
      For jj = start To 2 Step - 2
         sum_curr = sum_curr + 1.0
         sum_curr = sum_curr * xr_sqr / (jj * (jj - 1.0))
      Next
      retvalu = sum_curr
   End If
   cosm1 = retvalu
End Function
Public Function lns(ByVal xx As Double) As Double
   Dim aa As Double
   Dim retvalu As Double
   aa = Math.Abs(xx)
   If (aa < 1.0 / Kw.DBLMAX) Then
      retvalu = -Kw.DBLMAXLN - 1.0
   Else
      retvalu = Math.Log(aa)
   End If
   lns = retvalu
End Function
Public Function trip(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim fx As Double
   fx = 4.0 * frac(xx)
   If (fx < 2.0) Then
      retvalu = 1.0 - fx
   Else
      retvalu = fx - 3.0
   End If
   trip = retvalu
End Function
Private Function lf_cbrtx_gt_zero(ByVal xx As Double) As Double
   Dim yy As Double
   Dim zz As Double
   zz = 64.0 * xx / 27.0
   yy = 1.0
   Do While (zz <= 1.0)
      zz = zz * 8.0
      yy = yy / 2.0
   Loop
   Do While (8.0 < zz)
      zz = zz / 8.0
      yy = yy * 2.0
   Loop
   lf_cbrtx_gt_zero = yy
End Function
Public Function cbrt(ByVal yy As Double) As Double
   Dim ayy As Double
   Dim init_xx As Double
   Dim nrvx_ii As Long
   Dim nrvx_yy As Double
   Dim nrvx_xx As Double
   Dim nrvx_dy As Double
   Dim nrvx_xp As Double
   ayy = Math.Abs(yy)
   If (0.0 < ayy) Then
      init_xx = lf_cbrtx_gt_zero(ayy)
      If (yy < 0.0) Then
         init_xx = -init_xx
      End If
      nrvx_xx = init_xx
      For nrvx_ii = 0 To 20
         nrvx_xp = nrvx_xx
         nrvx_dy = 3.0 * nrvx_xx * nrvx_xx
         If (Kw.iszero(nrvx_dy)) Then
            Exit For
         End If
         nrvx_yy = nrvx_xx * nrvx_xx * nrvx_xx - yy
         nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
         If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
            Exit For
         End If
      Next
   Else
      nrvx_xx = 0.0
   End If
   cbrt = nrvx_xx
End Function
Public Function cuberoot(ByVal xx As Double) As Double
   cuberoot = cbrt(xx)
End Function
Public Function squareroot(ByVal xx As Double) As Double
   squareroot = Sqr(xx)
End Function
Public Function print_array(ByVal arr_size As Long, data_arr_pc() As _
         Long) As Long
   Dim ii As Long
   For ii = 0 To arr_size - 1
      Debug.Print(data_arr_pc(ii))
      Debug.Print(" ")
   Next
   print_array = arr_size
End Function
Private Function lf_continued_fraction(ByVal orig As Double, ByVal _
         show_diff As Long) As Long
   Dim whole As Long
   Dim xx As Double
   Dim epsilon As Double
   Dim den_a As Long
   Dim den_b As Long
   Dim den_c As Long
   Dim num_a As Long
   Dim num_b As Long
   Dim num_c As Long
   Dim diff As Double
   Dim steps As Long
   Dim appr As Double
   steps = 0
   xx = orig
   den_b = 0
   num_b = 1
   den_a = 1
   num_a = 0
   epsilon = Kw.DBLEPS / 2.0
   Do While (True)
      whole = floorl(xx)
      den_c = den_b * whole + den_a
      num_c = num_b * whole + num_a
      den_a = den_b
      num_a = num_b
      den_b = den_c
      num_b = num_c
      steps = steps + 1
      appr = (1.0 * num_b / den_b)
      diff = orig - appr
      Debug.Print("")
      Debug.Print(whole)
      If (0 <= show_diff) Then
         Debug.Print(vbTab)
         Debug.Print(num_b)
         Debug.Print(" / ")
         Debug.Print(den_b)
         Debug.Print(vbTab)
         Debug.Print(appr)
         If (0 < show_diff) Then
            Debug.Print(vbTab)
            Debug.Print(diff)
         End If
         Debug.Print(vbNewLine)
      Else
         Debug.Print(" ")
      End If
      If (Kw.iseq(xx, whole)) Then
         Exit Do
      End If
      xx = 1.0 / (xx - whole)
      epsilon = epsilon * 2.0
      If (Math.Abs(diff) < epsilon) Then
         Exit Do' loop AWAIT
      End If
   Loop
   lf_continued_fraction = steps
End Function
Public Function contfra_print(ByVal orig As Double) As Long
   contfra_print = lf_continued_fraction(orig, -1)
End Function
Public Function contfrac_print(ByVal orig As Double) As Long
   contfrac_print = lf_continued_fraction(orig, 0)
End Function
Public Function contfracd_print(ByVal orig As Double) As Long
   contfracd_print = lf_continued_fraction(orig, 1)
End Function
Public Function num2char_print(ByVal num As Long) As Long
   If (num < 32) Then
      If (num < 16) Then
         If (num < 8) Then
            If (num < 4) Then
               If (num < 2) Then
                  If (num < 1) Then
                     Debug.Print("0")
                  Else
                     Debug.Print("1")
                  End If
               ElseIf (num < 3) Then
                  Debug.Print("2")
               Else
                  Debug.Print("3")
               End If
            ElseIf (num < 6) Then
               If (num < 5) Then
                  Debug.Print("4")
               Else
                  Debug.Print("5")
               End If
            ElseIf (num < 7) Then
               Debug.Print("6")
            Else
               Debug.Print("7")
            End If
         ElseIf (num < 12) Then
            If (num < 10) Then
               If (num < 9) Then
                  Debug.Print("8")
               Else
                  Debug.Print("9")
               End If
            ElseIf (num < 11) Then
               Debug.Print("a")
            Else
               Debug.Print("b")
            End If
         ElseIf (num < 14) Then
            If (num < 13) Then
               Debug.Print("c")
            Else
               Debug.Print("d")
            End If
         ElseIf (num < 15) Then
            Debug.Print("e")
         Else
            Debug.Print("f")
         End If
      ElseIf (num < 24) Then
         If (num < 20) Then
            If (num < 18) Then
               If (num < 17) Then
                  Debug.Print("g")
               Else
                  Debug.Print("h")
               End If
            ElseIf (num < 19) Then
               Debug.Print("i")
            Else
               Debug.Print("j")
            End If
         ElseIf (num < 22) Then
            If (num < 21) Then
               Debug.Print("k")
            Else
               Debug.Print("l")
            End If
         ElseIf (num < 23) Then
            Debug.Print("m")
         Else
            Debug.Print("n")
         End If
      ElseIf (num < 28) Then
         If (num < 26) Then
            If (num < 25) Then
               Debug.Print("o")
            Else
               Debug.Print("p")
            End If
         ElseIf (num < 27) Then
            Debug.Print("q")
         Else
            Debug.Print("r")
         End If
      ElseIf (num < 30) Then
         If (num < 29) Then
            Debug.Print("s")
         Else
            Debug.Print("t")
         End If
      ElseIf (num < 31) Then
         Debug.Print("u")
      Else
         Debug.Print("v")
      End If
   ElseIf (num < 48) Then
      If (num < 40) Then
         If (num < 36) Then
            If (num < 34) Then
               If (num < 33) Then
                  Debug.Print("w")
               Else
                  Debug.Print("x")
               End If
            ElseIf (num < 35) Then
               Debug.Print("y")
            Else
               Debug.Print("z")
            End If
         ElseIf (num < 38) Then
            If (num < 37) Then
               Debug.Print("A")
            Else
               Debug.Print("B")
            End If
         ElseIf (num < 39) Then
            Debug.Print("C")
         Else
            Debug.Print("D")
         End If
      ElseIf (num < 44) Then
         If (num < 42) Then
            If (num < 41) Then
               Debug.Print("E")
            Else
               Debug.Print("F")
            End If
         ElseIf (num < 43) Then
            Debug.Print("G")
         Else
            Debug.Print("H")
         End If
      ElseIf (num < 46) Then
         If (num < 45) Then
            Debug.Print("I")
         Else
            Debug.Print("J")
         End If
      ElseIf (num < 47) Then
         Debug.Print("K")
      Else
         Debug.Print("L")
      End If
   ElseIf (num < 56) Then
      If (num < 52) Then
         If (num < 50) Then
            If (num < 49) Then
               Debug.Print("M")
            Else
               Debug.Print("N")
            End If
         ElseIf (num < 51) Then
            Debug.Print("O")
         Else
            Debug.Print("P")
         End If
      ElseIf (num < 54) Then
         If (num < 53) Then
            Debug.Print("Q")
         Else
            Debug.Print("R")
         End If
      ElseIf (num < 55) Then
         Debug.Print("S")
      Else
         Debug.Print("T")
      End If
   ElseIf (num < 60) Then
      If (num < 58) Then
         If (num < 57) Then
            Debug.Print("U")
         Else
            Debug.Print("V")
         End If
      ElseIf (num < 59) Then
         Debug.Print("W")
      Else
         Debug.Print("X")
      End If
   ElseIf (num < 62) Then
      If (num < 61) Then
         Debug.Print("Y")
      Else
         Debug.Print("Z")
      End If
   ElseIf (num < 63) Then
      Debug.Print("_")
   ElseIf (num < 64) Then
      Debug.Print("?")
   Else
      Debug.Print("(")
      Debug.Print(num)
      Debug.Print(")")
   End If
   num2char_print = num
End Function
Public Function base_out_print(ByVal num As Long, ByVal baset As Long) As _
         Long
   Dim digits_arr(65) As Long
   Dim dig_count As Long
   Dim ii As Long
   If (num < 0) Then
      Debug.Print("-")
      num = -num
   End If
   dig_count = 0
   Do While (True)
      digits_arr(dig_count) = num Mod baset
      dig_count = dig_count + 1
      num = floorl(num / baset)
      If (num = 0) Then
         Exit Do' loop AWAIT
      End If
   Loop
   For ii = dig_count - 1 To 0 Step - 1
      Call num2char_print(digits_arr(ii))
   Next
   base_out_print = dig_count
End Function
Public Function base_out_fix_print(ByVal num As Long, ByVal baset As Long _
         , ByVal min_sz As Long) As Long
   Dim digits_arr(65) As Long
   Dim dig_count As Long
   Dim ii As Long
   If (num < 0) Then
      num = -num
   End If
   dig_count = 0
   Do While (True)
      digits_arr(dig_count) = num Mod baset
      dig_count = dig_count + 1
      num = floorl(num / baset)
      If (num = 0) Then
         Exit Do' loop AWAIT
      End If
   Loop
   For ii = dig_count To min_sz - 1
      Call num2char_print(0)
   Next
   For ii = dig_count - 1 To 0 Step - 1
      Call num2char_print(digits_arr(ii))
   Next
   base_out_fix_print = min_sz
End Function
Public Function base_outf_print(ByVal num As Double, ByVal baset As Long) _
         As Long
   Dim dig_count As Long
   Dim ii As Long
   Dim frc As Double
   Dim dig As Long
   Dim lim As Long
   dig_count = 0
   If (num < 0.0) Then
      Debug.Print("-")
      num = -num
      dig_count = dig_count + 1
   End If
   dig_count = dig_count + base_out_print(floorl(num), baset) + 1
   Debug.Print(".")
   lim = ceill(-lg(DBLEPS) / lg(baset))
   frc = frac(num) * baset
   ii = 1
   Do While (ii <= lim And Not Kw.iszero(frc))
      dig = floorl(frc)
      Call num2char_print(dig)
      frc = frc - dig
      frc = frc * baset
      ii = ii + 1
   Loop
   base_outf_print = dig_count + lim
End Function
Public Function fvoa(ByVal payment As Double, ByVal rate_per_paymt As _
         Double, ByVal num_pays As Double) As Double
   Dim ttp As Double
   ttp = Pow(1.0 + rate_per_paymt, num_pays)
   fvoa = payment * (ttp - 1.0) / rate_per_paymt
End Function
Public Function fvad(ByVal payment As Double, ByVal rate_per_paymt As _
         Double, ByVal num_pays As Double) As Double
   fvad = fvoa(payment, rate_per_paymt, num_pays) * (1.0 + rate_per_paymt)
End Function
Public Function pvoa(ByVal payment As Double, ByVal rate_per_paymt As _
         Double, ByVal num_pays As Double) As Double
   Dim ntp As Double
   ntp = Pow(1.0 + rate_per_paymt, - num_pays)
   pvoa = payment * (1.0 - ntp) / rate_per_paymt
End Function
Public Function pvad(ByVal payment As Double, ByVal rate_per_paymt As _
         Double, ByVal num_pays As Double) As Double
   Dim ntp As Double
   ntp = Pow(1.0 + rate_per_paymt, - num_pays)
   pvad = payment * (1.0 - ntp) / rate_per_paymt * (1.0 + rate_per_paymt)
End Function
Public Function loanvalue(ByVal payment As Double, ByVal rate_per_paymt _
         As Double, ByVal num_pays As Double) As Double
   loanvalue = fvad(payment, rate_per_paymt, num_pays)
End Function
Public Function loanpayment(ByVal loan_amt As Double, ByVal _
         rate_per_paymt As Double, ByVal num_pays As Double) As Double
   Dim ttp As Double
   ttp = Pow(1.0 + rate_per_paymt, num_pays)
   loanpayment = loan_amt * rate_per_paymt * ttp / (ttp - 1.0)
End Function
Public Function loanrate(ByVal loan_amt As Double, ByVal payment As _
         Double, ByVal num_pays As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   scvx_dx = 0.01
   scvx_xx = 0.05
   scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = payment - loanpayment(loan_amt, scvx_xx, num_pays)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   loanrate = scvx_xx
End Function
Public Function f21(ByVal aa As Double, ByVal bb As Double, ByVal cc As _
         Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim nn As Double
   If (1 < Math.Abs(zz)) Then
      sum_curr = 0.0
   Else
      sum_curr = 1.0
      term = 1.0
      nn = 0
      Do While (True)
         term = term * ((aa + nn) * (bb + nn) * zz / ((cc + nn) * (1 + nn)))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
      Loop
   End If
   f21 = sum_curr
End Function
Public Function f11(ByVal aa As Double, ByVal bb As Double, ByVal zz As _
         Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim nn As Double
   If (1 < Math.Abs(zz)) Then
      sum_curr = 0.0
   Else
      sum_curr = 1.0
      term = 1.0
      nn = 0
      Do While (True)
         term = term * ((aa + nn) * zz / ((bb + nn) * (1 + nn)))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
      Loop
   End If
   f11 = sum_curr
End Function
Private Function lf_lambert_iter(ByVal xx As Double, ByVal nearw_zero As _
         Double) As Double
   Dim ii As Long
   Dim eww As Double
   Dim tnn As Double
   Dim snn As Double
   Dim unn As Double
   Dim delta As Double
   Dim wjj As Double
   Dim wjj_prev As Double
   wjj = nearw_zero
   ii = 0
   Do While (True)
      eww = Math.Exp(wjj)
      tnn = wjj * eww - xx
      snn = (wjj + 2.0) / (2.0 * (wjj + 1.0))
      unn = (wjj + 1.0) * eww
      delta = tnn / (tnn * snn - unn)
      wjj_prev = wjj
      wjj = wjj + delta
      If (Kw.iseq(wjj, wjj_prev)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
      If (20 <= ii) Then
         Exit Do' loop AWAIT
      End If
   Loop
   lf_lambert_iter = wjj
End Function
Public Function wp(ByVal xx As Double) As Double
   Dim tnn As Double
   Dim snn As Double
   Dim near_w As Double
   Dim retvalu As Double
   If (xx <= - Math.Exp(-1.0)) Then
      retvalu = -1.0
   Else
      If (xx < 3.0) Then
         snn = Kw.E * xx + 1.0
         near_w = Kw.cbrt(snn) - 1.0 + 0.025 * (snn / Kw.E)
      Else
         snn = Math.Log(xx)
         tnn = Math.Log(Math.Log(xx))
         near_w = snn - tnn + tnn / snn
      End If
      retvalu = lf_lambert_iter(xx, near_w)
   End If
   wp = retvalu
End Function
Public Function wm(ByVal xx As Double) As Double
   Dim ii As Long
   Dim near_w As Double
   Dim retvalu As Double
   Dim tnn As Double
   Dim numer As Double
   Dim denom As Double
   If (xx <= - Math.Exp(-1.0)) Then
      retvalu = -1.0
   Else
      If (xx < - 0.303) Then
         tnn = -Sqr(2.0 * (1.0 + Kw.E * xx))
         near_w = ((((((((((226287557.0 / 37623398400.0) * tnn - 1963.0 / _
                  204120.0) * tnn + 680863.0 / 43545600.0) * tnn - 221.0 _
                  / 8505.0) * tnn + 769.0 / 17280.0) * tnn - 43.0 / _
                  540.0) * tnn + 11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn + _
                  1.0) * tnn - 1.0)
      ElseIf (xx < - 0.0510129) Then
         numer = (((6.5794931769023040E+2) * xx + 2.5388810188892484E+2) _
                  * xx - 7.8141767239074400)
         denom = ((((((1.4779341280760887E+3) * xx + _
                  9.6217849696986600E+2) * xx + 6.8260739999094280E+2) * _
                  xx + 9.9985670831076100E+1) * xx - _
                  6.0439587136908080E+1) * xx + 1.0)
         near_w = numer / denom
      ElseIf (xx < 0.0) Then
         near_w = Math.Log(-xx)
         For ii = 0 To 8
            near_w = Math.Log(xx / near_w)
         Next
      Else
         near_w = Kw.DBLMAX
      End If
      retvalu = lf_lambert_iter(xx, near_w)
   End If
   wm = retvalu
End Function
Public Function wpinv(ByVal zz As Double) As Double
   wpinv = zz * Math.Exp(zz)
End Function
Public Function wminv(ByVal zz As Double) As Double
   wminv = zz * Math.Exp(zz)
End Function
Public Function sinintegral(ByVal xx As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim kk As Double
   Dim xsq As Double
   If (Kw.iszero(xx)) Then
      sum_curr = 0.0
   Else
      sum_curr = xx
      term = xx
      xsq = xx * xx
      kk = 3
      Do While (True)
         term = term * - xsq / (kk * (kk - 1.0))
         sum_prev = sum_curr
         sum_curr = sum_curr + term / kk
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         kk = kk + 2
      Loop
   End If
   sinintegral = sum_curr
End Function
Public Function cosintegral(ByVal xx As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim kk As Double
   Dim xsq As Double
   If (Kw.iszero(xx)) Then
      sum_curr = -Kw.DBLMAX
   Else
      sum_curr = Kw.EULER + Math.Log(Math.Abs(xx))
      term = 1.0
      xsq = xx * xx
      kk = 2
      Do While (True)
         term = term * - xsq / (kk * (kk - 1.0))
         sum_prev = sum_curr
         sum_curr = sum_curr + term / kk
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         kk = kk + 2
      Loop
   End If
   cosintegral = sum_curr
End Function
Public Function Ein(ByVal xx As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim kk As Double
   sum_curr = 0
   term = -1
   kk = 1
   Do While (True)
      term = term * - xx / kk
      sum_prev = sum_curr
      sum_curr = sum_curr + term / kk
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      kk = kk + 1
   Loop
   Ein = sum_curr
End Function
Public Function expintegrali(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = Kw.EULER + Math.Log(Math.Abs(xx)) - Kw.Ein(-xx)
   expintegrali = retvalu
End Function
Public Function expintegral1(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = Kw.Ein(xx) - Kw.EULER - Math.Log(Math.Abs(xx))
   expintegral1 = retvalu
End Function
Public Function expintegraln(ByVal nn As Long, ByVal xx As Double) As Double
   expintegraln = Pow(xx, nn - 1) * Kw.uigamma(1 - nn, xx)
End Function
Public Function logintegral(ByVal xx As Double) As Double
   Dim sum As Double
   Dim lnx As Double
   Dim yy As Double
   Dim nn As Long
   Dim sum_prev As Double
   Dim limit As Double
   Dim retvalu As Double
   If (xx <= 1.0) Then
      retvalu = 0.0
   Else
      lnx = Math.Log(xx)
      sum = 0.0
      yy = 1.0
      limit = 1.6 * Math.Log(xx) + 40
      nn = 1
      Do While (True)
         yy = yy * lnx / nn
         sum_prev = sum
         sum = sum + yy / nn
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
         If (limit <= nn) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = Kw.EULER + Math.Log(lnx) + sum
   End If
   logintegral = retvalu
End Function
Public Function carlsonRF(ByVal xx As Double, ByVal yy As Double, ByVal _
         zz As Double) As Double
   Dim sqx As Double
   Dim sqy As Double
   Dim sqz As Double
   Dim lmbd As Double
   Do While (True)
      sqx = Sqr(xx)
      sqy = Sqr(yy)
      sqz = Sqr(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      If (Kw.iseq(xx, yy) And Kw.iseq(yy, zz)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRF = 1.0 / Sqr(xx)
End Function
Public Function carlsonRC(ByVal xx As Double, ByVal yy As Double) As Double
   Dim lmbd As Double
   Do While (True)
      lmbd = 2 * Sqr(xx * yy) + yy
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      If (Kw.iseq(xx, yy)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRC = 1.0 / Sqr(xx)
End Function
Public Function carlsonRJ(ByVal xx As Double, ByVal yy As Double, ByVal _
         zz As Double, ByVal pp As Double) As Double
   Dim sqx As Double
   Dim sqy As Double
   Dim sqz As Double
   Dim lmbd As Double
   Dim pfour As Double
   Dim alfa As Double
   Dim beta As Double
   Dim sigm As Double
   pfour = 1.0
   sigm = 0.0
   Do While (True)
      sqx = Sqr(xx)
      sqy = Sqr(yy)
      sqz = Sqr(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      alfa = pp * (sqx + sqy + sqz) + sqx * sqy * sqz
      alfa = alfa * alfa
      beta = pp * (pp + lmbd) * (pp + lmbd)
      sigm = sigm + pfour * Kw.carlsonRC(alfa, beta)
      pfour = pfour / 4.0
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      pp = (pp + lmbd) / 4.0
      If (Kw.iseq(xx, yy) And Kw.iseq(yy, zz) And Kw.iseq(zz, pp)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRJ = 3.0 * sigm
End Function
Public Function carlsonRD(ByVal xx As Double, ByVal yy As Double, ByVal _
         zz As Double) As Double
   Dim sqx As Double
   Dim sqy As Double
   Dim sqz As Double
   Dim lmbd As Double
   Dim pfour As Double
   Dim alfa As Double
   Dim beta As Double
   Dim sigm As Double
   pfour = 1.0
   sigm = 0.0
   Do While (True)
      sqx = Sqr(xx)
      sqy = Sqr(yy)
      sqz = Sqr(zz)
      lmbd = sqx * sqy + sqx * sqz + sqy * sqz
      alfa = zz * (sqx + sqy + sqz) + sqx * sqy * sqz
      alfa = alfa * alfa
      beta = zz * (zz + lmbd) * (zz + lmbd)
      sigm = sigm + pfour * Kw.carlsonRC(alfa, beta)
      pfour = pfour / 4.0
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      zz = (zz + lmbd) / 4.0
      If (Kw.iseq(xx, yy) And Kw.iseq(yy, zz)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRD = 3.0 * sigm
End Function
Public Function powi(ByVal xx As Long, ByVal nn As Long) As Long
   Dim pp As Long
   Dim xsq As Long
   pp = 1
   xsq = xx
   Do While (0 < nn)
      If (Kw.isodd(nn)) Then
         pp = pp * xsq
      End If
      xsq = xsq * xsq
      nn = (nn \ 2)
   Loop
   powi = pp
End Function
Public Function atothenmodp(ByVal naa As Long, ByVal nn As Long, ByVal pp _
         As Long) As Long
   Dim retvalu As Long
   Dim cc As Long
   If (pp = 0) Then
      retvalu = 0
   Else
      If (pp < 0) Then
         pp = -pp
      End If
      If (nn < 0) Then
         nn = nn Mod pp
         If (nn < 0) Then
            nn = nn + pp
         End If
      End If
      retvalu = 1
      cc = naa Mod pp
      Do While (0 < nn)
         If (Kw.isodd(nn)) Then
            retvalu = (retvalu * cc) Mod pp
            nn = (nn - 1) / 2
         Else
            nn = nn / 2
         End If
         cc = (cc * cc) Mod pp
      Loop
   End If
   atothenmodp = retvalu
End Function
Public Function atothenmodx(ByVal xaa As Double, ByVal xnn As Double, _
         ByVal xpp As Double) As Double
   atothenmodx = Kw.frac(Math.Exp(xnn * Math.Log(xaa) - Math.Log(xpp))) * xpp
End Function
Public Function ctz(ByVal nn As Long) As Long
   Dim zero_count As Long
   zero_count = 0
   Do While (0 = (nn And 1))
      zero_count = zero_count + 1
      nn = (nn \ 2)
   Loop
   ctz = zero_count
End Function
Public Function gcd(ByVal naa As Long, ByVal nbb As Long) As Long
   Dim cc As Long
   naa = Math.Abs(naa)
   nbb = Math.Abs(nbb)
   If (nbb <= 0) Then
      nbb = naa
   Else
      Do While (0 < naa)
         cc = naa
         naa = nbb Mod naa
         nbb = cc
      Loop
   End If
   gcd = nbb
End Function
Public Function gcda(ByVal array_count As Long, num_arr_pc() As Long) As Long
   Dim ind As Long
   Dim gc As Long
   gc = num_arr_pc(0)
   For ind = 1 To array_count - 1
      gc = gcd(gc, num_arr_pc(ind))
   Next
   gcda = gc
End Function
Public Function lcm(ByVal naa As Long, ByVal nbb As Long) As Long
   lcm = naa * nbb / gcd(naa, nbb)
End Function
Public Function lcam(ByVal naa As Long, ByVal nbb As Long) As Long
   Dim ii As Long
   Dim jj As Long
   If (nbb < naa) Then
      ii = naa
      naa = nbb
      nbb = ii
   End If
   ii = nbb
   Do While (True)
      jj = mods(ii, naa)
      If (- 2 <= jj And jj <= 2) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + nbb
   Loop
   If (jj = -2) Then
      ii = ii + 1
   ElseIf (0 <= jj) Then
      ii = ii - 1
   End If
   lcam = ii
End Function
Public Function lcams(ByVal naa As Long, ByVal nbb As Long) As Long
   Dim ii As Long
   Dim jj As Long
   If (nbb < naa) Then
      ii = naa
      naa = nbb
      nbb = ii
   End If
   ii = 2 * nbb
   Do While (True)
      jj = mods(ii, naa)
      If (- 2 <= jj And jj <= 2) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + nbb
   Loop
   If (jj = -2) Then
      ii = ii + 1
   ElseIf (0 <= jj) Then
      ii = ii - 1
   End If
   lcams = ii
End Function
Public Function lcantim(ByVal naa As Long, ByVal nbb As Long) As Long
   Dim hnaa As Long
   Dim hnbb As Long
   Dim ii As Long
   Dim rema As Long
   Dim odd_mask As Long
   If (Kw.isposint(naa) And Kw.isposint(nbb)) Then
      odd_mask = 0
      If (Kw.isodd(naa)) Then
         odd_mask = 1
      End If
      If (Kw.isodd(nbb)) Then
         odd_mask = odd_mask + 2
      End If
      If (2 = odd_mask Or (nbb < naa And odd_mask <> 1)) Then
         ii = nbb
         nbb = naa
         naa = ii
      End If
      hnaa = floorl(naa / 2)
      hnbb = floorl(nbb / 2)
      ii = hnbb
      Do While (True)
         rema = Kw.dist(ii, naa)
         If (rema = hnaa) Then
            Exit Do
         ElseIf (odd_mask = 3 And rema = hnaa + 1) Then
            Exit Do
         End If
         ii = ii + nbb
         If (naa * nbb <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (naa * nbb <= ii) Then
         ii = 0
      End If
   Else
      ii = 0
   End If
   lcantim = ii
End Function
Public Function factor(ByVal number_to_factor As Long, ByRef _
         ret_fctr_arr_p() As Long) As Long
   Dim pp As Long
   Dim fctr_ind As Long
   Dim inc As Long
   fctr_ind = 0
   number_to_factor = Math.Abs(number_to_factor)
   If (number_to_factor <= 3) Then
      ret_fctr_arr_p(fctr_ind) = number_to_factor
      fctr_ind = 1
   Else
      For pp = 2 To 3
         Do While (0 = number_to_factor Mod pp)
            ret_fctr_arr_p(fctr_ind) = pp
            fctr_ind = fctr_ind + 1
            number_to_factor = number_to_factor / pp
         Loop
      Next
      pp = 1
      inc = 4
      Do While (True)
         pp = pp + inc
         inc = 6 - inc
         Do While (0 = number_to_factor Mod pp)
            ret_fctr_arr_p(fctr_ind) = pp
            fctr_ind = fctr_ind + 1
            number_to_factor = number_to_factor / pp
         Loop
         If (number_to_factor < pp * pp) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (1 < number_to_factor) Then
         ret_fctr_arr_p(fctr_ind) = number_to_factor
         fctr_ind = fctr_ind + 1
      End If
   End If
   ret_fctr_arr_p(fctr_ind) = 0
   factor = fctr_ind
End Function
Public Function modulo(ByVal nxx As Long, ByVal modyy As Long) As Long
   Dim retvalu As Long
   retvalu = nxx Mod modyy
   If (retvalu < 0) Then
      retvalu = retvalu + Math.Abs(modyy)
   End If
   modulo = retvalu
End Function
Public Function mods(ByVal nxx As Long, ByVal modyy As Long) As Long
   Dim retvalu As Long
   Dim amodyy As Long
   Dim anxx As Long
   amodyy = floorl(Math.Abs(modyy))
   anxx = Math.Abs(nxx)
   retvalu = anxx Mod amodyy
   If (0 < retvalu) Then
      Do While (amodyy < 2 * retvalu)
         retvalu = retvalu - amodyy
      Loop
   ElseIf (retvalu < 0) Then
      Do While (2 * retvalu < - amodyy)
         retvalu = retvalu + amodyy
      Loop
   End If
   mods = retvalu
End Function
Public Function pfl(ByVal nn As Long) As Long
   Dim small_factor As Long
   Dim lim As Long
   Dim divid As Long
   If (nn < 2) Then
      small_factor = 1
   ElseIf (nn Mod 2 = 0) Then
      small_factor = 2
   ElseIf (nn Mod 3 = 0) Then
      small_factor = 3
   ElseIf (nn Mod 5 = 0) Then
      small_factor = 5
   ElseIf (nn Mod 7 = 0) Then
      small_factor = 7
   Else
      lim = floorl(Sqr(nn))
      divid = 11
      small_factor = nn
      Do While (divid <= lim)
         If (nn Mod divid = 0) Then
            small_factor = divid
            Exit Do
         End If
         divid = divid + 2
         If (nn Mod divid = 0) Then
            small_factor = divid
            Exit Do
         End If
         divid = divid + 4
      Loop
   End If
   pfl = small_factor
End Function
Public Function pfg(ByVal nn As Long) As Long
   Dim jj As Long
   Dim ii As Long
   jj = nn
   Do While (True)
      ii = pfl(jj)
      jj = jj / ii
      If (jj = 1) Then
         Exit Do' loop AWAIT
      End If
   Loop
   pfg = ii
End Function
Public Function isprime(ByVal nn As Long) As Boolean
   Dim retvalu_bol As Boolean
   Dim ann As Long
   ann = Math.Abs(nn)
   If (ann = 2 Or ann = 3 Or ann = 5 Or ann = 7) Then
      retvalu_bol = True
   ElseIf (ann < 11) Then
      retvalu_bol = False
   ElseIf (pfl(ann) = ann) Then
      retvalu_bol = True
   Else
      retvalu_bol = False
   End If
   isprime = retvalu_bol
End Function
Private Function lf_primeprev(ByVal pp As Long) As Long
   Dim retvalu As Long
   Dim rema As Long
   Dim inc As Long
   Dim qq As Long
   If (pp <= 7) Then
      If (5 < pp) Then
         retvalu = 5
      ElseIf (3 < pp) Then
         retvalu = 3
      ElseIf (2 < pp) Then
         retvalu = 2
      Else
         retvalu = -2
      End If
   Else
      rema = pp Mod 6
      qq = pp - rema
      If (rema <= 1) Then
         qq = qq - 1
         inc = 4
      Else
         qq = qq + 1
         inc = 2
      End If
      Do While (Not Kw.isprime(qq))
         qq = qq - inc
         inc = 6 - inc
      Loop
      retvalu = qq
   End If
   lf_primeprev = retvalu
End Function
Private Function lf_primenext(ByVal pp As Long) As Long
   Dim retvalu As Long
   Dim rema As Long
   Dim inc As Long
   Dim qq As Long
   If (pp < 7) Then
      If (pp < 2) Then
         retvalu = 2
      ElseIf (pp < 3) Then
         retvalu = 3
      ElseIf (pp < 5) Then
         retvalu = 5
      Else
         retvalu = 7
      End If
   Else
      rema = (pp + 1) Mod 6
      qq = (pp + 1) - rema
      If (rema <= 1) Then
         qq = qq + 1
         inc = 4
      Else
         qq = qq + 5
         inc = 2
      End If
      Do While (Not Kw.isprime(qq))
         qq = qq + inc
         inc = 6 - inc
      Loop
      retvalu = qq
   End If
   lf_primenext = retvalu
End Function
Public Function primeprev(ByVal pp As Long) As Long
   Dim retvalu As Long
   If (0 <= pp) Then
      retvalu = lf_primeprev(pp)
   Else
      retvalu = -lf_primenext(-pp)
   End If
   primeprev = retvalu
End Function
Public Function primenext(ByVal pp As Long) As Long
   Dim retvalu As Long
   If (0 <= pp) Then
      retvalu = lf_primenext(pp)
   Else
      retvalu = -lf_primeprev(-pp)
   End If
   primenext = retvalu
End Function
Public Function primecount(ByVal xx As Double) As Long
   ' local-use Vb6 lv_pcf_arr
   ' local-use Vb6 lv_pcf_end
   Dim retvalu As Long
   Dim poss_prime As Long
   Dim s_ind As Long
   Dim ps_ind As Long
   Dim pcf_val As Long
   If (xx < 7) Then
      If (xx < 3) Then
         If (xx < 2) Then
            retvalu = 0
         Else
            retvalu = 1
         End If
      Else
         If (xx < 5) Then
            retvalu = 2
         Else
            retvalu = 3
         End If
      End If
   Else
      s_ind = floorl((xx - 5) / 2) - floorl((xx - 3) / 6)
      If (lv_pcf_end <= s_ind) Then
         ps_ind = lv_pcf_end
         If (lv_pcf_end <= 0) Then
            pcf_val = 2
         Else
            pcf_val = lv_pcf_arr(lv_pcf_end - 1)
         End If
         lv_pcf_end = Kw.ceil2(s_ind + 1, 2)
         ReDim Preserve lv_pcf_arr(lv_pcf_end)
         poss_prime = 3 * ps_ind - (ps_ind Mod 2) + 5
         Do While (ps_ind <= s_ind)
            If (Kw.isprime(poss_prime)) Then
               pcf_val = pcf_val + 1
            End If
            lv_pcf_arr(ps_ind) = pcf_val
            poss_prime = poss_prime + 2
            ps_ind = ps_ind + 1
            If (Kw.isprime(poss_prime)) Then
               pcf_val = pcf_val + 1
            End If
            lv_pcf_arr(ps_ind) = pcf_val
            poss_prime = poss_prime + 4
            ps_ind = ps_ind + 1
         Loop
      End If
      retvalu = lv_pcf_arr(s_ind)
   End If
   primecount = retvalu
End Function
Public Function pcf(ByVal xx As Double) As Long
   pcf = primecount(xx)
End Function
Public Function primecountx(ByVal xx As Double) As Long
   Dim retvalu As Long
   Dim poss_prime As Long
   Dim inc As Long
   Dim pcf_val As Long
   If (xx < 7) Then
      If (xx < 3) Then
         If (xx < 2) Then
            retvalu = 0
         Else
            retvalu = 1
         End If
      Else
         If (xx < 5) Then
            retvalu = 2
         Else
            retvalu = 3
         End If
      End If
   Else
      pcf_val = 4
      poss_prime = 11
      inc = 2
      Do While (poss_prime <= xx)
         If (Kw.isprime(poss_prime)) Then
            pcf_val = pcf_val + 1
         End If
         poss_prime = poss_prime + inc
         inc = 6 - inc
      Loop
      retvalu = pcf_val
   End If
   primecountx = retvalu
End Function
Public Function eta(ByVal xx As Double) As Double
   Dim sum As Double
   Dim sump As Double
   Dim tt As Long
   Dim nn As Long
   Dim kk As Long
   Dim s_ind As Long
   Dim retvalu As Double
   Dim pm_one As Double
   Dim ps_arr() As Double
   Dim temp_arr() As Double
   Dim term As Double
   If (0 < xx) Then
      tt = 0
      term = -Math.Log(Kw.DBLEPS) / xx
      If (term < Math.Log(4000)) Then
         kk = ceill(Math.Exp(term))
         sum = 0
         pm_one = -1.0
         nn = 1
         Do While (True)
            pm_one = -pm_one
            term = pm_one * Pow(nn, - xx)
            tt = tt + 1
            sump = sum
            sum = sum + term
            If (Kw.iseq(sump, sum)) Then
               Exit Do' loop AWAIT
            End If
            nn = nn + 1
            If (kk <= nn) Then
               Exit Do' loop AWAIT
            End If
         Loop
         retvalu = sum - 0.5 * term
      Else
         sum = 0
         pm_one = -1.0
         ReDim Preserve ps_arr(402)
         ReDim Preserve temp_arr(402)
         ps_arr(0) = -Pow(2, - xx)
         tt = tt + 1
         temp_arr(0) = ps_arr(0)
         nn = 1
         Do While (True)
            pm_one = -pm_one
            ps_arr(nn) = ps_arr(nn - 1) + pm_one * Pow(nn + 2, - xx)
            tt = tt + 1
            temp_arr(nn) = ps_arr(nn)
            For kk = nn - 1 To 0 Step - 1
               temp_arr(kk) = (temp_arr(kk) + temp_arr(kk + 1)) / 2.0
            Next
            sump = sum
            sum = temp_arr(0)
            If (Kw.iseq(sump, sum)) Then
               Exit Do' loop AWAIT
            End If
            nn = nn + 1
            If (400 <= nn) Then
               Exit Do' loop AWAIT
            End If
         Loop
         s_ind = floorl(nn / 3)
         sum = (4 * temp_arr(s_ind) + 3 * temp_arr(s_ind + 1)) / 7
         retvalu = sum + 1.0
      End If
   ElseIf (xx < 0) Then
      retvalu = 0.0
   Else
      retvalu = 0.5
   End If
   eta = retvalu
End Function
Public Function zeta(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (1 < xx) Then
      retvalu = eta(xx) / (1.0 - Pow(2.0, 1.0 - xx))
   Else
      retvalu = 0.0
   End If
   zeta = retvalu
End Function
Public Function fibo3(ByVal nn As Long, ByVal fib_a As Double, ByVal _
         fib_b As Double) As Double
   Dim ii As Long
   Dim tt As Double
   Dim retvalu As Double
   If (nn = 0) Then
      retvalu = fib_a
   Else
      For ii = 2 To nn
         tt = fib_b
         fib_b = fib_b + fib_a
         fib_a = tt
      Next
      retvalu = fib_b
   End If
   fibo3 = retvalu
End Function
Public Function fibo(ByVal nn As Long) As Double
   fibo = fibo3(nn, 0, 1)
End Function
Public Function fibox(ByVal xx As Double) As Double
   Dim zz As Double
   Dim retvalu As Double
   If (Math.Log(Kw.DBLMAX) / Math.Log(Kw.PHI) < Math.Abs(xx)) Then
      retvalu = 0.0
   Else
      zz = Pow(Kw.PHI, xx)
      retvalu = (zz - Math.Cos(Kw.PI * xx) / zz) / Sqr(5.0)
   End If
   fibox = retvalu
End Function
Public Function fiboxinv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim x_init As Double
   If (yy <= 0) Then
      scvx_xx = 0.0
   Else
      If (yy <= 0.2) Then
         x_init = 0.075
      ElseIf (yy <= 0.896946387424606) Then
         x_init = 0.8 * yy - 0.15
      ElseIf (yy <= 1.009824331847821) Then
         x_init = 0.92
      Else
         x_init = Math.Log(yy * Sqr(5.0)) / Math.Log(Kw.PHI)
      End If
      scvx_dx = 0.05
      scvx_xx = x_init
      scvx_yy = yy - fibox(scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = yy - fibox(scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   fiboxinv = scvx_xx
End Function
Public Function lucas(ByVal nn As Long) As Double
   lucas = fibo3(nn, 2, 1)
End Function
Public Function lucasx(ByVal xx As Double) As Double
   Dim zz As Double
   Dim retvalu As Double
   If (Math.Log(Kw.DBLMAX) / Math.Log(Kw.PHI) < Math.Abs(xx)) Then
      retvalu = 0.0
   Else
      zz = Pow(Kw.PHI, xx)
      retvalu = (zz + Math.Cos(Kw.PI * xx) / zz)
   End If
   lucasx = retvalu
End Function
Public Function fusc(ByVal nn As Long) As Long
   Dim naa As Long
   Dim nbb As Long
   naa = 1
   nbb = 0
   Do While (0 < nn)
      If (Kw.isodd(nn)) Then
         nbb = nbb + naa
      Else
         naa = naa + nbb
      End If
      nn = (nn \ 2)
   Loop
   fusc = nbb
End Function
Public Function Tn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim tnm_a As Double
   Dim tnm_b As Double
   Dim tnn As Double
   Dim kk As Long
   If (nn = 0) Then
      retvalu = 1.0
   ElseIf (nn = 1) Then
      retvalu = xx
   ElseIf (nn = 2) Then
      retvalu = 2.0 * xx * xx - 1.0
   Else
      tnm_a = 2.0 * xx * xx - 1.0
      tnm_b = xx
      tnn = tnm_a
      For kk = 3 To nn
         tnn = (2.0 * xx * tnm_a) - tnm_b
         tnm_b = tnm_a
         tnm_a = tnn
      Next
      retvalu = tnn
   End If
   Tn = retvalu
End Function
Public Function Un(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim tnm_a As Double
   Dim tnm_b As Double
   Dim tnn As Double
   Dim kk As Long
   If (nn = 0) Then
      retvalu = 1.0
   ElseIf (nn = 1) Then
      retvalu = 2.0 * xx
   Else
      tnm_a = 2.0 * xx
      tnm_b = 1.0
      tnn = tnm_a
      For kk = 2 To nn
         tnn = (2.0 * xx * tnm_a) - tnm_b
         tnm_b = tnm_a
         tnm_a = tnn
      Next
      retvalu = tnn
   End If
   Un = retvalu
End Function
Public Function tri(ByVal nn As Double) As Double
   tri = nn * (nn + 1) / 2
End Function
Public Function triinv(ByVal nn As Double) As Double
   Dim retvalu As Double
   If (- 0.125 < nn) Then
      retvalu = (Sqr(8.0 * nn + 1.0) - 1.0) / 2.0
   Else
      retvalu = -0.5
   End If
   triinv = retvalu
End Function
Public Function polynum(ByVal ss As Double, ByVal nn As Double) As Double
   polynum = (ss - 2) * nn * (nn - 1) / 2 + nn
End Function
Public Function polycnum(ByVal ss As Double, ByVal nn As Double) As Double
   polycnum = ss * nn * (nn - 1) / 2 + 1
End Function
Public Function tetranum(ByVal ss As Double, ByVal nn As Double) As Double
   tetranum = nn * (nn + 1) * ((ss - 2) * nn + 5 - ss) / 6
End Function
Public Function tetracnum(ByVal ss As Double, ByVal nn As Double) As Double
   tetracnum = nn * (ss * nn * nn + 6 - ss) / 6
End Function
Public Function minkowski(ByVal xx As Double) As Double
   Dim pp As Double
   Dim qq As Double
   Dim rr As Double
   Dim ss As Double
   Dim ff As Double
   Dim gg As Double
   Dim dd As Double
   Dim yy As Double
   pp = floor(xx)
   qq = 1
   rr = pp + 1
   ss = 1
   dd = 1.0
   yy = pp
   Do While (True)
      dd = dd / 2.0
      ff = pp + rr
      gg = qq + ss
      If (xx < ff / gg) Then
         rr = ff
         ss = gg
      Else
         yy = yy + dd
         pp = ff
         qq = gg
      End If
      If (Kw.iseq(yy + dd, yy)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   minkowski = yy
End Function
Public Function cantorxx(ByVal nbb As Double, ByVal ee As Double, ByVal _
         xx As Double) As Double
   Dim yy As Double
   Dim rest As Double
   Dim dd As Double
   Dim ulmt As Double
   If (ee < 0.0 Or nbb < 0.0 Or 1.0 < ee + nbb) Then
      yy = xx
   Else
      ulmt = 1.0 - ee
      yy = floor(xx)
      rest = (xx - yy)
      dd = 0.5
      Do While (True)
         If (ulmt <= rest) Then
            yy = yy + dd
            rest = Kw.frac((rest - ulmt) / ee)
         ElseIf (nbb <= rest) Then
            yy = yy + dd
            Exit Do
         Else
            rest = Kw.frac(rest / nbb)
         End If
         dd = dd / 2.0
         If (Kw.iseq(yy + dd, yy) Or Kw.iszero(rest)) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   cantorxx = yy
End Function
Public Function cantor(ByVal xx As Double) As Double
   cantor = cantorxx(1.0 / 3.0, 1.0 / 3.0, xx)
End Function
Public Function cantorul(ByVal bb As Double, ByVal ee As Double, ByVal xx _
         As Double) As Double
   cantorul = Pow(0.5, Math.Log(xx) / Math.Log(bb) + 0.0 * ee)
End Function
Public Function cantorll(ByVal bb As Double, ByVal ee As Double, ByVal xx _
         As Double) As Double
   cantorll = Pow(0.5, Math.Log(xx / (1.0 - ee)) / Math.Log(bb) + 1.0)
End Function
Public Function dlogx(ByVal naa As Long, ByVal nbb As Long, ByVal nn As _
         Long) As Long
   Dim ii As Long
   Dim pp As Long
   Dim retvalu As Long
   pp = naa
   retvalu = -1
   For ii = 1 To nn
      If (pp = nbb) Then
         retvalu = ii
         Exit For
      End If
      pp = (pp * naa) Mod nn
   Next
   dlogx = retvalu
End Function
Public Function dlog(ByVal naa As Long, ByVal nbb As Long, ByVal nn As _
         Long) As Long
   Dim sqnn As Long
   Dim cur As Long
   Dim atothesqnn As Long
   Dim atothens As Long
   Dim ii As Long
   Dim log_arr() As Long
   Dim retvalu As Long
   If (naa = nbb) Then
      retvalu = 1
   ElseIf (naa <= 0 Or nbb <= 0 Or nn <= 0) Then
      retvalu = -1
   ElseIf (1 < gcd(naa, nn)) Then
      retvalu = dlogx(naa, nbb, nn)
   ElseIf (Not isprimitiveroot(naa, nn)) Then
      retvalu = dlogx(naa, nbb, nn)
   Else
      sqnn = ceill(Sqr(nn))
      ReDim Preserve log_arr(nn)
      For ii = 0 To nn - 1
         log_arr(ii) = 0
      Next
      atothesqnn = atothenmodp(naa, sqnn, nn)
      cur = atothesqnn
      For ii = 1 To sqnn
         If (log_arr(cur) = 0) Then
            log_arr(cur) = ii
         End If
         cur = (cur * atothesqnn) Mod nn
      Next
      cur = nbb Mod nn
      retvalu = -1
      For ii = 0 To sqnn
         If (0 < log_arr(cur)) Then
            atothens = log_arr(cur) * sqnn - ii
            If (atothens < nn) Then
               retvalu = atothens
               Exit For
            End If
         End If
         cur = (cur * naa) Mod nn
      Next
   End If
   dlog = retvalu
End Function
Public Function dlog1(ByVal naa As Long, ByVal nn As Long) As Long
   dlog1 = dlog(naa, 1, nn)
End Function
Public Function mertens(ByVal nn As Long) As Long
   ' local-use Vb6 lv_mertens_arr
   ' local-use Vb6 lv_mertens_end
   Dim retvalu As Long
   Dim kk As Long
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_mertens_end <= 0) Then
         lv_mertens_end = 4
         ReDim Preserve lv_mertens_arr(lv_mertens_end)
         lv_mertens_arr(0) = 0
         lv_mertens_arr(1) = 1
         lv_mertens_arr(2) = 0
         lv_mertens_arr(3) = -1
      End If
      If (lv_mertens_end <= nn) Then
         kk = lv_mertens_end
         lv_mertens_end = nn + 1
         ReDim Preserve lv_mertens_arr(lv_mertens_end)
         Do While (kk < lv_mertens_end)
            lv_mertens_arr(kk) = lv_mertens_arr(kk - 1) + mobius(kk)
            kk = kk + 1
         Loop
      End If
      retvalu = lv_mertens_arr(nn)
   End If
   mertens = retvalu
End Function
Public Function has_primitiveroot_f(ByVal array_size As Long, _
         fac_arr_pc() As Long) As Boolean
   Dim ind As Long
   ind = 0
   If (1 < array_size) Then
      If (fac_arr_pc(0) = 2) Then
         ind = ind + 1
      End If
      If (2 < fac_arr_pc(ind)) Then
         Do While (ind < array_size - 1)
            If (fac_arr_pc(ind) < fac_arr_pc(ind + 1)) Then
               Exit Do
            End If
            ind = ind + 1
         Loop
      End If
   End If
   has_primitiveroot_f = ind = (array_size - 1)
End Function
Public Function sigma0_f(ByVal array_size As Long, fac_arr_pc() As Long) _
         As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   retvalu = 1
   exp_i = 2
   For ind = 0 To array_size - 2
      If (fac_arr_pc(ind) = fac_arr_pc(ind + 1)) Then
         exp_i = exp_i + 1
      Else
         retvalu = retvalu * exp_i
         exp_i = 2
      End If
   Next
   sigma0_f = retvalu * exp_i
End Function
Public Function sigma1_f(ByVal array_size As Long, fac_arr_pc() As Long) _
         As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   Dim prm_prev As Long
   Dim prm_curr As Long
   retvalu = 1
   exp_i = 2
   prm_prev = fac_arr_pc(0)
   For ind = 1 To array_size - 1
      prm_curr = fac_arr_pc(ind)
      If (prm_prev = prm_curr) Then
         exp_i = exp_i + 1
      Else
         retvalu = retvalu * (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
         exp_i = 2
         prm_prev = prm_curr
      End If
   Next
   sigma1_f = retvalu * (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
End Function
Public Function sigma_f(ByVal powy As Long, ByVal array_size As Long, _
         fac_arr_pc() As Long) As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   Dim prm_curr As Long
   Dim prm_prev As Long
   Dim pw As Long
   If (powy = 0) Then
      retvalu = sigma0_f(array_size, fac_arr_pc)
   ElseIf (powy = 1) Then
      retvalu = sigma1_f(array_size, fac_arr_pc)
   Else
      retvalu = 1
      exp_i = 2
      prm_prev = fac_arr_pc(0)
      For ind = 1 To array_size - 1
         prm_curr = fac_arr_pc(ind)
         If (prm_prev = prm_curr) Then
            exp_i = exp_i + 1
         Else
            pw = powi(prm_prev, powy)
            retvalu = retvalu * ((powi(pw, exp_i) - 1) / (pw - 1))
            exp_i = 2
            prm_prev = prm_curr
         End If
      Next
      pw = powi(prm_prev, powy)
      retvalu = retvalu * ((powi(pw, exp_i) - 1) / (pw - 1))
   End If
   sigma_f = retvalu
End Function
Public Function ispractical_f(ByVal array_size As Long, fac_arr_pc() As _
         Long) As Boolean
   Dim ind As Long
   Dim sgma As Long
   Dim exp_i As Long
   Dim prm_curr As Long
   Dim prm_prev As Long
   Dim retvalu_bol As Boolean
   If (2 < fac_arr_pc(0)) Then
      retvalu_bol = False
   Else
      retvalu_bol = True
      sgma = 1
      exp_i = 2
      prm_prev = fac_arr_pc(0)
      For ind = 1 To array_size - 1
         prm_curr = fac_arr_pc(ind)
         If (prm_prev = prm_curr) Then
            exp_i = exp_i + 1
         Else
            sgma = sgma * (powi(prm_prev, exp_i) - 1) / (prm_prev - 1)
            If (1 + sgma < prm_curr) Then
               retvalu_bol = False
               Exit For
            End If
            exp_i = 2
            prm_prev = prm_curr
         End If
      Next
   End If
   ispractical_f = retvalu_bol
End Function
Public Function issquarefree_f(ByVal array_size As Long, fac_arr_pc() As _
         Long) As Boolean
   Dim ind As Long
   Dim retvalu_bol As Boolean
   retvalu_bol = True
   For ind = 1 To array_size - 1
      If (fac_arr_pc(ind - 1) = fac_arr_pc(ind)) Then
         retvalu_bol = False
         Exit For
      End If
   Next
   issquarefree_f = retvalu_bol
End Function
Public Function totient_f(ByVal array_size As Long, fac_arr_pc() As Long) _
         As Long
   Dim ind As Long
   Dim retvalu As Long
   retvalu = 1
   For ind = 0 To array_size - 2
      If (fac_arr_pc(ind) = fac_arr_pc(ind + 1)) Then
         retvalu = retvalu * fac_arr_pc(ind)
      Else
         retvalu = retvalu * (fac_arr_pc(ind) - 1)
      End If
   Next
   retvalu = retvalu * (fac_arr_pc(array_size - 1) - 1)
   totient_f = retvalu
End Function
Public Function mobius_f(ByVal array_size As Long, fac_arr_pc() As Long) _
         As Long
   Dim retvalu As Long
   Dim ind As Long
   If (Kw.iseven(array_size)) Then
      retvalu = 1
   Else
      retvalu = -1
   End If
   For ind = 1 To array_size - 1
      If (fac_arr_pc(ind - 1) = fac_arr_pc(ind)) Then
         retvalu = 0
         Exit For
      End If
   Next
   mobius_f = retvalu
End Function
Public Function prime0_f(ByVal array_size As Long, fac_arr_pc() As Long) _
         As Long
   Dim ind As Long
   Dim prm_curr As Long
   Dim prm_prev As Long
   Dim retvalu As Long
   retvalu = 1
   prm_prev = fac_arr_pc(0)
   For ind = 1 To array_size - 1
      prm_curr = fac_arr_pc(ind)
      If (prm_prev < prm_curr) Then
         retvalu = retvalu + 1
      End If
      prm_prev = prm_curr
   Next
   prime0_f = retvalu
End Function
Public Function factor_print(ByVal nn As Long) As Long
   Dim ind As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim array_size As Long
   array_size = factor(nn, fac_arr)
   Debug.Print(nn)
   Debug.Print(":")
   For ind = 0 To array_size - 1
      Debug.Print(" ")
      Debug.Print(fac_arr(ind))
   Next
   Debug.Print(vbNewLine)
   factor_print = array_size
End Function
Public Function mobius(ByVal nn As Long) As Long
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   array_size = factor(nn, fac_arr)
   mobius = mobius_f(array_size, fac_arr)
End Function
Public Function isprimitiveroot(ByVal naa As Long, ByVal nn As Long) As _
         Boolean
   Dim toti As Long
   Dim array_size_toti As Long
   Dim ind As Long
   Dim prm As Long
   Dim retvalu_bol As Boolean
   Dim fac_arr(LC_FACTORS_CNT) As Long
   If (naa <= 1 Or 1 < gcd(naa, nn)) Then
      retvalu_bol = False
   ElseIf (naa = 2) Then
      retvalu_bol = Kw.isodd(nn)
   Else
      toti = totient(nn)
      array_size_toti = factor(toti, fac_arr)
      If (atothenmodp(naa, toti / fac_arr(0), nn) = 1) Then
         retvalu_bol = False
      Else
         retvalu_bol = True
         For ind = 1 To array_size_toti - 1
            If (fac_arr(ind - 1) <> fac_arr(ind)) Then
               prm = fac_arr(ind)
               If (atothenmodp(naa, toti / prm, nn) = 1) Then
                  retvalu_bol = False
                  Exit For
               End If
            End If
         Next
      End If
   End If
   isprimitiveroot = retvalu_bol
End Function
Public Function prime0(ByVal nn As Long) As Long
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   array_size = factor(nn, fac_arr)
   prime0 = prime0_f(array_size, fac_arr)
End Function
Public Function prime1(ByVal nn As Long) As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   prime1 = factor(nn, fac_arr)
End Function
Public Function sigma0(ByVal nn As Long) As Long
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   array_size = factor(nn, fac_arr)
   sigma0 = sigma0_f(array_size, fac_arr)
End Function
Public Function sigma1(ByVal nn As Long) As Long
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   array_size = factor(nn, fac_arr)
   sigma1 = sigma1_f(array_size, fac_arr)
End Function
Public Function sigma(ByVal powy As Long, ByVal nn As Long) As Long
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim retvalu As Long
   If (nn <= 1) Then
      retvalu = nn
   ElseIf (powy = 0) Then
      retvalu = sigma0(nn)
   ElseIf (powy = 1) Then
      retvalu = sigma1(nn)
   Else
      array_size = factor(nn, fac_arr)
      retvalu = sigma_f(powy, array_size, fac_arr)
   End If
   sigma = retvalu
End Function
Public Function totient(ByVal nn As Long) As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim array_size As Long
   array_size = factor(nn, fac_arr)
   totient = totient_f(array_size, fac_arr)
End Function
Public Function has_primitiveroot(ByVal nn As Long) As Boolean
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim retvalu_bol As Boolean
   If (nn < 2) Then
      retvalu_bol = False
   Else
      array_size = factor(nn, fac_arr)
      retvalu_bol = has_primitiveroot_f(array_size, fac_arr)
   End If
   has_primitiveroot = retvalu_bol
End Function
Public Function issquarefree(ByVal nn As Long) As Boolean
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim retvalu_bol As Boolean
   If (nn < 1) Then
      retvalu_bol = False
   ElseIf (nn < 3) Then
      retvalu_bol = True
   Else
      array_size = factor(nn, fac_arr)
      retvalu_bol = issquarefree_f(array_size, fac_arr)
   End If
   issquarefree = retvalu_bol
End Function
Public Function ispractical(ByVal nn As Long) As Boolean
   Dim array_size As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim retvalu_bol As Boolean
   If (nn < 1) Then
      retvalu_bol = False
   ElseIf (nn < 3) Then
      retvalu_bol = True
   Else
      array_size = factor(nn, fac_arr)
      retvalu_bol = ispractical_f(array_size, fac_arr)
   End If
   ispractical = retvalu_bol
End Function
Public Function primitiveroot(ByVal nn As Long) As Long
   Dim ind As Long
   Dim array_size_toti As Long
   Dim toti As Long
   Dim ii As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim prm As Long
   Dim retvalu As Long
   If (nn < 2) Then
      retvalu = 0
   ElseIf (nn < 5) Then
      retvalu = nn - 1
   ElseIf (Not has_primitiveroot(nn)) Then
      retvalu = 0
   Else
      toti = totient(nn)
      array_size_toti = factor(toti, fac_arr)
      ii = 2
      retvalu = 0
      Do While (ii < nn And retvalu <= 0)
         If (gcd(ii, nn) = 1) Then
            retvalu = ii
            prm = 0
            For ind = 0 To array_size_toti - 1
               If (prm <> fac_arr(ind)) Then
                  prm = fac_arr(ind)
                  If (atothenmodp(ii, toti / prm, nn) = 1) Then
                     retvalu = 0
                     Exit For
                  End If
               End If
            Next
         End If
         ii = ii + 1
      Loop
   End If
   primitiveroot = retvalu
End Function
Public Function carmichael(ByVal nn As Long) As Long
   Dim ind As Long
   Dim array_size As Long
   Dim lmbd As Long
   Dim prm As Long
   Dim pk As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   If (nn < 8) Then
      lmbd = totient(nn)
   Else
      array_size = factor(nn, fac_arr)
      ind = 0
      Do While (ind < array_size And fac_arr(ind) = 2)
         ind = ind + 1
      Loop
      If (2 < ind) Then
         lmbd = (1 * 2 ^ (ind - 2))
      Else
         lmbd = 1
      End If
      Do While (ind < array_size)
         prm = fac_arr(ind)
         pk = prm - 1
         Do While (ind < array_size - 1 And prm = fac_arr(ind + 1))
            ind = ind + 1
            pk = pk * prm
         Loop
         lmbd = lcm(lmbd, pk)
         ind = ind + 1
      Loop
   End If
   carmichael = lmbd
End Function
Public Function znorder(ByVal naa As Long, ByVal nn As Long) As Long
   Dim ind As Long
   Dim fac_arr(LC_FACTORS_CNT) As Long
   Dim array_sizekk As Long
   Dim kk As Long
   Dim ab As Long
   Dim ek As Long
   Dim prm_i As Long
   Dim exp_i As Long
   If (nn = 0 Or naa = 0) Then
      kk = 0
   Else
      If (nn < 0) Then
         nn = -nn
      End If
      Do While (naa < 0)
         naa = naa + nn
      Loop
      If (nn <= 1) Then
         kk = nn
      ElseIf (naa <= 1) Then
         kk = naa
      ElseIf (1 < gcd(naa, nn)) Then
         kk = 0
      Else
         kk = carmichael(nn)
         array_sizekk = factor(kk, fac_arr)
         exp_i = 1
         For ind = 0 To array_sizekk - 1
            prm_i = fac_arr(ind)
            kk = kk / prm_i
            If (ind + 1 < array_sizekk And prm_i = fac_arr(ind + 1)) Then
               exp_i = exp_i + 1
            Else
               ab = atothenmodp(naa, kk, nn)
               For ek = 0 To exp_i
                  If (ab = 1) Then
                     Exit For
                  End If
                  kk = kk * prm_i
                  ab = atothenmodp(ab, prm_i, nn)
               Next
               If (exp_i < ek) Then
                  kk = 0
                  Exit For
               End If
               exp_i = 1
            End If
         Next
      End If
   End If
   znorder = kk
End Function
Public Function repetendlen(ByVal denm As Long, ByVal basee As Long) As Long
   Dim gdn As Long
   Dim retvalu As Long
   Do While (True)
      gdn = gcd(denm, basee)
      denm = denm / gdn
      If (1 = gdn) Then
         Exit Do' loop AWAIT
      End If
   Loop
   If (denm = 1) Then
      retvalu = 0
   Else
      retvalu = znorder(basee, denm)
   End If
   repetendlen = retvalu
End Function
Public Function kevy_print(ByVal den As Long, ByVal start As Long, ByVal _
         basee As Long) As Long
   Dim numer As Long
   Dim valu As Long
   Dim leny As Long
   Dim rema As Long
   Dim overall_len As Long
   Dim baseek As Long
   Dim log_start As Long
   log_start = floorl(Math.Log(start) / Math.Log(basee) + 1)
   baseek = Pow(basee, log_start)
   overall_len = (Kw.dlog(basee, den, den * baseek - 1) + 3) * log_start
   leny = 0
   numer = start
   valu = start
   Do While (True)
      Call base_out_fix_print(valu, basee, log_start)
      leny = leny + log_start
      valu = floorl(numer / den)
      rema = numer Mod den
      numer = rema * baseek + valu
      If (numer = start) Then
         Exit Do
      End If
      If (2 * overall_len < leny) Then
         Exit Do' loop AWAIT
      End If
   Loop
   kevy_print = leny
End Function
Public Function eulerphi(ByVal nn As Long) As Long
   eulerphi = totient(nn)
End Function
Public Function znorder__1(ByVal nbb As Long, ByVal mdls As Long) As Long
   Dim nn As Long
   Dim pp As Long
   If (1 < gcd(nbb, mdls)) Then
      nn = 0
   Else
      pp = 1
      nn = 1
      Do While (True)
         pp = (pp * nbb) Mod mdls
         If (pp = 1) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
         If (mdls <= nn) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   znorder__1 = nn
End Function
Public Function bkn(ByVal nbb As Long, ByVal kk As Long) As Long
   bkn = znorder(nbb, kk * nbb - 1)
End Function
Public Function bkbn(ByVal nbb As Long, ByVal kk As Long, ByVal cc As _
         Long) As Long
   Dim mdls As Long
   mdls = kk * nbb - 1
   If (mdls Mod cc = 0) Then
      mdls = mdls / cc
   End If
   bkbn = znorder(nbb, mdls)
End Function
Public Function lix(ByVal xx As Double) As Double
   ' local-use Vb6 lv_li_two
   If (lv_li_two <= 0) Then
      lv_li_two = Kw.logintegral(2.0)
   End If
   lix = Kw.logintegral(xx) - lv_li_two
End Function
Public Function lixinv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim x_init As Double
   x_init = yy / Math.Log(yy)
   scvx_dx = 0.05
   scvx_xx = x_init
   scvx_yy = yy - lix(scvx_xx)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = yy - lix(scvx_xx)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   lixinv = scvx_xx
End Function
Private Function lf_n2primish(ByVal nn As Long) As Long
   Dim retvalu As Long
   If (nn = 0) Then
      retvalu = 0
   ElseIf (nn < 3) Then
      retvalu = nn + 1
   ElseIf (Kw.isodd(nn)) Then
      retvalu = 3 * nn - 4
   Else
      retvalu = 3 * nn - 5
   End If
   lf_n2primish = retvalu
End Function
Public Function n2primish(ByVal nn As Long) As Long
   Dim retvalu As Long
   If (0 < nn) Then
      retvalu = lf_n2primish(nn)
   Else
      retvalu = -lf_n2primish(-nn)
   End If
   n2primish = retvalu
End Function
Public Function primenth__1(ByVal nn As Double) As Double
   Dim logn As Double
   Dim loglogn As Double
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   ElseIf (nn < 4.25) Then
      retvalu = 1.6 * nn + 0.1
   Else
      logn = Math.Log(nn)
      loglogn = Math.Log(logn)
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0) / logn - _
               ((loglogn - 6.0) * loglogn + 11.0) / (2.0 * logn * logn)) _
               + 3.5 * Sqr(nn) + 10
   End If
   primenth__1 = retvalu
End Function
Public Function reimann(ByVal nn As Double) As Double
   Dim retvalu As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim ii As Double
   Dim lim As Double
   If (nn < 2) Then
      retvalu = 0
   Else
      sum = lix(nn)
      lim = 10 * Kw.lg(nn)
      ii = 2
      Do While (True)
         sum_prev = sum
         sum = sum + mobius(ii) * lix(Pow(nn, 1.0 / ii)) / ii
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (lim <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = sum
   End If
   reimann = retvalu
End Function
Public Function primenth(ByVal nn As Long) As Long
   Dim ii As Long
   Dim pp As Long
   Dim rmndr As Double
   Dim inc As Long
   Dim prime_arr(30) As Double
   If (nn < 5) Then
      If (nn < 1) Then
         pp = 0
      ElseIf (nn < 2) Then
         pp = 2
      ElseIf (nn < 3) Then
         pp = 3
      ElseIf (nn < 4) Then
         pp = 5
      Else
         pp = 7
      End If
   Else
      If (1024 <= nn) Then
         prime_arr(0) = 8161
         prime_arr(1) = 17863
         prime_arr(2) = 38873
         prime_arr(3) = 84017
         prime_arr(4) = 180503
         prime_arr(5) = 386093
         prime_arr(6) = 821641
         prime_arr(7) = 1742537
         prime_arr(8) = 3681131
         prime_arr(9) = 7754077
         prime_arr(10) = 16290047
         prime_arr(11) = 34136029
         prime_arr(12) = 71378569
         prime_arr(13) = 148948139
         prime_arr(14) = 310248241
         prime_arr(15) = 645155197
         prime_arr(16) = 1339484197
         prime_arr(17) = 2777105129
         prime_arr(18) = 5750079047
         prime_arr(19) = 11891268401
         prime_arr(20) = 24563311309
         prime_arr(21) = 50685770167
         prime_arr(22) = 104484802057
         ii = floorl(Kw.lg(nn + 1) - 10)
         If (22 <= ii) Then
            ii = 22
         End If
         pp = prime_arr(ii)
         ii = Kw.round(Pow(2, ii + 10))
         rmndr = Kw.fmodu(pp, 6)
         If (Kw.iseq(rmndr, 5)) Then
            inc = 2
         ElseIf (Kw.iseq(rmndr, 1)) Then
            inc = 4
         Else
            Debug.Print("primenth:" & "PRIME_ISNT_PM_1_MOD_6")
            Stop
         End If
      Else
         pp = 11
         ii = 5
         inc = 2
      End If
      Do While (ii < nn)
         Do While (True)
            pp = pp + inc
            inc = 6 - inc
            If (Kw.isprime(pp)) Then
               Exit Do' loop AWAIT
            End If
         Loop
         ii = ii + 1
      Loop
   End If
   primenth = pp
End Function
Public Function bessJv(ByVal vv As Double, ByVal xx As Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim ff As Double
   Dim xxsqr_div_four As Double
   Dim avv As Double
   If (xx < 0.0) Then
      sum = 0.0
   Else
      avv = vv
      If (Kw.isposint(-vv)) Then
         avv = Math.Abs(vv)
      End If
      xxsqr_div_four = (xx * xx / 4.0)
      term = Pow(xx / 2.0, avv) / Kw.tgamma(avv + 1.0)
      sum = term
      ff = 1
      Do While (True)
         term = term * - xxsqr_div_four / (ff * (avv + ff))
         sum_prev = sum
         sum = sum + term
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         ff = ff + 1
      Loop
      If (Kw.isposint(-vv) And Kw.isodd(vv)) Then
         sum = -sum
      End If
   End If
   bessJv = sum
End Function
Public Function bessYv(ByVal vv As Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim vvpi As Double
   If (Kw.isint(vv)) Then
      retvalu = bessYn(vv, xx)
   Else
      vvpi = Kw.PI * vv
      retvalu = (Math.Cos(vvpi) * bessJv(vv, xx) - bessJv(-vv, xx)) / _
               Math.Sin(vvpi)
   End If
   bessYv = retvalu
End Function
Public Function bessI0(ByVal xx As Double) As Double
   Dim yy As Double
   Dim retvalu As Double
   If (xx < 7.75) Then
      yy = xx * xx / 4.0
      retvalu = (((((((((((((((((1.1497640034400735733456400E-29) * yy + _
               2.0732014503197852176921968E-27) * yy + _
               5.9203280572170548134753422E-25) * yy + _
               1.3141332422663039834197910E-22) * yy + _
               2.5791926805873898803749321E-20) * yy + _
               4.3583591008893599099577755E-18) * yy + _
               6.2760839879536225394314453E-16) * yy + _
               7.5940582595094190098755663E-14) * yy + _
               7.5940584360755226536109511E-12) * yy + _
               6.1511873265092916275099070E-10) * yy + _
               3.9367598891475388547279760E-8) * yy + _
               1.9290123456788994104574754E-6) * yy + _
               6.9444444444444568581891535E-5) * yy + _
               1.7361111111111110294015271E-3) * yy + _
               2.7777777777777777805664954E-2) * yy + _
               2.4999999999999999999629693E-1) * yy + _
               1.0000000000000000000000801) * yy + 1.0
   Else
      yy = 1.0 / xx
      retvalu = (((((((((((((((((((((((1.6069467093441596329340754E+16) * _
               yy - 2.1363029690365351606041265E+16) * yy + _
               1.3012646806421079076251950E+16) * yy - _
               4.8049082153027457378879746E+15) * yy + _
               1.1989242681178569338129044E+15) * yy - _
               2.1323049786724612220362154E+14) * yy + _
               2.7752144774934763122129261E+13) * yy - _
               2.6632742974569782078420204E+12) * yy + _
               1.8592340458074104721496236E+11) * yy - _
               8.9270060370015930749184222E+9) * yy + _
               2.3518420447411254516178388E+8) * yy + _
               2.6092888649549172879282592E+6) * yy - _
               5.9355022509673600842060002E+5) * yy + _
               3.1275740782277570164423916E+4) * yy - _
               1.0026890180180668595066918E+3) * yy + _
               2.2725199603010833194037016E+1) * yy - _
               1.0699095472110916094973951E-1) * yy + _
               9.4085204199017869159183831E-2) * yy + _
               4.4718622769244715693031735E-2) * yy + _
               2.9219501690198775910219311E-2) * yy + _
               2.8050628884163787533196746E-2) * yy + _
               4.9867785050353992900698488E-2) * yy + _
               3.9894228040143265335649948E-1)
      retvalu = retvalu * Math.Exp(xx) / Sqr(xx)
   End If
   bessI0 = retvalu
End Function
Public Function bessI1(ByVal xx As Double) As Double
   Dim yy As Double
   Dim aa As Double
   Dim retvalu As Double
   If (xx < 7.75) Then
      yy = xx * xx / 4.0
      aa = (((((((((((((1.332898928162290861E-23) * yy + _
               1.625212890947171108E-21) * yy + 3.410720494727771276E-19) _
               * yy + 5.220157095351373194E-17) * yy + _
               6.904822652741917551E-15) * yy + 7.593969849687574339E-13) _
               * yy + 6.834657311305621830E-11) * yy + _
               4.920949692800671435E-9) * yy + 2.755731926254790268E-7) * _
               yy + 1.157407407354987232E-5) * yy + _
               3.472222222225921045E-4) * yy + 6.944444444444341983E-3) * _
               yy + 8.333333333333333803E-2)
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0
   ElseIf (xx < 500.0) Then
      yy = 1.0 / xx
      retvalu = ((((((((((((((((((((((-2.213318202179221945E+15) * yy + _
               3.146401654361325073E+15) * yy - 2.067285045778906105E+15) _
               * yy + 8.325554073334618015E+14) * yy - _
               2.298849639457172489E+14) * yy + 4.614040809616582764E+13) _
               * yy - 6.967602516005787001E+12) * yy + _
               8.087824484994859552E+11) * yy - 7.313784438967834057E+10) _
               * yy + 5.192386898222206474E+9) * yy - _
               2.903390398236656519E+8) * yy + 1.277677779341446497E+7) * _
               yy - 4.404655582443487334E+5) * yy + _
               1.178785865993440669E+4) * yy - 2.426181371595021021E+2) * _
               yy + 3.458284470977172076) * yy - 1.528189554374492735E-1) _
               * yy - 5.719036414430205390E-2) * yy - _
               4.090895951581637791E-2) * yy - 4.675104253598537322E-2) * _
               yy - 1.496033551613111533E-1) * yy + _
               3.989422804014406054E-1) * Math.Exp(xx) / Sqr(xx)
   Else
      yy = 1.0 / xx
      aa = Math.Exp(xx / 2.0)
      retvalu = (((((-5.843630344778927582E-2) * yy - _
               4.090421597376992892E-2) * yy - 4.675105322571775911E-2) * _
               yy - 1.496033551467584157E-1) * yy + _
               3.989422804014314820E-1) * aa / Sqr(xx)
      retvalu = retvalu * aa
   End If
   bessI1 = retvalu
End Function
Public Function bessK0(ByVal arg As Double) As Double
   Dim retvalu As Double
   Dim sumf As Double
   Dim sumg As Double
   Dim sump As Double
   Dim sumq As Double
   Dim xx As Double
   Dim xz As Double
   xx = arg
   If (xx <= 0.0) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx < Kw.DBLEPS) Then
      retvalu = 0.11593151565841244858684731328185 - Math.Log(xx)
   ElseIf (xx <= 1.0) Then
      xz = xx * xx
      sump = (((((5.8599221412826100000E-4) * xz + _
               1.3166052564989571850E-1) * xz + 1.1999463724910714109E+1) _
               * xz + 4.6850901201934832188E+2) * xz + _
               5.9169059852270512312E+3) * xz + 2.4708152720399552679E+3
      sumq = ((1.0) * xz - 2.4994418972832303646E+2) * xz + _
               2.1312714303849120380E+4
      sumf = (((-1.6414452837299064100) * xz - 2.9601657892958843866E+2) _
               * xz - 1.7733784684952985886E+4) * xz - _
               4.0320340761145482298E+5
      sumg = ((1.0 * xz - 2.5064972445877992730E+2) * xz + _
               2.9865713163054025489E+4) * xz - 1.6128136304458193998E+6
      retvalu = sump / sumq - Math.Log(xx) * (xz * sumf / sumg + 1.0)
   ElseIf (xx < Kw.DBLMAXLN) Then
      xz = 1.0 / xx
      sump = (((((((((1.1394980557384778174E+2) * xz + _
               3.6832589957340267940E+3) * xz + 3.1075408980684392399E+4) _
               * xz + 1.0577068948034021957E+5) * xz + _
               1.7398867902565686251E+5) * xz + 1.5097646353289914539E+5) _
               * xz + 7.1557062783764037541E+4) * xz + _
               1.8321525870183537725E+4) * xz + 2.3444738764199315021E+3) _
               * xz + 1.1600249425076035558E+2
      sumq = ((((((((((1.0) * xz + 2.0013443064949242491E+2) * xz + _
               4.4329628889746408858E+3) * xz + 3.1474655750295278825E+4) _
               * xz + 9.7418829762268075784E+4) * xz + _
               1.5144644673520157801E+5) * xz + 1.2689839587977598727E+5) _
               * xz + 5.8824616785857027752E+4) * xz + _
               1.4847228371802360957E+4) * xz + 1.8821890840982713696E+3) _
               * xz + 9.2556599177304839811E+1
      retvalu = sump / sumq / Sqr(xx) * Math.Exp(-xx)
   Else
      retvalu = 0.0
   End If
   bessK0 = retvalu
End Function
Public Function bessK1(ByVal arg As Double) As Double
   Dim retvalu As Double
   Dim sumf As Double
   Dim sumg As Double
   Dim sump As Double
   Dim sumq As Double
   Dim xx As Double
   Dim xz As Double
   xx = arg
   If (xx < Kw.DBLEPS) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx < Kw.DBLEPS) Then
      retvalu = 1.0 / xx
   ElseIf (xx <= 1.0) Then
      xz = xx * xx
      sump = (((((4.8127070456878442310E-1) * xz + _
               9.9991373567429309922E+1) * xz + 7.1885382604084798576E+3) _
               * xz + 1.7733324035147015630E+5) * xz + _
               7.1938920065420586101E+5) * xz - 2.2149374878243304548E+6
      sumq = (((1.0) * xz - 2.8143915754538725829E+2) * xz + _
               3.7264298672067697862E+4) * xz - 2.2149374878243304548E+6
      sumf = ((((-2.2795590826955002390E-1) * xz - _
               5.3103913335180275253E+1) * xz - 4.5051623763436087023E+3) _
               * xz - 1.4758069205414222471E+5) * xz - _
               1.3531161492785421328E+6
      sumg = (((1.0) * xz - 3.0507151578787595807E+2) * xz + _
               4.3117653211351080007E+4) * xz - 2.7062322985570842656E+6
      retvalu = (xz * Math.Log(xx) * sumf / sumg + sump / sumq) / xx
   ElseIf (xx < Kw.DBLMAXLN) Then
      xz = 1.0 / xx
      sump = ((((((((((6.4257745859173138767E-2) * xz + _
               7.5584584631176030810) * xz + 1.3182609918569941308E+2) * _
               xz + 8.1094256146537402173E+2) * xz + _
               2.3123742209168871550E+3) * xz + 3.4540675585544584407E+3) _
               * xz + 2.8590657697910288226E+3) * xz + _
               1.3319486433183221990E+3) * xz + 3.4122953486801312910E+2) _
               * xz + 4.4137176114230414036E+1) * xz + 2.2196792496874548962
      sumq = (((((((((1.0) * xz + 3.6001069306861518855E+1) * xz + _
               3.3031020088765390854E+2) * xz + 1.2082692316002348638E+3) _
               * xz + 2.1181000487171943810E+3) * xz + _
               1.9448440788918006154E+3) * xz + 9.6929165726802648634E+2) _
               * xz + 2.5951223655579051357E+2) * xz + _
               3.4552228452758912848E+1) * xz + 1.7710478032601086579
      retvalu = sump / sumq / Sqr(xx)
      retvalu = retvalu * Math.Exp(-xx)
   Else
      retvalu = 0.0
   End If
   bessK1 = retvalu
End Function
Public Function bessJn_ps(ByVal nn As Long, ByVal xx As Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim ff As Double
   Dim xxsqr_div_four As Double
   Dim ann As Long
   If (nn < 0) Then
      ann = -nn
   Else
      ann = nn
   End If
   term = Pow(xx / 2.0, ann) / Kw.factorial(ann)
   xxsqr_div_four = -(xx * xx / 4.0)
   sum = term
   ff = 1
   Do While (True)
      term = term * xxsqr_div_four / (ff * (ann + ff))
      sum_prev = sum
      sum = sum + term
      If (Kw.iseq(sum, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      ff = ff + 1
   Loop
   If (nn < 0 And Kw.isodd(nn)) Then
      sum = -sum
   End If
   bessJn_ps = sum
End Function
Public Function bessIn_ps(ByVal nn As Long, ByVal xx As Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim ff As Double
   Dim xxsqr_div_four As Double
   Dim ann As Long
   If (nn < 0) Then
      ann = -nn
   Else
      ann = nn
   End If
   term = Pow(xx / 2.0, ann) / Kw.factorial(ann)
   xxsqr_div_four = xx * xx / 4.0
   sum = term
   ff = 1
   Do While (True)
      term = term * xxsqr_div_four / (ff * (ann + ff))
      sum_prev = sum
      sum = sum + term
      If (Kw.iseq(sum, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      ff = ff + 1
   Loop
   bessIn_ps = sum
End Function
Private Function lf_besucjy0_xge5(ByVal xx As Double, ByVal jfunc As _
         Long) As Double
   Dim ww As Double
   Dim pp As Double
   Dim qq As Double
   Dim zz As Double
   Dim xn As Double
   Dim denom As Double
   Dim numer As Double
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.96936729297347051624E-4) * zz + _
            8.28352392107440799803E-2) * zz + 1.23953371646414299388) * _
            zz + 5.44725003058768775090) * zz + 8.74716500199817011941) * _
            zz + 5.30324038235394892183) * zz + 9.99999999999999997821E-1)
   denom = (((((((9.24408810558863637013E-4) * zz + _
            8.56288474354474431428E-2) * zz + 1.25352743901058953537) * _
            zz + 5.47097740330417105182) * zz + 8.76190883237069594232) * _
            zz + 5.30605288235394617618) * zz + 1.00000000000000000218)
   pp = numer / denom
   numer = ((((((((-1.13663838898469149931E-2) * zz - _
            1.28252718670509318512) * zz - 1.95539544257735972385E+1) * _
            zz - 9.32060152123768231369E+1) * zz - _
            1.77681167980488050595E+2) * zz - 1.47077505154951170175E+2) _
            * zz - 5.14105326766599330220E+1) * zz - 6.05014350600728481186)
   denom = ((((((((1.0) * zz + 6.43178256118178023184E+1) * zz + _
            8.56430025976980587198E+2) * zz + 3.88240183605401609683E+3) _
            * zz + 7.24046774195652478189E+3) * zz + _
            5.93072701187316984827E+3) * zz + 2.06209331660327847417E+3) _
            * zz + 2.42005740240291393179E+2)
   qq = numer / denom
   xn = xx - Kw.PI / 4.0
   If (jfunc < 1) Then
      pp = pp * Math.Cos(xn) - ww * qq * Math.Sin(xn)
   Else
      pp = pp * Math.Sin(xn) + ww * qq * Math.Cos(xn)
   End If
   lf_besucjy0_xge5 = pp * Kw.TWOSQRT / Sqr(Kw.PI * xx)
End Function
Private Function lf_besucjy1_xge5(ByVal xx As Double, ByVal jfunc As _
         Long) As Double
   Dim ww As Double
   Dim pp As Double
   Dim qq As Double
   Dim zz As Double
   Dim xn As Double
   Dim denom As Double
   Dim numer As Double
   ww = 5.0 / xx
   zz = 25.0 / (xx * xx)
   numer = (((((((7.62125616208173112003E-4) * zz + _
            7.31397056940917570436E-2) * zz + 1.12719608129684925192) * _
            zz + 5.11207951146807644818) * zz + 8.42404590141772420927) * _
            zz + 5.21451598682361504063) * zz + 1.00000000000000000254)
   denom = (((((((5.71323128072548699714E-4) * zz + _
            6.88455908754495404082E-2) * zz + 1.10514232634061696926) * _
            zz + 5.07386386128601488557) * zz + 8.39985554327604159757) * _
            zz + 5.20982848682361821619) * zz + 9.99999999999999997461E-1)
   pp = numer / denom
   numer = ((((((((5.10862594750176621635E-2) * zz + _
            4.98213872951233449420) * zz + 7.58238284132545283818E+1) * _
            zz + 3.66779609360150777800E+2) * zz + _
            7.10856304998926107277E+2) * zz + 5.97489612400613639965E+2) _
            * zz + 2.11688757100572135698E+2) * zz + _
            2.52070205858023719784E+1)
   denom = ((((((((1.0) * zz + 7.42373277035675149943E+1) * zz + _
            1.05644886038262816351E+3) * zz + 4.98641058337653607651E+3) _
            * zz + 9.56231892404756170795E+3) * zz + _
            7.99704160447350683650E+3) * zz + 2.82619278517639096600E+3) _
            * zz + 3.36093607810698293419E+2)
   qq = numer / denom
   xn = xx - 3.0 * Kw.PI / 4.0
   If (jfunc < 1) Then
      pp = pp * Math.Cos(xn) - ww * qq * Math.Sin(xn)
   Else
      pp = pp * Math.Sin(xn) + ww * qq * Math.Cos(xn)
   End If
   lf_besucjy1_xge5 = pp * Kw.TWOSQRT / Sqr(Kw.PI * xx)
End Function
Public Function bessJ0(ByVal xx As Double) As Double
   Dim zz As Double
   Dim denom As Double
   Dim numer As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      xx = -xx
   End If
   zz = xx * xx
   If (xx < 1.0E-5) Then
      retvalu = 1.0 - zz / 4.0
   ElseIf (xx < 5.0) Then
      numer = ((((-4.79443220978201773821E+9) * zz + _
               1.95617491946556577543E+12) * zz - _
               2.49248344360967716204E+14) * zz + 9.70862251047306323952E+15)
      denom = (((((((((1.0) * zz + 4.99563147152651017219E+2) * zz + _
               1.73785401676374683123E+5) * zz + _
               4.84409658339962045305E+7) * zz + _
               1.11855537045356834862E+10) * zz + _
               2.11277520115489217587E+12) * zz + _
               3.10518229857422583814E+14) * zz + _
               3.18121955943204943306E+16) * zz + 1.71086294081043136091E+18)
      retvalu = (zz - 5.783185962946784521175) * (zz - _
               30.4712623436620863991) * numer / denom
   Else
      retvalu = lf_besucjy0_xge5(xx, 0)
   End If
   bessJ0 = retvalu
End Function
Public Function bessJ1(ByVal xx As Double) As Double
   Dim ww As Double
   Dim zz As Double
   Dim denom As Double
   Dim numer As Double
   Dim retvalu As Double
   ww = xx
   If (ww < 0.0) Then
      ww = -ww
   End If
   If (ww < 5.0) Then
      zz = ww * ww
      numer = ((((-8.99971225705559398224E+8) * zz + _
               4.52228297998194034323E+11) * zz - _
               7.27494245221818276015E+13) * zz + 3.68295732863852883286E+15)
      denom = (((((((((1.0) * zz + 6.20836478118054335476E+2) * zz + _
               2.56987256757748830383E+5) * zz + _
               8.35146791431949253037E+7) * zz + _
               2.21511595479792499675E+10) * zz + _
               4.74914122079991414898E+12) * zz + _
               7.84369607876235854894E+14) * zz + _
               8.95222336184627338078E+16) * zz + 5.32278620332680085395E+18)
      retvalu = numer / denom * xx * (zz - 14.6819706421238932572) * (zz _
               - 49.2184563216946036703)
   Else
      retvalu = lf_besucjy1_xge5(xx, 0)
   End If
   bessJ1 = retvalu
End Function
Public Function bessY0(ByVal xx As Double) As Double
   Dim zz As Double
   Dim denom As Double
   Dim numer As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = Kw.DBLMAX
   Else
      zz = xx * xx
      If (xx < 1.0E-5) Then
         retvalu = 1.0 - zz / 4.0
      ElseIf (xx < 5.0) Then
         numer = ((((((((1.55924367855235737965E+4) * zz - _
                  1.46639295903971606143E+7) * zz + _
                  5.43526477051876500413E+9) * zz - _
                  9.82136065717911466409E+11) * zz + _
                  8.75906394395366999549E+13) * zz - _
                  3.46628303384729719441E+15) * zz + _
                  4.42733268572569800351E+16) * zz - _
                  1.84950800436986690637E+16)
         denom = ((((((((1.0) * zz + 1.04128353664259848412E+3) * zz + _
                  6.26107330137134956842E+5) * zz + _
                  2.68919633393814121987E+8) * zz + _
                  8.64002487103935000337E+10) * zz + _
                  2.02979612750105546709E+13) * zz + _
                  3.17157752842975028269E+15) * zz + _
                  2.50596256172653059228E+17)
         retvalu = numer / denom + 2.0 * Math.Log(xx) * bessJ0(xx) / Kw.PI
      Else
         retvalu = lf_besucjy0_xge5(xx, 1)
      End If
   End If
   bessY0 = retvalu
End Function
Public Function bessY1(ByVal xx As Double) As Double
   Dim ww As Double
   Dim zz As Double
   Dim denom As Double
   Dim numer As Double
   Dim retvalu As Double
   ww = xx
   If (xx <= 0.0) Then
      retvalu = -Kw.DBLMAX
   ElseIf (ww <= 5.0) Then
      zz = ww * ww
      numer = ((((((1.2632047479017802640E+9) * zz - _
               6.47355876379160291031E+11) * zz + _
               1.14509511541823727583E+14) * zz - _
               8.12770255501325109621E+15) * zz + _
               2.02439475713594898196E+17) * zz - 7.78877196265950026825E+17)
      denom = (((((((((1.0) * zz + 5.94301592346128195359E+2) * zz + _
               2.35564092943068577943E+5) * zz + _
               7.34811944459721705660E+7) * zz + _
               1.87601316108706159478E+10) * zz + _
               3.88231277496238566008E+12) * zz + _
               6.20557727146953693363E+14) * zz + _
               6.87141087355300489866E+16) * zz + 3.97270608116560655612E+18)
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) * Math.Log(xx) - _
               1.0 / xx) / Kw.PI
   Else
      retvalu = lf_besucjy1_xge5(xx, 1)
   End If
   bessY1 = retvalu
End Function
Private Function lf_bess_ucrecur(ByVal nn As Long, ByVal xx As Double, _
         ByVal fzero As Double, ByVal fone As Double) As Double
   Dim av As Double
   Dim bv As Double
   Dim cv As Double
   Dim tox As Double
   Dim ii As Long
   If (nn <= 0) Then
      cv = fzero
   ElseIf (nn = 1) Then
      cv = fone
   Else
      tox = 2.0 / xx
      av = fzero
      bv = fone
      For ii = 1 To nn - 1
         cv = tox * ii * bv - av
         av = bv
         bv = cv
      Next
   End If
   lf_bess_ucrecur = cv
End Function
Private Function lf_limi(ByVal nn As Long) As Long
   lf_limi = nn + floor(Sqr(40.0 * nn))
End Function
Private Function lf_bess_ucrecur2(ByVal nn As Long, ByVal xx As Double) _
         As Double
   Dim tox As Double
   Dim bzp As Double
   Dim bzc As Double
   Dim bzm As Double
   Dim sjm As Double
   Dim jj As Long
   Dim flipflop As Long
   Dim limi As Long
   Dim retvalu As Double
   flipflop = 0
   sjm = 0.0
   tox = 2.0 / Math.Abs(xx)
   retvalu = 0.0
   bzp = 0.0
   bzc = 1.0
   limi = lf_limi(nn)
   If (Kw.isodd(limi)) Then
      limi = limi - 1
   End If
   For jj = limi To 1 Step - 1
      bzm = jj * tox * bzc - bzp
      bzp = bzc
      bzc = bzm
      If (flipflop = 0) Then
         flipflop = 1
      Else
         sjm = sjm + bzc
         flipflop = 0
      End If
      If (jj = nn) Then
         retvalu = bzp
      End If
   Next
   sjm = 2.0 * sjm - bzc
   retvalu = retvalu / sjm
   lf_bess_ucrecur2 = retvalu
End Function
Public Function bessIn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim jj As Long
   Dim limi As Long
   Dim bzc As Double
   Dim bzm As Double
   Dim bzp As Double
   Dim tox As Double
   Dim retvalu As Double
   Dim axx As Double
   If (nn < 0 Or Kw.iszero(xx)) Then
      retvalu = 0.0
   ElseIf (nn = 0) Then
      axx = Math.Abs(xx)
      retvalu = bessI0(axx)
   ElseIf (nn = 1) Then
      axx = Math.Abs(xx)
      retvalu = bessI1(axx)
   Else
      tox = 2.0 / Math.Abs(xx)
      retvalu = 0.0
      bzp = 0.0
      bzc = 1.0
      limi = 2 * lf_limi(nn)
      For jj = limi To 1 Step - 1
         bzm = bzp + jj * tox * bzc
         bzp = bzc
         bzc = bzm
         If (jj = nn) Then
            retvalu = bzp
         End If
      Next
      retvalu = retvalu * bessI0(xx) / bzc
   End If
   If (xx < 0.0 And Kw.isodd(nn)) Then
      retvalu = -retvalu
   End If
   bessIn = retvalu
End Function
Public Function bessJn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (nn = 0) Then
      retvalu = bessJ0(xx)
   ElseIf (nn = 1) Then
      retvalu = bessJ1(xx)
   ElseIf (nn < Math.Abs(xx)) Then
      retvalu = lf_bess_ucrecur(nn, xx, bessJ0(xx), bessJ1(xx))
   Else
      retvalu = lf_bess_ucrecur2(nn, xx)
   End If
   bessJn = retvalu
End Function
Public Function bessYn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (nn = 0) Then
      retvalu = bessY0(xx)
   ElseIf (nn = 1) Then
      retvalu = bessY1(xx)
   Else
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx))
   End If
   bessYn = retvalu
End Function
Public Function bessKn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (nn < 0 Or Kw.iszero(xx)) Then
      retvalu = 0.0
   ElseIf (nn = 0) Then
      retvalu = bessK0(xx)
   ElseIf (nn = 1) Then
      retvalu = bessK1(xx)
   Else
      retvalu = lf_bess_ucrecur(nn, xx, bessK0(xx), bessK1(xx))
   End If
   bessKn = retvalu
End Function
Public Function bessYn_ps(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim hn As Double
   Dim kk As Double
   Dim xxsqr_div_four As Double
   If (nn < 0 Or Kw.iszero(xx)) Then
      retvalu = 0.0
   ElseIf (nn = 0) Then
      xxsqr_div_four = xx * xx / 4.0
      sum = (Math.Log(xx / 2.0) + Kw.EULER) * bessJn(0, xx)
      term = -1
      hn = 0.0
      kk = 1
      Do While (True)
         hn = hn + 1.0 / kk
         term = term * - xxsqr_div_four / (kk * kk)
         sum_prev = sum
         sum = sum + term * hn
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         kk = kk + 1
      Loop
      retvalu = 2.0 * sum / Kw.PI
   ElseIf (nn = 1) Then
      retvalu = bessY1(xx)
   Else
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx))
   End If
   bessYn_ps = retvalu
End Function
Public Function bessY1__1(ByVal xx As Double) As Double
   Dim numer As Double
   Dim denom As Double
   Dim zz As Double
   Dim ww As Double
   Dim yy As Double
   Dim retvalu As Double
   If (Kw.iszero(xx)) Then
      retvalu = -Kw.DBLMAX
   ElseIf (xx < 8.0) Then
      yy = xx * xx
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) * yy + _
               7.349264551E+8) * yy - 5.153438139E+10) * yy + _
               1.275274390E+12) * yy - 4.900604943E+12)
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy + 1.020426050E+5) * _
               yy + 2.245904002E+7) * yy + 3.733650367E+9) * yy + _
               4.244419664E+11) * yy + 2.499580570E+13)
      retvalu = 2.0 * (bessJn(1, xx) * Math.Log(xx) - 1.0 / xx) / Kw.PI + _
               xx * (numer / denom)
   Else
      zz = 8.0 / xx
      yy = zz * zz
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) * yy - _
               3.516396496E-5) * yy + 1.831050000E-3) * yy + 1.0)
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) * yy + _
               8.449199096E-6) * yy - 2.002690873E-4) * yy + 4.687499995E-2)
      ww = xx - 0.75 * Kw.PI
      retvalu = Kw.TWOSQRT / Sqr(Kw.PI * xx) * (Math.Sin(ww) * numer + zz _
               * Math.Cos(ww) * denom)
   End If
   bessY1__1 = retvalu
End Function
Private Function lf_bess_lcrecur(ByVal nn As Long, ByVal xx As Double, _
         ByVal fzero As Double, ByVal fone As Double) As Double
   Dim av As Double
   Dim bv As Double
   Dim cv As Double
   Dim ii As Long
   If (nn <= 0) Then
      cv = fzero
   ElseIf (nn = 1) Then
      cv = fone
   Else
      av = fzero
      bv = fone
      For ii = 1 To nn - 1
         cv = (2.0 * ii + 1.0) * bv / xx - av
         av = bv
         bv = cv
      Next
   End If
   lf_bess_lcrecur = cv
End Function
Public Function bess_jn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim jk_a As Double
   Dim jk_b As Double
   If (Kw.iszero(xx)) Then
      If (nn = 0) Then
         retvalu = 1.0
      Else
         retvalu = 0.0
      End If
   Else
      jk_a = Math.Sin(xx) / xx
      jk_b = (Math.Sin(xx) - xx * Math.Cos(xx)) / (xx * xx)
      If (nn <= 0) Then
         retvalu = jk_a
      ElseIf (nn <= 1) Then
         retvalu = jk_b
      Else
         retvalu = lf_bess_lcrecur(nn, xx, jk_a, jk_b)
      End If
   End If
   bess_jn = retvalu
End Function
Public Function bess_yn(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim yk_a As Double
   Dim yk_b As Double
   If (Kw.iszero(xx)) Then
      If (nn = 0) Then
         retvalu = 1.0
      Else
         retvalu = 0.0
      End If
   Else
      yk_a = -Math.Cos(xx) / xx
      yk_b = (-Math.Cos(xx) - xx * Math.Sin(xx)) / (xx * xx)
      If (nn <= 0) Then
         retvalu = yk_a
      ElseIf (nn <= 1) Then
         retvalu = yk_b
      Else
         retvalu = lf_bess_lcrecur(nn, xx, yk_a, yk_b)
      End If
   End If
   bess_yn = retvalu
End Function
Public Function partition(ByVal nn As Long) As Double
   ' local-use Vb6 lv_partitionr_arr
   ' local-use Vb6 lv_partitionr_end
   Dim retvalu As Double
   Dim jj As Long
   Dim ii As Long
   Dim kk As Long
   Dim sum As Double
   Dim ssign As Double
   If (nn < 0) Then
      retvalu = 0.0
   Else
      If (lv_partitionr_end <= 0) Then
         lv_partitionr_end = 6
         ReDim Preserve lv_partitionr_arr(lv_partitionr_end)
         lv_partitionr_arr(0) = 1.0
         lv_partitionr_arr(1) = 1.0
         lv_partitionr_arr(2) = 2.0
         lv_partitionr_arr(3) = 3.0
         lv_partitionr_arr(4) = 5.0
         lv_partitionr_arr(5) = 7.0
      End If
      If (lv_partitionr_end <= nn) Then
         ii = lv_partitionr_end
         lv_partitionr_end = nn + 1
         ReDim Preserve lv_partitionr_arr(lv_partitionr_end)
         Do While (ii < lv_partitionr_end)
            sum = 0.0
            ssign = 1.0
            kk = 1
            jj = ii - 1
            Do While (0 <= jj)
               sum = sum + ssign * lv_partitionr_arr(jj)
               jj = jj - kk
               If (jj < 0) Then
                  Exit Do
               End If
               sum = sum + ssign * lv_partitionr_arr(jj)
               ssign = -ssign
               kk = kk + 1
               jj = jj - (2 * kk - 1)
            Loop
            lv_partitionr_arr(ii) = sum
            ii = ii + 1
         Loop
      End If
      retvalu = lv_partitionr_arr(nn)
   End If
   partition = retvalu
End Function
Public Function partitionq(ByVal nn As Long) As Double
   ' local-use Vb6 lv_partitionq_arr
   ' local-use Vb6 lv_partitionq_end
   Dim retvalu As Double
   Dim jj As Long
   Dim ii As Long
   Dim kk As Long
   Dim sum As Double
   Dim ssign As Double
   Dim ee As Long
   If (nn < 0) Then
      retvalu = 0.0
   Else
      If (lv_partitionq_end <= 0) Then
         lv_partitionq_end = 6
         ReDim Preserve lv_partitionq_arr(lv_partitionq_end)
         lv_partitionq_arr(0) = 1.0
         lv_partitionq_arr(1) = 1.0
         lv_partitionq_arr(2) = 1.0
         lv_partitionq_arr(3) = 2.0
         lv_partitionq_arr(4) = 2.0
         lv_partitionq_arr(5) = 3.0
      End If
      If (lv_partitionq_end <= nn) Then
         ii = lv_partitionq_end
         lv_partitionq_end = nn + 1
         ReDim Preserve lv_partitionq_arr(lv_partitionq_end)
         Do While (ii < lv_partitionq_end)
            sum = 0.0
            ssign = 1.0
            kk = 1
            jj = ii - 1
            Do While (0 <= jj)
               sum = sum + ssign * lv_partitionq_arr(jj)
               jj = jj - kk
               If (jj < 0) Then
                  Exit Do
               End If
               sum = sum + ssign * lv_partitionq_arr(jj)
               ssign = -ssign
               kk = kk + 1
               jj = jj - (2 * kk - 1)
            Loop
            ee = Kw.round(Sqr(1.0 + 12.0 * ii) / 6.0)
            If (ii = (3 * ee * ee - ee) Or ii = (3 * ee * ee + ee)) Then
               If (Kw.isodd(ee)) Then
                  sum = sum - 1.0
               Else
                  sum = sum + 1.0
               End If
            End If
            lv_partitionq_arr(ii) = sum
            ii = ii + 1
         Loop
      End If
      retvalu = lv_partitionq_arr(nn)
   End If
   partitionq = retvalu
End Function
Public Function bitwisenot(ByVal xx As Long) As Long
   Dim retvalu As Long
   retvalu = Not(xx)
   bitwisenot = retvalu
End Function
Public Function bitwiseand(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   retvalu = (xx And yy)
   bitwiseand = retvalu
End Function
Public Function bitwiseor(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   retvalu = (xx Or yy)
   bitwiseor = retvalu
End Function
Public Function bitwisexor(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   retvalu = (xx Xor yy)
   bitwisexor = retvalu
End Function
Public Function bitshiftl(ByVal hexnumber As Long, ByVal shift_count As _
         Long) As Long
   Dim retvalu As Long
   If (shift_count < 0) Then
      retvalu = (hexnumber \ 2 ^ (- shift_count))
   ElseIf (0 < shift_count) Then
      retvalu = (hexnumber * 2 ^ shift_count)
   Else
      retvalu = hexnumber
   End If
   bitshiftl = retvalu
End Function
Public Function bitshiftr(ByVal hexnumber As Long, ByVal shift_count As _
         Long) As Long
   Dim retvalu As Long
   If (shift_count < 0) Then
      retvalu = (hexnumber * 2 ^ (- shift_count))
   ElseIf (0 < shift_count) Then
      retvalu = (hexnumber \ 2 ^ shift_count)
   Else
      retvalu = hexnumber
   End If
   bitshiftr = retvalu
End Function
Public Function bits_count(ByVal hexnumber As Long) As Long
   Dim bit_counter As Long
   Dim bitmask As Long
   bitmask = 1
   bit_counter = 0
   Do While (bitmask <= hexnumber)
      If (bitwiseand(bitmask, hexnumber) <> 0) Then
         bit_counter = bit_counter + 1
      End If
      bitmask = (bitmask * 2)
   Loop
   bits_count = bit_counter
End Function
Public Function bits_ls1b(ByVal orig As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   If (orig = 0) Then
      retvalu = 0
   Else
      divisor = 1
      Do While (0 = (divisor And orig))
         divisor = divisor * 2
      Loop
      retvalu = divisor
   End If
   bits_ls1b = retvalu
End Function
Public Function bits_ms1b(ByVal orig As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   If (orig = 0) Then
      retvalu = 0
   Else
      divisor = -2
      Do While ((divisor And orig) <> 0)
         divisor = divisor * 2
      Loop
      retvalu = -divisor / 2
   End If
   bits_ms1b = retvalu
End Function
Public Function bits_ls1bpos(ByVal orig As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   Dim bit_count As Long
   If (orig = 0) Then
      retvalu = -1
   Else
      divisor = 1
      bit_count = 0
      Do While (0 = (divisor And orig))
         divisor = divisor * 2
         bit_count = bit_count + 1
      Loop
      retvalu = bit_count
   End If
   bits_ls1bpos = retvalu
End Function
Public Function bits_ms1bpos(ByVal orig As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   Dim bit_count As Long
   If (orig = 0) Then
      retvalu = 0
   Else
      divisor = -2
      bit_count = 0
      Do While ((divisor And orig) <> 0)
         divisor = divisor * 2
         bit_count = bit_count + 1
      Loop
      retvalu = bit_count
   End If
   bits_ms1bpos = retvalu
End Function
Public Function bits_assign(ByVal orig As Long, ByVal value_to_set As _
         Long, ByVal which_mask As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   Dim tempo As Long
   Dim tempv As Long
   If (which_mask = 0) Then
      retvalu = orig
   Else
      divisor = bits_ls1bpos(which_mask)
      tempo = (orig And (Not(which_mask)))
      tempv = (value_to_set * 2 ^ divisor)
      retvalu = (tempo Or (tempv And which_mask))
   End If
   bits_assign = retvalu
End Function
Public Function bits_get(ByVal vall As Long, ByVal mask As Long) As Long
   bits_get = (vall And mask) / bits_ls1b(mask)
End Function
Public Function bits_set(ByVal vall As Long, ByVal mask As Long) As Long
   bits_set = ((vall * bits_ls1b(mask)) And mask)
End Function
Private Function lf_calerf(ByVal xx As Double, ByVal jint As Long) As Double
   Dim result As Double
   Dim retvalu As Double
   Dim absx As Double
   Dim numer As Double
   Dim denom As Double
   Dim rsqrpi As Double
   Dim rxsq As Double
   Dim xsq As Double
   Dim flag As Long
   absx = Math.Abs(xx)
   xsq = xx * xx
   flag = 0
   If (absx <= 0.46875) Then
      numer = (((((1.85777706184603153E-1) * xsq + 3.16112374387056560) * _
               xsq + 1.13864154151050156E+2) * xsq + _
               3.77485237685302021E+2) * xsq + 3.20937758913846947E+3)
      denom = (((((1.00000000000000000) * xsq + 2.36012909523441209E+1) * _
               xsq + 2.44024637934444173E+2) * xsq + _
               1.28261652607737228E+3) * xsq + 2.84423683343917062E+3)
      retvalu = xx * numer / denom
      If (jint = 1) Then
         retvalu = 1.0 - retvalu
      ElseIf (jint = 2) Then
         retvalu = Math.Exp(xsq) * (1.0 - retvalu)
      End If
      flag = 1
   ElseIf (absx <= 4.0) Then
      numer = (((((((((2.15311535474403846E-8) * absx + _
               5.64188496988670089E-1) * absx + 8.88314979438837594) * _
               absx + 6.61191906371416295E+1) * absx + _
               2.98635138197400131E+2) * absx + 8.81952221241769090E+2) * _
               absx + 1.71204761263407058E+3) * absx + _
               2.05107837782607147E+3) * absx + 1.23033935479799725E+3)
      denom = (((((((((1.00000000000000000) * absx + _
               1.57449261107098347E+1) * absx + 1.17693950891312499E+2) * _
               absx + 5.37181101862009858E+2) * absx + _
               1.62138957456669019E+3) * absx + 3.29079923573345963E+3) * _
               absx + 4.36261909014324716E+3) * absx + _
               3.43936767414372164E+3) * absx + 1.23033935480374942E+3)
      result = numer / denom
   Else
      rsqrpi = Sqr(1.0 / Kw.PI)
      If (jint <> 2 And Sqr(Math.Log(Kw.DBLMAX)) <= absx) Then
         result = 0.0
      ElseIf (jint = 2 And 6.71E+7 <= absx) Then
         If (Kw.DBLMAX / 8.0 <= absx) Then
            result = 0.0
         Else
            result = rsqrpi / absx
         End If
      Else
         rxsq = 1.0 / (absx * absx)
         numer = ((((((-1.63153871373020978E+2) * rxsq - _
                  3.05326634961232344E+3) * rxsq - _
                  3.60344899949804439E+3) * rxsq - _
                  1.25781726111229246E+3) * rxsq - _
                  1.60837851487422766E+2) * rxsq - 6.58749161529837803)
         denom = ((((((1.00000000000000000E+4) * rxsq + _
                  2.56852019228982242E+4) * rxsq + _
                  1.87295284992346047E+4) * rxsq + _
                  5.27905102951428412E+3) * rxsq + _
                  6.05183413124413191E+2) * rxsq + 2.33520497626869185E+1)
         result = (rsqrpi + rxsq * numer / denom) / absx
      End If
   End If
   If (flag = 0) Then
      If (jint = 2) Then
         If (xx < - Sqr(Math.Log(Kw.DBLMAX))) Then
            retvalu = Kw.DBLMAX
         ElseIf (xx < 0.0) Then
            retvalu = 2.0 * Math.Exp(xsq) - result
         Else
            retvalu = result
         End If
      Else
         result = result * Math.Exp(-xsq)
         If (jint = 0) Then
            If (0.0 <= xx) Then
               retvalu = (0.5 - result) + 0.5
            Else
               retvalu = -((0.5 - result) + 0.5)
            End If
         ElseIf (jint = 1) Then
            If (xx < 0.0) Then
               retvalu = 2.0 - result
            Else
               retvalu = result
            End If
         Else
            retvalu = 0.0
         End If
      End If
   End If
   lf_calerf = retvalu
End Function
Public Function erf(ByVal xx As Double) As Double
   erf = lf_calerf(xx, 0)
End Function
Public Function erfc(ByVal xx As Double) As Double
   erfc = lf_calerf(xx, 1)
End Function
Public Function erfcx(ByVal xx As Double) As Double
   erfcx = lf_calerf(xx, 2)
End Function
Public Function erfcinv(ByVal yy_orig As Double) As Double
   Dim retvalu As Double
   Dim xx As Double
   Dim yy As Double
   Dim xx_pr As Double
   Dim dx As Double
   Dim cc As Double
   Dim uu As Double
   Dim ii As Long
   If (yy_orig <= 0.0) Then
      retvalu = Kw.DBLMAX / 2.0
   ElseIf (2.0 <= yy_orig) Then
      retvalu = -(Kw.DBLMAX / 2.0)
   ElseIf (Kw.iszero(yy_orig - 1.0)) Then
      retvalu = 0.0
   Else
      If (1.0 < yy_orig) Then
         yy = 2.0 - yy_orig
      Else
         yy = yy_orig
      End If
      dx = 1.0
      xx = 0.0
      cc = -Sqr(Kw.TAU / 8.0)
      ii = 0
      Do While (True)
         uu = cc * (erfcx(xx) - yy * Math.Exp(xx * xx))
         dx = -uu / (1.0 + uu * xx)
         xx_pr = xx
         xx = xx + dx
         If (Kw.iseq(xx_pr, xx)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (1.0 < yy_orig) Then
         retvalu = -xx
      Else
         retvalu = xx
      End If
   End If
   erfcinv = retvalu
End Function
Public Function erfcxinv(ByVal yy As Double) As Double
   Dim xx As Double
   Dim xx_pr As Double
   Dim dx As Double
   Dim cc As Double
   Dim ex As Double
   Dim df As Double
   Dim uu As Double
   Dim ii As Long
   xx = 0.0
   If (Not Kw.iszero(yy - 1.0)) Then
      dx = 1.0
      cc = Sqr(8.0 / Kw.TAU)
      ii = 0
      Do While (True)
         ex = erfcx(xx)
         df = 2.0 * xx * ex - cc
         uu = (ex - yy) / df
         dx = -uu / (1.0 - uu * (xx + ex / df))
         xx_pr = xx
         xx = xx + dx
         If (Kw.iseq(xx_pr, xx)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   erfcxinv = xx
End Function
Public Function erfinv(ByVal yy As Double) As Double
   Dim retvalu As Double
   Dim xx As Double
   Dim xx_pr As Double
   Dim dx As Double
   Dim cc As Double
   Dim uu As Double
   Dim ii As Long
   If (Kw.iszero(yy)) Then
      retvalu = 0.0
   ElseIf (0.5 < yy) Then
      retvalu = erfcinv(1.0 - yy)
   ElseIf (yy < - 0.5) Then
      retvalu = -erfcinv(1.0 + yy)
   Else
      dx = 1.0
      xx = 0.0
      cc = Sqr(Kw.TAU / 8.0)
      ii = 0
      Do While (True)
         uu = cc * (erf(xx) - yy) * Math.Exp(xx * xx)
         dx = -uu / (1.0 + uu * xx)
         xx_pr = xx
         xx = xx + dx
         If (Kw.iseq(xx_pr, xx)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xx
   End If
   erfinv = retvalu
End Function
Public Function erf__1(ByVal xx As Double) As Double
   Dim tt As Double
   Dim ans As Double
   Dim ply As Double
   tt = (1.0 / (1.0 + (0.5 * Math.Abs(xx))))
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt + _
            1.48851587) * tt - 1.13520398) * tt + 2.78868070E-1) * tt - _
            1.86288060E-1) * tt + 9.67841800E-2) * tt + 3.74091960E-1) * _
            tt + 1.00002368) * tt - 1.26551223)
   ans = 1.0 - tt * Math.Exp((-xx * xx) + ply)
   If (xx < 0.0) Then
      ans = -ans
   End If
   erf__1 = ans
End Function
Public Function erf__2(ByVal xx As Double) As Double
   Dim tt As Double
   Dim ans As Double
   Dim ply As Double
   tt = 1.0 / (1.0 + 0.3275911 * Math.Abs(xx))
   ply = ((((((1.061405429) * tt - 1.453152027) * tt + 1.421413741) * tt _
            - 2.844967360E-1) * tt + 2.548295920E-1) * tt + 0.000000000)
   ans = 1.0 - Math.Exp(-xx * xx) * ply
   If (xx < 0.0) Then
      ans = -ans
   End If
   erf__2 = ans
End Function
Public Function erf__3(ByVal xx As Double) As Double
   Dim axx As Double
   Dim xxsq As Double
   Dim sum_curr As Double
   Dim factx As Double
   Dim nn As Long
   Dim add_arr(80) As Double
   Dim kk As Long
   axx = Math.Abs(xx)
   xxsq = xx * xx
   If (axx < 4.4) Then
      factx = 1.0
      add_arr(0) = 1
      nn = 1
      Do While (True)
         factx = factx * - xxsq / nn
         add_arr(nn) = factx / (2.0 * nn + 1.0)
         If (Math.Abs(add_arr(nn)) < Kw.DBLEPS) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
         If (79 <= nn) Then
            Exit Do' loop AWAIT
         End If
      Loop
      sum_curr = 0.0
      For kk = nn To 0 Step - 1
         sum_curr = sum_curr + add_arr(kk)
      Next
      sum_curr = sum_curr * (2.0 * xx / Sqr(Kw.PI))
   Else
      factx = -Math.Exp(-xxsq) / Sqr(Kw.PI)
      sum_curr = 0.0
      kk = Kw.round(xxsq)
      For nn = 1 To kk - 1
         factx = factx * - (2.0 * nn - 1.0) / (2.0 * xxsq)
         sum_curr = sum_curr + factx
      Next
      sum_curr = sum_curr + 1.0 - Math.Exp(-xxsq) / Sqr(Kw.PI) / axx
      If (xx < 0.0) Then
         sum_curr = -sum_curr
      End If
   End If
   erf__3 = sum_curr
End Function
Public Function erf__4(ByVal xx As Double) As Double
   Dim xxsq As Double
   Dim axx As Double
   Dim sum_prev As Double
   Dim sum_curr As Double
   Dim nn As Long
   Dim kk As Long
   Dim twonnpone As Long
   Dim factx As Double
   Dim factz As Double
   Dim twoxxsq As Double
   Dim term As Double
   Dim denom As Double
   axx = Math.Abs(xx)
   xxsq = xx * xx
   twoxxsq = 2.0 * xxsq
   sum_curr = 0.0
   If (axx < 4.4) Then
      factz = (2.0 * xx / Sqr(Kw.PI))
      factx = factz
      nn = 3
      Do While (True)
         twonnpone = 2 * nn + 1
         factx = factx * xxsq * xxsq / ((nn - 1.0) * nn)
         denom = 4.0 * nn * nn - 1.0
         term = factx * (twonnpone * (nn - xxsq) + twoxxsq) / denom
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_prev, sum_curr)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 2
      Loop
      sum_curr = sum_curr + (1.0 - xxsq / 3.0) * factz
   Else
      factx = -Math.Exp(-xxsq) / (xx * Sqr(Kw.PI))
      kk = Kw.round(xxsq)
      For nn = 1 To kk - 5 Step 2
         factx = factx * nn * (nn + 1.0) / (twoxxsq * twoxxsq)
         term = factx * (1.0 - (2.0 * nn + 1.0) / twoxxsq)
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_prev, sum_curr)) Then
            Exit For
         End If
      Next
      sum_curr = sum_curr + 1.0 - Math.Exp(-xxsq) / Sqr(Kw.PI) / axx
      If (xx < 0.0) Then
         sum_curr = -sum_curr
      End If
   End If
   erf__4 = sum_curr
End Function
Public Function lgamma__1(ByVal xx As Double) As Double
   Dim aa_arr(15) As Double
   Dim sum As Double
   Dim ii As Long
   Dim tt As Double
   Dim retvalu As Double
   Dim qq As Double
   If (xx <= 0.0 And Kw.isint(xx)) Then
      retvalu = Math.Log(Kw.DBLMAX)
   Else
      If (xx < 0.0) Then
         qq = 1.0 - xx
      Else
         qq = xx
      End If
      aa_arr(0) = +5.7156235665862923517E+1
      aa_arr(1) = -5.9597960355475491248E+1
      aa_arr(2) = +1.4136097974741747174E+1
      aa_arr(3) = -4.9191381609762019978E-1
      aa_arr(4) = +3.3994649984811888699E-5
      aa_arr(5) = +4.6523628927048575665E-5
      aa_arr(6) = -9.8374475304879564677E-5
      aa_arr(7) = +1.5808870322491248884E-4
      aa_arr(8) = -2.1026444172410488319E-4
      aa_arr(9) = +2.1743961811521264320E-4
      aa_arr(10) = -1.6431810653676389022E-4
      aa_arr(11) = +8.4418223983852743293E-5
      aa_arr(12) = -2.6190838401581408670E-5
      aa_arr(13) = +3.6899182659531622704E-6
      sum = 0.99999999999999709182
      For ii = 0 To 13
         sum = sum + aa_arr(ii) / (qq + ii)
      Next
      tt = qq + 607.0 / 128.0 - 0.5
      qq = Math.Log(Kw.TAU) / 2.0 + (qq - 0.5) * Math.Log(tt) + _
               Math.Log(sum) - tt
      If (xx < 0.0) Then
         retvalu = Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * Kw.TAU * _
                  xx))) - qq
      Else
         retvalu = qq
      End If
   End If
   lgamma__1 = retvalu
End Function
Public Function lgammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim yy_fixed As Double
   Dim xx_init As Double
   yy_fixed = yy / Kw.PI + Math.Log(yy + 0.5)
   xx_init = yy_fixed + Kw.PI - 0.5
   scvx_dx = 0.01
   scvx_xx = xx_init
   scvx_yy = yy - lgamma(scvx_xx)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = yy - lgamma(scvx_xx)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   lgammainv = scvx_xx
End Function
Private Function lf_lgamma_gt_zero(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim zz As Double
   Dim pp As Double
   Dim uu As Double
   Dim denom As Double
   Dim numer As Double
   If (xx < 13.0) Then
      zz = 1.0
      pp = 0.0
      uu = xx
      Do While (3.0 <= uu)
         pp = pp - 1.0
         uu = xx + pp
         zz = zz * uu
      Loop
      Do While (uu < 2.0)
         zz = zz / uu
         pp = pp + 1.0
         uu = xx + pp
      Loop
      If (zz < 0.0) Then
         zz = -zz
      End If
      If (Kw.iseq(uu, 2.0)) Then
         retvalu = Math.Log(zz)
      Else
         pp = pp - 2.0
         xx = xx + pp
         numer = ((((((-1.37825152569120859100E+3) * xx - _
                  3.88016315134637840924E+4) * xx - _
                  3.31612992738871184744E+5) * xx - _
                  1.16237097492762307383E+6) * xx - _
                  1.72173700820839662146E+6) * xx - _
                  8.53555664245765465627E+5)
         denom = (((((((1.0) * xx - 3.51815701436523470549E+2) * xx - _
                  1.70642106651881159223E+4) * xx - _
                  2.20528590553854454839E+5) * xx - _
                  1.13933444367982507207E+6) * xx - _
                  2.53252307177582951285E+6) * xx - _
                  2.01889141433532773231E+6)
         retvalu = Math.Log(zz) + xx * numer / denom
      End If
   Else
      uu = (xx - 0.5) * Math.Log(xx) - xx + Math.Log(Sqr(Kw.TAU))
      If (1.0E+8 < xx) Then
         retvalu = uu
      Else
         pp = 1.0 / (xx * xx)
         If (1000.0 < xx) Then
            zz = (((7.9365079365079365079365E-4) * pp - _
                     2.7777777777777777777778E-3) * pp + _
                     8.3333333333333333333333E-2)
         Else
            zz = (((((8.11614167470508450300E-4) * pp - _
                     5.95061904284301438324E-4) * pp + _
                     7.93650340457716943945E-4) * pp - _
                     2.77777777300996872050E-3) * pp + _
                     8.33333333333331927722E-2)
         End If
         retvalu = uu + zz / xx
      End If
   End If
   lf_lgamma_gt_zero = retvalu
End Function
Public Function lgamma(ByVal zz As Double) As Double
   Dim retvalu As Double
   If (zz <= 0.0) Then
      If (Kw.isint(zz)) Then
         retvalu = Math.Log(Kw.DBLMAX)
      Else
         retvalu = (Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * Kw.TAU * _
                  zz))) - lf_lgamma_gt_zero(1.0 - zz))
      End If
   Else
      retvalu = lf_lgamma_gt_zero(zz)
   End If
   lgamma = retvalu
End Function
Private Function lf_eval_cont(ByVal xx As Double, ByVal deg As Long, _
         coeff_arr_pc() As Double) As Double
   Dim sum As Double
   Dim ii As Long
   sum = xx
   For ii = deg To 0 Step - 1
      sum = xx + coeff_arr_pc(ii) / sum
   Next
   lf_eval_cont = sum
End Function
Public Function lgamma__2(ByVal zz As Double) As Double
   Dim retvalu As Double
   Dim aa_arr(10) As Double
   Dim sum As Double
   If (zz <= 0.0) Then
      If (Kw.isint(zz)) Then
         retvalu = Math.Log(Kw.DBLMAX)
      Else
         retvalu = (Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * Kw.TAU * _
                  zz))) - lgamma(1.0 - zz))
      End If
   Else
      aa_arr(0) = +1.0 / 12.0
      aa_arr(1) = +1.0 / 30.0
      aa_arr(2) = +53.0 / 210.0
      aa_arr(3) = +195.0 / 371.0
      aa_arr(4) = +229999.0 / 22737.0
      aa_arr(5) = +29944523.0 / 19733142.0
      aa_arr(6) = +109535241009.0 / 48264275462.0
      aa_arr(7) = +29404527905795295658.0 / 9769214287853155785.0
      aa_arr(8) = +455377030420113432210116914702.0 / _
               113084128923675014537885725485.0
      sum = 0.0
      Do While (zz <= 6.0)
         sum = sum + Math.Log(zz)
         zz = zz + 1.0
      Loop
      sum = sum - lf_eval_cont(zz, 8, aa_arr)
      retvalu = (Math.Log(Kw.TAU) / 2.0 + (zz - 0.5) * Math.Log(zz) - 2.0 _
               * zz - sum)
   End If
   lgamma__2 = retvalu
End Function
Public Function lpermx(ByVal nn As Double, ByVal rr As Double) As Double
   lpermx = lgamma(nn + 1.0) - lgamma(nn - rr + 1.0)
End Function
Public Function permx(ByVal nn As Double, ByVal rr As Double) As Double
   permx = Math.Exp(lpermx(nn, rr))
End Function
Public Function lcombx(ByVal nn As Double, ByVal rr As Double) As Double
   lcombx = lpermx(nn, rr) - lgamma(rr + 1.0)
End Function
Public Function combx(ByVal nn As Double, ByVal rr As Double) As Double
   combx = Math.Exp(lcombx(nn, rr))
End Function
Public Function birthdayx(ByVal nn As Double, ByVal rr As Double) As Double
   birthdayx = Math.Exp(lpermx(nn, rr) - Math.Log(nn) * rr)
End Function
Public Function tgamma__1(ByVal xx As Double) As Double
   Dim zz As Double
   Dim rslt As Double
   Dim denom As Double
   Dim numer As Double
   If (Kw.isposint(1.0 - xx)) Then
      rslt = Kw.DBLMAX
   Else
      zz = 1.0
      Do While (3.0 <= xx)
         xx = xx - 1.0
         zz = zz * xx
      Loop
      Do While (xx < 2.0)
         If (Math.Abs(xx) < 1.0E-9) Then
            Exit Do
         End If
         zz = zz / xx
         xx = xx + 1.0
      Loop
      If (Kw.iseq(xx, 0.0)) Then
         rslt = Kw.DBLMAX
      ElseIf (xx < 2.0) Then
         rslt = zz / ((1.0 + Kw.EULER * xx) * xx)
      ElseIf (Kw.iseq(xx, 2.0)) Then
         rslt = zz
      Else
         xx = xx - 2.0
         numer = (((((((1.60119522476751861407E-4) * xx + _
                  1.19135147006586384913E-3) * xx + _
                  1.04213797561761569935E-2) * xx + _
                  4.76367800457137231464E-2) * xx + _
                  2.07448227648435975150E-1) * xx + _
                  4.94214826801497100753E-1) * xx + _
                  9.99999999999999996796E-1)
         denom = ((((((((-2.31581873324120129819E-5) * xx + _
                  5.39605580493303397842E-4) * xx - _
                  4.45641913851797240494E-3) * xx + _
                  1.18139785222060435552E-2) * xx + _
                  3.58236398605498653373E-2) * xx - _
                  2.34591795718243348568E-1) * xx + _
                  7.14304917030273074085E-2) * xx + 1.00000000000000000320)
         rslt = zz * numer / denom
      End If
   End If
   tgamma__1 = rslt
End Function
Public Function tgamma(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim tmp As Double
   If (xx < 0.0) Then
      If (Kw.isint(xx)) Then
         retvalu = Kw.DBLMAX
      Else
         tmp = Math.Exp(lgamma(1.0 - xx))
         retvalu = Kw.PI / (Math.Sin(Kw.PI * xx) * tmp)
      End If
   Else
      retvalu = Math.Exp(lgamma(xx))
   End If
   tgamma = retvalu
End Function
Public Function tgammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim kk As Double
   Dim cc As Double
   Dim pp As Double
   Dim xx_init As Double
   kk = Kw.GAMMAMIN
   cc = Sqr(Kw.TAU) / Kw.E - tgamma(kk)
   pp = Math.Log((yy + cc) / Sqr(Kw.TAU))
   xx_init = pp / wp(pp / Kw.E) + 0.5
   scvx_dx = 0.01
   scvx_xx = xx_init
   scvx_yy = yy - tgamma(scvx_xx)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = yy - tgamma(scvx_xx)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   tgammainv = scvx_xx
End Function
Private Function lf_gamma_shift(ByVal xx As Double, ByVal yy As Double) _
         As Double
   Dim prod As Double
   If (Kw.isposint(1.0 - yy)) Then
      prod = Kw.DBLMAX
   Else
      prod = 1.0
      Do While (yy < xx - 0.0001)
         prod = prod * yy
         yy = yy + 1.0
      Loop
      Do While (xx + 0.0001 < yy)
         yy = yy - 1.0
         prod = prod / yy
      Loop
   End If
   lf_gamma_shift = prod
End Function
Private Function lf_tgamma_gt_half(ByVal xx As Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim yy As Double
   Dim pp_arr(11) As Double
   Dim ex As Double
   yy = xx - floor(xx) + 1.0
   pp_arr(0) = +5.716400188274341379136E+3
   pp_arr(1) = -1.481530426768413909044E+4
   pp_arr(2) = +1.429149277657478554025E+4
   pp_arr(3) = -6.348160217641458813289E+3
   pp_arr(4) = +1.301608286058321874105E+3
   pp_arr(5) = -1.081767053514369634679E+2
   pp_arr(6) = +2.605696505611755827729
   pp_arr(7) = -7.423452510201416151527E-3
   pp_arr(8) = +5.384136432509564062961E-8
   pp_arr(9) = -4.023533141268236372067E-9
   sum = 1.000000000000000174663
   For ii = 0 To 9
      sum = sum + pp_arr(ii) / (yy + ii)
   Next
   ex = Math.Log(yy + 8.5) * (yy - 0.5) - yy - 8.5
   lf_tgamma_gt_half = Sqr(Kw.TAU) * sum * lf_gamma_shift(xx, yy) * _
            Math.Exp(ex)
End Function
Public Function tgamma__2(ByVal xx As Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim pp_arr(10) As Double
   Dim yy As Double
   Dim rslt As Double
   Dim ex As Double
   If (Kw.isposint(1.0 - xx)) Then
      rslt = Kw.DBLMAX
   Else
      yy = xx - floor(xx) + 2.0
      pp_arr(0) = +7.61800917294715E+1
      pp_arr(1) = -8.65053203294168E+1
      pp_arr(2) = +2.40140982408309E+1
      pp_arr(3) = -1.23173957245015
      pp_arr(4) = +1.20865097386618E-3
      pp_arr(5) = -5.395239384953E-6
      sum = 1.00000000019001
      For ii = 0 To 5
         sum = sum + pp_arr(ii) / (yy + ii)
      Next
      ex = Math.Log(yy + 4.5) * (yy - 0.5) - yy - 4.5
      rslt = Sqr(Kw.TAU) * sum * lf_gamma_shift(xx, yy) * Math.Exp(ex)
   End If
   tgamma__2 = rslt
End Function
Public Function tgamma__3(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (Kw.isposint(1.0 - xx)) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx < 0.5) Then
      retvalu = Kw.PI / (Math.Sin(Kw.PI * xx) * lf_tgamma_gt_half(1.0 - xx))
   Else
      retvalu = lf_tgamma_gt_half(xx)
   End If
   tgamma__3 = retvalu
End Function
Public Function tgamma__stirling(ByVal xx As Double) As Double
   Dim yy As Double
   Dim ryy As Double
   Dim sc As Double
   Dim ply As Double
   sc = 1.0
   Do While (xx < 10.0)
      sc = sc / xx
      xx = xx + 1.0
   Loop
   yy = xx - 1.0
   ryy = 1.0 / yy
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0 / _
            209018880.0) * ryy - 571.0 / 2488320.0) * ryy - 139.0 / _
            51840) * ryy + 1.0 / 288.0) * ryy + 1.0 / 12.0) * ryy + 1.0)
   tgamma__stirling = sc * Pow(yy / Kw.E, yy) * Sqr(Kw.TAU * yy) * ply
End Function
Public Function tgammadouble(ByVal xx As Double) As Double
   Dim xxh As Double
   xxh = (xx - 1.0) / 2.0
   tgammadouble = Pow(2.0, xxh) * tgamma(xxh + 1.0) * Pow(2.0 / Kw.PI, _
            (1.0 - Math.Cos(Kw.TAU * xxh)) / 4.0)
End Function
Private Function lf_ligamma_xxleaa(ByVal aa As Double, ByVal xx As _
         Double) As Double
   Dim kk As Long
   Dim rr As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   sum_curr = Math.Exp(aa * Math.Log(xx) - xx) / aa
   rr = sum_curr
   For kk = 1 To 5 * 20
      rr = rr * xx / (aa + kk)
      sum_prev = sum_curr
      sum_curr = sum_curr + rr
      If (Kw.iseq(sum_prev, sum_curr)) Then
         Exit For
      End If
   Next
   lf_ligamma_xxleaa = sum_curr
End Function
Private Function lf_uigamma_aalexx(ByVal aa As Double, ByVal xx As _
         Double) As Double
   Dim jj As Long
   Dim pp As Double
   Dim ipp As Long
   Dim sum_curr As Double
   Dim tt As Double
   sum_curr = 0.0
   pp = 47.0 / Sqr(xx - 0.75)
   ipp = floor(pp)
   For jj = ipp To 1 Step - 1
      tt = xx + sum_curr
      sum_curr = (jj - aa) * tt / (tt + jj)
   Next
   lf_uigamma_aalexx = Math.Exp(aa * Math.Log(xx) - xx) / (xx + sum_curr)
End Function
Public Function ligamma(ByVal aa As Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx <= 1.1 Or xx <= aa) Then
      retvalu = lf_ligamma_xxleaa(aa, xx)
   Else
      retvalu = tgamma(aa) - lf_uigamma_aalexx(aa, xx)
   End If
   ligamma = retvalu
End Function
Public Function uigamma(ByVal aa As Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (aa <= 0.0) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx <= 0.0) Then
      retvalu = tgamma(aa)
   ElseIf (xx <= 1.1 Or xx <= aa) Then
      retvalu = tgamma(aa) - lf_ligamma_xxleaa(aa, xx)
   Else
      retvalu = lf_uigamma_aalexx(aa, xx)
   End If
   uigamma = retvalu
End Function
Public Function rligamma(ByVal aa As Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0) Then
      retvalu = Kw.DBLMAX
   Else
      retvalu = ligamma(aa, xx) / tgamma(aa)
   End If
   rligamma = retvalu
End Function
Public Function ruigamma(ByVal aa As Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (aa <= 0.0) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx <= 0.0) Then
      retvalu = 1.0
   Else
      retvalu = uigamma(aa, xx) / tgamma(aa)
   End If
   ruigamma = retvalu
End Function
Public Function uigamma__1(ByVal aa As Double, ByVal xx As Double) As Double
   Dim ans As Double
   Dim ax As Double
   Dim cc As Double
   Dim yc As Double
   Dim rr As Double
   Dim tt As Double
   Dim yy As Double
   Dim zz As Double
   Dim pk As Double
   Dim pkma As Double
   Dim pkmb As Double
   Dim qk As Double
   Dim qkma As Double
   Dim qkmb As Double
   Dim retvalu As Double
   If (xx <= 0.0 Or aa <= 0.0) Then
      retvalu = 1.0
   Else
      ax = aa * Math.Log(xx) - xx - lgamma(aa)
      If (ax < - Kw.DBLMAXLN) Then
         retvalu = 0.0
      Else
         ax = Math.Exp(ax)
         If (xx < 1.0 Or xx < aa) Then
            rr = aa
            cc = 1.0
            ans = 1.0
            Do While (True)
               rr = rr + 1.0
               cc = cc * xx / rr
               ans = ans + cc
               If (cc / ans < Kw.DBLEPS) Then
                  Exit Do' loop AWAIT
               End If
            Loop
            retvalu = 1.0 - ans * ax / aa
         Else
            yy = 1.0 - aa
            zz = xx + yy + 1.0
            cc = 0.0
            pkmb = 1.0
            qkmb = xx
            pkma = xx + 1.0
            qkma = zz * xx
            ans = pkma / qkma
            Do While (True)
               cc = cc + 1.0
               yy = yy + 1.0
               zz = zz + 2.0
               yc = yy * cc
               pk = pkma * zz - pkmb * yc
               qk = qkma * zz - qkmb * yc
               If (Not Kw.iszero(qk)) Then
                  rr = pk / qk
                  tt = Math.Abs((ans - rr) / rr)
                  ans = rr
               Else
                  tt = 1.0
               End If
               pkmb = pkma
               pkma = pk
               qkmb = qkma
               qkma = qk
               If (1.0 / Kw.DBLEPS < Math.Abs(pk)) Then
                  pkmb = pkmb * Kw.DBLEPS
                  pkma = pkma * Kw.DBLEPS
                  qkmb = qkmb * Kw.DBLEPS
                  qkma = qkma * Kw.DBLEPS
               End If
               If (tt <= Kw.DBLEPS) Then
                  Exit Do' loop AWAIT
               End If
            Loop
            retvalu = ans * ax
         End If
      End If
   End If
   uigamma__1 = retvalu
End Function
Public Function uigammainv(ByVal aa As Double, ByVal yy As Double) As Double
   Dim dd As Double
   Dim tt As Double
   Dim xx As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   dd = 1.0 / (9.0 * aa)
   tt = 1.0 - dd - gau_quantile(yy) * Sqr(dd)
   xx = aa * Pow(tt, 3)
   scvx_dx = 0.1
   scvx_xx = xx
   scvx_yy = yy - uigamma(aa, scvx_xx)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = yy - uigamma(aa, scvx_xx)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   uigammainv = scvx_xx
End Function
Public Function ligammainv(ByVal aa As Double, ByVal yy As Double) As Double
   ligammainv = uigammainv(aa, 1.0 - yy)
End Function
Public Function lbeta(ByVal aa As Double, ByVal bb As Double) As Double
   lbeta = lgamma(aa) + lgamma(bb) - lgamma(aa + bb)
End Function
Public Function beta(ByVal aa As Double, ByVal bb As Double) As Double
   Dim retvalu As Double
   Dim lbe As Double
   lbe = lbeta(aa, bb)
   If (Kw.DBLMAXLN < lbe) Then
      retvalu = Kw.DBLMAX
   ElseIf (- Kw.DBLMAXLN < lbe) Then
      retvalu = Math.Exp(lbe)
   Else
      retvalu = -Kw.DBLMAX
   End If
   beta = retvalu
End Function
Public Function betainc(ByVal aa As Double, ByVal bb As Double, ByVal xx _
         As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim compx As Double
   Dim new_xx As Double
   Dim pp As Double
   Dim qq As Double
   Dim term As Double
   Dim ai As Double
   Dim rx As Double
   Dim temp As Double
   Dim log_beta As Double
   Dim retvalu As Double
   Dim indx As Long
   Dim ns As Long
   Dim psq As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0 Or bb <= 0.0 Or 1.0 <= xx) Then
      retvalu = 1.0
   Else
      psq = aa + bb
      If (aa < psq * xx) Then
         new_xx = 1.0 - xx
         compx = xx
         pp = bb
         qq = aa
         indx = 0
      Else
         new_xx = xx
         compx = 1.0 - xx
         pp = aa
         qq = bb
         indx = 1
      End If
      term = 1.0
      sum_curr = 1.0
      ai = 1.0
      ns = floor(qq + compx * psq)
      rx = new_xx / compx
      temp = qq - ai
      If (ns = 0) Then
         rx = new_xx
      End If
      Do While (True)
         term = term * temp * rx / (pp + ai)
         ai = ai + 1.0
         ns = ns - 1
         If (0 <= ns) Then
            temp = qq - ai
            If (ns = 0) Then
               rx = new_xx
            End If
         Else
            temp = psq
            psq = psq + 1.0
         End If
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
      Loop
      log_beta = lgamma(aa) + lgamma(bb) - lgamma(aa + bb)
      retvalu = sum_curr * Math.Exp(pp * Math.Log(new_xx) + (qq - 1.0) * _
               Math.Log(compx) - log_beta) / pp
      If (indx = 0) Then
         retvalu = 1.0 - retvalu
      End If
   End If
   betainc = retvalu
End Function
Public Function betainc__1(ByVal aa As Double, ByVal bb As Double, ByVal _
         xx As Double) As Double
   Dim retvalu As Double
   Dim lbeta_ab As Double
   Dim front As Double
   Dim ff As Double
   Dim cc As Double
   Dim dd As Double
   Dim ii As Long
   Dim jj As Long
   Dim kk As Long
   Dim numerator As Double
   Dim den As Double
   Dim cd As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0 Or bb <= 0.0 Or 1.0 <= xx) Then
      retvalu = 1.0
   ElseIf ((aa + 1.0) / (aa + bb + 2.0) < xx) Then
      retvalu = 1.0 - betainc__1(bb, aa, 1.0 - xx)
   ElseIf (aa <= 0) Then
      retvalu = 0.0
   Else
      lbeta_ab = lbeta(aa, bb)
      front = Math.Exp(Math.Log(xx) * aa + Math.Log(1.0 - xx) * bb - _
               lbeta_ab) / aa
      ff = 1.0
      cc = 1.0
      dd = 0.0
      jj = 0
      ii = 0
      Do While (True)
         If (ii = 0) Then
            numerator = 1.0
         ElseIf (jj = 0) Then
            kk = ii / 2
            den = (aa + 2.0 * kk - 1.0) * (aa + 2.0 * kk)
            numerator = (kk * (bb - kk) * xx) / den
         Else
            kk = (ii - 1) / 2
            den = (aa + 2.0 * kk) * (aa + 2.0 * kk + 1.0)
            numerator = -((aa + kk) * (aa + bb + kk) * xx) / den
         End If
         dd = 1.0 + numerator * dd
         If (Math.Abs(dd) < Kw.DBLEPS * Kw.DBLEPS) Then
            dd = Kw.DBLEPS * Kw.DBLEPS
         End If
         dd = 1.0 / dd
         cc = 1.0 + numerator / cc
         If (Math.Abs(cc) < Kw.DBLEPS * Kw.DBLEPS) Then
            cc = Kw.DBLEPS * Kw.DBLEPS
         End If
         cd = cc * dd
         ff = ff * cd
         jj = 1 - ii
         If (Math.Abs(1.0 - cd) < Kw.DBLEPS) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (200 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = front * (ff - 1.0)
   End If
   betainc__1 = retvalu
End Function
Private Function lf_digamma_gt_zero(ByVal xx As Double) As Double
   Dim rec_xx_sqr As Double
   Dim shift As Double
   Dim sxx As Double
   Dim ii As Long
   Dim sumy As Double
   shift = 0.0
   sxx = xx
   Do While (sxx < 8.0)
      shift = shift - 1.0 / sxx
      sxx = sxx + 1.0
   Loop
   rec_xx_sqr = 1.0 / (sxx * sxx)
   sumy = 0.0
   For ii = 14 To 2 Step - 2
      sumy = sumy * rec_xx_sqr
      sumy = sumy - bernoulli(ii) / ii
   Next
   lf_digamma_gt_zero = (shift + Math.Log(sxx) - 1.0 / (2.0 * sxx) + _
            rec_xx_sqr * sumy)
End Function
Public Function digamma(ByVal xx As Double) As Double
   Dim sxx As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      If (Kw.isint(xx)) Then
         retvalu = Kw.DBLMAX
      Else
         sxx = 2.0 * xx
         retvalu = lf_digamma_gt_zero(1.0 - xx) - Kw.PI / Math.Tan(sxx)
      End If
   Else
      retvalu = lf_digamma_gt_zero(xx)
   End If
   digamma = retvalu
End Function
Public Function digammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   scvx_dx = 0.1
   scvx_xx = Math.Exp(yy)
   scvx_yy = yy - digamma(scvx_xx)
   For scvx_ii = 0 To 20
      scvx_xp = scvx_xx
      scvx_yp = scvx_yy
      scvx_xx = scvx_xx + scvx_dx
      If (Kw.iseq(scvx_xp, scvx_xx)) Then
         Exit For
      End If
      scvx_yy = yy - digamma(scvx_xx)
      If (Kw.iseq(scvx_yy, scvx_yp)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
   Next
   digammainv = scvx_xx
End Function
Private Function lf_digamma_gt_zero__1(ByVal xx As Double) As Double
   Dim gg As Double
   Dim aa_arr(10) As Double
   Dim sxx As Double
   Dim term As Double
   Dim lnarg As Double
   Dim numer As Double
   Dim denom As Double
   Dim ii As Long
   gg = 9.6565781537733158945718737389
   aa_arr(0) = +1.144005294538510956673085217E+4
   aa_arr(1) = -3.239880201523183350535979104E+4
   aa_arr(2) = +3.505145235055716665660834611E+4
   aa_arr(3) = -1.816413095412607026106469185E+4
   aa_arr(4) = +4.632329905366668184091382704E+3
   aa_arr(5) = -5.369767777033567805557478696E+2
   aa_arr(6) = +2.287544733951810076451548089E+1
   aa_arr(7) = -2.179257487388651155600822204E-1
   aa_arr(8) = +1.083148362725893688606893534E-4
   numer = 0.0
   denom = 1.0
   For ii = 8 To 0 Step - 1
      sxx = xx + ii
      term = aa_arr(ii) / sxx
      denom = denom + term
      numer = numer + term / sxx
   Next
   lnarg = (gg + xx - 0.5)
   lf_digamma_gt_zero__1 = Math.Log(lnarg) - (gg / lnarg) - numer / denom
End Function
Public Function digamma__1(ByVal xx As Double) As Double
   Dim sxx As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      If (Kw.isint(xx)) Then
         retvalu = Kw.DBLMAX
      Else
         sxx = 2.0 * xx
         retvalu = lf_digamma_gt_zero__1(1.0 - xx) - Kw.PI / Math.Tan(sxx)
      End If
   Else
      retvalu = lf_digamma_gt_zero__1(xx)
   End If
   digamma__1 = retvalu
End Function
Public Function factorialinv(ByVal yy As Double) As Double
   factorialinv = tgammainv(yy) - 1.0
End Function
Public Function facinv(ByVal yy As Double) As Double
   facinv = tgammainv(yy) - 1.0
End Function
Public Function hn(ByVal xx As Double) As Double
   Dim sum As Double
   Dim kk As Double
   Dim fxx As Double
   If (0.0 < xx) Then
      fxx = floor(xx)
      sum = 0.0
      For kk = fxx To 1 Step - 1
         sum = sum + 1.0 / kk
      Next
   Else
      sum = 0.0
   End If
   hn = sum
End Function
Public Function hn__1(ByVal xx As Double) As Double
   Dim yy As Double
   Dim retvalu As Double
   If (0.0 < xx) Then
      yy = 1.0 / (xx * xx)
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 / (30.0 * 8.0)) * _
               yy - 1.0 / (42.0 * 6.0)) * yy + 1.0 / (30.0 * 4.0)) * yy - _
               1.0 / (6.0 * 2.0)) * yy + Kw.EULER) + Math.Log(xx) + 0.5 / xx
   Else
      retvalu = 0.0
   End If
   hn__1 = retvalu
End Function
Public Function hnm(ByVal xx As Double, ByVal vv As Double) As Double
   Dim sum As Double
   Dim kk As Double
   Dim fxx As Double
   fxx = floor(xx)
   sum = 0.0
   For kk = fxx To 1 Step - 1
      sum = sum + 1.0 / Pow(kk, vv)
   Next
   hnm = sum
End Function
Public Function factorial(ByVal nn As Long) As Double
   ' local-use Vb6 lv_factorial_end
   ' local-use Vb6 lv_factorial_arr
   Dim ii As Long
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_factorial_end <= 0) Then
         lv_factorial_end = 6
         ReDim Preserve lv_factorial_arr(lv_factorial_end)
         lv_factorial_arr(0) = 1
         lv_factorial_arr(1) = 1
         lv_factorial_arr(2) = 2
         lv_factorial_arr(3) = 6
         lv_factorial_arr(4) = 24
         lv_factorial_arr(5) = 120
      End If
      If (lv_factorial_end <= nn) Then
         ii = lv_factorial_end
         lv_factorial_end = nn + 1
         ReDim Preserve lv_factorial_arr(lv_factorial_end)
         Do While (ii < lv_factorial_end)
            lv_factorial_arr(ii) = (ii * lv_factorial_arr(ii - 1))
            ii = ii + 1
         Loop
      End If
      retvalu = lv_factorial_arr(nn)
   End If
   factorial = retvalu
End Function
Public Function factorialdouble(ByVal nn As Long) As Double
   ' local-use Vb6 lv_factorial_b_end
   ' local-use Vb6 lv_factorial_b_arr
   Dim retvalu As Double
   Dim ii As Long
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_factorial_b_end <= 0) Then
         lv_factorial_b_end = 6
         ReDim Preserve lv_factorial_b_arr(lv_factorial_b_end)
         lv_factorial_b_arr(0) = 1
         lv_factorial_b_arr(1) = 1
         lv_factorial_b_arr(2) = 2
         lv_factorial_b_arr(3) = 3
         lv_factorial_b_arr(4) = 8
         lv_factorial_b_arr(5) = 15
      End If
      If (lv_factorial_b_end <= nn) Then
         ii = lv_factorial_b_end
         lv_factorial_b_end = nn + 1
         ReDim Preserve lv_factorial_b_arr(lv_factorial_b_end)
         Do While (ii < lv_factorial_b_end)
            lv_factorial_b_arr(ii) = ii * lv_factorial_b_arr(ii - 2)
            ii = ii + 1
         Loop
      End If
      retvalu = lv_factorial_b_arr(nn)
   End If
   factorialdouble = retvalu
End Function
Public Function fac(ByVal nn As Long) As Double
   fac = Kw.factorial(nn)
End Function
Public Function factorialt(ByVal n_things As Long, ByVal r_each As Long) _
         As Double
   Dim ii As Long
   Dim retvalu As Double
   retvalu = 1.0
   For ii = r_each + 1 To n_things
      retvalu = retvalu * ii
   Next
   factorialt = retvalu
End Function
Public Function comb(ByVal n_things As Long, ByVal r_each As Long) As Double
   Dim ii As Long
   Dim retvalu As Double
   If (r_each < 0 Or n_things < r_each) Then
      retvalu = 0.0
   Else
      If (2 * r_each < n_things) Then
         r_each = n_things - r_each
      End If
      retvalu = 1.0
      For ii = r_each + 1 To n_things
         retvalu = retvalu * ii
         retvalu = retvalu / (ii - r_each)
      Next
   End If
   comb = retvalu
End Function
Public Function perm(ByVal n_things As Long, ByVal r_each As Long) As Double
   perm = factorialt(n_things, n_things - r_each)
End Function
Public Function combination(ByVal n_things As Long, ByVal r_each As Long) _
         As Double
   combination = Kw.comb(n_things, r_each)
End Function
Public Function permutation(ByVal n_things As Long, ByVal r_each As Long) _
         As Double
   permutation = Kw.perm(n_things, r_each)
End Function
Public Function catalan(ByVal nn As Long) As Double
   ' local-use Vb6 lv_catalan_end
   ' local-use Vb6 lv_catalan_arr
   Dim kk As Long
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_catalan_end <= 0) Then
         lv_catalan_end = 1
         ReDim Preserve lv_catalan_arr(lv_catalan_end)
         lv_catalan_arr(0) = 1
      End If
      If (lv_catalan_end <= nn) Then
         kk = lv_catalan_end
         lv_catalan_end = nn + 1
         ReDim Preserve lv_catalan_arr(lv_catalan_end)
         Do While (kk < lv_catalan_end)
            lv_catalan_arr(kk) = (2.0 * (2.0 * kk - 1.0) * _
                     lv_catalan_arr(kk - 1) / (kk + 1.0))
            kk = kk + 1
         Loop
      End If
      retvalu = lv_catalan_arr(nn)
   End If
   catalan = retvalu
End Function
Public Function supercatalan(ByVal nn As Long) As Double
   ' local-use Vb6 lv_supercatalan_end
   ' local-use Vb6 lv_supercatalan_arr
   Dim kk As Long
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_supercatalan_end <= 0) Then
         lv_supercatalan_end = 3
         ReDim Preserve lv_supercatalan_arr(lv_supercatalan_end)
         lv_supercatalan_arr(0) = 1
         lv_supercatalan_arr(1) = 1
         lv_supercatalan_arr(2) = 1
      End If
      If (lv_supercatalan_end <= nn) Then
         kk = lv_supercatalan_end
         lv_supercatalan_end = nn + 1
         ReDim Preserve lv_supercatalan_arr(lv_supercatalan_end)
         Do While (kk < lv_supercatalan_end)
            lv_supercatalan_arr(kk) = (((6 * kk - 9) * _
                     lv_supercatalan_arr(kk - 1) - (kk - 3) * _
                     lv_supercatalan_arr(kk - 2)) / kk)
            kk = kk + 1
         Loop
      End If
      retvalu = lv_supercatalan_arr(nn)
   End If
   supercatalan = retvalu
End Function
Public Function bell(ByVal nn As Long) As Double
   ' local-use Vb6 lv_bell_end
   ' local-use Vb6 lv_bell_arr
   ' local-use Vb6 lv_bell_x_arr
   Dim jj As Long
   Dim kk As Long
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_bell_end <= 0) Then
         lv_bell_end = 3
         ReDim Preserve lv_bell_arr(lv_bell_end)
         ReDim Preserve lv_bell_x_arr(lv_bell_end - 1)
         lv_bell_arr(0) = 1
         lv_bell_arr(1) = 1
         lv_bell_arr(2) = 2
         lv_bell_x_arr(0) = 2
         lv_bell_x_arr(1) = 1
      End If
      If (lv_bell_end <= nn) Then
         kk = lv_bell_end
         lv_bell_end = nn + 1
         ReDim Preserve lv_bell_arr(lv_bell_end)
         ReDim Preserve lv_bell_x_arr(lv_bell_end - 1)
         Do While (kk < lv_bell_end)
            lv_bell_x_arr(kk - 1) = lv_bell_x_arr(0)
            For jj = kk - 2 To 0 Step - 1
               lv_bell_x_arr(jj) = lv_bell_x_arr(jj) + lv_bell_x_arr(jj + 1)
            Next
            lv_bell_arr(kk) = lv_bell_x_arr(0)
            kk = kk + 1
         Loop
      End If
      retvalu = lv_bell_arr(nn)
   End If
   bell = retvalu
End Function
Public Function bellx(ByVal xxn As Double) As Double
   Dim sum As Double
   Dim kk As Long
   Dim sum_prev As Double
   Dim den As Double
   kk = 0
   sum = 0.0
   den = 1.0
   Do While (True)
      kk = kk + 1
      den = den * kk
      sum_prev = sum
      sum = sum + Pow(kk, xxn) / den
      If (Kw.iseq(sum_prev, sum)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   bellx = sum / Kw.E
End Function
Public Function fubini(ByVal nn As Long) As Double
   Dim ii As Long
   Dim sum As Double
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   ElseIf (nn = 0) Then
      retvalu = 1
   Else
      sum = 1.0 / (2.0 * Kw.TWOLN * Kw.TWOLN)
      For ii = 2 To nn
         sum = sum * ii / Kw.TWOLN
      Next
      retvalu = Kw.round(sum)
   End If
   fubini = retvalu
End Function
Public Function d2lt_d1(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   If (0 <= yy And yy <= xx) Then
      retvalu = yy + (xx * (xx + 1)) / 2
   Else
      retvalu = -1
   End If
   d2lt_d1 = retvalu
End Function
Public Function d1lt_d2(ByVal nn As Long, ByRef ret_arr_p() As Long) As Long
   Dim basee As Long
   If (nn <= 0) Then
      ret_arr_p(0) = 0
      ret_arr_p(1) = 0
   Else
      basee = floorl((Sqr(1 + 8.0 * nn) - 1) / 2)
      ret_arr_p(1) = nn - basee * (basee + 1) / 2
      ret_arr_p(0) = basee
   End If
   d1lt_d2 = ret_arr_p(0)
End Function
Public Function d2ur_d1(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   Dim suma As Long
   If (0 <= xx And 0 <= yy) Then
      suma = (yy + xx)
      retvalu = suma * (suma + 1) / 2 + yy
   Else
      retvalu = -1
   End If
   d2ur_d1 = retvalu
End Function
Public Function d1ur_d2(ByVal nn As Long, ByRef ret_arr_p() As Long) As Long
   Dim basee As Long
   Dim y_coord As Long
   If (nn <= 0) Then
      ret_arr_p(0) = 0
      ret_arr_p(1) = 0
   Else
      basee = floorl((Sqr(1 + 8.0 * nn) - 1) / 2)
      y_coord = nn - basee * (basee + 1) / 2
      ret_arr_p(1) = y_coord
      ret_arr_p(0) = basee - y_coord
   End If
   d1ur_d2 = ret_arr_p(0)
End Function
Public Function d2diamond_d1(ByVal xx As Long, ByVal yy As Long) As Long
   Dim ss As Long
   Dim tt As Long
   Dim retvalu As Long
   If (0 = yy And xx = 0) Then
      retvalu = 0
   Else
      ss = Math.Abs(xx) + Math.Abs(yy)
      tt = 2 * ss * (ss - 1) + 1
      If (0 < xx) Then
         retvalu = tt + ss + yy - 1
      Else
         retvalu = tt + 3 * ss - yy - 1
      End If
   End If
   d2diamond_d1 = retvalu
End Function
Public Function d1diamond_d2(ByVal nn As Long, ByRef ret_arr_p() As Long) _
         As Long
   Dim ss As Long
   Dim ssq As Long
   Dim x_coord As Long
   If (nn <= 0) Then
      x_coord = 0
      ret_arr_p(1) = 0
   Else
      ss = floorl(Sqr(nn) / Kw.TWOSQRT)
      ssq = 2 * ss * ss
      If (nn <= ssq + 2 * ss) Then
         ret_arr_p(1) = ssq - nn + ss
         x_coord = ssq - nn
         If (ss < - x_coord) Then
            x_coord = -x_coord - 2 * ss
         End If
      Else
         ret_arr_p(1) = nn - ssq - 3 * ss - 1
         x_coord = nn - ssq - 2 * ss
         If (ss < x_coord) Then
            x_coord = -x_coord + 2 * ss + 2
         End If
      End If
   End If
   ret_arr_p(0) = x_coord
   d1diamond_d2 = x_coord
End Function
Public Function d2spiral_d1(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   If (xx = 0 And yy = 0) Then
      retvalu = 0
   ElseIf (Math.Abs(xx) <= Math.Abs(yy)) Then
      retvalu = (4 * yy - 1) * yy - xx
      If (yy < 0) Then
         retvalu = retvalu - 2 * (yy - xx)
      End If
   Else
      retvalu = (4 * xx - 1) * xx - yy
      If (0 < xx) Then
         retvalu = retvalu - 2 * (xx - yy)
      End If
   End If
   d2spiral_d1 = retvalu
End Function
Public Function d1spiral_d2(ByVal nn As Long, ByRef ret_arr_p() As Long) _
         As Long
   Dim sqrtnn As Long
   Dim newdd As Long
   Dim fxd As Long
   If (nn <= 0) Then
      ret_arr_p(0) = 0
      ret_arr_p(1) = 0
   Else
      sqrtnn = floorl(Sqr(nn))
      If (Kw.iseven(sqrtnn)) Then
         fxd = -sqrtnn / 2
      Else
         fxd = (sqrtnn + 1) / 2
      End If
      newdd = nn - sqrtnn * sqrtnn
      If (newdd <= sqrtnn) Then
         ret_arr_p(0) = fxd
         If (fxd < 0) Then
            ret_arr_p(1) = -fxd - newdd
         Else
            ret_arr_p(1) = -fxd + newdd + 1
         End If
      Else
         ret_arr_p(1) = fxd
         newdd = newdd - sqrtnn
         If (fxd < 0) Then
            ret_arr_p(0) = fxd + newdd
         Else
            ret_arr_p(0) = fxd - newdd
         End If
      End If
   End If
   d1spiral_d2 = ret_arr_p(0)
End Function
Public Function d2hypot_d1(ByVal xx As Long, ByVal yy As Long) As Long
   Dim retvalu As Long
   Dim xlim As Long
   Dim dist As Double
   Dim distsq As Long
   Dim count As Long
   Dim ixx As Long
   Dim nyy As Long
   Dim nyysq As Long
   Dim xmax As Long
   If (0 <= yy And yy <= xx) Then
      distsq = xx * xx + yy * yy
      dist = Sqr(distsq)
      xlim = floorl(dist / Kw.TWOSQRT)
      xmax = floorl(dist)
      count = 0
      For ixx = xlim To xmax
         nyysq = distsq - ixx * ixx
         nyy = ceill(Sqr(nyysq))
         If (ixx < nyy) Then
            count = count + ixx + 1
         Else
            count = count + nyy
            If (ixx < xx And nyy * nyy = nyysq) Then
               count = count + 1
            End If
         End If
      Next
      retvalu = count + (xlim) * (xlim + 1) / 2
   Else
      retvalu = -1
   End If
   d2hypot_d1 = retvalu
End Function
Public Function binomialx(ByVal xnn As Double, ByVal xkk As Double) As Double
   binomialx = Kw.tgamma(xnn + 1) / (Kw.tgamma(xkk + 1) * Kw.tgamma(xnn + _
            1 - xkk))
End Function
Public Function binomial(ByVal nn As Long, ByVal kk As Long) As Long
   ' local-use Vb6 lv_binom_arr
   ' local-use Vb6 lv_binom_end
   ' local-use Vb6 lv_binom_max
   Dim rz_ind As Long
   Dim lz_ind As Long
   Dim rr As Long
   Dim ul_ind As Long
   Dim retvalu As Long
   If (nn < kk Or nn < 0 Or kk < 0) Then
      retvalu = 0
   Else
      If (lv_binom_end <= 0) Then
         lv_binom_max = 2
         lv_binom_end = d2lt_d1(lv_binom_max, 0)
         ReDim Preserve lv_binom_arr(lv_binom_end)
         lv_binom_arr(0) = 1
         lv_binom_arr(1) = 1
         lv_binom_arr(2) = 1
      End If
      rr = lv_binom_max
      If (rr < nn + 1) Then
         lv_binom_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_binom_arr(lv_binom_end)
         Do While (rr <= nn)
            ul_ind = d2lt_d1(rr - 1, 0)
            lz_ind = ul_ind + rr
            lv_binom_arr(lz_ind) = 1
            rz_ind = lz_ind + rr
            Do While (lz_ind < rz_ind)
               lv_binom_arr(rz_ind) = lv_binom_arr(lz_ind)
               rz_ind = rz_ind - 1
               lz_ind = lz_ind + 1
               lv_binom_arr(lz_ind) = (lv_binom_arr(ul_ind) + _
                        lv_binom_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
            Loop
            rr = rr + 1
         Loop
         lv_binom_max = rr
      End If
      retvalu = lv_binom_arr(d2lt_d1(nn, kk))
   End If
   binomial = retvalu
End Function
Public Function eulerian(ByVal nn As Long, ByVal kk As Long) As Double
   ' local-use Vb6 lv_euler_arr
   ' local-use Vb6 lv_euler_end
   ' local-use Vb6 lv_euler_max
   Dim jj As Long
   Dim ii As Long
   Dim lz_ind As Long
   Dim rz_ind As Long
   Dim ul_ind As Long
   Dim retvalu As Double
   If (nn < kk Or nn < 0 Or kk < 0) Then
      retvalu = 0
   Else
      If (lv_euler_end <= 0) Then
         lv_euler_max = 3
         lv_euler_end = d2lt_d1(lv_euler_max, 0)
         ReDim Preserve lv_euler_arr(lv_euler_end)
         lv_euler_arr(0) = 0
         lv_euler_arr(1) = 1
         lv_euler_arr(2) = 0
         lv_euler_arr(3) = 1
         lv_euler_arr(4) = 1
         lv_euler_arr(5) = 0
      End If
      ii = lv_euler_max
      If (ii < nn + 1) Then
         lv_euler_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_euler_arr(lv_euler_end)
         Do While (ii <= nn)
            lz_ind = d2lt_d1(ii, 0)
            lv_euler_arr(lz_ind) = 1
            lv_euler_arr(lz_ind + ii) = 0
            rz_ind = lz_ind + ii - 1
            ul_ind = d2lt_d1(ii - 1, 0)
            jj = 1
            Do While (lz_ind < rz_ind)
               lv_euler_arr(rz_ind) = lv_euler_arr(lz_ind)
               lz_ind = lz_ind + 1
               lv_euler_arr(lz_ind) = ((ii - jj) * lv_euler_arr(ul_ind) + _
                        (jj + 1) * lv_euler_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               rz_ind = rz_ind - 1
               jj = jj + 1
            Loop
            ii = ii + 1
            lv_euler_max = ii
         Loop
      End If
      retvalu = lv_euler_arr(d2lt_d1(nn, kk))
   End If
   eulerian = retvalu
End Function
Public Function entringer(ByVal nn As Long, ByVal kk As Long) As Double
   ' local-use Vb6 lv_entringer_arr
   ' local-use Vb6 lv_entringer_max
   ' local-use Vb6 lv_entringer_end
   Dim ii As Long
   Dim inda As Long
   Dim jj As Long
   Dim retvalu As Double
   If (nn <= 0 Or kk < 0 Or nn < kk) Then
      retvalu = 0
   Else
      If (lv_entringer_end <= 0) Then
         lv_entringer_max = 1
         lv_entringer_end = d2lt_d1(lv_entringer_max, 0)
         ReDim Preserve lv_entringer_arr(lv_entringer_end)
         lv_entringer_arr(0) = 1
      End If
      jj = lv_entringer_max
      If (jj < nn + 1) Then
         lv_entringer_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_entringer_arr(lv_entringer_end)
         Do While (jj <= nn)
            inda = d2lt_d1(jj, 0)
            lv_entringer_arr(inda) = 0
            For ii = 1 To jj
               lv_entringer_arr(inda + ii) = lv_entringer_arr(inda - ii) _
                        + lv_entringer_arr(inda + ii - 1)
            Next
            jj = jj + 1
            lv_entringer_max = jj
         Loop
      End If
      retvalu = lv_entringer_arr(d2lt_d1(nn, kk))
   End If
   entringer = retvalu
End Function
Public Function zigzag(ByVal nn As Long) As Double
   zigzag = Kw.entringer(nn, nn)
End Function
Public Function zig(ByVal nn As Long) As Double
   zig = Kw.zigzag(2 * nn)
End Function
Public Function zag(ByVal nn As Long) As Double
   zag = Kw.zigzag(2 * nn - 1)
End Function
Public Function eulerx(ByVal nn As Long) As Double
   Dim retvalu As Double
   If (nn <= 0 Or Kw.isodd(nn)) Then
      retvalu = 0
   Else
      retvalu = Kw.entringer(nn, nn)
   End If
   eulerx = retvalu
End Function
Public Function ballot(ByVal xmm As Double, ByVal xnn As Double) As Double
   ballot = Math.Abs(xnn - xmm) / (xmm + xnn)
End Function
Public Function ballots(ByVal xmm As Double, ByVal xnn As Double) As Double
   Dim retvalu As Double
   If (xmm < xnn) Then
      retvalu = (xnn - xmm + 1.0) / (xnn + 1.0)
   Else
      retvalu = (xmm - xnn + 1.0) / (xmm + 1.0)
   End If
   ballots = retvalu
End Function
Public Function stirling1(ByVal nn As Long, ByVal kk As Long) As Double
   ' local-use Vb6 lv_stir_a_arr
   ' local-use Vb6 lv_stir_a_end
   ' local-use Vb6 lv_stir_a_max
   Dim col_k As Long
   Dim ul_ind As Long
   Dim cz_ind As Long
   Dim ii As Long
   Dim retvalu As Double
   If (nn < 0 Or kk < 0 Or nn < kk) Then
      retvalu = 0
   Else
      If (lv_stir_a_max <= 0) Then
         lv_stir_a_max = 2
         lv_stir_a_end = d2lt_d1(lv_stir_a_max, 0)
         ReDim Preserve lv_stir_a_arr(lv_stir_a_end)
         lv_stir_a_arr(0) = 1
         lv_stir_a_arr(1) = 0
         lv_stir_a_arr(2) = 1
      End If
      ii = lv_stir_a_max
      If (ii < nn + 1) Then
         lv_stir_a_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_stir_a_arr(lv_stir_a_end)
         Do While (ii <= nn)
            cz_ind = d2lt_d1(ii, 0)
            lv_stir_a_arr(cz_ind) = 0
            cz_ind = cz_ind + 1
            ul_ind = d2lt_d1(ii - 1, 0)
            For col_k = 1 To ii - 1
               lv_stir_a_arr(cz_ind) = (lv_stir_a_arr(ul_ind) - (ii - 1) _
                        * lv_stir_a_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               cz_ind = cz_ind + 1
            Next
            lv_stir_a_arr(cz_ind) = 1
            ii = ii + 1
            lv_stir_a_max = ii
         Loop
      End If
      retvalu = lv_stir_a_arr(d2lt_d1(nn, kk))
   End If
   stirling1 = retvalu
End Function
Public Function stirling2(ByVal nn As Long, ByVal kk As Long) As Double
   ' local-use Vb6 lv_stir_b_arr
   ' local-use Vb6 lv_stir_b_end
   ' local-use Vb6 lv_stir_b_max
   Dim col_k As Long
   Dim ul_ind As Long
   Dim cz_ind As Long
   Dim ii As Long
   Dim retvalu As Double
   If (nn < kk Or nn < 0 Or kk < 0) Then
      retvalu = 0
   Else
      If (lv_stir_b_end <= 0) Then
         lv_stir_b_max = 2
         lv_stir_b_end = d2lt_d1(lv_stir_b_max, 0)
         ReDim Preserve lv_stir_b_arr(lv_stir_b_end)
         lv_stir_b_arr(0) = 1
         lv_stir_b_arr(1) = 0
         lv_stir_b_arr(2) = 1
      End If
      ii = lv_stir_b_max
      If (ii < nn + 1) Then
         lv_stir_b_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_stir_b_arr(lv_stir_b_end)
         Do While (ii <= nn)
            cz_ind = d2lt_d1(ii, 0)
            lv_stir_b_arr(cz_ind) = 0
            cz_ind = cz_ind + 1
            ul_ind = d2lt_d1(ii - 1, 0)
            For col_k = 1 To ii - 1
               lv_stir_b_arr(cz_ind) = (lv_stir_b_arr(ul_ind) + col_k * _
                        lv_stir_b_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               cz_ind = cz_ind + 1
            Next
            lv_stir_b_arr(cz_ind) = 1
            ii = ii + 1
            lv_stir_b_max = ii
         Loop
      End If
      retvalu = lv_stir_b_arr(d2lt_d1(nn, kk))
   End If
   stirling2 = retvalu
End Function
Public Function bernoulli(ByVal nn As Long) As Double
   ' local-use Vb6 lv_bern_n_arr
   ' local-use Vb6 lv_bern_d_arr
   ' local-use Vb6 lv_bern_end
   Dim retvalu As Double
   Dim sz_ind As Long
   Dim coeff As Double
   Dim sumn As Double
   Dim sumd As Double
   Dim jj As Long
   Dim ii As Long
   Dim gdn As Double
   Dim nsumn As Double
   Dim nsumd As Double
   Dim xkk As Double
   Dim nnhalf As Long
   If (nn = 1) Then
      retvalu = -0.5
   ElseIf (nn < 0 Or Kw.isodd(nn)) Then
      retvalu = 0.0
   Else
      If (lv_bern_end <= 0) Then
         lv_bern_end = 3
         ReDim Preserve lv_bern_n_arr(lv_bern_end)
         ReDim Preserve lv_bern_d_arr(lv_bern_end)
         lv_bern_n_arr(0) = 1
         lv_bern_n_arr(1) = 1
         lv_bern_n_arr(2) = -1
         lv_bern_d_arr(0) = 1
         lv_bern_d_arr(1) = 6
         lv_bern_d_arr(2) = 30
      End If
      nnhalf = floorl(nn / 2)
      If (lv_bern_end <= nnhalf) Then
         ii = lv_bern_end
         lv_bern_end = nnhalf + 1
         ReDim Preserve lv_bern_n_arr(lv_bern_end)
         ReDim Preserve lv_bern_d_arr(lv_bern_end)
         Do While (ii < lv_bern_end)
            sz_ind = 2 * ii
            coeff = ((sz_ind + 1) * sz_ind) / 2
            sumn = 1.0 - sz_ind
            sumd = 2.0
            For jj = 1 To ii - 1
               nsumn = Kw.round(sumn * lv_bern_d_arr(jj) + sumd * coeff * _
                        lv_bern_n_arr(jj))
               nsumd = Kw.round(sumd * lv_bern_d_arr(jj))
               gdn = gcd(nsumn, nsumd)
               sumn = nsumn / gdn
               sumd = nsumd / gdn
               xkk = 2 * jj
               coeff = coeff * (sz_ind - xkk + 1.0) / (xkk + 1.0)
               coeff = coeff * (sz_ind - xkk) / (xkk + 2.0)
               coeff = Kw.round(coeff)
            Next
            sumd = sumd * (sz_ind + 1)
            gdn = Kw.gcd(sumn, sumd)
            lv_bern_n_arr(ii) = -sumn / gdn
            lv_bern_d_arr(ii) = sumd / gdn
            ii = ii + 1
         Loop
      End If
      retvalu = lv_bern_n_arr(nnhalf) / lv_bern_d_arr(nnhalf)
   End If
   bernoulli = retvalu
End Function
Public Function bernoullin(ByVal nn As Long) As Long
   ' local-use Vb6 lv_bern_n_arr
   ' local-use Vb6 lv_bern_d_arr
   Dim retvalu As Long
   If (nn = 1) Then
      retvalu = -1
   ElseIf (Kw.isodd(nn) Or nn < 0) Then
      retvalu = 0
   Else
      retvalu = Kw.bernoulli(nn)
      retvalu = lv_bern_n_arr(nn / 2)
   End If
   bernoullin = retvalu
End Function
Public Function bernoullid(ByVal nn As Long) As Long
   ' local-use Vb6 lv_bern_n_arr
   ' local-use Vb6 lv_bern_d_arr
   Dim retvalu As Long
   If (nn = 1) Then
      retvalu = 2
   ElseIf (Kw.isodd(nn) Or nn < 0) Then
      retvalu = 1
   Else
      retvalu = Kw.bernoulli(nn)
      retvalu = lv_bern_d_arr(nn / 2)
   End If
   bernoullid = retvalu
End Function
Public Function birthday(ByVal xnn As Double, ByVal xrr As Double) As Double
   Dim prob As Double
   Dim ii As Long
   prob = 1.0
   For ii = 1 To xrr - 1
      prob = prob * (xnn - ii) / xnn
   Next
   birthday = prob
End Function
Public Function birthdayinv(ByVal xnn As Double, ByVal xprob As Double) _
         As Double
   Dim xrr As Double
   Dim cprob As Double
   cprob = 1.0
   xrr = 1.0
   Do While (xprob < cprob)
      cprob = cprob * (xnn - xrr) / xnn
      xrr = xrr + 1
   Loop
   birthdayinv = xrr
End Function
Public Function n2perm(ByVal nth As Long, ByVal nn As Long, ByRef _
         ret_perm_arr_p() As Long) As Long
   Dim ii As Long
   Dim jj As Long
   Dim kk As Long
   Dim nthmod As Long
   Dim pat_arr() As Long
   Dim source_arr() As Long
   Dim sz_ind As Long
   ReDim Preserve pat_arr(nn)
   ReDim Preserve source_arr(nn)
   nthmod = Kw.modulo(nth, factorial(nn))
   kk = nthmod
   For ii = 1 To nn
      pat_arr(nn - ii) = kk Mod ii
      kk = floor(kk / ii)
      source_arr(ii - 1) = ii - 1
   Next
   For ii = 0 To nn - 1
      sz_ind = pat_arr(ii)
      ret_perm_arr_p(ii) = source_arr(sz_ind)
      For jj = sz_ind To nn - ii - 2
         source_arr(jj) = source_arr(jj + 1)
      Next
   Next
   n2perm = nthmod
End Function
Public Function n2comb(ByVal nth As Long, ByVal nn As Long, ByVal rr As _
         Long, ByRef ret_comb_arr_p() As Long) As Long
   Dim kk As Long
   Dim cc As Long
   Dim qq As Long
   Dim ss As Long
   Dim pp As Long
   Dim nthmod As Long
   nthmod = Kw.modulo(nth, Kw.comb(nn, rr))
   kk = Kw.comb(nn, rr) - nthmod
   For ss = 0 To rr - 1
      pp = rr - ss
      cc = 1
      qq = 1
      Do While (cc < kk)
         kk = kk - cc
         cc = (cc * pp) / qq
         qq = qq + 1
         pp = pp + 1
      Loop
      ret_comb_arr_p(ss) = nn - pp
   Next
   n2comb = nthmod
End Function
Public Function n2perm_print(ByVal nth As Long, ByVal nn As Long) As Long
   Dim perm_arr() As Long
   Dim jj As Long
   ReDim Preserve perm_arr(nn)
   jj = n2perm(nth, nn, perm_arr)
   Call print_array(nn, perm_arr)
   n2perm_print = jj
End Function
Public Function n2comb_print(ByVal nth As Long, ByVal nn As Long, ByVal _
         rr As Long) As Long
   Dim comb_arr() As Long
   Dim jj As Long
   ReDim Preserve comb_arr(rr)
   jj = n2comb(nth, nn, rr, comb_arr)
   Call print_array(rr, comb_arr)
   n2comb_print = jj
End Function
Public Function pochhammer(ByVal nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim ii As Long
   If (0 < nn) Then
      retvalu = xx
      For ii = 1 To nn
         retvalu = retvalu * (xx + ii)
      Next
   ElseIf (nn < 0) Then
      retvalu = xx
      For ii = -1 To nn Step - 1
         retvalu = retvalu * (xx + ii)
      Next
   Else
      retvalu = 1.0
   End If
   pochhammer = retvalu
End Function
Public Function days_in_month(ByVal g_year As Long, ByVal g_month As _
         Long) As Long
   Dim retvalu As Long
   If (g_month = 2) Then
      If (Kw.isleapyear(g_year)) Then
         retvalu = 29
      Else
         retvalu = 28
      End If
   ElseIf ((6 * g_month + 1) Mod 11 < 5) Then
      retvalu = 30
   Else
      retvalu = 31
   End If
   days_in_month = retvalu
End Function
Public Function sec2dhms(ByVal seconds As Double) As Double
   Dim dy As Double
   Dim hr As Double
   Dim mn As Double
   Dim tm As Double
   Dim sg As Double
   If (seconds < 0.0) Then
      sg = -1.0
   Else
      sg = 1.0
   End If
   dy = floor(seconds * Kw.SECOND / Kw.EARTH_SOLARDAY)
   tm = (seconds * Kw.SECOND / Kw.EARTH_SOLARDAY - dy) * _
            Kw.EARTH_SOLARDAY / Kw.HOUR
   hr = floor(tm)
   tm = (tm - hr) * Kw.HOUR / Kw.MINUTE
   mn = floor(tm)
   tm = (tm - mn) * Kw.MINUTE / Kw.SECOND
   sec2dhms = dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0
End Function
Public Function day2dhms(ByVal dayfrac As Double) As Double
   Dim dy As Double
   Dim hr As Double
   Dim mn As Double
   Dim tm As Double
   Dim sg As Double
   If (dayfrac < 0.0) Then
      sg = -1.0
   Else
      sg = 1.0
   End If
   dy = floor(dayfrac)
   tm = (dayfrac - dy) * Kw.EARTH_SOLARDAY / Kw.HOUR
   hr = floor(tm)
   tm = (tm - hr) * Kw.HOUR / Kw.MINUTE
   mn = floor(tm)
   tm = (tm - mn) * Kw.MINUTE / Kw.SECOND
   day2dhms = dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0
End Function
Public Function day2dhmsinv(ByVal xx_hms As Double) As Double
   Dim dy As Double
   Dim hr As Double
   Dim mn As Double
   Dim tm As Double
   dy = floor(xx_hms)
   tm = (xx_hms - dy) * 100.0
   hr = floor(tm)
   tm = (tm - hr) * 100.0
   mn = floor(tm)
   tm = (tm - mn) * 100.0
   day2dhmsinv = dy + (hr * Kw.HOUR + mn * Kw.MINUTE + tm * Kw.SECOND) / _
            Kw.EARTH_SOLARDAY
End Function
Public Function hms2day(ByVal hourx As Double, ByVal minutex As Double, _
         ByVal secondx As Double) As Double
   hms2day = (secondx * Kw.SECOND + minutex * Kw.MINUTE + hourx * _
            Kw.HOUR) / Kw.EARTH_SOLARDAY
End Function
Public Function hour2day(ByVal hourx As Double) As Double
   hour2day = hourx * Kw.HOUR / Kw.EARTH_SOLARDAY
End Function
Public Function day2hour(ByVal dayx As Double) As Double
   day2hour = dayx * Kw.EARTH_SOLARDAY / Kw.HOUR
End Function
Public Function jd2kwt(ByVal jjdtime As Double) As Double
   jd2kwt = (jjdtime * Kw.JDAY - Kw.JDSEC_AT_0KWT) / Kw.KWT
End Function
Public Function jd2j2k(ByVal jjdtime As Double) As Double
   jd2j2k = (jjdtime * Kw.JDAY - Kw.JDSEC_AT_0J2K) / Kw.J2KDAY
End Function
Public Function jd2uet(ByVal jjdtime As Double) As Double
   jd2uet = (jjdtime * Kw.JDAY - Kw.JDSEC_AT_0UET) / Kw.UET
End Function
Public Function kwt2jd(ByVal kwttime As Double) As Double
   kwt2jd = (kwttime * Kw.KWT + Kw.JDSEC_AT_0KWT) / Kw.JDAY
End Function
Public Function uet2jd(ByVal uettime As Double) As Double
   uet2jd = (uettime * Kw.UET + Kw.JDSEC_AT_0UET) / Kw.JDAY
End Function
Public Function j2k2jd(ByVal jtwoktm As Double) As Double
   j2k2jd = (jtwoktm * Kw.J2KDAY + Kw.JDSEC_AT_0J2K) / Kw.JDAY
End Function
Public Function j2k2kwt(ByVal jtwoktm As Double) As Double
   j2k2kwt = jd2kwt(j2k2jd(jtwoktm))
End Function
Public Function j2k2uet(ByVal jtwoktm As Double) As Double
   j2k2uet = jd2uet(j2k2jd(jtwoktm))
End Function
Public Function kwt2j2k(ByVal kwttime As Double) As Double
   kwt2j2k = jd2j2k(kwt2jd(kwttime))
End Function
Public Function kwt2uet(ByVal kwttime As Double) As Double
   kwt2uet = jd2uet(kwt2jd(kwttime))
End Function
Public Function uet2kwt(ByVal uettime As Double) As Double
   uet2kwt = jd2kwt(uet2jd(uettime))
End Function
Public Function uet2j2k(ByVal uettime As Double) As Double
   uet2j2k = jd2j2k(uet2jd(uettime))
End Function
Public Function jd2dow(ByVal jjd As Double) As Long
   Dim jjtemp As Long
   jjtemp = floor(jjd + 1.5)
   jd2dow = jjtemp Mod 7
End Function
Public Function j2k2dow(ByVal jtwok As Double) As Long
   Dim jjtemp As Long
   jjtemp = floor(jtwok + 6.5)
   j2k2dow = jjtemp Mod 7
End Function
Public Function ymd2doy(ByVal g_year As Long, ByVal g_month As Long, _
         ByVal g_daymon As Double) As Double
   Dim delta As Double
   If (2 < g_month) Then
      delta = floor(30.6001 * g_month - 32.3)
      If (Kw.isleapyear(g_year)) Then
         delta = delta + 1
      End If
   ElseIf (g_month = 2) Then
      delta = 31
   Else
      delta = 0
   End If
   ymd2doy = delta + g_daymon
End Function
Public Function ymd2j2k__1(ByVal g_year As Double, ByVal g_month As _
         Double, ByVal g_day As Double) As Double
   Dim yr As Double
   Dim mn As Double
   Dim jtwok As Double
   Dim jcen As Double
   Dim dayoffset As Double
   yr = g_year - Kw.GYEAR_AT_0J2K
   mn = g_month
   If (mn < 3) Then
      mn = mn + Kw.MONTHS_IN_YEAR
      yr = yr - 1
   End If
   jcen = floor(yr / 100)
   dayoffset = jcen - floor(jcen / 4.0) + 31.3
   jtwok = (floor(yr * Kw.JYEAR / Kw.JDAY) + floor(30.6001 * mn - _
            dayoffset) + g_day - 1.5)
   ymd2j2k__1 = jtwok
End Function
Public Function ymd2j2k(ByVal g_year As Double, ByVal g_month As Double, _
         ByVal g_day As Double) As Double
   Dim yr As Double
   Dim mn As Double
   Dim jtwok As Double
   Dim jcen As Long
   yr = g_year - Kw.GYEAR_AT_0J2K
   mn = g_month
   jcen = floor((yr - 1) / 100)
   jtwok = (floor(yr * Kw.JYEAR / Kw.JDAY - 0.001) + floor(jcen / 4.0) - _
            jcen + ymd2doy(yr, mn, g_day) - 0.5)
   ymd2j2k = jtwok
End Function
Public Function ymd2jd(ByVal g_year As Double, ByVal g_month As Double, _
         ByVal g_day As Double) As Double
   ymd2jd = j2k2jd(ymd2j2k(g_year, g_month, g_day))
End Function
Public Function ymd2dow(ByVal g_year As Long, ByVal g_month As Long, _
         ByVal g_daymon As Double) As Long
   ymd2dow = jd2dow(ymd2jd(g_year, g_month, g_daymon))
End Function
Public Function doomsday(ByVal g_year As Long) As Long
   Dim cc As Long
   Dim yy As Long
   Dim lps As Long
   Dim anchor As Long
   Dim retvalu As Long
   cc = floor(g_year / 100)
   anchor = (cc Mod 4) * 5 + 2
   yy = g_year Mod 100
   lps = floor(yy / 4)
   retvalu = (anchor + yy + lps) Mod 7
   doomsday = retvalu
End Function
Public Function jd2ymdhms(ByVal jjulid As Double) As Double
   ' local-use Vb6 lv_ymdhms_arr
   Dim jcent As Long
   Dim bbdays As Long
   Dim bdiff As Long
   Dim g_years As Long
   Dim month_next As Long
   Dim ftime_frac As Double
   Dim dtime_rem As Double
   Dim ijulian As Long
   lv_ymdhms_arr(LC_GD_JD) = jjulid
   ftime_frac = Kw.frac(jjulid + 0.5)
   ijulian = floor(jjulid + 0.5)
   jcent = floor(((ijulian - 60.5) * Kw.JDAY - Kw.JDSEC_AT_0GREGORIAN) / _
            (100.0 * Kw.GYEAR))
   bbdays = ijulian + jcent - floor(jcent / 4.0)
   g_years = floor((bbdays + 1399.9) * Kw.JDAY / Kw.JYEAR)
   bdiff = bbdays - floor(g_years * Kw.JYEAR / Kw.JDAY) + 1522
   month_next = floor(bdiff / 30.6001)
   dtime_rem = bdiff - floor(30.6001 * month_next) + ftime_frac
   lv_ymdhms_arr(LC_GD_YEAR) = g_years - 4716.0
   If (13 < month_next) Then
      lv_ymdhms_arr(LC_GD_MONTH) = month_next - 13
   Else
      lv_ymdhms_arr(LC_GD_MONTH) = month_next - 1
   End If
   If (lv_ymdhms_arr(LC_GD_MONTH) < 3) Then
      lv_ymdhms_arr(LC_GD_YEAR) = lv_ymdhms_arr(LC_GD_YEAR) + 1
   End If
   lv_ymdhms_arr(LC_GD_DAY) = floor(dtime_rem)
   dtime_rem = Kw.EARTH_SOLARDAY / Kw.HOUR * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_HOUR) = floor(dtime_rem)
   dtime_rem = Kw.HOUR / Kw.MINUTE * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_MIN) = floor(dtime_rem)
   dtime_rem = Kw.MINUTE / Kw.SECOND * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_SEC) = dtime_rem
   lv_ymdhms_arr(LC_GD_DOW) = floor(Kw.fmod(ijulian + 1.0, 7.0))
   dtime_rem = (lv_ymdhms_arr(LC_GD_MONTH) * 100.0 + _
            lv_ymdhms_arr(LC_GD_DAY) + lv_ymdhms_arr(LC_GD_HOUR) / 100.0 _
            + lv_ymdhms_arr(LC_GD_MIN) / 10000.0 + _
            lv_ymdhms_arr(LC_GD_SEC) / 1000000.0)
   ftime_frac = lv_ymdhms_arr(LC_GD_YEAR) * 10000.0
   If (ftime_frac < 0.0) Then
      lv_ymdhms_arr(LC_GD_NUM) = ftime_frac - dtime_rem
   Else
      lv_ymdhms_arr(LC_GD_NUM) = ftime_frac + dtime_rem
   End If
   jd2ymdhms = lv_ymdhms_arr(LC_GD_NUM)
End Function
Public Function j2k2ymdhms(ByVal jtwokd As Double) As Double
   j2k2ymdhms = jd2ymdhms(j2k2jd(jtwokd))
End Function
Public Function ymdhms_get(ByVal indexp As Long) As Double
   ' local-use Vb6 lv_ymdhms_arr
   Dim retvalu As Double
   If (LC_GD_YEAR <= indexp And indexp < LC_GD_CNT) Then
      retvalu = lv_ymdhms_arr(indexp)
   Else
      retvalu = -1
   End If
   ymdhms_get = retvalu
End Function
Public Function jd2ymdhmsinv() As Double
   ' local-use Vb6 lv_ymdhms_arr
   jd2ymdhmsinv = ymd2jd(lv_ymdhms_arr(LC_GD_YEAR), _
            lv_ymdhms_arr(LC_GD_MONTH), lv_ymdhms_arr(LC_GD_DAY)) + _
            hms2day(lv_ymdhms_arr(LC_GD_HOUR), lv_ymdhms_arr(LC_GD_MIN), _
            lv_ymdhms_arr(LC_GD_SEC)) * Kw.EARTH_SOLARDAY / Kw.JDAY
End Function
Public Function jd264_print(ByVal jjulid As Double) As Double
   Call jd2ymdhms(jjulid)
   Call base_out_print(ymdhms_get(LC_GD_YEAR), 64)
   Call base_out_print(ymdhms_get(LC_GD_MONTH), 64)
   Call base_out_print(ymdhms_get(LC_GD_DAY), 64)
   Call base_out_print(ymdhms_get(LC_GD_HOUR), 64)
   Call base_out_print(ymdhms_get(LC_GD_MIN), 64)
   Call base_outf_print(ymdhms_get(LC_GD_SEC), 64)
   jd264_print = jjulid
End Function
Public Function ymdhms2jd(ByVal ymdhmsx As Double) As Double
   Dim xx_arr(LC_GD_CNT) As Double
   Dim ys As Double
   ys = ymdhmsx * (1.0 + Kw.DBLEPS)
   xx_arr(LC_GD_YEAR) = floor(ys / 10000.0)
   If (ys < 0) Then
      ys = -ys
   End If
   xx_arr(LC_GD_MONTH) = Kw.fmodu(floor(ys / 100.0), 100.0)
   xx_arr(LC_GD_DAY) = Kw.fmodu(floor(ys), 100.0)
   xx_arr(LC_GD_HOUR) = Kw.fmodu(floor(ys * 100.0), 100.0)
   xx_arr(LC_GD_MIN) = Kw.fmodu(floor(ys * 10000.0), 100.0)
   xx_arr(LC_GD_SEC) = Kw.frac(ys * 10000.0) * 100.0
   ymdhms2jd = ymd2jd(xx_arr(LC_GD_YEAR), xx_arr(LC_GD_MONTH), _
            xx_arr(LC_GD_DAY)) + hms2day(xx_arr(LC_GD_HOUR), _
            xx_arr(LC_GD_MIN), xx_arr(LC_GD_SEC)) * Kw.EARTH_SOLARDAY / _
            Kw.JDAY
End Function
Public Function ymdhms2j2k(ByVal ymdhmsx As Double) As Double
   ymdhms2j2k = jd2j2k(ymdhms2jd(ymdhmsx))
End Function
Public Function clocksec(ByVal secnds As Double) As Double
   clocksec = Kw.frac(secnds / Kw.MINUTE) * Kw.TAU
End Function
Public Function clockmin(ByVal secnds As Double) As Double
   clockmin = Kw.frac(secnds / Kw.HOUR) * Kw.TAU
End Function
Public Function clockhour(ByVal secnds As Double) As Double
   clockhour = Kw.frac(secnds / (Kw.EARTH_SOLARDAY / 2)) * Kw.TAU
End Function
Public Function clocksum(ByVal secnds As Double) As Double
   Dim sc As Double
   Dim mn As Double
   Dim hr As Double
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   clocksum = Kw.dist(sc - mn, Kw.TAU) + Kw.dist(hr - mn, Kw.TAU) + _
            Kw.dist(sc - hr, Kw.TAU)
End Function
Public Function clockstdev(ByVal secnds As Double) As Double
   Dim sc As Double
   Dim mn As Double
   Dim hr As Double
   Dim da As Double
   Dim db As Double
   Dim dc As Double
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   da = Kw.dist(sc - mn, Kw.TAU)
   db = Kw.dist(hr - mn, Kw.TAU)
   dc = Kw.dist(sc - hr, Kw.TAU)
   clockstdev = Sqr((da * da + db * db + dc * dc - Kw.square(da + db + _
            dc) / 3.0) / 2.0)
End Function
Public Function date_easter(ByVal g_year As Long) As Long
   Dim century As Long
   Dim ii As Long
   Dim dow As Long
   Dim kk As Long
   Dim jj As Long
   Dim skipped_leap As Long
   Dim modmet As Long
   Dim leap_years As Long
   century = floor(g_year / 100)
   modmet = g_year Mod LC_YEAR_PER_METONIC
   skipped_leap = century - floor(century / 4)
   leap_years = floor(g_year / 4)
   kk = floor((century + 8) / 25 - 1)
   jj = floor((century - kk) / 3)
   ii = (skipped_leap - jj + LC_YEAR_PER_METONIC * modmet + 15) Mod 30
   If (28 < ii Or (ii = 28 And 10 < modmet)) Then
      ii = ii - 1
   End If
   dow = (g_year + leap_years + ii + 2 - skipped_leap) Mod 7
   date_easter = ii - dow + 28
End Function
Public Function date_rosh_hashanah(ByVal g_year As Long) As Double
   Dim aa As Long
   Dim dos As Double
   Dim day_of_september As Long
   Dim parts As Double
   Dim doww As Long
   Dim am As Double
   aa = (12 * g_year + 12) Mod LC_YEAR_PER_METONIC
   am = round(Kw.MOON_MONTH / Kw.LX_HALAQIM) * aa - 1565.0 * g_year
   dos = floor(g_year / 100) - floor(g_year / 400) - 2 + (g_year Mod 4) / _
            4.0 + (am - 445405) / (LC_YEAR_PER_METONIC * _
            Kw.EARTH_SOLARDAY / LX_HALAQIM)
   day_of_september = floor(dos)
   parts = (dos - day_of_september) * Kw.EARTH_SOLARDAY / LX_HALAQIM
   doww = ymd2dow(g_year, 9, day_of_september)
   If (doww = 0 Or doww = 3 Or doww = 5) Then
      day_of_september = day_of_september + 1
   ElseIf (doww = 1 And 11 < aa And 23269 <= parts) Then
      day_of_september = day_of_september + 1
   ElseIf (doww = 2 And 6 < aa And 16404 <= parts) Then
      day_of_september = day_of_september + 2
   End If
   date_rosh_hashanah = day_of_september - 0.25
End Function
Public Function jewish2jdx(ByVal hebyear As Long) As Double
   Dim months_el As Long
   Dim halaqims_el As Long
   Dim hour_el As Long
   Dim hq_left As Long
   Dim days_left As Long
   Dim alt_days As Long
   Dim alt_dow As Long
   Dim hymod As Long
   hymod = (hebyear - 1) Mod LC_YEAR_PER_METONIC
   months_el = (235 * floor((hebyear - 1) / LC_YEAR_PER_METONIC) + 12 * _
            hymod + floor((7 * hymod + 1) / LC_YEAR_PER_METONIC))
   halaqims_el = 204 + (793 * (months_el Mod LC_HALAQIM_PER_HOUR))
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el / _
            LC_HALAQIM_PER_HOUR) + floor(halaqims_el / LC_HALAQIM_PER_HOUR))
   days_left = floor(hour_el / (Kw.EARTH_SOLARDAY / Kw.HOUR)) + 1 + 29 * _
            months_el
   alt_days = days_left + 347996
   alt_dow = (alt_days Mod Kw.iround(Kw.WEEK / Kw.EARTH_SOLARDAY))
   hq_left = (halaqims_el Mod LC_HALAQIM_PER_HOUR)
   hq_left = hq_left + Kw.EARTH_SOLARDAY * Kw.frac(hour_el * Kw.HOUR / _
            Kw.EARTH_SOLARDAY) / LX_HALAQIM
   If (19440 <= hq_left) Then
      If (0 = alt_dow Or 2 = alt_dow Or 4 = alt_dow) Then
         alt_days = alt_days + 2
      Else
         alt_days = alt_days + 1
      End If
   ElseIf (0 = alt_dow) Then
      If (9924 <= hq_left) Then
         If (Not isjewishleap(hebyear)) Then
            alt_days = alt_days + 2
         End If
      End If
   ElseIf (6 = alt_dow) Then
      If (16789 <= hq_left And isjewishleap(hebyear - 1)) Then
         alt_days = alt_days + 1
      End If
   ElseIf (1 = alt_dow Or 3 = alt_dow Or 5 = alt_dow) Then
      alt_days = alt_days + 1
   End If
   jewish2jdx = alt_days + 0.25
End Function
Public Function isjewishleap(ByVal hebyear As Long) As Boolean
   isjewishleap = (7 * hebyear + 1) Mod LC_YEAR_PER_METONIC < 7
End Function
Public Function date_pesach(ByVal g_year As Long) As Double
   Dim rh As Double
   rh = date_rosh_hashanah(g_year)
   date_pesach = rh + 21
End Function
Public Function g2jewish(ByVal g_year As Long) As Long
   g2jewish = g_year + 3761
End Function
Public Function jewish2g(ByVal hebyear As Long) As Long
   jewish2g = hebyear - 3760
End Function
Public Function jewish_months_in_year(ByVal hebyear As Long) As Long
   Dim miy As Long
   If (isjewishleap(hebyear)) Then
      miy = 13
   Else
      miy = 12
   End If
   jewish_months_in_year = miy
End Function
Public Function jewish_yearlength(ByVal hebyear As Long) As Long
   Dim g_year As Long
   Dim retvalu As Long
   g_year = jewish2g(hebyear - 1)
   retvalu = (floor(Kw.JYEAR / Kw.JDAY) + (date_rosh_hashanah(g_year + 1) _
            - date_rosh_hashanah(g_year)))
   If (Kw.isleapyear(g_year + 1)) Then
      retvalu = retvalu + 1
   End If
   jewish_yearlength = retvalu
End Function
Public Function jewish2jd(ByVal hebyear As Long) As Double
   Dim gregyear As Long
   gregyear = jewish2g(hebyear - 1)
   jewish2jd = ymd2jd(gregyear, 9, date_rosh_hashanah(gregyear))
End Function
Public Function isjewish8short(ByVal hebyear As Long) As Boolean
   Dim remten As Long
   remten = jewish_yearlength(hebyear) Mod 10
   isjewish8short = remten <> 5
End Function
Public Function isjewish9short(ByVal hebyear As Long) As Boolean
   Dim remten As Long
   remten = jewish_yearlength(hebyear) Mod 10
   isjewish9short = remten = 3
End Function
Public Function jewish_monthlength(ByVal hebyear As Long, ByVal hebmonth _
         As Long) As Long
   Dim retvalu As Long
   retvalu = 30
   If (hebmonth < 1 Or 13 < hebmonth) Then
      retvalu = 0
   ElseIf (hebmonth < 8) Then
      If (Kw.iseven(hebmonth)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 8) Then
      If (isjewish8short(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 9) Then
      If (isjewish9short(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 10) Then
      retvalu = 29
   ElseIf (hebmonth = 11) Then
      retvalu = 30
   ElseIf (hebmonth = 12) Then
      If (Not isjewishleap(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 13 And isjewishleap(hebyear)) Then
      retvalu = 29
   Else
      retvalu = 0
   End If
   jewish_monthlength = retvalu
End Function
Public Function jewish_monthbegin(ByVal hebyear As Long, ByVal hmonth As _
         Long) As Long
   Dim g_year As Long
   Dim g_month As Long
   Dim hm As Long
   Dim gdate As Double
   g_year = jewish2g(hebyear - 1)
   g_month = 9
   If (hmonth < Kw.JEWISH_FIRST_MONTH) Then
      g_year = g_year + 1
      gdate = date_rosh_hashanah(g_year)
      For hm = Kw.JEWISH_FIRST_MONTH - 1 To hmonth Step - 1
         g_month = g_month - 1
         gdate = gdate + (days_in_month(g_year, g_month) - _
                  jewish_monthlength(hebyear, hm))
      Next
   Else
      gdate = date_rosh_hashanah(g_year)
      For hm = Kw.JEWISH_FIRST_MONTH To hmonth - 1
         gdate = gdate - (days_in_month(g_year, g_month) - _
                  jewish_monthlength(hebyear, hm))
         g_month = g_month + 1
         If (Kw.MONTHS_IN_YEAR < g_month) Then
            g_month = 1
            g_year = g_year + 1
         End If
      Next
   End If
   jewish_monthbegin = gdate
End Function
Public Function jewishymd2jd(ByVal hebyear As Long, ByVal hebmonth As _
         Long, ByVal hebday As Double) As Double
   Dim jds As Double
   Dim hfirst As Long
   Dim hmon As Long
   Dim moninyear As Long
   moninyear = jewish_months_in_year(hebyear)
   If (1 <= hebmonth And hebmonth <= moninyear) Then
      jds = jewish2jd(hebyear)
      hfirst = Kw.JEWISH_FIRST_MONTH
      hmon = Kw.JEWISH_FIRST_MONTH
      Do While (hmon <> hebmonth)
         jds = jds + jewish_monthlength(hebyear, hmon)
         hmon = hmon + 1
         If (moninyear < hmon) Then
            hmon = 1
         ElseIf (hmon = hfirst) Then
            hebyear = hebyear + 1
            moninyear = jewish_months_in_year(hebyear)
         End If
      Loop
   Else
      jds = 0
   End If
   jewishymd2jd = jds + hebday - 1.0
End Function
Public Function amean(ByVal xa As Double, ByVal xb As Double) As Double
   amean = (xa + xb) / 2.0
End Function
Public Function amean1(ByVal xa As Double) As Double
   amean1 = (xa + 1.0) / 2.0
End Function
Public Function lmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim retvalu As Double
   Dim diffy As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      diffy = xa - xb
      If (0.0001 < Math.Abs(diffy)) Then
         retvalu = diffy / Math.Log(xa / xb)
      Else
         retvalu = diffy / Kw.ln1p(diffy / xb)
      End If
   End If
   lmean = retvalu
End Function
Public Function lmean1(ByVal xa As Double) As Double
   lmean1 = lmean(1.0, xa)
End Function
Public Function pmean(ByVal pp As Double, ByVal xa As Double, ByVal xb As _
         Double) As Double
   Dim retvalu As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   ElseIf (Kw.iszero(pp)) Then
      retvalu = Sqr(xa * xb)
   Else
      retvalu = Pow((Pow(xa, pp) + Pow(xb, pp)) / 2.0, 1.0 / pp)
   End If
   pmean = retvalu
End Function
Public Function gmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim retvalu As Double
   If (xa < 0.0 Or xb < 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = Sqr(xa * xb)
   End If
   gmean = retvalu
End Function
Public Function gmean1(ByVal xa As Double) As Double
   gmean1 = gmean(1.0, xa)
End Function
Public Function hmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim retvalu As Double
   If (xa < 0.0 Or xb < 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = 2.0 * xa * xb / (xa + xb)
   End If
   hmean = retvalu
End Function
Public Function hmean1(ByVal xa As Double) As Double
   hmean1 = hmean(1.0, xa)
End Function
Public Function qmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim retvalu As Double
   If (xa < 0.0 Or xb < 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = Sqr((xa * xa + xb * xb) / 2.0)
   End If
   qmean = retvalu
End Function
Public Function qmean1(ByVal xa As Double) As Double
   qmean1 = qmean(1.0, xa)
End Function
Public Function heronianmean(ByVal xa As Double, ByVal xb As Double) As _
         Double
   Dim retvalu As Double
   If (xa < 0.0 Or xb < 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = (xa + xb + Sqr(xa * xb)) / 3.0
   End If
   heronianmean = retvalu
End Function
Public Function heronianmean1(ByVal xa As Double) As Double
   heronianmean1 = heronianmean(1.0, xa)
End Function
Public Function agmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = Sqr(xa * xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   agmean = retvalu
End Function
Public Function agmean1(ByVal xa As Double) As Double
   agmean1 = agmean(1.0, xa)
End Function
Public Function ahmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   ahmean = retvalu
End Function
Public Function ahmean1(ByVal xa As Double) As Double
   ahmean1 = ahmean(1.0, xa)
End Function
Public Function almean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = lmean(xa, xb)
         xa = (xa + xb) / 2.0
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   almean = retvalu
End Function
Public Function almean1(ByVal xa As Double) As Double
   almean1 = almean(1.0, xa)
End Function
Public Function aqmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = (xa + xb) / 2.0
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   aqmean = retvalu
End Function
Public Function aqmean1(ByVal xa As Double) As Double
   aqmean1 = aqmean(1.0, xa)
End Function
Public Function ghmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = Sqr(xa * xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   ghmean = retvalu
End Function
Public Function ghmean1(ByVal xa As Double) As Double
   ghmean1 = ghmean(1.0, xa)
End Function
Public Function glmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = Sqr(xa * xb)
         xa = lmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   glmean = retvalu
End Function
Public Function glmean1(ByVal xa As Double) As Double
   glmean1 = glmean(1.0, xa)
End Function
Public Function gqmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = Sqr(xa * xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   gqmean = retvalu
End Function
Public Function gqmean1(ByVal xa As Double) As Double
   gqmean1 = gqmean(1.0, xa)
End Function
Public Function hlmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = lmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   hlmean = retvalu
End Function
Public Function hlmean1(ByVal xa As Double) As Double
   hlmean1 = hlmean(1.0, xa)
End Function
Public Function hqmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = 2.0 * xa * xb / (xa + xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   hqmean = retvalu
End Function
Public Function hqmean1(ByVal xa As Double) As Double
   hqmean1 = hqmean(1.0, xa)
End Function
Public Function lqmean(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0.0 Or xb <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      cdifff = Math.Abs(xa - xb)
      ii = 0
      Do While (True)
         pdifff = cdifff
         xtmp = lmean(xa, xb)
         xa = qmean(xa, xb)
         xb = xtmp
         cdifff = xa - xb
         If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS) Or pdifff < cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   lqmean = retvalu
End Function
Public Function lqmean1(ByVal xa As Double) As Double
   lqmean1 = lqmean(1.0, xa)
End Function
Public Function agmean__1(ByVal xa As Double, ByVal xb As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim xsgn As Double
   xsgn = 1.0
   ii = 0
   Do While (True)
      xtmp = xa
      xa = (xa + xb) / 2.0
      xb = Sqr(Math.Abs(xtmp * xb)) * Kw.sign(xa)
      If (Kw.iswithin(xa, xb, 10.0 * Kw.DBLEPS)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
      If (20 <= ii) Then
         Exit Do' loop AWAIT
      End If
   Loop
   retvalu = xsgn * xtmp
   agmean__1 = retvalu
End Function
Public Function agcmean(xa_arr_pc() As Double, xb_arr_pc() As Double, _
         ByRef ret_arr_p() As Double) As Double
   Dim gg_arr(2) As Double
   Dim aa_arr(2) As Double
   Dim tt_arr(2) As Double
   Dim pr_arr(2) As Double
   Dim pr_len As Double
   Dim pr_theta As Double
   gg_arr(0) = xa_arr_pc(0)
   gg_arr(1) = xa_arr_pc(1)
   aa_arr(0) = xb_arr_pc(0)
   aa_arr(1) = xb_arr_pc(1)
   Do While (True)
      tt_arr(0) = (aa_arr(0) + gg_arr(0)) / 2
      tt_arr(1) = (aa_arr(1) + gg_arr(1)) / 2
      pr_arr(0) = aa_arr(0) * gg_arr(0) - aa_arr(1) * gg_arr(1)
      pr_arr(1) = aa_arr(1) * gg_arr(0) + aa_arr(0) * gg_arr(1)
      pr_len = Sqr(Kw.hypot(pr_arr(0), pr_arr(1)))
      pr_theta = Atan2(pr_arr(1), pr_arr(0)) / 2.0
      gg_arr(0) = pr_len * Math.Cos(pr_theta)
      gg_arr(1) = pr_len * Math.Sin(pr_theta)
      aa_arr(0) = tt_arr(0)
      aa_arr(1) = tt_arr(1)
      If (aa_arr(0) * gg_arr(0) + aa_arr(1) * gg_arr(1) < 0.0) Then
         gg_arr(0) = -gg_arr(0)
         gg_arr(1) = -gg_arr(1)
      End If
      If (Kw.iseq(gg_arr(0), aa_arr(0)) And Kw.iseq(gg_arr(1), _
               aa_arr(1))) Then
         Exit Do' loop AWAIT
      End If
   Loop
   ret_arr_p(0) = gg_arr(0)
   ret_arr_p(1) = gg_arr(1)
   agcmean = Kw.hypot(gg_arr(0), gg_arr(1))
End Function
Public Function aghmean(ByVal xa As Double, ByVal xb As Double, ByVal xc _
         As Double) As Double
   Dim ii As Long
   Dim ta As Double
   Dim tb As Double
   Dim tc As Double
   Dim retvalu As Double
   If (xa <= 0.0 Or xb <= 0.0 Or xc <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.iseq(xa, xb) And Kw.iseq(xa, xc)) Then
      retvalu = xa
   Else
      ii = 0
      Do While (True)
         ta = xa
         tb = xb
         tc = xc
         xa = (ta + tb + tc) / 3.0
         xb = Kw.cuberoot(ta * tb * tc)
         xc = 3.0 / (1.0 / ta + 1.0 / tb + 1.0 / tc)
         If (Kw.iswithin(xa, xc, 10.0 * Kw.DBLEPS)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xb
   End If
   aghmean = retvalu
End Function
Public Function rms(ByVal xa As Double, ByVal xb As Double) As Double
   rms = Sqr((xa * xa + xb * xb) / 2.0)
End Function
Public Function agmeaninva(ByVal aa As Double, ByVal gg As Double) As Double
   Dim new_aa As Double
   If (gg < aa) Then
      new_aa = aa + Sqr(aa * aa - gg * gg)
   Else
      new_aa = gg + Sqr(gg * gg - aa * aa)
   End If
   agmeaninva = new_aa
End Function
Public Function agmeaninvg(ByVal aa As Double, ByVal gg As Double) As Double
   Dim new_gg As Double
   If (gg < aa) Then
      new_gg = gg * gg / aa
   Else
      new_gg = aa * aa / gg
   End If
   agmeaninvg = new_gg
End Function
Public Function agmean1inv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim x_init As Double
   Dim dx As Double
   Dim cc As Double
   If (yy <= 0.0) Then
      scvx_xx = 0.0
   ElseIf (yy < 0.0022) Then
      scvx_xx = 1.0 / Kw.DBLMAX
   Else
      If (yy <= 0.5) Then
         x_init = 4.0 * Math.Exp(Kw.PI / (-2.0 * yy))
      ElseIf (yy < 2.1) Then
         cc = yy - 1.0
         x_init = ((((((((-0.09765625) * cc + 0.12890625) * cc + 0.1875) _
                  * cc + 0.1875) * cc - 0.25) * cc + 0.5) * cc + 2.0) * _
                  cc + 1.0)
      Else
         cc = -(Kw.PI / 2.0)
         x_init = yy * Kw.wm(cc / (4.0 * yy)) / cc
      End If
      If (yy < 0.06) Then
         dx = x_init * 0.1
      Else
         dx = x_init * 0.5
      End If
      scvx_dx = dx
      scvx_xx = x_init
      scvx_yy = yy - agmean1(scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = yy - agmean1(scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   agmean1inv = scvx_xx
End Function
Public Function ghmean1inv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim x_init As Double
   If (yy <= 0.0) Then
      scvx_xx = 0.0
   Else
      If (yy < 0.073) Then
         x_init = 0.352 * yy
      Else
         x_init = (Math.Exp(Kw.PI * yy / 2.0) - Math.Exp(-yy * yy * 0.2)) _
                  / 4.0
      End If
      scvx_dx = 0.3
      scvx_xx = x_init
      scvx_yy = yy - ghmean1(scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = yy - ghmean1(scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   ghmean1inv = scvx_xx
End Function
Public Function contraharmonic(ByVal nn As Long, val_arr_pc() As Double) _
         As Double
   Dim denom As Double
   Dim numer As Double
   Dim ii As Long
   numer = 0.0
   denom = 0.0
   For ii = 0 To nn - 1
      denom = denom + val_arr_pc(ii) * val_arr_pc(ii)
      numer = numer + val_arr_pc(ii)
   Next
   contraharmonic = denom / numer
End Function
Private Function lf_ran_cycle(ByVal nn As Long) As Long
   ' local-use Vb6 lv_ran_x_arr
   ' local-use Vb6 lv_ran_a_arr
   Dim aa As Long
   Dim bb As Long
   Dim cc As Long
   Dim mody As Long
   aa = 0
   Do While (aa < LC_KNUTH_KK_CNT)
      lv_ran_a_arr(aa) = lv_ran_x_arr(aa)
      aa = aa + 1
   Loop
   bb = 0
   cc = (LC_KNUTH_KK_CNT - LC_KNUTH_LL)
   Do While (aa < nn)
      mody = lv_ran_a_arr(bb) - lv_ran_a_arr(cc)
      lv_ran_a_arr(aa) = (LC_KNUTH_MAX And mody)
      aa = aa + 1
      bb = bb + 1
      cc = cc + 1
   Loop
   aa = 0
   Do While (aa < LC_KNUTH_LL)
      mody = lv_ran_a_arr(bb) - lv_ran_a_arr(cc)
      lv_ran_x_arr(aa) = (LC_KNUTH_MAX And mody)
      aa = aa + 1
      bb = bb + 1
      cc = cc + 1
   Loop
   cc = 0
   Do While (aa < LC_KNUTH_KK_CNT)
      mody = lv_ran_a_arr(bb) - lv_ran_x_arr(cc)
      lv_ran_x_arr(aa) = (LC_KNUTH_MAX And mody)
      aa = aa + 1
      bb = bb + 1
      cc = cc + 1
   Loop
   lf_ran_cycle = bb
End Function
Private Function lf_fill_ranz() As Long
   ' local-use Vb6 lv_ranz_magic
   ' local-use Vb6 lv_ranz_ind
   ' local-use Vb6 lv_ranz_arr
   ' local-use Vb6 lv_ran_a_arr
   Dim jj As Long
   Call lf_ran_cycle(LC_KNUTH_QUALITY_CNT)
   For jj = 0 To LC_KNUTH_QUALITY_CNT - 1
      lv_ranz_arr(jj) = lv_ran_a_arr(jj)
   Next
   lv_ranz_arr(LC_KNUTH_KK_CNT) = -1
   lv_ranz_ind = 0
   lv_ranz_magic = Kw.magicset()
   lf_fill_ranz = lv_ranz_arr(0)
End Function
Private Function lf_next_ranz() As Long
   ' local-use Vb6 lv_ranz_magic
   ' local-use Vb6 lv_ranz_ind
   ' local-use Vb6 lv_ranz_arr
   If (Not Kw.ismagic(lv_ranz_magic)) Then
      Call rand_init(Kw.timee())
   ElseIf (lv_ranz_arr(lv_ranz_ind) < 0) Then
      Call lf_fill_ranz()
   End If
   lv_ranz_ind = lv_ranz_ind + 1
   lf_next_ranz = lv_ranz_arr(lv_ranz_ind - 1)
End Function
Public Function rand_init_array(ByVal seed_size As Long, seed_arr_pc() As _
         Long) As Double
   ' local-use Vb6 lv_ran_x_arr
   Dim tt As Long
   Dim jj As Long
   Dim kk As Long
   Dim dd As Long
   Dim rnd_arr(2 * LC_KNUTH_KK_CNT) As Long
   Dim rndss As Long
   Dim rndx As Long
   Dim rndff As Long
   Dim seed_ind As Long
   Dim bitmask As Long
   rndss = ((seed_arr_pc(0) + 2) And (LC_KNUTH_MAX - 1))
   For jj = 0 To LC_KNUTH_KK_CNT - 1
      rnd_arr(jj) = rndss
      rndss = (rndss * 2)
      If (LC_KNUTH_MAX < rndss) Then
         rndss = rndss - (LC_KNUTH_MAX - 1)
      End If
   Next
   rndff = 0
   seed_ind = 0
   bitmask = 0
   For jj = 0 To LC_KNUTH_KK_CNT - 1
      If (bitmask <= 1) Then
         seed_ind = seed_ind + 1
         If (seed_size <= seed_ind) Then
            Exit For
         End If
         rndff = seed_arr_pc(seed_ind)
         bitmask = (1 * 2 ^ 30)
      End If
      If ((rndff And bitmask) <> 0) Then
         rnd_arr(jj) = (bitmask Xor (rnd_arr(jj)))
      End If
      bitmask = (bitmask \ 2)
   Next
   rnd_arr(1) = rnd_arr(1) + 1
   rndss = (seed_arr_pc(0) And LC_KNUTH_MAX)
   tt = LC_KNUTH_TT - 1
   Do While (0 < tt)
      For jj = LC_KNUTH_KK_CNT - 1 To 1 Step - 1
         rnd_arr(jj + jj) = rnd_arr(jj)
         rnd_arr(jj + jj - 1) = 0
      Next
      jj = LC_KNUTH_KK_CNT + LC_KNUTH_KK_CNT - 2
      dd = LC_KNUTH_KK_CNT + LC_KNUTH_LL - 2
      kk = LC_KNUTH_KK_CNT - 2
      Do While (0 <= kk)
         rndx = rnd_arr(dd) - rnd_arr(jj)
         rnd_arr(dd) = (rndx And LC_KNUTH_MAX)
         rndx = rnd_arr(kk) - rnd_arr(jj)
         rnd_arr(kk) = (rndx And LC_KNUTH_MAX)
         dd = dd - 1
         kk = kk - 1
         jj = jj - 1
      Loop
      If (Kw.isodd(rndss)) Then
         For jj = LC_KNUTH_KK_CNT To 1 Step - 1
            rnd_arr(jj) = rnd_arr(jj - 1)
         Next
         rnd_arr(0) = rnd_arr(LC_KNUTH_KK_CNT)
         jj = rnd_arr(LC_KNUTH_LL) - rnd_arr(0)
         rnd_arr(LC_KNUTH_LL) = (LC_KNUTH_MAX And jj)
         rndss = (rndss \ 2)
      ElseIf (rndss = 0) Then
         tt = tt - 1
      Else
         rndss = (rndss \ 2)
      End If
   Loop
   kk = (LC_KNUTH_KK_CNT - LC_KNUTH_LL)
   jj = 0
   Do While (jj < LC_KNUTH_LL)
      lv_ran_x_arr(kk) = rnd_arr(jj)
      kk = kk + 1
      jj = jj + 1
   Loop
   kk = 0
   Do While (jj < LC_KNUTH_KK_CNT)
      lv_ran_x_arr(kk) = rnd_arr(jj)
      kk = kk + 1
      jj = jj + 1
   Loop
   For jj = 0 To 9
      Call lf_ran_cycle(2 * LC_KNUTH_KK_CNT - 1)
   Next
   Call lf_fill_ranz()
   rand_init_array = 0
End Function
Public Function rand_init(ByVal seed As Double) As Double
   Dim sd_arr(2) As Long
   sd_arr(0) = floor(seed)
   sd_arr(1) = floor(frac(seed) * Kw.INTMAX)
   Call rand_init_array(2, sd_arr)
   rand_init = seed
End Function
Public Function randl(ByVal nn As Long) As Long
   Dim max_allowed As Long
   Dim rndm As Long
   Dim retvalu As Long
   max_allowed = LC_KNUTH_MAX - (LC_KNUTH_MAX Mod nn)
   Do While (True)
      rndm = lf_next_ranz()
      If (rndm < max_allowed) Then
         Exit Do' loop AWAIT
      End If
   Loop
   retvalu = rndm Mod nn
   randl = retvalu
End Function
Public Function randd() As Double
   randd = (lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX + 1.0)) / _
            (LC_KNUTH_MAX + 1.0)
End Function
Public Function int_pdf(ByVal para_nn As Double, ByVal xx As Double) As _
         Double
   Dim retvalu As Double
   Dim ff As Double
   If (xx < 0.0 Or para_nn < xx Or (Not Kw.isint(xx))) Then
      retvalu = 0.0
   Else
      ff = floor(para_nn)
      If (Kw.isint(para_nn)) Then
         If (xx < para_nn) Then
            retvalu = 1.0 / para_nn
         Else
            retvalu = 0.0
         End If
      Else
         If (xx < ff) Then
            retvalu = 1.0 / para_nn
         Else
            retvalu = 1.0 - ff / para_nn
         End If
      End If
   End If
   int_pdf = retvalu
End Function
Public Function int_cdf(ByVal para_nn As Double, ByVal xx As Double) As _
         Double
   Dim retvalu As Double
   Dim ff As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (para_nn <= xx) Then
      retvalu = 1.0
   Else
      ff = floor(para_nn)
      If (xx < ff) Then
         retvalu = (floor(xx) + 1) / para_nn
      Else
         retvalu = 1
      End If
   End If
   int_cdf = retvalu
End Function
Public Function int_quantile(ByVal para_nn As Double, ByVal probx As _
         Double) As Double
   Dim retvalu As Double
   If (probx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 - frac(para_nn) / para_nn <= probx) Then
      retvalu = Ceil(para_nn - 1)
   Else
      retvalu = floor(para_nn * probx + 1)
   End If
   int_quantile = retvalu
End Function
Public Function int_rand(ByVal para_nn As Double) As Long
   Dim retvalu As Long
   If (para_nn <= 1) Then
      retvalu = 0
   Else
      retvalu = floorl(randd() * para_nn)
   End If
   int_rand = retvalu
End Function
Public Function normal_pdf(ByVal xx As Double) As Double
   normal_pdf = Math.Exp(-xx * xx / 2.0) / (Sqr(Kw.TAU))
End Function
Public Function normal_cdf(ByVal xx As Double) As Double
   normal_cdf = Kw.erf(xx / Kw.TWOSQRT) / 2.0 + 0.5
End Function
Public Function normal_cdf__1(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim bb As Double
   Dim xx_sqr As Double
   Dim ii As Double
   If (xx <= -10.0) Then
      retvalu = 0.0
   ElseIf (10.0 <= xx) Then
      retvalu = 1.0
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.5
   Else
      sum_curr = 0.0
      bb = 1.0 / xx
      xx_sqr = xx * xx
      ii = 0
      Do While (True)
         bb = bb * xx_sqr / (2.0 * ii + 1.0)
         sum_prev = sum_curr
         sum_curr = sum_curr + bb
         If (Kw.iseq(sum_prev, sum_curr)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
      Loop
      retvalu = (sum_curr * Math.Exp(-0.5 * (xx_sqr + Math.Log(Kw.TAU))) _
               + 0.5)
   End If
   normal_cdf__1 = retvalu
End Function
Public Function normal_quantile(ByVal probx As Double) As Double
   normal_quantile = Kw.TWOSQRT * Kw.erfinv(2.0 * probx - 1.0)
End Function
Public Function normal_rand() As Double
   ' local-use Vb6 lv_rand_gau_magic
   ' local-use Vb6 lv_rand_gau_prev
   Dim retvalu As Double
   Dim uua As Double
   Dim uub As Double
   Dim ww As Double
   If (Kw.ismagic(lv_rand_gau_magic)) Then
      lv_rand_gau_magic = Kw.magicnot()
      retvalu = lv_rand_gau_prev
   Else
      Do While (True)
         uua = randd() - 0.5
         uub = randd() - 0.5
         ww = uua * uua + uub * uub
         If (Kw.isbetweenx(ww, 0.0, 0.25)) Then
            Exit Do' loop AWAIT
         End If
      Loop
      ww = Sqr(-2.0 * Math.Log(4.0 * ww) / ww)
      lv_rand_gau_prev = uub * ww
      lv_rand_gau_magic = Kw.magicset()
      retvalu = uua * ww
   End If
   normal_rand = retvalu
End Function
Public Function gau_pdf(ByVal xx As Double) As Double
   gau_pdf = normal_pdf(xx)
End Function
Public Function gau_cdf(ByVal xx As Double) As Double
   gau_cdf = normal_cdf(xx)
End Function
Public Function gau_quantile(ByVal probx As Double) As Double
   gau_quantile = normal_quantile(probx)
End Function
Public Function gau_rand() As Double
   gau_rand = normal_rand()
End Function
Public Function normal_quantile__1(ByVal probx As Double) As Double
   Dim retvalu As Double
   Dim p_low As Double
   Dim qq As Double
   Dim rr As Double
   Dim denom As Double
   Dim numer As Double
   p_low = 0.02425
   If (probx <= 0.0) Then
      retvalu = -(Kw.DBLMAX)
   ElseIf (1.0 <= probx) Then
      retvalu = Kw.DBLMAX
   ElseIf (p_low <= probx And probx <= 1.0 - p_low) Then
      qq = probx - 0.5
      rr = qq * qq
      numer = ((((((-3.96968302866538E+1) * rr + 2.20946098424521E+2) * _
               rr - 2.75928510446969E+2) * rr + 1.38357751867269E+2) * rr _
               - 3.06647980661472E+1) * rr + 2.50662827745924)
      denom = ((((((-5.44760987982241E+1) * rr + 1.61585836858041E+2) * _
               rr - 1.55698979859887E+2) * rr + 6.68013118877197E+1) * rr _
               - 1.32806815528857E+1) * rr + 1.00000000000000)
      retvalu = (qq * numer / denom)
   Else
      If (probx < p_low) Then
         rr = Sqr(-2.0 * Math.Log(probx))
         qq = 1.0
      Else
         rr = Sqr(-2.0 * Math.Log(1 - probx))
         qq = -1.0
      End If
      numer = ((((((-7.78489400243029E-3) * rr - 3.22396458041136E-1) * _
               rr - 2.40075827716184) * rr - 2.54973253934373) * rr + _
               4.37466414146497) * rr + 2.93816398269878)
      denom = (((((7.78469570904146E-3) * rr + 3.22467129070040E-1) * rr _
               + 2.44513413714300) * rr + 3.75440866190742) * rr + _
               1.00000000000000)
      retvalu = qq * numer / denom
   End If
   normal_quantile__1 = retvalu
End Function
Public Function uni_pdf(ByVal max_x As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (max_x <= 0.0 Or xxp <= 0.0 Or max_x <= xxp) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / max_x
   End If
   uni_pdf = retvalu
End Function
Public Function uni_cdf(ByVal max_x As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (max_x <= 0.0 Or xxp < 0.0) Then
      retvalu = 0.0
   ElseIf (max_x < xxp) Then
      retvalu = 1.0
   Else
      retvalu = xxp / max_x
   End If
   uni_cdf = retvalu
End Function
Public Function uni_quantile(ByVal max_x As Double, ByVal probx As _
         Double) As Double
   Dim retvalu As Double
   If (probx < 0.0 Or max_x <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_x < probx) Then
      retvalu = 1.0
   Else
      retvalu = probx * max_x
   End If
   uni_quantile = retvalu
End Function
Public Function uni_rand(ByVal max_x As Double) As Double
   uni_rand = uni_quantile(max_x, randd())
End Function
Public Function exp_pdf(ByVal para_scaling As Double, ByVal xxp As _
         Double) As Double
   Dim retvalu As Double
   If (xxp < 0.0 Or para_scaling <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = para_scaling * Math.Exp(-para_scaling * xxp)
   End If
   exp_pdf = retvalu
End Function
Public Function exp_cdf(ByVal para_scaling As Double, ByVal xxp As _
         Double) As Double
   Dim retvalu As Double
   If (xxp < 0.0 Or para_scaling <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 - Math.Exp(-para_scaling * xxp)
   End If
   exp_cdf = retvalu
End Function
Public Function exp_quantile(ByVal para_scaling As Double, ByVal probx As _
         Double) As Double
   Dim retvalu As Double
   If (probx <= 0.0 Or para_scaling <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= probx) Then
      retvalu = Kw.DBLMAX
   Else
      retvalu = -Math.Log(1.0 - probx) / para_scaling
   End If
   exp_quantile = retvalu
End Function
Public Function exp_rand(ByVal para_scaling As Double) As Double
   exp_rand = - Math.Log(randd()) / para_scaling
End Function
Public Function poi_pdf(ByVal meanx As Double, ByVal xxp As Double) As Double
   Dim kk As Double
   Dim retvalu As Double
   If (xxp < 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   Else
      kk = floor(xxp)
      retvalu = Pow(meanx, kk) * Math.Exp(-meanx) / factorial(kk)
   End If
   poi_pdf = retvalu
End Function
Public Function poi_cdf(ByVal meanx As Double, ByVal xxp As Double) As Double
   Dim ii As Long
   Dim kk As Long
   Dim sum As Double
   Dim term As Double
   Dim retvalu As Double
   If (xxp <= 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1000.0 < xxp / meanx) Then
      retvalu = 1
   Else
      term = Math.Exp(-meanx)
      sum = term
      kk = floorl(xxp)
      For ii = 1 To kk
         term = term * meanx / ii
         sum = sum + term
      Next
      retvalu = sum
   End If
   poi_cdf = retvalu
End Function
Public Function poi_quantile(ByVal meanx As Double, ByVal probx As _
         Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim prevsum As Double
   Dim term As Double
   Dim retvalu As Double
   If (probx <= 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= probx) Then
      retvalu = Kw.DBLMAX
   Else
      prevsum = 0.0
      term = Math.Exp(-meanx)
      sum = term
      ii = 0
      Do While (sum <= probx)
         ii = ii + 1
         term = term * meanx / ii
         prevsum = sum
         sum = sum + term
      Loop
      If (sum - probx < probx - prevsum) Then
         retvalu = ii
      Else
         retvalu = ii - 1
      End If
   End If
   poi_quantile = retvalu
End Function
Public Function poi_rand(ByVal meanx As Double) As Long
   Dim prob As Double
   Dim poi As Double
   Dim sum As Double
   Dim nn As Long
   prob = randd()
   poi = Math.Exp(-meanx)
   sum = poi
   nn = 0
   Do While (sum < prob)
      nn = nn + 1
      poi = poi * meanx / nn
      sum = sum + poi
   Loop
   poi_rand = nn
End Function
Public Function geo_pdf(ByVal prob As Double, ByVal kk As Double) As Double
   Dim retvalu As Double
   If (kk < 0 Or prob < 0.0 Or 1.0 <= prob) Then
      retvalu = 0.0
   Else
      retvalu = Pow(1.0 - prob, kk) * prob
   End If
   geo_pdf = retvalu
End Function
Public Function geo_cdf(ByVal prob As Double, ByVal kk As Double) As Double
   Dim retvalu As Double
   If (kk <= -1 Or prob < 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prob) Then
      retvalu = 1.0
   Else
      retvalu = 1.0 - Pow(1.0 - prob, kk + 1)
   End If
   geo_cdf = retvalu
End Function
Public Function geo_quantile(ByVal prob As Double, ByVal probx As Double) _
         As Double
   Dim retvalu As Double
   If (probx <= 0.0 Or 1.0 <= probx Or prob <= 0.0 Or 1.0 <= prob) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log(1.0 - probx) / Math.Log(1.0 - prob) - 1.0
   End If
   geo_quantile = retvalu
End Function
Public Function geo_rand(ByVal prob As Double) As Long
   geo_rand = floorl(Math.Log(randd()) / Math.Log(1.0 - prob))
End Function
Public Function cauchy_pdf(ByVal para_scaling As Double, ByVal xx As _
         Double) As Double
   cauchy_pdf = 1.0 / (Kw.PI * para_scaling * (1.0 + (Kw.square(xx / _
            para_scaling))))
End Function
Public Function cauchy_cdf(ByVal para_scaling As Double, ByVal xx As _
         Double) As Double
   cauchy_cdf = taninv(xx / para_scaling) / Kw.PI + 0.5
End Function
Public Function cauchy_quantile(ByVal para_scaling As Double, ByVal probx _
         As Double) As Double
   cauchy_quantile = para_scaling * Math.Tan((probx - 0.5) * Kw.PI)
End Function
Public Function cauchy_rand(ByVal para_scaling As Double) As Double
   cauchy_rand = cauchy_quantile(para_scaling, randd())
End Function
Public Function logistic_pdf(ByVal ss As Double, ByVal xx As Double) As _
         Double
   Dim exs As Double
   Dim retvalu As Double
   If (ss <= 0.0) Then
      retvalu = 0.0
   Else
      exs = Math.Exp(-xx / ss)
      retvalu = exs / (ss * Pow(1.0 + exs, 2.0))
   End If
   logistic_pdf = retvalu
End Function
Public Function logistic_cdf(ByVal ss As Double, ByVal xx As Double) As _
         Double
   Dim retvalu As Double
   If (ss <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (1.0 + Math.Exp(-xx / ss))
   End If
   logistic_cdf = retvalu
End Function
Public Function logistic_quantile(ByVal ss As Double, ByVal probx As _
         Double) As Double
   Dim retvalu As Double
   If (probx <= 0.0 Or ss <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= probx) Then
      retvalu = 1.0
   Else
      retvalu = -ss * Math.Log(1.0 / probx - 1.0)
   End If
   logistic_quantile = retvalu
End Function
Public Function logistic_rand(ByVal ss As Double) As Double
   logistic_rand = - ss * Math.Log(1.0 / randd() - 1.0)
End Function
Public Function tri_pdf(ByVal pp As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0.0
   Else
      If (xxp < 0.0 Or 1.0 < xxp) Then
         retvalu = 0.0
      ElseIf (xxp < pp) Then
         retvalu = Kw.divi(2.0 * xxp, pp, 2.0)
      Else
         retvalu = Kw.divi(2.0 * (1.0 - xxp), 1.0 - pp, 2.0)
      End If
   End If
   tri_pdf = retvalu
End Function
Public Function tri_cdf(ByVal pp As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0.0
   Else
      If (xxp <= 0.0) Then
         retvalu = 0.0
      ElseIf (xxp < pp) Then
         retvalu = xxp * xxp / pp
      ElseIf (xxp < 1.0) Then
         retvalu = 1.0 - Kw.square(1.0 - xxp) / (1.0 - pp)
      Else
         retvalu = 1.0
      End If
   End If
   tri_cdf = retvalu
End Function
Public Function tri_quantile(ByVal pp As Double, ByVal probx As Double) _
         As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0.0
   Else
      If (probx <= 0.0) Then
         retvalu = 0.0
      ElseIf (probx < pp) Then
         retvalu = Sqr(probx * pp)
      ElseIf (probx < 1.0) Then
         retvalu = 1.0 - Sqr((1.0 - probx) * (1.0 - pp))
      Else
         retvalu = 1.0
      End If
   End If
   tri_quantile = retvalu
End Function
Public Function tri_rand(ByVal pp As Double) As Double
   Dim xxp As Double
   Dim yy As Double
   xxp = randd()
   yy = randd()
   If (xxp < pp) Then
      If (2.0 * xxp < pp * yy) Then
         xxp = pp - xxp
      End If
   Else
      If ((pp - 1.0) * yy < 2.0 * (xxp - 1.0)) Then
         xxp = (pp + 1.0) - xxp
      End If
   End If
   tri_rand = xxp
End Function
Public Function trap_pdf(ByVal prob_a As Double, ByVal prob_b As Double, _
         ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0 Or 1.0 < xx Or prob_a < 0.0 Or prob_b < prob_a Or 1.0 < _
            prob_b) Then
      retvalu = 0.0
   Else
      If (xx < prob_a) Then
         retvalu = xx / prob_a
      ElseIf (xx <= prob_b) Then
         retvalu = 1.0
      Else
         retvalu = (1.0 - xx) / (1.0 - prob_b)
      End If
   End If
   trap_pdf = retvalu * 2.0 / (1.0 + prob_b - prob_a)
End Function
Public Function trap_cdf(ByVal prob_a As Double, ByVal prob_b As Double, _
         ByVal xx As Double) As Double
   Dim ff As Double
   Dim retvalu As Double
   If (prob_a < 0.0 Or prob_b < prob_a Or 1.0 < prob_b) Then
      retvalu = 0.0
   ElseIf (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= xx) Then
      retvalu = 1.0
   Else
      ff = 2.0 / (1.0 + prob_b - prob_a)
      If (xx < prob_a) Then
         retvalu = ff * xx * xx / (2.0 * prob_a)
      ElseIf (xx < prob_b) Then
         retvalu = ff * (xx - prob_a / 2.0)
      Else
         retvalu = 1.0 - ff * Kw.square(1.0 - xx) / (2.0 * (1.0 - prob_b))
      End If
   End If
   trap_cdf = retvalu
End Function
Public Function trap_quantile(ByVal prob_a As Double, ByVal prob_b As _
         Double, ByVal xx As Double) As Double
   Dim ff As Double
   Dim retvalu As Double
   If (prob_a < 0.0 Or prob_b < prob_a Or 1.0 < prob_b) Then
      retvalu = 0.0
   ElseIf (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= xx) Then
      retvalu = 1.0
   Else
      ff = 2.0 / (1.0 + prob_b - prob_a)
      If (xx < prob_a * ff / 2.0) Then
         retvalu = Sqr((2.0 * prob_a * xx) / ff)
      ElseIf (xx < 1.0 - ff * (1.0 - prob_b) / 2.0) Then
         retvalu = xx / ff + prob_a / 2.0
      Else
         retvalu = 1.0 - Sqr(2.0 * (1.0 - prob_b) * (1.0 - xx) / ff)
      End If
   End If
   trap_quantile = retvalu
End Function
Public Function trap_rand(ByVal prob_a As Double, ByVal prob_b As Double) _
         As Double
   Dim xx As Double
   Dim retvalu As Double
   retvalu = -1
   Do While (True)
      xx = randd()
      If (xx < prob_a) Then
         If (randd() * prob_a < xx) Then
            retvalu = xx
         End If
      ElseIf (xx <= prob_b) Then
         retvalu = xx
      Else
         If (randd() * (1.0 - prob_b) < (1.0 - xx)) Then
            retvalu = xx
         End If
      End If
      If (0.0 <= retvalu) Then
         Exit Do' loop AWAIT
      End If
   Loop
   trap_rand = retvalu
End Function
Public Function pareto_pdf(ByVal para_shape As Double, ByVal para_scaling _
         As Double, ByVal xx As Double) As Double
   pareto_pdf = para_shape * Pow(para_scaling / xx, para_shape) / xx
End Function
Public Function pareto_cdf(ByVal para_shape As Double, ByVal para_scaling _
         As Double, ByVal xx As Double) As Double
   pareto_cdf = 1.0 - Pow(para_scaling / xx, para_shape)
End Function
Public Function pareto_quantile(ByVal para_shape As Double, ByVal _
         para_scaling As Double, ByVal probx As Double) As Double
   pareto_quantile = para_scaling / Pow(1.0 - probx, 1.0 / para_shape)
End Function
Public Function pareto_rand(ByVal para_shape As Double, ByVal _
         para_scaling As Double) As Double
   pareto_rand = para_scaling / Pow(randd(), 1.0 / para_shape)
End Function
Public Function gompertz_pdf(ByVal para_shape As Double, ByVal _
         para_scaling As Double, ByVal xx As Double) As Double
   gompertz_pdf = Math.Exp(para_scaling * xx + para_shape * (1 - _
            Math.Exp(para_scaling * xx))) * para_scaling * para_shape
End Function
Public Function gompertz_cdf(ByVal para_shape As Double, ByVal _
         para_scaling As Double, ByVal xx As Double) As Double
   gompertz_cdf = 1.0 - Math.Exp(para_shape * (1.0 - _
            Math.Exp(para_scaling * xx)))
End Function
Public Function gompertz_quantile(ByVal para_shape As Double, ByVal _
         para_scaling As Double, ByVal probx As Double) As Double
   gompertz_quantile = Math.Log(1 - Math.Log(1.0 - probx) / para_shape) / _
            para_scaling
End Function
Public Function gompertz_rand(ByVal para_shape As Double, ByVal _
         para_scaling As Double) As Double
   gompertz_rand = gompertz_quantile(para_shape, para_scaling, randd())
End Function
Public Function zipf_pdf(ByVal ss As Double, ByVal max_kk As Long, ByVal _
         kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0 Or max_kk < kk) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (Pow(kk, ss) * Kw.hnm(max_kk, ss))
   End If
   zipf_pdf = retvalu
End Function
Public Function zipf_cdf(ByVal ss As Double, ByVal max_kk As Long, ByVal _
         kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_kk < kk) Then
      retvalu = 1.0
   Else
      retvalu = Kw.hnm(kk, ss) / Kw.hnm(max_kk, ss)
   End If
   zipf_cdf = retvalu
End Function
Public Function zipf_quantile(ByVal ss As Double, ByVal max_kk As Long, _
         ByVal probx As Double) As Long
   Dim ii As Long
   Dim summ As Double
   Dim target As Double
   target = probx * Kw.hnm(max_kk, ss)
   summ = 0.0
   ii = 1
   Do While (True)
      summ = summ + 1.0 / Pow(ii, ss)
      If (target <= summ) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   zipf_quantile = ii
End Function
Public Function zipf_rand(ByVal ss As Double, ByVal max_kk As Long) As Long
   zipf_rand = zipf_quantile(ss, max_kk, randd())
End Function
Public Function beta_pdf(ByVal para_shape_a As Double, ByVal para_shape_b _
         As Double, ByVal xx As Double) As Double
   beta_pdf = Pow(xx, para_shape_a - 1.0) * Pow((1.0 - xx), para_shape_b _
            - 1.0) / beta(para_shape_a, para_shape_b)
End Function
Public Function beta_cdf(ByVal para_shape_a As Double, ByVal para_shape_b _
         As Double, ByVal xx As Double) As Double
   beta_cdf = betainc(para_shape_a, para_shape_b, xx)
End Function
Public Function beta_quantile(ByVal para_shape_a As Double, ByVal _
         para_shape_b As Double, ByVal probx As Double) As Double
   Dim retvalu As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   If (probx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= probx) Then
      retvalu = 1.0
   Else
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = probx - beta_cdf(para_shape_a, para_shape_b, scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
      retvalu = scvx_xx
   End If
   beta_quantile = retvalu
End Function
Public Function beta_rand(ByVal para_shape_a As Double, ByVal _
         para_shape_b As Double) As Double
   beta_rand = beta_quantile(para_shape_a, para_shape_b, randd())
End Function
Public Function gamma_pdf(ByVal para_shape As Double, ByVal xxp As _
         Double) As Double
   Dim retvalu As Double
   If (xxp <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Math.Exp(Math.Log(xxp) * (para_shape - 1.0) - xxp) / _
               Kw.tgamma(para_shape)
   End If
   gamma_pdf = retvalu
End Function
Public Function gamma_cdf(ByVal para_shape As Double, ByVal xxp As _
         Double) As Double
   Dim retvalu As Double
   Dim rr As Double
   Dim ii As Long
   Dim sum As Double
   If (xxp <= 0.0 Or para_shape <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.isint(para_shape)) Then
      sum = 1.0
      rr = 1.0
      For ii = 1 To para_shape - 1
         rr = rr * xxp / ii
         sum = sum + rr
      Next
      retvalu = 1.0 - Math.Exp(-xxp) * sum
   Else
      retvalu = Kw.rligamma(para_shape, xxp)
   End If
   gamma_cdf = retvalu
End Function
Public Function gamma_rand(ByVal para_shape As Double) As Double
   Dim i_shape As Double
   Dim f_shape As Double
   Dim rval As Double
   Dim jj As Double
   Dim ee As Double
   Dim gg As Double
   Dim yy As Double
   Dim ff As Double
   Dim xx As Double
   Dim vv As Double
   Dim qq As Double
   Dim pp As Double
   i_shape = floor(para_shape)
   rval = 1.0
   If (para_shape < 5) Then
      For jj = 1 To i_shape
         rval = rval * randd()
      Next
      rval = -Math.Log(rval)
      f_shape = para_shape - i_shape
      If (0.00001 < f_shape) Then
         pp = Kw.E / (f_shape + Kw.E)
         Do While (True)
            vv = Math.Log(randd())
            If (randd() < pp) Then
               xx = Math.Exp(vv / f_shape)
               qq = Math.Exp(-xx)
            Else
               xx = 1.0 - vv
               qq = Math.Exp(Math.Log(xx) * (f_shape - 1))
            End If
            If (randd() < qq) Then
               Exit Do' loop AWAIT
            End If
         Loop
         rval = rval + xx
      End If
   Else
      ee = para_shape - 1.0
      gg = Sqr(para_shape + ee)
      yy = 0.0
      ff = 0.0
      Do While (rval <= 0.0 Or (1.0 + yy * yy) * Math.Exp(ee * _
               Math.Log(rval / ee) - ff) < randd())
         xx = Kw.PI * randd()
         yy = Math.Sin(xx) / Math.Cos(xx)
         ff = gg * yy
         rval = ff + ee
      Loop
   End If
   gamma_rand = rval
End Function
Public Function chisqr_pdf(ByVal df As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (xxp <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Math.Exp((Math.Log(xxp / 2.0) * df - xxp) / 2.0) / (xxp * _
               Kw.tgamma(df / 2.0))
   End If
   chisqr_pdf = retvalu
End Function
Public Function chisqr_cdf(ByVal df As Double, ByVal xxp As Double) As Double
   Dim retvalu As Double
   If (xxp <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = (1.0 - Kw.ruigamma(df / 2.0, xxp / 2.0))
   End If
   chisqr_cdf = retvalu
End Function
Public Function chisqr_rand(ByVal df As Double) As Double
   Dim sum As Double
   Dim vv As Double
   Dim jj As Double
   sum = 0.0
   For jj = 1 To df
      vv = gau_rand()
      sum = sum + vv * vv
   Next
   If (Not Kw.isint(df)) Then
      sum = sum + gamma_rand(frac(df) / 2.0) * 2.0
   End If
   chisqr_rand = sum
End Function
Public Function binomial_pdf(ByVal prob_a As Double, ByVal success As _
         Long, ByVal trial As Long) As Double
   Dim retvalu As Double
   If (success < 0 Or trial < success) Then
      retvalu = 0.0
   Else
      retvalu = comb(trial, success) * Pow(prob_a, success) * Pow(1.0 - _
               prob_a, trial - success)
   End If
   binomial_pdf = retvalu
End Function
Public Function binomial_cdf(ByVal prob_a As Double, ByVal success As _
         Long, ByVal trial As Long) As Double
   Dim lsum As Double
   Dim sfactor As Double
   Dim ss As Long
   Dim mu As Double
   Dim kk As Double
   If (prob_a <= 0.0 Or success < 0) Then
      lsum = 0.0
   ElseIf (1.0 <= prob_a Or trial <= success) Then
      lsum = 1.0
   Else
      If (trial <= 2 * success) Then
         ss = trial - success - 1
         prob_a = 1.0 - prob_a
      Else
         ss = success
      End If
      sfactor = Pow(1.0 - prob_a, trial)
      mu = prob_a / (1.0 - prob_a)
      lsum = 0.0
      For kk = 0 To ss
         lsum = lsum + sfactor
         sfactor = sfactor * (mu * (trial - kk)) / (kk + 1.0)
      Next
      If (ss <> success) Then
         lsum = 1.0 - lsum
      End If
   End If
   binomial_cdf = lsum
End Function
Public Function binomial_rand(ByVal prob_a As Double, ByVal rr As Double) _
         As Double
   Dim successes As Double
   successes = 0.0
   Do While (0 < rr)
      If (randd() < prob_a) Then
         successes = successes + 1
      End If
      rr = rr - 1
   Loop
   binomial_rand = successes
End Function
Public Function benford_pdf(ByVal max_kk As Long, ByVal kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0 Or max_kk <= kk) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log(1.0 + 1.0 / kk) / Math.Log(max_kk)
   End If
   benford_pdf = retvalu
End Function
Public Function benford_cdf(ByVal max_kk As Long, ByVal kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_kk <= kk) Then
      retvalu = 1.0
   Else
      retvalu = Math.Log(kk + 1.0) / Math.Log(max_kk)
   End If
   benford_cdf = retvalu
End Function
Public Function benford_rand(ByVal max_kk As Long) As Long
   Dim ii As Long
   Dim summ As Double
   Dim target As Double
   target = randd()
   summ = 0.0
   ii = 1
   Do While (True)
      summ = summ + Math.Log(1.0 + 1.0 / ii) / Math.Log(max_kk)
      If (target <= summ) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   benford_rand = ii
End Function
Public Function nbd_pdf(ByVal prob_a As Double, ByVal rsuccesses As Long, _
         ByVal kfailures As Long) As Double
   nbd_pdf = comb(rsuccesses + kfailures - 1, kfailures) * Pow(prob_a, _
            rsuccesses) * Pow(1.0 - prob_a, kfailures)
End Function
Public Function nbd_cdf(ByVal prob_a As Double, ByVal rsuccesses As Long, _
         ByVal kfailures As Long) As Double
   nbd_cdf = 1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a)
End Function
Public Function nbd_rand(ByVal prob_a As Double, ByVal rsuccesses As _
         Long) As Long
   Dim failures As Long
   Dim rr As Long
   rr = rsuccesses
   failures = 0
   Do While (0 < rr)
      If (randd() <= prob_a) Then
         rr = rr - 1
      Else
         failures = failures + 1
      End If
   Loop
   nbd_rand = failures
End Function
Public Function polya_pdf(ByVal prob_a As Double, ByVal rsuccesses As _
         Double, ByVal kfailures As Double) As Double
   polya_pdf = combx(rsuccesses + kfailures - 1, kfailures) * Pow(1.0 - _
            prob_a, kfailures) * Pow(prob_a, rsuccesses)
End Function
Public Function polya_cdf(ByVal prob_a As Double, ByVal rsuccesses As _
         Double, ByVal kfailures As Double) As Double
   polya_cdf = 1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - prob_a)
End Function
Public Function polya_rand(ByVal tt As Double, ByVal probx As Double) As _
         Double
   Dim nn As Double
   Dim ff As Double
   Dim rr As Double
   Dim uu As Long
   Dim qq As Double
   nn = 0
   ff = tt - 1
   qq = Math.Exp(tt * Math.Log(probx))
   rr = qq
   uu = randd()
   Do While (rr <= uu)
      nn = nn + 1
      ff = ff + 1
      qq = qq * (1.0 - probx) * ff / nn
      rr = rr + qq
   Loop
   polya_rand = nn
End Function
Public Function zeta_pdf(ByVal ss As Double, ByVal ixxp As Long) As Double
   Dim retvalu As Double
   If (ixxp <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (Kw.zeta(ss) * Pow(ixxp, ss))
   End If
   zeta_pdf = retvalu
End Function
Public Function zeta_cdf(ByVal ss As Double, ByVal ixxp As Long) As Double
   Dim retvalu As Double
   If (ixxp <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Kw.hnm(ixxp, ss) / Kw.zeta(ss)
   End If
   zeta_cdf = retvalu
End Function
Public Function ks_cdf(ByVal para_nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim two_tt_sqr As Double
   Dim kk As Long
   Dim sum As Double
   Dim tt As Double
   If (para_nn <= 0 Or xx <= 0.0) Then
      retvalu = 0.0
   Else
      If (30 < para_nn) Then
         tt = xx
         two_tt_sqr = 2.0 * tt * tt
         sum = Math.Exp(-two_tt_sqr) * (1.0 - 2.0 * tt / (3.0 * _
                  Sqr(para_nn)) - two_tt_sqr * (two_tt_sqr / 9.0 - 1.0 / _
                  3.0) / para_nn)
         retvalu = 1.0 - sum
      Else
         tt = xx * Sqr(para_nn)
         sum = 0.0
         kk = para_nn
         Do While (tt < kk)
            sum = sum + Kw.comb(para_nn, kk) * Pow(kk - tt, kk) * Pow(tt _
                     + para_nn - kk, para_nn - kk - 1)
            kk = kk - 1
         Loop
         retvalu = 1.0 - sum * tt / Pow(para_nn, para_nn)
      End If
   End If
   ks_cdf = retvalu
End Function
Public Function ks_a_cdf(ByVal xx As Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim vv As Double
   Dim kk As Long
   Dim retvalu As Double
   If (xx < 0.0001) Then
      retvalu = 0.0
   Else
      sum = 0.0
      vv = -Kw.square(Kw.PI / xx) / 8.0
      kk = 1
      Do While (True)
         sum_prev = sum
         sum = sum + Math.Exp(vv * kk * kk)
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         kk = kk + 2
      Loop
      retvalu = sum * Sqr(Kw.TAU) / xx
   End If
   ks_a_cdf = retvalu
End Function
Public Function ks_b_cdf(ByVal para_nn As Long, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim nxx As Double
   If (xx < 0.0001 Or para_nn <= 0) Then
      retvalu = 0.0
   Else
      nxx = xx + (2.0 * Sqr(para_nn) + 3.0 * xx - 3.0) / (12.0 * para_nn)
      retvalu = ks_a_cdf(nxx)
   End If
   ks_b_cdf = retvalu
End Function
Public Function ks_quantile(ByVal para_nn As Double, ByVal probx As _
         Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   If (Not Kw.isbetween(probx, 0.0, 1.0)) Then
      scvx_xx = 0.0
   Else
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = probx - ks_cdf(para_nn, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = probx - ks_cdf(para_nn, scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   ks_quantile = scvx_xx
End Function
Public Function t_pdf(ByVal dfn As Double, ByVal xx As Double) As Double
   t_pdf = Kw.tgamma((dfn + 1.0) / 2.0) * Pow((1.0 + Kw.square(xx) / dfn) _
            , (-(dfn + 1.0) / 2.0)) / (Sqr(dfn * Kw.PI) * Kw.tgamma(dfn / _
            2.0))
End Function
Private Function lf_subtprob(ByVal para_nnx As Double, ByVal xx As _
         Double) As Double
   Dim aa As Double
   Dim bb As Double
   Dim ww As Double
   Dim zz As Double
   Dim yy As Double
   Dim ii As Double
   Dim para_nn As Long
   Dim retvalu As Double
   para_nn = floorl(Math.Abs(para_nnx))
   ww = Atan2(xx, Sqr(para_nn))
   zz = Kw.square(Math.Cos(ww))
   yy = 1.0
   ii = para_nn - 2.0
   Do While (2.0 <= ii)
      yy = 1.0 + (ii - 1.0) / ii * zz * yy
      ii = ii - 2.0
   Loop
   If (Kw.iseven(para_nn)) Then
      aa = Math.Sin(ww) / 2.0
      bb = 0.5
   Else
      If (para_nn = 1) Then
         aa = 0.0
      Else
         aa = Math.Sin(ww) * Math.Cos(ww) / Kw.PI
      End If
      bb = 0.5 + ww / Kw.PI
   End If
   retvalu = bb + aa * yy
   If (1.0 < retvalu) Then
      retvalu = 1.0
   End If
   lf_subtprob = retvalu
End Function
Public Function t_cdf(ByVal dfx As Double, ByVal xx As Double) As Double
   t_cdf = lf_subtprob(dfx, xx)
End Function
Private Function lf_t_quantile(ByVal ndfx As Long, ByVal probx As Double) _
         As Double
   Dim ux As Double
   Dim uxsq As Double
   Dim aa_x As Double
   Dim bb_x As Double
   Dim cc_x As Double
   Dim dd_x As Double
   Dim ee_x As Double
   Dim retvalu As Double
   Dim delta As Double
   Dim pp_a As Double
   Dim nn_a As Double
   Dim out_sign As Double
   If (probx < 0.5) Then
      probx = 1.0 - probx
      out_sign = -1
   Else
      out_sign = 1
   End If
   ux = normal_quantile(probx)
   uxsq = Kw.square(ux)
   aa_x = ((1.0) * uxsq + 1.0) / 4.0
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq - 15.0) / 384.0
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq - 1920.0) * _
            uxsq - 945.0) / 92160.0
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq - 1782.0) * _
            uxsq - 765.0) * uxsq - 17955.0) / 368640.0
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x / ndfx) / _
            ndfx) / ndfx) / ndfx) / ndfx)
   If (ndfx <= Kw.square(Kw.log10(probx)) + 3.0) Then
      nn_a = ndfx + 1.0
      Do While (True)
         pp_a = lf_subtprob(ndfx, retvalu)
         ee_x = (nn_a * Math.Log(nn_a / (ndfx + Kw.square(retvalu))) + _
                  Math.Log(ndfx / nn_a / Kw.TAU) - 1.0 + (1.0 / nn_a - _
                  1.0 / ndfx) / 6.0) / 2.0
         If (Kw.DBLMAXLN / 2.0 < ee_x) Then
            delta = 0.0
         Else
            delta = (pp_a - probx) / Math.Exp(ee_x)
         End If
         retvalu = retvalu - delta
         aa_x = Math.Abs(delta) * 10000.0
         If (Kw.iszero(retvalu) Or aa_x < retvalu) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   lf_t_quantile = out_sign * retvalu
End Function
Public Function t_quantile(ByVal dfx As Double, ByVal probx As Double) As _
         Double
   Dim ndfx As Long
   Dim retvalu As Double
   ndfx = floor(Math.Abs(dfx))
   If (Kw.iszero(probx - 0.5)) Then
      retvalu = 0.0
   ElseIf (probx <= 0.0) Then
      retvalu = -Kw.DBLMAX
   ElseIf (1.0 <= probx) Then
      retvalu = Kw.DBLMAX
   Else
      retvalu = lf_t_quantile(ndfx, probx)
   End If
   t_quantile = retvalu
End Function
Public Function t_cdf__1(ByVal dfx As Double, ByVal xx As Double) As Double
   Dim zz As Double
   Dim yy As Double
   yy = Sqr(dfx + xx * xx)
   zz = (xx + yy) / (2.0 * yy)
   t_cdf__1 = Kw.betainc__1(dfx / 2.0, dfx / 2.0, zz)
End Function
Public Function t_quantile__1(ByVal dfx As Double, ByVal probx As Double) _
         As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   If (Not Kw.isbetween(probx, 0.0, 1.0)) Then
      scvx_xx = 0.0
   Else
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = probx - t_cdf(dfx, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = probx - t_cdf(dfx, scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   t_quantile__1 = scvx_xx
End Function
Public Function f_cdf(ByVal dfn_a As Long, ByVal dfn_b As Long, ByVal xx _
         As Double) As Double
   Dim aa As Double
   Dim bb As Double
   Dim gg As Double
   aa = dfn_a / 2.0
   bb = dfn_b / 2.0
   gg = aa * xx
   f_cdf = beta_cdf(aa, bb, gg / (bb + gg))
End Function
Private Function lf_subfprob(ByVal dfn_a As Long, ByVal dfn_b As Long, _
         ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim zx As Double
   Dim ax As Double
   Dim bx As Double
   Dim yx As Double
   Dim ix As Double
   Dim pp_a As Double
   If (xx <= 0.0) Then
      retvalu = 1.0
   ElseIf (Kw.iseven(dfn_b)) Then
      zx = dfn_b / (dfn_b + dfn_a * xx)
      ax = 1.0
      For ix = dfn_b - 2 To 2 Step - 2
         ax = 1.0 + (dfn_a + ix - 2.0) / ix * zx * ax
      Next
      retvalu = 1.0 - (Pow(1.0 - zx, dfn_a / 2.0) * ax)
   ElseIf (Kw.iseven(dfn_a)) Then
      zx = dfn_a * xx / (dfn_b + dfn_a * xx)
      ax = 1.0
      For ix = dfn_a - 2 To 2 Step - 2
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax
      Next
      retvalu = Pow(1.0 - zx, dfn_b / 2.0) * ax
   Else
      yx = Atan2(Sqr(dfn_a * xx / dfn_b), 1.0)
      zx = Kw.square(Math.Sin(yx))
      If (dfn_a = 1) Then
         ax = 0.0
      Else
         ax = 1.0
      End If
      For ix = dfn_a - 2 To 3 Step - 2
         ax = 1.0 + (dfn_b + ix - 2.0) / ix * zx * ax
      Next
      bx = Kw.PI
      For ix = 2 To dfn_b - 1 Step 2
         bx = bx * (ix - 1.0) / ix
      Next
      pp_a = 2.0 / bx * Math.Sin(yx) * Pow(Math.Cos(yx), dfn_b) * ax
      zx = Kw.square(Math.Cos(yx))
      If (dfn_b = 1) Then
         ax = 0.0
      Else
         ax = 1.0
      End If
      For ix = dfn_b - 2 To 3 Step - 2
         ax = 1.0 + (ix - 1.0) / ix * zx * ax
      Next
      retvalu = pp_a + 1.0 - 4.0 * (yx + Math.Sin(yx) * Math.Cos(yx) * _
               ax) / Kw.TAU
      If (retvalu < 0.0) Then
         retvalu = 0.0
      End If
   End If
   lf_subfprob = retvalu
End Function
Private Function lf_subf_two(ByVal nx As Double, ByVal qq As Double, _
         ByVal pp As Double) As Double
   Dim uu As Double
   Dim nxs As Double
   Dim xx_prev As Double
   Dim xx As Double
   Dim zz As Double
   uu = chisqr_cdf(nx, pp)
   nxs = nx - 2.0
   xx = (uu / nx * (1.0 + ((uu - nxs) / 2.0 + (((4.0 * uu - 11.0 * nxs) * _
            uu + nxs * (7.0 * nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 * _
            nxs) * uu + nxs * (17.0 * nx - 26.0)) * uu - nxs * nxs * (9.0 _
            * nx - 6.0)) / 48.0 / qq) / qq) / qq))
   Do While (True)
      If (xx <= 0.0) Then
         Exit Do
      End If
      zz = Math.Exp(((nx + qq) * Math.Log((nx + qq) / (nx * xx + qq)) + _
               (nx - 2.0) * Math.Log(xx) + Math.Log(nx * qq / (nx + qq)) _
               - Kw.TWOLN - Math.Log(Kw.TAU) - (1.0 / nx + 1.0 / qq - 1.0 _
               / (nx + qq)) / 6.0) / 2.0)
      xx_prev = xx
      xx = xx + (lf_subfprob(nx, qq, xx) - pp) / zz
      If (Kw.iswithin(xx, xx_prev, 0.00001)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   lf_subf_two = xx
End Function
Private Function lf_subfx(ByVal nx As Long, ByVal jj As Long, ByVal pp As _
         Double) As Double
   Dim retvalu As Double
   Dim uu As Double
   Dim aa As Double
   If (Kw.iseq(pp, 1.0)) Then
      retvalu = 0.0
   ElseIf (jj = 0) Then
      retvalu = 1.0 / Kw.square(t_quantile(nx, 0.5 - pp / 2.0))
   ElseIf (nx = 1) Then
      retvalu = Kw.square(t_quantile(jj, pp / 2.0))
   ElseIf (jj = 2) Then
      uu = chisqr_cdf(jj, 1.0 - pp)
      aa = jj - 2.0
      retvalu = 1.0 / (uu / jj * (1.0 + ((uu - aa) / 2.0 + (((4.0 * uu - _
               11.0 * aa) * uu + aa * (7.0 * jj - 10)) / 24.0 + (((2.0 * _
               uu - 10.0 * aa) * uu + aa * (17.0 * jj - 26)) * uu - aa * _
               aa * (9.0 * jj - 6.0)) / 48.0 / nx) / nx) / nx))
   ElseIf (jj < nx) Then
      retvalu = 1.0 / lf_subf_two(jj, nx, 1.0 - pp)
   Else
      retvalu = lf_subf_two(nx, jj, pp)
   End If
   lf_subfx = retvalu
End Function
Public Function f_quantile(ByVal dfn_a As Long, ByVal dfn_b As Long, _
         ByVal probx As Double) As Double
   f_quantile = lf_subfx(dfn_a, dfn_b, 1.0 - probx)
End Function
Public Function f_quantile__1(ByVal dfn_a As Long, ByVal dfn_b As Long, _
         ByVal probx As Double) As Double
   Dim retvalu As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   If (probx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= probx) Then
      retvalu = 1.0
   Else
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = probx - f_cdf(dfn_a, dfn_b, scvx_xx)
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
      retvalu = scvx_xx
   End If
   f_quantile__1 = retvalu
End Function
Public Function mb_pdf(ByVal aa As Double, ByVal xx As Double) As Double
   mb_pdf = Sqr(4 / Kw.TAU) * xx * xx * Math.Exp(-xx * xx / (2 * aa * _
            aa)) / (aa * aa * aa)
End Function
Public Function mb_cdf(ByVal aa As Double, ByVal xx As Double) As Double
   mb_cdf = Kw.erf(xx / (Kw.TWOSQRT * aa)) - Sqr(4 / Kw.TAU) * xx * _
            Math.Exp(-xx * xx / (2 * aa * aa)) / aa
End Function
Public Function maxwell_boltzmann_pdf(ByVal temperature As Double, ByVal _
         molecular_mass As Double, ByVal velocity As Double) As Double
   Dim aa As Double
   aa = Sqr(Kw.BOLTZMANN * temperature / molecular_mass)
   maxwell_boltzmann_pdf = mb_pdf(aa, velocity)
End Function
Public Function maxwell_boltzmann_cdf(ByVal temperature As Double, ByVal _
         molecular_mass As Double, ByVal velocity As Double) As Double
   Dim aa As Double
   aa = Sqr(Kw.BOLTZMANN * temperature / molecular_mass)
   maxwell_boltzmann_cdf = mb_cdf(aa, velocity)
End Function
Public Function maxwell_juttner_pdf(ByVal temperature As Double, ByVal _
         molecular_mass As Double, ByVal velocity As Double) As Double
   Dim gmm As Double
   Dim bt As Double
   Dim rtht As Double
   Dim dn As Double
   Dim retvalu As Double
   If (temperature <= 0.0 Or velocity <= 0.0 Or Kw.LIGHT <= velocity Or _
            molecular_mass <= 0.0) Then
      retvalu = 0.0
   Else
      rtht = (molecular_mass * Kw.LIGHT * Kw.LIGHT) / (Kw.BOLTZMANN * _
               temperature)
      bt = velocity / Kw.LIGHT
      gmm = 1.0 / Kw.topyh1(bt)
      dn = Kw.bessKn(2, rtht)
      If (Kw.iszero(dn)) Then
         retvalu = 0.0
      Else
         retvalu = gmm * gmm * bt * rtht * Math.Exp(-gmm * rtht) / dn
      End If
   End If
   maxwell_juttner_pdf = retvalu
End Function
Public Function blackbodyl_pdf(ByVal wavelen As Double) As Double
   Dim retvalu As Double
   If (wavelen <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Pow(wavelen, -5.0) / (Math.Exp(1.0 / wavelen) - 1.0)
   End If
   blackbodyl_pdf = retvalu * 15.0 / Pow(Kw.PI, 4.0)
End Function
Public Function blackbodyf_pdf(ByVal freq As Double) As Double
   Dim retvalu As Double
   If (freq <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Pow(freq, 3.0) / (Math.Exp(freq) - 1.0)
   End If
   blackbodyf_pdf = retvalu * 15.0 / Pow(Kw.PI, 4.0)
End Function
Public Function ints_rand(ByVal para_nn As Long, prob_arr_pc() As Double) _
         As Long
   Dim sum As Double
   Dim p_ind As Long
   Dim rndm As Double
   Dim hh As Double
   sum = 0.0
   For p_ind = 0 To para_nn - 1
      sum = sum + prob_arr_pc(p_ind)
   Next
   rndm = randd()
   hh = 0.0
   For p_ind = 0 To para_nn - 1
      hh = hh + prob_arr_pc(p_ind) / sum
      If (rndm < hh) Then
         Exit For
      End If
   Next
   ints_rand = p_ind
End Function
Private Function lf_num2norm(ByVal numm As Double) As Double
   Dim retvalu As Double
   If (numm <= 1) Then
      retvalu = 0.0
   Else
      retvalu = 3.0 * Sqr(Math.Log(numm)) - 1.4 - (0.5 * Math.Log(numm) - _
               0.39) / numm
   End If
   lf_num2norm = retvalu
End Function
Public Function stdev2spread(ByVal numm As Double, ByVal stdevx As _
         Double) As Double
   Dim retvalu As Double
   If (numm <= 1 Or Kw.iszero(stdevx)) Then
      retvalu = 0.0
   Else
      retvalu = (stdevx * lf_num2norm(numm))
   End If
   stdev2spread = retvalu
End Function
Public Function spread2stdev(ByVal numm As Double, ByVal spread As _
         Double) As Double
   Dim retvalu As Double
   If (numm <= 1 Or Kw.iszero(spread)) Then
      retvalu = 0.0
   Else
      retvalu = (spread / lf_num2norm(numm))
   End If
   spread2stdev = retvalu
End Function
Public Function maxabs(ByVal nn As Long, data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim maxaby As Double
   Dim amaxaby As Double
   Dim atemp As Double
   maxaby = data_arr_pc(0)
   amaxaby = Math.Abs(maxaby)
   For ii = 1 To nn - 1
      atemp = Math.Abs(data_arr_pc(ii))
      If (amaxaby < atemp) Then
         maxaby = data_arr_pc(ii)
         amaxaby = atemp
      End If
   Next
   maxabs = maxaby
End Function
Public Function minabs(ByVal nn As Long, data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim minaby As Double
   Dim aminaby As Double
   Dim atemp As Double
   minaby = data_arr_pc(0)
   aminaby = Math.Abs(minaby)
   For ii = 1 To nn - 1
      atemp = Math.Abs(data_arr_pc(ii))
      If (atemp < aminaby) Then
         minaby = data_arr_pc(ii)
         aminaby = atemp
      End If
   Next
   minabs = minaby
End Function
Public Function maxabsoffset(ByVal offset As Double, ByVal nn As Long, _
         data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim maxaby As Double
   Dim delta As Double
   maxaby = data_arr_pc(0) - offset
   For ii = 1 To nn - 1
      delta = data_arr_pc(ii) - offset
      If (Math.Abs(maxaby) < Math.Abs(delta)) Then
         maxaby = delta
      End If
   Next
   maxabsoffset = maxaby + offset
End Function
Public Function minabsoffset(ByVal offset As Double, ByVal nn As Long, _
         data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim minaby As Double
   Dim delta As Double
   minaby = data_arr_pc(0) - offset
   For ii = 1 To nn - 1
      delta = data_arr_pc(ii) - offset
      If (Math.Abs(delta) < Math.Abs(minaby)) Then
         minaby = delta
      End If
   Next
   minabsoffset = minaby + offset
End Function
Public Function mini(ByVal num As Long, data_arr_pc() As Double) As Double
   Dim curr As Double
   Dim tmp As Double
   Dim ii As Long
   curr = data_arr_pc(0)
   For ii = 1 To num - 1
      tmp = data_arr_pc(ii)
      If (tmp < curr) Then
         curr = tmp
      End If
   Next
   mini = curr
End Function
Public Function maxi(ByVal num As Long, data_arr_pc() As Double) As Double
   Dim curr As Double
   Dim tmp As Double
   Dim ii As Long
   curr = data_arr_pc(0)
   For ii = 1 To num - 1
      tmp = data_arr_pc(ii)
      If (curr < tmp) Then
         curr = tmp
      End If
   Next
   maxi = curr
End Function
Public Function maxmin(ByVal num As Long, data_arr_pc() As Double, ByRef _
         ret_maxmin_arr_p() As Double) As Double
   Dim tmp As Double
   Dim ii As Long
   Dim maxx As Double
   Dim minn As Double
   minn = data_arr_pc(0)
   maxx = data_arr_pc(0)
   For ii = 1 To num - 1
      tmp = data_arr_pc(ii)
      If (minn < tmp) Then
         minn = tmp
      End If
      If (tmp < maxx) Then
         maxx = tmp
      End If
   Next
   ret_maxmin_arr_p(0) = maxx
   ret_maxmin_arr_p(1) = minn
   maxmin = maxx - minn
End Function
Public Function min2(ByVal value_a As Double, ByVal value_b As Double) As _
         Double
   Dim retvalu As Double
   If (value_a < value_b) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   min2 = retvalu
End Function
Public Function max2(ByVal value_a As Double, ByVal value_b As Double) As _
         Double
   Dim retvalu As Double
   If (value_b < value_a) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   max2 = retvalu
End Function
Public Function minabs2(ByVal value_a As Double, ByVal value_b As Double) _
         As Double
   Dim retvalu As Double
   If (Math.Abs(value_a) < Math.Abs(value_b)) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   minabs2 = retvalu
End Function
Public Function maxabs2(ByVal value_a As Double, ByVal value_b As Double) _
         As Double
   Dim retvalu As Double
   If (Math.Abs(value_b) < Math.Abs(value_a)) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   maxabs2 = retvalu
End Function
Public Function variance(ByVal nn As Long, xx_arr_pc() As Double) As Double
   Dim ii As Long
   Dim delta As Double
   Dim meanx As Double
   Dim variancex As Double
   meanx = 0.0
   variancex = 0.0
   For ii = 0 To nn - 1
      delta = xx_arr_pc(ii) - meanx
      meanx = meanx + delta / (ii + 1.0)
      variancex = variancex + delta * (xx_arr_pc(ii) - meanx)
   Next
   If (2 <= nn) Then
      variancex = variancex / (nn - 1.0)
   Else
      variancex = 0.0
   End If
   variance = variancex
End Function
Public Function mean(ByVal nn As Long, xx_arr_pc() As Double) As Double
   Dim ii As Long
   Dim delta As Double
   Dim meanx As Double
   meanx = 0.0
   For ii = 0 To nn - 1
      delta = xx_arr_pc(ii) - meanx
      meanx = meanx + delta / (ii + 1.0)
   Next
   mean = meanx
End Function
Private Function lf_stts_is_inited(ByVal ix_hndl As Long) As Boolean
   ' local-use Vb6 lv_sttx_mtrx
   Dim vll As Long
   Dim ii As Long
   Dim jj As Long
   Dim retvalu_bol As Boolean
   vll = lv_sttx_mtrx(0, LC_STTS_MAGIC)
   If (vll <> Kw.magicset() And vll <> Kw.magicnot()) Then
      For ii = 0 To LC_STTS_KEY_CNT - 1
         For jj = 0 To LC_STTS_MAGIC - 1
            lv_sttx_mtrx(ii, jj) = 0.0
         Next
         lv_sttx_mtrx(0, LC_STTS_MAGIC) = Kw.magicnot()
      Next
   End If
   If (LC_STTS_KEY_CNT <= ix_hndl) Then
      retvalu_bol = False
   Else
      vll = lv_sttx_mtrx(ix_hndl, LC_STTS_MAGIC)
      retvalu_bol = Kw.ismagic(vll)
   End If
   lf_stts_is_inited = retvalu_bol
End Function
Private Function lf_stts_find_empty() As Long
   Dim ix_hndl As Long
   ix_hndl = 0
   Do While (lf_stts_is_inited(ix_hndl))
      ix_hndl = ix_hndl + 1
   Loop
   If (LC_STTS_KEY_CNT <= ix_hndl) Then
      Debug.Print("lf_stts_find_empty:" & "STTS-Bad-handle")
      Stop
   End If
   lf_stts_find_empty = ix_hndl
End Function
Public Function stts_init(ByVal ix_hndl As Long, ByVal n_count As Double, _
         ByVal meanx As Double, ByVal var As Double, ByVal minim As _
         Double, ByVal maxim As Double) As Long
   ' local-use Vb6 lv_sttx_mtrx
   lv_sttx_mtrx(ix_hndl, LC_STTS_NUM) = n_count
   lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = meanx
   lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = var * (n_count - 1.0)
   lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = minim
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = maxim
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAGIC) = Kw.magicset()
   stts_init = ix_hndl
End Function
Public Function stts_initx(ByVal ix_hndl As Long, ByVal num_count As _
         Double, ByVal meanx As Double, ByVal msq As Double, ByVal minim _
         As Double, ByVal maxim As Double) As Long
   ' local-use Vb6 lv_sttx_mtrx
   lv_sttx_mtrx(ix_hndl, LC_STTS_NUM) = num_count
   lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = meanx
   lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = msq
   lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = minim
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = maxim
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAGIC) = Kw.magicset()
   stts_initx = ix_hndl
End Function
Public Function stts_reset(ByVal ix_hndl As Long) As Long
   stts_reset = stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0)
End Function
Public Function stts_new() As Long
   Dim ix_hndl As Long
   ix_hndl = lf_stts_find_empty()
   stts_new = stts_reset(ix_hndl)
End Function
Public Function stts_delete(ByVal ix_hndl As Long) As Long
   ' local-use Vb6 lv_sttx_mtrx
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAGIC) = Kw.magicnot()
   stts_delete = ix_hndl
End Function
Public Function sttscount(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttscount = lv_sttx_mtrx(ix_hndl, LC_STTS_NUM)
End Function
Public Function sttsmean(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttsmean = lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN)
End Function
Public Function sttsmsq(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttsmsq = lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ)
End Function
Public Function sttsmax(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttsmax = lv_sttx_mtrx(ix_hndl, LC_STTS_MAX)
End Function
Public Function sttsmin(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttsmin = lv_sttx_mtrx(ix_hndl, LC_STTS_MIN)
End Function
Public Function sttsmagic(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_mtrx
   sttsmagic = lv_sttx_mtrx(ix_hndl, LC_STTS_MAGIC)
End Function
Public Function sttssum(ByVal ix_hndl As Long) As Double
   sttssum = sttsmean(ix_hndl) * sttscount(ix_hndl)
End Function
Public Function sttsvar(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (Math.Abs(sttscount(ix_hndl)) <= 1.0) Then
      retvalu = 0.0
   Else
      retvalu = (sttsmsq(ix_hndl) / (Math.Abs(sttscount(ix_hndl) - 1.0)))
   End If
   sttsvar = retvalu
End Function
Public Function sttsstdev(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (sttscount(ix_hndl) <= 1.0) Then
      retvalu = 0.0
   Else
      retvalu = (Sqr(sttsmsq(ix_hndl) / (sttscount(ix_hndl) - 1.0)))
   End If
   sttsstdev = retvalu
End Function
Public Function sttsstdevmean(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (sttscount(ix_hndl) <= 1.0 Or sttsmsq(ix_hndl) <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = (Sqr(sttsmsq(ix_hndl)) / (sttscount(ix_hndl) - 1.0))
   End If
   sttsstdevmean = retvalu
End Function
Public Function sttsspread(ByVal ix_hndl As Long) As Double
   sttsspread = sttsmax(ix_hndl) - sttsmin(ix_hndl)
End Function
Public Function stts_update(ByVal ix_hndl As Long, ByVal new_data As _
         Double) As Double
   ' local-use Vb6 lv_sttx_mtrx
   Dim delta As Double
   Dim numy As Double
   If (Not lf_stts_is_inited(ix_hndl)) Then
      Debug.Print("stts_update:" & "STTS-Bad-handle")
      Stop
   End If
   delta = new_data - lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN)
   lv_sttx_mtrx(ix_hndl, LC_STTS_NUM) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_NUM) + 1.0
   numy = lv_sttx_mtrx(ix_hndl, LC_STTS_NUM)
   lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MEAN) + (delta / numy)
   lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MSQ) + (delta * (new_data - lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MEAN)))
   If ((numy < 2.0 Or sttsspread(ix_hndl) < 0.0)) Then
      lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = new_data
      lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = new_data
   Else
      If (new_data < lv_sttx_mtrx(ix_hndl, LC_STTS_MIN)) Then
         lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = new_data
      End If
      If (lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) < new_data) Then
         lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = new_data
      End If
   End If
   stts_update = delta
End Function
Public Function stts_downdate(ByVal ix_hndl As Long, ByVal old_data As _
         Double) As Double
   Dim delt As Double
   Dim men As Double
   If (Not lf_stts_is_inited(ix_hndl)) Then
      Debug.Print("stts_downdate:" & "STTS-Bad-handle")
      Stop
   End If
   men = lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN)
   delt = old_data - men
   If (0.0 < lv_sttx_mtrx(ix_hndl, LC_STTS_NUM)) Then
      lv_sttx_mtrx(ix_hndl, LC_STTS_NUM) = lv_sttx_mtrx(ix_hndl, _
               LC_STTS_NUM) - 1
      If (0.0 < lv_sttx_mtrx(ix_hndl, LC_STTS_NUM)) Then
         men = men - delt / lv_sttx_mtrx(ix_hndl, LC_STTS_NUM)
         lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = men
         lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = lv_sttx_mtrx(ix_hndl, _
                  LC_STTS_MSQ) - delt * (old_data - men)
         If (lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) < 0.0) Then
            lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = 0.0
         End If
      Else
         lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = 0.0
         lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = 0.0
      End If
   End If
   stts_downdate = delt
End Function
Public Function stts_updatex(ByVal ix_hndl As Long, ByVal nn As Long, _
         data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   retvalu = 0.0
   For ii = 0 To nn - 1
      retvalu = retvalu + stts_update(ix_hndl, data_arr_pc(ii))
   Next
   stts_updatex = retvalu
End Function
Public Function stts_newx(ByVal nn As Long, data_arr_pc() As Double) As Long
   Dim ihndl As Long
   Dim ii As Long
   ihndl = stts_new()
   For ii = 0 To nn - 1
      Call stts_update(ihndl, data_arr_pc(ii))
   Next
   stts_newx = ihndl
End Function
Public Function stts_shift(ByVal ix_hndl As Long, ByVal data_shift As _
         Double) As Long
   ' local-use Vb6 lv_sttx_mtrx
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MAX) + data_shift
   lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MIN) + data_shift
   lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MEAN) + data_shift
   stts_shift = ix_hndl
End Function
Public Function stts_scale(ByVal ix_hndl As Long, ByVal xfactor As _
         Double) As Long
   ' local-use Vb6 lv_sttx_mtrx
   Dim newmax As Double
   Dim newmin As Double
   If (0 < xfactor) Then
      newmax = lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) * xfactor
      newmin = lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) * xfactor
   Else
      newmax = lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) * xfactor
      newmin = lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) * xfactor
   End If
   lv_sttx_mtrx(ix_hndl, LC_STTS_MIN) = newmin
   lv_sttx_mtrx(ix_hndl, LC_STTS_MAX) = newmax
   lv_sttx_mtrx(ix_hndl, LC_STTS_MEAN) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MEAN) * xfactor
   lv_sttx_mtrx(ix_hndl, LC_STTS_MSQ) = lv_sttx_mtrx(ix_hndl, _
            LC_STTS_MSQ) * xfactor * xfactor
   stts_scale = ix_hndl
End Function
Public Function stts_copy(ByVal hto As Long, ByVal hfrom As Long) As Long
   ' local-use Vb6 lv_sttx_mtrx
   Dim ii As Long
   For ii = 0 To LC_STTS_CNT - 1
      lv_sttx_mtrx(hto, ii) = lv_sttx_mtrx(hfrom, ii)
   Next
   stts_copy = hto
End Function
Public Function stts_update2(ByVal ix_hnda As Long, ByVal ix_hndb As _
         Long) As Long
   Dim delta As Double
   Dim ncount As Double
   Dim nb As Double
   Dim nmean As Double
   Dim nmsqr As Double
   Dim bmin As Double
   Dim bmax As Double
   Dim amin As Double
   Dim amax As Double
   If (Not lf_stts_is_inited(ix_hndb)) Then
      Debug.Print("stts_update2:" & "STTS-Bad-hndb")
      Stop
   End If
   nb = sttscount(ix_hndb)
   If (Not Kw.iszero(nb)) Then
      If (Not lf_stts_is_inited(ix_hnda)) Then
         Debug.Print("stts_update2:" & "STTS-Bad-hnda")
         Stop
      End If
      If (Kw.iszero(sttscount(ix_hnda))) Then
         Call stts_copy(ix_hnda, ix_hndb)
      Else
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda)
         ncount = nb + sttscount(ix_hnda)
         nmean = sttsmean(ix_hnda) + delta * nb / ncount
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta * delta * _
                  sttscount(ix_hnda) * nb / ncount)
         amin = sttsmin(ix_hnda)
         amax = sttsmax(ix_hnda)
         bmin = sttsmin(ix_hndb)
         bmax = sttsmax(ix_hndb)
         If (amax < amin) Then
            amin = bmin
            amax = bmax
         Else
            If (bmin < amin) Then
               amin = bmin
            End If
            If (amax < bmax) Then
               amax = bmax
            End If
         End If
         Call stts_init(ix_hnda, ncount, nmean, nmsqr / (ncount - 1.0), _
                  amin, amax)
      End If
   End If
   stts_update2 = ix_hnda
End Function
Private Function lf_corr_is_init(ByVal ix_chnd As Long) As Boolean
   ' local-use Vb6 lv_crx_mtrx
   Dim retvalu_bol As Boolean
   Dim vll As Double
   If (LC_STTS_KEY_CNT <= ix_chnd) Then
      retvalu_bol = False
   Else
      vll = lv_crx_mtrx(ix_chnd, LC_STTSC_MAGIC)
      retvalu_bol = Kw.ismagic(vll)
   End If
   lf_corr_is_init = retvalu_bol
End Function
Private Function lf_corr_find_empty() As Long
   Dim ix_chnd As Long
   ix_chnd = 0
   Do While (lf_corr_is_init(ix_chnd))
      ix_chnd = ix_chnd + 1
   Loop
   If (LC_STTS_KEY_CNT <= ix_chnd) Then
      Debug.Print("lf_corr_find_empty:" & "STTS-No-empty-handle")
      Stop
   End If
   lf_corr_find_empty = ix_chnd
End Function
Public Function corr_new() As Long
   ' local-use Vb6 lv_crx_mtrx
   Dim ix_chnd As Long
   ix_chnd = lf_corr_find_empty()
   lv_crx_mtrx(ix_chnd, LC_STTSC_XX) = stts_new()
   lv_crx_mtrx(ix_chnd, LC_STTSC_YY) = stts_new()
   lv_crx_mtrx(ix_chnd, LC_STTSC_COVAR) = 0.0
   lv_crx_mtrx(ix_chnd, LC_STTSC_MAGIC) = Kw.magicset()
   corr_new = ix_chnd
End Function
Public Function corr_delete(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_crx_mtrx
   lv_crx_mtrx(ix_chnd, LC_STTSC_MAGIC) = Kw.magicnot()
   Call stts_delete(lv_crx_mtrx(ix_chnd, LC_STTSC_XX))
   Call stts_delete(lv_crx_mtrx(ix_chnd, LC_STTSC_YY))
   corr_delete = ix_chnd
End Function
Public Function corr_handlex(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_crx_mtrx
   corr_handlex = lv_crx_mtrx(ix_chnd, LC_STTSC_XX)
End Function
Public Function corr_handley(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_crx_mtrx
   corr_handley = lv_crx_mtrx(ix_chnd, LC_STTSC_YY)
End Function
Public Function corr_update(ByVal ix_chnd As Long, ByVal xx As Double, _
         ByVal yy As Double) As Double
   ' local-use Vb6 lv_crx_mtrx
   Dim num As Long
   Dim ddxx As Double
   Dim ddyy As Double
   Dim yyhnd As Long
   Dim xxhnd As Long
   yyhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_YY)
   xxhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_XX)
   num = sttscount(xxhnd)
   ddxx = stts_update(xxhnd, xx)
   ddyy = stts_update(yyhnd, yy)
   lv_crx_mtrx(ix_chnd, LC_STTSC_COVAR) = lv_crx_mtrx(ix_chnd, _
            LC_STTSC_COVAR) + (ddxx * ddyy * num / (num + 1.0))
   corr_update = lv_crx_mtrx(ix_chnd, LC_STTSC_COVAR)
End Function
Public Function corrslope(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_crx_mtrx
   Dim den As Double
   Dim retvalu As Double
   Dim xxhnd As Long
   xxhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_XX)
   den = sttsmsq(xxhnd)
   If (Kw.iszero(den)) Then
      retvalu = 0.0
   Else
      retvalu = lv_crx_mtrx(ix_chnd, LC_STTSC_COVAR) / den
   End If
   corrslope = retvalu
End Function
Public Function corry0(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_crx_mtrx
   Dim retvalu As Double
   Dim yyhnd As Long
   Dim xxhnd As Long
   yyhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_YY)
   xxhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_XX)
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) * sttsmean(xxhnd))
   corry0 = retvalu
End Function
Public Function corrcorr(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_crx_mtrx
   Dim retvalu As Double
   Dim xxmsq As Double
   Dim yymsq As Double
   Dim den As Double
   xxmsq = sttsmsq(lv_crx_mtrx(ix_chnd, LC_STTSC_XX))
   yymsq = sttsmsq(lv_crx_mtrx(ix_chnd, LC_STTSC_YY))
   den = xxmsq * yymsq
   If (Kw.iszero(den)) Then
      retvalu = 0.0
   Else
      retvalu = (lv_crx_mtrx(ix_chnd, LC_STTSC_COVAR) / Sqr(den))
   End If
   corrcorr = retvalu
End Function
Public Function corrstderr(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_crx_mtrx
   Dim yyhnd As Long
   Dim diff As Double
   Dim retvalu As Double
   yyhnd = lv_crx_mtrx(ix_chnd, LC_STTSC_YY)
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) * lv_crx_mtrx(ix_chnd, _
            LC_STTSC_COVAR))
   If (diff < 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Sqr(diff / (sttscount(yyhnd) - 2.0))
   End If
   corrstderr = retvalu
End Function
Public Function fit_poly(ByVal num_points As Long, pts_arr_pc() As Double _
         , ByRef ret_coeff_arr_p() As Double) As Double
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim prod As Double
   Dim cc_arr() As Double
   ReDim Preserve cc_arr(num_points)
   For j_ind = 0 To num_points - 1
      cc_arr(j_ind) = pts_arr_pc(2 * j_ind + 1)
   Next
   For j_ind = 1 To num_points - 1
      k_ind = num_points - 1 - j_ind
      For i_ind = num_points - 1 To j_ind Step - 1
         cc_arr(i_ind) = ((cc_arr(i_ind - 1) - cc_arr(i_ind)) / _
                  (pts_arr_pc(2 * k_ind) - pts_arr_pc(2 * i_ind)))
         k_ind = k_ind - 1
      Next
   Next
   For j_ind = 0 To num_points - 2
      For i_ind = num_points - 2 To j_ind Step - 1
         prod = cc_arr(i_ind + 1) * pts_arr_pc(2 * (i_ind - j_ind))
         cc_arr(i_ind) = cc_arr(i_ind) - prod
      Next
   Next
   For j_ind = 0 To num_points - 1
      ret_coeff_arr_p(j_ind) = cc_arr(j_ind)
   Next
   fit_poly = num_points
End Function
Public Function parabola_solve(ByVal xx_a As Double, ByVal yy_a As Double _
         , ByVal xx_b As Double, ByVal yy_b As Double, ByVal xx_c As _
         Double, ByVal yy_c As Double) As Double
   ' local-use Vb6 lv_parabola_arr
   Dim pts_arr(8) As Double
   Dim cc_arr(4) As Double
   Dim disc As Double
   Dim axis As Double
   Dim yyextrema As Double
   Dim real_roots As Long
   Dim roots_arr(2) As Double
   pts_arr(0) = xx_a
   pts_arr(1) = yy_a
   pts_arr(2) = xx_b
   pts_arr(3) = yy_b
   pts_arr(4) = xx_c
   pts_arr(5) = yy_c
   Call fit_poly(3, pts_arr, cc_arr)
   roots_arr(0) = Kw.DBLMAX
   roots_arr(1) = Kw.DBLMAX
   If (Kw.iszero(cc_arr(2))) Then
      axis = Kw.DBLMAX
      If (Kw.iszero(cc_arr(1))) Then
         yyextrema = cc_arr(0)
         real_roots = 0
      Else
         yyextrema = Kw.DBLMAX
         real_roots = 1
         roots_arr(0) = (-cc_arr(0) / cc_arr(1))
      End If
   Else
      axis = (-cc_arr(1) / (2.0 * cc_arr(2)))
      yyextrema = (cc_arr(0) + xx_a * (cc_arr(1) + xx_a * cc_arr(2)))
      disc = (cc_arr(1) * cc_arr(1) - 4.0 * cc_arr(2) * cc_arr(0))
      If (Kw.iszero(disc)) Then
         real_roots = 1
         roots_arr(0) = axis
      ElseIf (0 < disc) Then
         disc = Sqr(disc) / (2.0 * cc_arr(2))
         real_roots = 2
         roots_arr(0) = axis - disc
         roots_arr(1) = axis + disc
      Else
         real_roots = 0
      End If
   End If
   lv_parabola_arr(LC_PARABOLA_X_AXIS) = axis
   lv_parabola_arr(LC_PARABOLA_Y_EXTREMA) = yyextrema
   lv_parabola_arr(LC_PARABOLA_REAL_ROOTS) = real_roots
   lv_parabola_arr(LC_PARABOLA_ROOT_A) = roots_arr(0)
   lv_parabola_arr(LC_PARABOLA_ROOT_B) = roots_arr(1)
   lv_parabola_arr(LC_PARABOLA_COEFF_C) = cc_arr(0)
   lv_parabola_arr(LC_PARABOLA_COEFF_B) = cc_arr(1)
   lv_parabola_arr(LC_PARABOLA_COEFF_A) = cc_arr(2)
   parabola_solve = axis
End Function
Public Function parabola_get(ByVal ii_ind As Long) As Double
   ' local-use Vb6 lv_parabola_arr
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 7) Then
      retvalu = lv_parabola_arr(ii_ind)
   Else
      retvalu = 0
   End If
   parabola_get = retvalu
End Function
Public Function parabola_roots(ByVal ii_ind As Long) As Double
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 1) Then
      retvalu = parabola_get(ii_ind + LC_PARABOLA_ROOT_A)
   Else
      retvalu = Kw.DBLMAX
   End If
   parabola_roots = retvalu
End Function
Public Function parabola_yextrema() As Double
   parabola_yextrema = parabola_get(LC_PARABOLA_Y_EXTREMA)
End Function
Public Function parabola_xaxis() As Double
   parabola_xaxis = parabola_get(LC_PARABOLA_X_AXIS)
End Function
Public Function parabola_realroots() As Double
   parabola_realroots = parabola_get(LC_PARABOLA_REAL_ROOTS)
End Function
Public Function circle_solve(ByVal x_a As Double, ByVal y_a As Double, _
         ByVal x_b As Double, ByVal y_b As Double, ByVal x_c As Double, _
         ByVal y_c As Double) As Double
   ' local-use Vb6 lv_circle_arr
   Dim y_ba As Double
   Dim x_ba As Double
   Dim y_ca As Double
   Dim x_ca As Double
   Dim det As Double
   Dim xy_ba As Double
   Dim xy_ca As Double
   Dim center_x As Double
   Dim center_y As Double
   Dim radius As Double
   y_ba = y_b - y_a
   x_ba = x_b - x_a
   y_ca = y_c - y_a
   x_ca = x_c - x_a
   det = 2.0 * (y_ba * x_ca - y_ca * x_ba)
   If (Not Kw.iszero(det)) Then
      xy_ba = y_ba * (y_a + y_b) + x_ba * (x_a + x_b)
      xy_ca = y_ca * (y_a + y_c) + x_ca * (x_a + x_c)
      center_x = (y_ba * xy_ca - y_ca * xy_ba) / det
      center_y = (x_ca * xy_ba - x_ba * xy_ca) / det
      radius = Kw.hypot(center_x - x_a, center_y - y_a)
   Else
      center_x = Kw.DBLMAX
      center_y = Kw.DBLMAX
      radius = Kw.DBLMAX
   End If
   lv_circle_arr(LC_CIRCLE_X) = center_x
   lv_circle_arr(LC_CIRCLE_Y) = center_y
   lv_circle_arr(LC_CIRCLE_RADIUS) = radius
   circle_solve = radius
End Function
Public Function circle_get(ByVal ii_ind As Long) As Double
   ' local-use Vb6 lv_circle_arr
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 2) Then
      retvalu = lv_circle_arr(ii_ind)
   Else
      retvalu = 0
   End If
   circle_get = retvalu
End Function
Public Function fit_minmax(ByVal num_points As Long, pt_arr_pc() As _
         Double, ByRef ret_coeff_arr_p() As Double) As Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spr As Double
   Dim nx_spr As Double
   Dim nx_a As Double
   Dim nx_b As Double
   Dim dxx As Double
   Dim dyy As Double
   Dim pty As Double
   Dim epsxx As Double
   Dim epsyy As Double
   Dim slope_t As Double
   Dim intercept_t As Double
   Dim max_dyy As Double
   Dim min_dyy As Double
   ReDim Preserve xxp_arr(num_points)
   ReDim Preserve yyp_arr(num_points)
   epsxx = 0.0
   epsyy = 0.0
   For j_ind = 0 To num_points - 1
      xxp_arr(j_ind) = pt_arr_pc(2 * j_ind)
      yyp_arr(j_ind) = pt_arr_pc(2 * j_ind + 1)
      If (epsxx < Math.Abs(xxp_arr(j_ind))) Then
         epsxx = Math.Abs(xxp_arr(j_ind))
      End If
      If (epsyy < Math.Abs(yyp_arr(j_ind))) Then
         epsyy = Math.Abs(yyp_arr(j_ind))
      End If
   Next
   nx_spr = -1
   nx_a = 0
   nx_b = 0
   epsxx = epsxx * 16 * Kw.DBLEPS
   epsyy = epsyy * 16 * Kw.DBLEPS
   For i_ind = 1 To num_points - 1
      For j_ind = 0 To i_ind - 1
         dxx = xxp_arr(i_ind) - xxp_arr(j_ind)
         If (epsxx < Math.Abs(dxx)) Then
            slope_t = (yyp_arr(i_ind) - yyp_arr(j_ind)) / dxx
            intercept_t = yyp_arr(i_ind) - slope_t * xxp_arr(i_ind)
            pty = slope_t * xxp_arr(0) + intercept_t
            dyy = yyp_arr(0) - pty
            min_dyy = dyy
            max_dyy = dyy
            k_ind = 1
            Do While (k_ind < num_points)
               pty = slope_t * xxp_arr(k_ind) + intercept_t
               dyy = yyp_arr(k_ind) - pty
               If (dyy < min_dyy) Then
                  min_dyy = dyy
               End If
               If (max_dyy < dyy) Then
                  max_dyy = dyy
               End If
               this_spr = max_dyy - min_dyy
               If ((0 < nx_spr And nx_spr + epsyy < this_spr) Or (min_dyy _
                        < - epsyy And epsyy < max_dyy)) Then
                  Exit Do
               End If
               k_ind = k_ind + 1
            Loop
            If (num_points <= k_ind) Then
               If ((this_spr <= nx_spr + epsyy And Math.Abs(nx_a) < _
                        Math.Abs(slope_t)) Or nx_spr < 0 Or this_spr < _
                        nx_spr - epsyy) Then
                  nx_spr = this_spr
                  nx_a = slope_t
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
               End If
            End If
         End If
      Next
   Next
   ret_coeff_arr_p(1) = nx_a
   ret_coeff_arr_p(0) = nx_b
   ret_coeff_arr_p(2) = nx_spr / 2.0
   fit_minmax = nx_spr / 2.0
End Function
Private Function lf_signcrossproduct(ByVal x_a As Double, ByVal y_a As _
         Double, ByVal x_b As Double, ByVal y_b As Double, ByVal x_c As _
         Double, ByVal y_c As Double) As Double
   Dim cr As Double
   Dim bbx_a As Double
   Dim bby_a As Double
   Dim ccx_a As Double
   Dim ccy_a As Double
   bbx_a = x_b - x_a
   bby_a = y_b - y_a
   ccx_a = x_c - x_a
   ccy_a = y_c - y_a
   cr = bbx_a * ccy_a - ccx_a * bby_a
   lf_signcrossproduct = cr
End Function
Public Function fitx_minmax(ByVal num_points As Long, pt_arr_pc() As _
         Double, ByRef ret_arr_p() As Double) As Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim chi_arr() As Long
   Dim chisize As Long
   Dim hh As Long
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spr As Double
   Dim nx_spr As Double
   Dim nx_a As Double
   Dim nx_b As Double
   Dim dxx As Double
   Dim pty As Double
   Dim dyy As Double
   Dim epsxx As Double
   Dim epsyy As Double
   Dim slope_t As Double
   Dim intercept_t As Double
   Dim max_dyy As Double
   Dim min_dyy As Double
   Dim e_ind As Long
   Dim t_ind As Long
   Dim poh_ind As Long
   Dim crx As Double
   Dim lmbm_ind As Long
   ReDim Preserve xxp_arr(num_points)
   ReDim Preserve yyp_arr(num_points)
   ReDim Preserve chi_arr(num_points)
   epsxx = 0.0
   epsyy = 0.0
   lmbm_ind = 0
   For j_ind = 0 To num_points - 1
      xxp_arr(j_ind) = pt_arr_pc(2 * j_ind)
      yyp_arr(j_ind) = pt_arr_pc(2 * j_ind + 1)
      If (epsxx < Math.Abs(xxp_arr(j_ind))) Then
         epsxx = Math.Abs(xxp_arr(j_ind))
      End If
      If (epsyy < Math.Abs(yyp_arr(j_ind))) Then
         epsyy = Math.Abs(yyp_arr(j_ind))
      End If
      If (xxp_arr(j_ind) <= xxp_arr(lmbm_ind)) Then
         If (xxp_arr(j_ind) < xxp_arr(lmbm_ind) Or yyp_arr(j_ind) <= _
                  yyp_arr(lmbm_ind)) Then
            lmbm_ind = j_ind
         End If
      End If
   Next
   nx_spr = -1
   nx_a = 0
   nx_b = 0
   epsxx = epsxx * 16 * Kw.DBLEPS
   epsyy = epsyy * 16 * Kw.DBLEPS
   poh_ind = lmbm_ind
   chisize = 0
   Do While (True)
      chi_arr(chisize) = poh_ind
      e_ind = 0
      For j_ind = 0 To num_points - 1
         If (e_ind = poh_ind) Then
            e_ind = j_ind
         Else
            t_ind = chi_arr(chisize)
            crx = lf_signcrossproduct(xxp_arr(j_ind), yyp_arr(j_ind), _
                     xxp_arr(t_ind), yyp_arr(t_ind), xxp_arr(e_ind), _
                     yyp_arr(e_ind))
            If (crx < 0) Then
               e_ind = j_ind
            End If
         End If
      Next
      chisize = chisize + 1
      If (num_points < chisize) Then
         Debug.Print("fitx_minmax:" & "OOPS")
         Stop
      End If
      poh_ind = e_ind
      If (e_ind = chi_arr(0)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   chi_arr(chisize) = chi_arr(0)
   chisize = chisize + 1
   For hh = 0 To chisize - 2
      i_ind = chi_arr(hh)
      j_ind = chi_arr(hh + 1)
      dxx = xxp_arr(i_ind) - xxp_arr(j_ind)
      If (epsxx < Math.Abs(dxx)) Then
         slope_t = (yyp_arr(i_ind) - yyp_arr(j_ind)) / dxx
         intercept_t = yyp_arr(i_ind) - slope_t * xxp_arr(i_ind)
         dyy = yyp_arr(0) - (slope_t * xxp_arr(0) + intercept_t)
         min_dyy = dyy
         max_dyy = dyy
         this_spr = 0
         k_ind = 1
         Do While (k_ind < num_points)
            pty = (slope_t * xxp_arr(k_ind) + intercept_t)
            dyy = yyp_arr(k_ind) - pty
            If (dyy < min_dyy) Then
               min_dyy = dyy
            End If
            If (max_dyy < dyy) Then
               max_dyy = dyy
            End If
            this_spr = max_dyy - min_dyy
            If ((0 < nx_spr And nx_spr + epsyy < this_spr) Or (min_dyy < _
                     - epsyy And epsyy < max_dyy)) Then
               Exit Do
            End If
            k_ind = k_ind + 1
         Loop
         If (num_points <= k_ind) Then
            If ((this_spr <= nx_spr + epsyy And Math.Abs(nx_a) < _
                     Math.Abs(slope_t)) Or nx_spr < 0 Or this_spr < _
                     nx_spr - epsyy) Then
               nx_a = slope_t
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
               nx_spr = this_spr
            End If
         End If
      End If
   Next
   ret_arr_p(0) = nx_b
   ret_arr_p(1) = nx_a
   ret_arr_p(2) = nx_spr / 2.0
   fitx_minmax = ret_arr_p(2)
End Function
Public Function fit_minmax0(ByVal num_points As Long, pts_arr_pc() As _
         Double, ByRef ret_arr_p() As Double) As Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spr As Double
   Dim mnmxz_spread As Double
   Dim mnmxz_slope As Double
   Dim mnmxz_intercept As Double
   Dim dxx As Double
   Dim dyy As Double
   Dim pty As Double
   Dim epsxx As Double
   Dim epsyy As Double
   Dim slope_t As Double
   Dim intercept_t As Double
   Dim midxx As Double
   Dim midyy As Double
   Dim max_dyy As Double
   Dim min_dyy As Double
   ReDim Preserve xxp_arr(num_points)
   ReDim Preserve yyp_arr(num_points)
   epsxx = 0.0
   epsyy = 0.0
   For j_ind = 0 To num_points - 1
      xxp_arr(j_ind) = pts_arr_pc(2 * j_ind)
      yyp_arr(j_ind) = pts_arr_pc(2 * j_ind + 1)
      If (epsxx < Math.Abs(xxp_arr(j_ind))) Then
         epsxx = Math.Abs(xxp_arr(j_ind))
      End If
      If (epsyy < Math.Abs(yyp_arr(j_ind))) Then
         epsyy = Math.Abs(yyp_arr(j_ind))
      End If
   Next
   mnmxz_spread = -1
   mnmxz_slope = 0
   mnmxz_intercept = yyp_arr(0)
   epsxx = epsxx * 8 * Kw.DBLEPS
   epsyy = epsyy * 8 * Kw.DBLEPS
   For i_ind = 2 To num_points - 1
      For j_ind = 2 To i_ind - 1
         midxx = (xxp_arr(i_ind) + xxp_arr(j_ind)) / 2.0
         midyy = (yyp_arr(i_ind) + yyp_arr(j_ind)) / 2.0
         dxx = xxp_arr(0) - midxx
         If (epsxx < Math.Abs(dxx)) Then
            slope_t = (yyp_arr(0) - midyy) / dxx
            intercept_t = yyp_arr(0) - slope_t * xxp_arr(0)
            min_dyy = 0
            max_dyy = 0
            For k_ind = 0 To num_points - 1
               pty = slope_t * xxp_arr(k_ind) + intercept_t
               dyy = yyp_arr(k_ind) - pty
               If (dyy < min_dyy) Then
                  min_dyy = dyy
               End If
               If (max_dyy < dyy) Then
                  max_dyy = dyy
               End If
               this_spr = max_dyy - min_dyy
               If (0 < mnmxz_spread And mnmxz_spread + epsyy < this_spr) Then
                  Exit For
               End If
            Next
            If (mnmxz_spread < 0 Or this_spr < mnmxz_spread - epsyy) Then
               mnmxz_slope = slope_t
               mnmxz_intercept = intercept_t
               mnmxz_spread = this_spr
            End If
         End If
      Next
   Next
   If (0 <= mnmxz_spread) Then
      ret_arr_p(1) = mnmxz_slope
      ret_arr_p(0) = mnmxz_intercept
      ret_arr_p(2) = mnmxz_spread / 2.0
   End If
   fit_minmax0 = mnmxz_spread / 2.0
End Function
Public Function fit_ls(ByVal num_points As Long, pts_arr_pc() As Double, _
         ByRef ret_arr_p() As Double) As Double
   Dim i_ind As Long
   Dim dxx As Double
   Dim dyy As Double
   Dim xx As Double
   Dim yy As Double
   Dim slope As Double
   Dim mean_yy As Double
   Dim ssq_yy As Double
   Dim mean_xx As Double
   Dim ssq_xx As Double
   Dim covariance_xy As Double
   mean_xx = 0.0
   ssq_xx = 0.0
   mean_yy = 0.0
   ssq_yy = 0.0
   covariance_xy = 0.0
   For i_ind = 0 To num_points - 1
      xx = pts_arr_pc(2 * i_ind)
      dxx = xx - mean_xx
      mean_xx = mean_xx + dxx / (i_ind + 1)
      ssq_xx = ssq_xx + dxx * (xx - mean_xx)
      yy = pts_arr_pc(2 * i_ind + 1)
      dyy = yy - mean_yy
      mean_yy = mean_yy + dyy / (i_ind + 1)
      ssq_yy = ssq_yy + dyy * (yy - mean_yy)
      covariance_xy = covariance_xy + dxx * dyy * i_ind / (i_ind + 1.0)
   Next
   slope = covariance_xy / ssq_xx
   ret_arr_p(1) = slope
   ret_arr_p(0) = mean_yy - slope * mean_xx
   ret_arr_p(2) = covariance_xy / Sqr(ssq_xx * ssq_yy)
   ret_arr_p(3) = Sqr((ssq_yy - slope * covariance_xy) / (num_points - 2))
   fit_ls = ret_arr_p(2)
End Function
Public Function fit_ls0(ByVal num_points As Long, pts_arr_pc() As Double, _
         ByRef ret_lsz_arr_p() As Double) As Double
   Dim xxsum As Double
   Dim xysum As Double
   Dim dxx As Double
   Dim slope As Double
   Dim j_ind As Long
   Dim i_ind As Long
   xxsum = 0.0
   xysum = 0.0
   For i_ind = 1 To num_points - 1
      j_ind = 2 * i_ind
      dxx = (pts_arr_pc(j_ind) - pts_arr_pc(0))
      xxsum = xxsum + dxx * dxx
      xysum = xysum + dxx * (pts_arr_pc(j_ind + 1) - pts_arr_pc(1))
   Next
   slope = xysum / xxsum
   ret_lsz_arr_p(1) = slope
   ret_lsz_arr_p(0) = (pts_arr_pc(1) - slope * pts_arr_pc(0))
   fit_ls0 = slope
End Function
Public Function sqrt__1(ByVal xx As Double) As Double
   Dim yy_curr As Double
   Dim yy_prev As Double
   Dim zz As Double
   Dim power_of_two As Double
   If (xx <= 0.0) Then
      yy_curr = 0.0
   Else
      power_of_two = 1.0
      zz = xx
      Do While (4.0 <= zz)
         zz = zz / 4.0
         power_of_two = power_of_two * 2.0
      Loop
      Do While (zz < 1.0)
         zz = zz * 4.0
         power_of_two = power_of_two / 2.0
      Loop
      yy_curr = (((-0.0353026277858345) * zz + 0.502513025246083) * zz + _
               0.546382637992462)
      Do While (True)
         yy_prev = yy_curr
         yy_curr = (yy_curr + zz / yy_curr) / 2.0
         If (Kw.iseq(yy_prev, yy_curr)) Then
            Exit Do' loop AWAIT
         End If
      Loop
      yy_curr = yy_curr * power_of_two
   End If
   sqrt__1 = yy_curr
End Function
Public Function sqrt__2(ByVal xx As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_ii As Long
   Dim ini As Double
   If (xx <= 0.0) Then
      scvx_xx = 0.0
   Else
      If (1.0 < xx) Then
         ini = xx / 2.0
      Else
         ini = 2.0 * xx
      End If
      scvx_dx = ini / 10.0
      scvx_xx = ini
      scvx_yy = xx - scvx_xx * scvx_xx
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = xx - scvx_xx * scvx_xx
         If (Kw.iseq(scvx_yy, scvx_yp)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / (scvx_yy - scvx_yp)
      Next
   End If
   sqrt__2 = scvx_xx
End Function
Public Function sqrt__3(ByVal yy As Double) As Double
   Dim nrvx_ii As Long
   Dim nrvx_yy As Double
   Dim nrvx_xx As Double
   Dim nrvx_dy As Double
   Dim nrvx_xp As Double
   Dim ini As Double
   If (yy <= 0.0) Then
      nrvx_xx = 0.0
   Else
      If (1.0 < yy) Then
         ini = yy / 2.0
      Else
         ini = 2.0 * yy
      End If
      nrvx_xx = ini
      For nrvx_ii = 0 To 20
         nrvx_xp = nrvx_xx
         nrvx_dy = 2.0 * nrvx_xx
         If (Kw.iszero(nrvx_dy)) Then
            Exit For
         End If
         nrvx_yy = nrvx_xx * nrvx_xx - yy
         nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
         If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
            Exit For
         End If
      Next
   End If
   sqrt__3 = nrvx_xx
End Function
Public Function nthroot__1(ByVal xx As Double, ByVal kk As Long) As Double
   Dim yy_curr As Double
   Dim yy_prev As Double
   Dim pp As Double
   Dim ii As Long
   If (xx <= 0.0) Then
      yy_curr = 0.0
   Else
      yy_curr = xx / 2.0
      Do While (True)
         yy_prev = yy_curr
         pp = yy_curr
         For ii = 2 To kk - 1
            pp = pp * yy_curr
         Next
         yy_curr = (yy_curr * (kk - 1.0) + xx / pp) / kk
         If (Kw.iseq(yy_prev, yy_curr)) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   nthroot__1 = yy_curr
End Function
Public Function cossin_ev(ByVal init_ii As Long, ByVal xx_rad As Double, _
         ByVal addone_mult As Boolean) As Double
   Dim cval As Double
   Dim ii As Long
   Dim trig_sum As Double
   Dim xr_rad As Double
   Dim xr_sqr As Double
   If (Kw.iszero(xx_rad)) Then
      trig_sum = 0.0
   Else
      xr_rad = Kw.fmods(xx_rad, Kw.TAU)
      xr_sqr = -xr_rad * xr_rad
      cval = 1.0
      ii = init_ii
      Do While (Kw.DBLEPS / 16.0 < Math.Abs(cval))
         ii = ii + 2
         cval = cval * xr_sqr / (ii * (ii - 1.0))
      Loop
      trig_sum = 1.0 / (ii * (ii + 1.0))
      Do While (1 < ii)
         trig_sum = trig_sum + 1.0
         trig_sum = trig_sum * xr_sqr / (ii * (ii - 1.0))
         ii = ii - 2
      Loop
      If (addone_mult) Then
         trig_sum = trig_sum + 1.0
         trig_sum = trig_sum * xr_rad
      End If
   End If
   cossin_ev = trig_sum
End Function
Public Function cos__1(ByVal xx_rad As Double) As Double
   cos__1 = cossin_ev(0, xx_rad, False) + 1.0
End Function
Public Function cosm1__1(ByVal xx_rad As Double) As Double
   cosm1__1 = cossin_ev(0, xx_rad, False)
End Function
Public Function sin__1(ByVal xx_rad As Double) As Double
   sin__1 = cossin_ev(1, xx_rad, True)
End Function
Public Function sinc__1(ByVal xx_rad As Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(xx_rad)) Then
      retvalu = 1.0
   Else
      If (Kw.TAU / 2.0 < Math.Abs(xx_rad)) Then
         retvalu = cossin_ev(1, xx_rad, True) / xx_rad
      Else
         retvalu = cossin_ev(1, xx_rad, False) + 1.0
      End If
   End If
   sinc__1 = retvalu
End Function
Public Function exp__1(ByVal xx As Double) As Double
   Dim ii As Long
   Dim term_count As Long
   Dim vale As Double
   Dim axx As Double
   Dim exp_sum As Double
   Dim retvalu As Double
   Dim squaring_count As Long
   If (xx < 0.0) Then
      axx = -xx
   Else
      axx = xx
   End If
   squaring_count = 0
   Do While (1.0 < axx)
      axx = axx / 2.0
      squaring_count = squaring_count + 1
   Loop
   vale = 1.0
   term_count = 1
   Do While (Kw.DBLEPS / 10.0 < vale)
      term_count = term_count + 1
      vale = vale * axx / term_count
   Loop
   exp_sum = 1.0 / (term_count + 1.0)
   For ii = term_count To 1 Step - 1
      exp_sum = 1.0 + axx * (exp_sum / ii)
   Next
   If (xx < 0.0) Then
      retvalu = 1.0 / exp_sum
   Else
      retvalu = exp_sum
   End If
   For ii = 1 To squaring_count
      retvalu = retvalu * retvalu
   Next
   exp__1 = retvalu
End Function
Public Function exp__2(ByVal xx As Double) As Double
   Dim ii As Long
   Dim term_count As Long
   Dim axx As Double
   Dim expmo_sum As Double
   Dim retvalu As Double
   Dim squaring_count As Long
   Dim vale As Double
   If (xx < 0.0) Then
      axx = -xx
   Else
      axx = xx
   End If
   squaring_count = 0
   Do While (1.0 < axx)
      axx = axx / 2.0
      squaring_count = squaring_count + 1
   Loop
   vale = 1.0
   term_count = 1
   Do While (Kw.DBLEPS / 4.0 < vale)
      term_count = term_count + 1
      vale = vale * axx / term_count
   Loop
   expmo_sum = 0.0
   For ii = term_count To 1 Step - 1
      expmo_sum = axx * (expmo_sum + 1.0) / ii
   Next
   For ii = 1 To squaring_count
      expmo_sum = expmo_sum * (2.0 + expmo_sum)
   Next
   If (xx < 0.0) Then
      retvalu = 1.0 / (expmo_sum + 1.0)
   Else
      retvalu = expmo_sum + 1.0
   End If
   exp__2 = retvalu
End Function
Public Function ln__1(ByVal xx As Double) As Double
   Dim yy_curr As Double
   Dim logshift As Double
   Dim retvalu As Double
   Dim tmp As Double
   logshift = 0.0
   yy_curr = 8.0 / xx
   tmp = (Kw.DBLEPS)
   Do While (tmp < yy_curr)
      logshift = logshift - 16.0 * Kw.TWOLN
      yy_curr = yy_curr / 65536.0
   Loop
   retvalu = (Kw.PI / Kw.agmean(2.0, yy_curr) + logshift)
   ln__1 = retvalu
End Function
Public Function ln__2(ByVal xx As Double) As Double
   Dim yy_curr As Double
   Dim ptwo As Double
   Dim term As Double
   Dim nn As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim mant As Double
   yy_curr = xx
   ptwo = 0.0
   Do While (Kw.TWOSQRT < yy_curr)
      ptwo = ptwo + 1.0
      yy_curr = yy_curr / 2.0
   Loop
   Do While (yy_curr < 1.0 / Kw.TWOSQRT)
      ptwo = ptwo - 1.0
      yy_curr = yy_curr * 2.0
   Loop
   mant = (yy_curr - 1.0) / (yy_curr + 1.0)
   sum_curr = 2.0 * mant
   term = sum_curr
   mant = mant * mant
   nn = 3
   Do While (True)
      term = term * mant
      sum_prev = sum_curr
      sum_curr = sum_curr + term / nn
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 2
   Loop
   ln__2 = ptwo * Kw.TWOLN + sum_curr
End Function
Public Function euler__1() As Double
   Dim twon As Double
   Dim exptwon As Double
   Dim ii As Long
   Dim jj As Long
   Dim term As Double
   Dim subsum As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   twon = 1.0
   exptwon = Kw.E
   ii = 0
   Do While (True)
      twon = twon * 2.0
      exptwon = exptwon * exptwon
      If (0.1 < Kw.DBLEPS * exptwon) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   term = 1.0 / twon
   subsum = 0.0
   sum_curr = 0.0
   jj = 1
   Do While (True)
      subsum = subsum + 1.0 / jj
      term = term * twon / jj
      sum_prev = sum_curr
      sum_curr = sum_curr + term * subsum
      If (Kw.iseq(sum_prev, sum_curr)) Then
         Exit Do' loop AWAIT
      End If
      jj = jj + 1
   Loop
   euler__1 = twon * sum_curr / exptwon - (ii + 1.0) * Kw.TWOLN
End Function
Public Function sphere_d(ByVal lata_rad As Double, ByVal lona_rad As _
         Double, ByVal latb_rad As Double, ByVal lonb_rad As Double) As _
         Double
   Dim xc As Double
   Dim xd As Double
   Dim xe As Double
   Dim c_lond As Double
   Dim s_lond As Double
   Dim c_lata As Double
   Dim c_latb As Double
   Dim s_lata As Double
   Dim s_latb As Double
   Dim retvalu As Double
   c_lata = Math.Cos(lata_rad)
   c_latb = Math.Cos(latb_rad)
   s_lata = Math.Sin(lata_rad)
   s_latb = Math.Sin(latb_rad)
   s_lond = Math.Sin(lonb_rad - lona_rad)
   c_lond = Math.Cos(lonb_rad - lona_rad)
   xc = c_lata * s_latb - s_lata * c_latb * c_lond
   xd = c_latb * s_lond
   xe = s_lata * s_latb + c_lata * c_latb * c_lond
   retvalu = Atan2(Kw.hypot(xd, xc), xe)
   sphere_d = retvalu
End Function
Public Function great_circle_distance(ByVal lata_rad As Double, ByVal _
         lona_rad As Double, ByVal latb_rad As Double, ByVal lonb_rad As _
         Double) As Double
   great_circle_distance = sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad)
End Function
Public Function sphere_distance(ByVal lata_rad As Double, ByVal lona_rad _
         As Double, ByVal latb_rad As Double, ByVal lonb_rad As Double, _
         ByRef ret_dirs_arr_p() As Double) As Double
   Dim xc As Double
   Dim xd As Double
   Dim xe As Double
   Dim s_lond As Double
   Dim c_lond As Double
   Dim c_lata As Double
   Dim c_latb As Double
   Dim s_lata As Double
   Dim s_latb As Double
   Dim dist As Double
   c_lata = Math.Cos(lata_rad)
   c_latb = Math.Cos(latb_rad)
   s_lata = Math.Sin(lata_rad)
   s_latb = Math.Sin(latb_rad)
   s_lond = Math.Sin(lonb_rad - lona_rad)
   c_lond = Math.Cos(lonb_rad - lona_rad)
   xc = c_lata * s_latb - s_lata * c_latb * c_lond
   xd = c_latb * s_lond
   ret_dirs_arr_p(0) = Atan2(xd, xc)
   xe = s_lata * s_latb + c_lata * c_latb * c_lond
   dist = Atan2(Kw.hypot(xd, xc), xe)
   xc = c_latb * s_lata - s_latb * c_lata * c_lond
   xd = c_lata * s_lond
   ret_dirs_arr_p(1) = -Atan2(xd, xc)
   sphere_distance = dist
End Function
Private Function lf_ka(ByVal usq As Double) As Double
   Dim hyp As Double
   hyp = Sqr(1.0 + usq)
   lf_ka = (hyp - 1.0) / (hyp + 1.0)
End Function
Private Function lf_cap_a(ByVal usq As Double) As Double
   Dim ka As Double
   ka = lf_ka(usq)
   lf_cap_a = (1.0 + Kw.square(ka / 2.0)) / (1.0 - ka)
End Function
Private Function lf_cap_b(ByVal usq As Double) As Double
   Dim ka As Double
   ka = lf_ka(usq)
   lf_cap_b = ka * (1.0 - 3.0 * Kw.square(ka) / 8.0)
End Function
Public Function ellipsoid_distance(ByVal flat As Double, ByVal lata_rad _
         As Double, ByVal lona_rad As Double, ByVal latb_rad As Double, _
         ByVal lonb_rad As Double, ByRef ret_dirs_arr_p() As Double) As _
         Double
   Dim iflat As Double
   Dim cap_ua As Double
   Dim cap_ub As Double
   Dim lon_diff As Double
   Dim c_cap_ua As Double
   Dim s_cap_ua As Double
   Dim c_cap_ub As Double
   Dim s_cap_ub As Double
   Dim xx_curr As Double
   Dim xx_prev As Double
   Dim xc As Double
   Dim xd As Double
   Dim s_xx As Double
   Dim c_xx As Double
   Dim c_sig As Double
   Dim s_sig As Double
   Dim sig As Double
   Dim s_a As Double
   Dim c_asq As Double
   Dim cbsigm As Double
   Dim cap_c As Double
   Dim usq As Double
   Dim cap_a As Double
   Dim cap_b As Double
   Dim deltasig As Double
   Dim ii As Long
   Dim dist As Double
   iflat = 1.0 - flat
   cap_ua = Atan2(iflat * Math.Sin(lata_rad), Math.Cos(lata_rad))
   cap_ub = Atan2(iflat * Math.Sin(latb_rad), Math.Cos(latb_rad))
   lon_diff = lonb_rad - lona_rad
   xx_curr = lon_diff
   c_cap_ua = Math.Cos(cap_ua)
   c_cap_ub = Math.Cos(cap_ub)
   s_cap_ua = Math.Sin(cap_ua)
   s_cap_ub = Math.Sin(cap_ub)
   ii = 0
   Do While (True)
      s_xx = Math.Sin(xx_curr)
      c_xx = Math.Cos(xx_curr)
      s_sig = Kw.hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub - s_cap_ua * _
               c_cap_ub * c_xx)
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx
      sig = Atan2(s_sig, c_sig)
      s_a = c_cap_ua * c_cap_ub * s_xx / s_sig
      c_asq = 1.0 - Kw.square(s_a)
      cbsigm = c_sig - Kw.divi(2 * s_cap_ua * s_cap_ub, c_asq, 0.0)
      cap_c = ((flat / 16) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)))
      xx_prev = xx_curr
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_a * (sig + cap_c * _
               s_sig * (cbsigm + cap_c * c_sig * (2.0 * Kw.square(cbsigm) _
               - 1.0))))
      If (10 < ii And Kw.iseq(Math.Abs(xx_prev + xx_curr), Kw.TAU)) Then
         xx_curr = Kw.TAU / 2.0
         Exit Do
      End If
      If (Math.Abs(xx_curr - xx_prev) < 1.0E-12) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   usq = c_asq * (1.0 / Kw.square(iflat) - 1.0)
   cap_a = iflat * lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig * (-1.0 + _
            2.0 * Kw.square(cbsigm)) - (1.0 / 6.0) * cap_b * cbsigm * _
            (3.0 + 4.0 * Kw.square(s_sig)) * (-3.0 + 4.0 * _
            Kw.square(cbsigm))))
   dist = cap_a * (sig - deltasig)
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx
   xd = c_cap_ub * s_xx
   ret_dirs_arr_p(0) = Atan2(xd, xc)
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx
   xd = c_cap_ua * s_xx
   ret_dirs_arr_p(1) = -Atan2(xd, xc)
   ellipsoid_distance = dist
End Function
Public Function ellipsoid_destination(ByVal flat As Double, ByVal _
         lata_rad As Double, ByVal lona_rad As Double, ByVal heading_rad _
         As Double, ByVal distance As Double, ByRef ret_loc_arr_p() As _
         Double) As Double
   Dim iflat As Double
   Dim cap_ua As Double
   Dim c_cap_ua As Double
   Dim s_cap_ua As Double
   Dim sig_rad As Double
   Dim sig_rad_prev As Double
   Dim sig_rad_delta As Double
   Dim c_sig As Double
   Dim s_sig As Double
   Dim aa As Double
   Dim bb As Double
   Dim sig_b_rad As Double
   Dim s_a As Double
   Dim c_asq As Double
   Dim twosigm_rad As Double
   Dim c_twosigm As Double
   Dim c_twosigmsq As Double
   Dim cap_c As Double
   Dim usq As Double
   Dim cap_a As Double
   Dim cap_b As Double
   Dim cap_l As Double
   Dim alpha_rad As Double
   Dim c_heading As Double
   Dim s_heading As Double
   Dim lamda As Double
   Dim xd As Double
   Dim xc As Double
   iflat = 1.0 - flat
   aa = 1.0
   bb = iflat * aa
   cap_ua = Atan2(iflat * Math.Sin(lata_rad), Math.Cos(lata_rad))
   c_cap_ua = Math.Cos(cap_ua)
   s_cap_ua = Math.Sin(cap_ua)
   c_heading = Math.Cos(heading_rad)
   s_heading = Math.Sin(heading_rad)
   sig_b_rad = Atan2(s_cap_ua, c_cap_ua * c_heading)
   s_a = Math.Cos(cap_ua) * Math.Sin(heading_rad)
   c_asq = 1.0 - Kw.square(s_a)
   usq = c_asq * (Kw.square(aa / bb) - 1.0)
   cap_a = lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   sig_rad_delta = 0.0
   sig_rad = -10.0
   Do While (True)
      sig_rad_prev = sig_rad
      sig_rad = distance / (bb * cap_a) + sig_rad_delta
      s_sig = Math.Sin(sig_rad)
      c_sig = Math.Cos(sig_rad)
      twosigm_rad = 2.0 * sig_b_rad + sig_rad
      c_twosigm = Math.Cos(twosigm_rad)
      c_twosigmsq = Kw.square(c_twosigm)
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 * cap_b * (c_sig _
               * (2.0 * c_twosigmsq - 1.0) - (cap_b / 6.0) * c_twosigm * _
               (4.0 * s_sig * s_sig - 3.0) * (4.0 * c_twosigmsq - 3.0)))
      If (Kw.iseq(sig_rad, sig_rad_prev)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading
   xc = iflat * Kw.hypot(s_a, s_cap_ua * s_sig - c_cap_ua * c_sig * _
            c_heading)
   ret_loc_arr_p(0) = Atan2(xd, xc)
   xd = s_sig * s_heading
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading
   lamda = Atan2(xd, xc)
   cap_c = ((flat / 16.0) * c_asq * (4.0 + flat * (4.0 - 3.0 * c_asq)))
   cap_l = lamda - (1.0 - cap_c) * flat * s_a * (sig_rad + cap_c * s_sig _
            * (c_twosigm + cap_c * c_sig * (2 * c_twosigmsq - 1.0)))
   ret_loc_arr_p(1) = cap_l + lona_rad
   alpha_rad = Kw.fmodu(Kw.PI + Atan2(s_a, c_cap_ua * c_sig * c_heading - _
            s_cap_ua * s_sig), Kw.TAU)
   ellipsoid_destination = alpha_rad
End Function
Public Function ellipsoid_surface(ByVal axis_a As Double, ByVal axis_b As _
         Double, ByVal axis_c As Double) As Double
   Dim absaa As Double
   Dim absbb As Double
   Dim abscc As Double
   Dim phi_rad As Double
   Dim sinphi As Double
   Dim cosphi As Double
   Dim kk As Double
   Dim retvalu As Double
   absaa = Math.Abs(axis_a)
   absbb = Math.Abs(axis_b)
   abscc = Math.Abs(axis_c)
   If (absaa < absbb) Then
      kk = absaa
      absaa = absbb
      absbb = kk
   End If
   If (absbb < abscc) Then
      kk = abscc
      abscc = absbb
      absbb = kk
      If (absaa < absbb) Then
         kk = absaa
         absaa = absbb
         absbb = kk
      End If
   End If
   If (abscc < absaa) Then
      cosphi = (abscc / absaa)
      phi_rad = Kw.cosinv(cosphi)
      sinphi = Math.Sin(phi_rad)
      kk = Sqr((1.0 - abscc * abscc / (absbb * absbb)) / (1.0 - abscc * _
               abscc / (absaa * absaa)))
      retvalu = Kw.TAU * (abscc * abscc + absaa * absbb / sinphi * _
               (sinphi * sinphi * Kw.elliptic2ik(kk, phi_rad) + cosphi * _
               cosphi * Kw.elliptic1ik(kk, phi_rad)))
   Else
      retvalu = 2.0 * Kw.TAU * absaa * absaa
   End If
   ellipsoid_surface = retvalu
End Function
Public Function ellipsoid_volume(ByVal axis_a As Double, ByVal axis_b As _
         Double, ByVal axis_c As Double) As Double
   ellipsoid_volume = 2.0 * Kw.TAU * axis_a * axis_b * axis_c / 3.0
End Function
Public Function shc_shftpoles2steps(ByVal shft As Long, ByVal poles As _
         Long) As Double
   Dim step_arr(20) As Double
   Dim retvalu As Double
   If (poles <= 0) Then
      retvalu = 0.0
   ElseIf (shft < 0) Then
      retvalu = 0.0
   ElseIf (16 < shft) Then
      retvalu = 1.0E+9
   ElseIf (poles = 1) Then
      step_arr(0) = +1.0
      step_arr(1) = +8.75664018
      step_arr(2) = +2.174418277E+1
      step_arr(3) = +4.709615109E+1
      step_arr(4) = +9.755325605E+1
      step_arr(5) = +1.983575685E+2
      step_arr(6) = +3.9991425188E+2
      step_arr(7) = +8.0300236937E+2
      step_arr(8) = +1.60916613901E+3
      step_arr(9) = +3.22148750069E+3
      step_arr(10) = +6.44612712926E+3
      step_arr(11) = +1.289540487229E+4
      step_arr(12) = +2.579395961911E+4
      step_arr(13) = +5.159106828928E+4
      step_arr(14) = +1.0318528839545E+5
      step_arr(15) = +2.0637372529029E+5
      step_arr(16) = +4.1275053067337E+5
      retvalu = step_arr(shft)
   ElseIf (poles = 2) Then
      step_arr(0) = +1.0
      step_arr(1) = +1.372295755E+1
      step_arr(2) = +3.383938971E+1
      step_arr(3) = +7.318281398E+1
      step_arr(4) = +1.5153838699E+2
      step_arr(5) = +3.0810336456E+2
      step_arr(6) = +6.2116437416E+2
      step_arr(7) = +1.24725288016E+3
      step_arr(8) = +2.49941335432E+3
      step_arr(9) = +5.00372613671E+3
      step_arr(10) = +1.001234749878E+4
      step_arr(11) = +2.002958840334E+4
      step_arr(12) = +4.006406905172E+4
      step_arr(13) = +8.013303000155E+4
      step_arr(14) = +1.6027095510986E+5
      step_arr(15) = +3.2054680443102E+5
      step_arr(16) = +6.4109851712798E+5
      retvalu = step_arr(shft)
   ElseIf (poles = 3) Then
      step_arr(0) = +1.0
      step_arr(1) = +1.737173781E+1
      step_arr(2) = +4.273609545E+1
      step_arr(3) = +9.238532150E+1
      step_arr(4) = +1.9128399554E+2
      step_arr(5) = +3.8890510497E+2
      step_arr(6) = +7.8406421045E+2
      step_arr(7) = +1.57434201644E+3
      step_arr(8) = +3.15487771808E+3
      step_arr(9) = +6.31593923478E+3
      step_arr(10) = +1.263805730898E+4
      step_arr(11) = +2.528229097067E+4
      step_arr(12) = +5.057075779500E+4
      step_arr(13) = +1.0114768912723E+5
      step_arr(14) = +2.0230154729287E+5
      step_arr(15) = +4.0460928016924E+5
      step_arr(16) = +8.0922476138170E+5
      retvalu = step_arr(shft)
   ElseIf (poles = 4) Then
      step_arr(0) = +1.0
      step_arr(1) = +2.03878236E+1
      step_arr(2) = +5.009900279E+1
      step_arr(3) = +1.0828162825E+2
      step_arr(4) = +2.2418834788E+2
      step_arr(5) = +4.5579968748E+2
      step_arr(6) = +9.189270663E+2
      step_arr(7) = +1.84513549236E+3
      step_arr(8) = +3.69752950942E+3
      step_arr(9) = +7.40230620593E+3
      step_arr(10) = +1.48118537839E+4
      step_arr(11) = +2.963094667636E+4
      step_arr(12) = +5.926913086318E+4
      step_arr(13) = +1.1854549900613E+5
      step_arr(14) = +2.3709822433702E+5
      step_arr(15) = +4.7420371217077E+5
      step_arr(16) = +9.4841452431326E+5
      retvalu = step_arr(shft)
   ElseIf (poles = 5) Then
      step_arr(0) = +1.0
      step_arr(1) = +2.301559338E+1
      step_arr(2) = +5.651862690E+1
      step_arr(3) = +1.2214337218E+2
      step_arr(4) = +2.5288215751E+2
      step_arr(5) = +5.1413464355E+2
      step_arr(6) = +1.03653347249E+3
      step_arr(7) = +2.08127953713E+3
      step_arr(8) = +4.17074621528E+3
      step_arr(9) = +8.34966697295E+3
      step_arr(10) = +1.670750214140E+4
      step_arr(11) = +3.342316957219E+4
      step_arr(12) = +6.685449836446E+4
      step_arr(13) = +1.3371716646729E+5
      step_arr(14) = +2.6744248565129E+5
      step_arr(15) = +5.3489319815476E+5
      step_arr(16) = +1.06979462735136E+6
      retvalu = step_arr(shft)
   Else
      retvalu = 0.0
   End If
   shc_shftpoles2steps = retvalu
End Function
Public Function shc_steps2shft(ByVal steps As Double) As Double
   shc_steps2shft = Kw.lg(steps + LX_SHC_STEPSHIFT) - LX_SHC_SHIFTSHIFT
End Function
Public Function shc_steps2shftinv(ByVal shft As Double) As Double
   shc_steps2shftinv = Pow(2.0, shft + LX_SHC_SHIFTSHIFT) - LX_SHC_STEPSHIFT
End Function
Public Function shc_shft2steps(ByVal shft As Long) As Double
   shc_shft2steps = shc_shftpoles2steps(shft, 4)
End Function
Public Function m2k(ByVal emm As Double) As Double
   m2k = Sqr(emm)
End Function
Public Function k2m(ByVal ekk As Double) As Double
   k2m = ekk * ekk
End Function
Public Function a2k(ByVal eaa As Double) As Double
   a2k = Math.Sin(eaa)
End Function
Public Function k2a(ByVal ekk As Double) As Double
   k2a = Kw.sininv(ekk)
End Function
Public Function a2m(ByVal eaa As Double) As Double
   a2m = Kw.square(Math.Sin(eaa))
End Function
Public Function m2a(ByVal emm As Double) As Double
   m2a = Kw.sininv(Sqr(emm))
End Function
Public Function m2b(ByVal emm As Double) As Double
   m2b = 1.0 / Sqr(1.0 - emm)
End Function
Public Function b2m(ByVal ebb As Double) As Double
   b2m = 1.0 - 1.0 / (ebb * ebb)
End Function
Public Function elliptic1m(ByVal emm As Double) As Double
   Dim retvalu As Double
   Dim aa_arr(2) As Double
   Dim bb_arr(2) As Double
   Dim cc_arr(2) As Double
   Dim dd As Double
   If (emm < 1.0) Then
      retvalu = Kw.PI / (2.0 * Kw.agmean(1.0, Sqr(1.0 - emm)))
   ElseIf (1.0 < emm) Then
      aa_arr(0) = 1.0
      aa_arr(1) = 0.0
      bb_arr(0) = 0.0
      bb_arr(1) = Sqr(emm - 1.0)
      dd = Kw.agcmean(aa_arr, bb_arr, cc_arr)
      retvalu = Kw.PI / (2.0 * dd)
   Else
      retvalu = 20.0
   End If
   elliptic1m = retvalu
End Function
Public Function ellipticK(ByVal ekk As Double) As Double
   ellipticK = elliptic1m(k2m(ekk))
End Function
Public Function elliptic1m__1(ByVal emm As Double) As Double
   elliptic1m__1 = Kw.carlsonRF(0.0, 1.0 - emm, 1.0)
End Function
Public Function elliptic1m__2(ByVal emm As Double) As Double
   Dim term As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim ii As Long
   term = Kw.TAU / 4.0
   sum_curr = 0.0
   ii = 1
   Do While (True)
      term = term * Kw.square(emm * ii / (ii + 1.0))
      sum_prev = sum_curr
      sum_curr = sum_curr + term
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 2
   Loop
   elliptic1m__2 = sum_curr
End Function
Public Function elliptic1im(ByVal emm As Double, ByVal circ_rad As _
         Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim cc As Double
   Dim skip_flag As Boolean
   Dim temp As Double
   Dim retvalu As Double
   Dim tt As Double
   Dim kresult As Double
   Dim lcirc_rad As Double
   Dim emmc As Double
   Dim ii As Long
   Dim modd As Long
   Dim signof As Long
   Dim npihlfs As Long
   Dim ee As Double
   emmc = 1.0 - emm
   If (Kw.iszero(emm)) Then
      retvalu = circ_rad
   ElseIf (Kw.iszero(emmc)) Then
      If (Kw.PI / 2.0 <= Math.Abs(circ_rad)) Then
         retvalu = Kw.DBLMAX
      Else
         retvalu = Math.Log(Math.Tan((Kw.PI / 2.0 + circ_rad) / 2.0))
      End If
   Else
      npihlfs = floor(circ_rad / (Kw.PI / 2.0))
      If (Kw.isodd(npihlfs)) Then
         npihlfs = npihlfs + 1
      End If
      lcirc_rad = circ_rad
      If (npihlfs = 0) Then
         kresult = 0.0
      Else
         kresult = Kw.elliptic1m(emm)
         lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2.0
      End If
      If (lcirc_rad < 0.0) Then
         lcirc_rad = -lcirc_rad
         signof = -1
      Else
         signof = 1
      End If
      tt = Math.Tan(lcirc_rad)
      ggn = Sqr(emmc)
      skip_flag = False
      If (10.0 < Math.Abs(tt)) Then
         ee = 1.0 / (ggn * tt)
         If (Math.Abs(ee) < 10.0) Then
            If (npihlfs = 0) Then
               kresult = Kw.elliptic1m(emm)
            End If
            temp = kresult - Kw.elliptic1im(emm, Atan2(ee, 1.0))
            skip_flag = True
         End If
      End If
      If (Not skip_flag) Then
         aan = 1.0
         ii = 1
         modd = 0
         Do While (True)
            temp = ggn / aan
            lcirc_rad = lcirc_rad + Atan2(tt * temp, 1.0) + modd * Kw.PI
            modd = floor(lcirc_rad / Kw.PI + 0.5)
            tt = tt * (1.0 + temp) / (1.0 - temp * tt * tt)
            cc = (aan - ggn) / 2.0
            temp = Sqr(aan * ggn)
            aan = (aan + ggn) / 2.0
            ggn = temp
            ii = ii + ii
            If (Math.Abs(cc / aan) <= Kw.DBLEPS) Then
               Exit Do' loop AWAIT
            End If
         Loop
         temp = (Atan2(tt, 1.0) + modd * Kw.PI) / (ii * aan)
      End If
      If (signof < 0) Then
         temp = -temp
      End If
      retvalu = temp + npihlfs * kresult
   End If
   elliptic1im = retvalu
End Function
Public Function elliptic1k(ByVal kk As Double) As Double
   elliptic1k = elliptic1m(k2m(kk))
End Function
Public Function elliptic1ik(ByVal kk As Double, ByVal circ_rad As Double) _
         As Double
   elliptic1ik = elliptic1im(k2m(kk), circ_rad)
End Function
Public Function elliptic1a(ByVal aa As Double) As Double
   elliptic1a = elliptic1m(a2m(aa))
End Function
Public Function elliptic1ia(ByVal aa As Double, ByVal circ_rad As Double) _
         As Double
   elliptic1ia = elliptic1im(a2m(aa), circ_rad)
End Function
Public Function ellipticF(ByVal ekk As Double, ByVal circ_rad As Double) _
         As Double
   ellipticF = elliptic1im(k2m(ekk), circ_rad)
End Function
Public Function elliptic1im__1(ByVal emm As Double, ByVal circ_rad As _
         Double) As Double
   Dim sinphi As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2.0))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic1m(emm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2.0
   End If
   sinphi = Math.Sin(lcirc_rad)
   elliptic1im__1 = sinphi * Kw.carlsonRF(Kw.square(Math.Cos(lcirc_rad)), _
            1.0 - emm * Kw.square(sinphi), 1.0) + kresult
End Function
Public Function elliptic2m(ByVal emm As Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim tn As Double
   Dim twon As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim ii As Long
   Dim aemm As Double
   Dim retvalu As Double
   aemm = Math.Abs(emm)
   If (aemm < 1.0) Then
      twon = 0.5
      aan = 1.0
      ggn = Sqr(1.0 - emm)
      sum = 1.0 - emm / 2.0
      ii = 0
      Do While (True)
         twon = twon * 2.0
         tn = aan
         aan = (aan + ggn) / 2.0
         ggn = Sqr(tn * ggn)
         sum_prev = sum
         sum = sum - twon * (aan * aan - ggn * ggn)
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = Kw.PI * sum / (2.0 * aan)
   Else
      retvalu = 1.0
   End If
   elliptic2m = retvalu
End Function
Public Function ellipticE(ByVal ekk As Double) As Double
   ellipticE = elliptic2m(k2m(ekk))
End Function
Public Function elliptic2m__1(ByVal emm As Double) As Double
   elliptic2m__1 = Kw.carlsonRF(0.0, 1.0 - emm, 1.0) - emm * _
            Kw.carlsonRD(0.0, 1.0 - emm, 1.0) / 3.0
End Function
Public Function elliptic2im(ByVal emm As Double, ByVal circ_rad As _
         Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim cc As Double
   Dim errsum As Double
   Dim temp As Double
   Dim tt As Double
   Dim eliptwoemm As Double
   Dim emmc As Double
   Dim ii As Long
   Dim modd As Long
   Dim npihalfs As Long
   Dim signof As Long
   Dim lcirc_rad As Double
   Dim retvalu As Double
   If (Kw.iszero(emm)) Then
      retvalu = circ_rad
   Else
      emmc = 1.0 - emm
      eliptwoemm = elliptic2m(emm)
      npihalfs = floor(circ_rad / (Kw.PI / 2.0))
      If (Kw.isodd(npihalfs)) Then
         npihalfs = npihalfs + 1
      End If
      lcirc_rad = circ_rad - npihalfs * Kw.PI / 2.0
      If (Kw.iszero(emmc)) Then
         retvalu = Math.Sin(lcirc_rad) + npihalfs * eliptwoemm
      Else
         If (lcirc_rad < 0.0) Then
            lcirc_rad = -lcirc_rad
            signof = -1
         Else
            signof = 1
         End If
         tt = Math.Tan(lcirc_rad)
         ggn = Sqr(emmc)
         If (Math.Abs(tt) < - 1) Then
            errsum = 1.0 / (ggn * tt)
         Else
            errsum = 0.0
         End If
         If (0.0 < Math.Abs(errsum) And Math.Abs(errsum) < 1000.0) Then
            errsum = Atan2(1.0, ggn * tt)
            temp = eliptwoemm - elliptic2im(emm, errsum) + emm * _
                     Math.Sin(circ_rad) * Math.Sin(errsum)
         Else
            cc = Sqr(emm)
            aan = 1.0
            ii = 1
            modd = 0
            Do While (Kw.DBLEPS < Math.Abs(cc / aan))
               temp = ggn / aan
               lcirc_rad = lcirc_rad + Atan2(tt * temp, 1.0) + modd * Kw.PI
               modd = floor(lcirc_rad / Kw.PI + 0.5)
               tt = tt * (1.0 + temp) / (1.0 - temp * tt * tt)
               cc = (aan - ggn) / 2.0
               temp = Sqr(aan * ggn)
               aan = (aan + ggn) / 2.0
               ggn = temp
               ii = ii + ii
               errsum = errsum + cc * Math.Sin(lcirc_rad)
            Loop
            temp = errsum + eliptwoemm * (Atan2(tt, 1.0) + modd * Kw.PI) _
                     / (ii * aan * elliptic1m(emm))
         End If
         If (signof < 0) Then
            temp = -temp
         End If
         retvalu = temp + npihalfs * eliptwoemm
      End If
   End If
   elliptic2im = retvalu
End Function
Public Function ellipticEi(ByVal ekk As Double, ByVal circ_rad As Double) _
         As Double
   ellipticEi = elliptic2im(k2m(ekk), circ_rad)
End Function
Public Function elliptic2im__1(ByVal emm As Double, ByVal circ_rad As _
         Double) As Double
   Dim sinphi As Double
   Dim sinphisq As Double
   Dim sinphicu As Double
   Dim cosphisq As Double
   Dim argb As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2.0))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic2m(emm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2.0
   End If
   sinphi = Math.Sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = Kw.square(Math.Cos(lcirc_rad))
   argb = 1.0 - emm * sinphisq
   elliptic2im__1 = sinphi * carlsonRF(cosphisq, argb, 1.0) - emm * _
            sinphicu * carlsonRD(cosphisq, argb, 1.0) / 3.0 + kresult
End Function
Public Function elliptic2k(ByVal kk As Double) As Double
   elliptic2k = elliptic2m(k2m(kk))
End Function
Public Function elliptic2ik(ByVal kk As Double, ByVal circ_rad As Double) _
         As Double
   elliptic2ik = elliptic2im(k2m(kk), circ_rad)
End Function
Public Function elliptic2a(ByVal aa As Double) As Double
   elliptic2a = elliptic2m(a2m(aa))
End Function
Public Function elliptic2ia(ByVal aa As Double, ByVal circ_rad As Double) _
         As Double
   elliptic2ia = elliptic2im(a2m(aa), circ_rad)
End Function
Public Function elliptic3m(ByVal enn As Double, ByVal emm As Double) As _
         Double
   Dim aan As Double
   Dim ggn As Double
   Dim ppn As Double
   Dim een As Double
   Dim qqn As Double
   Dim tpp As Double
   Dim tag As Double
   Dim tn As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim ii As Long
   Dim aemm As Double
   Dim retvalu As Double
   aemm = Math.Abs(emm)
   If (aemm < 1.0) Then
      aan = 1.0
      ggn = Sqr(1.0 - emm)
      If (1.0 <= Math.Abs(enn)) Then
         ppn = Sqr(1.0 - emm / enn)
      Else
         ppn = Sqr(1.0 - enn)
      End If
      qqn = 1.0
      sum = qqn
      ii = 0
      Do While (True)
         tpp = ppn * ppn
         tag = aan * ggn
         een = (tpp - tag) / (tpp + tag)
         ppn = (tpp + tag) / (2.0 * ppn)
         qqn = qqn * een / 2.0
         aan = (aan + ggn) / 2.0
         ggn = Sqr(tag)
         sum_prev = sum
         sum = sum + qqn
         If (Kw.iseq(sum, sum_prev) And Kw.iseq(aan, ggn)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (1.0 <= Math.Abs(enn)) Then
         tn = emm * sum / (emm - enn)
      Else
         tn = 2.0 + sum * enn / (1.0 - enn)
      End If
      retvalu = Kw.PI * tn / (4.0 * aan)
   Else
      retvalu = 1.0
   End If
   elliptic3m = retvalu
End Function
Public Function elliptic3k(ByVal enn As Double, ByVal kk As Double) As Double
   elliptic3k = elliptic3m(enn, k2m(kk))
End Function
Public Function elliptic3ik(ByVal enn As Double, ByVal kk As Double, _
         ByVal circ_rad As Double) As Double
   elliptic3ik = elliptic3im(enn, k2m(kk), circ_rad)
End Function
Public Function elliptic3a(ByVal enn As Double, ByVal aa As Double) As Double
   elliptic3a = elliptic3m(enn, a2m(aa))
End Function
Public Function elliptic3ia(ByVal enn As Double, ByVal aa As Double, _
         ByVal circ_rad As Double) As Double
   elliptic3ia = elliptic3im(enn, a2m(aa), circ_rad)
End Function
Public Function ellipticP(ByVal ekk As Double, ByVal circ_rad As Double) _
         As Double
   ellipticP = elliptic3m(ekk, circ_rad)
End Function
Public Function elliptic3im(ByVal enn As Double, ByVal emm As Double, _
         ByVal circ_rad As Double) As Double
   Dim sp As Double
   Dim cp As Double
   Dim spq As Double
   Dim cpq As Double
   Dim spm As Double
   Dim spn As Double
   sp = Math.Sin(circ_rad)
   cp = Math.Cos(circ_rad)
   spq = sp * sp
   cpq = cp * cp
   spm = 1.0 - emm * spq
   spn = 1.0 - enn * spq
   elliptic3im = sp * (Kw.carlsonRF(cpq, spm, 1.0) + spq * enn * _
            Kw.carlsonRJ(cpq, spm, 1.0, spn) / 3.0)
End Function
Public Function ellipticPi(ByVal enn As Double, ByVal ekk As Double, _
         ByVal circ_rad As Double) As Double
   ellipticPi = elliptic3im(enn, k2m(ekk), circ_rad)
End Function
Public Function elliptic3m__1(ByVal enn As Double, ByVal emm As Double) _
         As Double
   elliptic3m__1 = Kw.carlsonRF(0.0, 1.0 - emm, 1.0) + enn * _
            Kw.carlsonRJ(0.0, 1.0 - emm, 1.0, 1.0 - enn) / 3.0
End Function
Public Function elliptic3im__1(ByVal enn As Double, ByVal emm As Double, _
         ByVal circ_rad As Double) As Double
   Dim sinphi As Double
   Dim sinphisq As Double
   Dim sinphicu As Double
   Dim cosphisq As Double
   Dim argb As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2.0))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic3m(enn, emm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2.0
   End If
   sinphi = Math.Sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = Kw.square(Math.Cos(lcirc_rad))
   argb = 1.0 - emm * sinphisq
   elliptic3im__1 = kresult + sinphi * carlsonRF(cosphisq, argb, 1.0) + _
            sinphicu * carlsonRJ(cosphisq, argb, 1.0, 1.0 - enn * _
            sinphisq) * enn / 3.0
End Function
Private Function lf_jacobiphi_0_1(ByVal emm As Double, ByVal elli_rad As _
         Double) As Double
   Dim ai As Double
   Dim ebb As Double
   Dim circ_rad As Double
   Dim geo_mean As Double
   Dim twon As Double
   Dim aa_arr(20) As Double
   Dim cc_arr(20) As Double
   Dim ii As Long
   ebb = Sqr(1.0 - emm)
   aa_arr(0) = 1.0
   cc_arr(0) = Sqr(emm)
   twon = 1.0
   ii = 0
   Do While (Kw.DBLEPS < Math.Abs(cc_arr(ii) / aa_arr(ii)))
      If (19 - 1 < ii) Then
         Exit Do
      End If
      ai = aa_arr(ii)
      ii = ii + 1
      cc_arr(ii) = (ai - ebb) / 2.0
      geo_mean = Sqr(ai * ebb)
      aa_arr(ii) = (ai + ebb) / 2.0
      ebb = geo_mean
      twon = twon * 2.0
   Loop
   circ_rad = twon * aa_arr(ii) * elli_rad
   Do While (0 < ii)
      ebb = cc_arr(ii) * Math.Sin(circ_rad) / aa_arr(ii)
      circ_rad = (Kw.sininv(ebb) + circ_rad) / 2.0
      ii = ii - 1
   Loop
   lf_jacobiphi_0_1 = circ_rad
End Function
Private Function lf_cn_0_1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim retvalu As Double
   If (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      retvalu = Math.Cos(lf_jacobiphi_0_1(emm, elli_rad))
   Else
      csx = Kw.cosh(elli_rad)
      If (emm < 1.0) Then
         snx = Kw.sinh(elli_rad)
         ai = (1.0 - emm) / 4.0
         retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
      Else
         retvalu = 1.0 / csx
      End If
   End If
   lf_cn_0_1 = retvalu
End Function
Private Function lf_sn_0_1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim retvalu As Double
   If (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      retvalu = Math.Sin(lf_jacobiphi_0_1(emm, elli_rad))
   Else
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      If (emm < 1.0) Then
         ai = (1.0 - emm) / 4.0
         retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
      Else
         retvalu = snx / csx
      End If
   End If
   lf_sn_0_1 = retvalu
End Function
Private Function lf_dn_0_1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim retvalu As Double
   If (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      retvalu = 1.0 - emm * snx * snx / 2.0
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(lf_jacobiphi_0_1(emm, elli_rad))
      retvalu = Kw.sqrtx(1.0 - emm * snx * snx)
   Else
      csx = Kw.cosh(elli_rad)
      If (emm < 1.0) Then
         ai = (1.0 - emm) / 4.0
         snx = Kw.sinh(elli_rad)
         retvalu = 1.0 / csx + ai * (csx * snx + elli_rad)
      Else
         retvalu = 1.0 / csx
      End If
   End If
   lf_dn_0_1 = retvalu
End Function
Private Function lf_cn_gt1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ekk As Double
   Dim retvalu As Double
   ekk = m2k(emm)
   retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk)
   lf_cn_gt1 = retvalu
End Function
Private Function lf_sn_gt1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ekk As Double
   Dim retvalu As Double
   ekk = m2k(emm)
   retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk
   lf_sn_gt1 = retvalu
End Function
Private Function lf_dn_gt1(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim ekk As Double
   Dim retvalu As Double
   ekk = m2k(emm)
   retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk)
   lf_dn_gt1 = retvalu
End Function
Private Function lf_ellpj_0_1(ByVal emm As Double, ByVal elli_rad As _
         Double, ByRef ret_arr_p() As Double) As Long
   ' local-use Vb6 lv_emm
   ' local-use Vb6 lv_elli_rad
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim circ_rad As Double
   Dim twon As Double
   If (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      ret_arr_p(0) = snx - ai * csx
      ret_arr_p(1) = csx + ai * snx
      ret_arr_p(2) = 1.0 - emm * snx * snx / 2.0
      ret_arr_p(3) = elli_rad - ai
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad)
      snx = Math.Sin(circ_rad)
      ret_arr_p(0) = snx
      ret_arr_p(1) = Math.Cos(circ_rad)
      ret_arr_p(2) = Kw.sqrtx(1.0 - emm * snx * snx)
      ret_arr_p(3) = circ_rad
   Else
      ai = (1.0 - emm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.tanh(elli_rad)
      twon = csx * Kw.sinh(elli_rad)
      ret_arr_p(0) = snx + ai * (twon - elli_rad) / (csx * csx)
      ret_arr_p(3) = 2.0 * Atan2(Math.Exp(elli_rad), 1.0) - Kw.PI / 2.0 + _
               ai * (twon - elli_rad) / csx
      ai = ai * snx / csx
      ret_arr_p(1) = 1.0 / csx - ai * (twon - elli_rad)
      ret_arr_p(2) = 1.0 / csx + ai * (twon + elli_rad)
   End If
   lv_emm = emm
   lv_elli_rad = elli_rad
   lf_ellpj_0_1 = 0
End Function
Private Function lf_ellpj(ByVal emm As Double, ByVal elli_rad As Double, _
         ByRef ret_arr_p() As Double) As Long
   ' local-use Vb6 lv_emm
   ' local-use Vb6 lv_elli_rad
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim junk_arr(4) As Double
   If (emm < 0.0) Then
      If (emm < - 2.0) Then
         snx = Math.Sin(elli_rad) + Kw.tanh(elli_rad) - lf_sn_gt1(1.0 - _
                  emm, elli_rad)
      Else
         snx = Math.Sin(elli_rad) + Kw.tanh(elli_rad) - lf_sn_0_1(1.0 - _
                  emm, elli_rad)
      End If
      If (emm < - 1.0) Then
         csx = 2.0 * Math.Cos(elli_rad) - lf_cn_gt1(-emm, elli_rad)
      Else
         csx = 2.0 * Math.Cos(elli_rad) - lf_cn_0_1(-emm, elli_rad)
      End If
      ret_arr_p(0) = snx
      ret_arr_p(1) = csx
      ret_arr_p(2) = -dn(-emm, elli_rad) + 2.0
      ret_arr_p(3) = Atan2(snx, csx)
   ElseIf (emm <= 1.0) Then
      Call lf_ellpj_0_1(emm, elli_rad, junk_arr)
      ret_arr_p(0) = junk_arr(0)
      ret_arr_p(1) = junk_arr(1)
      ret_arr_p(2) = junk_arr(2)
      ret_arr_p(3) = junk_arr(3)
   Else
      ai = m2k(emm)
      Call lf_ellpj_0_1(1.0 / emm, elli_rad * ai, junk_arr)
      ret_arr_p(0) = junk_arr(0) / ai
      ret_arr_p(1) = junk_arr(2)
      ret_arr_p(2) = junk_arr(1)
      ret_arr_p(3) = junk_arr(3)
   End If
   lv_emm = emm
   lv_elli_rad = elli_rad
   lf_ellpj = 0
End Function
Public Function jacobiphi(ByVal emm As Double, ByVal elli_rad As Double) _
         As Double
   Dim circ_rad As Double
   If (0.0 < emm And emm < 1.0) Then
      circ_rad = lf_jacobiphi_0_1(emm, elli_rad)
   Else
      circ_rad = Kw.taninv(sn(emm, elli_rad) / cn(emm, elli_rad))
   End If
   jacobiphi = circ_rad
End Function
Public Function sn__1(ByVal emm As Double, ByVal elli_rad As Double) As _
         Double
   ' local-use Vb6 lv_emm
   ' local-use Vb6 lv_elli_rad
   ' local-use Vb6 lv_arr_arr
   If (Kw.isneq(emm, lv_emm) Or Kw.isneq(elli_rad, lv_elli_rad)) Then
      Call lf_ellpj(emm, elli_rad, lv_arr_arr)
   End If
   sn__1 = lv_arr_arr(0)
End Function
Public Function cn__1(ByVal emm As Double, ByVal elli_rad As Double) As _
         Double
   ' local-use Vb6 lv_emm
   ' local-use Vb6 lv_elli_rad
   ' local-use Vb6 lv_arr_arr
   If (Kw.isneq(emm, lv_emm) Or Kw.isneq(elli_rad, lv_elli_rad)) Then
      Call lf_ellpj(emm, elli_rad, lv_arr_arr)
   End If
   cn__1 = lv_arr_arr(1)
End Function
Public Function dn__1(ByVal emm As Double, ByVal elli_rad As Double) As _
         Double
   ' local-use Vb6 lv_emm
   ' local-use Vb6 lv_elli_rad
   ' local-use Vb6 lv_arr_arr
   If (Kw.isneq(emm, lv_emm) Or Kw.isneq(elli_rad, lv_elli_rad)) Then
      Call lf_ellpj(emm, elli_rad, lv_arr_arr)
   End If
   dn__1 = lv_arr_arr(2)
End Function
Public Function dn(ByVal emm As Double, ByVal elli_rad As Double) As Double
   Dim ekk As Double
   Dim retvalu As Double
   If (emm < - 1.0) Then
      retvalu = -lf_dn_gt1(-emm, elli_rad) + 2.0
   ElseIf (emm < 0.0) Then
      retvalu = -lf_dn_0_1(-emm, elli_rad) + 2.0
   ElseIf (emm <= 1.0) Then
      retvalu = lf_dn_0_1(emm, elli_rad)
   Else
      ekk = m2k(emm)
      retvalu = lf_cn_0_1(1.0 / emm, elli_rad * ekk)
   End If
   dn = retvalu
End Function
Public Function cn(ByVal emm As Double, ByVal elli_rad As Double) As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim ekk As Double
   Dim retvalu As Double
   If (emm < - 1.0) Then
      retvalu = -lf_cn_gt1(-emm, elli_rad) + 2.0 * Math.Cos(elli_rad)
   ElseIf (emm < 0.0) Then
      retvalu = -lf_cn_0_1(-emm, elli_rad) + 2.0 * Math.Cos(elli_rad)
   ElseIf (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      retvalu = Math.Cos(lf_jacobiphi_0_1(emm, elli_rad))
   ElseIf (emm <= 1.0) Then
      ai = (1.0 - emm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
   Else
      ekk = m2k(emm)
      retvalu = lf_dn_0_1(1.0 / emm, elli_rad * ekk)
   End If
   cn = retvalu
End Function
Public Function sn(ByVal emm As Double, ByVal elli_rad As Double) As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim ekk As Double
   Dim retvalu As Double
   If (emm < - 1.0) Then
      retvalu = Math.Sin(elli_rad) + Kw.tanh(elli_rad) - lf_sn_gt1(1.0 - _
               emm, elli_rad)
   ElseIf (emm < 0.0) Then
      retvalu = Math.Sin(elli_rad) + Kw.tanh(elli_rad) - lf_sn_0_1(1.0 - _
               emm, elli_rad)
   ElseIf (emm < LX_ELLIPTIC_EPS) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = emm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   ElseIf (emm < 1.0 - LX_ELLIPTIC_EPS) Then
      retvalu = Math.Sin(lf_jacobiphi_0_1(emm, elli_rad))
   ElseIf (emm <= 1.0) Then
      ai = (1.0 - emm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
   Else
      ekk = m2k(emm)
      retvalu = lf_sn_0_1(1.0 / emm, elli_rad * ekk) / ekk
   End If
   sn = retvalu
End Function
Public Function cd(ByVal emm As Double, ByVal elli_rad As Double) As Double
   cd = cn(emm, elli_rad) / dn(emm, elli_rad)
End Function
Public Function sd(ByVal emm As Double, ByVal elli_rad As Double) As Double
   sd = sn(emm, elli_rad) / dn(emm, elli_rad)
End Function
Public Function nd(ByVal emm As Double, ByVal elli_rad As Double) As Double
   nd = 1.0 / dn(emm, elli_rad)
End Function
Public Function dc(ByVal emm As Double, ByVal elli_rad As Double) As Double
   dc = dn(emm, elli_rad) / cn(emm, elli_rad)
End Function
Public Function nc(ByVal emm As Double, ByVal elli_rad As Double) As Double
   nc = 1.0 / cn(emm, elli_rad)
End Function
Public Function sc(ByVal emm As Double, ByVal elli_rad As Double) As Double
   sc = sn(emm, elli_rad) / cn(emm, elli_rad)
End Function
Public Function ds(ByVal emm As Double, ByVal elli_rad As Double) As Double
   ds = dn(emm, elli_rad) / sn(emm, elli_rad)
End Function
Public Function cs(ByVal emm As Double, ByVal elli_rad As Double) As Double
   cs = cn(emm, elli_rad) / sn(emm, elli_rad)
End Function
Public Function ns(ByVal emm As Double, ByVal elli_rad As Double) As Double
   ns = 1.0 / sn(emm, elli_rad)
End Function
Public Function ell2cir(ByVal emm As Double, ByVal elli_rad As Double) As _
         Double
   ell2cir = jacobiphi(emm, elli_rad)
End Function
Public Function cir2ell(ByVal emm As Double, ByVal circ_rad As Double) As _
         Double
   cir2ell = elliptic1im(emm, circ_rad)
End Function
Public Function jacobicir(ByVal emm As Double) As Double
   jacobicir = 4.0 * elliptic2m(emm) / Sqr(1.0 - emm)
End Function
Public Function nom(ByVal emm As Double) As Double
   nom = Math.Exp(-Kw.PI * Kw.elliptic1m(1.0 - emm) / Kw.elliptic1m(emm))
End Function
Public Function theta1(ByVal emm As Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim sig As Double
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   sig = 1.0
   qq = nom(emm)
   sum_curr = 0.0
   ang = zz
   ang_inc = 2.0 * zz
   enn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, Kw.square(enn + 0.5)) * _
               Math.Sin(ang)
      ang = ang + ang_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   theta1 = 2.0 * sum_curr
End Function
Public Function theta2(ByVal emm As Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   qq = nom(emm)
   sum_curr = 0.0
   ang = zz
   ang_inc = 2.0 * zz
   enn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, Kw.square(enn + 0.5)) * Math.Cos(ang)
      ang = ang + ang_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   theta2 = 2.0 * sum_curr
End Function
Public Function theta3(ByVal emm As Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   qq = nom(emm)
   sum_curr = 0.0
   ang = 2.0 * zz
   ang_inc = ang
   enn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, enn * enn) * Math.Cos(ang)
      ang = ang + ang_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   theta3 = 1.0 + 2.0 * sum_curr
End Function
Public Function theta4(ByVal emm As Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   Dim sig As Double
   sig = 1.0
   qq = nom(emm)
   sum_curr = 0.0
   ang = 2.0 * zz
   ang_inc = ang
   enn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, enn * enn) * Math.Cos(ang)
      ang = ang + ang_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   theta4 = 1.0 + 2.0 * sum_curr
End Function
Public Function nevillethetac(ByVal emm As Double, ByVal zz As Double) As _
         Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim qq As Double
   Dim km As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1m(emm)
   qq = Math.Exp(-Kw.PI * Kw.elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   cos_inc = Kw.PI * zz / km
   cos_of = Kw.PI * zz / (2.0 * km)
   enn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, enn * enn + enn) * Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   nevillethetac = sum_curr * Sqr(Kw.TAU * Sqr(qq / emm) / km)
End Function
Public Function nevillethetad(ByVal emm As Double, ByVal zz As Double) As _
         Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim qq As Double
   Dim km As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1m(emm)
   qq = Math.Exp(-Kw.PI * Kw.elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   cos_inc = Kw.PI * zz / km
   cos_of = Kw.PI * zz / km
   enn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, enn * enn) * Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   nevillethetad = (1.0 + 2.0 * sum_curr) * Sqr(Kw.TAU / km) / 2.0
End Function
Public Function nevillethetan(ByVal emm As Double, ByVal zz As Double) As _
         Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim qq As Double
   Dim km As Double
   Dim sig As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1m(emm)
   qq = Math.Exp(-Kw.PI * Kw.elliptic1m(1.0 - emm) / km)
   sum_curr = 0.5
   sig = -1.0
   cos_inc = Kw.PI * zz / km
   cos_of = Kw.PI * zz / km
   enn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, enn * enn) * Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   nevillethetan = 2.0 * sum_curr * Sqr(Kw.TAU / (km * Sqr(1.0 - emm))) / 2.0
End Function
Public Function nevillethetas(ByVal emm As Double, ByVal zz As Double) As _
         Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim enn As Long
   Dim qq As Double
   Dim km As Double
   Dim sig As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1m(emm)
   qq = Math.Exp(-Kw.PI * Kw.elliptic1m(1.0 - emm) / km)
   sum_curr = 0.0
   sig = 1.0
   cos_inc = Kw.PI * zz / km
   cos_of = Kw.PI * zz / (2.0 * km)
   enn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, enn * enn + enn) * Math.Sin(cos_of)
      sig = -sig
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      enn = enn + 1
   Loop
   nevillethetas = sum_curr * Sqr(Kw.TAU * Sqr(qq / (emm * (1.0 - emm))) _
            / km)
End Function
Public Function ellipsearea(ByVal semi_axis_a As Double, ByVal _
         semi_axis_b As Double) As Double
   ellipsearea = Kw.PI * semi_axis_a * semi_axis_b
End Function
Public Function ellipseecc(ByVal semi_axis_a As Double, ByVal semi_axis_b _
         As Double) As Double
   ellipseecc = Kw.topyh1(Kw.ratio(semi_axis_a, semi_axis_b))
End Function
Public Function ellipsem(ByVal semi_axis_a As Double, ByVal semi_axis_b _
         As Double) As Double
   Dim rati As Double
   rati = Kw.ratio(semi_axis_a, semi_axis_b)
   ellipsem = 1.0 - rati * rati
End Function
Public Function ellipseflatness(ByVal semi_axis_a As Double, ByVal _
         semi_axis_b As Double) As Double
   ellipseflatness = 1.0 - Kw.ratio(semi_axis_a, semi_axis_b)
End Function
Public Function ellipsen(ByVal semi_axis_a As Double, ByVal semi_axis_b _
         As Double) As Double
   ellipsen = Math.Abs(semi_axis_a - semi_axis_b) / (semi_axis_a + _
            semi_axis_b)
End Function
Public Function flat2ecc(ByVal flt As Double) As Double
   flat2ecc = Sqr(flt * (2.0 - flt))
End Function
Public Function ecc2flat(ByVal ecc As Double) As Double
   ecc2flat = 1.0 - Sqr(1.0 - ecc * ecc)
End Function
Public Function ellipsecir(ByVal semi_axes_a As Double, ByVal semi_axes_b _
         As Double) As Double
   Dim aaa As Double
   Dim bbb As Double
   Dim pows_two As Double
   Dim suma As Double
   Dim temp As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim axes_sum As Double
   If (semi_axes_a < semi_axes_b) Then
      aaa = semi_axes_b
      bbb = semi_axes_a
   Else
      aaa = semi_axes_a
      bbb = semi_axes_b
   End If
   If (bbb <= Sqr(Kw.DBLEPS) * aaa) Then
      retvalu = 4.0 * aaa
   Else
      suma = 0.0
      axes_sum = aaa + bbb
      pows_two = 1.0
      ii = 0
      Do While (True)
         temp = (aaa + bbb) / 2.0
         bbb = Sqr(aaa * bbb)
         aaa = temp
         pows_two = pows_two + pows_two
         suma = suma + pows_two * Kw.square(aaa - bbb)
         If (Kw.iseq(aaa, bbb)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (30 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = Kw.PI * (Kw.square(axes_sum) - suma) / (aaa + bbb)
   End If
   ellipsecir = retvalu
End Function
Public Function ellipsecir__1(ByVal semi_axis_a As Double, ByVal _
         semi_axis_b As Double) As Double
   Dim major_axis As Double
   Dim minor_axis As Double
   Dim rati As Double
   If (semi_axis_a < semi_axis_b) Then
      major_axis = semi_axis_b
      minor_axis = semi_axis_a
   Else
      major_axis = semi_axis_a
      minor_axis = semi_axis_b
   End If
   rati = minor_axis / major_axis
   ellipsecir__1 = 4.0 * major_axis * Kw.elliptic2m(1.0 - rati * rati)
End Function
Public Function epdf(ByVal minvalx As Double, ByVal maxvalx As Double, _
         ByVal data_num As Long, data_arr_pc() As Double, ByVal pdf_num _
         As Long, ByRef ret_pdf_arr_p() As Double) As Double
   Dim ii As Long
   Dim indi As Long
   Dim gap_size As Double
   Dim retvalu As Double
   Dim inc As Double
   For ii = 0 To pdf_num - 1
      ret_pdf_arr_p(ii) = 0.0
   Next
   inc = 1.0 / data_num
   gap_size = (maxvalx - minvalx) / (pdf_num - 1.0)
   retvalu = 0.0
   For ii = 0 To data_num - 1
      If (data_arr_pc(ii) < minvalx) Then
         ret_pdf_arr_p(0) = ret_pdf_arr_p(0) + inc
      ElseIf (data_arr_pc(ii) < maxvalx) Then
         indi = Ceil((data_arr_pc(ii) - minvalx) / gap_size)
         ret_pdf_arr_p(indi) = ret_pdf_arr_p(indi) + inc
      Else
         retvalu = retvalu + inc
      End If
   Next
   epdf = retvalu
End Function
Public Function ecdf(ByVal minvalx As Double, ByVal maxvalx As Double, _
         ByVal data_num As Long, data_arr_pc() As Double, ByVal pdf_num _
         As Long, ByRef ret_cdf_arr_p() As Double) As Double
   Dim ii As Long
   Dim sumcurr As Double
   Call epdf(minvalx, maxvalx, data_num, data_arr_pc, pdf_num, ret_cdf_arr_p)
   sumcurr = ret_cdf_arr_p(0)
   For ii = 1 To pdf_num - 1
      sumcurr = sumcurr + ret_cdf_arr_p(ii)
      ret_cdf_arr_p(ii) = sumcurr
   Next
   ecdf = sumcurr
End Function
Public Function epdf2cdf(ByVal data_num As Long, pdf_arr_pc() As Double, _
         ByRef ret_cdf_arr_p() As Double) As Double
   Dim ii As Long
   Dim sumcurr As Double
   sumcurr = 0.0
   For ii = 0 To data_num - 1
      sumcurr = sumcurr + pdf_arr_pc(ii)
      ret_cdf_arr_p(ii) = sumcurr
   Next
   epdf2cdf = sumcurr
End Function
Public Function search_check(ByVal gg As Long) As Long
   ' local-use Vb6 lv_search_target
   Dim retvalu As Long
   If (gg < lv_search_target) Then
      retvalu = -1
   ElseIf (lv_search_target < gg) Then
      retvalu = 1
   Else
      retvalu = 0
   End If
   search_check = retvalu
End Function
Public Function search_search(ByVal gg As Long) As Long
   ' local-use Vb6 lv_search_target
   Dim curr As Long
   Dim delta As Long
   Dim result As Long
   lv_search_target = gg
   curr = 1
   For delta = 0 To INTMAX
      result = search_check(curr)
      If (0 <= result) Then
         Exit For
      End If
      curr = curr + curr
   Next
   If (4 <= curr) Then
      delta = curr / 4
      Do While (1 <= delta)
         If (0 < result) Then
            curr = curr - delta
         ElseIf (result < 0) Then
            curr = curr + delta
         Else
            Exit Do
         End If
         result = search_check(curr)
         If (delta < 2) Then
            If (0 < result And 1 < curr) Then
               curr = curr - 1
            End If
            Exit Do
         End If
         delta = delta / 2
      Loop
   End If
   search_search = curr
End Function
Public Function blackbodyl(ByVal wavelen As Double, ByVal temp_k As _
         Double) As Double
   Dim hc As Double
   Dim hc_kt As Double
   Dim retvalu As Double
   If (wavelen <= 0.0 Or temp_k <= 0.0) Then
      retvalu = 0.0
   Else
      hc = Kw.PLANCK * Kw.LIGHT
      hc_kt = hc / (Kw.BOLTZMANN * temp_k)
      retvalu = 2.0 * hc * Kw.LIGHT / (Pow(wavelen, 5) * (Math.Exp(hc_kt _
               / wavelen) - 1.0))
   End If
   blackbodyl = retvalu
End Function
Public Function blackbodyf(ByVal wavefreq As Double, ByVal temp_k As _
         Double) As Double
   Dim h_kt As Double
   Dim retvalu As Double
   If (wavefreq <= 0.0 Or temp_k <= 0.0) Then
      retvalu = 0.0
   Else
      h_kt = Kw.PLANCK / (Kw.BOLTZMANN * temp_k)
      retvalu = 2.0 * Kw.PLANCK * Pow(wavefreq, 3) / (Pow(Kw.LIGHT, 2) * _
               (Math.Exp(h_kt * wavefreq) - 1.0))
   End If
   blackbodyf = retvalu
End Function
Public Function blackbodymode(ByVal temp_k As Double) As Double
   Dim hc_kt As Double
   Dim retvalu As Double
   If (temp_k <= 0.0) Then
      retvalu = 0.0
   Else
      hc_kt = Kw.PLANCK * Kw.LIGHT / (Kw.BOLTZMANN * temp_k)
      retvalu = hc_kt / (5.0 + Kw.wp(-5.0 * Math.Exp(-5.0)))
   End If
   blackbodymode = retvalu
End Function
Public Function blackbodypower(ByVal temp_k As Double) As Double
   blackbodypower = Kw.STEFAN * Pow(temp_k, 4.0)
End Function
Public Function bhmass_to_tempk(ByVal bhmass_kg As Double) As Double
   bhmass_to_tempk = BHMASSTEMP / bhmass_kg
End Function
Public Function bhtempk_to_mass(ByVal bhtemp_k As Double) As Double
   bhtempk_to_mass = BHMASSTEMP / bhtemp_k
End Function
Public Function bhmass_to_radius(ByVal bhmass_kg As Double) As Double
   bhmass_to_radius = bhmass_kg / BHMASS_RADIUS
End Function
Public Function bhradius_to_mass(ByVal bhradius_m As Double) As Double
   bhradius_to_mass = BHMASS_RADIUS * bhradius_m
End Function
Public Function bhmass_to_entropy(ByVal bhmass_kg As Double) As Double
   bhmass_to_entropy = bhmass_kg * bhmass_kg / BHMASS2_ENTROPY
End Function
Public Function bhentropy_to_mass(ByVal bhentropy As Double) As Double
   bhentropy_to_mass = Sqr(bhentropy * BHMASS2_ENTROPY)
End Function
Public Function bhmass_to_power(ByVal bhmass_kg As Double) As Double
   bhmass_to_power = BHMASS2POWER / (bhmass_kg * bhmass_kg)
End Function
Public Function bhpower_to_mass(ByVal bhpower_w As Double) As Double
   bhpower_to_mass = Sqr(BHMASS2POWER / bhpower_w)
End Function
Public Function bhmass_to_area(ByVal bhmass_kg As Double) As Double
   bhmass_to_area = bhmass_kg * bhmass_kg / BHMASS2_AREA
End Function
Public Function bharea_to_mass(ByVal bharea As Double) As Double
   bharea_to_mass = Sqr(BHMASS2_AREA * bharea)
End Function
Public Function bhlifetime_to_mass(ByVal bhlifetime_s As Double) As Double
   bhlifetime_to_mass = cbrt(BHMASS3_LIFETIME * bhlifetime_s)
End Function
Public Function bhmass_to_lifetime(ByVal bhmass_kg As Double) As Double
   bhmass_to_lifetime = bhmass_kg * bhmass_kg * bhmass_kg / BHMASS3_LIFETIME
End Function
Public Function bhmass_to_density(ByVal bhmass_kg As Double) As Double
   bhmass_to_density = bhmass_kg * bhmass_kg / BHMASS2_DENSITY
End Function
Public Function bhdensity_to_mass(ByVal bhdensity As Double) As Double
   bhdensity_to_mass = Sqr(bhdensity * BHMASS2_DENSITY)
End Function
Public Function pendulum(ByVal len_m As Double, ByVal ang_offset_rad As _
         Double, ByVal grav As Double) As Double
   pendulum = Kw.TAU * Sqr(len_m / grav) / Kw.agmean(1.0, _
            Math.Cos(ang_offset_rad / 2.0))
End Function
Public Function sr_mass(ByVal velo_mps As Double) As Double
   sr_mass = 1.0 / Kw.sqrtxp1m1(-Kw.square(velo_mps / Kw.LIGHT))
End Function
Public Function sr_time(ByVal velo_mps As Double) As Double
   sr_time = Kw.sqrtxp1m1(-Kw.square(velo_mps / Kw.LIGHT))
End Function
Public Function gr_massgm(ByVal gm_gm As Double, ByVal radius_m As _
         Double) As Double
   gr_massgm = gm_gm / (radius_m * Kw.LIGHT * Kw.LIGHT)
End Function
Public Function gr_mass(ByVal mass_kg As Double, ByVal radius_m As _
         Double) As Double
   gr_mass = gr_massgm(Kw.GRAVITATION * mass_kg, radius_m)
End Function
Public Function gr_timegm(ByVal gm_gm As Double, ByVal radius_m As _
         Double) As Double
   Dim con As Double
   con = 2 * gm_gm / (Kw.LIGHT * Kw.LIGHT)
   gr_timegm = Kw.sqrtxp1m1(-con / radius_m)
End Function
Public Function gr_time(ByVal mass_kg As Double, ByVal radius_m As _
         Double) As Double
   gr_time = gr_timegm(Kw.GRAVITATION * mass_kg, radius_m)
End Function
Public Function gr_timegm_dr(ByVal gm_gm As Double, ByVal radius_m As _
         Double) As Double
   Dim con As Double
   con = 2 * gm_gm / (Kw.LIGHT * Kw.LIGHT)
   gr_timegm_dr = con / (2 * radius_m * radius_m * Sqr(1.0 - con / radius_m))
End Function
Public Function cent2ratio(ByVal cnt As Double) As Double
   cent2ratio = pow2(cnt / 1200.0)
End Function
Public Function ratio2cent(ByVal rat As Double) As Double
   ratio2cent = lg(rat) * 1200.0
End Function
'   DDDDDDDDDDescription ################################### kw_description #
Public Function kw_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kw Constants: AAABATTERY AAABATTERY_CHARGE AAABATTERY_ENERG" _
         & "Y AAABATTERY_VOLTAGE AABATTERY AABATTERY_CHARGE AABATTERY_ENER" _
         & "GY AABATTERY_VOLTAGE ACCELERATION ACRE ACTION AH ALPHA ALPHA_E" _
         & "RR ALPHA_REC ALPHA_REC_ERR ALPHASQRT AMOUNT AMP AMPERE AMU AMU" _
         & "_ERR ANGLE APERY ARCDEG ARCDEGREE ARCGRAD ARCMIN ARCMINUTE ARC" _
         & "RADIAN ARCSEC ARCSECOND ARCTURN ARE AREA ASTRONOMICALUNIT ATM " _
         & "ATMOSPHERE ATMOSPHERE_ERR ATOMICMASSUNIT ATOMICMASSUNIT_ERR AT" _
         & "TO AU AU_ERR AVOGADRO AVOGADRO_ERR AVOGADRO_REC AVOGADRO_REC_E" _
         & "RR BAN BAR BARN BARREL BASEBALL_MASS BASEBALL_RADIUS BASKETBAL" _
         & "L_MASS BASKETBALL_RADIUS BEKENSTEINENTROPY BEKENSTEININFORMATI" _
         & "ON BHENTROPY_AREA BHMASS2_AREA BHMASS2_DENSITY BHMASS2_ENTROPY"
   desc_string = desc_string _
         & " BHMASS2POWER BHMASS3_LIFETIME BHMASS_RADIUS BHMASSTEMP BHRADI" _
         & "US2DENSITY BIT BLUE_ENERGY BLUE_Hz BLUE_WAVELENGTH BOLTZMANN B" _
         & "OLTZMANN_ERR BOLTZMANN_REC BOLTZMANN_REC_ERR BTU BTU_IT BTU_TH" _
         & " BUSHEL c c_ERR c_REC c_REC_ERR CAL CAL_IT CAL_TH CALORIE CAND" _
         & "ELA CAPACITANCE CARAT CARBATTERY CARBATTERY_CHARGE CARBATTERY_" _
         & "ENERGY CARBATTERY_VOLTAGE CBATTERY CBATTERY_CHARGE CBATTERY_EN" _
         & "ERGY CBATTERY_VOLTAGE CENTI CHAIN CHARGE CONDUCTANCE COULOMB C" _
         & "OULOMBCONST COULOMBCONST_ERR CUP CURRENT DALTON DALTON_ERR DBA" _
         & "TTERY DBATTERY_CHARGE DBATTERY_ENERGY DBATTERY_VOLTAGE DBLEPS " _
         & "DBLMAN DBLMAX DBLMAXLN DBLSIG DECA DECI DEGC DEGF DEGR DENSITY" _
         & " DIME_DIAMETER DIME_HEIGHT DIME_MASS DISTANCE DIT DRYGALLON dv" _
         & "Cs_ENERGY dvCs_ERR dvCs_Hz dvCs_WAVELENGTH E EARTH_AGE EARTH_S"
   desc_string = desc_string _
         & "OLARDAY EHF_ENERGY EHF_Hz EHF_WAVELENGTH EINSTEIN EINSTEIN_ERR" _
         & " ELECTRIC ELECTRIC_ERR ELECTRON_CHARGE ELECTRON_CHARGE_ERR ELE" _
         & "CTRON_MASSA ELECTRON_MASSA_ERR ELECTRONVOLT ELEMENTARYCHARGE E" _
         & "LEMENTARYCHARGE_ERR ELEVATIONMAX ELEVATIONMIN ENERGY EPSILON0 " _
         & "EPSILON0_ERR ERG EULER EUV_ENERGY EUV_Hz EUV_WAVELENGTH eV EXA" _
         & " EXBI FARAD FARADAY FARADAY_ERR FARADAY_REC FARADAY_REC_ERR FA" _
         & "RADAYCONST FARADAYCONST_ERR FARADAYCONST_REC FARADAYCONST_REC_" _
         & "ERR FEET FEIGENBAUM FEMTO FINESTRUCTURE FINESTRUCTURE_ERR FINE" _
         & "STRUCTURE_REC FINESTRUCTURE_REC_ERR FIR_ENERGY FIR_Hz FIR_WAVE" _
         & "LENGTH FLICK FLOZ FLTEPS FLTMAN FLTMAX FLTSIG FOE FOOT FORCE F" _
         & "REQUENCY FT FURLONG G G_ERR GALACTICCENTER GALLON GAMMA_ENERGY" _
         & " GAMMA_Hz GAMMA_WAVELENGTH GAMMAMIN GAS GAS_ERR GAS_REC GAS_RE"
   desc_string = desc_string _
         & "C_ERR GASCONST GASCONST_ERR GASCONST_REC GASCONST_REC_ERR GIAN" _
         & "TIMPACT GIBI GIGA GOLFBALL_MASS GOLFBALL_RADIUS GRAD GRAIN GRA" _
         & "M GRAVITATION GRAVITATION_ERR GRAVITATION_REC GRAVITATION_REC_" _
         & "ERR GRAVITATIONIERS GRAVITATIONNASA GRAVITY GRAVITY_ERR GREEN_" _
         & "ENERGY GREEN_Hz GREEN_WAVELENGTH GYEAR GYEAR_AT_0J2K h h_ERR h" _
         & "_REC h_REC_ERR HAND HART HARTLEY HBAR HBAR_ERR HECTARE HECTO H" _
         & "ENRY HERTZ HF_ENERGY HF_Hz HF_WAVELENGTH HI HI_ENERGY HI_ERR H" _
         & "I_Hz HI_WAVELENGTH HORSE HORSEPOWER HOUR HP HPMETRIC HUBBLE HU" _
         & "BBLE_ERR HUBBLERADIUS HX_ENERGY HX_Hz HX_WAVELENGTH HYDROGENLI" _
         & "NE HYDROGENLINE_ERR Hz INCH INDUCTANCE INHG INTMAX J2K J2KDAY " _
         & "JCENTURY JDAY JDSEC_AT_0GREGORIAN JDSEC_AT_0J2K JDSEC_AT_0KWT " _
         & "JDSEC_AT_0UET JEWISH_FIRST_MONTH JOSEPHSON JOSEPHSON_ERR JOULE"
   desc_string = desc_string _
         & " JYEAR K_AT_0TEMPC K_AT_0TEMPF K_AT_0TEMPR kB kB_ERR kB_REC kB" _
         & "_REC_ERR KCD KCD_ERR KELVIN KG KGF KGFM kgfm_PER_lbfin KIBI KI" _
         & "LO KILOGRAM KPGBOUNDARY KWT LB LBF LBFFT lbfft_PER_lbfin LBFIN" _
         & " lbfinrpm_PER_Hp LC_CIRCLE_RADIUS LC_CIRCLE_X LC_CIRCLE_Y LC_F" _
         & "ACTORS_CNT LC_GD_CNT LC_GD_DAY LC_GD_DOW LC_GD_HOUR LC_GD_JD L" _
         & "C_GD_MIN LC_GD_MONTH LC_GD_NUM LC_GD_SEC LC_GD_YEAR LC_HALAQIM" _
         & "_PER_HOUR LC_KNUTH_ARRAY_CNT LC_KNUTH_KK_CNT LC_KNUTH_LL LC_KN" _
         & "UTH_MAX LC_KNUTH_QUALITY_CNT LC_KNUTH_TT LC_MAGIC_INT LC_MAGIC" _
         & "_INT_NOT LC_PARABOLA_COEFF_A LC_PARABOLA_COEFF_B LC_PARABOLA_C" _
         & "OEFF_C LC_PARABOLA_REAL_ROOTS LC_PARABOLA_ROOT_A LC_PARABOLA_R" _
         & "OOT_B LC_PARABOLA_X_AXIS LC_PARABOLA_Y_EXTREMA LC_STTS_CNT LC_" _
         & "STTS_KEY_CNT LC_STTS_MAGIC LC_STTS_MAX LC_STTS_MEAN LC_STTS_MI"
   desc_string = desc_string _
         & "N LC_STTS_MSQ LC_STTS_NUM LC_STTSC_CNT LC_STTSC_COVAR LC_STTSC" _
         & "_MAGIC LC_STTSC_XX LC_STTSC_YY LC_YEAR_PER_METONIC LENGTH LF_E" _
         & "NERGY LF_Hz LF_WAVELENGTH LIFE_AGE LIGHT LIGHT_ERR LIGHT_REC L" _
         & "IGHT_REC_ERR LIGHTYEAR LINK LITER LITRE LUMEN LUX LX_ELLIPTIC_" _
         & "EPS LX_HALAQIM LX_SHC_SHIFTSHIFT LX_SHC_STEPSHIFT MACH MAGNETI" _
         & "C MAGNETIC_ERR MAGNETICFLUX MAGNETICINDUCTION MARATHON MASS ME" _
         & "BI MEGA METER METRE MF_ENERGY MF_Hz MF_WAVELENGTH MICRO MICROW" _
         & "AVE_ENERGY MICROWAVE_Hz MICROWAVE_WAVELENGTH MILE MILKYWAY_AGE" _
         & " MILKYWAY_DAY MILKYWAY_MASS MILKYWAY_RADIUS MILLI MINUTE MIR_E" _
         & "NERGY MIR_Hz MIR_WAVELENGTH MM MMHG MOLARMASS MOLARMASS_ERR MO" _
         & "LE MONTHS_IN_YEAR MOON_MONTH MPH MPS MPSS MU0 MU0_ERR NANO NAT" _
         & " NEWTON NICKEL_DIAMETER NICKEL_HEIGHT NICKEL_MASS NINEVOLT NIN"
   desc_string = desc_string _
         & "EVOLT_CHARGE NINEVOLT_ENERGY NINEVOLT_VOLTAGE NINEVOLTBATTERY " _
         & "NINEVOLTBATTERY_CHARGE NINEVOLTBATTERY_ENERGY NINEVOLTBATTERY_" _
         & "VOLTAGE NIR_ENERGY NIR_Hz NIR_WAVELENGTH Nm_PER_lbfin NPBOUNDA" _
         & "RY NUV_ENERGY NUV_Hz NUV_WAVELENGTH OHM ORANGE_ENERGY ORANGE_H" _
         & "z ORANGE_WAVELENGTH OUNCE OZ OZFIN ozfin_PER_lbfin PA PARSEC P" _
         & "EBI PECK PENNY_DIAMETER PENNY_HEIGHT PENNY_MASS PERCENT PERMIL" _
         & "LE PETA PHI PHONEBATTERY PHONEBATTERY_CHARGE PHONEBATTERY_ENER" _
         & "GY PHONEBATTERY_VOLTAGE PI PICO PINGPONGBALL_MASS PINGPONGBALL" _
         & "_RADIUS PINT PLANCK PLANCK_ERR PLANCK_REC PLANCK_REC_ERR PLANC" _
         & "KBAR PLANCKBAR_ERR PLANCKCHARGE PLANCKENERGY PLANCKFREQUENCY P" _
         & "LANCKLENGTH PLANCKMASS PLANCKTEMP PLANCKTIME POINT POUND POWER" _
         & " PPB PPM PPQ PPT PRESSURE PROTON_RADIUS PROTON_RADIUS_ERR PROX"
   desc_string = desc_string _
         & "IMACENTAURI PSI PTRBOUNDARY QUART QUARTER_DIAMETER QUARTER_HEI" _
         & "GHT QUARTER_MASS RAD RADIAN RED_ENERGY RED_Hz RED_WAVELENGTH R" _
         & "ESISTANCE RPH RPM RPS RYDBERG RYDBERG_ENERGY RYDBERG_ERR RYDBE" _
         & "RG_Hz RYDBERG_REC RYDBERG_REC_ERR RYDBERG_WAVELENGTH SECOND SH" _
         & "ANNON SHF_ENERGY SHF_Hz SHF_WAVELENGTH SI16MAX SI16MIN SI32MAX" _
         & " SI32MIN SIEMENS SOCCERBALL_MASS SOCCERBALL_RADIUS SOFTBALL_MA" _
         & "SS SOFTBALL_RADIUS SOLARCONSTANT SOLID_ANGLE SPECIFICHEAT SPEE" _
         & "D SPHERESURFACE SQDEG SQUAREDEGREE STANDARDATMOSPHERE STANDARD" _
         & "GRAVITY STEFAN STEFAN_ERR STERADIAN STONE SURVEYFOOT SX_ENERGY" _
         & " SX_Hz SX_WAVELENGTH SXX_ENERGY SXX_Hz SXX_WAVELENGTH TAU TBLS" _
         & "P TEBI TEMPERATURE TEMPF_AT_0TEMPC TENLN TENNISBALL_MASS TENNI" _
         & "SBALL_RADIUS TERA TESLA THF_ENERGY THF_Hz THF_WAVELENGTH TIME " _
         & "TON TONNE TORR TRJBOUNDARY TSP TT_AT_0TAI TT_AT_0UT1 TURN TWOL" _
         & "N TWOSQRT UAMU UAMU_ERR UET UHF_ENERGY UHF_Hz UHF_WAVELENGTH U" _
         & "I16MAX UI32MAX UNITGM UNIVERSE_AGE UNIVERSE_MASS UNIVERSE_RADI" _
         & "US UVA_ENERGY UVA_Hz UVA_WAVELENGTH UVB_ENERGY UVB_Hz UVB_WAVE" _
         & "LENGTH UVC_ENERGY UVC_Hz UVC_WAVELENGTH UVPV VHF_ENERGY VHF_Hz" _
         & " VHF_WAVELENGTH VIOLET_ENERGY VIOLET_Hz VIOLET_WAVELENGTH VISC" _
         & "OSITY VOLT VOLTAGE VOLUME VONKLITZING VONKLITZING_ERR W_PER_Hp" _
         & " WATT WEBER WEEK YARD YELLOW_ENERGY YELLOW_Hz YELLOW_WAVELENGT" _
         & "H YELLOWGREEN_ENERGY YELLOWGREEN_Hz YELLOWGREEN_WAVELENGTH YOB" _
         & "I YOCTO YOTTA ZEBI ZEPTO ZETTA" & vbNL
   desc_string = desc_string _
         & "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv" _
         & " magicnot magicset normal_rand parabola_realroots parabola_xax" _
         & "is parabola_yextrema randd stts_new timee" & vbNL
   desc_string = desc_string _
         & "   Kw 1-ary Functions: a2k a2m abs agmean1 agmean1inv ahmean1 " _
         & "almean1 amean1 aqmean1 b2m bankers bell bellx benford_rand ber" _
         & "noulli bernoullid bernoullin bessI0 bessI1 bessJ0 bessJ1 bessK" _
         & "0 bessK1 bessY0 bessY1 bessY1__1 bharea_to_mass bhdensity_to_m" _
         & "ass bhentropy_to_mass bhlifetime_to_mass bhmass_to_area bhmass" _
         & "_to_density bhmass_to_entropy bhmass_to_lifetime bhmass_to_pow" _
         & "er bhmass_to_radius bhmass_to_tempk bhpower_to_mass bhradius_t" _
         & "o_mass bhtempk_to_mass bits_count bits_ls1b bits_ls1bpos bits_" _
         & "ms1b bits_ms1bpos bitwisenot blackbodyf_pdf blackbodyl_pdf bla" _
         & "ckbodymode blackbodypower cantor carmichael catalan cauchy_ran" _
         & "d cbrt ceil cent2ratio chisqr_rand circle_get clip clockhour c"
   desc_string = desc_string _
         & "lockmin clocksec clockstdev clocksum cnv_dbl2si16 contfra_prin" _
         & "t contfrac_print contfracd_print corr_delete corr_handlex corr" _
         & "_handley corrcorr corrslope corrstderr corry0 cos cos__1 cosd " _
         & "cosdinv cosh coshinv cosintegral cosinv cosm1 cosm1__1 cost co" _
         & "stinv cot cotd cotdinv coth cothinv cotinv cott cottinv csc cs" _
         & "cd cscdinv csch cschinv cscinv csct csctinv ctz cu cube cubero" _
         & "ot date_easter date_pesach date_rosh_hashanah day2dhms day2dhm" _
         & "sinv day2hour deg2dms deg2rad deg2sec deg2tur digamma digamma_" _
         & "_1 digammainv dms2deg dms2rad doomsday ecc2flat Ein elliptic1a" _
         & " elliptic1k elliptic1m elliptic1m__1 elliptic1m__2 elliptic2a " _
         & "elliptic2k elliptic2m elliptic2m__1 ellipticE ellipticK erf er" _
         & "f__1 erf__2 erf__3 erf__4 erfc erfcinv erfcx erfcxinv erfinv e"
   desc_string = desc_string _
         & "ta eulerphi eulerx exp exp__1 exp__2 exp_rand expintegral1 exp" _
         & "integrali expm1 fac facinv factor_print factorial factorialdou" _
         & "ble factorialinv fibo fibox fiboxinv flat2ecc floor frac fubin" _
         & "i fusc g2jewish gamma_rand gau_cdf gau_pdf gau_quantile gd gdi" _
         & "nv geo_rand ghmean1 ghmean1inv glmean1 gmean1 gqmean1 has_prim" _
         & "itiveroot haversin heaviside heronianmean1 hlmean1 hmean1 hn h" _
         & "n__1 hour2day hqmean1 hypot1 hypot1inv id int_rand iround isev" _
         & "en isint isjewish8short isjewish9short isjewishleap isleapyear" _
         & " ismagic isneg isnegint isodd ispos isposint ispractical ispri" _
         & "me issquarefree iszero j2k2dow j2k2jd j2k2kwt j2k2uet j2k2ymdh" _
         & "ms jacobicir jd264_print jd2dow jd2j2k jd2kwt jd2uet jd2ymdhms" _
         & " jewish2g jewish2jd jewish2jdx jewish_months_in_year jewish_ye"
   desc_string = desc_string _
         & "arlength k2a k2m k2tempc k2tempf k2tempr ks_a_cdf kwt2j2k kwt2" _
         & "jd kwt2uet l10 lg lgamma lgamma__1 lgamma__2 lgammainv lix lix" _
         & "inv lmean1 ln ln1p ln__1 ln__2 lns log log10 log2 logintegral " _
         & "logistic_rand lqmean1 lucas lucasx m2a m2b m2k mertens minkows" _
         & "ki mobius n2primish neg nom normal_cdf normal_cdf__1 normal_pd" _
         & "f normal_quantile normal_quantile__1 num2char_print parabola_g" _
         & "et parabola_roots partition partitionq pcf pfg pfl poi_rand po" _
         & "w10 pow2 prime0 prime1 primecount primecountx primenext primen" _
         & "th primenth__1 primeprev primitiveroot qmean1 rad2deg rad2dms " _
         & "rad2dms2 rad2sec rad2tur rand_init randl ratio2cent reci reima" _
         & "nn round rto125 rtoi rtoz sba search_check search_search sec s" _
         & "ec2deg sec2dhms sec2rad sec2tur secd secdinv sech sechinv seci"
   desc_string = desc_string _
         & "nv sect sectinv shc_shft2steps shc_steps2shft shc_steps2shftin" _
         & "v sigma0 sigma1 sigmoid sigmoidinv sign sin sin__1 sinc sinc__" _
         & "1 sincc sincinv sind sindinv sinh sinhinv sinintegral sininv s" _
         & "int sintinv smooth sq sqinv sqrt sqrt__1 sqrt__2 sqrt__3 sqrtx" _
         & " sqrtxp1m1 square squareroot sr_mass sr_time stair stts_delete" _
         & " stts_reset sttscount sttsmagic sttsmax sttsmean sttsmin sttsm" _
         & "sq sttsspread sttsstdev sttsstdevmean sttssum sttsvar supercat" _
         & "alan tan tand tandinv tanh tanhinv taninv tant tantinv tempc2k" _
         & " tempc2tempf tempf2k tempf2tempc tempr2k tgamma tgamma__1 tgam" _
         & "ma__2 tgamma__3 tgamma__stirling tgammadouble tgammainv topyh1" _
         & " totient tri tri_rand triinv trip trunc tur2deg tur2rad tur2se" _
         & "c uet2j2k uet2jd uet2kwt uni_rand versin wm wminv wp wpinv ymd" _
         & "hms2j2k ymdhms2jd ymdhms_get zag zeta zig zigzag" & vbNL
   desc_string = desc_string _
         & "   Kw 2-ary Functions: agmean agmean__1 agmeaninva agmeaninvg " _
         & "ahmean almean amean aqmean atan2 atan2d atan2h atan2t atan2u b" _
         & "allot ballots base_out_print base_outf_print benford_cdf benfo" _
         & "rd_pdf bess_jn bess_yn bessIn bessIn_ps bessJn bessJn_ps bessJ" _
         & "v bessKn bessYn bessYn_ps bessYv beta beta_rand binomial binom" _
         & "ial_rand binomialx birthday birthdayinv birthdayx bits_get bit" _
         & "s_set bitshiftl bitshiftr bitwiseand bitwiseor bitwisexor bkn " _
         & "blackbodyf blackbodyl carlsonRC cauchy_cdf cauchy_pdf cauchy_q" _
         & "uantile cd ceil2 chisqr_cdf chisqr_pdf cir2ell cn cn__1 comb c" _
         & "ombination combx contraharmonic cs d1diamond_d2 d1lt_d2 d1spir" _
         & "al_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2spiral_d1 d2ur"
   desc_string = desc_string _
         & "_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds ell2cir elli" _
         & "psearea ellipsecir ellipsecir__1 ellipseecc ellipseflatness el" _
         & "lipsem ellipsen elliptic1ia elliptic1ik elliptic1im elliptic1i" _
         & "m__1 elliptic2ia elliptic2ik elliptic2im elliptic2im__1 ellipt" _
         & "ic3a elliptic3k elliptic3m elliptic3m__1 ellipticEi ellipticF " _
         & "ellipticP entringer eulerian exp_cdf exp_pdf exp_quantile expi" _
         & "ntegraln factor factorialt floor2 fmod fmod fmods fmodu fmody " _
         & "fmul gamma_cdf gamma_pdf gcd gcda geo_cdf geo_pdf geo_quantile" _
         & " ghmean glmean gmean gompertz_rand gqmean gr_mass gr_massgm gr" _
         & "_time gr_timegm gr_timegm_dr has_primitiveroot_f heronianmean " _
         & "hlmean hmean hnm hqmean hypot int_cdf int_pdf int_quantile int" _
         & "s_rand iseq isge isgt isle islt ismult ismultl isneq ispractic"
   desc_string = desc_string _
         & "al_f isprimitiveroot issignsame issquarefree_f isss jacobiphi " _
         & "jewish_monthbegin jewish_monthlength ks_b_cdf ks_cdf ks_quanti" _
         & "le lbeta lcam lcams lcantim lcm lcombx ligamma ligammainv lmea" _
         & "n logistic_cdf logistic_pdf logistic_quantile logx lpermx lqme" _
         & "an max2 maxabs maxabs2 maxi mb_cdf mb_pdf mean min2 minabs min" _
         & "abs2 mini mobius_f modf mods modulo n2perm_print nbd_rand nc n" _
         & "d nevillethetac nevillethetad nevillethetan nevillethetas ns n" _
         & "throot__1 pareto_rand perm permutation permx pochhammer poi_cd" _
         & "f poi_pdf poi_quantile polya_rand polycnum polynum pow powi pr" _
         & "ime0_f print_array qmean rand_init_array ratio repetendlen rli" _
         & "gamma rms round2 rtomsd ruigamma sc sd shc_shftpoles2steps sig" _
         & "ma sigma0_f sigma1_f sn sn__1 spread2stdev stdev2spread stirli" _
         & "ng1 stirling2 stts_copy stts_downdate stts_newx stts_scale stt" _
         & "s_shift stts_update stts_update2 t_cdf t_cdf__1 t_pdf t_quanti" _
         & "le t_quantile__1 tetracnum tetranum theta1 theta2 theta3 theta" _
         & "4 Tn topyh totient_f trap_rand tri_cdf tri_pdf tri_quantile ui" _
         & "gamma uigamma__1 uigammainv Un uni_cdf uni_pdf uni_quantile va" _
         & "riance zeta_cdf zeta_pdf zipf_rand znorder znorder__1" & vbNL
   desc_string = desc_string _
         & "   Kw 3-ary Functions: agcmean aghmean atothenmodp atothenmodx" _
         & " base_out_fix_print beta_cdf beta_pdf beta_quantile betainc be" _
         & "tainc__1 binomial_cdf binomial_pdf bits_assign bkbn cantorll c" _
         & "antorul cantorxx carlsonRD carlsonRF chebeval clip2 clip2x cor" _
         & "r_update cossin_ev divi dlog dlogx ellipsoid_surface ellipsoid" _
         & "_volume elliptic3ia elliptic3ik elliptic3im elliptic3im__1 ell" _
         & "ipticPi epdf2cdf f11 f_cdf f_quantile f_quantile__1 fibo3 fit_" _
         & "ls fit_ls0 fit_minmax fit_minmax0 fit_poly fitx_minmax fmod2 f" _
         & "vad fvoa gompertz_cdf gompertz_pdf gompertz_quantile hms2day h" _
         & "orner hypot3 ifzero isalmostequal isbetween isbetweenx isfloor" _
         & "same iswithin jewishymd2jd kevy_print loanpayment loanrate loa" _
         & "nvalue maxabsoffset maxmin maxwell_boltzmann_cdf maxwell_boltz" _
         & "mann_pdf maxwell_juttner_pdf minabsoffset n2comb_print n2perm " _
         & "nbd_cdf nbd_pdf pareto_cdf pareto_pdf pareto_quantile pendulum" _
         & " pmean polya_cdf polya_pdf pvad pvoa remquou roundy sigma_f si" _
         & "gmoid3 sigmoid3d stts_updatex taninv3 trap_cdf trap_pdf trap_q" _
         & "uantile ymd2dow ymd2doy ymd2j2k ymd2j2k__1 ymd2jd zipf_cdf zip" _
         & "f_pdf zipf_quantile" & vbNL
   desc_string = desc_string _
         & "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2c" _
         & "omb sphere_d" & vbNL
   desc_string = desc_string _
         & "   Kw 5-ary Functions: sphere_distance" & vbNL
   desc_string = desc_string _
         & "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_destination" _
         & " ellipsoid_distance epdf parabola_solve stts_init stts_initx"
   kw_description = desc_string
End Function
Public Function kw_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kw Constants: AAABATTERY(_(CHARGE|ENERGY|VOLTAGE))? AABATTE" _
         & "RY(_(CHARGE|ENERGY|VOLTAGE))? ACCELERATION ACRE ACTION AH ALPH" _
         & "A(|_(ERR|REC(_ERR)?)|SQRT) AMOUNT AMP(ERE)? AMU(_ERR)? ANGLE A" _
         & "PERY ARC(DEG(REE)?|GRAD|MIN(UTE)?|RADIAN|SEC(OND)?|TURN) AREA?" _
         & " ASTRONOMICALUNIT ATM(OSPHERE(_ERR)?)? ATOMICMASSUNIT(_ERR)? A" _
         & "TTO AU AU_ERR AVOGADRO(|_(ERR|REC(_ERR)?)) BAN BAR(N|REL)? BAS" _
         & "(EBALL_(MASS|RADIUS)|KETBALL_(MASS|RADIUS)) BEKENSTEIN(ENTROPY" _
         & "|INFORMATION) BHENTROPY_AREA BHMASS(2(_(AREA|DENSITY|ENTROPY)|" _
         & "POWER)|3_LIFETIME|_RADIUS|TEMP) BHRADIUS2DENSITY BIT BLUE_(ENE" _
         & "RGY|Hz|WAVELENGTH) BOLTZMANN(|_(ERR|REC(_ERR)?)) BTU(_(IT|TH))" _
         & "? BUSHEL c c_ERR c_REC(_ERR)? CAL(_(IT|TH)|ORIE)? CANDELA CAPA"
   desc_string = desc_string _
         & "CITANCE CAR(AT|BATTERY(_(CHARGE|ENERGY|VOLTAGE))?) CBATTERY(_(" _
         & "CHARGE|ENERGY|VOLTAGE))? CENTI CHA(IN|RGE) CONDUCTANCE COULOMB" _
         & "(CONST(_ERR)?)? CUP CURRENT DALTON(_ERR)? DBATTERY(_(CHARGE|EN" _
         & "ERGY|VOLTAGE))? DBL(EPS|MA(N|X(LN)?)|SIG) DEC[AI] DEG[CFR] DEN" _
         & "SITY DIME_(DIAMETER|HEIGHT|MASS) DISTANCE DIT DRYGALLON dvCs_(" _
         & "E(NERGY|RR)|Hz|WAVELENGTH) E EARTH_(AGE|SOLARDAY) EHF_(ENERGY|" _
         & "Hz|WAVELENGTH) EINSTEIN(_ERR)? ELE(CTR(IC(_ERR)?|ON(_(CHARGE(_" _
         & "ERR)?|MASSA(_ERR)?)|VOLT))|MENTARYCHARGE(_ERR)?|VATIONM(AX|IN)" _
         & ") ENERGY EPSILON0(_ERR)? ERG EULER EUV_(ENERGY|Hz|WAVELENGTH) " _
         & "eV EXA EXBI FARAD(|AY(|_(ERR|REC(_ERR)?)|CONST(|_(ERR|REC(_ERR" _
         & ")?)))) FEET FEIGENBAUM FEMTO FINESTRUCTURE(|_(ERR|REC(_ERR)?))" _
         & " FIR_(ENERGY|Hz|WAVELENGTH) FLICK FLOZ FLT(EPS|MA[NX]|SIG) FOE"
   desc_string = desc_string _
         & " FOOT FORCE FREQUENCY FT FURLONG G G_ERR GAL(ACTICCENTER|LON) " _
         & "GAMMA(_(ENERGY|Hz|WAVELENGTH)|MIN) GAS(|_(ERR|REC(_ERR)?)|CONS" _
         & "T(|_(ERR|REC(_ERR)?))) GIANTIMPACT GIBI GIGA GOLFBALL_(MASS|RA" _
         & "DIUS) GRA(D|IN|M|VIT(ATION(|_(ERR|REC(_ERR)?)|IERS|NASA)|Y(_ER" _
         & "R)?)) GREEN_(ENERGY|Hz|WAVELENGTH) GYEAR(_AT_0J2K)? h h_ERR h_" _
         & "REC(_ERR)? HAND HART(LEY)? HBAR(_ERR)? HECT(ARE|O) HENRY HERTZ" _
         & " HF_(ENERGY|Hz|WAVELENGTH) HI HI_(E(NERGY|RR)|Hz|WAVELENGTH) H" _
         & "ORSE(POWER)? HOUR HP HPMETRIC HUBBLE(_ERR|RADIUS)? HX_(ENERGY|" _
         & "Hz|WAVELENGTH) HYDROGENLINE(_ERR)? Hz INCH INDUCTANCE INHG INT" _
         & "MAX J2K(DAY)? JCENTURY JDAY JDSEC_AT_0(GREGORIAN|J2K|KWT|UET) " _
         & "JEWISH_FIRST_MONTH JOSEPHSON(_ERR)? JOULE JYEAR K_AT_0TEMP[CFR" _
         & "] kB kB_(ERR|REC(_ERR)?) KCD(_ERR)? KELVIN KG KGFM? kgfm_PER_l"
   desc_string = desc_string _
         & "bfin KIBI KILO(GRAM)? KPGBOUNDARY KWT LB LBF(FT)? lbfft_PER_lb" _
         & "fin LBFIN lbfinrpm_PER_Hp LC_(CIRCLE_(RADIUS|[XY])|FACTORS_CNT" _
         & "|GD_(CNT|D(AY|OW)|HOUR|JD|M(IN|ONTH)|NUM|SEC|YEAR)|HALAQIM_PER" _
         & "_HOUR|KNUTH_(ARRAY_CNT|KK_CNT|LL|MAX|QUALITY_CNT|TT)|MAGIC_INT" _
         & "(_NOT)?|PARABOLA_(COEFF_[ABC]|R(EAL_ROOTS|OOT_[AB])|X_AXIS|Y_E" _
         & "XTREMA)|STTS(_(CNT|KEY_CNT|M(A(GIC|X)|EAN|IN|SQ)|NUM)|C_(C(NT|" _
         & "OVAR)|MAGIC|XX|YY))|YEAR_PER_METONIC) LENGTH LF_(ENERGY|Hz|WAV" _
         & "ELENGTH) LIFE_AGE LIGHT(|_(ERR|REC(_ERR)?)|YEAR) LINK LIT(ER|R" _
         & "E) LUMEN LUX LX_(ELLIPTIC_EPS|HALAQIM|SHC_S(HIFTSHIFT|TEPSHIFT" _
         & ")) MACH MAGNETIC(_ERR|FLUX|INDUCTION)? MARATHON MASS MEBI MEGA" _
         & " MET(ER|RE) MF_(ENERGY|Hz|WAVELENGTH) MICRO(WAVE_(ENERGY|Hz|WA" _
         & "VELENGTH))? MIL(E|KYWAY_(AGE|DAY|MASS|RADIUS)|LI) MINUTE MIR_("
   desc_string = desc_string _
         & "ENERGY|Hz|WAVELENGTH) MM MMHG MOL(ARMASS(_ERR)?|E) MONTHS_IN_Y" _
         & "EAR MOON_MONTH MPH MPSS? MU0(_ERR)? NANO NAT NEWTON NICKEL_(DI" _
         & "AMETER|HEIGHT|MASS) NINEVOLT(|_(CHARGE|ENERGY|VOLTAGE)|BATTERY" _
         & "(_CHARGE|_ENERGY|_VOLTAGE)?) NIR_(ENERGY|Hz|WAVELENGTH) Nm_PER" _
         & "_lbfin NPBOUNDARY NUV_(ENERGY|Hz|WAVELENGTH) OHM ORANGE_(ENERG" _
         & "Y|Hz|WAVELENGTH) OUNCE OZ OZFIN ozfin_PER_lbfin PA PARSEC PEBI" _
         & " PECK PENNY_(DIAMETER|HEIGHT|MASS) PER(CENT|MILLE) PETA PHI PH" _
         & "ONEBATTERY(_(CHARGE|ENERGY|VOLTAGE))? PI PICO PIN(GPONGBALL_(M" _
         & "ASS|RADIUS)|T) PLANCK(|_(ERR|REC(_ERR)?)|BAR(_ERR)?|CHARGE|ENE" _
         & "RGY|FREQUENCY|LENGTH|MASS|T(EMP|IME)) POINT POUND POWER PPB PP" _
         & "M PPQ PPT PRESSURE PRO(TON_RADIUS(_ERR)?|XIMACENTAURI) PSI PTR" _
         & "BOUNDARY QUART(ER_(DIAMETER|HEIGHT|MASS))? RAD(IAN)? RED_(ENER"
   desc_string = desc_string _
         & "GY|Hz|WAVELENGTH) RESISTANCE RPH RPM RPS RYDBERG(|_(E(NERGY|RR" _
         & ")|Hz|REC(_ERR)?|WAVELENGTH)) SECOND SHANNON SHF_(ENERGY|Hz|WAV" _
         & "ELENGTH) SI16M(AX|IN) SI32M(AX|IN) SIEMENS SOCCERBALL_(MASS|RA" _
         & "DIUS) SOFTBALL_(MASS|RADIUS) SOL(ARCONSTANT|ID_ANGLE) SPE(CIFI" _
         & "CHEAT|ED) SPHERESURFACE SQDEG SQUAREDEGREE STANDARD(ATMOSPHERE" _
         & "|GRAVITY) STE(FAN(_ERR)?|RADIAN) STONE SURVEYFOOT SX_(ENERGY|H" _
         & "z|WAVELENGTH) SXX_(ENERGY|Hz|WAVELENGTH) TAU TBLSP TEBI TEMP(E" _
         & "RATURE|F_AT_0TEMPC) TEN(LN|NISBALL_(MASS|RADIUS)) TERA TESLA T" _
         & "HF_(ENERGY|Hz|WAVELENGTH) TIME TON(NE)? TORR TRJBOUNDARY TSP T" _
         & "T_AT_0(TAI|UT1) TURN TWO(LN|SQRT) UAMU(_ERR)? UET UHF_(ENERGY|" _
         & "Hz|WAVELENGTH) UI16MAX UI32MAX UNI(TGM|VERSE_(AGE|MASS|RADIUS)" _
         & ") UVA_(ENERGY|Hz|WAVELENGTH) UVB_(ENERGY|Hz|WAVELENGTH) UVC_(E" _
         & "NERGY|Hz|WAVELENGTH) UVPV VHF_(ENERGY|Hz|WAVELENGTH) VIOLET_(E" _
         & "NERGY|Hz|WAVELENGTH) VISCOSITY VOL(T(AGE)?|UME) VONKLITZING(_E" _
         & "RR)? W_PER_Hp WATT WEBER WEEK YARD YELLOW(_(ENERGY|Hz|WAVELENG" _
         & "TH)|GREEN_(ENERGY|Hz|WAVELENGTH)) YOBI YOCTO YOTTA ZEBI ZEPTO " _
         & "ZETTA" & vbNL
   desc_string = desc_string _
         & "   Kw 0-ary Functions: corr_new euler__1 gau_rand jd2ymdhmsinv" _
         & " magic(not|set) normal_rand parabola_(realroots|xaxis|yextrema" _
         & ") randd stts_new timee" & vbNL
   desc_string = desc_string _
         & "   Kw 1-ary Functions: a2k a2m abs agmean1(inv)? ahmean1 almea" _
         & "n1 amean1 aqmean1 b2m bankers bellx? benford_rand bernoulli[dn" _
         & "]? bess(I[01]|J[01]|K[01]|Y(0|1(__1)?)) bharea_to_mass bhdensi" _
         & "ty_to_mass bhentropy_to_mass bhlifetime_to_mass bhmass_to_(are" _
         & "a|density|entropy|lifetime|power|radius|tempk) bhpower_to_mass" _
         & " bhradius_to_mass bhtempk_to_mass bit(s_(count|ls1b(pos)?|ms1b" _
         & "(pos)?)|wisenot) blackbody(f_pdf|l_pdf|mode|power) cantor carm" _
         & "ichael catalan cauchy_rand cbrt ceil cent2ratio chisqr_rand ci" _
         & "rcle_get clip clock(hour|min|s(ec|tdev|um)) cnv_dbl2si16 contf" _
         & "ra(_print|c(_print|d_print)) corr(_(delete|handle[xy])|corr|s(" _
         & "lope|tderr)|y0) cos(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1)?"
   desc_string = desc_string _
         & "|t(inv)?) cot([dht]?(inv)?)? csc([dht]?(inv)?)? ctz cu cube(ro" _
         & "ot)? date_(easter|pesach|rosh_hashanah) day2(dhms(inv)?|hour) " _
         & "deg2(dms|rad|sec|tur) digamma(__1|inv)? dms2(deg|rad) doomsday" _
         & " ecc2flat Ein elliptic(1([ak]|m(__[12])?)|2([ak]|m(__1)?)|[EK]" _
         & ") erf(|__([12]|[34])|c(inv|x(inv)?)?|inv) eta euler(phi|x) exp" _
         & "(_(_[12]|rand)|integral[1i]|m1)? fac(|inv|tor(_print|ial(doubl" _
         & "e|inv)?)) fibo(x(inv)?)? flat2ecc floor frac fubini fusc g2jew" _
         & "ish gamma_rand gau_(cdf|pdf|quantile) gd gdinv geo_rand ghmean" _
         & "1(inv)? glmean1 gmean1 gqmean1 has_primitiveroot haversin heav" _
         & "iside heronianmean1 hlmean1 hmean1 hn hn__1 hour2day hqmean1 h" _
         & "ypot1(inv)? id int_rand iround is(even|int|jewish8short|jewish" _
         & "9short|jewishleap|leapyear|magic|neg|negint|odd|pos|posint|pra"
   desc_string = desc_string _
         & "ctical|prime|squarefree|zero) j2k2(dow|jd|kwt|uet|ymdhms) jaco" _
         & "bicir jd2(64_print|dow|j2k|kwt|uet|ymdhms) jewish(2(g|jdx?)|_(" _
         & "months_in_year|yearlength)) k2a k2m k2temp[cfr] ks_a_cdf kwt2(" _
         & "j(2k|d)|uet) l10 lg lgamma(__[12]|inv)? lix(inv)? lmean1 ln ln" _
         & "1p ln__[12] lns log(10|2|i(ntegral|stic_rand))? lqmean1 lucasx" _
         & "? m2a m2b m2k mertens minkowski mobius n2primish neg nom norma" _
         & "l_(cdf(__1)?|pdf|quantile(__1)?) num2char_print par(abola_(get" _
         & "|roots)|titionq?) pcf pfg pfl poi_rand pow(10|2) prim(e([01]|c" _
         & "ountx?|n(ext|th(__1)?)|prev)|itiveroot) qmean1 rad2(d(eg|ms2?)" _
         & "|sec|tur) rand(_init|l) ratio2cent reci reimann round rto(125|" _
         & "[iz]) sba search_(check|search) sec(|2(d(eg|hms)|rad|tur)|[dht" _
         & "]?(inv)?) shc_s(hft2steps|teps2shft(inv)?) sig(m(a[01]|oid(inv" _
         & ")?)|n) sin(|__1|c(__1|c|inv)?|d(inv)?|h(inv)?|in(tegral|v)|t(i" _
         & "nv)?) smooth sq sqinv sqrt(__[123]|x(p1m1)?)? square(root)? sr" _
         & "_(mass|time) stair stts(_(delete|reset)|count|m(a(gic|x)|ean|i" _
         & "n|sq)|s(pread|tdev(mean)?|um)|var) supercatalan tan([dht]?(inv" _
         & ")?)? temp(c2(k|tempf)|f2(k|tempc)|r2k) tgamma(__([123]|stirlin" _
         & "g)|double|inv)? topyh1 totient tri(_rand|inv|p)? trunc tur2(de" _
         & "g|rad|sec) uet2(j(2k|d)|kwt) uni_rand versin wm(inv)? wp(inv)?" _
         & " ymdhms(2j(2k|d)|_get) zag zeta zig(zag)?" & vbNL
   desc_string = desc_string _
         & "   Kw 2-ary Functions: agmean(__1|inv[ag])? ahmean almean amea" _
         & "n aqmean atan2([dh]|[tu])? ballots? base_out(_print|f_print) b" _
         & "enford_(cdf|pdf) bess(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n(_p" _
         & "s)?|v)) beta(_rand)? binomial(_rand|x)? birthday(inv|x)? bit(s" _
         & "(_(get|set)|hift[lr])|wise(and|or|xor)) bkn blackbody[fl] carl" _
         & "sonRC cauchy_(cdf|pdf|quantile) cd ceil2 chisqr_(cdf|pdf) cir2" _
         & "ell cn cn__1 comb(ination|x)? contraharmonic cs d1diamond_d2 d" _
         & "1lt_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1 d2s" _
         & "piral_d1 d2ur_d1 days_in_month dc ddist dist dlog1 dn dn__1 ds" _
         & " ell(2cir|ip(se(area|cir(__1)?|ecc|flatness|[mn])|tic(1i([ak]|" _
         & "m(__1)?)|2i([ak]|m(__1)?)|3([ak]|m(__1)?)|Ei|[FP]))) entringer"
   desc_string = desc_string _
         & " eulerian exp(_(cdf|pdf|quantile)|integraln) factor(ialt)? flo" _
         & "or2 fmod([suy]?)? fmul gamma_(cdf|pdf) gcda? geo_(cdf|pdf|quan" _
         & "tile) ghmean glmean gmean gompertz_rand gqmean gr_(mass(gm)?|t" _
         & "ime(gm(_dr)?)?) has_primitiveroot_f heronianmean hlmean hmean " _
         & "hnm hqmean hypot int(_(cdf|pdf|quantile)|s_rand) is(eq|ge|gt|l" _
         & "e|lt|mult|multl|neq|practical_f|primitiveroot|signsame|squaref" _
         & "ree_f|ss) jacobiphi jewish_month(begin|length) ks_(b_cdf|cdf|q" _
         & "uantile) lbeta lca(ms?|ntim) lcm lcombx ligamma(inv)? lmean lo" _
         & "g(istic_(cdf|pdf|quantile)|x) lpermx lqmean max(2|abs2?|i) mb_" _
         & "(cdf|pdf) mean min(2|abs2?|i) mobius_f mod([fs]|ulo) n2perm_pr" _
         & "int nbd_rand nc nd nevilletheta([cd]|[ns]) ns nthroot__1 paret" _
         & "o_rand perm(utation|x)? pochhammer poi_(cdf|pdf|quantile) poly" _
         & "(a_rand|cnum|num) powi? pri(me0_f|nt_array) qmean rand_init_ar" _
         & "ray ratio repetendlen rligamma rms round2 rtomsd ruigamma sc s" _
         & "d shc_shftpoles2steps sigma(0_f|1_f)? sn sn__1 spread2stdev st" _
         & "dev2spread stirling[12] stts_(copy|downdate|newx|s(cale|hift)|" _
         & "update2?) t_cdf(__1)? t_pdf t_quantile(__1)? tetra(cnum|num) t" _
         & "heta([12]|[34]) Tn topyh totient_f trap_rand tri_(cdf|pdf|quan" _
         & "tile) uigamma(__1|inv)? Un uni_(cdf|pdf|quantile) variance zet" _
         & "a_(cdf|pdf) zipf_rand znorder(__1)?" & vbNL
   desc_string = desc_string _
         & "   Kw 3-ary Functions: agcmean aghmean atothenmod[px] base_out" _
         & "_fix_print beta(_(cdf|pdf|quantile)|inc(__1)?) binomial_(cdf|p" _
         & "df) bits_assign bkbn cantor(ll|ul|xx) carlsonR[DF] chebeval cl" _
         & "ip2x? corr_update cossin_ev divi dlogx? ellip(soid_(surface|vo" _
         & "lume)|tic(3i([ak]|m(__1)?)|Pi)) epdf2cdf f11 f_cdf f_quantile(" _
         & "__1)? fibo3 fit(_(ls0?|minmax0?|poly)|x_minmax) fmod2 fvad fvo" _
         & "a gompertz_(cdf|pdf|quantile) hms2day horner hypot3 ifzero is(" _
         & "almostequal|between|betweenx|floorsame|within) jewishymd2jd ke" _
         & "vy_print loan(payment|rate|value) max(absoffset|min|well_(bolt" _
         & "zmann_(cdf|pdf)|juttner_pdf)) minabsoffset n2comb_print n2perm" _
         & " nbd_(cdf|pdf) pareto_(cdf|pdf|quantile) pendulum pmean polya_" _
         & "(cdf|pdf) pvad pvoa remquou roundy sigm(a_f|oid3d?) stts_updat" _
         & "ex taninv3 trap_(cdf|pdf|quantile) ymd2(do[wy]|j(2k(__1)?|d)) " _
         & "zipf_(cdf|pdf|quantile)" & vbNL
   desc_string = desc_string _
         & "   Kw 4-ary Functions: carlsonRJ f21 great_circle_distance n2c" _
         & "omb sphere_d" & vbNL
   desc_string = desc_string _
         & "   Kw 5-ary Functions: sphere_distance" & vbNL
   desc_string = desc_string _
         & "   Kw 6-ary Functions: circle_solve ecdf ellipsoid_d(estinatio" _
         & "n|istance) epdf parabola_solve stts_initx?"
   kw_desc = desc_string
End Function
