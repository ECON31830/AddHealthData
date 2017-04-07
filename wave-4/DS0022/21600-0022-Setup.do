/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0022: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC
 |                              USE SAMPLE)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0022-statasetup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format IMONTH4 %2.0f
format IDAY4 %2.0f
format IYEAR4 %4.0f
format BIO_SEX4 %1.0f
format PRYEAR4 %4.0f
format PRETEST4 %1.0f
format PRISON4 %1.0f
format H4OD1M %2.0f
format H4OD1Y %4.0f
format H4OD2A %1.0f
format H4OD2B %1.0f
format H4OD2C %1.0f
format H4OD2D %1.0f
format H4OD2E %1.0f
format H4OD2F %1.0f
format H4OD3 %2.0f
format H4OD4 %1.0f
format H4OD5 %1.0f
format H4OD6Y %4.0f
format H4OD7 %1.0f
format H4WP1 %1.0f
format H4WP2Y %4.0f
format H4WP3 %1.0f
format H4WP4 %2.0f
format H4WP5 %2.0f
format H4WP6 %2.0f
format H4WP7 %1.0f
format H4WP8Y %4.0f
format H4WP9 %1.0f
format H4WP10 %2.0f
format H4WP11 %2.0f
format H4WP12 %2.0f
format H4WP13 %2.0f
format H4WP14 %1.0f
format H4WP15Y %4.0f
format H4WP16 %1.0f
format H4WP17 %1.0f
format H4WP18 %2.0f
format H4WP19 %2.0f
format H4WP20 %2.0f
format H4WP21 %1.0f
format H4WP22 %1.0f
format H4WP23 %1.0f
format H4WP24 %1.0f
format H4WP25 %1.0f
format H4WP26 %1.0f
format H4WP27 %2.0f
format H4WP28 %1.0f
format H4WP29Y %4.0f
format H4WP30 %1.0f
format H4WP31 %2.0f
format H4WP32 %2.0f
format H4WP33 %2.0f
format H4WP34 %2.0f
format H4WP35 %1.0f
format H4WP36 %1.0f
format H4WP37 %1.0f
format H4WP38 %1.0f
format H4WP39 %1.0f
format H4WP40 %1.0f
format H4WS1 %2.0f
format H4WS2 %2.0f
format H4WS4 %2.0f
format H4WS5 %2.0f
format H4GH1 %1.0f
format H4GH2 %1.0f
format H4GH3M %2.0f
format H4GH3D %2.0f
format H4GH3Y %4.0f
format H4GH4A %3.0f
format H4GH4B %1.0f
format H4GH5F %2.0f
format H4GH5I %2.0f
format H4GH6 %3.0f
format H4GH7 %1.0f
format H4GH8 %3.0f
format H4GH9 %3.0f
format H4GH10 %3.0f
format H4GH11H %2.0f
format H4GH11M %2.0f
format H4GH11T %1.0f
format H4GH12 %1.0f
format H4GH13H %2.0f
format H4GH13M %2.0f
format H4GH13T %1.0f
format H4HS1 %2.0f
format H4HS2A %1.0f
format H4HS2B %1.0f
format H4HS2C %1.0f
format H4HS2D %1.0f
format H4HS3 %2.0f
format H4HS4 %1.0f
format H4HS5 %1.0f
format H4HS6 %2.0f
format H4HS7 %2.0f
format H4HS8 %1.0f
format H4HS9 %1.0f
format H4ID1 %1.0f
format H4ID2 %1.0f
format H4ID3 %1.0f
format H4ID4 %1.0f
format H4ID5A %1.0f
format H4ID5B %1.0f
format H4ID5C %1.0f
format H4ID5D %1.0f
format H4ID5E %1.0f
format H4ID5F %1.0f
format H4ID5G %1.0f
format H4ID5H %1.0f
format H4ID5I %1.0f
format H4ID5J %1.0f
format H4ID5K %1.0f
format H4ID5L %1.0f
format H4ID5N %1.0f
format H4ID7 %1.0f
format H4ID8 %1.0f
format H4ID9A %1.0f
format H4ID9B %1.0f
format H4ID9C %1.0f
format H4ID9D %1.0f
format H4ID9E %1.0f
format H4ID9F %1.0f
format H4ID9G %1.0f
format H4ID10A %1.0f
format H4ID10B %1.0f
format H4ID10C %1.0f
format H4ID10D %1.0f
format H4ID10E %1.0f
format H4ID10F %1.0f
format H4ID10G %1.0f
format H4ID10H %1.0f
format H4ID11 %1.0f
format H4ID12 %1.0f
format H4ID13 %1.0f
format H4ID14 %1.0f
format H4ID15 %1.0f
format H4ID16 %1.0f
format H4ID17 %1.0f
format H4ID18 %1.0f
format H4ID19 %1.0f
format H4ID20 %1.0f
format H4ID21 %2.0f
format H4ID22 %1.0f
format H4ID23 %1.0f
format H4ID24 %2.0f
format H4ID25 %2.0f
format H4ID26 %2.0f
format H4SP1H %2.0f
format H4SP1M %2.0f
format H4SP1T %1.0f
format H4SP2H %2.0f
format H4SP2M %2.0f
format H4SP2T %1.0f
format H4SP3H %2.0f
format H4SP3M %2.0f
format H4SP3T %1.0f
format H4SP4H %2.0f
format H4SP4M %2.0f
format H4SP4T %1.0f
format H4SP5 %1.0f
format H4SP6 %1.0f
format H4SP7 %1.0f
format H4HR1 %2.0f
format H4HR2 %2.0f
format H4HR3 %1.0f
format H4HR4 %2.0f
format H4HR5A %1.0f
format H4HR6A %3.0f
format H4HR7A %3.0f
format H4HR8A %2.0f
format H4HR9A %2.0f
format H4HR5B %1.0f
format H4HR6B %3.0f
format H4HR7B %3.0f
format H4HR8B %2.0f
format H4HR9B %2.0f
format H4HR5C %1.0f
format H4HR6C %3.0f
format H4HR7C %3.0f
format H4HR8C %2.0f
format H4HR9C %2.0f
format H4HR5D %1.0f
format H4HR6D %3.0f
format H4HR7D %3.0f
format H4HR8D %2.0f
format H4HR9D %2.0f
format H4HR5E %1.0f
format H4HR6E %3.0f
format H4HR7E %3.0f
format H4HR8E %2.0f
format H4HR9E %2.0f
format H4HR5F %1.0f
format H4HR6F %3.0f
format H4HR7F %3.0f
format H4HR8F %2.0f
format H4HR9F %2.0f
format H4HR5G %1.0f
format H4HR6G %3.0f
format H4HR7G %3.0f
format H4HR8G %2.0f
format H4HR9G %2.0f
format H4HR5H %1.0f
format H4HR6H %3.0f
format H4HR7H %3.0f
format H4HR8H %2.0f
format H4HR9H %2.0f
format H4HR5I %1.0f
format H4HR6I %3.0f
format H4HR7I %3.0f
format H4HR8I %2.0f
format H4HR9I %2.0f
format H4HR5J %1.0f
format H4HR6J %3.0f
format H4HR7J %3.0f
format H4HR8J %2.0f
format H4HR9J %2.0f
format H4HR5K %1.0f
format H4HR6K %3.0f
format H4HR7K %3.0f
format H4HR8K %2.0f
format H4HR9K %2.0f
format H4HR5L %1.0f
format H4HR6L %3.0f
format H4HR7L %3.0f
format H4HR8L %2.0f
format H4HR9L %2.0f
format H4HR5M %1.0f
format H4HR6M %3.0f
format H4HR7M %3.0f
format H4HR8M %2.0f
format H4HR9M %2.0f
format H4HR5N %1.0f
format H4HR6N %3.0f
format H4HR7N %3.0f
format H4HR8N %2.0f
format H4HR9N %2.0f
format H4HR5O %1.0f
format H4HR6O %3.0f
format H4HR7O %3.0f
format H4HR8O %2.0f
format H4HR9O %2.0f
format H4HR5P %1.0f
format H4HR6P %3.0f
format H4HR7P %3.0f
format H4HR8P %2.0f
format H4HR9P %2.0f
format H4HR10 %1.0f
format H4HR11YA %4.0f
format H4HR11YB %4.0f
format H4HR11YC %4.0f
format H4HR11YD %4.0f
format H4HR11YE %4.0f
format H4HR11YF %4.0f
format H4HR11YG %4.0f
format H4HR11YH %4.0f
format H4HR11YI %4.0f
format H4HR11YJ %4.0f
format H4HR11YK %4.0f
format H4HR11YL %4.0f
format H4HR11YM %4.0f
format H4HR11YN %4.0f
format H4HR11YO %4.0f
format H4ED1 %1.0f
format H4ED2 %2.0f
format H4ED3A %2.0f
format H4ED3B %2.0f
format H4ED3C %2.0f
format H4ED3D %1.0f
format H4ED3E %1.0f
format H4ED3F %1.0f
format H4ED3G %1.0f
format H4ED3H %1.0f
format H4ED4A %4.0f
format H4ED4B %4.0f
format H4ED4C %4.0f
format H4ED4D %4.0f
format H4ED4E %4.0f
format H4ED4F %4.0f
format H4ED4G %4.0f
format H4ED4H %4.0f
format H4ED5A %1.0f
format H4ED5B %1.0f
format H4ED5C %1.0f
format H4ED5D %1.0f
format H4ED5E %1.0f
format H4ED5F %1.0f
format H4ED5G %1.0f
format H4ED5H %1.0f
format H4ED6 %1.0f
format H4ED7 %1.0f
format H4ED8 %1.0f
format H4ED9 %2.0f
format H4MI1 %1.0f
format H4MI2 %1.0f
format H4MI3 %1.0f
format H4MI4A %1.0f
format H4MI4B %1.0f
format H4MI4C %1.0f
format H4MI4D %1.0f
format H4MI4E %1.0f
format H4MI5 %1.0f
format H4MI6A %1.0f
format H4MI6B %1.0f
format H4MI6C %1.0f
format H4MI7 %1.0f
format H4MI8Y %4.0f
format H4MI9Y %4.0f
format H4MI10 %2.0f
format H4MI11Y %2.0f
format H4MI11M %2.0f
format H4MI12Y %2.0f
format H4MI12M %2.0f
format H4MI13 %3.0f
format H4MI14 %1.0f
format H4MI15 %1.0f
format H4MI16A %1.0f
format H4MI16B %1.0f
format H4MI16C %1.0f
format H4MI16D %1.0f
format H4MI17 %1.0f
format H4LM1 %1.0f
format H4LM2 %1.0f
format H4LM3 %2.0f
format H4LM4 %2.0f
format H4LM5 %2.0f
format H4LM6 %1.0f
format H4LM7 %1.0f
format H4LM9M %2.0f
format H4LM9Y %4.0f
format H4LM10 %1.0f
format H4LM11 %1.0f
format H4LM12 %2.0f
format H4LM13 %3.0f
format H4LM14 %2.0f
format H4LM15Y %4.0f
format H4LM16Y %4.0f
format H4LM17 %2.0f
format H4LM19 %3.0f
format H4LM20 %2.0f
format H4LM21A %1.0f
format H4LM21B %1.0f
format H4LM21C %1.0f
format H4LM22 %2.0f
format H4LM23 %1.0f
format H4LM24 %1.0f
format H4LM25 %1.0f
format H4LM26 %2.0f
format H4LM27 %1.0f
format H4LM28 %2.0f
format H4LM29 %1.0f
format H4LM30 %1.0f
format H4EC1 %2.0f
format H4EC2 %7.0f
format H4EC3 %2.0f
format H4EC4 %1.0f
format H4EC5 %7.0f
format H4EC6 %1.0f
format H4EC7 %2.0f
format H4EC8 %2.0f
format H4EC9 %1.0f
format H4EC10 %1.0f
format H4EC11 %1.0f
format H4EC12 %1.0f
format H4EC13 %1.0f
format H4EC14 %1.0f
format H4EC15 %1.0f
format H4EC16 %1.0f
format H4EC17 %2.0f
format H4EC18 %1.0f
format H4EC19 %2.0f
format H4RE1 %2.0f
format H4RE2 %1.0f
format H4RE3 %2.0f
format H4RE4 %1.0f
format H4RE5 %1.0f
format H4RE6 %2.0f
format H4RE7 %1.0f
format H4RE8 %1.0f
format H4RE9 %1.0f
format H4RE10 %2.0f
format H4RE11 %1.0f
format H4MH1 %1.0f
format C4WD90_1 %2.0f
format C4WD90_2 %2.0f
format C4WD90_3 %2.0f
format H4MH2 %1.0f
format H4MH3 %1.0f
format H4MH4 %1.0f
format H4MH5 %1.0f
format H4MH6 %1.0f
format H4MH7 %2.0f
format H4MH8 %1.0f
format H4MH9 %2.0f
format H4MH10 %1.0f
format C4WD60_1 %2.0f
format C4WD60_2 %2.0f
format C4WD60_3 %2.0f
format H4MH11A %1.0f
format H4MH11B %1.0f
format H4MH12A %1.0f
format H4MH12B %1.0f
format H4MH13A %1.0f
format H4MH13B %1.0f
format H4MH14A %1.0f
format H4MH14B %1.0f
format H4MH15A %1.0f
format H4MH15B %1.0f
format H4MH16A %1.0f
format H4MH16B %1.0f
format H4MH17A %1.0f
format H4MH17B %1.0f
format C4NUMSCR %2.0f
format H4MH18 %1.0f
format H4MH19 %1.0f
format H4MH20 %1.0f
format H4MH21 %1.0f
format H4MH22 %1.0f
format H4MH23 %1.0f
format H4MH24 %1.0f
format H4MH25 %1.0f
format H4MH26 %1.0f
format H4MH27 %1.0f
format H4MH28 %1.0f
format H4MH29 %2.0f
format H4SE1 %1.0f
format H4SE2 %1.0f
format H4SE3 %1.0f
format H4SE4 %1.0f
format H4SE5 %1.0f
format H4SE6 %1.0f
format H4SE7 %2.0f
format H4SE8 %4.0f
format H4SE9 %1.0f
format H4SE10 %2.0f
format H4SE11 %1.0f
format H4SE12 %2.0f
format H4SE13 %3.0f
format H4SE14 %1.0f
format H4SE15 %3.0f
format H4SE16 %1.0f
format H4SE17 %2.0f
format H4SE18 %1.0f
format H4SE19 %3.0f
format H4SE20 %1.0f
format H4SE21 %3.0f
format H4SE22 %1.0f
format H4SE23 %2.0f
format H4SE24 %1.0f
format H4SE25 %3.0f
format H4SE26A %1.0f
format H4SE26B %1.0f
format H4SE26C %1.0f
format H4SE26D %1.0f
format H4SE26E %1.0f
format H4SE26F %1.0f
format H4SE26G %1.0f
format H4SE26H %1.0f
format H4SE26I %1.0f
format H4SE26J %1.0f
format H4SE26K %1.0f
format H4SE26L %1.0f
format H4SE26M %1.0f
format H4SE26N %1.0f
format H4SE26O %1.0f
format H4SE26P %1.0f
format H4SE26Q %1.0f
format H4SE26R %1.0f
format H4SE26S %1.0f
format H4SE26T %1.0f
format H4SE26V %1.0f
format H4SE27 %1.0f
format H4SE28 %1.0f
format H4SE29 %1.0f
format H4SE30 %1.0f
format H4SE31 %2.0f
format H4SE32 %1.0f
format H4SE33 %2.0f
format H4SE34 %1.0f
format H4SE35 %2.0f
format H4SE36A %1.0f
format H4SE36B %1.0f
format H4SE36C %1.0f
format H4SE36D %1.0f
format H4SE36E %1.0f
format H4SE36F %1.0f
format H4SE36G %1.0f
format H4SE36H %1.0f
format H4SE36I %1.0f
format H4SE36J %1.0f
format H4SE36K %1.0f
format H4SE36L %1.0f
format H4SE36N %1.0f
format H4SE36O %1.0f
format H4SE37A %1.0f
format H4SE37B %1.0f
format H4SE37C %1.0f
format H4SE37D %1.0f
format H4SE37E %1.0f
format H4SE37F %1.0f
format H4SE37G %1.0f
format H4SE37H %1.0f
format H4SE37I %1.0f
format H4SE37J %1.0f
format H4SE37K %1.0f
format H4SE37L %1.0f
format H4SE37N %1.0f
format H4SE37O %1.0f
format H4TR1 %1.0f
format H4TR2 %2.0f
format H4TR3 %2.0f
format H4TR4 %2.0f
format H4TR5 %3.0f
format H4TR6 %3.0f
format H4TR7 %1.0f
format H4TR8 %1.0f
format H4TR9 %2.0f
format H4TR10 %2.0f
format H4TR11 %2.0f
format H4TR12 %1.0f
format PTNR_ID %2.0f
format H4RD1 %2.0f
format H4RD2D %2.0f
format H4RD2M %2.0f
format H4RD2Y %2.0f
format H4RD3 %2.0f
format H4RD4 %1.0f
format H4RD5 %2.0f
format H4RD6 %1.0f
format H4RD7A %2.0f
format H4RD7B %2.0f
format H4RD7C %2.0f
format H4RD7D %2.0f
format H4RD7E %2.0f
format H4RD7F %2.0f
format H4RD7G %2.0f
format H4RD8 %1.0f
format H4RD9 %1.0f
format H4RD10 %1.0f
format H4RD11 %1.0f
format H4RD12 %2.0f
format H4RD13 %2.0f
format H4RD14 %4.0f
format H4RD14T %1.0f
format H4RD15 %1.0f
format H4RD16 %1.0f
format H4RD17 %1.0f
format H4RD18 %2.0f
format H4RD19 %2.0f
format H4RD20 %2.0f
format H4RD21 %2.0f
format H4RD22 %2.0f
format H4RD23 %2.0f
format H4RD24 %2.0f
format H4RD25 %2.0f
format H4KK14 %2.0f
format H4KK15A %2.0f
format H4KK15B %2.0f
format H4KK15C %2.0f
format H4KK15D %2.0f
format H4DS1 %1.0f
format H4DS2 %1.0f
format H4DS3 %1.0f
format H4DS4 %1.0f
format H4DS5 %1.0f
format H4DS6 %1.0f
format H4DS7 %1.0f
format H4DS8 %1.0f
format H4DS9 %1.0f
format H4DS10 %1.0f
format H4DS11 %1.0f
format H4DS12 %1.0f
format H4DS13 %1.0f
format H4DS14 %1.0f
format H4DS15 %1.0f
format H4DS16 %1.0f
format H4DS17 %1.0f
format H4DS18 %1.0f
format H4DS19 %1.0f
format H4DS20 %1.0f
format H4CJ1 %1.0f
format H4CJ2 %1.0f
format H4CJ3 %2.0f
format H4CJ4 %2.0f
format H4CJ5 %3.0f
format H4CJ6 %2.0f
format H4CJ7A %1.0f
format H4CJ7B %1.0f
format H4CJ7C %1.0f
format H4CJ7D %1.0f
format H4CJ7E %1.0f
format H4CJ7F %1.0f
format H4CJ7G %1.0f
format H4CJ7H %1.0f
format H4CJ7I %1.0f
format H4CJ7J %1.0f
format H4CJ7K %1.0f
format H4CJ8 %2.0f
format H4CJ9A %1.0f
format H4CJ9B %1.0f
format H4CJ9C %1.0f
format H4CJ9D %1.0f
format H4CJ9E %1.0f
format H4CJ9F %1.0f
format H4CJ9G %1.0f
format H4CJ9H %1.0f
format H4CJ9I %1.0f
format H4CJ9J %1.0f
format H4CJ9K %1.0f
format H4CJ10 %1.0f
format H4CJ11 %2.0f
format H4CJ12 %2.0f
format H4CJ13A %1.0f
format H4CJ13B %1.0f
format H4CJ13C %1.0f
format H4CJ13D %1.0f
format H4CJ13E %1.0f
format H4CJ13F %1.0f
format H4CJ13G %1.0f
format H4CJ13H %1.0f
format H4CJ13I %1.0f
format H4CJ13J %1.0f
format H4CJ13K %1.0f
format H4CJ14 %2.0f
format H4CJ15A %1.0f
format H4CJ15B %1.0f
format H4CJ15C %1.0f
format H4CJ15D %1.0f
format H4CJ15E %1.0f
format H4CJ15F %1.0f
format H4CJ15G %1.0f
format H4CJ15H %1.0f
format H4CJ15I %1.0f
format H4CJ15J %1.0f
format H4CJ15K %1.0f
format H4CJ16 %1.0f
format H4CJ17 %1.0f
format H4CJ18 %1.0f
format H4CJ19 %2.0f
format H4CJ20 %2.0f
format H4CJ21 %2.0f
format H4CJ22Y %2.0f
format H4CJ22M %2.0f
format H4CJ23Y %3.0f
format H4CJ23M %2.0f
format H4CJ24Y %2.0f
format H4CJ24M %2.0f
format H4CJ25Y %2.0f
format H4CJ25M %2.0f
format H4TO1 %1.0f
format H4TO2 %2.0f
format H4TO3 %1.0f
format H4TO4 %2.0f
format H4TO5 %2.0f
format H4TO6 %3.0f
format H4TO7 %1.0f
format H4TO8 %1.0f
format H4TO9 %1.0f
format H4TO10 %1.0f
format H4TO11 %1.0f
format H4TO12 %1.0f
format H4TO13 %1.0f
format H4TO14 %2.0f
format H4TO15 %1.0f
format H4TO16 %1.0f
format H4TO17 %1.0f
format H4TO18 %1.0f
format H4TO19 %1.0f
format H4TO20 %1.0f
format H4TO21 %2.0f
format H4TO22 %1.0f
format H4TO23 %1.0f
format H4TO24 %2.0f
format H4TO25 %1.0f
format H4TO26 %2.0f
format H4TO27 %1.0f
format H4TO28 %1.0f
format H4TO29 %1.0f
format H4TO30 %2.0f
format H4TO31 %1.0f
format H4TO32H %2.0f
format H4TO32M %2.0f
format H4TO32T %1.0f
format H4TO33 %1.0f
format H4TO34 %2.0f
format H4TO35 %2.0f
format H4TO36 %2.0f
format H4TO37 %2.0f
format H4TO38 %2.0f
format H4TO39 %2.0f
format H4TO40 %2.0f
format H4TO41 %1.0f
format H4TO42H %2.0f
format H4TO42M %2.0f
format H4TO42T %1.0f
format H4TO43 %1.0f
format H4TO44 %2.0f
format H4TO45 %2.0f
format H4TO46 %1.0f
format H4TO47 %1.0f
format H4TO48 %1.0f
format H4TO49 %1.0f
format H4TO50 %1.0f
format H4TO51 %1.0f
format H4TO52 %1.0f
format H4TO53 %1.0f
format H4TO54 %1.0f
format H4TO55 %1.0f
format H4TO56 %1.0f
format H4TO57 %2.0f
format H4TO58 %1.0f
format H4TO59 %1.0f
format H4TO60 %1.0f
format H4TO61 %1.0f
format H4TO62 %2.0f
format H4TO63 %1.0f
format H4TO64A %1.0f
format H4TO64B %1.0f
format H4TO64C %1.0f
format H4TO64D %1.0f
format H4TO65A %1.0f
format H4TO65B %1.0f
format H4TO65C %1.0f
format H4TO65D %1.0f
format H4TO65E %1.0f
format H4TO66 %1.0f
format H4TO67 %2.0f
format H4TO68 %2.0f
format H4TO69 %1.0f
format H4TO70 %2.0f
format H4TO71 %2.0f
format H4TO72 %1.0f
format H4TO73H %2.0f
format H4TO73M %2.0f
format H4TO73T %1.0f
format H4TO74 %1.0f
format H4TO75 %2.0f
format H4TO76 %1.0f
format H4TO77 %1.0f
format H4TO78 %1.0f
format H4TO79 %1.0f
format H4TO80 %1.0f
format H4TO81 %1.0f
format H4TO82 %1.0f
format H4TO83 %1.0f
format H4TO84 %1.0f
format H4TO85 %1.0f
format H4TO86 %1.0f
format H4TO87 %2.0f
format H4TO88 %1.0f
format H4TO89 %1.0f
format H4TO90 %1.0f
format H4TO91 %1.0f
format H4TO92 %2.0f
format H4TO93 %2.0f
format H4TO94 %2.0f
format H4TO95 %2.0f
format H4TO96 %2.0f
format H4TO97 %1.0f
format H4TO98 %2.0f
format H4TO99 %2.0f
format H4TO100 %1.0f
format H4TO101H %2.0f
format H4TO101M %2.0f
format H4TO101T %1.0f
format H4TO102 %1.0f
format H4TO103 %2.0f
format H4TO104 %1.0f
format H4TO105 %1.0f
format H4TO106 %1.0f
format H4TO107 %1.0f
format H4TO108 %1.0f
format H4TO109 %1.0f
format H4TO110 %1.0f
format H4TO111 %1.0f
format H4TO112 %1.0f
format H4TO113 %1.0f
format H4TO114 %1.0f
format H4TO115 %2.0f
format H4TO116 %1.0f
format H4TO117 %1.0f
format H4TO118 %1.0f
format H4TO119 %1.0f
format H4TO120 %2.0f
format H4MA1 %2.0f
format H4MA2 %2.0f
format H4MA3 %2.0f
format H4MA4 %2.0f
format H4MA5 %2.0f
format H4MA6 %2.0f
format H4DA1 %3.0f
format H4DA2 %2.0f
format H4DA3 %2.0f
format H4DA4 %2.0f
format H4DA5 %2.0f
format H4DA6 %2.0f
format H4DA7 %2.0f
format H4DA8 %2.0f
format H4DA9 %1.0f
format H4DA10 %1.0f
format H4DA11 %1.0f
format H4DA12H %2.0f
format H4DA12M %2.0f
format H4DA12T %1.0f
format H4DA13 %2.0f
format H4DA14 %3.0f
format H4DA15A %1.0f
format H4DA15B %1.0f
format H4DA15C %1.0f
format H4DA15D %1.0f
format H4DA15E %1.0f
format H4DA16 %1.0f
format H4DA17 %3.0f
format H4DA18 %2.0f
format H4DA19 %1.0f
format H4DA20 %1.0f
format H4DA21 %1.0f
format H4DA22 %3.0f
format H4DA23 %3.0f
format H4DA24 %1.0f
format H4DA25 %1.0f
format H4DA26 %2.0f
format H4DA27 %2.0f
format H4DA28 %2.0f
format H4PE1 %1.0f
format H4PE2 %1.0f
format H4PE3 %1.0f
format H4PE4 %1.0f
format H4PE5 %1.0f
format H4PE6 %1.0f
format H4PE7 %1.0f
format H4PE8 %1.0f
format H4PE9 %1.0f
format H4PE10 %1.0f
format H4PE11 %1.0f
format H4PE12 %1.0f
format H4PE13 %1.0f
format H4PE14 %1.0f
format H4PE15 %1.0f
format H4PE16 %1.0f
format H4PE17 %1.0f
format H4PE18 %1.0f
format H4PE19 %1.0f
format H4PE20 %1.0f
format H4PE21 %1.0f
format H4PE22 %1.0f
format H4PE23 %1.0f
format H4PE24 %1.0f
format H4PE25 %1.0f
format H4PE26 %1.0f
format H4PE27 %1.0f
format H4PE28 %1.0f
format H4PE29 %1.0f
format H4PE30 %1.0f
format H4PE31 %1.0f
format H4PE32 %1.0f
format H4PE33 %1.0f
format H4PE34 %1.0f
format H4PE35 %1.0f
format H4PE36 %1.0f
format H4PE37 %1.0f
format H4PE38 %1.0f
format H4PE39 %1.0f
format H4PE40 %1.0f
format H4PE41 %1.0f
format H4CMONTH %2.0f
format H4CDAY %2.0f
format H4CYEAR %4.0f
format H4ARM %1.0f
format H4CUFF %1.0f
format H4CUFFLG %1.0f
format H4SBP %5.1f
format H4DBP %5.1f
format H4BPCLS %1.0f
format H4BPFLG %1.0f
format H4PR %5.1f
format H4PP %5.1f
format H4MAP %5.1f
format H4HGT %5.1f
format H4WGT %5.1f
format H4WTLBS %1.0f
format H4BMI %5.1f
format H4BMICLS %2.0f
format H4WAIST %5.1f
format H4IR1 %1.0f
format H4IR2 %1.0f
format H4IR3 %1.0f
format H4IR4 %1.0f
format H4IR5 %1.0f
format H4IR6 %2.0f
format H4IR7 %1.0f
format H4IR8 %2.0f
format H4IR8A %2.0f
format H4IR9 %1.0f
format H4IR9A %2.0f
format H4IR10 %1.0f
format H4IR11 %1.0f
format H4IR12 %1.0f
format H4IR13 %1.0f
format H4IR14 %1.0f
format H4EO1 %1.0f
format H4EO2 %1.0f
format H4EO3 %1.0f
format H4EO4 %1.0f
format H4EO5A %1.0f
format H4EO5B %1.0f
format H4EO5C %1.0f
format H4EO5D %1.0f
format H4EO5E %1.0f
format H4EO5F %1.0f
format H4EO5G %1.0f
format H4EO5H %1.0f
format H4EO5I %1.0f
format H4EO5J %1.0f
format H4EO6 %2.0f
format H4EO7 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample"

