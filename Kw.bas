'    Copyright (C) 2020 by Kevin D. Woerner
''-' =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
''-' =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
''-' =KDW= ######### SRC $KWROOT/codekdw/kw-lib/Kw.fwipp ########
' 2020-07-20 kdw  For Changelog, See File Kw.varylog
Attribute VB_Name = "Kw"
Option Explicit
#If VBA7 Then
   Private Declare PtrSafe Function timeGetTime _
         Lib "winmm.dll" () As Long
#Else
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
   Private Declare Function GetTimeZoneInformation Lib _
         "kernel32" (lpTimeZoneInformation _
               As Time_Zone_Type) As Long
   Private Declare Function timeGetTime _
         Lib "winmm.dll" () As Long
#EndIf
Private lv_time_zone_offset As Double
Private Const vbNL As String = "" & vbNewLine
'   GGGGGGGGGGlobal-Variables ------------------------ LANG_VB6 #
Public Const KILOGRAM As Double = 1.0
Public Const METER As Double = 1.0
Public Const SECOND As Double = 1.0
Public Const KELVIN As Double = 1.0
Public Const AMPERE As Double = 1.0
Public Const COULOMB As Double = AMPERE * SECOND
Public Const MOLE As Double = 1.0
Public Const CANDELA As Double = 1.0
Public Const BIT As Double = 1.0
Public Const RADIAN As Double = 1.0
Public Const STERADIAN As Double = RADIAN * RADIAN
Public Const METRE As Double = METER
Public Const KG As Double = KILOGRAM
Public Const RAD As Double = RADIAN
Public Const E As Double = _
      2.71828182845904523536028747135266249775724709369996
Public Const TAU As Double = _
      6.28318530717958647692528676655900576839433879875021
Public Const PHI As Double = _
      1.61803398874989484820458683436563811772030917980576
Public Const LNTWO As Double = _
      0.69314718055994530941723212145817656807550013436026
Public Const LNTEN As Double = _
      2.30258509299404568401799145468436420760110148862877
Public Const SQRTTWO As Double = _
      1.41421356237309504880168872420969807856967187537695
Public Const EULER As Double = _
      0.57721566490153286060651209008240243104215934
Public Const FEIGENBAUM As Double = _
      4.669201609102990671853203820466201617258
Public Const APERY As Double = _
      1.20205690315959428539973816151144999076498629
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
Public Const MPSS As Double = METER / (SECOND * SECOND)
Public Const UNITGM As Double = METER * MPS * MPS
Public Const NEWTON As Double = KILOGRAM * MPSS
Public Const JOULE As Double = NEWTON * METER
Public Const PA As Double = NEWTON / (METER * METER)
Public Const WATT As Double = JOULE / SECOND
Public Const HERTZ As Double = 1.0 / SECOND
Public Const AMP As Double = AMPERE
Public Const VOLT As Double = WATT / AMPERE
Public Const OHM As Double = VOLT / AMPERE
Public Const HENRY As Double = OHM * SECOND
Public Const FARAD As Double = COULOMB / VOLT
Public Const SIEMENS As Double = 1.0 / OHM
Public Const WEBER As Double = VOLT * SECOND
Public Const TESLA As Double = WEBER / (METER * METER)
Public Const LUMEN As Double = CANDELA * STERADIAN
Public Const LUX As Double = LUMEN / (METER * METER)
Public Const BOLTZMANN As Double = 1.380649E-23 * JOULE / KELVIN
Public Const BOLTZMANN_ERR As Double = 0
Public Const ELECTRONCHARGE As Double = 1.602176634E-19 * COULOMB
Public Const ELECTRONCHARGE_ERR As Double = 0
Public Const LIGHT As Double = 2.99792458E+8 * METER / SECOND
Public Const LIGHT_ERR As Double = 0
Public Const AVOGADRO As Double = 6.02214076E+23 / MOLE
Public Const AVOGADRO_ERR As Double = 0
Public Const PLANCK As Double = 6.62607015E-34 * JOULE * SECOND
Public Const PLANCK_ERR As Double = 0
Public Const KCD As Double = 6.83E+2 * LUMEN / WATT
Public Const KCD_ERR As Double = 0
Public Const dvCsHz As Double = 9.19263177E+9 / SECOND
Public Const dvCsWAVELENGTH As Double = LIGHT / dvCsHz
Public Const dvCsWAVENUMBER As Double = 1.0 / dvCsWAVELENGTH
Public Const dvCsENERGY As Double = PLANCK * dvCsHz
Public Const dvCs_ERR As Double = 0
Public Const kB As Double = BOLTZMANN
Public Const kB_ERR As Double = BOLTZMANN_ERR
Public Const ELEMENTARYCHARGE As Double = ELECTRONCHARGE
Public Const ELEMENTARYCHARGE_ERR As Double = ELECTRONCHARGE_ERR
Public Const PLANCKBAR As Double = PLANCK / TAU
Public Const PLANCKBAR_ERR As Double = PLANCK_ERR
Public Const h As Double = PLANCK
Public Const h_ERR As Double = PLANCK_ERR
Public Const HBAR As Double = PLANCKBAR
Public Const HBAR_ERR As Double = PLANCKBAR_ERR
Public Const BOLTZMANN_REC As Double = 1.0 / BOLTZMANN
Public Const ELECTRONCHARGE_REC As Double = 1.0 / ELECTRONCHARGE
Public Const LIGHT_REC As Double = 1.0 / LIGHT
Public Const AVOGADRO_REC As Double = 1.0 / AVOGADRO
Public Const dvCsHz_REC As Double = 1.0 / dvCsHz
Public Const PLANCK_REC As Double = 1.0 / PLANCK
Public Const h_REC As Double = PLANCK_REC
Public Const kB_REC As Double = BOLTZMANN_REC
Public Const KGHz As Double = KG * LIGHT * LIGHT / PLANCK
Public Const KGWAVELENGTH As Double = LIGHT / KGHz
Public Const KGWAVENUMBER As Double = 1.0 / KGWAVELENGTH
Public Const KGENERGY As Double = PLANCK * KGHz
Public Const GRAVITY As Double = 9.80665 * MPSS
Public Const GRAVITY_ERR As Double = 0
Public Const ATMOSPHERE As Double = 1.01325E+5 * PA
Public Const ATMOSPHERE_ERR As Double = 0
Public Const AU As Double = 1.495978707E+11 * METER
Public Const AU_ERR As Double = 0
Public Const JOSEPHSON As Double = 2.0 * ELECTRONCHARGE / PLANCK
Public Const JOSEPHSON_ERR As Double = 0
Public Const VONKLITZING As Double = PLANCK / (ELECTRONCHARGE _
      * ELECTRONCHARGE)
Public Const VONKLITZING_ERR As Double = 0
Public Const FARADAY As Double = ELECTRONCHARGE * AVOGADRO
Public Const FARADAY_ERR As Double = 0
Public Const GAS As Double = BOLTZMANN * AVOGADRO
Public Const GAS_ERR As Double = 0
Public Const GRAVITATION As Double = 6.67430E-11 * UNITGM / _
      KILOGRAM
Public Const GRAVITATION_ERR As Double = 2.2E-5
Public Const RYDBERG As Double = 1.0973731568160E+7 * LIGHT / _
      METER
Public Const RYDBERG_ERR As Double = 1.9E-12
Public Const G As Double = GRAVITATION
Public Const G_ERR As Double = GRAVITATION_ERR
Public Const ALPHA As Double = 7.2973525664E-3
Public Const ALPHA_ERR As Double = 2.3E-10
Public Const ALPHA_REC As Double = 1.0 / ALPHA
Public Const ALPHA_REC_ERR As Double = ALPHA_ERR
Public Const FLTSIG As Double = 23
Public Const FLTMAN As Double = 8
Public Const FLTEPS As Double = 1.1920928955078125E-7
Public Const FLTMAX As Double = 3.402823466385288598E+38
Public Const DBLMAXLN As Double = LNTWO * 1024
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
Public Const MONTHS_IN_YEAR As Double = 12
Public Const MINUTE As Double = 60.0 * SECOND
Public Const HOUR As Double = 60.0 * MINUTE
Public Const EARTHSOLARDAY As Double = 24.0 * HOUR
Public Const WEEK As Double = 7.0 * EARTHSOLARDAY
Public Const FLICK As Double = SECOND / 705600000.0
Public Const JULIANDAY As Double = EARTHSOLARDAY
Public Const JULIANYEAR As Double = 365.25 * JULIANDAY
Public Const JULIANCENTURY As Double = 100 * JULIANYEAR
Public Const JULIANMILLENNIUM As Double = 1000 * JULIANYEAR
Public Const JDAY As Double = JULIANDAY
Public Const JYEAR As Double = JULIANYEAR
Public Const JCENTURY As Double = JULIANCENTURY
Public Const JMILLENNIUM As Double = JULIANMILLENNIUM
Public Const JD As Double = JULIANDAY
Public Const JY As Double = JULIANYEAR
Public Const JC As Double = JULIANCENTURY
Public Const JM As Double = JULIANMILLENNIUM
Public Const JEWISH_FIRST_MONTH As Double = 7
Public Const GYEAR As Double = 365.2425 * EARTHSOLARDAY
Public Const GREGORIANYEAR As Double = GYEAR
Public Const KWT As Double = 0.1875 * SECOND
Public Const UET As Double = SECOND
Public Const J2K As Double = EARTHSOLARDAY
Public Const J2KDAY As Double = EARTHSOLARDAY
Public Const JDSEC_AT_0GREGORIAN As Double = 1721058.5 * JDAY
Public Const JDSEC_AT_0KWT As Double = 2437240.66125 * JDAY
Public Const JDSEC_AT_0J2K As Double = 2451545.0 * JDAY
Public Const JDSEC_AT_0UET As Double = 2440587.5 * JDAY
Public Const TT_AT_0TAI As Double = 32.184 * SECOND
Public Const TT_AT_0UT1 As Double = 68.97 * SECOND
Public Const GRAM As Double = 0.001 * KILOGRAM
Public Const POUND As Double = 0.45359237 * KILOGRAM
Public Const LB As Double = POUND
Public Const OUNCE As Double = 0.0625 * POUND
Public Const TON As Double = 2000.0 * POUND
Public Const TONNE As Double = 1000.0 * KILOGRAM
Public Const GRAIN As Double = POUND / 7000
Public Const CARAT As Double = 0.2 * GRAM
Public Const MM As Double = MILLI * METER
Public Const INCH As Double = 0.0254 * METER
Public Const FOOT As Double = 12.0 * INCH
Public Const FT As Double = FOOT
Public Const YARD As Double = 3.0 * FOOT
Public Const MILE As Double = 5280.0 * FOOT
Public Const POINT As Double = INCH / 72.0
Public Const STANDARDGRAVITY As Double = GRAVITY
Public Const EARTHGRAVITYA As Double = 9.7803253359 * MPSS
Public Const EARTHGRAVITYB As Double = 9.8321849378 * MPSS
Public Const GRAVITATIONNASA As Double = 6.67259E-11 * UNITGM _
      / KILOGRAM
Public Const GRAVITATIONIERS As Double = 6.67428E-11 * UNITGM _
      / KILOGRAM
Public Const KGF As Double = KILOGRAM * GRAVITY
Public Const LBF As Double = POUND * GRAVITY
Public Const ATM As Double = ATMOSPHERE
Public Const STANDARDATMOSPHERE As Double = ATMOSPHERE
Public Const TORR As Double = ATMOSPHERE / 760
Public Const BAR As Double = 1E+5 * PA
Public Const MMHG As Double = 13595.1 * KILOGRAM * GRAVITY * _
      MM / (METER * METER * METER)
Public Const INHG As Double = MMHG * INCH / MM
Public Const PSI As Double = POUND * GRAVITY / (INCH * INCH)
Public Const DEGC As Double = KELVIN
Public Const DEGF As Double = KELVIN / 1.8
Public Const DEGR As Double = DEGF
Public Const K_AT_0TEMPC As Double = 273.15 * DEGC
Public Const K_AT_0TEMPF As Double = 459.67 * DEGF
Public Const K_AT_0TEMPR As Double = 0.0 * DEGR
Public Const MACH As Double = 331.46 * MPS
Public Const MPH As Double = MILE / HOUR
Public Const HECTARE As Double = 10000 * METER * METER
Public Const ARE As Double = 100 * METER * METER
Public Const ACRE As Double = MILE * MILE / 640.0
Public Const BARN As Double = 1E-28 * METER * METER
Public Const LITER As Double = METER * METER * METER / 1000.0
Public Const LITRE As Double = LITER
Public Const GALLON As Double = 231.0 * INCH * INCH * INCH
Public Const QUART As Double = GALLON / 4.0
Public Const PINT As Double = QUART / 2.0
Public Const CUP As Double = PINT / 2.0
Public Const FLOZ As Double = CUP / 8.0
Public Const TBLSP As Double = FLOZ / 2.0
Public Const TSP As Double = TBLSP / 3.0
Public Const BARREL As Double = 42.0 * GALLON
Public Const AH As Double = AMPERE * HOUR
Public Const CALORIE As Double = 4.184 * JOULE
Public Const CAL_IT As Double = 4.1868 * JOULE
Public Const CAL_TH As Double = CALORIE
Public Const CAL As Double = CALORIE
Public Const BTU_TH As Double = CAL_TH * POUND * DEGF / (GRAM _
      * DEGC)
Public Const BTU_IT As Double = CAL_IT * POUND * DEGF / (GRAM _
      * DEGC)
Public Const BTU As Double = CALORIE * POUND * DEGF / (GRAM * _
      DEGC)
Public Const HP As Double = 550.0 * FOOT * POUND * GRAVITY / _
      SECOND
Public Const HORSEPOWER As Double = HP
Public Const HPMETRIC As Double = 75 * KILOGRAM * GRAVITY * MPS
Public Const ELECTRONVOLT As Double = ELECTRONCHARGE * VOLT
Public Const ERG As Double = 1E-7 * JOULE
Public Const FOE As Double = 1E+44 * JOULE
Public Const AAABATTERYCHARGE As Double = 2.1 * AH
Public Const AAABATTERYVOLTAGE As Double = 1.5 * VOLT
Public Const AAABATTERY As Double = AAABATTERYCHARGE * _
      AAABATTERYVOLTAGE
Public Const AAABATTERYENERGY As Double = AAABATTERY
Public Const AABATTERYCHARGE As Double = 2.7 * AH
Public Const AABATTERYVOLTAGE As Double = 1.5 * VOLT
Public Const AABATTERY As Double = AABATTERYCHARGE * _
      AABATTERYVOLTAGE
Public Const AABATTERYENERGY As Double = AABATTERY
Public Const CBATTERYCHARGE As Double = 8.0 * AH
Public Const CBATTERYVOLTAGE As Double = 1.5 * VOLT
Public Const CBATTERY As Double = CBATTERYCHARGE * _
      CBATTERYVOLTAGE
Public Const CBATTERYENERGY As Double = CBATTERY
Public Const DBATTERYCHARGE As Double = 12 * AH
Public Const DBATTERYVOLTAGE As Double = 1.5 * VOLT
Public Const DBATTERY As Double = DBATTERYCHARGE * _
      DBATTERYVOLTAGE
Public Const DBATTERYENERGY As Double = DBATTERY
Public Const NINEVOLTCHARGE As Double = 0.565 * AH
Public Const NINEVOLTVOLTAGE As Double = 9.0 * VOLT
Public Const NINEVOLT As Double = NINEVOLTCHARGE * _
      NINEVOLTVOLTAGE
Public Const NINEVOLTENERGY As Double = NINEVOLT
Public Const NINEVOLTBATTERYCHARGE As Double = NINEVOLTCHARGE
Public Const NINEVOLTBATTERYVOLTAGE As Double = NINEVOLTVOLTAGE
Public Const NINEVOLTBATTERY As Double = _
      NINEVOLTBATTERYCHARGE * NINEVOLTBATTERYVOLTAGE
Public Const NINEVOLTBATTERYENERGY As Double = NINEVOLTBATTERY
Public Const PHONEBATTERYCHARGE As Double = 3.0 * AH
Public Const PHONEBATTERYVOLTAGE As Double = 3.8 * VOLT
Public Const PHONEBATTERY As Double = PHONEBATTERYCHARGE * _
      PHONEBATTERYVOLTAGE
Public Const PHONEBATTERYENERGY As Double = PHONEBATTERY
Public Const CARBATTERYCHARGE As Double = 45.0 * AH
Public Const CARBATTERYVOLTAGE As Double = 12.0 * VOLT
Public Const CARBATTERY As Double = CARBATTERYCHARGE * _
      CARBATTERYVOLTAGE
Public Const CARBATTERYENERGY As Double = CARBATTERY
Public Const MICROWAVEHz As Double = 2.45E+9 / SECOND
Public Const MICROWAVEWAVELENGTH As Double = LIGHT / MICROWAVEHz
Public Const MICROWAVEWAVENUMBER As Double = 1.0 / _
      MICROWAVEWAVELENGTH
Public Const MICROWAVEENERGY As Double = PLANCK * MICROWAVEHz
Public Const LFHz As Double = 1.00E+5 / SECOND
Public Const LFWAVELENGTH As Double = LIGHT / LFHz
Public Const LFWAVENUMBER As Double = 1.0 / LFWAVELENGTH
Public Const LFENERGY As Double = PLANCK * LFHz
Public Const MFHz As Double = 1.00E+6 / SECOND
Public Const MFWAVELENGTH As Double = LIGHT / MFHz
Public Const MFWAVENUMBER As Double = 1.0 / MFWAVELENGTH
Public Const MFENERGY As Double = PLANCK * MFHz
Public Const HFHz As Double = 1.00E+7 / SECOND
Public Const HFWAVELENGTH As Double = LIGHT / HFHz
Public Const HFWAVENUMBER As Double = 1.0 / HFWAVELENGTH
Public Const HFENERGY As Double = PLANCK * HFHz
Public Const VHFHz As Double = 1.00E+8 / SECOND
Public Const VHFWAVELENGTH As Double = LIGHT / VHFHz
Public Const VHFWAVENUMBER As Double = 1.0 / VHFWAVELENGTH
Public Const VHFENERGY As Double = PLANCK * VHFHz
Public Const UHFHz As Double = 1.00E+9 / SECOND
Public Const UHFWAVELENGTH As Double = LIGHT / UHFHz
Public Const UHFWAVENUMBER As Double = 1.0 / UHFWAVELENGTH
Public Const UHFENERGY As Double = PLANCK * UHFHz
Public Const SHFHz As Double = 1.00E+10 / SECOND
Public Const SHFWAVELENGTH As Double = LIGHT / SHFHz
Public Const SHFWAVENUMBER As Double = 1.0 / SHFWAVELENGTH
Public Const SHFENERGY As Double = PLANCK * SHFHz
Public Const EHFHz As Double = 1.00E+11 / SECOND
Public Const EHFWAVELENGTH As Double = LIGHT / EHFHz
Public Const EHFWAVENUMBER As Double = 1.0 / EHFWAVELENGTH
Public Const EHFENERGY As Double = PLANCK * EHFHz
Public Const THFHz As Double = 1.00E+12 / SECOND
Public Const THFWAVELENGTH As Double = LIGHT / THFHz
Public Const THFWAVENUMBER As Double = 1.0 / THFWAVELENGTH
Public Const THFENERGY As Double = PLANCK * THFHz
Public Const FIRHz As Double = 1.00E+12 / SECOND
Public Const FIRWAVELENGTH As Double = LIGHT / FIRHz
Public Const FIRWAVENUMBER As Double = 1.0 / FIRWAVELENGTH
Public Const FIRENERGY As Double = PLANCK * FIRHz
Public Const MIRHz As Double = 1.00E+13 / SECOND
Public Const MIRWAVELENGTH As Double = LIGHT / MIRHz
Public Const MIRWAVENUMBER As Double = 1.0 / MIRWAVELENGTH
Public Const MIRENERGY As Double = PLANCK * MIRHz
Public Const NIRHz As Double = 1.00E+14 / SECOND
Public Const NIRWAVELENGTH As Double = LIGHT / NIRHz
Public Const NIRWAVENUMBER As Double = 1.0 / NIRWAVELENGTH
Public Const NIRENERGY As Double = PLANCK * NIRHz
Public Const REDWAVELENGTH As Double = 7.00E-7 * METER
Public Const REDHz As Double = LIGHT / REDWAVELENGTH
Public Const REDWAVENUMBER As Double = 1.0 / REDWAVELENGTH
Public Const REDENERGY As Double = PLANCK * REDHz
Public Const ORANGEWAVELENGTH As Double = 6.20E-7 * METER
Public Const ORANGEHz As Double = LIGHT / ORANGEWAVELENGTH
Public Const ORANGEWAVENUMBER As Double = 1.0 / ORANGEWAVELENGTH
Public Const ORANGEENERGY As Double = PLANCK * ORANGEHz
Public Const YELLOWWAVELENGTH As Double = 5.80E-7 * METER
Public Const YELLOWHz As Double = LIGHT / YELLOWWAVELENGTH
Public Const YELLOWWAVENUMBER As Double = 1.0 / YELLOWWAVELENGTH
Public Const YELLOWENERGY As Double = PLANCK * YELLOWHz
Public Const YELLOWGREENHz As Double = 540E+12 / SECOND
Public Const YELLOWGREENWAVELENGTH As Double = LIGHT / _
      YELLOWGREENHz
Public Const YELLOWGREENWAVENUMBER As Double = 1.0 / _
      YELLOWGREENWAVELENGTH
Public Const YELLOWGREENENERGY As Double = PLANCK * YELLOWGREENHz
Public Const GREENWAVELENGTH As Double = 5.30E-7 * METER
Public Const GREENHz As Double = LIGHT / GREENWAVELENGTH
Public Const GREENWAVENUMBER As Double = 1.0 / GREENWAVELENGTH
Public Const GREENENERGY As Double = PLANCK * GREENHz
Public Const BLUEWAVELENGTH As Double = 5.00E-7 * METER
Public Const BLUEHz As Double = LIGHT / BLUEWAVELENGTH
Public Const BLUEWAVENUMBER As Double = 1.0 / BLUEWAVELENGTH
Public Const BLUEENERGY As Double = PLANCK * BLUEHz
Public Const VIOLETWAVELENGTH As Double = 4.20E-7 * METER
Public Const VIOLETHz As Double = LIGHT / VIOLETWAVELENGTH
Public Const VIOLETWAVENUMBER As Double = 1.0 / VIOLETWAVELENGTH
Public Const VIOLETENERGY As Double = PLANCK * VIOLETHz
Public Const NUVHz As Double = 1.00E+15 / SECOND
Public Const NUVWAVELENGTH As Double = LIGHT / NUVHz
Public Const NUVWAVENUMBER As Double = 1.0 / NUVWAVELENGTH
Public Const NUVENERGY As Double = PLANCK * NUVHz
Public Const EUVHz As Double = 1.00E+16 / SECOND
Public Const EUVWAVELENGTH As Double = LIGHT / EUVHz
Public Const EUVWAVENUMBER As Double = 1.0 / EUVWAVELENGTH
Public Const EUVENERGY As Double = PLANCK * EUVHz
Public Const UVAWAVELENGTH As Double = 3.60E-7 * METER
Public Const UVAHz As Double = LIGHT / UVAWAVELENGTH
Public Const UVAWAVENUMBER As Double = 1.0 / UVAWAVELENGTH
Public Const UVAENERGY As Double = PLANCK * UVAHz
Public Const UVBWAVELENGTH As Double = 3.00E-7 * METER
Public Const UVBHz As Double = LIGHT / UVBWAVELENGTH
Public Const UVBWAVENUMBER As Double = 1.0 / UVBWAVELENGTH
Public Const UVBENERGY As Double = PLANCK * UVBHz
Public Const UVCWAVELENGTH As Double = 1.90E-7 * METER
Public Const UVCHz As Double = LIGHT / UVCWAVELENGTH
Public Const UVCWAVENUMBER As Double = 1.0 / UVCWAVELENGTH
Public Const UVCENERGY As Double = PLANCK * UVCHz
Public Const SXHz As Double = 3.00E+17 / SECOND
Public Const SXWAVELENGTH As Double = LIGHT / SXHz
Public Const SXWAVENUMBER As Double = 1.0 / SXWAVELENGTH
Public Const SXENERGY As Double = PLANCK * SXHz
Public Const SXXWAVELENGTH As Double = 1.00E-9 * METER
Public Const SXXHz As Double = LIGHT / SXXWAVELENGTH
Public Const SXXWAVENUMBER As Double = 1.0 / SXXWAVELENGTH
Public Const SXXENERGY As Double = PLANCK * SXXHz
Public Const HXHz As Double = 1.00E+19 / SECOND
Public Const HXWAVELENGTH As Double = LIGHT / HXHz
Public Const HXWAVENUMBER As Double = 1.0 / HXWAVELENGTH
Public Const HXENERGY As Double = PLANCK * HXHz
Public Const GAMMAHz As Double = 1.00E+20 / SECOND
Public Const GAMMAWAVELENGTH As Double = LIGHT / GAMMAHz
Public Const GAMMAWAVENUMBER As Double = 1.0 / GAMMAWAVELENGTH
Public Const GAMMAENERGY As Double = PLANCK * GAMMAHz
Public Const TURN As Double = TAU * RADIAN
Public Const ARCDEGREE As Double = TURN / 360.0
Public Const ARCMINUTE As Double = ARCDEGREE / 60.0
Public Const ARCSECOND As Double = ARCMINUTE / 60.0
Public Const GRAD As Double = TURN / 400.0
Public Const ARCDEG As Double = ARCDEGREE
Public Const ARCMIN As Double = ARCMINUTE
Public Const ARCSEC As Double = ARCSECOND
Public Const SQUAREDEGREE As Double = ARCDEGREE * ARCDEGREE
Public Const SQDEG As Double = SQUAREDEGREE
Public Const SPHERESURFACE As Double = 2 * TAU * STERADIAN
Public Const SHANNON As Double = BIT
Public Const NAT As Double = BIT / LNTWO
Public Const HARTLEY As Double = LNTEN / LNTWO * BIT
Public Const HART As Double = HARTLEY
Public Const DIT As Double = HARTLEY
Public Const BAN As Double = HARTLEY
Public Const RPM As Double = TURN / MINUTE
Public Const RPS As Double = TURN / SECOND
Public Const FINESTRUCTURE As Double = ALPHA
Public Const FINESTRUCTURE_ERR As Double = ALPHA_ERR
Public Const FINESTRUCTURE_REC As Double = ALPHA_REC
Public Const FINESTRUCTURE_REC_ERR As Double = ALPHA_ERR
Public Const MAGNETIC As Double = 2.0 * VONKLITZING * ALPHA / _
      LIGHT
Public Const MAGNETIC_ERR As Double = ALPHA_ERR
Public Const MU0 As Double = MAGNETIC
Public Const MU0_ERR As Double = ALPHA_ERR
Public Const ELECTRIC As Double = 1.0 / (LIGHT * LIGHT * MU0)
Public Const ELECTRIC_ERR As Double = ALPHA_ERR
Public Const EPSILON0 As Double = ELECTRIC
Public Const EPSILON0_ERR As Double = ALPHA_ERR
Public Const COULOMBCONST As Double = 1.0 / (2.0 * TAU * _
      ELECTRIC)
Public Const COULOMBCONST_ERR As Double = ALPHA_ERR
Public Const PROTONRADIUS As Double = 8.414E-16 * METER
Public Const PROTONRADIUS_ERR As Double = 2.2E-3
Public Const MOLARMASS As Double = 0.99999999965 * GRAM / MOLE
Public Const MOLARMASS_ERR As Double = 2.0E-10
Public Const MOLARMASSX As Double = (1.0 - 3.5E-10) * GRAM / MOLE
Public Const MOLARMASSX_ERR As Double = 2.0E-10
Public Const DALTON As Double = MOLARMASS / AVOGADRO
Public Const DALTON_ERR As Double = MOLARMASS_ERR
Public Const AMU As Double = DALTON
Public Const AMU_ERR As Double = DALTON_ERR
Public Const ATOMICMASSUNIT As Double = DALTON
Public Const ATOMICMASSUNIT_ERR As Double = DALTON_ERR
Public Const UAMU As Double = DALTON
Public Const UAMU_ERR As Double = DALTON_ERR
Public Const RYDBERGHz As Double = RYDBERG
Public Const RYDBERGWAVELENGTH As Double = LIGHT / RYDBERGHz
Public Const RYDBERGWAVENUMBER As Double = 1.0 / _
      RYDBERGWAVELENGTH
Public Const RYDBERGENERGY As Double = PLANCK * RYDBERGHz
Public Const ELECTRONMASSA As Double = 2.0 * RYDBERGHz * _
      PLANCK / (LIGHT * LIGHT * ALPHA * ALPHA)
Public Const ELECTRONMASSA_ERR As Double = 2.0 * ALPHA_ERR
Public Const ELECTRONMASS As Double = 5.48579909065E-4 * AMU
Public Const ELECTRONMASS_ERR As Double = 2.9E-11
Public Const ELECTRON_MASS As Double = ELECTRONMASS * AVOGADRO
Public Const ELECTRONENERGY As Double = ELECTRONMASS * LIGHT _
      * LIGHT
Public Const ELECTRONHz As Double = ELECTRONENERGY / PLANCK
Public Const ELECTRONWAVELENGTH As Double = LIGHT / ELECTRONHz
Public Const UPQUARKMASS As Double = 0.00216 * AMU
Public Const UPQUARKMASS_ERR As Double = 0.2
Public Const UPQUARK_MASS As Double = UPQUARKMASS * AVOGADRO
Public Const UPQUARKENERGY As Double = UPQUARKMASS * LIGHT * _
      LIGHT
Public Const UPQUARKHz As Double = UPQUARKENERGY / PLANCK
Public Const UPQUARKWAVELENGTH As Double = LIGHT / UPQUARKHz
Public Const DOWNQUARKMASS As Double = 0.00514 * AMU
Public Const DOWNQUARKMASS_ERR As Double = 0.1
Public Const DOWNQUARK_MASS As Double = DOWNQUARKMASS * AVOGADRO
Public Const DOWNQUARKENERGY As Double = DOWNQUARKMASS * _
      LIGHT * LIGHT
Public Const DOWNQUARKHz As Double = DOWNQUARKENERGY / PLANCK
Public Const DOWNQUARKWAVELENGTH As Double = LIGHT / DOWNQUARKHz
Public Const MUONMASS As Double = 0.1134289259 * AMU
Public Const MUONMASS_ERR As Double = 2.2E-8
Public Const MUON_MASS As Double = MUONMASS * AVOGADRO
Public Const MUONENERGY As Double = MUONMASS * LIGHT * LIGHT
Public Const MUONHz As Double = MUONENERGY / PLANCK
Public Const MUONWAVELENGTH As Double = LIGHT / MUONHz
Public Const PROTONMASS As Double = 1.007276466812 * AMU
Public Const PROTONMASS_ERR As Double = 8.9E-11
Public Const PROTON_MASS As Double = PROTONMASS * AVOGADRO
Public Const PROTONENERGY As Double = PROTONMASS * LIGHT * LIGHT
Public Const PROTONHz As Double = PROTONENERGY / PLANCK
Public Const PROTONWAVELENGTH As Double = LIGHT / PROTONHz
Public Const NEUTRONMASS As Double = 1.00866491595 * AMU
Public Const NEUTRONMASS_ERR As Double = 4.8E-10
Public Const NEUTRON_MASS As Double = NEUTRONMASS * AVOGADRO
Public Const NEUTRONENERGY As Double = NEUTRONMASS * LIGHT * _
      LIGHT
Public Const NEUTRONHz As Double = NEUTRONENERGY / PLANCK
Public Const NEUTRONWAVELENGTH As Double = LIGHT / NEUTRONHz
Public Const TAUMASS As Double = 1.90754 * AMU
Public Const TAUMASS_ERR As Double = 6.8E-5
Public Const TAU_MASS As Double = TAUMASS * AVOGADRO
Public Const TAUENERGY As Double = TAUMASS * LIGHT * LIGHT
Public Const TAUHz As Double = TAUENERGY / PLANCK
Public Const TAUWAVELENGTH As Double = LIGHT / TAUHz
Public Const DEUTERONMASS As Double = 2.013553212745 * AMU
Public Const DEUTERONMASS_ERR As Double = 2.0E-11
Public Const DEUTERON_MASS As Double = DEUTERONMASS * AVOGADRO
Public Const HELIONMASS As Double = 3.0149322467175 * AMU
Public Const HELIONMASS_ERR As Double = 3.2E-11
Public Const HELION_MASS As Double = HELIONMASS * AVOGADRO
Public Const TRITONMASS As Double = 3.01550071621 * AMU
Public Const TRITONMASS_ERR As Double = 4.0E-11
Public Const TRITON_MASS As Double = TRITONMASS * AVOGADRO
Public Const ALPHAMASS As Double = 4.001506179127 * AMU
Public Const ALPHAMASS_ERR As Double = 1.6E-11
Public Const ALPHA_MASS As Double = ALPHAMASS * AVOGADRO
Public Const HYDROGENRADIUS As Double = (HBAR / (ELECTRONMASS _
      * LIGHT * ALPHA))
Public Const HYDROGENRADIUS_ERR As Double = ALPHA_ERR
Public Const BOHRRADIUS As Double = HYDROGENRADIUS
Public Const BOHRRADIUS_ERR As Double = ALPHA_ERR
Public Const HIHz As Double = 1420405751.7667 * HERTZ
Public Const HIWAVELENGTH As Double = LIGHT / HIHz
Public Const HIWAVENUMBER As Double = 1.0 / HIWAVELENGTH
Public Const HIENERGY As Double = PLANCK * HIHz
Public Const HYDROGENLINE As Double = HIWAVELENGTH
Public Const HYDROGENLINE_ERR As Double = 6.3E-13
Public Const HI As Double = LIGHT / HIHz
Public Const HI_ERR As Double = HYDROGENLINE_ERR
Public Const PLANCKMASS As Double = _
      2.176434366592856178609495E-8 * KILOGRAM
Public Const PLANCKCHARGE As Double = 1.87554603814952214E-18 _
      * COULOMB
Public Const PLANCKENERGY As Double = PLANCKMASS * LIGHT * LIGHT
Public Const PLANCKTEMP As Double = PLANCKENERGY / BOLTZMANN
Public Const PLANCKLENGTH As Double = HBAR / PLANCKMASS / LIGHT
Public Const PLANCKTIME As Double = PLANCKLENGTH / LIGHT
Public Const STEFAN As Double = (TAU * TAU * LIGHT * _
      BOLTZMANN) * ((BOLTZMANN / (LIGHT * HBAR)) * (BOLTZMANN _
      / (LIGHT * HBAR)) * (BOLTZMANN / (LIGHT * HBAR))) / 240.0
Public Const STEFAN_ERR As Double = 0
Public Const PINGPONGBALLRADIUS As Double = 0.02 * METER
Public Const GOLFBALLRADIUS As Double = 0.02135 * METER
Public Const TENNISBALLRADIUS As Double = 0.03325 * METER
Public Const BASEBALLRADIUS As Double = 9.125 * INCH / TAU
Public Const SOFTBALLRADIUS As Double = 12 * INCH / TAU
Public Const SOCCERBALLRADIUS As Double = 0.69 * METER / TAU
Public Const BASKETBALLRADIUS As Double = 0.75 * METER / TAU
Public Const PINGPONGBALLMASS As Double = 2.7 * GRAM
Public Const GOLFBALLMASS As Double = 45.93 * GRAM
Public Const TENNISBALLMASS As Double = 57.7 * GRAM
Public Const BASEBALLMASS As Double = 146.5 * GRAM
Public Const SOFTBALLMASS As Double = 187 * GRAM
Public Const BASKETBALLMASS As Double = 620 * GRAM
Public Const SOCCERBALLMASS As Double = 430 * GRAM
Public Const MARATHON As Double = 42195 * METER
Public Const PENNYTHICKNESS As Double = 1.55E-3 * METER
Public Const NICKELTHICKNESS As Double = 1.95E-3 * METER
Public Const DIMETHICKNESS As Double = 1.35E-3 * METER
Public Const QUARTERTHICKNESS As Double = 1.75E-3 * METER
Public Const PENNYRADIUS As Double = 9.525E-3 * METER
Public Const NICKELRADIUS As Double = 1.061E-2 * METER
Public Const DIMERADIUS As Double = 8.955E-3 * METER
Public Const QUARTERRADIUS As Double = 1.213E-2 * METER
Public Const PENNYMASS As Double = 2.5 * GRAM
Public Const NICKELMASS As Double = 5.0 * GRAM
Public Const DIMEMASS As Double = 0.005 * POUND
Public Const QUARTERMASS As Double = 0.0125 * POUND
Public Const MOONMONTH As Double = 29.530587981 * EARTHSOLARDAY
Public Const MILKYWAYAGE As Double = 8.3E+9 * JYEAR
Public Const UNIVERSEAGE As Double = 13.799E+9 * JYEAR
Public Const LIGHTYEAR As Double = LIGHT * JYEAR
Public Const ASTRONOMICALUNIT As Double = AU
Public Const PARSEC As Double = 1296000.0 * AU / TAU
Public Const PROXIMACENTAURI As Double = 39.9E+15 * METER
Public Const MILKYWAYRADIUS As Double = 6.0E+4 * LIGHTYEAR
Public Const GALACTICCENTER As Double = 2.64E+4 * LIGHTYEAR
Public Const UNIVERSERADIUS As Double = UNIVERSEAGE * LIGHT
Public Const MILKYWAYMASS As Double = 1.4E+42 * KILOGRAM
Public Const UNIVERSEMASS As Double = 1.46E+53 * KILOGRAM
Public Const SOLARCONSTANT As Double = 1361.0 * WATT / (METER _
      * METER)
Public Const EINSTEIN As Double = 4 * TAU * GRAVITATION / _
      (LIGHT * LIGHT * LIGHT * LIGHT)
Public Const EINSTEIN_ERR As Double = GRAVITATION_ERR
Public Const HUBBLE As Double = 67.66E-3 * METER / (SECOND * _
      PARSEC)
Public Const HUBBLE_ERR As Double = 6E-3
Public Const BHMASSTEMP As Double = (HBAR * (LIGHT * LIGHT * _
      LIGHT) / (4.0 * TAU * GRAVITATION * BOLTZMANN))
Public Const BHMASS_RADIUS As Double = 0.5 * LIGHT * LIGHT / _
      GRAVITATION
Public Const BHMASS3_LIFETIME As Double = (PLANCK * (LIGHT * _
      LIGHT * LIGHT * LIGHT)) / (2560 * TAU * TAU * _
      GRAVITATION * GRAVITATION)
Public Const BHRADIUS2DENSITY As Double = 1.5 * BHMASS_RADIUS _
      / TAU
Public Const BHENTROPY_AREA As Double = (TAU * (LIGHT * LIGHT _
      * LIGHT) * BOLTZMANN) / (4 * PLANCK * GRAVITATION)
Public Const BEKENSTEININFORMATION As Double = (TAU * TAU * _
      NAT) / (PLANCK * LIGHT)
Public Const BEKENSTEINENTROPY As Double = (TAU * TAU * _
      BOLTZMANN) / (PLANCK * LIGHT)
Public Const ELEVATIONMAX As Double = 8848.0 * METER
Public Const ELEVATIONMIN As Double = -10994.0 * METER
Public Const KPGBOUNDARY As Double = 65.5E+6 * JYEAR
Public Const TRJBOUNDARY As Double = 199.6E+6 * JYEAR
Public Const MILKYWAYDAY As Double = 250.0E+6 * JYEAR
Public Const PTRBOUNDARY As Double = 251.4E+6 * JYEAR
Public Const NPBOUNDARY As Double = 542.0E+6 * JYEAR
Public Const LIFEAGE As Double = 3.85E+9 * JYEAR
Public Const GIANTIMPACT As Double = 4.533E+9 * JYEAR
Public Const EARTHAGE As Double = 4.56717E+9 * JYEAR
Public Const PPQ As Double = 1E-15
Public Const PPT As Double = 1E-12
Public Const PPB As Double = 1E-9
Public Const PPM As Double = 1E-6
Public Const MASS As Double = KILOGRAM
Public Const LENGTH As Double = METER
Public Const DISTANCE As Double = LENGTH
Public Const TEMPERATURE As Double = KELVIN
Public Const TIME As Double = SECOND
Public Const ANGLE As Double = RADIAN
Public Const SOLID_ANGLE As Double = STERADIAN
Public Const SPEED As Double = LENGTH / TIME
Public Const ACCELERATION As Double = SPEED / TIME
Public Const FORCE As Double = MASS * ACCELERATION
Public Const ENERGY As Double = FORCE * LENGTH
Public Const ACTION As Double = ENERGY * TIME
Public Const POWER As Double = ENERGY / TIME
Public Const AREA As Double = LENGTH * LENGTH
Public Const VOLUME As Double = LENGTH * LENGTH * LENGTH
Public Const DENSITY As Double = MASS / VOLUME
Public Const SPECIFICHEAT As Double = ENERGY / (MASS * _
      TEMPERATURE)
Public Const PRESSURE As Double = FORCE / AREA
Public Const VISCOSITY As Double = FORCE * TIME / AREA
Public Const FREQUENCY As Double = 1 / TIME
Public Const CHARGE As Double = AMPERE * SECOND
Public Const CURRENT As Double = CHARGE / TIME
Public Const VOLTAGE As Double = POWER / CURRENT
Public Const RESISTANCE As Double = VOLTAGE / CURRENT
Public Const INDUCTANCE As Double = RESISTANCE * TIME
Public Const CAPACITANCE As Double = CHARGE / VOLTAGE
Public Const CONDUCTANCE As Double = 1.0 / RESISTANCE
Public Const MAGNETICFLUX As Double = VOLTAGE * TIME
Public Const MAGNETICINDUCTION As Double = MAGNETICFLUX / AREA
Private Const LC_MAGIC_INT As Double = 2070108020
Private Const LC_MAGIC_INT_NOT As Double = 301040105
Private Const LC_SINC_MIN_X As Double = _
      4.4934094579090641753079882808139693729311345
Private lv_pcf_end As Long
Private lv_pcf_arr() As Double
Private lv_mertens_end As Long
Private lv_mertens_arr() As Long
Private Const LC_MAX_FACTORS As Double = 65
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
Private Const LC_GD_COUNT As Double = 9
Private lv_ymdhms_arr(20) As Double
Private Const HQPHR As Double = 1080
Private Const HALAQIM As Double = HOUR / HQPHR
Private Const LC_KNUTH_MAX As Double = 1073741823
Private Const LC_KNUTH_QUALITY_COUNT As Double = 1009
Private Const LC_KNUTH_KK_COUNT As Double = 100
Private Const LC_KNUTH_LL As Double = 37
Private Const LC_KNUTH_TT As Double = 70
Private Const LC_KNUTH_ARRAY_COUNT As Double = 1100
Private lv_ranz_ind As Long
Private lv_ranz_magic As Double
Private lv_ranz_arr(LC_KNUTH_QUALITY_COUNT) As Long
Private lv_ran_a_arr(LC_KNUTH_ARRAY_COUNT) As Long
Private lv_ran_x_arr(LC_KNUTH_KK_COUNT) As Long
Private lv_rand_gau_magic As Double
Private lv_rand_gau_prev As Double
Private Const LC_STTS_NUM As Double = 0
Private Const LC_STTS_MEAN As Double = 1
Private Const LC_STTS_MSQ As Double = 2
Private Const LC_STTS_MAX As Double = 3
Private Const LC_STTS_MIN As Double = 4
Private Const LC_STTS_MAGIC As Double = 5
Private Const LC_STTS_COUNT As Double = 6
Private Const LC_STTS_MAX_KEY As Double = 100
Private lv_sttx_arr(LC_STTS_MAX_KEY, LC_STTS_COUNT) As Double
Private Const LC_STTSC_XX As Double = 0
Private Const LC_STTSC_YY As Double = 1
Private Const LC_STTSC_COVAR As Double = 2
Private Const LC_STTSC_MAGIC As Double = 3
Private Const LC_STTSC_COUNT As Double = 4
Private lv_corx_arr(LC_STTS_MAX_KEY, LC_STTSC_COUNT) As Double
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
Private Const LC_EPS As Double = DBLEPS / 16.0
Private lv_search_target As Long
'   MMMMMMMMMMASTER ----------------------------------------- A
Public Function cxkilogram() As Double
   cxkilogram = KILOGRAM
End Function
Public Function cxmeter() As Double
   cxmeter = METER
End Function
Public Function cxsecond() As Double
   cxsecond = SECOND
End Function
Public Function cxkelvin() As Double
   cxkelvin = KELVIN
End Function
Public Function cxampere() As Double
   cxampere = AMPERE
End Function
Public Function cxcoulomb() As Double
   cxcoulomb = COULOMB
End Function
Public Function cxmole() As Double
   cxmole = MOLE
End Function
Public Function cxcandela() As Double
   cxcandela = CANDELA
End Function
Public Function cxbit() As Double
   cxbit = BIT
End Function
Public Function cxradian() As Double
   cxradian = RADIAN
End Function
Public Function cxsteradian() As Double
   cxsteradian = STERADIAN
End Function
Public Function cxmetre() As Double
   cxmetre = METRE
End Function
Public Function cxkg() As Double
   cxkg = KG
End Function
Public Function cxrad() As Double
   cxrad = RAD
End Function
Public Function cxe() As Double
   cxe = E
End Function
Public Function cxtau() As Double
   cxtau = TAU
End Function
Public Function cxphi() As Double
   cxphi = PHI
End Function
Public Function cxlntwo() As Double
   cxlntwo = LNTWO
End Function
Public Function cxlnten() As Double
   cxlnten = LNTEN
End Function
Public Function cxsqrttwo() As Double
   cxsqrttwo = SQRTTWO
End Function
Public Function cxeuler() As Double
   cxeuler = EULER
End Function
Public Function cxfeigenbaum() As Double
   cxfeigenbaum = FEIGENBAUM
End Function
Public Function cxapery() As Double
   cxapery = APERY
End Function
Public Function cxpi() As Double
   cxpi = PI
End Function
Public Function cxyotta() As Double
   cxyotta = YOTTA
End Function
Public Function cxzetta() As Double
   cxzetta = ZETTA
End Function
Public Function cxexa() As Double
   cxexa = EXA
End Function
Public Function cxpeta() As Double
   cxpeta = PETA
End Function
Public Function cxtera() As Double
   cxtera = TERA
End Function
Public Function cxgiga() As Double
   cxgiga = GIGA
End Function
Public Function cxmega() As Double
   cxmega = MEGA
End Function
Public Function cxkilo() As Double
   cxkilo = KILO
End Function
Public Function cxhecto() As Double
   cxhecto = HECTO
End Function
Public Function cxdeca() As Double
   cxdeca = DECA
End Function
Public Function cxdeci() As Double
   cxdeci = DECI
End Function
Public Function cxcenti() As Double
   cxcenti = CENTI
End Function
Public Function cxmilli() As Double
   cxmilli = MILLI
End Function
Public Function cxmicro() As Double
   cxmicro = MICRO
End Function
Public Function cxnano() As Double
   cxnano = NANO
End Function
Public Function cxpico() As Double
   cxpico = PICO
End Function
Public Function cxfemto() As Double
   cxfemto = FEMTO
End Function
Public Function cxatto() As Double
   cxatto = ATTO
End Function
Public Function cxzepto() As Double
   cxzepto = ZEPTO
End Function
Public Function cxyocto() As Double
   cxyocto = YOCTO
End Function
Public Function cxkibi() As Double
   cxkibi = KIBI
End Function
Public Function cxmebi() As Double
   cxmebi = MEBI
End Function
Public Function cxgibi() As Double
   cxgibi = GIBI
End Function
Public Function cxtebi() As Double
   cxtebi = TEBI
End Function
Public Function cxpebi() As Double
   cxpebi = PEBI
End Function
Public Function cxexbi() As Double
   cxexbi = EXBI
End Function
Public Function cxzebi() As Double
   cxzebi = ZEBI
End Function
Public Function cxyobi() As Double
   cxyobi = YOBI
End Function
Public Function cxmps() As Double
   cxmps = MPS
End Function
Public Function cxmpss() As Double
   cxmpss = MPSS
End Function
Public Function cxunitgm() As Double
   cxunitgm = UNITGM
End Function
Public Function cxnewton() As Double
   cxnewton = NEWTON
End Function
Public Function cxjoule() As Double
   cxjoule = JOULE
End Function
Public Function cxpa() As Double
   cxpa = PA
End Function
Public Function cxwatt() As Double
   cxwatt = WATT
End Function
Public Function cxhertz() As Double
   cxhertz = HERTZ
End Function
Public Function cxamp() As Double
   cxamp = AMP
End Function
Public Function cxvolt() As Double
   cxvolt = VOLT
End Function
Public Function cxohm() As Double
   cxohm = OHM
End Function
Public Function cxhenry() As Double
   cxhenry = HENRY
End Function
Public Function cxfarad() As Double
   cxfarad = FARAD
End Function
Public Function cxsiemens() As Double
   cxsiemens = SIEMENS
End Function
Public Function cxweber() As Double
   cxweber = WEBER
End Function
Public Function cxtesla() As Double
   cxtesla = TESLA
End Function
Public Function cxlumen() As Double
   cxlumen = LUMEN
End Function
Public Function cxlux() As Double
   cxlux = LUX
End Function
Public Function cxboltzmann() As Double
   cxboltzmann = BOLTZMANN
End Function
Public Function cxboltzmann_err() As Double
   cxboltzmann_err = BOLTZMANN_ERR
End Function
Public Function cxelectroncharge() As Double
   cxelectroncharge = ELECTRONCHARGE
End Function
Public Function cxelectroncharge_err() As Double
   cxelectroncharge_err = ELECTRONCHARGE_ERR
End Function
Public Function cxlight() As Double
   cxlight = LIGHT
End Function
Public Function cxlight_err() As Double
   cxlight_err = LIGHT_ERR
End Function
Public Function cxavogadro() As Double
   cxavogadro = AVOGADRO
End Function
Public Function cxavogadro_err() As Double
   cxavogadro_err = AVOGADRO_ERR
End Function
Public Function cxplanck() As Double
   cxplanck = PLANCK
End Function
Public Function cxplanck_err() As Double
   cxplanck_err = PLANCK_ERR
End Function
Public Function cxkcd() As Double
   cxkcd = KCD
End Function
Public Function cxkcd_err() As Double
   cxkcd_err = KCD_ERR
End Function
Public Function cxdvcshz() As Double
   cxdvcshz = dvCsHz
End Function
Public Function cxdvcswavelength() As Double
   cxdvcswavelength = dvCsWAVELENGTH
End Function
Public Function cxdvcswavenumber() As Double
   cxdvcswavenumber = dvCsWAVENUMBER
End Function
Public Function cxdvcsenergy() As Double
   cxdvcsenergy = dvCsENERGY
End Function
Public Function cxdvcs_err() As Double
   cxdvcs_err = dvCs_ERR
End Function
Public Function cxkb() As Double
   cxkb = kB
End Function
Public Function cxkb_err() As Double
   cxkb_err = kB_ERR
End Function
Public Function cxelementarycharge() As Double
   cxelementarycharge = ELEMENTARYCHARGE
End Function
Public Function cxelementarycharge_err() As Double
   cxelementarycharge_err = ELEMENTARYCHARGE_ERR
End Function
Public Function cxplanckbar() As Double
   cxplanckbar = PLANCKBAR
End Function
Public Function cxplanckbar_err() As Double
   cxplanckbar_err = PLANCKBAR_ERR
End Function
Public Function cxh() As Double
   cxh = h
End Function
Public Function cxh_err() As Double
   cxh_err = h_ERR
End Function
Public Function cxhbar() As Double
   cxhbar = HBAR
End Function
Public Function cxhbar_err() As Double
   cxhbar_err = HBAR_ERR
End Function
Public Function cxboltzmann_rec() As Double
   cxboltzmann_rec = BOLTZMANN_REC
End Function
Public Function cxelectroncharge_rec() As Double
   cxelectroncharge_rec = ELECTRONCHARGE_REC
End Function
Public Function cxlight_rec() As Double
   cxlight_rec = LIGHT_REC
End Function
Public Function cxavogadro_rec() As Double
   cxavogadro_rec = AVOGADRO_REC
End Function
Public Function cxdvcshz_rec() As Double
   cxdvcshz_rec = dvCsHz_REC
End Function
Public Function cxplanck_rec() As Double
   cxplanck_rec = PLANCK_REC
End Function
Public Function cxh_rec() As Double
   cxh_rec = h_REC
End Function
Public Function cxkb_rec() As Double
   cxkb_rec = kB_REC
End Function
Public Function cxkghz() As Double
   cxkghz = KGHz
End Function
Public Function cxkgwavelength() As Double
   cxkgwavelength = KGWAVELENGTH
End Function
Public Function cxkgwavenumber() As Double
   cxkgwavenumber = KGWAVENUMBER
End Function
Public Function cxkgenergy() As Double
   cxkgenergy = KGENERGY
End Function
Public Function cxgravity() As Double
   cxgravity = GRAVITY
End Function
Public Function cxgravity_err() As Double
   cxgravity_err = GRAVITY_ERR
End Function
Public Function cxatmosphere() As Double
   cxatmosphere = ATMOSPHERE
End Function
Public Function cxatmosphere_err() As Double
   cxatmosphere_err = ATMOSPHERE_ERR
End Function
Public Function cxau() As Double
   cxau = AU
End Function
Public Function cxau_err() As Double
   cxau_err = AU_ERR
End Function
Public Function cxjosephson() As Double
   cxjosephson = JOSEPHSON
End Function
Public Function cxjosephson_err() As Double
   cxjosephson_err = JOSEPHSON_ERR
End Function
Public Function cxvonklitzing() As Double
   cxvonklitzing = VONKLITZING
End Function
Public Function cxvonklitzing_err() As Double
   cxvonklitzing_err = VONKLITZING_ERR
End Function
Public Function cxfaraday() As Double
   cxfaraday = FARADAY
End Function
Public Function cxfaraday_err() As Double
   cxfaraday_err = FARADAY_ERR
End Function
Public Function cxgas() As Double
   cxgas = GAS
End Function
Public Function cxgas_err() As Double
   cxgas_err = GAS_ERR
End Function
Public Function cxgravitation() As Double
   cxgravitation = GRAVITATION
End Function
Public Function cxgravitation_err() As Double
   cxgravitation_err = GRAVITATION_ERR
End Function
Public Function cxrydberg() As Double
   cxrydberg = RYDBERG
End Function
Public Function cxrydberg_err() As Double
   cxrydberg_err = RYDBERG_ERR
End Function
Public Function cxg() As Double
   cxg = G
End Function
Public Function cxg_err() As Double
   cxg_err = G_ERR
End Function
Public Function cxalpha() As Double
   cxalpha = ALPHA
End Function
Public Function cxalpha_err() As Double
   cxalpha_err = ALPHA_ERR
End Function
Public Function cxalpha_rec() As Double
   cxalpha_rec = ALPHA_REC
End Function
Public Function cxalpha_rec_err() As Double
   cxalpha_rec_err = ALPHA_REC_ERR
End Function
Public Function cxfltsig() As Double
   cxfltsig = FLTSIG
End Function
Public Function cxfltman() As Double
   cxfltman = FLTMAN
End Function
Public Function cxflteps() As Double
   cxflteps = FLTEPS
End Function
Public Function cxfltmax() As Double
   cxfltmax = FLTMAX
End Function
Public Function cxdblmaxln() As Double
   cxdblmaxln = DBLMAXLN
End Function
Public Function cxdblsig() As Double
   cxdblsig = DBLSIG
End Function
Public Function cxdblman() As Double
   cxdblman = DBLMAN
End Function
Public Function cxdbleps() As Double
   cxdbleps = DBLEPS
End Function
Public Function cxdblmax() As Double
   cxdblmax = DBLMAX
End Function
Public Function cxsi16max() As Double
   cxsi16max = SI16MAX
End Function
Public Function cxsi16min() As Double
   cxsi16min = SI16MIN
End Function
Public Function cxui16max() As Double
   cxui16max = UI16MAX
End Function
Public Function cxsi32max() As Double
   cxsi32max = SI32MAX
End Function
Public Function cxsi32min() As Double
   cxsi32min = SI32MIN
End Function
Public Function cxui32max() As Double
   cxui32max = UI32MAX
End Function
Public Function cxintmax() As Double
   cxintmax = INTMAX
End Function
Public Function cxmonths_in_year() As Double
   cxmonths_in_year = MONTHS_IN_YEAR
End Function
Public Function cxminute() As Double
   cxminute = MINUTE
End Function
Public Function cxhour() As Double
   cxhour = HOUR
End Function
Public Function cxearthsolarday() As Double
   cxearthsolarday = EARTHSOLARDAY
End Function
Public Function cxweek() As Double
   cxweek = WEEK
End Function
Public Function cxflick() As Double
   cxflick = FLICK
End Function
Public Function cxjulianday() As Double
   cxjulianday = JULIANDAY
End Function
Public Function cxjulianyear() As Double
   cxjulianyear = JULIANYEAR
End Function
Public Function cxjuliancentury() As Double
   cxjuliancentury = JULIANCENTURY
End Function
Public Function cxjulianmillennium() As Double
   cxjulianmillennium = JULIANMILLENNIUM
End Function
Public Function cxjday() As Double
   cxjday = JDAY
End Function
Public Function cxjyear() As Double
   cxjyear = JYEAR
End Function
Public Function cxjcentury() As Double
   cxjcentury = JCENTURY
End Function
Public Function cxjmillennium() As Double
   cxjmillennium = JMILLENNIUM
End Function
Public Function cxjd() As Double
   cxjd = JD
End Function
Public Function cxjy() As Double
   cxjy = JY
End Function
Public Function cxjc() As Double
   cxjc = JC
End Function
Public Function cxjm() As Double
   cxjm = JM
End Function
Public Function cxjewish_first_month() As Double
   cxjewish_first_month = JEWISH_FIRST_MONTH
End Function
Public Function cxgyear() As Double
   cxgyear = GYEAR
End Function
Public Function cxgregorianyear() As Double
   cxgregorianyear = GREGORIANYEAR
End Function
Public Function cxkwt() As Double
   cxkwt = KWT
End Function
Public Function cxuet() As Double
   cxuet = UET
End Function
Public Function cxj2k() As Double
   cxj2k = J2K
End Function
Public Function cxj2kday() As Double
   cxj2kday = J2KDAY
End Function
Public Function cxjdsec_at_0gregorian() As Double
   cxjdsec_at_0gregorian = JDSEC_AT_0GREGORIAN
End Function
Public Function cxjdsec_at_0kwt() As Double
   cxjdsec_at_0kwt = JDSEC_AT_0KWT
End Function
Public Function cxjdsec_at_0j2k() As Double
   cxjdsec_at_0j2k = JDSEC_AT_0J2K
End Function
Public Function cxjdsec_at_0uet() As Double
   cxjdsec_at_0uet = JDSEC_AT_0UET
End Function
Public Function cxtt_at_0tai() As Double
   cxtt_at_0tai = TT_AT_0TAI
End Function
Public Function cxtt_at_0ut1() As Double
   cxtt_at_0ut1 = TT_AT_0UT1
End Function
Public Function cxgram() As Double
   cxgram = GRAM
End Function
Public Function cxpound() As Double
   cxpound = POUND
End Function
Public Function cxlb() As Double
   cxlb = LB
End Function
Public Function cxounce() As Double
   cxounce = OUNCE
End Function
Public Function cxton() As Double
   cxton = TON
End Function
Public Function cxtonne() As Double
   cxtonne = TONNE
End Function
Public Function cxgrain() As Double
   cxgrain = GRAIN
End Function
Public Function cxcarat() As Double
   cxcarat = CARAT
End Function
Public Function cxmm() As Double
   cxmm = MM
End Function
Public Function cxinch() As Double
   cxinch = INCH
End Function
Public Function cxfoot() As Double
   cxfoot = FOOT
End Function
Public Function cxft() As Double
   cxft = FT
End Function
Public Function cxyard() As Double
   cxyard = YARD
End Function
Public Function cxmile() As Double
   cxmile = MILE
End Function
Public Function cxpoint() As Double
   cxpoint = POINT
End Function
Public Function cxstandardgravity() As Double
   cxstandardgravity = STANDARDGRAVITY
End Function
Public Function cxearthgravitya() As Double
   cxearthgravitya = EARTHGRAVITYA
End Function
Public Function cxearthgravityb() As Double
   cxearthgravityb = EARTHGRAVITYB
End Function
Public Function cxgravitationnasa() As Double
   cxgravitationnasa = GRAVITATIONNASA
End Function
Public Function cxgravitationiers() As Double
   cxgravitationiers = GRAVITATIONIERS
End Function
Public Function cxkgf() As Double
   cxkgf = KGF
End Function
Public Function cxlbf() As Double
   cxlbf = LBF
End Function
Public Function cxatm() As Double
   cxatm = ATM
End Function
Public Function cxstandardatmosphere() As Double
   cxstandardatmosphere = STANDARDATMOSPHERE
End Function
Public Function cxtorr() As Double
   cxtorr = TORR
End Function
Public Function cxbar() As Double
   cxbar = BAR
End Function
Public Function cxmmhg() As Double
   cxmmhg = MMHG
End Function
Public Function cxinhg() As Double
   cxinhg = INHG
End Function
Public Function cxpsi() As Double
   cxpsi = PSI
End Function
Public Function cxdegc() As Double
   cxdegc = DEGC
End Function
Public Function cxdegf() As Double
   cxdegf = DEGF
End Function
Public Function cxdegr() As Double
   cxdegr = DEGR
End Function
Public Function cxk_at_0tempc() As Double
   cxk_at_0tempc = K_AT_0TEMPC
End Function
Public Function cxk_at_0tempf() As Double
   cxk_at_0tempf = K_AT_0TEMPF
End Function
Public Function cxk_at_0tempr() As Double
   cxk_at_0tempr = K_AT_0TEMPR
End Function
Public Function cxmach() As Double
   cxmach = MACH
End Function
Public Function cxmph() As Double
   cxmph = MPH
End Function
Public Function cxhectare() As Double
   cxhectare = HECTARE
End Function
Public Function cxare() As Double
   cxare = ARE
End Function
Public Function cxacre() As Double
   cxacre = ACRE
End Function
Public Function cxbarn() As Double
   cxbarn = BARN
End Function
Public Function cxliter() As Double
   cxliter = LITER
End Function
Public Function cxlitre() As Double
   cxlitre = LITRE
End Function
Public Function cxgallon() As Double
   cxgallon = GALLON
End Function
Public Function cxquart() As Double
   cxquart = QUART
End Function
Public Function cxpint() As Double
   cxpint = PINT
End Function
Public Function cxcup() As Double
   cxcup = CUP
End Function
Public Function cxfloz() As Double
   cxfloz = FLOZ
End Function
Public Function cxtblsp() As Double
   cxtblsp = TBLSP
End Function
Public Function cxtsp() As Double
   cxtsp = TSP
End Function
Public Function cxbarrel() As Double
   cxbarrel = BARREL
End Function
Public Function cxah() As Double
   cxah = AH
End Function
Public Function cxcalorie() As Double
   cxcalorie = CALORIE
End Function
Public Function cxcal_it() As Double
   cxcal_it = CAL_IT
End Function
Public Function cxcal_th() As Double
   cxcal_th = CAL_TH
End Function
Public Function cxcal() As Double
   cxcal = CAL
End Function
Public Function cxbtu_th() As Double
   cxbtu_th = BTU_TH
End Function
Public Function cxbtu_it() As Double
   cxbtu_it = BTU_IT
End Function
Public Function cxbtu() As Double
   cxbtu = BTU
End Function
Public Function cxhp() As Double
   cxhp = HP
End Function
Public Function cxhorsepower() As Double
   cxhorsepower = HORSEPOWER
End Function
Public Function cxhpmetric() As Double
   cxhpmetric = HPMETRIC
End Function
Public Function cxelectronvolt() As Double
   cxelectronvolt = ELECTRONVOLT
End Function
Public Function cxerg() As Double
   cxerg = ERG
End Function
Public Function cxfoe() As Double
   cxfoe = FOE
End Function
Public Function cxaaabatterycharge() As Double
   cxaaabatterycharge = AAABATTERYCHARGE
End Function
Public Function cxaaabatteryvoltage() As Double
   cxaaabatteryvoltage = AAABATTERYVOLTAGE
End Function
Public Function cxaaabattery() As Double
   cxaaabattery = AAABATTERY
End Function
Public Function cxaaabatteryenergy() As Double
   cxaaabatteryenergy = AAABATTERYENERGY
End Function
Public Function cxaabatterycharge() As Double
   cxaabatterycharge = AABATTERYCHARGE
End Function
Public Function cxaabatteryvoltage() As Double
   cxaabatteryvoltage = AABATTERYVOLTAGE
End Function
Public Function cxaabattery() As Double
   cxaabattery = AABATTERY
End Function
Public Function cxaabatteryenergy() As Double
   cxaabatteryenergy = AABATTERYENERGY
End Function
Public Function cxcbatterycharge() As Double
   cxcbatterycharge = CBATTERYCHARGE
End Function
Public Function cxcbatteryvoltage() As Double
   cxcbatteryvoltage = CBATTERYVOLTAGE
End Function
Public Function cxcbattery() As Double
   cxcbattery = CBATTERY
End Function
Public Function cxcbatteryenergy() As Double
   cxcbatteryenergy = CBATTERYENERGY
End Function
Public Function cxdbatterycharge() As Double
   cxdbatterycharge = DBATTERYCHARGE
End Function
Public Function cxdbatteryvoltage() As Double
   cxdbatteryvoltage = DBATTERYVOLTAGE
End Function
Public Function cxdbattery() As Double
   cxdbattery = DBATTERY
End Function
Public Function cxdbatteryenergy() As Double
   cxdbatteryenergy = DBATTERYENERGY
End Function
Public Function cxninevoltcharge() As Double
   cxninevoltcharge = NINEVOLTCHARGE
End Function
Public Function cxninevoltvoltage() As Double
   cxninevoltvoltage = NINEVOLTVOLTAGE
End Function
Public Function cxninevolt() As Double
   cxninevolt = NINEVOLT
End Function
Public Function cxninevoltenergy() As Double
   cxninevoltenergy = NINEVOLTENERGY
End Function
Public Function cxninevoltbatterycharge() As Double
   cxninevoltbatterycharge = NINEVOLTBATTERYCHARGE
End Function
Public Function cxninevoltbatteryvoltage() As Double
   cxninevoltbatteryvoltage = NINEVOLTBATTERYVOLTAGE
End Function
Public Function cxninevoltbattery() As Double
   cxninevoltbattery = NINEVOLTBATTERY
End Function
Public Function cxninevoltbatteryenergy() As Double
   cxninevoltbatteryenergy = NINEVOLTBATTERYENERGY
End Function
Public Function cxphonebatterycharge() As Double
   cxphonebatterycharge = PHONEBATTERYCHARGE
End Function
Public Function cxphonebatteryvoltage() As Double
   cxphonebatteryvoltage = PHONEBATTERYVOLTAGE
End Function
Public Function cxphonebattery() As Double
   cxphonebattery = PHONEBATTERY
End Function
Public Function cxphonebatteryenergy() As Double
   cxphonebatteryenergy = PHONEBATTERYENERGY
End Function
Public Function cxcarbatterycharge() As Double
   cxcarbatterycharge = CARBATTERYCHARGE
End Function
Public Function cxcarbatteryvoltage() As Double
   cxcarbatteryvoltage = CARBATTERYVOLTAGE
End Function
Public Function cxcarbattery() As Double
   cxcarbattery = CARBATTERY
End Function
Public Function cxcarbatteryenergy() As Double
   cxcarbatteryenergy = CARBATTERYENERGY
End Function
Public Function cxmicrowavehz() As Double
   cxmicrowavehz = MICROWAVEHz
End Function
Public Function cxmicrowavewavelength() As Double
   cxmicrowavewavelength = MICROWAVEWAVELENGTH
End Function
Public Function cxmicrowavewavenumber() As Double
   cxmicrowavewavenumber = MICROWAVEWAVENUMBER
End Function
Public Function cxmicrowaveenergy() As Double
   cxmicrowaveenergy = MICROWAVEENERGY
End Function
Public Function cxlfhz() As Double
   cxlfhz = LFHz
End Function
Public Function cxlfwavelength() As Double
   cxlfwavelength = LFWAVELENGTH
End Function
Public Function cxlfwavenumber() As Double
   cxlfwavenumber = LFWAVENUMBER
End Function
Public Function cxlfenergy() As Double
   cxlfenergy = LFENERGY
End Function
Public Function cxmfhz() As Double
   cxmfhz = MFHz
End Function
Public Function cxmfwavelength() As Double
   cxmfwavelength = MFWAVELENGTH
End Function
Public Function cxmfwavenumber() As Double
   cxmfwavenumber = MFWAVENUMBER
End Function
Public Function cxmfenergy() As Double
   cxmfenergy = MFENERGY
End Function
Public Function cxhfhz() As Double
   cxhfhz = HFHz
End Function
Public Function cxhfwavelength() As Double
   cxhfwavelength = HFWAVELENGTH
End Function
Public Function cxhfwavenumber() As Double
   cxhfwavenumber = HFWAVENUMBER
End Function
Public Function cxhfenergy() As Double
   cxhfenergy = HFENERGY
End Function
Public Function cxvhfhz() As Double
   cxvhfhz = VHFHz
End Function
Public Function cxvhfwavelength() As Double
   cxvhfwavelength = VHFWAVELENGTH
End Function
Public Function cxvhfwavenumber() As Double
   cxvhfwavenumber = VHFWAVENUMBER
End Function
Public Function cxvhfenergy() As Double
   cxvhfenergy = VHFENERGY
End Function
Public Function cxuhfhz() As Double
   cxuhfhz = UHFHz
End Function
Public Function cxuhfwavelength() As Double
   cxuhfwavelength = UHFWAVELENGTH
End Function
Public Function cxuhfwavenumber() As Double
   cxuhfwavenumber = UHFWAVENUMBER
End Function
Public Function cxuhfenergy() As Double
   cxuhfenergy = UHFENERGY
End Function
Public Function cxshfhz() As Double
   cxshfhz = SHFHz
End Function
Public Function cxshfwavelength() As Double
   cxshfwavelength = SHFWAVELENGTH
End Function
Public Function cxshfwavenumber() As Double
   cxshfwavenumber = SHFWAVENUMBER
End Function
Public Function cxshfenergy() As Double
   cxshfenergy = SHFENERGY
End Function
Public Function cxehfhz() As Double
   cxehfhz = EHFHz
End Function
Public Function cxehfwavelength() As Double
   cxehfwavelength = EHFWAVELENGTH
End Function
Public Function cxehfwavenumber() As Double
   cxehfwavenumber = EHFWAVENUMBER
End Function
Public Function cxehfenergy() As Double
   cxehfenergy = EHFENERGY
End Function
Public Function cxthfhz() As Double
   cxthfhz = THFHz
End Function
Public Function cxthfwavelength() As Double
   cxthfwavelength = THFWAVELENGTH
End Function
Public Function cxthfwavenumber() As Double
   cxthfwavenumber = THFWAVENUMBER
End Function
Public Function cxthfenergy() As Double
   cxthfenergy = THFENERGY
End Function
Public Function cxfirhz() As Double
   cxfirhz = FIRHz
End Function
Public Function cxfirwavelength() As Double
   cxfirwavelength = FIRWAVELENGTH
End Function
Public Function cxfirwavenumber() As Double
   cxfirwavenumber = FIRWAVENUMBER
End Function
Public Function cxfirenergy() As Double
   cxfirenergy = FIRENERGY
End Function
Public Function cxmirhz() As Double
   cxmirhz = MIRHz
End Function
Public Function cxmirwavelength() As Double
   cxmirwavelength = MIRWAVELENGTH
End Function
Public Function cxmirwavenumber() As Double
   cxmirwavenumber = MIRWAVENUMBER
End Function
Public Function cxmirenergy() As Double
   cxmirenergy = MIRENERGY
End Function
Public Function cxnirhz() As Double
   cxnirhz = NIRHz
End Function
Public Function cxnirwavelength() As Double
   cxnirwavelength = NIRWAVELENGTH
End Function
Public Function cxnirwavenumber() As Double
   cxnirwavenumber = NIRWAVENUMBER
End Function
Public Function cxnirenergy() As Double
   cxnirenergy = NIRENERGY
End Function
Public Function cxredwavelength() As Double
   cxredwavelength = REDWAVELENGTH
End Function
Public Function cxredhz() As Double
   cxredhz = REDHz
End Function
Public Function cxredwavenumber() As Double
   cxredwavenumber = REDWAVENUMBER
End Function
Public Function cxredenergy() As Double
   cxredenergy = REDENERGY
End Function
Public Function cxorangewavelength() As Double
   cxorangewavelength = ORANGEWAVELENGTH
End Function
Public Function cxorangehz() As Double
   cxorangehz = ORANGEHz
End Function
Public Function cxorangewavenumber() As Double
   cxorangewavenumber = ORANGEWAVENUMBER
End Function
Public Function cxorangeenergy() As Double
   cxorangeenergy = ORANGEENERGY
End Function
Public Function cxyellowwavelength() As Double
   cxyellowwavelength = YELLOWWAVELENGTH
End Function
Public Function cxyellowhz() As Double
   cxyellowhz = YELLOWHz
End Function
Public Function cxyellowwavenumber() As Double
   cxyellowwavenumber = YELLOWWAVENUMBER
End Function
Public Function cxyellowenergy() As Double
   cxyellowenergy = YELLOWENERGY
End Function
Public Function cxyellowgreenhz() As Double
   cxyellowgreenhz = YELLOWGREENHz
End Function
Public Function cxyellowgreenwavelength() As Double
   cxyellowgreenwavelength = YELLOWGREENWAVELENGTH
End Function
Public Function cxyellowgreenwavenumber() As Double
   cxyellowgreenwavenumber = YELLOWGREENWAVENUMBER
End Function
Public Function cxyellowgreenenergy() As Double
   cxyellowgreenenergy = YELLOWGREENENERGY
End Function
Public Function cxgreenwavelength() As Double
   cxgreenwavelength = GREENWAVELENGTH
End Function
Public Function cxgreenhz() As Double
   cxgreenhz = GREENHz
End Function
Public Function cxgreenwavenumber() As Double
   cxgreenwavenumber = GREENWAVENUMBER
End Function
Public Function cxgreenenergy() As Double
   cxgreenenergy = GREENENERGY
End Function
Public Function cxbluewavelength() As Double
   cxbluewavelength = BLUEWAVELENGTH
End Function
Public Function cxbluehz() As Double
   cxbluehz = BLUEHz
End Function
Public Function cxbluewavenumber() As Double
   cxbluewavenumber = BLUEWAVENUMBER
End Function
Public Function cxblueenergy() As Double
   cxblueenergy = BLUEENERGY
End Function
Public Function cxvioletwavelength() As Double
   cxvioletwavelength = VIOLETWAVELENGTH
End Function
Public Function cxviolethz() As Double
   cxviolethz = VIOLETHz
End Function
Public Function cxvioletwavenumber() As Double
   cxvioletwavenumber = VIOLETWAVENUMBER
End Function
Public Function cxvioletenergy() As Double
   cxvioletenergy = VIOLETENERGY
End Function
Public Function cxnuvhz() As Double
   cxnuvhz = NUVHz
End Function
Public Function cxnuvwavelength() As Double
   cxnuvwavelength = NUVWAVELENGTH
End Function
Public Function cxnuvwavenumber() As Double
   cxnuvwavenumber = NUVWAVENUMBER
End Function
Public Function cxnuvenergy() As Double
   cxnuvenergy = NUVENERGY
End Function
Public Function cxeuvhz() As Double
   cxeuvhz = EUVHz
End Function
Public Function cxeuvwavelength() As Double
   cxeuvwavelength = EUVWAVELENGTH
End Function
Public Function cxeuvwavenumber() As Double
   cxeuvwavenumber = EUVWAVENUMBER
End Function
Public Function cxeuvenergy() As Double
   cxeuvenergy = EUVENERGY
End Function
Public Function cxuvawavelength() As Double
   cxuvawavelength = UVAWAVELENGTH
End Function
Public Function cxuvahz() As Double
   cxuvahz = UVAHz
End Function
Public Function cxuvawavenumber() As Double
   cxuvawavenumber = UVAWAVENUMBER
End Function
Public Function cxuvaenergy() As Double
   cxuvaenergy = UVAENERGY
End Function
Public Function cxuvbwavelength() As Double
   cxuvbwavelength = UVBWAVELENGTH
End Function
Public Function cxuvbhz() As Double
   cxuvbhz = UVBHz
End Function
Public Function cxuvbwavenumber() As Double
   cxuvbwavenumber = UVBWAVENUMBER
End Function
Public Function cxuvbenergy() As Double
   cxuvbenergy = UVBENERGY
End Function
Public Function cxuvcwavelength() As Double
   cxuvcwavelength = UVCWAVELENGTH
End Function
Public Function cxuvchz() As Double
   cxuvchz = UVCHz
End Function
Public Function cxuvcwavenumber() As Double
   cxuvcwavenumber = UVCWAVENUMBER
End Function
Public Function cxuvcenergy() As Double
   cxuvcenergy = UVCENERGY
End Function
Public Function cxsxhz() As Double
   cxsxhz = SXHz
End Function
Public Function cxsxwavelength() As Double
   cxsxwavelength = SXWAVELENGTH
End Function
Public Function cxsxwavenumber() As Double
   cxsxwavenumber = SXWAVENUMBER
End Function
Public Function cxsxenergy() As Double
   cxsxenergy = SXENERGY
End Function
Public Function cxsxxwavelength() As Double
   cxsxxwavelength = SXXWAVELENGTH
End Function
Public Function cxsxxhz() As Double
   cxsxxhz = SXXHz
End Function
Public Function cxsxxwavenumber() As Double
   cxsxxwavenumber = SXXWAVENUMBER
End Function
Public Function cxsxxenergy() As Double
   cxsxxenergy = SXXENERGY
End Function
Public Function cxhxhz() As Double
   cxhxhz = HXHz
End Function
Public Function cxhxwavelength() As Double
   cxhxwavelength = HXWAVELENGTH
End Function
Public Function cxhxwavenumber() As Double
   cxhxwavenumber = HXWAVENUMBER
End Function
Public Function cxhxenergy() As Double
   cxhxenergy = HXENERGY
End Function
Public Function cxgammahz() As Double
   cxgammahz = GAMMAHz
End Function
Public Function cxgammawavelength() As Double
   cxgammawavelength = GAMMAWAVELENGTH
End Function
Public Function cxgammawavenumber() As Double
   cxgammawavenumber = GAMMAWAVENUMBER
End Function
Public Function cxgammaenergy() As Double
   cxgammaenergy = GAMMAENERGY
End Function
Public Function cxturn() As Double
   cxturn = TURN
End Function
Public Function cxarcdegree() As Double
   cxarcdegree = ARCDEGREE
End Function
Public Function cxarcminute() As Double
   cxarcminute = ARCMINUTE
End Function
Public Function cxarcsecond() As Double
   cxarcsecond = ARCSECOND
End Function
Public Function cxgrad() As Double
   cxgrad = GRAD
End Function
Public Function cxarcdeg() As Double
   cxarcdeg = ARCDEG
End Function
Public Function cxarcmin() As Double
   cxarcmin = ARCMIN
End Function
Public Function cxarcsec() As Double
   cxarcsec = ARCSEC
End Function
Public Function cxsquaredegree() As Double
   cxsquaredegree = SQUAREDEGREE
End Function
Public Function cxsqdeg() As Double
   cxsqdeg = SQDEG
End Function
Public Function cxspheresurface() As Double
   cxspheresurface = SPHERESURFACE
End Function
Public Function cxshannon() As Double
   cxshannon = SHANNON
End Function
Public Function cxnat() As Double
   cxnat = NAT
End Function
Public Function cxhartley() As Double
   cxhartley = HARTLEY
End Function
Public Function cxhart() As Double
   cxhart = HART
End Function
Public Function cxdit() As Double
   cxdit = DIT
End Function
Public Function cxban() As Double
   cxban = BAN
End Function
Public Function cxrpm() As Double
   cxrpm = RPM
End Function
Public Function cxrps() As Double
   cxrps = RPS
End Function
Public Function cxfinestructure() As Double
   cxfinestructure = FINESTRUCTURE
End Function
Public Function cxfinestructure_err() As Double
   cxfinestructure_err = FINESTRUCTURE_ERR
End Function
Public Function cxfinestructure_rec() As Double
   cxfinestructure_rec = FINESTRUCTURE_REC
End Function
Public Function cxfinestructure_rec_err() As Double
   cxfinestructure_rec_err = FINESTRUCTURE_REC_ERR
End Function
Public Function cxmagnetic() As Double
   cxmagnetic = MAGNETIC
End Function
Public Function cxmagnetic_err() As Double
   cxmagnetic_err = MAGNETIC_ERR
End Function
Public Function cxmu0() As Double
   cxmu0 = MU0
End Function
Public Function cxmu0_err() As Double
   cxmu0_err = MU0_ERR
End Function
Public Function cxelectric() As Double
   cxelectric = ELECTRIC
End Function
Public Function cxelectric_err() As Double
   cxelectric_err = ELECTRIC_ERR
End Function
Public Function cxepsilon0() As Double
   cxepsilon0 = EPSILON0
End Function
Public Function cxepsilon0_err() As Double
   cxepsilon0_err = EPSILON0_ERR
End Function
Public Function cxcoulombconst() As Double
   cxcoulombconst = COULOMBCONST
End Function
Public Function cxcoulombconst_err() As Double
   cxcoulombconst_err = COULOMBCONST_ERR
End Function
Public Function cxprotonradius() As Double
   cxprotonradius = PROTONRADIUS
End Function
Public Function cxprotonradius_err() As Double
   cxprotonradius_err = PROTONRADIUS_ERR
End Function
Public Function cxmolarmass() As Double
   cxmolarmass = MOLARMASS
End Function
Public Function cxmolarmass_err() As Double
   cxmolarmass_err = MOLARMASS_ERR
End Function
Public Function cxmolarmassx() As Double
   cxmolarmassx = MOLARMASSX
End Function
Public Function cxmolarmassx_err() As Double
   cxmolarmassx_err = MOLARMASSX_ERR
End Function
Public Function cxdalton() As Double
   cxdalton = DALTON
End Function
Public Function cxdalton_err() As Double
   cxdalton_err = DALTON_ERR
End Function
Public Function cxamu() As Double
   cxamu = AMU
End Function
Public Function cxamu_err() As Double
   cxamu_err = AMU_ERR
End Function
Public Function cxatomicmassunit() As Double
   cxatomicmassunit = ATOMICMASSUNIT
End Function
Public Function cxatomicmassunit_err() As Double
   cxatomicmassunit_err = ATOMICMASSUNIT_ERR
End Function
Public Function cxuamu() As Double
   cxuamu = UAMU
End Function
Public Function cxuamu_err() As Double
   cxuamu_err = UAMU_ERR
End Function
Public Function cxrydberghz() As Double
   cxrydberghz = RYDBERGHz
End Function
Public Function cxrydbergwavelength() As Double
   cxrydbergwavelength = RYDBERGWAVELENGTH
End Function
Public Function cxrydbergwavenumber() As Double
   cxrydbergwavenumber = RYDBERGWAVENUMBER
End Function
Public Function cxrydbergenergy() As Double
   cxrydbergenergy = RYDBERGENERGY
End Function
Public Function cxelectronmassa() As Double
   cxelectronmassa = ELECTRONMASSA
End Function
Public Function cxelectronmassa_err() As Double
   cxelectronmassa_err = ELECTRONMASSA_ERR
End Function
Public Function cxelectronmass() As Double
   cxelectronmass = ELECTRONMASS
End Function
Public Function cxelectronmass_err() As Double
   cxelectronmass_err = ELECTRONMASS_ERR
End Function
Public Function cxelectron_mass() As Double
   cxelectron_mass = ELECTRON_MASS
End Function
Public Function cxelectronenergy() As Double
   cxelectronenergy = ELECTRONENERGY
End Function
Public Function cxelectronhz() As Double
   cxelectronhz = ELECTRONHz
End Function
Public Function cxelectronwavelength() As Double
   cxelectronwavelength = ELECTRONWAVELENGTH
End Function
Public Function cxupquarkmass() As Double
   cxupquarkmass = UPQUARKMASS
End Function
Public Function cxupquarkmass_err() As Double
   cxupquarkmass_err = UPQUARKMASS_ERR
End Function
Public Function cxupquark_mass() As Double
   cxupquark_mass = UPQUARK_MASS
End Function
Public Function cxupquarkenergy() As Double
   cxupquarkenergy = UPQUARKENERGY
End Function
Public Function cxupquarkhz() As Double
   cxupquarkhz = UPQUARKHz
End Function
Public Function cxupquarkwavelength() As Double
   cxupquarkwavelength = UPQUARKWAVELENGTH
End Function
Public Function cxdownquarkmass() As Double
   cxdownquarkmass = DOWNQUARKMASS
End Function
Public Function cxdownquarkmass_err() As Double
   cxdownquarkmass_err = DOWNQUARKMASS_ERR
End Function
Public Function cxdownquark_mass() As Double
   cxdownquark_mass = DOWNQUARK_MASS
End Function
Public Function cxdownquarkenergy() As Double
   cxdownquarkenergy = DOWNQUARKENERGY
End Function
Public Function cxdownquarkhz() As Double
   cxdownquarkhz = DOWNQUARKHz
End Function
Public Function cxdownquarkwavelength() As Double
   cxdownquarkwavelength = DOWNQUARKWAVELENGTH
End Function
Public Function cxmuonmass() As Double
   cxmuonmass = MUONMASS
End Function
Public Function cxmuonmass_err() As Double
   cxmuonmass_err = MUONMASS_ERR
End Function
Public Function cxmuon_mass() As Double
   cxmuon_mass = MUON_MASS
End Function
Public Function cxmuonenergy() As Double
   cxmuonenergy = MUONENERGY
End Function
Public Function cxmuonhz() As Double
   cxmuonhz = MUONHz
End Function
Public Function cxmuonwavelength() As Double
   cxmuonwavelength = MUONWAVELENGTH
End Function
Public Function cxprotonmass() As Double
   cxprotonmass = PROTONMASS
End Function
Public Function cxprotonmass_err() As Double
   cxprotonmass_err = PROTONMASS_ERR
End Function
Public Function cxproton_mass() As Double
   cxproton_mass = PROTON_MASS
End Function
Public Function cxprotonenergy() As Double
   cxprotonenergy = PROTONENERGY
End Function
Public Function cxprotonhz() As Double
   cxprotonhz = PROTONHz
End Function
Public Function cxprotonwavelength() As Double
   cxprotonwavelength = PROTONWAVELENGTH
End Function
Public Function cxneutronmass() As Double
   cxneutronmass = NEUTRONMASS
End Function
Public Function cxneutronmass_err() As Double
   cxneutronmass_err = NEUTRONMASS_ERR
End Function
Public Function cxneutron_mass() As Double
   cxneutron_mass = NEUTRON_MASS
End Function
Public Function cxneutronenergy() As Double
   cxneutronenergy = NEUTRONENERGY
End Function
Public Function cxneutronhz() As Double
   cxneutronhz = NEUTRONHz
End Function
Public Function cxneutronwavelength() As Double
   cxneutronwavelength = NEUTRONWAVELENGTH
End Function
Public Function cxtaumass() As Double
   cxtaumass = TAUMASS
End Function
Public Function cxtaumass_err() As Double
   cxtaumass_err = TAUMASS_ERR
End Function
Public Function cxtau_mass() As Double
   cxtau_mass = TAU_MASS
End Function
Public Function cxtauenergy() As Double
   cxtauenergy = TAUENERGY
End Function
Public Function cxtauhz() As Double
   cxtauhz = TAUHz
End Function
Public Function cxtauwavelength() As Double
   cxtauwavelength = TAUWAVELENGTH
End Function
Public Function cxdeuteronmass() As Double
   cxdeuteronmass = DEUTERONMASS
End Function
Public Function cxdeuteronmass_err() As Double
   cxdeuteronmass_err = DEUTERONMASS_ERR
End Function
Public Function cxdeuteron_mass() As Double
   cxdeuteron_mass = DEUTERON_MASS
End Function
Public Function cxhelionmass() As Double
   cxhelionmass = HELIONMASS
End Function
Public Function cxhelionmass_err() As Double
   cxhelionmass_err = HELIONMASS_ERR
End Function
Public Function cxhelion_mass() As Double
   cxhelion_mass = HELION_MASS
End Function
Public Function cxtritonmass() As Double
   cxtritonmass = TRITONMASS
End Function
Public Function cxtritonmass_err() As Double
   cxtritonmass_err = TRITONMASS_ERR
End Function
Public Function cxtriton_mass() As Double
   cxtriton_mass = TRITON_MASS
End Function
Public Function cxalphamass() As Double
   cxalphamass = ALPHAMASS
End Function
Public Function cxalphamass_err() As Double
   cxalphamass_err = ALPHAMASS_ERR
End Function
Public Function cxalpha_mass() As Double
   cxalpha_mass = ALPHA_MASS
End Function
Public Function cxhydrogenradius() As Double
   cxhydrogenradius = HYDROGENRADIUS
End Function
Public Function cxhydrogenradius_err() As Double
   cxhydrogenradius_err = HYDROGENRADIUS_ERR
End Function
Public Function cxbohrradius() As Double
   cxbohrradius = BOHRRADIUS
End Function
Public Function cxbohrradius_err() As Double
   cxbohrradius_err = BOHRRADIUS_ERR
End Function
Public Function cxhihz() As Double
   cxhihz = HIHz
End Function
Public Function cxhiwavelength() As Double
   cxhiwavelength = HIWAVELENGTH
End Function
Public Function cxhiwavenumber() As Double
   cxhiwavenumber = HIWAVENUMBER
End Function
Public Function cxhienergy() As Double
   cxhienergy = HIENERGY
End Function
Public Function cxhydrogenline() As Double
   cxhydrogenline = HYDROGENLINE
End Function
Public Function cxhydrogenline_err() As Double
   cxhydrogenline_err = HYDROGENLINE_ERR
End Function
Public Function cxhi() As Double
   cxhi = HI
End Function
Public Function cxhi_err() As Double
   cxhi_err = HI_ERR
End Function
Public Function cxplanckmass() As Double
   cxplanckmass = PLANCKMASS
End Function
Public Function cxplanckcharge() As Double
   cxplanckcharge = PLANCKCHARGE
End Function
Public Function cxplanckenergy() As Double
   cxplanckenergy = PLANCKENERGY
End Function
Public Function cxplancktemp() As Double
   cxplancktemp = PLANCKTEMP
End Function
Public Function cxplancklength() As Double
   cxplancklength = PLANCKLENGTH
End Function
Public Function cxplancktime() As Double
   cxplancktime = PLANCKTIME
End Function
Public Function cxstefan() As Double
   cxstefan = STEFAN
End Function
Public Function cxstefan_err() As Double
   cxstefan_err = STEFAN_ERR
End Function
Public Function cxpingpongballradius() As Double
   cxpingpongballradius = PINGPONGBALLRADIUS
End Function
Public Function cxgolfballradius() As Double
   cxgolfballradius = GOLFBALLRADIUS
End Function
Public Function cxtennisballradius() As Double
   cxtennisballradius = TENNISBALLRADIUS
End Function
Public Function cxbaseballradius() As Double
   cxbaseballradius = BASEBALLRADIUS
End Function
Public Function cxsoftballradius() As Double
   cxsoftballradius = SOFTBALLRADIUS
End Function
Public Function cxsoccerballradius() As Double
   cxsoccerballradius = SOCCERBALLRADIUS
End Function
Public Function cxbasketballradius() As Double
   cxbasketballradius = BASKETBALLRADIUS
End Function
Public Function cxpingpongballmass() As Double
   cxpingpongballmass = PINGPONGBALLMASS
End Function
Public Function cxgolfballmass() As Double
   cxgolfballmass = GOLFBALLMASS
End Function
Public Function cxtennisballmass() As Double
   cxtennisballmass = TENNISBALLMASS
End Function
Public Function cxbaseballmass() As Double
   cxbaseballmass = BASEBALLMASS
End Function
Public Function cxsoftballmass() As Double
   cxsoftballmass = SOFTBALLMASS
End Function
Public Function cxbasketballmass() As Double
   cxbasketballmass = BASKETBALLMASS
End Function
Public Function cxsoccerballmass() As Double
   cxsoccerballmass = SOCCERBALLMASS
End Function
Public Function cxmarathon() As Double
   cxmarathon = MARATHON
End Function
Public Function cxpennythickness() As Double
   cxpennythickness = PENNYTHICKNESS
End Function
Public Function cxnickelthickness() As Double
   cxnickelthickness = NICKELTHICKNESS
End Function
Public Function cxdimethickness() As Double
   cxdimethickness = DIMETHICKNESS
End Function
Public Function cxquarterthickness() As Double
   cxquarterthickness = QUARTERTHICKNESS
End Function
Public Function cxpennyradius() As Double
   cxpennyradius = PENNYRADIUS
End Function
Public Function cxnickelradius() As Double
   cxnickelradius = NICKELRADIUS
End Function
Public Function cxdimeradius() As Double
   cxdimeradius = DIMERADIUS
End Function
Public Function cxquarterradius() As Double
   cxquarterradius = QUARTERRADIUS
End Function
Public Function cxpennymass() As Double
   cxpennymass = PENNYMASS
End Function
Public Function cxnickelmass() As Double
   cxnickelmass = NICKELMASS
End Function
Public Function cxdimemass() As Double
   cxdimemass = DIMEMASS
End Function
Public Function cxquartermass() As Double
   cxquartermass = QUARTERMASS
End Function
Public Function cxmoonmonth() As Double
   cxmoonmonth = MOONMONTH
End Function
Public Function cxmilkywayage() As Double
   cxmilkywayage = MILKYWAYAGE
End Function
Public Function cxuniverseage() As Double
   cxuniverseage = UNIVERSEAGE
End Function
Public Function cxlightyear() As Double
   cxlightyear = LIGHTYEAR
End Function
Public Function cxastronomicalunit() As Double
   cxastronomicalunit = ASTRONOMICALUNIT
End Function
Public Function cxparsec() As Double
   cxparsec = PARSEC
End Function
Public Function cxproximacentauri() As Double
   cxproximacentauri = PROXIMACENTAURI
End Function
Public Function cxmilkywayradius() As Double
   cxmilkywayradius = MILKYWAYRADIUS
End Function
Public Function cxgalacticcenter() As Double
   cxgalacticcenter = GALACTICCENTER
End Function
Public Function cxuniverseradius() As Double
   cxuniverseradius = UNIVERSERADIUS
End Function
Public Function cxmilkywaymass() As Double
   cxmilkywaymass = MILKYWAYMASS
End Function
Public Function cxuniversemass() As Double
   cxuniversemass = UNIVERSEMASS
End Function
Public Function cxsolarconstant() As Double
   cxsolarconstant = SOLARCONSTANT
End Function
Public Function cxeinstein() As Double
   cxeinstein = EINSTEIN
End Function
Public Function cxeinstein_err() As Double
   cxeinstein_err = EINSTEIN_ERR
End Function
Public Function cxhubble() As Double
   cxhubble = HUBBLE
End Function
Public Function cxhubble_err() As Double
   cxhubble_err = HUBBLE_ERR
End Function
Public Function cxbhmasstemp() As Double
   cxbhmasstemp = BHMASSTEMP
End Function
Public Function cxbhmass_radius() As Double
   cxbhmass_radius = BHMASS_RADIUS
End Function
Public Function cxbhmass3_lifetime() As Double
   cxbhmass3_lifetime = BHMASS3_LIFETIME
End Function
Public Function cxbhradius2density() As Double
   cxbhradius2density = BHRADIUS2DENSITY
End Function
Public Function cxbhentropy_area() As Double
   cxbhentropy_area = BHENTROPY_AREA
End Function
Public Function cxbekensteininformation() As Double
   cxbekensteininformation = BEKENSTEININFORMATION
End Function
Public Function cxbekensteinentropy() As Double
   cxbekensteinentropy = BEKENSTEINENTROPY
End Function
Public Function cxelevationmax() As Double
   cxelevationmax = ELEVATIONMAX
End Function
Public Function cxelevationmin() As Double
   cxelevationmin = ELEVATIONMIN
End Function
Public Function cxkpgboundary() As Double
   cxkpgboundary = KPGBOUNDARY
End Function
Public Function cxtrjboundary() As Double
   cxtrjboundary = TRJBOUNDARY
End Function
Public Function cxmilkywayday() As Double
   cxmilkywayday = MILKYWAYDAY
End Function
Public Function cxptrboundary() As Double
   cxptrboundary = PTRBOUNDARY
End Function
Public Function cxnpboundary() As Double
   cxnpboundary = NPBOUNDARY
End Function
Public Function cxlifeage() As Double
   cxlifeage = LIFEAGE
End Function
Public Function cxgiantimpact() As Double
   cxgiantimpact = GIANTIMPACT
End Function
Public Function cxearthage() As Double
   cxearthage = EARTHAGE
End Function
Public Function cxppq() As Double
   cxppq = PPQ
End Function
Public Function cxppt() As Double
   cxppt = PPT
End Function
Public Function cxppb() As Double
   cxppb = PPB
End Function
Public Function cxppm() As Double
   cxppm = PPM
End Function
Public Function cxmass() As Double
   cxmass = MASS
End Function
Public Function cxlength() As Double
   cxlength = LENGTH
End Function
Public Function cxdistance() As Double
   cxdistance = DISTANCE
End Function
Public Function cxtemperature() As Double
   cxtemperature = TEMPERATURE
End Function
Public Function cxtime() As Double
   cxtime = TIME
End Function
Public Function cxangle() As Double
   cxangle = ANGLE
End Function
Public Function cxsolid_angle() As Double
   cxsolid_angle = SOLID_ANGLE
End Function
Public Function cxspeed() As Double
   cxspeed = SPEED
End Function
Public Function cxacceleration() As Double
   cxacceleration = ACCELERATION
End Function
Public Function cxforce() As Double
   cxforce = FORCE
End Function
Public Function cxenergy() As Double
   cxenergy = ENERGY
End Function
Public Function cxaction() As Double
   cxaction = ACTION
End Function
Public Function cxpower() As Double
   cxpower = POWER
End Function
Public Function cxarea() As Double
   cxarea = AREA
End Function
Public Function cxvolume() As Double
   cxvolume = VOLUME
End Function
Public Function cxdensity() As Double
   cxdensity = DENSITY
End Function
Public Function cxspecificheat() As Double
   cxspecificheat = SPECIFICHEAT
End Function
Public Function cxpressure() As Double
   cxpressure = PRESSURE
End Function
Public Function cxviscosity() As Double
   cxviscosity = VISCOSITY
End Function
Public Function cxfrequency() As Double
   cxfrequency = FREQUENCY
End Function
Public Function cxcharge() As Double
   cxcharge = CHARGE
End Function
Public Function cxcurrent() As Double
   cxcurrent = CURRENT
End Function
Public Function cxvoltage() As Double
   cxvoltage = VOLTAGE
End Function
Public Function cxresistance() As Double
   cxresistance = RESISTANCE
End Function
Public Function cxinductance() As Double
   cxinductance = INDUCTANCE
End Function
Public Function cxcapacitance() As Double
   cxcapacitance = CAPACITANCE
End Function
Public Function cxconductance() As Double
   cxconductance = CONDUCTANCE
End Function
Public Function cxmagneticflux() As Double
   cxmagneticflux = MAGNETICFLUX
End Function
Public Function cxmagneticinduction() As Double
   cxmagneticinduction = MAGNETICINDUCTION
End Function
'   MMMMMMMMMMASTER-Function ---------------------------- timee #
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
   timee = (Now() - #1/1/1970#) * 86400.0 _
         + (tms Mod 1000) / 1000.0 + lv_time_zone_offset
End Function
'   MMMMMMMMMMASTER-Function ---------------------------- floor #
Public Function floor(ByVal xx As Double) As Double
   floor = Int(xx)
End Function
'   MMMMMMMMMMASTER-Function ----------------------------- ceil #
Public Function ceil(ByVal xx As Double) As Double
   ceil = -Int(-xx)
End Function
'   MMMMMMMMMMASTER-Function --------------------------- floorl #
Public Function floorl(ByVal xx As Double) As Long
   floorl = CLng(Int(xx))
End Function
'   MMMMMMMMMMASTER-Function ---------------------------- ceill #
Public Function ceill(ByVal xx As Double) As Long
   ceill = CLng(-Int(-xx))
End Function
'   MMMMMMMMMMASTER-Function ----------------------------- sqrt #
Public Function sqrt(ByVal xx As Double) As Double
   sqrt = Sqr(xx)
End Function
'   MMMMMMMMMMASTER-Function ----------------------------- fabs #
Public Function fabs(ByVal xx As Double) As Double
   fabs = Abs(xx)
End Function
'   MMMMMMMMMMASTER-Function ------------------------------ pow #
Public Function pow(ByVal yy As Double _
         , ByVal xx As Double) As Double
   pow = Exp(xx * Log(yy))
End Function
'   MMMMMMMMMMASTER-Function ---------------------------- atan2 #
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
'   MMMMMMMMMMASTER-Function ----------------------- lf_mod_vb6 #
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
   id = (xx)
End Function
Public Function reci(ByVal xx As Double) As Double
   reci = (1.0 / xx)
End Function
Public Function neg(ByVal xx As Double) As Double
   neg = (- xx)
End Function
Public Function square(ByVal xx As Double) As Double
   square = (xx * xx)
End Function
Public Function sq(ByVal xx As Double) As Double
   sq = (xx * xx)
End Function
Public Function sqinv(ByVal xx As Double) As Double
   sqinv = ((Sqr(xx)))
End Function
Public Function cube(ByVal xx As Double) As Double
   cube = (xx * xx * xx)
End Function
Public Function cu(ByVal xx As Double) As Double
   cu = (xx * xx * xx)
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
   sign = (retvalu)
End Function
Public Function stair(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0
   End If
   stair = (retvalu)
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
   heaviside = (retvalu)
End Function
Public Function divi(ByVal numer As Double, ByVal denom As _
      Double, ByVal def_val As Double) As Double
   Dim retvalu As Double
   If (denom < 0.0 Or 0.0 < denom) Then
      retvalu = numer / denom
   Else
      retvalu = def_val
   End If
   divi = (retvalu)
End Function
Public Function clip(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = 0.0
   Else
      retvalu = xx
   End If
   clip = (retvalu)
End Function
Public Function clip2(ByVal xx As Double, ByVal xlow As _
      Double, ByVal xhigh As Double) As Double
   Dim retvalu As Double
   If (xx <= xlow) Then
      retvalu = xlow
   ElseIf (xx <= xhigh) Then
      retvalu = xx
   Else
      retvalu = xhigh
   End If
   clip2 = (retvalu)
End Function
Public Function clip2x(ByVal xx As Double, ByVal xa As Double _
      , ByVal xb As Double) As Double
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
   clip2x = (retvalu)
End Function
Public Function sba(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (- 1.0 < xx And xx < 1.0) Then
      retvalu = xx
   Else
      retvalu = 1.0 / xx
   End If
   sba = (retvalu)
End Function
Public Function ratio(ByVal aa As Double, ByVal bb As Double) _
      As Double
   Dim rati As Double
   If (Math.Abs(aa) < Math.Abs(bb)) Then
      rati = aa / bb
   Else
      rati = bb / aa
   End If
   ratio = (rati)
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
   horner = (sum_curr)
End Function
Public Function chebeval(ByVal xx As Double, ByVal deg As _
      Long, cheb_arr_pc() As Double) As Double
   Dim ba As Double
   Dim bb As Double
   Dim bc As Double
   Dim ii As Long
   xx = xx * 2
   ba = cheb_arr_pc(deg)
   bb = 0.0
   bc = 0.0
   For ii = deg - 1 To 0 Step - 1
      bc = bb
      bb = ba
      ba = xx * bb - bc + cheb_arr_pc(ii)
   Next
   chebeval = (((ba - bc) / 2.0))
End Function
Public Function ln(ByVal xx As Double) As Double
   ln = ((Math.Log(xx)))
End Function
Public Function lg(ByVal xx As Double) As Double
   lg = ((Math.Log(xx) / LNTWO))
End Function
Public Function log10(ByVal xx As Double) As Double
   log10 = ((Math.Log(xx) / Math.Log(10.0)))
End Function
Public Function l10(ByVal xx As Double) As Double
   l10 = ((Math.Log(xx) / Math.Log(10.0)))
End Function
Public Function log2(ByVal xx As Double) As Double
   log2 = ((Math.Log(xx) / LNTWO))
End Function
Public Function fmod(ByVal xx As Double, ByVal yymodulus As _
      Double) As Double
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
   fmod = (retvalu)
End Function
Public Function modf(ByVal xx As Double, ByRef _
      ret_int_arr_p() As Double) As Double
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
   modf = (retvalu)
End Function
Public Function fmody(ByVal xx As Double, ByVal yymodulus As _
      Double) As Double
   Dim retvalu As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = xx - floor(xx / yymodulus) * yymodulus
   Else
      retvalu = 0.0
   End If
   fmody = (retvalu)
End Function
Public Function fmodu(ByVal xx As Double, ByVal yymodulus As _
      Double) As Double
   Dim retvalu As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = fmod(xx, yymodulus)
      If (retvalu < 0.0) Then
         retvalu = retvalu + Math.Abs(yymodulus)
      End If
   Else
      retvalu = 0.0
   End If
   fmodu = (retvalu)
End Function
Public Function remquou(ByVal xx As Double, ByVal yymodulus _
      As Double, ByRef ret_int_arr_p() As Double) As Double
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
   remquou = (retvalu)
End Function
Public Function fmods(ByVal xx As Double, ByVal yymodulus As _
      Double) As Double
   Dim retvalu As Double
   Dim ayy As Double
   Dim lim As Double
   If (yymodulus < 0.0 Or 0.0 < yymodulus) Then
      retvalu = fmod(xx, yymodulus)
      ayy = Math.Abs(yymodulus)
      lim = ayy / 2
      If (retvalu < - lim) Then
         retvalu = retvalu + ayy
      ElseIf (lim <= retvalu) Then
         retvalu = retvalu - ayy
      End If
   Else
      retvalu = 0.0
   End If
   fmods = (retvalu)
End Function
Public Function pow2(ByVal expo As Double) As Double
   pow2 = ((Pow(2.0, expo)))
End Function
Public Function pow10(ByVal expo As Double) As Double
   pow10 = ((Pow(10.0, expo)))
End Function
Public Function sigmoid(ByVal xx As Double) As Double
   sigmoid = ((1.0 / (1.0 + Math.Exp(-xx))))
End Function
Public Function sigmoidinv(ByVal xx As Double) As Double
   sigmoidinv = ((- Math.Log(((1.0 / xx - 0.5) - 0.5))))
End Function
Public Function sigmoid3(ByVal aa As Double, ByVal bb As _
      Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim xzero As Double
   Dim taa As Double
   If (aa <= 0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Log((1.0 - aa) / aa)
      alfa = Math.Log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      retvalu = 1.0 / (1.0 + Math.Exp(alfa * (xx - xzero)))
   End If
   sigmoid3 = (retvalu)
End Function
Public Function taninv3(ByVal aa As Double, ByVal bb As _
      Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim taa As Double
   If (aa <= 0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Tan((aa - 0.5) * Kw.PI)
      alfa = Math.Tan((bb - 0.5) * Kw.PI) - taa
      retvalu = taninv(alfa * xx + taa) / Kw.PI + 0.5
   End If
   taninv3 = (retvalu)
End Function
Public Function sigmoid3d(ByVal aa As Double, ByVal bb As _
      Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim alfa As Double
   Dim xzero As Double
   Dim taa As Double
   Dim expa As Double
   If (aa <= 0 Or 1.0 <= aa Or bb <= 0.0 Or 1.0 <= bb) Then
      retvalu = 0.0
   Else
      taa = Math.Log((1.0 - aa) / aa)
      alfa = Math.Log((1.0 - bb) / bb) - taa
      xzero = -taa / alfa
      expa = Math.Exp(alfa * (xx - xzero))
      retvalu = -alfa * expa / Kw.square(1 + expa)
   End If
   sigmoid3d = (retvalu)
End Function
Public Function sqrtx(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = -Sqr(-xx)
   Else
      retvalu = Sqr(xx)
   End If
   sqrtx = (retvalu)
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
   smooth = (retvalu)
End Function
Public Function hypot(ByVal xx As Double, ByVal yy As Double) _
      As Double
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
   hypot = (retvalu)
End Function
Public Function hypot1(ByVal xx As Double) As Double
   hypot1 = ((hypot(1.0, xx)))
End Function
Public Function hypot1inv(ByVal xx As Double) As Double
   hypot1inv = ((Sqr(xx * xx - 1.0)))
End Function
Public Function hypot3(ByVal xx As Double, ByVal yy As Double _
      , ByVal zz As Double) As Double
   hypot3 = ((Sqr(xx * xx + yy * yy + zz * zz)))
End Function
Public Function topyh(ByVal xx As Double, ByVal yy As Double) _
      As Double
   Dim retvalu As Double
   Dim xsq As Double
   Dim ysq As Double
   xsq = xx * xx
   ysq = yy * yy
   If (ysq <= 0.0) Then
      retvalu = xx
   ElseIf (xsq <= 0) Then
      retvalu = yy
   ElseIf (xsq < ysq) Then
      xsq = xsq / ysq
      retvalu = -sign(xx) * Sqr(1.0 - xsq) * Math.Abs(yy)
   Else
      ysq = ysq / xsq
      retvalu = Sqr(1.0 - ysq) * xx
   End If
   topyh = (retvalu)
End Function
Public Function topyh1(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < - 1.0 Or 1.0 < xx) Then
      retvalu = -Sqr(xx * xx - 1.0)
   Else
      retvalu = Sqr(1.0 - xx * xx)
   End If
   topyh1 = (retvalu)
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
   cnv_dbl2si16 = (retvalu)
End Function
Public Function k2tempc(ByVal temp_k As Double) As Double
   k2tempc = (((temp_k - Kw.K_AT_0TEMPC) * Kw.KELVIN / Kw.DEGC))
End Function
Public Function tempc2k(ByVal temp_c As Double) As Double
   tempc2k = (temp_c * Kw.DEGC / Kw.KELVIN + Kw.K_AT_0TEMPC)
End Function
Public Function tempc(ByVal temp_c As Double) As Double
   tempc = ((tempc2k(temp_c)))
End Function
Public Function k2tempf(ByVal temp_k As Double) As Double
   k2tempf = (((temp_k - Kw.K_AT_0TEMPF) * Kw.KELVIN / Kw.DEGF))
End Function
Public Function tempf2k(ByVal temp_f As Double) As Double
   tempf2k = (temp_f * Kw.DEGF / Kw.KELVIN + Kw.K_AT_0TEMPF)
End Function
Public Function tempf(ByVal temp_f As Double) As Double
   tempf = ((tempf2k(temp_f)))
End Function
Public Function k2tempr(ByVal temp_k As Double) As Double
   k2tempr = (((temp_k - Kw.K_AT_0TEMPR) * Kw.KELVIN / Kw.DEGR))
End Function
Public Function tempr2k(ByVal temp_r As Double) As Double
   tempr2k = (temp_r * Kw.DEGR / Kw.KELVIN + Kw.K_AT_0TEMPR)
End Function
Public Function tempr(ByVal temp_r As Double) As Double
   tempr = ((tempr2k(temp_r)))
End Function
Public Function tempf2tempc(ByVal temp_f As Double) As Double
   tempf2tempc = ((k2tempc(tempf2k(temp_f))))
End Function
Public Function tempc2tempf(ByVal temp_c As Double) As Double
   tempc2tempf = ((k2tempf(tempc2k(temp_c))))
End Function
Public Function iszero(ByVal xx As Double) As Boolean
   iszero = (0.0 <= xx And xx <= 0.0)
End Function
Public Function iseven(ByVal xx As Double) As Boolean
   iseven = ((Kw.fmodu(xx, 2.0) < 1.0))
End Function
Public Function isodd(ByVal xx As Double) As Boolean
   isodd = ((1.0 <= Kw.fmodu(xx, 2.0)))
End Function
Public Function ismult(ByVal xx As Double, ByVal mult As _
      Double) As Boolean
   ismult = ((Kw.fmodu(xx, mult) < 1.0))
End Function
Public Function ismultl(ByVal xx As Long, ByVal mult As Long) _
      As Boolean
   Dim retvalu_bol As Boolean
   If (xx Mod mult = 0) Then
      retvalu_bol = True
   Else
      retvalu_bol = False
   End If
   ismultl = (retvalu_bol)
End Function
Public Function isgt(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
   isgt = (yy < xx)
End Function
Public Function islt(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
   islt = (xx < yy)
End Function
Public Function isge(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
   isge = (yy <= xx)
End Function
Public Function isle(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
   isle = (xx <= yy)
End Function
Public Function ispos(ByVal xx As Double) As Boolean
   ispos = (0.0 < xx)
End Function
Public Function isneg(ByVal xx As Double) As Boolean
   isneg = (xx < 0.0)
End Function
Public Function iseq(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
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
   iseq = (retvalu_bol)
End Function
Public Function isint(ByVal xx As Double) As Boolean
   isint = ((Kw.iseq(xx, floor(xx))))
End Function
Public Function isnegint(ByVal xx As Double) As Boolean
   isnegint = ((xx < 0.0 And Kw.iseq(xx, floor(xx))))
End Function
Public Function isposint(ByVal xx As Double) As Boolean
   isposint = ((0.0 < xx And Kw.iseq(xx, floor(xx))))
End Function
Public Function ifzero(ByVal cond As Double, ByVal tru_val As _
      Double, ByVal fal_val As Double) As Double
   Dim retvalu As Double
   If (cond < 0.0 Or 0.0 < cond) Then
      retvalu = fal_val
   Else
      retvalu = tru_val
   End If
   ifzero = (retvalu)
End Function
Public Function isalmostequal(ByVal xx As Double, ByVal yy As _
      Double, ByVal epsratio As Double) As Boolean
   isalmostequal = ((Math.Abs(xx - yy) <= Math.Abs(epsratio * _
         xx)))
End Function
Public Function iswithin(ByVal xx As Double, ByVal yy As _
      Double, ByVal delta As Double) As Boolean
   iswithin = (xx - delta <= yy And yy <= xx + delta)
End Function
Public Function isbetweenx(ByVal xx As Double, ByVal min_xx _
      As Double, ByVal max_xx As Double) As Boolean
   isbetweenx = (min_xx < xx And xx < max_xx)
End Function
Public Function isbetween(ByVal xx As Double, ByVal min_xx As _
      Double, ByVal max_xx As Double) As Boolean
   isbetween = (min_xx <= xx And xx <= max_xx)
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
   isleapyear = (retvalu_bol)
End Function
Public Function isss(ByVal xx As Double, ByVal yy As Double) _
      As Boolean
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
   isss = (retvalu_bol)
End Function
Public Function issignsame(ByVal xx As Double, ByVal yy As _
      Double) As Boolean
   issignsame = ((Kw.isss(xx, yy)))
End Function
Public Function isfloorsame(ByVal xx As Double, ByVal yy As _
      Double, ByVal multy As Double) As Boolean
   isfloorsame = ((Kw.iseq(floor(xx * multy), floor(yy * _
         multy))))
End Function
Public Function magicset() As Long
   magicset = (LC_MAGIC_INT)
End Function
Public Function magicnot() As Long
   magicnot = (LC_MAGIC_INT_NOT)
End Function
Public Function ismagic(ByVal xx As Long) As Boolean
   ismagic = ((iseq(xx, magicset())))
End Function
Public Function rtoz(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0) Then
      retvalu = Ceil(xx)
   Else
      retvalu = floor(xx)
   End If
   rtoz = (retvalu)
End Function
Public Function rtoi(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (0.0 <= xx) Then
      retvalu = Ceil(xx)
   Else
      retvalu = floor(xx)
   End If
   rtoi = (retvalu)
End Function
Public Function bankers(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = floor(xx + 0.5)
   If (Kw.isint(xx + 0.5) And Kw.isodd(retvalu)) Then
      retvalu = retvalu - 1.0
   End If
   bankers = (retvalu)
End Function
Public Function round(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = floor(xx + 0.5)
   round = (retvalu)
End Function
Public Function iround(ByVal xx As Double) As Long
   Dim retvalu As Long
   retvalu = floor(xx + 0.5)
   iround = (retvalu)
End Function
Public Function round2(ByVal xx As Double, ByVal yy As _
      Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = xx
   Else
      retvalu = Kw.round(xx / yy) * yy
   End If
   round2 = (retvalu)
End Function
Public Function roundy(ByVal xx As Double, ByVal yy As Double _
      , ByVal shf As Double) As Double
   Dim retvalu As Double
   If (yy < 0.0 Or 0.0 < yy) Then
      retvalu = (Kw.round((xx - shf) / yy) * yy + shf)
   Else
      retvalu = xx
   End If
   roundy = (retvalu)
End Function
Public Function rtomsd(ByVal fs As Double, ByVal msds As _
      Long) As Double
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
   rtomsd = (retvalu)
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
   rto125 = (retvalu)
End Function
Public Function floor2(ByVal xx As Double, ByVal yy As _
      Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = 0.0
   Else
      retvalu = floor(xx / Math.Abs(yy)) * Math.Abs(yy)
   End If
   floor2 = (retvalu)
End Function
Public Function ceil2(ByVal xx As Double, ByVal yy As Double) _
      As Double
   Dim retvalu As Double
   If (Kw.iszero(yy)) Then
      retvalu = 0.0
   Else
      retvalu = Ceil(xx / Math.Abs(yy)) * Math.Abs(yy)
   End If
   ceil2 = (retvalu)
End Function
Public Function fmod2(ByVal xx As Double, ByVal minn As _
      Double, ByVal maxx As Double) As Double
   Dim retvalu As Double
   If (Kw.iseq(maxx, minn)) Then
      retvalu = 0.0
   Else
      retvalu = Kw.fmodu(xx - minn, maxx - minn) + minn
   End If
   fmod2 = (retvalu)
End Function
Public Function frac(ByVal xx As Double) As Double
   frac = ((xx - floor(xx)))
End Function
Public Function trunc(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (0.0 <= xx) Then
      retvalu = xx - floor(xx)
   Else
      retvalu = xx - Ceil(xx)
   End If
   trunc = (retvalu)
End Function
Public Function fmul(ByVal xx As Double, ByVal pp As Double) _
      As Double
   Dim lpp As Double
   lpp = Math.Log(pp)
   fmul = ((Math.Exp(lpp * Kw.frac(Math.Log(xx) / lpp))))
End Function
Public Function dist(ByVal xx As Double, ByVal mm As Double) _
      As Double
   Dim retvalu As Double
   Dim axx As Double
   Dim amm As Double
   axx = Math.Abs(xx)
   amm = Math.Abs(mm)
   retvalu = Kw.fmod(axx, amm)
   If (amm < 2.0 * retvalu) Then
      retvalu = amm - retvalu
   End If
   dist = (retvalu)
End Function
Public Function ddist(ByVal xx As Double, ByVal mm As Double) _
      As Double
   Dim retvalu As Double
   Dim rema As Double
   Dim amm As Double
   If (Kw.iszero(mm)) Then
      retvalu = 0.0
   Else
      amm = Math.Abs(mm)
      rema = xx - floor(xx / amm) * amm
      If (amm < 2.0 * rema) Then
         rema = rema - amm
      End If
      retvalu = rema
   End If
   ddist = (retvalu)
End Function
Public Function sinc(ByVal xx_rad As Double) As Double
   Dim retvalu As Double
   If (xx_rad < 0.0 Or 0.0 < xx_rad) Then
      retvalu = Math.Sin(xx_rad) / xx_rad
   Else
      retvalu = 1
   End If
   sinc = (retvalu)
End Function
Public Function sincinv(ByVal yy As Double) As Double
   Dim min_yy As Double
   Dim start_xx As Double
   Dim aa As Double
   Dim bb As Double
   Dim nrvx_ii As Long
   Dim nrvx_yy As Double
   Dim nrvx_xx As Double
   Dim nrvx_dy As Double
   Dim nrvx_xp As Double
   min_yy = sinc(LC_SINC_MIN_X)
   If (yy <= min_yy) Then
      nrvx_xx = LC_SINC_MIN_X
   ElseIf (yy < 1.0) Then
      aa = yy - min_yy
      bb = 1.0 - yy
      start_xx = (aa * Sqr(5.0 * bb) + bb * (LC_SINC_MIN_X - _
            Sqr(6 * aa))) / (aa + bb)
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
   sincinv = (nrvx_xx)
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
         term = term * nxr_sqr / (ii * (ii - 1))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 2
      Loop
      retvalu = trigsign * sum_curr * xr_rad / xx_rad
   End If
   sincc = (retvalu)
End Function
Public Function versin(ByVal xx_rad As Double) As Double
   Dim trigsign As Double
   Dim xr_rad As Double
   Dim xr_sqr As Double
   Dim ii As Long
   Dim sum_curr As Double
   Dim term As Double
   Dim sum_prev As Double
   xr_rad = Kw.fmod(xx_rad, Kw.TAU)
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
      term = term * xr_sqr / (ii * (ii - 1))
      sum_prev = sum_curr
      sum_curr = sum_curr + term
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 2
   Loop
   sum_curr = sum_curr * - xr_sqr
   If (trigsign < 0) Then
      sum_curr = 2.0 - sum_curr
   End If
   versin = (sum_curr)
End Function
Public Function haversin(ByVal xx_rad As Double) As Double
   haversin = ((versin(xx_rad) / 2.0))
End Function
Public Function tur2deg(ByVal xx_tur As Double) As Double
   tur2deg = (xx_tur * Kw.TURN / Kw.ARCDEG)
End Function
Public Function deg2tur(ByVal xx_deg As Double) As Double
   deg2tur = (xx_deg * Kw.ARCDEG / Kw.TURN)
End Function
Public Function tur2rad(ByVal xx_tur As Double) As Double
   tur2rad = (xx_tur * Kw.TURN / Kw.RADIAN)
End Function
Public Function rad2tur(ByVal xx_rad As Double) As Double
   rad2tur = (xx_rad * Kw.RADIAN / Kw.TURN)
End Function
Public Function tur2sec(ByVal xx_tur As Double) As Double
   tur2sec = (xx_tur * Kw.TURN / Kw.ARCSEC)
End Function
Public Function sec2tur(ByVal xx_sec As Double) As Double
   sec2tur = (xx_sec * Kw.ARCSEC / Kw.TURN)
End Function
Public Function rad2deg(ByVal xx_rad As Double) As Double
   rad2deg = (xx_rad * Kw.RADIAN / Kw.ARCDEG)
End Function
Public Function deg2rad(ByVal xx_deg As Double) As Double
   deg2rad = (xx_deg * Kw.ARCDEG / Kw.RADIAN)
End Function
Public Function rad2sec(ByVal xx_rad As Double) As Double
   rad2sec = (xx_rad * Kw.RADIAN / Kw.ARCSEC)
End Function
Public Function sec2rad(ByVal xx_sec As Double) As Double
   sec2rad = (xx_sec * Kw.ARCSEC / Kw.RADIAN)
End Function
Public Function deg2sec(ByVal xx_deg As Double) As Double
   deg2sec = (xx_deg * Kw.ARCDEG / Kw.ARCSEC)
End Function
Public Function sec2deg(ByVal xx_sec As Double) As Double
   sec2deg = (xx_sec * Kw.ARCSEC / Kw.ARCDEG)
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
   rad2dms = ((dd_deg + (mm_min + dg / 100.0) / 100.0))
End Function
Public Function rad2dms2(ByVal xx_rads As Double) As Double
   Dim dg As Double
   Dim dd_deg_arr(2) As Double
   Dim mm_min_arr(2) As Double
   dg = rad2deg(xx_rads)
   dg = Kw.modf(dg, dd_deg_arr) * Kw.ARCDEG / Kw.ARCMIN
   dg = Kw.modf(dg, mm_min_arr) * Kw.ARCMIN / Kw.ARCSEC
   rad2dms2 _
         = ((dd_deg_arr(0) + (mm_min_arr(0) + dg / 100.0) / _
               100.0))
End Function
Public Function dms2rad(ByVal xx_dms As Double) As Double
   Dim dd_deg As Double
   Dim mm_min As Double
   Dim dg As Double
   dd_deg = floor(xx_dms)
   dg = (xx_dms - dd_deg) * 100.0
   mm_min = floor(dg)
   dg = (dg - mm_min) * 100.0
   dms2rad _
         = (((dg * Kw.ARCSEC + mm_min * Kw.ARCMIN + dd_deg * _
               Kw.ARCDEG) / Kw.RADIAN))
End Function
Public Function deg2dms(ByVal xx_deg As Double) As Double
   deg2dms = ((rad2dms(deg2rad(xx_deg))))
End Function
Public Function dms2deg(ByVal xx_dms As Double) As Double
   dms2deg = ((rad2deg(dms2rad(xx_dms))))
End Function
Public Function cot(ByVal xx_rad As Double) As Double
   cot = ((Math.Cos(xx_rad) / Math.Sin(xx_rad)))
End Function
Public Function sec(ByVal xx_rad As Double) As Double
   sec = ((1.0 / Math.Cos(xx_rad)))
End Function
Public Function csc(ByVal xx_rad As Double) As Double
   csc = ((1.0 / Math.Sin(xx_rad)))
End Function
Public Function sininv(ByVal xx As Double) As Double
   sininv = ((Atan2(xx, Kw.topyh1(xx))))
End Function
Public Function cosinv(ByVal xx As Double) As Double
   cosinv = ((Atan2(Kw.topyh1(xx), xx)))
End Function
Public Function taninv(ByVal xx As Double) As Double
   taninv = ((Atan2(xx, 1.0)))
End Function
Public Function cotinv(ByVal xx As Double) As Double
   cotinv = ((Atan2(1.0, xx)))
End Function
Public Function secinv(ByVal xx As Double) As Double
   secinv = ((Atan2(Sqr(xx * xx - 1.0), Kw.sign(xx))))
End Function
Public Function cscinv(ByVal xx As Double) As Double
   cscinv = ((Atan2(Kw.sign(xx), Sqr(xx * xx - 1.0))))
End Function
Public Function sinh(ByVal xx As Double) As Double
   sinh = (((Math.Exp(xx) - Math.Exp(-xx)) / 2.0))
End Function
Public Function cosh(ByVal xx As Double) As Double
   cosh = (((Math.Exp(xx) + Math.Exp(-xx)) / 2.0))
End Function
Public Function tanh(ByVal xx As Double) As Double
   tanh = ((sinh(xx) / cosh(xx)))
End Function
Public Function coth(ByVal xx As Double) As Double
   coth = ((cosh(xx) / sinh(xx)))
End Function
Public Function sech(ByVal xx As Double) As Double
   sech = ((1.0 / cosh(xx)))
End Function
Public Function csch(ByVal xx As Double) As Double
   csch = ((1.0 / sinh(xx)))
End Function
Public Function sinhinv(ByVal xx As Double) As Double
   sinhinv = ((Math.Log(xx + Sqr(xx * xx + 1.0))))
End Function
Public Function coshinv(ByVal xx As Double) As Double
   coshinv = ((Math.Log(xx + Sqr(xx * xx - 1.0))))
End Function
Public Function tanhinv(ByVal xx As Double) As Double
   tanhinv = ((Math.Log((1.0 + xx) / (1.0 - xx)) / 2.0))
End Function
Public Function cothinv(ByVal xx As Double) As Double
   cothinv = ((Math.Log((xx + 1.0) / (xx - 1.0)) / 2.0))
End Function
Public Function sechinv(ByVal xx As Double) As Double
   sechinv = ((Math.Log((1.0 + Kw.topyh1(xx)) / xx)))
End Function
Public Function cschinv(ByVal xx As Double) As Double
   cschinv = ((Math.Log((1.0 + Sqr(1.0 + xx * xx)) / xx)))
End Function
Public Function atan2h(ByVal xx As Double, ByVal yy As _
      Double) As Double
   Dim retvalu As Double
   If (Math.Abs(yy) <= Math.Abs(xx)) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log((yy + xx) / (yy - xx)) / 2.0
   End If
   atan2h = (retvalu)
End Function
Public Function atan2u(ByVal xx As Double, ByVal yy As _
      Double) As Double
   atan2u = ((Kw.fmodu(Atan2(xx, yy), Kw.tur2rad(1.0))))
End Function
Public Function sind(ByVal xx As Double) As Double
   sind = ((Math.Sin(deg2rad(xx))))
End Function
Public Function sindinv(ByVal xx As Double) As Double
   sindinv = ((rad2deg(sininv(xx))))
End Function
Public Function cosd(ByVal xx As Double) As Double
   cosd = ((Math.Cos(deg2rad(xx))))
End Function
Public Function cosdinv(ByVal xx As Double) As Double
   cosdinv = ((rad2deg(cosinv(xx))))
End Function
Public Function tand(ByVal xx As Double) As Double
   tand = ((Math.Tan(deg2rad(xx))))
End Function
Public Function tandinv(ByVal xx As Double) As Double
   tandinv = ((rad2deg(taninv(xx))))
End Function
Public Function cotd(ByVal xx As Double) As Double
   cotd = ((cot(deg2rad(xx))))
End Function
Public Function cotdinv(ByVal xx As Double) As Double
   cotdinv = ((rad2deg(cotinv(xx))))
End Function
Public Function secd(ByVal xx As Double) As Double
   secd = ((sec(deg2rad(xx))))
End Function
Public Function secdinv(ByVal xx As Double) As Double
   secdinv = ((rad2deg(secinv(xx))))
End Function
Public Function cscd(ByVal xx As Double) As Double
   cscd = ((csc(deg2rad(xx))))
End Function
Public Function cscdinv(ByVal xx As Double) As Double
   cscdinv = ((rad2deg(cscinv(xx))))
End Function
Public Function atan2d(ByVal xx As Double, ByVal yy As _
      Double) As Double
   atan2d = ((rad2deg(Atan2(xx, yy))))
End Function
Public Function sint(ByVal xx As Double) As Double
   sint = ((Math.Sin(tur2rad(xx))))
End Function
Public Function sintinv(ByVal xx As Double) As Double
   sintinv = ((rad2tur(sininv(xx))))
End Function
Public Function cost(ByVal xx As Double) As Double
   cost = ((Math.Cos(tur2rad(xx))))
End Function
Public Function costinv(ByVal xx As Double) As Double
   costinv = ((rad2tur(cosinv(xx))))
End Function
Public Function tant(ByVal xx As Double) As Double
   tant = ((Math.Tan(tur2rad(xx))))
End Function
Public Function tantinv(ByVal xx As Double) As Double
   tantinv = ((rad2tur(taninv(xx))))
End Function
Public Function cott(ByVal xx As Double) As Double
   cott = ((cot(tur2rad(xx))))
End Function
Public Function cottinv(ByVal xx As Double) As Double
   cottinv = ((rad2tur(cotinv(xx))))
End Function
Public Function sect(ByVal xx As Double) As Double
   sect = ((sec(tur2rad(xx))))
End Function
Public Function sectinv(ByVal xx As Double) As Double
   sectinv = ((rad2tur(secinv(xx))))
End Function
Public Function csct(ByVal xx As Double) As Double
   csct = ((csc(tur2rad(xx))))
End Function
Public Function csctinv(ByVal xx As Double) As Double
   csctinv = ((rad2tur(cscinv(xx))))
End Function
Public Function atan2t(ByVal xx As Double, ByVal yy As _
      Double) As Double
   atan2t = ((rad2tur(Atan2(xx, yy))))
End Function
Public Function ln1p(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Double
   Dim start As Double
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Log(1.0 + xx)
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / _
            Math.Log(Math.Abs(xx))))
      If (start < 2) Then
         start = 2
      End If
      sum_curr = 0.0
      For jj = start To 1 Step - 1
         sum_curr = 1.0 / jj - sum_curr * xx
      Next
      retvalu = sum_curr * xx
   End If
   ln1p = (retvalu)
End Function
Public Function expm1(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Double
   Dim start As Double
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Exp(xx) - 1.0
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / _
            Math.Log(Math.Abs(xx))))
      If (start < 2) Then
         start = 2
      End If
      sum_curr = 0.0
      For jj = start To 1 Step - 1
         sum_curr = xx * (1.0 + sum_curr) / jj
      Next
      retvalu = sum_curr
   End If
   expm1 = (retvalu)
End Function
Public Function cosm1(ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim sum_curr As Double
   Dim jj As Double
   Dim start As Double
   Dim xr_sqr As Double
   If (0.1 < Math.Abs(xx)) Then
      retvalu = Math.Cos(xx) - 1.0
   ElseIf (Kw.iszero(xx)) Then
      retvalu = 0.0
   Else
      start = Ceil(Math.Abs(Math.Log(Kw.DBLEPS) / _
            Math.Log(Math.Abs(xx))))
      If (start < 6) Then
         start = 6
      ElseIf (Kw.isodd(start)) Then
         start = start + 1
      End If
      xr_sqr = -xx * xx
      sum_curr = 1.0 / (start * (start + 1))
      For jj = start To 2 Step - 2
         sum_curr = sum_curr + 1
         sum_curr = sum_curr * xr_sqr / (jj * (jj - 1))
      Next
      retvalu = sum_curr
   End If
   cosm1 = (retvalu)
End Function
Public Function lns(ByVal xx As Double) As Double
   Dim aa As Double
   Dim retvalu As Double
   aa = Math.Abs(xx)
   If (aa < 1.0 / DBLMAX) Then
      retvalu = -DBLMAXLN - 1.0
   Else
      retvalu = Math.Log(aa)
   End If
   lns = (retvalu)
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
   trip = (retvalu)
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
   lf_cbrtx_gt_zero = (yy)
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
      If (yy < 0) Then
         init_xx = -init_xx
      End If
      nrvx_xx = init_xx
      For nrvx_ii = 0 To 20
         nrvx_xp = nrvx_xx
         nrvx_dy = 3 * nrvx_xx
         If (Kw.iszero(nrvx_dy)) Then
            Exit For
         End If
         nrvx_yy = nrvx_xx * nrvx_xx - yy / nrvx_xx
         nrvx_xx = nrvx_xx - nrvx_yy / nrvx_dy
         If (Kw.iseq(nrvx_xp, nrvx_xx)) Then
            Exit For
         End If
      Next
   Else
      nrvx_xx = 0.0
   End If
   cbrt = (nrvx_xx)
End Function
Public Function cuberoot(ByVal xx As Double) As Double
   cuberoot = ((cbrt(xx)))
End Function
Public Function squareroot(ByVal xx As Double) As Double
   squareroot = ((Sqr(xx)))
End Function
Private Function lf_continued_fraction(ByVal orig As Double, _
      ByVal show_diff As Long) As Long
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
      Debug.Print "";
      Debug.Print whole;
      If (0 <= show_diff) Then
         Debug.Print vbTab;
         Debug.Print num_b;
         Debug.Print " / ";
         Debug.Print den_b;
         Debug.Print vbTab;
         Debug.Print appr;
         If (0 < show_diff) Then
            Debug.Print vbTab;
            Debug.Print diff;
         End If
         Debug.Print vbNewLine;
      Else
         Debug.Print " ";
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
   lf_continued_fraction = (steps)
End Function
Public Function print_contfra(ByVal orig As Double) As Long
   print_contfra = ((lf_continued_fraction(orig, -1)))
End Function
Public Function print_contfrac(ByVal orig As Double) As Long
   print_contfrac = ((lf_continued_fraction(orig, 0)))
End Function
Public Function print_contfracd(ByVal orig As Double) As Long
   print_contfracd = ((lf_continued_fraction(orig, 1)))
End Function
Public Function print_num2char(ByVal num As Long) As Long
   If (num < 32) Then
      If (num < 16) Then
         If (num < 8) Then
            If (num < 4) Then
               If (num < 2) Then
                  If (num < 1) Then
                     Debug.Print "0";
                  Else
                     Debug.Print "1";
                  End If
               ElseIf (num < 3) Then
                  Debug.Print "2";
               Else
                  Debug.Print "3";
               End If
            ElseIf (num < 6) Then
               If (num < 5) Then
                  Debug.Print "4";
               Else
                  Debug.Print "5";
               End If
            ElseIf (num < 7) Then
               Debug.Print "6";
            Else
               Debug.Print "7";
            End If
         ElseIf (num < 12) Then
            If (num < 10) Then
               If (num < 9) Then
                  Debug.Print "8";
               Else
                  Debug.Print "9";
               End If
            ElseIf (num < 11) Then
               Debug.Print "a";
            Else
               Debug.Print "b";
            End If
         ElseIf (num < 14) Then
            If (num < 13) Then
               Debug.Print "c";
            Else
               Debug.Print "d";
            End If
         ElseIf (num < 15) Then
            Debug.Print "e";
         Else
            Debug.Print "f";
         End If
      ElseIf (num < 24) Then
         If (num < 20) Then
            If (num < 18) Then
               If (num < 17) Then
                  Debug.Print "g";
               Else
                  Debug.Print "h";
               End If
            ElseIf (num < 19) Then
               Debug.Print "i";
            Else
               Debug.Print "j";
            End If
         ElseIf (num < 22) Then
            If (num < 21) Then
               Debug.Print "k";
            Else
               Debug.Print "l";
            End If
         ElseIf (num < 23) Then
            Debug.Print "m";
         Else
            Debug.Print "n";
         End If
      ElseIf (num < 28) Then
         If (num < 26) Then
            If (num < 25) Then
               Debug.Print "o";
            Else
               Debug.Print "p";
            End If
         ElseIf (num < 27) Then
            Debug.Print "q";
         Else
            Debug.Print "r";
         End If
      ElseIf (num < 30) Then
         If (num < 29) Then
            Debug.Print "s";
         Else
            Debug.Print "t";
         End If
      ElseIf (num < 31) Then
         Debug.Print "u";
      Else
         Debug.Print "v";
      End If
   ElseIf (num < 48) Then
      If (num < 40) Then
         If (num < 36) Then
            If (num < 34) Then
               If (num < 33) Then
                  Debug.Print "w";
               Else
                  Debug.Print "x";
               End If
            ElseIf (num < 35) Then
               Debug.Print "y";
            Else
               Debug.Print "z";
            End If
         ElseIf (num < 38) Then
            If (num < 37) Then
               Debug.Print "A";
            Else
               Debug.Print "B";
            End If
         ElseIf (num < 39) Then
            Debug.Print "C";
         Else
            Debug.Print "D";
         End If
      ElseIf (num < 44) Then
         If (num < 42) Then
            If (num < 41) Then
               Debug.Print "E";
            Else
               Debug.Print "F";
            End If
         ElseIf (num < 43) Then
            Debug.Print "G";
         Else
            Debug.Print "H";
         End If
      ElseIf (num < 46) Then
         If (num < 45) Then
            Debug.Print "I";
         Else
            Debug.Print "J";
         End If
      ElseIf (num < 47) Then
         Debug.Print "K";
      Else
         Debug.Print "L";
      End If
   ElseIf (num < 56) Then
      If (num < 52) Then
         If (num < 50) Then
            If (num < 49) Then
               Debug.Print "M";
            Else
               Debug.Print "N";
            End If
         ElseIf (num < 51) Then
            Debug.Print "O";
         Else
            Debug.Print "P";
         End If
      ElseIf (num < 54) Then
         If (num < 53) Then
            Debug.Print "Q";
         Else
            Debug.Print "R";
         End If
      ElseIf (num < 55) Then
         Debug.Print "S";
      Else
         Debug.Print "T";
      End If
   ElseIf (num < 60) Then
      If (num < 58) Then
         If (num < 57) Then
            Debug.Print "U";
         Else
            Debug.Print "V";
         End If
      ElseIf (num < 59) Then
         Debug.Print "W";
      Else
         Debug.Print "X";
      End If
   ElseIf (num < 62) Then
      If (num < 61) Then
         Debug.Print "Y";
      Else
         Debug.Print "Z";
      End If
   ElseIf (num < 63) Then
      Debug.Print "_";
   ElseIf (num < 64) Then
      Debug.Print "?";
   Else
      Debug.Print "(";
      Debug.Print num;
      Debug.Print ")";
   End If
   print_num2char = (num)
End Function
Public Function print_base_out(ByVal num As Long, ByVal baset _
      As Long) As Long
   Dim digits_arr(65) As Long
   Dim dig_count As Long
   Dim ii As Long
   If (num < 0) Then
      Debug.Print "-";
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
      Call print_num2char(digits_arr(ii))
   Next
   print_base_out = (dig_count)
End Function
Public Function print_base_outf(ByVal num As Double, ByVal _
      baset As Long) As Long
   Dim dig_count As Long
   Dim ii As Long
   Dim frc As Double
   Dim dig As Long
   Dim lim As Long
   dig_count = 0
   If (num < 0.0) Then
      Debug.Print "-";
      num = -num
      dig_count = dig_count + 1
   End If
   dig_count = dig_count + print_base_out(floorl(num), baset) + 1
   Debug.Print ".";
   lim = ceill(-lg(DBLEPS) / lg(baset))
   frc = frac(num) * baset
   ii = 1
   Do While (Not Kw.iszero(frc) And ii <= lim)
      dig = floorl(frc)
      Call print_num2char(dig)
      frc = frc - dig
      frc = frc * baset
      ii = ii + 1
   Loop
   print_base_outf = (dig_count + lim)
End Function
Public Function f21(ByVal aa As Double, ByVal bb As Double, _
      ByVal cc As Double, ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim nn As Double
   If (1 <= Math.Abs(zz)) Then
      sum_curr = 0.0
   Else
      sum_curr = 1.0
      term = 1.0
      nn = 0
      Do While (True)
         term = term * ((aa + nn) * (bb + nn) * zz / ((cc + _
               nn) * (nn + 1)))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
      Loop
   End If
   f21 = (sum_curr)
End Function
Public Function f11(ByVal aa As Double, ByVal bb As Double, _
      ByVal zz As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim nn As Double
   If (1 <= Math.Abs(zz)) Then
      sum_curr = 0.0
   Else
      sum_curr = 1.0
      term = 1.0
      nn = 0
      Do While (True)
         term = term * ((aa + nn) * zz / ((bb + nn) * (nn + 1)))
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_curr, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
      Loop
   End If
   f11 = (sum_curr)
End Function
Private Function lf_lambert_iter(ByVal xx As Double, ByVal _
      nearw_zero As Double) As Double
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
      snn = (wjj + 2.0) / (2.0 * (wjj + 1))
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
   lf_lambert_iter = (wjj)
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
   wp = (retvalu)
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
         near_w = ((((((((((226287557.0 / 37623398400.0) * _
               tnn - 1963.0 / 204120.0) * tnn + 680863.0 / _
               43545600.0) * tnn - 221.0 / 8505.0) * tnn + _
               769.0 / 17280.0) * tnn - 43.0 / 540.0) * tnn + _
               11.0 / 72.0) * tnn - 1.0 / 3.0) * tnn + 1.0) * _
               tnn - 1.0)
      ElseIf (xx < - 0.0510129) Then
         numer = (((6.5794931769023040E+2) * xx + _
               2.5388810188892484E+2) * xx - _
               7.8141767239074400E+0)
         denom = ((((((1.4779341280760887E+3) * xx + _
               9.6217849696986600E+2) * xx + _
               6.8260739999094280E+2) * xx + _
               9.9985670831076100E+1) * xx - _
               6.0439587136908080E+1) * xx + _
               1.0000000000000000E+0)
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
   wm = (retvalu)
End Function
Public Function wpinv(ByVal zz As Double) As Double
   wpinv = ((zz * Math.Exp(zz)))
End Function
Public Function wminv(ByVal zz As Double) As Double
   wminv = ((zz * Math.Exp(zz)))
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
   sinintegral = (sum_curr)
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
   cosintegral = (sum_curr)
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
   Ein = (sum_curr)
End Function
Public Function expintegrali(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = Kw.EULER + Math.Log(Math.Abs(xx)) - Kw.Ein(-xx)
   expintegrali = (retvalu)
End Function
Public Function expintegraln(ByVal nn As Long, ByVal xx As _
      Double) As Double
   expintegraln = ((Pow(xx, nn - 1) * Kw.uigamma(1 - nn, xx)))
End Function
Public Function expintegral1(ByVal xx As Double) As Double
   Dim retvalu As Double
   retvalu = -Kw.EULER - Math.Log(Math.Abs(xx)) + Kw.Ein(xx)
   expintegral1 = (retvalu)
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
   logintegral = (retvalu)
End Function
Public Function carlsonRF(ByVal xx As Double, ByVal yy As _
      Double, ByVal zz As Double) As Double
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
   carlsonRF = ((1.0 / Sqr(xx)))
End Function
Public Function carlsonRC(ByVal xx As Double, ByVal yy As _
      Double) As Double
   Dim lmbd As Double
   Do While (True)
      lmbd = 2 * Sqr(xx * yy) + yy
      xx = (xx + lmbd) / 4.0
      yy = (yy + lmbd) / 4.0
      If (Kw.iseq(xx, yy)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRC = ((1.0 / Sqr(xx)))
End Function
Public Function carlsonRJ(ByVal xx As Double, ByVal yy As _
      Double, ByVal zz As Double, ByVal pp As Double) As Double
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
      If (Kw.iseq(xx, yy) And Kw.iseq(yy, zz) And Kw.iseq(zz, _
            pp)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   carlsonRJ = (3.0 * sigm)
End Function
Public Function carlsonRD(ByVal xx As Double, ByVal yy As _
      Double, ByVal zz As Double) As Double
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
   carlsonRD = (3.0 * sigm)
End Function
Public Function powi(ByVal xx As Long, ByVal nn As Long) As Long
   Dim pp As Long
   Dim sqx As Long
   pp = 1
   sqx = xx
   Do While (0 < nn)
      If (Kw.isodd(nn)) Then
         pp = pp * sqx
      End If
      sqx = sqx * sqx
      nn = (nn \ 2 ^ 1)
   Loop
   powi = (pp)
End Function
Public Function atothenmodp(ByVal aa As Long, ByVal nn As _
      Long, ByVal pp As Long) As Long
   Dim retvalu As Long
   Dim cc As Long
   retvalu = 1
   cc = aa Mod pp
   Do While (0 < nn)
      If (Kw.isodd(nn)) Then
         retvalu = (retvalu * cc) Mod pp
         nn = (nn - 1) / 2
      Else
         nn = nn / 2
      End If
      cc = (cc * cc) Mod pp
   Loop
   atothenmodp = (retvalu)
End Function
Public Function atothenmodx(ByVal aa As Double, ByVal nn As _
      Double, ByVal pp As Double) As Double
   atothenmodx = ((Kw.frac(Math.Exp(nn * Math.Log(aa) - _
         Math.Log(pp))) * pp))
End Function
Public Function ctz(ByVal nn As Long) As Long
   Dim ii As Long
   ii = 0
   Do While (0 = (nn And 1))
      ii = ii + 1
      nn = (nn \ 2 ^ 1)
   Loop
   ctz = (ii)
End Function
Public Function gcd(ByVal aa As Long, ByVal bb As Long) As Long
   Dim cc As Long
   aa = Math.Abs(aa)
   bb = Math.Abs(bb)
   If (bb <= 0) Then
      bb = aa
   Else
      Do While (0 < aa)
         cc = aa
         aa = bb Mod aa
         bb = cc
      Loop
   End If
   gcd = (bb)
End Function
Public Function gcda(ByVal nn As Long, num_arr_pc() As Long) _
      As Long
   Dim ind As Long
   Dim gc As Long
   gc = num_arr_pc(0)
   For ind = 1 To nn - 1
      gc = gcd(gc, num_arr_pc(ind))
   Next
   gcda = (gc)
End Function
Public Function lcm(ByVal aa As Long, ByVal bb As Long) As Long
   lcm = ((aa * bb / gcd(aa, bb)))
End Function
Public Function lcam(ByVal aa As Long, ByVal bb As Long) As Long
   Dim ii As Long
   Dim mm As Long
   If (bb < aa) Then
      ii = aa
      aa = bb
      bb = ii
   End If
   ii = bb
   Do While (True)
      mm = mods(ii, aa)
      If (- 2 <= mm And mm <= 2) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + bb
   Loop
   If (mm = -2) Then
      ii = ii + 1
   ElseIf (0 <= mm) Then
      ii = ii - 1
   End If
   lcam = (ii)
End Function
Public Function lcams(ByVal aa As Long, ByVal bb As Long) As Long
   Dim ii As Long
   Dim mm As Long
   If (bb < aa) Then
      ii = aa
      aa = bb
      bb = ii
   End If
   ii = 2 * bb
   Do While (True)
      mm = mods(ii, aa)
      If (- 2 <= mm And mm <= 2) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + bb
   Loop
   If (mm = -2) Then
      ii = ii + 1
   ElseIf (0 <= mm) Then
      ii = ii - 1
   End If
   lcams = (ii)
End Function
Public Function lcantim(ByVal aa As Long, ByVal bb As Long) _
      As Long
   Dim haa As Long
   Dim hbb As Long
   Dim ii As Long
   Dim rema As Long
   Dim odd_mask As Long
   If (Kw.isposint(aa) And Kw.isposint(bb)) Then
      odd_mask = 0
      If (Kw.isodd(aa)) Then
         odd_mask = 1
      End If
      If (Kw.isodd(bb)) Then
         odd_mask = odd_mask + 2
      End If
      If (2 = odd_mask Or (bb < aa And odd_mask <> 1)) Then
         ii = bb
         bb = aa
         aa = ii
      End If
      haa = floorl(aa / 2)
      hbb = floorl(bb / 2)
      ii = hbb
      Do While (True)
         rema = Kw.dist(ii, aa)
         If (rema = haa) Then
            Exit Do
         ElseIf (odd_mask = 3 And rema = haa + 1) Then
            Exit Do
         End If
         ii = ii + bb
         If (aa * bb <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (aa * bb <= ii) Then
         ii = 0
      End If
   Else
      ii = 0
   End If
   lcantim = (ii)
End Function
Public Function factor(ByVal nn As Long, ByRef _
      ret_fctr_arr_p() As Long) As Long
   Dim pp As Long
   Dim fctr_ind As Long
   Dim inc As Long
   fctr_ind = 0
   nn = Math.Abs(nn)
   If (nn <= 3) Then
      ret_fctr_arr_p(fctr_ind) = nn
      fctr_ind = 1
   Else
      For pp = 2 To 3
         Do While (0 = nn Mod pp)
            ret_fctr_arr_p(fctr_ind) = pp
            fctr_ind = fctr_ind + 1
            nn = nn / pp
         Loop
      Next
      pp = 1
      inc = 4
      Do While (True)
         pp = pp + inc
         inc = 6 - inc
         Do While (0 = nn Mod pp)
            ret_fctr_arr_p(fctr_ind) = pp
            fctr_ind = fctr_ind + 1
            nn = nn / pp
         Loop
         If (nn < pp * pp) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (1 < nn) Then
         ret_fctr_arr_p(fctr_ind) = nn
         fctr_ind = fctr_ind + 1
      End If
   End If
   ret_fctr_arr_p(fctr_ind) = 0
   factor = (fctr_ind)
End Function
Public Function modulo(ByVal xxn As Long, ByVal yymod As _
      Long) As Long
   Dim retvalu As Long
   retvalu = xxn Mod yymod
   If (retvalu < 0) Then
      retvalu = retvalu + Math.Abs(yymod)
   End If
   modulo = (retvalu)
End Function
Public Function mods(ByVal xxn As Long, ByVal yymod As Long) _
      As Long
   Dim retvalu As Long
   Dim ayy As Long
   Dim axx As Long
   ayy = floorl(Math.Abs(yymod))
   axx = Math.Abs(xxn)
   retvalu = axx Mod ayy
   If (0 < retvalu) Then
      Do While (ayy < 2 * retvalu)
         retvalu = retvalu - ayy
      Loop
   ElseIf (retvalu < 0) Then
      Do While (2 * retvalu < - ayy)
         retvalu = retvalu + ayy
      Loop
   End If
   mods = (retvalu)
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
   pfl = (small_factor)
End Function
Public Function pfg(ByVal nn As Long) As Long
   Dim mm As Long
   Dim ff As Long
   mm = nn
   Do While (True)
      ff = pfl(mm)
      mm = mm / ff
      If (mm = 1) Then
         Exit Do' loop AWAIT
      End If
   Loop
   pfg = (ff)
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
   isprime = (retvalu_bol)
End Function
Public Function primeprev(ByVal pp As Long) As Long
   Dim retvalu As Long
   Dim rema As Long
   Dim inc As Long
   Dim qq As Long
   If (pp <= 7) Then
      If (pp < 0) Then
         retvalu = -primenext(-pp)
      ElseIf (5 < pp) Then
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
   primeprev = (retvalu)
End Function
Public Function primenext(ByVal pp As Long) As Long
   Dim retvalu As Long
   Dim rema As Long
   Dim inc As Long
   Dim qq As Long
   If (pp < 7) Then
      If (pp < 0) Then
         retvalu = -primeprev(-pp)
      ElseIf (pp < 2) Then
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
   primenext = (retvalu)
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
   primecount = (retvalu)
End Function
Public Function pcf(ByVal xx As Double) As Long
   pcf = ((primecount(xx)))
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
   primecountx = (retvalu)
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
            ps_arr(nn) = ps_arr(nn - 1) + pm_one * Pow(nn + 2 _
                  , - xx)
            tt = tt + 1
            temp_arr(nn) = ps_arr(nn)
            For kk = nn - 1 To 0 Step - 1
               temp_arr(kk) = (temp_arr(kk) + temp_arr(kk + _
                     1)) / 2.0
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
         sum = (4 * temp_arr(s_ind) + 3 * temp_arr(s_ind + _
               1)) / 7
         retvalu = sum + 1.0
      End If
   ElseIf (xx < 0) Then
      retvalu = 0.0
   Else
      retvalu = 0.5
   End If
   eta = (retvalu)
End Function
Public Function zeta(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (1 < xx) Then
      retvalu = eta(xx) / (1.0 - Pow(2.0, 1.0 - xx))
   Else
      retvalu = 0.0
   End If
   zeta = (retvalu)
End Function
Public Function fibo3(ByVal nn As Long, ByVal fib_a As Double _
      , ByVal fib_b As Double) As Double
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
   fibo3 = (retvalu)
End Function
Public Function fibo(ByVal nn As Long) As Double
   fibo = ((fibo3(nn, 0, 1)))
End Function
Public Function fibox(ByVal xx As Double) As Double
   Dim zz As Double
   Dim retvalu As Double
   If (Math.Log(Kw.DBLMAX) / Math.Log(Kw.PHI) < Math.Abs(xx)) _
         Then
      retvalu = 0.0
   Else
      zz = Pow(Kw.PHI, xx)
      retvalu = (zz - Math.Cos(Kw.PI * xx) / zz) / Sqr(5.0)
   End If
   fibox = (retvalu)
End Function
Public Function fiboxinv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
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
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   fiboxinv = (scvx_xx)
End Function
Public Function lucas(ByVal nn As Long) As Double
   lucas = ((fibo3(nn, 2, 1)))
End Function
Public Function lucasx(ByVal xx As Double) As Double
   Dim zz As Double
   Dim retvalu As Double
   If (Math.Log(Kw.DBLMAX) / Math.Log(Kw.PHI) < Math.Abs(xx)) _
         Then
      retvalu = 0.0
   Else
      zz = Pow(Kw.PHI, xx)
      retvalu = (zz + Math.Cos(Kw.PI * xx) / zz)
   End If
   lucasx = (retvalu)
End Function
Public Function fusc(ByVal nn As Long) As Long
   Dim aa As Long
   Dim bb As Long
   aa = 1
   bb = 0
   Do While (0 < nn)
      If (Kw.isodd(nn)) Then
         bb = bb + aa
      Else
         aa = aa + bb
      End If
      nn = (nn \ 2 ^ 1)
   Loop
   fusc = (bb)
End Function
Public Function Tn(ByVal nn As Long, ByVal xx As Double) As _
      Double
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
   Tn = (retvalu)
End Function
Public Function Un(ByVal nn As Long, ByVal xx As Double) As _
      Double
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
   Un = (retvalu)
End Function
Public Function tri(ByVal nn As Double) As Double
   tri = ((nn * (nn + 1) / 2))
End Function
Public Function triinv(ByVal nn As Double) As Double
   Dim retvalu As Double
   If (- 0.125 < nn) Then
      retvalu = (Sqr(8.0 * nn + 1.0) - 1.0) / 2.0
   Else
      retvalu = -0.5
   End If
   triinv = (retvalu)
End Function
Public Function polynum(ByVal ss As Double, ByVal nn As _
      Double) As Double
   polynum = (((ss - 2) * nn * (nn - 1) / 2 + nn))
End Function
Public Function polycnum(ByVal ss As Double, ByVal nn As _
      Double) As Double
   polycnum = ((ss * nn * (nn - 1) / 2 + 1))
End Function
Public Function tetranum(ByVal ss As Double, ByVal nn As _
      Double) As Double
   tetranum = ((nn * (nn + 1) * ((ss - 2) * nn + 5 - ss) / 6))
End Function
Public Function tetracnum(ByVal ss As Double, ByVal nn As _
      Double) As Double
   tetracnum = ((nn * (ss * nn * nn + 6 - ss) / 6))
End Function
Public Function minkowski(ByVal xx As Double) As Double
   Dim pp As Double
   Dim qq As Double
   Dim rr As Double
   Dim ss As Double
   Dim mm As Double
   Dim nn As Double
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
      mm = pp + rr
      nn = qq + ss
      If (xx < mm / nn) Then
         rr = mm
         ss = nn
      Else
         yy = yy + dd
         pp = mm
         qq = nn
      End If
      If (Kw.iseq(yy + dd, yy)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   minkowski = (yy)
End Function
Public Function cantorxx(ByVal bb As Double, ByVal ee As _
      Double, ByVal xx As Double) As Double
   Dim yy As Double
   Dim rest As Double
   Dim dd As Double
   Dim ulmt As Double
   If (ee < 0.0 Or bb < 0.0 Or 1.0 < ee + bb) Then
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
         ElseIf (bb <= rest) Then
            yy = yy + dd
            Exit Do
         Else
            rest = Kw.frac(rest / bb)
         End If
         dd = dd / 2.0
         If (Kw.iseq(yy + dd, yy) Or Kw.iszero(rest)) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   cantorxx = (yy)
End Function
Public Function cantor(ByVal xx As Double) As Double
   cantor = ((cantorxx(1.0 / 3.0, 1.0 / 3.0, xx)))
End Function
Public Function cantorul(ByVal bb As Double, ByVal ee As _
      Double, ByVal xx As Double) As Double
   cantorul = ((Pow(0.5, Math.Log(xx) / Math.Log(bb) + 0.0 * _
         ee)))
End Function
Public Function cantorll(ByVal bb As Double, ByVal ee As _
      Double, ByVal xx As Double) As Double
   cantorll = ((Pow(0.5, Math.Log(xx / (1.0 - ee)) / _
         Math.Log(bb) + 1.0)))
End Function
Public Function dlogx(ByVal aa As Long, ByVal bb As Long, _
      ByVal nn As Long) As Long
   Dim ii As Long
   Dim pp As Long
   Dim retvalu As Long
   pp = aa
   retvalu = -1
   For ii = 1 To nn
      If (pp = bb) Then
         retvalu = ii
         Exit For
      End If
      pp = (pp * aa) Mod nn
   Next
   dlogx = (retvalu)
End Function
Public Function dlog(ByVal aa As Long, ByVal bb As Long, _
      ByVal nn As Long) As Long
   Dim sqnn As Long
   Dim cur As Long
   Dim atothesqnn As Long
   Dim atothens As Long
   Dim ii As Long
   Dim log_arr() As Long
   Dim retvalu As Long
   If (aa = bb) Then
      retvalu = 1
   ElseIf (aa <= 0 Or bb <= 0 Or nn <= 0) Then
      retvalu = -1
   ElseIf (1 < gcd(aa, nn) Or Not isprimitiveroot(aa, nn)) Then
      retvalu = dlogx(aa, bb, nn)
   Else
      sqnn = ceill(Sqr(nn))
      ReDim Preserve log_arr(nn)
      For ii = 0 To nn - 1
         log_arr(ii) = 0
      Next
      atothesqnn = atothenmodp(aa, sqnn, nn)
      cur = atothesqnn
      For ii = 1 To sqnn
         If (log_arr(cur) = 0) Then
            log_arr(cur) = ii
         End If
         cur = (cur * atothesqnn) Mod nn
      Next
      cur = bb Mod nn
      retvalu = -1
      For ii = 0 To sqnn
         If (0 < log_arr(cur)) Then
            atothens = log_arr(cur) * sqnn - ii
            If (atothens < nn) Then
               retvalu = atothens
               Exit For
            End If
         End If
         cur = (cur * aa) Mod nn
      Next
   End If
   dlog = (retvalu)
End Function
Public Function dlog1(ByVal aa As Long, ByVal nn As Long) As Long
   dlog1 = ((dlog(aa, 1, nn)))
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
            lv_mertens_arr(kk) = lv_mertens_arr(kk - 1) + _
                  mobius(kk)
            kk = kk + 1
         Loop
      End If
      retvalu = lv_mertens_arr(nn)
   End If
   mertens = (retvalu)
End Function
Public Function has_primitiveroot_f(ByVal nf As Long, _
      fac_arr_pc() As Long) As Boolean
   Dim ind As Long
   ind = 0
   If (1 < nf) Then
      If (fac_arr_pc(0) = 2) Then
         ind = ind + 1
      End If
      If (2 < fac_arr_pc(ind)) Then
         Do While (ind < nf - 1)
            If (fac_arr_pc(ind) < fac_arr_pc(ind + 1)) Then
               Exit Do
            End If
            ind = ind + 1
         Loop
      End If
   End If
   has_primitiveroot_f = ((ind = (nf - 1)))
End Function
Public Function sigma0_f(ByVal nf As Long, fac_arr_pc() As _
      Long) As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   retvalu = 1
   exp_i = 2
   For ind = 0 To nf - 2
      If (fac_arr_pc(ind) = fac_arr_pc(ind + 1)) Then
         exp_i = exp_i + 1
      Else
         retvalu = retvalu * exp_i
         exp_i = 2
      End If
   Next
   sigma0_f = (retvalu * exp_i)
End Function
Public Function sigma1_f(ByVal nf As Long, fac_arr_pc() As _
      Long) As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   Dim prm_prev As Long
   Dim prm_curr As Long
   retvalu = 1
   exp_i = 2
   prm_prev = fac_arr_pc(0)
   For ind = 1 To nf - 1
      prm_curr = fac_arr_pc(ind)
      If (prm_prev = prm_curr) Then
         exp_i = exp_i + 1
      Else
         retvalu = retvalu * (powi(prm_prev, exp_i) - 1) / _
               (prm_prev - 1)
         exp_i = 2
         prm_prev = prm_curr
      End If
   Next
   sigma1_f _
         = ((retvalu * (powi(prm_prev, exp_i) - 1) / _
               (prm_prev - 1)))
End Function
Public Function sigma_f(ByVal powy As Long, ByVal nf As Long, _
      fac_arr_pc() As Long) As Long
   Dim ind As Long
   Dim retvalu As Long
   Dim exp_i As Long
   Dim prm_curr As Long
   Dim prm_prev As Long
   Dim pw As Long
   If (powy = 0) Then
      retvalu = sigma0_f(nf, fac_arr_pc)
   ElseIf (powy = 1) Then
      retvalu = sigma1_f(nf, fac_arr_pc)
   Else
      retvalu = 1
      exp_i = 2
      prm_prev = fac_arr_pc(0)
      For ind = 1 To nf - 1
         prm_curr = fac_arr_pc(ind)
         If (prm_prev = prm_curr) Then
            exp_i = exp_i + 1
         Else
            pw = powi(prm_prev, powy)
            retvalu = retvalu * ((powi(pw, exp_i) - 1) / (pw _
                  - 1))
            exp_i = 2
            prm_prev = prm_curr
         End If
      Next
      pw = powi(prm_prev, powy)
      retvalu = retvalu * ((powi(pw, exp_i) - 1) / (pw - 1))
   End If
   sigma_f = (retvalu)
End Function
Public Function ispractical_f(ByVal nf As Long, fac_arr_pc() _
      As Long) As Boolean
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
      For ind = 1 To nf - 1
         prm_curr = fac_arr_pc(ind)
         If (prm_prev = prm_curr) Then
            exp_i = exp_i + 1
         Else
            sgma = sgma * (powi(prm_prev, exp_i) - 1) / _
                  (prm_prev - 1)
            If (1 + sgma < prm_curr) Then
               retvalu_bol = False
               Exit For
            End If
            exp_i = 2
            prm_prev = prm_curr
         End If
      Next
   End If
   ispractical_f = (retvalu_bol)
End Function
Public Function issquarefree_f(ByVal nf As Long, fac_arr_pc() _
      As Long) As Boolean
   Dim ind As Long
   Dim retvalu_bol As Boolean
   retvalu_bol = True
   For ind = 1 To nf - 1
      If (fac_arr_pc(ind - 1) = fac_arr_pc(ind)) Then
         retvalu_bol = False
         Exit For
      End If
   Next
   issquarefree_f = (retvalu_bol)
End Function
Public Function totient_f(ByVal nf As Long, fac_arr_pc() As _
      Long) As Long
   Dim ind As Long
   Dim retvalu As Long
   retvalu = 1
   For ind = 0 To nf - 2
      If (fac_arr_pc(ind) = fac_arr_pc(ind + 1)) Then
         retvalu = retvalu * fac_arr_pc(ind)
      Else
         retvalu = retvalu * (fac_arr_pc(ind) - 1)
      End If
   Next
   retvalu = retvalu * (fac_arr_pc(nf - 1) - 1)
   totient_f = (retvalu)
End Function
Public Function mobius_f(ByVal nf As Long, fac_arr_pc() As _
      Long) As Long
   Dim retvalu As Long
   Dim ind As Long
   If (Kw.iseven(nf)) Then
      retvalu = 1
   Else
      retvalu = -1
   End If
   For ind = 1 To nf - 1
      If (fac_arr_pc(ind - 1) = fac_arr_pc(ind)) Then
         retvalu = 0
         Exit For
      End If
   Next
   mobius_f = (retvalu)
End Function
Public Function prime0_f(ByVal nf As Long, fac_arr_pc() As _
      Long) As Long
   Dim ind As Long
   Dim prm_curr As Long
   Dim prm_prev As Long
   Dim retvalu As Long
   retvalu = 1
   prm_prev = fac_arr_pc(0)
   For ind = 1 To nf - 1
      prm_curr = fac_arr_pc(ind)
      If (prm_prev < prm_curr) Then
         retvalu = retvalu + 1
      End If
      prm_prev = prm_curr
   Next
   prime0_f = (retvalu)
End Function
Public Function print_factor(ByVal nn As Long) As Long
   Dim ind As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim nf As Long
   nf = factor(nn, fac_arr)
   Debug.Print nn;
   Debug.Print ":";
   For ind = 0 To nf - 1
      Debug.Print " ";
      Debug.Print fac_arr(ind);
   Next
   Debug.Print vbNewLine;
   print_factor = (nf)
End Function
Public Function mobius(ByVal nn As Long) As Long
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   nf = factor(nn, fac_arr)
   mobius = ((mobius_f(nf, fac_arr)))
End Function
Public Function isprimitiveroot(ByVal aa As Long, ByVal nn As _
      Long) As Boolean
   Dim toti As Long
   Dim nf_toti As Long
   Dim ind As Long
   Dim prm As Long
   Dim retvalu_bol As Boolean
   Dim fac_arr(LC_MAX_FACTORS) As Long
   If (aa <= 1 Or 1 < gcd(aa, nn)) Then
      retvalu_bol = False
   ElseIf (aa = 2) Then
      retvalu_bol = Kw.isodd(nn)
   Else
      toti = totient(nn)
      nf_toti = factor(toti, fac_arr)
      If (atothenmodp(aa, toti / fac_arr(0), nn) = 1) Then
         retvalu_bol = False
      Else
         retvalu_bol = True
         For ind = 1 To nf_toti - 1
            If (fac_arr(ind - 1) <> fac_arr(ind)) Then
               prm = fac_arr(ind)
               If (atothenmodp(aa, toti / prm, nn) = 1) Then
                  retvalu_bol = False
                  Exit For
               End If
            End If
         Next
      End If
   End If
   isprimitiveroot = (retvalu_bol)
End Function
Public Function prime0(ByVal nn As Long) As Long
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   nf = factor(nn, fac_arr)
   prime0 = ((prime0_f(nf, fac_arr)))
End Function
Public Function prime1(ByVal nn As Long) As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   prime1 = ((factor(nn, fac_arr)))
End Function
Public Function sigma0(ByVal nn As Long) As Long
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   nf = factor(nn, fac_arr)
   sigma0 = ((sigma0_f(nf, fac_arr)))
End Function
Public Function sigma1(ByVal nn As Long) As Long
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   nf = factor(nn, fac_arr)
   sigma1 = ((sigma1_f(nf, fac_arr)))
End Function
Public Function sigma(ByVal powy As Long, ByVal nn As Long) _
      As Long
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim retvalu As Long
   If (nn <= 1) Then
      retvalu = nn
   ElseIf (powy = 0) Then
      retvalu = sigma0(nn)
   ElseIf (powy = 1) Then
      retvalu = sigma1(nn)
   Else
      nf = factor(nn, fac_arr)
      retvalu = sigma_f(powy, nf, fac_arr)
   End If
   sigma = (retvalu)
End Function
Public Function totient(ByVal nn As Long) As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim nf As Long
   nf = factor(nn, fac_arr)
   totient = ((totient_f(nf, fac_arr)))
End Function
Public Function has_primitiveroot(ByVal nn As Long) As Boolean
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim retvalu_bol As Boolean
   If (nn < 2) Then
      retvalu_bol = False
   Else
      nf = factor(nn, fac_arr)
      retvalu_bol = has_primitiveroot_f(nf, fac_arr)
   End If
   has_primitiveroot = (retvalu_bol)
End Function
Public Function issquarefree(ByVal nn As Long) As Boolean
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim retvalu_bol As Boolean
   If (nn < 1) Then
      retvalu_bol = False
   ElseIf (nn < 3) Then
      retvalu_bol = True
   Else
      nf = factor(nn, fac_arr)
      retvalu_bol = issquarefree_f(nf, fac_arr)
   End If
   issquarefree = (retvalu_bol)
End Function
Public Function ispractical(ByVal nn As Long) As Boolean
   Dim nf As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim retvalu_bol As Boolean
   If (nn < 1) Then
      retvalu_bol = False
   ElseIf (nn < 3) Then
      retvalu_bol = True
   Else
      nf = factor(nn, fac_arr)
      retvalu_bol = ispractical_f(nf, fac_arr)
   End If
   ispractical = (retvalu_bol)
End Function
Public Function primitiveroot(ByVal nn As Long) As Long
   Dim ind As Long
   Dim nf_toti As Long
   Dim toti As Long
   Dim mm As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
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
      nf_toti = factor(toti, fac_arr)
      mm = 2
      retvalu = 0
      Do While (mm < nn And retvalu <= 0)
         If (gcd(mm, nn) = 1) Then
            retvalu = mm
            prm = 0
            For ind = 0 To nf_toti - 1
               If (prm <> fac_arr(ind)) Then
                  prm = fac_arr(ind)
                  If (atothenmodp(mm, toti / prm, nn) = 1) Then
                     retvalu = 0
                     Exit For
                  End If
               End If
            Next
         End If
         mm = mm + 1
      Loop
   End If
   primitiveroot = (retvalu)
End Function
Public Function carmichael(ByVal nn As Long) As Long
   Dim ind As Long
   Dim nf As Long
   Dim lmbd As Long
   Dim prm As Long
   Dim pk As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   If (nn < 8) Then
      lmbd = totient(nn)
   Else
      nf = factor(nn, fac_arr)
      ind = 0
      Do While (ind < nf And fac_arr(ind) = 2)
         ind = ind + 1
      Loop
      If (2 < ind) Then
         lmbd = (1 * 2 ^ (ind - 2))
      Else
         lmbd = 1
      End If
      Do While (ind < nf)
         prm = fac_arr(ind)
         pk = prm - 1
         Do While (ind < nf - 1 And prm = fac_arr(ind + 1))
            ind = ind + 1
            pk = pk * prm
         Loop
         lmbd = lcm(lmbd, pk)
         ind = ind + 1
      Loop
   End If
   carmichael = (lmbd)
End Function
Public Function znorder(ByVal aa As Long, ByVal nn As Long) _
      As Long
   Dim ind As Long
   Dim fac_arr(LC_MAX_FACTORS) As Long
   Dim nfkk As Long
   Dim kk As Long
   Dim ab As Long
   Dim ek As Long
   Dim prm_i As Long
   Dim exp_i As Long
   If (nn <= 1) Then
      kk = nn
   ElseIf (aa <= 1) Then
      kk = aa
   ElseIf (1 < gcd(aa, nn)) Then
      kk = 0
   Else
      kk = carmichael(nn)
      nfkk = factor(kk, fac_arr)
      exp_i = 1
      For ind = 0 To nfkk - 1
         prm_i = fac_arr(ind)
         kk = kk / prm_i
         If (ind + 1 < nfkk And prm_i = fac_arr(ind + 1)) Then
            exp_i = exp_i + 1
         Else
            ab = atothenmodp(aa, kk, nn)
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
   znorder = (kk)
End Function
Public Function repetendlen(ByVal denm As Long, ByVal basee _
      As Long) As Long
   Dim gd As Long
   Dim retvalu As Long
   Do While (True)
      gd = gcd(denm, basee)
      denm = denm / gd
      If (1 = gd) Then
         Exit Do' loop AWAIT
      End If
   Loop
   If (denm = 1) Then
      retvalu = 0
   Else
      retvalu = znorder(basee, denm)
   End If
   repetendlen = (retvalu)
End Function
Public Function print_kevy(ByVal den As Long, ByVal start As _
      Long, ByVal basee As Long) As Long
   Dim numer As Long
   Dim valu As Long
   Dim leny As Long
   leny = 0
   If (start < basee * den) Then
      numer = start
      valu = start
      Do While (True)
         Call print_num2char(valu)
         leny = leny + 1
         valu = floorl(numer / den)
         numer = (numer Mod den) * basee + valu
         If (numer = start Or den * basee < leny) Then
            Exit Do' loop AWAIT
         End If
      Loop
      If (basee <= start) Then
         Debug.Print "-";
         Debug.Print floorl(start / basee);
      End If
   End If
   print_kevy = (leny)
End Function
Public Function eulerphi(ByVal nn As Long) As Long
   eulerphi = ((totient(nn)))
End Function
Public Function znorder__1(ByVal bb As Long, ByVal mdls As _
      Long) As Long
   Dim nn As Long
   Dim pp As Long
   If (1 < gcd(bb, mdls)) Then
      nn = 0
   Else
      pp = 1
      nn = 1
      Do While (True)
         pp = (pp * bb) Mod mdls
         If (pp = 1) Then
            Exit Do' loop AWAIT
         End If
         nn = nn + 1
         If (mdls <= nn) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   znorder__1 = (nn)
End Function
Public Function bkn(ByVal bb As Long, ByVal kk As Long) As Long
   bkn = ((znorder(bb, kk * bb - 1)))
End Function
Public Function bkbn(ByVal bb As Long, ByVal kk As Long, _
      ByVal bbb As Long) As Long
   Dim mdls As Long
   mdls = kk * bb - 1
   If (mdls Mod bbb = 0) Then
      mdls = mdls / bbb
   End If
   bkbn = ((znorder(bb, mdls)))
End Function
Public Function lix(ByVal xx As Double) As Double
   ' local-use Vb6 lv_li_two
   If (lv_li_two <= 0) Then
      lv_li_two = Kw.logintegral(2.0)
   End If
   lix = ((Kw.logintegral(xx) - lv_li_two))
End Function
Public Function lixinv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
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
      scvx_dy = (scvx_yy - scvx_yp)
      If (Kw.iszero(scvx_dy)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / scvx_dy
   Next
   lixinv = (scvx_xx)
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
      retvalu = nn * (logn + loglogn - 1.0 + (loglogn - 2.0) _
            / logn - ((loglogn - 6.0) * loglogn + 11.0) / _
            (2.0 * logn * logn)) + 3.5 * Sqr(nn) + 10
   End If
   primenth__1 = (retvalu)
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
   reimann = (retvalu)
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
      If (nn < ii) Then
         Debug.Print "II=";
         Debug.Print ii;
         Debug.Print " NN=";
         Debug.Print nn;
         Debug.Print("primenth:" & "PRIMENTH_failed")
         Stop
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
   primenth = (pp)
End Function
Public Function bessJv(ByVal vv As Double, ByVal xx As _
      Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim mm As Double
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
      mm = 1
      Do While (True)
         term = term * - xxsqr_div_four / (mm * (avv + mm))
         sum_prev = sum
         sum = sum + term
         If (Kw.iseq(sum, sum_prev)) Then
            Exit Do' loop AWAIT
         End If
         mm = mm + 1
      Loop
      If (Kw.isposint(-vv) And Kw.isodd(vv)) Then
         sum = -sum
      End If
   End If
   bessJv = (sum)
End Function
Public Function bessYv(ByVal vv As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   Dim vvpi As Double
   If (Kw.isint(vv)) Then
      retvalu = bessYn(vv, xx)
   Else
      vvpi = Kw.PI * vv
      retvalu = ((Math.Cos(vvpi) * bessJv(vv, xx) - _
            bessJv(-vv, xx)) / Math.Sin(vvpi))
   End If
   bessYv = (retvalu)
End Function
Public Function bessI0(ByVal xx As Double) As Double
   Dim yy As Double
   Dim retvalu As Double
   If (xx < 7.75) Then
      yy = xx * xx / 4
      retvalu = _
            (((((((((((((((((1.1497640034400735733456400E-29) _
            * yy + 2.0732014503197852176921968E-27) * yy + _
            5.9203280572170548134753422E-25) * yy + _
            1.3141332422663039834197910E-22) * yy + _
            2.5791926805873898803749321E-20) * yy + _
            4.3583591008893599099577755E-18) * yy + _
            6.2760839879536225394314453E-16) * yy + _
            7.5940582595094190098755663E-14) * yy + _
            7.5940584360755226536109511E-12) * yy + _
            6.1511873265092916275099070E-10) * yy + _
            3.9367598891475388547279760E-08) * yy + _
            1.9290123456788994104574754E-06) * yy + _
            6.9444444444444568581891535E-05) * yy + _
            1.7361111111111110294015271E-03) * yy + _
            2.7777777777777777805664954E-02) * yy + _
            2.4999999999999999999629693E-01) * yy + _
            1.0000000000000000000000801E+00) * yy + 1
   Else
      yy = 1.0 / xx
      retvalu = _
            ((((((((((((((((((((((( _
            1.6069467093441596329340754E+16) * yy - _
            2.1363029690365351606041265E+16) * yy + _
            1.3012646806421079076251950E+16) * yy - _
            4.8049082153027457378879746E+15) * yy + _
            1.1989242681178569338129044E+15) * yy - _
            2.1323049786724612220362154E+14) * yy + _
            2.7752144774934763122129261E+13) * yy - _
            2.6632742974569782078420204E+12) * yy + _
            1.8592340458074104721496236E+11) * yy - _
            8.9270060370015930749184222E+09) * yy + _
            2.3518420447411254516178388E+08) * yy + _
            2.6092888649549172879282592E+06) * yy - _
            5.9355022509673600842060002E+05) * yy + _
            3.1275740782277570164423916E+04) * yy - _
            1.0026890180180668595066918E+03) * yy + _
            2.2725199603010833194037016E+01) * yy - _
            1.0699095472110916094973951E-01) * yy + _
            9.4085204199017869159183831E-02) * yy + _
            4.4718622769244715693031735E-02) * yy + _
            2.9219501690198775910219311E-02) * yy + _
            2.8050628884163787533196746E-02) * yy + _
            4.9867785050353992900698488E-02) * yy + _
            3.9894228040143265335649948E-01)
      retvalu = retvalu * Math.Exp(xx) / Sqr(xx)
   End If
   bessI0 = (retvalu)
End Function
Public Function bessI1(ByVal xx As Double) As Double
   Dim yy As Double
   Dim aa As Double
   Dim retvalu As Double
   If (xx < 7.75) Then
      yy = xx * xx / 4
      aa = (((((((((((((1.332898928162290861E-23) * yy + _
            1.625212890947171108E-21) * yy + _
            3.410720494727771276E-19) * yy + _
            5.220157095351373194E-17) * yy + _
            6.904822652741917551E-15) * yy + _
            7.593969849687574339E-13) * yy + _
            6.834657311305621830E-11) * yy + _
            4.920949692800671435E-09) * yy + _
            2.755731926254790268E-07) * yy + _
            1.157407407354987232E-05) * yy + _
            3.472222222225921045E-04) * yy + _
            6.944444444444341983E-03) * yy + _
            8.333333333333333803E-02)
      retvalu = ((aa * yy + 0.5) * yy + 1.0) * xx / 2.0
   ElseIf (xx < 500) Then
      yy = 1.0 / xx
      retvalu = _
            ((((((((((((((((((((((-2.213318202179221945E+15) _
            * yy + 3.146401654361325073E+15) * yy - _
            2.067285045778906105E+15) * yy + _
            8.325554073334618015E+14) * yy - _
            2.298849639457172489E+14) * yy + _
            4.614040809616582764E+13) * yy - _
            6.967602516005787001E+12) * yy + _
            8.087824484994859552E+11) * yy - _
            7.313784438967834057E+10) * yy + _
            5.192386898222206474E+09) * yy - _
            2.903390398236656519E+08) * yy + _
            1.277677779341446497E+07) * yy - _
            4.404655582443487334E+05) * yy + _
            1.178785865993440669E+04) * yy - _
            2.426181371595021021E+02) * yy + _
            3.458284470977172076E+00) * yy - _
            1.528189554374492735E-01) * yy - _
            5.719036414430205390E-02) * yy - _
            4.090895951581637791E-02) * yy - _
            4.675104253598537322E-02) * yy - _
            1.496033551613111533E-01) * yy + _
            3.989422804014406054E-01) * Math.Exp(xx) / Sqr(xx)
   Else
      yy = 1.0 / xx
      aa = Math.Exp(xx / 2.0)
      retvalu = (((((-5.843630344778927582E-02) * yy - _
            4.090421597376992892E-02) * yy - _
            4.675105322571775911E-02) * yy - _
            1.496033551467584157E-01) * yy + _
            3.989422804014314820E-01) * aa / Sqr(xx)
      retvalu = retvalu * aa
   End If
   bessI1 = (retvalu)
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
      retvalu = DBLMAX
   ElseIf (xx < DBLEPS) Then
      retvalu = 0.11593151565841244858684731328185 - Math.Log(xx)
   ElseIf (xx <= 1.0) Then
      xz = xx * xx
      sump = (((((5.8599221412826100000E-04) * xz + _
            1.3166052564989571850E-01) * xz + _
            1.1999463724910714109E+01) * xz + _
            4.6850901201934832188E+02) * xz + _
            5.9169059852270512312E+03) * xz + _
            2.4708152720399552679E+03
      sumq = ((1.0000000000000000000E+00) * xz - _
            2.4994418972832303646E+02) * xz + _
            2.1312714303849120380E+04
      sumf = (((-1.6414452837299064100E+00) * xz - _
            2.9601657892958843866E+02) * xz - _
            1.7733784684952985886E+04) * xz - _
            4.0320340761145482298E+05
      sumg = ((1.0 * xz - 2.5064972445877992730E+02) * xz + _
            2.9865713163054025489E+04) * xz - _
            1.6128136304458193998E+06
      retvalu = sump / sumq - Math.Log(xx) * (xz * sumf / _
            sumg + 1.0)
   ElseIf (xx < DBLMAXLN) Then
      xz = 1.0 / xx
      sump = (((((((((1.1394980557384778174E+02) * xz + _
            3.6832589957340267940E+03) * xz + _
            3.1075408980684392399E+04) * xz + _
            1.0577068948034021957E+05) * xz + _
            1.7398867902565686251E+05) * xz + _
            1.5097646353289914539E+05) * xz + _
            7.1557062783764037541E+04) * xz + _
            1.8321525870183537725E+04) * xz + _
            2.3444738764199315021E+03) * xz + _
            1.1600249425076035558E+02
      sumq = ((((((((((1.0000000000000000000E+00) * xz + _
            2.0013443064949242491E+02) * xz + _
            4.4329628889746408858E+03) * xz + _
            3.1474655750295278825E+04) * xz + _
            9.7418829762268075784E+04) * xz + _
            1.5144644673520157801E+05) * xz + _
            1.2689839587977598727E+05) * xz + _
            5.8824616785857027752E+04) * xz + _
            1.4847228371802360957E+04) * xz + _
            1.8821890840982713696E+03) * xz + _
            9.2556599177304839811E+01
      retvalu = sump / sumq / Sqr(xx) * Math.Exp(-xx)
   Else
      retvalu = 0.0
   End If
   bessK0 = (retvalu)
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
   If (xx < DBLEPS) Then
      retvalu = DBLMAX
   ElseIf (xx < DBLEPS) Then
      retvalu = 1.0 / xx
   ElseIf (xx <= 1.0) Then
      xz = xx * xx
      sump = (((((4.8127070456878442310E-1) * xz + _
            9.9991373567429309922E+1) * xz + _
            7.1885382604084798576E+3) * xz + _
            1.7733324035147015630E+5) * xz + _
            7.1938920065420586101E+5) * xz - _
            2.2149374878243304548E+6
      sumq = (((1.0000000000000000000E+0) * xz - _
            2.8143915754538725829E+2) * xz + _
            3.7264298672067697862E+4) * xz - _
            2.2149374878243304548E+6
      sumf = ((((-2.2795590826955002390E-1) * xz - _
            5.3103913335180275253E+1) * xz - _
            4.5051623763436087023E+3) * xz - _
            1.4758069205414222471E+5) * xz - _
            1.3531161492785421328E+6
      sumg = (((1.0000000000000000000E+0) * xz - _
            3.0507151578787595807E+2) * xz + _
            4.3117653211351080007E+4) * xz - _
            2.7062322985570842656E+6
      retvalu = (xz * Math.Log(xx) * sumf / sumg + sump / _
            sumq) / xx
   ElseIf (xx < DBLMAXLN) Then
      xz = 1.0 / xx
      sump = ((((((((((6.4257745859173138767E-2) * xz + _
            7.5584584631176030810E+0) * xz + _
            1.3182609918569941308E+2) * xz + _
            8.1094256146537402173E+2) * xz + _
            2.3123742209168871550E+3) * xz + _
            3.4540675585544584407E+3) * xz + _
            2.8590657697910288226E+3) * xz + _
            1.3319486433183221990E+3) * xz + _
            3.4122953486801312910E+2) * xz + _
            4.4137176114230414036E+1) * xz + _
            2.2196792496874548962E+0
      sumq = (((((((((1.0000000000000000000E+0) * xz + _
            3.6001069306861518855E+1) * xz + _
            3.3031020088765390854E+2) * xz + _
            1.2082692316002348638E+3) * xz + _
            2.1181000487171943810E+3) * xz + _
            1.9448440788918006154E+3) * xz + _
            9.6929165726802648634E+2) * xz + _
            2.5951223655579051357E+2) * xz + _
            3.4552228452758912848E+1) * xz + _
            1.7710478032601086579E+0
      retvalu = sump / sumq / Sqr(xx)
      retvalu = retvalu * Math.Exp(-xx)
   Else
      retvalu = 0.0
   End If
   bessK1 = (retvalu)
End Function
Public Function bessJn_ps(ByVal nn As Long, ByVal xx As _
      Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim mm As Double
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
   mm = 1
   Do While (True)
      term = term * xxsqr_div_four / (mm * (ann + mm))
      sum_prev = sum
      sum = sum + term
      If (Kw.iseq(sum, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      mm = mm + 1
   Loop
   If (nn < 0 And Kw.isodd(nn)) Then
      sum = -sum
   End If
   bessJn_ps = (sum)
End Function
Public Function bessIn_ps(ByVal nn As Long, ByVal xx As _
      Double) As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim term As Double
   Dim mm As Double
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
   mm = 1
   Do While (True)
      term = term * xxsqr_div_four / (mm * (ann + mm))
      sum_prev = sum
      sum = sum + term
      If (Kw.iseq(sum, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      mm = mm + 1
   Loop
   bessIn_ps = (sum)
End Function
Private Function lf_besucjy0_xge5(ByVal xx As Double, ByVal _
      jfunc As Long) As Double
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
         8.28352392107440799803E-2) * zz + _
         1.23953371646414299388E0) * zz + _
         5.44725003058768775090E0) * zz + _
         8.74716500199817011941E0) * zz + _
         5.30324038235394892183E0) * zz + _
         9.99999999999999997821E-1)
   denom = (((((((9.24408810558863637013E-4) * zz + _
         8.56288474354474431428E-2) * zz + _
         1.25352743901058953537E0) * zz + _
         5.47097740330417105182E0) * zz + _
         8.76190883237069594232E0) * zz + _
         5.30605288235394617618E0) * zz + _
         1.00000000000000000218E0)
   pp = numer / denom
   numer = ((((((((-1.13663838898469149931E-2) * zz - _
         1.28252718670509318512E0) * zz - _
         1.95539544257735972385E1) * zz - _
         9.32060152123768231369E1) * zz - _
         1.77681167980488050595E2) * zz - _
         1.47077505154951170175E2) * zz - _
         5.14105326766599330220E1) * zz - _
         6.05014350600728481186E0)
   denom = ((((((((1.00000000000000000000E0) * zz + _
         6.43178256118178023184E1) * zz + _
         8.56430025976980587198E2) * zz + _
         3.88240183605401609683E3) * zz + _
         7.24046774195652478189E3) * zz + _
         5.93072701187316984827E3) * zz + _
         2.06209331660327847417E3) * zz + _
         2.42005740240291393179E2)
   qq = numer / denom
   xn = xx - Kw.PI / 4
   If (jfunc < 1) Then
      pp = pp * Math.Cos(xn) - ww * qq * Math.Sin(xn)
   Else
      pp = pp * Math.Sin(xn) + ww * qq * Math.Cos(xn)
   End If
   lf_besucjy0_xge5 = ((pp * Kw.SQRTTWO / Sqr(Kw.PI * xx)))
End Function
Private Function lf_besucjy1_xge5(ByVal xx As Double, ByVal _
      jfunc As Long) As Double
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
         7.31397056940917570436E-2) * zz + _
         1.12719608129684925192E0) * zz + _
         5.11207951146807644818E0) * zz + _
         8.42404590141772420927E0) * zz + _
         5.21451598682361504063E0) * zz + _
         1.00000000000000000254E0)
   denom = (((((((5.71323128072548699714E-4) * zz + _
         6.88455908754495404082E-2) * zz + _
         1.10514232634061696926E0) * zz + _
         5.07386386128601488557E0) * zz + _
         8.39985554327604159757E0) * zz + _
         5.20982848682361821619E0) * zz + _
         9.99999999999999997461E-1)
   pp = numer / denom
   numer = ((((((((5.10862594750176621635E-2) * zz + _
         4.98213872951233449420E0) * zz + _
         7.58238284132545283818E1) * zz + _
         3.66779609360150777800E2) * zz + _
         7.10856304998926107277E2) * zz + _
         5.97489612400613639965E2) * zz + _
         2.11688757100572135698E2) * zz + _
         2.52070205858023719784E1)
   denom = ((((((((1.00000000000000000000E0) * zz + _
         7.42373277035675149943E1) * zz + _
         1.05644886038262816351E3) * zz + _
         4.98641058337653607651E3) * zz + _
         9.56231892404756170795E3) * zz + _
         7.99704160447350683650E3) * zz + _
         2.82619278517639096600E3) * zz + _
         3.36093607810698293419E2)
   qq = numer / denom
   xn = xx - 3 * Kw.PI / 4
   If (jfunc < 1) Then
      pp = pp * Math.Cos(xn) - ww * qq * Math.Sin(xn)
   Else
      pp = pp * Math.Sin(xn) + ww * qq * Math.Cos(xn)
   End If
   lf_besucjy1_xge5 = ((pp * Kw.SQRTTWO / Sqr(Kw.PI * xx)))
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
   If (xx < 1E-5) Then
      retvalu = 1.0 - zz / 4.0
   ElseIf (xx < 5.0) Then
      numer = ((((-4.79443220978201773821E9) * zz + _
            1.95617491946556577543E12) * zz - _
            2.49248344360967716204E14) * zz + _
            9.70862251047306323952E15)
      denom = (((((((((1.00000000000000000000E0) * zz + _
            4.99563147152651017219E2) * zz + _
            1.73785401676374683123E5) * zz + _
            4.84409658339962045305E7) * zz + _
            1.11855537045356834862E10) * zz + _
            2.11277520115489217587E12) * zz + _
            3.10518229857422583814E14) * zz + _
            3.18121955943204943306E16) * zz + _
            1.71086294081043136091E18)
      retvalu = (zz - 5.783185962946784521175) * (zz - _
            30.4712623436620863991) * numer / denom
   Else
      retvalu = lf_besucjy0_xge5(xx, 0)
   End If
   bessJ0 = (retvalu)
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
      numer = ((((-8.99971225705559398224E8) * zz + _
            4.52228297998194034323E11) * zz - _
            7.27494245221818276015E13) * zz + _
            3.68295732863852883286E15)
      denom = (((((((((1.00000000000000000000E0) * zz + _
            6.20836478118054335476E2) * zz + _
            2.56987256757748830383E5) * zz + _
            8.35146791431949253037E7) * zz + _
            2.21511595479792499675E10) * zz + _
            4.74914122079991414898E12) * zz + _
            7.84369607876235854894E14) * zz + _
            8.95222336184627338078E16) * zz + _
            5.32278620332680085395E18)
      retvalu = numer / denom * xx * (zz - _
            14.6819706421238932572) * (zz - _
            49.2184563216946036703)
   Else
      retvalu = lf_besucjy1_xge5(xx, 0)
   End If
   bessJ1 = (retvalu)
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
      If (xx < 1E-5) Then
         retvalu = 1.0 - zz / 4.0
      ElseIf (xx < 5.0) Then
         numer = ((((((((1.55924367855235737965E4) * zz - _
               1.46639295903971606143E7) * zz + _
               5.43526477051876500413E9) * zz - _
               9.82136065717911466409E11) * zz + _
               8.75906394395366999549E13) * zz - _
               3.46628303384729719441E15) * zz + _
               4.42733268572569800351E16) * zz - _
               1.84950800436986690637E16)
         denom = ((((((((1.00000000000000000000E0) * zz + _
               1.04128353664259848412E3) * zz + _
               6.26107330137134956842E5) * zz + _
               2.68919633393814121987E8) * zz + _
               8.64002487103935000337E10) * zz + _
               2.02979612750105546709E13) * zz + _
               3.17157752842975028269E15) * zz + _
               2.50596256172653059228E17)
         retvalu = numer / denom + 2.0 * Math.Log(xx) * _
               bessJ0(xx) / Kw.PI
      Else
         retvalu = lf_besucjy0_xge5(xx, 1)
      End If
   End If
   bessY0 = (retvalu)
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
      numer = ((((((1.2632047479017802640E9) * zz - _
            6.47355876379160291031E11) * zz + _
            1.14509511541823727583E14) * zz - _
            8.12770255501325109621E15) * zz + _
            2.02439475713594898196E17) * zz - _
            7.78877196265950026825E17)
      denom = (((((((((1.00000000000000000000E0) * zz + _
            5.94301592346128195359E2) * zz + _
            2.35564092943068577943E5) * zz + _
            7.34811944459721705660E7) * zz + _
            1.87601316108706159478E10) * zz + _
            3.88231277496238566008E12) * zz + _
            6.20557727146953693363E14) * zz + _
            6.87141087355300489866E16) * zz + _
            3.97270608116560655612E18)
      retvalu = xx * numer / denom + 2.0 * (bessJ1(xx) * _
            Math.Log(xx) - 1.0 / xx) / Kw.PI
   Else
      retvalu = lf_besucjy1_xge5(xx, 1)
   End If
   bessY1 = (retvalu)
End Function
Private Function lf_bess_ucrecur(ByVal nn As Long, ByVal xx _
      As Double, ByVal fzero As Double, ByVal fone As Double) _
      As Double
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
   lf_bess_ucrecur = (cv)
End Function
Private Function lf_limi(ByVal nn As Long) As Long
   lf_limi = ((nn + floor(Sqr(40.0 * nn))))
End Function
Private Function lf_bess_ucrecur2(ByVal nn As Long, ByVal xx _
      As Double) As Double
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
   lf_bess_ucrecur2 = (retvalu)
End Function
Public Function bessIn(ByVal nn As Long, ByVal xx As Double) _
      As Double
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
   bessIn = (retvalu)
End Function
Public Function bessJn(ByVal nn As Long, ByVal xx As Double) _
      As Double
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
   bessJn = (retvalu)
End Function
Public Function bessYn(ByVal nn As Long, ByVal xx As Double) _
      As Double
   Dim retvalu As Double
   If (nn = 0) Then
      retvalu = bessY0(xx)
   ElseIf (nn = 1) Then
      retvalu = bessY1(xx)
   Else
      retvalu = lf_bess_ucrecur(nn, xx, bessY0(xx), bessY1(xx))
   End If
   bessYn = (retvalu)
End Function
Public Function bessKn(ByVal nn As Long, ByVal xx As Double) _
      As Double
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
   bessKn = (retvalu)
End Function
Public Function bessYn_ps(ByVal nn As Long, ByVal xx As _
      Double) As Double
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
      hn = 0
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
   bessYn_ps = (retvalu)
End Function
Public Function bessY1__1(ByVal xx As Double) As Double
   Dim numer As Double
   Dim denom As Double
   Dim zz As Double
   Dim ww As Double
   Dim yy As Double
   Dim retvalu As Double
   If (Kw.iszero(xx)) Then
      retvalu = -DBLMAX
   ElseIf (xx < 8.0) Then
      yy = xx * xx
      numer = ((((((8.511937935E+3) * yy - 4.237922726E+6) * _
            yy + 7.349264551E+8) * yy - 5.153438139E+10) * yy _
            + 1.275274390E+12) * yy - 4.900604943E+12)
      denom = (((((((1.0) * yy + 3.549632885E+2) * yy + _
            1.020426050E+5) * yy + 2.245904002E+7) * yy + _
            3.733650367E+9) * yy + 4.244419664E+11) * yy + _
            2.499580570E+13)
      retvalu = (xx * (numer / denom) + 2.0 * (bessJn(1, xx) _
            * Math.Log(xx) - 1.0 / xx) / Kw.PI)
   Else
      zz = 8.0 / xx
      yy = zz * zz
      numer = (((((-2.403370190E-7) * yy + 2.457520174E-6) * _
            yy - 3.516396496E-5) * yy + 1.831050000E-3) * yy _
            + 1.000000000E+0)
      denom = (((((1.057874120E-7) * yy - 8.822898700E-7) * _
            yy + 8.449199096E-6) * yy - 2.002690873E-4) * yy _
            + 4.687499995E-2)
      ww = xx - 0.75 * Kw.PI
      retvalu = Kw.SQRTTWO / Sqr(Kw.PI * xx) * (Math.Sin(ww) _
            * numer + zz * Math.Cos(ww) * denom)
   End If
   bessY1__1 = (retvalu)
End Function
Private Function lf_bess_lcrecur(ByVal nn As Long, ByVal xx _
      As Double, ByVal fzero As Double, ByVal fone As Double) _
      As Double
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
   lf_bess_lcrecur = (cv)
End Function
Public Function bess_jn(ByVal nn As Long, ByVal xx As Double) _
      As Double
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
   bess_jn = (retvalu)
End Function
Public Function bess_yn(ByVal nn As Long, ByVal xx As Double) _
      As Double
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
   bess_yn = (retvalu)
End Function
Public Function partition(ByVal nn As Long) As Double
   ' local-use Vb6 lv_partitionr_arr
   ' local-use Vb6 lv_partitionr_end
   Dim retvalu As Double
   Dim jj As Long
   Dim mm As Long
   Dim kk As Long
   Dim sum As Double
   Dim ssign As Double
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_partitionr_end <= 0) Then
         lv_partitionr_end = 6
         ReDim Preserve lv_partitionr_arr(lv_partitionr_end)
         lv_partitionr_arr(0) = 1
         lv_partitionr_arr(1) = 1
         lv_partitionr_arr(2) = 2
         lv_partitionr_arr(3) = 3
         lv_partitionr_arr(4) = 5
         lv_partitionr_arr(5) = 7
      End If
      If (lv_partitionr_end <= nn) Then
         mm = lv_partitionr_end
         lv_partitionr_end = nn + 1
         ReDim Preserve lv_partitionr_arr(lv_partitionr_end)
         Do While (mm < lv_partitionr_end)
            sum = 0
            ssign = 1
            kk = 1
            jj = mm - 1
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
            lv_partitionr_arr(mm) = sum
            mm = mm + 1
         Loop
      End If
      retvalu = lv_partitionr_arr(nn)
   End If
   partition = (retvalu)
End Function
Public Function partitionq(ByVal nn As Long) As Double
   ' local-use Vb6 lv_partitionq_arr
   ' local-use Vb6 lv_partitionq_end
   Dim retvalu As Double
   Dim jj As Long
   Dim mm As Long
   Dim kk As Long
   Dim sum As Double
   Dim ssign As Double
   Dim ee As Long
   If (nn < 0) Then
      retvalu = 0
   Else
      If (lv_partitionq_end <= 0) Then
         lv_partitionq_end = 6
         ReDim Preserve lv_partitionq_arr(lv_partitionq_end)
         lv_partitionq_arr(0) = 1
         lv_partitionq_arr(1) = 1
         lv_partitionq_arr(2) = 1
         lv_partitionq_arr(3) = 2
         lv_partitionq_arr(4) = 2
         lv_partitionq_arr(5) = 3
      End If
      If (lv_partitionq_end <= nn) Then
         mm = lv_partitionq_end
         lv_partitionq_end = nn + 1
         ReDim Preserve lv_partitionq_arr(lv_partitionq_end)
         Do While (mm < lv_partitionq_end)
            sum = 0
            ssign = 1
            kk = 1
            jj = mm - 1
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
            ee = Kw.round(Sqr(1.0 + 12.0 * mm) / 6.0)
            If (mm = (3 * ee * ee - ee) Or mm = (3 * ee * ee _
                  + ee)) Then
               If (Kw.isodd(ee)) Then
                  sum = sum - 1
               Else
                  sum = sum + 1
               End If
            End If
            lv_partitionq_arr(mm) = sum
            mm = mm + 1
         Loop
      End If
      retvalu = lv_partitionq_arr(nn)
   End If
   partitionq = (retvalu)
End Function
Public Function bitwisenot(ByVal xx As Long) As Long
   Dim retvalu As Long
   retvalu = Not(xx)
   bitwisenot = (retvalu)
End Function
Public Function bitwiseand(ByVal xx As Long, ByVal yy As _
      Long) As Long
   Dim retvalu As Long
   retvalu = (xx And yy)
   bitwiseand = (retvalu)
End Function
Public Function bitwiseor(ByVal xx As Long, ByVal yy As Long) _
      As Long
   Dim retvalu As Long
   retvalu = (xx Or yy)
   bitwiseor = (retvalu)
End Function
Public Function bitwisexor(ByVal xx As Long, ByVal yy As _
      Long) As Long
   Dim retvalu As Long
   retvalu = (xx Xor yy)
   bitwisexor = (retvalu)
End Function
Public Function bitshiftl(ByVal hexnumber As Long, ByVal _
      shift_count As Long) As Long
   Dim retvalu As Long
   If (shift_count < 0) Then
      retvalu = (hexnumber \ 2 ^ (- shift_count))
   ElseIf (0 < shift_count) Then
      retvalu = (hexnumber * 2 ^ shift_count)
   Else
      retvalu = hexnumber
   End If
   bitshiftl = (retvalu)
End Function
Public Function bitshiftr(ByVal hexnumber As Long, ByVal _
      shift_count As Long) As Long
   Dim retvalu As Long
   If (shift_count < 0) Then
      retvalu = (hexnumber * 2 ^ (- shift_count))
   ElseIf (0 < shift_count) Then
      retvalu = (hexnumber \ 2 ^ shift_count)
   Else
      retvalu = hexnumber
   End If
   bitshiftr = (retvalu)
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
      bitmask = (bitmask * 2 ^ 1)
   Loop
   bits_count = (bit_counter)
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
   bits_ls1b = (retvalu)
End Function
Public Function bits_ms1b(ByVal orig As Long) As Long
   Dim divisor As Long
   Dim retvalu As Long
   If (orig = 0) Then
      retvalu = 0
   Else
      divisor = -2
      Do While (0 <> (divisor And orig))
         divisor = divisor * 2
      Loop
      retvalu = -divisor / 2
   End If
   bits_ms1b = (retvalu)
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
   bits_ls1bpos = (retvalu)
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
      Do While (0 <> (divisor And orig))
         divisor = divisor * 2
         bit_count = bit_count + 1
      Loop
      retvalu = bit_count
   End If
   bits_ms1bpos = (retvalu)
End Function
Public Function bits_assign(ByVal orig As Long, ByVal _
      value_to_set As Long, ByVal which_mask As Long) As Long
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
   bits_assign = (retvalu)
End Function
Public Function bits_get(ByVal vall As Long, ByVal mask As _
      Long) As Long
   bits_get = (((vall And mask) / bits_ls1b(mask)))
End Function
Public Function bits_set(ByVal vall As Long, ByVal mask As _
      Long) As Long
   bits_set = ((((vall * bits_ls1b(mask)) And mask)))
End Function
Private Function lf_calerf(ByVal xx As Double, ByVal jint As _
      Long) As Double
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
      numer = (((((1.85777706184603153E-1) * xsq + _
            3.16112374387056560E+0) * xsq + _
            1.13864154151050156E+2) * xsq + _
            3.77485237685302021E+2) * xsq + _
            3.20937758913846947E+3)
      denom = (((((1.00000000000000000E+0) * xsq + _
            2.36012909523441209E+1) * xsq + _
            2.44024637934444173E+2) * xsq + _
            1.28261652607737228E+3) * xsq + _
            2.84423683343917062E+3)
      retvalu = xx * numer / denom
      If (jint = 1) Then
         retvalu = 1.0 - retvalu
      ElseIf (jint = 2) Then
         retvalu = Math.Exp(xsq) * (1.0 - retvalu)
      End If
      flag = 1
   ElseIf (absx <= 4.0) Then
      numer = (((((((((2.15311535474403846E-8) * absx + _
            5.64188496988670089E-1) * absx + _
            8.88314979438837594E+0) * absx + _
            6.61191906371416295E+1) * absx + _
            2.98635138197400131E+2) * absx + _
            8.81952221241769090E+2) * absx + _
            1.71204761263407058E+3) * absx + _
            2.05107837782607147E+3) * absx + _
            1.23033935479799725E+3)
      denom = (((((((((1.00000000000000000E+0) * absx + _
            1.57449261107098347E+1) * absx + _
            1.17693950891312499E+2) * absx + _
            5.37181101862009858E+2) * absx + _
            1.62138957456669019E+3) * absx + _
            3.29079923573345963E+3) * absx + _
            4.36261909014324716E+3) * absx + _
            3.43936767414372164E+3) * absx + _
            1.23033935480374942E+3)
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
               1.60837851487422766E+2) * rxsq - _
               6.58749161529837803E+0)
         denom = ((((((1.00000000000000000E+4) * rxsq + _
               2.56852019228982242E+4) * rxsq + _
               1.87295284992346047E+4) * rxsq + _
               5.27905102951428412E+3) * rxsq + _
               6.05183413124413191E+2) * rxsq + _
               2.33520497626869185E+1)
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
   lf_calerf = (retvalu)
End Function
Public Function erf(ByVal xx As Double) As Double
   erf = ((lf_calerf(xx, 0)))
End Function
Public Function erfc(ByVal xx As Double) As Double
   erfc = ((lf_calerf(xx, 1)))
End Function
Public Function erfcx(ByVal xx As Double) As Double
   erfcx = ((lf_calerf(xx, 2)))
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
   erfcinv = (retvalu)
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
   erfcxinv = (xx)
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
   erfinv = (retvalu)
End Function
Public Function erf__1(ByVal xx As Double) As Double
   Dim tt As Double
   Dim ans As Double
   Dim ply As Double
   tt = (1.0 / (1.0 + (0.5 * Math.Abs(xx))))
   ply = ((((((((((1.70872770E-1) * tt - 8.22152230E-1) * tt _
         + 1.48851587E+0) * tt - 1.13520398E+0) * tt + _
         2.78868070E-1) * tt - 1.86288060E-1) * tt + _
         9.67841800E-2) * tt + 3.74091960E-1) * tt + _
         1.00002368E+0) * tt - 1.26551223E+0)
   ans = 1.0 - tt * Math.Exp((-xx * xx) + ply)
   If (xx < 0.0) Then
      ans = -ans
   End If
   erf__1 = (ans)
End Function
Public Function erf__2(ByVal xx As Double) As Double
   Dim tt As Double
   Dim ans As Double
   Dim ply As Double
   tt = 1.0 / (1.0 + 0.3275911 * Math.Abs(xx))
   ply = ((((((1.061405429E+0) * tt - 1.453152027E+0) * tt + _
         1.421413741E+0) * tt - 2.844967360E-1) * tt + _
         2.548295920E-1) * tt + 0.000000000E+0)
   ans = 1.0 - Math.Exp(-xx * xx) * ply
   If (xx < 0.0) Then
      ans = -ans
   End If
   erf__2 = (ans)
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
      factx = 1
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
      sum_curr = 0
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
      sum_curr = sum_curr + 1.0 - Math.Exp(-xxsq) / _
            Sqr(Kw.PI) / axx
      If (xx < 0) Then
         sum_curr = -sum_curr
      End If
   End If
   erf__3 = (sum_curr)
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
         factx = factx * xxsq * xxsq / ((nn - 1) * nn)
         term = (factx * (twonnpone * (nn - xxsq) + twoxxsq) _
               / (4.0 * nn * nn - 1.0))
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
         factx = factx * nn * (nn + 1) / (twoxxsq * twoxxsq)
         term = factx * (1.0 - (2.0 * nn + 1) / twoxxsq)
         sum_prev = sum_curr
         sum_curr = sum_curr + term
         If (Kw.iseq(sum_prev, sum_curr)) Then
            Exit For
         End If
      Next
      sum_curr = sum_curr + 1.0 - Math.Exp(-xxsq) / _
            Sqr(Kw.PI) / axx
      If (xx < 0.0) Then
         sum_curr = -sum_curr
      End If
   End If
   erf__4 = (sum_curr)
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
      If (xx < 0) Then
         qq = 1 - xx
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
      qq = Math.Log(Kw.TAU) / 2.0 + (qq - 0.5) * Math.Log(tt) _
            + Math.Log(sum) - tt
      If (xx < 0) Then
         retvalu = Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * _
               Kw.TAU * xx))) - qq
      Else
         retvalu = qq
      End If
   End If
   lgamma__1 = (retvalu)
End Function
Public Function lgammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
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
      scvx_dy = (scvx_yy - scvx_yp)
      If (Kw.iszero(scvx_dy)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / scvx_dy
   Next
   lgammainv = (scvx_xx)
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
         denom = (((((((1.00000000000000000000E+0) * xx - _
               3.51815701436523470549E+2) * xx - _
               1.70642106651881159223E+4) * xx - _
               2.20528590553854454839E+5) * xx - _
               1.13933444367982507207E+6) * xx - _
               2.53252307177582951285E+6) * xx - _
               2.01889141433532773231E+6)
         retvalu = Math.Log(zz) + xx * numer / denom
      End If
   Else
      uu = (xx - 0.5) * Math.Log(xx) - xx + Math.Log(Sqr(TAU))
      If (1E+8 < xx) Then
         retvalu = uu
      Else
         pp = 1.0 / (xx * xx)
         If (1000 < xx) Then
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
   lf_lgamma_gt_zero = (retvalu)
End Function
Public Function lgamma(ByVal zz As Double) As Double
   Dim retvalu As Double
   If (zz <= 0.0) Then
      If (Kw.isint(zz)) Then
         retvalu = Math.Log(Kw.DBLMAX)
      Else
         retvalu = (Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * _
               Kw.TAU * zz))) - lf_lgamma_gt_zero(1.0 - zz))
      End If
   Else
      retvalu = lf_lgamma_gt_zero(zz)
   End If
   lgamma = (retvalu)
End Function
Private Function lf_eval_cont(ByVal xx As Double, ByVal deg _
      As Long, coeff_arr_pc() As Double) As Double
   Dim sum As Double
   Dim ii As Long
   sum = xx
   For ii = deg To 0 Step - 1
      sum = xx + coeff_arr_pc(ii) / sum
   Next
   lf_eval_cont = (sum)
End Function
Public Function lgamma__2(ByVal zz As Double) As Double
   Dim retvalu As Double
   Dim aa_arr(10) As Double
   Dim sum As Double
   If (zz <= 0.0) Then
      If (Kw.isint(zz)) Then
         retvalu = Math.Log(Kw.DBLMAX)
      Else
         retvalu = (Math.Log(Kw.PI / Math.Abs(Math.Sin(2.0 * _
               Kw.TAU * zz))) - lgamma(1.0 - zz))
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
      retvalu = (Math.Log(Kw.TAU) / 2.0 + (zz - 0.5) * _
            Math.Log(zz) - 2.0 * zz - sum)
   End If
   lgamma__2 = (retvalu)
End Function
Public Function lpermx(ByVal nn As Double, ByVal rr As _
      Double) As Double
   lpermx = ((lgamma(nn + 1.0) - lgamma(nn - rr + 1.0)))
End Function
Public Function permx(ByVal nn As Double, ByVal rr As Double) _
      As Double
   permx = ((Math.Exp(lpermx(nn, rr))))
End Function
Public Function lcombx(ByVal nn As Double, ByVal rr As _
      Double) As Double
   lcombx = ((lpermx(nn, rr) - lgamma(rr + 1.0)))
End Function
Public Function combx(ByVal nn As Double, ByVal rr As Double) _
      As Double
   combx = ((Math.Exp(lcombx(nn, rr))))
End Function
Public Function birthdayx(ByVal nn As Double, ByVal rr As _
      Double) As Double
   birthdayx = ((Math.Exp(lpermx(nn, rr) - Math.Log(nn) * rr)))
End Function
Public Function tgamma__1(ByVal xx As Double) As Double
   Dim zz As Double
   Dim rslt As Double
   Dim denom As Double
   Dim numer As Double
   If (Kw.isposint(1 - xx)) Then
      rslt = Kw.DBLMAX
   Else
      zz = 1.0
      Do While (3.0 <= xx)
         xx = xx - 1
         zz = zz * xx
      Loop
      Do While (xx < 2.0)
         If (Math.Abs(xx) < 1E-9) Then
            Exit Do
         End If
         zz = zz / xx
         xx = xx + 1.0
      Loop
      If (Kw.iseq(xx, 0.0)) Then
         rslt = Kw.DBLMAX
      ElseIf (xx < 2.0) Then
         rslt = zz / ((1 + Kw.EULER * xx) * xx)
      ElseIf (Kw.iseq(xx, 2.0)) Then
         rslt = zz
      Else
         xx = xx - 2.0
         numer = (((((((1.60119522476751861407E-04) * xx + _
               1.19135147006586384913E-03) * xx + _
               1.04213797561761569935E-02) * xx + _
               4.76367800457137231464E-02) * xx + _
               2.07448227648435975150E-01) * xx + _
               4.94214826801497100753E-01) * xx + _
               9.99999999999999996796E-01)
         denom = ((((((((-2.31581873324120129819E-05) * xx + _
               5.39605580493303397842E-04) * xx - _
               4.45641913851797240494E-03) * xx + _
               1.18139785222060435552E-02) * xx + _
               3.58236398605498653373E-02) * xx - _
               2.34591795718243348568E-01) * xx + _
               7.14304917030273074085E-02) * xx + _
               1.00000000000000000320E+00)
         rslt = zz * numer / denom
      End If
   End If
   tgamma__1 = (rslt)
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
   tgamma = (retvalu)
End Function
Public Function tgammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   Dim kk As Double
   Dim cc As Double
   Dim pp As Double
   Dim xx_init As Double
   kk = 1.46163214496836234126265954
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
      scvx_dy = (scvx_yy - scvx_yp)
      If (Kw.iszero(scvx_dy)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / scvx_dy
   Next
   tgammainv = (scvx_xx)
End Function
Private Function lf_gamma_shift(ByVal xx As Double, ByVal yy _
      As Double) As Double
   Dim prod As Double
   If (Kw.isposint(1 - yy)) Then
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
   lf_gamma_shift = (prod)
End Function
Private Function lf_tgamma_gt_half(ByVal xx As Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim yy As Double
   Dim pp_arr(11) As Double
   yy = xx - floor(xx) + 1.0
   pp_arr(0) = +5.716400188274341379136E+3
   pp_arr(1) = -1.481530426768413909044E+4
   pp_arr(2) = +1.429149277657478554025E+4
   pp_arr(3) = -6.348160217641458813289E+3
   pp_arr(4) = +1.301608286058321874105E+3
   pp_arr(5) = -1.081767053514369634679E+2
   pp_arr(6) = +2.605696505611755827729E+0
   pp_arr(7) = -7.423452510201416151527E-3
   pp_arr(8) = +5.384136432509564062961E-8
   pp_arr(9) = -4.023533141268236372067E-9
   sum = 1.000000000000000174663
   For ii = 0 To 9
      sum = sum + pp_arr(ii) / (yy + ii)
   Next
   lf_tgamma_gt_half _
         = (((Sqr(Kw.TAU) * sum * Math.Exp(Math.Log(yy + 8.5) _
               * (yy - 0.5) - yy - 8.5) * lf_gamma_shift(xx, _
               yy))))
End Function
Public Function tgamma__2(ByVal xx As Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim pp_arr(10) As Double
   Dim yy As Double
   Dim rslt As Double
   If (Kw.isposint(1 - xx)) Then
      rslt = Kw.DBLMAX
   Else
      yy = xx - floor(xx) + 2.0
      pp_arr(0) = +7.61800917294715E+1
      pp_arr(1) = -8.65053203294168E+1
      pp_arr(2) = +2.40140982408309E+1
      pp_arr(3) = -1.23173957245015E+0
      pp_arr(4) = +1.20865097386618E-3
      pp_arr(5) = -5.395239384953E-6
      sum = 1.00000000019001E+0
      For ii = 0 To 5
         sum = sum + pp_arr(ii) / (yy + ii)
      Next
      rslt = (Sqr(Kw.TAU) * sum * Math.Exp(Math.Log(yy + 4.5) _
            * (yy - 0.5) - yy - 4.5) * lf_gamma_shift(xx, yy))
   End If
   tgamma__2 = (rslt)
End Function
Public Function tgamma__3(ByVal xx As Double) As Double
   Dim retvalu As Double
   If (Kw.isposint(1 - xx)) Then
      retvalu = Kw.DBLMAX
   ElseIf (xx < 0.5) Then
      retvalu = (Kw.PI / Math.Sin(Kw.PI * xx) / _
            lf_tgamma_gt_half(1.0 - xx))
   Else
      retvalu = lf_tgamma_gt_half(xx)
   End If
   tgamma__3 = (retvalu)
End Function
Public Function tgamma__stirling(ByVal xx As Double) As Double
   Dim yy As Double
   Dim ryy As Double
   Dim sc As Double
   Dim ply As Double
   sc = 1.0
   Do While (xx < 10.0)
      sc = sc / xx
      xx = xx + 1
   Loop
   yy = xx - 1.0
   ryy = 1.0 / yy
   ply = (((((((-5246819.0 / 75246796800.0) * ryy + 163879.0 _
         / 209018880.0) * ryy - 571.0 / 2488320.0) * ryy - _
         139.0 / 51840) * ryy + 1.0 / 288.0) * ryy + 1.0 / _
         12.0) * ryy + 1.0)
   tgamma__stirling _
         = ((sc * Pow(yy / Kw.E, yy) * Sqr(Kw.TAU * yy) * ply))
End Function
Public Function tgammadouble(ByVal xx As Double) As Double
   Dim xxh As Double
   xxh = (xx - 1.0) / 2.0
   tgammadouble _
         = ((Pow(2.0, xxh) * Pow(2.0 / Kw.PI, (1.0 - _
               Math.Cos(Kw.TAU * xxh)) / 4.0) * tgamma(xxh + _
               1.0)))
End Function
Private Function lf_ligamma_xxleaa(ByVal aa As Double, ByVal _
      xx As Double) As Double
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
   lf_ligamma_xxleaa = (sum_curr)
End Function
Private Function lf_uigamma_aalexx(ByVal aa As Double, ByVal _
      xx As Double) As Double
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
   lf_uigamma_aalexx = ((Math.Exp(aa * Math.Log(xx) - xx) / _
         (xx + sum_curr)))
End Function
Public Function ligamma(ByVal aa As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0) Then
      retvalu = DBLMAX
   ElseIf (xx <= 1.1 Or xx <= aa) Then
      retvalu = lf_ligamma_xxleaa(aa, xx)
   Else
      retvalu = tgamma(aa) - lf_uigamma_aalexx(aa, xx)
   End If
   ligamma = (retvalu)
End Function
Public Function uigamma(ByVal aa As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (aa <= 0.0) Then
      retvalu = DBLMAX
   ElseIf (xx <= 0.0) Then
      retvalu = tgamma(aa)
   ElseIf (xx <= 1.1 Or xx <= aa) Then
      retvalu = tgamma(aa) - lf_ligamma_xxleaa(aa, xx)
   Else
      retvalu = lf_uigamma_aalexx(aa, xx)
   End If
   uigamma = (retvalu)
End Function
Public Function rligamma(ByVal aa As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (aa <= 0.0) Then
      retvalu = DBLMAX
   Else
      retvalu = ligamma(aa, xx) / tgamma(aa)
   End If
   rligamma = (retvalu)
End Function
Public Function ruigamma(ByVal aa As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (aa <= 0.0) Then
      retvalu = DBLMAX
   ElseIf (xx <= 0.0) Then
      retvalu = 1
   Else
      retvalu = uigamma(aa, xx) / tgamma(aa)
   End If
   ruigamma = (retvalu)
End Function
Public Function uigamma__1(ByVal aa As Double, ByVal xx As _
      Double) As Double
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
      If (ax < - DBLMAXLN) Then
         retvalu = 0.0
      Else
         ax = Math.Exp(ax)
         If (xx < 1.0 Or xx < aa) Then
            rr = aa
            cc = 1.0
            ans = 1.0
            Do While (True)
               rr = rr + 1
               cc = cc * xx / rr
               ans = ans + cc
               If (cc / ans < DBLEPS) Then
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
               If (1 / DBLEPS < Math.Abs(pk)) Then
                  pkmb = pkmb * DBLEPS
                  pkma = pkma * DBLEPS
                  qkmb = qkmb * DBLEPS
                  qkma = qkma * DBLEPS
               End If
               If (tt <= DBLEPS) Then
                  Exit Do' loop AWAIT
               End If
            Loop
            retvalu = ans * ax
         End If
      End If
   End If
   uigamma__1 = (retvalu)
End Function
Public Function uigammainv(ByVal aa As Double, ByVal yy As _
      Double) As Double
   Dim dd As Double
   Dim tt As Double
   Dim xx As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   dd = 1.0 / (9.0 * aa)
   tt = 1 - dd - gau_quantile(yy) * Sqr(dd)
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
      scvx_dy = (scvx_yy - scvx_yp)
      If (Kw.iszero(scvx_dy)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / scvx_dy
   Next
   uigammainv = (scvx_xx)
End Function
Public Function ligammainv(ByVal aa As Double, ByVal yy As _
      Double) As Double
   ligammainv = ((uigammainv(aa, 1 - yy)))
End Function
Public Function lbeta(ByVal aa As Double, ByVal bb As Double) _
      As Double
   lbeta = ((lgamma(aa) + lgamma(bb) - lgamma(aa + bb)))
End Function
Public Function beta(ByVal aa As Double, ByVal bb As Double) _
      As Double
   Dim retvalu As Double
   Dim lbe As Double
   lbe = lbeta(aa, bb)
   If (DBLMAXLN < lbe) Then
      retvalu = DBLMAX
   ElseIf (- DBLMAXLN < lbe) Then
      retvalu = Math.Exp(lbe)
   Else
      retvalu = -DBLMAX
   End If
   beta = (retvalu)
End Function
Public Function betainc(ByVal aa As Double, ByVal bb As _
      Double, ByVal xx As Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim psq As Double
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
   If (aa <= 0.0 Or bb <= 0.0 Or 1.0 <= xx) Then
      retvalu = 1.0
   ElseIf (xx <= 0.0) Then
      retvalu = 0.0
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
      retvalu = sum_curr * Math.Exp(pp * Math.Log(new_xx) + _
            (qq - 1.0) * Math.Log(compx) - log_beta) / pp
      If (indx = 0) Then
         retvalu = 1.0 - retvalu
      End If
   End If
   betainc = (retvalu)
End Function
Public Function betainc__1(ByVal aa As Double, ByVal bb As _
      Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   Dim lbeta_ab As Double
   Dim front As Double
   Dim ff As Double
   Dim cc As Double
   Dim dd As Double
   Dim ii As Long
   Dim jj As Long
   Dim mm As Long
   Dim numerator As Double
   Dim cd As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= xx) Then
      retvalu = 1.0
   ElseIf ((aa + 1.0) / (aa + bb + 2.0) < xx) Then
      retvalu = (1.0 - betainc__1(bb, aa, 1.0 - xx))
   Else
      lbeta_ab = lbeta(aa, bb)
      front = Math.Exp(Math.Log(xx) * aa + Math.Log(1.0 - xx) _
            * bb - lbeta_ab) / aa
      ff = 1.0
      cc = 1.0
      dd = 0.0
      jj = 0
      ii = 0
      Do While (True)
         If (ii = 0) Then
            numerator = 1.0
         ElseIf (jj = 0) Then
            mm = ii / 2
            numerator = (mm * (bb - mm) * xx) / ((aa + 2.0 * _
                  mm - 1.0) * (aa + 2.0 * mm))
         Else
            mm = (ii - 1) / 2
            numerator = -((aa + mm) * (aa + bb + mm) * xx) / _
                  ((aa + 2.0 * mm) * (aa + 2.0 * mm + 1))
         End If
         dd = 1.0 + numerator * dd
         If (Math.Abs(dd) < DBLEPS * DBLEPS) Then
            dd = DBLEPS * DBLEPS
         End If
         dd = 1.0 / dd
         cc = 1.0 + numerator / cc
         If (Math.Abs(cc) < DBLEPS * DBLEPS) Then
            cc = DBLEPS * DBLEPS
         End If
         cd = cc * dd
         ff = ff * cd
         jj = 1 - ii
         If (Math.Abs(1.0 - cd) < DBLEPS) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (200 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = front * (ff - 1.0)
   End If
   betainc__1 = (retvalu)
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
   lf_digamma_gt_zero _
         = (((shift + Math.Log(sxx) - 1.0 / (2.0 * sxx) + _
               rec_xx_sqr * sumy)))
End Function
Public Function digamma(ByVal xx As Double) As Double
   Dim sxx As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      If (Kw.isint(xx)) Then
         retvalu = Kw.DBLMAX
      Else
         sxx = 2.0 * xx
         retvalu = (lf_digamma_gt_zero(1.0 - xx) - Kw.PI * _
               Math.Cos(sxx) / Math.Sin(sxx))
      End If
   Else
      retvalu = lf_digamma_gt_zero(xx)
   End If
   digamma = (retvalu)
End Function
Public Function digammainv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
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
      scvx_dy = (scvx_yy - scvx_yp)
      If (Kw.iszero(scvx_dy)) Then
         Exit For
      End If
      scvx_dx = scvx_dx * - scvx_yy / scvx_dy
   Next
   digammainv = (scvx_xx)
End Function
Private Function lf_digamma_gt_zero__1(ByVal xx As Double) As _
      Double
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
   lf_digamma_gt_zero__1 _
         = ((Math.Log(lnarg) - (gg / lnarg) - numer / denom))
End Function
Public Function digamma__1(ByVal xx As Double) As Double
   Dim sxx As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      If (Kw.isint(xx)) Then
         retvalu = Kw.DBLMAX
      Else
         sxx = 2.0 * xx
         retvalu = (lf_digamma_gt_zero__1(1.0 - xx) - Kw.PI * _
               Math.Cos(sxx) / Math.Sin(sxx))
      End If
   Else
      retvalu = lf_digamma_gt_zero__1(xx)
   End If
   digamma__1 = (retvalu)
End Function
Public Function factorialinv(ByVal yy As Double) As Double
   factorialinv = ((tgammainv(yy) - 1.0))
End Function
Public Function facinv(ByVal yy As Double) As Double
   facinv = ((tgammainv(yy) - 1.0))
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
   hn = (sum)
End Function
Public Function hn__1(ByVal xx As Double) As Double
   Dim yy As Double
   Dim retvalu As Double
   If (0.0 < xx) Then
      yy = 1.0 / (xx * xx)
      retvalu = ((((((-5.0 / (66.0 * 10.0)) * yy + 1.0 / _
            (30.0 * 8.0)) * yy - 1.0 / (42.0 * 6.0)) * yy + _
            1.0 / (30.0 * 4.0)) * yy - 1.0 / (6.0 * 2.0)) * _
            yy + Kw.EULER) + Math.Log(xx) + 0.5 / xx
   Else
      retvalu = 0.0
   End If
   hn__1 = (retvalu)
End Function
Public Function hnm(ByVal xx As Double, ByVal mm As Double) _
      As Double
   Dim sum As Double
   Dim kk As Double
   Dim fxx As Double
   fxx = floor(xx)
   sum = 0.0
   For kk = fxx To 1 Step - 1
      sum = sum + 1.0 / Pow(kk, mm)
   Next
   hnm = (sum)
End Function
Public Function factorial(ByVal nn As Long) As Double
   ' local-use Vb6 lv_factorial_end
   ' local-use Vb6 lv_factorial_arr
   Dim mm As Long
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
         mm = lv_factorial_end
         lv_factorial_end = nn + 1
         ReDim Preserve lv_factorial_arr(lv_factorial_end)
         Do While (mm < lv_factorial_end)
            lv_factorial_arr(mm) = (mm * lv_factorial_arr(mm _
                  - 1))
            mm = mm + 1
         Loop
      End If
      retvalu = lv_factorial_arr(nn)
   End If
   factorial = (retvalu)
End Function
Public Function factorialdouble(ByVal nn As Long) As Double
   ' local-use Vb6 lv_factorial_b_end
   ' local-use Vb6 lv_factorial_b_arr
   Dim retvalu As Double
   Dim mm As Long
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
         mm = lv_factorial_b_end
         lv_factorial_b_end = nn + 1
         ReDim Preserve lv_factorial_b_arr(lv_factorial_b_end)
         Do While (mm < lv_factorial_b_end)
            lv_factorial_b_arr(mm) = mm * _
                  lv_factorial_b_arr(mm - 2)
            mm = mm + 1
         Loop
      End If
      retvalu = lv_factorial_b_arr(nn)
   End If
   factorialdouble = (retvalu)
End Function
Public Function fac(ByVal nn As Long) As Double
   fac = ((Kw.factorial(nn)))
End Function
Public Function factorialt(ByVal n_things As Long, ByVal _
      r_each As Long) As Double
   Dim ii As Long
   Dim retvalu As Double
   retvalu = 1.0
   For ii = r_each + 1 To n_things
      retvalu = retvalu * ii
   Next
   factorialt = (retvalu)
End Function
Public Function comb(ByVal n_things As Long, ByVal r_each As _
      Long) As Double
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
   comb = (retvalu)
End Function
Public Function perm(ByVal n_things As Long, ByVal r_each As _
      Long) As Double
   perm = ((factorialt(n_things, n_things - r_each)))
End Function
Public Function combination(ByVal n_things As Long, ByVal _
      r_each As Long) As Double
   combination = ((Kw.comb(n_things, r_each)))
End Function
Public Function permutation(ByVal n_things As Long, ByVal _
      r_each As Long) As Double
   permutation = ((Kw.perm(n_things, r_each)))
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
            lv_catalan_arr(kk) = (2 * (2.0 * kk - 1) * _
                  lv_catalan_arr(kk - 1) / (kk + 1.0))
            kk = kk + 1
         Loop
      End If
      retvalu = lv_catalan_arr(nn)
   End If
   catalan = (retvalu)
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
   supercatalan = (retvalu)
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
               lv_bell_x_arr(jj) = lv_bell_x_arr(jj) + _
                     lv_bell_x_arr(jj + 1)
            Next
            lv_bell_arr(kk) = lv_bell_x_arr(0)
            kk = kk + 1
         Loop
      End If
      retvalu = lv_bell_arr(nn)
   End If
   bell = (retvalu)
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
   bellx = (sum / Kw.E)
End Function
Public Function fubini(ByVal nn As Long) As Double
   Dim mm As Long
   Dim sum As Double
   Dim retvalu As Double
   If (nn < 0) Then
      retvalu = 0
   ElseIf (nn = 0) Then
      retvalu = 1
   Else
      sum = 1.0 / (2.0 * Kw.LNTWO * Kw.LNTWO)
      For mm = 2 To nn
         sum = sum * mm / Kw.LNTWO
      Next
      retvalu = Kw.round(sum)
   End If
   fubini = (retvalu)
End Function
Public Function d2lt_d1(ByVal xx As Long, ByVal yy As Long) _
      As Long
   Dim retvalu As Long
   If (0 <= yy And yy <= xx) Then
      retvalu = yy + (xx * (xx + 1)) / 2
   Else
      retvalu = -1
   End If
   d2lt_d1 = (retvalu)
End Function
Public Function d1lt_d2(ByVal nn As Long, ByRef ret_arr_p() _
      As Long) As Long
   Dim basee As Long
   If (nn <= 0) Then
      ret_arr_p(0) = 0
      ret_arr_p(1) = 0
   Else
      basee = floorl((Sqr(1 + 8.0 * nn) - 1) / 2)
      ret_arr_p(1) = nn - basee * (basee + 1) / 2
      ret_arr_p(0) = basee
   End If
   d1lt_d2 = ((ret_arr_p(0)))
End Function
Public Function d2ur_d1(ByVal xx As Long, ByVal yy As Long) _
      As Long
   Dim retvalu As Long
   Dim suma As Long
   If (0 <= xx And 0 <= yy) Then
      suma = (yy + xx)
      retvalu = suma * (suma + 1) / 2 + yy
   Else
      retvalu = -1
   End If
   d2ur_d1 = (retvalu)
End Function
Public Function d1ur_d2(ByVal nn As Long, ByRef ret_arr_p() _
      As Long) As Long
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
   d1ur_d2 = ((ret_arr_p(0)))
End Function
Public Function d2diamond_d1(ByVal xx As Long, ByVal yy As _
      Long) As Long
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
   d2diamond_d1 = (retvalu)
End Function
Public Function d1diamond_d2(ByVal nn As Long, ByRef _
      ret_arr_p() As Long) As Long
   Dim ss As Long
   Dim ssq As Long
   Dim x_coord As Long
   If (nn <= 0) Then
      x_coord = 0
      ret_arr_p(1) = 0
   Else
      ss = floorl(Sqr(nn) / Kw.SQRTTWO)
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
   d1diamond_d2 = (x_coord)
End Function
Public Function d2spiral_d1(ByVal xx As Long, ByVal yy As _
      Long) As Long
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
   d2spiral_d1 = (retvalu)
End Function
Public Function d1spiral_d2(ByVal nn As Long, ByRef _
      ret_arr_p() As Long) As Long
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
   d1spiral_d2 = ((ret_arr_p(0)))
End Function
Public Function d2hypot_d1(ByVal xx As Long, ByVal yy As _
      Long) As Long
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
      xlim = floorl(dist / Kw.SQRTTWO)
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
      retvalu = count + xlim * (xlim + 1) / 2
   Else
      retvalu = -1
   End If
   d2hypot_d1 = (retvalu)
End Function
Public Function binomialx(ByVal xnn As Double, ByVal xkk As _
      Double) As Double
   binomialx _
         = ((Kw.tgamma(xnn + 1) / (Kw.tgamma(xkk + 1) * _
               Kw.tgamma(xnn + 1 - xkk))))
End Function
Public Function binomial(ByVal nn As Long, ByVal kk As Long) _
      As Long
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
   binomial = (retvalu)
End Function
Public Function eulerian(ByVal nn As Long, ByVal mm As Long) _
      As Double
   ' local-use Vb6 lv_euler_arr
   ' local-use Vb6 lv_euler_end
   ' local-use Vb6 lv_euler_max
   Dim cr As Long
   Dim rr As Long
   Dim lz_ind As Long
   Dim rz_ind As Long
   Dim ul_ind As Long
   Dim retvalu As Double
   If (nn < mm Or nn < 0 Or mm < 0) Then
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
      rr = lv_euler_max
      If (rr < nn + 1) Then
         lv_euler_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_euler_arr(lv_euler_end)
         Do While (rr <= nn)
            lz_ind = d2lt_d1(rr, 0)
            lv_euler_arr(lz_ind) = 1
            lv_euler_arr(lz_ind + rr) = 0
            rz_ind = lz_ind + rr - 1
            ul_ind = d2lt_d1(rr - 1, 0)
            cr = 1
            Do While (lz_ind < rz_ind)
               lv_euler_arr(rz_ind) = lv_euler_arr(lz_ind)
               lz_ind = lz_ind + 1
               lv_euler_arr(lz_ind) = ((rr - cr) * _
                     lv_euler_arr(ul_ind) + (cr + 1) * _
                     lv_euler_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               rz_ind = rz_ind - 1
               cr = cr + 1
            Loop
            rr = rr + 1
            lv_euler_max = rr
         Loop
      End If
      retvalu = lv_euler_arr(d2lt_d1(nn, mm))
   End If
   eulerian = (retvalu)
End Function
Public Function entringer(ByVal nn As Long, ByVal kk As Long) _
      As Double
   ' local-use Vb6 lv_entringer_arr
   ' local-use Vb6 lv_entringer_max
   ' local-use Vb6 lv_entringer_end
   Dim cz As Long
   Dim inda As Long
   Dim rr As Long
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
      rr = lv_entringer_max
      If (rr < nn + 1) Then
         lv_entringer_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_entringer_arr(lv_entringer_end)
         Do While (rr <= nn)
            inda = d2lt_d1(rr, 0)
            lv_entringer_arr(inda) = 0
            For cz = 1 To rr
               lv_entringer_arr(inda + cz) = _
                     lv_entringer_arr(inda + cz - 1) + _
                     lv_entringer_arr(inda - cz)
            Next
            rr = rr + 1
            lv_entringer_max = rr
         Loop
      End If
      retvalu = lv_entringer_arr(d2lt_d1(nn, kk))
   End If
   entringer = (retvalu)
End Function
Public Function zigzag(ByVal nn As Long) As Double
   zigzag = ((Kw.entringer(nn, nn)))
End Function
Public Function zig(ByVal nn As Long) As Double
   zig = ((Kw.zigzag(2 * nn)))
End Function
Public Function zag(ByVal nn As Long) As Double
   zag = ((Kw.zigzag(2 * nn - 1)))
End Function
Public Function eulerx(ByVal nn As Long) As Double
   Dim retvalu As Double
   If (nn <= 0 Or Kw.isodd(nn)) Then
      retvalu = 0
   Else
      retvalu = Kw.entringer(nn, nn)
   End If
   eulerx = (retvalu)
End Function
Public Function ballot(ByVal xmm As Double, ByVal xnn As _
      Double) As Double
   ballot = ((Math.Abs(xnn - xmm) / (xmm + xnn)))
End Function
Public Function ballots(ByVal xmm As Double, ByVal xnn As _
      Double) As Double
   Dim retvalu As Double
   If (xmm < xnn) Then
      retvalu = (xnn - xmm + 1.0) / (xnn + 1.0)
   Else
      retvalu = (xmm - xnn + 1.0) / (xmm + 1.0)
   End If
   ballots = (retvalu)
End Function
Public Function stirling1(ByVal nn As Long, ByVal kk As Long) _
      As Double
   ' local-use Vb6 lv_stir_a_arr
   ' local-use Vb6 lv_stir_a_end
   ' local-use Vb6 lv_stir_a_max
   Dim col_k As Long
   Dim ul_ind As Long
   Dim cz_ind As Long
   Dim rr As Long
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
      rr = lv_stir_a_max
      If (rr < nn + 1) Then
         lv_stir_a_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_stir_a_arr(lv_stir_a_end)
         Do While (rr <= nn)
            cz_ind = d2lt_d1(rr, 0)
            lv_stir_a_arr(cz_ind) = 0
            cz_ind = cz_ind + 1
            ul_ind = d2lt_d1(rr - 1, 0)
            For col_k = 1 To rr - 1
               lv_stir_a_arr(cz_ind) = (lv_stir_a_arr(ul_ind) _
                     - (rr - 1) * lv_stir_a_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               cz_ind = cz_ind + 1
            Next
            lv_stir_a_arr(cz_ind) = 1
            rr = rr + 1
            lv_stir_a_max = rr
         Loop
      End If
      retvalu = lv_stir_a_arr(d2lt_d1(nn, kk))
   End If
   stirling1 = (retvalu)
End Function
Public Function stirling2(ByVal nn As Long, ByVal kk As Long) _
      As Double
   ' local-use Vb6 lv_stir_b_arr
   ' local-use Vb6 lv_stir_b_end
   ' local-use Vb6 lv_stir_b_max
   Dim col_k As Long
   Dim ul_ind As Long
   Dim cz_ind As Long
   Dim rr As Long
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
      rr = lv_stir_b_max
      If (rr < nn + 1) Then
         lv_stir_b_end = d2lt_d1(nn + 1, 0)
         ReDim Preserve lv_stir_b_arr(lv_stir_b_end)
         Do While (rr <= nn)
            cz_ind = d2lt_d1(rr, 0)
            lv_stir_b_arr(cz_ind) = 0
            cz_ind = cz_ind + 1
            ul_ind = d2lt_d1(rr - 1, 0)
            For col_k = 1 To rr - 1
               lv_stir_b_arr(cz_ind) = (lv_stir_b_arr(ul_ind) _
                     + col_k * lv_stir_b_arr(ul_ind + 1))
               ul_ind = ul_ind + 1
               cz_ind = cz_ind + 1
            Next
            lv_stir_b_arr(cz_ind) = 1
            rr = rr + 1
            lv_stir_b_max = rr
         Loop
      End If
      retvalu = lv_stir_b_arr(d2lt_d1(nn, kk))
   End If
   stirling2 = (retvalu)
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
   Dim mm As Long
   Dim gd As Double
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
         mm = lv_bern_end
         lv_bern_end = nnhalf + 1
         ReDim Preserve lv_bern_n_arr(lv_bern_end)
         ReDim Preserve lv_bern_d_arr(lv_bern_end)
         Do While (mm < lv_bern_end)
            sz_ind = 2 * mm
            coeff = ((sz_ind + 1) * sz_ind) / 2
            sumn = 1.0 - sz_ind
            sumd = 2.0
            For jj = 1 To mm - 1
               nsumn = Kw.round(sumn * lv_bern_d_arr(jj) + _
                     sumd * coeff * lv_bern_n_arr(jj))
               nsumd = Kw.round(sumd * lv_bern_d_arr(jj))
               gd = gcd(nsumn, nsumd)
               sumn = nsumn / gd
               sumd = nsumd / gd
               xkk = 2 * jj
               coeff = coeff * (sz_ind - xkk + 1.0) / (xkk + 1.0)
               coeff = coeff * (sz_ind - xkk) / (xkk + 2.0)
               coeff = Kw.round(coeff)
            Next
            sumd = sumd * (sz_ind + 1)
            gd = Kw.gcd(sumn, sumd)
            lv_bern_n_arr(mm) = -sumn / gd
            lv_bern_d_arr(mm) = sumd / gd
            mm = mm + 1
         Loop
      End If
      retvalu = lv_bern_n_arr(nnhalf) / lv_bern_d_arr(nnhalf)
   End If
   bernoulli = (retvalu)
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
   bernoullin = (retvalu)
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
   bernoullid = (retvalu)
End Function
Public Function birthday(ByVal xnn As Double, ByVal xrr As _
      Double) As Double
   Dim prob As Double
   Dim ii As Long
   prob = 1.0
   For ii = 1 To xrr - 1
      prob = prob * (xnn - ii) / xnn
   Next
   birthday = (prob)
End Function
Public Function birthdayinv(ByVal xnn As Double, ByVal xprob _
      As Double) As Double
   Dim xrr As Double
   Dim cprob As Double
   cprob = 1.0
   xrr = 1.0
   Do While (xprob < cprob)
      cprob = cprob * (xnn - xrr) / xnn
      xrr = xrr + 1
   Loop
   birthdayinv = (xrr)
End Function
Public Function n2perm(ByVal mm As Long, ByVal nn As Long, _
      ByRef ret_perm_arr_p() As Long) As Long
   Dim ii As Long
   Dim pat_arr() As Long
   Dim source_arr() As Long
   Dim jj As Long
   Dim kk As Long
   Dim sz_ind As Long
   ReDim Preserve pat_arr(nn)
   ReDim Preserve source_arr(nn)
   kk = mm
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
   n2perm = (mm)
End Function
Public Function n2comb(ByVal mm As Long, ByVal nn As Long, _
      ByVal rr As Long, ByRef ret_comb_arr_p() As Long) As Long
   Dim kk As Long
   Dim cc As Long
   Dim qq As Long
   Dim ss As Long
   Dim pp As Long
   kk = Kw.comb(nn, rr) - mm
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
   n2comb = (mm)
End Function
Public Function days_in_month(ByVal g_year As Long, ByVal _
      g_month As Long) As Long
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
   days_in_month = (retvalu)
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
   dy = floor(seconds * Kw.SECOND / Kw.EARTHSOLARDAY)
   tm = (seconds * Kw.SECOND / Kw.EARTHSOLARDAY - dy) * _
         Kw.EARTHSOLARDAY / Kw.HOUR
   hr = floor(tm)
   tm = (tm - hr) * Kw.HOUR / Kw.MINUTE
   mn = floor(tm)
   tm = (tm - mn) * Kw.MINUTE / Kw.SECOND
   sec2dhms _
         = ((dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0))
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
   tm = (dayfrac - dy) * Kw.EARTHSOLARDAY / Kw.HOUR
   hr = floor(tm)
   tm = (tm - hr) * Kw.HOUR / Kw.MINUTE
   mn = floor(tm)
   tm = (tm - mn) * Kw.MINUTE / Kw.SECOND
   day2dhms _
         = ((dy + sg * (hr + (mn + tm / 100.0) / 100.0) / 100.0))
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
   day2dhmsinv _
         = ((dy + (hr * Kw.HOUR + mn * Kw.MINUTE + tm * _
               Kw.SECOND) / Kw.EARTHSOLARDAY))
End Function
Public Function hms2day(ByVal hourx As Double, ByVal minutex _
      As Double, ByVal secondx As Double) As Double
   hms2day _
         = (((secondx * Kw.SECOND + minutex * Kw.MINUTE + _
               hourx * Kw.HOUR) / Kw.EARTHSOLARDAY))
End Function
Public Function hour2day(ByVal hourx As Double) As Double
   hour2day = (hourx * Kw.HOUR / Kw.EARTHSOLARDAY)
End Function
Public Function day2hour(ByVal dayx As Double) As Double
   day2hour = (dayx * Kw.EARTHSOLARDAY / Kw.HOUR)
End Function
Public Function jd2kwt(ByVal jjdtime As Double) As Double
   jd2kwt = (((jjdtime * Kw.JDAY - Kw.JDSEC_AT_0KWT) / Kw.KWT))
End Function
Public Function jd2j2k(ByVal jjdtime As Double) As Double
   jd2j2k = (((jjdtime * Kw.JDAY - Kw.JDSEC_AT_0J2K) / _
         Kw.J2KDAY))
End Function
Public Function jd2uet(ByVal jjdtime As Double) As Double
   jd2uet = (((jjdtime * Kw.JDAY - Kw.JDSEC_AT_0UET) / Kw.UET))
End Function
Public Function kwt2jd(ByVal kwttime As Double) As Double
   kwt2jd = (((kwttime * Kw.KWT + Kw.JDSEC_AT_0KWT) / Kw.JDAY))
End Function
Public Function uet2jd(ByVal uettime As Double) As Double
   uet2jd = (((uettime * Kw.UET + Kw.JDSEC_AT_0UET) / Kw.JDAY))
End Function
Public Function j2k2jd(ByVal jtwoktm As Double) As Double
   j2k2jd = (((jtwoktm * Kw.J2KDAY + Kw.JDSEC_AT_0J2K) / _
         Kw.JDAY))
End Function
Public Function j2k2kwt(ByVal jtwoktm As Double) As Double
   j2k2kwt = ((jd2kwt(j2k2jd(jtwoktm))))
End Function
Public Function j2k2uet(ByVal jtwoktm As Double) As Double
   j2k2uet = ((jd2uet(j2k2jd(jtwoktm))))
End Function
Public Function kwt2j2k(ByVal kwttime As Double) As Double
   kwt2j2k = ((jd2j2k(kwt2jd(kwttime))))
End Function
Public Function kwt2uet(ByVal kwttime As Double) As Double
   kwt2uet = ((jd2uet(kwt2jd(kwttime))))
End Function
Public Function uet2kwt(ByVal uettime As Double) As Double
   uet2kwt = ((jd2kwt(uet2jd(uettime))))
End Function
Public Function uet2j2k(ByVal uettime As Double) As Double
   uet2j2k = ((jd2j2k(uet2jd(uettime))))
End Function
Public Function jd2dow(ByVal jjd As Double) As Long
   Dim jjtemp As Long
   jjtemp = floor(jjd + 1.5)
   jd2dow = (jjtemp Mod 7)
End Function
Public Function j2k2dow(ByVal jtwok As Double) As Long
   Dim jjtemp As Long
   jjtemp = floor(jtwok + 6.5)
   j2k2dow = (jjtemp Mod 7)
End Function
Public Function ymd2doy(ByVal g_year As Long, ByVal g_month _
      As Long, ByVal g_daymon As Double) As Double
   Dim delta As Double
   Do While (g_month < 1)
      g_month = g_month + Kw.MONTHS_IN_YEAR
      g_year = g_year - 1
   Loop
   Do While (Kw.MONTHS_IN_YEAR < g_month)
      g_month = g_month - Kw.MONTHS_IN_YEAR
      g_year = g_year + 1
   Loop
   delta = 0
   If (2 < g_month) Then
      If (Kw.isleapyear(g_year)) Then
         delta = 1
      End If
      delta = delta + floor(30.6001 * g_month - 0.3) - 32.0
   ElseIf (g_month = 2) Then
      delta = 31
   End If
   ymd2doy = (delta + g_daymon)
End Function
Public Function ymd2j2k(ByVal g_year As Double, ByVal g_month _
      As Double, ByVal g_day As Double) As Double
   Dim yr As Double
   Dim mn As Double
   Dim jtwok As Double
   Dim jcen As Double
   Dim dayoffset As Double
   g_year = g_year - 2000
   Do While (g_month < 1)
      g_month = g_month + Kw.MONTHS_IN_YEAR
      g_year = g_year - 1
   Loop
   Do While (Kw.MONTHS_IN_YEAR < g_month)
      g_month = g_month - Kw.MONTHS_IN_YEAR
      g_year = g_year + 1
   Loop
   mn = g_month + 1
   yr = g_year
   If (g_month < 3) Then
      mn = mn + Kw.MONTHS_IN_YEAR
      yr = yr - 1
   End If
   jcen = floor(yr / 100)
   dayoffset = jcen - floor(jcen / 4.0) + 62
   jtwok = (floor(yr * Kw.JYEAR / Kw.EARTHSOLARDAY) + _
         floor(30.6001 * mn - dayoffset) + g_day - 1.5)
   ymd2j2k = (jtwok)
End Function
Public Function ymd2jd(ByVal g_year As Double, ByVal g_month _
      As Double, ByVal g_day As Double) As Double
   ymd2jd = ((j2k2jd(ymd2j2k(g_year, g_month, g_day))))
End Function
Public Function ymd2dow(ByVal g_year As Long, ByVal g_month _
      As Long, ByVal g_daymon As Double) As Long
   ymd2dow = ((jd2dow(ymd2jd(g_year, g_month, g_daymon))))
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
   doomsday = (retvalu)
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
   jcent = floor(((ijulian - 60.5) * Kw.JDAY - _
         Kw.JDSEC_AT_0GREGORIAN) / (100.0 * Kw.GYEAR))
   bbdays = ijulian + jcent - floor(jcent / 4.0)
   g_years = floor((bbdays + 1399.9) * Kw.EARTHSOLARDAY / _
         Kw.JYEAR)
   bdiff = bbdays - floor(g_years * Kw.JYEAR / _
         Kw.EARTHSOLARDAY) + 1522
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
   dtime_rem = Kw.EARTHSOLARDAY / Kw.HOUR * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_HOUR) = floor(dtime_rem)
   dtime_rem = Kw.HOUR / Kw.MINUTE * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_MIN) = floor(dtime_rem)
   dtime_rem = Kw.MINUTE / Kw.SECOND * Kw.frac(dtime_rem)
   lv_ymdhms_arr(LC_GD_SEC) = dtime_rem
   lv_ymdhms_arr(LC_GD_DOW) = floor(Kw.fmod(ijulian + 1.0, 7.0))
   dtime_rem = (lv_ymdhms_arr(LC_GD_MONTH) * 100.0 + _
         lv_ymdhms_arr(LC_GD_DAY) + lv_ymdhms_arr(LC_GD_HOUR) _
         / 100.0 + lv_ymdhms_arr(LC_GD_MIN) / 10000.0 + _
         lv_ymdhms_arr(LC_GD_SEC) / 1000000.0)
   ftime_frac = lv_ymdhms_arr(LC_GD_YEAR) * 10000.0
   If (ftime_frac < 0.0) Then
      lv_ymdhms_arr(LC_GD_NUM) = ftime_frac - dtime_rem
   Else
      lv_ymdhms_arr(LC_GD_NUM) = ftime_frac + dtime_rem
   End If
   jd2ymdhms = ((lv_ymdhms_arr(LC_GD_NUM)))
End Function
Public Function j2k2ymdhms(ByVal jtwokd As Double) As Double
   j2k2ymdhms = ((jd2ymdhms(j2k2jd(jtwokd))))
End Function
Public Function ymdhms_get(ByVal indexp As Long) As Double
   ' local-use Vb6 lv_ymdhms_arr
   Dim retvalu As Double
   If (LC_GD_YEAR <= indexp And indexp < LC_GD_COUNT) Then
      retvalu = lv_ymdhms_arr(indexp)
   Else
      retvalu = -1
   End If
   ymdhms_get = (retvalu)
End Function
Public Function jd2ymdhmsinv() As Double
   ' local-use Vb6 lv_ymdhms_arr
   jd2ymdhmsinv _
         = ((ymd2jd(lv_ymdhms_arr(LC_GD_YEAR), _
               lv_ymdhms_arr(LC_GD_MONTH), _
               lv_ymdhms_arr(LC_GD_DAY)) + _
               hms2day(lv_ymdhms_arr(LC_GD_HOUR), _
               lv_ymdhms_arr(LC_GD_MIN), _
               lv_ymdhms_arr(LC_GD_SEC)) * Kw.EARTHSOLARDAY / _
               Kw.JDAY))
End Function
Public Function print_jd264(ByVal jjulid As Double) As Double
   Call jd2ymdhms(jjulid)
   Call print_base_out(ymdhms_get(LC_GD_YEAR), 64)
   Call print_base_out(ymdhms_get(LC_GD_MONTH), 64)
   Call print_base_out(ymdhms_get(LC_GD_DAY), 64)
   Call print_base_out(ymdhms_get(LC_GD_HOUR), 64)
   Call print_base_out(ymdhms_get(LC_GD_MIN), 64)
   Call print_base_outf(ymdhms_get(LC_GD_SEC), 64)
   print_jd264 = (jjulid)
End Function
Public Function ymdhms2jd(ByVal ymdhmsx As Double) As Double
   Dim xx_arr(LC_GD_COUNT) As Double
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
   ymdhms2jd _
         = ((ymd2jd(xx_arr(LC_GD_YEAR), xx_arr(LC_GD_MONTH), _
               xx_arr(LC_GD_DAY)) + _
               hms2day(xx_arr(LC_GD_HOUR), xx_arr(LC_GD_MIN), _
               xx_arr(LC_GD_SEC)) * Kw.EARTHSOLARDAY / Kw.JDAY))
End Function
Public Function ymdhms2j2k(ByVal ymdhmsx As Double) As Double
   ymdhms2j2k = ((jd2j2k(ymdhms2jd(ymdhmsx))))
End Function
Public Function clocksec(ByVal secnds As Double) As Double
   clocksec = ((Kw.frac(secnds / Kw.MINUTE) * Kw.TAU))
End Function
Public Function clockmin(ByVal secnds As Double) As Double
   clockmin = ((Kw.frac(secnds / Kw.HOUR) * Kw.TAU))
End Function
Public Function clockhour(ByVal secnds As Double) As Double
   clockhour _
         = ((Kw.frac(secnds / (Kw.EARTHSOLARDAY / 2)) * Kw.TAU))
End Function
Public Function clocksum(ByVal secnds As Double) As Double
   Dim sc As Double
   Dim mn As Double
   Dim hr As Double
   sc = clocksec(secnds)
   mn = clockmin(secnds)
   hr = clockhour(secnds)
   clocksum _
         = ((Kw.dist(sc - mn, Kw.TAU) + Kw.dist(hr - mn, _
               Kw.TAU) + Kw.dist(sc - hr, Kw.TAU)))
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
   clockstdev _
         = ((Sqr((da * da + db * db + dc * dc - Kw.square(da _
               + db + dc) / 3) / 2)))
End Function
Public Function date_easter(ByVal g_year As Long) As Long
   Dim cc As Long
   Dim nn As Long
   Dim kk As Long
   Dim ff As Long
   Dim ii As Long
   Dim jj As Long
   Dim mm As Long
   Dim lps As Long
   cc = floor(g_year / 100)
   nn = g_year Mod 19
   lps = floor(g_year / 4)
   kk = floor((cc + 8) / 25 - 1)
   ff = floor((cc - kk) / 3)
   mm = cc - floor(cc / 4)
   ii = (mm - ff + 19 * nn + 15) Mod 30
   If (28 < ii Or (ii = 28 And 10 < nn)) Then
      ii = ii - 1
   End If
   jj = (g_year + lps + ii + 2 - mm) Mod 7
   date_easter = (ii - jj + 28)
End Function
Public Function date_rosh_hashanah(ByVal g_year As Long) As _
      Double
   Dim aa As Long
   Dim dos As Double
   Dim day_of_september As Long
   Dim parts As Double
   Dim doww As Long
   aa = (12 * g_year + 12) Mod 19
   dos = (floor(g_year / 100) - floor(g_year / 400) - 2 + _
         (g_year Mod 4) / 4.0 + (round(Kw.MOONMONTH / _
         Kw.HALAQIM) * aa - 1565.0 * g_year - 445405) / (19.0 _
         * Kw.EARTHSOLARDAY / HALAQIM))
   day_of_september = floor(dos)
   parts = Kw.frac(dos) * Kw.EARTHSOLARDAY / HALAQIM
   doww = ymd2dow(g_year, 9, day_of_september)
   If (doww = 0 Or doww = 3 Or doww = 5) Then
      day_of_september = day_of_september + 1
   ElseIf (doww = 1 And 11 < aa And 23269 <= parts) Then
      day_of_september = day_of_september + 1
   ElseIf (doww = 2 And 6 < aa And 16404 <= parts) Then
      day_of_september = day_of_september + 2
   End If
   date_rosh_hashanah = (day_of_september - 0.25)
End Function
Public Function jewish2jdx(ByVal hebyear As Long) As Double
   Dim hebyear_mone As Long
   Dim months_el As Long
   Dim halaqims_el As Long
   Dim hour_el As Long
   Dim hq_left As Long
   Dim days_left As Long
   Dim alt_days As Long
   Dim alt_dow As Long
   hebyear_mone = hebyear - 1
   months_el = (235 * floor(hebyear_mone / 19) + 12 * _
         (hebyear_mone Mod 19) + floor((7 * (hebyear_mone Mod _
         19) + 1) / 19))
   halaqims_el = 204 + (793 * (months_el Mod HQPHR))
   hour_el = (5 + (12 * months_el) + 793 * floor(months_el / _
         HQPHR) + floor(halaqims_el / HQPHR))
   days_left = 1 + 29 * months_el + floor(hour_el / _
         (Kw.EARTHSOLARDAY / Kw.HOUR))
   alt_days = days_left + 347996
   alt_dow = (alt_days Mod Kw.iround(Kw.WEEK / Kw.EARTHSOLARDAY))
   hq_left = (halaqims_el Mod HQPHR)
   hq_left = hq_left + Kw.EARTHSOLARDAY * Kw.frac(hour_el * _
         Kw.HOUR / Kw.EARTHSOLARDAY) / Kw.HALAQIM
   If (19440 <= hq_left) Then
      If (0 = alt_dow Or 2 = alt_dow Or 4 = alt_dow) Then
         alt_days = alt_days + 2
      Else
         alt_days = alt_days + 1
      End If
   ElseIf (0 = alt_dow) Then
      If (9924 <= hq_left And Not isjewishleap(hebyear)) Then
         alt_days = alt_days + 2
      End If
   ElseIf (6 = alt_dow) Then
      If (16789 <= hq_left And isjewishleap(hebyear - 1)) Then
         alt_days = alt_days + 1
      End If
   ElseIf (1 = alt_dow Or 3 = alt_dow Or 5 = alt_dow) Then
      alt_days = alt_days + 1
   End If
   jewish2jdx = (alt_days + 0.25)
End Function
Public Function date_pesach(ByVal g_year As Long) As Double
   Dim rh As Double
   rh = date_rosh_hashanah(g_year)
   date_pesach = (rh + 21)
End Function
Public Function g2jewish(ByVal g_year As Long) As Long
   g2jewish = (g_year + 3761)
End Function
Public Function jewish2g(ByVal hebyear As Long) As Long
   jewish2g = (hebyear - 3760)
End Function
Public Function isjewishleap(ByVal hebyear As Long) As Boolean
   isjewishleap = (((7 * hebyear + 1) Mod 19 < 7))
End Function
Public Function jewish_months_in_year(ByVal hebyear As Long) _
      As Long
   Dim miy As Long
   If (isjewishleap(hebyear)) Then
      miy = 13
   Else
      miy = 12
   End If
   jewish_months_in_year = (miy)
End Function
Public Function jewish_yearlength(ByVal hebyear As Long) As Long
   Dim g_year As Long
   Dim retvalu As Long
   g_year = jewish2g(hebyear - 1)
   retvalu = (floor(Kw.JYEAR / Kw.EARTHSOLARDAY) + _
         (date_rosh_hashanah(g_year + 1) - _
         date_rosh_hashanah(g_year)))
   If (Kw.isleapyear(g_year + 1)) Then
      retvalu = retvalu + 1
   End If
   jewish_yearlength = (retvalu)
End Function
Public Function jewish2jd(ByVal hebyear As Long) As Double
   Dim gyear As Long
   gyear = jewish2g(hebyear - 1)
   jewish2jd = ((ymd2jd(gyear, 9, date_rosh_hashanah(gyear))))
End Function
Public Function isjewish8short(ByVal hebyear As Long) As Boolean
   Dim remten As Long
   remten = jewish_yearlength(hebyear) Mod 10
   isjewish8short = (remten <> 5)
End Function
Public Function isjewish9short(ByVal hebyear As Long) As Boolean
   Dim remten As Long
   remten = jewish_yearlength(hebyear) Mod 10
   isjewish9short = (remten = 3)
End Function
Public Function jewish_monthlength(ByVal hebyear As Long, _
      ByVal hebmonth As Long) As Long
   Dim retvalu As Long
   retvalu = 30
   If (hebmonth < 1 Or 13 < hebmonth) Then
      retvalu = 0
   ElseIf (hebmonth < 8) Then
      If (Kw.iseven(hebmonth)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 10) Then
      retvalu = 29
   ElseIf (hebmonth = 11) Then
      retvalu = 30
   ElseIf (hebmonth = 8) Then
      If (isjewish8short(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 9) Then
      If (isjewish9short(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 12) Then
      If (Not isjewishleap(hebyear)) Then
         retvalu = 29
      End If
   ElseIf (hebmonth = 13 And isjewishleap(hebyear)) Then
      retvalu = 29
   Else
      retvalu = 0
   End If
   jewish_monthlength = (retvalu)
End Function
Public Function jewish_monthbegin(ByVal hebyear As Long, _
      ByVal hmonth As Long) As Long
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
   ElseIf (Kw.JEWISH_FIRST_MONTH <= hmonth) Then
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
   jewish_monthbegin = (gdate)
End Function
Public Function jewishymd2jd(ByVal hebyear As Long, ByVal _
      hebmonth As Long, ByVal hebday As Double) As Double
   Dim jds As Double
   Dim hmon As Long
   Dim moninyear As Long
   moninyear = jewish_months_in_year(hebyear)
   If (1 <= hebmonth And hebmonth <= moninyear) Then
      jds = jewish2jd(hebyear)
      hmon = Kw.JEWISH_FIRST_MONTH
      Do While (hmon <> hebmonth)
         jds = jds + jewish_monthlength(hebyear, hmon)
         hmon = hmon + 1
         If (moninyear < hmon) Then
            hmon = 1
         ElseIf (hmon = Kw.JEWISH_FIRST_MONTH) Then
            hebyear = hebyear + 1
            moninyear = jewish_months_in_year(hebyear)
         End If
      Loop
   Else
      jds = 0
   End If
   jewishymd2jd = (jds + hebday - 1.0)
End Function
Public Function amean(ByVal xa As Double, ByVal xb As Double) _
      As Double
   amean = (((xa + xb) / 2.0))
End Function
Public Function amean1(ByVal xa As Double) As Double
   amean1 = (((xa + 1.0) / 2.0))
End Function
Public Function lmean(ByVal xa As Double, ByVal xb As Double) _
      As Double
   Dim retvalu As Double
   Dim diffy As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
   lmean = (retvalu)
End Function
Public Function lmean1(ByVal xa As Double) As Double
   lmean1 = ((lmean(1.0, xa)))
End Function
Public Function pmean(ByVal pp As Double, ByVal xa As Double, _
      ByVal xb As Double) As Double
   Dim retvalu As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   ElseIf (Kw.iszero(pp)) Then
      retvalu = Sqr(xa * xb)
   Else
      retvalu = Pow((Pow(xa, pp) + Pow(xb, pp)) / 2.0, 1.0 / pp)
   End If
   pmean = (retvalu)
End Function
Public Function gmean(ByVal xa As Double, ByVal xb As Double) _
      As Double
   Dim retvalu As Double
   If (xa < 0 Or xb < 0) Then
      retvalu = 0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = Sqr(xa * xb)
   End If
   gmean = (retvalu)
End Function
Public Function gmean1(ByVal xa As Double) As Double
   gmean1 = ((gmean(1.0, xa)))
End Function
Public Function hmean(ByVal xa As Double, ByVal xb As Double) _
      As Double
   Dim retvalu As Double
   If (xa < 0 Or xb < 0) Then
      retvalu = 0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = 2.0 * xa * xb / (xa + xb)
   End If
   hmean = (retvalu)
End Function
Public Function hmean1(ByVal xa As Double) As Double
   hmean1 = ((hmean(1.0, xa)))
End Function
Public Function qmean(ByVal xa As Double, ByVal xb As Double) _
      As Double
   Dim retvalu As Double
   If (xa < 0 Or xb < 0) Then
      retvalu = 0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = Sqr((xa * xa + xb * xb) / 2.0)
   End If
   qmean = (retvalu)
End Function
Public Function qmean1(ByVal xa As Double) As Double
   qmean1 = ((qmean(1.0, xa)))
End Function
Public Function heronianmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim retvalu As Double
   If (xa < 0 Or xb < 0) Then
      retvalu = 0
   ElseIf (Kw.iseq(xa, xb)) Then
      retvalu = xa
   Else
      retvalu = (xa + xb + Sqr(xa * xb)) / 3.0
   End If
   heronianmean = (retvalu)
End Function
Public Function heronianmean1(ByVal xa As Double) As Double
   heronianmean1 = ((heronianmean(1.0, xa)))
End Function
Public Function agmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   agmean = (retvalu)
End Function
Public Function agmean1(ByVal xa As Double) As Double
   agmean1 = ((agmean(1.0, xa)))
End Function
Public Function ahmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   ahmean = (retvalu)
End Function
Public Function ahmean1(ByVal xa As Double) As Double
   ahmean1 = ((ahmean(1.0, xa)))
End Function
Public Function almean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   almean = (retvalu)
End Function
Public Function almean1(ByVal xa As Double) As Double
   almean1 = ((almean(1.0, xa)))
End Function
Public Function aqmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   aqmean = (retvalu)
End Function
Public Function aqmean1(ByVal xa As Double) As Double
   aqmean1 = ((aqmean(1.0, xa)))
End Function
Public Function ghmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   ghmean = (retvalu)
End Function
Public Function ghmean1(ByVal xa As Double) As Double
   ghmean1 = ((ghmean(1.0, xa)))
End Function
Public Function glmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   glmean = (retvalu)
End Function
Public Function glmean1(ByVal xa As Double) As Double
   glmean1 = ((glmean(1.0, xa)))
End Function
Public Function gqmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   gqmean = (retvalu)
End Function
Public Function gqmean1(ByVal xa As Double) As Double
   gqmean1 = ((gqmean(1.0, xa)))
End Function
Public Function hlmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   hlmean = (retvalu)
End Function
Public Function hlmean1(ByVal xa As Double) As Double
   hlmean1 = ((hlmean(1.0, xa)))
End Function
Public Function hqmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   hqmean = (retvalu)
End Function
Public Function hqmean1(ByVal xa As Double) As Double
   hqmean1 = ((hqmean(1.0, xa)))
End Function
Public Function lqmean(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim pdifff As Double
   Dim cdifff As Double
   If (xa <= 0 Or xb <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xb, 10 * DBLEPS) Or pdifff < _
               cdifff) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xtmp
   End If
   lqmean = (retvalu)
End Function
Public Function lqmean1(ByVal xa As Double) As Double
   lqmean1 = ((lqmean(1.0, xa)))
End Function
Public Function agmean__1(ByVal xa As Double, ByVal xb As _
      Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   Dim xtmp As Double
   Dim xsgn As Double
   xsgn = 1
   ii = 0
   Do While (True)
      xtmp = xa
      xa = (xa + xb) / 2.0
      xb = Sqr(Math.Abs(xtmp * xb)) * Kw.sign(xa)
      If (Kw.iswithin(xa, xb, 10 * DBLEPS)) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
      If (20 <= ii) Then
         Exit Do' loop AWAIT
      End If
   Loop
   retvalu = xsgn * xtmp
   agmean__1 = (retvalu)
End Function
Public Function aghmean(ByVal xa As Double, ByVal xb As _
      Double, ByVal xc As Double) As Double
   Dim ii As Long
   Dim ta As Double
   Dim tb As Double
   Dim tc As Double
   Dim retvalu As Double
   If (xa <= 0 Or xb <= 0 Or xc <= 0) Then
      retvalu = 0
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
         If (Kw.iswithin(xa, xc, 10 * DBLEPS)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = xb
   End If
   aghmean = (retvalu)
End Function
Public Function rms(ByVal xa As Double, ByVal xb As Double) _
      As Double
   rms = ((Sqr((xa * xa + xb * xb) / 2.0)))
End Function
Public Function agmean1inv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
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
         x_init = ((((((((-0.09765625) * cc + 0.12890625) * _
               cc + 0.18750000) * cc + 0.18750000) * cc - _
               0.25000000) * cc + 0.50000000) * cc + _
               2.00000000) * cc + 1.00000000)
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
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   agmean1inv = (scvx_xx)
End Function
Public Function ghmean1inv(ByVal yy As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   Dim x_init As Double
   If (yy <= 0.0) Then
      scvx_xx = 0.0
   Else
      x_init = Math.Exp(Kw.PI * yy / 2.0 - 1.385) - 0.22
      scvx_dx = 0.2
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
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   ghmean1inv = (scvx_xx)
End Function
Public Function contraharmonic(ByVal nn As Long, val_arr_pc() _
      As Double) As Double
   Dim denom As Double
   Dim numer As Double
   Dim ii As Long
   numer = 0.0
   denom = 0.0
   For ii = 0 To nn - 1
      denom = denom + val_arr_pc(ii) * val_arr_pc(ii)
      numer = numer + val_arr_pc(ii)
   Next
   contraharmonic = (denom / numer)
End Function
Private Function lf_ran_cycle(ByVal nn As Long) As Long
   ' local-use Vb6 lv_ran_x_arr
   ' local-use Vb6 lv_ran_a_arr
   Dim aa As Long
   Dim bb As Long
   Dim cc As Long
   Dim mody As Long
   aa = 0
   Do While (aa < LC_KNUTH_KK_COUNT)
      lv_ran_a_arr(aa) = lv_ran_x_arr(aa)
      aa = aa + 1
   Loop
   bb = 0
   cc = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL)
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
   Do While (aa < LC_KNUTH_KK_COUNT)
      mody = lv_ran_a_arr(bb) - lv_ran_x_arr(cc)
      lv_ran_x_arr(aa) = (LC_KNUTH_MAX And mody)
      aa = aa + 1
      bb = bb + 1
      cc = cc + 1
   Loop
   lf_ran_cycle = (bb)
End Function
Private Function lf_fill_ranz() As Long
   ' local-use Vb6 lv_ranz_magic
   ' local-use Vb6 lv_ranz_ind
   ' local-use Vb6 lv_ranz_arr
   ' local-use Vb6 lv_ran_a_arr
   Dim jj As Long
   Call lf_ran_cycle(LC_KNUTH_QUALITY_COUNT)
   For jj = 0 To LC_KNUTH_QUALITY_COUNT - 1
      lv_ranz_arr(jj) = lv_ran_a_arr(jj)
   Next
   lv_ranz_arr(LC_KNUTH_KK_COUNT) = -1
   lv_ranz_ind = 0
   lv_ranz_magic = Kw.magicset()
   lf_fill_ranz = ((lv_ranz_arr(0)))
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
   lf_next_ranz = ((lv_ranz_arr(lv_ranz_ind - 1)))
End Function
Public Function rand_init_array(ByVal seed_size As Long, _
      seed_arr_pc() As Long) As Double
   ' local-use Vb6 lv_ran_x_arr
   Dim tt As Long
   Dim jj As Long
   Dim kk As Long
   Dim dd As Long
   Dim rnd_arr(2 * LC_KNUTH_KK_COUNT) As Long
   Dim rndss As Long
   Dim rndx As Long
   Dim rndff As Long
   Dim seed_ind As Long
   Dim bitmask As Long
   rndss = ((seed_arr_pc(0) + 2) And (LC_KNUTH_MAX - 1))
   For jj = 0 To LC_KNUTH_KK_COUNT - 1
      rnd_arr(jj) = rndss
      rndss = (rndss * 2 ^ 1)
      If (LC_KNUTH_MAX < rndss) Then
         rndss = rndss - (LC_KNUTH_MAX - 1)
      End If
   Next
   rndff = 0
   seed_ind = 0
   bitmask = 0
   For jj = 0 To LC_KNUTH_KK_COUNT - 1
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
      bitmask = (bitmask \ 2 ^ 1)
   Next
   rnd_arr(1) = rnd_arr(1) + 1
   rndss = (seed_arr_pc(0) And LC_KNUTH_MAX)
   tt = LC_KNUTH_TT - 1
   Do While (0 < tt)
      For jj = LC_KNUTH_KK_COUNT - 1 To 1 Step - 1
         rnd_arr(jj + jj) = rnd_arr(jj)
         rnd_arr(jj + jj - 1) = 0
      Next
      jj = LC_KNUTH_KK_COUNT + LC_KNUTH_KK_COUNT - 2
      dd = LC_KNUTH_KK_COUNT + LC_KNUTH_LL - 2
      kk = LC_KNUTH_KK_COUNT - 2
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
         For jj = LC_KNUTH_KK_COUNT To 1 Step - 1
            rnd_arr(jj) = rnd_arr(jj - 1)
         Next
         rnd_arr(0) = rnd_arr(LC_KNUTH_KK_COUNT)
         jj = rnd_arr(LC_KNUTH_LL) - rnd_arr(0)
         rnd_arr(LC_KNUTH_LL) = (LC_KNUTH_MAX And jj)
         rndss = (rndss \ 2 ^ 1)
      ElseIf (rndss = 0) Then
         tt = tt - 1
      Else
         rndss = (rndss \ 2 ^ 1)
      End If
   Loop
   kk = (LC_KNUTH_KK_COUNT - LC_KNUTH_LL)
   jj = 0
   Do While (jj < LC_KNUTH_LL)
      lv_ran_x_arr(kk) = rnd_arr(jj)
      kk = kk + 1
      jj = jj + 1
   Loop
   kk = 0
   Do While (jj < LC_KNUTH_KK_COUNT)
      lv_ran_x_arr(kk) = rnd_arr(jj)
      kk = kk + 1
      jj = jj + 1
   Loop
   For jj = 0 To 9
      Call lf_ran_cycle(2 * LC_KNUTH_KK_COUNT - 1)
   Next
   Call lf_fill_ranz()
   rand_init_array = 0
End Function
Public Function rand_init(ByVal seed As Double) As Double
   Dim sd_arr(2) As Long
   sd_arr(0) = floor(seed)
   sd_arr(1) = floor(frac(seed) * Kw.INTMAX)
   Call rand_init_array(2, sd_arr)
   rand_init = (seed)
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
   randl = (retvalu)
End Function
Public Function randd() As Double
   randd _
         = (((lf_next_ranz() + lf_next_ranz() / (LC_KNUTH_MAX _
               + 1.0)) / (LC_KNUTH_MAX + 1.0)))
End Function
Public Function int_pdf(ByVal nn As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   Dim mm As Double
   If (xx < 0.0 Or nn < xx Or Not isint(xx)) Then
      retvalu = 0.0
   Else
      mm = floor(nn)
      If (Kw.isint(nn)) Then
         If (xx < nn) Then
            retvalu = 1.0 / nn
         Else
            retvalu = 0
         End If
      Else
         If (xx < mm) Then
            retvalu = 1.0 / nn
         Else
            retvalu = 1.0 - mm / nn
         End If
      End If
   End If
   int_pdf = (retvalu)
End Function
Public Function int_cdf(ByVal nn As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   Dim mm As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (nn <= xx) Then
      retvalu = 1.0
   Else
      mm = floor(nn)
      If (xx < mm) Then
         retvalu = (floor(xx) + 1) / nn
      Else
         retvalu = 1
      End If
   End If
   int_cdf = (retvalu)
End Function
Public Function int_quantile(ByVal nn As Double, ByVal prbx _
      As Double) As Double
   Dim retvalu As Double
   If (prbx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 - frac(nn) / nn <= prbx) Then
      retvalu = Ceil(nn - 1)
   Else
      retvalu = floor(nn * prbx + 1)
   End If
   int_quantile = (retvalu)
End Function
Public Function int_rand(ByVal nn As Double) As Long
   Dim retvalu As Long
   If (nn <= 1) Then
      retvalu = 0
   Else
      retvalu = floorl(randd() * nn)
   End If
   int_rand = (retvalu)
End Function
Public Function normal_pdf(ByVal xx As Double) As Double
   normal_pdf = ((Math.Exp(-xx * xx / 2.0) / (Sqr(Kw.TAU))))
End Function
Public Function normal_cdf(ByVal xx As Double) As Double
   normal_cdf = ((Kw.erf(xx / Kw.SQRTTWO) / 2.0 + 0.5))
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
      retvalu = (sum_curr * Math.Exp(-0.5 * (xx_sqr + _
            Math.Log(Kw.TAU))) + 0.5)
   End If
   normal_cdf__1 = (retvalu)
End Function
Public Function normal_quantile(ByVal prbx As Double) As Double
   normal_quantile = ((Kw.SQRTTWO * Kw.erfinv(2.0 * prbx - 1.0)))
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
   normal_rand = (retvalu)
End Function
Public Function gau_pdf(ByVal xx As Double) As Double
   gau_pdf = ((normal_pdf(xx)))
End Function
Public Function gau_cdf(ByVal xx As Double) As Double
   gau_cdf = ((normal_cdf(xx)))
End Function
Public Function gau_quantile(ByVal prbx As Double) As Double
   gau_quantile = ((normal_quantile(prbx)))
End Function
Public Function gau_rand() As Double
   gau_rand = ((normal_rand()))
End Function
Public Function normal_quantile__1(ByVal prbx As Double) As _
      Double
   Dim retvalu As Double
   Dim p_low As Double
   Dim qq As Double
   Dim rr As Double
   Dim denom As Double
   Dim numer As Double
   p_low = 0.02425
   If (prbx <= 0.0) Then
      retvalu = -(Kw.DBLMAX)
   ElseIf (1.0 <= prbx) Then
      retvalu = Kw.DBLMAX
   ElseIf (p_low <= prbx And prbx <= 1.0 - p_low) Then
      qq = prbx - 0.5
      rr = qq * qq
      numer = ((((((-3.96968302866538E+1) * rr + _
            2.20946098424521E+2) * rr - 2.75928510446969E+2) _
            * rr + 1.38357751867269E+2) * rr - _
            3.06647980661472E+1) * rr + 2.50662827745924E+0)
      denom = ((((((-5.44760987982241E+1) * rr + _
            1.61585836858041E+2) * rr - 1.55698979859887E+2) _
            * rr + 6.68013118877197E+1) * rr - _
            1.32806815528857E+1) * rr + 1.00000000000000E+0)
      retvalu = (qq * numer / denom)
   Else
      If (prbx < p_low) Then
         rr = Sqr(-2.0 * Math.Log(prbx))
         qq = 1.0
      Else
         rr = Sqr(-2.0 * Math.Log(1 - prbx))
         qq = -1.0
      End If
      numer = ((((((-7.78489400243029E-3) * rr - _
            3.22396458041136E-1) * rr - 2.40075827716184E+0) _
            * rr - 2.54973253934373E+0) * rr + _
            4.37466414146497E+0) * rr + 2.93816398269878E+0)
      denom = (((((7.78469570904146E-3) * rr + _
            3.22467129070040E-1) * rr + 2.44513413714300E+0) _
            * rr + 3.75440866190742E+0) * rr + _
            1.00000000000000E+0)
      retvalu = qq * numer / denom
   End If
   normal_quantile__1 = (retvalu)
End Function
Public Function uni_pdf(ByVal max_x As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (max_x <= 0.0 Or xx <= 0.0 Or max_x <= xx) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / max_x
   End If
   uni_pdf = (retvalu)
End Function
Public Function uni_cdf(ByVal max_x As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (max_x <= 0.0 Or xx < 0.0) Then
      retvalu = 0.0
   ElseIf (max_x < xx) Then
      retvalu = 1.0
   Else
      retvalu = xx / max_x
   End If
   uni_cdf = (retvalu)
End Function
Public Function uni_quantile(ByVal max_x As Double, ByVal _
      prbx As Double) As Double
   Dim retvalu As Double
   If (prbx < 0.0 Or max_x <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_x < prbx) Then
      retvalu = 1.0
   Else
      retvalu = prbx * max_x
   End If
   uni_quantile = (retvalu)
End Function
Public Function uni_rand(ByVal max_x As Double) As Double
   uni_rand = ((uni_quantile(max_x, randd())))
End Function
Public Function exp_pdf(ByVal scal As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx < 0.0 Or scal <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = scal * Math.Exp(-scal * xx)
   End If
   exp_pdf = (retvalu)
End Function
Public Function exp_cdf(ByVal scal As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx < 0.0 Or scal <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 - Math.Exp(-scal * xx)
   End If
   exp_cdf = (retvalu)
End Function
Public Function exp_quantile(ByVal scal As Double, ByVal prbx _
      As Double) As Double
   Dim retvalu As Double
   If (prbx <= 0.0 Or scal <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = Kw.DBLMAX
   Else
      retvalu = -Math.Log(1.0 - prbx) / scal
   End If
   exp_quantile = (retvalu)
End Function
Public Function exp_rand(ByVal scal As Double) As Double
   exp_rand = ((- Math.Log(randd()) / scal))
End Function
Public Function poi_pdf(ByVal meanx As Double, ByVal xx As _
      Double) As Double
   Dim kk As Double
   Dim retvalu As Double
   If (xx < 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   Else
      kk = floor(xx)
      retvalu = Pow(meanx, kk) * Math.Exp(-meanx) / factorial(kk)
   End If
   poi_pdf = (retvalu)
End Function
Public Function poi_cdf(ByVal meanx As Double, ByVal xx As _
      Double) As Double
   Dim ii As Long
   Dim kk As Long
   Dim sum As Double
   Dim term As Double
   Dim retvalu As Double
   If (xx <= 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1000 < xx / meanx) Then
      retvalu = 1
   Else
      term = Math.Exp(-meanx)
      sum = term
      kk = floorl(xx)
      For ii = 1 To kk
         term = term * meanx / ii
         sum = sum + term
      Next
      retvalu = sum
   End If
   poi_cdf = (retvalu)
End Function
Public Function poi_quantile(ByVal meanx As Double, ByVal _
      prbx As Double) As Double
   Dim ii As Long
   Dim sum As Double
   Dim prevsum As Double
   Dim term As Double
   Dim retvalu As Double
   If (prbx <= 0.0 Or meanx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = DBLMAX
   Else
      prevsum = 0.0
      term = Math.Exp(-meanx)
      sum = term
      ii = 0
      Do While (sum <= prbx)
         ii = ii + 1
         term = term * meanx / ii
         prevsum = sum
         sum = sum + term
      Loop
      If (sum - prbx < prbx - prevsum) Then
         retvalu = ii
      Else
         retvalu = ii - 1
      End If
   End If
   poi_quantile = (retvalu)
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
      poi = poi * 1.0 * meanx / nn
      sum = sum + poi
   Loop
   poi_rand = (nn)
End Function
Public Function geo_pdf(ByVal prob As Double, ByVal kk As _
      Double) As Double
   Dim retvalu As Double
   If (kk < 0 Or prob < 0.0 Or 1.0 <= prob) Then
      retvalu = 0.0
   Else
      retvalu = Pow(1.0 - prob, kk) * prob
   End If
   geo_pdf = (retvalu)
End Function
Public Function geo_cdf(ByVal prob As Double, ByVal kk As _
      Double) As Double
   Dim retvalu As Double
   If (kk <= -1 Or prob < 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prob) Then
      retvalu = 1.0
   Else
      retvalu = 1.0 - Pow(1.0 - prob, kk + 1)
   End If
   geo_cdf = (retvalu)
End Function
Public Function geo_quantile(ByVal prob As Double, ByVal prbx _
      As Double) As Double
   Dim retvalu As Double
   If (prbx <= 0.0 Or 1.0 <= prbx Or prob <= 0.0 Or 1.0 <= _
         prob) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log(1.0 - prbx) / Math.Log(1.0 - prob) - 1.0
   End If
   geo_quantile = (retvalu)
End Function
Public Function geo_rand(ByVal prob As Double) As Long
   geo_rand = ((floorl(Math.Log(randd()) / Math.Log(1.0 - _
         prob))))
End Function
Public Function cauchy_pdf(ByVal scal As Double, ByVal xx As _
      Double) As Double
   cauchy_pdf _
         = ((1.0 / (Kw.PI * scal * (1 + (Kw.square(xx / _
               scal))))))
End Function
Public Function cauchy_cdf(ByVal scal As Double, ByVal xx As _
      Double) As Double
   cauchy_cdf = ((taninv(xx / scal) / Kw.PI + 0.5))
End Function
Public Function cauchy_quantile(ByVal scal As Double, ByVal _
      prbx As Double) As Double
   cauchy_quantile = ((scal * Math.Tan((prbx - 0.5) * Kw.PI)))
End Function
Public Function cauchy_rand(ByVal scal As Double) As Double
   cauchy_rand = ((cauchy_quantile(scal, randd())))
End Function
Public Function logistic_pdf(ByVal ss As Double, ByVal xx As _
      Double) As Double
   Dim exs As Double
   Dim retvalu As Double
   If (ss <= 0.0) Then
      retvalu = 0.0
   Else
      exs = Math.Exp(-xx / ss)
      retvalu = exs / (ss * Pow(1.0 + exs, 2.0))
   End If
   logistic_pdf = (retvalu)
End Function
Public Function logistic_cdf(ByVal ss As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (ss <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (1.0 + Math.Exp(-xx / ss))
   End If
   logistic_cdf = (retvalu)
End Function
Public Function logistic_quantile(ByVal ss As Double, ByVal _
      prbx As Double) As Double
   Dim retvalu As Double
   If (prbx <= 0.0 Or ss <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = 1.0
   Else
      retvalu = -ss * Math.Log(1.0 / prbx - 1.0)
   End If
   logistic_quantile = (retvalu)
End Function
Public Function logistic_rand(ByVal ss As Double) As Double
   logistic_rand = ((- ss * Math.Log(1.0 / randd() - 1.0)))
End Function
Public Function tri_pdf(ByVal pp As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0
   Else
      If (xx < 0.0 Or 1.0 < xx) Then
         retvalu = 0.0
      ElseIf (xx < pp) Then
         retvalu = Kw.divi(2.0 * xx, pp, 2.0)
      Else
         retvalu = Kw.divi(2.0 * (1.0 - xx), 1.0 - pp, 2.0)
      End If
   End If
   tri_pdf = (retvalu)
End Function
Public Function tri_cdf(ByVal pp As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0
   Else
      If (xx <= 0) Then
         retvalu = 0
      ElseIf (xx < pp) Then
         retvalu = xx * xx / pp
      ElseIf (xx < 1.0) Then
         retvalu = 1.0 - Kw.square(1.0 - xx) / (1.0 - pp)
      Else
         retvalu = 1.0
      End If
   End If
   tri_cdf = (retvalu)
End Function
Public Function tri_quantile(ByVal pp As Double, ByVal prbx _
      As Double) As Double
   Dim retvalu As Double
   If (pp < 0.0 Or 1.0 < pp) Then
      retvalu = 0
   Else
      If (prbx <= 0) Then
         retvalu = 0
      ElseIf (prbx < pp) Then
         retvalu = Sqr(prbx * pp)
      ElseIf (prbx < 1.0) Then
         retvalu = 1.0 - Sqr((1.0 - prbx) * (1.0 - pp))
      Else
         retvalu = 1.0
      End If
   End If
   tri_quantile = (retvalu)
End Function
Public Function tri_rand(ByVal pp As Double) As Double
   Dim xx As Double
   Dim yy As Double
   xx = randd()
   yy = randd()
   If (xx < pp) Then
      If (2 * xx < pp * yy) Then
         xx = pp - xx
      End If
   Else
      If ((pp - 1.0) * yy < 2.0 * (xx - 1.0)) Then
         xx = (pp + 1.0) - xx
      End If
   End If
   tri_rand = (xx)
End Function
Public Function trap_pdf(ByVal para As Double, ByVal parb As _
      Double, ByVal xx As Double) As Double
   Dim retvalu As Double
   If (xx < 0.0 Or 1.0 < xx Or para < 0.0 Or parb < para Or _
         1.0 < parb) Then
      retvalu = 0.0
   Else
      If (xx < para) Then
         retvalu = xx / para
      ElseIf (xx <= parb) Then
         retvalu = 1.0
      Else
         retvalu = (1.0 - xx) / (1.0 - parb)
      End If
   End If
   trap_pdf = ((retvalu * 2.0 / (1.0 + parb - para)))
End Function
Public Function trap_cdf(ByVal para As Double, ByVal parb As _
      Double, ByVal xx As Double) As Double
   Dim mm As Double
   Dim retvalu As Double
   If (para < 0.0 Or parb < para Or 1.0 < parb) Then
      retvalu = 0.0
   ElseIf (xx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= xx) Then
      retvalu = 1.0
   Else
      mm = 2.0 / (1.0 + parb - para)
      If (xx < para) Then
         retvalu = mm * xx * xx / (2.0 * para)
      ElseIf (xx < parb) Then
         retvalu = mm * (xx - para / 2.0)
      Else
         retvalu = 1.0 - mm * Kw.square(1.0 - xx) / (2.0 * _
               (1.0 - parb))
      End If
   End If
   trap_cdf = (retvalu)
End Function
Public Function trap_quantile(ByVal para As Double, ByVal _
      parb As Double, ByVal prbx As Double) As Double
   Dim mm As Double
   Dim retvalu As Double
   If (para < 0.0 Or parb < para Or 1.0 < parb) Then
      retvalu = 0.0
   ElseIf (prbx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = 1.0
   Else
      mm = 2.0 / (1.0 + parb - para)
      If (prbx < para * mm / 2.0) Then
         retvalu = Sqr((2.0 * para * prbx) / mm)
      ElseIf (prbx < 1.0 - mm * (1.0 - parb) / 2.0) Then
         retvalu = prbx / mm + para / 2.0
      Else
         retvalu = 1.0 - Kw.SQRTTWO * Sqr((1.0 - parb) * (1.0 _
               - prbx) / mm)
      End If
   End If
   trap_quantile = (retvalu)
End Function
Public Function trap_rand(ByVal para As Double, ByVal parb As _
      Double) As Double
   Dim xx As Double
   Dim retvalu As Double
   retvalu = -1
   Do While (True)
      xx = randd()
      If (xx < para) Then
         If (randd() * para < xx) Then
            retvalu = xx
         End If
      ElseIf (xx <= parb) Then
         retvalu = xx
      Else
         If (randd() * (1.0 - parb) < (1.0 - xx)) Then
            retvalu = xx
         End If
      End If
      If (0.0 <= retvalu) Then
         Exit Do' loop AWAIT
      End If
   Loop
   trap_rand = (retvalu)
End Function
Public Function pareto_pdf(ByVal shap As Double, ByVal scal _
      As Double, ByVal xx As Double) As Double
   pareto_pdf = ((shap * Pow(scal / xx, shap) / xx))
End Function
Public Function pareto_cdf(ByVal shap As Double, ByVal scal _
      As Double, ByVal xx As Double) As Double
   pareto_cdf = ((1.0 - Pow(scal / xx, shap)))
End Function
Public Function pareto_quantile(ByVal shap As Double, ByVal _
      scal As Double, ByVal prbx As Double) As Double
   pareto_quantile = ((scal / Pow(1.0 - prbx, 1.0 / shap)))
End Function
Public Function pareto_rand(ByVal shap As Double, ByVal scal _
      As Double) As Double
   pareto_rand = ((scal / Pow(randd(), 1.0 / shap)))
End Function
Public Function gompertz_pdf(ByVal shap As Double, ByVal scal _
      As Double, ByVal xx As Double) As Double
   gompertz_pdf _
         = ((scal * shap * Math.Exp(shap + scal * xx - shap * _
               Math.Exp(scal * xx))))
End Function
Public Function gompertz_cdf(ByVal shap As Double, ByVal scal _
      As Double, ByVal xx As Double) As Double
   gompertz_cdf = ((1.0 - Math.Exp(-shap * (Math.Exp(scal * _
         xx) - 1))))
End Function
Public Function gompertz_quantile(ByVal shap As Double, ByVal _
      scal As Double, ByVal prbx As Double) As Double
   gompertz_quantile = ((Math.Log(1 - Math.Log(1.0 - prbx) / _
         shap) / scal))
End Function
Public Function gompertz_rand(ByVal shap As Double, ByVal _
      scal As Double) As Double
   gompertz_rand = ((gompertz_quantile(shap, scal, randd())))
End Function
Public Function zipf_pdf(ByVal ss As Double, ByVal max_kk As _
      Long, ByVal kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0 Or max_kk < kk) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (Pow(kk, ss) * Kw.hnm(max_kk, ss))
   End If
   zipf_pdf = (retvalu)
End Function
Public Function zipf_cdf(ByVal ss As Double, ByVal max_kk As _
      Long, ByVal kk As Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_kk < kk) Then
      retvalu = 1.0
   Else
      retvalu = Kw.hnm(kk, ss) / Kw.hnm(max_kk, ss)
   End If
   zipf_cdf = (retvalu)
End Function
Public Function zipf_quantile(ByVal ss As Double, ByVal _
      max_kk As Long, ByVal prbx As Double) As Long
   Dim ii As Long
   Dim summ As Double
   Dim target As Double
   target = prbx * Kw.hnm(max_kk, ss)
   summ = 0
   ii = 1
   Do While (True)
      summ = summ + 1.0 / Pow(ii, ss)
      If (target <= summ) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   zipf_quantile = (ii)
End Function
Public Function zipf_rand(ByVal ss As Double, ByVal max_kk As _
      Long) As Long
   zipf_rand = ((zipf_quantile(ss, max_kk, randd())))
End Function
Public Function beta_pdf(ByVal shap_a As Double, ByVal shap_b _
      As Double, ByVal xx As Double) As Double
   beta_pdf _
         = ((Pow(xx, shap_a - 1.0) * Pow((1.0 - xx), shap_b - _
               1.0) / beta(shap_a, shap_b)))
End Function
Public Function beta_cdf(ByVal shap_a As Double, ByVal shap_b _
      As Double, ByVal xx As Double) As Double
   beta_cdf = ((betainc(shap_a, shap_b, xx)))
End Function
Public Function beta_quantile(ByVal shap_a As Double, ByVal _
      shap_b As Double, ByVal prbx As Double) As Double
   Dim retvalu As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   If (prbx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = 1.0
   Else
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = prbx - beta_cdf(shap_a, shap_b, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
      retvalu = scvx_xx
   End If
   beta_quantile = (retvalu)
End Function
Public Function beta_rand(ByVal shap_a As Double, ByVal _
      shap_b As Double) As Double
   beta_rand = ((beta_quantile(shap_a, shap_b, randd())))
End Function
Public Function gamma_pdf(ByVal shap As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Math.Exp(Math.Log(xx) * (shap - 1.0) - xx) / _
            Kw.tgamma(shap)
   End If
   gamma_pdf = (retvalu)
End Function
Public Function gamma_cdf(ByVal shap As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   Dim rr As Double
   Dim ii As Long
   Dim sum As Double
   If (xx <= 0.0 Or shap <= 0.0) Then
      retvalu = 0.0
   ElseIf (Kw.isint(shap)) Then
      sum = 1.0
      rr = 1.0
      For ii = 1 To shap - 1
         rr = rr * xx / ii
         sum = sum + rr
      Next
      retvalu = 1.0 - Math.Exp(-xx) * sum
   Else
      retvalu = Kw.rligamma(shap, xx)
   End If
   gamma_cdf = (retvalu)
End Function
Public Function gamma_rand(ByVal shap As Double) As Double
   Dim i_shape As Double
   Dim f_shape As Double
   Dim val As Double
   Dim jj As Double
   Dim ee As Double
   Dim gg As Double
   Dim yy As Double
   Dim ff As Double
   Dim xx As Double
   Dim vv As Double
   Dim qq As Double
   Dim pp As Double
   i_shape = floor(shap)
   val = 1.0
   If (shap < 5) Then
      For jj = 1 To i_shape
         val = val * randd()
      Next
      val = -Math.Log(val)
      f_shape = shap - i_shape
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
         val = val + xx
      End If
   Else
      ee = shap - 1.0
      gg = Sqr(shap + ee)
      yy = 0.0
      ff = 0.0
      Do While (val <= 0.0 Or (1.0 + yy * yy) * Math.Exp(ee * _
            Math.Log(val / ee) - ff) < randd())
         xx = Kw.PI * randd()
         yy = Math.Sin(xx) / Math.Cos(xx)
         ff = gg * yy
         val = ff + ee
      Loop
   End If
   gamma_rand = (val)
End Function
Public Function chisqr_pdf(ByVal df As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = (Math.Exp((Math.Log(xx / 2.0) * df - xx) / _
            2.0) / (xx * Kw.tgamma(df / 2.0)))
   End If
   chisqr_pdf = (retvalu)
End Function
Public Function chisqr_cdf(ByVal df As Double, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = (1.0 - Kw.ruigamma(df / 2.0, xx / 2.0))
   End If
   chisqr_cdf = (retvalu)
End Function
Public Function chisqr_rand(ByVal df As Double) As Double
   Dim sum As Double
   Dim vv As Double
   Dim jj As Double
   sum = 0
   For jj = 1 To df
      vv = gau_rand()
      sum = sum + vv * vv
   Next
   If (Not Kw.isint(df)) Then
      sum = sum + gamma_rand(frac(df) / 2.0) * 2.0
   End If
   chisqr_rand = (sum)
End Function
Public Function binomial_pdf(ByVal prob As Double, ByVal _
      success As Long, ByVal trial As Long) As Double
   Dim retvalu As Double
   If (success < 0 Or trial < success) Then
      retvalu = 0.0
   Else
      retvalu = comb(trial, success) * Pow(prob, success) * _
            Pow(1.0 - prob, trial - success)
   End If
   binomial_pdf = (retvalu)
End Function
Public Function binomial_cdf(ByVal prob As Double, ByVal _
      success As Long, ByVal trial As Long) As Double
   Dim lsum As Double
   Dim sfactor As Double
   Dim ss As Long
   Dim mu As Double
   Dim kk As Double
   If (prob <= 0.0 Or success < 0) Then
      lsum = 0.0
   ElseIf (1.0 <= prob Or trial <= success) Then
      lsum = 1.0
   Else
      If (trial <= 2 * success) Then
         ss = trial - success - 1
         prob = 1.0 - prob
      Else
         ss = success
      End If
      sfactor = Pow(1.0 - prob, trial)
      mu = prob / (1.0 - prob)
      lsum = 0.0
      For kk = 0 To ss
         lsum = lsum + sfactor
         sfactor = sfactor * (mu * (trial - kk)) / (kk + 1.0)
      Next
      If (ss <> success) Then
         lsum = 1.0 - lsum
      End If
   End If
   binomial_cdf = (lsum)
End Function
Public Function binomial_rand(ByVal prob As Double, ByVal rr _
      As Double) As Double
   Dim successes As Double
   successes = 0
   Do While (0 < rr)
      If (randd() < prob) Then
         successes = successes + 1
      End If
      rr = rr - 1
   Loop
   binomial_rand = (successes)
End Function
Public Function benford_pdf(ByVal max_kk As Long, ByVal kk As _
      Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0 Or max_kk <= kk) Then
      retvalu = 0.0
   Else
      retvalu = Math.Log(1.0 + 1.0 / kk) / Math.Log(max_kk)
   End If
   benford_pdf = (retvalu)
End Function
Public Function benford_cdf(ByVal max_kk As Long, ByVal kk As _
      Long) As Double
   Dim retvalu As Double
   If (kk <= 0.0) Then
      retvalu = 0.0
   ElseIf (max_kk <= kk) Then
      retvalu = 1.0
   Else
      retvalu = Math.Log(kk + 1.0) / Math.Log(max_kk)
   End If
   benford_cdf = (retvalu)
End Function
Public Function benford_rand(ByVal max_kk As Long) As Long
   Dim ii As Long
   Dim summ As Double
   Dim target As Double
   target = randd()
   summ = 0
   ii = 1
   Do While (True)
      summ = summ + Math.Log(1.0 + 1.0 / ii) / Math.Log(max_kk)
      If (target <= summ) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   benford_rand = (ii)
End Function
Public Function nbd_pdf(ByVal prob As Double, ByVal _
      rsuccesses As Long, ByVal kfailures As Long) As Double
   nbd_pdf _
         = ((comb(rsuccesses + kfailures - 1, kfailures) * _
               Pow(1.0 - prob, kfailures) * Pow(prob, _
               rsuccesses)))
End Function
Public Function nbd_cdf(ByVal prob As Double, ByVal _
      rsuccesses As Long, ByVal kfailures As Long) As Double
   nbd_cdf _
         = ((1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - _
               prob)))
End Function
Public Function nbd_rand(ByVal prob As Double, ByVal _
      rsuccesses As Long) As Long
   Dim failures As Long
   Dim rr As Long
   rr = rsuccesses
   failures = 0
   Do While (0 < rr)
      If (randd() <= prob) Then
         rr = rr - 1
      Else
         failures = failures + 1
      End If
   Loop
   nbd_rand = (failures)
End Function
Public Function polya_pdf(ByVal prob As Double, ByVal _
      rsuccesses As Double, ByVal kfailures As Double) As Double
   polya_pdf _
         = ((combx(rsuccesses + kfailures - 1, kfailures) * _
               Pow(1.0 - prob, kfailures) * Pow(prob, _
               rsuccesses)))
End Function
Public Function polya_cdf(ByVal prob As Double, ByVal _
      rsuccesses As Double, ByVal kfailures As Double) As Double
   polya_cdf _
         = ((1.0 - betainc(kfailures + 1, rsuccesses, 1.0 - _
               prob)))
End Function
Public Function polya_rand(ByVal tt As Double, ByVal prob As _
      Double) As Double
   Dim nn As Double
   Dim mm As Double
   Dim rr As Double
   Dim uu As Long
   Dim qq As Double
   nn = 0
   mm = tt - 1
   qq = Math.Exp(tt * Math.Log(prob))
   rr = qq
   uu = randd()
   Do While (rr <= uu)
      nn = nn + 1
      mm = mm + 1
      qq = qq * (1.0 - prob) * mm / nn
      rr = rr + qq
   Loop
   polya_rand = (nn)
End Function
Public Function zeta_pdf(ByVal ss As Double, ByVal xx As _
      Long) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (Kw.zeta(ss) * Pow(xx, ss))
   End If
   zeta_pdf = (retvalu)
End Function
Public Function zeta_cdf(ByVal ss As Double, ByVal xx As _
      Long) As Double
   Dim retvalu As Double
   If (xx <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = Kw.hnm(xx, ss) / Kw.zeta(ss)
   End If
   zeta_cdf = (retvalu)
End Function
Public Function ks_cdf(ByVal nn As Long, ByVal xx As Double) _
      As Double
   Dim retvalu As Double
   Dim two_tt_sqr As Double
   Dim kk As Long
   Dim sum As Double
   Dim tt As Double
   If (nn <= 0 Or xx <= 0.0) Then
      retvalu = 0.0
   Else
      If (30 < nn) Then
         tt = xx
         two_tt_sqr = 2.0 * tt * tt
         retvalu = 1.0 - Math.Exp(-two_tt_sqr) * (1.0 - 2.0 * _
               tt / (3.0 * Sqr(nn)) - two_tt_sqr * _
               (two_tt_sqr / 9.0 - 1.0 / 3.0) / nn)
      Else
         tt = xx * Sqr(nn)
         sum = 0.0
         kk = nn
         Do While (tt < kk)
            sum = sum + Kw.comb(nn, kk) * Pow(kk - tt, kk) * _
                  Pow(tt + nn - kk, nn - kk - 1)
            kk = kk - 1
         Loop
         retvalu = 1.0 - sum * tt / Pow(nn, nn)
      End If
   End If
   ks_cdf = (retvalu)
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
   ks_a_cdf = (retvalu)
End Function
Public Function ks_b_cdf(ByVal nn As Long, ByVal xx As _
      Double) As Double
   Dim retvalu As Double
   Dim nxx As Double
   If (xx < 0.0001 Or nn <= 0) Then
      retvalu = 0.0
   Else
      nxx = xx + (2.0 * Sqr(nn) + 3.0 * xx - 3.0) / (12.0 * nn)
      retvalu = ks_a_cdf(nxx)
   End If
   ks_b_cdf = (retvalu)
End Function
Public Function ks_quantile(ByVal nn As Double, ByVal prbx As _
      Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   If (Not Kw.isbetween(prbx, 0.0, 1.0)) Then
      scvx_xx = 0.0
   Else
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = prbx - ks_cdf(nn, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = prbx - ks_cdf(nn, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   ks_quantile = (scvx_xx)
End Function
Public Function t_pdf(ByVal dfn As Double, ByVal xx As _
      Double) As Double
   t_pdf _
         = ((Kw.tgamma((dfn + 1.0) / 2.0) * Pow((1.0 + _
               Kw.square(xx) / dfn), (-(dfn + 1.0) / 2.0)) / _
               (Sqr(dfn * Kw.PI) * Kw.tgamma(dfn / 2.0))))
End Function
Private Function lf_subtprob(ByVal nnx As Double, ByVal xx As _
      Double) As Double
   Dim aa As Double
   Dim bb As Double
   Dim ww As Double
   Dim zz As Double
   Dim yy As Double
   Dim ii As Double
   Dim nn As Long
   Dim retvalu As Double
   nn = floorl(Math.Abs(nnx))
   ww = Atan2(xx, Sqr(nn))
   zz = Kw.square(Math.Cos(ww))
   yy = 1.0
   ii = nn - 2.0
   Do While (2.0 <= ii)
      yy = 1.0 + (ii - 1.0) / ii * zz * yy
      ii = ii - 2.0
   Loop
   If (Kw.iseven(nn)) Then
      aa = Math.Sin(ww) / 2.0
      bb = 0.5
   Else
      If (nn = 1) Then
         aa = 0
      Else
         aa = Math.Sin(ww) * Math.Cos(ww) / Kw.PI
      End If
      bb = 0.5 + ww / Kw.PI
   End If
   retvalu = bb + aa * yy
   If (1.0 < retvalu) Then
      retvalu = 1.0
   End If
   lf_subtprob = (retvalu)
End Function
Public Function t_cdf(ByVal dfx As Double, ByVal xx As _
      Double) As Double
   t_cdf = ((lf_subtprob(dfx, xx)))
End Function
Private Function lf_t_quantile(ByVal ndfx As Long, ByVal prbx _
      As Double) As Double
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
   If (prbx < 0.5) Then
      prbx = 1.0 - prbx
      out_sign = -1
   Else
      out_sign = 1
   End If
   ux = normal_quantile(prbx)
   uxsq = Kw.square(ux)
   aa_x = ((1.0) * uxsq + 1.0) / 4.0
   bb_x = (((5.0) * uxsq + 16.0) * uxsq + 3.0) / 96.0
   cc_x = ((((3.0) * uxsq + 19.0) * uxsq + 17.0) * uxsq - _
         15.0) / 384.0
   dd_x = (((((79.0) * uxsq + 776.0) * uxsq + 1482.0) * uxsq _
         - 1920.0) * uxsq - 945.0) / 92160.0
   ee_x = ((((((27.0) * uxsq + 339.0) * uxsq + 930.0) * uxsq _
         - 1782.0) * uxsq - 765.0) * uxsq - 17955.0) / 368640.0
   retvalu = ux * (1.0 + (aa_x + (bb_x + (cc_x + (dd_x + ee_x _
         / ndfx) / ndfx) / ndfx) / ndfx) / ndfx)
   If (ndfx <= Kw.square(Kw.log10(prbx)) + 3.0) Then
      nn_a = ndfx + 1.0
      Do While (True)
         pp_a = lf_subtprob(ndfx, retvalu)
         ee_x = (nn_a * Math.Log(nn_a / (ndfx + _
               Kw.square(retvalu))) + Math.Log(ndfx / nn_a / _
               Kw.TAU) - 1.0 + (1.0 / nn_a - 1.0 / ndfx) / _
               6.0) / 2.0
         If (100 < ee_x) Then
            delta = 0
         Else
            delta = (pp_a - prbx) / Math.Exp(ee_x)
         End If
         retvalu = retvalu - delta
         aa_x = Math.Abs(delta) * 10000.0
         If (Kw.iszero(retvalu) Or aa_x < retvalu) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   lf_t_quantile = (out_sign * retvalu)
End Function
Public Function t_quantile(ByVal dfx As Double, ByVal prbx As _
      Double) As Double
   Dim ndfx As Long
   Dim retvalu As Double
   ndfx = floor(Math.Abs(dfx))
   If (Kw.iszero(prbx - 0.5)) Then
      retvalu = 0.0
   ElseIf (prbx <= 0.0) Then
      retvalu = -Kw.DBLMAX
   ElseIf (1.0 <= prbx) Then
      retvalu = Kw.DBLMAX
   Else
      retvalu = lf_t_quantile(ndfx, prbx)
   End If
   t_quantile = (retvalu)
End Function
Public Function t_cdf__1(ByVal dfx As Double, ByVal xx As _
      Double) As Double
   Dim zz As Double
   Dim yy As Double
   yy = Sqr(dfx + xx * xx)
   zz = (xx + yy) / (2.0 * yy)
   t_cdf__1 = ((Kw.betainc__1(dfx / 2.0, dfx / 2.0, zz)))
End Function
Public Function t_quantile__1(ByVal dfx As Double, ByVal prbx _
      As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   If (Not Kw.isbetween(prbx, 0.0, 1.0)) Then
      scvx_xx = 0.0
   Else
      scvx_dx = 0.5
      scvx_xx = 0.25
      scvx_yy = prbx - t_cdf(dfx, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = prbx - t_cdf(dfx, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   t_quantile__1 = (scvx_xx)
End Function
Public Function f_cdf(ByVal dfn_a As Long, ByVal dfn_b As _
      Long, ByVal xx As Double) As Double
   Dim aa As Double
   Dim bb As Double
   Dim gg As Double
   aa = dfn_a / 2.0
   bb = dfn_b / 2.0
   gg = aa * xx
   f_cdf = ((beta_cdf(aa, bb, gg / (bb + gg))))
End Function
Private Function lf_subfprob(ByVal dfn_a As Long, ByVal dfn_b _
      As Long, ByVal xx As Double) As Double
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
      pp_a = 2.0 / bx * Math.Sin(yx) * Pow(Math.Cos(yx), _
            dfn_b) * ax
      zx = Kw.square(Math.Cos(yx))
      If (dfn_b = 1) Then
         ax = 0.0
      Else
         ax = 1.0
      End If
      For ix = dfn_b - 2 To 3 Step - 2
         ax = 1.0 + (ix - 1.0) / ix * zx * ax
      Next
      retvalu = (pp_a + 1.0 - (4.0 / Kw.TAU) * (yx + _
            Math.Sin(yx) * Math.Cos(yx) * ax))
      If (retvalu < 0.0) Then
         retvalu = 0.0
      End If
   End If
   lf_subfprob = (retvalu)
End Function
Private Function lf_subf_two(ByVal nx As Double, ByVal mm As _
      Double, ByVal pp As Double) As Double
   Dim uu As Double
   Dim nx_sub_two As Double
   Dim xx_prev As Double
   Dim xx As Double
   Dim zz As Double
   uu = chisqr_cdf(nx, pp)
   nx_sub_two = nx - 2.0
   xx = (uu / nx * (1.0 + ((uu - nx_sub_two) / 2.0 + (((4.0 * _
         uu - 11.0 * nx_sub_two) * uu + nx_sub_two * (7.0 * _
         nx - 10.0)) / 24.0 + (((2.0 * uu - 10.0 * _
         nx_sub_two) * uu + nx_sub_two * (17.0 * nx - 26.0)) _
         * uu - nx_sub_two * nx_sub_two * (9.0 * nx - 6.0)) / _
         48.0 / mm) / mm) / mm))
   Do While (True)
      If (xx <= 0.0) Then
         Exit Do
      End If
      zz = Math.Exp(((nx + mm) * Math.Log((nx + mm) / (nx * _
            xx + mm)) + (nx - 2.0) * Math.Log(xx) + _
            Math.Log(nx * mm / (nx + mm)) - Kw.LNTWO - _
            Math.Log(Kw.TAU) - (1.0 / nx + 1.0 / mm - 1.0 / _
            (nx + mm)) / 6.0) / 2.0)
      xx_prev = xx
      xx = xx + (lf_subfprob(nx, mm, xx) - pp) / zz
      If (Kw.iswithin(xx, xx_prev, 0.00001)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   lf_subf_two = (xx)
End Function
Private Function lf_subfx(ByVal nx As Long, ByVal mm As Long, _
      ByVal pp As Double) As Double
   Dim retvalu As Double
   Dim uu As Double
   Dim aa As Double
   If (Kw.iseq(pp, 1.0)) Then
      retvalu = 0.0
   ElseIf (mm = 0) Then
      retvalu = 1.0 / Kw.square(t_quantile(nx, 0.5 - pp / 2.0))
   ElseIf (nx = 1) Then
      retvalu = Kw.square(t_quantile(mm, pp / 2.0))
   ElseIf (mm = 2) Then
      uu = chisqr_cdf(mm, 1.0 - pp)
      aa = mm - 2.0
      retvalu = 1.0 / (uu / mm * (1.0 + ((uu - aa) / 2.0 + _
            (((4.0 * uu - 11.0 * aa) * uu + aa * (7.0 * mm - _
            10.0)) / 24.0 + (((2.0 * uu - 10.0 * aa) * uu + _
            aa * (17.0 * mm - 26.0)) * uu - aa * aa * (9.0 * _
            mm - 6.0)) / 48.0 / nx) / nx) / nx))
   ElseIf (mm < nx) Then
      retvalu = 1.0 / lf_subf_two(mm, nx, 1.0 - pp)
   Else
      retvalu = lf_subf_two(nx, mm, pp)
   End If
   lf_subfx = (retvalu)
End Function
Public Function f_quantile(ByVal dfn_a As Long, ByVal dfn_b _
      As Long, ByVal prbx As Double) As Double
   f_quantile = ((lf_subfx(dfn_a, dfn_b, 1.0 - prbx)))
End Function
Public Function f_quantile__1(ByVal dfn_a As Long, ByVal _
      dfn_b As Long, ByVal prbx As Double) As Double
   Dim retvalu As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   If (prbx <= 0.0) Then
      retvalu = 0.0
   ElseIf (1.0 <= prbx) Then
      retvalu = 1.0
   Else
      scvx_dx = 0.50
      scvx_xx = 0.25
      scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx)
      For scvx_ii = 0 To 20
         scvx_xp = scvx_xx
         scvx_yp = scvx_yy
         scvx_xx = scvx_xx + scvx_dx
         If (Kw.iseq(scvx_xp, scvx_xx)) Then
            Exit For
         End If
         scvx_yy = prbx - f_cdf(dfn_a, dfn_b, scvx_xx)
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
      retvalu = scvx_xx
   End If
   f_quantile__1 = (retvalu)
End Function
Public Function mb_pdf(ByVal aa As Double, ByVal xx As _
      Double) As Double
   mb_pdf _
         = ((Sqr(4 / Kw.TAU) * xx * xx * Math.Exp(-xx * xx / _
               (2 * aa * aa)) / (aa * aa * aa)))
End Function
Public Function mb_cdf(ByVal aa As Double, ByVal xx As _
      Double) As Double
   mb_cdf _
         = ((Kw.erf(xx / (Kw.SQRTTWO * aa)) - Sqr(4 / Kw.TAU) _
               * xx * Math.Exp(-xx * xx / (2 * aa * aa)) / aa))
End Function
Public Function maxwell_boltzmann_pdf(ByVal temperature As _
      Double, ByVal molecular_mass As Double, ByVal velocity _
      As Double) As Double
   Dim aa As Double
   aa = Sqr(Kw.BOLTZMANN * temperature / molecular_mass)
   maxwell_boltzmann_pdf = ((mb_pdf(aa, velocity)))
End Function
Public Function maxwell_boltzmann_cdf(ByVal temperature As _
      Double, ByVal molecular_mass As Double, ByVal velocity _
      As Double) As Double
   Dim aa As Double
   aa = Sqr(Kw.BOLTZMANN * temperature / molecular_mass)
   maxwell_boltzmann_cdf = ((mb_cdf(aa, velocity)))
End Function
Public Function maxwell_juttner_pdf(ByVal temperature As _
      Double, ByVal molecular_mass As Double, ByVal velocity _
      As Double) As Double
   Dim gmm As Double
   Dim bt As Double
   Dim rtht As Double
   Dim dn As Double
   Dim retvalu As Double
   If (temperature <= 0.0 Or velocity <= 0.0 Or Kw.LIGHT <= _
         velocity Or molecular_mass <= 0.0) Then
      retvalu = 0.0
   Else
      rtht = (molecular_mass * Kw.LIGHT * Kw.LIGHT) / _
            (Kw.BOLTZMANN * temperature)
      bt = velocity / Kw.LIGHT
      gmm = 1.0 / Kw.topyh1(bt)
      dn = Kw.bessKn(2, rtht)
      If (Kw.iszero(dn)) Then
         retvalu = 0.0
      Else
         retvalu = gmm * gmm * bt * rtht * Math.Exp(-gmm * _
               rtht) / dn
      End If
   End If
   maxwell_juttner_pdf = (retvalu)
End Function
Public Function bb_pdf(ByVal wavelen As Double) As Double
   Dim retvalu As Double
   If (wavelen <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = 1.0 / (Pow(wavelen, 5.0) * (Math.Exp(1.0 / _
            wavelen) - 1.0))
   End If
   bb_pdf = ((retvalu * 15.0 / Pow(Kw.PI, 4.0)))
End Function
Public Function blackbody_pdf(ByVal wavelen As Double) As Double
   blackbody_pdf = ((bb_pdf(wavelen)))
End Function
Public Function ints_rand(ByVal nn As Long, prob_arr_pc() As _
      Double) As Long
   Dim sum As Double
   Dim p_ind As Long
   Dim rndm As Double
   Dim hh As Double
   sum = 0
   For p_ind = 0 To nn - 1
      sum = sum + prob_arr_pc(p_ind)
   Next
   rndm = randd()
   hh = 0
   For p_ind = 0 To nn - 1
      hh = hh + prob_arr_pc(p_ind) / sum
      If (rndm < hh) Then
         Exit For
      End If
   Next
   ints_rand = (p_ind)
End Function
Private Function lf_num2norm(ByVal numm As Double) As Double
   Dim retvalu As Double
   If (numm <= 1) Then
      retvalu = 0.0
   Else
      retvalu = (3.0 * Sqr(Math.Log(numm)) - 1.4 - (0.5 * _
            Math.Log(numm) - 0.39) / numm)
   End If
   lf_num2norm = (retvalu)
End Function
Public Function stdev2spread(ByVal numm As Double, ByVal _
      stdevx As Double) As Double
   Dim retvalu As Double
   If (numm <= 1 Or Kw.iszero(stdevx)) Then
      retvalu = 0.0
   Else
      retvalu = (stdevx * lf_num2norm(numm))
   End If
   stdev2spread = (retvalu)
End Function
Public Function spread2stdev(ByVal numm As Double, ByVal _
      spread As Double) As Double
   Dim retvalu As Double
   If (numm <= 1 Or Kw.iszero(spread)) Then
      retvalu = 0.0
   Else
      retvalu = (spread / lf_num2norm(numm))
   End If
   spread2stdev = (retvalu)
End Function
Public Function maxabs(ByVal nn As Long, data_arr_pc() As _
      Double) As Double
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
   maxabs = (maxaby)
End Function
Public Function minabs(ByVal nn As Long, data_arr_pc() As _
      Double) As Double
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
   minabs = (minaby)
End Function
Public Function maxabsoffset(ByVal offset As Double, ByVal nn _
      As Long, data_arr_pc() As Double) As Double
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
   maxabsoffset = (maxaby + offset)
End Function
Public Function minabsoffset(ByVal offset As Double, ByVal nn _
      As Long, data_arr_pc() As Double) As Double
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
   minabsoffset = (minaby + offset)
End Function
Public Function mini(ByVal num As Long, data_arr_pc() As _
      Double) As Double
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
   mini = (curr)
End Function
Public Function maxi(ByVal num As Long, data_arr_pc() As _
      Double) As Double
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
   maxi = (curr)
End Function
Public Function maxmin(ByVal num As Long, data_arr_pc() As _
      Double, ByRef ret_maxmin_arr_p() As Double) As Double
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
   maxmin = (maxx - minn)
End Function
Public Function min2(ByVal value_a As Double, ByVal value_b _
      As Double) As Double
   Dim retvalu As Double
   If (value_a < value_b) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   min2 = (retvalu)
End Function
Public Function max2(ByVal value_a As Double, ByVal value_b _
      As Double) As Double
   Dim retvalu As Double
   If (value_b < value_a) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   max2 = (retvalu)
End Function
Public Function minabs2(ByVal value_a As Double, ByVal _
      value_b As Double) As Double
   Dim retvalu As Double
   If (Math.Abs(value_a) < Math.Abs(value_b)) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   minabs2 = (retvalu)
End Function
Public Function maxabs2(ByVal value_a As Double, ByVal _
      value_b As Double) As Double
   Dim retvalu As Double
   If (Math.Abs(value_b) < Math.Abs(value_a)) Then
      retvalu = value_a
   Else
      retvalu = value_b
   End If
   maxabs2 = (retvalu)
End Function
Public Function variance(ByVal nn As Long, xx_arr_pc() As _
      Double) As Double
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
      variancex = 0
   End If
   variance = (variancex)
End Function
Public Function mean(ByVal nn As Long, xx_arr_pc() As Double) _
      As Double
   Dim ii As Long
   Dim delta As Double
   Dim meanx As Double
   meanx = 0.0
   For ii = 0 To nn - 1
      delta = xx_arr_pc(ii) - meanx
      meanx = meanx + delta / (ii + 1.0)
   Next
   mean = (meanx)
End Function
Private Function lf_stts_is_inited(ByVal ix_hndl As Long) As _
      Boolean
   ' local-use Vb6 lv_sttx_arr
   Dim vll As Long
   Dim ii As Long
   Dim jj As Long
   Dim retvalu_bol As Boolean
   vll = lv_sttx_arr(0, LC_STTS_MAGIC)
   If (vll <> Kw.magicset() And vll <> Kw.magicnot()) Then
      For ii = 0 To LC_STTS_MAX_KEY - 1
         For jj = 0 To LC_STTS_MAGIC - 1
            lv_sttx_arr(ii, jj) = 0
         Next
         lv_sttx_arr(0, LC_STTS_MAGIC) = Kw.magicnot()
      Next
   End If
   If (LC_STTS_MAX_KEY <= ix_hndl) Then
      retvalu_bol = False
   Else
      vll = lv_sttx_arr(ix_hndl, LC_STTS_MAGIC)
      retvalu_bol = Kw.ismagic(vll)
   End If
   lf_stts_is_inited = (retvalu_bol)
End Function
Private Function lf_stts_find_empty() As Long
   Dim ix_hndl As Long
   ix_hndl = 0
   Do While (lf_stts_is_inited(ix_hndl))
      ix_hndl = ix_hndl + 1
   Loop
   If (LC_STTS_MAX_KEY <= ix_hndl) Then
      Debug.Print("lf_stts_find_empty:" & "STTS-Bad-handle")
      Stop
   End If
   lf_stts_find_empty = (ix_hndl)
End Function
Public Function stts_init(ByVal ix_hndl As Long, ByVal _
      n_count As Double, ByVal meanx As Double, ByVal var As _
      Double, ByVal minim As Double, ByVal maxim As Double) _
      As Long
   ' local-use Vb6 lv_sttx_arr
   lv_sttx_arr(ix_hndl, LC_STTS_NUM) = n_count
   lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = meanx
   lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = var * (n_count - 1.0)
   lv_sttx_arr(ix_hndl, LC_STTS_MIN) = minim
   lv_sttx_arr(ix_hndl, LC_STTS_MAX) = maxim
   lv_sttx_arr(ix_hndl, LC_STTS_MAGIC) = Kw.magicset()
   stts_init = (ix_hndl)
End Function
Public Function stts_initx(ByVal ix_hndl As Long, ByVal _
      num_count As Double, ByVal meanx As Double, ByVal msq _
      As Double, ByVal minim As Double, ByVal maxim As _
      Double) As Long
   ' local-use Vb6 lv_sttx_arr
   lv_sttx_arr(ix_hndl, LC_STTS_NUM) = num_count
   lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = meanx
   lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = msq
   lv_sttx_arr(ix_hndl, LC_STTS_MIN) = minim
   lv_sttx_arr(ix_hndl, LC_STTS_MAX) = maxim
   lv_sttx_arr(ix_hndl, LC_STTS_MAGIC) = Kw.magicset()
   stts_initx = (ix_hndl)
End Function
Public Function stts_reset(ByVal ix_hndl As Long) As Long
   stts_reset = ((stts_init(ix_hndl, 0.0, 0.0, 0.0, 1.0, 0.0)))
End Function
Public Function stts_new() As Long
   Dim ix_hndl As Long
   ix_hndl = lf_stts_find_empty()
   stts_new = ((stts_reset(ix_hndl)))
End Function
Public Function stts_delete(ByVal ix_hndl As Long) As Long
   ' local-use Vb6 lv_sttx_arr
   lv_sttx_arr(ix_hndl, LC_STTS_MAGIC) = Kw.magicnot()
   stts_delete = (ix_hndl)
End Function
Public Function sttscount(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttscount = ((lv_sttx_arr(ix_hndl, LC_STTS_NUM)))
End Function
Public Function sttsmean(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttsmean = ((lv_sttx_arr(ix_hndl, LC_STTS_MEAN)))
End Function
Public Function sttsmsq(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttsmsq = ((lv_sttx_arr(ix_hndl, LC_STTS_MSQ)))
End Function
Public Function sttsmax(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttsmax = ((lv_sttx_arr(ix_hndl, LC_STTS_MAX)))
End Function
Public Function sttsmin(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttsmin = ((lv_sttx_arr(ix_hndl, LC_STTS_MIN)))
End Function
Public Function sttsmagic(ByVal ix_hndl As Long) As Double
   ' local-use Vb6 lv_sttx_arr
   sttsmagic = ((lv_sttx_arr(ix_hndl, LC_STTS_MAGIC)))
End Function
Public Function sttssum(ByVal ix_hndl As Long) As Double
   sttssum = ((sttsmean(ix_hndl) * sttscount(ix_hndl)))
End Function
Public Function sttsvar(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (Math.Abs(sttscount(ix_hndl)) <= 1.0) Then
      retvalu = 0.0
   Else
      retvalu = (sttsmsq(ix_hndl) / _
            (Math.Abs(sttscount(ix_hndl) - 1.0)))
   End If
   sttsvar = (retvalu)
End Function
Public Function sttsstdev(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (sttscount(ix_hndl) <= 1.0) Then
      retvalu = 0.0
   Else
      retvalu = (Sqr(sttsmsq(ix_hndl) / (sttscount(ix_hndl) - _
            1.0)))
   End If
   sttsstdev = (retvalu)
End Function
Public Function sttsstdevmean(ByVal ix_hndl As Long) As Double
   Dim retvalu As Double
   If (sttscount(ix_hndl) <= 1.0 Or sttsmsq(ix_hndl) <= 0.0) Then
      retvalu = 0.0
   Else
      retvalu = (Sqr(sttsmsq(ix_hndl)) / (sttscount(ix_hndl) _
            - 1.0))
   End If
   sttsstdevmean = (retvalu)
End Function
Public Function sttsspread(ByVal ix_hndl As Long) As Double
   sttsspread = ((sttsmax(ix_hndl) - sttsmin(ix_hndl)))
End Function
Public Function stts_update(ByVal ix_hndl As Long, ByVal _
      new_data As Double) As Double
   ' local-use Vb6 lv_sttx_arr
   Dim delta As Double
   Dim numy As Double
   If (Not lf_stts_is_inited(ix_hndl)) Then
      Debug.Print("stts_update:" & "STTS-Bad-handle")
      Stop
   End If
   delta = new_data - lv_sttx_arr(ix_hndl, LC_STTS_MEAN)
   lv_sttx_arr(ix_hndl, LC_STTS_NUM) = lv_sttx_arr(ix_hndl, _
         LC_STTS_NUM) + 1.0
   numy = lv_sttx_arr(ix_hndl, LC_STTS_NUM)
   lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MEAN) + (delta / numy)
   lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MSQ) + (delta * (new_data - _
         lv_sttx_arr(ix_hndl, LC_STTS_MEAN)))
   If ((numy < 2.0 Or sttsspread(ix_hndl) < 0.0)) Then
      lv_sttx_arr(ix_hndl, LC_STTS_MIN) = new_data
      lv_sttx_arr(ix_hndl, LC_STTS_MAX) = new_data
   Else
      If (new_data < lv_sttx_arr(ix_hndl, LC_STTS_MIN)) Then
         lv_sttx_arr(ix_hndl, LC_STTS_MIN) = new_data
      End If
      If (lv_sttx_arr(ix_hndl, LC_STTS_MAX) < new_data) Then
         lv_sttx_arr(ix_hndl, LC_STTS_MAX) = new_data
      End If
   End If
   stts_update = (delta)
End Function
Public Function stts_downdate(ByVal ix_hndl As Long, ByVal _
      old_data As Double) As Double
   Dim delt As Double
   Dim men As Double
   If (Not lf_stts_is_inited(ix_hndl)) Then
      Debug.Print("stts_downdate:" & "STTS-Bad-handle")
      Stop
   End If
   men = lv_sttx_arr(ix_hndl, LC_STTS_MEAN)
   delt = old_data - men
   If (0 < lv_sttx_arr(ix_hndl, LC_STTS_NUM)) Then
      lv_sttx_arr(ix_hndl, LC_STTS_NUM) = lv_sttx_arr(ix_hndl _
            , LC_STTS_NUM) - 1
      If (0 < lv_sttx_arr(ix_hndl, LC_STTS_NUM)) Then
         men = men - delt / lv_sttx_arr(ix_hndl, LC_STTS_NUM)
         lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = men
         lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = _
               lv_sttx_arr(ix_hndl, LC_STTS_MSQ) - delt * _
               (old_data - men)
         If (lv_sttx_arr(ix_hndl, LC_STTS_MSQ) < 0.0) Then
            lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = 0.0
         End If
      Else
         lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = 0.0
         lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = 0.0
      End If
   End If
   stts_downdate = (delt)
End Function
Public Function stts_updatex(ByVal ix_hndl As Long, ByVal nn _
      As Long, data_arr_pc() As Double) As Double
   Dim ii As Long
   Dim retvalu As Double
   retvalu = 0.0
   For ii = 0 To nn - 1
      retvalu = retvalu + stts_update(ix_hndl, data_arr_pc(ii))
   Next
   stts_updatex = (retvalu)
End Function
Public Function stts_newx(ByVal nn As Long, data_arr_pc() As _
      Double) As Long
   Dim ihndl As Long
   Dim ii As Long
   ihndl = stts_new()
   For ii = 0 To nn - 1
      Call stts_update(ihndl, data_arr_pc(ii))
   Next
   stts_newx = (ihndl)
End Function
Public Function stts_shift(ByVal ix_hndl As Long, ByVal _
      data_shift As Double) As Long
   ' local-use Vb6 lv_sttx_arr
   lv_sttx_arr(ix_hndl, LC_STTS_MAX) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MAX) + data_shift
   lv_sttx_arr(ix_hndl, LC_STTS_MIN) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MIN) + data_shift
   lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MEAN) + data_shift
   stts_shift = (ix_hndl)
End Function
Public Function stts_scale(ByVal ix_hndl As Long, ByVal _
      xfactor As Double) As Long
   ' local-use Vb6 lv_sttx_arr
   Dim newmax As Double
   Dim newmin As Double
   If (0 < xfactor) Then
      newmax = lv_sttx_arr(ix_hndl, LC_STTS_MAX) * xfactor
      newmin = lv_sttx_arr(ix_hndl, LC_STTS_MIN) * xfactor
   Else
      newmax = lv_sttx_arr(ix_hndl, LC_STTS_MIN) * xfactor
      newmin = lv_sttx_arr(ix_hndl, LC_STTS_MAX) * xfactor
   End If
   lv_sttx_arr(ix_hndl, LC_STTS_MIN) = newmin
   lv_sttx_arr(ix_hndl, LC_STTS_MAX) = newmax
   lv_sttx_arr(ix_hndl, LC_STTS_MEAN) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MEAN) * xfactor
   lv_sttx_arr(ix_hndl, LC_STTS_MSQ) = lv_sttx_arr(ix_hndl, _
         LC_STTS_MSQ) * xfactor * xfactor
   stts_scale = (ix_hndl)
End Function
Public Function stts_copy(ByVal hto As Long, ByVal hfrom As _
      Long) As Long
   ' local-use Vb6 lv_sttx_arr
   Dim ii As Long
   For ii = 0 To LC_STTS_COUNT - 1
      lv_sttx_arr(hto, ii) = lv_sttx_arr(hfrom, ii)
   Next
   stts_copy = (hto)
End Function
Public Function stts_update2(ByVal ix_hnda As Long, ByVal _
      ix_hndb As Long) As Long
   Dim delta As Double
   Dim ncount As Double
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
   If (Not Kw.iszero(sttscount(ix_hndb))) Then
      If (Not lf_stts_is_inited(ix_hnda)) Then
         Debug.Print("stts_update2:" & "STTS-Bad-hnda")
         Stop
      End If
      If (Kw.iszero(sttscount(ix_hnda))) Then
         Call stts_copy(ix_hnda, ix_hndb)
      Else
         delta = sttsmean(ix_hndb) - sttsmean(ix_hnda)
         ncount = sttscount(ix_hndb) + sttscount(ix_hnda)
         nmean = (sttsmean(ix_hnda) + delta * _
               (sttscount(ix_hndb) / ncount))
         nmsqr = (sttsmsq(ix_hnda) + sttsmsq(ix_hndb) + delta _
               * delta * (sttscount(ix_hnda) * _
               sttscount(ix_hndb)) / ncount)
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
         Call stts_init(ix_hnda, ncount, nmean, nmsqr / _
               (ncount - 1.0), amin, amax)
      End If
   End If
   stts_update2 = (ix_hnda)
End Function
Private Function lf_corr_is_init(ByVal ix_chnd As Long) As _
      Boolean
   ' local-use Vb6 lv_corx_arr
   Dim retvalu_bol As Boolean
   Dim vll As Double
   If (LC_STTS_MAX_KEY <= ix_chnd) Then
      retvalu_bol = False
   Else
      vll = lv_corx_arr(ix_chnd, LC_STTSC_MAGIC)
      retvalu_bol = Kw.ismagic(vll)
   End If
   lf_corr_is_init = (retvalu_bol)
End Function
Private Function lf_corr_find_empty() As Long
   Dim ix_chnd As Long
   ix_chnd = 0
   Do While (lf_corr_is_init(ix_chnd))
      ix_chnd = ix_chnd + 1
   Loop
   If (LC_STTS_MAX_KEY <= ix_chnd) Then
      Debug.Print("lf_corr_find_empty:" & "STTS-No-empty-handle")
      Stop
   End If
   lf_corr_find_empty = (ix_chnd)
End Function
Public Function corr_new() As Long
   ' local-use Vb6 lv_corx_arr
   Dim ix_chnd As Long
   ix_chnd = lf_corr_find_empty()
   lv_corx_arr(ix_chnd, LC_STTSC_XX) = stts_new()
   lv_corx_arr(ix_chnd, LC_STTSC_YY) = stts_new()
   lv_corx_arr(ix_chnd, LC_STTSC_COVAR) = 0.0
   lv_corx_arr(ix_chnd, LC_STTSC_MAGIC) = Kw.magicset()
   corr_new = (ix_chnd)
End Function
Public Function corr_delete(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_corx_arr
   lv_corx_arr(ix_chnd, LC_STTSC_MAGIC) = Kw.magicnot()
   Call stts_delete(lv_corx_arr(ix_chnd, LC_STTSC_XX))
   Call stts_delete(lv_corx_arr(ix_chnd, LC_STTSC_YY))
   corr_delete = (ix_chnd)
End Function
Public Function corr_handlex(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_corx_arr
   corr_handlex = ((lv_corx_arr(ix_chnd, LC_STTSC_XX)))
End Function
Public Function corr_handley(ByVal ix_chnd As Long) As Long
   ' local-use Vb6 lv_corx_arr
   corr_handley = ((lv_corx_arr(ix_chnd, LC_STTSC_YY)))
End Function
Public Function corr_update(ByVal ix_chnd As Long, ByVal xx _
      As Double, ByVal yy As Double) As Double
   ' local-use Vb6 lv_corx_arr
   Dim num As Long
   Dim ddxx As Double
   Dim ddyy As Double
   Dim yyhnd As Long
   Dim xxhnd As Long
   yyhnd = lv_corx_arr(ix_chnd, LC_STTSC_YY)
   xxhnd = lv_corx_arr(ix_chnd, LC_STTSC_XX)
   num = sttscount(xxhnd)
   ddxx = stts_update(xxhnd, xx)
   ddyy = stts_update(yyhnd, yy)
   lv_corx_arr(ix_chnd, LC_STTSC_COVAR) = lv_corx_arr(ix_chnd _
         , LC_STTSC_COVAR) + (ddxx * ddyy * num / (num + 1.0))
   corr_update = ((lv_corx_arr(ix_chnd, LC_STTSC_COVAR)))
End Function
Public Function corrslope(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_corx_arr
   Dim den As Double
   Dim retvalu As Double
   Dim xxhnd As Long
   xxhnd = lv_corx_arr(ix_chnd, LC_STTSC_XX)
   den = sttsmsq(xxhnd)
   If (Kw.iszero(den)) Then
      retvalu = 0.0
   Else
      retvalu = lv_corx_arr(ix_chnd, LC_STTSC_COVAR) / den
   End If
   corrslope = (retvalu)
End Function
Public Function corry0(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_corx_arr
   Dim retvalu As Double
   Dim yyhnd As Long
   Dim xxhnd As Long
   yyhnd = lv_corx_arr(ix_chnd, LC_STTSC_YY)
   xxhnd = lv_corx_arr(ix_chnd, LC_STTSC_XX)
   retvalu = (sttsmean(yyhnd) - corrslope(ix_chnd) * _
         sttsmean(xxhnd))
   corry0 = (retvalu)
End Function
Public Function corrcorr(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_corx_arr
   Dim retvalu As Double
   Dim xxmsq As Double
   Dim yymsq As Double
   Dim den As Double
   xxmsq = sttsmsq(lv_corx_arr(ix_chnd, LC_STTSC_XX))
   yymsq = sttsmsq(lv_corx_arr(ix_chnd, LC_STTSC_YY))
   den = xxmsq * yymsq
   If (Kw.iszero(den)) Then
      retvalu = 0.0
   Else
      retvalu = (lv_corx_arr(ix_chnd, LC_STTSC_COVAR) / Sqr(den))
   End If
   corrcorr = (retvalu)
End Function
Public Function corrstderr(ByVal ix_chnd As Long) As Double
   ' local-use Vb6 lv_corx_arr
   Dim yyhnd As Long
   Dim diff As Double
   Dim retvalu As Double
   yyhnd = lv_corx_arr(ix_chnd, LC_STTSC_YY)
   diff = sttsmsq(yyhnd) - (corrslope(ix_chnd) * _
         lv_corx_arr(ix_chnd, LC_STTSC_COVAR))
   If (diff < 0) Then
      retvalu = 0
   Else
      retvalu = Sqr(diff / (sttscount(yyhnd) - 2))
   End If
   corrstderr = (retvalu)
End Function
Public Function fit_poly(ByVal num_points As Long, _
      pts_arr_pc() As Double, ByRef ret_coeff_arr_p() As _
      Double) As Double
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
         cc_arr(i_ind) = ((cc_arr(i_ind - 1) - cc_arr(i_ind)) _
               / (pts_arr_pc(2 * k_ind) - pts_arr_pc(2 * i_ind)))
         k_ind = k_ind - 1
      Next
   Next
   For j_ind = 0 To num_points - 2
      For i_ind = num_points - 2 To j_ind Step - 1
         prod = cc_arr(i_ind + 1) * pts_arr_pc(2 * (i_ind - _
               j_ind))
         cc_arr(i_ind) = cc_arr(i_ind) - prod
      Next
   Next
   For j_ind = 0 To num_points - 1
      ret_coeff_arr_p(j_ind) = cc_arr(j_ind)
   Next
   fit_poly = (num_points)
End Function
Public Function parabola_solve(ByVal xx_a As Double, ByVal _
      yy_a As Double, ByVal xx_b As Double, ByVal yy_b As _
      Double, ByVal xx_c As Double, ByVal yy_c As Double) As _
      Double
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
      yyextrema = (cc_arr(0) + xx_a * (cc_arr(1) + xx_a * _
            cc_arr(2)))
      disc = (cc_arr(1) * cc_arr(1) - 4.0 * cc_arr(2) * _
            cc_arr(0))
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
   parabola_solve = (axis)
End Function
Public Function parabola_get(ByVal ii_ind As Long) As Double
   ' local-use Vb6 lv_parabola_arr
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 7) Then
      retvalu = lv_parabola_arr(ii_ind)
   Else
      retvalu = 0
   End If
   parabola_get = (retvalu)
End Function
Public Function parabola_roots(ByVal ii_ind As Long) As Double
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 1) Then
      retvalu = parabola_get(ii_ind + LC_PARABOLA_ROOT_A)
   Else
      retvalu = Kw.DBLMAX
   End If
   parabola_roots = (retvalu)
End Function
Public Function parabola_yextrema() As Double
   parabola_yextrema = ((parabola_get(LC_PARABOLA_Y_EXTREMA)))
End Function
Public Function parabola_xaxis() As Double
   parabola_xaxis = ((parabola_get(LC_PARABOLA_X_AXIS)))
End Function
Public Function parabola_realroots() As Double
   parabola_realroots = ((parabola_get(LC_PARABOLA_REAL_ROOTS)))
End Function
Public Function circle_solve(ByVal aa_x As Double, ByVal aa_y _
      As Double, ByVal bb_x As Double, ByVal bb_y As Double, _
      ByVal cc_x As Double, ByVal cc_y As Double) As Double
   ' local-use Vb6 lv_circle_arr
   Dim ca_a As Double
   Dim cb_a As Double
   Dim ca_b As Double
   Dim cb_b As Double
   Dim det As Double
   Dim cc_a As Double
   Dim cc_b As Double
   Dim center_x As Double
   Dim center_y As Double
   Dim radius As Double
   ca_a = bb_y - aa_y
   cb_a = bb_x - aa_x
   ca_b = cc_y - aa_y
   cb_b = cc_x - aa_x
   det = 2.0 * (ca_a * cb_b - ca_b * cb_a)
   If (Not Kw.iszero(det)) Then
      cc_a = -ca_a * (aa_y + bb_y) - cb_a * (aa_x + bb_x)
      cc_b = -ca_b * (aa_y + cc_y) - cb_b * (aa_x + cc_x)
      center_x = (ca_b * cc_a - ca_a * cc_b) / det
      center_y = (cb_a * cc_b - cb_b * cc_a) / det
      radius = Kw.hypot(center_x - aa_x, center_y - aa_y)
   Else
      center_x = Kw.DBLMAX
      center_y = Kw.DBLMAX
      radius = Kw.DBLMAX
   End If
   lv_circle_arr(LC_CIRCLE_X) = center_x
   lv_circle_arr(LC_CIRCLE_Y) = center_y
   lv_circle_arr(LC_CIRCLE_RADIUS) = radius
   circle_solve = (radius)
End Function
Public Function circle_get(ByVal ii_ind As Long) As Double
   ' local-use Vb6 lv_circle_arr
   Dim retvalu As Double
   If (0 <= ii_ind And ii_ind <= 2) Then
      retvalu = lv_circle_arr(ii_ind)
   Else
      retvalu = 0
   End If
   circle_get = (retvalu)
End Function
Public Function fit_minmax(ByVal num_points As Long, _
      pt_arr_pc() As Double, ByRef ret_coeff_arr_p() As _
      Double) As Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spread As Double
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
            intercept_t = yyp_arr(i_ind) - slope_t * _
                  xxp_arr(i_ind)
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
               this_spread = max_dyy - min_dyy
               If ((0 < nx_spr And nx_spr + epsyy < _
                     this_spread) Or (min_dyy < - epsyy And _
                     epsyy < max_dyy)) Then
                  Exit Do
               End If
               k_ind = k_ind + 1
            Loop
            If (num_points <= k_ind) Then
               If (nx_spr < 0 Or this_spread < nx_spr - epsyy _
                     Or (this_spread <= nx_spr + epsyy And _
                     Math.Abs(nx_a) < Math.Abs(slope_t))) Then
                  nx_a = slope_t
                  nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
                  nx_spr = this_spread
               End If
            End If
         End If
      Next
   Next
   ret_coeff_arr_p(1) = nx_a
   ret_coeff_arr_p(0) = nx_b
   ret_coeff_arr_p(2) = nx_spr / 2.0
   fit_minmax = (nx_spr / 2.0)
End Function
Private Function lf_signcrossproduct(ByVal aa_x As Double, _
      ByVal aa_y As Double, ByVal bb_x As Double, ByVal bb_y _
      As Double, ByVal cc_x As Double, ByVal cc_y As Double) _
      As Double
   Dim cr As Double
   Dim bbaa_x As Double
   Dim bbaa_y As Double
   Dim ccaa_x As Double
   Dim ccaa_y As Double
   bbaa_x = bb_x - aa_x
   bbaa_y = bb_y - aa_y
   ccaa_x = cc_x - aa_x
   ccaa_y = cc_y - aa_y
   cr = bbaa_x * ccaa_y - ccaa_x * bbaa_y
   lf_signcrossproduct = (cr)
End Function
Public Function fitx_minmax(ByVal num_points As Long, _
      pt_arr_pc() As Double, ByRef ret_arr_p() As Double) As _
      Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim chi_arr() As Long
   Dim chisize As Long
   Dim hh As Long
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spread As Double
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
         If (xxp_arr(j_ind) < xxp_arr(lmbm_ind) Or _
               yyp_arr(j_ind) <= yyp_arr(lmbm_ind)) Then
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
            crx = lf_signcrossproduct(xxp_arr(j_ind), _
                  yyp_arr(j_ind), xxp_arr(t_ind), _
                  yyp_arr(t_ind), xxp_arr(e_ind), yyp_arr(e_ind))
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
         this_spread = 0
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
            this_spread = max_dyy - min_dyy
            If ((0 < nx_spr And nx_spr + epsyy < this_spread) _
                  Or (min_dyy < - epsyy And epsyy < max_dyy)) _
                  Then
               Exit Do
            End If
            k_ind = k_ind + 1
         Loop
         If (num_points <= k_ind) Then
            If (nx_spr < 0 Or this_spread < nx_spr - epsyy Or _
                  (this_spread <= nx_spr + epsyy And _
                  Math.Abs(nx_a) < Math.Abs(slope_t))) Then
               nx_a = slope_t
               nx_b = intercept_t + (min_dyy + max_dyy) / 2.0
               nx_spr = this_spread
            End If
         End If
      End If
   Next
   ret_arr_p(0) = nx_b
   ret_arr_p(1) = nx_a
   ret_arr_p(2) = nx_spr / 2.0
   fitx_minmax = ((ret_arr_p(2)))
End Function
Public Function fit_minmax0(ByVal num_points As Long, _
      pts_arr_pc() As Double, ByRef ret_arr_p() As Double) As _
      Double
   Dim xxp_arr() As Double
   Dim yyp_arr() As Double
   Dim i_ind As Long
   Dim j_ind As Long
   Dim k_ind As Long
   Dim this_spread As Double
   Dim minmaxz_spread As Double
   Dim minmaxz_slope As Double
   Dim minmaxz_intercept As Double
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
   minmaxz_spread = -1
   minmaxz_slope = 0
   minmaxz_intercept = yyp_arr(0)
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
               this_spread = max_dyy - min_dyy
               If (0 < minmaxz_spread And minmaxz_spread + _
                     epsyy < this_spread) Then
                  Exit For
               End If
            Next
            If (minmaxz_spread < 0 Or this_spread < _
                  minmaxz_spread - epsyy) Then
               minmaxz_slope = slope_t
               minmaxz_intercept = intercept_t
               minmaxz_spread = this_spread
            End If
         End If
      Next
   Next
   If (0 <= minmaxz_spread) Then
      ret_arr_p(1) = minmaxz_slope
      ret_arr_p(0) = minmaxz_intercept
      ret_arr_p(2) = minmaxz_spread / 2.0
   End If
   fit_minmax0 = (minmaxz_spread / 2.0)
End Function
Public Function fit_ls(ByVal num_points As Long, pts_arr_pc() _
      As Double, ByRef ret_arr_p() As Double) As Double
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
      covariance_xy = covariance_xy + dxx * dyy * i_ind / _
            (i_ind + 1.0)
   Next
   slope = covariance_xy / ssq_xx
   ret_arr_p(1) = slope
   ret_arr_p(0) = mean_yy - slope * mean_xx
   ret_arr_p(2) = covariance_xy / Sqr(ssq_xx * ssq_yy)
   ret_arr_p(3) = Sqr((ssq_yy - slope * covariance_xy) / _
         (num_points - 2))
   fit_ls = ((ret_arr_p(2)))
End Function
Public Function fit_ls0(ByVal num_points As Long, _
      pts_arr_pc() As Double, ByRef ret_lsz_arr_p() As _
      Double) As Double
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
      xysum = xysum + dxx * (pts_arr_pc(j_ind + 1) - _
            pts_arr_pc(1))
   Next
   slope = xysum / xxsum
   ret_lsz_arr_p(1) = slope
   ret_lsz_arr_p(0) = (pts_arr_pc(1) - slope * pts_arr_pc(0))
   fit_ls0 = (slope)
End Function
Public Function sqrt__1(ByVal xx As Double) As Double
   Dim yy_curr As Double
   Dim yy_prev As Double
   Dim zz As Double
   Dim power_of_two As Double
   If (xx <= 0.0) Then
      yy_curr = 0
   Else
      power_of_two = 1.0
      zz = xx
      Do While (4.0 <= zz)
         zz = zz / 4
         power_of_two = power_of_two * 2.0
      Loop
      Do While (zz < 1.0)
         zz = zz * 4
         power_of_two = power_of_two / 2.0
      Loop
      yy_curr = (0.546382637992462 + zz * (0.502513025246083 _
            + zz * (-0.0353026277858345)))
      Do While (True)
         yy_prev = yy_curr
         yy_curr = (yy_curr + zz / yy_curr) / 2.0
         If (Kw.iseq(yy_prev, yy_curr)) Then
            Exit Do' loop AWAIT
         End If
      Loop
      yy_curr = yy_curr * power_of_two
   End If
   sqrt__1 = (yy_curr)
End Function
Public Function sqrt__2(ByVal xx As Double) As Double
   Dim scvx_xp As Double
   Dim scvx_xx As Double
   Dim scvx_yp As Double
   Dim scvx_yy As Double
   Dim scvx_dx As Double
   Dim scvx_dy As Double
   Dim scvx_ii As Long
   Dim ini As Double
   If (xx <= 0.0) Then
      scvx_xx = 0.0
   Else
      If (1 < xx) Then
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
         scvx_dy = (scvx_yy - scvx_yp)
         If (Kw.iszero(scvx_dy)) Then
            Exit For
         End If
         scvx_dx = scvx_dx * - scvx_yy / scvx_dy
      Next
   End If
   sqrt__2 = (scvx_xx)
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
      If (1 < yy) Then
         ini = yy / 2.0
      Else
         ini = 2.0 * yy
      End If
      nrvx_xx = ini
      For nrvx_ii = 0 To 20
         nrvx_xp = nrvx_xx
         nrvx_dy = 2 * nrvx_xx
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
   sqrt__3 = (nrvx_xx)
End Function
Public Function nthroot__1(ByVal xx As Double, ByVal kk As _
      Long) As Double
   Dim yy_curr As Double
   Dim yy_prev As Double
   Dim pp As Double
   Dim ii As Long
   If (xx <= 0.0) Then
      yy_curr = 0
   Else
      yy_curr = xx / 2.0
      Do While (True)
         yy_prev = yy_curr
         pp = yy_curr
         For ii = 2 To kk - 1
            pp = pp * yy_curr
         Next
         yy_curr = (yy_curr * (kk - 1) + xx / pp) / kk
         If (Kw.iseq(yy_prev, yy_curr)) Then
            Exit Do' loop AWAIT
         End If
      Loop
   End If
   nthroot__1 = (yy_curr)
End Function
Public Function cossin_ev(ByVal init_ii As Long, ByVal xx_rad _
      As Double, ByVal addone_mult As Boolean) As Double
   Dim val As Double
   Dim ii As Long
   Dim trig_sum As Double
   Dim xr_rad As Double
   Dim xr_sqr As Double
   If (Kw.iszero(xx_rad)) Then
      trig_sum = 0.0
   Else
      xr_rad = Kw.fmods(xx_rad, Kw.TAU)
      xr_sqr = -xr_rad * xr_rad
      val = 1
      ii = init_ii
      Do While (LC_EPS < Math.Abs(val))
         ii = ii + 2
         val = val * xr_sqr / (ii * (ii - 1))
      Loop
      trig_sum = 1.0 / (ii * (ii + 1.0))
      Do While (1 < ii)
         trig_sum = trig_sum + 1.0
         trig_sum = trig_sum * xr_sqr / (ii * (ii - 1))
         ii = ii - 2
      Loop
      If (addone_mult) Then
         trig_sum = trig_sum + 1.0
         trig_sum = trig_sum * xr_rad
      End If
   End If
   cossin_ev = (trig_sum)
End Function
Public Function cos__1(ByVal xx_rad As Double) As Double
   cos__1 = ((cossin_ev(0, xx_rad, False) + 1.0))
End Function
Public Function cosm1__1(ByVal xx_rad As Double) As Double
   cosm1__1 = ((cossin_ev(0, xx_rad, False)))
End Function
Public Function sin__1(ByVal xx_rad As Double) As Double
   sin__1 = ((cossin_ev(1, xx_rad, True)))
End Function
Public Function sinc__1(ByVal xx_rad As Double) As Double
   Dim retvalu As Double
   If (Kw.iszero(xx_rad)) Then
      retvalu = 1.0
   Else
      If (Kw.TAU / 2 < Math.Abs(xx_rad)) Then
         retvalu = cossin_ev(1, xx_rad, True)
         retvalu = retvalu / xx_rad
      Else
         retvalu = cossin_ev(1, xx_rad, False) + 1.0
      End If
   End If
   sinc__1 = (retvalu)
End Function
Public Function exp__1(ByVal xx As Double) As Double
   Dim ii As Long
   Dim val As Double
   Dim axx As Double
   Dim exp_sum As Double
   Dim retvalu As Double
   Dim squarings As Long
   If (xx < 0) Then
      axx = -xx
   Else
      axx = xx
   End If
   squarings = 0
   Do While (1.0 < axx)
      axx = axx / 2.0
      squarings = squarings + 1
   Loop
   val = 1.0
   ii = 1
   Do While (Kw.DBLEPS / 10.0 < val)
      ii = ii + 1
      val = val * axx / ii
   Loop
   exp_sum = 1.0 / (ii + 1.0)
   Do While (0 < ii)
      exp_sum = 1.0 + axx * (exp_sum / ii)
      ii = ii - 1
   Loop
   If (xx < 0.0) Then
      retvalu = 1.0 / exp_sum
   Else
      retvalu = exp_sum
   End If
   Do While (0 < squarings)
      retvalu = retvalu * retvalu
      squarings = squarings - 1
   Loop
   exp__1 = (retvalu)
End Function
Public Function exp__2(ByVal xx As Double) As Double
   Dim ii As Long
   Dim axx As Double
   Dim expmo_sum As Double
   Dim retvalu As Double
   Dim squarings As Long
   Dim val As Double
   If (xx < 0) Then
      axx = -xx
   Else
      axx = xx
   End If
   squarings = 0
   Do While (1 < axx)
      axx = axx / 2.0
      squarings = squarings + 1
   Loop
   val = 1.0
   ii = 1
   Do While (Kw.DBLEPS / 4.0 < val)
      ii = ii + 1
      val = val * axx / ii
   Loop
   expmo_sum = 0
   Do While (0 < ii)
      expmo_sum = axx * (expmo_sum + 1.0) / ii
      ii = ii - 1
   Loop
   For ii = 1 To squarings
      expmo_sum = expmo_sum * (2.0 + expmo_sum)
   Next
   If (xx < 0) Then
      retvalu = 1.0 / (expmo_sum + 1.0)
   Else
      retvalu = expmo_sum + 1.0
   End If
   exp__2 = (retvalu)
End Function
Public Function ln__1(ByVal xx As Double) As Double
   Dim yy_curr As Double
   Dim logstep As Long
   Dim retvalu As Double
   Dim tmp As Double
   logstep = 0
   yy_curr = 8.0 / xx
   tmp = (Kw.DBLEPS)
   Do While (tmp < yy_curr)
      logstep = logstep - 16
      yy_curr = yy_curr / 65536.0
   Loop
   retvalu = (Kw.PI / Kw.agmean(2.0, yy_curr) + logstep * _
         Kw.LNTWO)
   ln__1 = (retvalu)
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
   Do While (Kw.SQRTTWO < yy_curr)
      ptwo = ptwo + 1
      yy_curr = yy_curr / 2.0
   Loop
   Do While (yy_curr < 1.0 / Kw.SQRTTWO)
      ptwo = ptwo - 1
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
   ln__2 = (ptwo * Kw.LNTWO + sum_curr)
End Function
Public Function euler__1() As Double
   Dim twon As Double
   Dim exptwon As Double
   Dim nn As Long
   Dim term As Double
   Dim subsum As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim mm As Long
   twon = 1.0
   exptwon = Kw.E
   nn = 0
   Do While (True)
      twon = twon * 2.0
      exptwon = exptwon * exptwon
      If (0.1 < Kw.DBLEPS * exptwon) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   term = 1.0 / twon
   subsum = 0.0
   sum_curr = 0.0
   mm = 1
   Do While (True)
      subsum = subsum + 1.0 / mm
      term = term * twon / mm
      sum_prev = sum_curr
      sum_curr = sum_curr + term * subsum
      If (Kw.iseq(sum_prev, sum_curr)) Then
         Exit Do' loop AWAIT
      End If
      mm = mm + 1
   Loop
   euler__1 = ((twon * sum_curr / exptwon - (nn + 1) * Kw.LNTWO))
End Function
Public Function sphere_d(ByVal lata_rad As Double, ByVal _
      lona_rad As Double, ByVal latb_rad As Double, ByVal _
      lonb_rad As Double) As Double
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
   sphere_d = (retvalu)
End Function
Public Function great_circle_distance(ByVal lata_rad As _
      Double, ByVal lona_rad As Double, ByVal latb_rad As _
      Double, ByVal lonb_rad As Double) As Double
   great_circle_distance _
         = ((sphere_d(lata_rad, lona_rad, latb_rad, lonb_rad)))
End Function
Public Function sphere_distance(ByVal lata_rad As Double, _
      ByVal lona_rad As Double, ByVal latb_rad As Double, _
      ByVal lonb_rad As Double, ByRef ret_dirs_arr_p() As _
      Double) As Double
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
   sphere_distance = (dist)
End Function
Private Function lf_ka(ByVal usq As Double) As Double
   Dim hyp As Double
   hyp = Sqr(1.0 + usq)
   lf_ka = (((hyp - 1.0) / (hyp + 1.0)))
End Function
Private Function lf_cap_a(ByVal usq As Double) As Double
   Dim ka As Double
   ka = lf_ka(usq)
   lf_cap_a = (((1.0 + Kw.square(ka / 2.0)) / (1.0 - ka)))
End Function
Private Function lf_cap_b(ByVal usq As Double) As Double
   Dim ka As Double
   ka = lf_ka(usq)
   lf_cap_b = ((ka * (1.0 - 3.0 * Kw.square(ka) / 8.0)))
End Function
Public Function ellipsoid_distance(ByVal flat As Double, _
      ByVal lata_rad As Double, ByVal lona_rad As Double, _
      ByVal latb_rad As Double, ByVal lonb_rad As Double, _
      ByRef ret_dirs_arr_p() As Double) As Double
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
   Dim s_alpha As Double
   Dim c_alpha_sq As Double
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
      s_sig = Kw.hypot(c_cap_ub * s_xx, c_cap_ua * s_cap_ub - _
            s_cap_ua * c_cap_ub * c_xx)
      c_sig = s_cap_ua * s_cap_ub + c_cap_ua * c_cap_ub * c_xx
      sig = Atan2(s_sig, c_sig)
      s_alpha = c_cap_ua * c_cap_ub * s_xx / s_sig
      c_alpha_sq = 1.0 - Kw.square(s_alpha)
      cbsigm = c_sig - Kw.divi(2.0 * s_cap_ua * s_cap_ub, _
            c_alpha_sq, 0)
      cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat * _
            (4.0 - 3.0 * c_alpha_sq)))
      xx_prev = xx_curr
      xx_curr = (lon_diff + (1.0 - cap_c) * flat * s_alpha * _
            (sig + cap_c * s_sig * (cbsigm + cap_c * c_sig * _
            (2.0 * Kw.square(cbsigm) - 1.0))))
      If (10 < ii And Kw.iseq(Math.Abs(xx_prev + xx_curr), _
            TAU)) Then
         xx_curr = TAU / 2.0
         Exit Do
      End If
      If (Math.Abs(xx_curr - xx_prev) < 1.0E-12) Then
         Exit Do' loop AWAIT
      End If
      ii = ii + 1
   Loop
   usq = c_alpha_sq * (1.0 / Kw.square(iflat) - 1.0)
   cap_a = iflat * lf_cap_a(usq)
   cap_b = lf_cap_b(usq)
   deltasig = cap_b * s_sig * (cbsigm + 0.25 * cap_b * (c_sig _
         * (-1.0 + 2.0 * Kw.square(cbsigm)) - (1.0 / 6.0) * _
         cap_b * cbsigm * (3.0 + 4.0 * Kw.square(s_sig)) * _
         (-3.0 + 4.0 * Kw.square(cbsigm))))
   dist = cap_a * (sig - deltasig)
   xc = c_cap_ua * s_cap_ub - s_cap_ua * c_cap_ub * c_xx
   xd = c_cap_ub * s_xx
   ret_dirs_arr_p(0) = Atan2(xd, xc)
   xc = c_cap_ub * s_cap_ua - s_cap_ub * c_cap_ua * c_xx
   xd = c_cap_ua * s_xx
   ret_dirs_arr_p(1) = -Atan2(xd, xc)
   ellipsoid_distance = (dist)
End Function
Public Function ellipsoid_destination(ByVal flat As Double, _
      ByVal lata_rad As Double, ByVal lona_rad As Double, _
      ByVal heading_rad As Double, ByVal distance As Double, _
      ByRef ret_loc_arr_p() As Double) As Double
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
   Dim s_alpha As Double
   Dim c_alpha_sq As Double
   Dim twosigm_rad As Double
   Dim c_twosigm As Double
   Dim c_twosigm_sq As Double
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
   s_alpha = Math.Cos(cap_ua) * Math.Sin(heading_rad)
   c_alpha_sq = 1.0 - Kw.square(s_alpha)
   usq = c_alpha_sq * (Kw.square(aa / bb) - 1.0)
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
      c_twosigm_sq = Kw.square(c_twosigm)
      sig_rad_delta = cap_b * s_sig * (c_twosigm + 0.25 * _
            cap_b * (c_sig * (2.0 * c_twosigm_sq - 1.0) - _
            (cap_b / 6.0) * c_twosigm * (4.0 * _
            Kw.square(s_sig) - 3.0) * (4.0 * c_twosigm_sq - _
            3.0)))
      If (Kw.iseq(sig_rad, sig_rad_prev)) Then
         Exit Do' loop AWAIT
      End If
   Loop
   xd = s_cap_ua * c_sig + c_cap_ua * s_sig * c_heading
   xc = iflat * Kw.hypot(s_alpha, s_cap_ua * s_sig - c_cap_ua _
         * c_sig * c_heading)
   ret_loc_arr_p(0) = Atan2(xd, xc)
   xd = s_sig * s_heading
   xc = c_cap_ua * c_sig - s_cap_ua * s_sig * c_heading
   lamda = Atan2(xd, xc)
   cap_c = ((flat / 16.0) * c_alpha_sq * (4.0 + flat * (4.0 - _
         3.0 * c_alpha_sq)))
   cap_l = lamda - (1.0 - cap_c) * flat * s_alpha * (sig_rad _
         + cap_c * s_sig * (c_twosigm + cap_c * c_sig * (2.0 _
         * c_twosigm_sq - 1.0)))
   ret_loc_arr_p(1) = cap_l + lona_rad
   alpha_rad = Kw.fmodu(Kw.PI + Atan2(s_alpha, c_cap_ua * _
         c_sig * c_heading - s_cap_ua * s_sig), Kw.TAU)
   ellipsoid_destination = (alpha_rad)
End Function
Public Function shc_shftpoles2steps(ByVal shft As Long, ByVal _
      poles As Long) As Double
   Dim step_arr(20) As Double
   Dim retvalu As Double
   If (poles <= 0) Then
      retvalu = 0.0
   ElseIf (shft < 0) Then
      retvalu = 0.0
   ElseIf (16 < shft) Then
      retvalu = 1000000000.0
   ElseIf (poles = 1) Then
      step_arr(0) = +1.00000000E+0
      step_arr(1) = +8.75664018E+0
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
      step_arr(0) = +1.000000000E+0
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
      step_arr(0) = +1.000000000E+0
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
      step_arr(0) = +1.00000000E+0
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
      step_arr(0) = +1.000000000E+0
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
   shc_shftpoles2steps = (retvalu)
End Function
Public Function shc_steps2shft(ByVal steps As Double) As Double
   shc_steps2shft = ((Kw.lg(steps + 8.5) - 3.85514))
End Function
Public Function shc_steps2shftinv(ByVal shft As Double) As Double
   shc_steps2shftinv = ((Pow(2.0, (shft + 3.85514)) - 8.5))
End Function
Public Function shc_shft2steps(ByVal shft As Long) As Double
   shc_shft2steps = ((shc_shftpoles2steps(shft, 4)))
End Function
Public Function m2k(ByVal mm As Double) As Double
   m2k = ((Sqr(mm)))
End Function
Public Function k2m(ByVal kk As Double) As Double
   k2m = (kk * kk)
End Function
Public Function m2b(ByVal mm As Double) As Double
   m2b = ((1.0 / Sqr(1 - mm)))
End Function
Public Function b2m(ByVal bb As Double) As Double
   b2m = ((1.0 - 1.0 / (bb * bb)))
End Function
Public Function elliptic1(ByVal mm As Double) As Double
   elliptic1 = ((Kw.PI / (2.0 * Kw.agmean(1.0, Sqr(1.0 - mm)))))
End Function
Public Function ellipticK(ByVal kk As Double) As Double
   ellipticK = ((elliptic1(k2m(kk))))
End Function
Public Function elliptic1__1(ByVal mm As Double) As Double
   elliptic1__1 = ((Kw.carlsonRF(0.0, 1.0 - mm, 1.0)))
End Function
Public Function elliptic1i(ByVal mm As Double, ByVal circ_rad _
      As Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim cc As Double
   Dim skip_flag As Boolean
   Dim temp As Double
   Dim retvalu As Double
   Dim tt As Double
   Dim kresult As Double
   Dim lcirc_rad As Double
   Dim mc As Double
   Dim ii As Long
   Dim modd As Long
   Dim signof As Long
   Dim npihlfs As Long
   Dim ee As Double
   mc = 1.0 - mm
   If (Kw.iszero(mm)) Then
      retvalu = circ_rad
   ElseIf (Kw.iszero(mc)) Then
      If (Kw.PI / 2 <= Math.Abs(circ_rad)) Then
         retvalu = DBLMAX
      Else
         retvalu = Math.Log(Math.Tan((Kw.PI / 2 + circ_rad) / _
               2.0))
      End If
   Else
      npihlfs = floor(circ_rad / (Kw.PI / 2))
      If (Kw.isodd(npihlfs)) Then
         npihlfs = npihlfs + 1
      End If
      lcirc_rad = circ_rad
      If (npihlfs = 0) Then
         kresult = 0.0
      Else
         kresult = Kw.elliptic1(mm)
         lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2
      End If
      If (lcirc_rad < 0.0) Then
         lcirc_rad = -lcirc_rad
         signof = -1
      Else
         signof = 1
      End If
      tt = Math.Tan(lcirc_rad)
      ggn = Sqr(mc)
      skip_flag = False
      If (10.0 < Math.Abs(tt)) Then
         ee = 1.0 / (ggn * tt)
         If (Math.Abs(ee) < 10.0) Then
            If (npihlfs = 0) Then
               kresult = Kw.elliptic1(mm)
            End If
            temp = kresult - Kw.elliptic1i(mm, Atan2(ee, 1))
            skip_flag = True
         End If
      End If
      If (Not skip_flag) Then
         aan = 1.0
         ii = 1
         modd = 0
         Do While (True)
            temp = ggn / aan
            lcirc_rad = lcirc_rad + Atan2(tt * temp, 1) + _
                  modd * Kw.PI
            modd = floor(lcirc_rad / Kw.PI + 0.5)
            tt = tt * (1.0 + temp) / (1.0 - temp * tt * tt)
            cc = (aan - ggn) / 2.0
            temp = Sqr(aan * ggn)
            aan = (aan + ggn) / 2.0
            ggn = temp
            ii = ii + ii
            If (Math.Abs(cc / aan) <= DBLEPS) Then
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
   elliptic1i = (retvalu)
End Function
Public Function ellipticF(ByVal kk As Double, ByVal circ_rad _
      As Double) As Double
   ellipticF = ((elliptic1i(k2m(kk), circ_rad)))
End Function
Public Function elliptic1i__1(ByVal mm As Double, ByVal _
      circ_rad As Double) As Double
   Dim sinphi As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic1(mm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2
   End If
   sinphi = Math.Sin(lcirc_rad)
   elliptic1i__1 _
         = ((sinphi * _
               Kw.carlsonRF(Kw.square(Math.Cos(lcirc_rad)), 1 _
               - mm * Kw.square(sinphi), 1) + kresult))
End Function
Public Function elliptic2(ByVal mm As Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim tn As Double
   Dim twon As Double
   Dim sum As Double
   Dim sum_prev As Double
   Dim ii As Long
   Dim amm As Double
   Dim retvalu As Double
   amm = Math.Abs(mm)
   If (amm < 1.0) Then
      twon = 0.5
      aan = 1.0
      ggn = Sqr(1 - mm)
      sum = 1.0 - mm / 2.0
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
   elliptic2 = (retvalu)
End Function
Public Function ellipticE(ByVal kk As Double) As Double
   ellipticE = ((elliptic2(k2m(kk))))
End Function
Public Function elliptic2__1(ByVal mm As Double) As Double
   elliptic2__1 _
         = ((Kw.carlsonRF(0, 1 - mm, 1) - mm * Kw.carlsonRD(0 _
               , 1 - mm, 1) / 3.0))
End Function
Public Function elliptic2i(ByVal mm As Double, ByVal circ_rad _
      As Double) As Double
   Dim aan As Double
   Dim ggn As Double
   Dim cc As Double
   Dim errsum As Double
   Dim temp As Double
   Dim tt As Double
   Dim eliptwomm As Double
   Dim mmc As Double
   Dim ii As Long
   Dim modd As Long
   Dim npihalfs As Long
   Dim signof As Long
   Dim lcirc_rad As Double
   Dim retvalu As Double
   If (Kw.iszero(mm)) Then
      retvalu = circ_rad
   Else
      mmc = 1.0 - mm
      eliptwomm = elliptic2(mm)
      npihalfs = floor(circ_rad / (Kw.PI / 2))
      If (Kw.isodd(npihalfs)) Then
         npihalfs = npihalfs + 1
      End If
      lcirc_rad = circ_rad - npihalfs * Kw.PI / 2
      If (Kw.iszero(mmc)) Then
         retvalu = Math.Sin(lcirc_rad) + npihalfs * eliptwomm
      Else
         If (lcirc_rad < 0.0) Then
            lcirc_rad = -lcirc_rad
            signof = -1
         Else
            signof = 1
         End If
         tt = Math.Tan(lcirc_rad)
         ggn = Sqr(mmc)
         If (Math.Abs(tt) < - 1) Then
            errsum = 1.0 / (ggn * tt)
         Else
            errsum = 0.0
         End If
         If (0.0 < Math.Abs(errsum) And Math.Abs(errsum) < _
               1000.0) Then
            errsum = Atan2(1.0, ggn * tt)
            temp = eliptwomm - elliptic2i(mm, errsum) + mm * _
                  Math.Sin(circ_rad) * Math.Sin(errsum)
         Else
            cc = Sqr(mm)
            aan = 1.0
            ii = 1
            modd = 0
            Do While (DBLEPS < Math.Abs(cc / aan))
               temp = ggn / aan
               lcirc_rad = lcirc_rad + Atan2(tt * temp, 1) + _
                     modd * Kw.PI
               modd = floor(lcirc_rad / Kw.PI + 0.5)
               tt = tt * (1.0 + temp) / (1.0 - temp * tt * tt)
               cc = (aan - ggn) / 2.0
               temp = Sqr(aan * ggn)
               aan = (aan + ggn) / 2.0
               ggn = temp
               ii = ii + ii
               errsum = errsum + cc * Math.Sin(lcirc_rad)
            Loop
            temp = eliptwomm * (Atan2(tt, 1) + modd * Kw.PI) _
                  / (ii * aan * elliptic1(mm)) + errsum
         End If
         If (signof < 0) Then
            temp = -temp
         End If
         retvalu = temp + npihalfs * eliptwomm
      End If
   End If
   elliptic2i = (retvalu)
End Function
Public Function ellipticEi(ByVal kk As Double, ByVal circ_rad _
      As Double) As Double
   ellipticEi = ((elliptic2i(k2m(kk), circ_rad)))
End Function
Public Function elliptic2i__1(ByVal mm As Double, ByVal _
      circ_rad As Double) As Double
   Dim sinphi As Double
   Dim sinphisq As Double
   Dim sinphicu As Double
   Dim cosphisq As Double
   Dim argb As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic2(mm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2
   End If
   sinphi = Math.Sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = Kw.square(Math.Cos(lcirc_rad))
   argb = 1 - mm * sinphisq
   elliptic2i__1 _
         = ((sinphi * carlsonRF(cosphisq, argb, 1) - mm * _
               sinphicu * carlsonRD(cosphisq, argb, 1) / 3.0 _
               + kresult))
End Function
Public Function elliptic3(ByVal nn As Double, ByVal mm As _
      Double) As Double
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
   Dim amm As Double
   Dim retvalu As Double
   amm = Math.Abs(mm)
   If (amm < 1.0) Then
      aan = 1.0
      ggn = Sqr(1.0 - mm)
      If (1.0 <= Math.Abs(nn)) Then
         ppn = Sqr(1.0 - mm / nn)
      Else
         ppn = Sqr(1.0 - nn)
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
      If (1.0 <= Math.Abs(nn)) Then
         tn = mm * sum / (mm - nn)
      Else
         tn = 2.0 + sum * nn / (1.0 - nn)
      End If
      retvalu = Kw.PI * tn / (4.0 * aan)
   Else
      retvalu = 1.0
   End If
   elliptic3 = (retvalu)
End Function
Public Function ellipticP(ByVal kk As Double, ByVal circ_rad _
      As Double) As Double
   ellipticP = ((elliptic3(kk, circ_rad)))
End Function
Public Function elliptic3i(ByVal nn As Double, ByVal mm As _
      Double, ByVal circ_rad As Double) As Double
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
   spm = 1 - mm * spq
   spn = 1 - nn * spq
   elliptic3i _
         = ((sp * (Kw.carlsonRF(cpq, spm, 1) + spq * nn * _
               Kw.carlsonRJ(cpq, spm, 1, spn) / 3)))
End Function
Public Function ellipticPi(ByVal nn As Double, ByVal kk As _
      Double, ByVal circ_rad As Double) As Double
   ellipticPi = ((elliptic3i(nn, k2m(kk), circ_rad)))
End Function
Public Function elliptic3__1(ByVal nn As Double, ByVal mm As _
      Double) As Double
   elliptic3__1 _
         = ((Kw.carlsonRF(0, 1 - mm, 1) + nn * Kw.carlsonRJ(0 _
               , 1 - mm, 1, 1 - nn) / 3.0))
End Function
Public Function elliptic3i__1(ByVal nn As Double, ByVal mm As _
      Double, ByVal circ_rad As Double) As Double
   Dim sinphi As Double
   Dim sinphisq As Double
   Dim sinphicu As Double
   Dim cosphisq As Double
   Dim argb As Double
   Dim npihlfs As Long
   Dim lcirc_rad As Double
   Dim kresult As Double
   npihlfs = floor(circ_rad / (Kw.PI / 2))
   If (Kw.isodd(npihlfs)) Then
      npihlfs = npihlfs + 1
   End If
   lcirc_rad = circ_rad
   If (npihlfs = 0) Then
      kresult = 0.0
   Else
      kresult = Kw.elliptic3(nn, mm) * npihlfs
      lcirc_rad = lcirc_rad - npihlfs * Kw.PI / 2
   End If
   sinphi = Math.Sin(lcirc_rad)
   sinphisq = sinphi * sinphi
   sinphicu = sinphi * sinphisq
   cosphisq = Kw.square(Math.Cos(lcirc_rad))
   argb = 1 - mm * sinphisq
   elliptic3i__1 _
         = ((sinphi * carlsonRF(cosphisq, argb, 1) + (nn / _
               3.0) * sinphicu * carlsonRJ(cosphisq, argb, 1, _
               1 - nn * sinphisq) + kresult))
End Function
Public Function jacobiphi(ByVal mm As Double, ByVal elli_rad _
      As Double) As Double
   Dim ai As Double
   Dim bb As Double
   Dim circ_rad As Double
   Dim geo_mean As Double
   Dim twon As Double
   Dim aa_arr(20) As Double
   Dim cc_arr(20) As Double
   Dim ii As Long
   If (mm <= 0.0) Then
      circ_rad = Kw.taninv(sn(mm, elli_rad) / cn(mm, elli_rad))
   ElseIf (mm < 1.0) Then
      bb = Sqr(1.0 - mm)
      aa_arr(0) = 1.0
      cc_arr(0) = Sqr(mm)
      twon = 1.0
      ii = 0
      Do While (DBLEPS < Math.Abs(cc_arr(ii) / aa_arr(ii)))
         If (19 - 1 < ii) Then
            Exit Do
         End If
         ai = aa_arr(ii)
         ii = ii + 1
         cc_arr(ii) = (ai - bb) / 2.0
         geo_mean = Sqr(ai * bb)
         aa_arr(ii) = (ai + bb) / 2.0
         bb = geo_mean
         twon = twon * 2.0
      Loop
      circ_rad = twon * aa_arr(ii) * elli_rad
      Do While (0 < ii)
         bb = cc_arr(ii) * Math.Sin(circ_rad) / aa_arr(ii)
         circ_rad = (Kw.sininv(bb) + circ_rad) / 2.0
         ii = ii - 1
      Loop
   Else
      circ_rad = Kw.taninv(sn(mm, elli_rad) / cn(mm, elli_rad))
   End If
   jacobiphi = (circ_rad)
End Function
Public Function ell2cir(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   ell2cir = ((jacobiphi(mm, elli_rad)))
End Function
Public Function cir2ell(ByVal mm As Double, ByVal circ_rad As _
      Double) As Double
   cir2ell = ((elliptic1i(mm, circ_rad)))
End Function
Public Function jacobicir(ByVal mm As Double) As Double
   jacobicir = ((4.0 * elliptic2(mm) / Sqr(1.0 - mm)))
End Function
Public Function dn(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim kk As Double
   Dim retvalu As Double
   If (mm < 0.0) Then
      retvalu = -dn(-mm, elli_rad) + 2.0
   ElseIf (mm < 1E-9) Then
      snx = Math.Sin(elli_rad)
      retvalu = 1.0 - mm * snx * snx / 2.0
   ElseIf (mm < 1.0 - 1E-9) Then
      snx = Math.Sin(jacobiphi(mm, elli_rad))
      retvalu = Kw.sqrtx(1.0 - mm * snx * snx)
   ElseIf (mm <= 1.0) Then
      ai = (1.0 - mm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      retvalu = 1.0 / csx + ai * (csx * snx + elli_rad)
   Else
      kk = m2k(mm)
      retvalu = cn(1.0 / mm, elli_rad * kk)
   End If
   dn = (retvalu)
End Function
Public Function cn(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim kk As Double
   Dim retvalu As Double
   If (mm < 0.0) Then
      retvalu = -cn(-mm, elli_rad) + 2 * Math.Cos(elli_rad)
   ElseIf (mm < 1E-9) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      retvalu = csx + ai * snx
   ElseIf (mm < 1.0 - 1E-9) Then
      retvalu = Math.Cos(jacobiphi(mm, elli_rad))
   ElseIf (mm <= 1.0) Then
      ai = (1.0 - mm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      retvalu = 1.0 / csx - ai * (csx * snx + elli_rad)
   Else
      kk = m2k(mm)
      retvalu = dn(1.0 / mm, elli_rad * kk)
   End If
   cn = (retvalu)
End Function
Public Function sn(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim kk As Double
   Dim retvalu As Double
   If (mm < 0.0) Then
      retvalu = -sn(1.0 - mm, elli_rad) + Math.Sin(elli_rad) _
            + Kw.tanh(elli_rad)
   ElseIf (mm < 1E-9) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      retvalu = snx - ai * csx
   ElseIf (mm < 1.0 - 1E-9) Then
      retvalu = Math.Sin(jacobiphi(mm, elli_rad))
   ElseIf (mm <= 1.0) Then
      ai = (1.0 - mm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.sinh(elli_rad)
      retvalu = (snx + snx * ai - ai * elli_rad / csx) / csx
   Else
      kk = m2k(mm)
      retvalu = sn(1.0 / mm, elli_rad * kk) / kk
   End If
   sn = (retvalu)
End Function
Public Function cd(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   cd = ((cn(mm, elli_rad) / dn(mm, elli_rad)))
End Function
Public Function sd(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   sd = ((sn(mm, elli_rad) / dn(mm, elli_rad)))
End Function
Public Function nd(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   nd = ((1.0 / dn(mm, elli_rad)))
End Function
Public Function dc(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   dc = ((dn(mm, elli_rad) / cn(mm, elli_rad)))
End Function
Public Function nc(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   nc = ((1.0 / cn(mm, elli_rad)))
End Function
Public Function sc(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   sc = ((sn(mm, elli_rad) / cn(mm, elli_rad)))
End Function
Public Function ds(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   ds = ((dn(mm, elli_rad) / sn(mm, elli_rad)))
End Function
Public Function cs(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   cs = ((cn(mm, elli_rad) / sn(mm, elli_rad)))
End Function
Public Function ns(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   ns = ((1.0 / sn(mm, elli_rad)))
End Function
Public Function lv_ellpj(ByVal mm As Double, ByVal elli_rad _
      As Double, ByRef ret_arr_p() As Double) As Long
   Dim ai As Double
   Dim csx As Double
   Dim snx As Double
   Dim circ_rad As Double
   Dim twon As Double
   Dim junk_arr(4) As Double
   If (mm < 0.0) Then
      snx = -sn(1.0 - mm, elli_rad) + Math.Sin(elli_rad) + _
            Kw.tanh(elli_rad)
      csx = -cn(-mm, elli_rad) + 2 * Math.Cos(elli_rad)
      ret_arr_p(0) = snx
      ret_arr_p(1) = csx
      ret_arr_p(2) = -dn(-mm, elli_rad) + 2.0
      ret_arr_p(3) = Atan2(snx, csx)
   ElseIf (mm < 1E-9) Then
      snx = Math.Sin(elli_rad)
      csx = Math.Cos(elli_rad)
      ai = mm * (elli_rad - snx * csx) / 4.0
      ret_arr_p(0) = snx - ai * csx
      ret_arr_p(1) = csx + ai * snx
      ret_arr_p(2) = 1.0 - mm * snx * snx / 2.0
      ret_arr_p(3) = elli_rad - ai
   ElseIf (mm < 1.0 - 1E-9) Then
      circ_rad = Kw.jacobiphi(mm, elli_rad)
      snx = Math.Sin(circ_rad)
      ret_arr_p(0) = snx
      ret_arr_p(1) = Math.Cos(circ_rad)
      ret_arr_p(2) = Kw.sqrtx(1.0 - mm * snx * snx)
      ret_arr_p(3) = circ_rad
   ElseIf (mm <= 1.0) Then
      ai = (1.0 - mm) / 4.0
      csx = Kw.cosh(elli_rad)
      snx = Kw.tanh(elli_rad)
      twon = csx * Kw.sinh(elli_rad)
      ret_arr_p(0) = snx + ai * (twon - elli_rad) / (csx * csx)
      ret_arr_p(3) = 2.0 * Atan2(Math.Exp(elli_rad), 1.0) - _
            Kw.PI / 2.0 + ai * (twon - elli_rad) / csx
      ai = ai * snx / csx
      ret_arr_p(1) = 1.0 / csx - ai * (twon - elli_rad)
      ret_arr_p(2) = 1.0 / csx + ai * (twon + elli_rad)
   Else
      ai = m2k(mm)
      Call lv_ellpj(1.0 / mm, elli_rad * ai, junk_arr)
      ret_arr_p(0) = junk_arr(0) / ai
      ret_arr_p(1) = junk_arr(2)
      ret_arr_p(2) = junk_arr(1)
      ret_arr_p(3) = junk_arr(3)
   End If
   lv_ellpj = 0
End Function
Public Function sn__1(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim arr_arr(4) As Double
   Call lv_ellpj(mm, elli_rad, arr_arr)
   sn__1 = ((arr_arr(0)))
End Function
Public Function cn__1(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim arr_arr(4) As Double
   Call lv_ellpj(mm, elli_rad, arr_arr)
   cn__1 = ((arr_arr(1)))
End Function
Public Function dn__1(ByVal mm As Double, ByVal elli_rad As _
      Double) As Double
   Dim arr_arr(4) As Double
   Call lv_ellpj(mm, elli_rad, arr_arr)
   dn__1 = ((arr_arr(2)))
End Function
Public Function nom(ByVal mm As Double) As Double
   nom = ((Math.Exp(-PI * Kw.elliptic1(1.0 - mm) / _
         Kw.elliptic1(mm))))
End Function
Public Function theta1(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim sig As Double
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   sig = 1
   qq = nom(mm)
   sum_curr = 0
   ang = zz
   ang_inc = 2 * zz
   nn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, Kw.square(nn + _
            0.5)) * Math.Sin(ang)
      ang = ang + ang_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   theta1 = (2 * sum_curr)
End Function
Public Function theta2(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   qq = nom(mm)
   sum_curr = 0
   ang = zz
   ang_inc = 2 * zz
   nn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, Kw.square(nn + 0.5)) * _
            Math.Cos(ang)
      ang = ang + ang_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   theta2 = (2 * sum_curr)
End Function
Public Function theta3(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   qq = nom(mm)
   sum_curr = 0
   ang = 2 * zz
   ang_inc = ang
   nn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, nn * nn) * Math.Cos(ang)
      ang = ang + ang_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   theta3 = (1 + 2 * sum_curr)
End Function
Public Function theta4(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim ang As Double
   Dim ang_inc As Double
   Dim qq As Double
   Dim sig As Double
   sig = 1
   qq = nom(mm)
   sum_curr = 0
   ang = 2 * zz
   ang_inc = ang
   nn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, nn * nn) * _
            Math.Cos(ang)
      ang = ang + ang_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   theta4 = (1 + 2 * sum_curr)
End Function
Public Function nevillethetac(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim qq As Double
   Dim km As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1(mm)
   qq = Math.Exp(-PI * Kw.elliptic1(1.0 - mm) / km)
   sum_curr = 0
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2 * km)
   nn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, nn * nn + nn) * _
            Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   nevillethetac = ((sum_curr * Sqr(TAU * Sqr(qq / mm) / km)))
End Function
Public Function nevillethetad(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim qq As Double
   Dim km As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1(mm)
   qq = Math.Exp(-PI * Kw.elliptic1(1.0 - mm) / km)
   sum_curr = 0
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   nn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + Pow(qq, nn * nn) * Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   nevillethetad = (((1 + 2 * sum_curr) * Sqr(TAU / km) / 2.0))
End Function
Public Function nevillethetan(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim qq As Double
   Dim km As Double
   Dim sig As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1(mm)
   qq = Math.Exp(-PI * Kw.elliptic1(1.0 - mm) / km)
   sum_curr = 0
   sig = -1
   cos_inc = PI * zz / km
   cos_of = PI * zz / km
   nn = 1
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, nn * nn) * _
            Math.Cos(cos_of)
      cos_of = cos_of + cos_inc
      sig = -sig
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   nevillethetan _
         = (((1 + 2 * sum_curr) * Sqr(TAU / (km * Sqr(1.0 - _
               mm))) / 2.0))
End Function
Public Function nevillethetas(ByVal mm As Double, ByVal zz As _
      Double) As Double
   Dim sum_curr As Double
   Dim sum_prev As Double
   Dim nn As Long
   Dim qq As Double
   Dim km As Double
   Dim sig As Double
   Dim cos_of As Double
   Dim cos_inc As Double
   km = Kw.elliptic1(mm)
   qq = Math.Exp(-PI * Kw.elliptic1(1.0 - mm) / km)
   sum_curr = 0
   sig = 1
   cos_inc = PI * zz / km
   cos_of = PI * zz / (2 * km)
   nn = 0
   Do While (True)
      sum_prev = sum_curr
      sum_curr = sum_curr + sig * Pow(qq, nn * nn + nn) * _
            Math.Sin(cos_of)
      sig = -sig
      cos_of = cos_of + cos_inc
      If (Kw.iseq(sum_curr, sum_prev)) Then
         Exit Do' loop AWAIT
      End If
      nn = nn + 1
   Loop
   nevillethetas _
         = ((sum_curr * Sqr(TAU * Sqr(qq / (mm * (1 - mm))) / _
               km)))
End Function
Public Function ellipsearea(ByVal aa As Double, ByVal bb As _
      Double) As Double
   ellipsearea = (Kw.PI * aa * bb)
End Function
Public Function ellipseecc(ByVal aa As Double, ByVal bb As _
      Double) As Double
   Dim rati As Double
   rati = Kw.ratio(aa, bb)
   ellipseecc = ((Sqr(1.0 - rati * rati)))
End Function
Public Function ellipsem(ByVal aa As Double, ByVal bb As _
      Double) As Double
   Dim rati As Double
   rati = Kw.ratio(aa, bb)
   ellipsem = (1.0 - rati * rati)
End Function
Public Function ellipseflatness(ByVal aa As Double, ByVal bb _
      As Double) As Double
   ellipseflatness = ((1.0 - Kw.ratio(aa, bb)))
End Function
Public Function flat2ecc(ByVal flt As Double) As Double
   flat2ecc = ((Sqr(flt * (2.0 - flt))))
End Function
Public Function ecc2flat(ByVal ecc As Double) As Double
   ecc2flat = ((1.0 - Sqr(1.0 - ecc * ecc)))
End Function
Public Function ellipsecir__1(ByVal aa As Double, ByVal bb As _
      Double) As Double
   Dim major_axis As Double
   Dim minor_axis As Double
   Dim rati As Double
   If (aa < bb) Then
      major_axis = bb
      minor_axis = aa
   Else
      major_axis = aa
      minor_axis = bb
   End If
   rati = minor_axis / major_axis
   ellipsecir__1 _
         = ((4.0 * major_axis * Kw.elliptic2(1.0 - rati * rati)))
End Function
Public Function ellipsecir(ByVal aa As Double, ByVal bb As _
      Double) As Double
   Dim xx As Double
   Dim yy As Double
   Dim mm As Double
   Dim suma As Double
   Dim temp As Double
   Dim ii As Long
   Dim retvalu As Double
   If (aa < bb) Then
      xx = bb
      yy = aa
   Else
      xx = aa
      yy = bb
   End If
   If (yy <= Sqr(DBLEPS) * xx) Then
      retvalu = 4.0 * xx
   Else
      suma = 0.0
      mm = 1.0
      ii = 0
      Do While (True)
         temp = (xx + yy) / 2.0
         yy = Sqr(xx * yy)
         xx = temp
         mm = mm + mm
         suma = suma + mm * Kw.square(xx - yy)
         If (Kw.iseq(xx, yy)) Then
            Exit Do' loop AWAIT
         End If
         ii = ii + 1
         If (20 <= ii) Then
            Exit Do' loop AWAIT
         End If
      Loop
      retvalu = PI * (Kw.square(aa + bb) - suma) / (xx + yy)
   End If
   ellipsecir = (retvalu)
End Function
Public Function epdf(ByVal minvalx As Double, ByVal maxvalx _
      As Double, ByVal nn As Long, data_arr_pc() As Double, _
      ByVal mm As Long, ByRef ret_pdf_arr_p() As Double) As _
      Double
   Dim ii As Long
   Dim indi As Long
   Dim gap_size As Double
   Dim retvalu As Double
   Dim inc As Double
   For ii = 0 To mm - 1
      ret_pdf_arr_p(ii) = 0
   Next
   inc = 1.0 / nn
   gap_size = (maxvalx - minvalx) / (mm - 1)
   retvalu = 0
   For ii = 0 To nn - 1
      If (data_arr_pc(ii) < minvalx) Then
         ret_pdf_arr_p(0) = ret_pdf_arr_p(0) + inc
      ElseIf (data_arr_pc(ii) < maxvalx) Then
         indi = Ceil((data_arr_pc(ii) - minvalx) / gap_size)
         ret_pdf_arr_p(indi) = ret_pdf_arr_p(indi) + inc
      Else
         retvalu = retvalu + inc
      End If
   Next
   epdf = (retvalu)
End Function
Public Function ecdf(ByVal minvalx As Double, ByVal maxvalx _
      As Double, ByVal nn As Long, data_arr_pc() As Double, _
      ByVal mm As Long, ByRef ret_cdf_arr_p() As Double) As _
      Double
   Dim ii As Long
   Call epdf(minvalx, maxvalx, nn, data_arr_pc, mm, _
         ret_cdf_arr_p)
   For ii = 1 To mm - 1
      ret_cdf_arr_p(ii) = ret_cdf_arr_p(ii) + _
            ret_cdf_arr_p(ii - 1)
   Next
   ecdf = ((ret_cdf_arr_p(mm - 1)))
End Function
Public Function epdf2cdf(ByVal nn As Long, pdf_arr_pc() As _
      Double, ByRef ret_cdf_arr_p() As Double) As Double
   Dim ii As Long
   Dim sumcurr As Double
   sumcurr = 0.0
   For ii = 0 To nn - 1
      sumcurr = sumcurr + pdf_arr_pc(ii)
      ret_cdf_arr_p(ii) = sumcurr
   Next
   epdf2cdf = ((ret_cdf_arr_p(nn - 1)))
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
   search_check = (retvalu)
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
   search_search = (curr)
End Function
Public Function blackbody(ByVal wavelength As Double, ByVal _
      temperk As Double) As Double
   Dim hc As Double
   Dim hc_kt As Double
   Dim retvalu As Double
   If (wavelength <= 0.0 Or temperk <= 0.0) Then
      retvalu = 0.0
   Else
      hc = Kw.PLANCK * Kw.LIGHT
      hc_kt = hc / (Kw.BOLTZMANN * temperk)
      retvalu = 2.0 * hc * Kw.LIGHT / (Pow(wavelength, 5) * _
            (Math.Exp(hc_kt / wavelength) - 1))
   End If
   blackbody = (retvalu)
End Function
Public Function blackbodymode(ByVal temperk As Double) As Double
   Dim hc_kt As Double
   Dim retvalu As Double
   If (temperk <= 0.0) Then
      retvalu = 0.0
   Else
      hc_kt = Kw.PLANCK * Kw.LIGHT / (Kw.BOLTZMANN * temperk)
      retvalu = hc_kt / (5 + Kw.wp(-5 * Math.Exp(-5)))
   End If
   blackbodymode = (retvalu)
End Function
Public Function blackbodypower(ByVal temperk As Double) As Double
   blackbodypower = ((Kw.STEFAN * Pow(temperk, 4.0)))
End Function
Public Function pendulum(ByVal len_m As Double, ByVal _
      ang_offset_rad As Double, ByVal grav As Double) As Double
   pendulum _
         = ((TAU * Sqr(len_m / grav) / Kw.agmean(1, _
               Math.Cos(ang_offset_rad / 2.0))))
End Function
'   DDDDDDDDDDescription ----------------------- kw_description #
Public Function kw_description() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kw Constants: AAABATTERY AAABATTERYCHARGE AAABA" _
         & "TTERYENERGY AAABATTERYVOLTAGE AABATTERY AABATTERYC" _
         & "HARGE AABATTERYENERGY AABATTERYVOLTAGE ACCELERATIO"
   desc_string = desc_string _
         & "N ACRE ACTION AH ALPHA ALPHA_ERR ALPHA_MASS ALPHA_" _
         & "REC ALPHA_REC_ERR ALPHAMASS ALPHAMASS_ERR AMP AMPE" _
         & "RE AMU AMU_ERR ANGLE APERY ARCDEG ARCDEGREE ARCMIN" _
         & " ARCMINUTE ARCSEC ARCSECOND ARE AREA ASTRONOMICALU"
   desc_string = desc_string _
         & "NIT ATM ATMOSPHERE ATMOSPHERE_ERR ATOMICMASSUNIT A" _
         & "TOMICMASSUNIT_ERR ATTO AU AU_ERR AVOGADRO AVOGADRO" _
         & "_ERR AVOGADRO_REC BAN BAR BARN BARREL BASEBALLMASS" _
         & " BASEBALLRADIUS BASKETBALLMASS BASKETBALLRADIUS BE"
   desc_string = desc_string _
         & "KENSTEINENTROPY BEKENSTEININFORMATION BHENTROPY_AR" _
         & "EA BHMASS3_LIFETIME BHMASS_RADIUS BHMASSTEMP BHRAD" _
         & "IUS2DENSITY BIT BLUEENERGY BLUEHz BLUEWAVELENGTH B" _
         & "LUEWAVENUMBER BOHRRADIUS BOHRRADIUS_ERR BOLTZMANN "
   desc_string = desc_string _
         & "BOLTZMANN_ERR BOLTZMANN_REC BTU BTU_IT BTU_TH CAL " _
         & "CAL_IT CAL_TH CALORIE CANDELA CAPACITANCE CARAT CA" _
         & "RBATTERY CARBATTERYCHARGE CARBATTERYENERGY CARBATT" _
         & "ERYVOLTAGE CBATTERY CBATTERYCHARGE CBATTERYENERGY "
   desc_string = desc_string _
         & "CBATTERYVOLTAGE CENTI CHARGE CONDUCTANCE COULOMB C" _
         & "OULOMBCONST COULOMBCONST_ERR CUP CURRENT DALTON DA" _
         & "LTON_ERR DBATTERY DBATTERYCHARGE DBATTERYENERGY DB" _
         & "ATTERYVOLTAGE DBLEPS DBLMAN DBLMAX DBLMAXLN DBLSIG"
   desc_string = desc_string _
         & " DECA DECI DEGC DEGF DEGR DENSITY DEUTERON_MASS DE" _
         & "UTERONMASS DEUTERONMASS_ERR DIMEMASS DIMERADIUS DI" _
         & "METHICKNESS DISTANCE DIT DOWNQUARK_MASS DOWNQUARKE" _
         & "NERGY DOWNQUARKHz DOWNQUARKMASS DOWNQUARKMASS_ERR "
   desc_string = desc_string _
         & "DOWNQUARKWAVELENGTH dvCs_ERR dvCsENERGY dvCsHz dvC" _
         & "sHz_REC dvCsWAVELENGTH dvCsWAVENUMBER E EARTHAGE E" _
         & "ARTHGRAVITYA EARTHGRAVITYB EARTHSOLARDAY EHFENERGY" _
         & " EHFHz EHFWAVELENGTH EHFWAVENUMBER EINSTEIN EINSTE"
   desc_string = desc_string _
         & "IN_ERR ELECTRIC ELECTRIC_ERR ELECTRON_MASS ELECTRO" _
         & "NCHARGE ELECTRONCHARGE_ERR ELECTRONCHARGE_REC ELEC" _
         & "TRONENERGY ELECTRONHz ELECTRONMASS ELECTRONMASS_ER" _
         & "R ELECTRONMASSA ELECTRONMASSA_ERR ELECTRONVOLT ELE"
   desc_string = desc_string _
         & "CTRONWAVELENGTH ELEMENTARYCHARGE ELEMENTARYCHARGE_" _
         & "ERR ELEVATIONMAX ELEVATIONMIN ENERGY EPSILON0 EPSI" _
         & "LON0_ERR ERG EULER EUVENERGY EUVHz EUVWAVELENGTH E" _
         & "UVWAVENUMBER EXA EXBI FARAD FARADAY FARADAY_ERR FE"
   desc_string = desc_string _
         & "IGENBAUM FEMTO FINESTRUCTURE FINESTRUCTURE_ERR FIN" _
         & "ESTRUCTURE_REC FINESTRUCTURE_REC_ERR FIRENERGY FIR" _
         & "Hz FIRWAVELENGTH FIRWAVENUMBER FLICK FLOZ FLTEPS F" _
         & "LTMAN FLTMAX FLTSIG FOE FOOT FORCE FREQUENCY FT G "
   desc_string = desc_string _
         & "G_ERR GALACTICCENTER GALLON GAMMAENERGY GAMMAHz GA" _
         & "MMAWAVELENGTH GAMMAWAVENUMBER GAS GAS_ERR GIANTIMP" _
         & "ACT GIBI GIGA GOLFBALLMASS GOLFBALLRADIUS GRAD GRA" _
         & "IN GRAM GRAVITATION GRAVITATION_ERR GRAVITATIONIER"
   desc_string = desc_string _
         & "S GRAVITATIONNASA GRAVITY GRAVITY_ERR GREENENERGY " _
         & "GREENHz GREENWAVELENGTH GREENWAVENUMBER GREGORIANY" _
         & "EAR GYEAR h h_ERR h_REC HART HARTLEY HBAR HBAR_ERR" _
         & " HECTARE HECTO HELION_MASS HELIONMASS HELIONMASS_E"
   desc_string = desc_string _
         & "RR HENRY HERTZ HFENERGY HFHz HFWAVELENGTH HFWAVENU" _
         & "MBER HI HI_ERR HIENERGY HIHz HIWAVELENGTH HIWAVENU" _
         & "MBER HORSEPOWER HOUR HP HPMETRIC HUBBLE HUBBLE_ERR" _
         & " HXENERGY HXHz HXWAVELENGTH HXWAVENUMBER HYDROGENL"
   desc_string = desc_string _
         & "INE HYDROGENLINE_ERR HYDROGENRADIUS HYDROGENRADIUS" _
         & "_ERR INCH INDUCTANCE INHG INTMAX J2K J2KDAY JC JCE" _
         & "NTURY JD JDAY JDSEC_AT_0GREGORIAN JDSEC_AT_0J2K JD" _
         & "SEC_AT_0KWT JDSEC_AT_0UET JEWISH_FIRST_MONTH JM JM"
   desc_string = desc_string _
         & "ILLENNIUM JOSEPHSON JOSEPHSON_ERR JOULE JULIANCENT" _
         & "URY JULIANDAY JULIANMILLENNIUM JULIANYEAR JY JYEAR" _
         & " K_AT_0TEMPC K_AT_0TEMPF K_AT_0TEMPR kB kB_ERR kB_" _
         & "REC KCD KCD_ERR KELVIN KG KGENERGY KGF KGHz KGWAVE"
   desc_string = desc_string _
         & "LENGTH KGWAVENUMBER KIBI KILO KILOGRAM KPGBOUNDARY" _
         & " KWT LB LBF LENGTH LFENERGY LFHz LFWAVELENGTH LFWA" _
         & "VENUMBER LIFEAGE LIGHT LIGHT_ERR LIGHT_REC LIGHTYE" _
         & "AR LITER LITRE LNTEN LNTWO LUMEN LUX MACH MAGNETIC"
   desc_string = desc_string _
         & " MAGNETIC_ERR MAGNETICFLUX MAGNETICINDUCTION MARAT" _
         & "HON MASS MEBI MEGA METER METRE MFENERGY MFHz MFWAV" _
         & "ELENGTH MFWAVENUMBER MICRO MICROWAVEENERGY MICROWA" _
         & "VEHz MICROWAVEWAVELENGTH MICROWAVEWAVENUMBER MILE "
   desc_string = desc_string _
         & "MILKYWAYAGE MILKYWAYDAY MILKYWAYMASS MILKYWAYRADIU" _
         & "S MILLI MINUTE MIRENERGY MIRHz MIRWAVELENGTH MIRWA" _
         & "VENUMBER MM MMHG MOLARMASS MOLARMASS_ERR MOLARMASS" _
         & "X MOLARMASSX_ERR MOLE MONTHS_IN_YEAR MOONMONTH MPH"
   desc_string = desc_string _
         & " MPS MPSS MU0 MU0_ERR MUON_MASS MUONENERGY MUONHz " _
         & "MUONMASS MUONMASS_ERR MUONWAVELENGTH NANO NAT NEUT" _
         & "RON_MASS NEUTRONENERGY NEUTRONHz NEUTRONMASS NEUTR" _
         & "ONMASS_ERR NEUTRONWAVELENGTH NEWTON NICKELMASS NIC"
   desc_string = desc_string _
         & "KELRADIUS NICKELTHICKNESS NINEVOLT NINEVOLTBATTERY" _
         & " NINEVOLTBATTERYCHARGE NINEVOLTBATTERYENERGY NINEV" _
         & "OLTBATTERYVOLTAGE NINEVOLTCHARGE NINEVOLTENERGY NI" _
         & "NEVOLTVOLTAGE NIRENERGY NIRHz NIRWAVELENGTH NIRWAV"
   desc_string = desc_string _
         & "ENUMBER NPBOUNDARY NUVENERGY NUVHz NUVWAVELENGTH N" _
         & "UVWAVENUMBER OHM ORANGEENERGY ORANGEHz ORANGEWAVEL" _
         & "ENGTH ORANGEWAVENUMBER OUNCE PA PARSEC PEBI PENNYM" _
         & "ASS PENNYRADIUS PENNYTHICKNESS PETA PHI PHONEBATTE"
   desc_string = desc_string _
         & "RY PHONEBATTERYCHARGE PHONEBATTERYENERGY PHONEBATT" _
         & "ERYVOLTAGE PI PICO PINGPONGBALLMASS PINGPONGBALLRA" _
         & "DIUS PINT PLANCK PLANCK_ERR PLANCK_REC PLANCKBAR P" _
         & "LANCKBAR_ERR PLANCKCHARGE PLANCKENERGY PLANCKLENGT"
   desc_string = desc_string _
         & "H PLANCKMASS PLANCKTEMP PLANCKTIME POINT POUND POW" _
         & "ER PPB PPM PPQ PPT PRESSURE PROTON_MASS PROTONENER" _
         & "GY PROTONHz PROTONMASS PROTONMASS_ERR PROTONRADIUS" _
         & " PROTONRADIUS_ERR PROTONWAVELENGTH PROXIMACENTAURI"
   desc_string = desc_string _
         & " PSI PTRBOUNDARY QUART QUARTERMASS QUARTERRADIUS Q" _
         & "UARTERTHICKNESS RAD RADIAN REDENERGY REDHz REDWAVE" _
         & "LENGTH REDWAVENUMBER RESISTANCE RPM RPS RYDBERG RY" _
         & "DBERG_ERR RYDBERGENERGY RYDBERGHz RYDBERGWAVELENGT"
   desc_string = desc_string _
         & "H RYDBERGWAVENUMBER SECOND SHANNON SHFENERGY SHFHz" _
         & " SHFWAVELENGTH SHFWAVENUMBER SI16MAX SI16MIN SI32M" _
         & "AX SI32MIN SIEMENS SOCCERBALLMASS SOCCERBALLRADIUS" _
         & " SOFTBALLMASS SOFTBALLRADIUS SOLARCONSTANT SOLID_A"
   desc_string = desc_string _
         & "NGLE SPECIFICHEAT SPEED SPHERESURFACE SQDEG SQRTTW" _
         & "O SQUAREDEGREE STANDARDATMOSPHERE STANDARDGRAVITY " _
         & "STEFAN STEFAN_ERR STERADIAN SXENERGY SXHz SXWAVELE" _
         & "NGTH SXWAVENUMBER SXXENERGY SXXHz SXXWAVELENGTH SX"
   desc_string = desc_string _
         & "XWAVENUMBER TAU TAU_MASS TAUENERGY TAUHz TAUMASS T" _
         & "AUMASS_ERR TAUWAVELENGTH TBLSP TEBI TEMPERATURE TE" _
         & "NNISBALLMASS TENNISBALLRADIUS TERA TESLA THFENERGY" _
         & " THFHz THFWAVELENGTH THFWAVENUMBER TIME TON TONNE "
   desc_string = desc_string _
         & "TORR TRITON_MASS TRITONMASS TRITONMASS_ERR TRJBOUN" _
         & "DARY TSP TT_AT_0TAI TT_AT_0UT1 TURN UAMU UAMU_ERR " _
         & "UET UHFENERGY UHFHz UHFWAVELENGTH UHFWAVENUMBER UI" _
         & "16MAX UI32MAX UNITGM UNIVERSEAGE UNIVERSEMASS UNIV"
   desc_string = desc_string _
         & "ERSERADIUS UPQUARK_MASS UPQUARKENERGY UPQUARKHz UP" _
         & "QUARKMASS UPQUARKMASS_ERR UPQUARKWAVELENGTH UVAENE" _
         & "RGY UVAHz UVAWAVELENGTH UVAWAVENUMBER UVBENERGY UV" _
         & "BHz UVBWAVELENGTH UVBWAVENUMBER UVCENERGY UVCHz UV"
   desc_string = desc_string _
         & "CWAVELENGTH UVCWAVENUMBER VHFENERGY VHFHz VHFWAVEL" _
         & "ENGTH VHFWAVENUMBER VIOLETENERGY VIOLETHz VIOLETWA" _
         & "VELENGTH VIOLETWAVENUMBER VISCOSITY VOLT VOLTAGE V" _
         & "OLUME VONKLITZING VONKLITZING_ERR WATT WEBER WEEK "
   desc_string = desc_string _
         & "YARD YELLOWENERGY YELLOWGREENENERGY YELLOWGREENHz " _
         & "YELLOWGREENWAVELENGTH YELLOWGREENWAVENUMBER YELLOW" _
         & "Hz YELLOWWAVELENGTH YELLOWWAVENUMBER YOBI YOCTO YO" _
         & "TTA ZEBI ZEPTO ZETTA" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 0-ary Functions: corr_new euler__1 gau_rand " _
         & "jd2ymdhmsinv magicnot magicset normal_rand parabol" _
         & "a_realroots parabola_xaxis parabola_yextrema randd" _
         & " stts_new timee" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 1-ary Functions: abs agmean1 agmean1inv ahme" _
         & "an1 almean1 amean1 aqmean1 b2m bankers bb_pdf bell" _
         & " bellx benford_rand bernoulli bernoullid bernoulli"
   desc_string = desc_string _
         & "n bessI0 bessI1 bessJ0 bessJ1 bessK0 bessK1 bessY0" _
         & " bessY1 bessY1__1 bits_count bits_ls1b bits_ls1bpo" _
         & "s bits_ms1b bits_ms1bpos bitwisenot blackbody_pdf " _
         & "blackbodymode blackbodypower cantor carmichael cat"
   desc_string = desc_string _
         & "alan cauchy_rand cbrt ceil chisqr_rand circle_get " _
         & "clip clockhour clockmin clocksec clockstdev clocks" _
         & "um cnv_dbl2si16 corr_delete corr_handlex corr_hand" _
         & "ley corrcorr corrslope corrstderr corry0 cos cos__"
   desc_string = desc_string _
         & "1 cosd cosdinv cosh coshinv cosintegral cosinv cos" _
         & "m1 cosm1__1 cost costinv cot cotd cotdinv coth cot" _
         & "hinv cotinv cott cottinv csc cscd cscdinv csch csc" _
         & "hinv cscinv csct csctinv ctz cu cube cuberoot date"
   desc_string = desc_string _
         & "_easter date_pesach date_rosh_hashanah day2dhms da" _
         & "y2dhmsinv day2hour deg2dms deg2rad deg2sec deg2tur" _
         & " digamma digamma__1 digammainv dms2deg dms2rad doo" _
         & "msday ecc2flat Ein elliptic1 elliptic1__1 elliptic"
   desc_string = desc_string _
         & "2 elliptic2__1 ellipticE ellipticK erf erf__1 erf_" _
         & "_2 erf__3 erf__4 erfc erfcinv erfcx erfcxinv erfin" _
         & "v eta eulerphi eulerx exp exp__1 exp__2 exp_rand e" _
         & "xpintegral1 expintegrali expm1 fac facinv factoria"
   desc_string = desc_string _
         & "l factorialdouble factorialinv fibo fibox fiboxinv" _
         & " flat2ecc floor frac fubini fusc g2jewish gamma_ra" _
         & "nd gau_cdf gau_pdf gau_quantile geo_rand ghmean1 g" _
         & "hmean1inv glmean1 gmean1 gqmean1 has_primitiveroot"
   desc_string = desc_string _
         & " haversin heaviside heronianmean1 hlmean1 hmean1 h" _
         & "n hn__1 hour2day hqmean1 hypot1 hypot1inv id int_r" _
         & "and iround iseven isint isjewish8short isjewish9sh" _
         & "ort isjewishleap isleapyear ismagic isneg isnegint"
   desc_string = desc_string _
         & " isodd ispos isposint ispractical isprime issquare" _
         & "free iszero j2k2dow j2k2jd j2k2kwt j2k2uet j2k2ymd" _
         & "hms jacobicir jd2dow jd2j2k jd2kwt jd2uet jd2ymdhm" _
         & "s jewish2g jewish2jd jewish2jdx jewish_months_in_y"
   desc_string = desc_string _
         & "ear jewish_yearlength k2m k2tempc k2tempf k2tempr " _
         & "ks_a_cdf kwt2j2k kwt2jd kwt2uet l10 lg lgamma lgam" _
         & "ma__1 lgamma__2 lgammainv lix lixinv lmean1 ln ln1" _
         & "p ln__1 ln__2 lns log log10 log2 logintegral logis"
   desc_string = desc_string _
         & "tic_rand lqmean1 lucas lucasx m2b m2k mertens mink" _
         & "owski mobius neg nom normal_cdf normal_cdf__1 norm" _
         & "al_pdf normal_quantile normal_quantile__1 parabola" _
         & "_get parabola_roots partition partitionq pcf pfg p"
   desc_string = desc_string _
         & "fl poi_rand pow10 pow2 prime0 prime1 primecount pr" _
         & "imecountx primenext primenth primenth__1 primeprev" _
         & " primitiveroot print_contfra print_contfrac print_" _
         & "contfracd print_factor print_jd264 print_num2char "
   desc_string = desc_string _
         & "qmean1 rad2deg rad2dms rad2dms2 rad2sec rad2tur ra" _
         & "nd_init randl reci reimann round rto125 rtoi rtoz " _
         & "sba search_check search_search sec sec2deg sec2dhm" _
         & "s sec2rad sec2tur secd secdinv sech sechinv secinv"
   desc_string = desc_string _
         & " sect sectinv shc_shft2steps shc_steps2shft shc_st" _
         & "eps2shftinv sigma0 sigma1 sigmoid sigmoidinv sign " _
         & "sin sin__1 sinc sinc__1 sincc sincinv sind sindinv" _
         & " sinh sinhinv sinintegral sininv sint sintinv smoo"
   desc_string = desc_string _
         & "th sq sqinv sqrt sqrt__1 sqrt__2 sqrt__3 sqrtx squ" _
         & "are squareroot stair stts_delete stts_reset sttsco" _
         & "unt sttsmagic sttsmax sttsmean sttsmin sttsmsq stt" _
         & "sspread sttsstdev sttsstdevmean sttssum sttsvar su"
   desc_string = desc_string _
         & "percatalan tan tand tandinv tanh tanhinv taninv ta" _
         & "nt tantinv tempc tempc2k tempc2tempf tempf tempf2k" _
         & " tempf2tempc tempr tempr2k tgamma tgamma__1 tgamma" _
         & "__2 tgamma__3 tgamma__stirling tgammadouble tgamma"
   desc_string = desc_string _
         & "inv topyh1 totient tri tri_rand triinv trip trunc " _
         & "tur2deg tur2rad tur2sec uet2j2k uet2jd uet2kwt uni" _
         & "_rand versin wm wminv wp wpinv ymdhms2j2k ymdhms2j" _
         & "d ymdhms_get zag zeta zig zigzag" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 2-ary Functions: agmean agmean__1 ahmean alm" _
         & "ean amean aqmean atan2 atan2d atan2h atan2t atan2u" _
         & " ballot ballots benford_cdf benford_pdf bess_jn be"
   desc_string = desc_string _
         & "ss_yn bessIn bessIn_ps bessJn bessJn_ps bessJv bes" _
         & "sKn bessYn bessYn_ps bessYv beta beta_rand binomia" _
         & "l binomial_rand binomialx birthday birthdayinv bir" _
         & "thdayx bits_get bits_set bitshiftl bitshiftr bitwi"
   desc_string = desc_string _
         & "seand bitwiseor bitwisexor bkn blackbody carlsonRC" _
         & " cauchy_cdf cauchy_pdf cauchy_quantile cd ceil2 ch" _
         & "isqr_cdf chisqr_pdf cir2ell cn cn__1 comb combinat" _
         & "ion combx contraharmonic cs d1diamond_d2 d1lt_d2 d"
   desc_string = desc_string _
         & "1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2lt_d1" _
         & " d2spiral_d1 d2ur_d1 days_in_month dc ddist dist d" _
         & "log1 dn dn__1 ds ell2cir ellipsearea ellipsecir el" _
         & "lipsecir__1 ellipseecc ellipseflatness ellipsem el"
   desc_string = desc_string _
         & "liptic1i elliptic1i__1 elliptic2i elliptic2i__1 el" _
         & "liptic3 elliptic3__1 ellipticEi ellipticF elliptic" _
         & "P entringer eulerian exp_cdf exp_pdf exp_quantile " _
         & "expintegraln factor factorialt floor2 fmod fmod fm"
   desc_string = desc_string _
         & "ods fmodu fmody fmul gamma_cdf gamma_pdf gcd gcda " _
         & "geo_cdf geo_pdf geo_quantile ghmean glmean gmean g" _
         & "ompertz_rand gqmean has_primitiveroot_f heronianme" _
         & "an hlmean hmean hnm hqmean hypot int_cdf int_pdf i"
   desc_string = desc_string _
         & "nt_quantile ints_rand iseq isge isgt isle islt ism" _
         & "ult ismultl ispractical_f isprimitiveroot issignsa" _
         & "me issquarefree_f isss jacobiphi jewish_monthbegin" _
         & " jewish_monthlength ks_b_cdf ks_cdf ks_quantile lb"
   desc_string = desc_string _
         & "eta lcam lcams lcantim lcm lcombx ligamma ligammai" _
         & "nv lmean logistic_cdf logistic_pdf logistic_quanti" _
         & "le lpermx lqmean max2 maxabs maxabs2 maxi mb_cdf m" _
         & "b_pdf mean min2 minabs minabs2 mini mobius_f modf "
   desc_string = desc_string _
         & "mods modulo nbd_rand nc nd nevillethetac nevilleth" _
         & "etad nevillethetan nevillethetas ns nthroot__1 par" _
         & "eto_rand perm permutation permx poi_cdf poi_pdf po" _
         & "i_quantile polya_rand polycnum polynum pow powi pr"
   desc_string = desc_string _
         & "ime0_f print_base_out print_base_outf qmean rand_i" _
         & "nit_array ratio repetendlen rligamma rms round2 rt" _
         & "omsd ruigamma sc sd shc_shftpoles2steps sigma sigm" _
         & "a0_f sigma1_f sn sn__1 spread2stdev stdev2spread s"
   desc_string = desc_string _
         & "tirling1 stirling2 stts_copy stts_downdate stts_ne" _
         & "wx stts_scale stts_shift stts_update stts_update2 " _
         & "t_cdf t_cdf__1 t_pdf t_quantile t_quantile__1 tetr" _
         & "acnum tetranum theta1 theta2 theta3 theta4 Tn topy"
   desc_string = desc_string _
         & "h totient_f trap_rand tri_cdf tri_pdf tri_quantile" _
         & " uigamma uigamma__1 uigammainv Un uni_cdf uni_pdf " _
         & "uni_quantile variance zeta_cdf zeta_pdf zipf_rand " _
         & "znorder znorder__1" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 3-ary Functions: aghmean atothenmodp atothen" _
         & "modx beta_cdf beta_pdf beta_quantile betainc betai" _
         & "nc__1 binomial_cdf binomial_pdf bits_assign bkbn c"
   desc_string = desc_string _
         & "antorll cantorul cantorxx carlsonRD carlsonRF cheb" _
         & "eval clip2 clip2x corr_update cossin_ev divi dlog " _
         & "dlogx elliptic3i elliptic3i__1 ellipticPi epdf2cdf" _
         & " f11 f_cdf f_quantile f_quantile__1 fibo3 fit_ls f"
   desc_string = desc_string _
         & "it_ls0 fit_minmax fit_minmax0 fit_poly fitx_minmax" _
         & " fmod2 gompertz_cdf gompertz_pdf gompertz_quantile" _
         & " hms2day horner hypot3 ifzero isalmostequal isbetw" _
         & "een isbetweenx isfloorsame iswithin jewishymd2jd l"
   desc_string = desc_string _
         & "v_ellpj maxabsoffset maxmin maxwell_boltzmann_cdf " _
         & "maxwell_boltzmann_pdf maxwell_juttner_pdf minabsof" _
         & "fset n2perm nbd_cdf nbd_pdf pareto_cdf pareto_pdf " _
         & "pareto_quantile pendulum pmean polya_cdf polya_pdf"
   desc_string = desc_string _
         & " print_kevy remquou roundy sigma_f sigmoid3 sigmoi" _
         & "d3d stts_updatex taninv3 trap_cdf trap_pdf trap_qu" _
         & "antile ymd2dow ymd2doy ymd2j2k ymd2jd zipf_cdf zip" _
         & "f_pdf zipf_quantile" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 4-ary Functions: carlsonRJ f21 great_circle_" _
         & "distance n2comb sphere_d" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 5-ary Functions: sphere_distance" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 6-ary Functions: circle_solve ecdf ellipsoid" _
         & "_destination ellipsoid_distance epdf parabola_solv" _
         & "e stts_init stts_initx"
   kw_description = desc_string
End Function
Public Function kw_desc() As String
   Dim desc_string As String
   desc_string = ""
   desc_string = desc_string _
         & "   Kw Constants: AAABATTERY(CHARGE|ENERGY|VOLTAGE)" _
         & "? AABATTERY(CHARGE|ENERGY|VOLTAGE)? ACCELERATION A" _
         & "CRE ACTION AH ALPHA(|_(ERR|MASS|REC(_ERR)?)|MASS(_"
   desc_string = desc_string _
         & "ERR)?) AMP(ERE)? AMU(_ERR)? ANGLE APERY ARC(DEG(RE" _
         & "E)?|MIN(UTE)?|SEC(OND)?) AREA? ASTRONOMICALUNIT AT" _
         & "M(OSPHERE(_ERR)?)? ATOMICMASSUNIT(_ERR)? ATTO AU A" _
         & "U_ERR AVOGADRO(_(ERR|REC))? BAN BAR(N|REL)? BAS(EB"
   desc_string = desc_string _
         & "ALL(MASS|RADIUS)|KETBALL(MASS|RADIUS)) BEKENSTEIN(" _
         & "ENTROPY|INFORMATION) BHENTROPY_AREA BHMASS(3_LIFET" _
         & "IME|_RADIUS|TEMP) BHRADIUS2DENSITY BIT BLUE(ENERGY" _
         & "|Hz|WAVE(LENGTH|NUMBER)) BOHRRADIUS(_ERR)? BOLTZMA"
   desc_string = desc_string _
         & "NN(_(ERR|REC))? BTU(_(IT|TH))? CAL(_(IT|TH)|ORIE)?" _
         & " CANDELA CAPACITANCE CAR(AT|BATTERY(CHARGE|ENERGY|" _
         & "VOLTAGE)?) CBATTERY(CHARGE|ENERGY|VOLTAGE)? CENTI " _
         & "CHARGE CONDUCTANCE COULOMB(CONST(_ERR)?)? CUP CURR"
   desc_string = desc_string _
         & "ENT DALTON(_ERR)? DBATTERY(CHARGE|ENERGY|VOLTAGE)?" _
         & " DBL(EPS|MA(N|X(LN)?)|SIG) DEC[AI] DEG[CFR] DENSIT" _
         & "Y DEUTERON(_MASS|MASS(_ERR)?) DIME(MAS|RADIU|THICK" _
         & "NES)S DISTANCE DIT DOWNQUARK(_MASS|ENERGY|Hz|MASS("
   desc_string = desc_string _
         & "_ERR)?|WAVELENGTH) dvCs(_ERR|ENERGY|Hz(_REC)?|WAVE" _
         & "(LENGTH|NUMBER)) E EARTH(AGE|GRAVITY[AB]|SOLARDAY)" _
         & " EHF(ENERGY|Hz|WAVE(LENGTH|NUMBER)) EINSTEIN(_ERR)" _
         & "? ELE(CTR(IC(_ERR)?|ON(_MASS|CHARGE(_(ERR|REC))?|E"
   desc_string = desc_string _
         & "NERGY|Hz|MASS(_ERR|A(_ERR)?)?|VOLT|WAVELENGTH))|ME" _
         & "NTARYCHARGE(_ERR)?|VATIONM(AX|IN)) ENERGY EPSILON0" _
         & "(_ERR)? ERG EULER EUV(ENERGY|Hz|WAVE(LENGTH|NUMBER" _
         & ")) EXA EXBI FARAD(AY(_ERR)?)? FEIGENBAUM FEMTO FIN"
   desc_string = desc_string _
         & "ESTRUCTURE(|_(ERR|REC(_ERR)?)) FIR(ENERGY|Hz|WAVE(" _
         & "LENGTH|NUMBER)) FLICK FLOZ FLT(EPS|MA[NX]|SIG) FOE" _
         & " FOOT FORCE FREQUENCY FT G G_ERR GAL(ACTICCENTER|L" _
         & "ON) GAMMA(ENERGY|Hz|WAVE(LENGTH|NUMBER)) GAS(_ERR)"
   desc_string = desc_string _
         & "? GIANTIMPACT GIBI GIGA GOLFBALL(MASS|RADIUS) GRA(" _
         & "D|IN|M|VIT(ATION(_ERR|IERS|NASA)?|Y(_ERR)?)) GRE(E" _
         & "N(ENERGY|Hz|WAVE(LENGTH|NUMBER))|GORIANYEAR) GYEAR" _
         & " h h_ERR h_REC HART(LEY)? HBAR(_ERR)? HECT(ARE|O) "
   desc_string = desc_string _
         & "HELION(_MASS|MASS(_ERR)?) HENRY HERTZ HFENERGY HFH" _
         & "z HFWAVE(LENGTH|NUMBER) HI HI_ERR HIENERGY HIHz HI" _
         & "WAVE(LENGTH|NUMBER) HORSEPOWER HOUR HP HPMETRIC HU" _
         & "BBLE(_ERR)? HXENERGY HXHz HXWAVE(LENGTH|NUMBER) HY"
   desc_string = desc_string _
         & "DROGEN(LINE(_ERR)?|RADIUS(_ERR)?) INCH INDUCTANCE " _
         & "INHG INTMAX J2K(DAY)? JC JCENTURY JD JDAY JDSEC_AT" _
         & "_0(GREGORIAN|J2K|KWT|UET) JEWISH_FIRST_MONTH JM JM" _
         & "ILLENNIUM JOSEPHSON(_ERR)? JOULE JULIAN(CENTURY|DA"
   desc_string = desc_string _
         & "Y|MILLENNIUM|YEAR) JY JYEAR K_AT_0TEMP[CFR] kB kB_" _
         & "(ERR|REC) KCD(_ERR)? KELVIN KG KGENERGY KGF KGHz K" _
         & "GWAVE(LENGTH|NUMBER) KIBI KILO(GRAM)? KPGBOUNDARY " _
         & "KWT LB LBF LENGTH LFENERGY LFHz LFWAVE(LENGTH|NUMB"
   desc_string = desc_string _
         & "ER) LIFEAGE LIGHT(_(ERR|REC)|YEAR)? LIT(ER|RE) LNT" _
         & "(EN|WO) LUMEN LUX MACH MAGNETIC(_ERR|FLUX|INDUCTIO" _
         & "N)? MARATHON MASS MEBI MEGA MET(ER|RE) MFENERGY MF" _
         & "Hz MFWAVE(LENGTH|NUMBER) MICRO(|WAVE(ENERGY|Hz|WAV"
   desc_string = desc_string _
         & "E(LENGTH|NUMBER))) MIL(E|KYWAY(AGE|DAY|MASS|RADIUS" _
         & ")|LI) MINUTE MIR(ENERGY|Hz|WAVE(LENGTH|NUMBER)) MM" _
         & " MMHG MOL(ARMASS(_ERR|X(_ERR)?)?|E) MONTHS_IN_YEAR" _
         & " MOONMONTH MPH MPSS? MU0(_ERR)? MUON(_MASS|ENERGY|"
   desc_string = desc_string _
         & "Hz|MASS(_ERR)?|WAVELENGTH) NANO NAT NEUTRON(_MASS|" _
         & "ENERGY|Hz|MASS(_ERR)?|WAVELENGTH) NEWTON NICKEL(MA" _
         & "S|RADIU|THICKNES)S NINEVOLT(BATTERY(CHARGE|ENERGY|" _
         & "VOLTAGE)?|CHARGE|ENERGY|VOLTAGE)? NIR(ENERGY|Hz|WA"
   desc_string = desc_string _
         & "VE(LENGTH|NUMBER)) NPBOUNDARY NUV(ENERGY|Hz|WAVE(L" _
         & "ENGTH|NUMBER)) OHM ORANGE(ENERGY|Hz|WAVE(LENGTH|NU" _
         & "MBER)) OUNCE PA PARSEC PEBI PENNY(MAS|RADIU|THICKN" _
         & "ES)S PETA PHI PHONEBATTERY(CHARGE|ENERGY|VOLTAGE)?"
   desc_string = desc_string _
         & " PI PICO PIN(GPONGBALL(MASS|RADIUS)|T) PLANCK(|_(E" _
         & "RR|REC)|BAR(_ERR)?|CHARGE|ENERGY|LENGTH|MASS|T(EMP" _
         & "|IME)) POINT POUND POWER PPB PPM PPQ PPT PRESSURE " _
         & "PRO(TON(_MASS|ENERGY|Hz|MASS(_ERR)?|RADIUS(_ERR)?|"
   desc_string = desc_string _
         & "WAVELENGTH)|XIMACENTAURI) PSI PTRBOUNDARY QUART(ER" _
         & "(MAS|RADIU|THICKNES)S)? RAD(IAN)? RED(ENERGY|Hz|WA" _
         & "VE(LENGTH|NUMBER)) RESISTANCE RPM RPS RYDBERG(_ERR" _
         & "|ENERGY|Hz|WAVE(LENGTH|NUMBER))? SECOND SHANNON SH"
   desc_string = desc_string _
         & "F(ENERGY|Hz|WAVE(LENGTH|NUMBER)) SI16M(AX|IN) SI32" _
         & "M(AX|IN) SIEMENS SOCCERBALL(MASS|RADIUS) SOFTBALL(" _
         & "MASS|RADIUS) SOL(ARCONSTANT|ID_ANGLE) SPE(CIFICHEA" _
         & "T|ED) SPHERESURFACE SQDEG SQRTTWO SQUAREDEGREE STA"
   desc_string = desc_string _
         & "NDARD(ATMOSPHERE|GRAVITY) STE(FAN(_ERR)?|RADIAN) S" _
         & "XENERGY SXHz SXWAVE(LENGTH|NUMBER) SXX(ENERGY|Hz|W" _
         & "AVE(LENGTH|NUMBER)) TAU(_MASS|ENERGY|Hz|MASS(_ERR)" _
         & "?|WAVELENGTH)? TBLSP TEBI TEMPERATURE TENNISBALL(M"
   desc_string = desc_string _
         & "ASS|RADIUS) TERA TESLA THF(ENERGY|Hz|WAVE(LENGTH|N" _
         & "UMBER)) TIME TON(NE)? TORR TRITON(_MASS|MASS(_ERR)" _
         & "?) TRJBOUNDARY TSP TT_AT_0(TAI|UT1) TURN UAMU(_ERR" _
         & ")? UET UHF(ENERGY|Hz|WAVE(LENGTH|NUMBER)) UI16MAX "
   desc_string = desc_string _
         & "UI32MAX UNI(TGM|VERSE(AGE|MASS|RADIUS)) UPQUARK(_M" _
         & "ASS|ENERGY|Hz|MASS(_ERR)?|WAVELENGTH) UVA(ENERGY|H" _
         & "z|WAVE(LENGTH|NUMBER)) UVB(ENERGY|Hz|WAVE(LENGTH|N" _
         & "UMBER)) UVC(ENERGY|Hz|WAVE(LENGTH|NUMBER)) VHF(ENE"
   desc_string = desc_string _
         & "RGY|Hz|WAVE(LENGTH|NUMBER)) VIOLET(ENERGY|Hz|WAVE(" _
         & "LENGTH|NUMBER)) VISCOSITY VOL(T(AGE)?|UME) VONKLIT" _
         & "ZING(_ERR)? WATT WEBER WEEK YARD YELLOW(ENERGY|GRE" _
         & "EN(ENERGY|Hz|WAVE(LENGTH|NUMBER))|Hz|WAVE(LENGTH|N" _
         & "UMBER)) YOBI YOCTO YOTTA ZEBI ZEPTO ZETTA" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 0-ary Functions: corr_new euler__1 gau_rand " _
         & "jd2ymdhmsinv magic(not|set) normal_rand parabola_(" _
         & "realroots|xaxis|yextrema) randd stts_new timee" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 1-ary Functions: abs agmean1(inv)? ahmean1 a" _
         & "lmean1 amean1 aqmean1 b2m bankers bb_pdf bellx? be" _
         & "nford_rand bernoulli[dn]? bess(I[01]|J[01]|K[01]|Y"
   desc_string = desc_string _
         & "(0|1(__1)?)) bit(s_(count|ls1b(pos)?|ms1b(pos)?)|w" _
         & "isenot) blackbody(_pdf|mode|power) cantor carmicha" _
         & "el catalan cauchy_rand cbrt ceil chisqr_rand circl" _
         & "e_get clip clock(hour|min|s(ec|tdev|um)) cnv_dbl2s"
   desc_string = desc_string _
         & "i16 corr(_(delete|handle[xy])|corr|s(lope|tderr)|y" _
         & "0) cos(|__1|d(inv)?|h(inv)?|in(tegral|v)|m1(__1)?|" _
         & "t(inv)?) cot([dht]?(inv)?)? csc([dht]?(inv)?)? ctz" _
         & " cu cube(root)? date_(easter|pesach|rosh_hashanah)"
   desc_string = desc_string _
         & " day2(dhms(inv)?|hour) deg2(dms|rad|sec|tur) digam" _
         & "ma(__1|inv)? dms2(deg|rad) doomsday ecc2flat Ein e" _
         & "lliptic(1(__1)?|2(__1)?|[EK]) erf(|__([12]|[34])|c" _
         & "(inv|x(inv)?)?|inv) eta euler(phi|x) exp(_(_[12]|r"
   desc_string = desc_string _
         & "and)|integral[1i]|m1)? fac(inv|torial(double|inv)?" _
         & ")? fibo(x(inv)?)? flat2ecc floor frac fubini fusc " _
         & "g2jewish gamma_rand gau_(cdf|pdf|quantile) geo_ran" _
         & "d ghmean1(inv)? glmean1 gmean1 gqmean1 has_primiti"
   desc_string = desc_string _
         & "veroot haversin heaviside heronianmean1 hlmean1 hm" _
         & "ean1 hn hn__1 hour2day hqmean1 hypot1(inv)? id int" _
         & "_rand iround is(even|int|jewish8short|jewish9short" _
         & "|jewishleap|leapyear|magic|neg|negint|odd|pos|posi"
   desc_string = desc_string _
         & "nt|practical|prime|squarefree|zero) j2k2(dow|jd|kw" _
         & "t|uet|ymdhms) jacobicir jd2(dow|j2k|kwt|uet|ymdhms" _
         & ") jewish(2(g|jdx?)|_(months_in_year|yearlength)) k" _
         & "2m k2temp[cfr] ks_a_cdf kwt2(j(2k|d)|uet) l10 lg l"
   desc_string = desc_string _
         & "gamma(__[12]|inv)? lix(inv)? lmean1 ln ln1p ln__[1" _
         & "2] lns log(10|2|i(ntegral|stic_rand))? lqmean1 luc" _
         & "asx? m2b m2k mertens minkowski mobius neg nom norm" _
         & "al_(cdf(__1)?|pdf|quantile(__1)?) par(abola_(get|r"
   desc_string = desc_string _
         & "oots)|titionq?) pcf pfg pfl poi_rand pow(10|2) pri" _
         & "(m(e([01]|countx?|n(ext|th(__1)?)|prev)|itiveroot)" _
         & "|nt_(contfra(cd?)?|factor|jd264|num2char)) qmean1 " _
         & "rad2(d(eg|ms2?)|sec|tur) rand(_init|l) reci reiman"
   desc_string = desc_string _
         & "n round rto(125|[iz]) sba search_(check|search) se" _
         & "c(|2(d(eg|hms)|rad|tur)|[dht]?(inv)?) shc_s(hft2st" _
         & "eps|teps2shft(inv)?) sig(m(a[01]|oid(inv)?)|n) sin" _
         & "(|__1|c(__1|c|inv)?|d(inv)?|h(inv)?|in(tegral|v)|t"
   desc_string = desc_string _
         & "(inv)?) smooth sq sqinv sqrt(__[123]|x)? square(ro" _
         & "ot)? stair stts(_(delete|reset)|count|m(a(gic|x)|e" _
         & "an|in|sq)|s(pread|tdev(mean)?|um)|var) supercatala" _
         & "n tan([dht]?(inv)?)? temp(c(2(k|tempf))?|f(2(k|tem"
   desc_string = desc_string _
         & "pc))?|r(2k)?) tgamma(__([123]|stirling)|double|inv" _
         & ")? topyh1 totient tri(_rand|inv|p)? trunc tur2(deg" _
         & "|rad|sec) uet2(j(2k|d)|kwt) uni_rand versin wm(inv" _
         & ")? wp(inv)? ymdhms(2j(2k|d)|_get) zag zeta zig(zag" _
         & ")?" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 2-ary Functions: agmean(__1)? ahmean almean " _
         & "amean aqmean atan2([dh]|[tu])? ballots? benford_(c" _
         & "df|pdf) bess(_(jn|yn)|In(_ps)?|J(n(_ps)?|v)|Kn|Y(n"
   desc_string = desc_string _
         & "(_ps)?|v)) beta(_rand)? binomial(_rand|x)? birthda" _
         & "y(inv|x)? bit(s(_(get|set)|hift[lr])|wise(and|or|x" _
         & "or)) bkn blackbody carlsonRC cauchy_(cdf|pdf|quant" _
         & "ile) cd ceil2 chisqr_(cdf|pdf) cir2ell cn cn__1 co"
   desc_string = desc_string _
         & "mb(ination|x)? contraharmonic cs d1diamond_d2 d1lt" _
         & "_d2 d1spiral_d2 d1ur_d2 d2diamond_d1 d2hypot_d1 d2" _
         & "lt_d1 d2spiral_d1 d2ur_d1 days_in_month dc ddist d" _
         & "ist dlog1 dn dn__1 ds ell(2cir|ip(se(area|cir(__1)"
   desc_string = desc_string _
         & "?|ecc|flatness|m)|tic(1i(__1)?|2i(__1)?|3(__1)?|Ei" _
         & "|[FP]))) entringer eulerian exp(_(cdf|pdf|quantile" _
         & ")|integraln) factor(ialt)? floor2 fmod([suy]?)? fm" _
         & "ul gamma_(cdf|pdf) gcda? geo_(cdf|pdf|quantile) gh"
   desc_string = desc_string _
         & "mean glmean gmean gompertz_rand gqmean has_primiti" _
         & "veroot_f heronianmean hlmean hmean hnm hqmean hypo" _
         & "t int(_(cdf|pdf|quantile)|s_rand) is(eq|ge|gt|le|l" _
         & "t|mult|multl|practical_f|primitiveroot|signsame|sq"
   desc_string = desc_string _
         & "uarefree_f|ss) jacobiphi jewish_month(begin|length" _
         & ") ks_(b_cdf|cdf|quantile) lbeta lca(ms?|ntim) lcm " _
         & "lcombx ligamma(inv)? lmean logistic_(cdf|pdf|quant" _
         & "ile) lpermx lqmean max(2|abs2?|i) mb_(cdf|pdf) mea"
   desc_string = desc_string _
         & "n min(2|abs2?|i) mobius_f mod([fs]|ulo) nbd_rand n" _
         & "c nd nevilletheta([cd]|[ns]) ns nthroot__1 pareto_" _
         & "rand perm(utation|x)? poi_(cdf|pdf|quantile) poly(" _
         & "a_rand|cnum|num) powi? pri(me0_f|nt_base_outf?) qm"
   desc_string = desc_string _
         & "ean rand_init_array ratio repetendlen rligamma rms" _
         & " round2 rtomsd ruigamma sc sd shc_shftpoles2steps " _
         & "sigma(0_f|1_f)? sn sn__1 spread2stdev stdev2spread" _
         & " stirling[12] stts_(copy|downdate|newx|s(cale|hift"
   desc_string = desc_string _
         & ")|update2?) t_cdf(__1)? t_pdf t_quantile(__1)? tet" _
         & "ra(cnum|num) theta([12]|[34]) Tn topyh totient_f t" _
         & "rap_rand tri_(cdf|pdf|quantile) uigamma(__1|inv)? " _
         & "Un uni_(cdf|pdf|quantile) variance zeta_(cdf|pdf) " _
         & "zipf_rand znorder(__1)?" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 3-ary Functions: aghmean atothenmod[px] beta" _
         & "(_(cdf|pdf|quantile)|inc(__1)?) binomial_(cdf|pdf)" _
         & " bits_assign bkbn cantor(ll|ul|xx) carlsonR[DF] ch"
   desc_string = desc_string _
         & "ebeval clip2x? corr_update cossin_ev divi dlogx? e" _
         & "lliptic(3i(__1)?|Pi) epdf2cdf f11 f_cdf f_quantile" _
         & "(__1)? fibo3 fit(_(ls0?|minmax0?|poly)|x_minmax) f" _
         & "mod2 gompertz_(cdf|pdf|quantile) hms2day horner hy"
   desc_string = desc_string _
         & "pot3 ifzero is(almostequal|between|betweenx|floors" _
         & "ame|within) jewishymd2jd lv_ellpj max(absoffset|mi" _
         & "n|well_(boltzmann_(cdf|pdf)|juttner_pdf)) minabsof" _
         & "fset n2perm nbd_(cdf|pdf) pareto_(cdf|pdf|quantile"
   desc_string = desc_string _
         & ") pendulum pmean polya_(cdf|pdf) print_kevy remquo" _
         & "u roundy sigm(a_f|oid3d?) stts_updatex taninv3 tra" _
         & "p_(cdf|pdf|quantile) ymd2(do[wy]|j(2k|d)) zipf_(cd" _
         & "f|pdf|quantile)" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 4-ary Functions: carlsonRJ f21 great_circle_" _
         & "distance n2comb sphere_d" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 5-ary Functions: sphere_distance" _
         & vbNewLine
   desc_string = desc_string _
         & "   Kw 6-ary Functions: circle_solve ecdf ellipsoid" _
         & "_d(estination|istance) epdf parabola_solve stts_in" _
         & "itx?"
   kw_desc = desc_string
End Function