#delimit ;
label define IMONTH4   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define BIO_SEX4  1 "(1) Male" 2 "(2) Female" ;
label define PRETEST4  0 "(0) Not a pretest interview"
                       1 "(1) Pretest interview" ;
label define PRISON4   0 "(0) Not a prison interview"
                       1 "(1) Prison interview" ;
label define H4OD1M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define H4OD2A    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD2B    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD2C    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD2D    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD2E    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD2F    0 "(0) Not selected" 1 "(1) Selected" ;
label define H4OD3     1 "(1) English" 2 "(2) Spanish" 3 "(3) Chinese"
                       4 "(4) An other European language"
                       5 "(5) An other Asian language"
                       6 "(6) An other language" 97 "(97) Legitimate skip" ;
label define H4OD4     0 "(0) No" 1 "(1) Yes" ;
label define H4OD5     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4OD6Y    1978 "(1978) 1977-1979" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4OD7     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP1     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4WP2Y    9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4WP3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4WP4     1 "(1) 1 time" 2 "(2) 2 times" 3 "(3) 3 times"
                       4 "(4) 4 times" 5 "(5) 5 times" 6 "(6) 6 times"
                       7 "(7) 7 times" 8 "(8) 8 times"
                       9 "(9) 9 or more times" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP5     0 "(0) Less than 1 year" 94 "(94) Not yet born"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP6     0 "(0) Less than 1 year" 94 "(94) Not yet born"
                       95 "(95) Still in prison" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP7     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4WP8Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4WP9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4WP10    25 "(25) 25 or more times" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP11    0 "(0) Less than 1 year" 94 "(94) Not yet born"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP12    0 "(0) Less than 1 year" 94 "(94) Not yet born"
                       95 "(95) Still in prison" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP13    1 "(1) Biological mother" 2 "(2) Adoptive mother"
                       3 "(3) Step-mother who adopted you"
                       4 "(4) Step-mother" 5 "(5) Foster mother"
                       6 "(6) Grandmother" 7 "(7) Aunt" 8 "(8) Sister"
                       9 "(9) Other female relative"
                       10 "(10) Other female non-relative"
                       11 "(11) Was not raised by a mother figure"
                       98 "(98) Don't know" ;
label define H4WP14    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP15Y   1989 "(1989) 1988-1990" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4WP16    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP17    1 "(1) 1 time" 2 "(2) 2 or more times"
                       7 "(7) Legitimate skip" ;
label define H4WP18    93 "(93) Data unavailable" 94 "(94) Not yet born"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP19    93 "(93) Data unavailable" 94 "(94) Not yet born"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP20    1 "(1) Live together" 2 "(2) Within 1 mile"
                       3 "(3) 1 to 10 miles" 4 "(4) 11 to 50 miles"
                       5 "(5) 51 to 100 miles" 6 "(6) 101 to 200 miles"
                       7 "(7) More than 200 miles" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP21    0 "(0) Never" 1 "(1) Once a year or less"
                       2 "(2) A few times a year"
                       3 "(3) Once or twice a month"
                       4 "(4) Once or twice a week" 5 "(5) Almost every day"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4WP22    0 "(0) Never" 1 "(1) Once a year or less"
                       2 "(2) A few times a year"
                       3 "(3) Once or twice a month"
                       4 "(4) Once or twice a week" 5 "(5) Almost every day"
                       7 "(7) Legitimate skip" ;
label define H4WP23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 7 "(7) Legitimate skip" ;
label define H4WP24    1 "(1) Not at all close" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Very close" 7 "(7) Legitimate skip" ;
label define H4WP25    0 "(0) Never (no)"
                       1 "(1) Yes, number of times unknown"
                       2 "(2) Yes, 1 or 2 times" 3 "(3) Yes, 3 or 4 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP26    0 "(0) Never (no)"
                       1 "(1) Yes, number of times unknown"
                       2 "(2) Yes, 1 or 2 times" 3 "(3) Yes, 3 or 4 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H4WP27    1 "(1) Biological father" 2 "(2) Adoptive father"
                       3 "(3) Step-father who adopted you"
                       4 "(4) Step-father" 5 "(5) Foster-father"
                       6 "(6) Grandfather" 7 "(7) Uncle" 8 "(8) Brother"
                       9 "(9) Other male relative"
                       10 "(10) Other male non-relative"
                       11 "(11) Was not raised by a father figure"
                       96 "(96) Refused" ;
label define H4WP28    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP29Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4WP30    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP31    1 "(1) 1 time" 2 "(2) 2 times" 3 "(3) 3 times"
                       4 "(4) 4 times" 5 "(5) 5 times" 6 "(6) 6 times"
                       10 "(10) 10 or more times" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP32    0 "(0) Less than 1 year" 2 "(2) 1-3 years"
                       94 "(94) Not yet born" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WP33    0 "(0) Less than 1 year" 3 "(3) 1-5 years"
                       94 "(94) Not yet born" 95 "(95) Still in prison"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP34    1 "(1) Live together" 2 "(2) Within 1 mile"
                       3 "(3) 1 to 10 miles" 4 "(4) 11 to 50 miles"
                       5 "(5) 51 to 100 miles" 6 "(6) 101 to 200 miles"
                       7 "(7) More than 200 miles" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4WP35    0 "(0) Never" 1 "(1) Once a year or less"
                       2 "(2) A few times a year"
                       3 "(3) Once or twice a month"
                       4 "(4) Once or twice a week" 5 "(5) Almost every day"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4WP36    0 "(0) Never" 1 "(1) Once a year or less"
                       2 "(2) A few times a year"
                       3 "(3) Once or twice a month"
                       4 "(4) Once or twice a week" 5 "(5) Almost every day"
                       7 "(7) Legitimate skip" ;
label define H4WP37    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP38    1 "(1) Not at all close" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Very close" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP39    0 "(0) Never (no)"
                       1 "(1) Yes, number of times unknown"
                       2 "(2) Yes, 1 or 2 times" 3 "(3) Yes, 3 or 4 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WP40    0 "(0) Never (no)"
                       1 "(1) Yes, number of times unknown"
                       2 "(2) Yes, 1 or 2 times" 3 "(3) Yes, 3 or 4 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4WS1     96 "(96) Refused" 98 "(98) Don't know" ;
label define H4WS2     0 "(0) 0 siblings" 1 "(1) 1 sibling"
                       2 "(2) 2 siblings" 3 "(3) 3 siblings"
                       4 "(4) 4 or more siblings" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4WS4     1 "(1) None" 2 "(2) 1 or 2 friends"
                       3 "(3) 3 to 5 friends" 4 "(4) 6 to 9 friends"
                       5 "(5) 10 or more friends"
                       95 "(95) Not asked on pretest" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4WS5     1 "(1) All your race" 2 "(2) Almost all your race"
                       3 "(3) Mostly your race" 4 "(4) About half your race"
                       5 "(5) Mostly other races"
                       6 "(6) Almost all other races" 7 "(7) All other races"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4GH1     1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" ;
label define H4GH2     0 "(0) Never" 1 "(1) A few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4GH3M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4GH3D    96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4GH3Y    9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4GH4A    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4GH4B    1 "(1) Days" 2 "(2) Weeks" 3 "(3) Months"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4GH5F    98 "(98) Don't know" ;
label define H4GH5I    98 "(98) Don't know" ;
label define H4GH6     996 "(996) Refused" 998 "(998) Don't know" ;
label define H4GH7     1 "(1) Very underweight" 2 "(2) Slightly underweight"
                       3 "(3) About the right weight"
                       4 "(4) Slightly overweight" 5 "(5) Very overweight"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4GH8     99 "(99) 99 or more times" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H4GH9     99 "(99) 99 or more drinks" 998 "(998) Don't know" ;
label define H4GH10    99 "(99) 99 or more drinks" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H4GH11H   96 "(96) Refused" 98 "(98) Don't know" ;
label define H4GH11M   96 "(96) Refused" 98 "(98) Don't know" ;
label define H4GH11T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4GH12    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4GH13H   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4GH13M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4GH13T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4HS1     1 "(1) You have no health insurance"
                       2 "(2) You get insurance through work"
                       3 "(3) You get insurance through a union"
                       4 "(4) You get insurance through school"
                       5 "(5) You are covered by your husband's or wife's insurance"
                       6 "(6) You are covered by your parent's insurance"
                       7 "(7) You are covered because you are active duty military"
                       8 "(8) You buy private insurance yourself"
                       9 "(9) You are on Medicaid"
                       10 "(10) You are covered through the Indian Health Service"
                       11 "(11) You do not know what your health insurance is"
                       98 "(98) Don't know" ;
label define H4HS2A    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "Don't know" ;
label define H4HS2B    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4HS2C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4HS2D    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4HS3     98 "(98) Don't know" ;
label define H4HS4     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4HS5     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4HS6     1 "(1) Never get sick or need health care"
                       2 "(2) Hospital-based clinic"
                       3 "(3) Hospital emergency room"
                       4 "(4) Community health center or clinic"
                       5 "(5) Health maintenance organization (HMO)"
                       6 "(6) Private doctor's office"
                       7 "(7) School or college clinic"
                       8 "(8) Military hospital or clinic"
                       9 "(9) Clinic at work" 10 "(10) Some other place"
                       98 "(98) Don't know" ;
label define H4HS7     1 "(1) Within the past 3 months"
                       2 "(2) 4 to 6 months ago" 3 "(3) 7 to 9 months ago"
                       4 "(4) 10 to 12 months ago"
                       5 "(5) Longer than 1 year ago but less than 2 years ago"
                       6 "(6) 2 years ago or longer" 7 "(7) Never"
                       98 "(98) Don't know" ;
label define H4HS8     0 "(0) No" 1 "(1) Yes" ;
label define H4HS9     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4ID1     1 "(1) Not limited" 2 "(2) Limited a little"
                       3 "(3) Limited a lot" 8 "(8) Don't know" ;
label define H4ID2     1 "(1) Not limited" 2 "(2) Limited a little"
                       3 "(3) Limited a lot" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4ID3     1 "(1) Lasted more than a year"
                       2 "(2) Developed recently" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4ID4     0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked in pretest" ;
label define H4ID5A    0 "(0) No" 1 "(1) Yes" ;
label define H4ID5B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4ID5C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4ID5D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5E    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5F    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5G    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5H    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5I    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5J    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5K    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5L    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4ID5N    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked in pretest"
                       6 "(6) Refused" ;
label define H4ID7     0 "(0) No" 1 "(1) Yes" ;
label define H4ID8     0 "(0) No" 1 "(1) Yes" ;
label define H4ID9A    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9B    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9C    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9D    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9E    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9F    0 "(0) No" 1 "(1) Yes" ;
label define H4ID9G    0 "(0) No" 1 "(1) Yes" ;
label define H4ID10A   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10B   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10C   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10D   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10E   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10F   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10G   0 "(0) No" 1 "(1) Yes" ;
label define H4ID10H   0 "(0) No" 1 "(1) Yes" ;
label define H4ID11    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4ID12    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4ID13    2 "(2) No" 3 "(3) Yes, one eye" 4 "(4) Yes, both eyes" ;
label define H4ID14    1 "(1) Eyeglasses" 2 "(2) Contact lenses" 3 "(3) Both"
                       4 "(4) Neither" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4ID15    1 "(1) Excellent" 2 "(2) Good" 3 "(3) Fair"
                       4 "(4) Poor" 5 "(5) Very poor" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4ID16    0 "(0) No" 1 "(1) Yes" ;
label define H4ID17    1 "(1) Excellent" 2 "(2) Good"
                       3 "(3) A little trouble"
                       4 "(4) Moderate hearing trouble"
                       5 "(5) A lot of trouble" 6 "(6) Deaf" ;
label define H4ID18    0 "(0) No" 1 "(1) Yes" ;
label define H4ID19    1 "(1) Mild" 2 "(2) Moderate" 3 "(3) Severe"
                       7 "(7) Legitimate skip" ;
label define H4ID20    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4ID21    1 "(1) <3 months" 2 "(2) 3-11 months"
                       3 "(3) 1-2 years" 4 "(4) 3-4 years" 5 "(5) 5-9 years"
                       6 "(6) 10-14 years" 7 "(7) 15 years or more"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4ID22    1 "(1) Almost always" 2 "(2) At least once a day"
                       3 "(3) At least once a week"
                       4 "(4) At least once a month"
                       5 "(5) Less frequently than once a month"
                       7 "(7) Legitimate skip" ;
label define H4ID23    0 "(0) No"
                       1 "(1) Yes, but the problem only lasted 1 or 2 days"
                       2 "(2) Yes, and the problem lasted 3 or more days"
                       3 "(3) Yes, but unknown - how long lasted"
                       8 "(8) Don't know" ;
label define H4ID24    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3-12 days in the past 12 months)"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day, or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4ID25    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3-12 days in the past 12 months)"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day, or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4ID26    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3-12 days in the past 12 months)"
                       3 "(3) 2 or 3 days a month" 5 "(5) 3 to 5 days a week"
                       6 "(6) Every day, or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4SP1H    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP1M    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP1T    1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SP2H    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP2M    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP2T    1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SP3H    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP3M    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP3T    1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SP4H    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP4M    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SP4T    1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SP5     0 "(0) Never in the past four weeks"
                       1 "(1) Less than once a week"
                       2 "(2) 1 or 2 times a week"
                       3 "(3) 3 or 4 times a week"
                       4 "(4) 5 or more times a week"
                       5 "(5) Not asked on pretest" 8 "(8) Don't know" ;
label define H4SP6     0 "(0) Never in the past four weeks"
                       1 "(1) Less than once a week"
                       2 "(2) 1 or 2 times a week"
                       3 "(3) 3 or 4 times a week"
                       4 "(4) 5 or more times a week"
                       5 "(5) Not asked on pretest" 8 "(8) Don't know" ;
label define H4SP7     0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       8 "(8) Don't know" ;
label define H4HR1     1 "(1) Your parents' home"
                       2 "(2) Another person's home"
                       3 "(3) Your own place (apartment, house, trailer, etc.)"
                       4 "(4) Group quarters (dormitory, barracks, group home, etc.)"
                       5 "(5) Homeless - that is, you have no regular place to stay"
                       6 "(6) Other (skip to Q.3)"
                       96 "(96) Refused (skip to Q.10)" ;
label define H4HR2     1 "(1) Dormitory at school"
                       3 "(3) Barracks in the armed services"
                       4 "(4) Half-way house, social rehabilitation facility"
                       5 "(5) Prison, penitentiary" 6 "(6) Group home"
                       8 "(8) Communal home" 9 "(9) Other"
                       97 "(97) Legitimate skip" ;
label define H4HR3     1 "(1) Alone" 2 "(2) With others" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4HR4     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4HR5A    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6A    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4HR7A    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4HR8A    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       6 "(6) Sister's husband/brother's wife"
                       8 "(8) Father/mother"
                       10 "(10) Mother's husband/father's wife"
                       11 "(11) Mother's male partner/father's female partner"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       16 "(16) Cousin" 17 "(17) Nephew/niece"
                       18 "(18) Other relative" 19 "(19) Non-relative"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4HR9A    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       10 "(10) Full brother/sister"
                       11 "(11) Twin brother/sister"
                       12 "(12) Half brother/sister"
                       13 "(13) Step brother/sister"
                       14 "(14) Adoptive brother/sister"
                       20 "(20) Biological father/mother"
                       21 "(21) Adoptive father/mother"
                       22 "(22) Step father/mother who has adopted you"
                       23 "(23) Step father/mother" 97 "(97) Legitimate skip" ;
label define H4HR5B    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4HR6B    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4HR7B    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4HR8B    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       5 "(5) Brother's male partner/sister's female partner"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       9 "(9) Father's male partner/mother's female partner"
                       10 "(10) Mother's husband/father's wife"
                       11 "(11) Mother's male partner/father's female partner"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother"
                       14 "(14) Great-grandfather/great-grandmother"
                       15 "(15) Uncle/aunt" 16 "(16) Cousin"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       19 "(19) Non-relative" 96 "(96) Refused"
                       97 "(97) Legitimate skip" ;
label define H4HR9B    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       10 "(10) Full brother/sister"
                       11 "(11) Twin brother/sister"
                       12 "(12) Half brother/sister"
                       13 "(13) Step brother/sister"
                       14 "(14) Adoptive brother/sister"
                       15 "(15) Foster brother/sister"
                       20 "(20) Biological father/mother"
                       21 "(21) Adoptive father/mother"
                       22 "(22) Step father/mother who has adopted you"
                       23 "(23) Step father/mother" 97 "(97) Legitimate skip" ;
label define H4HR5C    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4HR6C    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4HR7C    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4HR8C    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       5 "(5) Brother's male partner/sister's female partner"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       10 "(10) Mother's husband/father's wife"
                       11 "(11) Mother's male partner/father's female partner"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       16 "(16) Cousin" 17 "(17) Nephew/niece"
                       18 "(18) Other relative" 19 "(19) Non-relative"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4HR9C    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       5 "(5) Foster son/daughter"
                       10 "(10) Full brother/sister"
                       11 "(11) Twin brother/sister"
                       12 "(12) Half brother/sister"
                       13 "(13) Step brother/sister"
                       14 "(14) Adoptive brother/sister"
                       20 "(20) Biological father/mother"
                       21 "(21) Adoptive father/mother"
                       23 "(23) Step father/mother" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4HR5D    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4HR6D    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4HR7D    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4HR8D    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       5 "(5) Brother's male partner/sister's female partner"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       10 "(10) Mother's husband/father's wife"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       16 "(16) Cousin" 17 "(17) Nephew/niece"
                       18 "(18) Other relative" 19 "(19) Non-relative"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4HR9D    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       4 "(4) Step son/daughter have adopted"
                       5 "(5) Foster son/daughter"
                       10 "(10) Full brother/sister"
                       12 "(12) Half brother/sister"
                       13 "(13) Step brother/sister"
                       14 "(14) Adoptive brother/sister"
                       20 "(20) Biological father/mother"
                       22 "(22) Step father/mother who has adopted you"
                       23 "(23) Step father/mother" 97 "(97) Legitimate skip" ;
label define H4HR5E    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6E    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4HR7E    997 "(997) Legitimate skip" ;
label define H4HR8E    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       10 "(10) Mother's husband/father's wife"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother"
                       14 "(14) Great-grandfather/great-grandmother"
                       15 "(15) Uncle/aunt" 16 "(16) Cousin"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       19 "(19) Non-relative" 97 "(97) Legitimate skip" ;
label define H4HR9E    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       4 "(4) Step son/daughter have adopted"
                       5 "(5) Foster son/daughter"
                       10 "(10) Full brother/sister"
                       12 "(12) Half brother/sister"
                       13 "(13) Step brother/sister"
                       14 "(14) Adoptive brother/sister"
                       20 "(20) Biological father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5F    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6F    997 "(997) Legitimate skip" ;
label define H4HR7F    997 "(997) Legitimate skip" ;
label define H4HR8F    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       16 "(16) Cousin" 17 "(17) Nephew/niece"
                       18 "(18) Other relative" 19 "(19) Non-relative"
                       97 "(97) Legitimate skip" ;
label define H4HR9F    1 "(1) Biological son/daughter"
                       2 "(2) Adopted son/daughter" 3 "(3) Step son/daughter"
                       5 "(5) Foster son/daughter"
                       10 "(10) Full brother/sister"
                       12 "(12) Half brother/sister"
                       20 "(20) Biological father/mother"
                       21 "(21) Adoptive father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5G    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6G    997 "(997) Legitimate skip" ;
label define H4HR7G    997 "(997) Legitimate skip" ;
label define H4HR8G    1 "(1) Husband/wife"
                       2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       6 "(6) Sister's husband/brother's wife"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       12 "(12) Father-in-law/mother-in-law"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       16 "(16) Cousin" 17 "(17) Nephew/niece"
                       18 "(18) Other relative" 19 "(19) Non-relative"
                       97 "(97) Legitimate skip" ;
label define H4HR9G    1 "(1) Biological son/daughter"
                       10 "(10) Full brother/sister"
                       12 "(12) Half brother/sister"
                       14 "(14) Adoptive brother/sister"
                       20 "(20) Biological father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5H    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6H    997 "(997) Legitimate skip" ;
label define H4HR7H    997 "(997) Legitimate skip" ;
label define H4HR8H    2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       6 "(6) Sister's husband/brother's wife"
                       8 "(8) Father/mother"
                       13 "(13) Grandfather/grandmother" 15 "(15) Uncle/aunt"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       19 "(19) Non-relative" 97 "(97) Legitimate skip" ;
label define H4HR9H    1 "(1) Biological son/daughter"
                       3 "(3) Step son/daughter"
                       10 "(10) Full brother/sister"
                       20 "(20) Biological father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5I    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6I    997 "(997) Legitimate skip" ;
label define H4HR7I    997 "(997) Legitimate skip" ;
label define H4HR8I    1 "(1) Husband/wife" 3 "(3) Son/daughter"
                       4 "(4) Brother/sister"
                       5 "(5) Brother's male partner/sister's female partner"
                       7 "(7) Sister's male partner/brother's female partner"
                       8 "(8) Father/mother"
                       12 "(12) Father-in-law/mother-in-law"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       19 "(19) Non-relative" 97 "(97) Legitimate skip" ;
label define H4HR9I    1 "(1) Biological son/daughter"
                       10 "(10) Full brother/sister"
                       20 "(20) Biological father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5J    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6J    997 "(997) Legitimate skip" ;
label define H4HR7J    997 "(997) Legitimate skip" ;
label define H4HR8J    2 "(2) Partner/boyfriend/girlfriend"
                       3 "(3) Son/daughter" 17 "(17) Nephew/niece"
                       19 "(19) Non-relative" 97 "(97) Legitimate skip" ;
label define H4HR9J    1 "(1) Biological son/daughter"
                       97 "(97) Legitimate skip" ;
label define H4HR5K    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6K    997 "(997) Legitimate skip" ;
label define H4HR7K    997 "(997) Legitimate skip" ;
label define H4HR8K    3 "(3) Son/daughter" 4 "(4) Brother/sister"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       97 "(97) Legitimate skip" ;
label define H4HR9K    1 "(1) Biological son/daughter"
                       10 "(10) Full brother/sister"
                       97 "(97) Legitimate skip" ;
label define H4HR5L    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6L    997 "(997) Legitimate skip" ;
label define H4HR7L    997 "(997) Legitimate skip" ;
label define H4HR8L    4 "(4) Brother/sister" 8 "(8) Father/mother"
                       17 "(17) Nephew/niece" 18 "(18) Other relative"
                       97 "(97) Legitimate skip" ;
label define H4HR9L    10 "(10) Full brother/sister"
                       20 "(20) Biological father/mother"
                       97 "(97) Legitimate skip" ;
label define H4HR5M    1 "(1) Male" 7 "(7) Legitimate skip" ;
label define H4HR6M    997 "(997) Legitimate skip" ;
label define H4HR7M    997 "(997) Legitimate skip" ;
label define H4HR8M    18 "(18) Other relative" 97 "(97) Legitimate skip" ;
label define H4HR9M    97 "(97) Legitimate skip" ;
label define H4HR5N    2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H4HR6N    997 "(997) Legitimate skip" ;
label define H4HR7N    997 "(997) Legitimate skip" ;
label define H4HR8N    18 "(18) Other relative" 97 "(97) Legitimate skip" ;
label define H4HR9N    97 "(97) Legitimate skip" ;
label define H4HR5O    1 "(1) Male" 7 "(7) Legitimate skip" ;
label define H4HR6O    997 "(997) Legitimate skip" ;
label define H4HR7O    997 "(997) Legitimate skip" ;
label define H4HR8O    18 "(18) Other relative" 97 "(97) Legitimate skip" ;
label define H4HR9O    97 "(97) Legitimate skip" ;
label define H4HR5P    7 "(7) Legitimate skip" ;
label define H4HR6P    997 "(997) Legitimate skip" ;
label define H4HR7P    997 "(997) Legitimate skip" ;
label define H4HR8P    97 "(97) Legitimate skip" ;
label define H4HR9P    97 "(97) Legitimate skip" ;
label define H4HR10    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H4HR11YA  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4HR11YB  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4HR11YC  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YD  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YE  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YF  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YG  1981 "(1981) 1980-1982" 9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YH  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YI  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YJ  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YK  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" ;
label define H4HR11YL  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4HR11YM  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" ;
label define H4HR11YN  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" ;
label define H4HR11YO  9994 "(9994) Data unavailable"
                       9997 "(9997) Legitimate skip" ;
label define H4ED1     1 "(1) Finished high school with diploma"
                       2 "(2) Earned a high school equivalency degree (GED)"
                       3 "(3) Earned a certificate of attendance or completion"
                       4 "(4) Did not receive a diploma, GED, or other certificate"
                       8 "(8) Don't know" ;
label define H4ED2     1 "(1) 8th grade or less" 2 "(2) Some high school"
                       3 "(3) High school graduate"
                       4 "(4) Some vocational/technical training (after high school)"
                       5 "(5) Completed vocational/technical training (after high scho"
                       6 "(6) Some college"
                       7 "(7) Completed college (bachelor's degree)"
                       8 "(8) Some graduate school"
                       9 "(9) Completed a master's degree"
                       10 "(10) Some graduate training beyond a master's degree"
                       11 "(11) Completed a doctoral degree"
                       12 "(12) Some post baccalaureate professional education"
                       13 "(13) Completed post baccalaureate professional education"
                       98 "(98) Don't know" ;
label define H4ED3A    1 "(1) I have not received a degree or certificate"
                       2 "(2) Certificate/degree from a 1-, 2-, or 3-year voc/tech pro"
                       3 "(3) Associate's degree" 4 "(4) Bachelor's degree"
                       5 "(5) Certificate from a 1- or 2-year post bacc. academic prog"
                       6 "(6) Master's degree"
                       7 "(7) PhD degree or equivalent (EDD, DrPH, etc.)"
                       8 "(8) Professional doctorate (MD, JD, LLB, DDS, etc.)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4ED3B
                       2 "(2) Certificate/degree from a 1-, 2-, or 3-year voc/tech pro"
                       3 "(3) Associate's degree" 4 "(4) Bachelor's degree"
                       5 "(5) Certificate from a 1- or 2-year post bacc. academic prog"
                       6 "(6) Master's degree"
                       7 "(7) PhD degree or equivalent (EDD, DrPH, etc.)"
                       8 "(8) Professional doctorate (MD, JD, LLB, DDS, etc.)"
                       97 "(97) Legitimate skip" ;
label define H4ED3C
                       2 "(2) Certificate/degree from a 1-, 2-, or 3-year voc/tech pro"
                       3 "(3) Associate's degree" 4 "(4) Bachelor's degree"
                       5 "(5) Certificate from a 1- or 2-year post bacc. academic prog"
                       6 "(6) Master's degree"
                       7 "(7) PhD degree or equivalent (EDD, DrPH, etc.)"
                       8 "(8) Professional doctorate (MD, JD, LLB, DDS, etc.)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4ED3D
                       2 "(2) Certificate/degree from a 1-, 2-, or 3-year voc/tech pro"
                       4 "(4) Bachelor's degree"
                       5 "(5) Certificate from a 1- or 2-year post bacc. academic prog"
                       6 "(6) Master's degree" 7 "(7) Legitimate skip" ;
label define H4ED3E
                       2 "(2) Certificate/degree from a 1-, 2-, or 3-year voc/tech pro"
                       3 "(3) Associate's degree" 7 "(7) Legitimate skip" ;
label define H4ED3F    7 "(7) Legitimate skip" ;
label define H4ED3G    7 "(7) Legitimate skip" ;
label define H4ED3H    7 "(7) Legitimate skip" ;
label define H4ED4A    9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4ED4B    9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4ED4C    1997 "(1997) 1996-1997" 9997 "(9997) Legitimate skip" ;
label define H4ED4D    1998 "(1998) 1997-1999" 2001 "(2001) 2000-2002"
                       2004 "(2004) 2003-2005" 2007 "(2007) 2006-2008"
                       9997 "(9997) Legitimate skip" ;
label define H4ED4E    9997 "(9997) Legitimate skip" ;
label define H4ED4F    9997 "(9997) Legitimate skip" ;
label define H4ED4G    9997 "(9997) Legitimate skip" ;
label define H4ED4H    9997 "(9997) Legitimate skip" ;
label define H4ED5A    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4ED5B    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4ED5C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4ED5D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4ED5E    0 "(0) No" 7 "(7) Legitimate skip" ;
label define H4ED5F    7 "(7) Legitimate skip" ;
label define H4ED5G    7 "(7) Legitimate skip" ;
label define H4ED5H    7 "(7) Legitimate skip" ;
label define H4ED6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4ED7     0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4ED8     1 "(1) I have achieved my desired level of education"
                       2 "(2) Have not achieved desired level of education but think w"
                       3 "(3) Have not achieved desired level of ed. and do not think"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4ED9     1 "(1) Finish high school or earn GED or certificate"
                       2 "(2) Voc/tech school after high school-less than 2 years"
                       3 "(3) Voc/tech school after high school-2 or more years"
                       4 "(4) College program-less than 2 years"
                       5 "(5) Associate's degree" 6 "(6) Bachelor's degree"
                       7 "(7) Master's degree or equivalent"
                       8 "(8) PhD or equivalent (EDD, DrPH, etc.)"
                       9 "(9) Professional doctorate-MD, JD, LLB, DDS, or equivalent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4MI1     0 "(0) No" 1 "(1) Yes" ;
label define H4MI2     1 "(1) Service in the US"
                       2 "(2) Service outside the US" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H4MI3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4MI4A    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI4B    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI4C    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI4D    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI4E    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI5     1 "(1) Army" 7 "(7) Legitimate skip" ;
label define H4MI6A    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MI6B    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MI6C    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MI7     1 "(1) Active Duty" 2 "(2) Reserves"
                       3 "(3) National Guard" 7 "(7) Legitimate skip" ;
label define H4MI8Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip" ;
label define H4MI9Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4MI10    1 "(1) E-1" 2 "(2) E-2" 3 "(3) E-3" 4 "(4) E-4"
                       5 "(5) E-5" 6 "(6) E-6" 7 "(7) E-7" 11 "(11) O-1"
                       13 "(13) O-2" 15 "(15) O-3" 16 "(16) O-3E"
                       94 "(94) Data unavailable" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4MI11Y   97 "(97) Legitimate skip" ;
label define H4MI11M   97 "(97) Legitimate skip" ;
label define H4MI12Y   97 "(97) Legitimate skip" ;
label define H4MI12M   97 "(97) Legitimate skip" ;
label define H4MI13    995 "(995) Not asked on pretest" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4MI14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MI15    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4MI16A   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI16B   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI16C   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI16D   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4MI17    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       7 "(7) Legitimate skip" ;
label define H4LM1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4LM2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4LM3     50 "(50) 50 or more jobs" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM4     50 "(50) 50 or more times" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4LM5     97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM6     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4LM7     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4LM9M    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM9Y    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM10
                       1 "(1) It was part of my long-term career/work goals at that ti"
                       2 "(2) It was prep for my long-term career/work goals at that t"
                       3 "(3) Not related to my long-term career/work goals at that ti"
                       4 "(4) I did not have long-term career or work goals at that ti"
                       7 "(7) Legitimate skip" ;
label define H4LM11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4LM12    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM13    997 "(997) Legitimate skip" ;
label define H4LM14    1 "(1) Only temporarily laid off"
                       2 "(2) On sick leave or temporarily disabled"
                       3 "(3) On maternity/paternity leave"
                       4 "(4) Permanently disabled"
                       5 "(5) Unemployed and looking for work"
                       6 "(6) Unemployed and not looking for work"
                       7 "(7) Student" 8 "(8) Keeping house" 9 "(9) Retired"
                       10 "(10) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" ;
label define H4LM15Y   1987 "(1987) 1986-1988" 9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4LM16Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4LM17    1 "(1) Layoff" 2 "(2) Plant closed"
                       3 "(3) End of temporary or seasonal job"
                       4 "(4) Discharged or fired" 5 "(5) Program ended"
                       6 "(6) Health problems"
                       7 "(7) Pregnancy or family reasons"
                       8 "(8) Return to school"
                       9 "(9) Quit to look for another job"
                       10 "(10) Quit to take another job" 11 "(11) Retired"
                       12 "(12) Military service" 13 "(13) Incarceration"
                       14 "(14) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM19    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4LM20    1 "(1) Regular day shift"
                       2 "(2) Regular evening shift"
                       3 "(3) Regular night shift" 4 "(4) Shift rotates"
                       5 "(5) Split shift"
                       6 "(6) Irregular schedule or hours" 7 "(7) Other"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4LM21A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LM21B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LM21C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LM22    1 "(1) Standing, doing hard physical work"
                       2 "(2) Standing, doing moderate physical work"
                       3 "(3) Standing, doing light physical work"
                       4 "(4) Seated, for example, using a computer or driving"
                       5 "(5) Mixed answers"
                       95 "(95) Pretest case, logic changed"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4LM23    0 "(0) None or almost none of the time"
                       1 "(1) Some of the time" 2 "(2) Most of the time"
                       3 "(3) All or almost all of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LM24    0 "(0) None or almost none of the time"
                       1 "(1) Some of the time" 2 "(2) Most of the time"
                       3 "(3) All or almost all of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LM25    1 "(1) I (supervise/supervised) other employees"
                       2 "(2) I supervise other employees, some of whom supervise othe"
                       3 "(3) I (do/did) not supervise anyone"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4LM26    1 "(1) Extremely satisfied" 2 "(2) Satisfied"
                       3 "(3) Neither satisfied nor dissatisfied"
                       4 "(4) Dissatisfied" 5 "(5) Extremely dissatisfied"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4LM27
                       1 "(1) It is part of my long-term career or work goals"
                       2 "(2) It is preparation for my long-term career or work goals"
                       3 "(3) It is not related to my long-term career or work goals"
                       4 "(4) I do not have long-term career or work goals"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4LM28    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4LM29    1 "(1) Frequently" 2 "(2) Sometimes" 3 "(3) Rarely"
                       4 "(4) Never" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4LM30    1 "(1) Frequently" 2 "(2) Sometimes" 3 "(3) Rarely"
                       4 "(4) Never" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4EC1     1 "(1) Less than $5,000" 2 "(2) $5,000 to $9,999"
                       3 "(3) $10,000 to 14,999" 4 "(4) $15,000 to $19,999"
                       5 "(5) $20,000 to $24,999" 6 "(6) $25,000 to $29,999"
                       7 "(7) $30,000 to $39,999" 8 "(8) $40,000 to $49,999"
                       9 "(9) $50,000 to $74,999"
                       10 "(10) $75,000 to $99,999"
                       11 "(11) $100,000 to $149,999"
                       12 "(12) $150,000 or more" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4EC2     9999996 "(9999996) Refused"
                       9999998 "(9999998) Don't know" ;
label define H4EC3     1 "(1) Less than $5,000" 2 "(2) $5,000 to $9,999"
                       3 "(3) $10,000 to 14,999" 4 "(4) $15,000 to $19,999"
                       5 "(5) $20,000 to $24,999" 6 "(6) $25,000 to $29,999"
                       7 "(7) $30,000 to $39,999" 8 "(8) $40,000 to $49,999"
                       9 "(9) $50,000 to $74,999"
                       10 "(10) $75,000 to $99,999"
                       11 "(11) $100,000 to $149,999" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4EC4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC5     9999996 "(9999996) Refused"
                       9999997 "(9999997) Legitimate skip"
                       9999998 "(9999998) Don't know" ;
label define H4EC6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC7     1 "(1) Less than $5,000" 2 "(2) $5,000 to $9,999"
                       3 "(3) $10,000 to $24,999" 4 "(4) $25,000 to $49,999"
                       5 "(5) $50,000 to $99,999"
                       6 "(6) $100,000 to $249,999"
                       7 "(7) $250,000 to $499,999"
                       8 "(8) $500,000 to $999,999"
                       9 "(9) $1,000,000 or more" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4EC8     1 "(1) Less than $1,000" 2 "(2) $1,000 to $4,999"
                       3 "(3) $5,000 to $9,999" 4 "(4) $10,000 to $24,999"
                       5 "(5) $25,000 to $49,999" 6 "(6) $50,000 to $99,999"
                       7 "(7) $100,000 to $249,999" 8 "(8) $250,000 or more"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4EC9     1 "(1) Have something left over" 2 "(2) Break even"
                       3 "(3) Be in debt" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H4EC10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4EC17    1 "(1) Only a very short time"
                       2 "(2) Less than half the time"
                       3 "(3) About half the time" 4 "(4) Most of the time"
                       5 "(5) Practically all of the time"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4EC18    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4EC19    1 "(1) Step 1" 2 "(2) Step 2" 3 "(3) Step 3"
                       4 "(4) Step 4" 5 "(5) Step 5" 6 "(6) Step 6"
                       7 "(7) Step 7" 8 "(8) Step 8" 9 "(9) Step 9"
                       10 "(10) Step 10" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RE1     1 "(1) Non/athiest/agnostic"
                       2 "(2) Protestant (Such as Assembly of God, Baptist, etc.)"
                       3 "(3) Catholic" 4 "(4) Other Christian"
                       5 "(5) Jewish" 6 "(6) Buddhist" 7 "(7) Hindu"
                       8 "(8) Muslim" 9 "(9) Other" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RE2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RE3     1 "(1) Fundamentalist" 2 "(2) Evangelical"
                       3 "(3) Mainline" 4 "(4) Liberal" 5 "(5) Pentecostal"
                       6 "(6) None of these" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4RE4     1 "(1) Traditional" 2 "(2) Moderate" 3 "(3) Liberal"
                       4 "(4) None of these" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4RE5     2 "(2) Conservative" 3 "(3) Reform"
                       4 "(4) None of these" 7 "(7) Legitimate skip" ;
label define H4RE6     2 "(2) Anglican" 3 "(3) Assembly of God"
                       4 "(4) Baptist" 5 "(5) Brethren" 6 "(6) Charismatic"
                       7 "(7) Christian"
                       8 "(8) Christian and Missionary Alliance"
                       9 "(9) Christian Science" 10 "(10) Church of Christ"
                       12 "(12) Church of God"
                       13 "(13) Church of the Nazarene"
                       14 "(14) Congregational" 15 "(15) Disciples of Christ"
                       16 "(16) Episcopalian"
                       18 "(18) Evangelical Free Church"
                       19 "(19) Four-square Gospel"
                       20 "(20) Free Methodist Church" 21 "(21) Friends"
                       22 "(22) Holiness" 23 "(23) Independent"
                       24 "(24) Jehovah's Witness" 25 "(25) Just Christian"
                       26 "(26) Just Protestant" 27 "(27) Latter-Day Saints"
                       28 "(28) Lutheran" 30 "(30) Methodist"
                       31 "(31) Mormon"
                       32 "(32) Nondenominational or inter-denominational Protestant"
                       33 "(33) Pentecostal" 34 "(34) Presbyterian"
                       36 "(36) Reformed" 38 "(38) Unitarian"
                       39 "(39) United Church of Christ"
                       41 "(41) Wesleyan Church" 42 "(42) Other"
                       94 "(94) Data unavailable" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4RE7     0 "(0) Never" 1 "(1) A few times" 2 "(2) Once a month"
                       3 "(3) 2 or 3 times a month" 4 "(4) Once a week"
                       5 "(5) More than once a week" 8 "(8) Don't know" ;
label define H4RE8     0 "(0) Never" 1 "(1) A few times" 2 "(2) Once a month"
                       3 "(3) 2 or 3 times a month" 4 "(4) Once a week"
                       5 "(5) More than once a week" 8 "(8) Don't know" ;
label define H4RE9     1 "(1) Not important" 2 "(2) Somewhat important"
                       3 "(3) Very important"
                       4 "(4) More important than anything else"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4RE10    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Once a month" 3 "(3) A few times a month"
                       4 "(4) Once a week" 5 "(5) A few times a week"
                       6 "(6) Once a day" 7 "(7) More than once a day"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RE11    0 "(0) Never" 1 "(1) Seldon" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4MH1     0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest" ;
label define C4WD90_1  96 "(96) Refused"
                       99 "(99) No Word List Recall Form for respondent" ;
label define C4WD90_2  96 "(96) Refused"
                       99 "(99) No Word List Recall Form for respondent" ;
label define C4WD90_3  96 "(96) Refused"
                       99 "(99) No Word List Recall Form for respondent" ;
label define H4MH2     0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Often" 8 "(8) Don't know" ;
label define H4MH3     0 "(0) Never" 1 "(1) Almost never" 2 "(2) Sometimes"
                       3 "(3) Fairly often" 4 "(4) Very often"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH4     0 "(0) Never" 1 "(1) Almost never" 2 "(2) Sometimes"
                       3 "(3) Fairly often" 4 "(4) Very often"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH5     0 "(0) Never" 1 "(1) Almost never" 2 "(2) Sometimes"
                       3 "(3) Fairly often" 4 "(4) Very often"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH6     0 "(0) Never" 1 "(1) Almost never" 2 "(2) Sometimes"
                       3 "(3) Fairly often" 4 "(4) Very often"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH7     1 "(1) Moderately below average"
                       2 "(2) Slightly below average" 3 "(3) About average"
                       4 "(4) Slightly above average"
                       5 "(5) Moderately above average"
                       6 "(6) Extremely above average" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4MH8     1 "(1) Very attractive" 2 "(2) Moderately attractive"
                       3 "(3) Slightly attractive"
                       4 "(4) Not at all attractive" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4MH10    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" ;
label define C4WD60_1  96 "(96) Refused" ;
label define C4WD60_2  96 "(96) Refused" ;
label define C4WD60_3  96 "(96) Refused" ;
label define H4MH11A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define H4MH11B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4MH12A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4MH12B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4MH13A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH13B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH14A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH14B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH15A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH15B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4MH16A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH16B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4MH17A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4MH17B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define C4NUMSCR  96 "(96) Refused" ;
label define H4MH18    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH19    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH20    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH21    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH22    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH23    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH24    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH25    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH26    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH27    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4MH28    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time or all of the time"
                       6 "(6) Refused" ;
label define H4MH29    1 "(1) Your ancestry or national origin"
                       2 "(2) Your gender" 3 "(3) Your race" 4 "(4) Your age"
                       5 "(5) Your religion" 6 "(6) Your height or weight"
                       7 "(7) Your shade of skin color"
                       8 "(8) Your sexual orientation"
                       9 "(9) Your education or income"
                       10 "(10) A physical disability" 11 "(11) Other"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE2     0 "(0) None" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4SE3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4SE4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE5     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4SE6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE7     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE8     9995 "(9995) Not asked in pretest"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4SE9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE10    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE12    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE13    996 "(996) Refused" 998 "(998) Don't know" ;
label define H4SE14    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 3 "(3) 11 to 20 partners"
                       4 "(4) 21 to 30 partners"
                       5 "(5) More than 30 partners" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE15    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4SE16    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 3 "(3) 11 to 20 partners"
                       4 "(4) 21 to 30 partners" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE17    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE18    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4SE19    996 "(996) Refused" 998 "(998) Don't know" ;
label define H4SE20    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 3 "(3) 11 to 20 partners"
                       4 "(4) 21 to 30 partners"
                       5 "(5) More than 30 partners" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4SE21    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4SE22    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 3 "(3) 11 to 20 partners"
                       4 "(4) 21 to 30 partners"
                       5 "(5) More than 30 partners" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE23    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE24    0 "(0) 0 partners" 1 "(1) 1 to 4 partners"
                       2 "(2) 5 to 10 partners" 3 "(3) 11 to 20 partners"
                       4 "(4) 21 to 30 partners" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE25    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4SE26A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26F   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26G   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26J   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26K   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26L   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26M   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26N   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26O   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26P   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26Q   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26R   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26S   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26T   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE26V   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE27    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE28    0 "(0) None" 1 "(1) 1 to 2 times"
                       2 "(2) 3 to 10 times" 3 "(3) 11 to 25 times"
                       4 "(4) 26 or more times" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE29    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE30    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE31    1 "(1) 100% heterosexual (straight)"
                       2 "(2) Mostly heterosexual, but somewhat attracted to same sex"
                       3 "(3) Bisexual, that is, attracted to men and women equally"
                       4 "(4) Mostly homosexual, but somewhat attracted to opposite se"
                       5 "(5) 100% homosexual (gay)"
                       6 "(6) Not sexually attracted to either males or females"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4SE32    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE33    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE34    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE35    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4SE36A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36F   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36G   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36J   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36K   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36L   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36N   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE36O   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4SE37A   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE37B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4SE37C   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE37D   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37E   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37F   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37G   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4SE37I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4SE37J   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37K   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37L   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37N   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4SE37O   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4TR1     6 "(6) Refused" 8 "(8) Don't know" ;
label define H4TR2     96 "(96) Refused" 98 "(98) Don't know" ;
label define H4TR3     96 "(96) Refused" 98 "(98) Don't know" ;
label define H4TR4     96 "(96) Refused" 98 "(98) Don't know" ;
label define H4TR5     95 "(95) 95 or more persons" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H4TR6     95 "(95) 95 or more persons" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H4TR7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TR8     1 "(1) Probably pregnant"
                       2 "(2) Probably not pregnant" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TR9     12 "(12) 12 or more pregnancies" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4TR10    7 "(7) 7 or more live births"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TR11    7 "(7) 7 or more children" 97 "(97) Legitimate skip" ;
label define H4TR12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4RD1     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4RD2D    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD2M    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD2Y    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD3     1 "(1) Engaged" 2 "(2) Dating exclusively"
                       3 "(3) Dating frequently, but not exclusively"
                       4 "(4) Dating once in a while" 5 "(5) Only having sex"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4RD4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RD5     95 "(95) Not asked in pretest" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4RD6     1 "(1) Living together"
                       2 "(2) Living apart because of legal separation"
                       3 "(3) Living apart because of other reason"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4RD7A    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7B    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7C    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7D    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7E    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7F    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD7G    1 "(1) strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4RD8     1 "(1) A lot" 2 "(2) Somewhat" 3 "(3) A little"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RD9     1 "(1) Very happy" 2 "(2) Fairly happy"
                       3 "(3) Not too happy" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RD10    1 "(1) Completely committed" 2 "(2) Very committed"
                       3 "(3) Somewhat committed"
                       4 "(4) Not at all committed" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RD11    0 "(0) No chance" 1 "(1) A little chance"
                       2 "(2) 50-50 chance" 3 "(3) A pretty good chance"
                       4 "(4) An almost certain chance"
                       5 "(5) Not asked in pretest" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4RD12    1 "(1) Diagram 1" 2 "(2) Diagram 2" 3 "(3) Diagram 3"
                       4 "(4) Diagram 4" 5 "(5) Diagram 5" 6 "(6) Diagram 6"
                       7 "(7) Diagram 7" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4RD13    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4RD14    9996 "(9996) Refused" 9998 "(9998) Don't know" ;
label define H4RD14T   1 "(1) Week" 2 "(2) Month" 3 "(3) Year"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4RD15    0 "(0) None of the time" 1 "(1) Some of the time"
                       2 "(2) About half of the time"
                       3 "(3) Most of the time" 4 "(4) All of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4RD16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4RD17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4RD18    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD19    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD20    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4RD21    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD22    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD23    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4RD24    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4RD25    0 "(0) Never"
                       1 "(1) Has not happened in the past year, but it did before the"
                       2 "(2) Once in the last year of the relationship"
                       3 "(3) Twice in the last year of the relationship"
                       4 "(4) 3 to 5 times in the last year of the relationship"
                       5 "(5) 6 to 10 times in the last year of the relationship"
                       6 "(6) 11 to 20 times in the last year of the relationship"
                       7 "(7) More than 20 times in the last year of the relationship"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4KK14    1 "(1) English" 2 "(2) Spanish" 6 "(6) Other language"
                       7 "(7) A combination of English and another language"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4KK15A   1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4KK15B   1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4KK15C   1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4KK15D   1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4DS1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS2     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS3     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS4     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS5     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS6     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS7     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS8     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS9     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS10    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS11    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4DS12    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       7 "(7) Legitimate skip" ;
label define H4DS13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS18    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS19    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DS20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4CJ1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ2     1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ3     12 "(12) 12 years and younger"
                       32 "(32) 32 years and older" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ4     10 "(10) 10 years and younger"
                       29 "(29) 29 years and older" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ5     20 "(20) 20 or more times" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4CJ6     25 "(25) 25 or more times" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ7A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7F    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7G    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7H    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7I    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7J    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ7K    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ8     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ9A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9F    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9G    0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9H    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9I    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9J    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ9K    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ10    0 "(0) No" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4CJ11    13 "(13) 13 years or younger" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ12    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ13A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13F   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13G   0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13J   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ13K   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ14    15 "(15) 15 years or younger"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ15A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15F   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15G   0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15J   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ15K   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ16    0 "(0) No" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4CJ17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ18    1 "(1) Once" 2 "(2) More than once"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4CJ19    13 "(13) 13 years or younger" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ20    30 "(30) 30 years or older" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ21    13 "(13) 13 years or younger"
                       31 "(31) 31 years or older" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ22Y   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       8 "(8) 7 to 9 years" 11 "(11) 10 to 12 years"
                       14 "(14) 14 years or more" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ22M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ23Y   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years"
                       10 "(10) 9 to 11 years" 14 "(14) 12 to 16 years"
                       30 "(30) 30 years or more" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4CJ23M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ24Y   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years"
                       5 "(5) 5 years or more" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4CJ24M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ25Y   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4CJ25M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO2     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO4     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO5     96 "(96) Refused" 98 "(98) Don't know" ;
label define H4TO6     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4TO7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO8     1 "(1) Within 5 minutes"
                       2 "(2) Within 6 to 30 minutes"
                       3 "(3) Within 31 to 60 minutes"
                       4 "(4) After 60 minutes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO10    1 "(1) The first in the morning"
                       2 "(2) Any other in the day or evening"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO11    1 "(1) 10 or fewer cigarettes"
                       2 "(2) 11 to 20 cigarettes"
                       3 "(3) 21 to 30 cigarettes"
                       4 "(4) 31 or more cigarettes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO14    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO15    1 "(1) Within 5 minutes"
                       2 "(2) Within 6 to 30 minutes"
                       3 "(3) Within 31 to 60 minutes"
                       4 "(4) After 60 minutes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO17    1 "(1) The first in the morning"
                       2 "(2) Any other in the day or evening"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO18    1 "(1) 10 or fewer cigarettes"
                       2 "(2) 11 to 20 cigarettes"
                       3 "(3) 21 to 30 cigarettes"
                       4 "(4) 31 or more cigarettes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO19    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO21    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO22    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO24    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO25    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO26    97 "(97) Legitimate skip" ;
label define H4TO27    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO28    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO29    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO30    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO31    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO32H   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO32M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO32T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO33    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO34    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO35    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3 to 12 days in the past 12 months"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO36    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO37    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3 to 12 days in the past 12 months"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO38    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3 to 12 days in the past 12 months"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO39    0 "(0) None" 1 "(1) One day" 2 "(2) 2 or 3 days"
                       3 "(3) 1 day a week" 4 "(4) 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO40    95 "(95) Not asked on pretest" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO41    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TO42H   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO42M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO42T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO43    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO44    1 "(1) Less than 1 day a month" 2 "(2) 1 day a month"
                       3 "(3) 2 to 3 days a month" 4 "(4) 1 day a week"
                       5 "(5) 2 days a week" 6 "(6) 3 to 5 days a week"
                       7 "(7) Every day or almost every day"
                       95 "(95) Not asked on pretest" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO45    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO46    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       5 "(5) Not asked on pretest" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO47    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       5 "(5) Not asked on pretest" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO48    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       5 "(5) Not asked on pretest" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TO49    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       5 "(5) Not asked on pretest" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TO50    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H4TO51    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H4TO52    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO53    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO54    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO55    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO56    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO57    95 "(95) Not asked on pretest"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO58    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO59    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H4TO60    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO61    0 "(0) No" 1 "(1) Yes" 5 "(5) Not asked on pretest"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO62    95 "(95) Not asked on pretest"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO63    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO64A   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO64B   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO64C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO64D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO65A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO65B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO65C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO65D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO65E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TO66    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO67    97 "(97) Legitimate skip" ;
label define H4TO68    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO69    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO70    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3 to 12 days in the past 12 months"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO71    0 "(0) None" 1 "(1) One day" 2 "(2) 2 or 3 days"
                       3 "(3) 1 day a week" 4 "(4) 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO72    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TO73H   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO73M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO73T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO74    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO75    1 "(1) Less than 1 day a month" 2 "(2) 1 day a month"
                       3 "(3) 2 to 3 days a month" 4 "(4) 1 day a week"
                       5 "(5) 2 days a week" 6 "(6) 3 to 5 days a week"
                       7 "(7) Every day or almost every day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO76    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO77    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO78    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO79    0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO80    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO81    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO82    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO83    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO84    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO85    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO86    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO87    97 "(97) Legitimate skip" ;
label define H4TO88    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO89    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO90    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO91    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TO92    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO93    1 "(1) MDMA (Ecstasy)" 2 "(2) Inhalants" 3 "(3) LSD"
                       4 "(4) Heroin" 5 "(5) PCP" 6 "(6) Other illegal drugs"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO94    1 "(1) Sedatives" 2 "(2) Tranquilizers"
                       3 "(3) Stimulants" 4 "(4) Pain killers"
                       5 "(5) Steroids" 6 "(6) Cocaine"
                       7 "(7) Crystal meth (ice)" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO95    1 "(1) MDMA (Ecstasy)" 2 "(2) Inhalants" 3 "(3) LSD"
                       4 "(4) Heroin" 5 "(5) PCP" 6 "(6) Other illegal drugs"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO96    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TO97    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO98    0 "(0) None" 1 "(1) 1 or 2 days in the past 12 months"
                       2 "(2) Once a month or less (3 to 12 days in the past 12 months"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO99    0 "(0) None" 1 "(1) One day" 2 "(2) 2 or 3 days"
                       3 "(3) 1 day a week" 4 "(4) 2 days a week"
                       5 "(5) 3 to 5 days a week"
                       6 "(6) Every day or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO100   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO101H  96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4TO101M  96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H4TO101T  1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TO102   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO103   1 "(1) Less than 1 day a month" 2 "(2) 1 day a month"
                       3 "(3) 2 to 3 days a month" 4 "(4) 1 day a week"
                       5 "(5) 2 days a week" 6 "(6) 3 to 5 days a week"
                       7 "(7) Every day or almost every day"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO104   0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       7 "(7) Legitimate skip" ;
label define H4TO105   0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       7 "(7) Legitimate skip" ;
label define H4TO106   0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       7 "(7) Legitimate skip" ;
label define H4TO107   0 "(0) Never" 1 "(1) 1 time" 2 "(2) More than 1 time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TO108   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO109   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO110   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO111   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO112   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO113   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO114   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO115   97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TO116   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO117   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO118   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO119   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4TO120   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4MA1     1 "(1) One time" 2 "(2) Two times"
                       3 "(3) Three to five times" 4 "(4) Six to ten times"
                       5 "(5) More than ten times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4MA2     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4MA3     1 "(1) One time" 2 "(2) Two times"
                       3 "(3) Three to five times" 4 "(4) Six to ten times"
                       5 "(5) More than ten times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4MA4     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4MA5     1 "(1) One time" 2 "(2) Two times"
                       3 "(3) Three to five times" 4 "(4) Six to ten times"
                       5 "(5) More than ten times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4MA6     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4DA1     996 "(996) Refused" 998 "(998) Don't know" ;
label define H4DA2     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA3     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA4     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA5     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA6     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA7     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA8     7 "(7) 7 or more times" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4DA9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DA10    1 "(1) More active" 2 "(2) Less active"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4DA11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DA12H   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4DA12M   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4DA12T   1 "(1) AM" 2 "(2) PM" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA13    7 "(7) 7 or more times" 96 "(96) Refused"
                       97 "(97) Legitimate skip" ;
label define H4DA14    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4DA15A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA15B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA15C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA15D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA15E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA16    1 "(1) Very likely" 2 "(2) Somewhat likely"
                       3 "(3) Unlikely" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4DA17    995 "(995) Not asked on pretest" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H4DA18    1 "(1) 0 times" 2 "(2) 1 time" 3 "(3) 2 or 3 times"
                       4 "(4) 4 or 5 times" 5 "(5) More than 5 times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4DA19    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4DA20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4DA21    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4DA22    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4DA23    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4DA24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4DA25    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4DA26    1 "(1) 0 hours" 2 "(2) 1 to 19 hours"
                       3 "(3) 20 to 39 hours" 4 "(4) 40 to 79 hours"
                       5 "(5) 80 to 159 hours" 6 "(6) 160 hours or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4DA27    1 "(1) Never" 2 "(2) Sometimes" 3 "(3) Often"
                       4 "(4) Always" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4DA28    1 "(1) Very conservative" 2 "(2) Conservative"
                       3 "(3) Middle-of-the-road" 4 "(4) Liberal"
                       5 "(5) Very liberal" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4PE1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE9     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE13    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE16    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE17    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE21    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE22    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE25    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE26    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE27    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE28    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE29    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE30    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE31    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE32    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE33    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE34    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE35    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE36    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE37    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE38    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE39    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE40    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4PE41    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4CMONTH  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define H4ARM     1 "(1) Right" 2 "(2) Left" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4CUFF    1 "(1) Adult" 2 "(2) Large adult"
                       3 "(3) Large adult, but exceeds large adult cuff"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Invalid data" ;
label define H4CUFFLG  0 "(0) No" 1 "(1) Yes" ;
label define H4SBP     996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4DBP     996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4BPCLS   1 "(1) Normal: systolic <120, diastolic <80"
                       2 "(2) Prehypertension: systolic 120-139 or diastolic 80-89"
                       3 "(3) Hypertension I: systolic 140-159 or diastolic 90-99"
                       4 "(4) Hypertension II: systolic 160+ or diastolic 100+"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Invalid data" ;
label define H4BPFLG   1 "(1) Measures 2 & 3" 2 "(2) Measures 3 only"
                       3 "(3) Measures 2 only" 4 "(4) Measures 1 only"
                       5 "(5) No measures" ;
label define H4PR      887 "(887) Less than 40 bpm"
                       888 "(888) Greater than 200 bpm" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 999 "(999) Invalid data" ;
label define H4PP      996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4MAP     996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4HGT     996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4WGT     888 "(888) Over scale limit"
                       889 "(889) Weight inconsistent with height, waist and sex"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4WTLBS   0 "(0) No" 1 "(1) Yes" ;
label define H4BMI     888 "(888) Over limit"
                       889 "(889) Weight inconsistent with height, waist and sex"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4BMICLS  1 "(1) Underweight: <18.5" 2 "(2) Normal: 18.5-<25"
                       3 "(3) Overweight: 25-<30" 4 "(4) Obese I: 30-<35"
                       5 "(5) Obese II: 35-<40" 6 "(6) Obese III: 40+"
                       88 "(88) Over limit"
                       89 "(89) Weight inconsistent with height, waist and sex"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Invalid data" ;
label define H4WAIST   996 "(996) Refused" 997 "(997) Legitimate skip"
                       999 "(999) Invalid data" ;
label define H4IR1     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" ;
label define H4IR2     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" ;
label define H4IR3     1 "(1) Very poorly groomed" 2 "(2) Poorly groomed"
                       3 "(3) About average" 4 "(4) Well groomed"
                       5 "(5) Very well groomed" ;
label define H4IR4     1 "(1) White" 2 "(2) Black or African American"
                       3 "(3) American Indian or Alaska Native"
                       4 "(4) Asian or Pacific Islander" ;
label define H4IR5     0 "(0) No" 1 "(1) Yes" ;
label define H4IR6     1 "(1) Wife, husband, or partner"
                       2 "(2) Other adult relative"
                       3 "(3) Other adult non-relative"
                       4 "(4) Son or daughter" 5 "(5) Other child relative"
                       6 "(6) Other child non-relative"
                       7 "(7) Unable to determine relationship"
                       95 "(95) Not asked on pretest"
                       97 "(97) Legitimate skip" ;
label define H4IR7     1 "(1) No interruptions" 2 "(2) A few interruptions"
                       3 "(3) Many interruptions" ;
label define H4IR8     1 "(1) Inside repondent's residence"
                       2 "(2) Immediately outside respondent's residence"
                       3 "(3) In respondent's work location"
                       4 "(4) Inside a parent's or other relative's residence"
                       5 "(5) Immediately outside a parent's/other relative's residenc"
                       6 "(6) In interviewer's car" 7 "(7) In a library"
                       8 "(8) In a restaurant or coffee shop"
                       9 "(9) Not applicable - biomarker section was not administered"
                       10 "(10) At another location (specify in comment box)" ;
label define H4IR8A    1 "(1) Prison" 2 "(2) Office" 3 "(3) Friend's house"
                       4 "(4) Girlfriend's/boyfriend's house/apartment"
                       5 "(5) Hotel/motel" 6 "(6) School" 7 "(7) Church"
                       8 "(8) Commons area of respondent's residence"
                       9 "(9) Bookstore/other store"
                       10 "(10) Interviewer's home"
                       11 "(11) Hospital/treatment center"
                       12 "(12) Park/pavillion"
                       13 "(13) Military barracks/office"
                       14 "(14) Other location" 97 "(97) Legitimate skip" ;
label define H4IR9     1 "(1) Inside repondent's residence"
                       2 "(2) Immediately outside respondent's residence"
                       3 "(3) In respondent's work location"
                       4 "(4) Inside a parent's or other relative's residence"
                       5 "(5) Immediately outside a parent's/other relative's residenc"
                       7 "(7) In a library"
                       8 "(8) In a restaurant or coffee shop"
                       9 "(9) At another location (specify in comment box)" ;
label define H4IR9A    1 "(1) Prison" 2 "(2) Office" 3 "(3) Friend's house"
                       4 "(4) Girlfriend's/boyfriend's house/apartment"
                       5 "(5) Hotel/motel" 6 "(6) School" 7 "(7) Church"
                       8 "(8) Commons area of respondent's residence"
                       9 "(9) Bookstore/other store"
                       10 "(10) Interviewer's home"
                       11 "(11) Hospital/treatment center"
                       12 "(12) Park/pavillion"
                       13 "(13) Military barracks/office"
                       14 "(14) Other location" 97 "(97) Legitimate skip" ;
label define H4IR10    1 "(1) Yes" 2 "(2) No" 3 "(3) Perhaps" ;
label define H4IR11    0 "(0) No" 1 "(1) Yes" ;
label define H4IR12    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4IR13    0 "(0) No" 1 "(1) Yes" ;
label define H4IR14    2 "(2) No"
                       3 "(3) Yes, all of the self-administered questions"
                       4 "(4) Yes, some of the self-administered questions" ;
label define H4EO1     0 "(0) No" 1 "(1) Yes" ;
label define H4EO2     1 "(1) Using CDF" 2 "(2) Reporting based on memory"
                       7 "(7) Legitimate skip" ;
label define H4EO3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4EO4     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H4EO5A    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5B    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5C    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5D    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5E    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5F    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5G    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5H    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5I    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO5J    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip" ;
label define H4EO6     1 "(1) Rural farm" 2 "(2) Rural town" 3 "(3) Suburban"
                       4 "(4) Urban, residential only"
                       5 "(5) 3 or more commercial properties, mostly retail"
                       6 "(6) 3 or more commercial properties, mostly wholesale/indust"
                       7 "(7) Other (specify)" 97 "(97) Legitimate skip" ;
label define H4EO7     1 "(1) Very safe" 2 "(2) Moderately safe"
                       3 "(3) Moderately unsafe" 4 "(4) Very unsafe"
                       7 "(7) Legitimate skip" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace H4OD3 = . if (H4OD3 == 97)
replace H4OD5 = . if (H4OD5 == 7)
replace H4OD6Y = . if (H4OD6Y == 9997 | H4OD6Y == 9998)
replace H4OD7 = . if (H4OD7 == 7 | H4OD7 == 8)
replace H4WP1 = . if (H4WP1 == 8)
replace H4WP2Y = . if (H4WP2Y == 9997 | H4WP2Y == 9998)
replace H4WP3 = . if (H4WP3 == 6 | H4WP3 == 8)
replace H4WP4 = . if (H4WP4 == 97 | H4WP4 == 98)
replace H4WP5 = . if (H4WP5 >= 94 & H4WP5 <= 98)
replace H4WP6 = . if (H4WP6 >= 94 & H4WP6 <= 98)
replace H4WP7 = . if (H4WP7 == 8)
replace H4WP8Y = . if (H4WP8Y == 9996 | H4WP8Y == 9997 | H4WP8Y == 9998)
replace H4WP9 = . if (H4WP9 == 6 | H4WP9 == 8)
replace H4WP10 = . if (H4WP10 == 96 | H4WP10 == 97 | H4WP10 == 98)
replace H4WP11 = . if (H4WP11 >= 94 & H4WP11 <= 98)
replace H4WP12 = . if (H4WP12 >= 94 & H4WP12 <= 98)
replace H4WP13 = . if (H4WP13 == 98)
replace H4WP14 = . if (H4WP14 == 7 | H4WP14 == 8)
replace H4WP15Y = . if (H4WP15Y == 9997 | H4WP15Y == 9998)
replace H4WP16 = . if (H4WP16 == 7 | H4WP16 == 8)
replace H4WP17 = . if (H4WP17 == 7)
replace H4WP18 = . if (H4WP18 >= 93 & H4WP18 <= 98)
replace H4WP19 = . if (H4WP19 >= 93 & H4WP19 <= 98)
replace H4WP20 = . if (H4WP20 == 97 | H4WP20 == 98)
replace H4WP21 = . if (H4WP21 == 7 | H4WP21 == 8)
replace H4WP22 = . if (H4WP22 == 7)
replace H4WP23 = . if (H4WP23 == 7)
replace H4WP24 = . if (H4WP24 == 7)
replace H4WP25 = . if (H4WP25 == 6 | H4WP25 == 7 | H4WP25 == 8)
replace H4WP26 = . if (H4WP26 == 6 | H4WP26 == 7)
replace H4WP27 = . if (H4WP27 == 96)
replace H4WP28 = . if (H4WP28 == 7 | H4WP28 == 8)
replace H4WP29Y = . if (H4WP29Y == 9997 | H4WP29Y == 9998)
replace H4WP30 = . if (H4WP30 == 7 | H4WP30 == 8)
replace H4WP31 = . if (H4WP31 == 97 | H4WP31 == 98)
replace H4WP32 = . if (H4WP32 >= 94 & H4WP32 <= 98)
replace H4WP33 = . if (H4WP33 >= 94 & H4WP33 <= 98)
replace H4WP34 = . if (H4WP34 == 97 | H4WP34 == 98)
replace H4WP35 = . if (H4WP35 == 7 | H4WP35 == 8)
replace H4WP36 = . if (H4WP36 == 7)
replace H4WP37 = . if (H4WP37 == 7 | H4WP37 == 8)
replace H4WP38 = . if (H4WP38 == 7 | H4WP38 == 8)
replace H4WP39 = . if (H4WP39 == 6 | H4WP39 == 7 | H4WP39 == 8)
replace H4WP40 = . if (H4WP40 == 6 | H4WP40 == 7 | H4WP40 == 8)
replace H4WS1 = . if (H4WS1 == 96 | H4WS1 == 98)
replace H4WS2 = . if (H4WS2 == 96 | H4WS2 == 97 | H4WS2 == 98)
replace H4WS4 = . if (H4WS4 == 95 | H4WS4 == 96 | H4WS4 == 98)
replace H4WS5 = . if (H4WS5 == 96 | H4WS5 == 97 | H4WS5 == 98)
replace H4GH2 = . if (H4GH2 == 7 | H4GH2 == 8)
replace H4GH3M = . if (H4GH3M == 96 | H4GH3M == 97 | H4GH3M == 98)
replace H4GH3D = . if (H4GH3D == 96 | H4GH3D == 97)
replace H4GH3Y = . if (H4GH3Y == 9997 | H4GH3Y == 9998)
replace H4GH4A = . if (H4GH4A == 997 | H4GH4A == 998)
replace H4GH4B = . if (H4GH4B == 6 | H4GH4B == 7 | H4GH4B == 8)
replace H4GH5F = . if (H4GH5F == 98)
replace H4GH5I = . if (H4GH5I == 98)
replace H4GH6 = . if (H4GH6 == 996 | H4GH6 == 998)
replace H4GH7 = . if (H4GH7 == 6 | H4GH7 == 8)
replace H4GH8 = . if (H4GH8 == 996 | H4GH8 == 998)
replace H4GH9 = . if (H4GH9 == 998)
replace H4GH10 = . if (H4GH10 == 996 | H4GH10 == 998)
replace H4GH11H = . if (H4GH11H == 96 | H4GH11H == 98)
replace H4GH11M = . if (H4GH11M == 96 | H4GH11M == 98)
replace H4GH11T = . if (H4GH11T == 6 | H4GH11T == 8)
replace H4GH12 = . if (H4GH12 == 8)
replace H4GH13H = . if (H4GH13H == 96 | H4GH13H == 97 | H4GH13H == 98)
replace H4GH13M = . if (H4GH13M == 96 | H4GH13M == 97 | H4GH13M == 98)
replace H4GH13T = . if (H4GH13T == 6 | H4GH13T == 7 | H4GH13T == 8)
replace H4HS1 = . if (H4HS1 == 98)
replace H4HS2A = . if (H4HS2A == 7 | H4HS2A == 8)
replace H4HS2B = . if (H4HS2B == 7 | H4HS2B == 8)
replace H4HS2C = . if (H4HS2C == 7 | H4HS2C == 8)
replace H4HS2D = . if (H4HS2D == 5 | H4HS2D == 7 | H4HS2D == 8)
replace H4HS3 = . if (H4HS3 == 98)
replace H4HS4 = . if (H4HS4 == 8)
replace H4HS5 = . if (H4HS5 == 7 | H4HS5 == 8)
replace H4HS6 = . if (H4HS6 == 98)
replace H4HS7 = . if (H4HS7 == 98)
replace H4HS9 = . if (H4HS9 == 8)
replace H4ID1 = . if (H4ID1 == 8)
replace H4ID2 = . if (H4ID2 == 7 | H4ID2 == 8)
replace H4ID3 = . if (H4ID3 == 7 | H4ID3 == 8)
replace H4ID4 = . if (H4ID4 == 5)
replace H4ID5B = . if (H4ID5B == 6 | H4ID5B == 8)
replace H4ID5C = . if (H4ID5C == 6 | H4ID5C == 8)
replace H4ID5D = . if (H4ID5D == 6)
replace H4ID5E = . if (H4ID5E == 6)
replace H4ID5F = . if (H4ID5F == 6)
replace H4ID5G = . if (H4ID5G == 6)
replace H4ID5H = . if (H4ID5H == 6)
replace H4ID5I = . if (H4ID5I == 6)
replace H4ID5J = . if (H4ID5J == 6)
replace H4ID5K = . if (H4ID5K == 6)
replace H4ID5L = . if (H4ID5L == 6)
replace H4ID5N = . if (H4ID5N == 5 | H4ID5N == 6)
replace H4ID11 = . if (H4ID11 == 8)
replace H4ID12 = . if (H4ID12 == 8)
replace H4ID14 = . if (H4ID14 == 6 | H4ID14 == 7)
replace H4ID15 = . if (H4ID15 == 6 | H4ID15 == 7 | H4ID15 == 8)
replace H4ID19 = . if (H4ID19 == 7)
replace H4ID20 = . if (H4ID20 == 8)
replace H4ID21 = . if (H4ID21 == 97 | H4ID21 == 98)
replace H4ID22 = . if (H4ID22 == 7)
replace H4ID23 = . if (H4ID23 == 8)
replace H4ID24 = . if (H4ID24 == 97 | H4ID24 == 98)
replace H4ID25 = . if (H4ID25 == 97 | H4ID25 == 98)
replace H4ID26 = . if (H4ID26 == 97 | H4ID26 == 98)
replace H4SP1H = . if (H4SP1H == 96 | H4SP1H == 98)
replace H4SP1M = . if (H4SP1M == 96 | H4SP1M == 98)
replace H4SP1T = . if (H4SP1T == 6 | H4SP1T == 8)
replace H4SP2H = . if (H4SP2H == 96 | H4SP2H == 98)
replace H4SP2M = . if (H4SP2M == 96 | H4SP2M == 98)
replace H4SP2T = . if (H4SP2T == 6 | H4SP2T == 8)
replace H4SP3H = . if (H4SP3H == 96 | H4SP3H == 98)
replace H4SP3M = . if (H4SP3M == 96 | H4SP3M == 98)
replace H4SP3T = . if (H4SP3T == 6 | H4SP3T == 8)
replace H4SP4H = . if (H4SP4H == 96 | H4SP4H == 98)
replace H4SP4M = . if (H4SP4M == 96 | H4SP4M == 98)
replace H4SP4T = . if (H4SP4T == 6 | H4SP4T == 8)
replace H4SP5 = . if (H4SP5 == 5 | H4SP5 == 8)
replace H4SP6 = . if (H4SP6 == 5 | H4SP6 == 8)
replace H4SP7 = . if (H4SP7 == 5 | H4SP7 == 8)
replace H4HR1 = . if (H4HR1 == 96)
replace H4HR2 = . if (H4HR2 == 97)
replace H4HR3 = . if (H4HR3 == 6 | H4HR3 == 7 | H4HR3 == 8)
replace H4HR4 = . if (H4HR4 == 96 | H4HR4 == 97 | H4HR4 == 98)
replace H4HR5A = . if (H4HR5A == 7)
replace H4HR6A = . if (H4HR6A == 996 | H4HR6A == 997 | H4HR6A == 998)
replace H4HR7A = . if (H4HR7A == 997 | H4HR7A == 998)
replace H4HR8A = . if (H4HR8A == 96 | H4HR8A == 97 | H4HR8A == 98)
replace H4HR9A = . if (H4HR9A == 97)
replace H4HR5B = . if (H4HR5B == 6 | H4HR5B == 7)
replace H4HR6B = . if (H4HR6B == 996 | H4HR6B == 997 | H4HR6B == 998)
replace H4HR7B = . if (H4HR7B == 997 | H4HR7B == 998)
replace H4HR8B = . if (H4HR8B == 96 | H4HR8B == 97)
replace H4HR9B = . if (H4HR9B == 97)
replace H4HR5C = . if (H4HR5C == 6 | H4HR5C == 7)
replace H4HR6C = . if (H4HR6C == 996 | H4HR6C == 997 | H4HR6C == 998)
replace H4HR7C = . if (H4HR7C == 997 | H4HR7C == 998)
replace H4HR8C = . if (H4HR8C == 96 | H4HR8C == 97)
replace H4HR9C = . if (H4HR9C == 97 | H4HR9C == 98)
replace H4HR5D = . if (H4HR5D == 6 | H4HR5D == 7)
replace H4HR6D = . if (H4HR6D == 996 | H4HR6D == 997 | H4HR6D == 998)
replace H4HR7D = . if (H4HR7D == 997 | H4HR7D == 998)
replace H4HR8D = . if (H4HR8D == 96 | H4HR8D == 97)
replace H4HR9D = . if (H4HR9D == 97)
replace H4HR5E = . if (H4HR5E == 7)
replace H4HR6E = . if (H4HR6E == 997 | H4HR6E == 998)
replace H4HR7E = . if (H4HR7E == 997)
replace H4HR8E = . if (H4HR8E == 97)
replace H4HR9E = . if (H4HR9E == 97)
replace H4HR5F = . if (H4HR5F == 7)
replace H4HR6F = . if (H4HR6F == 997)
replace H4HR7F = . if (H4HR7F == 997)
replace H4HR8F = . if (H4HR8F == 97)
replace H4HR9F = . if (H4HR9F == 97)
replace H4HR5G = . if (H4HR5G == 7)
replace H4HR6G = . if (H4HR6G == 997)
replace H4HR7G = . if (H4HR7G == 997)
replace H4HR8G = . if (H4HR8G == 97)
replace H4HR9G = . if (H4HR9G == 97)
replace H4HR5H = . if (H4HR5H == 7)
replace H4HR6H = . if (H4HR6H == 997)
replace H4HR7H = . if (H4HR7H == 997)
replace H4HR8H = . if (H4HR8H == 97)
replace H4HR9H = . if (H4HR9H == 97)
replace H4HR5I = . if (H4HR5I == 7)
replace H4HR6I = . if (H4HR6I == 997)
replace H4HR7I = . if (H4HR7I == 997)
replace H4HR8I = . if (H4HR8I == 97)
replace H4HR9I = . if (H4HR9I == 97)
replace H4HR5J = . if (H4HR5J == 7)
replace H4HR6J = . if (H4HR6J == 997)
replace H4HR7J = . if (H4HR7J == 997)
replace H4HR8J = . if (H4HR8J == 97)
replace H4HR9J = . if (H4HR9J == 97)
replace H4HR5K = . if (H4HR5K == 7)
replace H4HR6K = . if (H4HR6K == 997)
replace H4HR7K = . if (H4HR7K == 997)
replace H4HR8K = . if (H4HR8K == 97)
replace H4HR9K = . if (H4HR9K == 97)
replace H4HR5L = . if (H4HR5L == 7)
replace H4HR6L = . if (H4HR6L == 997)
replace H4HR7L = . if (H4HR7L == 997)
replace H4HR8L = . if (H4HR8L == 97)
replace H4HR9L = . if (H4HR9L == 97)
replace H4HR5M = . if (H4HR5M == 7)
replace H4HR6M = . if (H4HR6M == 997)
replace H4HR7M = . if (H4HR7M == 997)
replace H4HR8M = . if (H4HR8M == 97)
replace H4HR9M = . if (H4HR9M == 97)
replace H4HR5N = . if (H4HR5N == 7)
replace H4HR6N = . if (H4HR6N == 997)
replace H4HR7N = . if (H4HR7N == 997)
replace H4HR8N = . if (H4HR8N == 97)
replace H4HR9N = . if (H4HR9N == 97)
replace H4HR5O = . if (H4HR5O == 7)
replace H4HR6O = . if (H4HR6O == 997)
replace H4HR7O = . if (H4HR7O == 997)
replace H4HR8O = . if (H4HR8O == 97)
replace H4HR9O = . if (H4HR9O == 97)
replace H4HR5P = . if (H4HR5P == 7)
replace H4HR6P = . if (H4HR6P == 997)
replace H4HR7P = . if (H4HR7P == 997)
replace H4HR8P = . if (H4HR8P == 97)
replace H4HR9P = . if (H4HR9P == 97)
replace H4HR10 = . if (H4HR10 == 8)
replace H4HR11YA = . if (H4HR11YA == 9996 | H4HR11YA == 9997 | H4HR11YA == 9998)
replace H4HR11YB = . if (H4HR11YB == 9996 | H4HR11YB == 9997 | H4HR11YB == 9998)
replace H4HR11YC = . if (H4HR11YC == 9997 | H4HR11YC == 9998)
replace H4HR11YD = . if (H4HR11YD == 9997 | H4HR11YD == 9998)
replace H4HR11YE = . if (H4HR11YE == 9997 | H4HR11YE == 9998)
replace H4HR11YF = . if (H4HR11YF == 9994 | H4HR11YF == 9997 | H4HR11YF == 9998)
replace H4HR11YG = . if (H4HR11YG == 9994 | H4HR11YG == 9997 | H4HR11YG == 9998)
replace H4HR11YH = . if (H4HR11YH == 9994 | H4HR11YH == 9997 | H4HR11YH == 9998)
replace H4HR11YI = . if (H4HR11YI == 9994 | H4HR11YI == 9997 | H4HR11YI == 9998)
replace H4HR11YJ = . if (H4HR11YJ == 9994 | H4HR11YJ == 9997 | H4HR11YJ == 9998)
replace H4HR11YK = . if (H4HR11YK == 9994 | H4HR11YK == 9997)
replace H4HR11YL = . if (H4HR11YL == 9994 | H4HR11YL == 9997 | H4HR11YL == 9998)
replace H4HR11YM = . if (H4HR11YM == 9994 | H4HR11YM == 9997)
replace H4HR11YN = . if (H4HR11YN == 9994 | H4HR11YN == 9997)
replace H4HR11YO = . if (H4HR11YO == 9994 | H4HR11YO == 9997)
replace H4ED1 = . if (H4ED1 == 8)
replace H4ED2 = . if (H4ED2 == 98)
replace H4ED3A = . if (H4ED3A == 97 | H4ED3A == 98)
replace H4ED3B = . if (H4ED3B == 97)
replace H4ED3C = . if (H4ED3C == 97 | H4ED3C == 98)
replace H4ED3D = . if (H4ED3D == 7)
replace H4ED3E = . if (H4ED3E == 7)
replace H4ED3F = . if (H4ED3F == 7)
replace H4ED3G = . if (H4ED3G == 7)
replace H4ED3H = . if (H4ED3H == 7)
replace H4ED4A = . if (H4ED4A == 9997 | H4ED4A == 9998)
replace H4ED4B = . if (H4ED4B == 9997 | H4ED4B == 9998)
replace H4ED4C = . if (H4ED4C == 9997)
replace H4ED4D = . if (H4ED4D == 9997)
replace H4ED4E = . if (H4ED4E == 9997)
replace H4ED4F = . if (H4ED4F == 9997)
replace H4ED4G = . if (H4ED4G == 9997)
replace H4ED4H = . if (H4ED4H == 9997)
replace H4ED5A = . if (H4ED5A == 7)
replace H4ED5B = . if (H4ED5B == 7)
replace H4ED5C = . if (H4ED5C == 7)
replace H4ED5D = . if (H4ED5D == 7)
replace H4ED5E = . if (H4ED5E == 7)
replace H4ED5F = . if (H4ED5F == 7)
replace H4ED5G = . if (H4ED5G == 7)
replace H4ED5H = . if (H4ED5H == 7)
replace H4ED6 = . if (H4ED6 == 6 | H4ED6 == 8)
replace H4ED7 = . if (H4ED7 == 5 | H4ED7 == 6 | H4ED7 == 8)
replace H4ED8 = . if (H4ED8 == 6 | H4ED8 == 8)
replace H4ED9 = . if (H4ED9 == 96 | H4ED9 == 97 | H4ED9 == 98)
replace H4MI2 = . if (H4MI2 == 7)
replace H4MI3 = . if (H4MI3 == 7)
replace H4MI4A = . if (H4MI4A == 7)
replace H4MI4B = . if (H4MI4B == 7)
replace H4MI4C = . if (H4MI4C == 7)
replace H4MI4D = . if (H4MI4D == 7)
replace H4MI4E = . if (H4MI4E == 7)
replace H4MI5 = . if (H4MI5 == 7)
replace H4MI6A = . if (H4MI6A == 7 | H4MI6A == 8)
replace H4MI6B = . if (H4MI6B == 7 | H4MI6B == 8)
replace H4MI6C = . if (H4MI6C == 7 | H4MI6C == 8)
replace H4MI7 = . if (H4MI7 == 7)
replace H4MI8Y = . if (H4MI8Y == 9996 | H4MI8Y == 9997)
replace H4MI9Y = . if (H4MI9Y == 9996 | H4MI9Y == 9997 | H4MI9Y == 9998)
replace H4MI10 = . if (H4MI10 == 94 | H4MI10 == 97 | H4MI10 == 98)
replace H4MI11Y = . if (H4MI11Y == 97)
replace H4MI11M = . if (H4MI11M == 97)
replace H4MI12Y = . if (H4MI12Y == 97)
replace H4MI12M = . if (H4MI12M == 97)
replace H4MI13 = . if (H4MI13 >= 995 & H4MI13 <= 998)
replace H4MI14 = . if (H4MI14 == 6 | H4MI14 == 7 | H4MI14 == 8)
replace H4MI15 = . if (H4MI15 == 7)
replace H4MI16A = . if (H4MI16A == 7)
replace H4MI16B = . if (H4MI16B == 7)
replace H4MI16C = . if (H4MI16C == 7)
replace H4MI16D = . if (H4MI16D == 7)
replace H4MI17 = . if (H4MI17 == 5 | H4MI17 == 7)
replace H4LM1 = . if (H4LM1 == 6)
replace H4LM2 = . if (H4LM2 == 6 | H4LM2 == 7)
replace H4LM3 = . if (H4LM3 == 96 | H4LM3 == 97 | H4LM3 == 98)
replace H4LM4 = . if (H4LM4 == 97 | H4LM4 == 98)
replace H4LM5 = . if (H4LM5 == 97 | H4LM5 == 98)
replace H4LM6 = . if (H4LM6 == 7)
replace H4LM7 = . if (H4LM7 == 7)
replace H4LM8 = "" if (H4LM8 == "9999995" | H4LM8 == "9999997" | H4LM8 == "9999998")
replace H4LM9M = . if (H4LM9M == 97 | H4LM9M == 98)
replace H4LM9Y = . if (H4LM9Y == 97 | H4LM9Y == 98)
replace H4LM10 = . if (H4LM10 == 7)
replace H4LM11 = . if (H4LM11 == 6 | H4LM11 == 7)
replace H4LM12 = . if (H4LM12 == 97 | H4LM12 == 98)
replace H4LM13 = . if (H4LM13 == 997)
replace H4LM14 = . if (H4LM14 == 96 | H4LM14 == 97)
replace H4LM15Y = . if (H4LM15Y == 9996 | H4LM15Y == 9997 | H4LM15Y == 9998)
replace H4LM16Y = . if (H4LM16Y == 9996 | H4LM16Y == 9997 | H4LM16Y == 9998)
replace H4LM17 = . if (H4LM17 == 96 | H4LM17 == 97 | H4LM17 == 98)
replace H4LM19 = . if (H4LM19 == 996 | H4LM19 == 997 | H4LM19 == 998)
replace H4LM20 = . if (H4LM20 == 96 | H4LM20 == 97)
replace H4LM21A = . if (H4LM21A == 6 | H4LM21A == 7 | H4LM21A == 8)
replace H4LM21B = . if (H4LM21B == 6 | H4LM21B == 7 | H4LM21B == 8)
replace H4LM21C = . if (H4LM21C == 6 | H4LM21C == 7 | H4LM21C == 8)
replace H4LM22 = . if (H4LM22 == 95 | H4LM22 == 97 | H4LM22 == 98)
replace H4LM23 = . if (H4LM23 == 6 | H4LM23 == 7 | H4LM23 == 8)
replace H4LM24 = . if (H4LM24 == 6 | H4LM24 == 7 | H4LM24 == 8)
replace H4LM25 = . if (H4LM25 == 6 | H4LM25 == 7 | H4LM25 == 8)
replace H4LM26 = . if (H4LM26 == 96 | H4LM26 == 97 | H4LM26 == 98)
replace H4LM27 = . if (H4LM27 == 6 | H4LM27 == 7 | H4LM27 == 8)
replace H4LM28 = . if (H4LM28 == 96 | H4LM28 == 98)
replace H4LM29 = . if (H4LM29 == 6 | H4LM29 == 7 | H4LM29 == 8)
replace H4LM30 = . if (H4LM30 == 6 | H4LM30 == 7 | H4LM30 == 8)
replace H4EC1 = . if (H4EC1 == 96 | H4EC1 == 98)
replace H4EC2 = . if (H4EC2 == 9999996 | H4EC2 == 9999998)
replace H4EC3 = . if (H4EC3 == 96 | H4EC3 == 97 | H4EC3 == 98)
replace H4EC4 = . if (H4EC4 == 6 | H4EC4 == 8)
replace H4EC5 = . if (H4EC5 == 9999996 | H4EC5 == 9999997 | H4EC5 == 9999998)
replace H4EC6 = . if (H4EC6 == 6 | H4EC6 == 8)
replace H4EC7 = . if (H4EC7 == 96 | H4EC7 == 98)
replace H4EC8 = . if (H4EC8 == 96 | H4EC8 == 98)
replace H4EC9 = . if (H4EC9 == 6 | H4EC9 == 8)
replace H4EC10 = . if (H4EC10 == 6 | H4EC10 == 8)
replace H4EC11 = . if (H4EC11 == 6 | H4EC11 == 8)
replace H4EC12 = . if (H4EC12 == 6 | H4EC12 == 8)
replace H4EC13 = . if (H4EC13 == 6 | H4EC13 == 8)
replace H4EC14 = . if (H4EC14 == 6 | H4EC14 == 8)
replace H4EC15 = . if (H4EC15 == 6 | H4EC15 == 8)
replace H4EC16 = . if (H4EC16 == 6 | H4EC16 == 7 | H4EC16 == 8)
replace H4EC17 = . if (H4EC17 == 97 | H4EC17 == 98)
replace H4EC18 = . if (H4EC18 == 6 | H4EC18 == 8)
replace H4EC19 = . if (H4EC19 == 96 | H4EC19 == 98)
replace H4RE1 = . if (H4RE1 == 96 | H4RE1 == 98)
replace H4RE2 = . if (H4RE2 == 6 | H4RE2 == 7 | H4RE2 == 8)
replace H4RE3 = . if (H4RE3 == 96 | H4RE3 == 97 | H4RE3 == 98)
replace H4RE4 = . if (H4RE4 == 7 | H4RE4 == 8)
replace H4RE5 = . if (H4RE5 == 7)
replace H4RE6 = . if (H4RE6 >= 94 & H4RE6 <= 98)
replace H4RE7 = . if (H4RE7 == 8)
replace H4RE8 = . if (H4RE8 == 8)
replace H4RE9 = . if (H4RE9 == 6 | H4RE9 == 8)
replace H4RE10 = . if (H4RE10 == 96 | H4RE10 == 98)
replace H4RE11 = . if (H4RE11 == 6 | H4RE11 == 8)
replace H4MH1 = . if (H4MH1 == 5)
replace C4WD90_1 = . if (C4WD90_1 == 96 | C4WD90_1 == 99)
replace C4WD90_2 = . if (C4WD90_2 == 96 | C4WD90_2 == 99)
replace C4WD90_3 = . if (C4WD90_3 == 96 | C4WD90_3 == 99)
replace H4MH2 = . if (H4MH2 == 8)
replace H4MH3 = . if (H4MH3 == 6 | H4MH3 == 8)
replace H4MH4 = . if (H4MH4 == 6 | H4MH4 == 8)
replace H4MH5 = . if (H4MH5 == 6 | H4MH5 == 8)
replace H4MH6 = . if (H4MH6 == 6 | H4MH6 == 8)
replace H4MH7 = . if (H4MH7 == 96 | H4MH7 == 98)
replace H4MH8 = . if (H4MH8 == 6 | H4MH8 == 8)
replace H4MH10 = . if (H4MH10 == 5 | H4MH10 == 6)
replace C4WD60_1 = . if (C4WD60_1 == 96)
replace C4WD60_2 = . if (C4WD60_2 == 96)
replace C4WD60_3 = . if (C4WD60_3 == 96)
replace H4MH11A = . if (H4MH11A == 6)
replace H4MH11B = . if (H4MH11B == 6 | H4MH11B == 7)
replace H4MH12A = . if (H4MH12A == 6 | H4MH12A == 7)
replace H4MH12B = . if (H4MH12B == 6 | H4MH12B == 7)
replace H4MH13A = . if (H4MH13A == 6 | H4MH13A == 7 | H4MH13A == 8)
replace H4MH13B = . if (H4MH13B == 6 | H4MH13B == 7 | H4MH13B == 8)
replace H4MH14A = . if (H4MH14A == 6 | H4MH14A == 7 | H4MH14A == 8)
replace H4MH14B = . if (H4MH14B == 6 | H4MH14B == 7 | H4MH14B == 8)
replace H4MH15A = . if (H4MH15A == 6 | H4MH15A == 7 | H4MH15A == 8)
replace H4MH15B = . if (H4MH15B == 6 | H4MH15B == 7)
replace H4MH16A = . if (H4MH16A == 6 | H4MH16A == 7 | H4MH16A == 8)
replace H4MH16B = . if (H4MH16B == 6 | H4MH16B == 7)
replace H4MH17A = . if (H4MH17A == 6 | H4MH17A == 7 | H4MH17A == 8)
replace H4MH17B = . if (H4MH17B == 6 | H4MH17B == 7)
replace C4NUMSCR = . if (C4NUMSCR == 96)
replace H4MH18 = . if (H4MH18 == 6 | H4MH18 == 8)
replace H4MH19 = . if (H4MH19 == 6)
replace H4MH20 = . if (H4MH20 == 6 | H4MH20 == 8)
replace H4MH21 = . if (H4MH21 == 6)
replace H4MH22 = . if (H4MH22 == 6)
replace H4MH23 = . if (H4MH23 == 6)
replace H4MH24 = . if (H4MH24 == 6)
replace H4MH25 = . if (H4MH25 == 6)
replace H4MH26 = . if (H4MH26 == 6)
replace H4MH27 = . if (H4MH27 == 6 | H4MH27 == 8)
replace H4MH28 = . if (H4MH28 == 6)
replace H4MH29 = . if (H4MH29 == 96 | H4MH29 == 97 | H4MH29 == 98)
replace H4SE1 = . if (H4SE1 == 6 | H4SE1 == 7 | H4SE1 == 8)
replace H4SE2 = . if (H4SE2 == 6 | H4SE2 == 7 | H4SE2 == 8)
replace H4SE3 = . if (H4SE3 == 7)
replace H4SE4 = . if (H4SE4 == 6 | H4SE4 == 7 | H4SE4 == 8)
replace H4SE5 = . if (H4SE5 == 7)
replace H4SE6 = . if (H4SE6 == 6 | H4SE6 == 8)
replace H4SE7 = . if (H4SE7 == 96 | H4SE7 == 97 | H4SE7 == 98)
replace H4SE8 = . if (H4SE8 >= 9995 & H4SE8 <= 9998)
replace H4SE9 = . if (H4SE9 == 6 | H4SE9 == 8)
replace H4SE10 = . if (H4SE10 == 96 | H4SE10 == 97 | H4SE10 == 98)
replace H4SE11 = . if (H4SE11 == 6 | H4SE11 == 8)
replace H4SE12 = . if (H4SE12 == 96 | H4SE12 == 97 | H4SE12 == 98)
replace H4SE13 = . if (H4SE13 == 996 | H4SE13 == 998)
replace H4SE14 = . if (H4SE14 == 6 | H4SE14 == 7 | H4SE14 == 8)
replace H4SE15 = . if (H4SE15 == 996 | H4SE15 == 997 | H4SE15 == 998)
replace H4SE16 = . if (H4SE16 == 6 | H4SE16 == 7 | H4SE16 == 8)
replace H4SE17 = . if (H4SE17 == 96 | H4SE17 == 97 | H4SE17 == 98)
replace H4SE18 = . if (H4SE18 == 7 | H4SE18 == 8)
replace H4SE19 = . if (H4SE19 == 996 | H4SE19 == 998)
replace H4SE20 = . if (H4SE20 == 7 | H4SE20 == 8)
replace H4SE21 = . if (H4SE21 == 996 | H4SE21 == 997 | H4SE21 == 998)
replace H4SE22 = . if (H4SE22 == 6 | H4SE22 == 7 | H4SE22 == 8)
replace H4SE23 = . if (H4SE23 == 96 | H4SE23 == 97 | H4SE23 == 98)
replace H4SE24 = . if (H4SE24 == 6 | H4SE24 == 7 | H4SE24 == 8)
replace H4SE25 = . if (H4SE25 == 996 | H4SE25 == 997 | H4SE25 == 998)
replace H4SE26A = . if (H4SE26A == 6 | H4SE26A == 7 | H4SE26A == 8)
replace H4SE26B = . if (H4SE26B == 6 | H4SE26B == 7 | H4SE26B == 8)
replace H4SE26C = . if (H4SE26C == 6 | H4SE26C == 7 | H4SE26C == 8)
replace H4SE26D = . if (H4SE26D == 6 | H4SE26D == 7 | H4SE26D == 8)
replace H4SE26E = . if (H4SE26E == 6 | H4SE26E == 7 | H4SE26E == 8)
replace H4SE26F = . if (H4SE26F == 6 | H4SE26F == 7 | H4SE26F == 8)
replace H4SE26G = . if (H4SE26G == 6 | H4SE26G == 7 | H4SE26G == 8)
replace H4SE26H = . if (H4SE26H == 6 | H4SE26H == 7 | H4SE26H == 8)
replace H4SE26I = . if (H4SE26I == 6 | H4SE26I == 7 | H4SE26I == 8)
replace H4SE26J = . if (H4SE26J == 6 | H4SE26J == 7 | H4SE26J == 8)
replace H4SE26K = . if (H4SE26K == 6 | H4SE26K == 7 | H4SE26K == 8)
replace H4SE26L = . if (H4SE26L == 6 | H4SE26L == 7 | H4SE26L == 8)
replace H4SE26M = . if (H4SE26M == 6 | H4SE26M == 7 | H4SE26M == 8)
replace H4SE26N = . if (H4SE26N == 6 | H4SE26N == 7 | H4SE26N == 8)
replace H4SE26O = . if (H4SE26O == 6 | H4SE26O == 7 | H4SE26O == 8)
replace H4SE26P = . if (H4SE26P == 6 | H4SE26P == 7 | H4SE26P == 8)
replace H4SE26Q = . if (H4SE26Q == 6 | H4SE26Q == 7 | H4SE26Q == 8)
replace H4SE26R = . if (H4SE26R == 6 | H4SE26R == 7 | H4SE26R == 8)
replace H4SE26S = . if (H4SE26S == 6 | H4SE26S == 7 | H4SE26S == 8)
replace H4SE26T = . if (H4SE26T == 6 | H4SE26T == 7 | H4SE26T == 8)
replace H4SE26V = . if (H4SE26V == 6 | H4SE26V == 7 | H4SE26V == 8)
replace H4SE27 = . if (H4SE27 == 6 | H4SE27 == 7 | H4SE27 == 8)
replace H4SE28 = . if (H4SE28 == 6 | H4SE28 == 7 | H4SE28 == 8)
replace H4SE29 = . if (H4SE29 == 6 | H4SE29 == 8)
replace H4SE30 = . if (H4SE30 == 6 | H4SE30 == 8)
replace H4SE31 = . if (H4SE31 == 96 | H4SE31 == 98)
replace H4SE32 = . if (H4SE32 == 6 | H4SE32 == 8)
replace H4SE33 = . if (H4SE33 == 96 | H4SE33 == 97 | H4SE33 == 98)
replace H4SE34 = . if (H4SE34 == 6 | H4SE34 == 8)
replace H4SE35 = . if (H4SE35 == 96 | H4SE35 == 97 | H4SE35 == 98)
replace H4SE36A = . if (H4SE36A == 6 | H4SE36A == 8)
replace H4SE36B = . if (H4SE36B == 6 | H4SE36B == 8)
replace H4SE36C = . if (H4SE36C == 6 | H4SE36C == 8)
replace H4SE36D = . if (H4SE36D == 6 | H4SE36D == 8)
replace H4SE36E = . if (H4SE36E == 6 | H4SE36E == 8)
replace H4SE36F = . if (H4SE36F == 6 | H4SE36F == 8)
replace H4SE36G = . if (H4SE36G == 6 | H4SE36G == 8)
replace H4SE36H = . if (H4SE36H == 6 | H4SE36H == 8)
replace H4SE36I = . if (H4SE36I == 6 | H4SE36I == 8)
replace H4SE36J = . if (H4SE36J == 6 | H4SE36J == 8)
replace H4SE36K = . if (H4SE36K == 6 | H4SE36K == 8)
replace H4SE36L = . if (H4SE36L == 6 | H4SE36L == 8)
replace H4SE36N = . if (H4SE36N == 6 | H4SE36N == 8)
replace H4SE36O = . if (H4SE36O == 6 | H4SE36O == 8)
replace H4SE37A = . if (H4SE37A == 7 | H4SE37A == 8)
replace H4SE37B = . if (H4SE37B == 6 | H4SE37B == 7)
replace H4SE37C = . if (H4SE37C == 7 | H4SE37C == 8)
replace H4SE37D = . if (H4SE37D == 7)
replace H4SE37E = . if (H4SE37E == 7)
replace H4SE37F = . if (H4SE37F == 7)
replace H4SE37G = . if (H4SE37G == 7)
replace H4SE37H = . if (H4SE37H == 6 | H4SE37H == 7 | H4SE37H == 8)
replace H4SE37I = . if (H4SE37I == 6 | H4SE37I == 7)
replace H4SE37J = . if (H4SE37J == 7)
replace H4SE37K = . if (H4SE37K == 7)
replace H4SE37L = . if (H4SE37L == 7)
replace H4SE37N = . if (H4SE37N == 7)
replace H4SE37O = . if (H4SE37O == 7)
replace H4TR1 = . if (H4TR1 == 6 | H4TR1 == 8)
replace H4TR2 = . if (H4TR2 == 96 | H4TR2 == 98)
replace H4TR3 = . if (H4TR3 == 96 | H4TR3 == 98)
replace H4TR4 = . if (H4TR4 == 96 | H4TR4 == 98)
replace H4TR5 = . if (H4TR5 == 996 | H4TR5 == 998)
replace H4TR6 = . if (H4TR6 == 996 | H4TR6 == 998)
replace H4TR7 = . if (H4TR7 == 6 | H4TR7 == 7 | H4TR7 == 8)
replace H4TR8 = . if (H4TR8 == 6 | H4TR8 == 7)
replace H4TR9 = . if (H4TR9 == 96 | H4TR9 == 98)
replace H4TR10 = . if (H4TR10 == 97 | H4TR10 == 98)
replace H4TR11 = . if (H4TR11 == 97)
replace H4TR12 = . if (H4TR12 == 6 | H4TR12 == 8)
replace H4RD1 = . if (H4RD1 == 96 | H4RD1 == 97 | H4RD1 == 98)
replace H4RD2D = . if (H4RD2D == 96 | H4RD2D == 98)
replace H4RD2M = . if (H4RD2M == 96 | H4RD2M == 98)
replace H4RD2Y = . if (H4RD2Y == 96 | H4RD2Y == 98)
replace H4RD3 = . if (H4RD3 == 96 | H4RD3 == 97 | H4RD3 == 98)
replace H4RD4 = . if (H4RD4 == 6 | H4RD4 == 7 | H4RD4 == 8)
replace H4RD5 = . if (H4RD5 >= 95 & H4RD5 <= 98)
replace H4RD6 = . if (H4RD6 == 6 | H4RD6 == 7 | H4RD6 == 8)
replace H4RD7A = . if (H4RD7A == 96 | H4RD7A == 98)
replace H4RD7B = . if (H4RD7B == 96 | H4RD7B == 98)
replace H4RD7C = . if (H4RD7C == 96 | H4RD7C == 98)
replace H4RD7D = . if (H4RD7D == 96 | H4RD7D == 98)
replace H4RD7E = . if (H4RD7E == 96 | H4RD7E == 98)
replace H4RD7F = . if (H4RD7F == 96 | H4RD7F == 98)
replace H4RD7G = . if (H4RD7G == 96 | H4RD7G == 98)
replace H4RD8 = . if (H4RD8 == 6 | H4RD8 == 7 | H4RD8 == 8)
replace H4RD9 = . if (H4RD9 == 6 | H4RD9 == 7 | H4RD9 == 8)
replace H4RD10 = . if (H4RD10 == 6 | H4RD10 == 7 | H4RD10 == 8)
replace H4RD11 = . if (H4RD11 >= 5 & H4RD11 <= 8)
replace H4RD12 = . if (H4RD12 == 96 | H4RD12 == 97 | H4RD12 == 98)
replace H4RD13 = . if (H4RD13 == 96 | H4RD13 == 97 | H4RD13 == 98)
replace H4RD14 = . if (H4RD14 == 9996 | H4RD14 == 9998)
replace H4RD14T = . if (H4RD14T == 6 | H4RD14T == 8)
replace H4RD15 = . if (H4RD15 == 6 | H4RD15 == 8)
replace H4RD16 = . if (H4RD16 == 6 | H4RD16 == 8)
replace H4RD17 = . if (H4RD17 == 6 | H4RD17 == 8)
replace H4RD18 = . if (H4RD18 == 96 | H4RD18 == 98)
replace H4RD19 = . if (H4RD19 == 96 | H4RD19 == 98)
replace H4RD20 = . if (H4RD20 == 96 | H4RD20 == 97 | H4RD20 == 98)
replace H4RD21 = . if (H4RD21 == 96 | H4RD21 == 98)
replace H4RD22 = . if (H4RD22 == 96 | H4RD22 == 98)
replace H4RD23 = . if (H4RD23 == 96 | H4RD23 == 98)
replace H4RD24 = . if (H4RD24 == 96 | H4RD24 == 97 | H4RD24 == 98)
replace H4RD25 = . if (H4RD25 == 96 | H4RD25 == 98)
replace H4KK14 = . if (H4KK14 == 96 | H4KK14 == 97 | H4KK14 == 98)
replace H4KK15A = . if (H4KK15A == 96 | H4KK15A == 97 | H4KK15A == 98)
replace H4KK15B = . if (H4KK15B == 96 | H4KK15B == 97 | H4KK15B == 98)
replace H4KK15C = . if (H4KK15C == 96 | H4KK15C == 97 | H4KK15C == 98)
replace H4KK15D = . if (H4KK15D == 96 | H4KK15D == 97 | H4KK15D == 98)
replace H4DS1 = . if (H4DS1 == 6 | H4DS1 == 8)
replace H4DS2 = . if (H4DS2 == 6 | H4DS2 == 8)
replace H4DS3 = . if (H4DS3 == 6 | H4DS3 == 8)
replace H4DS4 = . if (H4DS4 == 6 | H4DS4 == 8)
replace H4DS5 = . if (H4DS5 == 6 | H4DS5 == 8)
replace H4DS6 = . if (H4DS6 == 6 | H4DS6 == 8)
replace H4DS7 = . if (H4DS7 == 6 | H4DS7 == 8)
replace H4DS8 = . if (H4DS8 == 6 | H4DS8 == 8)
replace H4DS9 = . if (H4DS9 == 6 | H4DS9 == 8)
replace H4DS10 = . if (H4DS10 == 6 | H4DS10 == 8)
replace H4DS11 = . if (H4DS11 == 6 | H4DS11 == 8)
replace H4DS12 = . if (H4DS12 == 7)
replace H4DS13 = . if (H4DS13 == 6 | H4DS13 == 8)
replace H4DS14 = . if (H4DS14 == 6 | H4DS14 == 8)
replace H4DS15 = . if (H4DS15 == 6 | H4DS15 == 8)
replace H4DS16 = . if (H4DS16 == 6 | H4DS16 == 8)
replace H4DS17 = . if (H4DS17 == 6 | H4DS17 == 8)
replace H4DS18 = . if (H4DS18 == 6 | H4DS18 == 8)
replace H4DS19 = . if (H4DS19 == 6 | H4DS19 == 8)
replace H4DS20 = . if (H4DS20 == 6 | H4DS20 == 8)
replace H4CJ1 = . if (H4CJ1 == 6 | H4CJ1 == 7 | H4CJ1 == 8)
replace H4CJ2 = . if (H4CJ2 == 6 | H4CJ2 == 7 | H4CJ2 == 8)
replace H4CJ3 = . if (H4CJ3 == 96 | H4CJ3 == 97 | H4CJ3 == 98)
replace H4CJ4 = . if (H4CJ4 == 96 | H4CJ4 == 97 | H4CJ4 == 98)
replace H4CJ5 = . if (H4CJ5 == 996 | H4CJ5 == 997 | H4CJ5 == 998)
replace H4CJ6 = . if (H4CJ6 == 96 | H4CJ6 == 97 | H4CJ6 == 98)
replace H4CJ7A = . if (H4CJ7A == 6 | H4CJ7A == 7 | H4CJ7A == 8)
replace H4CJ7B = . if (H4CJ7B == 6 | H4CJ7B == 7 | H4CJ7B == 8)
replace H4CJ7C = . if (H4CJ7C == 6 | H4CJ7C == 7 | H4CJ7C == 8)
replace H4CJ7D = . if (H4CJ7D == 6 | H4CJ7D == 7 | H4CJ7D == 8)
replace H4CJ7E = . if (H4CJ7E == 6 | H4CJ7E == 7 | H4CJ7E == 8)
replace H4CJ7F = . if (H4CJ7F == 6 | H4CJ7F == 7 | H4CJ7F == 8)
replace H4CJ7G = . if (H4CJ7G == 6 | H4CJ7G == 7 | H4CJ7G == 8)
replace H4CJ7H = . if (H4CJ7H == 6 | H4CJ7H == 7 | H4CJ7H == 8)
replace H4CJ7I = . if (H4CJ7I == 6 | H4CJ7I == 7 | H4CJ7I == 8)
replace H4CJ7J = . if (H4CJ7J == 6 | H4CJ7J == 7 | H4CJ7J == 8)
replace H4CJ7K = . if (H4CJ7K == 6 | H4CJ7K == 7 | H4CJ7K == 8)
replace H4CJ8 = . if (H4CJ8 == 96 | H4CJ8 == 97 | H4CJ8 == 98)
replace H4CJ9A = . if (H4CJ9A == 6 | H4CJ9A == 7 | H4CJ9A == 8)
replace H4CJ9B = . if (H4CJ9B == 6 | H4CJ9B == 7 | H4CJ9B == 8)
replace H4CJ9C = . if (H4CJ9C == 6 | H4CJ9C == 7 | H4CJ9C == 8)
replace H4CJ9D = . if (H4CJ9D == 6 | H4CJ9D == 7 | H4CJ9D == 8)
replace H4CJ9E = . if (H4CJ9E == 6 | H4CJ9E == 7 | H4CJ9E == 8)
replace H4CJ9F = . if (H4CJ9F == 6 | H4CJ9F == 7 | H4CJ9F == 8)
replace H4CJ9G = . if (H4CJ9G == 6 | H4CJ9G == 7 | H4CJ9G == 8)
replace H4CJ9H = . if (H4CJ9H == 6 | H4CJ9H == 7 | H4CJ9H == 8)
replace H4CJ9I = . if (H4CJ9I == 6 | H4CJ9I == 7 | H4CJ9I == 8)
replace H4CJ9J = . if (H4CJ9J == 6 | H4CJ9J == 7 | H4CJ9J == 8)
replace H4CJ9K = . if (H4CJ9K == 6 | H4CJ9K == 7 | H4CJ9K == 8)
replace H4CJ10 = . if (H4CJ10 == 6 | H4CJ10 == 7 | H4CJ10 == 8)
replace H4CJ11 = . if (H4CJ11 == 96 | H4CJ11 == 97 | H4CJ11 == 98)
replace H4CJ12 = . if (H4CJ12 == 97 | H4CJ12 == 98)
replace H4CJ13A = . if (H4CJ13A == 6 | H4CJ13A == 7 | H4CJ13A == 8)
replace H4CJ13B = . if (H4CJ13B == 6 | H4CJ13B == 7 | H4CJ13B == 8)
replace H4CJ13C = . if (H4CJ13C == 6 | H4CJ13C == 7 | H4CJ13C == 8)
replace H4CJ13D = . if (H4CJ13D == 6 | H4CJ13D == 7 | H4CJ13D == 8)
replace H4CJ13E = . if (H4CJ13E == 6 | H4CJ13E == 7 | H4CJ13E == 8)
replace H4CJ13F = . if (H4CJ13F == 6 | H4CJ13F == 7 | H4CJ13F == 8)
replace H4CJ13G = . if (H4CJ13G == 6 | H4CJ13G == 7 | H4CJ13G == 8)
replace H4CJ13H = . if (H4CJ13H == 6 | H4CJ13H == 7 | H4CJ13H == 8)
replace H4CJ13I = . if (H4CJ13I == 6 | H4CJ13I == 7 | H4CJ13I == 8)
replace H4CJ13J = . if (H4CJ13J == 6 | H4CJ13J == 7 | H4CJ13J == 8)
replace H4CJ13K = . if (H4CJ13K == 6 | H4CJ13K == 7 | H4CJ13K == 8)
replace H4CJ14 = . if (H4CJ14 == 97 | H4CJ14 == 98)
replace H4CJ15A = . if (H4CJ15A == 6 | H4CJ15A == 7 | H4CJ15A == 8)
replace H4CJ15B = . if (H4CJ15B == 6 | H4CJ15B == 7 | H4CJ15B == 8)
replace H4CJ15C = . if (H4CJ15C == 6 | H4CJ15C == 7 | H4CJ15C == 8)
replace H4CJ15D = . if (H4CJ15D == 6 | H4CJ15D == 7 | H4CJ15D == 8)
replace H4CJ15E = . if (H4CJ15E == 6 | H4CJ15E == 7 | H4CJ15E == 8)
replace H4CJ15F = . if (H4CJ15F == 6 | H4CJ15F == 7 | H4CJ15F == 8)
replace H4CJ15G = . if (H4CJ15G == 6 | H4CJ15G == 7 | H4CJ15G == 8)
replace H4CJ15H = . if (H4CJ15H == 6 | H4CJ15H == 7 | H4CJ15H == 8)
replace H4CJ15I = . if (H4CJ15I == 6 | H4CJ15I == 7 | H4CJ15I == 8)
replace H4CJ15J = . if (H4CJ15J == 6 | H4CJ15J == 7 | H4CJ15J == 8)
replace H4CJ15K = . if (H4CJ15K == 6 | H4CJ15K == 7 | H4CJ15K == 8)
replace H4CJ16 = . if (H4CJ16 == 6 | H4CJ16 == 7 | H4CJ16 == 8)
replace H4CJ17 = . if (H4CJ17 == 6 | H4CJ17 == 7 | H4CJ17 == 8)
replace H4CJ18 = . if (H4CJ18 == 7 | H4CJ18 == 8)
replace H4CJ19 = . if (H4CJ19 == 96 | H4CJ19 == 97 | H4CJ19 == 98)
replace H4CJ20 = . if (H4CJ20 == 97 | H4CJ20 == 98)
replace H4CJ21 = . if (H4CJ21 == 97 | H4CJ21 == 98)
replace H4CJ22Y = . if (H4CJ22Y == 96 | H4CJ22Y == 97 | H4CJ22Y == 98)
replace H4CJ22M = . if (H4CJ22M == 96 | H4CJ22M == 97 | H4CJ22M == 98)
replace H4CJ23Y = . if (H4CJ23Y == 996 | H4CJ23Y == 997 | H4CJ23Y == 998)
replace H4CJ23M = . if (H4CJ23M == 96 | H4CJ23M == 97 | H4CJ23M == 98)
replace H4CJ24Y = . if (H4CJ24Y == 96 | H4CJ24Y == 97 | H4CJ24Y == 98)
replace H4CJ24M = . if (H4CJ24M == 96 | H4CJ24M == 97 | H4CJ24M == 98)
replace H4CJ25Y = . if (H4CJ25Y == 96 | H4CJ25Y == 97 | H4CJ25Y == 98)
replace H4CJ25M = . if (H4CJ25M == 96 | H4CJ25M == 97 | H4CJ25M == 98)
replace H4TO1 = . if (H4TO1 == 6 | H4TO1 == 8)
replace H4TO2 = . if (H4TO2 == 96 | H4TO2 == 97 | H4TO2 == 98)
replace H4TO3 = . if (H4TO3 == 6 | H4TO3 == 7 | H4TO3 == 8)
replace H4TO4 = . if (H4TO4 == 96 | H4TO4 == 97 | H4TO4 == 98)
replace H4TO5 = . if (H4TO5 == 96 | H4TO5 == 98)
replace H4TO6 = . if (H4TO6 == 996 | H4TO6 == 997 | H4TO6 == 998)
replace H4TO7 = . if (H4TO7 == 6 | H4TO7 == 7 | H4TO7 == 8)
replace H4TO8 = . if (H4TO8 == 6 | H4TO8 == 7 | H4TO8 == 8)
replace H4TO9 = . if (H4TO9 == 6 | H4TO9 == 7 | H4TO9 == 8)
replace H4TO10 = . if (H4TO10 == 6 | H4TO10 == 7 | H4TO10 == 8)
replace H4TO11 = . if (H4TO11 == 6 | H4TO11 == 7 | H4TO11 == 8)
replace H4TO12 = . if (H4TO12 == 6 | H4TO12 == 7 | H4TO12 == 8)
replace H4TO13 = . if (H4TO13 == 6 | H4TO13 == 7 | H4TO13 == 8)
replace H4TO14 = . if (H4TO14 == 96 | H4TO14 == 97 | H4TO14 == 98)
replace H4TO15 = . if (H4TO15 == 6 | H4TO15 == 7 | H4TO15 == 8)
replace H4TO16 = . if (H4TO16 == 6 | H4TO16 == 7 | H4TO16 == 8)
replace H4TO17 = . if (H4TO17 == 6 | H4TO17 == 7 | H4TO17 == 8)
replace H4TO18 = . if (H4TO18 == 6 | H4TO18 == 7 | H4TO18 == 8)
replace H4TO19 = . if (H4TO19 == 6 | H4TO19 == 7 | H4TO19 == 8)
replace H4TO20 = . if (H4TO20 == 6 | H4TO20 == 7 | H4TO20 == 8)
replace H4TO21 = . if (H4TO21 == 96 | H4TO21 == 97 | H4TO21 == 98)
replace H4TO22 = . if (H4TO22 == 6 | H4TO22 == 7 | H4TO22 == 8)
replace H4TO23 = . if (H4TO23 == 6 | H4TO23 == 8)
replace H4TO24 = . if (H4TO24 == 96 | H4TO24 == 97 | H4TO24 == 98)
replace H4TO25 = . if (H4TO25 == 6 | H4TO25 == 8)
replace H4TO26 = . if (H4TO26 == 97)
replace H4TO27 = . if (H4TO27 >= 5 & H4TO27 <= 8)
replace H4TO28 = . if (H4TO28 >= 5 & H4TO28 <= 8)
replace H4TO29 = . if (H4TO29 == 7)
replace H4TO30 = . if (H4TO30 == 97 | H4TO30 == 98)
replace H4TO31 = . if (H4TO31 == 6 | H4TO31 == 7 | H4TO31 == 8)
replace H4TO32H = . if (H4TO32H == 96 | H4TO32H == 97 | H4TO32H == 98)
replace H4TO32M = . if (H4TO32M == 96 | H4TO32M == 97 | H4TO32M == 98)
replace H4TO32T = . if (H4TO32T == 6 | H4TO32T == 7 | H4TO32T == 8)
replace H4TO33 = . if (H4TO33 == 6 | H4TO33 == 8)
replace H4TO34 = . if (H4TO34 == 96 | H4TO34 == 97 | H4TO34 == 98)
replace H4TO35 = . if (H4TO35 == 96 | H4TO35 == 97 | H4TO35 == 98)
replace H4TO36 = . if (H4TO36 == 96 | H4TO36 == 97 | H4TO36 == 98)
replace H4TO37 = . if (H4TO37 == 96 | H4TO37 == 97 | H4TO37 == 98)
replace H4TO38 = . if (H4TO38 == 96 | H4TO38 == 97 | H4TO38 == 98)
replace H4TO39 = . if (H4TO39 == 96 | H4TO39 == 97 | H4TO39 == 98)
replace H4TO40 = . if (H4TO40 >= 95 & H4TO40 <= 98)
replace H4TO41 = . if (H4TO41 == 6 | H4TO41 == 7)
replace H4TO42H = . if (H4TO42H == 96 | H4TO42H == 97 | H4TO42H == 98)
replace H4TO42M = . if (H4TO42M == 96 | H4TO42M == 97 | H4TO42M == 98)
replace H4TO42T = . if (H4TO42T == 6 | H4TO42T == 7 | H4TO42T == 8)
replace H4TO43 = . if (H4TO43 == 6 | H4TO43 == 7 | H4TO43 == 8)
replace H4TO44 = . if (H4TO44 >= 95 & H4TO44 <= 98)
replace H4TO45 = . if (H4TO45 == 96 | H4TO45 == 97 | H4TO45 == 98)
replace H4TO46 = . if (H4TO46 == 5 | H4TO46 == 7 | H4TO46 == 8)
replace H4TO47 = . if (H4TO47 >= 5 & H4TO47 <= 8)
replace H4TO48 = . if (H4TO48 == 5 | H4TO48 == 6 | H4TO48 == 7)
replace H4TO49 = . if (H4TO49 == 5 | H4TO49 == 6 | H4TO49 == 7)
replace H4TO50 = . if (H4TO50 == 5 | H4TO50 == 6 | H4TO50 == 7)
replace H4TO51 = . if (H4TO51 == 5 | H4TO51 == 6 | H4TO51 == 7)
replace H4TO52 = . if (H4TO52 >= 5 & H4TO52 <= 8)
replace H4TO53 = . if (H4TO53 >= 5 & H4TO53 <= 8)
replace H4TO54 = . if (H4TO54 >= 5 & H4TO54 <= 8)
replace H4TO55 = . if (H4TO55 >= 5 & H4TO55 <= 8)
replace H4TO56 = . if (H4TO56 >= 5 & H4TO56 <= 8)
replace H4TO57 = . if (H4TO57 == 95 | H4TO57 == 97 | H4TO57 == 98)
replace H4TO58 = . if (H4TO58 >= 5 & H4TO58 <= 8)
replace H4TO59 = . if (H4TO59 == 5 | H4TO59 == 6 | H4TO59 == 7)
replace H4TO60 = . if (H4TO60 >= 5 & H4TO60 <= 8)
replace H4TO61 = . if (H4TO61 == 5 | H4TO61 == 7 | H4TO61 == 8)
replace H4TO62 = . if (H4TO62 == 95 | H4TO62 == 97 | H4TO62 == 98)
replace H4TO63 = . if (H4TO63 == 6 | H4TO63 == 8)
replace H4TO64A = . if (H4TO64A == 7 | H4TO64A == 8)
replace H4TO64B = . if (H4TO64B == 7 | H4TO64B == 8)
replace H4TO64C = . if (H4TO64C == 7 | H4TO64C == 8)
replace H4TO64D = . if (H4TO64D == 7 | H4TO64D == 8)
replace H4TO65A = . if (H4TO65A == 6 | H4TO65A == 8)
replace H4TO65B = . if (H4TO65B == 6 | H4TO65B == 8)
replace H4TO65C = . if (H4TO65C == 6 | H4TO65C == 8)
replace H4TO65D = . if (H4TO65D == 6 | H4TO65D == 8)
replace H4TO65E = . if (H4TO65E == 6 | H4TO65E == 8)
replace H4TO66 = . if (H4TO66 == 7)
replace H4TO67 = . if (H4TO67 == 97)
replace H4TO68 = . if (H4TO68 == 96 | H4TO68 == 97 | H4TO68 == 98)
replace H4TO69 = . if (H4TO69 == 6 | H4TO69 == 7 | H4TO69 == 8)
replace H4TO70 = . if (H4TO70 == 96 | H4TO70 == 97 | H4TO70 == 98)
replace H4TO71 = . if (H4TO71 == 96 | H4TO71 == 97 | H4TO71 == 98)
replace H4TO72 = . if (H4TO72 == 6 | H4TO72 == 7)
replace H4TO73H = . if (H4TO73H == 96 | H4TO73H == 97 | H4TO73H == 98)
replace H4TO73M = . if (H4TO73M == 96 | H4TO73M == 97 | H4TO73M == 98)
replace H4TO73T = . if (H4TO73T == 6 | H4TO73T == 7 | H4TO73T == 8)
replace H4TO74 = . if (H4TO74 == 6 | H4TO74 == 7 | H4TO74 == 8)
replace H4TO75 = . if (H4TO75 == 96 | H4TO75 == 97 | H4TO75 == 98)
replace H4TO76 = . if (H4TO76 == 6 | H4TO76 == 7 | H4TO76 == 8)
replace H4TO77 = . if (H4TO77 == 6 | H4TO77 == 7 | H4TO77 == 8)
replace H4TO78 = . if (H4TO78 == 6 | H4TO78 == 7 | H4TO78 == 8)
replace H4TO79 = . if (H4TO79 == 6 | H4TO79 == 7 | H4TO79 == 8)
replace H4TO80 = . if (H4TO80 == 7 | H4TO80 == 8)
replace H4TO81 = . if (H4TO81 == 6 | H4TO81 == 7 | H4TO81 == 8)
replace H4TO82 = . if (H4TO82 == 6 | H4TO82 == 7 | H4TO82 == 8)
replace H4TO83 = . if (H4TO83 == 6 | H4TO83 == 7 | H4TO83 == 8)
replace H4TO84 = . if (H4TO84 == 6 | H4TO84 == 7 | H4TO84 == 8)
replace H4TO85 = . if (H4TO85 == 6 | H4TO85 == 7 | H4TO85 == 8)
replace H4TO86 = . if (H4TO86 == 7)
replace H4TO87 = . if (H4TO87 == 97)
replace H4TO88 = . if (H4TO88 == 6 | H4TO88 == 7 | H4TO88 == 8)
replace H4TO89 = . if (H4TO89 == 6 | H4TO89 == 7 | H4TO89 == 8)
replace H4TO90 = . if (H4TO90 == 6 | H4TO90 == 7 | H4TO90 == 8)
replace H4TO91 = . if (H4TO91 == 7 | H4TO91 == 8)
replace H4TO92 = . if (H4TO92 == 97 | H4TO92 == 98)
replace H4TO93 = . if (H4TO93 == 96 | H4TO93 == 97 | H4TO93 == 98)
replace H4TO94 = . if (H4TO94 == 96 | H4TO94 == 97 | H4TO94 == 98)
replace H4TO95 = . if (H4TO95 == 96 | H4TO95 == 97 | H4TO95 == 98)
replace H4TO96 = . if (H4TO96 == 96 | H4TO96 == 97 | H4TO96 == 98)
replace H4TO97 = . if (H4TO97 == 6 | H4TO97 == 7 | H4TO97 == 8)
replace H4TO98 = . if (H4TO98 == 97 | H4TO98 == 98)
replace H4TO99 = . if (H4TO99 == 97 | H4TO99 == 98)
replace H4TO100 = . if (H4TO100 == 7)
replace H4TO101H = . if (H4TO101H == 96 | H4TO101H == 97)
replace H4TO101M = . if (H4TO101M == 96 | H4TO101M == 97)
replace H4TO101T = . if (H4TO101T == 6 | H4TO101T == 7)
replace H4TO102 = . if (H4TO102 == 6 | H4TO102 == 7 | H4TO102 == 8)
replace H4TO103 = . if (H4TO103 == 97 | H4TO103 == 98)
replace H4TO104 = . if (H4TO104 == 7)
replace H4TO105 = . if (H4TO105 == 7)
replace H4TO106 = . if (H4TO106 == 7)
replace H4TO107 = . if (H4TO107 == 7 | H4TO107 == 8)
replace H4TO108 = . if (H4TO108 == 7)
replace H4TO109 = . if (H4TO109 == 7)
replace H4TO110 = . if (H4TO110 == 7)
replace H4TO111 = . if (H4TO111 == 7)
replace H4TO112 = . if (H4TO112 == 7)
replace H4TO113 = . if (H4TO113 == 7)
replace H4TO114 = . if (H4TO114 == 7)
replace H4TO115 = . if (H4TO115 == 97 | H4TO115 == 98)
replace H4TO116 = . if (H4TO116 == 7)
replace H4TO117 = . if (H4TO117 == 7)
replace H4TO118 = . if (H4TO118 == 7)
replace H4TO119 = . if (H4TO119 == 7)
replace H4TO120 = . if (H4TO120 == 96 | H4TO120 == 97 | H4TO120 == 98)
replace H4MA1 = . if (H4MA1 == 96 | H4MA1 == 98)
replace H4MA2 = . if (H4MA2 == 96 | H4MA2 == 97 | H4MA2 == 98)
replace H4MA3 = . if (H4MA3 == 96 | H4MA3 == 98)
replace H4MA4 = . if (H4MA4 == 96 | H4MA4 == 97 | H4MA4 == 98)
replace H4MA5 = . if (H4MA5 == 96 | H4MA5 == 98)
replace H4MA6 = . if (H4MA6 == 96 | H4MA6 == 97 | H4MA6 == 98)
replace H4DA1 = . if (H4DA1 == 996 | H4DA1 == 998)
replace H4DA2 = . if (H4DA2 == 96 | H4DA2 == 98)
replace H4DA3 = . if (H4DA3 == 96 | H4DA3 == 98)
replace H4DA4 = . if (H4DA4 == 96 | H4DA4 == 98)
replace H4DA5 = . if (H4DA5 == 96 | H4DA5 == 98)
replace H4DA6 = . if (H4DA6 == 96 | H4DA6 == 98)
replace H4DA7 = . if (H4DA7 == 96 | H4DA7 == 98)
replace H4DA8 = . if (H4DA8 == 96 | H4DA8 == 98)
replace H4DA9 = . if (H4DA9 == 6 | H4DA9 == 8)
replace H4DA10 = . if (H4DA10 == 6 | H4DA10 == 7 | H4DA10 == 8)
replace H4DA11 = . if (H4DA11 == 6 | H4DA11 == 8)
replace H4DA12H = . if (H4DA12H == 96 | H4DA12H == 97 | H4DA12H == 98)
replace H4DA12M = . if (H4DA12M == 96 | H4DA12M == 97 | H4DA12M == 98)
replace H4DA12T = . if (H4DA12T == 6 | H4DA12T == 7 | H4DA12T == 8)
replace H4DA13 = . if (H4DA13 == 96 | H4DA13 == 97)
replace H4DA14 = . if (H4DA14 == 996 | H4DA14 == 997 | H4DA14 == 998)
replace H4DA15A = . if (H4DA15A == 6 | H4DA15A == 7 | H4DA15A == 8)
replace H4DA15B = . if (H4DA15B == 6 | H4DA15B == 7 | H4DA15B == 8)
replace H4DA15C = . if (H4DA15C == 6 | H4DA15C == 7 | H4DA15C == 8)
replace H4DA15D = . if (H4DA15D == 6 | H4DA15D == 7 | H4DA15D == 8)
replace H4DA15E = . if (H4DA15E == 6 | H4DA15E == 7 | H4DA15E == 8)
replace H4DA16 = . if (H4DA16 == 6 | H4DA16 == 7 | H4DA16 == 8)
replace H4DA17 = . if (H4DA17 >= 995 & H4DA17 <= 998)
replace H4DA18 = . if (H4DA18 == 96 | H4DA18 == 98)
replace H4DA19 = . if (H4DA19 == 6 | H4DA19 == 7)
replace H4DA20 = . if (H4DA20 == 6 | H4DA20 == 7)
replace H4DA21 = . if (H4DA21 == 7)
replace H4DA22 = . if (H4DA22 == 996 | H4DA22 == 997 | H4DA22 == 998)
replace H4DA23 = . if (H4DA23 == 996 | H4DA23 == 997 | H4DA23 == 998)
replace H4DA24 = . if (H4DA24 == 6 | H4DA24 == 8)
replace H4DA25 = . if (H4DA25 == 7 | H4DA25 == 8)
replace H4DA26 = . if (H4DA26 == 96 | H4DA26 == 97 | H4DA26 == 98)
replace H4DA27 = . if (H4DA27 == 96 | H4DA27 == 97 | H4DA27 == 98)
replace H4DA28 = . if (H4DA28 == 96 | H4DA28 == 98)
replace H4PE1 = . if (H4PE1 == 6 | H4PE1 == 8)
replace H4PE2 = . if (H4PE2 == 6 | H4PE2 == 8)
replace H4PE3 = . if (H4PE3 == 6 | H4PE3 == 8)
replace H4PE4 = . if (H4PE4 == 6 | H4PE4 == 8)
replace H4PE5 = . if (H4PE5 == 6 | H4PE5 == 8)
replace H4PE6 = . if (H4PE6 == 6 | H4PE6 == 8)
replace H4PE7 = . if (H4PE7 == 6 | H4PE7 == 8)
replace H4PE8 = . if (H4PE8 == 6 | H4PE8 == 8)
replace H4PE9 = . if (H4PE9 == 6 | H4PE9 == 8)
replace H4PE10 = . if (H4PE10 == 6 | H4PE10 == 8)
replace H4PE11 = . if (H4PE11 == 6 | H4PE11 == 8)
replace H4PE12 = . if (H4PE12 == 6 | H4PE12 == 8)
replace H4PE13 = . if (H4PE13 == 6 | H4PE13 == 8)
replace H4PE14 = . if (H4PE14 == 6 | H4PE14 == 8)
replace H4PE15 = . if (H4PE15 == 6 | H4PE15 == 8)
replace H4PE16 = . if (H4PE16 == 6 | H4PE16 == 8)
replace H4PE17 = . if (H4PE17 == 6 | H4PE17 == 8)
replace H4PE18 = . if (H4PE18 == 6 | H4PE18 == 8)
replace H4PE19 = . if (H4PE19 == 6 | H4PE19 == 8)
replace H4PE20 = . if (H4PE20 == 6 | H4PE20 == 8)
replace H4PE21 = . if (H4PE21 == 6 | H4PE21 == 8)
replace H4PE22 = . if (H4PE22 == 6 | H4PE22 == 8)
replace H4PE23 = . if (H4PE23 == 6 | H4PE23 == 8)
replace H4PE24 = . if (H4PE24 == 6 | H4PE24 == 8)
replace H4PE25 = . if (H4PE25 == 6 | H4PE25 == 8)
replace H4PE26 = . if (H4PE26 == 6 | H4PE26 == 8)
replace H4PE27 = . if (H4PE27 == 6 | H4PE27 == 8)
replace H4PE28 = . if (H4PE28 == 6 | H4PE28 == 8)
replace H4PE29 = . if (H4PE29 == 6 | H4PE29 == 8)
replace H4PE30 = . if (H4PE30 == 6 | H4PE30 == 8)
replace H4PE31 = . if (H4PE31 == 6 | H4PE31 == 8)
replace H4PE32 = . if (H4PE32 == 6 | H4PE32 == 8)
replace H4PE33 = . if (H4PE33 == 6 | H4PE33 == 8)
replace H4PE34 = . if (H4PE34 == 6 | H4PE34 == 8)
replace H4PE35 = . if (H4PE35 == 6 | H4PE35 == 8)
replace H4PE36 = . if (H4PE36 == 6 | H4PE36 == 8)
replace H4PE37 = . if (H4PE37 == 6 | H4PE37 == 8)
replace H4PE38 = . if (H4PE38 == 6 | H4PE38 == 8)
replace H4PE39 = . if (H4PE39 == 6 | H4PE39 == 8)
replace H4PE40 = . if (H4PE40 == 6 | H4PE40 == 8)
replace H4PE41 = . if (H4PE41 == 6 | H4PE41 == 8)
replace H4ARM = . if (H4ARM == 6 | H4ARM == 7)
replace H4CUFF = . if (H4CUFF == 6 | H4CUFF == 7 | H4CUFF == 9)
replace H4SBP = . if (H4SBP == 996.0 | H4SBP == 997.0 | H4SBP == 999.0)
replace H4DBP = . if (H4DBP == 996.0 | H4DBP == 997.0 | H4DBP == 999.0)
replace H4BPCLS = . if (H4BPCLS == 6 | H4BPCLS == 7 | H4BPCLS == 9)
replace H4PR = . if (H4PR >= 996.0 & H4PR <= 999.0)
replace H4PP = . if (H4PP == 996.0 | H4PP == 997.0 | H4PP == 999.0)
replace H4MAP = . if (H4MAP == 996.0 | H4MAP == 997.0 | H4MAP == 999.0)
replace H4HGT = . if (H4HGT == 996.0 | H4HGT == 997.0 | H4HGT == 999.0)
replace H4WGT = . if (H4WGT >= 996.0 & H4WGT <= 999.0)
replace H4BMI = . if (H4BMI >= 996.0 & H4BMI <= 999.0)
replace H4BMICLS = . if (H4BMICLS >= 96 & H4BMICLS <= 99)
replace H4WAIST = . if (H4WAIST == 996.0 | H4WAIST == 997.0 | H4WAIST == 999.0)
replace H4IR6 = . if (H4IR6 == 95 | H4IR6 == 97)
replace H4IR8A = . if (H4IR8A == 97)
replace H4IR9A = . if (H4IR9A == 97)
replace H4IR12 = . if (H4IR12 == 7)
replace H4EO2 = . if (H4EO2 == 7)
replace H4EO3 = . if (H4EO3 == 7)
replace H4EO4 = . if (H4EO4 == 7)
replace H4EO5A = . if (H4EO5A == 7)
replace H4EO5B = . if (H4EO5B == 7)
replace H4EO5C = . if (H4EO5C == 7)
replace H4EO5D = . if (H4EO5D == 7)
replace H4EO5E = . if (H4EO5E == 7)
replace H4EO5F = . if (H4EO5F == 7)
replace H4EO5G = . if (H4EO5G == 7)
replace H4EO5H = . if (H4EO5H == 7)
replace H4EO5I = . if (H4EO5I == 7)
replace H4EO5J = . if (H4EO5J == 7)
replace H4EO6 = . if (H4EO6 == 97)
replace H4EO7 = . if (H4EO7 == 7)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

